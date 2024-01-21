<?php
/**
 * Team:lllg,NKU
 * coding by 李秉睿 2113087
 * gii生成
 */

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model common\models\Research */

$this->title = 'Update Research: ' . $model->title;
$this->params['breadcrumbs'][] = ['label' => 'Researches', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->title, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="cov-research-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
