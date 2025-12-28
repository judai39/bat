@REM 指定编码格式为utf-8,不会中文乱码
chcp 65001

@REM echo off后的命令均不会显示原始命令
echo off 

@REM .输出空行,相当于回车(可以用，：；”／]＋\这些符号替代)
echo.

@REM echo.^回车,输出下一列的字符
echo.^
echo hello 这是中文<nul

@REM <nul换行符
echo world
