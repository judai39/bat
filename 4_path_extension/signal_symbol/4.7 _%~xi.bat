chcp 65001

@REM %+~+xi 提取文件拓展名

for /f "delims==" %%i in ('dir /b') do @echo %%~xi