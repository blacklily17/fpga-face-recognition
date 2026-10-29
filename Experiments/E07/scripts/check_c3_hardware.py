"""Validate joint C3/E07 HWH against independently exported BD topology. Offline only."""
import argparse
import hashlib
import json
from pathlib import Path
import sys
import xml.etree.ElementTree as ET
import zipfile

BUS_LINKS = (
    ('axi_ctrl_interconnect','M11_AXI','match_dma','S_AXI_LITE'),
    ('axi_ctrl_interconnect','M12_AXI','match_control','S_AXI'),
    ('axi_ctrl_interconnect','M13_AXI','cnn_ctrl_cc','S_AXI'),
    ('axi_ctrl_interconnect','M14_AXI','cnn_dma_ctrl_cc','S_AXI'),
    ('cnn_ctrl_cc','M_AXI','cnn_regs_0','s_axi'),
    ('cnn_dma_ctrl_cc','M_AXI','cnn_dma','S_AXI_LITE'),
    ('match_dma','M_AXI_MM2S','match_mem','S00_AXI'),
    ('match_dma','M_AXI_S2MM','match_mem','S01_AXI'),
    ('match_mem','M00_AXI','processing_system7_0','S_AXI_HP1'),
    ('cnn_dma','M_AXI_MM2S','cnn_mem_interconnect','S00_AXI'),
    ('cnn_dma','M_AXI_S2MM','cnn_mem_interconnect','S01_AXI'),
    ('cnn_mem_interconnect','M00_AXI','processing_system7_0','S_AXI_HP2'),
    ('axi_mem_interconnect','M00_AXI','processing_system7_0','S_AXI_HP0'),
    ('axi_vdma_0','M_AXI_MM2S','axi_mem_interconnect','S00_AXI'),
    ('axi_vdma_0','M_AXI_S2MM','axi_mem_interconnect','S01_AXI'),
    ('axi_dma_0','M_AXI_MM2S','axi_mem_interconnect','S02_AXI'),
    ('ui_vdma','M_AXI_MM2S','axi_mem_interconnect','S03_AXI'),
    ('match_dma','M_AXIS_MM2S','match_core','S_AXIS'),
    ('match_core','M_AXIS','match_dma','S_AXIS_S2MM'),
    ('cnn_dma','M_AXIS_MM2S','cnn_regs_0','s_axis'),
    ('cnn_regs_0','m_axis','cnn_dma','S_AXIS_S2MM'))
CLOCK100 = {
    'match_dma':('s_axi_lite_aclk','m_axi_mm2s_aclk','m_axi_s2mm_aclk'),
    'match_control':('s_axi_aclk',),'match_core':('aclk',),
    'match_mem':('ACLK','S00_ACLK','S01_ACLK','M00_ACLK'),
    'axi_ctrl_interconnect':('M11_ACLK','M12_ACLK','M13_ACLK','M14_ACLK'),
    'processing_system7_0':('S_AXI_HP1_ACLK',),
    'cnn_ctrl_cc':('s_axi_aclk',),'cnn_dma_ctrl_cc':('s_axi_aclk',)}
CLOCK50 = {
    'cnn_regs_0':('aclk',),
    'cnn_dma':('s_axi_lite_aclk','m_axi_mm2s_aclk','m_axi_s2mm_aclk'),
    'cnn_mem_interconnect':('ACLK','S00_ACLK','S01_ACLK','M00_ACLK'),
    'processing_system7_0':('S_AXI_HP2_ACLK',),'reset_cnn':('slowest_sync_clk',),
    'cnn_ctrl_cc':('m_axi_aclk',),'cnn_dma_ctrl_cc':('m_axi_aclk',)}
RESET100 = {
    'match_dma':('axi_resetn',),'match_control':('s_axi_aresetn',),
    'match_mem':('ARESETN','S00_ARESETN','S01_ARESETN','M00_ARESETN'),
    'axi_ctrl_interconnect':('M11_ARESETN','M12_ARESETN','M13_ARESETN','M14_ARESETN'),
    'cnn_ctrl_cc':('s_axi_aresetn',),'cnn_dma_ctrl_cc':('s_axi_aresetn',)}
RESET50 = {
    'cnn_regs_0':('aresetn',),'cnn_dma':('axi_resetn',),
    'cnn_mem_interconnect':('ARESETN','S00_ARESETN','S01_ARESETN','M00_ARESETN'),
    'cnn_ctrl_cc':('m_axi_aresetn',),'cnn_dma_ctrl_cc':('m_axi_aresetn',)}
ADDRESSES={'match_dma':0x40410000,'match_control':0x41280000,
           'cnn_dma':0x40420000,'cnn_regs_0':0x41270000}


