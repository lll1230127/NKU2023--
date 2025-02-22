<?php

namespace backend\controllers;

/**
*  Team: lllg,NKU
*  Coding by 郭昱杰 2111066
*  gii生成，定义了有关评论的Controller
 */

use common\models\Comment;
use yii\filters\AccessControl;
use yii\web\Controller;
use yii\filters\VerbFilter;
use common\models\LoginForm;

class CommentController extends Controller
{
    public function behaviors()
    {
        return [
            'access'=>[
              'class'=>AccessControl::class,
              'rules'=>[
                  [
                      'allow'=>true,
                      'roles'=>['@']
                  ]
              ]
            ],
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'delete' => ['POST'],
                ],
            ],
        ];
    }
    
    public function actionIndex()
    {
        $comments = Comment::find()->orderBy('id desc')->all();
        
        return $this->render('index',['comments'=>$comments]);
    }

    // 响应delete，删除对应的评论
    public function actionDelete($id)
    {
        $comment = Comment::findOne($id);
        if($comment->delete())
        {
            return $this->redirect(['comment/index']);
        }
    }
    // 响应allow，将对应action设置为通过（在对应页面可见）
    public function actionAllow($id)
    {
        $comment = Comment::findOne($id);
        if($comment->allow())
        {
            return $this->redirect(['index']);
        }
    }
    // 响应disallow，将对应action设置为不通过（对应页面会过滤掉）
    public function actionDisallow($id)
    {
        $comment = Comment::findOne($id);
        if($comment->disallow())
        {
            return $this->redirect(['index']);
        }
    }
}