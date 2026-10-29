"""Read-only ELF allocation/map/BSP gate. No board or SD access."""
import argparse
import json
import re
import subprocess
from pathlib import Path


def validate(sections_text, map_text, bsp_text, addresses):
    errors, regions = [], {}
    lines = sections_text.splitlines()
    if 'file format elf32-littlearm' not in sections_text:
        errors.append('ELF is not elf32-littlearm')
    for i, line in enumerate(lines[:-1]):
        match = re.match(r'^\s*\d+\s+(\S+)\s+([0-9a-fA-F]+)\s+([0-9a-fA-F]+)\s+([0-9a-fA-F]+)\s+', line)
        if not match or 'ALLOC' not in lines[i+1].split(', '):
            # Flags may be a single word with leading spaces.
            if not match or 'ALLOC' not in re.split(r'[,\s]+', lines[i+1].strip()):
                continue
        name, size, addr, load = match.groups()
        size, addr, load = int(size, 16), int(addr, 16), int(load, 16)
        if not size:
            continue
        if name in regions:
            errors.append('Duplicate allocated section ' + name)
        if not (0x00100000 <= addr < addr+size <= 0x08000000):
            errors.append('Allocated section outside application DDR: ' + name)
        if load != addr:
            errors.append('Unexpected load address: ' + name)
        for other, (start, end) in regions.items():
            if addr < end and start < addr+size:
                errors.append('Allocated sections overlap: {} / {}'.format(other, name))
        regions[name] = (addr, addr+size)
    for required in ('.text', '.bss', '.heap', '.stack'):
        if required not in regions:
            errors.append('Missing allocated section ' + required)

    symbols = {}
    for address, symbol in re.findall(r'^\s*(0x[0-9a-fA-F]+)\s+([_a-zA-Z][_a-zA-Z0-9]*)\s*=.*$', map_text, re.M):
        if symbol in symbols:
            errors.append('Duplicate map symbol ' + symbol)
        symbols[symbol] = int(address, 16)
    # These are reservations, not proof of runtime stack-depth sufficiency.
    reservations = [('_heap_start', '_heap_end', 0x4000, '.heap'),
                    ('_stack_end', '__stack', 0x4000, '.stack'),
                    ('_irq_stack_end', '__irq_stack', 0x400, '.stack'),
                    ('_supervisor_stack_end', '__supervisor_stack', 0x800, '.stack'),
                    ('_abort_stack_end', '__abort_stack', 0x400, '.stack'),
                    ('_fiq_stack_end', '__fiq_stack', 0x400, '.stack'),
                    ('_undef_stack_end', '__undef_stack', 0x400, '.stack')]
    used = []
    for begin, end, minimum, section in reservations:
        if begin not in symbols or end not in symbols:
            errors.append('Missing reservation symbols ' + begin + '/' + end)
            continue
        a, b = symbols[begin], symbols[end]
        region = regions.get(section, (0, 0))
        if b-a < minimum or not (region[0] <= a < b <= region[1]):
            errors.append('Invalid/undersized reservation ' + begin)
        if any(a < d and c < b for c, d in used):
            errors.append('Overlapping heap/stack reservations ' + begin)
        used.append((a, b))

    pairs = re.findall(r'^\s*#define\s+(XPAR_\w+)\s+(0x[0-9a-fA-F]+)[uUlL]*\s*$', bsp_text, re.M)
    defs = dict(pairs)
    if len(defs) != len(pairs):
        errors.append('Duplicate BSP address macro')
    expected_names = {'SEG_VDMA', 'SEG_CAMERA', 'SEG_DMA', 'SEG_WP4_CONTROL',
                      'SEG_WP4_FLAGS', 'SEG_KEYS', 'SEG_LIVE', 'SEG_UI_VDMA',
                      'SEG_HDMI_DIAG', 'overlay', 'snapshot', 'SEG_MATCH_DMA', 'SEG_MATCH_CONTROL'}
    if not isinstance(addresses, list) or len(addresses) != 13 or any(
            not isinstance(x, dict) for x in addresses) or set(
                x.get('name') for x in addresses) != expected_names:
        errors.append('Expected exactly thirteen unique exported peripherals')
        addresses = []
    for name, prefix, base, size in [
            ('SEG_VDMA', 'XPAR_AXI_VDMA_0', 0x43000000, 0x10000),
            ('SEG_CAMERA', 'XPAR_CAMERA_START_GPIO', 0x41200000, 0x10000),
            ('SEG_DMA', 'XPAR_AXI_DMA_0', 0x40400000, 0x10000),
            ('SEG_WP4_CONTROL', 'XPAR_WP4_CONTROL_GPIO', 0x41220000, 0x10000),
            ('SEG_WP4_FLAGS', 'XPAR_WP4_FLAG_GPIO', 0x41230000, 0x10000),
            ('SEG_KEYS', 'XPAR_CAPTURE_KEYS', 0x41240000, 0x10000),
            ('SEG_LIVE', 'XPAR_LIVE_STATUS_GPIO', 0x41250000, 0x10000),
            ('SEG_UI_VDMA', 'XPAR_UI_VDMA', 0x43010000, 0x10000),
            ('SEG_HDMI_DIAG', 'XPAR_HDMI_DIAG', 0x41210000, 0x10000),
            ('overlay', 'XPAR_OVERLAY_REGS_0', 0x41260000, 0x10000),
            ('snapshot', 'XPAR_SNAPSHOT_BRAM_CTRL_S_AXI', 0x42000000, 0x20000),
            ('SEG_MATCH_DMA', 'XPAR_MATCH_DMA', 0x40410000, 0x10000),
            ('SEG_MATCH_CONTROL', 'XPAR_MATCH_CONTROL', 0x41280000, 0x10000)]:
        try:
            matches = [x for x in addresses if x['name'] == name]
            if len(matches) != 1 or int(matches[0]['base'], 0) != base or int(matches[0]['size'], 0) != size:
                raise ValueError('Wrong exported address')
            if int(defs[prefix+'_BASEADDR'], 0) != base or int(defs[prefix+'_HIGHADDR'], 0) != base+size-1:
                raise ValueError('Stale BSP')
        except (KeyError, ValueError, TypeError):
            errors.append('BSP/export/frozen address mismatch ' + name)
    return errors


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--elf', type=Path, required=True)
    parser.add_argument('--map', type=Path, required=True)
    parser.add_argument('--bsp', type=Path, required=True)
    parser.add_argument('--addresses', type=Path, required=True)
    parser.add_argument('--objdump', type=Path, default=Path('D:/Tools/Xilinx/SDK/2018.3/gnu/aarch32/nt/gcc-arm-none-eabi/bin/arm-none-eabi-objdump.exe'))
    args = parser.parse_args()
    try:
        output = subprocess.check_output([str(args.objdump), '-h', str(args.elf)], stderr=subprocess.STDOUT).decode('utf-8', errors='replace')
        errors = validate(output, args.map.read_text(encoding='utf-8-sig'),
                          args.bsp.read_text(encoding='utf-8-sig'),
                          json.loads(args.addresses.read_text(encoding='utf-8-sig')))
    except (OSError, ValueError, subprocess.CalledProcessError) as exc:
        errors = [str(exc)]
    print(json.dumps({'status': 'REJECTED' if errors else 'SDK_LAYOUT_PASS', 'errors': errors,
                      'note': 'Static reservation check only; runtime stack/latency requires board validation'}))
    return 1 if errors else 0


if __name__ == '__main__':
    raise SystemExit(main())
