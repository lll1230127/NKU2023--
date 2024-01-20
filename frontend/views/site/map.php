<?php
use common\models\Visit;
use yii\helpers\Url;
/**
*  team : LLLG NKU
*  Coding by : 李威远2112338
*  完成了map页面设计，引入了数据可视化
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
$this->registerJsFile("@web/js/echarts.js");
$this->registerJsFile("@web/js/china.js");

$url = Yii::getAlias("@web") . '/img/';

$this->title = '中国核辐射地图';
?>

<style>
    .site-index {
        background-size: cover;
        position: relative;
        height: 100vh;
    }
</style>



<div class="site-index">
    
        <!-- 下面第3行是疫情地图的占位符！！！！！！！注意别删了！！！！ -->
    <!-- 下面第2行是疫情地图的占位符！！！！！！！注意别删了！！！！ -->
    <!-- 下面这行是疫情地图的占位符！！！！！！！注意别删了！！！！ -->
   <div id="plague-map"></div>

</div>
