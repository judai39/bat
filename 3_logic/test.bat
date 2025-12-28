@echo off
setlocal enabledelayedexpansion

for %%f in (.txt) do (
set filename=%%~nf
set newfilename=%filename:#=/%
ren %%~dpfnf %newfilename%
)
