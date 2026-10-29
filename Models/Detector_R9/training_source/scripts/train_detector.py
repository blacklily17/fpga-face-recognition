"""Train/choose checkpoints on train/calibration only; heldout is not loaded."""
import argparse
import hashlib
import json
import math
import os
import random
import sys
import time
from pathlib import Path

import numpy as np
# Required for deterministic CUDA reductions; no TF32 or mixed precision QAT.
os.environ.setdefault('CUBLAS_WORKSPACE_CONFIG',':4096:8')
import torch

ROOT=Path(__file__).absolute().parent.parent
sys.path.insert(0,str(ROOT))
from detector.network import TinyDetector
from detector.network_v2 import TinyDetectorV2
from detector.targets import make_targets,horizontal_targets
from detector.boxes import flatten_heads,decode,evaluate,calibrate
from detector.losses import detection_loss
from detector.geometry import canonical_records
from detector.data import load_inputs,load_records
from detector.transfer import transfer_float


def outputs_rows(outputs):
    return torch.cat([o.permute(0,2,3,1).reshape(len(o),-1,5) for o in outputs],dim=1)


def loss(outputs,labels,targets):
    return detection_loss(outputs,labels,targets,'legacy')


def content_masks(inputs,records):
    content=np.zeros_like(inputs,dtype=bool)
    for i,record in enumerate(records):
        t=record['transform'];x=t['pad_left'];y=t['pad_top']
        content[i,y:y+t['resized_height'],x:x+t['resized_width']]=True
    return content


def predict(net,inputs,anchors):
    net.eval();pred=[]
    device=next(net.parameters()).device
    with torch.no_grad():
        for start in range(0,len(inputs),64):
            tensor=(torch.from_numpy(inputs[start:start+64,None].astype(np.float32))/128).to(device)
            raw=flatten_heads([o.cpu().numpy() for o in net(tensor)])
            pred.extend(decode(r,anchors,inputs.shape[1:]) for r in raw)
    return pred


def select_threshold(pred,records):
    return calibrate(pred,records,minimum_precision=0.8)


