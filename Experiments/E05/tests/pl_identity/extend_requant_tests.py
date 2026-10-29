from pathlib import Path
p=Path(__file__).resolve().parent/'generate_network_vectors.py';s=p.read_text().replace('def conv(x,w,b,m):','def conv(x,w,b,m,shift=20):').replace('(prod+(1<<19))>>20','(prod+(1<<(shift-1)))>>shift').replace('(((-prod)+(1<<19))>>20)','(((-prod)+(1<<(shift-1)))>>shift)')
s=s.replace('def case(x,w,b,m,label):','def case(x,w,b,m,label,shift=20):').replace('y=conv(x,w,b,m);','y=conv(x,w,b,m,shift);').replace('c|(o<<16),20)','c|(o<<16),shift)')
needle="for name,items in [('packet',packets)"
s=s.replace(needle,"for sh in (1,31):\n case(r.randint(-128,128,(2,3,3)),r.randint(-128,128,(4,2,3,3)),np.array([-1000000000,1000000000,-1000000000,1000000000]),np.array([2147483647,-2147483648,-1,0]),'requant_extremes_shift'+str(sh),sh)\n"+needle)
p.write_text(s)
p=Path(__file__).resolve().parent/'run_kernel_tests.ps1';s=p.read_text();s=s.replace(' & "$VivadoRoot/bin/xvlog.bat"',' $bytes=([regex]::Match((Get-Content -Raw counts.vh),\'BYTES=(\\d+)\')).Groups[1].Value\n & "$VivadoRoot/bin/xvlog.bat"',1)
s=s.replace("'CONTIGUOUS_DMA_GOLDEN_PASS bytes=56632'",'"CONTIGUOUS_DMA_GOLDEN_PASS bytes=$bytes"').replace("'E05_STRICT_KERNEL_GATE_PASS network_bytes=56632 error_cases=8 legacy_bytes=9 full_feature_dimensions=32'",'"E05_STRICT_KERNEL_GATE_PASS network_bytes=$bytes error_cases=8 legacy_bytes=9 full_feature_dimensions=32"')
p.write_text(s)
