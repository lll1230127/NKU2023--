<?php
/**
 * 由gii生成
 */

namespace common\models;

/**
 * This is the ActiveQuery class for [[CovResearch]].
 *
 * @see CovResearch
 */
class CovResearchQuery extends \yii\db\ActiveQuery
{
    /*public function active()
    {
        return $this->andWhere('[[status]]=1');
    }*/

    /**
     * {@inheritdoc}
     * @return CovResearch[]|array
     */
    public function all($db = null)
    {
        return parent::all($db);
    }

    /**
     * {@inheritdoc}
     * @return CovResearch|array|null
     */
    public function one($db = null)
    {
        return parent::one($db);
    }
}
