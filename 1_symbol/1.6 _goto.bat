chcp 65001
@echo off

:TestG
echo "这是TestG片段"
pause
:TestT
echo "这是TestT片段"
@REM goto语句会将命令回到目标:标记位置,容易造成死循环()
goto TestG

::  "::"也可做为注释符号使用
