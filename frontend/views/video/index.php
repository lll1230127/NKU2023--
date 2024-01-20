<?php

/**
 * This is the home page of video
 */
/** @var $dataProvider ActiveDataProvider */

/**
 * Team:lllg,NKU
 * Coding by: 刘国民 2113946 
 * 视频页的初始界面
*/


use yii\data\ActiveDataProvider;
use yii\helpers\Url;
$this->title = 'Video';
$this->params['breadcrumbs'][] = $this->title;

?>
    <form action="<?php echo Url::to(['/video/search']) ?>"
          class="form-inline my-2 my-lg-0">
        <input class="form-control mr-sm-2" type="search" placeholder="Search"
               name="keyword"
               value="<?php echo Yii::$app->request->get('keyword') ?>">
        <button class="btn btn-outline-success my-2 my-sm-0">Search</button>
    </form>
    <div>
        跟随新闻报道，让我们一起关注核污染，守护地球家园！
    </div>
    
    
<?php
echo \yii\widgets\ListView::widget([
    'dataProvider'=>$dataProvider,
    'pager' => [
        'class' => \yii\bootstrap4\LinkPager::class,
    ],
    'itemView'=>'video_item',
    'layout'=>'<div class="d-flex flex-wrap">{items}</div>{pager}',
    'itemOptions'=>[
        'tag'=>false
    ]
])?>

<img width=800px src="https://nimg.ws.126.net/?url=http%3A%2F%2Fdingyue.ws.126.net%2F2021%2F0413%2F5f9ad79dj00qri7bo004hc000h9009im.jpg&thumbnail=660x2147483647&quality=80&type=jpg" >
