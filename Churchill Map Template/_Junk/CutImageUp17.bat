@echo off
set filepath=%cd%
mkdir "17"
mkdir "17\118846"
mkdir "17\118847"
mkdir "17\118848"
mkdir "17\118849"
mkdir "17\118850"
convert -extract 256x256+0+0 17.png 80657.png
move 80657.png 17\118846\80657.png
convert -extract 256x256+256+0 17.png 80657.png
move 80657.png 17\118847\80657.png
convert -extract 256x256+512+0 17.png 80657.png
move 80657.png 17\118848\80657.png
convert -extract 256x256+768+0 17.png 80657.png
move 80657.png 17\118849\80657.png
convert -extract 256x256+1024+0 17.png 80657.png
move 80657.png 17\118850\80657.png

convert -extract 256x256+0+256 17.png 80658.png
move 80658.png 17\118846\80658.png
convert -extract 256x256+256+256 17.png 80658.png
move 80658.png 17\118847\80658.png
convert -extract 256x256+512+256 17.png 80658.png
move 80658.png 17\118848\80658.png
convert -extract 256x256+768+256 17.png 80658.png
move 80658.png 17\118849\80658.png
convert -extract 256x256+1024+256 17.png 80658.png
move 80658.png 17\118850\80658.png

convert -extract 256x256+0+512 17.png 80659.png
move 80659.png 17\118846\80659.png
convert -extract 256x256+256+512 17.png 80659.png
move 80659.png 17\118847\80659.png
convert -extract 256x256+512+512 17.png 80659.png
move 80659.png 17\118848\80659.png
convert -extract 256x256+768+512 17.png 80659.png
move 80659.png 17\118849\80659.png
convert -extract 256x256+1024+512 17.png 80659.png
move 80659.png 17\118850\80659.png

cd ../../
echo %filepath%
echo %cd%
pause
