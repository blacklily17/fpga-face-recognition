"""Integer center-nearest grayscale letterbox contract for full-frame input."""
import numpy as np


def gray77(rgb):
    a = np.asarray(rgb)
    if a.dtype != np.uint8 or a.ndim != 3 or a.shape[2] != 3:
        raise ValueError('expected uint8 RGB')
    a = a.astype(np.int32)
    return ((77*a[..., 0] + 150*a[..., 1] + 29*a[..., 2] + 128) >> 8).astype(np.uint8)


def letterbox(rgb, boxes, invalid, minimum=12):
    gray = gray77(rgb)
    height, width = gray.shape
    if width * 96 >= height * 160:
        rw, rh = 160, max(1, (height * 160 + width // 2) // width)
    else:
        rh, rw = 96, max(1, (width * 96 + height // 2) // height)
    left, top = (160-rw)//2, (96-rh)//2
    ix = ((2*np.arange(rw)+1)*width)//(2*rw)
    iy = ((2*np.arange(rh)+1)*height)//(2*rh)
    canvas = np.full((96, 160), 128, dtype=np.uint8)
    canvas[top:top+rh, left:left+rw] = gray[iy[:, None], ix[None, :]]
    mapped, ignored = [], []
    for box, bad in zip(boxes, invalid):
        x, y, w, h = map(float, box)
        x0, y0 = max(0, x), max(0, y)
        x1, y1 = min(width, x+w), min(height, y+h)
        if x1 <= x0 or y1 <= y0:
            continue
        b = [(x0*rw)/width+left, (y0*rh)/height+top,
             (x1*rw)/width+left, (y1*rh)/height+top]
        (ignored if bad or min(b[2]-b[0], b[3]-b[1]) < minimum else mapped).append(b)
    transform = dict(source_width=width, source_height=height, resized_width=rw,
                     resized_height=rh, pad_left=left, pad_top=top)
    return (canvas.astype(np.int16)-128).astype(np.int8), mapped, ignored, transform
