chcp 65001

@REM %+~+ai 显示文件属性
for /f "delims==" %%i in ('dir /b') do @echo %%~ai
pause


@REM %+~+a=ti 显示文件修改日期
for /f "delims==" %%i in ('dir /b') do @echo %%~ti
pause

@REM %+~+zi 显示文件大小
for /f "delims==" %%i in ('dir /b') do @echo %%~zi
pause
