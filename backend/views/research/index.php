<?php
/**
 * Team:lllg,NKU
 * coding by 李秉睿 2113087
 * gii生成
 */

use yii\helpers\Html;
use yii\grid\GridView;
use yii\widgets\Pjax;
/* @var $this yii\web\View */
/* @var $searchModel common\models\ResearchSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Researches';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="cov-research-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Create Research', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?php Pjax::begin(); ?>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'id',
            'title',
            'summary',
            'url:url',
            'date',
            //'image',

            ['class' => 'yii\grid\ActionColumn',
          'buttons' => [
                        'delete' => function ($url) {
                            return Html::a('Delete', $url, [
                                'data-method' => 'post',
                                'data-confirm' => 'Are you sure?'
                            ]);
                        }
                    ]],
        ],
    ]); ?>

    <?php Pjax::end(); ?>

</div>
