@echo off

::��������� %var%  !var!��ʾ��ֵ��ͬ
setlocal enabledelayedexpansion
::setlocal disabledelayedexpansion
title GIT�ύ����������--13531@github

call:menuChoice

goto:eof
::---------------------------------------------------------------------
::--�ڲ����x��
::---------------------------------------------------------------------

:showMenu
echo %cd%
echo [1]�ύ����
echo [2] 
echo [3]��ʾ/���� �û���������
echo [4]��ʾ/���� Git������Զ�ֿ̲��ַ
echo [5]
echo [6]
echo [7]
echo [8]����.gitignore���Թ����ļ�
echo [9]�л���cmd������
echo [C]�˳�
echo -------------------------------------------------------------
goto:eof


:menuChoice
cls
call:showMenu
echo -------------------------------------------------------------
choice /C 123456789c /n /m "��ѡ��:"
cls
echo.
if !errorlevel!==1 (
cls
call:updata
call:gobackToMenu
)
if !errorlevel!==2 (

call:gobackToMenu
)

if !errorlevel!==3 (
	::��ʾ/���� user.name user.email
	echo ��ǰ�û���:
	git config user.name
	echo ��ǰ����:
	git config user.email
	echo.
	echo ����[S]�����û��������� 
	echo ����[C]�������˵�
	choice /C sc /n /m ""
	if !errorlevel!==2 goto menuChoice
	set /p name=�����û���:
	git config user.name !name!
	set /p email=��������:
	git config user.email !email!
	echo.
	echo �������!
	echo.
	echo ��ǰ�û���:&&git config user.name
	echo ��ǰ����:&&git config user.email
	echo.
	call:gobackToMenu
)
if !errorlevel!==4  (
::��ʾ/���� git������Զ�ֿ̲��ַ .Զ�ֿ̲��ַ ���� https://github.com/13531/test-git
	echo ��ǰgit������Զ�ֿ̲��ַ:
	echo.
	git remote -v 
	echo.
	echo ����[S]����Զ�ֿ̲��ַ 
	echo ����[C]����
	choice /C sc /n /m ""
	if !errorlevel!==2 goto menuChoice
	set /p url=����Զ�ֿ̲��ַ:
	git remote rm origin
	git remote add origin !url!
	echo.
	echo �������!
	echo.
	echo ��ǰgit������Զ�ֿ̲��ַ��
	git remote -v 
	echo.
	call:gobackToMenu
)
if !errorlevel!==5   (
call:gobackToMenu

)
if !errorlevel!==6  (

call:gobackToMenu
)
if !errorlevel!==7 (

call:gobackToMenu
)
if !errorlevel!==8  (

echo __recycle/>> .gitignore
md __recycle
echo ���
call:gobackToMenu
)
if !errorlevel!==9  (

cmd
)
if !errorlevel!==10  (

exit 0
)

goto:eof

:gobackToMenu
echo.
choice /C c /n /m "����[C]�������˵�"

if !errorlevel!==1   goto menuChoice
goto:eof

:updata
echo git������Զ�ֿ̲��ַ:
git remote -v 
echo.
echo ��ǰĿ¼��%cd%
echo.
echo �û���:
git config user.name
echo ����:
git config user.email
echo.
set mode_1=add -A .
set mode_2=add .
set mode_3=add -U .

echo ��ѡ�����ģʽ:
echo ����[1] git !mode_1!    
echo ����[3] git !mode_2! 
echo ����[5] git !mode_3!   
echo ����[c] �������˵�
choice /C 12345c /m "" /n
echo.

echo ��ʼ�ύ���뵽���زֿ�
if !errorlevel!==1  (
git !mode_1!  
)
if !errorlevel!==3  (
git !mode_2! 
)
if !errorlevel!==5  (
git !mode_3!   
)
if !errorlevel!==6  (
goto menuChoice
)

:inputcommit
set /p var=�������ύ˵��:
::ȥ�����пո������֤
set "str=!var: =!"
if "!str!"=="" goto inputcommit

echo;
echo �ύ˵��Ϊ��  !var!
echo -----------------------[git message]-------------------------
git commit -m !var!
echo -------------------------------------------------------------
echo ���������ύ��Զ��git������
echo -----------------------[git message]-------------------------
git push origin master
echo -------------------------------------------------------------
echo.
echo (������ִ���, ���� [1] ִ��git pull origin master ���Խ������)
echo.
echo ������ִ����ϣ�15���޲����Զ��رմ���
echo.
echo.
echo ���� [1] �����޸�����
echo ���� [0] �����رմ���
echo ���� [C] �������˵�
echo;
choice /C 1c0 /n /d 0 /t 15
if !errorlevel!==1 (
	echo -----------------[git pull origin master]--------------------
	git pull origin master
	echo -------------------------------------------------------------
	echo.
	echo ���� [1] ������һ��git push origin master 
	echo ���� [C] �������˵�
	echo;
	choice /C 1c /n
	if !errorlevel!==1 (
		git push origin master
		echo -------------------------------------------------------------
		call:autoExit
		
	)	
	if !errorlevel!==2 (
		 goto menuChoice
	)
	
	call:gobackToMenu

)
if !errorlevel!==2  (
 goto menuChoice
) 
if !errorlevel!==3  (
 exit 0
) 
call:gobackToMenu
goto:eof


:autoExit
echo ������ִ����ϣ� 15���޲����Զ��رմ���
echo ���� [1] ��������; ���� [0] �����رմ���
choice /C 10 /n /d 0 /t 15
if !errorlevel!==1 (
	echo ѡ���˱�������
	call:gobackToMenu
)
if !errorlevel!==2 (
 exit 0
)
goto:eof
