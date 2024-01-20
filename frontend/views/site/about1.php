<?php

/* @var $this yii\web\View */
/**
*  team : LLLG队 
*  Coding by : 李威远
*  完成了科普页面设计
 */

use yii\helpers\Html;


$this->title = 'About';
$this->params['breadcrumbs'][] = $this->title;


?>

<?php echo Html::cssFile('@web/css/default.css'); ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html>

<head>
	<meta charset='UTF-8'>
	<style>
		* {
			margin: 0;
			padding: 0;
		}

		.box {
			position: relative;
			width: 1300px;
			height: 640px;
			/*框在页面里的位置*/
			border: 10px solid rgb(250, 252, 253);
			margin: 0px auto;
			background-repeat: no-repeat;
			overflow: hidden;
			background-size: 50%;
			z-index: 0;
		}

		/*.box img{
			width: 900px;
			height: 340px;
		}*/
		#pic {
			width: 1300px;
			height: 640px;
			background-repeat: no-repeat;
			background-size: 100% 100%;
		}

		.btn1 {
			position: relative;
			width: 100px;
			height: 35px;
			left: 35.7%;
			top: 45%;
			-webkit-transition-duration: 0.4s;
			transition-duration: 0.4s;
			text-align: center;
			background-color: white;
			color: black;
			border: 2px solid rgb(135, 135, 135);
			border-radius: 5px;
			z-index: 2;
		}

		.btn1:hover {
			background-color: rgb(135, 135, 135);
			color: white;
		}
	</style>
</head>

<head>
	<meta charset='UTF-8'>
	<meta http-equiv="content-type" content="text/html; charset=iso-8859-1" />
	<meta name="description" content="description" />
	<meta name="keywords" content="keywords" />
	<meta name="author" content="Arcsin, www.arcsin.se" />
	<link rel="stylesheet" type="text/css" href="default.css" />
	<title>核辐射资料站</title>
</head>

<body>
	<div class="box">
		<img id="pic" src="../../../frontend/web/img/0.jpg" />
	</div>
	<div>
		<input type="button" class="btn1" value="上一张" />
		<input type="button" class="btn1" value="下一张" />
	</div>
	<script>
		var pic = document.getElementById("pic");
		var preBtn = document.getElementsByClassName("btn1")[0];
		var nextBtn = document.getElementsByClassName("btn1")[1];
		//			
		preBtn.onclick = function() {
			n--;
			if (n == -1) {
				n = 6;
			}
			pic.src = "../../../frontend/web/img/" + n + ".jpg"
		}
		nextBtn.onclick = function() {
			picLunH();
		}
		var n = 1;

		function picLunH() {
			n++;
			if (n == 7) {
				n = 0;
			}
			pic.src = "../../../frontend/web/img/" + n + ".jpg"

		}
		setInterval(picLunH, 3000);
	</script>
	<div class="main">
		<div class="header_left">
			<div class="menu">
				<div class="gfx_nav"><span></span></div>
				<a href="../../../frontend/web/site/about"><span>01</span> 简介</a>
				<a href="../../../frontend/web/site/about1"><span>02</span> 保护</a>
				<a href="../../../frontend/web/site/about2"><span>03</span> 治疗</a>
			</div>
			<a href="../../../frontend/web/site/about" id="big">核辐射资料站</a>
		</div>
		<div class="content">
		<h1><span>自然界存在的天然辐射</span></h1>
			<p> </p>
			<p> 天然辐射无处不在,食物、房屋、天空、大地、山水草木乃至人们体内都存在着放射性照射。</p>
			<p> 其中平均每人每年受到的天然放射性剂量为2.4毫希沃特。</p>
			<p> 来自宇宙射线的为0.4毫希沃特。</p>
			<p> 来自地面γ射线的为0.5毫希沃特。</p>
			<p> 吸入(主要是室内氡)产生的为1.2毫希沃特。</p>
			<p> 食入为0.3毫希沃特。</p>
			<p> </p>
		<h1><span>日常生活中，会接触到放射性辐射的活动</span></h1>
			<p> 我们的很多活动都会接触放射性。</p>
			<p> 例如:</p>
			<p> 我们摄入空气、食物、水造成的辐射照射剂量每年约为1.5毫希沃特</p>
			<p> 乘飞机旅行2000千米约为0.01毫希沃特</p>
			<p> 每天抽20支烟，每年约为0.5~ 1.0毫希沃特</p>
			<p>一次X光检查约为0.1毫希沃特等等。</p>
			<p> </p>
		<h1><span>如果在核事故辐射影响的地区，公众该怎么保护自己？</span></h1>
			<p> </p>
			<p>1.要遵循的首要三个主要原则是待在室内、保持关注和遵循指示。请始终遵循国家或地方政府的安全指示，并保持联系以获得最新信息。如果被告知待在室内，请按要求立即去做，因为墙壁和天花板可以保护免受室外放射性沉降物的伤害。如果可能，待在没有窗户和外门的房间里，关上窗户，关掉室内的通风系统（空调或暖气）。</p>
			<p>2.尽量避免裸露的皮肤暴露在外，受污染的外套及时更换并密封标记后放在偏僻处，并及时淋浴清洗，换上干净的衣物。</p>
			<p>3.避免食用和饮用核事故区污染的水和食物，将没有密封的食物清洗后在放入密封容器内。不应该在预期将发生事件时将碘化钾作为一种一般性保护措施，只有在公共卫生主管部门做出明确指示的情况下，才应服用碘化钾片剂。</p>
			<p>4.保持良好的心态，切勿惶恐，保持一切通讯手段获得可信的地方政府发布信息，切勿轻信谣言和传播谣言。</p>
			<p> </p>
		
		</div>
	</div>
	<script type="text/javascript" src="../../../frontend/web/js/canvas-nest.min.js"></script>　　
	<script type="text/javascript" src="../../../frontend/web/js/emojiCursor.js"></script>　
</body>

</html>