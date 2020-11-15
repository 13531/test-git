@echo off
setlocal enabledelayedexpansion
:inputcommit
set /p var=请输入提交说明:
::去除所有空格进行验证
set "str=!var: =!"
if "!str!"=="" goto inputcommit
if "!var!"=="" goto inputcommit

pause