chcp 65001
@echo off

@REM 判断两个字符串是否相等(相等两个字符的编码和eau一样...会被系统认为是关键字)
set /p var1=请输入第一个比较的字符:
set /p var2=请输入第二个比软的字符:
if "%var1%"=="%var2%" (echo 输入的两个字符串相同) else echo 输入的两个字符串不相同
pause

@REM 判断两个数值是否一样
@REM 批处理命令中的大于号,小于号不能直接用符号替代
@REM 中文含义       关系符       英文解释
@REM 等于            equ          equal
@REM 大于            gtr          greater than
@REM 大于或等于      geq          greater than or equal
@REM 小于            lss           less than
@REM 小于或等于      leq          less than or equal
@REM 不等于          neq          no equal
if "14" geq "2" (echo 14大于2?因为内元素比较大小只比较第一位往后类推) else echo 14小于2

@REM 判断驱动器,文件(夹)是否存在
if exist "c:" (echo c盘存在) else echo C盘不存在