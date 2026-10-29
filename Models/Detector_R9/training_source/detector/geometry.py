"""Native training grids; evaluation always maps back to the original 160x96 space."""
import copy


def grids(input_shape=(96,160)):
    h,w=map(int,input_shape)
    if (h,w) not in ((96,160),(192,320)):raise ValueError('supported inputs: 160x96 or 320x192')
    result=[];start=0
    for stride in (8,16):
        gw,gh=w//stride,h//stride
        result.append((stride,gw,gh,start));start+=gw*gh
    return result


def canonical_records(records,input_shape=(96,160)):
    grids(input_shape);h,w=input_shape
    result=copy.deepcopy(records)
    sx,sy=160/w,96/h
    for r in result:
        for key in ('boxes','ignore'):
            r[key]=[[b[0]*sx,b[1]*sy,b[2]*sx,b[3]*sy] for b in r[key]]
    return result