def main():
    p=argparse.ArgumentParser();p.add_argument('--run',default='tiny8_qat_r1');p.add_argument('--epochs',type=int)
    p.add_argument('--architecture',choices=['tiny8','tiny8_bn'],default='tiny8')
    p.add_argument('--loss',choices=['legacy','balanced_ohem','dense_focal'],default='legacy')
    p.add_argument('--float-warmup',type=int)
    p.add_argument('--learning-rate',type=float)
    p.add_argument('--foreground-prior',type=float)
    p.add_argument('--channels',type=int,choices=[8,16],default=8)
    p.add_argument('--data',default='data/prepared')
    p.add_argument('--transfer')
    p.add_argument('--batch-size',type=int)
    p.add_argument('--threads',type=int,default=8)
    p.add_argument('--device',choices=['cpu','cuda'],default='cpu')
    p.add_argument('--assignment',choices=['center','center_ignore','neighbors_ignore'],default='center')
    p.add_argument('--scale-probability',type=float,default=0,
                   help='Replace this fraction of available TRAIN images with a cached source-resolution scale view')
    args=p.parse_args()
    cfg=json.loads((ROOT/'config/detector.json').read_text())
    epochs=args.epochs or cfg['epochs']
    warmup=args.float_warmup if args.float_warmup is not None else cfg['float_warmup_epochs']
    learning_rate=args.learning_rate if args.learning_rate is not None else cfg['learning_rate']
    batch_size=args.batch_size or cfg['batch_size']
    if not 0<warmup<epochs or learning_rate<=0:raise ValueError('require positive LR and 0 < warmup < epochs')
    if args.foreground_prior is not None and not 0<args.foreground_prior<1:raise ValueError('prior must be in (0,1)')
    if args.transfer and args.foreground_prior is not None:raise ValueError('transfer preserves head bias; do not override prior')
    if batch_size<1 or args.threads<1:raise ValueError('positive batch size and threads required')
    if not 0<=args.scale_probability<=1:raise ValueError('scale probability must be in [0,1]')
    if args.device=='cuda' and not torch.cuda.is_available():raise ValueError('CUDA runtime unavailable')
    out=ROOT/'models'/args.run;out.mkdir(parents=True,exist_ok=False)
    torch.set_num_threads(args.threads);torch.manual_seed(cfg['seed']);random.seed(cfg['seed']);np.random.seed(cfg['seed'])
    torch.use_deterministic_algorithms(True)
    torch.backends.cuda.matmul.allow_tf32=False;torch.backends.cudnn.allow_tf32=False
    torch.backends.cudnn.benchmark=False
    device=torch.device(args.device)
    data=ROOT/args.data
    manifest=json.loads((data/'manifest.json').read_text())
    train_records=load_records(data,'train');native_cal_records=load_records(data,'calibration')
    train_x=load_inputs(data,'train');cal_x=load_inputs(data,'calibration');input_shape=tuple(train_x.shape[1:])
    if cal_x.shape[1:]!=input_shape or train_x.dtype!=np.int8 or cal_x.dtype!=np.int8:raise ValueError('input shape/dtype binding')
    cal_records=canonical_records(native_cal_records,input_shape)
    anchors=manifest['anchors'];labels,targets,collisions=make_targets(train_records,anchors,input_shape,args.assignment)
    assignment_stats=dict(policy=args.assignment,images=len(train_records),eligible_faces=sum(len(r['boxes']) for r in train_records),
        positive_cells=int((labels==1).sum()),ignored_cells=int((labels==-1).sum()),negative_cells=int((labels==0).sum()),
        collision_attempts=collisions,maximum_abs_center_offset=float(np.max(np.abs(targets[labels==1,:2]))))
    flip_labels,flip_targets=horizontal_targets(labels,targets,input_shape)
    content=content_masks(train_x,train_records)
    scale_stats=None
    scale_rng=np.random.default_rng(cfg['seed']+100)
    if args.scale_probability:
        scale_records=load_records(data,'train_scale');scale_x=load_inputs(data,'train_scale')
        if scale_x.shape!=train_x.shape or scale_x.dtype!=np.int8 or len(scale_records)!=len(train_records):
            raise ValueError('scale view shape/count binding mismatch')
        if any(a['image']!=b['image'] or b['official_split']!='train' for a,b in zip(train_records,scale_records)):
            raise ValueError('scale/source identity mismatch')
        scale_labels,scale_targets,scale_collisions=make_targets(scale_records,anchors,input_shape,args.assignment)
        scale_flip_labels,scale_flip_targets=horizontal_targets(scale_labels,scale_targets,input_shape)
        scale_content=content_masks(scale_x,scale_records)
        scale_available=np.array([r['scale_available'] for r in scale_records],dtype=bool)
        scale_stats=dict(probability=args.scale_probability,available_images=int(scale_available.sum()),
                         positive_cells=int((scale_labels==1).sum()),collision_attempts=scale_collisions,
                         images_per_epoch=len(train_x),selection='one original or cached source-resolution view per source image')
    net=TinyDetectorV2(channels=args.channels,input_shape=input_shape) if args.architecture=='tiny8_bn' else TinyDetector(channels=args.channels,input_shape=input_shape)
    transfer=None
    if args.transfer:
        if args.architecture!='tiny8_bn':raise ValueError('transfer requires BN training architecture')
        source_path=ROOT/args.transfer;source=torch.load(source_path,map_location='cpu',weights_only=False)
        reference_hash=manifest.get('reference_manifest_sha256',hashlib.sha256((data/'manifest.json').read_bytes()).hexdigest())
        if source['dataset_manifest_sha256']!=reference_hash:raise ValueError('transfer/data reference mismatch')
        transfer=dict(path=str(source_path),sha256=hashlib.sha256(source_path.read_bytes()).hexdigest(),
                      source_epoch=source['record']['epoch'],method=transfer_float(net,source,cfg['seed']))
    if args.foreground_prior is not None:
        with torch.no_grad():
            for head in net.heads:head.bias[0]=math.log(args.foreground_prior/(1-args.foreground_prior))
    net.to(device)
    opt=torch.optim.Adam(net.parameters(),lr=learning_rate,weight_decay=1e-4)
    best=-float('inf');best_float=-float('inf');best_record=None;start=time.monotonic()
    dataset_hash=hashlib.sha256((data/'manifest.json').read_bytes()).hexdigest()
    source_receipt={str(p.relative_to(ROOT)):hashlib.sha256(p.read_bytes()).hexdigest()
                    for p in list((ROOT/'detector').glob('*.py'))+[Path(__file__).absolute(),ROOT/'config/detector.json']}
    (out/'source_receipt.json').write_text(json.dumps(source_receipt,indent=2)+'\n',encoding='utf-8')
    for name in source_receipt:
        destination=out/'source_snapshot'/name;destination.parent.mkdir(parents=True,exist_ok=True)
        destination.write_bytes((ROOT/name).read_bytes())
    settings=dict(args=vars(args),epochs=epochs,float_warmup_epochs=warmup,learning_rate=learning_rate,
                  batch_size=batch_size,threads=args.threads,channels=args.channels,input_shape=list(input_shape),
                  transfer=transfer,seed=cfg['seed'],heldout_read=False,
                  assignment=assignment_stats,
                  scale_augmentation=scale_stats,
                  runtime=dict(torch=torch.__version__,numpy=np.__version__,device=args.device,
                               gpu=torch.cuda.get_device_name() if args.device=='cuda' else None,
                               tf32=False,mixed_precision=False),
                  checkpoint_selection='exact-score-boundary calibration; precision >= 0.8 then recall')
    (out/'training_settings.json').write_text(json.dumps(settings,indent=2)+'\n',encoding='utf-8')
    probe_indices=np.random.default_rng(cfg['seed']).choice(len(train_x),64,replace=False)
    probe_tensor=(torch.from_numpy(train_x[probe_indices,None].astype(np.float32))/128).to(device)
    for epoch in range(epochs):
        epoch_start=time.monotonic()
        if epoch==warmup and args.architecture=='tiny8_bn':
            net.fuse_for_qat()
            opt=torch.optim.Adam(net.parameters(),lr=learning_rate*0.5,weight_decay=1e-4)
        net.train();net.quant=epoch>=warmup
        order=np.random.permutation(len(train_x));total=0;classification=regression=0
        scaled_images=0
        for begin in range(0,len(order),batch_size):
            indices=order[begin:begin+batch_size]
            images=train_x[indices].copy();ls=labels[indices].copy();rs=targets[indices].copy()
            mask=content[indices].copy()
            fls=flip_labels[indices].copy();frs=flip_targets[indices].copy()
            if args.scale_probability:
                use_scale=(scale_rng.random(len(indices))<args.scale_probability)&scale_available[indices]
                selected=indices[use_scale];scaled_images+=int(use_scale.sum())
                images[use_scale]=scale_x[selected];ls[use_scale]=scale_labels[selected];rs[use_scale]=scale_targets[selected]
                mask[use_scale]=scale_content[selected]
                fls[use_scale]=scale_flip_labels[selected];frs[use_scale]=scale_flip_targets[selected]
            flip=np.random.random(len(indices))<0.5
            images[flip]=images[flip,:,::-1];ls[flip]=fls[flip];rs[flip]=frs[flip]
            mask[flip]=mask[flip,:,::-1]
            # Integer-compatible brightness augmentation; no spatial label drift.
            gains=np.random.uniform(0.8,1.2,(len(indices),1,1));offset=np.random.uniform(-12,12,(len(indices),1,1))
            images=np.clip(np.rint(images*gains+offset),-128,127).astype(np.float32)
            images[~mask]=0
            tensor=(torch.from_numpy(images[:,None])/128).to(device)
            value,parts=detection_loss(net(tensor),torch.from_numpy(ls).to(device),torch.from_numpy(rs).to(device),args.loss,True)
            if args.architecture=='tiny8_bn':value=value+0.025*net.saturation_penalty
            opt.zero_grad();value.backward();torch.nn.utils.clip_grad_norm_(net.parameters(),10);opt.step()
            total+=float(value)*len(indices)
            classification+=parts['classification']*len(indices);regression+=parts['regression']*len(indices)
        train_s=time.monotonic()-epoch_start
        predictions=predict(net,cal_x,anchors);chosen=select_threshold(predictions,cal_records)
        # Favor the declared precision gate, then recall. FP32 and QAT use separate receipts.
        quality=chosen['recall'] if chosen['precision']>=0.8 else -1+chosen['precision']
        with torch.no_grad():
            probe_outputs,probe_stages,_=net(probe_tensor,True)
            probe_scores=torch.sigmoid(outputs_rows(probe_outputs)[...,0]).cpu().numpy()
        def score_stats(label):
            scores=probe_scores[labels[probe_indices]==label]
            return [float(x) for x in np.quantile(scores,[0,.5,.9,1])] if len(scores) else []
        row=dict(epoch=epoch+1,quant=net.quant,loss=total/len(train_x),elapsed_s=time.monotonic()-start,
                 scale_augmented_images=scaled_images,
                 training_s=train_s,calibration=chosen,
                 classification_loss=classification/len(train_x),regression_loss=regression/len(train_x),
                 train_probe=dict(images=len(probe_indices),score_quantiles=[0,.5,.9,1],positive=score_stats(1),negative=score_stats(0),
                                  c4_zero_fraction=float((probe_stages[6]==0).float().mean()),
                                  c4_saturated_fraction=float((probe_stages[6]>=127/128).float().mean())))
        with (out/'training.jsonl').open('a',encoding='utf-8') as f:f.write(json.dumps(row)+'\n')
        print(json.dumps(row),flush=True)
        checkpoint=dict(state=net.state_dict(),quant=net.quant,anchors=anchors,record=row,dataset_manifest_sha256=dataset_hash,
                        architecture=args.architecture,fused=getattr(net,'fused',True),settings=settings)
        torch.save(checkpoint,out/'latest_checkpoint.pt')
        if not net.quant and quality>best_float:
            best_float=quality;torch.save(checkpoint,out/'best_float_checkpoint.pt')
        if epoch+1==warmup:torch.save(checkpoint,out/'float_checkpoint.pt')
        if net.quant and quality>best:
            best=quality;best_record=row
            torch.save(checkpoint,out/'checkpoint.pt')
            model=net.export(anchors,dict(epoch=epoch+1,seed=cfg['seed'],dataset_manifest_sha256=dataset_hash,
                                         calibration=chosen,trained=True,source='WIDER FACE subset',loss=args.loss,assignment=args.assignment))
            model.update(threshold=chosen['threshold'],nms_iou=0.3,top_k=100,max_detections=16)
            (out/'detector_int8.json').write_text(json.dumps(model,indent=2)+'\n',encoding='utf-8')
        if epoch+1==warmup:
            for group in opt.param_groups:group['lr']=learning_rate*0.5
    summary=dict(run=args.run,epochs=epochs,best=best_record,training_collisions=collisions,
                 train_images=len(train_x),calibration_images=len(cal_x),heldout_read=False,
                 dataset_manifest_sha256=dataset_hash,elapsed_s=time.monotonic()-start)
    (out/'training_summary.json').write_text(json.dumps(summary,indent=2)+'\n',encoding='utf-8')
    print('TRAINING_COMPLETE',json.dumps(summary),flush=True)


if __name__=='__main__':main()
