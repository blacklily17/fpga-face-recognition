"""Center-cell targets; ignored faces mask negative cells, collisions are counted."""
import numpy as np
from .geometry import grids


def make_targets(records,anchors,input_shape=(96,160),policy='center'):
    if policy not in ('center','center_ignore','neighbors_ignore'):raise ValueError('unknown assignment policy')
    grid=grids(input_shape);count=sum(w*h for s,w,h,start in grid)
    labels=np.zeros((len(records),count),dtype=np.int64)
    regression=np.zeros((len(records),count,4),dtype=np.float32)
    collision=0
    for image,record in enumerate(records):
        # Unsupported/invalid faces are explicitly ignored, not background.
        for b in record['ignore']:
            cx,cy=(b[0]+b[2])/2,(b[1]+b[3])/2
            for stride,w,h,start in grid:
                # Legacy center policy stays reproducible. New policies mask
                # intersecting cells (half-open rectangles), including exact
                # grid edges without creating a mirror-dependent extra cell.
                upper_y=int(b[3]//stride)+1 if policy=='center' else int(np.ceil(b[3]/stride))
                upper_x=int(b[2]//stride)+1 if policy=='center' else int(np.ceil(b[2]/stride))
                for y in range(max(0,int(b[1]//stride)),min(h,upper_y)):
                    for x in range(max(0,int(b[0]//stride)),min(w,upper_x)):
                        labels[image,start+y*w+x]=-1
        if policy!='center':
            # Valid-face interior is ambiguous background on unused cells and
            # the other scale. Mask it before adding positives; never remove GT
            # from evaluation or promote invalid/small ignored faces.
            for b in record['boxes']:
                for stride,w,h,start in grid:
                    y,x=np.mgrid[:h,:w]
                    inside=((x+.5)*stride>b[0])&((x+.5)*stride<b[2])&((y+.5)*stride>b[1])&((y+.5)*stride<b[3])
                    labels[image,start:start+w*h][inside.reshape(-1)]=-1
        priorities={}
        for b in record['boxes']:
            size=np.array([b[2]-b[0],b[3]-b[1]])
            costs=[float(np.abs(np.log(size/anchor)).sum()) for anchor in anchors]
            scale=int(np.argmin(costs));stride,w,h,start=grid[scale]
            cx,cy=(b[0]+b[2])/2,(b[1]+b[3])/2
            x,y=min(w-1,int(cx//stride)),min(h-1,int(cy//stride))
            candidates=[(x,y)]
            if policy=='neighbors_ignore':
                # At most one horizontal + one vertical neighbor, no diagonals.
                # All neighbor centers must be within 0.75 cells and inside GT.
                for nx,ny in ((x-1,y),(x+1,y),(x,y-1),(x,y+1)):
                    px,py=(nx+.5)*stride,(ny+.5)*stride
                    if (0<=nx<w and 0<=ny<h and abs(cx/stride-nx-.5)<=.75 and abs(cy/stride-ny-.5)<=.75
                            and b[0]<px<b[2] and b[1]<py<b[3]):candidates.append((nx,ny))
            for nx,ny in candidates:
                cell=start+ny*w+nx
                # Collisions prefer better anchor fit, then the nearer center.
                priority=(costs[scale],(cx/stride-nx-.5)**2+(cy/stride-ny-.5)**2 if policy!='center' else 0)
                if cell in priorities:
                    collision+=1
                    if priority>=priorities[cell]:continue
                priorities[cell]=priority
                labels[image,cell]=1
                regression[image,cell]=[cx/stride-nx-0.5,cy/stride-ny-0.5,
                                        np.log(size[0]/anchors[scale][0]),np.log(size[1]/anchors[scale][1])]
    return labels,regression,collision


def horizontal_targets(labels,regression,input_shape=(96,160)):
    ls,rs=[],[]
    for stride,w,h,start in grids(input_shape):
        ls.append(labels[:,start:start+h*w].reshape(-1,h,w)[:,:,::-1].reshape(-1,h*w))
        r=regression[:,start:start+h*w].reshape(-1,h,w,4)[:,:,::-1,:].copy()
        r[...,0]*=-1
        rs.append(r.reshape(-1,h*w,4))
    return np.concatenate(ls,axis=1).copy(),np.concatenate(rs,axis=1)
