<?php

/**
 * Team:lllg,NKU
 * coding by 李秉睿 2113087
 * a view of contact us page
 */

/* @var $this yii\web\View */
/* @var $form yii\bootstrap4\ActiveForm */
/* @var $model \frontend\models\ContactForm */

use yii\helpers\Html;
use yii\bootstrap4\ActiveForm;

$this->title = 'Contact';
?>
<?= Html::cssFile('@web/public/css/style_1.css') ?>
<?= Html::cssFile('@web/css/custom-bs.css') ?>
<?= Html::cssFile('@web/css/main.css') ?>
<?= Html::cssFile('@web/css/style1.css') ?>
<?= Html::cssFile('@web/css/jquery.fancybox.min.css') ?>
<?= Html::cssFile('@web/public/css/font-awesome.min.css') ?>
<?= Html::cssFile('@web/public/fonts/line-icons/style.css') ?>
<?= Html::cssFile('@web/public/fonts/icomoon/style.css') ?>

<?= Html::jsFile('@web/js/contact/jquery.min.js') ?>
<?= Html::jsFile('@web/js/contact/bootstrap.bundle.min.js') ?>
<?= Html::jsFile('@web/js/contact/isotope.pkgd.min.js') ?>
<?= Html::jsFile('@web/js/contact/stickyfill.min.js') ?>
<?= Html::jsFile('@web/js/contact/jquery.fancybox.min.js') ?>
<?= Html::jsFile('@web/js/contact/jquery.easing.1.3.js') ?>
<?= Html::jsFile('@web/js/contact/jquery.waypoints.min.js') ?>
<?= Html::jsFile('@web/js/contact/jquery.animateNumber.min.js') ?>
<?= Html::jsFile('@web/js/contact/custom.js') ?>

<html lang="en">

<nav id="w0" class="navbar-expand-lg navbar-light navbar" style="background-color: #616060; box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);">
  <div class="container">
    <a class="navbar-brand" href="../../web/site/index">关注核辐射，关注未来</a>
    <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#w0-collapse" aria-controls="w0-collapse" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
    <div id="w0-collapse" class="collapse navbar-collapse">
      <ul id="w1" class="navbar-nav ml-auto nav">
        <li class="nav-item"><a class="nav-link" href="../../web/site/index">主页</a></li>
        <li class="nav-item"><a class="nav-link" href="../../web/site/about">科普</a></li>
        <li class="nav-item"><a class="nav-link " href="../../web/site/map">数据</a></li>
        <li class="nav-item"><a class="nav-link " href="../../web/blog/blog">博客</a></li>
        <li class="nav-item"><a class="nav-link" href="../../web/video/index">视频</a></li>
        <li class="nav-item"><a class="nav-link" href="../../web/news/index">新闻</a></li>
        <li class="nav-item"><a class="nav-link" href="../../web/site/research">调研</a></li>
        <li class="nav-item"><a class="nav-link active" href="../../web/site/contact">关于</a></li>
        </ul>
    </div>
  </div>
