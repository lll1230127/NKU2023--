<?php
/**
 * 由gii生成
 */

namespace common\models;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use common\models\Research;

/**
 * ResearchSearch represents the model behind the search form of `common\models\Research`.
 */
class ResearchSearch extends Research
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id'], 'integer'],
            [['title', 'summary', 'url', 'date', 'image'], 'safe'],
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

    /**
     * Creates data provider instance with search query applied
     *
     * @param array $params
     *
     * @return ActiveDataProvider
     */
    public function search($params)
    {
        $query = Research::find();

        // add conditions that should always apply here

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        // grid filtering conditions
        $query->andFilterWhere([
            'id' => $this->id,
        ]);

        $query->andFilterWhere(['like', 'title', $this->title])
            ->andFilterWhere(['like', 'summary', $this->summary])
            ->andFilterWhere(['like', 'url', $this->url])
            ->andFilterWhere(['like', 'date', $this->date])
            ->andFilterWhere(['like', 'image', $this->image]);

        return $dataProvider;
    }
}
