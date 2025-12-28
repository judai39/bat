@echo off
echo ================================
echo   批量文件重命名工具
echo ================================
echo.

REM 显示当前目录文件信息
echo 当前目录文件列表：
FOR /F "delims=" %%i IN ('dir /b *.txt') DO (
    echo  原始: %%i
    echo  新名: %%~ni_备份%%~xi
)

echo.
set /p confirm=是否开始重命名？(Y/N):
if /i "%confirm%"=="Y" (
    FOR /F "delims=" %%i IN ('dir /b *.txt') DO (
        ren "%%i" "%%~ni_备份%%~xi"
        echo 已重命名: %%i -> %%~ni_备份%%~xi
    )
    echo 重命名完成！
) else (
    echo 操作已取消。
)
