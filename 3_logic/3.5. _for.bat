@echo off
@REM 开启变量延迟(不开启的话,相当于在每次循环到一个新文件都重新生成一个v,不会被记录)
setlocal enabledelayedexpansion
set /a v=0
for %%i in ('C:/Users/judai/Desktop/bat') do (
echo %%i
echo -------!v!------
set /a v+=1
)
pause