def validate(xml, netlist):
    errors,checks=[],[]
    root=ET.fromstring(xml)
    nodes=root.findall('.//MODULE')
    modules={m.get('INSTANCE'):m for m in nodes}
    e07='idcnn_dma' in modules
    def require(ok, message):
        (checks if ok else errors).append(message)
    require(len(modules)==len(nodes),'Unique HWH module instances')
    require(netlist.get('schema')==1,'Supported BD netlist schema')
    def attr(instance,section,tag,name,key):
        m=modules.get(instance)
        matches=[] if m is None else m.findall(section+'/'+tag+'[@NAME="'+name+'"]')
        return matches[0].get(key) if len(matches)==1 else None
    def parameter(instance,name,value):
        actual=attr(instance,'PARAMETERS','PARAMETER',name,'VALUE')
        require(actual==str(value),instance+'/'+name+'='+str(value))
    def net(instance,port,bus=False):
        if bus:
            value=attr(instance,'BUSINTERFACES','BUSINTERFACE',port,'BUSNAME')
            exported=netlist.get('interfaces',{}).get(instance+'/'+port)
        else:
            value=attr(instance,'PORTS','PORT',port,'SIGNAME')
            exported=netlist.get('pins',{}).get(instance+'/'+port)
        require(bool(value) and value==exported,'BD/HWH agree: '+instance+'/'+port)
        return value
    def link(a,ap,b,bp,bus=False):
        left,right=net(a,ap,bus),net(b,bp,bus)
        require(bool(left) and left==right,a+'/'+ap+' -> '+b+'/'+bp)
    parameter('axi_ctrl_interconnect','NUM_MI',17 if e07 else 15)
    parameter('axi_mem_interconnect','NUM_SI',4)
    for name in ('match_mem','cnn_mem_interconnect'):
        parameter(name,'NUM_SI',2);parameter(name,'NUM_MI',1)
    for name,length in (('match_dma',23),('cnn_dma',16)):
        for key,value in (('C_SG_LENGTH_WIDTH',length),('C_INCLUDE_SG',0),
                ('C_M_AXIS_MM2S_TDATA_WIDTH',32),('C_S_AXIS_S2MM_TDATA_WIDTH',32)):
            parameter(name,key,value)
    if e07:
        parameter('idcnn_mem_interconnect','NUM_SI',2)
        parameter('idcnn_mem_interconnect','NUM_MI',1)
        for key,value in (('C_SG_LENGTH_WIDTH',23),('C_INCLUDE_SG',0),
                ('C_M_AXIS_MM2S_TDATA_WIDTH',32),('C_S_AXIS_S2MM_TDATA_WIDTH',32)):
            parameter('idcnn_dma',key,value)
    for name in ('cnn_ctrl_cc','cnn_dma_ctrl_cc'):
        parameter(name,'PROTOCOL','AXI4LITE');parameter(name,'C_AXI_IS_ACLK_ASYNC',1)
    for args in BUS_LINKS:link(*args,bus=True)
    if e07:
        for args in (
            ('axi_ctrl_interconnect','M15_AXI','idcnn_dma','S_AXI_LITE'),
            ('axi_ctrl_interconnect','M16_AXI','idcnn_control','S_AXI'),
            ('idcnn_dma','M_AXI_MM2S','idcnn_mem_interconnect','S00_AXI'),
            ('idcnn_dma','M_AXI_S2MM','idcnn_mem_interconnect','S01_AXI'),
            ('idcnn_mem_interconnect','M00_AXI','processing_system7_0','S_AXI_HP3'),
            ('idcnn_dma','M_AXIS_MM2S','idcnn_core','S_AXIS'),
            ('idcnn_core','M_AXIS','idcnn_dma','S_AXIS_S2MM')):
            link(*args,bus=True)
    for source,hz,groups in (('FCLK_CLK0',100000000,CLOCK100),('FCLK_CLK1',50000000,CLOCK50)):
        require(attr('processing_system7_0','PORTS','PORT',source,'CLKFREQUENCY')==str(hz),source+' frequency')
        for inst,ports in groups.items():
            for port in ports:link('processing_system7_0',source,inst,port)
    if e07:
        for inst,ports in {
            'axi_ctrl_interconnect':('M15_ACLK','M16_ACLK'),
            'idcnn_control':('s_axi_aclk',),
            'idcnn_dma':('s_axi_lite_aclk','m_axi_mm2s_aclk','m_axi_s2mm_aclk'),
            'idcnn_core':('aclk',),
            'idcnn_mem_interconnect':('ACLK','S00_ACLK','S01_ACLK','M00_ACLK'),
            'processing_system7_0':('S_AXI_HP3_ACLK',)}.items():
            for port in ports:link('processing_system7_0','FCLK_CLK0',inst,port)
    for source,groups in (('reset_100m',RESET100),('reset_cnn',RESET50)):
        for inst,ports in groups.items():
            for port in ports:link(source,'peripheral_aresetn',inst,port)
    if e07:
        for inst,ports in {
            'axi_ctrl_interconnect':('M15_ARESETN','M16_ARESETN'),
            'idcnn_control':('s_axi_aresetn',),
            'idcnn_dma':('axi_resetn',),
            'idcnn_mem_interconnect':('ARESETN','S00_ARESETN','S01_ARESETN','M00_ARESETN')}.items():
            for port in ports:link('reset_100m','peripheral_aresetn',inst,port)
    if e07:
        parameter('idcnn_dma','C_INCLUDE_MM2S_DRE',1)
        parameter('idcnn_dma','C_INCLUDE_S2MM_DRE',1)
        parameter('idcnn_reset','C_OPERATION','and')
        parameter('reset_100m','C_EXT_RESET_HIGH',0)
        parameter('reset_cnn','C_EXT_RESET_HIGH',0)
        link('idcnn_control','gpio_io_o','idcnn_reset','Op1')
        link('reset_100m','peripheral_aresetn','idcnn_reset','Op2')
        link('idcnn_reset','Res','idcnn_core','aresetn')
        link('idcnn_core','protocol_error','idcnn_status','In0')
        link('idcnn_core','busy','idcnn_status','In1')
        link('idcnn_status','dout','idcnn_control','gpio2_io_i')
        for channel in ('M_AXI_MM2S','M_AXI_S2MM'):
            views=modules['idcnn_dma'].findall('.//MEMRANGE[@MASTERBUSINTERFACE="'+channel+'"]')
            require(len(views)==1 and views[0].get('SLAVEBUSINTERFACE')=='S_AXI_HP3'
                    and int(views[0].get('BASEVALUE'),0)==0
                    and int(views[0].get('HIGHVALUE'),0)==0x3fffffff,
                    'idcnn_dma/'+channel+' DDR range HP3 0x00000000..0x3fffffff')
    link('real_camera_source_0','gray_tap_resetn','gray_snapshot_capture_0','aresetn')
    ranges=[]
    for inst,address in ADDRESSES.items():
        found={(int(n.get('BASEVALUE'),0),int(n.get('HIGHVALUE'),0))
               for n in root.findall('.//MEMRANGE') if n.get('INSTANCE')==inst}
        require(found=={(address,address+65535)},inst+' address/range')
    if e07:
        for inst,address in {'idcnn_dma':0x40430000,'idcnn_control':0x41290000}.items():
            found={(int(n.get('BASEVALUE'),0),int(n.get('HIGHVALUE'),0))
                   for n in root.findall('.//MEMRANGE') if n.get('INSTANCE')==inst}
            require(found=={(address,address+65535)},inst+' address/range')
    # HWH can duplicate the same physical range in multiple master views.
    for n in root.findall('.//MEMRANGE'):
        lo,hi=int(n.get('BASEVALUE'),0),int(n.get('HIGHVALUE'),0)
        # DDR/OCM mappings of different DMA masters share physical memory;
        # they are not PS control-peripheral address assignments.
        if n.get('INSTANCE')=='processing_system7_0':continue
        ranges.append((lo,hi,n.get('INSTANCE')))
    ranges=sorted(set(ranges))
    require(all(a[1]<b[0] for a,b in zip(ranges,ranges[1:])),'PS peripheral address ranges nonoverlapping')
    prefix='E07_HARDWARE' if e07 else 'C3_HARDWARE'
    return {'status':prefix+'_REJECTED' if errors else prefix+'_PASS',
            'board_validated':False,'checks':checks,'errors':errors}


