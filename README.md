# 基于 Zynq 的人脸识别系统

面向 AC880（Zynq-7020）开发板的嵌入式人脸识别项目，提供最终 E04 休眠版，以及 E01～E07 七组对比配置的 PL/PS 源码、冻结推理权重和重建脚本。

最终方案采用 **Haar 人脸检测 + PS 身份 CNN**。FPGA 的 PL 承担摄像头接口、图像预处理、缓存、数据搬运及显示通路；PS 负责检测、身份特征计算、开放集判决、交互与休眠策略。系统采用图像预取与识别计算重叠机制，并支持空闲监视、运动和触摸唤醒。

## 功能

- OV5640 图像采集、HDMI 实时预览与人脸框叠加。
- TFT 触摸登录、板端注册、用户管理及 SD 身份库保存/加载。
- 身份模板匹配、多帧判决与陌生人拒识。
- 最终版的休眠监视与自动唤醒；未将 Vivado 功耗估算表述为实测节能效果。
- 七组算法/部署配置及板端登录总时延日志，供比较软件推理与 PL 加速路径。

## 七组配置与最终版本

|配置|检测|识别|定位|
|---|---|---|---|
|E01|Haar / PS|LBP / PL 特征与距离计算|传统算法基线|
|E02|CNN / PS|LBP / PL|替换检测算法|
|E03|CNN / PL 核心计算|LBP / PL|检测 CNN 加速|
|E04|Haar / PS|CNN / PS|最终方案的对比测量版本|
|E05|Haar / PS|CNN / PL 卷积|身份 CNN 加速对比|
|E06|CNN / PL 核心计算|CNN / PS|双 CNN 混合部署|
|E07|CNN / PL 核心计算|CNN / PL 卷积|双 CNN 加速对比|
|Final_E04_Sleep|Haar / PS|CNN / PS|最终演示版，集成休眠与唤醒|

身份 CNN 的 PL 版本只加速卷积等对应核内运算，池化、全连接及身份判决仍由 PS 执行。E07 保留为对比方案，不是最终演示配置。

## 目录导航

|路径|内容|
|---|---|
|[Final_E04_Sleep](Final_E04_Sleep)|最终版硬件、PS 源码和可打开的 Vivado 工程|
|[Experiments](Experiments)|E01～E07 可重建硬件及完整 PS 源码|
|[Models/Detector_R9](Models/Detector_R9)|检测网络训练源码、导出模型与训练参数|
|各 CNN 版本的 `models/`|身份网络训练、INT8 导出脚本及训练统计|
|[tools](tools)|统一重建、BSP 生成、完整性检查及测量工具|
|[docs/BUILD.md](docs/BUILD.md)|环境、打开工程及重建步骤|
|[docs/BOARD_SETUP.md](docs/BOARD_SETUP.md)|硬件使用、注册与休眠说明|
|[docs/PUBLIC_RELEASE.md](docs/PUBLIC_RELEASE.md)|与竞赛交付包的差别及公开范围|
|[docs/VALIDATION.md](docs/VALIDATION.md)|本公开版本的实际验证范围|

## 快速开始

使用 Windows x64、Vivado 2018.3、Xilinx SDK 2018.3 和 Python 3.8+。将仓库放在短 ASCII 路径（例如 `D:/fpga-face-recognition`）。

```powershell
# 在仓库根目录执行；按本机安装位置调整工具路径。
python tools/verify_package.py
powershell -ExecutionPolicy Bypass -File Final_E04_Sleep/build.ps1 -Stage software -Name public01 -Python C:/Python38/python.exe -SdkRoot D:/Tools/Xilinx/SDK/2018.3 -VivadoRoot D:/Tools/Xilinx/Vivado/2018.3
```

最终版工程可从 `Final_E04_Sleep/project/facebox/facebox.xpr` 打开。需要完整重新综合和布局布线时，将构建阶段改为 `-Stage all`，并指定一个新的 `-Name`。其他配置使用各自的 `build.ps1`。

## 注册与验证口径

**公开版不提供任何人的注册照片、身份特征库或旧 ELF。** LBP 历史内置模板已移除；请通过系统界面注册，或加载自己授权的 SD 身份库。模型推理权重、识别阈值和硬件实现保留原配置。

原最终工程与七组对比版本已完成比赛前上板测试。公开版的离线验证不等于重新完成实板测试；论文/报告中的准确率与时延来自原现场实验，不能直接当作重新注册后的保证值。详细边界见验证说明。

## 第三方内容

保留源文件的版权与来源声明。Xilinx IP 和运行库适用其原许可，使用者需安装相应工具。仓库公开可见不等于全部内容已获统一开源许可；团队代码的统一授权协议尚未指定，详见 [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md)。
