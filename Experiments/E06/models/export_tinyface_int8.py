#!/usr/bin/env python3
"""Fold BN, calibrate INT8 activations, validate, and emit C weights.

The generated kernels use signed INT8 activations/weights, INT32 accumulators
and Q20 requantization.  Only the final 32-value L2 normalization uses float.
No network access is performed; calibration uses the local cleaned dataset.
"""

import argparse
import csv
import hashlib
import json
import random
from pathlib import Path

import cv2
import numpy as np
import torch
import torch.nn.functional as F

from train_tinyface_cnn import TinyFaceNet, collect_samples


def read_gray(path: Path, size: int) -> np.ndarray:
    image = cv2.imdecode(np.fromfile(str(path), dtype=np.uint8), cv2.IMREAD_GRAYSCALE)
    if image is None:
        raise RuntimeError(f"cannot decode {path}")
    return cv2.resize(image, (size, size), interpolation=cv2.INTER_AREA)


def fold_conv(conv, bn):
    weight = conv.weight.detach().cpu().numpy().astype(np.float64)
    gamma = bn.weight.detach().cpu().numpy().astype(np.float64)
    beta = bn.bias.detach().cpu().numpy().astype(np.float64)
    mean = bn.running_mean.detach().cpu().numpy().astype(np.float64)
    var = bn.running_var.detach().cpu().numpy().astype(np.float64)
    factor = gamma / np.sqrt(var + bn.eps)
    return weight * factor[:, None, None, None], beta - factor * mean


def fold_fc(fc, bn):
    weight = fc.weight.detach().cpu().numpy().astype(np.float64)
    gamma = bn.weight.detach().cpu().numpy().astype(np.float64)
    beta = bn.bias.detach().cpu().numpy().astype(np.float64)
    mean = bn.running_mean.detach().cpu().numpy().astype(np.float64)
    var = bn.running_var.detach().cpu().numpy().astype(np.float64)
    factor = gamma / np.sqrt(var + bn.eps)
    return weight * factor[:, None], beta - factor * mean


def float_stages(folded, image):
    value = torch.from_numpy((image.astype(np.float32) - 128.0) / 128.0)[None, None]
    outputs = []
    for index, (weight, bias) in enumerate(folded[:4]):
        value = F.relu(F.conv2d(value, torch.from_numpy(weight.astype(np.float32)),
                                torch.from_numpy(bias.astype(np.float32)), padding=1))
        outputs.append(value.numpy())
        if index < 3:
            value = F.max_pool2d(value, 2)
    weight, bias = folded[4]
    final = F.linear(value.flatten(1), torch.from_numpy(weight.astype(np.float32)),
                     torch.from_numpy(bias.astype(np.float32)))
    return outputs, F.normalize(final, dim=1).numpy()[0]


def qparams(weight, bias, input_scale, output_scale=None):
    axes = tuple(range(1, weight.ndim))
    weight_scale = np.max(np.abs(weight), axis=axes) / 127.0
    weight_scale = np.maximum(weight_scale, 1e-12)
    qweight = np.clip(np.rint(weight / weight_scale.reshape((-1,) + (1,) * (weight.ndim - 1))),
                      -127, 127).astype(np.int8)
    bias_acc = np.rint(bias / (input_scale * weight_scale)).astype(np.int32)
    if output_scale is None:
        return qweight, bias_acc, (input_scale * weight_scale).astype(np.float32)
    multiplier = np.rint(input_scale * weight_scale / output_scale * (1 << 20))
    multiplier = np.clip(multiplier, 1, np.iinfo(np.int32).max).astype(np.int32)
    return qweight, bias_acc, multiplier


