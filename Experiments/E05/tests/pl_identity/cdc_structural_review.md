# E05 最终 CDC Critical 逐条结构审查

工具原始计数保留：CDC-10 Critical14、CDC-13 Critical2；CDC-6 Warning4、CDC-15 Warning358。没有置零、降级或waive。16条均在继承的camera/HDMI/VDMA/AXI控制模块，未出现新增identity CNN数据路径。

完整起终点、时钟、例外和逐条依据见同目录 cdc_structural_review.json。以下编号与该JSON一致。

## 1 CDC-10 — Inherited source-frame verdict common-reset release

源：`facebox_system_i/real_camera_source_0/inst/capture_axi_sync_reg/C`

目的：`facebox_system_i/real_camera_source_0/inst/verdict_cdc/src_release_reg[0]/CLR`

时钟：`clk_fpga_0` → `cam_pclk_in`；报告例外：False Path；深度：2。

common_resetn=src_rst_n && dst_rst_n asserts both local reset pipes asynchronously; src_release/dst_release are two-stage ASYNC_REG, shifted to 1 only on their own clock. Only release-pipe CLR/PRE is excepted; functional reset fanout from second-Q remains timed. Camera capture-enable levels feed local path resets through existing domain registers.

RTL依据：`PS/pipeline_adaptive/hardware_baseline/rtl/capture/source_frame_verdict_cdc.sv`；约束依据：`PS/pipeline_adaptive/hardware_baseline/vivado/overlay_cdc.tcl`。

## 2 CDC-10 — Inherited source-frame verdict common-reset release

源：`facebox_system_i/real_camera_source_0/inst/capture_cam_sync_reg/C`

目的：`facebox_system_i/real_camera_source_0/inst/verdict_cdc/dst_release_reg[0]/CLR`

时钟：`cam_pclk_in` → `clk_fpga_0`；报告例外：False Path；深度：2。

common_resetn=src_rst_n && dst_rst_n asserts both local reset pipes asynchronously; src_release/dst_release are two-stage ASYNC_REG, shifted to 1 only on their own clock. Only release-pipe CLR/PRE is excepted; functional reset fanout from second-Q remains timed. Camera capture-enable levels feed local path resets through existing domain registers.

RTL依据：`PS/pipeline_adaptive/hardware_baseline/rtl/capture/source_frame_verdict_cdc.sv`；约束依据：`PS/pipeline_adaptive/hardware_baseline/vivado/overlay_cdc.tcl`。

## 3 CDC-10 — Inherited AMD AXI clock-converter XPM asynchronous reset

源：`facebox_system_i/reset_hdmi/U0/ACTIVE_LOW_PR_OUT_DFF[0].FDRE_PER_N/C`

目的：`facebox_system_i/axi_ctrl_interconnect/m08_couplers/auto_cc/inst/gen_clock_conv.gen_async_conv.asyncfifo_axi/inst_fifo_gen/gaxi_full_lite.gread_ch.grach2.axi_rach/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst/arststages_ff_reg[0]/PRE`

时钟：`clk_out1_facebox_system_hdmi_video_clk_0_1` → `clk_fpga_0`；报告例外：False Path；深度：2。

Endpoint arststages_ff_reg[0]/PRE is the first stage of AMD xpm_cdc_async_rst, not a data synchronizer D. Installed vendor RTL marks ASYNC_REG and asynchronously asserts the stage vector; deassertion shifts on the destination clock (xpm_cdc.sv lines1171,1222,1238,1246-1251). Reported depth is2; combinational reset conditioning before PRE is intentional. No user blanket exception was introduced.

RTL依据：`D:/Tools/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv`；约束依据：`AMD generated clock-converter/FIFO XDC, exported in applied_constraints.xdc`。

## 4 CDC-10 — Inherited AMD AXI clock-converter XPM asynchronous reset

源：`facebox_system_i/reset_hdmi/U0/ACTIVE_LOW_PR_OUT_DFF[0].FDRE_PER_N/C`

目的：`facebox_system_i/axi_ctrl_interconnect/m08_couplers/auto_cc/inst/gen_clock_conv.gen_async_conv.asyncfifo_axi/inst_fifo_gen/gaxi_full_lite.gread_ch.grdch2.axi_rdch/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rst_rd_reg2_inst/arststages_ff_reg[0]/PRE`

