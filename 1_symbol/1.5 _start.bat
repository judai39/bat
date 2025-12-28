@echo off
chcp 65001
echo "start一个新的命令行窗口运行(名字叫做赋予的值)"
start "$new_cmd.bat"
echo "start会独立于cmd父Shell,%0.bat"