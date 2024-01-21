<?php

namespace common\models;
use yii\data\Pagination;

use Yii;
/**
*  Team: lllg,NKU
*  Coding by 郭昱杰 2111066
*  实现目录，提供某些API接口(在gii生成基础上，进行一些修改)
*
* @property int $id
* @property string|null $title
*/

class Category extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'category';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['title'], 'string', 'max' => 255],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'title' => 'Title',
        ];
    }

    public function getArticles(){
        $articles=$this->hasMany(Article::className(),['category_id'=>'id']);
        return $articles->where(['status'=>'1']);
    }

    public function getArticlesCount(){
        return $this->getArticles()->count();
    }

    public static function getArticlesByCategory($id)
    {
        $query = Article::find()->where(['category_id'=>$id])->published();
        $count = $query->count();
        $pagination = new Pagination(['totalCount' => $count, 'pageSize'=>6]);
        $articles = $query->offset($pagination->offset)
            ->limit($pagination->limit)
            ->all();
        $data['articles'] = $articles;
        $data['pagination'] = $pagination;
        
        return $data;
    }

    /**
     * {@inheritdoc}
     * @return CategoryQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new CategoryQuery(get_called_class());
    }
}
