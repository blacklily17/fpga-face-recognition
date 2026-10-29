"""Five ordinary 3x3 convs (8/16 channels); two signed PS heads."""
import numpy as np
import torch
from torch import nn
from torch.nn import functional as F


def ste(x, q):
    return x + (q-x).detach()


def qw(x):
    # Fixed Q7 weights match the current M14 arithmetic without new operators.
    bounded = x.clamp(-1, 127/128)
    return ste(bounded, (bounded*128).round()/128)


def qa(x):
    bounded = x.clamp(0, 127/128)
    return ste(bounded, (bounded*128).floor()/128)


def head_quant(layer):
    # Independent row scales preserve logits and coordinates, with no ReLU.
    scale = layer.weight.detach().abs().amax(dim=(1, 2, 3), keepdim=True).clamp_min(1e-6)/127
    weight = ste(layer.weight, (layer.weight/scale).round().clamp(-128, 127)*scale)
    step = scale.flatten()/128
    bias = ste(layer.bias, (layer.bias/step).round()*step)
    return weight, bias


class TinyDetector(nn.Module):
    def __init__(self,channels=8,input_shape=(96,160)):
        super().__init__()
        if channels not in (8,16):raise ValueError('channels must be 8 or 16')
        from .geometry import grids
        grids(input_shape)
        self.channels=channels;self.input_shape=tuple(input_shape)
        self.convs = nn.ModuleList([nn.Conv2d(1 if i == 0 else channels, channels, 3, padding=1) for i in range(5)])
        self.heads = nn.ModuleList([nn.Conv2d(channels, 5, 1) for _ in range(2)])
        self.quant = False
        for head in self.heads:
            nn.init.normal_(head.weight, std=0.03)
            nn.init.zeros_(head.bias)
            head.bias.data[0] = -2.0

    def forward(self, x, details=False):
        if x.ndim!=4 or x.shape[1]!=1 or tuple(x.shape[-2:])!=self.input_shape:raise ValueError('network input geometry mismatch')
        features, stages = [], []
        for index, layer in enumerate(self.convs):
            if self.quant:
                bias = ste(layer.bias, (layer.bias*16384).round()/16384)
                x = qa(F.conv2d(x, qw(layer.weight), bias, padding=1))
            else:
                x = F.relu(layer(x)).clamp(0, 127/128)
            stages.append(x)
            if index in (0, 1, 2, 3):
                if index == 3:
                    features.append(x)
                x = F.max_pool2d(x, 2)
                stages.append(x)
            else:
                features.append(x)
        outputs = []
        for feature, head in zip(features, self.heads):
            if self.quant:
                w, b = head_quant(head)
                outputs.append(F.conv2d(feature, w, b))
            else:
                outputs.append(head(feature))
        return (outputs, stages, features) if details else outputs

    def export(self, anchors, metadata):
        layers = []
        for i, layer in enumerate(self.convs):
            w = (layer.weight.detach().clamp(-1, 127/128)*128).round().to(torch.int64).cpu().numpy()
            b = (layer.bias.detach()*16384).round().to(torch.int64).cpu().numpy()
            bound = np.abs(b)+128*np.abs(w).sum(axis=(1, 2, 3))
            if np.any(bound >= 2**24):
                raise ValueError('float32 QAT cannot be proven exact for this accumulator bound')
            layers.append(dict(name='C'+str(i+1), weight=w.tolist(), bias=b.tolist(),
                               shift=7, relu=True, accumulator_bound=bound.tolist()))
        heads = []
        for head in self.heads:
            w = head.weight.detach().cpu().numpy().reshape(5, self.channels).astype(np.float64)
            scale = np.maximum(np.max(np.abs(w), axis=1), 1e-6)/127
            q = np.clip(np.rint(w/scale[:, None]), -128, 127).astype(np.int64)
            dequant = scale/128
            b = np.rint(head.bias.detach().cpu().numpy().astype(np.float64)/dequant).astype(np.int64)
            if np.any(b < -(2**31)) or np.any(b >= 2**31):
                raise ValueError('head bias exceeds INT32')
            heads.append(dict(weight=q.tolist(), bias=b.tolist(), scales=dequant.tolist()))
        schema='ac880-full-frame-int8-v1' if self.channels==8 and self.input_shape==(96,160) else 'ac880-full-frame-int8-v2'
        preprocess=('rgb77_150_29_round8_letterbox_center_nearest_minus128_v1' if self.input_shape==(96,160)
                    else 'rgb77_150_29_round8_letterbox_scaled_reference_center_nearest_minus128_v2')
        return dict(schema=schema, input_shape=list(self.input_shape)+[1],channels=self.channels,
                    input_preprocess=preprocess,
                    layers=layers, heads=heads, anchors=anchors, strides=[8,16], metadata=metadata)
