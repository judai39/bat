@echo off

::type filename  在命令行中打开文件(仅适用于txt)
type C:\Users\judai\Desktop\a\test.txt

::type .txt .txt > newtxt.txt   合并文件
type a.txt b.txt > new_file.txt

::type组合findstr打印查找内容
type test.txt | findstr /i "am"