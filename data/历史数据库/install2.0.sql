/*
 Navicat MySQL Data Transfer

 Source Server         : yii2
 Source Server Type    : MySQL
 Source Server Version : 100428
 Source Host           : localhost:3306
 Source Schema         : p

 Target Server Type    : MySQL
 Target Server Version : 100428
 File Encoding         : 65001

 Date: 20/01/2024 19:06:25
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `date` date NULL DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `viewed` int NULL DEFAULT NULL,
  `created_by` int NULL DEFAULT NULL,
  `status` int NULL DEFAULT NULL,
  `category_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id`(`id`) USING BTREE,
  INDEX `fk-article-user_id`(`created_by`) USING BTREE,
  FULLTEXT INDEX `title`(`title`, `description`),
  CONSTRAINT `fk-article-user_id` FOREIGN KEY (`created_by`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES (12, '日本核污水正式排海对我们的影响有多大？海鲜还敢吃吗？', '<p>日本此次核污水排放，会对我们的生活造成哪些影响？我们要不要囤碘盐、还能不能吃海鲜了呢？</p>\r\n', '<p>据报道，日本核电站污水氚排放的国家标准是每升水中氚活度为6万贝克勒尔（贝克勒尔是衡量放射性活度单位）</p>\r\n\r\n<p>虽然日本当局表示将污水中氚的浓度稀释到这一标准的四十分之一以下，但不少科学家与环保组织都表示，核污水的巨大体量和现有技术的局限，决定了目前无法预知这些污水将给海洋环境和人类安全造成何种危害。</p>\r\n\r\n<p>从海域、海洋生物再到我们人类自己都可能遭受伤害。</p>\r\n\r\n<p>1. 海域污染</p>\r\n\r\n<p>日本将核污水排放到太平洋，而太平洋存在着洋流（即海水大规模的水平流动），在北太平洋环流和副极地环流的双重作用下，放射性物质会扩散到太平洋大半区域。</p>\r\n\r\n<p>海洋虽然有自净能力，但核污水所含的部分放射性物质在千年内依然有害。例如该核电厂污水中所含的碳-14，半衰期长达5730年。也就是说，有些放射性物质在数千年之后，其辐射强度只能衰减一半。</p>\r\n\r\n<p>2. 海洋生物污染</p>\r\n\r\n<p>而污水中的放射性同位素排放入海后会进入海洋生物体内，并随食物链迁移、积累和逐级放大。</p>\r\n\r\n<p>3. 影响人类健康</p>\r\n\r\n<p>人一旦食用被放射性元素污染的海产品，就可能造成内照射（体内污染），从而诱发放射病，增大患癌症等疾病的风险。即使是低剂量的辐射暴露，也可能造成不可预知的伤害，例如基因损伤。</p>\r\n\r\n<p>● 对于发育阶段的儿童和青少年，可能导致发育畸形。由于发育阶段本身就属于对外界刺激敏感的阶段，而核辐射引发的一系列电离反应，无论是在核酸层面还是在蛋白质层面，都会导致个体发育受到影响，进一步导致畸形。</p>\r\n\r\n<p>● 对于普通人群，可能诱发癌症。核辐射可引发基因变异，如果基因变异恰好发生在一些重要的位置，导致这些基因的修复能力下降，结果就可能引发细胞内的DNA错误积累。</p>\r\n\r\n<p>如果这些错误积累无法被彻底消除，且一定程度上逃脱了人体的免疫监控，发生无限扩增，就会诱发癌症。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>核污水排放以后，我们还能吃海鲜吗？</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>先上结论：核污水排放后对我国海鲜会产生一定影响，但并不是绝对不能吃。</p>\r\n\r\n<p>北海道渔场是北太平洋渔场的中心，也是世界第一大渔场，盛产沙丁鱼、秋刀鱼、三文鱼、鳕鱼、鱿鱼、蛤蜊、牡蛎等海产品。这些海域的海鲜都有可能受到污染。</p>\r\n\r\n<p>我国海关总署已明确，即日起全面暂停进口日本水产品，后面会持续关注日本核污染水排海情况，再根据情况调整监管措施。</p>\r\n\r\n<p>那过你海鲜呢？</p>\r\n\r\n<p>不可否认，我国沿海地区会也可能会受到一定影响，即便是国产海鲜，如果是在被核污水污染水域，肉质依然可能含放射性物质，应该按照国家相关标准开展监测，满足标准后方可食用。</p>\r\n', '2024-01-20', '9fdfbfd922bbf1effd94d2dc7b139b15.jpg', NULL, 28, 1, 1);
INSERT INTO `article` VALUES (13, '日本宣布周四起排放　北京斥“极端自私”　香港禁十都县水产进口', '<p><strong>在邻国的反对声中，日本仍决定从周四（8月24日）起将处理后的福岛核电站放射性污水排入太平洋，预计将在30年内持续排放。</strong></p>\r\n', '<p>自2011年海啸破坏福岛第一核电站以来，该地已经积累了134万吨水，足以装满500座奥林匹克标准游泳池。</p>\r\n\r\n<p>国际原子能机构（IAEA）今年7月对该排放计划打开绿灯，指其符合国际安全标准。</p>\r\n\r\n<p>日本首相岸田文雄在周二（22日）在内阁会议后表示，如果天气和海况适宜，当局将要求核电站运营商&ldquo;迅速准备&rdquo;在8月24日开始进行排水。</p>\r\n\r\n<p>他表示：&ldquo;今后就算需要数十年的较长时间，作为政府都将负起责任应对，直到处理水处置完毕。&rdquo;</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://www.bbc.com/zhongwen/simp/science-66264193\">福岛核灾废水与核电厂废水哪个更可怕？</a></li>\r\n	<li><a href=\"https://www.bbc.com/zhongwen/simp/world-66198759\">福岛核废水处理问题中的事实与恐惧</a></li>\r\n	<li><a href=\"https://www.bbc.com/zhongwen/simp/science-65963585\">福岛核废水排海倒计时邻居反应激烈 &ldquo;不仅是经济问题，还生死攸关&rdquo;</a></li>\r\n	<li><a href=\"https://www.bbc.com/zhongwen/simp/world-65107965\">日本百万吨福岛核废水排放在即 你会喝一罐产自那里的桃汁吗？</a></li>\r\n	<li><a href=\"https://www.bbc.com/zhongwen/simp/world-56344583\">日本福岛核电站事故10周年：当年发生了什么</a></li>\r\n</ul>\r\n\r\n<p>岸田文雄上周日（20日）访问了东京电力公司的福岛第一核电站视察，引发了有关排放即将开始的猜测。</p>\r\n\r\n<p>在日本宣布该决定后，中国外交部发言人汪文斌指责日本政府此举是&ldquo;向全世界转嫁核污染风险，将一己私利凌驾于全人类长远福祉之上&rdquo;，&ldquo;极端自私，极不负责任&rdquo;，表示北京已提出严正交涉。</p>\r\n\r\n<p>今年7月，中国海关总署已禁止输入包括福岛在内的日本10都县的水产，未在禁止名单的其余地区水产也须经过检测核格才能进口。</p>\r\n\r\n<p>香港特区政府周二宣布，从周四开始禁止日本东京都、福岛县等十个都县的所有水产品，包括活生、冷冻与干燥制品，进口香港。</p>\r\n\r\n<p>这十个都县包括：东京、福岛、千叶、栃木、茨城、群马、宫城、新潟、长野和埼玉。</p>\r\n\r\n<p>韩国政府表示，首尔认为日本的排放计划&ldquo;在科学或技术方面没有问题&rdquo;，但这不代表同意或支持排放计划。</p>\r\n\r\n<p>韩国反对党则抨击日本的排放计划&ldquo;自私且不负责任&rdquo;。</p>\r\n\r\n<p>台湾外交部曾经于7月表示，考察团已三度赴日了解排放废水进程，将持续敦促日方，在符合国际标准及规范下，执行排放作业。</p>\r\n\r\n<p>2011年，9.0级地震引发的海啸淹没了福岛第一核电站的三座反应堆，导致堆芯熔毁。该事件被认为是自切尔诺贝利事件以来世界上最严重的核灾难。</p>\r\n\r\n<p>日本政府表示，对于福岛核电站漫长的退役流程来说，排放核废水是必要步骤。该核电站位于日本东海岸，在东京东北约220公里（137英里）处。</p>\r\n\r\n<p>当地渔民表示，担心排放这些废水会影响他们的生计。</p>\r\n\r\n<p>准备排放的废水包括核电厂机组爆炸后，渗入机芯的地下水，也有本来抽取来冷却机组的海水。</p>\r\n\r\n<p>核电站运营商东电公司一直在对水进行过滤，以去除60多种放射性物质，但水不会完全无辐射，因为其仍然含有氢和碳的放射性同位素氚和碳-14，它们无法轻易从水中去除。</p>\r\n\r\n<p><a href=\"https://ichef.bbci.co.uk/news/640/cpsprodpb/2235/production/_130475780_alps_fukushima_graph640_v3-nc.png\"><img alt=\"\" src=\"https://ichef.bbci.co.uk/news/640/cpsprodpb/2235/production/_130475780_alps_fukushima_graph640_v3-nc.png\" style=\"height:711px; margin-left:250px; margin-right:250px; width:400px\" /></a></p>\r\n\r\n<p>香港核学会主席陆炳林博士曾对BBC中文分析说：&ldquo;现在福岛所排放的废水，除了一些核电站废水常见的放射性元素，例如氚、碳-14之外，还多了许多所谓的&#39;超铀&#39;放射性物质，比如钚、锶、铯。那么在一般的核电厂里是不会排出这么高毒素的放射物。&rdquo;</p>\r\n\r\n<p>国际环保组织绿色和平（Greenpeace）于2021年5月发表的专题文章指出，一般核电厂运行的废水不会直接接触机芯燃料棒，这就是福岛核废水与一般核电厂废水的根本分别。</p>\r\n\r\n<p>文章还引用美国马萨诸塞州伍兹霍尔海洋研究所（Woods Hole Oceanographic Institution）资深科学家肯&middot;布塞勒博士（Dr Ken O Buesseler）发表于2020年8月的论文称，据估算，现存福岛核废水内放射性氚的辐射总量高达1000太贝克。</p>\r\n\r\n<p>不过，日本政府与运营福岛第一核电站的东京电力公司（TEPCO）强调，这些核废水将经过&ldquo;先进液体处理系统&rdquo;（ALPS，又译多核种除去设备）处理，再通过海底隧道从一公里外的近海排放出去。ALPS据称能过滤多种放射性物质，但氚除外。</p>\r\n\r\n<p>专家认为，除非大量饮用，否则排放不会造成危险，因为它们释放的辐射量非常低。</p>\r\n\r\n<p>东京此前表示，将释放到太平洋的废水已经与海水混合，其中的氚和碳14的含量符合安全标准。</p>\r\n\r\n<p>在日本政府宣布排放决定后，东京有抗议者在首相官邸外举行集会，敦促政府停止排放。</p>\r\n', '2024-01-20', 'd3a0f97f2fa353b83457a2acb5daefb9.jpg', NULL, 28, 1, 1);

-- ----------------------------
-- Table structure for article_tag
-- ----------------------------
DROP TABLE IF EXISTS `article_tag`;
CREATE TABLE `article_tag`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `article_id` int NULL DEFAULT NULL,
  `tag_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `tag_article_article_id`(`article_id`) USING BTREE,
  INDEX `idx_tag_id`(`tag_id`) USING BTREE,
  CONSTRAINT `fk-tag_id` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `tag_article_article_id` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of article_tag
-- ----------------------------

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (1, '有关核辐射');

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `user_id` int NULL DEFAULT NULL,
  `article_id` int NULL DEFAULT NULL,
  `status` int NULL DEFAULT NULL,
  `date` date NULL DEFAULT NULL,
  `video_id` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'null',
  `password` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'pass123',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx-post-user_id`(`user_id`) USING BTREE,
  INDEX `idx-article_id`(`article_id`) USING BTREE,
  CONSTRAINT `fk-post-user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES (1, 'lol', 2, 2, 1, '2020-05-09', 'null', 'pass123');
INSERT INTO `comment` VALUES (2, 'soom', 2, 2, 1, '2020-05-09', NULL, 'pass123');
INSERT INTO `comment` VALUES (4, 'hello\r\n', 2, 2, 1, '2020-05-09', NULL, 'pass123');
INSERT INTO `comment` VALUES (5, 'hello', 2, NULL, 1, '2020-05-09', NULL, 'pass123');
INSERT INTO `comment` VALUES (6, 'a', 2, 2, 1, '2020-05-09', 'null', 'pass123');
INSERT INTO `comment` VALUES (7, 'lala', 2, 2, 1, '2020-05-09', 'null', 'pass123');
INSERT INTO `comment` VALUES (8, 'kk', 4, 2, 1, '2020-05-09', 'null', 'pass123');
INSERT INTO `comment` VALUES (13, 'kk', 2, 0, 1, '2020-05-09', 'ECR47F1S', 'pass123');
INSERT INTO `comment` VALUES (14, 'video', 2, 0, 1, '2020-05-09', 'ECR47F1S', 'pass123');
INSERT INTO `comment` VALUES (15, 'videoagin', 2, NULL, 1, '2020-05-09', 'ECR47F1S', 'pass123');
INSERT INTO `comment` VALUES (16, 'testing testing', 6, 3, 1, '2020-06-01', 'null', 'pass123');
INSERT INTO `comment` VALUES (17, 'I\'ll be sure to be avoiding camels, bats, and pangolins and blow torch my steak and eggs in the morning.', 2, NULL, 1, '2020-06-07', 'PAnKGl9G', 'pass123');
INSERT INTO `comment` VALUES (18, '加油', 2, 6, 1, '2020-06-07', 'null', 'pass123');

-- ----------------------------
-- Table structure for contact_form
-- ----------------------------
DROP TABLE IF EXISTS `contact_form`;
CREATE TABLE `contact_form`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `lastname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `sex` tinyint(1) NULL DEFAULT NULL,
  `wechatid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `phone` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `message` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of contact_form
-- ----------------------------
INSERT INTO `contact_form` VALUES (12, 'Tony', 'Stark', 1, 'iamironman', '159876-546-64', 'I think your web page is pretty good.');
INSERT INTO `contact_form` VALUES (13, 'Tony', 'Stark', 1, 'iamironman', '159876-546-64', 'I think your web page is pretty good.');
INSERT INTO `contact_form` VALUES (14, 'Steve', 'Rogers', 1, 'america', '157952-32468', 'Good job!');

-- ----------------------------
-- Table structure for country
-- ----------------------------
DROP TABLE IF EXISTS `country`;
CREATE TABLE `country`  (
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`code`) USING BTREE,
  UNIQUE INDEX `country_code_idx`(`code`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

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
-- Table structure for cov_news
-- ----------------------------
DROP TABLE IF EXISTS `cov_news`;
CREATE TABLE `cov_news`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `pubDate` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `title` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `summary` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `infoSource` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `sourceUrl` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `image` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 43733 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cov_news
-- ----------------------------
INSERT INTO `cov_news` VALUES (43700, '2023/11/20 15:40', '日本第三轮核污染水排海结束 累计排放量超2.3万吨', '据日本广播协会(NHK)当地时间20日报道，东京电力公司称，福岛第一核电站第三轮核污染水排海已于当天中午左右结束。\n　　本次排放自11月2日开始，总排放量为7753吨。第四轮排海预计将于明年年初开始，四次排放总排放量约为3.12万吨，目前已排放2.3351万吨。(央视新闻客户端 总台报道员 林博翰)', '中国新闻网', 'https://www.chinanews.com.cn/gj/2023/11-20/10114937.shtml', 'https://qnimg.zhaibian.com/upload/20220324/b3cdc893ddc6157bb3d15a2e2bb22d4e.jpg');
INSERT INTO `cov_news` VALUES (43701, '2023/11/20 13:22', '国际热评：超2.3万吨核污水全部入海 日本，请住手！', '中新网11月20日电 (张奥林)11月20日，福岛核电站第三批次核污水排放结束，从8月24日正式开启排污，不到三个月的时间，已有超2.3万吨核污水流入太平洋。', '中国新闻网', 'https://www.chinanews.com.cn/gj/2023/11-20/10114844.shtml', 'https://k.sinaimg.cn/n/sjzx/crawl/85/w550h335/20210413/31dc-knqqqmv1007208.jpg/w700h350z1l10t10fd3.jpg');
INSERT INTO `cov_news` VALUES (43702, '2023/11/17 17:04', '习近平会见日本首相岸田文雄', '中新社旧金山11月16日电 (记者 郭金超 梁晓辉)当地时间11月16日下午，中国国家主席习近平在旧金山会见日本首相岸田文雄。\n　　两国领导人重申恪守中日四个政治文件的原则和共识，重新确认全面推进战略互惠关系的两国关系定位，致力于构建契合新时代要求的建设性、稳定的中日关系。\n　　习近平指出，今年是中日和平友好条约缔结45周年，条约以法律形式确立了中日和平、友好、合作的大方向，成为两国关系史上的里程碑。45年来，在包括条约在内的中日四个政治文件指引下，两国关系尽管历经风雨，但总体保持发展势头，给两国人民带来福祉，也为促进地区和平、发展、繁荣发挥了积极作用。当前国际形势变乱交织，风险挑战层出不穷，中日和平共处、世代友好、互利合作、共同发展，符合两国人民根本利益。当前，中日关系正处于承前启后的关键时期，双方应该顺应时代潮流，把握正确方向，本着“以史为鉴、开辟未来”的精神，保持邦交正常化初心，客观理性看待彼此发展，树立积极友善相互认知，建设性管控矛盾分歧，将“互为合作伙伴、互不构成威胁”的政治共识体现到具体政策和实际行动中。', '中国新闻网', 'https://www.chinanews.com.cn/gn/2023/11-17/10113776.shtml', 'https://www.chinanews.com/gn/shipin/2023/11-17/U574P883T4D975666F158DT20231117164806.jpg');
INSERT INTO `cov_news` VALUES (43703, '2023/12/18 20:25', '日本将于2024年2月启动第四轮核污染水排海 总量7800吨', '中新网12月18日电 据日本放送协会(NHK)报道，日本东京电力公司18日表示，福岛第一核电站第四轮核污染水排海将于2024年2月下旬开始，排海总量预计为7800吨，预计将于3月结束。', '中国新闻网', 'https://www.chinanews.com.cn/gj/2023/12-18/10130857.shtml', 'https://i2.chinanews.com.cn/simg/cmshd/2023/12/18/d957f36fa55149efb53efc75b13b7439.jpg');
INSERT INTO `cov_news` VALUES (43704, '2023/12/13 16:18', '福岛第一核电站一名工作人员被放射性物质污染 中方回应', '毛宁：我也注意到有关报道。日本福岛第一核电站退役、核污染水处置过程中，接连发生工作人员遭受核污染水溅射、放射性物质污染等事故，充分说明问题的严重性，也再次证明妥善处理核污染水的极端重要性。\n日方核污染水排海计划长达30年甚至更久，存在巨大的风险隐患。中方敦促日方重视各利益攸关方的关切，全面配合建立各方实质参与、长期有效的国际监测安排，切实防止排海对海洋环境和人类健康造成长期危害。', '中国新闻网', 'https://www.chinanews.com.cn/gn/2023/12-13/10127693.shtml', 'https://ts1.cn.mm.bing.net/th/id/R-C.029804ec17ffd7bf3a85f1c2a714bdac?rik=02ODbP8DTlPlog&riu=http%3a%2f%2fimg2.zjolcdn.com%2fpic%2f0%2f14%2f02%2f75%2f14027522_976773.jpg&ehk=yUmxGYThrklWrMYh4PHWiP99YVl4eETkA8Rfxtf94wg%3d&risl=&pid=ImgRaw&r=0');
INSERT INTO `cov_news` VALUES (43705, '2023/12/11 21:10', '日本福岛第一核电站一名废炉作业工人遭放射性物质污染', '据日本《朝日新闻》报道，东京电力公司11日发布消息称，在福岛第一核电站内进行废炉作业的一名工人面部受到放射性物质污染。\n　　东电公司称，遭放射性物质污染的工人为一名20多岁的男子，当日在福岛第一核电站2号机组附近对已解体的围栏进行除污作业。他在除污作业结束后，被发现鼻腔受到了放射性物质污染，其体内可能吸入了放射性物质。', '中国新闻网', 'https://www.chinanews.com.cn/gj/2023/12-11/10126580.shtml', 'https://ts1.cn.mm.bing.net/th/id/R-C.f69316aade623bcec37babe043b9716a?rik=yVYTZX2To7Wrpw&riu=http%3a%2f%2fhimg2.huanqiu.com%2fattachment2010%2f2013%2f1108%2f20131108090938130.jpg&ehk=%2fZUbKCsoz2uUmnFKNTrnaPg4kB0aOWUTG%2fm8dgJW%2fUU%3d&risl=&pid=ImgRaw&r=0');
INSERT INTO `cov_news` VALUES (43706, '2023/11/28 15:54', '中方：日方应认真对待利益攸关方要求进行损害认定与赔偿的正当诉求', '中新网北京11月28日电 (记者 黄钰钦)中国外交部发言人汪文斌28日主持例行记者会。\n　　有记者提问：据报道，在日本政府启动福岛核污染水排海3个月之际，东京电力公司近日面向日本国内福岛核污染水排海受害者启动了损害认定和赔偿。发言人对此有何评论？\n　　汪文斌：日本福岛核污染水排海事关全人类健康、全球海洋环境、国际公共利益。日方不仅应当严肃对待国内民众关切，同样应当正视国际社会特别是周边邻国的强烈担忧，本着负责任和建设性的态度同利益攸关方进行沟通，认真对待利益攸关方要求进行损害认定与赔偿的正当诉求。', '中国新闻网', 'https://www.chinanews.com.cn/gn/2023/11-28/10119144.shtml', 'https://tse4-mm.cn.bing.net/th/id/OIP-C.PoyySbBcrV7hDlFklmdZLAHaEg?rs=1&pid=ImgDetMain');
INSERT INTO `cov_news` VALUES (43707, '2023/11/27 05:39', '内外抗议声不断 日方应配合建立长期有效国际监测安排', '11月20日，东京电力公司(以下简称东电)发布消息称，已经完成第三轮核污染水排放，第四轮将在明年初实施。按照计划，东电在2024年3月底前共进行四轮排放，共计排放3.12万吨核污染水。自8月24日正式启动核污染水排海以来，日本国内外反对抗议持续，不断暴露的事故和问题也进一步加重了国际社会的担忧。事实证明，东电管理体制存在漏洞，日方宣称的“安全、透明”的排海计划不能令人信服。', '中国新闻网', 'https://www.chinanews.com.cn/gj/2023/11-27/10118372.shtml', 'https://www.whb.cn/u/cms/www/202303/13235432rokm.JPG');
INSERT INTO `cov_news` VALUES (43708, '2023/11/25 05:52', '中国代表敦促日本全面配合接受严格国际监督', '中新社柏林11月24日电 　维也纳消息：中国常驻国际原子能机构代表李松大使24日在国际原子能机构11月理事会上发言，重申中方坚决反对日本福岛核污染水排海，敦促日方全面配合接受严格国际监督。', '中国新闻网', 'https://www.chinanews.com.cn/gj/2023/11-25/10117721.shtml', 'https://i2.chinanews.com.cn/simg/ypt/2023/231125/4151933c-5b6b-4036-bd90-896f0f95534e_zsite.jpg');
INSERT INTO `cov_news` VALUES (43709, '2023/11/23 15:51', '福岛核污染水排海已三个月 中方：国际社会迫切要求建立长期有效的国际监测安排', '中新网北京11月23日电  (记者 李京泽)中国外交部发言人毛宁23日主持例行记者会。\n　　有记者提问：东京电力公司排放核污染水已经三个月，中方对此如何评论？\n　　毛宁：中方反对福岛核污染水排海的立场是一贯的，也是很明确的。我们认为，日本福岛核污染水排海事关人类健康、事关全球海洋环境、事关国际公共利益。日方应当严肃对待国内外的合理关切，本着负责任和建设性的态度妥善处理。', '中国新闻网', 'https://www.chinanews.com.cn/gn/2023/11-23/10116731.shtml', 'https://www.chinanews.com.cn/gn/2023/11-23/U422P4T8D10116731F107DT20231123163234.jpg');
INSERT INTO `cov_news` VALUES (43713, '2023/11/17 17:04', '日本首相要求中方取消禁止从日本进口食品的措施 外交部回应', '另有记者提问：日本首相岸田文雄在美国旧金山和习近平主席会见的时候，明确要求，中方立即取消禁止从日本进口食品的措施。发言人对此有何评论？\n　　毛宁：习近平主席在会见日本首相岸田文雄的时候指出，日本福岛核污染水排海事关全人类健康、全球海洋环境、国际公共利益，日方应该严肃对待国内外的合理关切，本着负责任和建设性的态度妥善处理。', '中国新闻网', 'https://www.chinanews.com.cn/gn/2023/11-17/10113734.shtml', 'https://i2.chinanews.com.cn/simg/cmshd/2023/11/17/1e9e144009a741ee924c41c7a90d54d4.jpg');
INSERT INTO `cov_news` VALUES (43714, '2023/11/10 08:19', '王毅会见日本内阁特别顾问、国家安全保障局长秋叶刚男', '2023年11月9日，中共中央政治局委员、中央外办主任王毅在北京会见日本内阁特别顾问、国家安全保障局长秋叶刚男并举行中日高级别政治对话机制磋商。\n　　王毅阐明了中方对当前中日关系的原则立场，指出了改善和发展中日关系的正确路径。\n　　双方重申恪守中日四个政治文件确定的各项原则，努力推动两国关系重回健康稳定发展轨道。双方同意继续就此保持沟通。', '中国新闻网', 'https://www.chinanews.com.cn/gn/2023/11-10/10109523.shtml', 'https://thepaper-prod-oldimagefromnfs.oss-cn-shanghai.aliyuncs.com/image/10/13/787.jpg');
INSERT INTO `cov_news` VALUES (43715, '2023/11/08 11:13', '王毅同志在第四届“海洋合作与治理论坛”开幕式上的致辞', '各位来宾，各位朋友：\n　　大家好！很高兴出席第四届海洋合作与治理论坛开幕式。首先，我谨代表中国政府对论坛的成功召开表示热烈祝贺，向出席论坛的各国和国际组织代表、专家学者、媒体朋友们表示热烈欢迎！\n　　海洋是人类赖以生存发展的重要基础，也是文明交流互鉴的天然平台，加强海洋合作，完善海洋治理，反映了各国的共同愿望，也是时代的大势所趋。与此同时，当今世界并不太平，海洋的发展正面临前所未有的风险挑战。我们看到，冷战思维、零和博弈威胁着海洋的和平稳定，气候变化、过度开发损害着海洋的持续发展，环境污染、随意排放破坏着海洋的清洁美丽，自然灾害、海盗犯罪扰乱着海洋的安宁秩序。', '中国新闻网', 'https://www.chinanews.com.cn/gn/2023/11-08/10108150.shtml', 'https://ts1.cn.mm.bing.net/th/id/R-C.d12483ed57161f5655b508947a583bb9?rik=%2bjNYgmTAZR6g9A&riu=http%3a%2f%2fwww.nanhai.org.cn%2fuploads%2fimage%2f20211109%2f1636466039343977.jpg&ehk=65uthAEvPzXAIEbMTcwn%2fWDeZ8thttdyjg1U0BZLhZc%3d&risl=&pid=ImgRaw&r=0');
INSERT INTO `cov_news` VALUES (43716, '2023/11/05 22:37', '中国生态环境部部长：坚决反对日本单方面启动核污染水排海行动', '中新社北京11月5日电 中国生态环境部部长黄润秋在第二十四次中日韩环境部长会议上强调，海洋是全人类共同的财产。核污染水处置关乎全球海洋生态环境和民众健康。日方应忠实履行本国的国际义务，同邻国等利益攸关方充分协商，以科学、负责任方式处置核污染水。', '中国新闻网', 'https://www.chinanews.com.cn/gn/2023/11-05/10106580.shtml', 'https://image.01icon.com/media/images/dw/20230205/699036881475604480852379.jpeg?w=660');
INSERT INTO `cov_news` VALUES (43717, '2023/11/04 22:06', '亚太观察丨日本启动第三轮核污染水排海', '日本东京电力公司11月2日启动第三轮核污染水排海，预计将持续到11月20日，排放量约为7800吨。而就在此前的10月25日，福岛第一核电站发生放射性废液溅射事件，处理核污染水的5名工作人员接触到放射性废液，其中2人被紧急送医。东电公司最初公布称，溅射的放射性废液量仅为100毫升，但数日后却进行订正称，溅出的废液量达数升之多，比最初的数据高出几十倍。此次事故，在日本社会备受关注。', '中国新闻网', 'https://www.chinanews.com.cn/gj/2023/11-04/10106159.shtml', 'https://ugc-img.ifengimg.com/img/2021/12/23/8CCh5enSMyJ/4ed42252-5cf3-4991-9cac-71df82c3eb09_w483_h322.jpeg');
INSERT INTO `cov_news` VALUES (43718, '2023/11/04 16:00', '亚太观察丨长期管理混乱 对公众欺瞒推责 日本东电痼疾积重难返', '近日，日本福岛第一核电站发生的放射性废液溅射事件再次表明，东京电力公司长期存在的内部管理混乱无序、对公众隐瞒欺骗等痼疾积重难返。\n　　事实上，福岛核事故发生12年来，东电善后处理漏洞百出，迟报、瞒报事件频繁发生。对于因核事故而罹患癌症等严重疾病的日本民众，东电也始终是在推卸责任。从核污染水排海到所谓计划中的福岛第一核电站拆除，按照日本政府和东电的说法，将持续数十年的时间。而一直以来，福岛核事故善后工作的混乱和无序让不少日本民众对福岛核事故今后的处理充满担忧。', '中国新闻网', 'https://www.chinanews.com.cn/gj/2023/11-04/10105988.shtml', 'https://n.sinaimg.cn/sinakd20230205s/107/w1024h683/20230205/b0e7-20e3e83a0721a3fc9193ba93410437b7.jpg');
INSERT INTO `cov_news` VALUES (43719, '2023/11/04 09:10', '新漫评：日本又排“祸水” 再造地球之殇', '11月2日，日本正式开始排放第三批福岛核污水，预计将持续17天。此次的排放量与前两次大致相同，仍为7800吨左右。这也意味着，第三批的排放结束后，流入太平洋的核污水累计将超过2.3万吨。\n　　据日本放送协会(NHK)，7800吨相当于10个核污染水储水罐的量，在2011年福岛核事故之后，当地已经修建了1000多个储水罐。有数据显示，在正式排污开始前，福岛核污染水已存到了130万吨，要把这些水全部排完，至少需要30年。', '中国新闻网', 'https://www.chinanews.com.cn/gj/2023/11-04/10105872.shtml', 'https://i2.chinanews.com.cn/simg/cmshd/2023/11/04/c7bbb4b31ab34db09581352895040095.jpg');
INSERT INTO `cov_news` VALUES (43720, '2023/11/03 16:03', '国际锐评丨这起事故戳穿了日方关于核污染水的两个谎言', '不顾国内外强烈反对，日本东京电力公司2日启动了福岛核污染水第三次排海作业。这次排放预计持续到本月20日，排放量约为7800吨。东电公司声称，排放的核污染水“所含放射性物质氚的浓度符合预期”。然而，一周前，这家声名狼藉的企业发生了一起放射性废液溅射污染事故，2名工作人员被紧急送医。这自证了日方所谓核污染水“安全”的说辞绝不可信，核污染水处置过程中的风险不容低估。', '中国新闻网', 'https://www.chinanews.com.cn/gj/2023/11-03/10105485.shtml', 'https://www.ccnta.cn/uploadfile/2021/1216/20211216100342107.jpg');
INSERT INTO `cov_news` VALUES (43721, '2023/11/02 18:41', '中国驻日使馆发言人就日本启动第三批福岛核污染水排海答记者问', '中新网东京11月2日电  中国驻日本使馆发言人11月2日就日本启动第三批福岛核污染水排海答记者问。\n　　有记者问，11月2日，东京电力公司启动第三批福岛核污染水排海，请问你对此有何评论？\n　　发言人表示，日方连续倾倒核污染水，给全球海洋环境安全造成重大风险。中方反对日本福岛核污染水排海的立场是明确和坚定的。我们再次敦促日方全面回应国际社会关切，接受利益攸关方充分实质参与、长期有效的国际监测安排，切实以科学、安全、透明方式处置核污染水。', '中国新闻网', 'https://www.chinanews.com.cn/gn/2023/11-02/10105074.shtml', 'https://tse2-mm.cn.bing.net/th/id/OIP-C.GYjknyM7-4m5PORDynMwQwAAAA?rs=1&pid=ImgDetMain');
INSERT INTO `cov_news` VALUES (43722, '2023/11/02 17:16', '日本启动第三批核污染水排海 民众持续集会反对', '据日本《产经新闻》报道，第三批排放的核污染水总量为7800吨左右，与第一批、第二批核污染水的排放量相当。第三批核污染水预计在11月20日完成排放。东京电力公司计划在2023年度排放总计3.12万吨核污染水。\n　　当地时间11月1日晚，日本多个市民团体再度在东京电力公司总部前集会，强烈反对东京电力公司启动第三批核污染水排海。活动组织方代表柳田真在现场表示，日本政府和东京电力公司以推进福岛第一核电站核电机组退役为由强行将核污染水排海，是“彻头彻尾的谎言”。核电机组退役工作至今没有明确的路线图和时间表。', '中国新闻网', 'https://www.chinanews.com.cn/gj/2023/11-02/10105035.shtml', 'https://imagecloud.thepaper.cn/thepaper/image/212/438/197.jpg');

-- ----------------------------
-- Table structure for cov_research
-- ----------------------------
DROP TABLE IF EXISTS `cov_research`;
CREATE TABLE `cov_research`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `summary` varchar(2000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `date` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `image` mediumblob NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cov_research
-- ----------------------------
INSERT INTO `cov_research` VALUES (1, '切尔诺贝利核事故幸存者子女并无过多新发突变', '2021年4月22日，《科学》发表两篇论文，乌克兰国家辐射医学研究中心和美国国家癌症研究所的研究人员对切尔诺贝利事故幸存者及其后代的基因组进行了研究，他们没有发现辐射影响跨代效应的证据。', 'https://paper.sciencenet.cn/htmlpaper/2021/4/202142813444765763097.shtm', '2021/4/26', 0x68747470733A2F2F7777772E736369656E63652E6F72672F636D732F31302E313132362F736369656E63652E616267323533382F61737365742F63613736626238652D616138342D343062612D623033362D6561393965366164633064612F6173736574732F677261706869632F3337325F616267323533385F66612E6A706567);
INSERT INTO `cov_research` VALUES (2, '中国核技术应用产业发展报告（2023）核心报告', '为切实推进我国核技术应用产业高质量发展，2022年4月，中国核能行业协会启动首份《中国核技术应用产业发展报告(2023)》(简称《产业发展报告》)的编撰工作，并邀请219余位长期从事核技术应用产业化工作的专家、学者和企业家组建编写及评审团队。全体编评人员克服困难，秉持客观、公正、专业精神，形成了80多万字的首份《产业发展报告》。报告全面扫描全球核技术应用产业发展大势，聚焦分析我国核技术应用产业的政策环境、市场规模及前景、发展动力、骨干企业、竞争格局、制约因素及发展瓶颈，并提出对策建议。报告包括总体发展、技术与产业、典型案例三个篇章。我们相信，《产业发展报告》 将有助于促进我国核技术应用产业技术、资本、人才和市场等要素间的高效衔接和深度迭代，有助于政府部门决策、行业改善管理、市场投资优化、企业技术创新、应用业态拓展，并给企业家、创业家、投资人、消费者及相关从业人员等提供十分有价值的参考。', 'https://nnsa.mee.gov.cn/ywdt/hyzx/202307/t20230720_1036784.html', '2023/07/20', 0x68747470733A2F2F6E6E73612E6D65652E676F762E636E2F696D616765732F4E4E53415F626173655F76323031395F30372E706E67);
INSERT INTO `cov_research` VALUES (3, '辐射损伤后唾液腺中的CSF1R依赖性巨噬细胞对上皮再生至关重要', '放射治疗是治疗头颈癌的有效方法，但副作用广泛，包括慢性口干。McKendrick 等人。研究了巨噬细胞在唾液腺中的作用，以更好地了解它们对辐射的反应以及如何靶向恢复它们的功能。他们在成年小鼠的唾液腺中鉴定了两个转录不同的CX3CR1巨噬细胞亚群。腺体上皮富集CD11cCD206++–CD163型–巨噬细胞，而 CD11c–CD206CD163巨噬细胞定位于血管和神经。辐射诱导的唾液腺损伤小鼠模型证实，这种治疗改变了该部位巨噬细胞亚群的组成和寿命，但上皮相关的CD11cCD206+++–CD163型–巨噬细胞是损伤后上皮细胞再生所必需的。这些发现提供了对唾液腺对辐射反应的见解，并可以指导未来的治疗。——克里斯蒂安娜·福格', 'https://www.science.org/doi/10.1126/sciimmunol.add4374', '2023/11/03', '');
INSERT INTO `cov_research` VALUES (4, '福岛核事故污染水的排放：宏观和微观模拟', '从宏观和微观两个分析模型分析了2023年起处理后的福岛核事故污染水排入太平洋的扩散过程。结果表明，氚将在1200天内扩散到整个北太平洋，这对制定全球应对策略具有重要意义。', 'https://pubmed.ncbi.nlm.nih.gov/35070334/', '2021/11/26', '');
INSERT INTO `cov_research` VALUES (5, '福岛核事故后第一年实施的食品和水安全规定', '2011年3月11日下午，一场历史性的地震和海啸在日本东北海岸造成巨大破坏，次日清晨，福岛核电站1号核电站受灾反应堆释放放射性核素。2011 年 3 月 15 日，在表层土壤和植物中检测到高水平的放射性碘和放射性铯，因此于 2011 年 3 月 16 日开始对食物和水进行采样以进行监测调查。2011年3月17日，为受放射性碘、放射性铯、铀、钚和其他超铀α排放物订定临时规管值，以规管受放射性污染的食物和水的安全。2011 年 3 月 21 日，首次下令限制受污染物品的分发和消费。截至目前，自来水、生鲜奶、蔬菜、蘑菇、水果、坚果、海藻、海洋无脊椎动物、沿海鱼类、淡水鱼、牛肉、野生动物肉、糙米、小麦、茶叶等食品的污染情况均已超过暂行规例值。在2011年3月16日至2011年5月21日期间抽取的样本和在2011年3月18日至今抽取的放射性铯样本均超出放射性碘的暂定规管值。所有限制均在每件物品首次超过临时法规值后的 318 天内实施。本文根据截至2012年3月31日的现有资料，总结了执行监测调查和限制的政策，以及220 411个样本的监测结果和实施的限制。', 'https://academic.oup.com/jrr/article/53/5/641/914129', '2012/07/22', '');
INSERT INTO `cov_research` VALUES (6, '福岛核事故对农业的影响', '事故发生后，东京大学研究生院农业与生命科学研究生院的40至50名学术人员立即成立了一个独立小组，以监测放射性物质在野外的行为及其对农田、森林、河流、动物等的影响。当核电站的放射性核素落下时，它们立即被吸附在它们第一次接触的地点;因此，在事故发生时，尘埃被发现为暴露在空气中的任何东西表面的散落斑点。随着时间的流逝，吸附变得更强，因此放射性核素现在很难去除。本报告总结了我们对农业田地的广泛影响的研究结果。', 'https://academic.oup.com/jrr/article/57/S1/i47/2580511', '2016/08/16', '');
INSERT INTO `cov_research` VALUES (7, '福岛核事故后天然放射性核素和人工放射性核素的剂量比较', '由于福岛第一核电站事故，浪江町的撤离人员仍然无法在该镇居住，有些人继续住在临时住房单元中。在这项研究中，测量了福岛县临时住房设施、公寓和独立式住宅的氡活度浓度，以估计居民的年度内部暴露剂量。使用被动氡-钍监测器（使用CR-39）和脉冲型电离室来评估氡活度浓度。临时住房单元（包括医疗诊所、公寓和独立式住宅）的平均氡活度浓度分别为5、7和9 Bqm−3。假设居民在这些设施中居住一年，评估每种住房类型中室内氡的平均年有效剂量分别为 0.18、0.22 和 0.29 mSv。根据室内氡测量结果和公布的数据，估计了福岛县所有居民因自然和人工来源而获得的平均有效剂量。从浪江镇撤离的人员因自然来源而获得的平均有效剂量估计为1.9毫希沃特。相比之下，在FDNPP事故发生后的第一年，由于事故的人工来源，疏散人员的平均有效剂量为5.0 mSv。虽然居民因天然放射性核素而遭受的内部和外部暴露是不可避免的，但通过改变居民的某些行为，可以降低因人工放射性核素而产生的外部暴露。', 'https://academic.oup.com/jrr/article/57/4/422/2580367', '2016/08/03', '');
INSERT INTO `cov_research` VALUES (8, '福岛核事故后为减轻辐射暴露和风险沟通挑战而开展的公共卫生活动', '我们总结了2011年3月11日福岛核事故发生后为减轻公众辐射暴露而采取的公共卫生行动，以记录为备灾所吸取的宝贵经验教训。从受辐射影响地区撤离和控制各种食品的分配，有助于减少福岛事故造成的外部和内部辐射暴露。然而，在应急响应工作和随后的核灾难处理阶段，风险沟通也是一个重要问题。为了协助他们的康复过程，应继续通过双向通信向受辐射影响的社区传播可靠、可靠的科学信息。我们将描述核灾难发生后早期、中期和后期的基本公共卫生行动，这些行动将有助于应对其他核或辐射灾难的放射性准备规划。 ', 'https://academic.oup.com/jrr/article/56/3/422/917195', '2015/04/09', '');
INSERT INTO `cov_research` VALUES (9, '核电站事故后福岛旅行者的细胞遗传学生物剂量测定：没有证据表明增加了双着丝点的产生量', '福岛核事故发生后前往污染地区的人对健康影响感到担忧。然而，如果没有个人剂量测量，任何不良健康影响的医疗随访将很困难。细胞遗传学生物剂量测定法是回顾性评估吸收剂量的合理方法。我们分析了265名福岛旅行者的双着丝粒染色体，他们大多是记者和救援人员，他们在核紧急情况下被派往日本东北部。作为对照组，招募了 37 名自事故发生后未访问过日本的健康志愿者。比较了旅行者和对照组的剂量反应校准曲线计算的二元剂量和吸收剂量。', 'https://academic.oup.com/jrr/article/53/6/876/974580', '2012/08/01', '');
INSERT INTO `cov_research` VALUES (10, '东京电力公司福岛第一核电站事故中7名核电工人没有甲状腺受损的证据：甲状腺状况的10年随访结果', '2011年3月，东京电力公司（TEPCO）福岛第一核电站（FDNPP）发生事故后，在应急行动中，7名应急核工作人员因摄入放射性核素（主要是I-131）而内部暴露，他们前往国立放射科学研究所（NIRS）门诊进行医学评估。他们在第一次访问后进行了 10 年的随访。估计的甲状腺承诺等效剂量分布在 3.2 至 1.2 × 10 Sv 之间。这群人被认为在事故中受到的曝光率最高。所有工人均未出现甲状腺功能异常的症状。检查，包括甲状腺功能检查和超声波检查，没有发现与辐射暴露有关的异常。然而，未来需要在更长的时间内持续监测他们的甲状腺状况。', 'https://academic.oup.com/jrr/article/64/2/294/6968638', '2023/01/04', '');

-- ----------------------------
-- Table structure for covid_map
-- ----------------------------
DROP TABLE IF EXISTS `covid_map`;
CREATE TABLE `covid_map`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `pid` int NOT NULL,
  `date` date NOT NULL,
  `placename` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `confirm` int NULL DEFAULT 0,
  `cured` int NULL DEFAULT 0,
  `death` int NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5157 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of covid_map
-- ----------------------------
INSERT INTO `covid_map` VALUES (4978, 1, '2020-06-13', '阿富汗\n', 22890, 0, 426);
INSERT INTO `covid_map` VALUES (4979, 2, '2020-06-13', '安哥拉\n', 118, 0, 5);
INSERT INTO `covid_map` VALUES (4980, 3, '2020-06-13', '阿尔巴尼亚\n', 1385, 0, 35);
INSERT INTO `covid_map` VALUES (4981, 4, '2020-06-13', '阿拉伯联合酋长国\n', 40986, 0, 286);
INSERT INTO `covid_map` VALUES (4982, 5, '2020-06-13', '阿根廷\n', 27373, 0, 765);
INSERT INTO `covid_map` VALUES (4983, 6, '2020-06-13', '亚美尼亚\n', 14669, 0, 245);
INSERT INTO `covid_map` VALUES (4984, 7, '2020-06-13', '法属南部群岛\n', 1, 0, 0);
INSERT INTO `covid_map` VALUES (4985, 8, '2020-06-13', '澳大利亚\n', 7289, 0, 102);
INSERT INTO `covid_map` VALUES (4986, 9, '2020-06-13', '奥地利\n', 17034, 0, 674);
INSERT INTO `covid_map` VALUES (4987, 10, '2020-06-13', '阿塞拜疆\n', 8882, 0, 108);
INSERT INTO `covid_map` VALUES (4988, 11, '2020-06-13', '布隆迪\n', 85, 0, 1);
INSERT INTO `covid_map` VALUES (4989, 12, '2020-06-13', '比利时\n', 59711, 0, 9636);
INSERT INTO `covid_map` VALUES (4990, 13, '2020-06-13', '贝宁\n', 305, 0, 4);
INSERT INTO `covid_map` VALUES (4991, 14, '2020-06-13', '布吉纳法索\n', 892, 0, 53);
INSERT INTO `covid_map` VALUES (4992, 15, '2020-06-13', '孟加拉国\n', 78052, 0, 1049);
INSERT INTO `covid_map` VALUES (4993, 16, '2020-06-13', '保加利亚\n', 3086, 0, 168);
INSERT INTO `covid_map` VALUES (4994, 17, '2020-06-13', '巴哈马群岛\n', 103, 0, 11);
INSERT INTO `covid_map` VALUES (4995, 18, '2020-06-13', '波斯尼亚和黑塞哥维那\n', 2832, 0, 161);
INSERT INTO `covid_map` VALUES (4996, 19, '2020-06-13', '白俄罗斯\n', 51816, 0, 293);
INSERT INTO `covid_map` VALUES (4997, 20, '2020-06-13', '伯利兹\n', 20, 0, 2);
INSERT INTO `covid_map` VALUES (4998, 21, '2020-06-13', '百慕大\n', 141, 0, 9);
INSERT INTO `covid_map` VALUES (4999, 22, '2020-06-13', '玻利维亚\n', 16165, 0, 533);
INSERT INTO `covid_map` VALUES (5000, 23, '2020-06-13', '巴西\n', 802828, 0, 40919);
INSERT INTO `covid_map` VALUES (5001, 24, '2020-06-13', '文莱\n', 141, 0, 2);
INSERT INTO `covid_map` VALUES (5002, 25, '2020-06-13', '不丹\n', 62, 0, 0);
INSERT INTO `covid_map` VALUES (5003, 26, '2020-06-13', '博茨瓦纳\n', 48, 0, 1);
INSERT INTO `covid_map` VALUES (5004, 27, '2020-06-13', '中非共和国\n', 1952, 0, 5);
INSERT INTO `covid_map` VALUES (5005, 28, '2020-06-13', '加拿大\n', 99159, 0, 8071);
INSERT INTO `covid_map` VALUES (5006, 29, '2020-06-13', '瑞士\n', 31044, 0, 1937);
INSERT INTO `covid_map` VALUES (5007, 30, '2020-06-13', '智利\n', 154092, 0, 2648);
INSERT INTO `covid_map` VALUES (5008, 31, '2020-06-13', '中国\n', 84216, 0, 4638);
INSERT INTO `covid_map` VALUES (5009, 32, '2020-06-13', '科特迪瓦\n', 4404, 0, 41);
INSERT INTO `covid_map` VALUES (5010, 33, '2020-06-13', '喀麦隆\n', 8681, 0, 212);
INSERT INTO `covid_map` VALUES (5011, 34, '2020-06-13', '刚果民主共和国\n', 4515, 0, 98);
INSERT INTO `covid_map` VALUES (5012, 35, '2020-06-13', '刚果共和国\n', 728, 0, 24);
INSERT INTO `covid_map` VALUES (5013, 36, '2020-06-13', '哥伦比亚\n', 43810, 0, 1505);
INSERT INTO `covid_map` VALUES (5014, 37, '2020-06-13', '哥斯达黎加\n', 1538, 0, 12);
INSERT INTO `covid_map` VALUES (5015, 38, '2020-06-13', '古巴\n', 2219, 0, 84);
INSERT INTO `covid_map` VALUES (5016, 39, '2020-06-13', '北塞浦路斯\n', 0, 0, 0);
INSERT INTO `covid_map` VALUES (5017, 40, '2020-06-13', '塞浦路斯\n', 975, 0, 18);
INSERT INTO `covid_map` VALUES (5018, 41, '2020-06-13', '捷克共和国\n', 9855, 0, 328);
INSERT INTO `covid_map` VALUES (5019, 42, '2020-06-13', '德国\n', 186691, 0, 8772);
INSERT INTO `covid_map` VALUES (5020, 43, '2020-06-13', '吉布提\n', 4398, 0, 37);
INSERT INTO `covid_map` VALUES (5021, 44, '2020-06-13', '丹麦\n', 12222, 0, 593);
INSERT INTO `covid_map` VALUES (5022, 45, '2020-06-13', '多米尼加共和国\n', 21455, 0, 561);
INSERT INTO `covid_map` VALUES (5023, 46, '2020-06-13', '阿尔及利亚\n', 10589, 0, 741);
INSERT INTO `covid_map` VALUES (5024, 47, '2020-06-13', '厄瓜多尔\n', 44440, 0, 3720);
INSERT INTO `covid_map` VALUES (5025, 48, '2020-06-13', '埃及\n', 39726, 0, 1377);
INSERT INTO `covid_map` VALUES (5026, 49, '2020-06-13', '厄立特里亚\n', 41, 0, 0);
INSERT INTO `covid_map` VALUES (5027, 50, '2020-06-13', '西班牙\n', 242707, 0, 27136);
INSERT INTO `covid_map` VALUES (5028, 51, '2020-06-13', '爱沙尼亚\n', 1965, 0, 69);
INSERT INTO `covid_map` VALUES (5029, 52, '2020-06-13', '埃塞俄比亚\n', 2670, 0, 40);
INSERT INTO `covid_map` VALUES (5030, 53, '2020-06-13', '芬兰\n', 7064, 0, 325);
INSERT INTO `covid_map` VALUES (5031, 54, '2020-06-13', '斐济\n', 18, 0, 0);
INSERT INTO `covid_map` VALUES (5032, 55, '2020-06-13', '福克兰群岛\n', 13, 0, 0);
INSERT INTO `covid_map` VALUES (5033, 56, '2020-06-13', '法国\n', 191554, 0, 29347);
INSERT INTO `covid_map` VALUES (5034, 57, '2020-06-13', '加蓬\n', 3463, 0, 23);
INSERT INTO `covid_map` VALUES (5035, 58, '2020-06-13', '英国\n', 292706, 0, 41355);
INSERT INTO `covid_map` VALUES (5036, 59, '2020-06-13', '乔治亚州\n', 831, 0, 13);
INSERT INTO `covid_map` VALUES (5037, 60, '2020-06-13', '加纳\n', 10358, 0, 48);
INSERT INTO `covid_map` VALUES (5038, 61, '2020-06-13', '几内亚\n', 4372, 0, 23);
INSERT INTO `covid_map` VALUES (5039, 62, '2020-06-13', '冈比亚\n', 28, 0, 1);
INSERT INTO `covid_map` VALUES (5040, 63, '2020-06-13', '几内亚比绍\n', 1389, 0, 12);
INSERT INTO `covid_map` VALUES (5041, 64, '2020-06-13', '赤道几内亚\n', 1306, 0, 12);
INSERT INTO `covid_map` VALUES (5042, 65, '2020-06-13', '希腊\n', 3088, 0, 183);
INSERT INTO `covid_map` VALUES (5043, 66, '2020-06-13', '格陵兰岛\n', 13, 0, 0);
INSERT INTO `covid_map` VALUES (5044, 67, '2020-06-13', '危地马拉\n', 8561, 0, 334);
INSERT INTO `covid_map` VALUES (5045, 68, '2020-06-13', '法属圭亚那\n', 917, 0, 2);
INSERT INTO `covid_map` VALUES (5046, 69, '2020-06-13', '圭亚那\n', 158, 0, 12);
INSERT INTO `covid_map` VALUES (5047, 70, '2020-06-13', '洪都拉斯\n', 7669, 0, 294);
INSERT INTO `covid_map` VALUES (5048, 71, '2020-06-13', '克罗地亚\n', 2249, 0, 106);
INSERT INTO `covid_map` VALUES (5049, 72, '2020-06-13', '海地\n', 3941, 0, 64);
INSERT INTO `covid_map` VALUES (5050, 73, '2020-06-13', '匈牙利\n', 4039, 0, 553);
INSERT INTO `covid_map` VALUES (5051, 74, '2020-06-13', '印尼\n', 35295, 0, 2000);
INSERT INTO `covid_map` VALUES (5052, 75, '2020-06-13', '印度\n', 297535, 0, 8498);
INSERT INTO `covid_map` VALUES (5053, 76, '2020-06-13', '爱尔兰\n', 25238, 0, 1703);
INSERT INTO `covid_map` VALUES (5054, 77, '2020-06-13', '伊朗\n', 180156, 0, 8584);
INSERT INTO `covid_map` VALUES (5055, 78, '2020-06-13', '伊拉克\n', 16675, 0, 457);
INSERT INTO `covid_map` VALUES (5056, 79, '2020-06-13', '冰岛\n', 1807, 0, 10);
INSERT INTO `covid_map` VALUES (5057, 80, '2020-06-13', '以色列\n', 18569, 0, 300);
INSERT INTO `covid_map` VALUES (5058, 81, '2020-06-13', '意大利\n', 236142, 0, 34167);
INSERT INTO `covid_map` VALUES (5059, 82, '2020-06-13', '牙买加\n', 611, 0, 10);
INSERT INTO `covid_map` VALUES (5060, 83, '2020-06-13', '约旦\n', 890, 0, 9);
INSERT INTO `covid_map` VALUES (5061, 84, '2020-06-13', '日本\n', 17187, 0, 922);
INSERT INTO `covid_map` VALUES (5062, 85, '2020-06-13', '哈萨克斯坦\n', 13872, 0, 67);
INSERT INTO `covid_map` VALUES (5063, 86, '2020-06-13', '肯尼亚\n', 3215, 0, 92);
INSERT INTO `covid_map` VALUES (5064, 87, '2020-06-13', '吉尔吉斯斯坦\n', 2166, 0, 26);
INSERT INTO `covid_map` VALUES (5065, 88, '2020-06-13', '柬埔寨\n', 126, 0, 0);
INSERT INTO `covid_map` VALUES (5066, 89, '2020-06-13', '韩国\n', 12003, 0, 277);
INSERT INTO `covid_map` VALUES (5067, 90, '2020-06-13', '科索沃\n', 1326, 0, 31);
INSERT INTO `covid_map` VALUES (5068, 91, '2020-06-13', '科威特\n', 34432, 0, 279);
INSERT INTO `covid_map` VALUES (5069, 92, '2020-06-13', '老挝\n', 19, 0, 0);
INSERT INTO `covid_map` VALUES (5070, 93, '2020-06-13', '黎巴嫩\n', 1402, 0, 31);
INSERT INTO `covid_map` VALUES (5071, 94, '2020-06-13', '利比里亚\n', 410, 0, 31);
INSERT INTO `covid_map` VALUES (5072, 95, '2020-06-13', '利比亚\n', 393, 0, 5);
INSERT INTO `covid_map` VALUES (5073, 96, '2020-06-13', '斯里兰卡\n', 1877, 0, 11);
INSERT INTO `covid_map` VALUES (5074, 97, '2020-06-13', '莱索托\n', 4, 0, 0);
INSERT INTO `covid_map` VALUES (5075, 98, '2020-06-13', '立陶宛\n', 1752, 0, 74);
INSERT INTO `covid_map` VALUES (5076, 99, '2020-06-13', '卢森堡\n', 4052, 0, 110);
INSERT INTO `covid_map` VALUES (5077, 100, '2020-06-13', '拉脱维亚\n', 1094, 0, 26);
INSERT INTO `covid_map` VALUES (5078, 101, '2020-06-13', '摩洛哥\n', 8537, 0, 211);
INSERT INTO `covid_map` VALUES (5079, 102, '2020-06-13', '摩尔多瓦\n', 10727, 0, 375);
INSERT INTO `covid_map` VALUES (5080, 103, '2020-06-13', '马达加斯加\n', 1203, 0, 10);
INSERT INTO `covid_map` VALUES (5081, 104, '2020-06-13', '墨西哥\n', 133974, 0, 15944);
INSERT INTO `covid_map` VALUES (5082, 105, '2020-06-13', '马其顿\n', 3538, 0, 169);
INSERT INTO `covid_map` VALUES (5083, 106, '2020-06-13', '马里\n', 1722, 0, 97);
INSERT INTO `covid_map` VALUES (5084, 107, '2020-06-13', '马耳他\n', 640, 0, 9);
INSERT INTO `covid_map` VALUES (5085, 108, '2020-06-13', '缅甸\n', 260, 0, 6);
INSERT INTO `covid_map` VALUES (5086, 109, '2020-06-13', '黑山共和国\n', 324, 0, 9);
INSERT INTO `covid_map` VALUES (5087, 110, '2020-06-13', '蒙古\n', 197, 0, 0);
INSERT INTO `covid_map` VALUES (5088, 111, '2020-06-13', '莫桑比克\n', 489, 0, 2);
INSERT INTO `covid_map` VALUES (5089, 112, '2020-06-13', '毛利塔尼亚\n', 1439, 0, 74);
INSERT INTO `covid_map` VALUES (5090, 113, '2020-06-13', '马拉维\n', 481, 0, 4);
INSERT INTO `covid_map` VALUES (5091, 114, '2020-06-13', '马来西亚\n', 8369, 0, 118);
INSERT INTO `covid_map` VALUES (5092, 115, '2020-06-13', '纳米比亚\n', 31, 0, 0);
INSERT INTO `covid_map` VALUES (5093, 116, '2020-06-13', '新喀里多尼亚\n', 21, 0, 0);
INSERT INTO `covid_map` VALUES (5094, 117, '2020-06-13', '尼日尔\n', 974, 0, 65);
INSERT INTO `covid_map` VALUES (5095, 118, '2020-06-13', '尼日利亚\n', 14554, 0, 387);
INSERT INTO `covid_map` VALUES (5096, 119, '2020-06-13', '尼加拉瓜\n', 1464, 0, 55);
INSERT INTO `covid_map` VALUES (5097, 120, '2020-06-13', '荷兰\n', 48458, 0, 6063);
INSERT INTO `covid_map` VALUES (5098, 121, '2020-06-13', '挪威\n', 8608, 0, 242);
INSERT INTO `covid_map` VALUES (5099, 122, '2020-06-13', '尼泊尔\n', 4614, 0, 15);
INSERT INTO `covid_map` VALUES (5100, 123, '2020-06-13', '新西兰\n', 1504, 0, 22);
INSERT INTO `covid_map` VALUES (5101, 124, '2020-06-13', '阿曼\n', 19954, 0, 89);
INSERT INTO `covid_map` VALUES (5102, 125, '2020-06-13', '巴基斯坦\n', 125933, 0, 2463);
INSERT INTO `covid_map` VALUES (5103, 126, '2020-06-13', '巴拿马\n', 18586, 0, 418);
INSERT INTO `covid_map` VALUES (5104, 127, '2020-06-13', '秘鲁\n', 214788, 0, 6088);
INSERT INTO `covid_map` VALUES (5105, 128, '2020-06-13', '菲律宾\n', 24175, 0, 1036);
INSERT INTO `covid_map` VALUES (5106, 129, '2020-06-13', '巴布新几内亚\n', 8, 0, 0);
INSERT INTO `covid_map` VALUES (5107, 130, '2020-06-13', '波兰\n', 28201, 0, 1215);
INSERT INTO `covid_map` VALUES (5108, 131, '2020-06-13', '波多黎各\n', 0, 0, 0);
INSERT INTO `covid_map` VALUES (5109, 132, '2020-06-13', '朝鲜\n', 0, 0, 0);
INSERT INTO `covid_map` VALUES (5110, 133, '2020-06-13', '葡萄牙\n', 35910, 0, 1504);
INSERT INTO `covid_map` VALUES (5111, 134, '2020-06-13', '巴拉圭\n', 1230, 0, 11);
INSERT INTO `covid_map` VALUES (5112, 135, '2020-06-13', '卡塔尔\n', 75071, 0, 69);
INSERT INTO `covid_map` VALUES (5113, 136, '2020-06-13', '罗马尼亚\n', 21182, 0, 1369);
INSERT INTO `covid_map` VALUES (5114, 137, '2020-06-13', '俄罗斯\n', 501800, 0, 6522);
INSERT INTO `covid_map` VALUES (5115, 138, '2020-06-13', '卢旺达\n', 494, 0, 2);
INSERT INTO `covid_map` VALUES (5116, 139, '2020-06-13', '西撒哈拉\n', 9, 0, 1);
INSERT INTO `covid_map` VALUES (5117, 140, '2020-06-13', '沙特阿拉伯\n', 116021, 0, 857);
INSERT INTO `covid_map` VALUES (5118, 141, '2020-06-13', '苏丹\n', 6730, 0, 413);
INSERT INTO `covid_map` VALUES (5119, 142, '2020-06-13', '南苏丹\n', 1670, 0, 24);
INSERT INTO `covid_map` VALUES (5120, 143, '2020-06-13', '塞内加尔\n', 4759, 0, 55);
INSERT INTO `covid_map` VALUES (5121, 144, '2020-06-13', '所罗门群岛\n', 0, 0, 0);
INSERT INTO `covid_map` VALUES (5122, 145, '2020-06-13', '塞拉利昂\n', 1085, 0, 50);
INSERT INTO `covid_map` VALUES (5123, 146, '2020-06-13', '萨尔瓦多\n', 3373, 0, 68);
INSERT INTO `covid_map` VALUES (5124, 147, '2020-06-13', '索马里兰\n', 2513, 0, 85);
INSERT INTO `covid_map` VALUES (5125, 148, '2020-06-13', '索马里\n', 0, 0, 0);
INSERT INTO `covid_map` VALUES (5126, 149, '2020-06-13', '塞尔维亚共和国\n', 12102, 0, 252);
INSERT INTO `covid_map` VALUES (5127, 150, '2020-06-13', '苏里南\n', 168, 0, 2);
INSERT INTO `covid_map` VALUES (5128, 151, '2020-06-13', '斯洛伐克\n', 1541, 0, 28);
INSERT INTO `covid_map` VALUES (5129, 152, '2020-06-13', '斯洛文尼亚\n', 1488, 0, 109);
INSERT INTO `covid_map` VALUES (5130, 153, '2020-06-13', '瑞典\n', 48288, 0, 4814);
INSERT INTO `covid_map` VALUES (5131, 154, '2020-06-13', '斯威士兰\n', 0, 0, 0);
INSERT INTO `covid_map` VALUES (5132, 155, '2020-06-13', '叙利亚\n', 164, 0, 6);
INSERT INTO `covid_map` VALUES (5133, 156, '2020-06-13', '乍得\n', 848, 0, 72);
INSERT INTO `covid_map` VALUES (5134, 157, '2020-06-13', '多哥\n', 524, 0, 13);
INSERT INTO `covid_map` VALUES (5135, 158, '2020-06-13', '泰国\n', 3125, 0, 58);
INSERT INTO `covid_map` VALUES (5136, 159, '2020-06-13', '塔吉克斯坦\n', 4834, 0, 49);
INSERT INTO `covid_map` VALUES (5137, 160, '2020-06-13', '土库曼斯坦\n', 0, 0, 0);
INSERT INTO `covid_map` VALUES (5138, 161, '2020-06-13', '东帝汶\n', 24, 0, 0);
INSERT INTO `covid_map` VALUES (5139, 162, '2020-06-13', '特立尼达和多巴哥\n', 117, 0, 8);
INSERT INTO `covid_map` VALUES (5140, 163, '2020-06-13', '突尼斯\n', 1087, 0, 49);
INSERT INTO `covid_map` VALUES (5141, 164, '2020-06-13', '土耳其\n', 174023, 0, 4763);
INSERT INTO `covid_map` VALUES (5142, 165, '2020-06-13', '中国台湾\n', 443, 0, 7);
INSERT INTO `covid_map` VALUES (5143, 166, '2020-06-13', '坦桑尼亚联合共和国\n', 509, 0, 21);
INSERT INTO `covid_map` VALUES (5144, 167, '2020-06-13', '乌干达\n', 679, 0, 0);
INSERT INTO `covid_map` VALUES (5145, 168, '2020-06-13', '乌克兰\n', 29706, 0, 864);
INSERT INTO `covid_map` VALUES (5146, 169, '2020-06-13', '乌拉圭\n', 847, 0, 23);
INSERT INTO `covid_map` VALUES (5147, 170, '2020-06-13', '美国\n', 2023590, 0, 113823);
INSERT INTO `covid_map` VALUES (5148, 171, '2020-06-13', '乌兹别克斯坦\n', 4741, 0, 19);
INSERT INTO `covid_map` VALUES (5149, 172, '2020-06-13', '委内瑞拉\n', 2814, 0, 23);
INSERT INTO `covid_map` VALUES (5150, 173, '2020-06-13', '越南\n', 332, 0, 0);
INSERT INTO `covid_map` VALUES (5151, 174, '2020-06-13', '瓦努阿图\n', 0, 0, 0);
INSERT INTO `covid_map` VALUES (5152, 175, '2020-06-13', '约旦河西岸与加沙地区\n', 487, 0, 3);
INSERT INTO `covid_map` VALUES (5153, 176, '2020-06-13', '也门\n', 591, 0, 136);
INSERT INTO `covid_map` VALUES (5154, 177, '2020-06-13', '南非\n', 58568, 0, 1284);
INSERT INTO `covid_map` VALUES (5155, 178, '2020-06-13', '赞比亚\n', 63429, 0, 220);
INSERT INTO `covid_map` VALUES (5156, 179, '2020-06-13', '津巴布韦\n', 1044, 0, 17);

-- ----------------------------
-- Table structure for migration
-- ----------------------------
DROP TABLE IF EXISTS `migration`;
CREATE TABLE `migration`  (
  `version` varchar(180) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `apply_time` int NULL DEFAULT NULL,
  PRIMARY KEY (`version`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migration
-- ----------------------------
INSERT INTO `migration` VALUES ('m000000_000000_base', 1587561487);
INSERT INTO `migration` VALUES ('m130524_201442_init', 1587561498);
INSERT INTO `migration` VALUES ('m180628_144021_create_table_visitor', 1590677975);
INSERT INTO `migration` VALUES ('m180628_144042_create_table_visitor_log', 1590678493);
INSERT INTO `migration` VALUES ('m180628_144113_create_table_visitor_agent', 1590678728);
INSERT INTO `migration` VALUES ('m180628_144130_create_table_country', 1590678729);
INSERT INTO `migration` VALUES ('m180630_142222_create_table_visitor_service_error', 1590678729);
INSERT INTO `migration` VALUES ('m190124_110200_add_verification_token_column_to_user_table', 1587561499);
INSERT INTO `migration` VALUES ('m200424_120117_create_article_table', 1588648352);
INSERT INTO `migration` VALUES ('m200424_120247_create_category_table', 1588648352);
INSERT INTO `migration` VALUES ('m200424_120310_create_tag_table', 1588648352);
INSERT INTO `migration` VALUES ('m200424_120410_create_comment_table', 1588648353);
INSERT INTO `migration` VALUES ('m200424_120432_create_article_tag_table', 1588648354);
INSERT INTO `migration` VALUES ('m200502_141910_create_video_table', 1588648354);
INSERT INTO `migration` VALUES ('m200504_035720_create_video_view_table', 1588648355);
INSERT INTO `migration` VALUES ('m200504_041125_create_video_like_table', 1588648356);
INSERT INTO `migration` VALUES ('m200504_065820_create_subscriber_table', 1588648357);
INSERT INTO `migration` VALUES ('m200504_092524_create_fulltext_index_on_video', 1588648357);
INSERT INTO `migration` VALUES ('m200509_083851_add_date_to_comment', 1589013653);
INSERT INTO `migration` VALUES ('m200514_152015_covid_map', 1589470243);

-- ----------------------------
-- Table structure for pcounter_save
-- ----------------------------
DROP TABLE IF EXISTS `pcounter_save`;
CREATE TABLE `pcounter_save`  (
  `save_name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `save_value` int UNSIGNED NOT NULL,
  PRIMARY KEY (`save_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pcounter_save
-- ----------------------------
INSERT INTO `pcounter_save` VALUES ('counter', '12');
INSERT INTO `pcounter_save` VALUES ('day_time', '2459014');
INSERT INTO `pcounter_save` VALUES ('max_count', '5');
INSERT INTO `pcounter_save` VALUES ('max_time', '1705748410');
INSERT INTO `pcounter_save` VALUES ('yesterday', '1');

-- ----------------------------
-- Table structure for pcounter_users
-- ----------------------------
DROP TABLE IF EXISTS `pcounter_users`;
CREATE TABLE `pcounter_users`  (
  `user_ip` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `user_time` int UNSIGNED NOT NULL,
  PRIMARY KEY (`user_ip`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pcounter_users
-- ----------------------------
INSERT INTO `pcounter_users` VALUES ('::1', 1705747033);

-- ----------------------------
-- Table structure for subscriber
-- ----------------------------
DROP TABLE IF EXISTS `subscriber`;
CREATE TABLE `subscriber`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `channel_id` int NULL DEFAULT NULL,
  `user_id` int NULL DEFAULT NULL,
  `created_at` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx-subscriber-channel_id`(`channel_id`) USING BTREE,
  INDEX `idx-subscriber-user_id`(`user_id`) USING BTREE,
  CONSTRAINT `fk-subscriber-channel_id` FOREIGN KEY (`channel_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `fk-subscriber-user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of subscriber
-- ----------------------------

-- ----------------------------
-- Table structure for tag
-- ----------------------------
DROP TABLE IF EXISTS `tag`;
CREATE TABLE `tag`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tag
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `auth_key` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password_hash` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password_reset_token` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` int NOT NULL DEFAULT 10,
  `created_at` int NOT NULL,
  `updated_at` int NOT NULL,
  `verification_token` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'milkyship', 'ACPVpKwXicHQNh9-btnw1VxsPFZU8uFw', '$2y$13$COl3Z9FRP.1GUQvrcKcByuJ.DrcuOlLqxtF3U305yLOJ0GYDYy5Fm', NULL, '1214208054@qq.com', 10, 1588646532, 1588646532, 'YVTlSTPO-mDNeW7jaSDTWLpk2WAMwNfl_1588646532');
INSERT INTO `user` VALUES (2, '123', 'huC507kpuZUnIO99UeDzmadvi2o6-enk', '$2y$13$rBCFD0Nl3bXwZhtNjlac7.MfYzLNxbDjh3dGTTMXjdJxF7Xu8Y5ja', NULL, '13687978877jz@gmail.com', 10, 1588646558, 1588646558, 'W1DwwM517WqyZt0lZsmhGVS8vUdmR8Et_1588646558');
INSERT INTO `user` VALUES (3, 'test002', 'lhSwbukLwzuNkg6_ss7yN0twpflpidY4', '$2y$13$RhMfgU17e9H5PZouEQldHO5UnT1B5ng/uCdXiIm8C/v1CWPXL1lZi', 'oGYjaNQ4avq35C2ydL-WV2CCacK4t6PT_1590071409', '962417405@qq.com', 10, 1588646585, 1590071409, 'szfJtKXBz_9MzJIAlrsp4BoUsAYalloU_1588646585');
INSERT INTO `user` VALUES (4, '1234', 'TOAiE6uss3m6ZiFdWghEQPRokKMLEY4k', '$2y$13$/szuloUk02wCwlE.KM87se2Z/aigHeEWhJBeSfKCBe0I9.m5cyBzu', NULL, 'hello@hello.com', 10, 1588647114, 1588647150, 'oMQW1i_J6W6-eGC0Ge8g5vE6XA3v7g41_1588647114');
INSERT INTO `user` VALUES (5, 'lyx55', 'Ue7X9mCJE4-ys_BgYHwbph-Li88VCeKM', '$2y$13$oOumrGprMZhVY2.3/HnkJOM/6RVstuyW4u7eJEXbErPHf1br2wg0i', NULL, 'lyanxin55@gmail.com', 10, 1590071281, 1590071281, 'r8TqhFvBU_9fbsXK8EzSZmkkikxq1rfQ_1590071281');
INSERT INTO `user` VALUES (6, 'jarvis', '97_0kFrTcmddvKItaZ4uro9cKP_jAcHy', '$2y$13$QkoY.LTNV/nO5gy/w/qQ8.JpCfNSN65ajEuf3UvuD20VxEYs.32LW', NULL, '1013198002@qq.com', 10, 1590128798, 1590128798, 'J5PniCX-X8N1vCR8cG3uJcHu2S6Jx9nZ_1590128798');
INSERT INTO `user` VALUES (7, 'test111', 'fiUeC8xQZClAEtxE1khZ54bcL4gWKQiL', '$2y$13$weL7UeWH.Zm0L2r0PtyT1uHKzDthZKSiSMxBTLbwkEGwS6//Q1pHe', NULL, 'test111@test.com', 10, 1590474261, 1590474261, 'QXoKZ8Crcsz4C8VKOfzXBNBYk0_Kth4B_1590474261');
INSERT INTO `user` VALUES (8, 'debug', 'FrqD4ZQVQr0S7bSddLUL2wQUC2Oseyq_', '$2y$13$p3zr2muYjxfx8pv/LYjp1OK6KEs1cgnU9RW907byh4CAT0NEm/Bae', NULL, '54656dasd@qq.com', 10, 1590496256, 1590496256, '60JsdaTlT-Mopuv0glBdUpA0wH6v1XGo_1590496256');
INSERT INTO `user` VALUES (9, 'gugu', 'OnIuwKL0SBZXSlHCEJ59kxzE4S-bJkWl', '$2y$13$UXnGD67JjVNvpo2558CIGu2uYzCFM0AZuR3JYJI53RoisJuapoko2', NULL, '2878271548@qq.com', 10, 1590560759, 1590560759, 'vKmFbMtJsnJ1eYFJ7pGXlBuTPpxfyj3k_1590560759');
INSERT INTO `user` VALUES (10, 'test004', '5yJhvZ55NbCjERbd5ioYdXfnNhpdMF2p', '$2y$13$9KVjjuUPfifs81gGWFsF6eJpFRUChZYqReHcGioTCWjoyAvYBdl/C', NULL, 'test004@test.com', 10, 1591261917, 1591261917, 'G536EVUwPCA9fgL2ox_3RVHjQ1osKT0G_1591261917');
INSERT INTO `user` VALUES (11, 'test0001', 'DPvL41RjBq90JMscOHILN92pTkOxAiBU', '$2y$13$d51mrJlDOM1iXsM7kfORPumWOjbyREu61HFH//W9ZCg6gAKm0ypoW', NULL, 'test0001@test.com', 10, 1591261959, 1591261959, 'YBUVWNI2504MzOsoYDwxlFyV1z30KyxF_1591261959');
INSERT INTO `user` VALUES (12, 'test', '3Frnt0UfzoaNfXGG6brW4yhMlhANXU7O', '$2y$13$qntwEMGVCeLkJZlo.ayhK.s1Xg4kBHIXmN5i/s7PP3SA.b5RAw.lS', NULL, 'test@test.com', 10, 1591877342, 1591877342, 'eyXsVWd4HZLM98T5k1DnaxWyQKXS1JYh_1591877342');
INSERT INTO `user` VALUES (13, 'aakl', 'j8v9PKNNTOygXE7ITKTSP_ArmwpxlmNc', '$2y$13$mNXnhXAIpiyYNzwXCZvROuYsuHyEe9Hamtvik1zjcOnmXcgYAA122', NULL, '123@12.com', 9, 1591877676, 1591877676, 'W3lOogi7bzLIUubO6X4ZTOZHidSCSmc3_1591877676');
INSERT INTO `user` VALUES (15, 'abc', 'WIP7_RPvn7yeK_TT9ZeORGccxo0YKQiz', '$2y$13$0mUiQNEghNu.siUf7nK08elGJGWSXr29Vw9Nn4TeEVZNDtS0mWzOS', NULL, '13687978877@163.com', 9, 1591879817, 1591879817, 'ANMxCvoAPIT5i7B1Sa21VlTecWmVJLYd_1591879817');
INSERT INTO `user` VALUES (16, 'abab123', '2tKTUcrV3d-ESEAC7XnwmnSaVD_bXlfI', '$2y$13$GHs5NNB5Q8TkuoKt5h3IzepgDZPLzVS5w3dABBI6R.viQAKACQd5S', NULL, 'abab123@abab.com', 9, 1591880244, 1591880244, 'r4m0NFbPfFOEtEcDzCChiabm5bB6DEAi_1591880244');
INSERT INTO `user` VALUES (17, '561', 'tarW-cpvTS0jaV23cINQfOKvklmQxQIW', '$2y$13$elbQjzMHYPJiSokr62Q2vuf4ibNpUL5rC99wLVr03ZeN7cSn.bfgO', NULL, '22@12.com', 9, 1591880310, 1591880310, 'WajXlJsfeSxxrFdUZsPg18gqLyojSJtr_1591880310');
INSERT INTO `user` VALUES (18, '5678', 'q5f3X9-pPf-kHPg7IGb98BtJzqFmUgYt', '$2y$13$3tCRR1klXSdTB0vY1zmLO.z3Eyd842WcWmTiH9RxQgb51eEpSBH1K', NULL, '5566@12.com', 9, 1591880798, 1591880798, 'ikRtQcl8hKVhXhQLCDjwbWmrXdM9TwMd_1591880798');
INSERT INTO `user` VALUES (19, 'test007', 'lNNX4WkG1EECS7CzW3jdGpv6TnAVg_xC', '$2y$13$SVsD1L3UO/iywaXlskjZXOeB65BsSiy4HCKJZyB1O3286Yvf84RKa', NULL, 'test007@test.com', 10, 1591880968, 1591880968, 'UmzmYgz-DiXjCGRC9mqGEn_oR48x9kLd_1591880968');
INSERT INTO `user` VALUES (20, '5000', 'rdf2qNF50KTpTW4PK7SGdsobI4JmRKoN', '$2y$13$i87O/4JSE33KgXUxn7Xu9OGXCgtJzyO/hZcs3UM8M8sPLq.QWZ19G', NULL, 'a@ad.com', 10, 1591881447, 1591881447, 'Krd6AIQFRNl3FFD1CP66pzgTYzmdMuyu_1591881447');
INSERT INTO `user` VALUES (22, 'test009', 'AM6OWTFRSpnNsDj4PWGmnnaKaFWVrl2k', '$2y$13$apHY1Hecs.P31vV6lOfCnOH7BZa9OILeQVhHiFpieB1xsK138Ve4O', NULL, 'test009@test.com', 10, 1591881794, 1591881794, 'EMBEmhtPokALIASpY78KvsSfJy_MR9xI_1591881794');
INSERT INTO `user` VALUES (26, 'test10086', 'pU_u7G3Rgxvcmxal69DuF_IB48Rp2WEB', '$2y$13$572qE6TSa1JdBcZDkGcvWegA1jjLPFQ8u11YZ3Cf5Y7mjk6J1rKhi', NULL, '666@nankai.edu.cn', 10, 1591882489, 1591882489, 'Tdo4wtNhcgzdV5W0PZuW8Z1CJVn6kqiw_1591882489');
INSERT INTO `user` VALUES (27, 'test10000', 'gj-SvZiKceBGQxB7M0g0P8X65ZBbhc94', '$2y$13$A3G0V944FQOWHRFVCbPTnuJb/dD/ID0QMnlJRLA0Lwapt0mkl/ydm', NULL, 't1000@mail.nankai.edu.cn', 10, 1591885728, 1591885728, 'GXq4eWslOOaFdP6H4qqbuPo3GZywYASH_1591885728');
INSERT INTO `user` VALUES (28, '11', 'OaQXByfzyUbcLrjYQYbceEX0KcCYwFLT', '$2y$13$enJQPUesfAlqy6.lmtI.0.5M1nJPwt8lYzRHkigkL7UOV6d4WIXXe', NULL, '1@qq.com', 10, 1705745321, 1705745321, 'kJOSD9dHvW8R-swLblvfIgcnNtQAnoaS_1705745321');

-- ----------------------------
-- Table structure for video
-- ----------------------------
DROP TABLE IF EXISTS `video`;
CREATE TABLE `video`  (
  `video_id` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `tags` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status` int NULL DEFAULT NULL,
  `has_thumbnail` tinyint(1) NULL DEFAULT NULL,
  `video_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_at` int NULL DEFAULT NULL,
  `updated_at` int NULL DEFAULT NULL,
  `created_by` int NULL DEFAULT NULL,
  PRIMARY KEY (`video_id`) USING BTREE,
  INDEX `idx-video-created_by`(`created_by`) USING BTREE,
  FULLTEXT INDEX `title`(`title`, `description`, `tags`),
  CONSTRAINT `fk-video-created_by` FOREIGN KEY (`created_by`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of video
-- ----------------------------
INSERT INTO `video` VALUES ('PAnKGl9G', 'HOW DOES COVID-19 AFFECT THE BODY?', '', '新冠科普', 1, 1, 'videoplayback.mp4', 1591498420, 1591498555, 2);

-- ----------------------------
-- Table structure for video_like
-- ----------------------------
DROP TABLE IF EXISTS `video_like`;
CREATE TABLE `video_like`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `video_id` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `user_id` int NOT NULL,
  `type` int NULL DEFAULT NULL,
  `created_at` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx-video_like-video_id`(`video_id`) USING BTREE,
  INDEX `idx-video_like-user_id`(`user_id`) USING BTREE,
  CONSTRAINT `fk-video_like-user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `fk-video_like-video_id` FOREIGN KEY (`video_id`) REFERENCES `video` (`video_id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of video_like
-- ----------------------------

-- ----------------------------
-- Table structure for video_view
-- ----------------------------
DROP TABLE IF EXISTS `video_view`;
CREATE TABLE `video_view`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `video_id` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `user_id` int NULL DEFAULT NULL,
  `created_at` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx-video_view-video_id`(`video_id`) USING BTREE,
  INDEX `idx-video_view-user_id`(`user_id`) USING BTREE,
  CONSTRAINT `fk-video_view-user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `fk-video_view-video_id` FOREIGN KEY (`video_id`) REFERENCES `video` (`video_id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 101 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of video_view
-- ----------------------------
INSERT INTO `video_view` VALUES (90, 'PAnKGl9G', 2, 1591498574);
INSERT INTO `video_view` VALUES (91, 'PAnKGl9G', 2, 1591498617);
INSERT INTO `video_view` VALUES (92, 'PAnKGl9G', 2, 1591498634);
INSERT INTO `video_view` VALUES (93, 'PAnKGl9G', 2, 1591498719);
INSERT INTO `video_view` VALUES (94, 'PAnKGl9G', 2, 1591498738);
INSERT INTO `video_view` VALUES (95, 'PAnKGl9G', NULL, 1591499455);
INSERT INTO `video_view` VALUES (96, 'PAnKGl9G', 11, 1591499555);
INSERT INTO `video_view` VALUES (97, 'PAnKGl9G', 11, 1591521725);
INSERT INTO `video_view` VALUES (98, 'PAnKGl9G', 2, 1591585218);
INSERT INTO `video_view` VALUES (99, 'PAnKGl9G', 2, 1591872749);
INSERT INTO `video_view` VALUES (100, 'PAnKGl9G', NULL, 1592017355);

SET FOREIGN_KEY_CHECKS = 1;
