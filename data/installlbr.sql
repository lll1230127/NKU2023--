/*
Navicat MySQL Data Transfer

Source Server         : 91
Source Server Version : 50728
Source Host           : 49.233.130.58:3306
Source Database       : covid19

Target Server Type    : MYSQL
Target Server Version : 50728
File Encoding         : 65001

Date: 2020-06-14 10:22:26
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `article`
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `content` text,
  `date` date DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `viewed` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`) USING BTREE,
  KEY `fk-article-user_id` (`created_by`),
  FULLTEXT KEY `title` (`title`,`description`),
  CONSTRAINT `fk-article-user_id` FOREIGN KEY (`created_by`) REFERENCES `user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES ('6', '环球同此凉热——中国留学生抗疫日记', '<p>随着疫情在全球范围内的持续蔓延，140万留学海外的中国学子备受牵挂。</p>\r\n\r\n<p>近日，第一批为意大利、韩国、日本、法国、德国、美国、英国、俄罗斯等20个国家中国留学生准备的50多万份&ldquo;健康包&rdquo;已经配发到位；与此同时，多支医疗队、工作组专程前往海外为境外中国留学生提供科学专业的疫情防控指导&hellip;&hellip;</p>\r\n\r\n<p>疫情面前，祖国没有忘记每一个身在海外的留学生。</p>\r\n', '<p><strong>出行计划被打乱 宅生活成为主题</strong></p>\r\n\r\n<p>我原本制定了春假去加州的旅行计划，但随着加州成为美国疫情的重灾区，不得不取消期待已久的春假旅行。身边很多人也被迫放弃了出行计划，在家中度过春假的一周。餐厅、酒吧等公共娱乐场所被迫关闭，美国民众的娱乐活动、宗教活动、婚礼也都改为线上举行。三四月是美国总统大选在各州初选的日子，但很多州取消了聚集的票亭投票，改为线上通过邮件进行投票。</p>\r\n\r\n<p>三月末到四月初是华盛顿的樱花节，每年此时，樱花沿华盛顿国家公园一路争相绽放。在宪法大道、潮汐湖和国家广场，人们参加樱花节大游行，和家人朋友共赏樱花，休闲野餐。然而，今年的樱花节是另一番景象。空荡的大道和公园，只有零星跑步的人，缺少了观众的樱花开了又谢。为了安全考虑，我和朋友们也取消了初春踏青赏花的计划。华盛顿初春的樱花，也许只能明年再见了。</p>\r\n\r\n<p><strong>屯物资&ldquo;打持久战&rdquo; 留学生&ldquo;苦中作乐&rdquo;</strong></p>\r\n\r\n<p>为了减少与人的接触，我们的生活必需品一般通过超市定购，之后送货上门。美国的超市正常营业，但是货物时有短缺。因定购及外送需求过多，有些超市只会定时开放，而非全天。我们的订单经常因缺货而被替换或取消。亚马逊已经雇佣超过平时两倍的外送员以满足激增的外送需求。但总体来说，食品能够满足日常生活需求。&ldquo;中国超市&rdquo;也有大量存货，还能买到很多家乡的美味。疫情期间，卫生用品依旧短缺。早在疫情在美国爆发前夕，N95口罩就严重缺货，出现过在一些平台被炒到天价的现象。其他卫生用品诸如厨纸、厕纸、洗手液、消毒湿巾、消毒喷雾等，都存在大量缺口，数量不能满足人们激增的需求，至今无法正常购买。我们在早些时候囤了米、面、蛋、奶、冷冻蔬菜、冷冻水果、矿泉水、维生素等食品和日常用品，为抗疫的持久战做好了充分的准备。</p>\r\n\r\n<p>宅在家的生活虽然单一，但是留学生也&ldquo;苦中作乐&rdquo;。很多同学利用宅在家的时间发展起了爱好，有的变身&ldquo;大厨&rdquo;，有的变身&ldquo;线上美妆博主&rdquo;或&ldquo;线上自习博主&rdquo;，有的变身&ldquo;游戏王&rdquo;......学校的中国留学生会举办了线上歌手大赛、厨艺大赛等活动，帮助大家调剂单调的生活。</p>\r\n\r\n<p><strong>学校线上授课 师生共渡难关</strong></p>\r\n\r\n<p>美国很多州的学校都进行了停课封校，改为线上教学。近日，部分学校甚至考虑将停课延续到2021学年。约翰斯霍普金斯大学自3月11日起改为在线授课，春季学期毕业典礼也改为线上举行。</p>\r\n\r\n<p>为了帮助自我隔离的学生及出现轻微症状的学生更好地兼顾学习与身体健康，学院将打分制由曾经的字母制改为单一的通过/不通过。学校关闭了图书馆、自习室和研讨室、教师办公室，包括国际学生处和学生事业发展中心在内的重要学生工作办公室全部改为线上办公。学校原定的学术讲座、主题论坛、参观游览等一系列活动被迫取消或改为线上进行。</p>\r\n\r\n<p>对于病情诊断，学校也为学生提供了相应的医疗资源。如果在校学生感到不适或出现症状，可以联系学校医院与福利中心进行预约和诊断，医保将报销检测费用。我们担心疫情会持续太久，学习和实习会受影响，留学签证或受限制。但是校长发了很暖心的邮件，感谢全体教师和学生在疫情中体现的毅力、团结和配合，并向大家通报学校医学团队对于疫情检测、试剂研发、免疫及特效药研究等工作的进展，为大家加油打气，鼓励我们继续坚持，共渡难关。</p>\r\n\r\n<p><strong>收到健康包 祖国是最坚强的后盾</strong></p>\r\n\r\n<p>这场与疫情的抗争中，我们不是孤军奋战。3月18日，中国驻美大使崔天凯与在美留学生代表谈心。崔大使回答了留学生代表关心的问题，就疫情期间留学生是否选择回国给出了建议。他表示，如果真的发现有哪一位同学新冠测出来是阳性，请马上跟使馆或总领馆联系，同时到当地医院去就医。崔大使给予留学生们信心，表示使馆会不遗余力保护留学生的生命安全和身体健康，并鼓励留学生们将来挑起祖国发展建设的重担。在抗疫期间，崔大使的谈话无疑为在美留学生们提供了一颗定心丸，之前对于疫情的茫然与恐惧都随之消解了大半。</p>\r\n\r\n<p>四月初，国家向海外留学人员调配50万份&ldquo;健康包&rdquo;。中国驻美大使馆及领馆通过各学校的中国留学生会，为在校留学生发放抗疫物资，与广大留学人员共克时艰。四月中旬，我和周边公寓的同学陆续收到了来自祖国的健康包，感受到来自祖国的温暖。不仅仅是美国，我在世界各地的留学生朋友也都收到了这份来自祖国的温暖。</p>\r\n\r\n<p>祖国是我们最坚强的后盾，也是我们最强大的底气。不论何时，我们都会记得，祖国与我们同在。我们期待着疫情早点过去，期待世界早日回归正轨。</p>\r\n', '2020-06-07', 'a686cd4e8f29b3c35d6bdbf75a364c5f.jpg', '11', '2', '1', '1');
INSERT INTO `article` VALUES ('7', '武汉环卫工高上元的抗疫日记——“我只是做了应该做的事”', '<p>戴着一顶棕色鸭舌帽，身穿橙色工作服，骑着一辆电动清洁三轮车。最近，在武汉市武昌区友谊大道，负责这里清洁的环卫工人高上元又回来了。两个多月前，他每天在武昌方舱医院的病区做保洁、消毒和垃圾清运。</p>\r\n\r\n<p>高上元今年53岁，是武汉市城管委二桥清洁队的环卫工人，在方舱医院的34天里，平时习惯写工作记录的他，用日记记录下了自己参与抗疫的点滴。</p>\r\n', '<p><strong>&ldquo;很荣幸成为一名方舱志愿者&rdquo;</strong></p>\r\n\r\n<p>2月6日上午，高上元在工作调度群看到通知：洪山体育馆方舱医院需要志愿者做保洁。&ldquo;收到！&rdquo;高上元第一时间报名。</p>\r\n\r\n<p>&ldquo;今天上午10点，接到队长的电话通知，下午5点在队里集合，前往方舱医院，很荣幸成为一名方舱志愿者，终于可以为抗击疫情做点自己力所能及的事情，心情有点小激动。&rdquo;</p>\r\n\r\n<p>在当天的日记里，高上元写了这么一段话。可是激动归激动，凌晨两点，高上元进入方舱医院后就有些惊讶：&ldquo;这里从2月5日开始收治患者，由于缺少保洁，地上很多垃圾。&rdquo;</p>\r\n\r\n<p>为了保证垃圾无害化处理更方便，不污染医院外场的环境，高上元在清扫时更加小心。到第二天上午7点，高上元和清洁队才完成两个病区的清洁。</p>\r\n\r\n<p>&ldquo;今天工作比前两天顺手了很多，但还是觉得好累。身上被防护服裹得严严实实，一动就出汗，呼出的气把防护镜也弄糊了，看不清前面的路，防护服里面的衣服也全部湿透了。&rdquo;</p>\r\n\r\n<p>2月8日，进入方舱医院第三天，高上元写了抗击疫情过程的艰辛。&ldquo;我们每天工作结束后，衣服可以拧出水，这一点都不夸张。&rdquo;高上元说，他有腰间盘突出、糖尿病、肩周炎等疾病，每天多次弯腰、抬手，身体有时也吃不消。</p>\r\n\r\n<p>熟悉了方舱医院的清洁环境，高上元也慢慢总结出一些工作技巧。他请医护人员在发药的时候，给每名需要的患者提供一个垃圾袋。&ldquo;患者将自己的生活垃圾打包好，我们直接去提，这样就能节省清扫的时间。患者很配合我们的工作，能得到患者的理解，我就觉得自己做的事情有价值。&rdquo;高上元说。</p>\r\n\r\n<p><strong>&ldquo;在一线奉献自己微薄的力量&rdquo;</strong></p>\r\n\r\n<p>在报名进入方舱医院前，高上元并没有告诉儿子，直到2月9日，他发自己在方舱医院里的朋友圈，才被儿子知晓。</p>\r\n\r\n<p>&ldquo;儿子今天给我打来电话，我没接。等我给他回过去的时候，这小子竟然在电话那头哭了起来。他怕我出事，埋怨我不该瞒着他偷偷来当志愿者，他说他也想来当志愿者，父子俩在一起有个照应。&rdquo;</p>\r\n\r\n<p>2月11日，高上元在日记写道，为了让儿子放心，他保证每天给儿子报平安。高上元说，那段时间，他每天会在晚上10点左右与儿子视频通话。&ldquo;2009年妻子因车祸去世之后，我就独自一人把10岁的儿子拉扯大，现在我们的感情很好。&rdquo;谈到现在已经工作的儿子，高上元倍感欣慰。</p>\r\n\r\n<p>在方舱医院的日子里，高上元每天牵挂着儿子，也经常会想起去世的妻子。每当想起她时，高上元就把思念写在日记里：</p>\r\n\r\n<p>&ldquo;此时此刻，我很想念老婆。&rdquo;</p>\r\n\r\n<p>&ldquo;老婆，今天你离开我和孩子整整11年了，在梦里总想看看你，你还好吗？孩子长得比我还高，也很乖，很听话，很懂事。我们有那么多的不舍，现在只能在回忆中想念你的模样，想念曾经我们美好的日子。&rdquo;</p>\r\n\r\n<p>&ldquo;今年武汉的疫情很严峻，我身体很好，现在在一线奉献自己微薄的力量。&rdquo;&hellip;&hellip;</p>\r\n\r\n<p><strong>&ldquo;这些奖励不是我一个人的&rdquo;</strong></p>\r\n\r\n<p>2月20日，在阿里巴巴天天正能量评选活动中，高上元获得&ldquo;战疫英雄奖&rdquo;，并得到奖励1万元。知道消息后，高上元在日记里写下：&ldquo;我只是做了应该做的事。&rdquo;</p>\r\n\r\n<p>谈起一些荣誉，高上元说，能作为清洁队员的代表领取荣誉，很受鼓舞，&ldquo;这些奖励不是我一个人的，是所有清洁队员共同努力的结果。&rdquo;</p>\r\n\r\n<p>其实，高上元一个月的工资也只有2000多元。妻子去世后，除了儿子，高上元还要照顾母亲。他就和单位请求，每天多上半个班，这样每个月能多拿些工资。</p>\r\n\r\n<p>从那时起，高上元每天清晨4点就开始上班，下午5点下班，每周休息一天。虽然辛苦，但是高上元很乐观：&ldquo;我已经习惯了，靠自己的双手踏实工作，我现在也挺满足的。&rdquo;</p>\r\n\r\n<p>3月14日，结束方舱医院的工作后，高上元在隔离宾馆收到了辽宁支援湖北医疗队队员王海旭医生的微信：&ldquo;在我看来，不管是医护人员，还是保洁等保障人员，只要在抗疫一线，我们都是战友，只是分工不同。&rdquo;</p>\r\n\r\n<p>&ldquo;我当时感到很意外。&rdquo;高上元说，这表明自己抗击疫情做的工作得到了大家的认可。回完消息后，高上元又开始写当天的日记：&ldquo;回想起与方舱医院里的医护人员们一起并肩作战的日子，都是那么有意义，很感谢这些支援我们武汉的医护人员，他们是真正的英雄。&rdquo;</p>\r\n', '2020-06-07', '1e9b603769abced9924c1c3d7dfaf316.jpg', '1', '2', '1', '1');

-- ----------------------------
-- Table structure for `article_tag`
-- ----------------------------
DROP TABLE IF EXISTS `article_tag`;
CREATE TABLE `article_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) DEFAULT NULL,
  `tag_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tag_article_article_id` (`article_id`),
  KEY `idx_tag_id` (`tag_id`),
  CONSTRAINT `fk-tag_id` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`id`) ON DELETE CASCADE,
  CONSTRAINT `tag_article_article_id` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of article_tag
-- ----------------------------

-- ----------------------------
-- Table structure for `category`
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('1', '抗疫日记');

-- ----------------------------
-- Table structure for `comment`
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `article_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `video_id` varchar(16) DEFAULT 'null',
  `password` varchar(20) DEFAULT 'pass123',
  PRIMARY KEY (`id`),
  KEY `idx-post-user_id` (`user_id`),
  KEY `idx-article_id` (`article_id`),
  CONSTRAINT `fk-post-user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('1', 'lol', '2', '2', '1', '2020-05-09', 'null', 'pass123');
INSERT INTO `comment` VALUES ('2', 'soom', '2', '2', '1', '2020-05-09', null, 'pass123');
INSERT INTO `comment` VALUES ('4', 'hello\r\n', '2', '2', '1', '2020-05-09', null, 'pass123');
INSERT INTO `comment` VALUES ('5', 'hello', '2', null, '1', '2020-05-09', null, 'pass123');
INSERT INTO `comment` VALUES ('6', 'a', '2', '2', '1', '2020-05-09', 'null', 'pass123');
INSERT INTO `comment` VALUES ('7', 'lala', '2', '2', '1', '2020-05-09', 'null', 'pass123');
INSERT INTO `comment` VALUES ('8', 'kk', '4', '2', '1', '2020-05-09', 'null', 'pass123');
INSERT INTO `comment` VALUES ('13', 'kk', '2', '0', '1', '2020-05-09', 'ECR47F1S', 'pass123');
INSERT INTO `comment` VALUES ('14', 'video', '2', '0', '1', '2020-05-09', 'ECR47F1S', 'pass123');
INSERT INTO `comment` VALUES ('15', 'videoagin', '2', null, '1', '2020-05-09', 'ECR47F1S', 'pass123');
INSERT INTO `comment` VALUES ('16', 'testing testing', '6', '3', '1', '2020-06-01', 'null', 'pass123');
INSERT INTO `comment` VALUES ('17', 'I\'ll be sure to be avoiding camels, bats, and pangolins and blow torch my steak and eggs in the morning.', '2', null, '1', '2020-06-07', 'PAnKGl9G', 'pass123');
INSERT INTO `comment` VALUES ('18', '加油', '2', '6', '1', '2020-06-07', 'null', 'pass123');

-- ----------------------------
-- Table structure for `contact_form`
-- ----------------------------
DROP TABLE IF EXISTS `contact_form`;
CREATE TABLE `contact_form` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `sex` tinyint(1) DEFAULT NULL,
  `wechatid` varchar(50) NOT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `message` varchar(255) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of contact_form
-- ----------------------------
INSERT INTO `contact_form` VALUES ('12', 'Tony', 'Stark', '1', 'iamironman', '159876-546-64', 'I think your web page is pretty good.');
INSERT INTO `contact_form` VALUES ('13', 'Tony', 'Stark', '1', 'iamironman', '159876-546-64', 'I think your web page is pretty good.');
INSERT INTO `contact_form` VALUES ('14', 'Steve', 'Rogers', '1', 'america', '157952-32468', 'Good job!');

-- ----------------------------
-- Table structure for `country`
-- ----------------------------
DROP TABLE IF EXISTS `country`;
CREATE TABLE `country` (
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`code`),
  UNIQUE KEY `country_code_idx` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of country
-- ----------------------------
INSERT INTO `country` VALUES ('AD', 'Andorra');
INSERT INTO `country` VALUES ('AE', 'United Arab Emirates');
INSERT INTO `country` VALUES ('AF', 'Afghanistan');
INSERT INTO `country` VALUES ('AG', 'Antigua and Barbuda');
INSERT INTO `country` VALUES ('AI', 'Anguilla');
INSERT INTO `country` VALUES ('AL', 'Albania');
INSERT INTO `country` VALUES ('AM', 'Armenia');
INSERT INTO `country` VALUES ('AO', 'Angola');
INSERT INTO `country` VALUES ('AQ', 'Antarctica');
INSERT INTO `country` VALUES ('AR', 'Argentina');
INSERT INTO `country` VALUES ('AS', 'American Samoa');
INSERT INTO `country` VALUES ('AT', 'Austria');
INSERT INTO `country` VALUES ('AU', 'Australia');
INSERT INTO `country` VALUES ('AW', 'Aruba');
INSERT INTO `country` VALUES ('AX', 'Åland Islands');
INSERT INTO `country` VALUES ('AZ', 'Azerbaijan');
INSERT INTO `country` VALUES ('BA', 'Bosnia and Herzegovina');
INSERT INTO `country` VALUES ('BB', 'Barbados');
INSERT INTO `country` VALUES ('BD', 'Bangladesh');
INSERT INTO `country` VALUES ('BE', 'Belgium');
INSERT INTO `country` VALUES ('BF', 'Burkina Faso');
INSERT INTO `country` VALUES ('BG', 'Bulgaria');
INSERT INTO `country` VALUES ('BH', 'Bahrain');
INSERT INTO `country` VALUES ('BI', 'Burundi');
INSERT INTO `country` VALUES ('BJ', 'Benin');
INSERT INTO `country` VALUES ('BL', 'Saint Barthélemy');
INSERT INTO `country` VALUES ('BM', 'Bermuda');
INSERT INTO `country` VALUES ('BN', 'Brunei Darussalam');
INSERT INTO `country` VALUES ('BO', 'Bolivia (Plurinational State of)');
INSERT INTO `country` VALUES ('BQ', 'Bonaire - Sint Eustatius and Saba');
INSERT INTO `country` VALUES ('BR', 'Brazil');
INSERT INTO `country` VALUES ('BS', 'Bahamas');
INSERT INTO `country` VALUES ('BT', 'Bhutan');
INSERT INTO `country` VALUES ('BV', 'Bouvet Island');
INSERT INTO `country` VALUES ('BW', 'Botswana');
INSERT INTO `country` VALUES ('BY', 'Belarus');
INSERT INTO `country` VALUES ('BZ', 'Belize');
INSERT INTO `country` VALUES ('CA', 'Canada');
INSERT INTO `country` VALUES ('CC', 'Cocos (Keeling) Islands');
INSERT INTO `country` VALUES ('CD', 'Democratic Republic of the Congo');
INSERT INTO `country` VALUES ('CF', 'Central African Republic');
INSERT INTO `country` VALUES ('CG', 'Congo');
INSERT INTO `country` VALUES ('CH', 'Switzerland');
INSERT INTO `country` VALUES ('CI', 'Côte d\'Ivoire');
INSERT INTO `country` VALUES ('CK', 'Cook Islands');
INSERT INTO `country` VALUES ('CL', 'Chile');
INSERT INTO `country` VALUES ('CM', 'Cameroon');
INSERT INTO `country` VALUES ('CN', 'China');
INSERT INTO `country` VALUES ('CO', 'Colombia');
INSERT INTO `country` VALUES ('CR', 'Costa Rica');
INSERT INTO `country` VALUES ('CU', 'Cuba');
INSERT INTO `country` VALUES ('CV', 'Cabo Verde');
INSERT INTO `country` VALUES ('CW', 'Curaçao');
INSERT INTO `country` VALUES ('CX', 'Christmas Island');
INSERT INTO `country` VALUES ('CY', 'Cyprus');
INSERT INTO `country` VALUES ('CZ', 'Czechia');
INSERT INTO `country` VALUES ('DE', 'Germany');
INSERT INTO `country` VALUES ('DJ', 'Djibouti');
INSERT INTO `country` VALUES ('DK', 'Denmark');
INSERT INTO `country` VALUES ('DM', 'Dominica');
INSERT INTO `country` VALUES ('DO', 'Dominican Republic');
INSERT INTO `country` VALUES ('DZ', 'Algeria');
INSERT INTO `country` VALUES ('EC', 'Ecuador');
INSERT INTO `country` VALUES ('EE', 'Estonia');
INSERT INTO `country` VALUES ('EG', 'Egypt');
INSERT INTO `country` VALUES ('EH', 'Western Sahara');
INSERT INTO `country` VALUES ('ER', 'Eritrea');
INSERT INTO `country` VALUES ('ES', 'Spain');
INSERT INTO `country` VALUES ('ET', 'Ethiopia');
INSERT INTO `country` VALUES ('FI', 'Finland');
INSERT INTO `country` VALUES ('FJ', 'Fiji');
INSERT INTO `country` VALUES ('FK', 'Falkland Islands (Malvinas)');
INSERT INTO `country` VALUES ('FM', 'Micronesia (Federated States of)');
INSERT INTO `country` VALUES ('FO', 'Faroe Islands');
INSERT INTO `country` VALUES ('FR', 'France');
INSERT INTO `country` VALUES ('GA', 'Gabon');
INSERT INTO `country` VALUES ('GB', 'United Kingdom of Great Britain and Northern Ireland');
INSERT INTO `country` VALUES ('GD', 'Grenada');
INSERT INTO `country` VALUES ('GE', 'Georgia');
INSERT INTO `country` VALUES ('GF', 'French Guiana');
INSERT INTO `country` VALUES ('GG', 'Guernsey');
INSERT INTO `country` VALUES ('GH', 'Ghana');
INSERT INTO `country` VALUES ('GI', 'Gibraltar');
INSERT INTO `country` VALUES ('GL', 'Greenland');
INSERT INTO `country` VALUES ('GM', 'Gambia');
INSERT INTO `country` VALUES ('GN', 'Guinea');
INSERT INTO `country` VALUES ('GP', 'Guadeloupe');
INSERT INTO `country` VALUES ('GQ', 'Equatorial Guinea');
INSERT INTO `country` VALUES ('GR', 'Greece');
INSERT INTO `country` VALUES ('GS', 'South Georgia and the South Sandwich Islands');
INSERT INTO `country` VALUES ('GT', 'Guatemala');
INSERT INTO `country` VALUES ('GU', 'Guam');
INSERT INTO `country` VALUES ('GW', 'Guinea-Bissau');
INSERT INTO `country` VALUES ('GY', 'Guyana');
INSERT INTO `country` VALUES ('HK', 'China - Hong Kong Special Administrative Region');
INSERT INTO `country` VALUES ('HM', 'Heard Island and McDonald Islands');
INSERT INTO `country` VALUES ('HN', 'Honduras');
INSERT INTO `country` VALUES ('HR', 'Croatia');
INSERT INTO `country` VALUES ('HT', 'Haiti');
INSERT INTO `country` VALUES ('HU', 'Hungary');
INSERT INTO `country` VALUES ('ID', 'Indonesia');
INSERT INTO `country` VALUES ('IE', 'Ireland');
INSERT INTO `country` VALUES ('IL', 'Israel');
INSERT INTO `country` VALUES ('IM', 'Isle of Man');
INSERT INTO `country` VALUES ('IN', 'India');
INSERT INTO `country` VALUES ('IO', 'British Indian Ocean Territory');
INSERT INTO `country` VALUES ('IQ', 'Iraq');
INSERT INTO `country` VALUES ('IR', 'Iran (Islamic Republic of)');
INSERT INTO `country` VALUES ('IS', 'Iceland');
INSERT INTO `country` VALUES ('IT', 'Italy');
INSERT INTO `country` VALUES ('JE', 'Jersey');
INSERT INTO `country` VALUES ('JM', 'Jamaica');
INSERT INTO `country` VALUES ('JO', 'Jordan');
INSERT INTO `country` VALUES ('JP', 'Japan');
INSERT INTO `country` VALUES ('KE', 'Kenya');
INSERT INTO `country` VALUES ('KG', 'Kyrgyzstan');
INSERT INTO `country` VALUES ('KH', 'Cambodia');
INSERT INTO `country` VALUES ('KI', 'Kiribati');
INSERT INTO `country` VALUES ('KM', 'Comoros');
INSERT INTO `country` VALUES ('KN', 'Saint Kitts and Nevis');
INSERT INTO `country` VALUES ('KP', 'Democratic People\'s Republic of Korea');
INSERT INTO `country` VALUES ('KR', 'Republic of Korea');
INSERT INTO `country` VALUES ('KW', 'Kuwait');
INSERT INTO `country` VALUES ('KY', 'Cayman Islands');
INSERT INTO `country` VALUES ('KZ', 'Kazakhstan');
INSERT INTO `country` VALUES ('LA', 'Lao People\'s Democratic Republic');
INSERT INTO `country` VALUES ('LB', 'Lebanon');
INSERT INTO `country` VALUES ('LC', 'Saint Lucia');
INSERT INTO `country` VALUES ('LI', 'Liechtenstein');
INSERT INTO `country` VALUES ('LK', 'Sri Lanka');
INSERT INTO `country` VALUES ('LR', 'Liberia');
INSERT INTO `country` VALUES ('LS', 'Lesotho');
INSERT INTO `country` VALUES ('LT', 'Lithuania');
INSERT INTO `country` VALUES ('LU', 'Luxembourg');
INSERT INTO `country` VALUES ('LV', 'Latvia');
INSERT INTO `country` VALUES ('LY', 'Libya');
INSERT INTO `country` VALUES ('MA', 'Morocco');
INSERT INTO `country` VALUES ('MC', 'Monaco');
INSERT INTO `country` VALUES ('MD', 'Republic of Moldova');
INSERT INTO `country` VALUES ('ME', 'Montenegro');
INSERT INTO `country` VALUES ('MF', 'Saint Martin (French Part)');
INSERT INTO `country` VALUES ('MG', 'Madagascar');
INSERT INTO `country` VALUES ('MH', 'Marshall Islands');
INSERT INTO `country` VALUES ('MK', 'The former Yugoslav Republic of Macedonia');
INSERT INTO `country` VALUES ('ML', 'Mali');
INSERT INTO `country` VALUES ('MM', 'Myanmar');
INSERT INTO `country` VALUES ('MN', 'Mongolia');
INSERT INTO `country` VALUES ('MO', 'China - Macao Special Administrative Region');
INSERT INTO `country` VALUES ('MP', 'Northern Mariana Islands');
INSERT INTO `country` VALUES ('MQ', 'Martinique');
INSERT INTO `country` VALUES ('MR', 'Mauritania');
INSERT INTO `country` VALUES ('MS', 'Montserrat');
INSERT INTO `country` VALUES ('MT', 'Malta');
INSERT INTO `country` VALUES ('MU', 'Mauritius');
INSERT INTO `country` VALUES ('MV', 'Maldives');
INSERT INTO `country` VALUES ('MW', 'Malawi');
INSERT INTO `country` VALUES ('MX', 'Mexico');
INSERT INTO `country` VALUES ('MY', 'Malaysia');
INSERT INTO `country` VALUES ('MZ', 'Mozambique');
INSERT INTO `country` VALUES ('NA', 'Namibia');
INSERT INTO `country` VALUES ('NC', 'New Caledonia');
INSERT INTO `country` VALUES ('NE', 'Niger');
INSERT INTO `country` VALUES ('NF', 'Norfolk Island');
INSERT INTO `country` VALUES ('NG', 'Nigeria');
INSERT INTO `country` VALUES ('NI', 'Nicaragua');
INSERT INTO `country` VALUES ('NL', 'Netherlands');
INSERT INTO `country` VALUES ('NO', 'Norway');
INSERT INTO `country` VALUES ('NP', 'Nepal');
INSERT INTO `country` VALUES ('NR', 'Nauru');
INSERT INTO `country` VALUES ('NU', 'Niue');
INSERT INTO `country` VALUES ('NZ', 'New Zealand');
INSERT INTO `country` VALUES ('OM', 'Oman');
INSERT INTO `country` VALUES ('PA', 'Panama');
INSERT INTO `country` VALUES ('PE', 'Peru');
INSERT INTO `country` VALUES ('PF', 'French Polynesia');
INSERT INTO `country` VALUES ('PG', 'Papua New Guinea');
INSERT INTO `country` VALUES ('PH', 'Philippines');
INSERT INTO `country` VALUES ('PK', 'Pakistan');
INSERT INTO `country` VALUES ('PL', 'Poland');
INSERT INTO `country` VALUES ('PM', 'Saint Pierre and Miquelon');
INSERT INTO `country` VALUES ('PN', 'Pitcairn');
INSERT INTO `country` VALUES ('PR', 'Puerto Rico');
INSERT INTO `country` VALUES ('PS', 'State of Palestine');
INSERT INTO `country` VALUES ('PT', 'Portugal');
INSERT INTO `country` VALUES ('PW', 'Palau');
INSERT INTO `country` VALUES ('PY', 'Paraguay');
INSERT INTO `country` VALUES ('QA', 'Qatar');
INSERT INTO `country` VALUES ('RE', 'Réunion');
INSERT INTO `country` VALUES ('RO', 'Romania');
INSERT INTO `country` VALUES ('RS', 'Serbia');
INSERT INTO `country` VALUES ('RU', 'Russian Federation');
INSERT INTO `country` VALUES ('RW', 'Rwanda');
INSERT INTO `country` VALUES ('SA', 'Saudi Arabia');
INSERT INTO `country` VALUES ('SB', 'Solomon Islands');
INSERT INTO `country` VALUES ('SC', 'Seychelles');
INSERT INTO `country` VALUES ('SD', 'Sudan');
INSERT INTO `country` VALUES ('SE', 'Sweden');
INSERT INTO `country` VALUES ('SG', 'Singapore');
INSERT INTO `country` VALUES ('SH', 'Saint Helena');
INSERT INTO `country` VALUES ('SI', 'Slovenia');
INSERT INTO `country` VALUES ('SJ', 'Svalbard and Jan Mayen Islands');
INSERT INTO `country` VALUES ('SK', 'Slovakia');
INSERT INTO `country` VALUES ('SL', 'Sierra Leone');
INSERT INTO `country` VALUES ('SM', 'San Marino');
INSERT INTO `country` VALUES ('SN', 'Senegal');
INSERT INTO `country` VALUES ('SO', 'Somalia');
INSERT INTO `country` VALUES ('SR', 'Suriname');
INSERT INTO `country` VALUES ('SS', 'South Sudan');
INSERT INTO `country` VALUES ('ST', 'Sao Tome and Principe');
INSERT INTO `country` VALUES ('SV', 'El Salvador');
INSERT INTO `country` VALUES ('SX', 'Sint Maarten (Dutch part)');
INSERT INTO `country` VALUES ('SY', 'Syrian Arab Republic');
INSERT INTO `country` VALUES ('SZ', 'Swaziland');
INSERT INTO `country` VALUES ('TC', 'Turks and Caicos Islands');
INSERT INTO `country` VALUES ('TD', 'Chad');
INSERT INTO `country` VALUES ('TF', 'French Southern Territories');
INSERT INTO `country` VALUES ('TG', 'Togo');
INSERT INTO `country` VALUES ('TH', 'Thailand');
INSERT INTO `country` VALUES ('TJ', 'Tajikistan');
INSERT INTO `country` VALUES ('TK', 'Tokelau');
INSERT INTO `country` VALUES ('TL', 'Timor-Leste');
INSERT INTO `country` VALUES ('TM', 'Turkmenistan');
INSERT INTO `country` VALUES ('TN', 'Tunisia');
INSERT INTO `country` VALUES ('TO', 'Tonga');
INSERT INTO `country` VALUES ('TR', 'Turkey');
INSERT INTO `country` VALUES ('TT', 'Trinidad and Tobago');
INSERT INTO `country` VALUES ('TV', 'Tuvalu');
INSERT INTO `country` VALUES ('TW', 'Taiwan');
INSERT INTO `country` VALUES ('TZ', 'United Republic of Tanzania');
INSERT INTO `country` VALUES ('UA', 'Ukraine');
INSERT INTO `country` VALUES ('UG', 'Uganda');
INSERT INTO `country` VALUES ('UM', 'United States Minor Outlying Islands');
INSERT INTO `country` VALUES ('US', 'USA');
INSERT INTO `country` VALUES ('UY', 'Uruguay');
INSERT INTO `country` VALUES ('UZ', 'Uzbekistan');
INSERT INTO `country` VALUES ('VA', 'Holy See');
INSERT INTO `country` VALUES ('VC', 'Saint Vincent and the Grenadines');
INSERT INTO `country` VALUES ('VE', 'Venezuela (Bolivarian Republic of)');
INSERT INTO `country` VALUES ('VG', 'British Virgin Islands');
INSERT INTO `country` VALUES ('VI', 'United States Virgin Islands');
INSERT INTO `country` VALUES ('VN', 'Viet Nam');
INSERT INTO `country` VALUES ('VU', 'Vanuatu');
INSERT INTO `country` VALUES ('WF', 'Wallis and Futuna Islands');
INSERT INTO `country` VALUES ('WS', 'Samoa');
INSERT INTO `country` VALUES ('YE', 'Yemen');
INSERT INTO `country` VALUES ('YT', 'Mayotte');
INSERT INTO `country` VALUES ('ZA', 'South Africa');
INSERT INTO `country` VALUES ('ZM', 'Zambia');
INSERT INTO `country` VALUES ('ZW', 'Zimbabwe');

-- ----------------------------
-- Table structure for `cov_news`
-- ----------------------------
DROP TABLE IF EXISTS `cov_news`;
CREATE TABLE `cov_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pubDate` varchar(225) DEFAULT NULL,
  `title` varchar(225) DEFAULT NULL,
  `summary` varchar(2000) DEFAULT NULL,
  `infoSource` varchar(225) DEFAULT NULL,
  `sourceUrl` varchar(225) DEFAULT NULL,
  `image` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43733 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of cov_news
-- ----------------------------
INSERT INTO `cov_news` VALUES ('43700', '2023/11/20 15:40', '日本第三轮核污染水排海结束 累计排放量超2.3万吨', '据日本广播协会(NHK)当地时间20日报道，东京电力公司称，福岛第一核电站第三轮核污染水排海已于当天中午左右结束。\n　　本次排放自11月2日开始，总排放量为7753吨。第四轮排海预计将于明年年初开始，四次排放总排放量约为3.12万吨，目前已排放2.3351万吨。(央视新闻客户端 总台报道员 林博翰)', '中国新闻网', 'https://www.chinanews.com.cn/gj/2023/11-20/10114937.shtml', 'https://qnimg.zhaibian.com/upload/20220324/b3cdc893ddc6157bb3d15a2e2bb22d4e.jpg');
INSERT INTO `cov_news` VALUES ('43701', '2023/11/20 13:22', '国际热评：超2.3万吨核污水全部入海 日本，请住手！', '中新网11月20日电 (张奥林)11月20日，福岛核电站第三批次核污水排放结束，从8月24日正式开启排污，不到三个月的时间，已有超2.3万吨核污水流入太平洋。', '中国新闻网', 'https://www.chinanews.com.cn/gj/2023/11-20/10114844.shtml', 'https://k.sinaimg.cn/n/sjzx/crawl/85/w550h335/20210413/31dc-knqqqmv1007208.jpg/w700h350z1l10t10fd3.jpg');
INSERT INTO `cov_news` VALUES ('43702', '2023/11/17 17:04', '习近平会见日本首相岸田文雄', '中新社旧金山11月16日电 (记者 郭金超 梁晓辉)当地时间11月16日下午，中国国家主席习近平在旧金山会见日本首相岸田文雄。\n　　两国领导人重申恪守中日四个政治文件的原则和共识，重新确认全面推进战略互惠关系的两国关系定位，致力于构建契合新时代要求的建设性、稳定的中日关系。\n　　习近平指出，今年是中日和平友好条约缔结45周年，条约以法律形式确立了中日和平、友好、合作的大方向，成为两国关系史上的里程碑。45年来，在包括条约在内的中日四个政治文件指引下，两国关系尽管历经风雨，但总体保持发展势头，给两国人民带来福祉，也为促进地区和平、发展、繁荣发挥了积极作用。当前国际形势变乱交织，风险挑战层出不穷，中日和平共处、世代友好、互利合作、共同发展，符合两国人民根本利益。当前，中日关系正处于承前启后的关键时期，双方应该顺应时代潮流，把握正确方向，本着“以史为鉴、开辟未来”的精神，保持邦交正常化初心，客观理性看待彼此发展，树立积极友善相互认知，建设性管控矛盾分歧，将“互为合作伙伴、互不构成威胁”的政治共识体现到具体政策和实际行动中。', '中国新闻网', 'https://www.chinanews.com.cn/gn/2023/11-17/10113776.shtml', 'https://www.chinanews.com/gn/shipin/2023/11-17/U574P883T4D975666F158DT20231117164806.jpg');
INSERT INTO `cov_news` VALUES ('43703', '2023/12/18 20:25', '日本将于2024年2月启动第四轮核污染水排海 总量7800吨', '中新网12月18日电 据日本放送协会(NHK)报道，日本东京电力公司18日表示，福岛第一核电站第四轮核污染水排海将于2024年2月下旬开始，排海总量预计为7800吨，预计将于3月结束。', '中国新闻网', 'https://www.chinanews.com.cn/gj/2023/12-18/10130857.shtml', 'https://i2.chinanews.com.cn/simg/cmshd/2023/12/18/d957f36fa55149efb53efc75b13b7439.jpg');
INSERT INTO `cov_news` VALUES ('43704', '2023/12/13 16:18', '福岛第一核电站一名工作人员被放射性物质污染 中方回应', '毛宁：我也注意到有关报道。日本福岛第一核电站退役、核污染水处置过程中，接连发生工作人员遭受核污染水溅射、放射性物质污染等事故，充分说明问题的严重性，也再次证明妥善处理核污染水的极端重要性。\n日方核污染水排海计划长达30年甚至更久，存在巨大的风险隐患。中方敦促日方重视各利益攸关方的关切，全面配合建立各方实质参与、长期有效的国际监测安排，切实防止排海对海洋环境和人类健康造成长期危害。', '中国新闻网', 'https://www.chinanews.com.cn/gn/2023/12-13/10127693.shtml', 'https://ts1.cn.mm.bing.net/th/id/R-C.029804ec17ffd7bf3a85f1c2a714bdac?rik=02ODbP8DTlPlog&riu=http%3a%2f%2fimg2.zjolcdn.com%2fpic%2f0%2f14%2f02%2f75%2f14027522_976773.jpg&ehk=yUmxGYThrklWrMYh4PHWiP99YVl4eETkA8Rfxtf94wg%3d&risl=&pid=ImgRaw&r=0');
INSERT INTO `cov_news` VALUES ('43705', '2023/12/11 21:10', '日本福岛第一核电站一名废炉作业工人遭放射性物质污染', '据日本《朝日新闻》报道，东京电力公司11日发布消息称，在福岛第一核电站内进行废炉作业的一名工人面部受到放射性物质污染。\n　　东电公司称，遭放射性物质污染的工人为一名20多岁的男子，当日在福岛第一核电站2号机组附近对已解体的围栏进行除污作业。他在除污作业结束后，被发现鼻腔受到了放射性物质污染，其体内可能吸入了放射性物质。', '中国新闻网', 'https://www.chinanews.com.cn/gj/2023/12-11/10126580.shtml','https://ts1.cn.mm.bing.net/th/id/R-C.f69316aade623bcec37babe043b9716a?rik=yVYTZX2To7Wrpw&riu=http%3a%2f%2fhimg2.huanqiu.com%2fattachment2010%2f2013%2f1108%2f20131108090938130.jpg&ehk=%2fZUbKCsoz2uUmnFKNTrnaPg4kB0aOWUTG%2fm8dgJW%2fUU%3d&risl=&pid=ImgRaw&r=0');
INSERT INTO `cov_news` VALUES ('43706', '2023/11/28 15:54', '中方：日方应认真对待利益攸关方要求进行损害认定与赔偿的正当诉求', '中新网北京11月28日电 (记者 黄钰钦)中国外交部发言人汪文斌28日主持例行记者会。\n　　有记者提问：据报道，在日本政府启动福岛核污染水排海3个月之际，东京电力公司近日面向日本国内福岛核污染水排海受害者启动了损害认定和赔偿。发言人对此有何评论？\n　　汪文斌：日本福岛核污染水排海事关全人类健康、全球海洋环境、国际公共利益。日方不仅应当严肃对待国内民众关切，同样应当正视国际社会特别是周边邻国的强烈担忧，本着负责任和建设性的态度同利益攸关方进行沟通，认真对待利益攸关方要求进行损害认定与赔偿的正当诉求。', '中国新闻网', 'https://www.chinanews.com.cn/gn/2023/11-28/10119144.shtml', 'https://tse4-mm.cn.bing.net/th/id/OIP-C.PoyySbBcrV7hDlFklmdZLAHaEg?rs=1&pid=ImgDetMain');
INSERT INTO `cov_news` VALUES ('43707', '2023/11/27 05:39', '内外抗议声不断 日方应配合建立长期有效国际监测安排', '11月20日，东京电力公司(以下简称东电)发布消息称，已经完成第三轮核污染水排放，第四轮将在明年初实施。按照计划，东电在2024年3月底前共进行四轮排放，共计排放3.12万吨核污染水。自8月24日正式启动核污染水排海以来，日本国内外反对抗议持续，不断暴露的事故和问题也进一步加重了国际社会的担忧。事实证明，东电管理体制存在漏洞，日方宣称的“安全、透明”的排海计划不能令人信服。', '中国新闻网', 'https://www.chinanews.com.cn/gj/2023/11-27/10118372.shtml', 'https://www.whb.cn/u/cms/www/202303/13235432rokm.JPG');
INSERT INTO `cov_news` VALUES ('43708', '2023/11/25 05:52', '中国代表敦促日本全面配合接受严格国际监督', '中新社柏林11月24日电 　维也纳消息：中国常驻国际原子能机构代表李松大使24日在国际原子能机构11月理事会上发言，重申中方坚决反对日本福岛核污染水排海，敦促日方全面配合接受严格国际监督。', '中国新闻网', 'https://www.chinanews.com.cn/gj/2023/11-25/10117721.shtml', 'https://i2.chinanews.com.cn/simg/ypt/2023/231125/4151933c-5b6b-4036-bd90-896f0f95534e_zsite.jpg');
INSERT INTO `cov_news` VALUES ('43709', '2023/11/23 15:51', '福岛核污染水排海已三个月 中方：国际社会迫切要求建立长期有效的国际监测安排', '中新网北京11月23日电  (记者 李京泽)中国外交部发言人毛宁23日主持例行记者会。\n　　有记者提问：东京电力公司排放核污染水已经三个月，中方对此如何评论？\n　　毛宁：中方反对福岛核污染水排海的立场是一贯的，也是很明确的。我们认为，日本福岛核污染水排海事关人类健康、事关全球海洋环境、事关国际公共利益。日方应当严肃对待国内外的合理关切，本着负责任和建设性的态度妥善处理。', '中国新闻网', 'https://www.chinanews.com.cn/gn/2023/11-23/10116731.shtml', 'https://www.chinanews.com.cn/gn/2023/11-23/U422P4T8D10116731F107DT20231123163234.jpg');


INSERT INTO `cov_news` VALUES ('43713', '2023/11/17 17:04', '日本首相要求中方取消禁止从日本进口食品的措施 外交部回应', '另有记者提问：日本首相岸田文雄在美国旧金山和习近平主席会见的时候，明确要求，中方立即取消禁止从日本进口食品的措施。发言人对此有何评论？\n　　毛宁：习近平主席在会见日本首相岸田文雄的时候指出，日本福岛核污染水排海事关全人类健康、全球海洋环境、国际公共利益，日方应该严肃对待国内外的合理关切，本着负责任和建设性的态度妥善处理。', '中国新闻网', 'https://www.chinanews.com.cn/gn/2023/11-17/10113734.shtml', 'https://i2.chinanews.com.cn/simg/cmshd/2023/11/17/1e9e144009a741ee924c41c7a90d54d4.jpg');
INSERT INTO `cov_news` VALUES ('43714', '2023/11/10 08:19', '王毅会见日本内阁特别顾问、国家安全保障局长秋叶刚男', '2023年11月9日，中共中央政治局委员、中央外办主任王毅在北京会见日本内阁特别顾问、国家安全保障局长秋叶刚男并举行中日高级别政治对话机制磋商。\n　　王毅阐明了中方对当前中日关系的原则立场，指出了改善和发展中日关系的正确路径。\n　　双方重申恪守中日四个政治文件确定的各项原则，努力推动两国关系重回健康稳定发展轨道。双方同意继续就此保持沟通。', '中国新闻网', 'https://www.chinanews.com.cn/gn/2023/11-10/10109523.shtml', 'https://thepaper-prod-oldimagefromnfs.oss-cn-shanghai.aliyuncs.com/image/10/13/787.jpg');
INSERT INTO `cov_news` VALUES ('43715', '2023/11/08 11:13', '王毅同志在第四届“海洋合作与治理论坛”开幕式上的致辞', '各位来宾，各位朋友：\n　　大家好！很高兴出席第四届海洋合作与治理论坛开幕式。首先，我谨代表中国政府对论坛的成功召开表示热烈祝贺，向出席论坛的各国和国际组织代表、专家学者、媒体朋友们表示热烈欢迎！\n　　海洋是人类赖以生存发展的重要基础，也是文明交流互鉴的天然平台，加强海洋合作，完善海洋治理，反映了各国的共同愿望，也是时代的大势所趋。与此同时，当今世界并不太平，海洋的发展正面临前所未有的风险挑战。我们看到，冷战思维、零和博弈威胁着海洋的和平稳定，气候变化、过度开发损害着海洋的持续发展，环境污染、随意排放破坏着海洋的清洁美丽，自然灾害、海盗犯罪扰乱着海洋的安宁秩序。', '中国新闻网', 'https://www.chinanews.com.cn/gn/2023/11-08/10108150.shtml', 'https://ts1.cn.mm.bing.net/th/id/R-C.d12483ed57161f5655b508947a583bb9?rik=%2bjNYgmTAZR6g9A&riu=http%3a%2f%2fwww.nanhai.org.cn%2fuploads%2fimage%2f20211109%2f1636466039343977.jpg&ehk=65uthAEvPzXAIEbMTcwn%2fWDeZ8thttdyjg1U0BZLhZc%3d&risl=&pid=ImgRaw&r=0');
INSERT INTO `cov_news` VALUES ('43716', '2023/11/05 22:37', '中国生态环境部部长：坚决反对日本单方面启动核污染水排海行动', '中新社北京11月5日电 中国生态环境部部长黄润秋在第二十四次中日韩环境部长会议上强调，海洋是全人类共同的财产。核污染水处置关乎全球海洋生态环境和民众健康。日方应忠实履行本国的国际义务，同邻国等利益攸关方充分协商，以科学、负责任方式处置核污染水。', '中国新闻网', 'https://www.chinanews.com.cn/gn/2023/11-05/10106580.shtml', 'https://image.01icon.com/media/images/dw/20230205/699036881475604480852379.jpeg?w=660');
INSERT INTO `cov_news` VALUES ('43717', '2023/11/04 22:06', '亚太观察丨日本启动第三轮核污染水排海', '日本东京电力公司11月2日启动第三轮核污染水排海，预计将持续到11月20日，排放量约为7800吨。而就在此前的10月25日，福岛第一核电站发生放射性废液溅射事件，处理核污染水的5名工作人员接触到放射性废液，其中2人被紧急送医。东电公司最初公布称，溅射的放射性废液量仅为100毫升，但数日后却进行订正称，溅出的废液量达数升之多，比最初的数据高出几十倍。此次事故，在日本社会备受关注。', '中国新闻网', 'https://www.chinanews.com.cn/gj/2023/11-04/10106159.shtml', 'https://ugc-img.ifengimg.com/img/2021/12/23/8CCh5enSMyJ/4ed42252-5cf3-4991-9cac-71df82c3eb09_w483_h322.jpeg');
INSERT INTO `cov_news` VALUES ('43718', '2023/11/04 16:00', '亚太观察丨长期管理混乱 对公众欺瞒推责 日本东电痼疾积重难返', '近日，日本福岛第一核电站发生的放射性废液溅射事件再次表明，东京电力公司长期存在的内部管理混乱无序、对公众隐瞒欺骗等痼疾积重难返。\n　　事实上，福岛核事故发生12年来，东电善后处理漏洞百出，迟报、瞒报事件频繁发生。对于因核事故而罹患癌症等严重疾病的日本民众，东电也始终是在推卸责任。从核污染水排海到所谓计划中的福岛第一核电站拆除，按照日本政府和东电的说法，将持续数十年的时间。而一直以来，福岛核事故善后工作的混乱和无序让不少日本民众对福岛核事故今后的处理充满担忧。', '中国新闻网', 'https://www.chinanews.com.cn/gj/2023/11-04/10105988.shtml', 'https://n.sinaimg.cn/sinakd20230205s/107/w1024h683/20230205/b0e7-20e3e83a0721a3fc9193ba93410437b7.jpg');
INSERT INTO `cov_news` VALUES ('43719', '2023/11/04 09:10', '新漫评：日本又排“祸水” 再造地球之殇', '11月2日，日本正式开始排放第三批福岛核污水，预计将持续17天。此次的排放量与前两次大致相同，仍为7800吨左右。这也意味着，第三批的排放结束后，流入太平洋的核污水累计将超过2.3万吨。\n　　据日本放送协会(NHK)，7800吨相当于10个核污染水储水罐的量，在2011年福岛核事故之后，当地已经修建了1000多个储水罐。有数据显示，在正式排污开始前，福岛核污染水已存到了130万吨，要把这些水全部排完，至少需要30年。', '中国新闻网', 'https://www.chinanews.com.cn/gj/2023/11-04/10105872.shtml', 'https://i2.chinanews.com.cn/simg/cmshd/2023/11/04/c7bbb4b31ab34db09581352895040095.jpg');
INSERT INTO `cov_news` VALUES ('43720', '2023/11/03 16:03', '国际锐评丨这起事故戳穿了日方关于核污染水的两个谎言', '不顾国内外强烈反对，日本东京电力公司2日启动了福岛核污染水第三次排海作业。这次排放预计持续到本月20日，排放量约为7800吨。东电公司声称，排放的核污染水“所含放射性物质氚的浓度符合预期”。然而，一周前，这家声名狼藉的企业发生了一起放射性废液溅射污染事故，2名工作人员被紧急送医。这自证了日方所谓核污染水“安全”的说辞绝不可信，核污染水处置过程中的风险不容低估。', '中国新闻网', 'https://www.chinanews.com.cn/gj/2023/11-03/10105485.shtml', 'https://www.ccnta.cn/uploadfile/2021/1216/20211216100342107.jpg');
INSERT INTO `cov_news` VALUES ('43721', '2023/11/02 18:41', '中国驻日使馆发言人就日本启动第三批福岛核污染水排海答记者问', '中新网东京11月2日电  中国驻日本使馆发言人11月2日就日本启动第三批福岛核污染水排海答记者问。\n　　有记者问，11月2日，东京电力公司启动第三批福岛核污染水排海，请问你对此有何评论？\n　　发言人表示，日方连续倾倒核污染水，给全球海洋环境安全造成重大风险。中方反对日本福岛核污染水排海的立场是明确和坚定的。我们再次敦促日方全面回应国际社会关切，接受利益攸关方充分实质参与、长期有效的国际监测安排，切实以科学、安全、透明方式处置核污染水。', '中国新闻网', 'https://www.chinanews.com.cn/gn/2023/11-02/10105074.shtml', 'https://tse2-mm.cn.bing.net/th/id/OIP-C.GYjknyM7-4m5PORDynMwQwAAAA?rs=1&pid=ImgDetMain');
INSERT INTO `cov_news` VALUES ('43722', '2023/11/02 17:16', '日本启动第三批核污染水排海 民众持续集会反对', '据日本《产经新闻》报道，第三批排放的核污染水总量为7800吨左右，与第一批、第二批核污染水的排放量相当。第三批核污染水预计在11月20日完成排放。东京电力公司计划在2023年度排放总计3.12万吨核污染水。\n　　当地时间11月1日晚，日本多个市民团体再度在东京电力公司总部前集会，强烈反对东京电力公司启动第三批核污染水排海。活动组织方代表柳田真在现场表示，日本政府和东京电力公司以推进福岛第一核电站核电机组退役为由强行将核污染水排海，是“彻头彻尾的谎言”。核电机组退役工作至今没有明确的路线图和时间表。', '中国新闻网', 'https://www.chinanews.com.cn/gj/2023/11-02/10105035.shtml', 'https://imagecloud.thepaper.cn/thepaper/image/212/438/197.jpg');



-- ----------------------------
-- Table structure for `cov_research`
-- ----------------------------
DROP TABLE IF EXISTS `cov_research`;
CREATE TABLE `cov_research` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `summary` varchar(2000) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` mediumblob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of cov_research
-- ----------------------------
INSERT INTO `cov_research` VALUES ('1', '预印本平台发表了一项来自斯坦福大学的新冠抗体检测研究', '4月17日，预印本平台发表了一项来自斯坦福大学的新冠抗体检测研究：基于数千名居民血液样本的抗体检测表明，新冠实际感染数比人们认为的可能要高85倍，实际感染人数的增加，将Covid-19的死亡率降低至0.12%-0.2%，接近于流感的死亡率', 'https://m.medsci.cn/article/show_article.do?id=aa4d19484998', '2020/4/17', '');
INSERT INTO `cov_research` VALUES ('2', 'Inferring change points in the spread of COVID-19 reveals the effectiveness of interventions', 'As COVID-19 is rapidly spreading across the globe, short-term modeling forecasts provide time-critical information for decisions on containment and mitigation strategies. A major challenge for short-term forecasts is the assessment of key epidemiological parameters and how they change when first interventions show an effect. By combining an established epidemiological model with Bayesian inference, we analyze the time dependence of the effective growth rate of new infections. Focusing on COVID-19 spread in Germany, we detect change points in the effective growth rate that correlate well with the times of publicly announced interventions. Thereby, we can quantify the effect of interventions, and we can incorporate the corresponding change points into forecasts of future scenarios and case numbers. Our code is freely available and can be readily adapted to any country or region.', 'https://science.sciencemag.org/content/early/2020/05/14/science.abb9789', '2020/5/15', '');
INSERT INTO `cov_research` VALUES ('3', 'Personal Protective Equipment (PPE) use among emergency eye care professionals in the UK during the COVID19 pandemic', 'EEC staff were provided with rapidly changing personal PPE guidance by Public Health England (PHE) with specific subspecialty advice from the British Emergency Eye Care Society (BEECS) and the Royal College of Ophthalmologists (RCOphth) UK during the COVID19 pandemic. BEECS undertook a baseline survey of its members after the initial response from the RCOphth 16/3/20 mirroring Public Health England (PHE) advice and a follow- up survey after the guidance was updated on 9/4/20. A combined total of 84 responses were received. Improvements after RCOphth changes between the two surveys from hospital respondents showed increases in temperature screening (13%), scrub use (34%), use of aprons (31%), masks (4%), eye protection (35%), gloves (25%) and slit lamp guard (1%). Our findings demonstrate a positive and significant adaptation of PPE in response to change in guidance published by PHE, RCOphth and BEECS between 16/3/20 and 11/4/20. The COVID19 pandemic has rapidly taken over the normal ac', 'https://www.nature.com/articles/s41433-020-0970-5', '2020/5/21', '');
INSERT INTO `cov_research` VALUES ('4', 'A digital embrace to blunt the curve of COVID19 pandemic', 'Digital health, virtual care, telehealth, and telemedicine are all terms often used interchangeably to refer to the practice of care delivered from a distance. Because virtual care collapses the barriers of time and distance, it is ideal for providing care that is patient-centered, lower cost, more convenient and at greater productivity. All these factors make virtual care tools indispensable elements in the COVID19 response. In this perspective, we offer implementation guidance and policy insights relevant to the use of virtual care tools to meet the challenges of the COVID19 pandemic.', 'https://www.nature.com/articles/s41746-020-0279-6', '2020/5/4', '');
INSERT INTO `cov_research` VALUES ('5', '新型冠状病毒2019-nCoV/COVID-19最新研究进展（第6期）', '2020年4月28日讯/生物谷BIOON/---自2019年12月8日以来，中国湖北省武汉市报告了几例病因不明的肺炎。大多数患者在当地的华南海鲜批发市场工作或附近居住。在这种肺炎的早期阶段，严重的急性呼吸道感染症状出现了，一些患者迅速发展为急性呼吸窘迫综合征（acute respiratory distress syndrome, ARDS）、急性呼吸衰竭和其他的严重并发症。2020年1月7日，中国疾病预防控制中心（China CDC）从患者的咽拭子样本中鉴定出一种新型冠状病毒，最初被世界卫生组织（WHO）命名为2019-nCoV。大多数2019-nCoV肺炎患者的症状较轻，预后良好。到目前为止，一些患者已经出现严重的肺炎，肺水肿，ARDS或多器官功能衰竭和死亡。', 'http://news.bioon.com/article/6754753.html', '2020/4/28', '');
INSERT INTO `cov_research` VALUES ('6', '猫群之间可以互相传播新冠病毒', '越来越多的研究表明，新冠病毒具有相当广泛的哺乳类动物的宿主范围，狗，猫和其他密切相关的哺乳动物可能易感。', 'https://www.yicai.com/news/100630664.html', '2020/5/15', '');
INSERT INTO `cov_research` VALUES ('7', '新冠疫苗最新进展', '中国新冠疫苗的最新消息来了！', 'https://baijiahao.baidu.com/s?id=1661354360585931378&wfr=spider&for=pc', '2020/3/15', '');
INSERT INTO `cov_research` VALUES ('8', '中国新冠疫苗一期临床试验结果令人鼓舞——欧美专家热议中国新冠疫苗研发取得积极成果', '新华社北京5月26日电  综述：中国新冠疫苗一期临床试验结果令人鼓舞——欧美专家热议中国新冠疫苗研发取得积极成果 ', 'http://www.ccps.gov.cn/zl/yqzjz/202005/t20200527_140655.shtml', '2020/5/26', '');
INSERT INTO `cov_research` VALUES ('9', '【最新消息】重磅！中国新冠疫苗最快今年底上市', '5月30日凌晨，据国务院国资委官方微博国资小新，5月29日，国资小新走进国药集团中国生物北京生物制品研究所在全球最大新冠灭活疫苗生产车间零距离感受一支新冠灭活疫苗的诞生！', 'https://www.thepaper.cn/newsDetail_forward_7648638', '2020/6/1', '');
INSERT INTO `cov_research` VALUES ('10', '瑞德西韦早期治疗可减少恒河猴感染新冠病毒载量', '上观新闻客户端6月10日消息，记者从施普林格•自然集团获悉，《自然》在6月9日发表一项研究，采用抗病毒药物瑞德西韦进行早期治疗，可减少在恒河猴体内的新冠病毒载量。这一发现支持在早期使用瑞德西韦治疗新冠肺炎患者。', 'https://tech.sina.com.cn/roll/2020-06-10/doc-iirczymk6232482.shtml', '2020/6/10', '');
INSERT INTO `cov_research` VALUES ('11', 'O型血可能对新冠病毒有一定抵御作用', '海外网6月10日电一项正在进行的研究初步结果表明，O型血可能对新冠病毒有一定抵御作用。', 'http://baijiahao.baidu.com/s?id=1669097736476878578&wfr=newsapp', '2020/6/10', '');

-- ----------------------------
-- Table structure for `covid_map`
-- ----------------------------
DROP TABLE IF EXISTS `covid_map`;
CREATE TABLE `covid_map` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `date` date NOT NULL,
  `placename` varchar(255) NOT NULL,
  `confirm` int(11) DEFAULT '0',
  `cured` int(11) DEFAULT '0',
  `death` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5157 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of covid_map
-- ----------------------------
INSERT INTO `covid_map` VALUES ('4978', '1', '2020-06-13', '阿富汗\n', '22890', '0', '426');
INSERT INTO `covid_map` VALUES ('4979', '2', '2020-06-13', '安哥拉\n', '118', '0', '5');
INSERT INTO `covid_map` VALUES ('4980', '3', '2020-06-13', '阿尔巴尼亚\n', '1385', '0', '35');
INSERT INTO `covid_map` VALUES ('4981', '4', '2020-06-13', '阿拉伯联合酋长国\n', '40986', '0', '286');
INSERT INTO `covid_map` VALUES ('4982', '5', '2020-06-13', '阿根廷\n', '27373', '0', '765');
INSERT INTO `covid_map` VALUES ('4983', '6', '2020-06-13', '亚美尼亚\n', '14669', '0', '245');
INSERT INTO `covid_map` VALUES ('4984', '7', '2020-06-13', '法属南部群岛\n', '1', '0', '0');
INSERT INTO `covid_map` VALUES ('4985', '8', '2020-06-13', '澳大利亚\n', '7289', '0', '102');
INSERT INTO `covid_map` VALUES ('4986', '9', '2020-06-13', '奥地利\n', '17034', '0', '674');
INSERT INTO `covid_map` VALUES ('4987', '10', '2020-06-13', '阿塞拜疆\n', '8882', '0', '108');
INSERT INTO `covid_map` VALUES ('4988', '11', '2020-06-13', '布隆迪\n', '85', '0', '1');
INSERT INTO `covid_map` VALUES ('4989', '12', '2020-06-13', '比利时\n', '59711', '0', '9636');
INSERT INTO `covid_map` VALUES ('4990', '13', '2020-06-13', '贝宁\n', '305', '0', '4');
INSERT INTO `covid_map` VALUES ('4991', '14', '2020-06-13', '布吉纳法索\n', '892', '0', '53');
INSERT INTO `covid_map` VALUES ('4992', '15', '2020-06-13', '孟加拉国\n', '78052', '0', '1049');
INSERT INTO `covid_map` VALUES ('4993', '16', '2020-06-13', '保加利亚\n', '3086', '0', '168');
INSERT INTO `covid_map` VALUES ('4994', '17', '2020-06-13', '巴哈马群岛\n', '103', '0', '11');
INSERT INTO `covid_map` VALUES ('4995', '18', '2020-06-13', '波斯尼亚和黑塞哥维那\n', '2832', '0', '161');
INSERT INTO `covid_map` VALUES ('4996', '19', '2020-06-13', '白俄罗斯\n', '51816', '0', '293');
INSERT INTO `covid_map` VALUES ('4997', '20', '2020-06-13', '伯利兹\n', '20', '0', '2');
INSERT INTO `covid_map` VALUES ('4998', '21', '2020-06-13', '百慕大\n', '141', '0', '9');
INSERT INTO `covid_map` VALUES ('4999', '22', '2020-06-13', '玻利维亚\n', '16165', '0', '533');
INSERT INTO `covid_map` VALUES ('5000', '23', '2020-06-13', '巴西\n', '802828', '0', '40919');
INSERT INTO `covid_map` VALUES ('5001', '24', '2020-06-13', '文莱\n', '141', '0', '2');
INSERT INTO `covid_map` VALUES ('5002', '25', '2020-06-13', '不丹\n', '62', '0', '0');
INSERT INTO `covid_map` VALUES ('5003', '26', '2020-06-13', '博茨瓦纳\n', '48', '0', '1');
INSERT INTO `covid_map` VALUES ('5004', '27', '2020-06-13', '中非共和国\n', '1952', '0', '5');
INSERT INTO `covid_map` VALUES ('5005', '28', '2020-06-13', '加拿大\n', '99159', '0', '8071');
INSERT INTO `covid_map` VALUES ('5006', '29', '2020-06-13', '瑞士\n', '31044', '0', '1937');
INSERT INTO `covid_map` VALUES ('5007', '30', '2020-06-13', '智利\n', '154092', '0', '2648');
INSERT INTO `covid_map` VALUES ('5008', '31', '2020-06-13', '中国\n', '84216', '0', '4638');
INSERT INTO `covid_map` VALUES ('5009', '32', '2020-06-13', '科特迪瓦\n', '4404', '0', '41');
INSERT INTO `covid_map` VALUES ('5010', '33', '2020-06-13', '喀麦隆\n', '8681', '0', '212');
INSERT INTO `covid_map` VALUES ('5011', '34', '2020-06-13', '刚果民主共和国\n', '4515', '0', '98');
INSERT INTO `covid_map` VALUES ('5012', '35', '2020-06-13', '刚果共和国\n', '728', '0', '24');
INSERT INTO `covid_map` VALUES ('5013', '36', '2020-06-13', '哥伦比亚\n', '43810', '0', '1505');
INSERT INTO `covid_map` VALUES ('5014', '37', '2020-06-13', '哥斯达黎加\n', '1538', '0', '12');
INSERT INTO `covid_map` VALUES ('5015', '38', '2020-06-13', '古巴\n', '2219', '0', '84');
INSERT INTO `covid_map` VALUES ('5016', '39', '2020-06-13', '北塞浦路斯\n', '0', '0', '0');
INSERT INTO `covid_map` VALUES ('5017', '40', '2020-06-13', '塞浦路斯\n', '975', '0', '18');
INSERT INTO `covid_map` VALUES ('5018', '41', '2020-06-13', '捷克共和国\n', '9855', '0', '328');
INSERT INTO `covid_map` VALUES ('5019', '42', '2020-06-13', '德国\n', '186691', '0', '8772');
INSERT INTO `covid_map` VALUES ('5020', '43', '2020-06-13', '吉布提\n', '4398', '0', '37');
INSERT INTO `covid_map` VALUES ('5021', '44', '2020-06-13', '丹麦\n', '12222', '0', '593');
INSERT INTO `covid_map` VALUES ('5022', '45', '2020-06-13', '多米尼加共和国\n', '21455', '0', '561');
INSERT INTO `covid_map` VALUES ('5023', '46', '2020-06-13', '阿尔及利亚\n', '10589', '0', '741');
INSERT INTO `covid_map` VALUES ('5024', '47', '2020-06-13', '厄瓜多尔\n', '44440', '0', '3720');
INSERT INTO `covid_map` VALUES ('5025', '48', '2020-06-13', '埃及\n', '39726', '0', '1377');
INSERT INTO `covid_map` VALUES ('5026', '49', '2020-06-13', '厄立特里亚\n', '41', '0', '0');
INSERT INTO `covid_map` VALUES ('5027', '50', '2020-06-13', '西班牙\n', '242707', '0', '27136');
INSERT INTO `covid_map` VALUES ('5028', '51', '2020-06-13', '爱沙尼亚\n', '1965', '0', '69');
INSERT INTO `covid_map` VALUES ('5029', '52', '2020-06-13', '埃塞俄比亚\n', '2670', '0', '40');
INSERT INTO `covid_map` VALUES ('5030', '53', '2020-06-13', '芬兰\n', '7064', '0', '325');
INSERT INTO `covid_map` VALUES ('5031', '54', '2020-06-13', '斐济\n', '18', '0', '0');
INSERT INTO `covid_map` VALUES ('5032', '55', '2020-06-13', '福克兰群岛\n', '13', '0', '0');
INSERT INTO `covid_map` VALUES ('5033', '56', '2020-06-13', '法国\n', '191554', '0', '29347');
INSERT INTO `covid_map` VALUES ('5034', '57', '2020-06-13', '加蓬\n', '3463', '0', '23');
INSERT INTO `covid_map` VALUES ('5035', '58', '2020-06-13', '英国\n', '292706', '0', '41355');
INSERT INTO `covid_map` VALUES ('5036', '59', '2020-06-13', '乔治亚州\n', '831', '0', '13');
INSERT INTO `covid_map` VALUES ('5037', '60', '2020-06-13', '加纳\n', '10358', '0', '48');
INSERT INTO `covid_map` VALUES ('5038', '61', '2020-06-13', '几内亚\n', '4372', '0', '23');
INSERT INTO `covid_map` VALUES ('5039', '62', '2020-06-13', '冈比亚\n', '28', '0', '1');
INSERT INTO `covid_map` VALUES ('5040', '63', '2020-06-13', '几内亚比绍\n', '1389', '0', '12');
INSERT INTO `covid_map` VALUES ('5041', '64', '2020-06-13', '赤道几内亚\n', '1306', '0', '12');
INSERT INTO `covid_map` VALUES ('5042', '65', '2020-06-13', '希腊\n', '3088', '0', '183');
INSERT INTO `covid_map` VALUES ('5043', '66', '2020-06-13', '格陵兰岛\n', '13', '0', '0');
INSERT INTO `covid_map` VALUES ('5044', '67', '2020-06-13', '危地马拉\n', '8561', '0', '334');
INSERT INTO `covid_map` VALUES ('5045', '68', '2020-06-13', '法属圭亚那\n', '917', '0', '2');
INSERT INTO `covid_map` VALUES ('5046', '69', '2020-06-13', '圭亚那\n', '158', '0', '12');
INSERT INTO `covid_map` VALUES ('5047', '70', '2020-06-13', '洪都拉斯\n', '7669', '0', '294');
INSERT INTO `covid_map` VALUES ('5048', '71', '2020-06-13', '克罗地亚\n', '2249', '0', '106');
INSERT INTO `covid_map` VALUES ('5049', '72', '2020-06-13', '海地\n', '3941', '0', '64');
INSERT INTO `covid_map` VALUES ('5050', '73', '2020-06-13', '匈牙利\n', '4039', '0', '553');
INSERT INTO `covid_map` VALUES ('5051', '74', '2020-06-13', '印尼\n', '35295', '0', '2000');
INSERT INTO `covid_map` VALUES ('5052', '75', '2020-06-13', '印度\n', '297535', '0', '8498');
INSERT INTO `covid_map` VALUES ('5053', '76', '2020-06-13', '爱尔兰\n', '25238', '0', '1703');
INSERT INTO `covid_map` VALUES ('5054', '77', '2020-06-13', '伊朗\n', '180156', '0', '8584');
INSERT INTO `covid_map` VALUES ('5055', '78', '2020-06-13', '伊拉克\n', '16675', '0', '457');
INSERT INTO `covid_map` VALUES ('5056', '79', '2020-06-13', '冰岛\n', '1807', '0', '10');
INSERT INTO `covid_map` VALUES ('5057', '80', '2020-06-13', '以色列\n', '18569', '0', '300');
INSERT INTO `covid_map` VALUES ('5058', '81', '2020-06-13', '意大利\n', '236142', '0', '34167');
INSERT INTO `covid_map` VALUES ('5059', '82', '2020-06-13', '牙买加\n', '611', '0', '10');
INSERT INTO `covid_map` VALUES ('5060', '83', '2020-06-13', '约旦\n', '890', '0', '9');
INSERT INTO `covid_map` VALUES ('5061', '84', '2020-06-13', '日本\n', '17187', '0', '922');
INSERT INTO `covid_map` VALUES ('5062', '85', '2020-06-13', '哈萨克斯坦\n', '13872', '0', '67');
INSERT INTO `covid_map` VALUES ('5063', '86', '2020-06-13', '肯尼亚\n', '3215', '0', '92');
INSERT INTO `covid_map` VALUES ('5064', '87', '2020-06-13', '吉尔吉斯斯坦\n', '2166', '0', '26');
INSERT INTO `covid_map` VALUES ('5065', '88', '2020-06-13', '柬埔寨\n', '126', '0', '0');
INSERT INTO `covid_map` VALUES ('5066', '89', '2020-06-13', '韩国\n', '12003', '0', '277');
INSERT INTO `covid_map` VALUES ('5067', '90', '2020-06-13', '科索沃\n', '1326', '0', '31');
INSERT INTO `covid_map` VALUES ('5068', '91', '2020-06-13', '科威特\n', '34432', '0', '279');
INSERT INTO `covid_map` VALUES ('5069', '92', '2020-06-13', '老挝\n', '19', '0', '0');
INSERT INTO `covid_map` VALUES ('5070', '93', '2020-06-13', '黎巴嫩\n', '1402', '0', '31');
INSERT INTO `covid_map` VALUES ('5071', '94', '2020-06-13', '利比里亚\n', '410', '0', '31');
INSERT INTO `covid_map` VALUES ('5072', '95', '2020-06-13', '利比亚\n', '393', '0', '5');
INSERT INTO `covid_map` VALUES ('5073', '96', '2020-06-13', '斯里兰卡\n', '1877', '0', '11');
INSERT INTO `covid_map` VALUES ('5074', '97', '2020-06-13', '莱索托\n', '4', '0', '0');
INSERT INTO `covid_map` VALUES ('5075', '98', '2020-06-13', '立陶宛\n', '1752', '0', '74');
INSERT INTO `covid_map` VALUES ('5076', '99', '2020-06-13', '卢森堡\n', '4052', '0', '110');
INSERT INTO `covid_map` VALUES ('5077', '100', '2020-06-13', '拉脱维亚\n', '1094', '0', '26');
INSERT INTO `covid_map` VALUES ('5078', '101', '2020-06-13', '摩洛哥\n', '8537', '0', '211');
INSERT INTO `covid_map` VALUES ('5079', '102', '2020-06-13', '摩尔多瓦\n', '10727', '0', '375');
INSERT INTO `covid_map` VALUES ('5080', '103', '2020-06-13', '马达加斯加\n', '1203', '0', '10');
INSERT INTO `covid_map` VALUES ('5081', '104', '2020-06-13', '墨西哥\n', '133974', '0', '15944');
INSERT INTO `covid_map` VALUES ('5082', '105', '2020-06-13', '马其顿\n', '3538', '0', '169');
INSERT INTO `covid_map` VALUES ('5083', '106', '2020-06-13', '马里\n', '1722', '0', '97');
INSERT INTO `covid_map` VALUES ('5084', '107', '2020-06-13', '马耳他\n', '640', '0', '9');
INSERT INTO `covid_map` VALUES ('5085', '108', '2020-06-13', '缅甸\n', '260', '0', '6');
INSERT INTO `covid_map` VALUES ('5086', '109', '2020-06-13', '黑山共和国\n', '324', '0', '9');
INSERT INTO `covid_map` VALUES ('5087', '110', '2020-06-13', '蒙古\n', '197', '0', '0');
INSERT INTO `covid_map` VALUES ('5088', '111', '2020-06-13', '莫桑比克\n', '489', '0', '2');
INSERT INTO `covid_map` VALUES ('5089', '112', '2020-06-13', '毛利塔尼亚\n', '1439', '0', '74');
INSERT INTO `covid_map` VALUES ('5090', '113', '2020-06-13', '马拉维\n', '481', '0', '4');
INSERT INTO `covid_map` VALUES ('5091', '114', '2020-06-13', '马来西亚\n', '8369', '0', '118');
INSERT INTO `covid_map` VALUES ('5092', '115', '2020-06-13', '纳米比亚\n', '31', '0', '0');
INSERT INTO `covid_map` VALUES ('5093', '116', '2020-06-13', '新喀里多尼亚\n', '21', '0', '0');
INSERT INTO `covid_map` VALUES ('5094', '117', '2020-06-13', '尼日尔\n', '974', '0', '65');
INSERT INTO `covid_map` VALUES ('5095', '118', '2020-06-13', '尼日利亚\n', '14554', '0', '387');
INSERT INTO `covid_map` VALUES ('5096', '119', '2020-06-13', '尼加拉瓜\n', '1464', '0', '55');
INSERT INTO `covid_map` VALUES ('5097', '120', '2020-06-13', '荷兰\n', '48458', '0', '6063');
INSERT INTO `covid_map` VALUES ('5098', '121', '2020-06-13', '挪威\n', '8608', '0', '242');
INSERT INTO `covid_map` VALUES ('5099', '122', '2020-06-13', '尼泊尔\n', '4614', '0', '15');
INSERT INTO `covid_map` VALUES ('5100', '123', '2020-06-13', '新西兰\n', '1504', '0', '22');
INSERT INTO `covid_map` VALUES ('5101', '124', '2020-06-13', '阿曼\n', '19954', '0', '89');
INSERT INTO `covid_map` VALUES ('5102', '125', '2020-06-13', '巴基斯坦\n', '125933', '0', '2463');
INSERT INTO `covid_map` VALUES ('5103', '126', '2020-06-13', '巴拿马\n', '18586', '0', '418');
INSERT INTO `covid_map` VALUES ('5104', '127', '2020-06-13', '秘鲁\n', '214788', '0', '6088');
INSERT INTO `covid_map` VALUES ('5105', '128', '2020-06-13', '菲律宾\n', '24175', '0', '1036');
INSERT INTO `covid_map` VALUES ('5106', '129', '2020-06-13', '巴布新几内亚\n', '8', '0', '0');
INSERT INTO `covid_map` VALUES ('5107', '130', '2020-06-13', '波兰\n', '28201', '0', '1215');
INSERT INTO `covid_map` VALUES ('5108', '131', '2020-06-13', '波多黎各\n', '0', '0', '0');
INSERT INTO `covid_map` VALUES ('5109', '132', '2020-06-13', '朝鲜\n', '0', '0', '0');
INSERT INTO `covid_map` VALUES ('5110', '133', '2020-06-13', '葡萄牙\n', '35910', '0', '1504');
INSERT INTO `covid_map` VALUES ('5111', '134', '2020-06-13', '巴拉圭\n', '1230', '0', '11');
INSERT INTO `covid_map` VALUES ('5112', '135', '2020-06-13', '卡塔尔\n', '75071', '0', '69');
INSERT INTO `covid_map` VALUES ('5113', '136', '2020-06-13', '罗马尼亚\n', '21182', '0', '1369');
INSERT INTO `covid_map` VALUES ('5114', '137', '2020-06-13', '俄罗斯\n', '501800', '0', '6522');
INSERT INTO `covid_map` VALUES ('5115', '138', '2020-06-13', '卢旺达\n', '494', '0', '2');
INSERT INTO `covid_map` VALUES ('5116', '139', '2020-06-13', '西撒哈拉\n', '9', '0', '1');
INSERT INTO `covid_map` VALUES ('5117', '140', '2020-06-13', '沙特阿拉伯\n', '116021', '0', '857');
INSERT INTO `covid_map` VALUES ('5118', '141', '2020-06-13', '苏丹\n', '6730', '0', '413');
INSERT INTO `covid_map` VALUES ('5119', '142', '2020-06-13', '南苏丹\n', '1670', '0', '24');
INSERT INTO `covid_map` VALUES ('5120', '143', '2020-06-13', '塞内加尔\n', '4759', '0', '55');
INSERT INTO `covid_map` VALUES ('5121', '144', '2020-06-13', '所罗门群岛\n', '0', '0', '0');
INSERT INTO `covid_map` VALUES ('5122', '145', '2020-06-13', '塞拉利昂\n', '1085', '0', '50');
INSERT INTO `covid_map` VALUES ('5123', '146', '2020-06-13', '萨尔瓦多\n', '3373', '0', '68');
INSERT INTO `covid_map` VALUES ('5124', '147', '2020-06-13', '索马里兰\n', '2513', '0', '85');
INSERT INTO `covid_map` VALUES ('5125', '148', '2020-06-13', '索马里\n', '0', '0', '0');
INSERT INTO `covid_map` VALUES ('5126', '149', '2020-06-13', '塞尔维亚共和国\n', '12102', '0', '252');
INSERT INTO `covid_map` VALUES ('5127', '150', '2020-06-13', '苏里南\n', '168', '0', '2');
INSERT INTO `covid_map` VALUES ('5128', '151', '2020-06-13', '斯洛伐克\n', '1541', '0', '28');
INSERT INTO `covid_map` VALUES ('5129', '152', '2020-06-13', '斯洛文尼亚\n', '1488', '0', '109');
INSERT INTO `covid_map` VALUES ('5130', '153', '2020-06-13', '瑞典\n', '48288', '0', '4814');
INSERT INTO `covid_map` VALUES ('5131', '154', '2020-06-13', '斯威士兰\n', '0', '0', '0');
INSERT INTO `covid_map` VALUES ('5132', '155', '2020-06-13', '叙利亚\n', '164', '0', '6');
INSERT INTO `covid_map` VALUES ('5133', '156', '2020-06-13', '乍得\n', '848', '0', '72');
INSERT INTO `covid_map` VALUES ('5134', '157', '2020-06-13', '多哥\n', '524', '0', '13');
INSERT INTO `covid_map` VALUES ('5135', '158', '2020-06-13', '泰国\n', '3125', '0', '58');
INSERT INTO `covid_map` VALUES ('5136', '159', '2020-06-13', '塔吉克斯坦\n', '4834', '0', '49');
INSERT INTO `covid_map` VALUES ('5137', '160', '2020-06-13', '土库曼斯坦\n', '0', '0', '0');
INSERT INTO `covid_map` VALUES ('5138', '161', '2020-06-13', '东帝汶\n', '24', '0', '0');
INSERT INTO `covid_map` VALUES ('5139', '162', '2020-06-13', '特立尼达和多巴哥\n', '117', '0', '8');
INSERT INTO `covid_map` VALUES ('5140', '163', '2020-06-13', '突尼斯\n', '1087', '0', '49');
INSERT INTO `covid_map` VALUES ('5141', '164', '2020-06-13', '土耳其\n', '174023', '0', '4763');
INSERT INTO `covid_map` VALUES ('5142', '165', '2020-06-13', '中国台湾\n', '443', '0', '7');
INSERT INTO `covid_map` VALUES ('5143', '166', '2020-06-13', '坦桑尼亚联合共和国\n', '509', '0', '21');
INSERT INTO `covid_map` VALUES ('5144', '167', '2020-06-13', '乌干达\n', '679', '0', '0');
INSERT INTO `covid_map` VALUES ('5145', '168', '2020-06-13', '乌克兰\n', '29706', '0', '864');
INSERT INTO `covid_map` VALUES ('5146', '169', '2020-06-13', '乌拉圭\n', '847', '0', '23');
INSERT INTO `covid_map` VALUES ('5147', '170', '2020-06-13', '美国\n', '2023590', '0', '113823');
INSERT INTO `covid_map` VALUES ('5148', '171', '2020-06-13', '乌兹别克斯坦\n', '4741', '0', '19');
INSERT INTO `covid_map` VALUES ('5149', '172', '2020-06-13', '委内瑞拉\n', '2814', '0', '23');
INSERT INTO `covid_map` VALUES ('5150', '173', '2020-06-13', '越南\n', '332', '0', '0');
INSERT INTO `covid_map` VALUES ('5151', '174', '2020-06-13', '瓦努阿图\n', '0', '0', '0');
INSERT INTO `covid_map` VALUES ('5152', '175', '2020-06-13', '约旦河西岸与加沙地区\n', '487', '0', '3');
INSERT INTO `covid_map` VALUES ('5153', '176', '2020-06-13', '也门\n', '591', '0', '136');
INSERT INTO `covid_map` VALUES ('5154', '177', '2020-06-13', '南非\n', '58568', '0', '1284');
INSERT INTO `covid_map` VALUES ('5155', '178', '2020-06-13', '赞比亚\n', '63429', '0', '220');
INSERT INTO `covid_map` VALUES ('5156', '179', '2020-06-13', '津巴布韦\n', '1044', '0', '17');

-- ----------------------------
-- Table structure for `migration`
-- ----------------------------
DROP TABLE IF EXISTS `migration`;
CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of migration
-- ----------------------------
INSERT INTO `migration` VALUES ('m000000_000000_base', '1587561487');
INSERT INTO `migration` VALUES ('m130524_201442_init', '1587561498');
INSERT INTO `migration` VALUES ('m180628_144021_create_table_visitor', '1590677975');
INSERT INTO `migration` VALUES ('m180628_144042_create_table_visitor_log', '1590678493');
INSERT INTO `migration` VALUES ('m180628_144113_create_table_visitor_agent', '1590678728');
INSERT INTO `migration` VALUES ('m180628_144130_create_table_country', '1590678729');
INSERT INTO `migration` VALUES ('m180630_142222_create_table_visitor_service_error', '1590678729');
INSERT INTO `migration` VALUES ('m190124_110200_add_verification_token_column_to_user_table', '1587561499');
INSERT INTO `migration` VALUES ('m200424_120117_create_article_table', '1588648352');
INSERT INTO `migration` VALUES ('m200424_120247_create_category_table', '1588648352');
INSERT INTO `migration` VALUES ('m200424_120310_create_tag_table', '1588648352');
INSERT INTO `migration` VALUES ('m200424_120410_create_comment_table', '1588648353');
INSERT INTO `migration` VALUES ('m200424_120432_create_article_tag_table', '1588648354');
INSERT INTO `migration` VALUES ('m200502_141910_create_video_table', '1588648354');
INSERT INTO `migration` VALUES ('m200504_035720_create_video_view_table', '1588648355');
INSERT INTO `migration` VALUES ('m200504_041125_create_video_like_table', '1588648356');
INSERT INTO `migration` VALUES ('m200504_065820_create_subscriber_table', '1588648357');
INSERT INTO `migration` VALUES ('m200504_092524_create_fulltext_index_on_video', '1588648357');
INSERT INTO `migration` VALUES ('m200509_083851_add_date_to_comment', '1589013653');
INSERT INTO `migration` VALUES ('m200514_152015_covid_map', '1589470243');

-- ----------------------------
-- Table structure for `pcounter_save`
-- ----------------------------
DROP TABLE IF EXISTS `pcounter_save`;
CREATE TABLE `pcounter_save` (
  `save_name` varchar(10) NOT NULL,
  `save_value` int(10) unsigned NOT NULL,
  PRIMARY KEY (`save_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of pcounter_save
-- ----------------------------
INSERT INTO `pcounter_save` VALUES ('counter', '12');
INSERT INTO `pcounter_save` VALUES ('day_time', '2459014');
INSERT INTO `pcounter_save` VALUES ('max_count', '5');
INSERT INTO `pcounter_save` VALUES ('max_time', '1591437600');
INSERT INTO `pcounter_save` VALUES ('yesterday', '1');

-- ----------------------------
-- Table structure for `pcounter_users`
-- ----------------------------
DROP TABLE IF EXISTS `pcounter_users`;
CREATE TABLE `pcounter_users` (
  `user_ip` varchar(32) NOT NULL,
  `user_time` int(10) unsigned NOT NULL,
  PRIMARY KEY (`user_ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of pcounter_users
-- ----------------------------
INSERT INTO `pcounter_users` VALUES ('111.74.54.135', '1592036408');
INSERT INTO `pcounter_users` VALUES ('127.0.0.1', '1592054027');
INSERT INTO `pcounter_users` VALUES ('::1', '1592018755');

-- ----------------------------
-- Table structure for `subscriber`
-- ----------------------------
DROP TABLE IF EXISTS `subscriber`;
CREATE TABLE `subscriber` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `channel_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx-subscriber-channel_id` (`channel_id`),
  KEY `idx-subscriber-user_id` (`user_id`),
  CONSTRAINT `fk-subscriber-channel_id` FOREIGN KEY (`channel_id`) REFERENCES `user` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk-subscriber-user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of subscriber
-- ----------------------------

-- ----------------------------
-- Table structure for `tag`
-- ----------------------------
DROP TABLE IF EXISTS `tag`;
CREATE TABLE `tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of tag
-- ----------------------------

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL,
  `auth_key` varchar(32) NOT NULL,
  `password_hash` varchar(256) NOT NULL,
  `password_reset_token` varchar(256) DEFAULT NULL,
  `email` varchar(256) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `verification_token` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------

-- ----------------------------
-- Table structure for `video`
-- ----------------------------
DROP TABLE IF EXISTS `video`;
CREATE TABLE `video` (
  `video_id` varchar(16) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text,
  `tags` varchar(512) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `has_thumbnail` tinyint(1) DEFAULT NULL,
  `video_name` varchar(255) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`video_id`),
  KEY `idx-video-created_by` (`created_by`),
  FULLTEXT KEY `title` (`title`,`description`,`tags`),
  CONSTRAINT `fk-video-created_by` FOREIGN KEY (`created_by`) REFERENCES `user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of video
-- ----------------------------
INSERT INTO `video` VALUES ('PAnKGl9G', 'HOW DOES COVID-19 AFFECT THE BODY?', '', '新冠科普', '1', '1', 'videoplayback.mp4', '1591498420', '1591498555', '2');

-- ----------------------------
-- Table structure for `video_like`
-- ----------------------------
DROP TABLE IF EXISTS `video_like`;
CREATE TABLE `video_like` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `video_id` varchar(16) NOT NULL,
  `user_id` int(11) NOT NULL,
  `type` int(1) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx-video_like-video_id` (`video_id`),
  KEY `idx-video_like-user_id` (`user_id`),
  CONSTRAINT `fk-video_like-user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk-video_like-video_id` FOREIGN KEY (`video_id`) REFERENCES `video` (`video_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of video_like
-- ----------------------------

-- ----------------------------
-- Table structure for `video_view`
-- ----------------------------
DROP TABLE IF EXISTS `video_view`;
CREATE TABLE `video_view` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `video_id` varchar(16) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx-video_view-video_id` (`video_id`),
  KEY `idx-video_view-user_id` (`user_id`),
  CONSTRAINT `fk-video_view-user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk-video_view-video_id` FOREIGN KEY (`video_id`) REFERENCES `video` (`video_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of video_view
-- ----------------------------
INSERT INTO `video_view` VALUES ('90', 'PAnKGl9G', '2', '1591498574');
INSERT INTO `video_view` VALUES ('91', 'PAnKGl9G', '2', '1591498617');
INSERT INTO `video_view` VALUES ('92', 'PAnKGl9G', '2', '1591498634');
INSERT INTO `video_view` VALUES ('93', 'PAnKGl9G', '2', '1591498719');
INSERT INTO `video_view` VALUES ('94', 'PAnKGl9G', '2', '1591498738');
INSERT INTO `video_view` VALUES ('95', 'PAnKGl9G', null, '1591499455');
INSERT INTO `video_view` VALUES ('96', 'PAnKGl9G', '11', '1591499555');
INSERT INTO `video_view` VALUES ('97', 'PAnKGl9G', '11', '1591521725');
INSERT INTO `video_view` VALUES ('98', 'PAnKGl9G', '2', '1591585218');
INSERT INTO `video_view` VALUES ('99', 'PAnKGl9G', '2', '1591872749');
INSERT INTO `video_view` VALUES ('100', 'PAnKGl9G', null, '1592017355');
