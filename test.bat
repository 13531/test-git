@echo off
setlocal enabledelayedexpansion
:inputcommit
set /p var=�������ύ˵��:
::ȥ�����пո������֤
set "str=!var: =!"
if "!str!"=="" goto inputcommit
if "!var!"=="" goto inputcommit

pause