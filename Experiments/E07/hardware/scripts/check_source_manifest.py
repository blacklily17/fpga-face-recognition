"""Check immutable original sources; edits belong only to derived mirror."""
import argparse
import hashlib
import json
from pathlib import Path


def validate(manifest):
    errors = []
    if not manifest.get("files"):
        return ["empty source manifest"]
    for item in manifest["files"]:
        path = Path(item["source"])
        if not path.is_file():
            errors.append("missing: " + str(path))
        elif hashlib.sha256(path.read_bytes()).hexdigest().lower() != item["sha256"].lower():
            errors.append("original changed: " + str(path))
    return errors


if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("manifest", type=Path)
    args = parser.parse_args()
    try:
        data = json.loads(args.manifest.read_text(encoding="utf-8-sig"))
        errors = validate(data)
    except (OSError, ValueError, KeyError) as exc:
        errors = [str(exc)]
    print(json.dumps({"errors": errors}))
    raise SystemExit(1 if errors else 0)
