"""Offline binding of explicit new HDF, SDK import, and C/header sources.

An SDK receipt is not a board release: timing/CDC/full-chain gates are separate.
"""
import argparse
import hashlib
import json
import re
from datetime import datetime, timezone
from pathlib import Path, PurePosixPath


def digest(path):
    return hashlib.sha256(Path(path).read_bytes()).hexdigest()


def source_records(sources):
    sources = Path(sources).resolve(strict=True)
    records = []
    for path in sorted(sources.iterdir()):
        if path.suffix not in ('.c', '.h') or not path.is_file():
            continue
        path.resolve(strict=True).relative_to(sources)
        records.append({'path': path.name, 'sha256': digest(path)})
    if not records:
        raise ValueError('No SDK C/header inputs')
    return records


def bounded_path(root, name):
    if not isinstance(name, str) or not name or '\\' in name or ':' in name:
        raise ValueError('Invalid relative input path')
    path = PurePosixPath(name)
    if path.is_absolute() or '..' in path.parts or path.as_posix() != name:
        raise ValueError('Input path escapes build')
    result = (root / name).resolve()
    result.relative_to(root)
    return result


def workspace_name(work, sdk):
    name = Path(sdk).resolve().relative_to(work).as_posix()
    if not re.fullmatch(r'sdk(?:_[A-Za-z0-9_]+)?', name):
        raise ValueError('SDK must be a named direct child of this build')
    return name


def capture(sources, work, hdf, sdk, bd_only):
    work = Path(work).resolve(strict=True)
    hdf = Path(hdf).resolve(strict=True)
    name = hdf.relative_to(work).as_posix()
    if not isinstance(bd_only, bool):
        raise ValueError('Explicit BD-only classification required')
    return {'schema': 1, 'phase': 'before-sdk', 'bd_only': bd_only,
            'captured_utc': datetime.now(timezone.utc).isoformat(),
            'workspace': workspace_name(work, sdk),
            'hdf': {'path': name, 'sha256': digest(hdf)},
            'sources': source_records(sources)}


def validate(sources, work, sdk, before, require_hardware=False):
    errors = []
    try:
        work = Path(work).resolve(strict=True)
        sdk = Path(sdk).resolve(strict=True)
        if before.get('schema') != 1 or before.get('phase') != 'before-sdk':
            errors.append('Missing pre-SDK input lock')
        if not isinstance(before.get('bd_only'), bool):
            errors.append('Missing BD-only classification')
        if require_hardware and before.get('bd_only') is not False:
            errors.append('BD-only hardware prohibited')
        if before.get('workspace') != workspace_name(work, sdk):
            errors.append('Different SDK workspace')
        hdf = bounded_path(work, before['hdf']['path'])
        expected_hdf = before['hdf']['sha256']
        if digest(hdf) != expected_hdf:
            errors.append('Selected HDF changed after SDK input lock')
        if digest(sdk / 'h/system.hdf') != expected_hdf:
            errors.append('SDK imported a different/stale HDF')
        records = before['sources']
        if not isinstance(records, list) or not records:
            errors.append('Empty SDK source lock')
            records = []
        expected = {}
        for item in records:
            name = item['path']
            bounded_path(Path(sources).resolve(strict=True), name)
            if '/' in name or Path(name).suffix not in ('.c', '.h'):
                raise ValueError('Invalid SDK source name')
            if name in expected:
                errors.append('Duplicate SDK source '+name)
            expected[name] = item['sha256']
            if digest(sdk / 'a/src' / name) != item['sha256']:
                errors.append('Imported app source differs: '+name)
        actual = {item['path']: item['sha256'] for item in source_records(sources)}
        if actual != expected:
            errors.append('Application source set/hash changed during SDK build')
        # Extra generated linker script is permitted, extra C/H is not.
        imported = {p.name for p in (sdk / 'a/src').iterdir()
                    if p.is_file() and p.suffix in ('.c', '.h')}
        if imported != set(expected):
            errors.append('SDK compiled an unexpected app source set')
    except (OSError, ValueError, KeyError, TypeError, AttributeError) as exc:
        errors.append('Cannot validate SDK input binding: '+str(exc))
    return errors


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('mode', choices=['capture', 'check'])
    parser.add_argument('--sources', type=Path, required=True)
    parser.add_argument('--work', type=Path, required=True)
    parser.add_argument('--sdk', type=Path, required=True)
    parser.add_argument('--lock', type=Path, required=True)
    parser.add_argument('--hdf', type=Path)
    parser.add_argument('--bd-only', choices=['0', '1'], default='0')
    parser.add_argument('--require-hardware', action='store_true')
    parser.add_argument('--receipt', type=Path)
    args = parser.parse_args()
    try:
        if args.mode == 'capture':
            data = capture(args.sources, args.work, args.hdf, args.sdk, args.bd_only == '1')
            with args.lock.open('x', encoding='utf-8') as stream:
                json.dump(data, stream, indent=2)
            errors = []
        else:
            data = json.loads(args.lock.read_text(encoding='utf-8-sig'))
            errors = validate(args.sources, args.work, args.sdk, data, args.require_hardware)
            if not errors and args.receipt:
                # Record actual linked output + BSP configuration, not only an
                # unchecked human-authored PASS flag. Layout checked separately.
                paths = [args.lock, args.work / data['hdf']['path'],
                         args.sdk / 'h/system.hdf', args.sdk / 'a/Debug/a.elf',
                         args.sdk / 'a/Debug/facebox.map', args.sdk / 'bsp/system.mss']
                paths += sorted((args.sdk / 'bsp/ps7_cortexa9_0').rglob('*'))
                artifacts = []
                for path in paths:
                    if path.is_file():
                        name = path.resolve(strict=True).relative_to(args.work.resolve()).as_posix()
                        artifacts.append({'path': name, 'sha256': digest(path)})
                    elif path in paths[:6]:
                        raise ValueError('Missing SDK output '+str(path))
                receipt = {'schema': 1, 'status': 'SDK_INPUT_BINDING_PASS',
                           'bd_only': data['bd_only'], 'inputs': data,
                           'artifacts': artifacts, 'board_release': False}
                with args.receipt.open('x', encoding='utf-8') as stream:
                    json.dump(receipt, stream, indent=2)
    except (OSError, ValueError, TypeError, KeyError) as exc:
        errors = [str(exc)]
    print(json.dumps({'status': 'SDK_INPUT_BINDING_REJECTED' if errors else 'SDK_INPUT_BINDING_PASS',
                      'errors': errors, 'not_board_release': True}))
    return 1 if errors else 0


if __name__ == '__main__':
    raise SystemExit(main())
