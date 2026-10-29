"""Exact INT64 full/tiled reference; no floating-point backbone convolution."""
import numpy as np
from .geometry import grids


def valid_conv(x, layer):
    x=np.asarray(x,dtype=np.int64)
    w=np.asarray(layer['weight'],dtype=np.int64)
    b=np.asarray(layer['bias'],dtype=np.int64)
    if x.ndim!=3 or w.ndim!=4 or w.shape[1:]!=(x.shape[2],3,3) or w.shape[0] not in (8,16) or b.shape!=(w.shape[0],):
        raise ValueError('invalid detector convolution shape')
    if np.any(x < -128) or np.any(x>127) or np.any(w < -128) or np.any(w>127):
        raise ValueError('INT8 input/weight range')
    if np.any(b < -(2**31)) or np.any(b>=2**31) or layer['relu'] is not True or not 0<=layer['shift']<=63:
        raise ValueError('bias/activation/shift contract')
    bound=np.abs(b)+128*np.abs(w).sum(axis=(1,2,3))
    if np.any(bound>=2**39):raise ValueError('M14 signed 40-bit accumulator bound')
    patch=np.lib.stride_tricks.sliding_window_view(x,(3,3),axis=(0,1))
    acc=np.einsum('hwikl,oikl->hwo',patch,w,optimize=True)+b
    return np.clip(np.maximum(acc,0)>>layer['shift'],0,127).astype(np.int8)


def same_conv(x, layer, tiled=False):
    padded=np.pad(x,((1,1),(1,1),(0,0)),constant_values=0)
    if not tiled:return valid_conv(padded,layer),1
    height,width,_=x.shape
    result=np.empty((height,width,len(layer['bias'])),dtype=np.int8);count=0
    for y in range(0,height,30):
        for u in range(0,width,30):
            h,w=min(30,height-y),min(30,width-u)
            result[y:y+h,u:u+w]=valid_conv(padded[y:y+h+2,u:u+w+2],layer)
            count+=1
    return result,count


def pool2(x):
    h,w,c=x.shape
    return x[:h//2*2,:w//2*2].reshape(h//2,2,w//2,2,c).max(axis=(1,3))


def infer(x, model, tiled=False):
    if model.get('schema') not in ('ac880-full-frame-int8-v1','ac880-full-frame-int8-v2'):raise ValueError('detector model schema')
    shape=tuple(model['input_shape']);grids(shape[:2])
    channels=model.get('channels',8)
    if channels not in (8,16) or shape[-1]!=1:raise ValueError('detector channel contract')
    if model['schema']=='ac880-full-frame-int8-v1' and (shape!=(96,160,1) or channels!=8):raise ValueError('v1 contract is fixed')
    if x.dtype!=np.int8 or x.shape!=shape:raise ValueError('detector INT8 input shape mismatch')
    if len(model['layers'])!=5 or len(model['heads'])!=2:raise ValueError('detector layer count')
    stages,features={},[];tile_counts=[]
    for i,layer in enumerate(model['layers']):
        if np.asarray(layer['weight']).shape!=(channels,1 if i==0 else channels,3,3):raise ValueError('layer channels mismatch')
        x,count=same_conv(x,layer,tiled);stages['C'+str(i+1)]=x;tile_counts.append(count)
        if i in (0,1,2,3):
            if i==3:features.append(x)
            x=pool2(x);stages['P'+str(i+1)]=x
        else:features.append(x)
    rows,raw_heads=[],[]
    for feature,head in zip(features,model['heads']):
        weight=np.asarray(head['weight'],dtype=np.int64);bias=np.asarray(head['bias'],dtype=np.int64)
        scales=np.asarray(head['scales'],dtype=np.float64)
        if weight.shape!=(5,channels) or bias.shape!=(5,) or scales.shape!=(5,):raise ValueError('head dimensions')
        if np.any(weight < -128) or np.any(weight>127) or np.any(bias < -(2**31)) or np.any(bias>=2**31):
            raise ValueError('head integer ranges')
        if not np.all(np.isfinite(scales)) or np.any(scales<=0):raise ValueError('head scales')
        raw=feature.reshape(-1,channels).astype(np.int64)@weight.T+bias
        raw_heads.append(raw);rows.append(raw*scales)
    return dict(stages=stages,rows=np.concatenate(rows),raw_heads=raw_heads,conv_tile_counts=tile_counts)
