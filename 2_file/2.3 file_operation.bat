@REM md 创建文件夹(必须使用引号引用文件夹名称,否则不识别)
md "md test_folder1"
::同时创建多个文件夹
md "md test_folder2" "md test_folder1"/"md test_folder3"

@REM move 移动文件夹(里面的子文件也会移动)
cd "md test_folder2"
echo >folder2_file.txt
cd ..
move "md test_folder2" ./"md test_folder1"

@REM ren重命名文件(夹)
ren "md test_folder1" "md test folder 1"
@REM ren "md test folder 1"/"md test_folder2"/folder2_file.txt folder_file.txt 找不到...为什么
cd "md test folder 1"/"md test_folder2"
ren folder2_file.txt folder_file.txts