<?php
/**
*  team : LLLG NKU
*  Coding by : 李威远2112338
*  侧边导航
 */

use yii\rest\IndexAction;
?>

<aside class='shadow'>
    <?php
    $menuItems = [
        ['label' => '视频界面', 'url' => ['/video/index']],
    ];
    if (Yii::$app->user->isGuest) {
    } else {
        $menuItems[]=['label'=>'个人主页','url'=>['/video/myvideo']];
    }?>
    <?php
    echo \yii\bootstrap4\Nav::widget([
        'options'=>[
            'class'=>'d-flex flex-column nav-pills'
        ],
        'items' => $menuItems,
    ])
    ?>
</aside>
