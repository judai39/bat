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


@REM for /f 读取文件中的文本内容
(
echo 这是，第、一行。
echo 这是，第、二行。
echo 这是，第、三行。
)>"readme.txt"
for /f %%i in (readme.txt) do echo %%i&pause
::delims切分字符串(delims=，提取所有第一段，的之前的所有字符)
for /f "delims=，" %%i in (readme.txt) do echo %%i
::delims切分字符串(delims=、。提取所有第一段、字符开始到。的之前的字符)
for /f "delims=、。" %%i in (readme.txt) do echo %%i

del readme.txt