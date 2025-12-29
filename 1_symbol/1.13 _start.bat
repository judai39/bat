@REM 命令行启动新的命令行
start "MY CMD" cmd /k "echo hello world & ping 127.0.0.1"

@REM 命令行启动另一个batch命令
::这会打开bat文件夹
start "1.13 _rem" C:/Users/judai/Desktop/bat
::需要在后面加上文件.exe才能启动文件