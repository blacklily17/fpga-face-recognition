"""Shared prediction decoding and explicit greedy IoU evaluation."""
import math
import numpy as np
from .geometry import grids


def iou(box, boxes):
    boxes = np.asarray(boxes, dtype=np.float64).reshape(-1, 4)
    low = np.maximum(box[:2], boxes[:, :2])
    high = np.minimum(box[2:], boxes[:, 2:])
    inter = np.maximum(high-low, 0).prod(axis=1)
    a = np.maximum(np.asarray(box[2:])-box[:2], 0).prod()
    b = np.maximum(boxes[:, 2:]-boxes[:, :2], 0).prod(axis=1)
    return inter/np.maximum(a+b-inter, 1e-12)


def flatten_heads(outputs):
    return np.concatenate([a.transpose(0, 2, 3, 1).reshape(len(a), -1, 5) for a in outputs], axis=1)


def decode(rows, anchors,input_shape=(96,160)):
    rows = np.asarray(rows, dtype=np.float64)
    grid=grids(input_shape);height_input,width_input=input_shape
    if rows.shape != (sum(w*h for s,w,h,start in grid), 5) or not np.all(np.isfinite(rows)):
        raise ValueError('detector outputs must match geometry and be finite')
    centers, sizes = [], []
    for (stride,width,height,start),anchor in zip(grid,anchors):
        y, x = np.mgrid[:height,:width]
        part = rows[start:start+width*height]
        centers.append((np.stack((x.reshape(-1),y.reshape(-1)),axis=1)+0.5+part[:,1:3])*stride)
        exponent=np.clip(part[:,3:5],-6,6)
        sizes.append(np.asarray(anchor)[None,:]*np.array([[math.exp(float(v)) for v in row] for row in exponent]))
    center, size = np.concatenate(centers), np.concatenate(sizes)
    boxes = np.concatenate((center-size/2,center+size/2),axis=1)
    # ALWAYS return the original evaluation space. This keeps physical box
    # rounding/NMS and the same GT/ignore denominator identical across sizes.
    boxes[:,(0,2)] = np.clip(boxes[:,(0,2)],0,width_input)*(160/width_input)
    boxes[:,(1,3)] = np.clip(boxes[:,(1,3)],0,height_input)*(96/height_input)
    score=np.array([1/(1+math.exp(-v)) if v>=0 else math.exp(v)/(1+math.exp(v)) for v in rows[:,0]])
    return boxes, score


def suppress(boxes, scores, threshold, nms_iou=0.3, top_k=100, limit=16):
    # Evaluate the same 400x240 outward-rounded boxes as the existing C PS
    # postprocessor, not an alternate float-box NMS. Return network units for GT.
    mapped=np.empty_like(boxes,dtype=np.float64)
    for i,b in enumerate(boxes):
        for edge,v in enumerate(b):
            num,den=float(v).as_integer_ratio();num*=5;den*=2
            mapped[i,edge]=(num//den if edge<2 else -(-num//den))
    eligible=np.flatnonzero((scores>=threshold)&np.all(boxes[:,2:]>boxes[:,:2],axis=1))
    order=eligible[np.lexsort((eligible,-scores[eligible]))][:top_k]
    kept=[]
    while len(order) and len(kept)<limit:
        current=int(order[0]);kept.append(current)
        order=order[1:]
        order=order[iou(mapped[current],mapped[order])<=nms_iou]
    return [(float(scores[i]),(mapped[i]/2.5).tolist(),i) for i in kept]


def evaluate(predictions, records, threshold):
    tp=fp=fn=ignored=0
    without_eligible=empty_fp=0
    for (boxes,scores),record in zip(predictions,records):
        targets=np.asarray(record['boxes'],dtype=np.float64).reshape(-1,4)
        ignores=np.asarray(record['ignore'],dtype=np.float64).reshape(-1,4)
        matched=set(); frame_fp=0
        for score,box,index in suppress(boxes,scores,threshold):
            overlaps=iou(box,targets)
            available=[j for j in range(len(targets)) if j not in matched and overlaps[j]>=0.5]
            if available:
                best=max(available,key=lambda j:(overlaps[j],-j));matched.add(best);tp+=1
            elif len(ignores) and np.max(iou(box,ignores))>=0.5:
                ignored+=1
            else:
                fp+=1;frame_fp+=1
        fn+=len(targets)-len(matched)
        if not len(targets):without_eligible+=1;empty_fp+=frame_fp
    return dict(threshold=float(threshold),tp=tp,fp=fp,fn=fn,ignored_predictions=ignored,
                precision=tp/max(tp+fp,1),recall=tp/max(tp+fn,1),
                eligible_faces=tp+fn,images=len(records),
                images_without_eligible_faces=without_eligible,
                false_positives_on_images_without_eligible_faces=empty_fp,
                iou_match=0.5,nms_iou=0.3,top_k=100,max_detections=16)


def calibrate(predictions,records,minimum_precision=0.8):
    """Search actual score boundaries. Coarse probability grids lose narrow separation.

    Greedy NMS/matching order is score-descending and a threshold only removes
    a suffix, so compute matches once and sweep equal-score groups together.
    The final result is re-evaluated at the chosen inclusive threshold.
    """
    flags=[];faces=sum(len(r['boxes']) for r in records)
    for (boxes,scores),record in zip(predictions,records):
        targets=np.asarray(record['boxes'],dtype=np.float64).reshape(-1,4)
        ignores=np.asarray(record['ignore'],dtype=np.float64).reshape(-1,4);matched=set()
        for score,box,index in suppress(boxes,scores,0.0):
            overlaps=iou(box,targets)
            available=[j for j in range(len(targets)) if j not in matched and overlaps[j]>=0.5]
            if available:
                matched.add(max(available,key=lambda j:(overlaps[j],-j)));flag=1
            elif len(ignores) and np.max(iou(box,ignores))>=0.5:flag=-1
            else:flag=0
            flags.append((score,flag))
    flags.sort(key=lambda r:-r[0])
    tp=fp=0;i=0;best=None;fallback=None
    while i<len(flags):
        threshold=flags[i][0]
        while i<len(flags) and flags[i][0]==threshold:
            tp+=flags[i][1]==1;fp+=flags[i][1]==0;i+=1
        precision=tp/max(tp+fp,1);recall=tp/max(faces,1)
        quality=(recall,precision,threshold)
        if precision>=minimum_precision and (best is None or quality>best[0]):best=(quality,threshold)
        f1=2*precision*recall/max(precision+recall,1e-12)
        if fallback is None or (f1,threshold)>fallback[0]:fallback=((f1,threshold),threshold)
    chosen=best or fallback
    return evaluate(predictions,records,chosen[1] if chosen else 1.0)
