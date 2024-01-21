<?php
/**
 * Team:lllg,NKU
 * Coding by: 刘国民 2113946 
 * 上传视频时显示的页面
*/
use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model common\models\Video */

$this->title = '创建您的视频吧！';
$this->params['breadcrumbs'][] = ['label' => 'Videos', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<link rel="stylesheet" href="../../../backend/web/css/main.css">
<div class="video-create text-center">

    <h1 class="mb-4"><?= Html::encode($this->title) ?></h1>
        <h2 class="mb-4">感谢您为核污染防治事业贡献的力量！</h2>

    <div class="d-flex flex-column align-items-center">

        <div class="upload-icon">
            <i class="fas fa-upload "></i>
        </div>

        <p class="mb-0">Drag and drop a file you want to upload</p>

        <p class="text-muted mb-4">Your video will be private until you publish it</p>

        <?php $form = \yii\bootstrap4\ActiveForm::begin([
            'options' => ['enctype' => 'multipart/form-data', 'class' => 'w-100'],
            'fieldConfig' => [
                'options' => ['class' => 'mb-3'],
            ],
        ]) ?>

        <div class="custom-file" style = "width: 200x;">
            <input type="file" class="custom-file-input" id="videoFile" name="video">
            <label class="custom-file-label" for="videoFile">Select File</label>
        </div>

        <div class="mt-3">
            <?= Html::submitButton('Upload', ['class' => 'btn btn-primary']) ?>
        </div>

        <?php \yii\bootstrap4\ActiveForm::end() ?>
    </div>

</div>
