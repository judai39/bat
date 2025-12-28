@echo off
chcp 65001

@REM set设置自定义变量
set var=abcd
echo %var%
if %var% equ abcd (echo var的值为abcd) else echo var的值不为abcd
if defined var (echo var的值不为空) else echo var的值为空

@REM set处理字符串
::字符串替换
set str_test1=%var:b=c%
echo %str_test1%
::字符串截取
::1,3指的是数组形式中的第1-3的字符赋值
set str_test2=%var:~1,3%
echo %str_test2%
::0,-2指的是数组形式中的倒数第二个字符到第零个进行赋值
set str_test3=%var:~0,-2%
echo %str_test3%
::-2指把倒数两位字符到最后一个赋值
set str_test4=%var:~-2%
echo %str_test4%
::2指把第二个字符后的所欲字符赋值
set str_test5=%var:~2%
echo %str_test5%