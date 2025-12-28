chcp 65001
@echo off
REM 提取文件的各种信息
FOR /F "delims=" %%i IN ('dir /s /b *.bat') DO (
    echo 文件完整路径: %%~fi
    echo 驱动器号: %%~di
    echo 路径: %%~pi
    echo 文件名: %%~ni
    echo 扩展名: %%~xi
    echo 文件大小: %%~zi字节
    echo 修改时间: %%~ti
    echo.
)
pause