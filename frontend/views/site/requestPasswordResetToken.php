<?php

/**
*  team : LLLG NKU
*  Coding by : 李威远2112338
*  最后没有来及完成，是模板的部分
 */



/* @var $this yii\web\View */
/* @var $form yii\bootstrap4\ActiveForm */
/* @var $model \frontend\models\PasswordResetRequestForm */

use yii\helpers\Html;
use yii\bootstrap4\ActiveForm;

$this->title = 'Request password reset';
$this->params['breadcrumbs'][] = $this->title;
?>
<?php echo Html::cssFile('@web/css/style.css'); ?>

<div class="site-request-password-reset">
    <style>
        .site-request-password-reset {
            height: 450px;
            width: 100%;
            background-position: center;
            background-size: 50%;
            text-align: center;
            position: center;
        }
    </style>

    <p>Email</p>

    <div class="row">
        <div class="col-lg-12">
            <?php $form = ActiveForm::begin(['id' => 'request-password-reset-form']); ?>

            <?= $form->field($model, 'email')->textInput(['autofocus' => true]) ?>

            <div class="form-group">
                <?= Html::submitButton('Send', ['class' => 'btn btn-primary']) ?>
            </div>
            <style type="text/css">
                .row {
                    width: 480px;
                    height: 480px;
                    position: relative;
                    z-index: 9999;
                    margin: 6% auto;
                    background: rgba(216, 216, 216, 0.5);
                    padding: 5px;
                    overflow: hidden;
                    border: 10px solid white;
                    box-shadow: 0px 0px 10px 5px #aaa;
                    display: flex;
                }

                .btn {
                    top: 15px;
                    left: 150px;
                    position: relative;
                    width: 110px;
                    height: 50px;
                    background: white;
                    color: #000;
                    border: 5px solid white;
                    box-shadow: 0px 0px 10px 5px #aaa;
                    border-radius: 30px;
                    transition: .5s;
                    display: flex;
                }

                .btn:hover {
                    background-color: rgb(135, 135, 135);
                    color: white;
                    border: 5px solid white;
                    display: flex;
                }

                .site-request-password-reset p {
                    font-size: 50px;
                    text-align: center;
                    font-weight: bolder;
                    position: relative;
                }
            </style>
            <?php ActiveForm::end(); ?>
        </div>
    </div>
</div>
<?php echo Html::cssFile('@web/css/bk.css'); ?>
<div class="foreground"></div>

<div class="midground">
    <div class="tuna1"></div>
    <div class="tuna2"></div>
</div>

<div class="background">
</div>