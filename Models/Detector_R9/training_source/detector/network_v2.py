"""Train-only BN, folded before QAT/export into ordinary M14-compatible convs."""
import math
import numpy as np
import torch
from torch import nn
from torch.nn import functional as F
from torch.nn.utils.fusion import fuse_conv_bn_eval

from .network import TinyDetector,ste,qa,head_quant


class TinyDetectorV2(TinyDetector):
    def __init__(self,fused=False,channels=8,input_shape=(96,160)):
        super().__init__(channels,input_shape)
        self.fused=fused
        self.norms=nn.ModuleList([nn.Identity() if fused else nn.BatchNorm2d(channels) for _ in range(5)])
        self.register_buffer('shifts',torch.full((5,),7,dtype=torch.int64))
        self.saturation_penalty=None
        for layer in self.convs:
            nn.init.kaiming_normal_(layer.weight,nonlinearity='relu');nn.init.zeros_(layer.bias)
        if not fused:
            for norm in self.norms:nn.init.constant_(norm.weight,0.25);nn.init.zeros_(norm.bias)

    def fuse_for_qat(self):
        if self.fused:raise ValueError('normalization already fused')
        self.eval()
        for i in range(5):
            self.convs[i]=fuse_conv_bn_eval(self.convs[i],self.norms[i])
            maximum=float(self.convs[i].weight.detach().abs().max())
            # All channels share a layer scale and the deployed shift register.
            shift=max(0,min(15,int(math.floor(math.log2(127/max(maximum,1e-8))))))
            self.shifts[i]=shift
            self.norms[i]=nn.Identity()
        self.fused=True

    def forward(self,x,details=False):
        if x.ndim!=4 or x.shape[1]!=1 or tuple(x.shape[-2:])!=self.input_shape:raise ValueError('network input geometry mismatch')
        if self.quant and not self.fused:raise ValueError('fold BN before integer QAT')
        stages=[];features=[];penalties=[]
        for i,layer in enumerate(self.convs):
            if self.quant:
                scale=2.0**int(self.shifts[i])
                bounded=layer.weight.clamp(-128/scale,127/scale)
                weight=ste(bounded,(bounded*scale).round()/scale)
                bias=ste(layer.bias,(layer.bias*128*scale).round()/(128*scale))
                raw=F.conv2d(x,weight,bias,padding=1)
                x=qa(raw)
            else:
                raw=self.norms[i](layer(x));x=F.relu(raw).clamp(0,127/128)
            if self.training:penalties.append(F.relu(raw-127/128).square().mean())
            stages.append(x)
            if i<4:
                if i==3:features.append(x)
                x=F.max_pool2d(x,2);stages.append(x)
            else:features.append(x)
        self.saturation_penalty=sum(penalties) if penalties else None
        outputs=[]
        for feature,head in zip(features,self.heads):
            if self.quant:
                weight,bias=head_quant(head);outputs.append(F.conv2d(feature,weight,bias))
            else:outputs.append(head(feature))
        return (outputs,stages,features) if details else outputs

    def export(self,anchors,metadata):
        if not self.fused:raise ValueError('unfolded BN cannot be exported to M14')
        layers=[]
        for i,layer in enumerate(self.convs):
            shift=int(self.shifts[i]);scale=2.0**shift
            w=(layer.weight.detach().clamp(-128/scale,127/scale)*scale).round().to(torch.int64).cpu().numpy()
            b=(layer.bias.detach()*128*scale).round().to(torch.int64).cpu().numpy()
            bound=np.abs(b)+128*np.abs(w).sum(axis=(1,2,3))
            if np.any(b<-(2**31)) or np.any(b>=2**31) or np.any(bound>=2**24):
                raise ValueError('bias or exact float32 QAT accumulator bound exceeded')
            layers.append(dict(name='C'+str(i+1),weight=w.tolist(),bias=b.tolist(),shift=shift,
                               relu=True,accumulator_bound=bound.tolist()))
        heads=[]
        for head in self.heads:
            scale=head.weight.detach().abs().amax(dim=(1,2,3),keepdim=True).clamp_min(1e-6)/127
            w=(head.weight.detach()/scale).round().clamp(-128,127).to(torch.int64).reshape(5,self.channels)
            dequant=(scale.flatten()/128)
            b=(head.bias.detach()/dequant).round().to(torch.int64)
            if bool(torch.any(b<-(2**31))) or bool(torch.any(b>=2**31)):raise ValueError('head bias INT32')
            heads.append(dict(weight=w.cpu().tolist(),bias=b.cpu().tolist(),scales=dequant.double().cpu().tolist()))
        schema='ac880-full-frame-int8-v1' if self.channels==8 and self.input_shape==(96,160) else 'ac880-full-frame-int8-v2'
        preprocess=('rgb77_150_29_round8_letterbox_center_nearest_minus128_v1' if self.input_shape==(96,160)
                    else 'rgb77_150_29_round8_letterbox_scaled_reference_center_nearest_minus128_v2')
        return dict(schema=schema,input_shape=list(self.input_shape)+[1],channels=self.channels,
                    input_preprocess=preprocess,
                    layers=layers,heads=heads,anchors=anchors,strides=[8,16],
                    normalization='train-only BN folded into exported convolution weights/bias',metadata=metadata)
