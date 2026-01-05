@echo off
REM 导出文件信息到CSV
echo "文件名","路径","大小(字节)","修改时间" > file_info.csv

FOR /R %%F IN (*) DO (
    for %%A in ("%%F") do (
        echo "%%~nA%%~xA","%%~dpA","%%~zA","%%~tA" >> file_info.csv
    )
)

echo 文件信息已导出到 file_info.csv
pause