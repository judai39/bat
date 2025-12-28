chcp 65001

@REM %+~+pi仅提取路径名(不包含驱动器名和文件名)

for /f "delims==" %%i in ('dir /b') do @echo %%~pi