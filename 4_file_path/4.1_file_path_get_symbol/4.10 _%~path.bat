chcp 65001

@REM %+~+$+path:i 在path环境变量中搜索文件
for /f "delims==" %%i in ('notepad.exe') do @echo %%~$path:i
pause
