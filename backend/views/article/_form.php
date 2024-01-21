<?php
use yii\helpers\Html;
use yii\widgets\ActiveForm;
use dosamigos\ckeditor\CKEditor;
/**
 * Team:lllg,NKU
 * coding by 郭昱杰 2111066
 * gii生成
 */
?>

<div class="article-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'title')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'description')->widget(CKEditor::className(), [
		'options' => ['rows' => 6],
		'preset' => 'full'
	]) ?>

    <?= $form->field($model, 'content')->widget(CKEditor::className(), [
		'options' => ['rows' => 6],
		'preset' => 'full'
	]) ?>

    <?= $form->field($model, 'status')->dropDownList($model->getStatusLabels()) ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
