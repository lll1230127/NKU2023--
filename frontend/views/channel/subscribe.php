<?php

use common\models\User;
use yii\helpers\Url;

/** @var $channel User */
?>

    <a class="btn <?php echo $channel->isSubscribed(Yii::$app->user->id)
        ? 'btn-secondary' : 'btn-danger' ?>"
       href="<?php echo Url::to(['channel/subscribe', 'username' => $channel->username]) ?>"
       data-method="post" data-pjax="1">
        Subscribe <i class="far fa-bell"></i>
    </a> <?php echo $channel->getSubscribers()->count() ?>