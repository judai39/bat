@echo off
chcp 65001

@REM 基础用法
::输出hello 换行 world 换行 hello（因为hello,world hello被当成三个片段被执行）
for %%i in (hello,world hello) do echo %%i


@REM 进阶用法
@REM 想知道当前目录下都有哪些文件吗？请用下面的代码：
for %%i in (*.*) do echo "%%i"
@REM 想列出当前目录下所有的文本文件吗？请用下面的代码：
for %%i in (*.txt) do echo "%%i"
@REM 想列出只用两个字符作为文件名的文本文件吗？请用下面的代码：
for %%i in (??.txt) do echo "%%i"