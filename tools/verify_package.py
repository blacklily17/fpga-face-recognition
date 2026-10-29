"""Verify the submitted immutable input files, not later user build outputs."""
from pathlib import Path
import hashlib,json,sys
root=Path(__file__).resolve().parents[1]
manifest=json.loads((root/'manifest.json').read_text(encoding='utf-8'))
errors=[]
for name,entry in manifest['files'].items():
    p=root/name
    if not p.is_file():errors.append('MISSING '+name);continue
    if p.stat().st_size!=entry['bytes'] or hashlib.sha256(p.read_bytes()).hexdigest()!=entry['sha256']:
        errors.append('CHANGED '+name)
if errors:print('\n'.join(errors));sys.exit(1)
print('DELIVERY_PACKAGE_VERIFY_PASS',len(manifest['files']),'files')
