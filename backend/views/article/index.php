<?php

/* @var $this yii\web\View */
/**
*  Team: lllg,NKU
*  Coding by 郭昱杰 2111066
*  完成了后台页面博客页面设计
 */

use yii\helpers\Html;
use yii\grid\GridView;
use yii\helpers\Url;

/* @var $this yii\web\View */
/* @var $searchModel app\models\ArticleSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'All Articles';
$this->params['breadcrumbs'][] = $this->title;
?>
<link rel="stylesheet" href="../../../backend/web/css/main.css">
<div class="contect-wrapper">
<div class="article-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('创建博客', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?php
    ?>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],
            [
                'attribute' => 'Image',
                'content' => function ($model) {
                    return $this->render('article_item', ['model' => $model]);
                }
                
            ],
            'title',
            'description:ntext',
            'date',
            [
                'attribute' => 'created_by',
                'content' => function ($model) {
                    return $model->createdBy->username;
                }
            ],
            'status',
            [
                'class' => 'yii\grid\ActionColumn',
                'buttons' => [
                        'update' => function ($url) 
                        {
                            return Html::a('Update', $url, [
                                'data-method' => 'post',
                            ]);
                        }
                    ]
            ],
            [
                'class' => 'yii\grid\ActionColumn',
                'buttons' => [
                        'delete' => function ($url) {
                            return Html::a('Delete', $url, [
                                'data-method' => 'post',
                                'data-confirm' => 'Are you sure?'
                            ]);
                        }
                    ]
             ],
        ],
    ]); ?>

</div>
</div>