</nav>
  <head>
    <title>Contact Us！</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    

  </head>
  <body>
    
  <div id="overlayer"></div>
  <div class="loader">
    <div class="spinner-border text-primary" role="status">
      <span class="sr-only">Loading...</span>
    </div>
  </div>

  <div class="site-wrap" style="background-color:rgba(255,242,226,0.8)>

    <div class="site-mobile-menu site-navbar-target">
      <div class="site-mobile-menu-header">
        <div class="site-mobile-menu-close mt-3">
          <span class="icon-close2 js-menu-toggle"></span>
        </div>
      </div>
      <div class="site-mobile-menu-body"></div>
    </div> <!-- .site-mobile-menu -->


    <section class="site-section" id="next-section">
      <div class="container">
        <div class="row align-items-center">
          <div class="col-lg-6 mb-5 mb-lg-0">


            <img src="../../../frontend/web/img/aboutus/jinnan2.jpg" alt="Image" class="img-fluid img-shadow">
            </a>
          </div>
          <div class="col-lg-5 ml-auto">
            <h3 class="section-title-sub text-primary">Who are we?</h3>
            <h2 class="section-title mb-3">为什么要开发这个网址？</h2>
            <p>我们开发这个网页是为了让人们更加了解核辐射和核污染的相关信息；</br>
              我们收集来自各个媒体和机构对于核辐射、核污染的报道，将其汇总、分类，形成了科普, 新闻, 研究三个类目；</br>
              我们制作了相关的博客系统，希望人们能在此分享他们对于核辐射的看法和视频；</br>
              我们还收集了从2023-08-26至今的全国空气吸收剂量率, 以反映各地收到的核辐射情况</br>
              最后，希望人们能通过联系页面将自己的信息及时反馈给我们。</p>
          </div>
        </div>
      </div>
    </section>

    <!-- ABOUT US -->
    <section class="site-section about-us-section">
      <div class="container">

        <div class="row mb-5 pt-0 site-section">
          <div class="col-md-6 align-self-center">
            <h3 class="section-title-sub text-primary">Key Feautures</h3>
            <h2 class="section-title mb-4">网站特点</h2>
            <p class="lead">这是一个核污染和核辐射的宣传站，主题是关注核辐射，关注未来。</p>
            <p>我们提供了各种关于核辐射的信息，您可以在这里获取国内外关于核辐射、核泄漏的新闻资料，您也可以分享您对于核污染的看法，将制作的与核有关的影像上传于本站。</p>
            <p>同时，如果您对本网站的内容有任何疑问，或者有与核污染有关的一切信息和内容，欢迎通过本页最下方的表格联系我们，您也可以获取我们的联络方式，以便在第一时间找到我们，真诚感谢您的支持！</p>
            <p class="mt-4"><a href="#contactformanchor" class="spepcial_link">跳转到联系表格</a></p>
          </div>
          <div class="col-md-5 ml-auto img-overlap">
            <div class="img-1"><img src="../../../frontend/web/img/aboutus/zhou.jpg" alt="Image" class="img-fluid img-shadow"></div>
            <div class="img-2"><img src="../../../frontend/web/img/aboutus/mz.jpg" alt="Image" class="img-fluid img-shadow"></div>
          </div>
        </div>

        <div class="row pb-0 border-top pt-5 block__19738 section-counter">

          <div class="col-6 col-md-6 col-lg-3 mb-5 mb-lg-0">
            <div class="d-flex align-items-center justify-content-center mb-2">
              <span class="icon-line-mobile mr-3"></span>
              <strong class="number" data-number="142844">0</strong>
            </div>
            <span class="caption">Lines of Codes</span>
          </div>

          <div class="col-6 col-md-6 col-lg-3 mb-5 mb-lg-0">
            <div class="d-flex align-items-center justify-content-center mb-2">
              <span class="icon-line-lightbulb mr-3"></span>
              <strong class="number" data-number="144">0</strong>
            </div>
            <span class="caption">Commits</span>
          </div>

          <div class="col-6 col-md-6 col-lg-3 mb-5 mb-lg-0">
            <div class="d-flex align-items-center justify-content-center mb-2">
              <span class="icon-line-trophy mr-3"></span>
              <strong class="number" data-number="9">0</strong>
            </div>
            <span class="caption">Days Running</span>
          </div>

          <div class="col-6 col-md-6 col-lg-3 mb-5 mb-lg-0">
            <div class="d-flex align-items-center justify-content-center mb-2">
              <span class="icon-line-puzzle mr-3"></span>
              <strong class="number" data-number="4">0</strong>
            </div>
            <span class="caption">Meetings</span>
          </div>


        </div>

      </div>
    </section>
    
    <section class="site-section">
      <div class="container">
        <div class="row mb-5">
          <div class="col-12 text-center" data-aos="fade">
            <h3 class="section-title-sub text-primary">Our Team</h3>
            <h2 class="section-title mb-3">小组信息介绍</h2>
          </div>
        </div>

        <div class="row align-items-center block__69944">
          <div class="col-lg-6 mb-5">
            <img src="../../../frontend/web/img/aboutus/Person_01.jpg" alt="Image" class="img-fluid mb-4 rounded" height="300" width="300">

            <h3>李威远</h3>
            <p class="text-muted">组长</p>
            <p class="lead">领队分工、页面设计、前后端对接、数据可视化实现</p >
            <p>我是绫地宁宁的狗</p >
            <div class="social mt-4">
              <a href="https://github.com/lll1230127" target="_blank"><span class="icon-github"></span></a>
              <a href="mailto:3428862097@qq.com" target="_blank"><span class="icon-envelope-o"></span></a>
              <a href="https://cc.nankai.edu.cn/" target="_blank"><span class="icon-institution"></span></a>
            </div>

          </div>
          <div class="col-lg-6 mb-5">
            <img src="../../../frontend/web/img/aboutus/Person_02.jpg" alt="Image" class="img-fluid mb-4 rounded" height="300" width="300">
            <h3>李秉睿</h3>
            <p class="text-muted">组员</p>
            <p class="lead">数据库设计和部分数据处理，新闻、研究、联系等界面设计和编写</p>
            <p>千首古风吟子美，一身新月种丁香</p>
            <div class="social mt-4">
              <a href="https://github.com/U0Ghost" target="_blank"><span class="icon-github"></span></a>
              <a href="mailto:2113087@mail.nankai.edu.cn" target="_blank"><span class="icon-envelope-o"></span></a>
              <a href="https://cc.nankai.edu.cn/" target="_blank"><span class="icon-institution"></span></a>
            </div>
          </div>


          <div class="col-lg-6 mb-5">
            <img src="../../../frontend/web/img/aboutus/Person_03.jpg" alt="Image" class="img-fluid mb-4 rounded" height="300" width="300">

            <h3>郭昱杰</h3>
            <p class="text-muted">组员</p>
            <p class="lead">博客及评论模块的数据处理、后端设计、前端界面编写</p>
            <p>作业快点结束QwQ</p>
            <div class="social mt-4">
              <a href="https://github.com/JieJie-OvO" target="_blank"><span class="icon-github"></span></a>
              <a href="mailto:2111066@mail.nankai.edu.cn" target="_blank"><span class="icon-envelope-o"></span></a>
              <a href="https://cc.nankai.edu.cn/" target="_blank"><span class="icon-institution"></span></a>
            </div>

          </div>
          <div class="col-lg-6 mb-5">
            <img src="../../../frontend/web/img/aboutus/Person_04.jpg" alt="Image" class="img-fluid mb-4 rounded" height="300" width="300">
            <h3>刘国民</h3>
            <p class="text-muted">组员</p>
            <p class="lead">视频页面的整体框架、后台对视频的增删改查</p>
            <p>好想睡觉、、</p>
            <div class="social mt-4">
              <a href="https://github.com/NKU-liu1114" target="_blank"><span class="icon-github"></span></a>
              <a href="mailto:1287190042@qq.com" target="_blank"><span class="icon-envelope-o"></span></a>
              <a href="https://cc.nankai.edu.cn/" target="_blank"><span class="icon-institution"></span></a>
            </div>
          </div>

        </div>


      </div>
    </section>

    <div class="container">
      <div class="row mb-5">
        <div class="col-12 text-center" data-aos="fade">
          <a name="contactformanchor"></a>
          <h3 class="section-title-sub text-primary">Contact Us</h3>
          <h2 class="section-title mb-3">联系我们</h2>
        </div>
      </div>
      <section class="site-section" id="next-section">
        <div class="container">
          <div class="row">
            <div class="col-lg-6 mb-5 mb-lg-0">
              <form action="#" class="">

                <div class="col-lg-12">
                  <?php $form = ActiveForm::begin(['id' => 'contact-form']); ?>
                  <?= $form->field($model, 'firstname') ?> 
                  <?= $form->field($model, 'lastname') ?>
                  <?= $form->field($model, 'sex')->radioList(['1' => 'Male', '0' => 'Female']) ?>
                  <?= $form->field($model, 'wechatid') ?>
                  <?= $form->field($model, 'phone') ?>
                  <?= $form->field($model, 'message')->textarea(['rows' => 7])->hint('Please enter your message') ?>
                  <div class="form-group">
                    <div class="social mt-4">
                      <?= Html::submitButton('Send', ['class' => 'btn btn-primary', 'name' => 'contact-button']) ?>
                    </div>

                  </div>
                </div>


              </form>
            </div>
            <div class="col-lg-5 ml-auto">
              <div class="p-4 mb-3 bg-white">
                <p class="mb-0 font-weight-bold">地址</p>
                <p class="mb-4">中国天津市津南区同砚路38号南开大学津南校区</p>


                <p class="mb-0 font-weight-bold">邮箱</p>
                <p class="mb-0"><a href="mailto:3428862097@qq.com">3428862097@qq.com</a></p>
                <p> &nbsp; </p>
                <p> &nbsp; </p>
                <p> &nbsp; </p>
                <p> &nbsp; </p>
                <p> &nbsp; </p>
                <p> &nbsp; </p>
                <img src="../../../frontend/web/img/aboutus/jinnan.jpg" alt="Image" class="img-fluid mb-4 rounded"> </a>


              </div>
            </div>
          </div>
        </div>
      </section>


    </div>


</body>

</html>