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
rem IF EXIST "A:\masm32\bin\ml.exe" (set masmpath=A:\masm32)

rem top left zoomlevel xstart xend, ystart yend
cscript %filepath%\GenerateMapCutUpScript.vbs 20 950770 950808 645254 645282

pause