时钟：`clk_out1_facebox_system_hdmi_video_clk_0_1` → `clk_fpga_0`；报告例外：False Path；深度：2。

Endpoint arststages_ff_reg[0]/PRE is the first stage of AMD xpm_cdc_async_rst, not a data synchronizer D. Installed vendor RTL marks ASYNC_REG and asynchronously asserts the stage vector; deassertion shifts on the destination clock (xpm_cdc.sv lines1171,1222,1238,1246-1251). Reported depth is2; combinational reset conditioning before PRE is intentional. No user blanket exception was introduced.

RTL依据：`D:/Tools/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv`；约束依据：`AMD generated clock-converter/FIFO XDC, exported in applied_constraints.xdc`。

## 5 CDC-10 — Inherited AMD AXI clock-converter XPM asynchronous reset

源：`facebox_system_i/reset_hdmi/U0/ACTIVE_LOW_PR_OUT_DFF[0].FDRE_PER_N/C`

目的：`facebox_system_i/axi_ctrl_interconnect/m08_couplers/auto_cc/inst/gen_clock_conv.gen_async_conv.asyncfifo_axi/inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwach2.axi_wach/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst/arststages_ff_reg[0]/PRE`

时钟：`clk_out1_facebox_system_hdmi_video_clk_0_1` → `clk_fpga_0`；报告例外：False Path；深度：2。

Endpoint arststages_ff_reg[0]/PRE is the first stage of AMD xpm_cdc_async_rst, not a data synchronizer D. Installed vendor RTL marks ASYNC_REG and asynchronously asserts the stage vector; deassertion shifts on the destination clock (xpm_cdc.sv lines1171,1222,1238,1246-1251). Reported depth is2; combinational reset conditioning before PRE is intentional. No user blanket exception was introduced.

RTL依据：`D:/Tools/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv`；约束依据：`AMD generated clock-converter/FIFO XDC, exported in applied_constraints.xdc`。

## 6 CDC-10 — Inherited AMD AXI clock-converter XPM asynchronous reset

源：`facebox_system_i/reset_hdmi/U0/ACTIVE_LOW_PR_OUT_DFF[0].FDRE_PER_N/C`

目的：`facebox_system_i/axi_ctrl_interconnect/m08_couplers/auto_cc/inst/gen_clock_conv.gen_async_conv.asyncfifo_axi/inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwdch2.axi_wdch/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst/arststages_ff_reg[0]/PRE`

时钟：`clk_out1_facebox_system_hdmi_video_clk_0_1` → `clk_fpga_0`；报告例外：False Path；深度：2。

Endpoint arststages_ff_reg[0]/PRE is the first stage of AMD xpm_cdc_async_rst, not a data synchronizer D. Installed vendor RTL marks ASYNC_REG and asynchronously asserts the stage vector; deassertion shifts on the destination clock (xpm_cdc.sv lines1171,1222,1238,1246-1251). Reported depth is2; combinational reset conditioning before PRE is intentional. No user blanket exception was introduced.

RTL依据：`D:/Tools/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv`；约束依据：`AMD generated clock-converter/FIFO XDC, exported in applied_constraints.xdc`。

## 7 CDC-10 — Inherited AMD AXI clock-converter XPM asynchronous reset

源：`facebox_system_i/reset_hdmi/U0/ACTIVE_LOW_PR_OUT_DFF[0].FDRE_PER_N/C`

目的：`facebox_system_i/axi_ctrl_interconnect/m08_couplers/auto_cc/inst/gen_clock_conv.gen_async_conv.asyncfifo_axi/inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwrch2.axi_wrch/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rst_rd_reg2_inst/arststages_ff_reg[0]/PRE`

时钟：`clk_out1_facebox_system_hdmi_video_clk_0_1` → `clk_fpga_0`；报告例外：False Path；深度：2。

Endpoint arststages_ff_reg[0]/PRE is the first stage of AMD xpm_cdc_async_rst, not a data synchronizer D. Installed vendor RTL marks ASYNC_REG and asynchronously asserts the stage vector; deassertion shifts on the destination clock (xpm_cdc.sv lines1171,1222,1238,1246-1251). Reported depth is2; combinational reset conditioning before PRE is intentional. No user blanket exception was introduced.

