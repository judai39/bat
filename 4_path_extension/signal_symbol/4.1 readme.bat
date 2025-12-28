@echo off
chcp 65001

@REM 遍历当前目录及所有子目录的文件
for /r %%i in (*) do (
    @REM 显示文件的完整路径
    echo "%%~fi"
    @REM 显示文件名(不含拓展名)
    echo %%~ni
    @REM 重命名文件,删除拓展名
    @REM ren "%%~fi" %%~ni
)

@REM 暂停并退出
Pause & Exit