def main():
    p=argparse.ArgumentParser(description=__doc__)
    choice=p.add_mutually_exclusive_group(required=True)
    choice.add_argument('--hdf',type=Path);choice.add_argument('--hwh',type=Path)
    p.add_argument('--netlist-json',type=Path,required=True)
    p.add_argument('--report',type=Path,required=True)
    args=p.parse_args()
    try:
        if args.hdf:
            with zipfile.ZipFile(args.hdf) as archive:
                names=[n for n in archive.namelist() if n.endswith('.hwh')]
                if len(names)!=1:raise ValueError('Expected exactly one HWH')
                xml=archive.read(names[0])
        else:xml=args.hwh.read_bytes()
        result=validate(xml,json.loads(args.netlist_json.read_text(encoding='utf-8-sig')))
        result['hwh_sha256']=hashlib.sha256(xml).hexdigest()
        result['netlist_sha256']=hashlib.sha256(args.netlist_json.read_bytes()).hexdigest()
    except (OSError,ValueError,KeyError,TypeError,ET.ParseError,zipfile.BadZipFile) as exc:
        result={'status':'C3_HARDWARE_REJECTED','board_validated':False,'errors':[str(exc)]}
    args.report.parent.mkdir(parents=True,exist_ok=True)
    args.report.write_text(json.dumps(result,indent=2)+'\n',encoding='utf-8')
    print(result['status'])
    return 1 if result.get('errors') else 0


if __name__=='__main__':sys.exit(main())

