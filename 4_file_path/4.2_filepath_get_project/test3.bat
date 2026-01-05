@echo off
REM 路径分析函数
:AnalyzePath
    echo 输入文件路径:
    set /p filepath=
    
    REM 使用FOR循环处理路径
    for %%F in ("%filepath%") do (
        echo 驱动器: %%~dF
        echo 路径: %%~pF
        echo 文件名: %%~nF
        echo 扩展名: %%~xF
        echo 完整路径: %%~fF
        echo 短路径: %%~sF
        echo 属性: %%~aF
        echo 大小: %%~zF字节
        echo 时间: %%~tF
    )
    
    set /p again=是否继续分析？(Y/N):
    if /i "%again%"=="Y" goto AnalyzePath
    
exit /b