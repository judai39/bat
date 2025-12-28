@REM 设置临时的环境变量,生效范围只有当前命令行
set JAVA_HOME="..."
@REM 设置永久的用户变量
setx JAVA_HOME ""
@REM 设置永久的全局变量
setx JAVA_HOME="" /M

@REM 在path中追加信息(注意一整句)
setx path "%path%;C:\Users\judai\Desktop\youtube_download_project\request\python\Python311\Scripts;C:\Users\judai\Desktop\youtube_download_project\request\python\Python311;C:\Users\judai\Desktop\youtube_download_project\request\ffmpeg\bin" /m
pause