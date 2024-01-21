<?php
/**
*  team : LLLG NKU
*  Coding by : 李威远2112338
*  后台数据
 */
use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model common\models\PcounterSave */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="pcounter-save-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'save_name')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'save_value')->textInput() ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
