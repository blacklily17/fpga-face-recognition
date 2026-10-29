param(
 [string]$Python='D:/miniconda/envs/MindSpore/python.exe',
 [string]$VivadoRoot='D:/Tools/Xilinx/Vivado/2018.3',
 [string]$HostGcc=(Join-Path $PSScriptRoot "../../../.tools/w64devkit-2.10.1/w64devkit/bin/gcc.exe"),
 [string]$Rtl=(Join-Path $PSScriptRoot '../PS/pipeline_adaptive/hardware_baseline/rtl/axis_cnn_conv3x3.sv')
)
$ErrorActionPreference='Stop'
$env:PROCESSOR_ARCHITECTURE='AMD64'
Push-Location $PSScriptRoot
try {
 & $Python generate_network_vectors.py *> generate_vectors.log
 if($LASTEXITCODE){throw 'Golden vector generation failed'}
 $bytes=([regex]::Match((Get-Content -Raw counts.vh),'BYTES=(\d+)')).Groups[1].Value
 & "$VivadoRoot/bin/xvlog.bat" -sv -i . $Rtl tb_dma_packet.sv tb_dma_errors.sv ../PS/pipeline_adaptive/hardware_baseline/tb/tb_axis_cnn_conv3x3.sv *> compile.log
 if($LASTEXITCODE){throw 'RTL compile failed'}
 foreach($test in @(@('tb_dma_packet','network',"CONTIGUOUS_DMA_GOLDEN_PASS bytes=$bytes"),@('tb_dma_errors','errors','DMA_ERROR_RESET_PASS cases=8'),@('tb_axis_cnn_conv3x3','legacy','AXIS_CNN_CONV3X3_PASS bytes=9'))){
  & "$VivadoRoot/bin/xelab.bat" $test[0] -s "strict_$($test[1])" -mt 2 *> "elaborate_$($test[1]).log"
  if($LASTEXITCODE){throw "Elaboration failed: $($test[0])"}
  & "$VivadoRoot/bin/xsim.bat" "strict_$($test[1])" -runall *> "strict_$($test[1]).log"
  if($LASTEXITCODE){throw "Simulation failed: $($test[0])"}
  $text=Get-Content -Raw "strict_$($test[1]).log"
  if($text -match '(?m)^Fatal:|^ERROR:' -or !$text.Contains($test[2])){throw "Simulation gate failed: $($test[0]); see strict_$($test[1]).log"}
 }
 $src=Join-Path $PSScriptRoot '../PS/pipeline_adaptive/release_fixed/software/src'
 & $HostGcc -std=c99 -O2 -Wall -Wextra -Werror -I $src replay_harness.c "$src/tinyface_cnn.c" "$src/haar_resize.c" -lm -o replay_harness.exe *> replay_compile.log
 if($LASTEXITCODE){throw 'RTL replay harness compile failed'}
 & ./replay_harness.exe *> replay.log
 if($LASTEXITCODE -or !(Get-Content -Raw replay.log).Contains('RTL_REPLAY_FULL_FEATURE_PASS dimensions=32')){throw 'RTL replay full feature gate failed'}
 "E05_STRICT_KERNEL_GATE_PASS network_bytes=$bytes error_cases=8 legacy_bytes=9 full_feature_dimensions=32"
} finally {Pop-Location}
