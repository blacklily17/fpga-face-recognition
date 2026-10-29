"""Load only requested train/calibration arrays, including mmap comparison data."""
import json
from pathlib import Path
import numpy as np


def load_inputs(directory,split):
    directory=Path(directory)
    if (directory/(split+'.npy')).exists():return np.load(str(directory/(split+'.npy')),mmap_mode='r')
    with np.load(directory/'inputs.npz') as arrays:return arrays[split]


def load_records(directory,split):
    return [json.loads(line) for line in (Path(directory)/(split+'.jsonl')).read_text().splitlines()]
