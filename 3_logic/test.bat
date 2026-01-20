@REM @echo off
setlocal enabledelayedexpansion

cd "3_logic"
echo "this is file">"tes#t.txt"
for /f "delims=" %%i in ('dir /b *') do (
set filename=%%~nxi
set newfilename=!filename:#=-!
ren %%~dpfxi !newfilename!
)

pause
del "tes-t.txt"