RTL依据：`D:/Tools/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv`；约束依据：`AMD generated clock-converter/FIFO XDC, exported in applied_constraints.xdc`。

## 8 CDC-13 — Inherited AMD VDMA asynchronous FIFO18E1 reset

源：`facebox_system_i/axi_vdma_0/U0/GEN_SPRT_FOR_MM2S.MM2S_LINEBUFFER_I/GEN_LINEBUF_NO_SOF.GEN_LINEBUFFER.GEN_ASYNC_FIFO.LB_BUILT_IN.I_LINEBUFFER_FIFO/fg_builtin_fifo_inst/inst_fifo_gen/gconvfifo.rf/gbi.bi/g7ser_birst.rstbt/rsync.ric.power_on_rd_rst_reg[0]/C`

目的：`facebox_system_i/axi_vdma_0/U0/GEN_SPRT_FOR_MM2S.MM2S_LINEBUFFER_I/GEN_LINEBUF_NO_SOF.GEN_LINEBUFFER.GEN_ASYNC_FIFO.LB_BUILT_IN.I_LINEBUFFER_FIFO/fg_builtin_fifo_inst/inst_fifo_gen/gconvfifo.rf/gbi.bi/v7_bi_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf18e1_inst.sngfifo18e1/RST`

时钟：`clk_out1_facebox_system_hdmi_video_clk_0_1` → `clk_fpga_0`；报告例外：False Path；深度：0。

Non-FD destination is FIFO18E1/RST with EN_SYN=FALSE. Existing fail-closed hook checks exact FIFO type, one RST pin, two reset-release PRE pins, and six power_on_rd_rst registers all INIT=1. This primitive asynchronous reset is not expected to be a two-FF data D. Minimum reset assertion width and live startup-clock behavior remain board acceptance items; they are not established by positive WNS.

RTL依据：`AMD AXI VDMA/FIFO Generator primitive netlist`；约束依据：`PS/pipeline_adaptive/hardware_baseline/vivado/vdma_reset_scope.tcl`。

## 9 CDC-10 — Inherited display mailbox common-reset release

源：`facebox_system_i/reset_hdmi/U0/ACTIVE_LOW_PR_OUT_DFF[0].FDRE_PER_N/C`

目的：`facebox_system_i/tx2_axis_sink_0/inst/u_box_mailbox/src_reset_pipe_reg[0]/CLR`

时钟：`clk_out1_facebox_system_hdmi_video_clk_0_1` → `clk_fpga_0`；报告例外：False Path；深度：2。

combined_reset_n=src_rst_n && dst_rst_n intentionally asserts both two-stage ASYNC_REG reset pipes; each local release is synchronized. The async reset inputs alone are excepted; mailbox functional reset recovery/removal remains timed.

RTL依据：`PS/pipeline_adaptive/hardware_baseline/rtl/control/bbox_mailbox.sv`；约束依据：`PS/pipeline_adaptive/hardware_baseline/vivado/overlay_cdc.tcl`。

## 10 CDC-13 — Inherited AMD VDMA asynchronous FIFO18E1 reset

源：`facebox_system_i/ui_vdma/U0/GEN_SPRT_FOR_MM2S.MM2S_LINEBUFFER_I/GEN_LINEBUF_NO_SOF.GEN_LINEBUFFER.GEN_ASYNC_FIFO.LB_BUILT_IN.I_LINEBUFFER_FIFO/fg_builtin_fifo_inst/inst_fifo_gen/gconvfifo.rf/gbi.bi/g7ser_birst.rstbt/rsync.ric.power_on_rd_rst_reg[0]/C`

目的：`facebox_system_i/ui_vdma/U0/GEN_SPRT_FOR_MM2S.MM2S_LINEBUFFER_I/GEN_LINEBUF_NO_SOF.GEN_LINEBUFFER.GEN_ASYNC_FIFO.LB_BUILT_IN.I_LINEBUFFER_FIFO/fg_builtin_fifo_inst/inst_fifo_gen/gconvfifo.rf/gbi.bi/v7_bi_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf18e1_inst.sngfifo18e1/RST`

