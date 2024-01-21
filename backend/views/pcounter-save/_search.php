<?php
/**
*  team : LLLG NKU
*  Coding by : 李威远2112338
*  后台数据
 */
use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\PcounterSaveSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="pcounter-save-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'save_name') ?>

    <?= $form->field($model, 'save_value') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-outline-secondary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
