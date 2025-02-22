<?php
/**
*  Team: lllg,NKU
*  来自video的评论
 */

namespace common\models;

use Yii;
use yii\base\Model;

class CommentFormV extends Model{
    public $comment;

    public function rules(){
        return [
            [['comment'],'required'],
            [['comment'],'string','length'=>[3,250]]
        ];
    }

    public function saveComment($video_id)
    {
        $comment = new Comment;
        $comment->text = $this->comment;
        $comment->user_id = Yii::$app->user->id;
        $comment->video_id = $video_id;
        $comment->status = 0;
        $comment->date = date('Y-m-d');
        return $comment->save();
    }
}