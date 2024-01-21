<?php

 /**
*  team : LLLG NKU
*  Coding by : 李威远2112338，刘国民 2113946
*  展示个人主页的部分
 */


use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = '个人主页';
$this->params['breadcrumbs'][] = $this->title;
?>
<style>

.btn-icon:hover {
    transform: scale(1.1); /* 鼠标悬停时放大效果 */
}

</style>

<link rel="stylesheet" href="../../../backend/web/css/main.css">
<div class="content-wrapper text-center">
    <div class="video-index">

        <h1 class="mb-3"><?= Html::encode($this->title) ?></h1>
        <h2 class="mb-4">欢迎您为核污染防治事业贡献一份力量！</h2>

        <div class="p-4"  >
            <?= Html::a('<i class="fas fa-hands-helping fa-3x"></i><br>助我们一臂之力吧', ['create'], ['class' => 'btn btn-success btn-icon '] ) ?>
        </div>

        <?= GridView::widget([
            'dataProvider' => $dataProvider,
            'columns' => [
                ['class' => 'yii\grid\SerialColumn'],

                [
                    'attribute' => 'video_id',
                    'content' => function ($model) {
                        return $this->render('video_item', ['model' => $model]);
                    }
                ],
                [
                    'attribute' => 'created_by',
                    'content' => function ($model) {
                        return $model->createdBy->username;
                    }
                ],
                [
                    'attribute' => 'status',
                    'content' => function ($model) {
                        return $model->getStatusLabels()[$model->status];
                    }
                ],
                //'has_thumbnail',
                //'video_name',
                'created_at:datetime',
                'updated_at:datetime',
                //'created_by',


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