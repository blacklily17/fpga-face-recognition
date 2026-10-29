from pathlib import Path
p=Path(__file__).resolve().parent/'tb_dma_packet.sv';s=p.read_text()
s=s.replace('integer i,j,n=0,cycles=0;', 'reg lasts[0:WORDS-1];reg outlast[0:BYTES-1];\nreg stalled=0;reg[36:0] saved;\ninteger i,j,n=0,cycles=0;')
s=s.replace('if(mv&&mready) for', 'if(stalled && {ml,mk,md}!==saved) $fatal(1,"AXIS changed under backpressure");\nstalled=mv&&!mready;saved={ml,mk,md};\nif(mv&&mready) for')
s=s.replace('n=n+1;', 'if(outlast[n]!== (ml && (j==3 || !mk[j+1]))) $fatal(1,"TLAST mismatch byte=%0d",n);n=n+1;')
s=s.replace('$readmemh("packet.hex",packets);', '$readmemh("last.hex",lasts);$readmemh("outlast.hex",outlast);$readmemh("packet.hex",packets);')
s=s.replace('slast=(i==WORDS-1)','slast=lasts[i]')
p.write_text(s)
