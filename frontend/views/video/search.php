<?php

 /**
*  team : LLLG NKU
*  Coding by : 李威远2112338，刘国民 2113946
*  搜索主页的部分
 */

/** @var $dataProvider ActiveDataProvider */

use yii\data\ActiveDataProvider;
use yii\helpers\Url;

?>
<style>
    /* 默认按钮样式 */
    .btn-search {
        width: 100px; /* 设置按钮宽度，根据需要调整 */
        background-color: #ffdb25; /* 新的背景颜色 */
        color: #000; /* 文字颜色，根据需要调整 */
        transition: background-color 0.3s ease, color 0.3s ease; /* 添加过渡效果 */
        text-align: center; /* 文字居中 */
        line-height: 20px; /* 与按钮高度相等，可根据需要调整 */
    }

    /* 鼠标悬停时的按钮样式 */
    .btn-search:hover {
        background-color: #c2a20f; /* 悬停时的背景颜色 */
        color: #000; /* 悬停时的文字颜色 */
    }
</style>
<div class="row">
    <form action="<?php echo Url::to(['/video/search']) ?>" class="form-inline my-2 my-lg-0">
        <div class="col-md-8">
            <input class="form-control mr-sm-2" type="search" placeholder="Search"
                   name="keyword"
                   value="<?php echo Yii::$app->request->get('keyword') ?>">
        </div>
        <div class="col-md-4">
            <button class="btn btn-outline-success my-2 my-sm-0 btn-block btn-search">Search</button>
        </div>
    </form>
</div>

<div class="row mt-3">
    <div class="col-md-12">
        <h1>Found videos</h1>
    </div>
</div>

<?php echo \yii\widgets\ListView::widget([
    'dataProvider' => $dataProvider,
    'itemView' => 'video_item',
    'layout' => '<div class="d-flex flex-wrap">{items}</div>{pager}',
    'itemOptions' => [
        'tag' => false
    ]
]) ?>
