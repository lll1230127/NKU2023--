<?php

namespace common\models;

/**
 * This is the ActiveQuery class for [[ArticleTag]].
 *
 * @see ArticleTag
 */
class ArticleTagQuery extends \yii\db\ActiveQuery
{

    /**
     * {@inheritdoc}
     * @return ArticleTag[]|array
     */
    public function all($db = null)
    {
        return parent::all($db);
    }

    /**
     * {@inheritdoc}
     * @return ArticleTag|array|null
     */
    public function one($db = null)
    {
        return parent::one($db);
    }
}
