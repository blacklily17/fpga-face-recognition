param(
 [ValidateSet('software','project','hardware','all')][string]$Stage='software',
 [string]$Name='rebuild01',
 [string]$Python='python',
 [string]$SdkRoot='D:/Tools/Xilinx/SDK/2018.3',
 [string]$VivadoRoot='D:/Tools/Xilinx/Vivado/2018.3',
 [string]$Hdf=''
)
$ErrorActionPreference='Stop'
$argsList=@('--root',$PSScriptRoot,'--stage',$Stage,'--name',$Name,'--sdk',$SdkRoot,'--vivado',$VivadoRoot)
if($Hdf){$argsList+=@('--hdf',$Hdf)}
& $Python (Join-Path $PSScriptRoot '../tools/build.py') @argsList
if($LASTEXITCODE){throw 'Build failed. Inspect the retained build logs.'}
