@ECHO OFF 
set gitpath=https://github.com/lll1230127/NKU2023-Yii2project.git
set propath=%~dp0

:: database 项目
set user=root
set pw=%1
set dataname=install_light.sql

:: clone项目
echo git clone %gitpath% %propath%Project1
git clone %gitpath% %propath%Project1
cd %propath%Project1
echo Finish clone

set newpropath=%propath%Project1^\

:: call init.abt
echo call %newpropath%init.bat
call %newpropath%init.bat

:: call yii.bat
echo call %newpropath%yii.bat
call %newpropath%yii.bat

:: 数据库部分
cd data
echo Start importing database
mysql -u%user% -p%pw% -e "DROP DATABASE IF EXISTS nuclear; CREATE DATABASE nuclear; use nuclear; source %dataname%;"
echo Finish importing database
cd ..

:: 修改main-local
echo Start modifying main-local
echo ^<?php return [ 'components' =^> ['db' =^> [ 'class' =^> 'yii\db\Connection', 'dsn' =^> 'mysql:host=localhost;dbname=nuclear','username' =^> '%user%', 'password' =^> '%pw%','charset' =^> 'utf8',],'mailer' =^> [ 'class' =^> 'yii\swiftmailer\Mailer', 'viewPath' =^> '@common/mail', 'useFileTransport' =^> true, ], ],]; > %newpropath%common^\config^\main-local.php
echo Finish modifying main-local

echo Complete project deployment