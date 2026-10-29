param(
    [ValidateSet('bd','bit','resume')][string]$Stage='bit',
    [string]$BuildName='integrated01',
    [string]$VivadoRoot='D:/Tools/Xilinx/Vivado/2018.3',
    [string]$Python='',
    [string]$BuildRoot=''
)
$ErrorActionPreference='Stop'
if($BuildName -notmatch '^[A-Za-z0-9_-]+$'){throw 'BuildName must be a single directory name'}
$taskRoot=[IO.Path]::GetFullPath((Join-Path $PSScriptRoot '..'))
$repoRoot=[IO.Path]::GetFullPath((Join-Path $taskRoot '../../..'))
if(!$BuildRoot){$BuildRoot=Join-Path $taskRoot 'build/h'}
$BuildRoot=[IO.Path]::GetFullPath($BuildRoot)
$allowedShort=[IO.Path]::GetFullPath((Join-Path $repoRoot '_c3_build'))
$allowedLocal=[IO.Path]::GetFullPath((Join-Path $taskRoot 'build/h'))
if($BuildRoot -ne $allowedShort -and $BuildRoot -ne $allowedLocal){throw 'BUILD_ROOT_OUTSIDE_C3_WORKSPACE'}
$taskBuild=Join-Path $BuildRoot $BuildName
if(!$Python){$Python=Join-Path $repoRoot '.venv/Scripts/python.exe'}
if(!(Test-Path -LiteralPath $Python -PathType Leaf)){throw 'PYTHON_NOT_FOUND'}
$taskPython=[IO.Path]::GetFullPath($Python)
$taskCheck=Join-Path $PSScriptRoot 'check_integrated_hardware.py'
$taskLock=Join-Path $taskBuild 'sources_before_tools.json'
New-Item -ItemType Directory -Force -Path $taskBuild | Out-Null
if($Stage -eq 'resume'){
    & $taskPython -B $taskCheck check $taskRoot --receipt $taskLock
} else {
    if(Test-Path (Join-Path $taskBuild 'vivado/facebox/facebox.xpr')){throw 'Existing hardware project: use resume'}
    & $taskPython -B $taskCheck capture $taskRoot --receipt $taskLock
}
if($LASTEXITCODE){throw 'Pre-tool source receipt/check failed'}
$taskArch=$env:PROCESSOR_ARCHITECTURE
$taskPriorPython=$env:INTEGRATED_PYTHON
$taskPriorBuildRoot=$env:INTEGRATED_BUILD_ROOT
try {
    $env:PROCESSOR_ARCHITECTURE='AMD64'
    $env:INTEGRATED_PYTHON=$taskPython
    $env:INTEGRATED_BUILD_ROOT=$BuildRoot
    Push-Location $taskBuild
    try {
        $taskLog=Join-Path $taskBuild ("build_${Stage}_"+[DateTime]::UtcNow.ToString('yyyyMMdd_HHmmss')+'.log')
        Write-Output "INTEGRATED_BUILD=$taskBuild LOG=$taskLog"
        $ErrorActionPreference='Continue'
        & (Join-Path $VivadoRoot 'bin/vivado.bat') -mode batch -nolog -nojournal -source (Join-Path $PSScriptRoot 'build_integrated_hardware.tcl') -tclargs $Stage $taskBuild *> $taskLog
        $taskRc=$LASTEXITCODE
        $ErrorActionPreference='Stop'
        Get-Content -LiteralPath $taskLog -Tail 30
    } finally {Pop-Location}
    & $taskPython -B $taskCheck check $taskRoot --receipt $taskLock
    if($LASTEXITCODE){throw 'Sources changed during hardware tools'}
    if($taskRc){throw "Vivado failed exit=$taskRc; preserved build at $taskBuild"}
    [string]$taskText=Get-Content -LiteralPath $taskLog -Raw
    $taskMarker=if($Stage -eq 'bd'){'(?m)^INTEGRATED_BD_PASS offline_only=1\s*$'}else{'(?m)^INTEGRATED_HARDWARE_PASS offline_only=1 setup='}
    if($taskText -notmatch $taskMarker -or $taskText -match '(?im)^\s*(ERROR:|Fatal:)'){throw 'HARDWARE_VERDICT_MISSING_OR_FAILED'}
} finally {
    $env:PROCESSOR_ARCHITECTURE=$taskArch
    $env:INTEGRATED_PYTHON=$taskPriorPython
    $env:INTEGRATED_BUILD_ROOT=$taskPriorBuildRoot
}
