from pathlib import Path
import re,json
root=Path(__file__).resolve().parents[1]
p=root/'PS/pipeline_adaptive/hardware_baseline/build/h/e05_04/reports/facebox/post_impl_cdc.rpt'
rows=[];sc=dc=''
for line in p.read_text().splitlines():
 if line.startswith('Source Clock:'):sc=line.split(':',1)[1].strip()
 if line.startswith('Destination Clock:'):dc=line.split(':',1)[1].strip()
 if re.match(r'\s*\d+\s+CDC-\d+\s+Critical',line):
  fields=re.split(r'\s{2,}',line.strip()); rows.append({'source_clock':sc,'destination_clock':dc,'fields':fields})
(root/'offline_kernel/cdc_critical_raw.json').write_text(json.dumps(rows,indent=2))
for i,r in enumerate(rows,1):print(i,r['source_clock'],'->',r['destination_clock'],r['fields'])
print('COUNT',len(rows))
