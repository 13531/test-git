title GIT�ύ��������κС��

@echo off
echo *************************************************************
echo *                GIT �����ύ������                         *
echo *  Author: κС��                                           *
echo *  Version: 1.0                                             *
echo *  Created: 2017/3/26                                       *
echo *  Last Updated by: κС��                                  *
echo *************************************************************

::�鿴git��Ӧ��Զ�ֿ̲��ַ
git remote -v
::ɾ��������Ӧ��Զ�ֿ̲��ַ
git remote rm origin 
::�鿴�Ƿ�ɾ���ɹ������û���κη��ؽ������ʾOK
git remote -v 
::���¹���gitԶ�ֿ̲��ַ
git remote add origin https://github.com/13531/test-git

echo;
echo;

echo ��ʼ�ύ���뵽���زֿ�
echo ��ǰĿ¼�ǣ�%cd%

echo;
echo;
echo ��ʼʶ��ǰgit�İ汾
echo ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
git --version
echo ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
echo;
echo;

echo ��ʼ��ӱ��
echo ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
git add -A .
echo ִ�н�����
echo ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

echo;
echo;
echo;
echo;
echo;
echo;
echo;
echo;
echo �ύ��������زֿ�
echo ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
@echo off
set /p var=�������ύ˵��: 
echo;
echo ��������ύ˵��Ϊ��  %var%
echo;
git commit -m %var%
echo ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

echo;
echo;
echo;
echo;
echo;
echo;
echo;
echo;
echo ���������ύ��Զ��git������
echo ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
git push origin master
echo ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

echo;
echo ������ִ����ϣ�
echo;

pause