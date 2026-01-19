@echo off
chcp 65001

@REM for /f 读取文件中的文本内容
(
echo 这是，第、一行。
echo 这是，第、二行。
echo 这是，第、三行。
)>"readme.txt"
::可以发现for循环倾向于将单个的每一行进行输出
for /f %%i in (readme.txt) do echo %%i&pause


@REM 如果我希望输出每一行中特定的某一段怎么办呢?    -->使用delims和tokens
::delims切分字符串(delims=，提取所有第一段，的之前的所有字符)
for /f "delims=，" %%i in (readme.txt) do echo %%i
::delims切分字符串(delims=、。提取所有第一段、字符开始到。的之前的字符)
for /f "delims=、。" %%i in (readme.txt) do echo %%i

@REM delims可以快速返回第一段中的某一部分的内容,但是如果需要返回第二段,第三段....怎么办呢? -->tokens
(
echo 这是 第 一行。
echo 这是 第 二行。
echo 这是 第 三行。
)>"readme2.txt"
::返回并输出第二段
for /f "tokens=2 delims= " %%i in (readme2.txt) do echo %%i
::返回并输出第二,三段(注意echo %%j)
for /f "tokens=2,3 delims= " %%i in (readme2.txt) do echo %%i %%j
::返回并输出所有
for /f "tokens=* delims= " %%i in (readme2.txt) do echo %%i
::返回并输出第二段及之后所有段
for /f "tokens=2,* delims= " %%i in (readme2.txt) do echo %%i %%j
pause
del readme.txt
del readme2.txt