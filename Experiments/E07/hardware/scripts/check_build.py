"""Offline fail-closed release validator. Never connects to hardware."""
import argparse
import hashlib
import json
import math
import re
from pathlib import Path


def validate_full_chain(root, data):
    """Check finished native-run evidence; manual frame counts are not proof."""
    root = Path(root).resolve()
    try:
        count = data['gates']['full_chain_frames']
        if type(count) is not int or count not in (30, 100):
            raise ValueError('requires 30 frames (or extended 100)')
        contents = {}
        for key in ('log', 'job'):
            item = data['full_chain_evidence'][key]
            path = (root / item['path']).resolve()
            path.relative_to(root)
            raw = path.read_bytes()
            if hashlib.sha256(raw).hexdigest() != str(item['sha256']).lower():
                raise ValueError(key + ' hash mismatch')
            encoding = 'utf-16' if raw.startswith((b'\xff\xfe', b'\xfe\xff')) else 'utf-8-sig'
            contents[key] = raw.decode(encoding)
        text = contents['log']
        if re.search(r'^\s*(Fatal:|ERROR:)', text, re.M | re.I):
            raise ValueError('simulation contains failure')
        matches = re.findall(r'^TOP_PASS frames=(\d+) snapshots=(\d+) rgb_pixels=(\d+) '
                             r'gray_pixels=(\d+) display_pixels=(\d+) resets=(\d+)\s*$', text, re.M)
        if len(matches) != 1:
            raise ValueError('missing or duplicate exact TOP_PASS')
        frames, snapshots, rgb, gray, display, resets = map(int, matches[0])
        if (frames != count or snapshots != (12 if count == 30 else 40) or
                rgb != count * 384000 or gray != count * 96000 or display <= 0 or resets != 2):
            raise ValueError('incomplete frame/pixel/snapshot/reset coverage')
        job = json.loads(contents['job'])
        if (job.get('state') != 'passed' or type(job.get('exit_code')) is not int or
                job['exit_code'] != 0 or job.get('errors') != [] or
                not isinstance(job.get('finished_utc'), str) or not job['finished_utc']):
            raise ValueError('native job did not finish successfully')
        command = job['command']
        if not isinstance(command, list):
            raise ValueError('invalid native command')
        for option, expected in (('-Group', 'top'), ('-TopFrames', str(count))):
            if command.count(option) != 1 or command[command.index(option) + 1] != expected:
                raise ValueError('native command does not match proof')
    except (OSError, ValueError, TypeError, KeyError, IndexError, AttributeError, UnicodeError) as exc:
        return ['full-chain evidence rejected: ' + str(exc)]
    return []


def validate(root, data):
    root = Path(root).resolve()
    errors = []
    if data.get("schema") != 1:
        errors.append("unsupported schema")
    if not str(data.get("build_id", "")).startswith("AC880-FACEBOX-"):
        errors.append("wrong build_id (legacy releases prohibited)")
    if data.get("control_ports") != 11:
        errors.append("control interconnect requires 11 ports")
    artifacts = data.get("artifacts", {})
    for name in ("bit", "hdf", "elf", "bsp", "source"):
        item = artifacts.get(name, {})
        path = (root / item.get("path", "")).resolve()
        try:
            path.relative_to(root)
        except ValueError:
            errors.append(name + " outside derived build root")
            continue
        if not path.is_file():
            errors.append(name + " missing file")
            continue
        digest = hashlib.sha256(path.read_bytes()).hexdigest()
        if digest.lower() != str(item.get("sha256", "")).lower():
            errors.append(name + " hash mismatch")
    ranges = []
    try:
        for item in data["addresses"]:
            a = int(str(item["base"]), 0)
            n = int(str(item["size"]), 0)
            if a < 0 or n <= 0 or a + n > 2**32:
                raise ValueError("address outside 32-bit space")
            for b, bn, name in ranges:
                if a < b + bn and b < a + n:
                    errors.append("address overlap: {} / {}".format(name, item["name"]))
            ranges.append((a, n, item["name"]))
        for expected in ((0x41260000, 0x10000, "overlay"), (0x42000000, 0x20000, "snapshot")):
            if expected not in ranges:
                errors.append("missing/wrong address: " + expected[2])
    except (KeyError, ValueError, TypeError):
        errors.append("malformed address export")
    gates = data.get("gates", {})
    for field in ("wns", "whs"):
        value = gates.get(field)
        if not isinstance(value, (int, float)) or not math.isfinite(value) or value < 0:
            errors.append("unverified/failed " + field)
    if gates.get("drc_errors") != 0:
        errors.append("DRC not clean")
    if gates.get("cdc_signed_off") is not True:
        errors.append("CDC not signed off")
    errors.extend(validate_full_chain(root, data))
    return errors


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("build", type=Path)
    args = parser.parse_args()
    try:
        data = json.loads((args.build / "manifest.json").read_text(encoding="utf-8-sig"))
        errors = validate(args.build, data)
    except (OSError, ValueError, TypeError) as exc:
        errors = [str(exc)]
    print(json.dumps({"status": "REJECTED" if errors else "PASS", "errors": errors}))
    return 1 if errors else 0


if __name__ == "__main__":
    raise SystemExit(main())
