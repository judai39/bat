@REM 注解尽量不要使用关键字放在注释里,会出现编码错误
chcp 65001
@echo off

@REM 判断两个数值是否一样
@REM batch命令中的大于号,小于号不能直接用符号替代
@REM 中文含义       关系符       英文解释
@REM 等于            equ          equal
@REM 大于            gtr          greater than
@REM 大于或等于      geq          greater than or equal
@REM 小于            lss           less than
@REM 小于或等于      leq          less than or equal
@REM 不等于s          neq          no equal
if "14" geq "2" (14大于2?因为内元素比较大小只比较第一位往后类推) else 14小于2

@REM 第二行注解那里出现了报错提示