"""Validate reset connectivity from real generated Vivado HWH (read-only)."""
import argparse
import json
from pathlib import Path
import xml.etree.ElementTree as ET


def validate(xml):
    try:
        root = ET.fromstring(xml)
        def net(instance, port):
            matches = root.findall(".//MODULE[@INSTANCE='{}']/PORTS/PORT[@NAME='{}']".format(instance, port))
            return matches[0].get('SIGNAME') if len(matches) == 1 else None
        src = net('real_camera_source_0', 'gray_tap_resetn')
        dst = net('gray_snapshot_capture_0', 'aresetn')
        if not src or src != dst:
            return ['Snapshot must reset with gray source path, not only global AXI reset']
        return []
    except ET.ParseError:
        return ['Malformed HWH']


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('hwh', type=Path)
    args = parser.parse_args()
    try:
        errors = validate(args.hwh.read_text(encoding='utf-8-sig'))
    except OSError as exc:
        errors = [str(exc)]
    print(json.dumps({'status': 'BD_RESET_REJECTED' if errors else 'BD_RESET_PASS', 'errors': errors}))
    return 1 if errors else 0


if __name__ == '__main__':
    raise SystemExit(main())
