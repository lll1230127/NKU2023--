@echo off
setlocal enabledelayedexpansion

REM 设置项目路径和GitHub仓库地址
set "projectPath=C:\xampp\htdocs\NKU2023-Yii2project"
set "githubRepo=https://github.com/lll1230127/NKU2023-Yii2project.git"

REM 检查是否已经安装了Git
git --version >nul 2>&1
if %errorlevel% neq 0 (
  echo "installing Git..."
  REM 下载Git安装程序并运行安装
  bitsadmin /transfer git_installer /download /priority normal https://github.com/git-for-windows/git/releases/download/v2.33.0.windows.2/Git-2.33.0.2-64-bit.exe %cd%\git_installer.exe
  start /wait git_installer.exe /SILENT
  del git_installer.exe
)

REM 检查是否已经安装了XAMPP
if not exist "C:\xampp\" (
  echo "installing XAMPP..."
  REM 下载XAMPP安装程序并运行安装
  bitsadmin /transfer xampp_installer /download /priority normal @echo off
setlocal enabledelayedexpansion

REM 设置项目路径和GitHub仓库地址
set "projectPath=C:\xampp\htdocs\NKU2023-Yii2project\"
set "githubRepo=https://github.com/lll1230127/NKU2023-Yii2project.git"

REM 检查是否已经安装了Git
git --version >nul 2>&1
if %errorlevel% neq 0 (
  echo "installing Git..."
  REM 下载Git安装程序并运行安装
  bitsadmin /transfer git_installer /download /priority normal https://github.com/git-for-windows/git/releases/download/v2.33.0.windows.2/Git-2.33.0.2-64-bit.exe %cd%\git_installer.exe
  start /wait git_installer.exe /SILENT
  del git_installer.exe
)

REM 检查是否已经安装了XAMPP
if not exist "C:\xampp\" (
  echo "installing XAMPP..."
  REM 下载XAMPP安装程序并运行安装
  bitsadmin /transfer xampp_installer /download /priority normal https://sourceforge.net/projects/xampp/files/XAMPP%20Windows/8.0.11/xampp-windows-x64-8.0.11-0-VS16-installer.exe %cd%\xampp_installer.exe
  start /wait xampp_installer.exe /S
  del xampp_installer.exe
)

REM 检查是否已经安装了MySQL
if not exist "C:\xampp\mysql\bin\mysql.exe" (
  echo "installing MySQL..."
  REM 下载MySQL安装程序并运行安装
  bitsadmin /transfer mysql_installer /download /priority normal https://dev.mysql.com/get/mysql-installer-community-8.0.28.0.msi %cd%\mysql_installer.exe
  start /wait msiexec /i mysql_installer.exe /quiet
  del mysql_installer.exe
)


REM 安装composer依赖
echo "install Composer..."
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('sha384', 'composer-setup.php') === 'e21205b207c3ff031906575712edab6f13eb0b361f2085f1f1237b7126d785e826a450292b6cfd1d64d92e6563bbde02') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php
php -r "unlink('composer-setup.php');"

REM 克隆GitHub仓库到指定路径
echo "clone from GitHub..."
git clone "%githubRepo%" "%projectPath%"

REM 获取MySQL安装过程中的用户名和密码
echo "input MySQL username:"
set /p mysqlUsername=
echo "input MySQL password:"
set /p mysqlPassword=

REM 运行MySQL安装目录下的mysql.exe，创建新的数据库
echo "creating MySQL database..."
"C:\xampp\mysql\bin\mysql.exe" -u%mysqlUsername% -p%mysqlPassword% -e "DROP DATABASE IF EXISTS nuclear; CREATE DATABASE nuclear; use nuclear; source C:/xampp/htdocs/NKU2023-Yii2project/data/install.sql;"


REM 将项目放在XAMPP的htdocs文件夹下
set "xamppHtdocs=C:\xampp\htdocs"
if not exist "%xamppHtdocs%" (
  echo "not exist xmapp\\htdocs. Please check the path."
  exit /b 1
)




REM 将项目移动到XAMPP的htdocs文件夹下
echo "move project to XAMPP htdocs..."
move "%projectPath%" "%xamppHtdocs%"


REM 进入项目目录
cd "%xamppHtdocs%\NKU2023-Yii2project\"


@echo off
call C:\xampp\htdocs\NKU2023-Yii2project\init.bat
call C:\xampp\htdocs\NKU2023-Yii2project\yii.bat
echo over

REM 更新main-local.php中的数据库用户名和密码
echo "update mainlocal.php"
echo "<?php return [ 'components' => ['db' => [ 'class' => 'yii\db\Connection', 'dsn' => 'mysql:host=localhost;dbname=nuclear','username' => '%mysqlUsername%', 'password' => '%mysqlPassword%','charset' => 'utf8',],'mailer' => [ 'class' => 'yii\swiftmailer\Mailer', 'viewPath' => '@common/mail', 'useFileTransport' => true, ], ],];" > C:\xampp\htdocs\NKU2023-Yii2project\common\config\main-local.php



echo "ok!"
echo "you can use edge/chorme to access address \"localhost/NKU2023-Yii2project/frontend/web\" to use the project! Thanks!\n"
exit /b 0
