@echo off
chcp 65001

@REM 新建文件信息
(
echo 这是文件内容
echo 这是文件内容2
echo 这是文件内容3
)>"aaaaa.txt"
@REM !!!!这里的>指向的文件一定要加"",否则只会添加第一行的数据
pause

@REM echo ...>>filename 追加信息
echo 这是追加的文件内容>>"aaaaa.txt"


@REM rd/s C:\...  该命令是删除文件夹(删除目录下文件使用del),会询问y/n
@REM echo回复
@REM 格式：ECHO 回复|命令表达式
@REM 作用：通过管道命令 | 把“回复”作为输入传导给后面的“命令表达式”，并作为“命令表达式”的输入。
@REM echo Y | rd /s C:\Users\judai\Desktop\test.txt
@REM  /s是删除目录下的所有内容

@REM 设置文件属性(只读.隐藏等等...)
::查看属性
attrib aaaaa.txt
pause
::修改属性(下例:添加隐藏属性,消除隐藏属性)
attrib +h aaaaa.txt
attrib -h aaaaa.txt
pause
::批量处理文件 ,添加/s后缀处理文件夹内的所有文件(下例:目标文件夹所有文件添加系统属性,消除系统属性)
attrib +s *.txt /s
attrib -s *.txt /s
pause

@REM 删除文件
del aaaaa.txt