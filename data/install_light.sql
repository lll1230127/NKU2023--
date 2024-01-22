/*
 Navicat Premium Data Transfer

 Source Server         : InternetDatabase
 Source Server Type    : MySQL
 Source Server Version : 100432
 Source Host           : localhost:3306
 Source Schema         : nuclear

 Target Server Type    : MySQL
 Target Server Version : 100432
 File Encoding         : 65001

 Date: 22/01/2024 21:32:40
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `date` date NULL DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `viewed` int(11) NULL DEFAULT NULL,
  `created_by` int(11) NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  `category_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id`(`id`) USING BTREE,
  INDEX `fk-article-user_id`(`created_by`) USING BTREE,
  FULLTEXT INDEX `title`(`title`, `description`),
  CONSTRAINT `fk-article-user_id` FOREIGN KEY (`created_by`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES (12, '日本核污水正式排海对我们的影响有多大？海鲜还敢吃吗？', '<p>日本此次核污水排放，会对我们的生活造成哪些影响？我们要不要囤碘盐、还能不能吃海鲜了呢？</p>\r\n', '<p>据报道，日本核电站污水氚排放的国家标准是每升水中氚活度为6万贝克勒尔（贝克勒尔是衡量放射性活度单位）</p>\r\n\r\n<p>虽然日本当局表示将污水中氚的浓度稀释到这一标准的四十分之一以下，但不少科学家与环保组织都表示，核污水的巨大体量和现有技术的局限，决定了目前无法预知这些污水将给海洋环境和人类安全造成何种危害。</p>\r\n\r\n<p>从海域、海洋生物再到我们人类自己都可能遭受伤害。</p>\r\n\r\n<p>1. 海域污染</p>\r\n\r\n<p>日本将核污水排放到太平洋，而太平洋存在着洋流（即海水大规模的水平流动），在北太平洋环流和副极地环流的双重作用下，放射性物质会扩散到太平洋大半区域。</p>\r\n\r\n<p>海洋虽然有自净能力，但核污水所含的部分放射性物质在千年内依然有害。例如该核电厂污水中所含的碳-14，半衰期长达5730年。也就是说，有些放射性物质在数千年之后，其辐射强度只能衰减一半。</p>\r\n\r\n<p>2. 海洋生物污染</p>\r\n\r\n<p>而污水中的放射性同位素排放入海后会进入海洋生物体内，并随食物链迁移、积累和逐级放大。</p>\r\n\r\n<p>3. 影响人类健康</p>\r\n\r\n<p>人一旦食用被放射性元素污染的海产品，就可能造成内照射（体内污染），从而诱发放射病，增大患癌症等疾病的风险。即使是低剂量的辐射暴露，也可能造成不可预知的伤害，例如基因损伤。</p>\r\n\r\n<p>● 对于发育阶段的儿童和青少年，可能导致发育畸形。由于发育阶段本身就属于对外界刺激敏感的阶段，而核辐射引发的一系列电离反应，无论是在核酸层面还是在蛋白质层面，都会导致个体发育受到影响，进一步导致畸形。</p>\r\n\r\n<p>● 对于普通人群，可能诱发癌症。核辐射可引发基因变异，如果基因变异恰好发生在一些重要的位置，导致这些基因的修复能力下降，结果就可能引发细胞内的DNA错误积累。</p>\r\n\r\n<p>如果这些错误积累无法被彻底消除，且一定程度上逃脱了人体的免疫监控，发生无限扩增，就会诱发癌症。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>核污水排放以后，我们还能吃海鲜吗？</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>先上结论：核污水排放后对我国海鲜会产生一定影响，但并不是绝对不能吃。</p>\r\n\r\n<p>北海道渔场是北太平洋渔场的中心，也是世界第一大渔场，盛产沙丁鱼、秋刀鱼、三文鱼、鳕鱼、鱿鱼、蛤蜊、牡蛎等海产品。这些海域的海鲜都有可能受到污染。</p>\r\n\r\n<p>我国海关总署已明确，即日起全面暂停进口日本水产品，后面会持续关注日本核污染水排海情况，再根据情况调整监管措施。</p>\r\n\r\n<p>那过你海鲜呢？</p>\r\n\r\n<p>不可否认，我国沿海地区会也可能会受到一定影响，即便是国产海鲜，如果是在被核污水污染水域，肉质依然可能含放射性物质，应该按照国家相关标准开展监测，满足标准后方可食用。</p>\r\n', '2024-01-20', '9fdfbfd922bbf1effd94d2dc7b139b15.jpg', NULL, 28, 1, 1);
INSERT INTO `article` VALUES (13, '日本宣布周四起排放　北京斥“极端自私”　香港禁十都县水产进口', '<p><strong>在邻国的反对声中，日本仍决定从周四（8月24日）起将处理后的福岛核电站放射性污水排入太平洋，预计将在30年内持续排放。</strong></p>\r\n', '<p>自2011年海啸破坏福岛第一核电站以来，该地已经积累了134万吨水，足以装满500座奥林匹克标准游泳池。</p>\r\n\r\n<p>国际原子能机构（IAEA）今年7月对该排放计划打开绿灯，指其符合国际安全标准。</p>\r\n\r\n<p>日本首相岸田文雄在周二（22日）在内阁会议后表示，如果天气和海况适宜，当局将要求核电站运营商&ldquo;迅速准备&rdquo;在8月24日开始进行排水。</p>\r\n\r\n<p>他表示：&ldquo;今后就算需要数十年的较长时间，作为政府都将负起责任应对，直到处理水处置完毕。&rdquo;</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://www.bbc.com/zhongwen/simp/science-66264193\">福岛核灾废水与核电厂废水哪个更可怕？</a></li>\r\n	<li><a href=\"https://www.bbc.com/zhongwen/simp/world-66198759\">福岛核废水处理问题中的事实与恐惧</a></li>\r\n	<li><a href=\"https://www.bbc.com/zhongwen/simp/science-65963585\">福岛核废水排海倒计时邻居反应激烈 &ldquo;不仅是经济问题，还生死攸关&rdquo;</a></li>\r\n	<li><a href=\"https://www.bbc.com/zhongwen/simp/world-65107965\">日本百万吨福岛核废水排放在即 你会喝一罐产自那里的桃汁吗？</a></li>\r\n	<li><a href=\"https://www.bbc.com/zhongwen/simp/world-56344583\">日本福岛核电站事故10周年：当年发生了什么</a></li>\r\n</ul>\r\n\r\n<p>岸田文雄上周日（20日）访问了东京电力公司的福岛第一核电站视察，引发了有关排放即将开始的猜测。</p>\r\n\r\n<p>在日本宣布该决定后，中国外交部发言人汪文斌指责日本政府此举是&ldquo;向全世界转嫁核污染风险，将一己私利凌驾于全人类长远福祉之上&rdquo;，&ldquo;极端自私，极不负责任&rdquo;，表示北京已提出严正交涉。</p>\r\n\r\n<p>今年7月，中国海关总署已禁止输入包括福岛在内的日本10都县的水产，未在禁止名单的其余地区水产也须经过检测核格才能进口。</p>\r\n\r\n<p>香港特区政府周二宣布，从周四开始禁止日本东京都、福岛县等十个都县的所有水产品，包括活生、冷冻与干燥制品，进口香港。</p>\r\n\r\n<p>这十个都县包括：东京、福岛、千叶、栃木、茨城、群马、宫城、新潟、长野和埼玉。</p>\r\n\r\n<p>韩国政府表示，首尔认为日本的排放计划&ldquo;在科学或技术方面没有问题&rdquo;，但这不代表同意或支持排放计划。</p>\r\n\r\n<p>韩国反对党则抨击日本的排放计划&ldquo;自私且不负责任&rdquo;。</p>\r\n\r\n<p>台湾外交部曾经于7月表示，考察团已三度赴日了解排放废水进程，将持续敦促日方，在符合国际标准及规范下，执行排放作业。</p>\r\n\r\n<p>2011年，9.0级地震引发的海啸淹没了福岛第一核电站的三座反应堆，导致堆芯熔毁。该事件被认为是自切尔诺贝利事件以来世界上最严重的核灾难。</p>\r\n\r\n<p>日本政府表示，对于福岛核电站漫长的退役流程来说，排放核废水是必要步骤。该核电站位于日本东海岸，在东京东北约220公里（137英里）处。</p>\r\n\r\n<p>当地渔民表示，担心排放这些废水会影响他们的生计。</p>\r\n\r\n<p>准备排放的废水包括核电厂机组爆炸后，渗入机芯的地下水，也有本来抽取来冷却机组的海水。</p>\r\n\r\n<p>核电站运营商东电公司一直在对水进行过滤，以去除60多种放射性物质，但水不会完全无辐射，因为其仍然含有氢和碳的放射性同位素氚和碳-14，它们无法轻易从水中去除。</p>\r\n\r\n<p><a href=\"https://ichef.bbci.co.uk/news/640/cpsprodpb/2235/production/_130475780_alps_fukushima_graph640_v3-nc.png\"><img alt=\"\" src=\"https://ichef.bbci.co.uk/news/640/cpsprodpb/2235/production/_130475780_alps_fukushima_graph640_v3-nc.png\" style=\"height:711px; margin-left:250px; margin-right:250px; width:400px\" /></a></p>\r\n\r\n<p>香港核学会主席陆炳林博士曾对BBC中文分析说：&ldquo;现在福岛所排放的废水，除了一些核电站废水常见的放射性元素，例如氚、碳-14之外，还多了许多所谓的&#39;超铀&#39;放射性物质，比如钚、锶、铯。那么在一般的核电厂里是不会排出这么高毒素的放射物。&rdquo;</p>\r\n\r\n<p>国际环保组织绿色和平（Greenpeace）于2021年5月发表的专题文章指出，一般核电厂运行的废水不会直接接触机芯燃料棒，这就是福岛核废水与一般核电厂废水的根本分别。</p>\r\n\r\n<p>文章还引用美国马萨诸塞州伍兹霍尔海洋研究所（Woods Hole Oceanographic Institution）资深科学家肯&middot;布塞勒博士（Dr Ken O Buesseler）发表于2020年8月的论文称，据估算，现存福岛核废水内放射性氚的辐射总量高达1000太贝克。</p>\r\n\r\n<p>不过，日本政府与运营福岛第一核电站的东京电力公司（TEPCO）强调，这些核废水将经过&ldquo;先进液体处理系统&rdquo;（ALPS，又译多核种除去设备）处理，再通过海底隧道从一公里外的近海排放出去。ALPS据称能过滤多种放射性物质，但氚除外。</p>\r\n\r\n<p>专家认为，除非大量饮用，否则排放不会造成危险，因为它们释放的辐射量非常低。</p>\r\n\r\n<p>东京此前表示，将释放到太平洋的废水已经与海水混合，其中的氚和碳14的含量符合安全标准。</p>\r\n\r\n<p>在日本政府宣布排放决定后，东京有抗议者在首相官邸外举行集会，敦促政府停止排放。</p>\r\n', '2024-01-20', 'd3a0f97f2fa353b83457a2acb5daefb9.jpg', 1, 28, 1, 1);
INSERT INTO `article` VALUES (14, '日本第四轮核污染水排海，时间定了', '<p>据央视新闻客户端援引日本广播协会（NHK）当地时间18日报道，东京电力公司当天称，福岛第一核电站第四轮核污染水排海将于2024年2月下旬开始，排海总量预计为7800吨。</p>\r\n', '<p>回顾前三轮核污染水排海</p>\r\n\r\n<p>8月24日&mdash;9月11日，日本第一批次福岛核污染水进行排放，共计7788吨核污染水排入大海。</p>\r\n\r\n<p>10月5日&mdash;23日，日本福岛核电站进行第二批核污染水排放，共排放约7810吨核污染水。</p>\r\n\r\n<p>11月2日&mdash;20日，日本福岛第一核电站进行了第三轮核污染水排海，总排放量为7753吨。</p>\r\n\r\n<p>此前，日本放送协会(NHK)介绍称，7800吨相当于10个核污染水储水罐的量，在2011年福岛核事故之后，当地已经修建了1000多个储水罐。</p>\r\n\r\n<p>关于今后的排放计划，东京电力公司(东电)原本打算，在2023年内共分4次排出总计3.12万吨核污染水。但最新发布的公告显示，这一期限将延长至2024年3月底。</p>\r\n\r\n<p>有数据显示，在正式排污开始前，福岛核污染水已存到了130万吨，要把这些水全部排完，至少需要30年。</p>\r\n\r\n<p>福岛核电站问题不断</p>\r\n\r\n<p>随着排放的继续，排放设备的安全性备受关注。10月25日，东电称，在福岛第一核电站进行核污水处理工作的4名作业员，被核污水溅射。</p>\r\n\r\n<p>4人中，有2人情况较为严重，被紧急送医，后确认2人均为外包工人，其中一名20岁男性除脸部外全身被辐射，另一名40岁男性双手和下半身被辐射。医院方面初步判明，放射性物质进入到了2人皮肤缝隙里。</p>\r\n\r\n<p>虽然2人已于10月28日出院，但外界仍疑问重重。有日本网友表示：&ldquo;就算有异常也不可能公开，要处理这个问题，还有很长的路要走&rdquo;。</p>\r\n\r\n<p>无独有偶，东电还曾在第二批核污水排放期间发布消息称，用于输送核污水的水泵压力一度降低，原因是水中含有的锈附着在过滤器上，引发了堵塞。</p>\r\n\r\n<p>一连串问题，进一步引发外界对排放设备安全性的担忧。</p>\r\n\r\n<p>日本渔民要求东电赔偿</p>\r\n\r\n<p>自福岛核事故以来，福岛以及周边渔民一直在努力恢复当地渔业。但核污水排入太平洋后，再次给当地渔业带来巨大冲击。</p>\r\n\r\n<p>面对由此带来的经济损失，多地渔民纷纷向东电提出索赔要求。</p>\r\n\r\n<p>铃木美智雄是仙台的一名渔业批发业者，10月27日，他参加了东电在仙台市召开的一场关于赔偿金额的说明会。</p>\r\n\r\n<p>因核污水排海遭受巨大经济损失，在东电负责人刚说了一句开场白后，鈴木就将其打断并质问道：&ldquo;排海导致海产品完全不能出口，现在根本不知道损失额，你要怎么赔偿？&rdquo;</p>\r\n\r\n<p>另一名渔业批发业者山口清一也表示，赔偿并不能解决问题，而是应该想想今后要怎么促进当地渔业良性发展。</p>\r\n\r\n<p>国际社会的担忧情绪也在加剧。</p>\r\n\r\n<p>10月12日，日本的非营利团体&ldquo;言论NPO&rdquo;等发表的调查结果显示，对于福岛核污水排海问题，高达七成的韩国民众明确表示&ldquo;不应该向海洋排放&rdquo;。</p>\r\n', '2024-01-21', '23abdd2504e420692e0f504e049e47c6.jpg', 1, 30, 1, 2);

-- ----------------------------
-- Table structure for article_tag
-- ----------------------------
DROP TABLE IF EXISTS `article_tag`;
CREATE TABLE `article_tag`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) NULL DEFAULT NULL,
  `tag_id` int(11) NULL DEFAULT NULL,
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
-- Table structure for avg_new
-- ----------------------------
DROP TABLE IF EXISTS `avg_new`;
CREATE TABLE `avg_new`  (
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `avg_value` decimal(14, 4) NULL DEFAULT NULL,
  PRIMARY KEY (`name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of avg_new
-- ----------------------------
INSERT INTO `avg_new` VALUES ('上海', 65.8794);
INSERT INTO `avg_new` VALUES ('云南', 85.9270);
INSERT INTO `avg_new` VALUES ('内蒙', 106.0216);
INSERT INTO `avg_new` VALUES ('北京', 91.1439);
INSERT INTO `avg_new` VALUES ('台湾', 0.0000);
INSERT INTO `avg_new` VALUES ('吉林', 71.3404);
INSERT INTO `avg_new` VALUES ('四川', 74.0073);
INSERT INTO `avg_new` VALUES ('天津', 70.1915);
INSERT INTO `avg_new` VALUES ('宁夏', 86.0217);
INSERT INTO `avg_new` VALUES ('安徽', 76.2687);
INSERT INTO `avg_new` VALUES ('山东', 67.2746);
INSERT INTO `avg_new` VALUES ('山西', 87.8273);
INSERT INTO `avg_new` VALUES ('广东', 98.5401);
INSERT INTO `avg_new` VALUES ('广西', 75.3507);
INSERT INTO `avg_new` VALUES ('新疆', 73.4015);
INSERT INTO `avg_new` VALUES ('江苏', 58.5887);
INSERT INTO `avg_new` VALUES ('江西', 71.9706);
INSERT INTO `avg_new` VALUES ('河北', 62.4071);
INSERT INTO `avg_new` VALUES ('河南', 74.9149);
INSERT INTO `avg_new` VALUES ('浙江', 86.5070);
INSERT INTO `avg_new` VALUES ('海南', 62.0949);
INSERT INTO `avg_new` VALUES ('湖北', 79.5588);
INSERT INTO `avg_new` VALUES ('湖南', 67.0078);
INSERT INTO `avg_new` VALUES ('澳门', 0.0000);
INSERT INTO `avg_new` VALUES ('甘肃', 96.8991);
INSERT INTO `avg_new` VALUES ('福建', 109.2465);
INSERT INTO `avg_new` VALUES ('西藏', 192.4958);
INSERT INTO `avg_new` VALUES ('贵州', 77.2273);
INSERT INTO `avg_new` VALUES ('辽宁', 67.8310);
INSERT INTO `avg_new` VALUES ('重庆', 78.1756);
INSERT INTO `avg_new` VALUES ('陕西', 75.5147);
INSERT INTO `avg_new` VALUES ('青海', 120.6094);
INSERT INTO `avg_new` VALUES ('香港', 0.0000);
INSERT INTO `avg_new` VALUES ('黑龙江', 70.1714);

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (1, '有关核辐射');
INSERT INTO `category` VALUES (2, '日本排放核污水');

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  `article_id` int(11) NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
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
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
-- Table structure for migration
-- ----------------------------
DROP TABLE IF EXISTS `migration`;
CREATE TABLE `migration`  (
  `version` varchar(180) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `apply_time` int(11) NULL DEFAULT NULL,
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
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pubDate` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `title` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `summary` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `infoSource` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `sourceUrl` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `image` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 43746 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES (43700, '2023/11/20 15:40', '日本第三轮核污染水排海结束 累计排放量超2.3万吨', '据日本广播协会(NHK)当地时间20日报道，东京电力公司称，福岛第一核电站第三轮核污染水排海已于当天中午左右结束。\n　　本次排放自11月2日开始，总排放量为7753吨。第四轮排海预计将于明年年初开始，四次排放总排放量约为3.12万吨，目前已排放2.3351万吨。(央视新闻客户端 总台报道员 林博翰)', '中国新闻网', 'https://www.chinanews.com.cn/gj/2023/11-20/10114937.shtml', 'https://qnimg.zhaibian.com/upload/20220324/b3cdc893ddc6157bb3d15a2e2bb22d4e.jpg');
INSERT INTO `news` VALUES (43701, '2023/11/20 13:22', '国际热评：超2.3万吨核污水全部入海 日本，请住手！', '中新网11月20日电 (张奥林)11月20日，福岛核电站第三批次核污水排放结束，从8月24日正式开启排污，不到三个月的时间，已有超2.3万吨核污水流入太平洋。', '中国新闻网', 'https://www.chinanews.com.cn/gj/2023/11-20/10114844.shtml', 'https://k.sinaimg.cn/n/sjzx/crawl/85/w550h335/20210413/31dc-knqqqmv1007208.jpg/w700h350z1l10t10fd3.jpg');
INSERT INTO `news` VALUES (43702, '2023/11/17 17:04', '习近平会见日本首相岸田文雄', '中新社旧金山11月16日电 (记者 郭金超 梁晓辉)当地时间11月16日下午，中国国家主席习近平在旧金山会见日本首相岸田文雄。\n　　两国领导人重申恪守中日四个政治文件的原则和共识，重新确认全面推进战略互惠关系的两国关系定位，致力于构建契合新时代要求的建设性、稳定的中日关系。\n　　习近平指出，今年是中日和平友好条约缔结45周年，条约以法律形式确立了中日和平、友好、合作的大方向，成为两国关系史上的里程碑。45年来，在包括条约在内的中日四个政治文件指引下，两国关系尽管历经风雨，但总体保持发展势头，给两国人民带来福祉，也为促进地区和平、发展、繁荣发挥了积极作用。当前国际形势变乱交织，风险挑战层出不穷，中日和平共处、世代友好、互利合作、共同发展，符合两国人民根本利益。当前，中日关系正处于承前启后的关键时期，双方应该顺应时代潮流，把握正确方向，本着“以史为鉴、开辟未来”的精神，保持邦交正常化初心，客观理性看待彼此发展，树立积极友善相互认知，建设性管控矛盾分歧，将“互为合作伙伴、互不构成威胁”的政治共识体现到具体政策和实际行动中。', '中国新闻网', 'https://www.chinanews.com.cn/gn/2023/11-17/10113776.shtml', 'https://www.chinanews.com/gn/shipin/2023/11-17/U574P883T4D975666F158DT20231117164806.jpg');
INSERT INTO `news` VALUES (43703, '2023/12/18 20:25', '日本将于2024年2月启动第四轮核污染水排海 总量7800吨', '中新网12月18日电 据日本放送协会(NHK)报道，日本东京电力公司18日表示，福岛第一核电站第四轮核污染水排海将于2024年2月下旬开始，排海总量预计为7800吨，预计将于3月结束。', '中国新闻网', 'https://www.chinanews.com.cn/gj/2023/12-18/10130857.shtml', 'https://i2.chinanews.com.cn/simg/cmshd/2023/12/18/d957f36fa55149efb53efc75b13b7439.jpg');
INSERT INTO `news` VALUES (43704, '2023/12/13 16:18', '福岛第一核电站一名工作人员被放射性物质污染 中方回应', '毛宁：我也注意到有关报道。日本福岛第一核电站退役、核污染水处置过程中，接连发生工作人员遭受核污染水溅射、放射性物质污染等事故，充分说明问题的严重性，也再次证明妥善处理核污染水的极端重要性。\n日方核污染水排海计划长达30年甚至更久，存在巨大的风险隐患。中方敦促日方重视各利益攸关方的关切，全面配合建立各方实质参与、长期有效的国际监测安排，切实防止排海对海洋环境和人类健康造成长期危害。', '中国新闻网', 'https://www.chinanews.com.cn/gn/2023/12-13/10127693.shtml', 'https://ts1.cn.mm.bing.net/th/id/R-C.029804ec17ffd7bf3a85f1c2a714bdac?rik=02ODbP8DTlPlog&riu=http%3a%2f%2fimg2.zjolcdn.com%2fpic%2f0%2f14%2f02%2f75%2f14027522_976773.jpg&ehk=yUmxGYThrklWrMYh4PHWiP99YVl4eETkA8Rfxtf94wg%3d&risl=&pid=ImgRaw&r=0');
INSERT INTO `news` VALUES (43705, '2023/12/11 21:10', '日本福岛第一核电站一名废炉作业工人遭放射性物质污染', '据日本《朝日新闻》报道，东京电力公司11日发布消息称，在福岛第一核电站内进行废炉作业的一名工人面部受到放射性物质污染。\n　　东电公司称，遭放射性物质污染的工人为一名20多岁的男子，当日在福岛第一核电站2号机组附近对已解体的围栏进行除污作业。他在除污作业结束后，被发现鼻腔受到了放射性物质污染，其体内可能吸入了放射性物质。', '中国新闻网', 'https://www.chinanews.com.cn/gj/2023/12-11/10126580.shtml', 'https://ts1.cn.mm.bing.net/th/id/R-C.f69316aade623bcec37babe043b9716a?rik=yVYTZX2To7Wrpw&riu=http%3a%2f%2fhimg2.huanqiu.com%2fattachment2010%2f2013%2f1108%2f20131108090938130.jpg&ehk=%2fZUbKCsoz2uUmnFKNTrnaPg4kB0aOWUTG%2fm8dgJW%2fUU%3d&risl=&pid=ImgRaw&r=0');
INSERT INTO `news` VALUES (43706, '2023/11/28 15:54', '中方：日方应认真对待利益攸关方要求进行损害认定与赔偿的正当诉求', '中新网北京11月28日电 (记者 黄钰钦)中国外交部发言人汪文斌28日主持例行记者会。\n　　有记者提问：据报道，在日本政府启动福岛核污染水排海3个月之际，东京电力公司近日面向日本国内福岛核污染水排海受害者启动了损害认定和赔偿。发言人对此有何评论？\n　　汪文斌：日本福岛核污染水排海事关全人类健康、全球海洋环境、国际公共利益。日方不仅应当严肃对待国内民众关切，同样应当正视国际社会特别是周边邻国的强烈担忧，本着负责任和建设性的态度同利益攸关方进行沟通，认真对待利益攸关方要求进行损害认定与赔偿的正当诉求。', '中国新闻网', 'https://www.chinanews.com.cn/gn/2023/11-28/10119144.shtml', 'https://tse4-mm.cn.bing.net/th/id/OIP-C.PoyySbBcrV7hDlFklmdZLAHaEg?rs=1&pid=ImgDetMain');
INSERT INTO `news` VALUES (43707, '2023/11/27 05:39', '内外抗议声不断 日方应配合建立长期有效国际监测安排', '11月20日，东京电力公司(以下简称东电)发布消息称，已经完成第三轮核污染水排放，第四轮将在明年初实施。按照计划，东电在2024年3月底前共进行四轮排放，共计排放3.12万吨核污染水。自8月24日正式启动核污染水排海以来，日本国内外反对抗议持续，不断暴露的事故和问题也进一步加重了国际社会的担忧。事实证明，东电管理体制存在漏洞，日方宣称的“安全、透明”的排海计划不能令人信服。', '中国新闻网', 'https://www.chinanews.com.cn/gj/2023/11-27/10118372.shtml', 'https://www.whb.cn/u/cms/www/202303/13235432rokm.JPG');
INSERT INTO `news` VALUES (43708, '2023/11/25 05:52', '中国代表敦促日本全面配合接受严格国际监督', '中新社柏林11月24日电 　维也纳消息：中国常驻国际原子能机构代表李松大使24日在国际原子能机构11月理事会上发言，重申中方坚决反对日本福岛核污染水排海，敦促日方全面配合接受严格国际监督。', '中国新闻网', 'https://www.chinanews.com.cn/gj/2023/11-25/10117721.shtml', 'https://i2.chinanews.com.cn/simg/ypt/2023/231125/4151933c-5b6b-4036-bd90-896f0f95534e_zsite.jpg');
INSERT INTO `news` VALUES (43709, '2023/11/23 15:51', '福岛核污染水排海已三个月 中方：国际社会迫切要求建立长期有效的国际监测安排', '中新网北京11月23日电  (记者 李京泽)中国外交部发言人毛宁23日主持例行记者会。\n　　有记者提问：东京电力公司排放核污染水已经三个月，中方对此如何评论？\n　　毛宁：中方反对福岛核污染水排海的立场是一贯的，也是很明确的。我们认为，日本福岛核污染水排海事关人类健康、事关全球海洋环境、事关国际公共利益。日方应当严肃对待国内外的合理关切，本着负责任和建设性的态度妥善处理。', '中国新闻网', 'https://www.chinanews.com.cn/gn/2023/11-23/10116731.shtml', 'https://www.chinanews.com.cn/gn/2023/11-23/U422P4T8D10116731F107DT20231123163234.jpg');
INSERT INTO `news` VALUES (43713, '2023/11/17 17:04', '日本首相要求中方取消禁止从日本进口食品的措施 外交部回应', '另有记者提问：日本首相岸田文雄在美国旧金山和习近平主席会见的时候，明确要求，中方立即取消禁止从日本进口食品的措施。发言人对此有何评论？\n　　毛宁：习近平主席在会见日本首相岸田文雄的时候指出，日本福岛核污染水排海事关全人类健康、全球海洋环境、国际公共利益，日方应该严肃对待国内外的合理关切，本着负责任和建设性的态度妥善处理。', '中国新闻网', 'https://www.chinanews.com.cn/gn/2023/11-17/10113734.shtml', 'https://i2.chinanews.com.cn/simg/cmshd/2023/11/17/1e9e144009a741ee924c41c7a90d54d4.jpg');
INSERT INTO `news` VALUES (43714, '2023/11/10 08:19', '王毅会见日本内阁特别顾问、国家安全保障局长秋叶刚男', '2023年11月9日，中共中央政治局委员、中央外办主任王毅在北京会见日本内阁特别顾问、国家安全保障局长秋叶刚男并举行中日高级别政治对话机制磋商。\n　　王毅阐明了中方对当前中日关系的原则立场，指出了改善和发展中日关系的正确路径。\n　　双方重申恪守中日四个政治文件确定的各项原则，努力推动两国关系重回健康稳定发展轨道。双方同意继续就此保持沟通。', '中国新闻网', 'https://www.chinanews.com.cn/gn/2023/11-10/10109523.shtml', 'https://thepaper-prod-oldimagefromnfs.oss-cn-shanghai.aliyuncs.com/image/10/13/787.jpg');
INSERT INTO `news` VALUES (43715, '2023/11/08 11:13', '王毅同志在第四届“海洋合作与治理论坛”开幕式上的致辞', '各位来宾，各位朋友：\n　　大家好！很高兴出席第四届海洋合作与治理论坛开幕式。首先，我谨代表中国政府对论坛的成功召开表示热烈祝贺，向出席论坛的各国和国际组织代表、专家学者、媒体朋友们表示热烈欢迎！\n　　海洋是人类赖以生存发展的重要基础，也是文明交流互鉴的天然平台，加强海洋合作，完善海洋治理，反映了各国的共同愿望，也是时代的大势所趋。与此同时，当今世界并不太平，海洋的发展正面临前所未有的风险挑战。我们看到，冷战思维、零和博弈威胁着海洋的和平稳定，气候变化、过度开发损害着海洋的持续发展，环境污染、随意排放破坏着海洋的清洁美丽，自然灾害、海盗犯罪扰乱着海洋的安宁秩序。', '中国新闻网', 'https://www.chinanews.com.cn/gn/2023/11-08/10108150.shtml', 'https://ts1.cn.mm.bing.net/th/id/R-C.d12483ed57161f5655b508947a583bb9?rik=%2bjNYgmTAZR6g9A&riu=http%3a%2f%2fwww.nanhai.org.cn%2fuploads%2fimage%2f20211109%2f1636466039343977.jpg&ehk=65uthAEvPzXAIEbMTcwn%2fWDeZ8thttdyjg1U0BZLhZc%3d&risl=&pid=ImgRaw&r=0');
INSERT INTO `news` VALUES (43716, '2023/11/05 22:37', '中国生态环境部部长：坚决反对日本单方面启动核污染水排海行动', '中新社北京11月5日电 中国生态环境部部长黄润秋在第二十四次中日韩环境部长会议上强调，海洋是全人类共同的财产。核污染水处置关乎全球海洋生态环境和民众健康。日方应忠实履行本国的国际义务，同邻国等利益攸关方充分协商，以科学、负责任方式处置核污染水。', '中国新闻网', 'https://www.chinanews.com.cn/gn/2023/11-05/10106580.shtml', 'https://image.01icon.com/media/images/dw/20230205/699036881475604480852379.jpeg?w=660');
INSERT INTO `news` VALUES (43717, '2023/11/04 22:06', '亚太观察丨日本启动第三轮核污染水排海', '日本东京电力公司11月2日启动第三轮核污染水排海，预计将持续到11月20日，排放量约为7800吨。而就在此前的10月25日，福岛第一核电站发生放射性废液溅射事件，处理核污染水的5名工作人员接触到放射性废液，其中2人被紧急送医。东电公司最初公布称，溅射的放射性废液量仅为100毫升，但数日后却进行订正称，溅出的废液量达数升之多，比最初的数据高出几十倍。此次事故，在日本社会备受关注。', '中国新闻网', 'https://www.chinanews.com.cn/gj/2023/11-04/10106159.shtml', 'https://ugc-img.ifengimg.com/img/2021/12/23/8CCh5enSMyJ/4ed42252-5cf3-4991-9cac-71df82c3eb09_w483_h322.jpeg');
INSERT INTO `news` VALUES (43718, '2023/11/04 16:00', '亚太观察丨长期管理混乱 对公众欺瞒推责 日本东电痼疾积重难返', '近日，日本福岛第一核电站发生的放射性废液溅射事件再次表明，东京电力公司长期存在的内部管理混乱无序、对公众隐瞒欺骗等痼疾积重难返。\n　　事实上，福岛核事故发生12年来，东电善后处理漏洞百出，迟报、瞒报事件频繁发生。对于因核事故而罹患癌症等严重疾病的日本民众，东电也始终是在推卸责任。从核污染水排海到所谓计划中的福岛第一核电站拆除，按照日本政府和东电的说法，将持续数十年的时间。而一直以来，福岛核事故善后工作的混乱和无序让不少日本民众对福岛核事故今后的处理充满担忧。', '中国新闻网', 'https://www.chinanews.com.cn/gj/2023/11-04/10105988.shtml', 'https://n.sinaimg.cn/sinakd20230205s/107/w1024h683/20230205/b0e7-20e3e83a0721a3fc9193ba93410437b7.jpg');
INSERT INTO `news` VALUES (43719, '2023/11/04 09:10', '新漫评：日本又排“祸水” 再造地球之殇', '11月2日，日本正式开始排放第三批福岛核污水，预计将持续17天。此次的排放量与前两次大致相同，仍为7800吨左右。这也意味着，第三批的排放结束后，流入太平洋的核污水累计将超过2.3万吨。\n　　据日本放送协会(NHK)，7800吨相当于10个核污染水储水罐的量，在2011年福岛核事故之后，当地已经修建了1000多个储水罐。有数据显示，在正式排污开始前，福岛核污染水已存到了130万吨，要把这些水全部排完，至少需要30年。', '中国新闻网', 'https://www.chinanews.com.cn/gj/2023/11-04/10105872.shtml', 'https://p2.cri.cn/M00/7D/4A/rBABC2VGQ5WAHdqHAAAAAAAAAAA381.4714x2953.960x602.jpg');
INSERT INTO `news` VALUES (43720, '2023/11/03 16:03', '国际锐评丨这起事故戳穿了日方关于核污染水的两个谎言', '不顾国内外强烈反对，日本东京电力公司2日启动了福岛核污染水第三次排海作业。这次排放预计持续到本月20日，排放量约为7800吨。东电公司声称，排放的核污染水“所含放射性物质氚的浓度符合预期”。然而，一周前，这家声名狼藉的企业发生了一起放射性废液溅射污染事故，2名工作人员被紧急送医。这自证了日方所谓核污染水“安全”的说辞绝不可信，核污染水处置过程中的风险不容低估。', '中国新闻网', 'https://www.chinanews.com.cn/gj/2023/11-03/10105485.shtml', 'https://www.ccnta.cn/uploadfile/2021/1216/20211216100342107.jpg');
INSERT INTO `news` VALUES (43721, '2023/11/02 18:41', '中国驻日使馆发言人就日本启动第三批福岛核污染水排海答记者问', '中新网东京11月2日电  中国驻日本使馆发言人11月2日就日本启动第三批福岛核污染水排海答记者问。\n　　有记者问，11月2日，东京电力公司启动第三批福岛核污染水排海，请问你对此有何评论？\n　　发言人表示，日方连续倾倒核污染水，给全球海洋环境安全造成重大风险。中方反对日本福岛核污染水排海的立场是明确和坚定的。我们再次敦促日方全面回应国际社会关切，接受利益攸关方充分实质参与、长期有效的国际监测安排，切实以科学、安全、透明方式处置核污染水。', '中国新闻网', 'https://www.chinanews.com.cn/gn/2023/11-02/10105074.shtml', 'https://tse2-mm.cn.bing.net/th/id/OIP-C.GYjknyM7-4m5PORDynMwQwAAAA?rs=1&pid=ImgDetMain');
INSERT INTO `news` VALUES (43722, '2023/11/02 17:16', '日本启动第三批核污染水排海 民众持续集会反对', '据日本《产经新闻》报道，第三批排放的核污染水总量为7800吨左右，与第一批、第二批核污染水的排放量相当。第三批核污染水预计在11月20日完成排放。东京电力公司计划在2023年度排放总计3.12万吨核污染水。\n　　当地时间11月1日晚，日本多个市民团体再度在东京电力公司总部前集会，强烈反对东京电力公司启动第三批核污染水排海。活动组织方代表柳田真在现场表示，日本政府和东京电力公司以推进福岛第一核电站核电机组退役为由强行将核污染水排海，是“彻头彻尾的谎言”。核电机组退役工作至今没有明确的路线图和时间表。', '中国新闻网', 'https://www.chinanews.com.cn/gj/2023/11-02/10105035.shtml', 'https://rmrbcmsonline.peopleapp.com/upload/ueditor/image/20230320/1679267415963460.jpeg?x-oss-process=style/w10');
INSERT INTO `news` VALUES (43734, '2024/01/11 18:05 ', '日本志贺核电站2.3万升油泄漏！林芳正：没有核辐射影响，重启核电站', '据日本石川县消防部门发布消息称，10日下午接到报告，由北陆电力公司运营的石川县志贺核电站海岸出现新的漏油情况，相关部门正在确认核实。该核电站1月7日曾确认核电站附近海面上有少量油膜漂浮。\r\n\r\n据日本广播协会（NHK）网站报道，日本北陆电力公司10日晚表示，石川县志贺核电站排水口附近确认有2.3万升油泄漏，但不含放射性物质。\r\n\r\n北陆电力公司表示，海面出现油膜的原因可能是在1日地震发生时，志贺核电站变压器管道受损，用于绝缘和冷却的油泄漏，灭火设备启动，导致油飞散并随雨水泄漏。\r\n\r\n当地时间1月11日，关于日本北陆电力公司志贺核电站海岸10日发现的漏油情况，日本内阁官房长官林芳正表示，没有核辐射的影响。', '半岛都市报', 'https://www.thepaper.cn/newsDetail_forward_25981761', 'https://www.cnnpn.cn/uploadfile/2023/0309/20230309103132480.jpeg');
INSERT INTO `news` VALUES (43735, '2024/01/16 04:30', '核污染防治板块1月15日跌0.9%，东方园林领跌，主力资金净流出1.76亿元', '证券之星消息，1月15日核污染防治板块较上一交易日下跌0.9%，东方园林领跌。当日上证指数报收于2886.29，上涨0.15%。深证成指报收于8963.93，下跌0.36%。从资金流向上来看，当日核污染防治板块主力资金净流出1.76亿元，游资资金净流入6424.61万元，散户资金净流入1.11亿元。', '证星概念日报', 'https://stock.stockstar.com/RB2024011600003755.shtml', 'https://static.stockstar.com/cmsrobo/BK_STKQUOTE_tbl_gn41087006_20240115_df_3.png');
INSERT INTO `news` VALUES (43736, '2021/04/13 17:58', '新华国际时评：排放核废水入海，日方不可一意孤行', '日方本可用其他手段处理这些核废水。有业内人士指出，日本政府和东京电力公司可以通过增设储水罐的方式来存放核废水，然而日本政府和东电方面称，这种方式需要大量时间与地方政府协调等，远距离输送核废水也需要更大的工作量，排放核废水入海，是“成本最低、最易操作”的方案。日本国内一些反对排污入海的人士一针见血指出，日本政府和东电不是不可为，而是不想为。\r\n\r\n　　尽管日方口口声声将对核废水进行过滤和稀释后排放，确保安全性。然而，福岛第一核电站核污染水不同于普通核电站正常运营时产生的含氚废水，这些水不少曾接触过堆芯熔毁的核燃料，接触的放射性物质极其复杂，氚以外的放射性物质能否彻底清除令人存疑。如果日方无法履行口头作出的安全承诺，那么所排放的核废水对全球生态可能造成深远影响。', '新华网', 'http://www.xinhuanet.com/world/2021-04/13/c_1127325752.htm', 'https://x0.ifengimg.com/ucms/2021_18/EC3EC3257E9EDD8421C4C248FD3682A73EA51DD7_size397_w698_h392.png');
INSERT INTO `news` VALUES (43737, '2024/01/12 17:28', '有网民将福岛食物中毒事件与核污染水排海相联系，外交部表态', '1月12日，有记者就福岛市明确表示食物中毒事件与核污染水排海无关后，中国社交媒体上仍有网民将二者相联系一事进行提问。对此，发言人毛宁作出回应。', '澎湃新闻', 'https://www.thepaper.cn/newsDetail_forward_25991899', 'https://k.sinaimg.cn/n/spider20221208/250/w600h450/20221208/6cbc-88bf3c7965897c6b0a2237861fca8b28.jpg/w700h350z1l10t10aad.jpg');
INSERT INTO `news` VALUES (43738, '2023/12/24 11:56', '日本核污水排海前将不再确认氚浓度', '日本东京电力公司表示，明年2月进行的第四轮核污染水排放，将省略在排放前确认放射性物质氚浓度的步骤。东电表示，第四轮核污染水排放将有别于过去三轮，这次将在排放期间，对管道内流动的污染水确认实际氚浓度；不再在排放前把污染水放入大水槽，确认氚浓度；工作人员将每天测定一次，以确保安全性，测定结果次日公布。东电解释，过去三次排放的核污染水，都按计划被稀释，计算值和测量值之间，其实没有显著差异。中方过去多次强调，核污染水成分复杂，还有其他放射性核素，对海洋环境和人体健康造成不可预测的危害。', '腾讯网', 'https://new.qq.com/rain/a/20231224A0321200', 'https://tse4-mm.cn.bing.net/th/id/OIP-C.W5uQb7jMub04rNYy3VqxPwHaJ4?rs=1&pid=ImgDetMain');
INSERT INTO `news` VALUES (43739, '2023/12/27 17:21', '福岛核污染水排海，食用盐不安全了？专家：无需恐慌，没必要囤盐', '日本宣布于8月24日下午启动福岛核污染水排海，引发全球关注和热议，也引发了人们关于食盐的恐慌，多地刮起“抢盐潮”。\r\n\r\n有人担忧，福岛核污染水排海后会污染食盐，有人认为碘盐能够防辐射。那么，食盐真的不安全了？碘盐能否防辐射？碘化钾又能防辐射吗？有必要囤盐和碘化钾吗？围绕这些热点问题，科学辟谣联合中国新闻网、新浪新知连线专家进行解读。据中盐集团公布的最新数据显示:当前我国的食盐产品结构占比为井矿盐87%、海盐10%、湖盐3%，井矿盐和湖盐生产均不受日本核污染影响。况且，食用盐生产过程需遵循食品安全规定，有关部门也已经启动了对相关区域海水放射性的监测工作，没有必要过分担忧。盐属于调味品，不宜过多购买，储存条件不当或时间过长还可能会影响碘盐的质量，得不偿失。\r\n此外，碘盐中的碘、碘化钾含量都不高，两者也都不具备防辐射作用，并且过量摄入碘、碘化钾还容易导致碘中毒，甚至危及生命。', '澎湃新闻', 'https://www.thepaper.cn/newsDetail_forward_25815336', 'http://5b0988e595225.cdn.sohucs.com/images/20180228/27cf524f3a204429a0ee61057e40b82d.jpeg');
INSERT INTO `news` VALUES (43740, '2023/12/23 15:25', '日本强推核污染水排海 福岛振兴遥遥无期', '今年8月24号下午1时许，在国内国际强烈的反对声中，日本东京电力公司正式启动福岛第一核电站核污染水排海计划。截至目前，已有共计两万多吨核污染水经过三轮排放，流入太平洋。东电公司和日本政府强推的核污染水排海计划给福岛当地居民的生活带来怎样的影响？日本政府曾信誓旦旦承诺将振兴福岛经济，其效果又如何呢？', '中国日报', 'https://cn.chinadaily.com.cn/a/202312/23/WS65868b5ba310c2083e41449a.html', 'https://x0.ifengimg.com/res/2021/8B4CB38D07C98B965AC2F1AAD846AAD2D9571D07_size1204_w1024_h655.png');
INSERT INTO `news` VALUES (43741, '2024/01/01 23:39', '\"日本地震致核电站燃料池水溢出\"，最新消息', '新年第一天，日本遭遇强震。\r\n\r\n日本气象厅测定，当地时间1月1月16时10分（北京时间15时10分）左右，日本石川县能登地区发生里氏7.6级强震，日本多地震感强烈，地震引发海啸和火灾，至少10起因建筑物倒塌导致居民被埋事件。《朝日新闻》援引日本警察厅的说法，新潟县、富山县、福井县已有至少有22人受伤。\r\n\r\n地震发生后，石川县的志贺核电站变压器起火，目前已被扑灭，但1号机组乏燃料池水溢出，导致冷却泵暂时停止工作。而位于新潟县的柏崎刈羽核电站4个机组反应堆核燃料池水因地震晃动溢出，厂房外尚未发生泄露情况，日本其他沿海核电站暂未报告异常情况。日本首相岸田文雄表示，日本政府仍在评估受损程度，他呼吁居民准备应对余震，并尽快撤离危险区。\r\n\r\n日本媒体注意到，能登地区近两年来地震活动频繁。地震专家警告未来数天可能发生强烈余震，并进一步引发海啸，当地居民需持续保持警惕。\r\n\r\n根据中国驻大阪总领馆的消息，目前暂无中国公民在此次地震中伤亡的报告。', '观察者网', 'https://www.thepaper.cn/newsDetail_forward_25869910', 'https://k.sinaimg.cn/n/news/crawl/163/w550h413/20240101/aeff-afa442c20c92e9f87f85db2a3427f5f6.jpg/w700d1q75cms.jpg?by=cms_fixed_width');
INSERT INTO `news` VALUES (43742, '2024/01/20 23:00', '海客谈：新西兰民众称日本应考虑其他国家的利益', '据日本广播协会12月18日报道，东京电力公司表示，福岛第一核电站第四轮核污染水排海将于2024年2月下旬开始，排海总量预计为7800吨。此前，日本已完成三轮核污水排海，在不到三个月的时间里，已有超2.3万吨核污水流入太平洋(3.320, -0.10, -2.92%)。CGTN拍客来到新西兰克赖斯特彻奇市，询问当地民众对日本政府将核污染水排海的看法。一些民众表示核污水将会影响其他国家，在处理核污水之前，日本应考虑其他国家的利益并与周边国家达成共识。', '海客谈', 'https://finance.sina.com.cn/jjxw/2024-01-20/doc-inaeezsv6590328.shtml', 'https://wx4.sinaimg.cn/orj480/bd29cf19ly1hm0gb5fcuvj218g0p0ayv.jpg');
INSERT INTO `news` VALUES (43743, '2024/01/06 13:31', '日核电站地震受损情况比公布的严重', '日本北陆电力公司5日承认，在能登半岛地震中，位于石川县的志贺核电站受损情况比此前公布的严重，其中相关设备的漏油量是原先公布的5倍多。\r\n\r\n  北陆电力公司此前表示，受地震影响，志贺核电站1号、2号机组外部电源2台变压器受损，其中2号机组外部电源一台变压器漏油约3500升，部分外部电源系统无法使用。但北陆电力公司在5日的记者会上表示，实际漏油多达1.98万升，外部电源系统何时修复尚未可知。\r\n\r\n  北陆电力公司5日还宣布，志贺核电站2号机组另一台变压器也发现漏油约100升。此外，1号机组核反应堆建筑周边发现多处地面下陷等情况。该公司称上述情况不会对志贺核电站安全产生影响。\r\n\r\n  1日地震发生后，志贺核电站乏燃料池冷却水因地震摇晃外溢至地面，冷却泵紧急关闭。日媒当时报道，志贺核电站2号机组变压器附近曾“有爆炸声和燃烧的气味”，北陆电力公司解释称2号机组变压器启动了自动灭火系统。\r\n\r\n  受福岛核电站事故等影响，志贺核电站自2011年3月以来一直未重启。2016年，日本原子能规制委员会专家组认为志贺核电站核反应堆建筑下方断层可能为“活动断层”，不适合重启。但在2023年3月，原子能规制委员会推翻专家组判断，称“不存在活动断层”。日媒认为，此次能登半岛强震带来的影响将使志贺核电站重启问题再陷争议。', '新华网', 'http://www.news.cn/world/20240106/462076bc41fc4dedb46280914f4610c8/c.html', 'https://k.sinaimg.cn/n/news/crawl/163/w550h413/20240101/aeff-afa442c20c92e9f87f85db2a3427f5f6.jpg/w700d1q75cms.jpg?by=cms_fixed_width');
INSERT INTO `news` VALUES (43744, '2024/01/02 07:53', '陈刚：发展核电，在日本国内正成为一种新的政治正确', '石油危机、通货膨胀、经济发展进入停滞状态，50年前的中东战争给日本留下了这样的记忆。因此，当新的中东动荡到来时，日本舆论界开始再度讨论能源安全问题。\r\n\r\n尽管没有中东石油的话，美国的页岩气、俄罗斯的原油、澳大利亚的煤炭也能源源不断地运送到日本，但负责日本经济的经济产业省，也还是再次提出了提升核电在发电中的计划比率问题。', '观察者网', 'https://www.guancha.cn/chengang1/2024_01_02_721027.shtml', 'https://d.ifengimg.com/w600_h732_ablur_q90_webp/x0.ifengimg.com/res/2024/A97AC7282EF4AB9386B9A1D2B8A13311B6CFD018_size1719_w600_h732.png');
INSERT INTO `news` VALUES (43745, '2023/12/24 09:35', '日本核污水将省略排放前确认氚浓度步骤', '日本东京电力公司表示，明年2月进行的第四轮核污染水排放，将省略在排放前确认放射性物质氚浓度的步骤。东电表示，第四轮核污染水排放将有别于过去三轮，这次将在排放期间，对管道内流动的污染水确认实际氚浓度；不再在排放前把污染水放入大水槽，确认氚浓度；工作人员将每天测定一次，以确保安全性，测定结果次日公布。东电解释，过去三次排放的核污染水，都按计划被稀释，计算值和测量值之间，其实没有显著差异。中方过去多次强调，核污染水成分复杂，还有其他放射性核素，对海洋环境和人体健康造成不可预测的危害。（凤凰卫视吴文轩 综合报道）', '凤凰卫视', 'https://k.sina.com.cn/article_1643971635_m61fd0433033010t3w.html', 'https://wx3.sinaimg.cn/orj480/001NfW7xly1hl4mauqmpoj60da07ggn102.jpg');

-- ----------------------------
-- Table structure for pcounter_save
-- ----------------------------
DROP TABLE IF EXISTS `pcounter_save`;
CREATE TABLE `pcounter_save`  (
  `save_name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `save_value` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`save_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pcounter_save
-- ----------------------------
INSERT INTO `pcounter_save` VALUES ('counter', 15);
INSERT INTO `pcounter_save` VALUES ('day_time', 2460332);
INSERT INTO `pcounter_save` VALUES ('max_count', 5);
INSERT INTO `pcounter_save` VALUES ('max_time', 1705748410);
INSERT INTO `pcounter_save` VALUES ('yesterday', 1);

-- ----------------------------
-- Table structure for pcounter_users
-- ----------------------------
DROP TABLE IF EXISTS `pcounter_users`;
CREATE TABLE `pcounter_users`  (
  `user_ip` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `user_time` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`user_ip`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pcounter_users
-- ----------------------------
INSERT INTO `pcounter_users` VALUES ('::1', 1705918505);

-- ----------------------------
-- Table structure for research
-- ----------------------------
DROP TABLE IF EXISTS `research`;
CREATE TABLE `research`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `summary` varchar(2000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `date` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `image` mediumblob NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of research
-- ----------------------------
INSERT INTO `research` VALUES (1, '切尔诺贝利核事故幸存者子女并无过多新发突变', '2021年4月22日，《科学》发表两篇论文，乌克兰国家辐射医学研究中心和美国国家癌症研究所的研究人员对切尔诺贝利事故幸存者及其后代的基因组进行了研究，他们没有发现辐射影响跨代效应的证据。', 'https://paper.sciencenet.cn/htmlpaper/2021/4/202142813444765763097.shtm', '2021/4/26', 0x68747470733A2F2F7777772E736369656E63652E6F72672F636D732F31302E313132362F736369656E63652E616267323533382F61737365742F63613736626238652D616138342D343062612D623033362D6561393965366164633064612F6173736574732F677261706869632F3337325F616267323533385F66612E6A706567);
INSERT INTO `research` VALUES (2, '中国核技术应用产业发展报告（2023）核心报告', '为切实推进我国核技术应用产业高质量发展，2022年4月，中国核能行业协会启动首份《中国核技术应用产业发展报告(2023)》(简称《产业发展报告》)的编撰工作，并邀请219余位长期从事核技术应用产业化工作的专家、学者和企业家组建编写及评审团队。全体编评人员克服困难，秉持客观、公正、专业精神，形成了80多万字的首份《产业发展报告》。报告全面扫描全球核技术应用产业发展大势，聚焦分析我国核技术应用产业的政策环境、市场规模及前景、发展动力、骨干企业、竞争格局、制约因素及发展瓶颈，并提出对策建议。报告包括总体发展、技术与产业、典型案例三个篇章。我们相信，《产业发展报告》 将有助于促进我国核技术应用产业技术、资本、人才和市场等要素间的高效衔接和深度迭代，有助于政府部门决策、行业改善管理、市场投资优化、企业技术创新、应用业态拓展，并给企业家、创业家、投资人、消费者及相关从业人员等提供十分有价值的参考。', 'https://nnsa.mee.gov.cn/ywdt/hyzx/202307/t20230720_1036784.html', '2023/07/20', 0x68747470733A2F2F6E6E73612E6D65652E676F762E636E2F696D616765732F4E4E53415F626173655F76323031395F30372E706E67);
INSERT INTO `research` VALUES (3, '辐射损伤后唾液腺中的CSF1R依赖性巨噬细胞对上皮再生至关重要', '放射治疗是治疗头颈癌的有效方法，但副作用广泛，包括慢性口干。McKendrick 等人。研究了巨噬细胞在唾液腺中的作用，以更好地了解它们对辐射的反应以及如何靶向恢复它们的功能。他们在成年小鼠的唾液腺中鉴定了两个转录不同的CX3CR1巨噬细胞亚群。腺体上皮富集CD11cCD206++–CD163型–巨噬细胞，而 CD11c–CD206CD163巨噬细胞定位于血管和神经。辐射诱导的唾液腺损伤小鼠模型证实，这种治疗改变了该部位巨噬细胞亚群的组成和寿命，但上皮相关的CD11cCD206+++–CD163型–巨噬细胞是损伤后上皮细胞再生所必需的。这些发现提供了对唾液腺对辐射反应的见解，并可以指导未来的治疗。——克里斯蒂安娜·福格', 'https://www.science.org/doi/10.1126/sciimmunol.add4374', '2023/11/03', '');
INSERT INTO `research` VALUES (4, '福岛核事故污染水的排放：宏观和微观模拟', '从宏观和微观两个分析模型分析了2023年起处理后的福岛核事故污染水排入太平洋的扩散过程。结果表明，氚将在1200天内扩散到整个北太平洋，这对制定全球应对策略具有重要意义。', 'https://pubmed.ncbi.nlm.nih.gov/35070334/', '2021/11/26', '');
INSERT INTO `research` VALUES (5, '福岛核事故后第一年实施的食品和水安全规定', '2011年3月11日下午，一场历史性的地震和海啸在日本东北海岸造成巨大破坏，次日清晨，福岛核电站1号核电站受灾反应堆释放放射性核素。2011 年 3 月 15 日，在表层土壤和植物中检测到高水平的放射性碘和放射性铯，因此于 2011 年 3 月 16 日开始对食物和水进行采样以进行监测调查。2011年3月17日，为受放射性碘、放射性铯、铀、钚和其他超铀α排放物订定临时规管值，以规管受放射性污染的食物和水的安全。2011 年 3 月 21 日，首次下令限制受污染物品的分发和消费。截至目前，自来水、生鲜奶、蔬菜、蘑菇、水果、坚果、海藻、海洋无脊椎动物、沿海鱼类、淡水鱼、牛肉、野生动物肉、糙米、小麦、茶叶等食品的污染情况均已超过暂行规例值。在2011年3月16日至2011年5月21日期间抽取的样本和在2011年3月18日至今抽取的放射性铯样本均超出放射性碘的暂定规管值。所有限制均在每件物品首次超过临时法规值后的 318 天内实施。本文根据截至2012年3月31日的现有资料，总结了执行监测调查和限制的政策，以及220 411个样本的监测结果和实施的限制。', 'https://academic.oup.com/jrr/article/53/5/641/914129', '2012/07/22', '');
INSERT INTO `research` VALUES (6, '福岛核事故对农业的影响', '事故发生后，东京大学研究生院农业与生命科学研究生院的40至50名学术人员立即成立了一个独立小组，以监测放射性物质在野外的行为及其对农田、森林、河流、动物等的影响。当核电站的放射性核素落下时，它们立即被吸附在它们第一次接触的地点;因此，在事故发生时，尘埃被发现为暴露在空气中的任何东西表面的散落斑点。随着时间的流逝，吸附变得更强，因此放射性核素现在很难去除。本报告总结了我们对农业田地的广泛影响的研究结果。', 'https://academic.oup.com/jrr/article/57/S1/i47/2580511', '2016/08/16', '');
INSERT INTO `research` VALUES (7, '福岛核事故后天然放射性核素和人工放射性核素的剂量比较', '由于福岛第一核电站事故，浪江町的撤离人员仍然无法在该镇居住，有些人继续住在临时住房单元中。在这项研究中，测量了福岛县临时住房设施、公寓和独立式住宅的氡活度浓度，以估计居民的年度内部暴露剂量。使用被动氡-钍监测器（使用CR-39）和脉冲型电离室来评估氡活度浓度。临时住房单元（包括医疗诊所、公寓和独立式住宅）的平均氡活度浓度分别为5、7和9 Bqm−3。假设居民在这些设施中居住一年，评估每种住房类型中室内氡的平均年有效剂量分别为 0.18、0.22 和 0.29 mSv。根据室内氡测量结果和公布的数据，估计了福岛县所有居民因自然和人工来源而获得的平均有效剂量。从浪江镇撤离的人员因自然来源而获得的平均有效剂量估计为1.9毫希沃特。相比之下，在FDNPP事故发生后的第一年，由于事故的人工来源，疏散人员的平均有效剂量为5.0 mSv。虽然居民因天然放射性核素而遭受的内部和外部暴露是不可避免的，但通过改变居民的某些行为，可以降低因人工放射性核素而产生的外部暴露。', 'https://academic.oup.com/jrr/article/57/4/422/2580367', '2016/08/03', '');
INSERT INTO `research` VALUES (8, '福岛核事故后为减轻辐射暴露和风险沟通挑战而开展的公共卫生活动', '我们总结了2011年3月11日福岛核事故发生后为减轻公众辐射暴露而采取的公共卫生行动，以记录为备灾所吸取的宝贵经验教训。从受辐射影响地区撤离和控制各种食品的分配，有助于减少福岛事故造成的外部和内部辐射暴露。然而，在应急响应工作和随后的核灾难处理阶段，风险沟通也是一个重要问题。为了协助他们的康复过程，应继续通过双向通信向受辐射影响的社区传播可靠、可靠的科学信息。我们将描述核灾难发生后早期、中期和后期的基本公共卫生行动，这些行动将有助于应对其他核或辐射灾难的放射性准备规划。 ', 'https://academic.oup.com/jrr/article/56/3/422/917195', '2015/04/09', '');
INSERT INTO `research` VALUES (9, '核电站事故后福岛旅行者的细胞遗传学生物剂量测定：没有证据表明增加了双着丝点的产生量', '福岛核事故发生后前往污染地区的人对健康影响感到担忧。然而，如果没有个人剂量测量，任何不良健康影响的医疗随访将很困难。细胞遗传学生物剂量测定法是回顾性评估吸收剂量的合理方法。我们分析了265名福岛旅行者的双着丝粒染色体，他们大多是记者和救援人员，他们在核紧急情况下被派往日本东北部。作为对照组，招募了 37 名自事故发生后未访问过日本的健康志愿者。比较了旅行者和对照组的剂量反应校准曲线计算的二元剂量和吸收剂量。', 'https://academic.oup.com/jrr/article/53/6/876/974580', '2012/08/01', '');
INSERT INTO `research` VALUES (10, '东京电力公司福岛第一核电站事故中7名核电工人没有甲状腺受损的证据：甲状腺状况的10年随访结果', '2011年3月，东京电力公司（TEPCO）福岛第一核电站（FDNPP）发生事故后，在应急行动中，7名应急核工作人员因摄入放射性核素（主要是I-131）而内部暴露，他们前往国立放射科学研究所（NIRS）门诊进行医学评估。他们在第一次访问后进行了 10 年的随访。估计的甲状腺承诺等效剂量分布在 3.2 至 1.2 × 10 Sv 之间。这群人被认为在事故中受到的曝光率最高。所有工人均未出现甲状腺功能异常的症状。检查，包括甲状腺功能检查和超声波检查，没有发现与辐射暴露有关的异常。然而，未来需要在更长的时间内持续监测他们的甲状腺状况。', 'https://academic.oup.com/jrr/article/64/2/294/6968638', '2023/01/04', '');

-- ----------------------------
-- Table structure for subscriber
-- ----------------------------
DROP TABLE IF EXISTS `subscriber`;
CREATE TABLE `subscriber`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `channel_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  `created_at` int(11) NULL DEFAULT NULL,
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
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `auth_key` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password_hash` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password_reset_token` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 10,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `verification_token` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `permission` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (2, '123', 'huC507kpuZUnIO99UeDzmadvi2o6-enk', '$2y$13$rBCFD0Nl3bXwZhtNjlac7.MfYzLNxbDjh3dGTTMXjdJxF7Xu8Y5ja', NULL, '13687978877jz@gmail.com', 10, 1588646558, 1705917629, 'W1DwwM517WqyZt0lZsmhGVS8vUdmR8Et_1588646558', 1);
INSERT INTO `user` VALUES (3, 'test002', 'lhSwbukLwzuNkg6_ss7yN0twpflpidY4', '$2y$13$RhMfgU17e9H5PZouEQldHO5UnT1B5ng/uCdXiIm8C/v1CWPXL1lZi', 'oGYjaNQ4avq35C2ydL-WV2CCacK4t6PT_1590071409', '962417405@qq.com', 10, 1588646585, 1590071409, 'szfJtKXBz_9MzJIAlrsp4BoUsAYalloU_1588646585', 0);
INSERT INTO `user` VALUES (4, '1234', 'TOAiE6uss3m6ZiFdWghEQPRokKMLEY4k', '$2y$13$/szuloUk02wCwlE.KM87se2Z/aigHeEWhJBeSfKCBe0I9.m5cyBzu', NULL, 'hello@hello.com', 10, 1588647114, 1588647150, 'oMQW1i_J6W6-eGC0Ge8g5vE6XA3v7g41_1588647114', 0);
INSERT INTO `user` VALUES (5, 'lyx55', 'Ue7X9mCJE4-ys_BgYHwbph-Li88VCeKM', '$2y$13$oOumrGprMZhVY2.3/HnkJOM/6RVstuyW4u7eJEXbErPHf1br2wg0i', NULL, 'lyanxin55@gmail.com', 10, 1590071281, 1705917898, 'r8TqhFvBU_9fbsXK8EzSZmkkikxq1rfQ_1590071281', 1);
INSERT INTO `user` VALUES (6, 'jarvis', '97_0kFrTcmddvKItaZ4uro9cKP_jAcHy', '$2y$13$QkoY.LTNV/nO5gy/w/qQ8.JpCfNSN65ajEuf3UvuD20VxEYs.32LW', NULL, '1013198002@qq.com', 10, 1590128798, 1705917895, 'J5PniCX-X8N1vCR8cG3uJcHu2S6Jx9nZ_1590128798', 1);
INSERT INTO `user` VALUES (7, 'test111', 'fiUeC8xQZClAEtxE1khZ54bcL4gWKQiL', '$2y$13$weL7UeWH.Zm0L2r0PtyT1uHKzDthZKSiSMxBTLbwkEGwS6//Q1pHe', NULL, 'test111@test.com', 10, 1590474261, 1705917741, 'QXoKZ8Crcsz4C8VKOfzXBNBYk0_Kth4B_1590474261', 0);
INSERT INTO `user` VALUES (8, 'debug', 'FrqD4ZQVQr0S7bSddLUL2wQUC2Oseyq_', '$2y$13$p3zr2muYjxfx8pv/LYjp1OK6KEs1cgnU9RW907byh4CAT0NEm/Bae', NULL, '54656dasd@qq.com', 10, 1590496256, 1590496256, '60JsdaTlT-Mopuv0glBdUpA0wH6v1XGo_1590496256', 0);
INSERT INTO `user` VALUES (9, 'gugu', 'OnIuwKL0SBZXSlHCEJ59kxzE4S-bJkWl', '$2y$13$UXnGD67JjVNvpo2558CIGu2uYzCFM0AZuR3JYJI53RoisJuapoko2', NULL, '2878271548@qq.com', 10, 1590560759, 1590560759, 'vKmFbMtJsnJ1eYFJ7pGXlBuTPpxfyj3k_1590560759', 0);
INSERT INTO `user` VALUES (10, 'test004', '5yJhvZ55NbCjERbd5ioYdXfnNhpdMF2p', '$2y$13$9KVjjuUPfifs81gGWFsF6eJpFRUChZYqReHcGioTCWjoyAvYBdl/C', NULL, 'test004@test.com', 10, 1591261917, 1591261917, 'G536EVUwPCA9fgL2ox_3RVHjQ1osKT0G_1591261917', 0);
INSERT INTO `user` VALUES (11, 'test0001', 'DPvL41RjBq90JMscOHILN92pTkOxAiBU', '$2y$13$d51mrJlDOM1iXsM7kfORPumWOjbyREu61HFH//W9ZCg6gAKm0ypoW', NULL, 'test0001@test.com', 10, 1591261959, 1591261959, 'YBUVWNI2504MzOsoYDwxlFyV1z30KyxF_1591261959', 0);
INSERT INTO `user` VALUES (12, 'test', '3Frnt0UfzoaNfXGG6brW4yhMlhANXU7O', '$2y$13$qntwEMGVCeLkJZlo.ayhK.s1Xg4kBHIXmN5i/s7PP3SA.b5RAw.lS', NULL, 'test@test.com', 10, 1591877342, 1705917796, 'eyXsVWd4HZLM98T5k1DnaxWyQKXS1JYh_1591877342', 0);
INSERT INTO `user` VALUES (13, 'aakl', 'j8v9PKNNTOygXE7ITKTSP_ArmwpxlmNc', '$2y$13$mNXnhXAIpiyYNzwXCZvROuYsuHyEe9Hamtvik1zjcOnmXcgYAA122', NULL, '123@12.com', 9, 1591877676, 1591877676, 'W3lOogi7bzLIUubO6X4ZTOZHidSCSmc3_1591877676', 0);
INSERT INTO `user` VALUES (15, 'abc', 'WIP7_RPvn7yeK_TT9ZeORGccxo0YKQiz', '$2y$13$0mUiQNEghNu.siUf7nK08elGJGWSXr29Vw9Nn4TeEVZNDtS0mWzOS', NULL, '13687978877@163.com', 9, 1591879817, 1591879817, 'ANMxCvoAPIT5i7B1Sa21VlTecWmVJLYd_1591879817', 0);
INSERT INTO `user` VALUES (16, 'abab123', '2tKTUcrV3d-ESEAC7XnwmnSaVD_bXlfI', '$2y$13$GHs5NNB5Q8TkuoKt5h3IzepgDZPLzVS5w3dABBI6R.viQAKACQd5S', NULL, 'abab123@abab.com', 9, 1591880244, 1591880244, 'r4m0NFbPfFOEtEcDzCChiabm5bB6DEAi_1591880244', 0);
INSERT INTO `user` VALUES (17, '561', 'tarW-cpvTS0jaV23cINQfOKvklmQxQIW', '$2y$13$elbQjzMHYPJiSokr62Q2vuf4ibNpUL5rC99wLVr03ZeN7cSn.bfgO', NULL, '22@12.com', 9, 1591880310, 1591880310, 'WajXlJsfeSxxrFdUZsPg18gqLyojSJtr_1591880310', 0);
INSERT INTO `user` VALUES (18, '5678', 'q5f3X9-pPf-kHPg7IGb98BtJzqFmUgYt', '$2y$13$3tCRR1klXSdTB0vY1zmLO.z3Eyd842WcWmTiH9RxQgb51eEpSBH1K', NULL, '5566@12.com', 9, 1591880798, 1591880798, 'ikRtQcl8hKVhXhQLCDjwbWmrXdM9TwMd_1591880798', 0);
INSERT INTO `user` VALUES (19, 'test007', 'lNNX4WkG1EECS7CzW3jdGpv6TnAVg_xC', '$2y$13$SVsD1L3UO/iywaXlskjZXOeB65BsSiy4HCKJZyB1O3286Yvf84RKa', NULL, 'test007@test.com', 10, 1591880968, 1591880968, 'UmzmYgz-DiXjCGRC9mqGEn_oR48x9kLd_1591880968', 0);
INSERT INTO `user` VALUES (20, '5000', 'rdf2qNF50KTpTW4PK7SGdsobI4JmRKoN', '$2y$13$i87O/4JSE33KgXUxn7Xu9OGXCgtJzyO/hZcs3UM8M8sPLq.QWZ19G', NULL, 'a@ad.com', 10, 1591881447, 1591881447, 'Krd6AIQFRNl3FFD1CP66pzgTYzmdMuyu_1591881447', 0);
INSERT INTO `user` VALUES (22, 'test009', 'AM6OWTFRSpnNsDj4PWGmnnaKaFWVrl2k', '$2y$13$apHY1Hecs.P31vV6lOfCnOH7BZa9OILeQVhHiFpieB1xsK138Ve4O', NULL, 'test009@test.com', 10, 1591881794, 1591881794, 'EMBEmhtPokALIASpY78KvsSfJy_MR9xI_1591881794', 0);
INSERT INTO `user` VALUES (26, 'test10086', 'pU_u7G3Rgxvcmxal69DuF_IB48Rp2WEB', '$2y$13$572qE6TSa1JdBcZDkGcvWegA1jjLPFQ8u11YZ3Cf5Y7mjk6J1rKhi', NULL, '666@nankai.edu.cn', 10, 1591882489, 1591882489, 'Tdo4wtNhcgzdV5W0PZuW8Z1CJVn6kqiw_1591882489', 0);
INSERT INTO `user` VALUES (27, 'test10000', 'gj-SvZiKceBGQxB7M0g0P8X65ZBbhc94', '$2y$13$A3G0V944FQOWHRFVCbPTnuJb/dD/ID0QMnlJRLA0Lwapt0mkl/ydm', NULL, 't1000@mail.nankai.edu.cn', 10, 1591885728, 1591885728, 'GXq4eWslOOaFdP6H4qqbuPo3GZywYASH_1591885728', 0);
INSERT INTO `user` VALUES (28, '11', 'OaQXByfzyUbcLrjYQYbceEX0KcCYwFLT', '$2y$13$enJQPUesfAlqy6.lmtI.0.5M1nJPwt8lYzRHkigkL7UOV6d4WIXXe', NULL, '1@qq.com', 10, 1705745321, 1705745321, 'kJOSD9dHvW8R-swLblvfIgcnNtQAnoaS_1705745321', 0);
INSERT INTO `user` VALUES (29, 'sakura', 'ng5EyjtViHGdzqDWHPDOAp7SLPrPurJ2', '$2y$13$.XYnxuXefqdTB0HppkvHde.HTnUiZ6sTRC4Ypqt/YYUgf1.jKwGDS', NULL, '123@qq.com', 10, 1705763421, 1705763421, 'JnBx2YMYnZEquAS7GGieDpJVQACp_76z_1705763421', 0);
INSERT INTO `user` VALUES (30, 'test1', 'tZ9CRc3SZDB_KK8RjMRxiR7fgGJWt41L', '$2y$13$eDHY2M17zCvuB9ZNFHHZ7OJmHmCgkB1OIYcJ8qg9U3zksxnI5iW9.', NULL, '123456@nankai.edu.cn', 10, 1705815835, 1705815835, '8d8yDI94JRwb5uxb0ILzydIWSZlO3Dtp_1705815835', 0);
INSERT INTO `user` VALUES (32, '绫地宁宁', 'iLWDmLYUMyHmJnOX4etK4NShefiC-qMa', '$2y$13$Zs6468J2PPnXXzOZpKdY5.5xF73DpSU0838M.pV85rkN5CKXXD/JG', NULL, '3428862097@qq.com', 10, 1705913994, 1705913994, 'bdgrYEGpczQpvIeos20ixjgLgeTtPAmx_1705913994', 0);
INSERT INTO `user` VALUES (33, '绫地宁宁suki', 'ESYMGR-OevECu_Cb8chOvEN_mq6ntR4O', '$2y$13$bE9xSliiyHrRI/YrrHg3cuTGY6SrMbGSixEUstqmoBUAXus6i3uv2', NULL, '2112338@mail.nankai.edu.cn', 10, 1705917997, 1705917997, 'Ycgf6hnv0k9MYGHt9pjIt090H7TE__g6_1705917997', 1);

-- ----------------------------
-- Table structure for video
-- ----------------------------
DROP TABLE IF EXISTS `video`;
CREATE TABLE `video`  (
  `video_id` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `tags` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  `has_thumbnail` tinyint(1) NULL DEFAULT NULL,
  `video_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_at` int(11) NULL DEFAULT NULL,
  `updated_at` int(11) NULL DEFAULT NULL,
  `created_by` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`video_id`) USING BTREE,
  INDEX `idx-video-created_by`(`created_by`) USING BTREE,
  FULLTEXT INDEX `title`(`title`, `description`, `tags`),
  CONSTRAINT `fk-video-created_by` FOREIGN KEY (`created_by`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of video
-- ----------------------------
INSERT INTO `video` VALUES ('iUwK7DIv', '核污染.mp4', '央视报道', '', 1, 0, 'b0d4466604004578ab0f8bcd95a638ed_h2642000000nero_aac16-1.mp4', 1705768666, 1705768683, 29);
INSERT INTO `video` VALUES ('x8tZJZXP', '核污染3.mp4', '央视报道', '核污染', 1, 0, 'e7bb43c924da42ff9bbeb78fa277c11d_h2642000000nero_aac16.mp4', 1705772243, 1705772272, 29);
INSERT INTO `video` VALUES ('xRXrAnLz', '核污染2.mp4', '央视新闻', '', 1, 0, 'ba32e0b9a31f464181fb512eb24781c5_h2642000000nero_aac16.mp4', 1705768603, 1705768644, 29);

-- ----------------------------
-- Table structure for video_like
-- ----------------------------
DROP TABLE IF EXISTS `video_like`;
CREATE TABLE `video_like`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `video_id` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `type` int(11) NULL DEFAULT NULL,
  `created_at` int(11) NULL DEFAULT NULL,
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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `video_id` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  `created_at` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx-video_view-video_id`(`video_id`) USING BTREE,
  INDEX `idx-video_view-user_id`(`user_id`) USING BTREE,
  CONSTRAINT `fk-video_view-user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `fk-video_view-video_id` FOREIGN KEY (`video_id`) REFERENCES `video` (`video_id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 101 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of video_view
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
