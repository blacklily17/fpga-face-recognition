from pathlib import Path,PureWindowsPath
import json,hashlib
root=Path(__file__).resolve().parents[1];p=root/'offline_release/identity_hardware_build_proof.json';d=json.loads(p.read_text())
d['format']='IDENTITY_HARDWARE_BUILD_V1'
d['source_sha256']={PureWindowsPath(k).as_posix():v for k,v in d['source_sha256'].items()}
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
extra={'cdc_review_json':'offline_kernel/cdc_structural_review.json','cdc_review_markdown':'offline_kernel/cdc_structural_review.md','signoff_log':'offline_kernel/signoff_abort.log','hardware_signoff_source_lock':'offline_kernel/hardware_source_snapshot_signoff_before_tools.json','hardware_header_synthesis_lock':'offline_kernel/hardware_source_snapshot_header_before_tools.json','elf_bsp_compiler_input_lock':'offline_sdk/compiler_inputs_before.json','elf_binding_check':'offline_sdk/compiler_binding_check.json','elf_layout_check':'offline_sdk/layout_check.json','rtl_network_regression':'offline_kernel/strict_network.log','rtl_exception_regression':'offline_kernel/strict_errors.log','rtl_full_feature_replay':'offline_kernel/replay.log','golden_vectors':'offline_kernel/golden_summary.json','abort_scope_validation':'offline_kernel/check_abort_scope.log'}
for role,name in extra.items():d['reports'][role]={'path':name,'sha256':sha(root/name)}
assert all('\\' not in k for k in d['source_sha256'])
tmp=p.with_suffix('.tmp');tmp.write_text(json.dumps(d,indent=2));tmp.replace(p)
print('E05_PROOF_POSIX_AND_EVIDENCE_ROLES_PASS',len(d['source_sha256']),len(d['reports']))
