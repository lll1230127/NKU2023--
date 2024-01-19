<?php
/**
 * a view for PcounterUsers
 */
use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model common\models\PcounterUsers */

$this->title = 'Create Users Information';
$this->params['breadcrumbs'][] = ['label' => 'Pcounter Users', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="pcounter-users-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
