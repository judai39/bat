chcp 65001
@REM  %+%+~+fi 完整路径拓展

@REM 显示文件完整路径
for /f "delims==" %%i in ('dir /b /s') do @echo %%~fi
pause

@REM 对比，不显示完整路径
for /f "delims==" %%i in ('dir /b /s') do @echo %%i
