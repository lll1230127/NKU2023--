<?php
use yii\helpers\Html;
use yii\grid\GridView;
use yii\helpers\Url;

/**
 * Team:lllg,NKU
 * coding by 郭昱杰 2111066
 * 管理当前账号所写文章的界面，与后台实现类似，gii生成基础上做了一下修改
 */

$this->title = ' My articles';
$this->params['breadcrumbs'][] = $this->title;
?>
<div style="padding-left: 100px;" class="blog-mypost">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Create Article', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],
            [
                'attribute'=>'Image',
                'content'=>function($model){
                    return $this->render('article_item',['model'=>$model]);
                }
            ],
            'id',
            'title',
            'description:ntext',
            'date',

            //'image',
            //'viewed',
            [
                'attribute'=>'created_by',
                'content'=>function($model) {
                    return $model->createdBy->username;
                }
            ],
            'status',
            //'category_id',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>


</div>
