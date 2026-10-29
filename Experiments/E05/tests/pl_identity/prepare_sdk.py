from pathlib import Path
root=Path(__file__).resolve().parents[1]/'PS/pipeline_adaptive/release_fixed'
p=root/'scripts/build_cnn.ps1';s=p.read_text()
s=s.replace("[switch]$UsePlAccel", "[switch]$UsePlAccel,\n    [string]$BspRoot = '',\n    [string]$ArtifactRoot = ''")
s=s.replace('$out="$root/build/$OutputName"', '$bsp=if($BspRoot){$BspRoot.Replace("\\","/")}else{"$root/dependencies"}\n$artifacts=if($ArtifactRoot){$ArtifactRoot.Replace("\\","/")}else{"$root/ready"}\nforeach($required in @("$bsp/include/xparameters.h","$bsp/lib/libxil.a")){if(!(Test-Path -LiteralPath $required)){throw "Missing BSP input: $required"}}\n$out=if($ArtifactRoot){"$artifacts/objects"}else{"$root/build/$OutputName"}')
s=s.replace('"$root/ready" | Out-Null','"$artifacts" | Out-Null')
s=s.replace('"-I$root/dependencies/include"','"-I$bsp/include" "-I$root/dependencies/include"')
s=s.replace('$elf="$root/ready/$OutputName.elf"','$elf="$artifacts/$OutputName.elf"').replace('$map="$root/ready/$OutputName.map"','$map="$artifacts/$OutputName.map"')
s=s.replace('"-L$root/dependencies/lib"','"-L$bsp/lib"')
p.write_text(s)
p=root/'dependencies/include/xparameters_cnn_pl.h';p.write_text('''/* E05: require addresses emitted by the matching regenerated BSP. */
#ifndef XPARAMETERS_CNN_PL_H
#define XPARAMETERS_CNN_PL_H
#include "xparameters.h"
#if !defined(XPAR_CNN_DMA_BASEADDR) || !defined(XPAR_CNN_CONTROL_BASEADDR)
#error Matching E05 CNN hardware BSP is required
#endif
#if XPAR_CNN_DMA_BASEADDR != 0x40420000U || XPAR_CNN_CONTROL_BASEADDR != 0x41270000U
#error E05 CNN BSP address contract changed
#endif
#endif
''')
