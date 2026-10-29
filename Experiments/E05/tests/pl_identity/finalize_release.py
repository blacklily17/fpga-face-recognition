"""Promote only the actual final CDC signoff artifacts; never an earlier PASS."""
from pathlib import Path
import json,hashlib,zipfile,shutil,re
root=Path(__file__).resolve().parents[1]
build=root/'PS/pipeline_adaptive/hardware_baseline/build/h/e05_04';reports=build/'reports/facebox'
logpath=root/'offline_kernel/signoff_abort.log';log=logpath.read_text(errors='replace')
match=re.findall(r'^E05_ABORT_SCOPE_SIGNOFF_PASS setup=([0-9.]+) hold=([0-9.]+)$',log,re.M)
assert len(match)==1,'Missing actual final signoff PASS line (Tcl echoes do not count)'
wns,whs=map(float,match[0]);assert wns>=0 and whs>=0
assert re.search(r'^ABORT_CDC_SCOPE_PASS first_D_pins=2 second_stages_timed=1$',log,re.M)
assert len(re.findall(r'^ABORT_CDC_SECOND_STAGE_TIMED label=',log,re.M))==2
assert not re.search(r'^ERROR:|^E05_FINAL_.*FAILED',log,re.M)
timing=dict(x.split('=',1) for x in (reports/'timing_gate.txt').read_text().strip().splitlines())
assert float(timing['SETUP'])==wns and float(timing['HOLD'])==whs
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
source_lock=root/'offline_kernel/hardware_source_snapshot_signoff_before_tools.json'
source=json.loads(source_lock.read_text());assert source
assert all(sha(root/p)==h for p,h in source.items()),'Final HDL/Tcl/XDC signoff inputs changed'
compile_lock=root/'offline_sdk/compiler_inputs_before.json';compiled=json.loads(compile_lock.read_text())
assert all(sha(Path(p))==h for p,h in compiled.items()),'BSP/software/compiler inputs changed'
bit=build/'export/facebox/facebox_e05.bit';hdf=build/'export/facebox/joint.hdf';elf=root/'offline_sdk/artifacts/cnn_pl.elf'
assert all(p.is_file() and p.stat().st_size>0 for p in (bit,hdf,elf))
assert b'AC880-E05-HPS-RPL-20261020' in elf.read_bytes()
assert json.loads((root/'offline_sdk/layout_check.json').read_text())['status']=='SDK_LAYOUT_PASS'
with zipfile.ZipFile(hdf) as z,zipfile.ZipFile(root/'offline_sdk/e05_bd_compile_only.hdf') as b:
 hz=[n for n in z.namelist() if n.endswith('.hwh')];hb=[n for n in b.namelist() if n.endswith('.hwh')]
 assert len(hz)==len(hb)==1 and z.read(hz[0])==b.read(hb[0]),'Final HDF and fresh BSP HWH differ'
 initbytes=z.read('ps7_init.tcl');hwh_sha=hashlib.sha256(z.read(hz[0])).hexdigest()
required={'timing':'post_impl_timing_summary.rpt','utilization':'post_impl_utilization.rpt','drc':'post_impl_drc.rpt','cdc':'post_impl_cdc.rpt','exceptions':'applied_exceptions.rpt','constraints':'applied_constraints.xdc','check_timing':'check_timing.rpt','skew':'bus_skew.rpt','clock_interaction':'clock_interaction.rpt','worst_setup':'worst_setup.rpt','worst_hold':'worst_hold.rpt'}
assert all((reports/n).is_file() and (reports/n).stat().st_size for n in required.values())
review=root/'offline_kernel/cdc_structural_review.json';cdc=json.loads(review.read_text());assert len(cdc['critical_items'])==16
rel=lambda p:p.relative_to(root).as_posix()
dest=root/'offline_release';assert not dest.exists(),'Do not silently overwrite a release'
dest.mkdir()
files={'facebox_e05.bit':bit,'joint_e05.hdf':hdf,'cnn_pl.elf':elf,'cnn_pl.map':elf.with_suffix('.map')}
for n,p in files.items():shutil.copy2(p,dest/n)
(dest/'ps7_init.tcl').write_bytes(initbytes)
files['ps7_init.tcl']=dest/'ps7_init.tcl'
proof={'schema':'IDENTITY_HARDWARE_BUILD_V1','experiment_id':'E05','status':'implemented','part':'xc7z020clg484-2','bit_sha256':sha(dest/'facebox_e05.bit'),'hdf_sha256':sha(dest/'joint_e05.hdf'),'init_sha256':sha(dest/'ps7_init.tcl'),'bit_path':rel(dest/'facebox_e05.bit'),'hdf_path':rel(dest/'joint_e05.hdf'),'init_path':rel(dest/'ps7_init.tcl'),'elf_path':rel(dest/'cnn_pl.elf'),'elf_sha256':sha(dest/'cnn_pl.elf'),'wns_ns':wns,'whs_ns':whs,'reports':{k:{'path':rel(reports/n),'sha256':sha(reports/n)} for k,n in required.items()},'source_sha256':source,'signoff_log':{'path':rel(logpath),'sha256':sha(logpath)},'last_run_directory':rel(build),'signoff_driver':'offline_kernel/signoff_abort.tcl','signoff_source_lock':{'path':rel(source_lock),'sha256':sha(source_lock)},'bsp_compile_lock':{'path':rel(compile_lock),'sha256':sha(compile_lock)},'bsp_hwh_identical_to_final_hdf':True,'hardware_hwh_sha256':hwh_sha,'init_extracted_from_final_hdf':True,'build_id':'AC880-E05-HPS-RPL-20261020','board_tested':False,'cdc_counts':cdc['counts'],'cdc_structural_review':{'path':rel(review),'sha256':sha(review)},'cdc_status':'16 Critical retained, structurally reviewed; board reset/startup pulse acceptance remains pending','external_io_timing':'11 input ports and27 output ports have no external delay constraints; not closed','routed_checkpoint':{'path':rel(build/'export/facebox/e05_signed_routed.dcp'),'sha256':sha(build/'export/facebox/e05_signed_routed.dcp')}}
(dest/'identity_hardware_build_proof.json').write_text(json.dumps(proof,indent=2))
receipt={'status':'E05_OFFLINE_IMPLEMENTED_WITH_MATCHING_ELF','board_tested':False,'proof':rel(dest/'identity_hardware_build_proof.json'),'artifacts':{n:{'path':rel(dest/n),'sha256':sha(dest/n)} for n in files},'setup_slack_ns':wns,'hold_slack_ns':whs,'signoff_log_sha256':sha(logpath),'cdc_critical_count_retained':16}
(dest/'hardware_completion_receipt.json').write_text(json.dumps(receipt,indent=2))
print(json.dumps(receipt,indent=2))
