param(
    [ValidateSet('bd','bit','resume')][string]$Stage='bit',
    [string]$BuildName='integrated01',
    [string]$VivadoRoot='D:/Xilinx/Vivado/2018.3'
)
$ErrorActionPreference='Stop'
if($BuildName -notmatch '^[A-Za-z0-9_-]+$'){throw 'BuildName must be a single directory name'}
$taskRoot=[IO.Path]::GetFullPath((Join-Path $PSScriptRoot '..'))
$taskBuild=Join-Path $taskRoot "build/h/$BuildName"
$taskPython=(Get-Command python -ErrorAction Stop).Source
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
try {
    $env:PROCESSOR_ARCHITECTURE='AMD64'
    $env:INTEGRATED_PYTHON=$taskPython
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
} finally {
    $env:PROCESSOR_ARCHITECTURE=$taskArch
    $env:INTEGRATED_PYTHON=$taskPriorPython
}
