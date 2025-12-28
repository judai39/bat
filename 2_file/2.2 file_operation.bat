@echo off
chcp 65001
echo 这是文件内容>2.2test_file.txt

@REM copy 复制文件
copy 2.2test_file.txt C:\Users\judai\Desktop
::copy并重命名
copy 2.2test_file.txt C:\Users\judai\Desktop\rename_test_file.txt
::把当前目录下的所有文件(不包含子目录)全部copy到f盘
    @REM copy ./F:/
::把当前目录下(不包含包含子目录)所有txt文件全部拷贝到桌面
md test_folder
cd test_folder
echo 这也是文件内容>test_file_ex.txt
md null_folder
cd null_folder
echo >null_folder_file.txt
cd ../..

@REM xcopy复制文件夹(根目录)
xcopy /s test_folder C:\Users\judai\Desktop
@REM /s:包含所有非空子目录 /E:复制所有子目录(包含空目录) /H:包含隐藏和系统文件属性的文件 /T:仅包含目录结构,不包含文件 /Y:禁止提示确认覆盖重复文件


echo Y | rd /s test_folder
del 2.2test_file.txt