<?php
use yii\rest\IndexAction;
/**
*  team : LLLG NKU
*  Coding by : 李威远2112338
*  后台侧边栏
 */
?>

<aside class='shadow'>
<?php
echo \yii\bootstrap4\Nav::widget([
    'options'=>[
        'class'=>'d-flex flex-column nav-pills'
    ],
    'items' => [
        [
            'label' => 'Home',
            'url' => ['/site/index']
        ],
        [
            'label' => 'Videos',
            'url' => ['/video/index']
        ],
        [
            'label'=>'Blogs',
            'url'=>['/article/index']
        ],
        [
            'label'=>'Comments',
            'url'=>['/comment/index']
        ],
        [
            'label'=>'News',
            'url'=>['/news/index']
        ],
        [
            'label'=>'Research',
            'url'=>['/research/index']
        ],
        [
            'label'=>'Contact Info',
            'url'=>['/contactform/index']
        ],
        [
            'label'=>'User Info',
            'url'=>['/pcounter-users/index']
        ],
        [
            'label'=>'Web Traffic Info',
            'url'=>['/pcounter-save/index']
        ],
        [
            'label'=>'User',
            'url'=>['/user/index']
        ],
        [
            'label'=>'Homework',
            'url'=>['/site/homework']
        ],
    ]
])
?>
</aside>

