<?php
/**
 * a view for PcounterSave
 */
use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model common\models\PcounterSave */

$this->title = 'Create Web Traffic Information';
$this->params['breadcrumbs'][] = ['label' => 'Pcounter Saves', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="pcounter-save-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
