# 连续登录日志

本工具对应 Experiments/E01 至 E07 的 journal 测量固件，不适用于未集成 journal 的最终休眠固件。保留板端 128 条日志，主机读取不要求每次停在结果页；软件不写入板端身份库。

先重建公开版 PS，加载该 ELF 及对应 ready 硬件文件，确认板卡正常，再在包根目录运行：

```powershell
$env:FPGA_SDK_ROOT='D:/Tools/Xilinx/SDK/2018.3'
python tools/measurement/journal_capture.py --experiment E04 --elf Experiments/E04/build/public01/arm/firmware.elf --group known --target 10 --run-kind measurement --output runs/E04_known01
```

陌生人组改为 `--group unknown` 并使用新的输出目录。必须传入当前板上实际运行的 ELF；重新编译后不能拿旧 ELF 解析新地址。中断恢复使用相同参数并添加 `--resume`。不要同时运行多个 JTAG 记录程序。SDK 路径通过环境变量配置；未设置时使用示例默认路径。

记录人名或 UNKNOWN 的终态；质量不足与未检出不能混入所要求的有效登录时延。正确率以操作者记录的真实人员和实际显示结果为准。此包未执行新的实板测量。
