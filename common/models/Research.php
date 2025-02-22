<?php
/**
 * Team:lllg,NKU
 * coding by 李秉睿 2113087
 * gii生成
 */

namespace common\models;

use Yii;

/**
 * This is the model class for table "{{%research}}".
 *
 * @property int $id
 * @property string|null $title
 * @property string|null $summary
 * @property string|null $url
 * @property string|null $date
 * @property string|null $image
 */
class Research extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return '{{%research}}';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['image'], 'string'],
            [['title', 'url', 'date'], 'string', 'max' => 255],
            [['summary'], 'string', 'max' => 1000],
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
            'summary' => 'Summary',
            'url' => 'Url',
            'date' => 'Date',
            'image' => 'Image',
        ];
    }

    /**
     * {@inheritdoc}
     * @return ResearchQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new ResearchQuery(get_called_class());
    }
}
