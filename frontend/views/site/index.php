<?php
use common\models\Visit;
use yii\helpers\Url;
/**
*  team : LLLG NKU
*  Coding by : 李威远2112338
*  完成了index页面设计，力求整洁美观
 */
?>

<?php
/* @var $this yii\web\View */
$this->registerCssFile('@web/css/home.css');
$this->registerJsFile('@web/js/home.js');

$this->registerCssFile('@web/css/leaflet.css');
$this->registerCssFile('@web/css/plague-map.css');
$this->registerJsFile("@web/js/jquery-3.4.1.min.js");
$this->registerJsFile("@web/js/leaflet.js");
$this->registerJsFile("@web/js/plague-map.js");

$url = Yii::getAlias("@web") . '/img/';

$this->title = '核辐射资料站';
?>

<style>
    .site-index {
        background-size: cover;
        position: relative;
        height: 100vh;
        opacity: 0.9; /* 设置半透明度，可以调整值 */
    }
</style>



<div class="site-index">
    <section class="slider"></section>
    <div class="container">
        <div class="card-carousel">
            <div class="card" id="1">
                <div class="sliderThumb" style=" background:url(<?= $url ?>pai.png) 50% 50% no-repeat; background-size:cover;height:60%;width:100%">

                </div>
                <div class="sliderCaption" style="text-align:center;padding:20px 20px 0px">
                    <a href="<?= $news[0]->sourceUrl ?>" style="font-size: 22px;font-weight:600;color:rgba(0,0,1)"><?=$news[0]->title?></a>
                    <p style="font-size: 0.8rem;padding-top: 10px;"><?=$news[0]->summary?></p>
                    <p>
                        <a href="<?=Url::toRoute(['news/index']);?>" class="btn btn-secondary">了解更多</a>
                    </p>
                </div>
            </div>
            <div class="card" id="2">
                <div class="sliderThumb" style=" background:url(<?= $url ?>gongren.png) 50% 50% no-repeat; background-size:cover;height:60%;width:100%">
                </div>
                <div class="sliderCaption">
                    <a href="<?= $news[2]->sourceUrl ?>" style="font-size: 22px;font-weight:600;color:rgba(0,0,1)"><?=$news[2]->title?></a>
                    <p style="font-size: 0.8rem;padding-top: 10px;"><?=$news[2]->summary?></p>
                    <p>
                        <a href="<?=Url::toRoute(['news/index']);?>" class="btn btn-secondary">了解更多</a>
                    </p>
                </div>
            </div>
            <div class="card" id="3">
                <div class="sliderThumb" style=" background:url(<?= $url ?>wang.jpg) 50% 50% no-repeat; background-size:cover;height:60%;width:100%">

                </div>
                <div class="sliderCaption">
                    <a href="<?= $news[3]->sourceUrl ?>" style="font-size: 22px;font-weight:600;color:rgba(0,0,1)"><?=$news[3]->title?></a>
                    <p style="font-size: 0.8rem;padding-top: 10px;"><?=$news[3]->summary?></p>
                    <p>
                        <a href="<?=Url::toRoute(['news/index']);?>" class="btn btn-secondary">了解更多</a>
                    </p>
                </div>
            </div>
            <div class="card" id="4">
                <div class="sliderThumb" style=" background:url(<?= $url ?>4.jpg) 50% 50% no-repeat; background-size:cover;height:60%;width:100%">

                </div>
                <div class="sliderCaption">
                    <a href="<?= $news[4]->sourceUrl ?>" style="font-size: 22px;font-weight:600;color:rgba(0,0,0,1)"><?=$news[4]->title?></a>
                    <p style="font-size: 0.8rem;padding-top: 10px;"><?=$news[4]->summary?></p>
                    <p>
                        <a href="<?=Url::toRoute(['news/index']);?>" class="btn btn-secondary">了解更多</a>
                    </p>
                </div>
            </div>
            <div class="card" id="5">
                <div class="sliderThumb" style="background: url(<?= $url ?>jiandu.jpg) 50% 50% no-repeat;background-size:cover;height:60%;width:100%" >
                </div>
                <div class="sliderCaption">
                    <a href="<?= $news[5]->sourceUrl ?>" style="font-size: 22px;font-weight:600;color:rgba(0,0,1)"><?=$news[5]->title?></a>
                    <p style="font-size: 0.8rem;padding-top: 10px;"><?=$news[5]->summary?></p>
                    <p>
                        <a href="<?=Url::toRoute(['news/index']);?>" class="btn btn-secondary">了解更多</a>
                    </p>
                </div>
            </div>
        </div>
        <a href="#" class="visuallyhidden card-controller">Carousel controller</a>
    </div>

        <!-- 下面第3行是疫情地图的占位符！！！！！！！注意别删了！！！！ -->
    <!-- 下面第2行是疫情地图的占位符！！！！！！！注意别删了！！！！ -->
    <!-- 下面这行是疫情地图的占位符！！！！！！！注意别删了！！！！ -->
    <!-- <div id="plague-map"></div -->

</div>
