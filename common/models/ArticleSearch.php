<?php

namespace common\models;
/**
*  Team: lllg,NKU
*  Coding by 郭昱杰 2111066
*  为查询某个文章提供API
 */

use yii\base\Model;
use yii\data\ActiveDataProvider;
use common\models\Article;

/**
 * ArticleSearch represents the model behind the search form of `app\models\Article`.
 */
class ArticleSearch extends Article
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id', 'viewed', 'created_by', 'status', 'category_id'], 'integer'],
            [['title', 'description', 'content', 'date', 'image'], 'safe'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function scenarios()
    {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }


    public function search($params)
    {
        $query = Article::find();

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $this->load($params);

        if (!$this->validate()) {
            return $dataProvider;
        }
        
        // 这些属性需要精确查找
        $query->andFilterWhere([
            'id' => $this->id,
            'date' => $this->date,
            'viewed' => $this->viewed,
            'created_by' => $this->created_by,
            'status' => $this->status,
            'category_id' => $this->category_id,
        ]);

        // 这些属性需要模糊查找
        $query->andFilterWhere(['like', 'title', $this->title])
            ->andFilterWhere(['like', 'description', $this->description])
            ->andFilterWhere(['like', 'content', $this->content])
            ->andFilterWhere(['like', 'image', $this->image]);

        return $dataProvider;
    }
}
