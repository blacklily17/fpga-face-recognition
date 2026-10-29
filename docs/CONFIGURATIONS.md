# 配置对应表

|目录|检测|身份识别|说明|
|---|---|---|---|
|Final_E04_Sleep|Haar / PS|CNN / PS|最终方案，增加休眠和自动唤醒|
|Experiments/E01|Haar / PS|LBP，PL 特征与距离|基线测量版|
|Experiments/E02|CNN / PS|LBP，PL 特征与距离|PS 检测网络；硬件保留未调用的检测加速模块|
|Experiments/E03|CNN / PL 核心计算|LBP，PL 特征与距离|检测 CNN 加速|
|Experiments/E04|Haar / PS|CNN / PS|对比测量版，不含最终休眠集成|
|Experiments/E05|Haar / PS|CNN / PL 卷积|池化、全连接和身份判决仍在 PS|
|Experiments/E06|CNN / PL 核心计算|CNN / PS|双 CNN 混合部署|
|Experiments/E07|CNN / PL 核心计算|CNN / PL 卷积|双 CNN 加速对比|

所有版本均保留各自模型、裁剪、质量筛选和判决实现。E01/E04 已验证 bit/HDF 相同；E02/E03/E06 的共用硬件关系以各组 ready 文件哈希及 HWH 为准，不按名称推断静态资源变化。最终版资源以 Final_E04_Sleep 实现报告为准。

登录日志记录的是原生登录开始至最终身份判决的耗时；最终为人名或 UNKNOWN 的会话用于对应时延统计，不能将质量不足/未检出结果混入。正确率仍以真实人员和现场判决记录为准。打包不生成新测量结果。
