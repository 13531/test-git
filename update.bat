title GIT提交批处理——魏小敏

@echo off
echo *************************************************************
echo *                GIT 代码提交批处理                         *
echo *  Author: 魏小敏                                           *
echo *  Version: 1.0                                             *
echo *  Created: 2017/3/26                                       *
echo *  Last Updated by: 魏小敏                                  *
echo *************************************************************

::查看git对应的远程仓库地址
git remote -v
::删除关联对应的远程仓库地址
git remote rm origin 
::查看是否删除成功，如果没有任何返回结果，表示OK
git remote -v 
::重新关联git远程仓库地址
git remote add origin https://github.com/13531/test-git

echo;
echo;

echo 开始提交代码到本地仓库
echo 当前目录是：%cd%

echo;
echo;
echo 开始识别当前git的版本
echo ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
git --version
echo ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
echo;
echo;

echo 开始添加变更
echo ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
git add -A .
echo 执行结束！
echo ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

echo;
echo;
echo;
echo;
echo;
echo;
echo;
echo;
echo 提交变更到本地仓库
echo ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
@echo off
set /p var=请输入提交说明: 
echo;
echo 您输入的提交说明为：  %var%
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
echo 将变更情况提交到远程git服务器
echo ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
git push origin master
echo ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

echo;
echo 批处理执行完毕！
echo;

pause