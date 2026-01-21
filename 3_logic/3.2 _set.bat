@echo off
chcp 65001

@REM set设置自定义变量
::set缺少/a参数是对变量求字符串
set var=abcd
set empty_str1=""
set empty_str2=   
echo %var%
::set添加/a参数是对变量求数值
set /a num=10
echo %num%

@REM set处理字符串
::字符串替换
set str_test1=%var:b=c%
echo %str_test1%
::字符串截取(不需要比较负数和零的大小,这里的零只需要理解为最左边或最右边的数字就行了)
::1,3指的是数组形式中的第1-3的字符赋值
set str_test2=%var:~1,3%
echo %str_test2%
::0,-2指的是数组形式中的倒数第二个字符到第零个进行赋值
set str_test3=%var:~0,-2%
echo %str_test3%
::-2指把倒数两位字符到最后一个赋值(相当于-2,0)
set str_test4=%var:~-2%
echo %str_test4%
::2指把第二个字符后的所有字符赋值
set str_test5=%var:~2%
echo %str_test5%