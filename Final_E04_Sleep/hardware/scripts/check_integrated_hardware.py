"""Self-contained offline hardware provenance and generated HWH checker."""
import argparse
import hashlib
import json
from datetime import datetime, timezone
from pathlib import Path
import re
import sys
import xml.etree.ElementTree as ET

DISTANCE = ('axis_lbp_distance.v', 'lbp_distance_pipeline.v',
            'distance_div14.v', 'distance_div_step.v')
HARDWARE_SCRIPTS = ('build_integrated_hardware.ps1', 'build_integrated_hardware.tcl',
                    'run_integrated_hardware.tcl', 'check_integrated_hardware.py')


def sha(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


def inventory(root):
    paths = []
    for scope in ('rtl', 'vivado', 'tb'):
        paths += [p for p in (root / scope).rglob('*') if p.is_file()]
    paths += [root / 'scripts' / name for name in HARDWARE_SCRIPTS]
    return {p.relative_to(root).as_posix(): sha(p) for p in sorted(paths)}


def sources(root):
    errors = []
    for name in DISTANCE:
        if not (root / 'rtl' / name).is_file():
            errors.append('Missing distance RTL: ' + name)
    gallery = (root / 'rtl/axis_lbp_distance.v').read_text(encoding='utf-8-sig')
    for token in ('query_ram', '51525901', '424154', 'even_pe', 'odd_pe'):
        if token not in gallery:
            errors.append('Query-resident distance contract missing: ' + token)
    # Do not import reference camera gating or 2-bit capture control.
    forbidden = re.compile(r'camera_single_frame_gate|single_frame_gate|singleframegate|'
                           r'camera2bit|single_frame_mode', re.I)
    for scope in ('rtl', 'vivado'):
        for path in (root / scope).rglob('*'):
            if path.is_file() and path.suffix in ('.v', '.sv', '.tcl', '.xdc'):
                text = path.read_text(encoding='utf-8-sig', errors='replace')
                if forbidden.search(text):
                    errors.append('Forbidden camera gate: ' + str(path))
    camera = (root / 'vivado/dependencies/rtl/bringup/real_camera_wp2_wp3_axis_source.sv').read_text()
    if not re.search(r'input\s+wire\s+capture_enable\s*[,;]', camera):
        errors.append('Camera capture_enable is not baseline scalar')
    # Packaged releases may contain the previous machine's completed-build
    # receipt with absolute paths.  It is evidence, not an input to a fresh
    # relocatable build.  capture/check below creates and enforces a new receipt
    # for the current root, including every RTL, Vivado, testbench and script.
    return errors


def validate_hwh(path, address_path):
    root = ET.parse(path).getroot()
    modules = {m.get('INSTANCE'): m for m in root.findall('.//MODULE')}
    errors, checks = [], []

    def require(ok, message):
        (checks if ok else errors).append(message)

    def attr(inst, element, name, key):
        module = modules.get(inst)
        nodes = [] if module is None else module.findall('.//' + element + "[@NAME='" + name + "']")
        return nodes[0].get(key) if len(nodes) == 1 else None

    def link(a, ap, b, bp, bus=False):
        element, key = ('BUSINTERFACE', 'BUSNAME') if bus else ('PORT', 'SIGNAME')
        left, right = attr(a, element, ap, key), attr(b, element, bp, key)
        require(bool(left) and left == right, f'{a}/{ap} -> {b}/{bp}')

    require(attr('axi_ctrl_interconnect', 'PARAMETER', 'NUM_MI', 'VALUE') == '14', 'Control interconnect has 14 masters')
    require(attr('axi_mem_interconnect', 'PARAMETER', 'NUM_SI', 'VALUE') == '4', 'Original HP0 interconnect still has 4 inputs')
    require(attr('match_mem', 'PARAMETER', 'NUM_SI', 'VALUE') == '2', 'Separate HP1 interconnect has 2 inputs')
    require(attr('processing_system7_0', 'PORT', 'FCLK_CLK0', 'CLKFREQUENCY') == '100000000', 'FCLK0 is 100MHz')
    for a, ap, b, bp in (
        ('axi_ctrl_interconnect', 'M09_AXI', 'overlay_regs_0', 's_axi'),
        ('axi_ctrl_interconnect', 'M10_AXI', 'snapshot_bram_ctrl', 'S_AXI'),
        ('axi_ctrl_interconnect', 'M11_AXI', 'match_dma', 'S_AXI_LITE'),
        ('axi_ctrl_interconnect', 'M12_AXI', 'match_control', 'S_AXI'),
        ('axi_ctrl_interconnect', 'M13_AXI', 'sleep_control', 'S_AXI'),
        ('match_dma', 'M_AXI_MM2S', 'match_mem', 'S00_AXI'),
        ('match_dma', 'M_AXI_S2MM', 'match_mem', 'S01_AXI'),
        ('match_mem', 'M00_AXI', 'processing_system7_0', 'S_AXI_HP1'),
        ('axi_mem_interconnect', 'M00_AXI', 'processing_system7_0', 'S_AXI_HP0'),
        ('match_dma', 'M_AXIS_MM2S', 'match_core', 'S_AXIS'),
        ('match_core', 'M_AXIS', 'match_dma', 'S_AXIS_S2MM'),
        ('axi_vdma_0', 'M_AXI_MM2S', 'axi_mem_interconnect', 'S00_AXI'),
        ('axi_vdma_0', 'M_AXI_S2MM', 'axi_mem_interconnect', 'S01_AXI'),
        ('axi_dma_0', 'M_AXI_MM2S', 'axi_mem_interconnect', 'S02_AXI'),
        ('ui_vdma', 'M_AXI_MM2S', 'axi_mem_interconnect', 'S03_AXI'),
        ('real_camera_source_0', 'm_axis', 'axi_vdma_0', 'S_AXIS_S2MM'),
        ('axi_vdma_0', 'M_AXIS_MM2S', 'tx2_axis_sink_0', 's')):
        link(a, ap, b, bp, True)
    clocks = {'axi_ctrl_interconnect': ('M11_ACLK', 'M12_ACLK', 'M13_ACLK'),
              'sleep_control': ('s_axi_aclk',),
              'match_dma': ('s_axi_lite_aclk', 'm_axi_mm2s_aclk', 'm_axi_s2mm_aclk'),
              'match_core': ('aclk',), 'match_control': ('s_axi_aclk',),
              'match_mem': ('ACLK', 'S00_ACLK', 'S01_ACLK', 'M00_ACLK'),
              'processing_system7_0': ('S_AXI_HP1_ACLK',)}
    for inst, ports in clocks.items():
        for port in ports:
            link('processing_system7_0', 'FCLK_CLK0', inst, port)
    resets = {'axi_ctrl_interconnect': ('M11_ARESETN', 'M12_ARESETN', 'M13_ARESETN'),
              'sleep_control': ('s_axi_aresetn',),
              'match_dma': ('axi_resetn',), 'match_control': ('s_axi_aresetn',),
              'match_mem': ('ARESETN', 'S00_ARESETN', 'S01_ARESETN', 'M00_ARESETN'),
              'match_reset': ('Op2',)}
    for inst, ports in resets.items():
        for port in ports:
            link('reset_100m', 'peripheral_aresetn', inst, port)
    link('match_control', 'gpio_io_o', 'match_reset', 'Op1')
    link('match_reset', 'Res', 'match_core', 'aresetn')
    link('match_core', 'protocol_error', 'match_control', 'gpio2_io_i')
    link('real_camera_source_0', 'gray_tap_resetn', 'gray_snapshot_capture_0', 'aresetn')
    link('camera_start_gpio', 'gpio2_io_o', 'real_camera_source_0', 'capture_enable')
    require(attr('camera_start_gpio', 'PARAMETER', 'C_GPIO2_WIDTH', 'VALUE') == '1', 'Camera capture control is scalar continuous baseline')
    for channel in ('M_AXI_MM2S', 'M_AXI_S2MM'):
        ranges = modules['match_dma'].findall(".//MEMRANGE[@MASTERBUSINTERFACE='" + channel + "']")
        require(len(ranges) == 1 and ranges[0].get('SLAVEBUSINTERFACE') == 'S_AXI_HP1'
                and int(ranges[0].get('BASEVALUE'), 0) == 0
                and int(ranges[0].get('HIGHVALUE'), 0) == 0x3fffffff,
                channel + ' read/write DDR range is HP1 0x00000000..0x3fffffff')
    expected = {'axi_dma_0': (0x40400000, 0x10000), 'match_dma': (0x40410000, 0x10000),
                'overlay_regs_0': (0x41260000, 0x10000), 'snapshot_bram_ctrl': (0x42000000, 0x20000),
                'match_control': (0x41280000, 0x10000),
                'sleep_control': (0x41290000, 0x10000)}
    ps_ranges = modules['processing_system7_0'].findall(".//MEMRANGE[@MASTERBUSINTERFACE='M_AXI_GP0']")
    mapped = {}
    for node in ps_ranges:
        lo, hi = int(node.get('BASEVALUE'), 0), int(node.get('HIGHVALUE'), 0)
        mapped[node.get('INSTANCE')] = (lo, hi - lo + 1)
        require(not any(lo <= reserved <= hi for reserved in (0x41270000, 0x40420000)),
                'CNN reserved addresses unused by ' + node.get('INSTANCE'))
    for inst, region in expected.items():
        require(mapped.get(inst) == region, f'{inst} address/range {region}')
    ordered = sorted((lo, lo + size, inst) for inst, (lo, size) in mapped.items())
    require(all(a[1] <= b[0] for a, b in zip(ordered, ordered[1:])), 'PS peripheral ranges do not overlap')
    if address_path:
        actual = {(int(v['base'], 0), int(v['size'], 0)) for v in json.loads(address_path.read_text())}
        for region in expected.values():
            require(region in actual, 'Address export agrees with HWH: ' + str(region))
    return {'status': 'INTEGRATED_HWH_FAIL' if errors else 'INTEGRATED_HWH_PASS',
            'hwh': str(path), 'sha256': sha(path), 'checks': checks, 'errors': errors,
            'ps_addresses': {k: {'base': hex(v[0]), 'size': hex(v[1])} for k, v in mapped.items()}}


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('mode', choices=('capture', 'check', 'hwh'))
    parser.add_argument('target', type=Path)
    parser.add_argument('--receipt', type=Path)
    parser.add_argument('--addresses', type=Path)
    parser.add_argument('--output', type=Path)
    args = parser.parse_args()
    try:
        if args.mode == 'hwh':
            result = validate_hwh(args.target, args.addresses)
        else:
            root = args.target.resolve()
            errors = sources(root)
            actual = inventory(root)
            if args.mode == 'capture':
                if errors:
                    raise ValueError('; '.join(errors))
                with args.receipt.open('x', encoding='utf-8') as stream:
                    json.dump({'phase': 'before-tools', 'utc': datetime.now(timezone.utc).isoformat(),
                               'command': sys.argv, 'files': actual}, stream, indent=2)
            else:
                prior = json.loads(args.receipt.read_text())
                errors += ['Source inventory/hash differs from before-tools'] if prior['files'] != actual else []
            result = {'status': 'INTEGRATED_SOURCE_FAIL' if errors else 'INTEGRATED_SOURCE_PASS',
                      'mode': args.mode, 'count': len(actual), 'errors': errors}
        if args.output:
            args.output.write_text(json.dumps(result, indent=2) + '\n', encoding='utf-8')
        print(json.dumps(result))
        return 1 if result['errors'] else 0
    except (OSError, ValueError, KeyError, ET.ParseError) as exc:
        print(json.dumps({'status': 'INTEGRATED_CHECK_FAILED', 'error': str(exc)}))
        return 1


if __name__ == '__main__':
    raise SystemExit(main())
