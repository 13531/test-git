@echo off
title GIT�����ύ����
echo ��ǰĿ¼��%cd%
goto start
:seturl
echo ������Զ�ֿ̲��ַ:
set /p url=
::�鿴git��Ӧ��Զ�ֿ̲��ַ
::echo �ϴ�ʹ�õ�git��Ӧ��Զ�ֿ̲��ַ
::echo -----------------------[git message]-------------------------
::git remote -v
::echo -------------------------------------------------------------
::ɾ��������Ӧ��Զ�ֿ̲��ַ
::git remote rm origin 
::�鿴�Ƿ�ɾ���ɹ������û���κη��ؽ������ʾOK
::git remote -v 
::���¹���gitԶ�ֿ̲��ַ  ����https://github.com/13531/test-git
::git remote add origin %url%
git remote set-url origin %url%
:start
echo -------------------------------------------------------------
echo ��ǰgit��Ӧ��Զ�ֿ̲��ַ:
git remote -v 
echo -------------------------------------------------------------
echo ���� [1] ������һ�� 
echo.
echo ���� [9] ����Զ�ֿ̲��ַ. 
echo.
echo ���� [C] �˳�
echo;
choice /C 19c /n
if %errorlevel%==2   goto seturl
if %errorlevel%==3   goto end

echo ��ʼ�ύ���뵽���زֿ�

:: ��ǰgit�İ汾
git --version
echo -------------------------------------------------------------
::��ʼ��ӱ��
git add -A .
echo -------------------------------------------------------------

:input
set /p var=�������ύ˵��:
::ȥ�����пո������֤
set "str=%var: =%"
if "%str%"=="" goto input
echo;
echo �ύ˵��Ϊ��  %var%
echo -----------------------[git message]-------------------------
git commit -m %var%
echo -------------------------------------------------------------
echo ���������ύ��Զ��git������
echo -----------------------[git message]-------------------------
git push origin master
echo -------------------------------------------------------------
echo ������ִ����ϣ�
echo;
:menu
echo ������ִ���,
echo.
echo ���� [1] ִ��git pull origin master ���Խ������
echo.
echo ���� [C] �˳�
echo;
choice /C 1c /n
if %errorlevel%==1   goto pull
if %errorlevel%==2   goto end
echo;
goto end
:pull
echo -----------------[git pull origin master]--------------------
git pull origin master
echo -------------------------------------------------------------
echo.
echo ���� [1] ������һ��git push origin master 
echo ���� [C] �˳�
echo;
choice /C 1c /n
if %errorlevel%==2   goto end
git push origin master
echo -------------------------------------------------------------
echo ������ִ����ϣ�
pause
:end
