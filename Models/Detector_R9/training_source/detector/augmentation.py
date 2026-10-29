"""Training-only face-scale views sampled directly from original RGB pixels.

Windows use continuous source coordinates, and output pixel centers choose the
containing source pixel (center-nearest resize).  Padding is raw gray 128, hence
exactly zero after INT8 centering.  Evaluation preprocessing is unchanged.
"""
import numpy as np

from .preprocess import gray77


HEIGHT, WIDTH = 96, 160
TARGET_SHORT_SIDES = (16, 24, 32, 48)
MIN_SOURCE_SHORT_SIDE = 8
MIN_VISIBLE_FRACTION = 0.70


def _annotations(boxes, invalid):
    boxes = np.asarray(boxes, dtype=np.float64)
    if boxes.size == 0:
        boxes = boxes.reshape(0, 4)
    invalid = np.asarray(invalid)
    if boxes.ndim != 2 or boxes.shape[1] != 4:
        raise ValueError('expected source boxes with shape (N, 4), in xywh order')
    if invalid.ndim != 1 or len(invalid) != len(boxes):
        raise ValueError('one invalid flag is required per source box')
    if not np.isfinite(boxes).all():
        raise ValueError('source boxes must be finite')
    return boxes, invalid.astype(bool)


def render_scale_window(rgb, source_boxes_xywh, source_invalid, window_xyxy,
                        minimum=12):
    """Render one deterministic 5:3 crop and transform every source annotation.

    Returns ``(int8_image, positives_xyxy, ignores_xyxy, transform, provenance)``.
    Visibility is measured against the *original* annotation area, including
    truncation at both the source image edge and the crop edge.  Source-invalid
    faces always remain ignored.  Zero-area or entirely invisible boxes vanish.

    ``transform`` retains the existing pad/resized rectangle keys so photometric
    augmentation changes only sampled source pixels, never padding.  The crop
    can lie entirely outside the source; its valid rectangle is then empty.
    """
    gray = gray77(rgb)
    source_height, source_width = gray.shape
    if source_width == 0 or source_height == 0:
        raise ValueError('source image must be nonempty')
    boxes, invalid = _annotations(source_boxes_xywh, source_invalid)
    window = np.asarray(window_xyxy, dtype=np.float64)
    if window.shape != (4,) or not np.isfinite(window).all():
        raise ValueError('expected a finite xyxy crop window')
    left, top, right, bottom = map(float, window)
    crop_width, crop_height = right-left, bottom-top
    if crop_width <= 0 or crop_height <= 0:
        raise ValueError('crop window must have positive width and height')
    if not np.isclose(crop_width/crop_height, WIDTH/HEIGHT, rtol=1e-12, atol=0):
        raise ValueError('crop window must have aspect ratio 5:3')
    if not np.isfinite(minimum) or minimum <= 0:
        raise ValueError('minimum face size must be positive and finite')
    scale_x, scale_y = WIDTH/crop_width, HEIGHT/crop_height

    # Floor selects nearest source pixel center, including for fractional and
    # negative crop origins.  Check float positions before integer conversion
    # so an entirely off-image crop cannot produce unsafe integer indices.
    source_x = left+(np.arange(WIDTH)+0.5)/scale_x
    source_y = top+(np.arange(HEIGHT)+0.5)/scale_y
    good_x = np.flatnonzero((source_x >= 0) & (source_x < source_width))
    good_y = np.flatnonzero((source_y >= 0) & (source_y < source_height))
    canvas = np.full((HEIGHT, WIDTH), 128, dtype=np.uint8)
    valid_width = valid_height = pad_left = pad_top = 0
    if len(good_x) and len(good_y):
        ix = np.floor(source_x[good_x]).astype(np.int64)
        iy = np.floor(source_y[good_y]).astype(np.int64)
        canvas[np.ix_(good_y, good_x)] = gray[np.ix_(iy, ix)]
        pad_left, pad_top = int(good_x[0]), int(good_y[0])
        valid_width, valid_height = len(good_x), len(good_y)

    positives, ignored = [], []
    positive_indices, ignore_indices = [], []
    visible_fractions = {}
    for index, ((x, y, width, height), bad) in enumerate(zip(boxes, invalid)):
        if width <= 0 or height <= 0:
            continue
        x0, y0 = max(x, left, 0), max(y, top, 0)
        x1, y1 = min(x+width, right, source_width), min(y+height, bottom, source_height)
        if x1 <= x0 or y1 <= y0:
            continue
        fraction = float(((x1-x0)*(y1-y0))/(width*height))
        mapped = [(x0-left)*scale_x, (y0-top)*scale_y,
                  (x1-left)*scale_x, (y1-top)*scale_y]
        # Clip roundoff at 0/160/96; the geometry itself has already been clipped.
        mapped = np.clip(mapped, [0, 0, 0, 0],
                         [WIDTH, HEIGHT, WIDTH, HEIGHT]).tolist()
        is_ignored = (bad or fraction < MIN_VISIBLE_FRACTION-1e-12 or
                      min(mapped[2]-mapped[0], mapped[3]-mapped[1]) < minimum-1e-12)
        if is_ignored:
            ignored.append(mapped)
            ignore_indices.append(index)
        else:
            positives.append(mapped)
            positive_indices.append(index)
        visible_fractions[str(index)] = fraction
    transform = dict(source_width=source_width, source_height=source_height,
                     resized_width=valid_width, resized_height=valid_height,
                     pad_left=pad_left, pad_top=pad_top,
                     crop_window_xyxy=window.tolist(), scale_x=scale_x, scale_y=scale_y)
    provenance = dict(kind='source_rgb_scale_crop_v1',
                      window_xyxy=window.tolist(),
                      positive_source_indices=positive_indices,
                      ignored_source_indices=ignore_indices,
                      visible_fraction_by_source_index=visible_fractions,
                      selected_source_index=None, target_short_side=None,
                      minimum_output_short_side=float(minimum),
                      minimum_visible_fraction=MIN_VISIBLE_FRACTION)
    return ((canvas.astype(np.int16)-128).astype(np.int8), positives, ignored,
            transform, provenance)


