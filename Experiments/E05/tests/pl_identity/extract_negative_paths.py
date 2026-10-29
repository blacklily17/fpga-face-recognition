from pathlib import Path
import re,json
r=Path(__file__).resolve().parents[1]/'PS/pipeline_adaptive/hardware_baseline/build/h/e05_04/reports/facebox'
t=(r/'post_synth_timing_summary.rpt').read_text(errors='replace');out=[]
for b in re.split(r'(?=^Slack \()',t,flags=re.M):
 m=re.match(r'Slack \(VIOLATED\)\s*:\s*(-?[\d.]+)ns',b)
 if not m:continue
 src=re.search(r'^  Source:\s*(.+)',b,re.M);dst=re.search(r'^  Destination:\s*(.+)',b,re.M)
 out.append({'slack_ns':float(m.group(1)),'source':src.group(1).strip() if src else None,'destination':dst.group(1).strip() if dst else None})
(Path(__file__).resolve().parent/'post_synth_negative_paths_before_cdc_hook.json').write_text(json.dumps(out,indent=2))
print(json.dumps(out,indent=2))
