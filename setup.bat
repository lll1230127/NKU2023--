:: 提示用户输入 MySQL 用户名，并将其存储在变量 name 中。
set /p name=name:
:: 提示用户输入密码，并将其存储在变量 var 中。
set /p var=password:
:: 输入项目路径
set /p propath=project path:
:: 登录SQL
mysql -uroot -p -e "set password for %name%@localhost = password('%var%');
:: 创建数据库
create database nuclear;
:: sql命令 
use nuclear;
source ./htdocs/%propath%/data/install.sql;
:: 更改当前目录到脚本所在的目录
cd /d %~dp0
:: 用于生成 common/config/main-local.php 文件
@echo off
@echo ^<?php > common\config\main-local.php
@echo return [ >> common\config\main-local.php
@echo 'components' => [ >> common\config\main-local.php
@echo 'db' => [ >> common\config\main-local.php
@echo 'class' => 'yii\db\Connection', >> common\config\main-local.php
@echo 'dsn' => 'mysql:host=localhost;dbname=nuclear', >> common\config\main-local.php
@echo ], >> common\config\main-local.php
@echo ]; >> common\config\main-local.php