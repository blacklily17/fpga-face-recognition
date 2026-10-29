from pathlib import Path
import struct,re,json,hashlib
import numpy as np
root=Path(__file__).resolve().parent
text=(root.parent/'PS/pipeline_adaptive_cnn/release_fixed/software/src/tinyface_weights.h').read_text()
def arr(name,shape):
 m=re.search(name+r'\[[0-9]+\]\s*=\s*\{(.*?)\};',text,re.S)
 return np.array([int(x) for x in re.findall(r'-?\d+',m.group(1))],dtype=np.int32).reshape(shape)
def conv(x,w,b,m,shift=20):
 c,h,wi=x.shape;p=np.pad(x,((0,0),(1,1),(1,1)))
 out=np.zeros((w.shape[0],h,wi),np.int32)
 for ky in range(3):
  for kx in range(3):out+=np.einsum('chw,oc->ohw',p[:,ky:ky+h,kx:kx+wi],w[:,:,ky,kx])
 out+=b[:,None,None];prod=out.astype(np.int64)*m[:,None,None]
 return np.clip(np.where(prod>=0,(prod+(1<<(shift-1)))>>shift,-(((-prod)+(1<<(shift-1)))>>shift)),0,127).astype(np.int32)
packets=[];keeps=[];lasts=[];expect=[];outlast=[];summary=[]; replay_inputs=bytearray()
def case(x,w,b,m,label,shift=20):
 y=conv(x,w,b,m,shift);o,c,_,_=w.shape;
 if label.startswith('network_'):replay_inputs.extend(x.astype(np.int8).tobytes())
 _,h,wi=x.shape
 p=struct.pack('<4I',0x314e4e43,wi|(h<<16),c|(o<<16),shift)+x.astype(np.int8).tobytes()+w.astype(np.int8).tobytes()+b.astype('<i4').tobytes()+m.astype('<i4').tobytes()
 for i in range(0,len(p),4):packets.append(f'{int.from_bytes(p[i:i+4],"little"):08x}');keeps.append(f'{(1<<len(p[i:i+4]))-1:x}');lasts.append(str(int(i+4>=len(p))))
 by=y.astype(np.int8).tobytes();expect.extend(f'{i:02x}' for i in by);outlast.extend(['0']*(len(by)-1)+['1'])
 summary.append({'label':label,'input_shape':list(x.shape),'output_shape':list(y.shape),'output_sha256':hashlib.sha256(by).hexdigest()})
 return y
shapes=[(8,1,3,3),(12,8,3,3),(16,12,3,3),(16,16,3,3)]
y,x=np.indices((48,48));image=((3*x+5*y+(x*y)%17)%256).astype(np.int32)-128
for mirror in [False,True]:
 v=image[:,::-1].copy()[None] if mirror else image[None]
 for i,shape in enumerate(shapes,1):
  w=arr(f'tinyface_conv{i}_weight',shape);b=arr(f'tinyface_conv{i}_bias',(shape[0],));m=arr(f'tinyface_conv{i}_multiplier',(shape[0],))
  v=case(v,w,b,m,f'network_{mirror}_conv{i}')
  if i<4:
   c,h,wi=v.shape;v=v.reshape(c,h//2,2,wi//2,2).max(axis=(2,4))
# Non-multiple-of-four boundaries and signed saturating/random channel cases.
case(np.array([-3,2,4,5,-6,7,8,9,-10]).reshape(1,3,3),np.array([0,0,0,0,2,0,0,0,0]).reshape(1,1,3,3),np.array([1]),np.array([1<<20]),'dma_unaligned9')
r=np.random.RandomState(20261020)
case(r.randint(-128,128,(3,5,7)),r.randint(-128,128,(5,3,3,3)),np.array([-10000,-1,0,1,10000]),np.array([1<<20]*5),'signed_saturation_odd_channels')
for sh in (1,31):
 case(r.randint(-128,128,(2,3,3)),r.randint(-128,128,(4,2,3,3)),np.array([-1000000000,1000000000,-1000000000,1000000000]),np.array([2147483647,-2147483648,-1,0]),'requant_extremes_shift'+str(sh),sh)
for name,items in [('packet',packets),('keep',keeps),('last',lasts),('expected',expect),('outlast',outlast)]: (root/(name+'.hex')).write_text('\n'.join(items))
(root/'counts.vh').write_text(f'localparam WORDS={len(packets)}, BYTES={len(expect)};\n')
(root/'golden_summary.json').write_text(json.dumps(summary,indent=2))
(root/'replay_inputs.bin').write_bytes(replay_inputs)
(root/'image.bin').write_bytes((image+128).astype(np.uint8).tobytes())
print('GOLDEN_GENERATED',len(summary),len(expect),len(packets))