def conv_int8(value, qweight, bias_acc, multiplier):
    # Integer reference with the same OIHW ordering/padding as the C kernel.
    n, in_channels, height, width = value.shape
    out_channels = qweight.shape[0]
    padded = np.pad(value.astype(np.int32), ((0, 0), (0, 0), (1, 1), (1, 1)))
    acc = np.zeros((n, out_channels, height, width), dtype=np.int32)
    for ky in range(3):
        for kx in range(3):
            patch = padded[:, :, ky:ky + height, kx:kx + width]
            acc += np.einsum("nchw,oc->nohw", patch, qweight[:, :, ky, kx].astype(np.int32))
    acc += bias_acc[None, :, None, None]
    rounded = acc.astype(np.int64) * multiplier[None, :, None, None].astype(np.int64)
    rounded = np.where(rounded >= 0, rounded + (1 << 19), rounded - (1 << 19))
    return np.clip(rounded >> 20, 0, 127).astype(np.int8)


def pool2(value):
    return value.reshape(value.shape[0], value.shape[1], value.shape[2] // 2, 2,
                         value.shape[3] // 2, 2).max(axis=(3, 5))


def infer_quantized(image, layers):
    value = np.clip(image.astype(np.int16) - 128, -128, 127).astype(np.int8)[None, None]
    for index, layer in enumerate(layers[:4]):
        value = conv_int8(value, layer["weight"], layer["bias"], layer["multiplier"])
        if index < 3:
            value = pool2(value)
    layer = layers[4]
    flat = value.reshape(-1).astype(np.int32)
    accum = layer["weight"].astype(np.int32) @ flat + layer["bias"]
    output = accum.astype(np.float32) * layer["scale"].astype(np.float32)
    norm = np.float32(np.sqrt(np.sum(output * output, dtype=np.float32)))
    if norm < 1e-12:
        return np.zeros(output.shape, dtype=np.int8)
    scaled = output / norm * np.float32(127.0)
    rounded = np.where(scaled >= 0.0, np.floor(scaled + 0.5), np.ceil(scaled - 0.5))
    return np.clip(rounded, -127, 127).astype(np.int8)


def cosine_matrix(a, b):
    af = a.astype(np.float64)
    bf = b.astype(np.float64)
    af /= np.maximum(np.linalg.norm(af, axis=1, keepdims=True), 1e-12)
    bf /= np.maximum(np.linalg.norm(bf, axis=1, keepdims=True), 1e-12)
    return af @ bf.T


def evaluate(paths, labels, train_count, infer):
    embeddings = np.stack([infer(read_gray(path, 48)) for path in paths])
    train_embeddings = embeddings[:train_count]
    train_labels = np.asarray(labels[:train_count])
    val_embeddings = embeddings[train_count:]
    val_labels = np.asarray(labels[train_count:])
    class_count = int(max(labels)) + 1
    centroids = []
    for label in range(class_count):
        vector = train_embeddings[train_labels == label].astype(np.float64).mean(axis=0)
        vector /= max(np.linalg.norm(vector), 1e-12)
        centroids.append(vector)
    scores = cosine_matrix(val_embeddings, np.stack(centroids))
    order = np.argsort(scores, axis=1)
    prediction = order[:, -1]
    best = scores[np.arange(len(scores)), order[:, -1]]
    second = scores[np.arange(len(scores)), order[:, -2]]
    genuine = scores[np.arange(len(scores)), val_labels]
    accepted = (best >= 0.55) & ((best - second) >= 0.04)
    correct = prediction == val_labels
    return {
        "top1": float(np.mean(correct)),
        "samples": int(len(val_labels)),
        "mean_genuine_cosine": float(np.mean(genuine)),
        "median_genuine_cosine": float(np.median(genuine)),
        "mean_best_margin": float(np.mean(best - second)),
        "default_threshold_accept_rate": float(np.mean(accepted)),
        "default_threshold_known_recall": float(np.mean(accepted & correct)),
        "default_threshold_precision": float(np.mean(correct[accepted])) if np.any(accepted) else 0.0,
    }, embeddings


def write_predictions(path, paths, labels, train_count, embeddings):
    """Write anonymized held-out rows without identity names or source paths."""
    train_embeddings = embeddings[:train_count]
    train_labels = np.asarray(labels[:train_count])
    val_embeddings = embeddings[train_count:]
    val_labels = np.asarray(labels[train_count:])
    class_count = int(max(labels)) + 1
    centroids = []
    for label in range(class_count):
        vector = train_embeddings[train_labels == label].astype(np.float64).mean(axis=0)
        vector /= max(np.linalg.norm(vector), 1e-12)
        centroids.append(vector)
    scores = cosine_matrix(val_embeddings, np.stack(centroids))
    order = np.argsort(scores, axis=1)
    path.parent.mkdir(parents=True, exist_ok=True)
    with path.open("w", newline="", encoding="utf-8") as handle:
        writer = csv.DictWriter(handle, fieldnames=[
            "sample_id", "true_class", "predicted_class", "best_cosine",
            "second_cosine", "margin", "accepted", "correct"])
        writer.writeheader()
        for index, (sample, label) in enumerate(zip(paths[train_count:], val_labels)):
            best_label = int(order[index, -1])
            best = float(scores[index, best_label])
            second = float(scores[index, order[index, -2]])
            sample_id = hashlib.sha256(
                (str(int(label)) + ":" + sample.name).encode("utf-8")).hexdigest()[:16]
            writer.writerow({
                "sample_id": sample_id,
                "true_class": int(label),
                "predicted_class": best_label,
                "best_cosine": "{:.8f}".format(best),
                "second_cosine": "{:.8f}".format(second),
                "margin": "{:.8f}".format(best - second),
                "accepted": int(best >= 0.55 and best - second >= 0.04),
                "correct": int(best_label == int(label)),
            })


def flip_tta(infer, requantize=False):
    """Average original/mirrored unit embeddings, then renormalize."""
    def run(image):
        first = infer(image).astype(np.float32)
        second = infer(np.ascontiguousarray(image[:, ::-1])).astype(np.float32)
        value = first + second
        norm = float(np.linalg.norm(value))
        if norm < 1e-12:
            return np.zeros_like(first)
        value = value / norm
        if requantize:
            value *= np.float32(127.0)
            value = np.where(value >= 0.0, np.floor(value + 0.5), np.ceil(value - 0.5))
            return np.clip(value, -127, 127).astype(np.int8)
        return value
    return run


def c_array(name, array, ctype, columns=12):
    flat = np.asarray(array).reshape(-1)
    lines = [f"static const {ctype} {name}[{flat.size}] = {{"]
    for start in range(0, flat.size, columns):
        values = ", ".join(str(int(value)) for value in flat[start:start + columns])
        lines.append("    " + values + ("," if start + columns < flat.size else ""))
    lines.append("};")
    return "\n".join(lines)


def emit_header(path, layers, sha256, report):
    lines = [
        "/* Generated by export_tinyface_int8.py; do not edit by hand. */",
        "#ifndef TINYFACE_WEIGHTS_H", "#define TINYFACE_WEIGHTS_H", "",
        "#include <stdint.h>", "",
        f"#define TINYFACE_MODEL_SHA256 \"{sha256}\"",
        f"#define TINYFACE_QUANT_TOP1_X10000 {int(round(report['quantized']['top1'] * 10000))}U",
        "#define TINYFACE_REQUANT_SHIFT 20", "",
    ]
    for index, layer in enumerate(layers[:4], 1):
        lines.extend([
            c_array(f"tinyface_conv{index}_weight", layer["weight"], "int8_t"), "",
            c_array(f"tinyface_conv{index}_bias", layer["bias"], "int32_t", 8), "",
            c_array(f"tinyface_conv{index}_multiplier", layer["multiplier"], "int32_t", 8), "",
        ])
    fc = layers[4]
    lines.extend([
        c_array("tinyface_fc_weight", fc["weight"], "int8_t"), "",
        c_array("tinyface_fc_bias", fc["bias"], "int32_t", 8), "",
        "static const float tinyface_fc_scale[32] = {",
    ])
    for start in range(0, 32, 8):
        values = ", ".join(f"{float(v):.9e}f" for v in fc["scale"][start:start + 8])
        lines.append("    " + values + ("," if start + 8 < 32 else ""))
    lines.extend(["};", "", "#endif"])
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text("\n".join(lines) + "\n", encoding="utf-8")


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--checkpoint", type=Path, required=True)
    parser.add_argument("--data", type=Path, required=True)
    parser.add_argument("--header", type=Path, required=True)
    parser.add_argument("--output", type=Path, required=True)
    parser.add_argument("--minimum-images", type=int, default=8)
    parser.add_argument("--seed", type=int, default=20261019)
    parser.add_argument("--calibration-images", type=int, default=512)
    parser.add_argument("--predictions", type=Path,
                        help="Optional anonymized per-validation-sample CSV")
    args = parser.parse_args()

    random.seed(args.seed)
    np.random.seed(args.seed)
    checkpoint = torch.load(args.checkpoint, map_location="cpu", weights_only=False)
    model = TinyFaceNet(checkpoint["embedding_size"])
    model.load_state_dict(checkpoint["model"])
    model.eval()
    blocks = [model.features[index] for index in (0, 2, 4, 6)]
    folded = [fold_conv(block.conv, block.bn) for block in blocks]
    folded.append(fold_fc(model.embedding, model.embedding_bn))

    classes, train_samples, val_samples = collect_samples(args.data, args.seed, args.minimum_images)
    if classes != checkpoint["classes"]:
        raise RuntimeError("dataset class order differs from checkpoint")
    all_samples = train_samples + val_samples
    rng = random.Random(args.seed + 1)
    calibration = list(all_samples)
    rng.shuffle(calibration)
    calibration = calibration[:min(args.calibration_images, len(calibration))]
    maxima = np.zeros(4, dtype=np.float64)
    for path, _ in calibration:
        stages, _ = float_stages(folded, read_gray(path, 48))
        for index, stage in enumerate(stages):
            maxima[index] = max(maxima[index], float(np.max(stage)))
    activation_scales = np.maximum(maxima / 127.0, 1e-8)

    layers = []
    input_scale = 1.0 / 128.0
    for index in range(4):
        weight, bias = folded[index]
        qw, qb, qm = qparams(weight, bias, input_scale, activation_scales[index])
        layers.append({"weight": qw, "bias": qb, "multiplier": qm})
        input_scale = float(activation_scales[index])
    weight, bias = folded[4]
    qw, qb, qs = qparams(weight, bias, input_scale, None)
    layers.append({"weight": qw, "bias": qb, "scale": qs})

    paths = [path for path, _ in all_samples]
    labels = [label for _, label in all_samples]
    float_metrics, float_embeddings = evaluate(
        paths, labels, len(train_samples), lambda image: float_stages(folded, image)[1])
    quant_metrics, quant_embeddings = evaluate(
        paths, labels, len(train_samples), lambda image: infer_quantized(image, layers))
    float_tta_metrics, _ = evaluate(
        paths, labels, len(train_samples),
        flip_tta(lambda image: float_stages(folded, image)[1]))
    quant_tta_metrics, quant_tta_embeddings = evaluate(
        paths, labels, len(train_samples),
        flip_tta(lambda image: infer_quantized(image, layers), requantize=True))
    agreement = cosine_matrix(float_embeddings, quant_embeddings).diagonal()
    sha256 = hashlib.sha256(args.checkpoint.read_bytes()).hexdigest()
    report = {
        "checkpoint": str(args.checkpoint),
        "checkpoint_sha256": sha256,
        "dataset": str(args.data),
        "identities": len(classes),
        "train_images": len(train_samples),
        "validation_images": len(val_samples),
        "calibration_images": len(calibration),
        "activation_scales": activation_scales.tolist(),
        "float_folded": float_metrics,
        "quantized": quant_metrics,
        "float_flip_tta": float_tta_metrics,
        "quantized_flip_tta": quant_tta_metrics,
        "mean_float_quant_cosine": float(np.mean(agreement)),
        "minimum_float_quant_cosine": float(np.min(agreement)),
        "weight_bytes": int(sum(layer["weight"].nbytes for layer in layers)),
    }
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(report, ensure_ascii=False, indent=2), encoding="utf-8")
    if args.predictions:
        write_predictions(args.predictions, paths, labels, len(train_samples),
                          quant_tta_embeddings)
    emit_header(args.header, layers, sha256, report)
    print(json.dumps(report, ensure_ascii=False, indent=2))


if __name__ == "__main__":
    main()
