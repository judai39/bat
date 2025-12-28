setx /M JAVA_HOME8 "C:\Program Files\Java\jdk-1.8"
@REM 这里的java_home将会修改到用户变量中(这样规范一点,其实等价于百分号括起来在系统变量里)
setx "JAVA_HOME" "%%JAVA_HOME17%%"
PAUSE