chcp 65001

@REM  %+%+~+i删除变量值中的引号

@REM 创建测试文件
echo ^"1111>temp.txt
echo "2222">>temp.txt
echo 3333^">>temp.txt
echo "4444"44>>temp.txt
echo ^"55"55"55>>temp.txt

@REM 读取文件并处理引号
for /f "delims=" %%i in (temp.txt) do echo  %%~i
@REM 删除规则:“无头不删，有头连尾删”
pause
del temp.txt