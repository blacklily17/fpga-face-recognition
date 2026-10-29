from pathlib import Path
p=Path(__file__).resolve().parents[1]/'PS/pipeline_adaptive/hardware_baseline/scripts/check_integrated_hardware.py';s=p.read_text()
needle="    link('match_control', 'gpio_io_o', 'match_reset', 'Op1')"
insert="""    for a,ap,b,bp in (('cnn_control','gpio_io_o','cnn_reset','Op1'),('cnn_reset','Res','cnn_core','aresetn'),('cnn_core','protocol_error','cnn_status','In0'),('cnn_core','busy','cnn_status','In1'),('cnn_status','dout','cnn_control','gpio2_io_i')):
        link(a,ap,b,bp)
    for port in ('M13_ACLK','M14_ACLK'):
        link('processing_system7_0','FCLK_CLK0','axi_ctrl_interconnect',port)
    for port in ('S02_ACLK','S03_ACLK'):
        link('processing_system7_0','FCLK_CLK0','match_mem',port)
    for inst,ports in {'axi_ctrl_interconnect':('M13_ARESETN','M14_ARESETN'),'match_mem':('S02_ARESETN','S03_ARESETN')}.items():
        for port in ports: link('reset_100m','peripheral_aresetn',inst,port)
    for channel in ('M_AXI_MM2S','M_AXI_S2MM'):
        ranges=modules['cnn_dma'].findall(".//MEMRANGE[@MASTERBUSINTERFACE='"+channel+"']")
        require(len(ranges)==1 and ranges[0].get('SLAVEBUSINTERFACE')=='S_AXI_HP1' and int(ranges[0].get('BASEVALUE'),0)==0 and int(ranges[0].get('HIGHVALUE'),0)==0x3fffffff, 'CNN '+channel+' HP1 DDR range')
    for param in ('C_INCLUDE_MM2S_DRE','C_INCLUDE_S2MM_DRE'):
        require(attr('cnn_dma','PARAMETER',param,'VALUE')=='1','CNN byte alignment enabled '+param)
    require(attr('cnn_dma','PARAMETER','C_INCLUDE_SG','VALUE')=='0','CNN DMA simple mode')
"""
s=s.replace(needle,insert+needle);p.write_text(s)
