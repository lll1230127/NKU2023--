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
			<h1><span>什么是核辐射？</span></h1>
			<p> </p>
			<p>核辐射是指在原子的核反应过程中如裂变、衰变释放出的不同能量粒子和电磁辐射,其作用于物质可引起电离和激发，由此产生生物学效应，故属于电离辐射。</p>
			<p>这其中就包含了四种主要的辐射类型，α粒子、β粒子、γ射线和中子。</p>
			<p>其中α粒子即氦核，是由两个带正电的质子和两个中性的中子组成。</p>
			<p>β粒子就是高能的正电子流或者负电子流。</p>
			<p>而γ射线是一种能量比较高的电磁波，有着很强的穿透性。</p>
			<p> </p>
			<h1><span>核辐射从什么途径影响人体？</span></h1>
			<p> </p>
			<p>无论是核武器爆炸、核电站事故核泄漏还是遭受核恐怖袭击，人员受到核辐射途径可以是体外放射源的照射即外照射，也可以是放射性核素进入人体内产生的内照射。</p>
			<p>外照射途径：直接来自放射源或装置放射性沾染的皮肤或衣物扩散性放射性烟羽，环境放射性沾染残留物，放射性污染的日用消费品。</p>
			<p>内照射途径：放射性核素(烟羽、扬尘)经呼吸道吸入，污染的食品和水源经消化道摄入，经皮肤或伤口的吸收等。</p>
			<p> </p>
			<h1><span>核辐射有什么危害？</span></h1>
			<p> </p>
			<p>1.直接影响人体健康</p>
			<p>核辐射通过电离作用损伤组织，根据受照射的剂量、时间、距离、屏蔽条件及个体因素的不同，导致受照射人员发生急、慢性核辐射性损伤、胚胎与胎儿的损伤等等。</p>
			<p>2.广泛且长远的影响周边环境</p>
			<p>核辐射事故释放的大量放射性物质可污染大气、水源、土壤、食品、器具等，且环境中的核辐射具有长远的生物效应和累积效应，不但通过外照射直接作用于人体引起放射性疾病，而且通过污染空气、水和食物造成内照射损伤人体组织器官，影响几代人的健康。</p>
			<p>3.严重影响社会心理</p>
			<p>由于核辐射具有远后效应、致癌效应和遗传效应，在受到照射之后，通常会产生未知的心理恐惧、引发心理紊乱。其次核辐射发生后的社会舆论等会引起公众的恐慌、甚至社会动荡（如2011年的抢盐事件）。</p>
			<p> </p>
			<h1><span>核辐射真的有这么恐怖吗？</span></h1>
			<p> </p>
			<p>其实不然。人工核辐射在工业、医疗、农业、军事、航空航天、能源等领域已经有了越来越广泛的应用，从放射性诊断、放射性治疗药品到地铁机场的安检仪、食品辐照保藏技术等，核辐射的应用与我们的日常生活息息相关。</p>
			<p>当前我国的辐射相关的条例、应急措施、法律法规十分完善，辐射防护也处在世界前列。辐射也没有大家想象的那么可怕，正确认识和使用规定剂量核辐射，才能真正推动人类社会的发展。</p>
			<p> </p>
		</div>
	</div>
	<script type="text/javascript" src="../../../frontend/web/js/canvas-nest.min.js"></script>　　
	<script type="text/javascript" src="../../../frontend/web/js/emojiCursor.js"></script>　
</body>

</html>