时钟：`clk_out1_facebox_system_video_clk_wiz_0` → `clk_fpga_0`；报告例外：False Path；深度：0。

Non-FD destination is FIFO18E1/RST with EN_SYN=FALSE. Existing fail-closed hook checks exact FIFO type, one RST pin, two reset-release PRE pins, and six power_on_rd_rst registers all INIT=1. This primitive asynchronous reset is not expected to be a two-FF data D. Minimum reset assertion width and live startup-clock behavior remain board acceptance items; they are not established by positive WNS.

RTL依据：`AMD AXI VDMA/FIFO Generator primitive netlist`；约束依据：`PS/pipeline_adaptive/hardware_baseline/vivado/vdma_reset_scope.tcl`。

## 11 CDC-10 — Inherited AMD AXI clock-converter XPM asynchronous reset

源：`facebox_system_i/reset_100m/U0/ACTIVE_LOW_PR_OUT_DFF[0].FDRE_PER_N/C`

目的：`facebox_system_i/axi_ctrl_interconnect/m08_couplers/auto_cc/inst/gen_clock_conv.gen_async_conv.asyncfifo_axi/inst_fifo_gen/gaxi_full_lite.gread_ch.grach2.axi_rach/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rst_rd_reg2_inst/arststages_ff_reg[0]/PRE`

时钟：`clk_fpga_0` → `clk_out1_facebox_system_hdmi_video_clk_0_1`；报告例外：False Path；深度：2。

Endpoint arststages_ff_reg[0]/PRE is the first stage of AMD xpm_cdc_async_rst, not a data synchronizer D. Installed vendor RTL marks ASYNC_REG and asynchronously asserts the stage vector; deassertion shifts on the destination clock (xpm_cdc.sv lines1171,1222,1238,1246-1251). Reported depth is2; combinational reset conditioning before PRE is intentional. No user blanket exception was introduced.

RTL依据：`D:/Tools/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv`；约束依据：`AMD generated clock-converter/FIFO XDC, exported in applied_constraints.xdc`。

## 12 CDC-10 — Inherited AMD AXI clock-converter XPM asynchronous reset

源：`facebox_system_i/reset_100m/U0/ACTIVE_LOW_PR_OUT_DFF[0].FDRE_PER_N/C`

目的：`facebox_system_i/axi_ctrl_interconnect/m08_couplers/auto_cc/inst/gen_clock_conv.gen_async_conv.asyncfifo_axi/inst_fifo_gen/gaxi_full_lite.gread_ch.grdch2.axi_rdch/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst/arststages_ff_reg[0]/PRE`

时钟：`clk_fpga_0` → `clk_out1_facebox_system_hdmi_video_clk_0_1`；报告例外：False Path；深度：2。

Endpoint arststages_ff_reg[0]/PRE is the first stage of AMD xpm_cdc_async_rst, not a data synchronizer D. Installed vendor RTL marks ASYNC_REG and asynchronously asserts the stage vector; deassertion shifts on the destination clock (xpm_cdc.sv lines1171,1222,1238,1246-1251). Reported depth is2; combinational reset conditioning before PRE is intentional. No user blanket exception was introduced.

RTL依据：`D:/Tools/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv`；约束依据：`AMD generated clock-converter/FIFO XDC, exported in applied_constraints.xdc`。

## 13 CDC-10 — Inherited AMD AXI clock-converter XPM asynchronous reset

源：`facebox_system_i/reset_100m/U0/ACTIVE_LOW_PR_OUT_DFF[0].FDRE_PER_N/C`

目的：`facebox_system_i/axi_ctrl_interconnect/m08_couplers/auto_cc/inst/gen_clock_conv.gen_async_conv.asyncfifo_axi/inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwach2.axi_wach/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rst_rd_reg2_inst/arststages_ff_reg[0]/PRE`

时钟：`clk_fpga_0` → `clk_out1_facebox_system_hdmi_video_clk_0_1`；报告例外：False Path；深度：2。

