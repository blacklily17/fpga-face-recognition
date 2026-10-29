#!/usr/bin/env python3
"""Train an FPGA-friendly grayscale face embedding network with ArcFace loss."""

import argparse
import json
import math
import random
import time
from pathlib import Path

import cv2
import numpy as np
import torch
import torch.nn as nn
import torch.nn.functional as F
from torch.utils.data import DataLoader, Dataset, WeightedRandomSampler


class FaceDataset(Dataset):
    def __init__(self, samples, image_size, augment, augmentation="basic"):
        self.samples = samples
        self.image_size = image_size
        self.augment = augment
        self.augmentation = augmentation

    def __len__(self):
        return len(self.samples)

    def __getitem__(self, index):
        path, label = self.samples[index]
        image = cv2.imdecode(np.fromfile(str(path), dtype=np.uint8), cv2.IMREAD_GRAYSCALE)
        if image is None:
            raise RuntimeError(f"Cannot decode {path}")
        image = cv2.resize(image, (self.image_size, self.image_size), interpolation=cv2.INTER_AREA)
        if self.augment:
            if random.random() < 0.5:
                image = cv2.flip(image, 1)
            if random.random() < 0.7:
                alpha = random.uniform(0.82, 1.18)
                beta = random.uniform(-15.0, 15.0)
                image = np.clip(image.astype(np.float32) * alpha + beta, 0, 255).astype(np.uint8)
            if random.random() < 0.35:
                angle = random.uniform(-8.0, 8.0)
                scale = random.uniform(0.94, 1.06)
                center = ((self.image_size - 1) * 0.5, (self.image_size - 1) * 0.5)
                matrix = cv2.getRotationMatrix2D(center, angle, scale)
                image = cv2.warpAffine(
                    image,
                    matrix,
                    (self.image_size, self.image_size),
                    flags=cv2.INTER_LINEAR,
                    borderMode=cv2.BORDER_REFLECT_101,
                )
            if self.augmentation == "strong":
                if random.random() < 0.35:
                    gamma = random.uniform(0.72, 1.38)
                    image = np.clip(
                        255.0 * np.power(image.astype(np.float32) / 255.0, gamma),
                        0,
                        255,
                    ).astype(np.uint8)
                if random.random() < 0.22:
                    image = cv2.GaussianBlur(image, (3, 3), random.uniform(0.25, 0.9))
                if random.random() < 0.25:
                    noise = np.random.normal(0.0, random.uniform(2.0, 7.0), image.shape)
                    image = np.clip(image.astype(np.float32) + noise, 0, 255).astype(np.uint8)
                if random.random() < 0.28:
                    height = random.randint(max(2, self.image_size // 12), self.image_size // 4)
                    width = random.randint(max(2, self.image_size // 12), self.image_size // 4)
                    y = random.randint(0, self.image_size - height)
                    x = random.randint(0, self.image_size - width)
                    image[y:y + height, x:x + width] = int(np.mean(image))
        tensor = torch.from_numpy(image.copy()).float().unsqueeze(0)
        tensor = (tensor - 127.5) / 128.0
        return tensor, label


class ConvBlock(nn.Module):
    def __init__(self, in_channels, out_channels):
        super().__init__()
        self.conv = nn.Conv2d(in_channels, out_channels, 3, padding=1, bias=False)
        self.bn = nn.BatchNorm2d(out_channels)
        self.relu = nn.ReLU(inplace=True)

    def forward(self, value):
        return self.relu(self.bn(self.conv(value)))


class TinyFaceNet(nn.Module):
    """Only standard 3x3 convolutions, ReLU, pooling, and a small linear head."""

    def __init__(self, embedding_size=32, dropout=0.0):
        super().__init__()
        self.features = nn.Sequential(
            ConvBlock(1, 8),
            nn.MaxPool2d(2),
            ConvBlock(8, 12),
            nn.MaxPool2d(2),
            ConvBlock(12, 16),
            nn.MaxPool2d(2),
            ConvBlock(16, 16),
        )
        self.dropout = nn.Dropout(dropout)
        self.embedding = nn.Linear(16 * 6 * 6, embedding_size, bias=False)
        self.embedding_bn = nn.BatchNorm1d(embedding_size)

    def forward(self, value):
        value = self.dropout(self.features(value).flatten(1))
        value = self.embedding_bn(self.embedding(value))
        return F.normalize(value, dim=1)


class ArcFaceHead(nn.Module):
    def __init__(self, embedding_size, class_count, scale=24.0, margin=0.30):
        super().__init__()
        self.weight = nn.Parameter(torch.empty(class_count, embedding_size))
        nn.init.xavier_uniform_(self.weight)
        self.scale = scale
        self.cos_m = math.cos(margin)
        self.sin_m = math.sin(margin)
        self.threshold = math.cos(math.pi - margin)
        self.margin_correction = math.sin(math.pi - margin) * margin

    def cosine(self, embeddings):
        return F.linear(F.normalize(embeddings), F.normalize(self.weight))

    def forward(self, embeddings, labels):
        cosine = self.cosine(embeddings).clamp(-1.0 + 1e-7, 1.0 - 1e-7)
        sine = torch.sqrt((1.0 - cosine.square()).clamp_min(1e-7))
        phi = cosine * self.cos_m - sine * self.sin_m
        phi = torch.where(cosine > self.threshold, phi, cosine - self.margin_correction)
        one_hot = torch.zeros_like(cosine)
        one_hot.scatter_(1, labels.view(-1, 1), 1.0)
        return (one_hot * phi + (1.0 - one_hot) * cosine) * self.scale


def collect_samples(root, seed, minimum_images):
    rng = random.Random(seed)
    classes = []
    train_samples = []
    val_samples = []
    for directory in sorted(path for path in root.iterdir() if path.is_dir()):
        images = sorted(directory.glob("*.jpg"))
        if len(images) < minimum_images:
            continue
        rng.shuffle(images)
        val_count = max(2, min(6, len(images) // 5))
        label = len(classes)
        classes.append(directory.name)
        val_samples.extend((path, label) for path in images[:val_count])
        train_samples.extend((path, label) for path in images[val_count:])
    return classes, train_samples, val_samples


@torch.no_grad()
def evaluate(model, head, train_loader, val_loader, class_count, device):
    model.eval()
    centroid_sum = None
    centroid_count = torch.zeros(class_count, device=device)
    for images, labels in train_loader:
        images = images.to(device)
        labels = labels.to(device)
        embeddings = model(images)
        if centroid_sum is None:
            centroid_sum = torch.zeros(class_count, embeddings.shape[1], device=device)
        centroid_sum.index_add_(0, labels, embeddings)
        centroid_count.index_add_(0, labels, torch.ones_like(labels, dtype=torch.float32))
    centroids = F.normalize(centroid_sum / centroid_count.clamp_min(1.0).unsqueeze(1), dim=1)

    correct_head = 0
    correct_centroid = 0
    total = 0
    similarities = []
    for images, labels in val_loader:
        images = images.to(device)
        labels = labels.to(device)
        embeddings = model(images)
        head_prediction = head.cosine(embeddings).argmax(dim=1)
        centroid_scores = embeddings @ centroids.T
        centroid_prediction = centroid_scores.argmax(dim=1)
        correct_head += int((head_prediction == labels).sum())
        correct_centroid += int((centroid_prediction == labels).sum())
        total += labels.numel()
        similarities.extend(centroid_scores.gather(1, labels[:, None]).squeeze(1).cpu().tolist())
    return {
        "head_top1": correct_head / max(total, 1),
        "centroid_top1": correct_centroid / max(total, 1),
        "mean_genuine_cosine": float(np.mean(similarities)) if similarities else 0.0,
        "samples": total,
    }, centroids.cpu()


def batch_hard_triplet_loss(embeddings, labels, margin):
    similarity = embeddings @ embeddings.T
    same = labels[:, None] == labels[None, :]
    same.fill_diagonal_(False)
    different = ~same
    different.fill_diagonal_(False)
    valid = same.any(dim=1) & different.any(dim=1)
    if not bool(valid.any()):
        return embeddings.sum() * 0.0
    hardest_positive = similarity.masked_fill(~same, 2.0).min(dim=1).values
    hardest_negative = similarity.masked_fill(~different, -2.0).max(dim=1).values
    return F.relu(hardest_negative - hardest_positive + margin)[valid].mean()


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--data", type=Path, required=True)
    parser.add_argument("--output", type=Path, required=True)
    parser.add_argument("--epochs", type=int, default=40)
    parser.add_argument("--batch-size", type=int, default=64)
    parser.add_argument("--image-size", type=int, default=48)
    parser.add_argument("--embedding-size", type=int, default=32)
    parser.add_argument("--minimum-images", type=int, default=8)
    parser.add_argument("--learning-rate", type=float, default=2e-3)
    parser.add_argument("--weight-decay", type=float, default=1e-4)
    parser.add_argument("--augmentation", choices=("basic", "strong"), default="basic")
    parser.add_argument("--label-smoothing", type=float, default=0.0)
    parser.add_argument("--triplet-weight", type=float, default=0.0)
    parser.add_argument("--triplet-margin", type=float, default=0.15)
    parser.add_argument("--balanced-sampling", action="store_true")
    parser.add_argument("--dropout", type=float, default=0.0)
    parser.add_argument("--arc-margin", type=float, default=0.30)
    parser.add_argument("--arc-scale", type=float, default=24.0)
    parser.add_argument("--seed", type=int, default=20261019)
    parser.add_argument("--device", choices=("auto", "cpu", "cuda"), default="auto")
    parser.add_argument("--init-model", type=Path)
    args = parser.parse_args()

    random.seed(args.seed)
    np.random.seed(args.seed)
    torch.manual_seed(args.seed)
    if torch.cuda.is_available():
        torch.cuda.manual_seed_all(args.seed)
    device_name = "cuda" if args.device == "auto" and torch.cuda.is_available() else args.device
    if device_name == "auto":
        device_name = "cpu"
    if device_name == "cuda" and not torch.cuda.is_available():
        raise RuntimeError("CUDA requested but unavailable")
    device = torch.device(device_name)

    classes, train_samples, val_samples = collect_samples(args.data, args.seed, args.minimum_images)
    if len(classes) < 2:
        raise RuntimeError("At least two identities are required")
    args.output.mkdir(parents=True, exist_ok=True)
    (args.output / "classes.json").write_text(
        json.dumps(classes, ensure_ascii=False, indent=2), encoding="utf-8"
    )

    train_dataset = FaceDataset(
        train_samples, args.image_size, augment=True, augmentation=args.augmentation
    )
    train_eval_dataset = FaceDataset(train_samples, args.image_size, augment=False)
    val_dataset = FaceDataset(val_samples, args.image_size, augment=False)
    sampler = None
    if args.balanced_sampling:
        counts = np.bincount([label for _, label in train_samples], minlength=len(classes))
        weights = [1.0 / float(counts[label]) for _, label in train_samples]
        sampler = WeightedRandomSampler(weights, len(weights), replacement=True)
    train_loader = DataLoader(
        train_dataset,
        batch_size=args.batch_size,
        shuffle=sampler is None,
        sampler=sampler,
        num_workers=0,
    )
    train_eval_loader = DataLoader(train_eval_dataset, batch_size=args.batch_size, shuffle=False, num_workers=0)
    val_loader = DataLoader(val_dataset, batch_size=args.batch_size, shuffle=False, num_workers=0)

    model = TinyFaceNet(args.embedding_size, dropout=args.dropout).to(device)
    head = ArcFaceHead(
        args.embedding_size, len(classes), scale=args.arc_scale, margin=args.arc_margin
    ).to(device)
    if args.init_model:
        initial = torch.load(args.init_model, map_location="cpu", weights_only=False)
        model.load_state_dict(initial["model"])
        print(json.dumps({"event": "initialized", "checkpoint": str(args.init_model)}, ensure_ascii=False), flush=True)
    optimizer = torch.optim.AdamW(
        list(model.parameters()) + list(head.parameters()),
        lr=args.learning_rate,
        weight_decay=args.weight_decay,
    )
    scheduler = torch.optim.lr_scheduler.CosineAnnealingLR(optimizer, T_max=args.epochs)
    parameter_count = sum(parameter.numel() for parameter in model.parameters())
    print(json.dumps({
        "event": "start",
        "device": str(device),
        "identities": len(classes),
        "train_images": len(train_samples),
        "val_images": len(val_samples),
        "embedding": args.embedding_size,
        "model_parameters": parameter_count,
    }, ensure_ascii=False), flush=True)

    history = []
    best_accuracy = -1.0
    started = time.time()
    for epoch in range(1, args.epochs + 1):
        model.train()
        head.train()
        loss_sum = 0.0
        sample_count = 0
        correct = 0
        for images, labels in train_loader:
            images = images.to(device)
            labels = labels.to(device)
            optimizer.zero_grad(set_to_none=True)
            embeddings = model(images)
            logits = head(embeddings, labels)
            classification_loss = F.cross_entropy(
                logits, labels, label_smoothing=args.label_smoothing
            )
            metric_loss = batch_hard_triplet_loss(
                embeddings, labels, args.triplet_margin
            )
            loss = classification_loss + args.triplet_weight * metric_loss
            loss.backward()
            optimizer.step()
            batch = labels.numel()
            loss_sum += float(loss.detach()) * batch
            sample_count += batch
            correct += int((logits.argmax(dim=1) == labels).sum())
        scheduler.step()
        metrics, centroids = evaluate(
            model, head, train_eval_loader, val_loader, len(classes), device
        )
        record = {
            "epoch": epoch,
            "loss": loss_sum / max(sample_count, 1),
            "train_margin_top1": correct / max(sample_count, 1),
            "learning_rate": optimizer.param_groups[0]["lr"],
            **metrics,
        }
        history.append(record)
        print(json.dumps(record, ensure_ascii=False), flush=True)
        if metrics["centroid_top1"] >= best_accuracy:
            best_accuracy = metrics["centroid_top1"]
            torch.save({
                "model": model.state_dict(),
                "arcface_head": head.state_dict(),
                "centroids": centroids,
                "classes": classes,
                "image_size": args.image_size,
                "embedding_size": args.embedding_size,
                "metrics": metrics,
                "epoch": epoch,
                "architecture": "conv3x3:1-8-12-16-16,flatten6x6,fc32,l2",
                "training_options": {
                    "augmentation": args.augmentation,
                    "label_smoothing": args.label_smoothing,
                    "triplet_weight": args.triplet_weight,
                    "triplet_margin": args.triplet_margin,
                    "balanced_sampling": args.balanced_sampling,
                    "dropout": args.dropout,
                    "arc_margin": args.arc_margin,
                    "arc_scale": args.arc_scale,
                },
            }, args.output / "tinyface_best.pth")

    summary = {
        "device": str(device),
        "identities": len(classes),
        "train_images": len(train_samples),
        "val_images": len(val_samples),
        "epochs": args.epochs,
        "best_centroid_top1": best_accuracy,
        "elapsed_seconds": time.time() - started,
        "checkpoint": str(args.output / "tinyface_best.pth"),
    }
    (args.output / "training_history.json").write_text(
        json.dumps(history, ensure_ascii=False, indent=2), encoding="utf-8"
    )
    (args.output / "training_summary.json").write_text(
        json.dumps(summary, ensure_ascii=False, indent=2), encoding="utf-8"
    )
    print(json.dumps({"event": "complete", **summary}, ensure_ascii=False), flush=True)


if __name__ == "__main__":
    main()
