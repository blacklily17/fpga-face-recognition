from pathlib import Path
import json,hashlib,re
root=Path(__file__).resolve().parents[1];raw=json.loads((root/'offline_kernel/cdc_critical_raw.json').read_text());rows=[]
for i,r in enumerate(raw,1):
 f=r['fields']; src,dst=f[-2:]
 if '/verdict_cdc/' in dst:
  category='Inherited source-frame verdict common-reset release';rtl='PS/pipeline_adaptive/hardware_baseline/rtl/capture/source_frame_verdict_cdc.sv';constraints='PS/pipeline_adaptive/hardware_baseline/vivado/overlay_cdc.tcl'
  basis='common_resetn=src_rst_n && dst_rst_n asserts both local reset pipes asynchronously; src_release/dst_release are two-stage ASYNC_REG, shifted to 1 only on their own clock. Only release-pipe CLR/PRE is excepted; functional reset fanout from second-Q remains timed. Camera capture-enable levels feed local path resets through existing domain registers.'
 elif '/u_box_mailbox/' in dst:
  category='Inherited display mailbox common-reset release';rtl='PS/pipeline_adaptive/hardware_baseline/rtl/control/bbox_mailbox.sv';constraints='PS/pipeline_adaptive/hardware_baseline/vivado/overlay_cdc.tcl'
  basis='combined_reset_n=src_rst_n && dst_rst_n intentionally asserts both two-stage ASYNC_REG reset pipes; each local release is synchronized. The async reset inputs alone are excepted; mailbox functional reset recovery/removal remains timed.'
 elif '/axi_ctrl_interconnect/m08_couplers/' in dst:
  category='Inherited AMD AXI clock-converter XPM asynchronous reset';rtl='D:/Tools/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv';constraints='AMD generated clock-converter/FIFO XDC, exported in applied_constraints.xdc'
  basis='Endpoint arststages_ff_reg[0]/PRE is the first stage of AMD xpm_cdc_async_rst, not a data synchronizer D. Installed vendor RTL marks ASYNC_REG and asynchronously asserts the stage vector; deassertion shifts on the destination clock (xpm_cdc.sv lines1171,1222,1238,1246-1251). Reported depth is2; combinational reset conditioning before PRE is intentional. No user blanket exception was introduced.'
 elif f[1]=='CDC-13' and dst.endswith('/RST'):
  category='Inherited AMD VDMA asynchronous FIFO18E1 reset';rtl='AMD AXI VDMA/FIFO Generator primitive netlist';constraints='PS/pipeline_adaptive/hardware_baseline/vivado/vdma_reset_scope.tcl'
  basis='Non-FD destination is FIFO18E1/RST with EN_SYN=FALSE. Existing fail-closed hook checks exact FIFO type, one RST pin, two reset-release PRE pins, and six power_on_rd_rst registers all INIT=1. This primitive asynchronous reset is not expected to be a two-FF data D. Minimum reset assertion width and live startup-clock behavior remain board acceptance items; they are not established by positive WNS.'
 else:raise AssertionError(dst)
 rows.append({'item':i,'rule':f[1],'severity':'Critical','source_clock':r['source_clock'],'destination_clock':r['destination_clock'],'source':src,'destination':dst,'reported_depth':int(f[4]),'reported_exception':f[5],'ownership':category,'identity_cnn_new_path':False,'rtl_basis':rtl,'constraint_basis':constraints,'structural_review':basis,'not_a_waiver':True})
assert len(rows)==16
summary={'status':'STRUCTURAL_REVIEW_WITH_REMAINING_BOARD_ACCEPTANCE','counts':{'CDC-3_info':75,'CDC-6_warning':4,'CDC-9_info':3,'CDC-10_critical':14,'CDC-13_critical':2,'CDC-15_warning':358},'critical_items':rows,'limitations':['No CDC rule has been suppressed or relabelled. Critical count remains16.','This is structural offline review, not metastability MTBF or board reset/startup/pulse-width validation.','External I/O delay closure incomplete:11 inputs and27 outputs have no input/output delays.','Clock-enable controlled bundles rely on documented stable-through-ACK handshakes and5ns datapath/skew constraints; vendor FIFO data relies on vendor CDC implementation.']}
(root/'offline_kernel/cdc_structural_review.json').write_text(json.dumps(summary,indent=2))
lines=['# E05 最终 CDC Critical 逐条结构审查','', '工具原始计数保留：CDC-10 Critical14、CDC-13 Critical2；CDC-6 Warning4、CDC-15 Warning358。没有置零、降级或waive。16条均在继承的camera/HDMI/VDMA/AXI控制模块，未出现新增identity CNN数据路径。','', '完整起终点、时钟、例外和逐条依据见同目录 cdc_structural_review.json。以下编号与该JSON一致。','']
for r in rows:
 lines+=['## '+str(r['item'])+' '+r['rule']+' — '+r['ownership'],'','源：`'+r['source']+'`','', '目的：`'+r['destination']+'`','', '时钟：`'+r['source_clock']+'` → `'+r['destination_clock']+'`；报告例外：'+r['reported_exception']+'；深度：'+str(r['reported_depth'])+'。','',r['structural_review'],'','RTL依据：`'+r['rtl_basis']+'`；约束依据：`'+r['constraint_basis']+'`。','']
lines+=['## 未完成项','','WNS/WHS非负不证明全部CDC安全。reset脉宽、真实时钟启动、板上启停恢复仍待实测；camera/SCCB/LCD外部I/O约束仍缺11个input-delay和27个output-delay。未加入任何新clock-group/blanket false-path，真实CDC计数全部保留。']
(root/'offline_kernel/cdc_structural_review.md').write_text('\n'.join(lines),encoding='utf-8')
print('CDC_CRITICAL_STRUCTURAL_REVIEW',len(rows))
