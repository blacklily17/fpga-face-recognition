"""SDK entry point delegates to the one maintained C3 layout gate."""
import importlib.util
from pathlib import Path

_path = Path(__file__).resolve().parents[2] / 'release_fixed/scripts/check_sdk_layout.py'
_spec = importlib.util.spec_from_file_location('c3_sdk_layout_canonical', _path)
_module = importlib.util.module_from_spec(_spec)
_spec.loader.exec_module(_module)
validate = _module.validate
main = _module.main

if __name__ == '__main__':
    raise SystemExit(main())
