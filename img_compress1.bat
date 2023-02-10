@ECHO OFF

ECHO Compressing files in folder
mkdir compressed
for %%F in (*.png) do (
    magick "%%~fF" -quality 50 -define webp:lossless=true,filter-type=1  "\compressed\${f%.png}.webp"
)
PAUSE