def scale_view(rgb, source_boxes_xywh, source_invalid, rng, minimum=12):
    """Choose one valid native face and make a reproducible random scale view.

    ``rng`` is a NumPy Generator (or RandomState).  Candidates need at least an
    8-pixel visible native short side and 70% source visibility.  Target short
    sides are 16/24/32/48 pixels, with a fit cap for elongated boxes.  A 4-pixel
    margin keeps the selected visible face complete.  Its center is randomly
    positioned in the middle 60% of each axis where the fit permits.

    Returns ``None`` when no valid face can be selected at useful resolution.
    The provenance records the source index, requested/actual scale and crop,
    sufficient to reproduce the view using ``render_scale_window``.
    """
    rgb = np.asarray(rgb)
    if rgb.dtype != np.uint8 or rgb.ndim != 3 or rgb.shape[2] != 3:
        raise ValueError('expected uint8 RGB')
    source_height, source_width = rgb.shape[:2]
    if not source_width or not source_height:
        raise ValueError('source image must be nonempty')
    boxes, invalid = _annotations(source_boxes_xywh, source_invalid)
    if not np.isfinite(minimum) or minimum <= 0:
        raise ValueError('minimum face size must be positive and finite')
    candidates = []
    for index, ((x, y, width, height), bad) in enumerate(zip(boxes, invalid)):
        if bad or width <= 0 or height <= 0:
            continue
        x0, y0 = max(x, 0), max(y, 0)
        x1, y1 = min(x+width, source_width), min(y+height, source_height)
        native_width, native_height = x1-x0, y1-y0
        if min(native_width, native_height) < MIN_SOURCE_SHORT_SIDE:
            continue
        if native_width*native_height/(width*height) < MIN_VISIBLE_FRACTION-1e-12:
            continue
        fit_scale = min((WIDTH-8)/native_width, (HEIGHT-8)/native_height)
        if min(native_width, native_height)*fit_scale < minimum-1e-12:
            continue
        candidates.append((index, x0, y0, x1, y1, fit_scale))
    if not candidates:
        return None
    selected = candidates[int(rng.choice(len(candidates)))]
    index, x0, y0, x1, y1, fit_scale = selected
    requested_short_side = int(rng.choice(TARGET_SHORT_SIDES))
    native_width, native_height = x1-x0, y1-y0
    scale = min(max(requested_short_side, minimum)/min(native_width, native_height),
                fit_scale)
    output_width, output_height = native_width*scale, native_height*scale
    def center(extent, face_extent):
        low = max(extent*0.2, face_extent/2+4)
        high = min(extent*0.8, extent-face_extent/2-4)
        # Rounding can invert the equal bounds for a face at the exact fit cap.
        return float(rng.uniform(low, max(low, high)))
    center_x, center_y = center(WIDTH, output_width), center(HEIGHT, output_height)
    left, top = (x0+x1)/2-center_x/scale, (y0+y1)/2-center_y/scale
    window = [left, top, left+WIDTH/scale, top+HEIGHT/scale]
    result = render_scale_window(rgb, boxes, invalid, window, minimum)
    provenance = result[4]
    provenance.update(selected_source_index=index,
                      target_short_side=requested_short_side,
                      actual_selected_short_side=min(output_width, output_height),
                      minimum_source_short_side=MIN_SOURCE_SHORT_SIDE,
                      candidate_count=len(candidates),
                      selected_output_center=[center_x, center_y])
    if index not in provenance['positive_source_indices']:
        raise AssertionError('selected valid face must remain a positive target')
    return result
