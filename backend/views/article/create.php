<?php
/**
 * Team:lllg,NKU
 * coding by 郭昱杰 2111066
 * gii生成
 */
use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model frontend\models\Article */

$this->title = 'Create Article';
$this->params['breadcrumbs'][] = ['label' => 'Articles', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<link rel="stylesheet" href="../../../backend/web/css/main.css">
<div class="contect-wrapper">
<div class="article-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>
</div>
</div>
