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
			<h1><span>放射性损伤的主要症状</span></h1>
			<p> </p>
			<p> 大剂量电离辐射可导致急性发病，出现造血功能减低以及消化道损害。</p>
			<p>	大剂量电离辐射也可损伤心脏和血管（心血管系统），脑部以及皮肤。</p>
			<p>	大剂量和超大剂量放射损伤被称作组织反应，导致明显可见的组织损伤所需放射剂量因组织类型不同而有所差别。</p>
			<p>	电离辐射可增加罹患癌症的风险。</p>
			<p>	精液和卵细胞放射暴露会导致子代基因缺陷的风险略有增加。</p>
			<p> </p>
			<h1><span>抗放治疗</span></h1>
			<p> </p>
			<p> 抗放药是指在受照前给药和受照后早期给药都可减轻放射损伤的一类药物，对轻中度急性放射病效果较好。</p>
			<p> 抗放药物可分为含硫类、胺类、雌激素和皮质类固醇、中草药等。</p>
			<p> 常用的包括:①氨磷汀，是国内外公认的抗辐射作用较强的含硫类抗放药，但治疗时间窗窄，存在不良反应; ②半胱氨酸，适用于皮下注射，口服无效。我国放射医学工作者经过近30年的协作研究，提出了可供人体应用的辐射损伤防治药物“500”“523”“408”，对核辐射损伤早期应用具有保护效果。</p>
			<p> </p>
			<h1><span>治疗方法</span></h1>
			<p> </p>
			<p> 世界卫生组织在2023年更新了为应对辐射和核突发事件储备的药物清单，以及适当管理这些药物的政策建议。这些库存包括预防或减少辐射暴露的药物，或在发生暴露后治疗损伤的药物。详细文档见<a href="https://iris.who.int/bitstream/handle/10665/365681/9789240067875-eng.pdf?sequence=1" target="_blank">这里。</a></p>
			<p> 各国政府必须做好准备，保护民众的健康，并立即应对突发事件。包括要有现成的救命药物供应，以降低风险并治疗辐射造成的伤害。</p>
			<p> </p>
		</div>
	</div>
	<script type="text/javascript" src="../../../frontend/web/js/canvas-nest.min.js"></script>
	<script type="text/javascript" src="../../../frontend/web/js/emojiCursor.js"></script>
</body>

</html>