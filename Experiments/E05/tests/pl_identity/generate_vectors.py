from pathlib import Path
import struct
root=Path(__file__).resolve().parent
inp=bytes([253,2,4,5,250,7,8,9,246]); w=bytes([0,0,0,0,2,0,0,0,0])
p=struct.pack('<4I',0x314e4e43,3|(3<<16),1|(1<<16),20)+inp+w+struct.pack('<ii',1,1<<20)
(root/'packet.hex').write_text('\n'.join(f'{int.from_bytes(p[i:i+4],"little"):08x}' for i in range(0,len(p),4)))
(root/'keep.hex').write_text('\n'.join(f'{(1<<len(p[i:i+4]))-1:x}' for i in range(0,len(p),4)))
(root/'expected.hex').write_text('\n'.join(f'{x:02x}' for x in [0,5,9,11,0,15,17,19,0]))
(root/'counts.vh').write_text(f'localparam WORDS={(len(p)+3)//4}, BYTES=9;\n')
