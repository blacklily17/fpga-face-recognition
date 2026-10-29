"""Stage completion gate, complementary to native rc and real HWH checks.

Not a timing/CDC/release signoff. Never infer completion from a stale HWH or
the echoed Tcl source line that contains a marker.
"""
import argparse
import re
from pathlib import Path


def read_log(path):
    raw = Path(path).read_bytes()
    # Windows PowerShell 5 *> writes UTF-16 with BOM; native logs are UTF-8.
    # Strict decode: damaged/unknown encoding cannot qualify a build.
    encoding = 'utf-16' if raw.startswith((b'\xff\xfe', b'\xfe\xff')) else 'utf-8-sig'
    return raw.decode(encoding)


def validate(stage, text):
    markers = {'bd': 'FACEBOX_BD_PASS (not a release)',
               'bit': 'FACEBOX_HARDWARE_BUILT_NOT_RELEASED'}
    if stage not in markers:
        return ['unsupported stage: '+str(stage)]
    errors = []
    if re.search(r'^\s*ERROR:', text, re.MULTILINE):
        errors.append('Vivado ERROR present')
    if re.search(r'^\s*CRITICAL WARNING:.*\[Designutils 20-1307\]', text, re.MULTILINE):
        errors.append('Constraint command ignored by XDC reader')
    lines = [line.strip() for line in text.splitlines()]
    if lines.count(markers[stage]) != 1:
        errors.append('missing/duplicated exact stage completion marker')
    return errors


def validate_implementation(text):
    errors = []
    if re.search(r'^\s*ERROR:', text, re.MULTILINE):
        errors.append('Implementation ERROR present')
    if re.search(r'^\s*CRITICAL WARNING:.*\[Designutils 20-1307\]', text, re.MULTILINE):
        errors.append('Implementation ignored constraint command')
    if re.search(r'^\s*CRITICAL WARNING:.*\[Constraints 18-515\]', text, re.MULTILINE):
        errors.append('Implementation segmented a timing path')
    if [line.strip() for line in text.splitlines()].count('FACEBOX_IMPLEMENTATION_CDC_HOOK_PASS') != 1:
        errors.append('missing/duplicated actual implementation hook marker')
    return errors


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('stage', choices=['bd', 'bit'])
    parser.add_argument('log', type=Path)
    parser.add_argument('--implementation-log', type=Path)
    args = parser.parse_args()
    try:
        errors = validate(args.stage, read_log(args.log))
        if args.stage == 'bit':
            if args.implementation_log is None:
                errors.append('bit requires explicit actual implementation log')
            else:
                errors += validate_implementation(read_log(args.implementation_log))
    except (OSError, UnicodeError) as exc:
        errors = ['cannot decode/read build log: '+str(exc)]
    if errors:
        for error in errors:
            print('BUILD_LOG_REJECTED: '+error)
        return 1
    print('BUILD_LOG_PASS stage='+args.stage+' (not release signoff)')
    return 0


if __name__ == '__main__':
    raise SystemExit(main())