Endpoint arststages_ff_reg[0]/PRE is the first stage of AMD xpm_cdc_async_rst, not a data synchronizer D. Installed vendor RTL marks ASYNC_REG and asynchronously asserts the stage vector; deassertion shifts on the destination clock (xpm_cdc.sv lines1171,1222,1238,1246-1251). Reported depth is2; combinational reset conditioning before PRE is intentional. No user blanket exception was introduced.

RTL依据：`D:/Tools/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv`；约束依据：`AMD generated clock-converter/FIFO XDC, exported in applied_constraints.xdc`。

## 14 CDC-10 — Inherited AMD AXI clock-converter XPM asynchronous reset

源：`facebox_system_i/reset_100m/U0/ACTIVE_LOW_PR_OUT_DFF[0].FDRE_PER_N/C`

目的：`facebox_system_i/axi_ctrl_interconnect/m08_couplers/auto_cc/inst/gen_clock_conv.gen_async_conv.asyncfifo_axi/inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwdch2.axi_wdch/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rst_rd_reg2_inst/arststages_ff_reg[0]/PRE`

时钟：`clk_fpga_0` → `clk_out1_facebox_system_hdmi_video_clk_0_1`；报告例外：False Path；深度：2。

Endpoint arststages_ff_reg[0]/PRE is the first stage of AMD xpm_cdc_async_rst, not a data synchronizer D. Installed vendor RTL marks ASYNC_REG and asynchronously asserts the stage vector; deassertion shifts on the destination clock (xpm_cdc.sv lines1171,1222,1238,1246-1251). Reported depth is2; combinational reset conditioning before PRE is intentional. No user blanket exception was introduced.

RTL依据：`D:/Tools/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv`；约束依据：`AMD generated clock-converter/FIFO XDC, exported in applied_constraints.xdc`。

## 15 CDC-10 — Inherited AMD AXI clock-converter XPM asynchronous reset

源：`facebox_system_i/reset_100m/U0/ACTIVE_LOW_PR_OUT_DFF[0].FDRE_PER_N/C`

目的：`facebox_system_i/axi_ctrl_interconnect/m08_couplers/auto_cc/inst/gen_clock_conv.gen_async_conv.asyncfifo_axi/inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwrch2.axi_wrch/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst/arststages_ff_reg[0]/PRE`

时钟：`clk_fpga_0` → `clk_out1_facebox_system_hdmi_video_clk_0_1`；报告例外：False Path；深度：2。

Endpoint arststages_ff_reg[0]/PRE is the first stage of AMD xpm_cdc_async_rst, not a data synchronizer D. Installed vendor RTL marks ASYNC_REG and asynchronously asserts the stage vector; deassertion shifts on the destination clock (xpm_cdc.sv lines1171,1222,1238,1246-1251). Reported depth is2; combinational reset conditioning before PRE is intentional. No user blanket exception was introduced.

RTL依据：`D:/Tools/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv`；约束依据：`AMD generated clock-converter/FIFO XDC, exported in applied_constraints.xdc`。

## 16 CDC-10 — Inherited display mailbox common-reset release

源：`facebox_system_i/reset_100m/U0/ACTIVE_LOW_PR_OUT_DFF[0].FDRE_PER_N/C`

目的：`facebox_system_i/tx2_axis_sink_0/inst/u_box_mailbox/dst_reset_pipe_reg[0]/CLR`

时钟：`clk_fpga_0` → `clk_out1_facebox_system_hdmi_video_clk_0_1`；报告例外：False Path；深度：2。

combined_reset_n=src_rst_n && dst_rst_n intentionally asserts both two-stage ASYNC_REG reset pipes; each local release is synchronized. The async reset inputs alone are excepted; mailbox functional reset recovery/removal remains timed.

RTL依据：`PS/pipeline_adaptive/hardware_baseline/rtl/control/bbox_mailbox.sv`；约束依据：`PS/pipeline_adaptive/hardware_baseline/vivado/overlay_cdc.tcl`。

## 未完成项

WNS/WHS非负不证明全部CDC安全。reset脉宽、真实时钟启动、板上启停恢复仍待实测；camera/SCCB/LCD外部I/O约束仍缺11个input-delay和27个output-delay。未加入任何新clock-group/blanket false-path，真实CDC计数全部保留。