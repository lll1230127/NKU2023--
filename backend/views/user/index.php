<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel common\models\UserSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Users';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="user-index">

    <h1><?= Html::encode($this->title) ?></h1>
    
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            // 'id',
            'username',
            // 'auth_key',
            // 'password_hash',
            // 'password_reset_token',
            'email:email',
            //'status',
            // 'created_at',
            // 'updated_at',
            //'verification_token',
            'permission',

              // 定义更新操作
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
            // 定义删除操作
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
