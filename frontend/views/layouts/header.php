<?php


/* @var $this \yii\web\View */
/* @var $content string */

/* 
*  team : LLLG队 
*  Coding by : 李威远
*  完成了header导航栏的设计
*/

use yii\helpers\Html;
use yii\bootstrap4\Nav;
use yii\bootstrap4\NavBar;
use yii\widgets\Breadcrumbs;
use frontend\assets\AppAsset;
use common\widgets\Alert;

AppAsset::register($this);
?>
<?php $this->beginPage() ?>
<!DOCTYPE html>
<html lang="<?= Yii::$app->language ?>">
<head>
    <meta charset="<?= Yii::$app->charset ?>">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <?php $this->registerCsrfMetaTags() ?>
    <title><?= Html::encode($this->title) ?></title>
    <?php $this->head() ?>
</head>
<body>
<?php $this->beginBody() ?>
    <?php
    echo "<table>";
    NavBar::begin([
        'brandLabel' => Yii::$app->name,
        'brandUrl' => Yii::$app->homeUrl,
        'options' => [
             'class' => 'navbar-expand-lg navbar-light',
             'style' => 'background-color: #616060; box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);',
        ],
    ]);
    $menuItems = [
        ['label' => '主页', 'url' => ['/site']],
        ['label' => '科普', 'url' => ['/site/about']],
        ['label'=>'视频','url'=>['/video/index']],
        ['label'=>'博客','url'=>['/blog/blog']],
        ['label' => '新闻', 'url' => ['/news/index']],
        ['label' => '调研', 'url' => ['/site/research']],
        ['label'=>'关于','url'=>['/site/contact']]
    ];
    if (Yii::$app->user->isGuest) {
        $menuItems[] = ['label' => '注册', 'url' => ['/site/signup']];
        $menuItems[] = ['label' => '登录', 'url' => ['/site/login']];
    } else {
        $menuItems[] = '<li>'
            . Html::beginForm(['/site/logout'], 'post')
            . Html::submitButton(
                '登出 (' . Yii::$app->user->identity->username . ')',
                ['class' => 'btn btn-link logout']
            )
            . Html::endForm()
            . '</li>';
    }?>
    <?php
    echo Nav::widget([
        'options' => ['class' => 'navbar-nav ml-auto',],
        'items' => $menuItems,
        
    ]);
    NavBar::end();
