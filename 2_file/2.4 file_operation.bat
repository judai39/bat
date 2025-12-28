md "findstr_folder1"/"findstr_folder2"
cd findstr_folder1/findstr_folder2
(
echo "abc"
echo "this is test"
echo "这是中文字符"
echo "this is extra test"
)>str_test.txt

@REM find 查找字符
find /i /c "aBc" str_test.txt
@REM /i:忽视查找字符串大小写 /c:仅显示查找到的字符串的行数 /n:显示查找到的字符串的行数 /v:显示未包含字符串的行数


@REM findstr增强查找
::返回所有包含字符串的整行数据
findstr "this" str_test.txt
::/r以正则表达式查找字符串(下例为查找包含this或abc的整行数据)
findstr /r "this abc" str_test.txt
::/s在当前所有目录下查找文件中包含目标字符串的整行数据
cd ..
findstr /s "this" *.txt
cd findstr_folder2
::/c使用指定字符串进行查找("字符 串")
findstr /c "this is" str_test.txt

@REM findstr增强查找(通过正则表达式)
@REM   .        通配符: 任何字符
@REM   *        重复: 以前字符或类别出现零或零以上次数
@REM   ^        行位置: 行的开始
@REM   $        行位置: 行的终点
@REM   [class]  字符类别: 任何在字符集中的字符
@REM   [^class] 补字符类别: 任何不在字符集中的字符
@REM   [x-y]    范围: 在指定范围内的任何字符
@REM   \x       Escape: 元字符 x 的文字用法
@REM   \<xyz    字位置: 字的开始
@REM   xyz\>    字位置: 字的结束

cd ../..
echo y | rd /s "findstr_folder1" 
