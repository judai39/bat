
echo off
@REM call调用其他bat批命令
@REM 注意! 调用文件的名称中含有空格,会让文件识别出现错误(例如本例中错误识别成了1.2),可以使用"$file_name"
call "$1.2 alt.bat"
echo 调用完成