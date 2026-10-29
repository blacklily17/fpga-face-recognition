# 构建与工程打开

## 环境

Windows x64，Vivado 2018.3 + Xilinx SDK 2018.3，Python 3.8 或更新版本（硬件/PS 构建只使用标准库）。目标器件为 xc7z020clg484-2。训练代码另需 PyTorch、NumPy 等依赖；训练不属于固件重建的前置条件。

请解压到短 ASCII 路径，例如 `D:/FPGA_Face_Recognition`，避免中文、空格、括号和过长路径。工具路径均可用参数指定。不要在原开发仓库的局部复制文件上运行；需解压整个包。

## 打开最终版工程

Vivado -> Open Project -> `Final_E04_Sleep/project/facebox/facebox.xpr`。该工程包含本地导入的依赖，不需要原开发者目录。不要勾选将源文件更新为旧 ImportPath 的选项。归档工程与 `hardware/` 是同一硬件版本的两份入口：前者供 GUI 查看，后者供 Tcl 从零重建。后续修改源代码时应重新生成工程，避免两份输入不同步。

## 从零重建

在包根目录打开 PowerShell，下面的工具路径改为实际安装位置：

```powershell
$py = 'C:/Python38/python.exe'
$sdk = 'D:/Tools/Xilinx/SDK/2018.3'
$vivado = 'D:/Tools/Xilinx/Vivado/2018.3'
& $py ./tools/verify_package.py

# 仅重建 PS：从随包 HDF 新建 BSP，再编译对应源码，不使用旧 BSP 二进制。
& ./Final_E04_Sleep/build.ps1 -Stage software -Name ps01 -Python $py -SdkRoot $sdk -VivadoRoot $vivado

# 仅生成硬件工程并检查 BD 连线/地址，不运行综合/布局布线。
& ./Final_E04_Sleep/build.ps1 -Stage project -Name bd01 -Python $py -SdkRoot $sdk -VivadoRoot $vivado

# 完整重建：生成硬件、综合、布局布线、bit/HDF，再从新 HDF 编译 PS。
& ./Final_E04_Sleep/build.ps1 -Stage all -Name full01 -Python $py -SdkRoot $sdk -VivadoRoot $vivado

# 对比配置完全同样的入口，例：E07。
& ./Experiments/E07/build.ps1 -Stage all -Name full01 -Python $py -SdkRoot $sdk -VivadoRoot $vivado
```

每次使用新的 Name。脚本拒绝覆盖已有工作目录，失败日志留存供定位。

输出路径（相对于所选版本目录）：

- PS：`build/<Name>/arm/firmware.elf`、`firmware.map`。
- BSP/SDK 工作区：`build/<Name>/sdk/`；可从 SDK 查看/导入生成的硬件和 BSP 项目。应用 C 源码在 `software/src/`，编译选项与参与编译文件以 `config.json` 为准。
- 硬件工程：`hardware/build/h/<Name>/vivado/facebox/facebox.xpr`。
- bit：该工程目录下 `facebox.runs/impl_1/facebox_system_wrapper.bit`。
- 新 HDF：`hardware/build/h/<Name>/export/facebox/joint.hdf`。
- 日志和本次源码哈希：`build/<Name>/`。

`-Stage hardware` 只完成硬件；如要分开从这个新 HDF 构建 PS，可用 `-Stage software -Hdf <新HDF绝对路径>`。新硬件必须使用其配套 PS 初始化脚本；可从 SDK 导入的新硬件平台获取 `ps7_init.tcl`。不要混用不同配置的初始化脚本。

`software/baseline_src/` 是同样移除了内置模板的原始对比版本备查源码，默认构建使用 `software/src/` 中的测量版，不将两套文件一起编译。计时版保留登录日志和运行标识；完整源码均已包含，历史 instrumentation 补丁不随公开版发布。最终 E04 休眠版使用其独立最终源码。

## E04 硬件入口修正

原 E04 包随附的硬件重建入口误启用了身份 CNN 的 PL 模块，但其已实测 bit/HDF 与 E01 完全相同。本包 E04 硬件输入因此使用对应的 E01 源码；PS 仍执行 E04 身份 CNN。该对应关系已在竞赛交付阶段通过 HDF 和 bit 哈希校验。E05 保留身份 CNN PL 加速硬件，不受此修正影响。

## 训练来源

身份 CNN 的网络、训练/INT8 导出脚本及训练统计保存在各 CNN 识别版本的 models 目录。检测 CNN R9 训练源码和导出模型在 `Models/Detector_R9/`，实际历史参数见 training_settings.json；source_snapshot 中的默认配置不等于历史命令行覆盖后的参数。训练所用原始数据及先前迁移学习检查点未全部包含，因此本包验证的是冻结权重的部署重建，不承诺重新训练得到逐字节相同的模型。PS 推理实际使用 software/src 中随版本冻结的权重头文件。

## 公开版运行前准备

ready 中不含 ELF。仅重建 PS 时，使用原配套 bit/HDF/init 加载 `build/<Name>/arm/firmware.elf`；完整重建时使用本次生成的成套文件。首次使用需自己注册人员。

## Windows Git 克隆

工程含较长的 IP 文件名，建议使用短目录并启用此仓库的长路径支持：

```powershell
git clone -c core.longpaths=true https://github.com/blacklily17/fpga-face-recognition.git D:/fpga-face-recognition
```
