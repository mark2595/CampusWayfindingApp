@echo off
set filepath=%cd%
rem cd ../../
echo %filepath%
echo %cd%
mkdir "17"
mkdir "18"
mkdir "19"
mkdir "20"
mkdir "21"
mkdir "22"
mkdir "23"
mkdir "24"
mkdir "25"
mkdir "26"
mkdir "27"
mkdir "28"

rem top left zoomlevel xstart xend, ystart yend
cscript.exe "%filepath%\GenerateMapCutUpScript.vbs" 17 118846 118850 80657 80659
cscript.exe "%filepath%\GenerateMapCutUpScript.vbs" 18 237693 237700 161314 161318
cscript.exe "%filepath%\GenerateMapCutUpScript.vbs" 19 475387 475402 322628 322637
cscript.exe "%filepath%\GenerateMapCutUpScript.vbs" 20 950770 950808 645254 645282


cscript.exe "%filepath%\GenerateMapCutUpScript.vbs" 25 30424856 30424877 20648392 20648402
pause


