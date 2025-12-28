chcp 65001

@REM %+~+ni 仅提取文件名(不含拓展名)

for /f "delims==" %%i in ('dir /b /s') do @echo %%~ni