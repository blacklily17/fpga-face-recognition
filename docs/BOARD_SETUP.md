# 板卡与最终版使用

AC880 / Zynq-7020，OV5640 DVP 摄像头，HDMI 显示器，TFT 电容触摸屏和 SD 卡。接线与电压请以现有已验证板卡连接及硬件约束为准。

最终版配套硬件在 Final_E04_Sleep/ready：e04_sleep_v1.bit、e04_sleep_v1.hdf 和 ps7_init.tcl。公开版不提供旧 ELF，请先用该 HDF 编译 PS，得到 build/<Name>/arm/firmware.elf，再与上述硬件整组使用。运行标识 AC880-E04-SLEEP-V1-20261023。新增休眠控制寄存器 0x41290000，因此不得把该 ELF 与无休眠 E04 的 bit/HDF 混用。

使用 SDK 2018.3 导入对应 HDF 并连接 JTAG，通过 Program FPGA 加载配套 bit，再配置 Cortex-A9 standalone 应用运行 ELF，启用该硬件平台的 PS 初始化。临时 JTAG 下载会重置当前程序，断电不保留；本包不提供未经测试的 Flash 启动镜像。

系统通过界面注册人员并保存身份库。CNN 版本使用 face_cnn.db，LBP 版本使用 face.db；不要把 LBP 模板转换或直接复制成 CNN 模板。不同 CNN 版本的 PS/PL 模板银行也应按其原生注册流程建立。交付包未导出现场 SD 数据。

最终休眠版在首页持续约 10 秒无人脸、无运动、无触摸且无业务事务时进入监视状态；相机目标由约 30 fps 降至约 5 fps，HDMI 显示静态休眠提示，TFT 和触摸保留。运动或触摸唤醒，待新帧稳定后恢复预览和识别。该功能在原竞赛版已完成上板测试，公开版尚需重新上板验收；未据此声称已测得功耗降低百分比。
