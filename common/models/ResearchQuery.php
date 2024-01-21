<?php
/**
 * Team:lllg,NKU
 * coding by 李秉睿 2113087
 * gii生成
 */

namespace common\models;

/**
 * This is the ActiveQuery class for [[Research]].
 *
 * @see Research
 */
class ResearchQuery extends \yii\db\ActiveQuery
{
    /*public function active()
    {
        return $this->andWhere('[[status]]=1');
    }*/

    /**
     * {@inheritdoc}
     * @return Research[]|array
     */
    public function all($db = null)
    {
        return parent::all($db);
    }

    /**
     * {@inheritdoc}
     * @return Research|array|null
     */
    public function one($db = null)
    {
        return parent::one($db);
    }
}
