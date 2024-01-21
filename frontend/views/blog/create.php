<?php

use yii\helpers\Html;

/**
 * Team:lllg,NKU
 * coding by 郭昱杰 2111066
 * 创建文章
 */

$this->title = 'Create Article';
$this->params['breadcrumbs'][] = ['label' => 'Articles', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>

<div class="article-create" style="margin-left: 200px;margin-right:200px">

    <h1><?= Html::encode($this->title) ?></h1>

    <!-- 使用render方法渲染一个名为_form的部分视图。将模型$model传递给_form部分，以便在表单中使用 -->
    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
