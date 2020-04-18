/*
 Navicat Premium Data Transfer

 Source Server         : Gary
 Source Server Type    : MySQL
 Source Server Version : 80018
 Source Host           : localhost:3306
 Source Schema         : pet

 Target Server Type    : MySQL
 Target Server Version : 80018
 File Encoding         : 65001

 Date: 18/04/2020 22:51:31
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '文章id',
  `userid` int(10) NULL DEFAULT NULL COMMENT '用户id',
  `title` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文章标题',
  `content` varchar(10000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文章内容',
  `img` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片地址',
  `location` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '定位',
  `like` int(3) NULL DEFAULT 0 COMMENT '点赞数',
  `collect` int(3) NULL DEFAULT 0 COMMENT '收藏数',
  `time` date NULL DEFAULT NULL COMMENT '发帖时间',
  `status` bit(1) NULL DEFAULT b'1' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES (1, 1, '晒一晒我家的牧德犬', '不知不觉我家牧德犬已经长这么大了，过的可真快啊，我要和我家狗子好好的。', 'http://47.101.171.252:81/static/88c13584-c43f-4d0a-8704-7b715552539a.jpeg', NULL, 10, 0, '2020-04-01', b'1');
INSERT INTO `article` VALUES (2, 1, '缝缝补补又是一年', '这个毛绒玩具，我家狗子从小玩到大。不知道被它咬开了多少处口子，小家伙总是想着让我练练缝补！\n\n这不小熊耳朵作为它钟爱的首选部位，又中枪了！缝好，估计又可以玩一段时间了', 'http://47.101.171.252:81/static/3ad2ab9b-87a3-4f46-a7df-a956077c91f1.jpeg', NULL, 20, 0, '2020-04-01', b'1');
INSERT INTO `article` VALUES (3, 1, '关于狗狗吃粑粑', '有人给狗子吃过forbid么？就是一种没味道的药，拉粑粑奇苦无比，阻止他吃粑粑的，用过的说下效果怎么样啊，哪能买啊！我已经被折磨疯啦要！！做梦都是他吃粑粑的噩梦！！我已经试过任何查得到的办法了。。什么微量元素，摸辣椒水，芥末，郫县豆瓣酱，打过，骂过，奖励过(还是用的最多的)，都不管用啊！他就是爱吃！而且带出去从来不拉，连续3次吃完饭出去溜2个小时，不光不拉还想吃地上的脏东西！！！一回到家马上拉，拉完回头就吃！！诶。。心累呀！要是你家的狗子也吃粑粑的话。。请务必和我讨论一哈子！！一起研究一下怎么对付小恶魔吧！', 'http://47.101.171.252:81/static/214dbb40-80d3-4dba-8462-f5ec5e9f5890.jpeg', NULL, 5, 0, '2020-04-01', b'1');
INSERT INTO `article` VALUES (4, 1, '狗狗要乱叫', '我想问一下，狗狗呆在笼子里就在狂叫，网上说的两种方法，奖励法和惩罚法都试过了，然后可以维持一小段时间，久了狗狗又开始叫了，昨晚几乎叫了一个晚上，然后早上一把它放出来，就跑到我身上睡觉了。是不是狗狗太粘人了？\n大家有出现过这种情况吗？应该怎么解决呢？', 'http://47.101.171.252:81/static/8483c606-c36a-4157-a250-16016d930630.jpeg', NULL, 9, 9, '2020-04-01', b'1');
INSERT INTO `article` VALUES (5, 2, '关于中华田园犬', '提到土狗，在很多人潜意识里认为就是大街上体型样貌不一的流浪狗，甚至说任何叫不上名来的狗都可以叫土狗。说的好听点，就给这些土狗冠名为中华田园犬。不光大部分普通人对中华田园犬认知模糊，就连一些救助机构和知名媒体也时常将串串当做中华田园犬！', 'http://5b0988e595225.cdn.sohucs.com/images/20190611/5dac8b82b7704725b987e255f25966fb.jpeg', NULL, 1, 0, '2020-04-18', b'1');

-- ----------------------------
-- Table structure for collect
-- ----------------------------
DROP TABLE IF EXISTS `collect`;
CREATE TABLE `collect`  (
  `id` int(5) NOT NULL AUTO_INCREMENT COMMENT '收藏id',
  `userId` int(11) NULL DEFAULT NULL,
  `cId` int(11) NULL DEFAULT NULL,
  `queId` int(5) NULL DEFAULT NULL COMMENT '问题id',
  `arId` int(5) NULL DEFAULT NULL COMMENT '文章id',
  `status` bit(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `userid` int(10) NOT NULL,
  `articleId` int(10) NOT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `replyTotal` int(4) NULL DEFAULT NULL,
  `like` int(5) NULL DEFAULT NULL,
  `time` date NULL DEFAULT NULL,
  `status` bit(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES (1, 2, 1, '很可爱啊', 0, 0, '2020-04-01', b'1');
INSERT INTO `comment` VALUES (2, 1, 5, '中华田园犬', 0, 0, '2020-04-01', b'1');
INSERT INTO `comment` VALUES (3, 1, 5, '我爱中华田园犬', 0, 0, '2020-04-01', b'1');
INSERT INTO `comment` VALUES (4, 1, 0, '建议去看医生', 0, 0, '2020-04-01', b'1');
INSERT INTO `comment` VALUES (5, 1, 0, '必须得去买衣服了', 0, 0, '2020-04-01', b'1');

-- ----------------------------
-- Table structure for follow
-- ----------------------------
DROP TABLE IF EXISTS `follow`;
CREATE TABLE `follow`  (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `userId` int(5) NULL DEFAULT NULL COMMENT '用户',
  `fId` int(5) NULL DEFAULT NULL COMMENT '被关注用户id',
  `status` bit(1) NULL DEFAULT NULL COMMENT '关注状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of follow
-- ----------------------------
INSERT INTO `follow` VALUES (2, 1, 5, b'1');
INSERT INTO `follow` VALUES (3, 2, 5, b'1');
INSERT INTO `follow` VALUES (6, 1, 2, b'1');
INSERT INTO `follow` VALUES (11, 3, 1, b'1');
INSERT INTO `follow` VALUES (16, 3, 2, b'1');
INSERT INTO `follow` VALUES (17, 1, 0, b'1');

-- ----------------------------
-- Table structure for like_collect
-- ----------------------------
DROP TABLE IF EXISTS `like_collect`;
CREATE TABLE `like_collect`  (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `userId` int(5) NULL DEFAULT NULL,
  `oId` int(5) NULL DEFAULT NULL,
  `articleId` int(5) NULL DEFAULT NULL,
  `support` bit(1) NULL DEFAULT NULL,
  `collection` bit(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of like_collect
-- ----------------------------
INSERT INTO `like_collect` VALUES (1, 1, 2, 5, b'1', b'1');
INSERT INTO `like_collect` VALUES (2, 3, 1, 1, b'1', b'1');
INSERT INTO `like_collect` VALUES (3, 3, 1, 2, b'1', b'1');
INSERT INTO `like_collect` VALUES (4, 3, 1, 4, b'1', b'1');
INSERT INTO `like_collect` VALUES (5, 3, 1, 3, b'1', b'1');

-- ----------------------------
-- Table structure for question
-- ----------------------------
DROP TABLE IF EXISTS `question`;
CREATE TABLE `question`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '文章id',
  `userid` int(10) NULL DEFAULT NULL COMMENT '用户id',
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文章标题',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文章内容',
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片地址',
  `location` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '定位',
  `like` int(3) NULL DEFAULT 0 COMMENT '点赞数',
  `collect` int(3) NULL DEFAULT 0 COMMENT '收藏数',
  `answer` int(4) NULL DEFAULT NULL COMMENT '问题回答数',
  `time` date NULL DEFAULT NULL COMMENT '发帖时间',
  `status` bit(1) NULL DEFAULT b'1' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of question
-- ----------------------------
INSERT INTO `question` VALUES (1, 2, '狗狗经常发抖不爱动怎么办?', '狗狗经常发抖不爱动，有时候会看到老是爪子抓耳朵，食欲也下降了，今天中午喂了些粥就趴着更加不动了，都是昏昏欲睡的，这是生了什么病啊？', NULL, '中国', 0, 0, 0, '2020-04-01', b'1');
INSERT INTO `question` VALUES (2, 1, '我家狗有肺热吗?', '阿拉斯加 ，十一个月大，两三天不怎么吃饭，精神不好，呼吸的气息比较热，尿是黄色，眼泪分泌物最近有一点多有一天是红色的。拉屎不稀不干。没有呕吐也没有咳嗽流鼻涕。最近天气也比较热有2829℃。阿拉斯加 ，九个月大，两三天不怎么吃饭，精神不好，呼吸的气息比较热，尿是黄色，眼泪分泌物最近有一点多有一天是红色的。本来以为天气太热不吃饭然后就给他开风扇了。吃饭不吃狗粮就吃', NULL, '中国', 0, 0, 0, '2020-04-01', b'1');
INSERT INTO `question` VALUES (3, 1, '养什么样的狗狗比较好?', '', NULL, '中国', 0, 0, 0, '2020-04-01', b'1');
INSERT INTO `question` VALUES (4, 3, '为什么宅家使我发胖，每天吃嘛嘛香的狗子反而变瘦了？', '最近一段时间大家宅家比较多，和家人、宠物陪伴的时间更久了，而且百无聊赖之中厨艺精进了不少。相信很多小伙伴已经衣带渐紧了。', 'https://pic4.zhimg.com/80/v2-e3f74b2934febf19eeb4a496a64a2184_qhd.jpg', '中国', 0, 0, 1, '2020-04-18', b'1');
INSERT INTO `question` VALUES (5, 5, '狗肉馆会偷狗是真的吗?', NULL, 'https://pic4.zhimg.com/80/v2-9686983064be32c11c7eae81c350f355_720w.jpg', '中国', 0, 0, NULL, '2020-04-18', b'1');

-- ----------------------------
-- Table structure for replycomment
-- ----------------------------
DROP TABLE IF EXISTS `replycomment`;
CREATE TABLE `replycomment`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `userid` int(10) NULL DEFAULT NULL COMMENT '回复着的id',
  `commentId` int(10) NOT NULL,
  `content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `time` date NULL DEFAULT NULL,
  `status` bit(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of replycomment
-- ----------------------------
INSERT INTO `replycomment` VALUES (1, 2, 0, '谢谢夸奖', '2020-04-01', b'1');

-- ----------------------------
-- Table structure for tips
-- ----------------------------
DROP TABLE IF EXISTS `tips`;
CREATE TABLE `tips`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '文章id',
  `userid` int(10) NULL DEFAULT NULL COMMENT '用户id',
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文章标题',
  `content` varchar(21485) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文章内容',
  `img` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片地址',
  `like` int(3) NULL DEFAULT 0 COMMENT '点赞数',
  `time` date NULL DEFAULT NULL COMMENT '发帖时间',
  `status` bit(1) NULL DEFAULT b'1' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tips
-- ----------------------------
INSERT INTO `tips` VALUES (1, 5, '山楂不能和什么一起吃', '海鲜：山楂之中的鞣酸会破坏海鲜之中蛋白质的营养价值，并与海鲜中的铁元素结合，产生不易消化的物质。破坏维生素C的食物：它含有大量VC，不能与猪肝、胡萝卜等能破坏VC的食物同食。凉性食物：它性凉，与其他这种食物同食会造成腹泻。\r\n\r\n1、海鲜\r\n\r\n这里说的海鲜包括鱼类、蟹类、虾类以及蚬子、蛤蜊等，它们之中含有大量的蛋白质，而山楂之中含有较多的鞣酸，它会破坏蛋白质的结构，降低蛋白质的有效吸收量。此外，海鲜之中还含有较多的铁，它们也会与鞣酸反应结合，形成不易消化的物质，引起腹泻。\r\n\r\n2、破坏维生素C的食物\r\n\r\n这里所说的破坏维生素C的食物主要包括猪肝、胡萝卜等。因为山楂之中含有大量的维生素C，与这些食物同时很有可能导致维生素C变质，难以起到它本来的营养价值。猪肝之中含有多种金属离子，如铁离子、铜离子等，会氧化维生素C导致它变质。而胡萝卜之中含有大量的维生素C分解酶，会降解维生素C，导致它失去生物学活性。\r\n\r\n3、凉性食物\r\n\r\n因为山楂本身就属于凉性食物，将它与其他凉性食物同食，很容易对肠、胃等消化器官造成损伤，从而引起腹泻等消化问题。', 'http://www.f494.com/wp-content/themes/begin/img/random/11.jpg', 10, '2020-04-18', b'1');
INSERT INTO `tips` VALUES (2, 5, '怎样训练比熊犬？', '比熊犬是非常可爱迷人的小型犬类，它们外形娇小、圆圆的脑袋搭配精致的五官，让人分分钟爱上它，特别是它一身毛绒绒的白色毛发，远远看去就像一团雪球，忍不住想上前去抚摸，是一种体型小的玩赏狗。它们性格活泼可爱、性情中略带敏感，但温顺。在欧洲国家深受欢迎，是许多欧洲贵族人士的宠物犬。\r\n\r\n比熊犬虽然个性比较温顺，但并不表示天生就会服从主人命令，就像小孩一样，出生时什么都不懂，就像一张白纸，想让他听话懂事，都是需要家长们从小开始不断的重复的教导，才会成为栋梁成为有用的人。所以比熊犬也是一样，它们的训练可以从出生后2个月开始，那时已经有一点点思维意识，可这时是刚刚启蒙不能训练太多太杂的内容。它们最佳的训练年龄是出生后6个月-3岁之间，这时它们吸收大量的最新的东西。\r\n\r\n训练的内容可以从基本的握手，站立，坐下，不准动，转圈等开始。训练时当它们表现的不错时可以轻轻的抚拍，做为鼓励。没做对时可以适当的按压、牵引。当它们调皮不听话时也可以适当轻打告诉它不听话会惩罚。训练时需要主人的耐心和引导，不能大声狂吼对它们发脾气。\r\n\r\n同时在训练时除了安抚表扬外，食物奖励更能激发它们对训练的兴趣，还能启到更好的训练效果。比如训练狗狗握手时，引导它伸出一只前脚，当第一次狗狗不懂时，可以主动伸出一只手去拉起它一只脚，像握手一样动两下，以引起它的注意和记忆。当第二次再下这命令时，如果还没反应到，要重复不断引导狗狗，当它们经过几次后，听到命令可以自然的抬起一只脚和你握手时，表示表扬可以先抚摸它们，再奖励点美食它们。在训练中还需要结合你的手势，因为狗狗并不懂语言，当发出口令时结合动作，狗狗会理解的更快。需要注意的是：在训练过程中当狗狗做的好，表示鼓励时，一定要动作安抚和美食相结合，并且以动作安抚表扬为主，不能轻易的就给食物。', 'http://www.f494.com/wp-content/themes/begin/img/random/16.jpg', 20, '2020-04-18', b'1');
INSERT INTO `tips` VALUES (3, 5, '泰迪是什么犬，应该怎么训练它？', '泰迪犬，称为贵宾犬，也叫“贵妇犬”，也叫“卷毛狗”。泰迪是一种小型犬，性格活泼可爱，和蔼温顺。对主人很忠心，是一种比较忠心的犬。它的动作敏捷，而且动作也十分的优雅。\r\n\r\n泰迪犬这种狗狗的智商是非常高的，在所有的狗狗中排名第二，非常聪明。所以说如果对泰迪犬进行训练的，是非常轻松的。下面就让我们来掌握训练泰迪犬的方法吧。\r\n\r\n泰迪犬学会两脚直立行走的本领并不难，应该是很轻松的。主人只要拿出一些零食或者一些狗粮来激励狗狗，拿的稍微高一点，这样它就能慢慢的学会两腿站立起来去吃东西了。或者还有一个办法，就是拿一个绳子出来绑在它身上，然后把它的前腿给抬起来，这样一来，久而久之，它就会慢慢的学会两腿直立了。\r\n\r\n有很多的泰迪犬是很黏人的，特别是在它们很饿的时候，它们就会急不可耐的跳到你的身上，而且还喜欢到处撕扯东西，到这个时候主人就应该立即阻止它，去拍打它的背，然后告诉它这样是不对的，等它安静下来的时候可以适当的奖励它，给它东西吃，让它能够明白，只有安静下来，只有服从命令才可以吃东西，才会有奖励。\r\n\r\n有些的人饲养泰迪犬是放养的，不会把它关在笼子里，会让它们在户外活动。但是这也给主人带来了很大的困扰，导致主人在吃饭的时候，狗狗就喜欢围着桌子转要东西吃。这个时候主人不能给它们吃的，还要教它们在饭桌旁边不能乱叫乱转。你可以用你的脚去夹住它，让它不能动，这样它就不会乱叫了，你就可以安心的坐下来吃一顿。\r\n\r\n泰迪犬在咬东西的时候，这个时候家长要记住不要打它，要耐心一点，可以轻轻的拍打它的头，教它这个东西不能咬，多教几遍，它就一定会记住的。', 'http://www.f494.com/wp-content/themes/begin/img/loading.png', 2, '2020-04-18', b'1');
INSERT INTO `tips` VALUES (4, 5, '怎样训练马犬？', '饲养一条聪明听话的狗狗是很多饲养员的心愿，在选择喜爱的狗狗之后撇开狗狗的智商来讲，平日的训练就显得尤为重要了。马犬因其灵性聪明被不少人饲养，但对于怎样训练马犬还是有很多的问题，因此，尚要来小编就帮小主们搜寻好了方法，快来借鉴试试吧。\r\n\r\n训练宠物狗狗很重要的一点就是在日常中训练了，第一步就是让马犬学会听指令，要让它理解的意思并且能够做。一般狗狗在三个月大的时候就可以进行简单的训练了，训练口令一定要清晰简短。比如，坐下、过来和握手，一定要有耐心循序渐进的来，操之过急不会有好效果的哦，此外，不同性情的马犬在训练上也会有细微差别，训练中的语气也要有所不同。比如，神经大条的马犬就要朗洁的下口令，比较调皮好动的就需要坚决且大声的下达口令，这也是训练时需注意的一点。\r\n\r\n其次， 一定要注意方式方法，不能太强制用以暴制暴的方式来训练，再温顺的狗狗都还是有着一定的防备心理。如果在它不听从指令时，强制惩罚是不对的，容易让其产生攻击的行为。马犬是智商比较高的狗狗，训练还是比较容易的，只是在服从性这一块有所欠缺，皮猴似的，强迫会使它有逾越行为，这种时候大声命令并用水冲马犬的脸就可使其冷静下来。\r\n\r\n在训练中可以利用新奇的玩具和马犬的好奇心可以有效的增强训练效果，也可以采取食物诱惑也是在训练时让其听口令也很有效，也可作为给它的奖励。\r\n\r\n不同刻意安排时间训练，日常生活就可随时随地的训练，这种方法式比较有效的，在马犬玩乐时，吃饭时、带出散步时都可以利用来训练，让它更加理解口令的意思，哪些事情可以做，哪些是不被允许的。一定要是适当的夸奖，不能宠溺，做的好时才夸奖，做错是及时训责，让狗狗有“是非之感”。\r\n\r\n训练方法只是理论，实践就在于饲养员是否用心了，期待各小主们听话的马犬狗狗哦。', 'http://www.f494.com/wp-content/themes/begin/img/random/4.jpg', 6, '2020-04-18', b'1');
INSERT INTO `tips` VALUES (5, 5, '金吉拉怎么能判断是不是定型了？', ' 一般来说，我们看金吉拉什么时候能定型，也就是看它的年龄，一般年龄一岁以上的，基本上都定型了，但是可能很多家长觉得这种判断没有这么精准，因为猫咪的成长是有两次成熟期的，一次是性成熟，再就是身体定型的成熟。  就在金吉拉定型之后各个方面的机能都要好很多，其中最大的标志就是牙齿，如今很多人都是从牙齿方面来判断它是不是已经定型了，总共有三十颗颗牙齿，如果看到金吉拉完全长齐了之后，就意味着它已经定型长大了，后期变化的就应该只有体重。         平常在养护的过程中，需要给金吉拉准备好舒适的窝，同时还应该放在比较通风的地段，还需要定期去做好清理的工作，比如半个月或者一个月的时间，最好消毒下，这样可以让它变得更为卫生和干净，还要处于干燥的状态之中，以免引发疾病。金吉拉因为是那种身材有点胖胖的那种体型，所以成年后一般体重会在10斤左右，有的甚至还会更重一些，所以主人要注意不要让金吉拉吃的过多，导致体型过重，偏胖，这样对金吉拉的身体健康会有损害。         金吉拉的性成熟之后，建议家长也不要着急去给猫咪配种，尤其是母猫，虽然性成熟了，但是年龄上还是个小孩子，建议家长可以等到猫咪一岁半的时候，再考虑给猫咪配种，这样生出来的宝宝存活率高，出问题的概率也比较小。', 'http://img.boqiicdn.com/Data/BK/A/1911/27/imagick34321574840145_y.jpg', 7, '2020-04-18', b'1');
INSERT INTO `tips` VALUES (6, 5, '世界优秀猎犬十大排名', '对于什么犬种才是世界级的优秀猎犬，相信也是很多爱狗人士时常聊起的话题，毕竟相比较一般我们接触的宠物犬而言，猎犬无论是在身体素质，还是战斗意识方面都会更强。下面就为大家盘点世界上十个优秀的猎犬，看看世界优秀猎犬十大排名里谁才是最优秀的。1. 沙克犬\r\n\r\n第一个介绍的就是世界优秀猎犬十大排名的沙克犬，这是一种奔跑速度非常快的犬类，它的速度甚至能够追得上羚羊，而且视力非常好，能够靠实力追捕到许多的猎物。第九名是阿富汗猎犬，这是一种古老的猎犬，由于它嗅觉灵敏，并且视力很好，往往在狩猎行动中表现优秀，不断的建立功劳。第八名是波索尔猎犬，这是一种专门为了追捕野兽所培养出来的猎犬，拥有特殊且精确的身体，追捕猎物非常轻松。\r\n\r\n2. 法老王猎犬\r\n\r\n第七名是法老王猎犬，这是一种非常聪明的狗，而且对人十分的友善，在进入战斗状态以后十分的警惕，视觉和嗅觉都很优秀。第六名是猎兔犬，起源于英国的名贵猎犬，是贵族用于追捕猎物的猎犬，体型比较小，一般是群体行动。第五名是寻血猎犬，这种狗非常古老，也是世界上最纯正，品种古老，体型巨大的猎犬，主要靠嗅觉追捕猎物。第四名是惠比特犬(详情介绍)，这是一种中型猎犬，外表高雅冷酷，非常的漂亮，而且肌肉强壮，跑步距离大。\r\n\r\n3. 罗德西亚背脊犬\r\n\r\n第三名是被称为比格犬(详情介绍)的米格鲁猎兔犬，这也是世界名犬之一，属于古老的狩猎犬，深受人们的喜爱。第二名是来自美国的猎狐犬，这种狗历史悠久，在美国也市场可以见到，十分受欢迎。最后一个世界优秀猎犬十大排名介绍的正是罗德西亚背脊犬，这是一种非常强壮，灵活的猎犬，甚至可以追捕狮子，非常的强悍，而且它的速度很快，往往能够快速追捕到猎物，对主人十分的忠诚，对于一些没有见过的陌生人往往会保持很大的警惕心。\r\n\r\n以上就是关于世界优秀猎犬十大排名的介绍，不知道其中这十大猎犬里大家更喜欢哪一个呢？其实，对于我们人类来说，狗是最忠实的伙伴，在我们历史当中也有它的存在，而猎犬在过去也为我们人类提供了巨大的帮助，我们应该好好爱惜它们。', 'http://img.boqiicdn.com/Data/BK/A/2003/13/imagick18021584068384_y.jpg', 5, '2020-04-18', b'1');
INSERT INTO `tips` VALUES (7, 5, '黑色拉布拉多多少钱？黑色拉布拉多价格', '拉布拉多有很多颜色，主要包括米白色、巧克力色、黄色。生活中比较常见的是米白色和黑色的拉布拉多。黑色的拉布拉多看起来比较凶，其实它们很温柔哦。比较亲人，智商也很高。容易训练，是理想的伴侣犬。黑色拉布拉多多少钱？黑色拉布拉多价格黑色拉布拉多价格和很多因素有关，如黑色拉布拉多血统、黑色拉布拉多品相、黑色拉布拉多性别及年龄、购买地点购买渠道等等。目前市场上黑色拉布拉多价格在1500-3000左右，血统纯正的黑色拉布拉多价格在4000-10000元，赛级的拉布拉多价格上万哦。如果是家庭饲养选择宠物级别的拉布拉多就可以了，没有必要追求赛级拉布拉多。一般在正规犬舍及宠物店购买的拉布拉多价格会更高，但是质量会有保障，不会买到星期狗。家长们也可以选择家庭养殖的拉布拉多，可以自己上门去挑选狗狗，还可以看到狗狗生长环境及其父母哦，也比较靠谱，且价格会相对低一点。购买的时候了解清楚狗狗的生活习惯及疫苗和驱虫情况。还可以带走狗狗的旧物，可以让它们更快融入新的环境中。\r\n\r\n黑色拉布拉多在挑选时，首先要观察狗狗身体是否健康。可以查看黑色拉布拉多眼部、口鼻及肛门有无污物，精神状态是否良好。最好选择活泼好动的狗狗哦，不仅身体健康性格开朗，一般这样的狗狗都很亲人哦。', 'http://img.boqiicdn.com/Data/BK/A/1904/16/imagick11811555399921_y.jpg', 4, '2020-04-18', b'1');
INSERT INTO `tips` VALUES (8, 5, '杜高犬的脾气好吗？脾气差吗？', '杜高犬的脾气好吗？脾气差吗？杜高犬看起来外观比较霸气，带出门感觉比较帅的一只狗狗，而且属于猛犬的范围内，那像这样的狗狗脾气差吗，会不会不好养呢？', 'http://img.boqiicdn.com/Data/BK/A/1901/9/imagick1641547020721_y.jpg', 6, '2020-04-18', b'1');
INSERT INTO `tips` VALUES (9, 5, '秋田犬和柴犬的差别都有什么？', '秋田犬(详情介绍)和柴犬(详情介绍)的长相非常相似，就像一对孪生兄弟，对于不了解的人来说很难分清楚哪个是秋田犬，哪个是柴犬。只会说这狗长得不错啊......所以今天波奇网小编就来为大家介绍下秋田犬和柴犬的差别都有哪些，不了解的朋友们快来看看吧，希望以后就不要再把秋田犬误认为成柴犬了。柴犬，笑起来可以暖心，莫名的喜感。\r\n\r\n可以俏皮\r\n\r\n可以让你头皮发麻。\r\n\r\n秋田犬呢，就是地主家的傻儿子。\r\n\r\n取了个傻媳妇后高兴坏了。\r\n\r\n之前日本有一个看板狗特别火，每天在香烟店里迎接客人，一推门就是一个迷之微笑。吸引来了不少顾客，遗憾的是拍照的居多。很明显，这就是一只柴犬。如果这是一只秋田犬会怎样呢。大概会冲出橱窗，每天咬一位客人吧。让你们不经我允许拍我。', 'http://img.boqiicdn.com/Data/BK/A/1811/2/img60375bdbf50155360_o.jpg', 20, '2020-04-18', b'1');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `photo` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gender` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `city` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `follow` int(10) NULL DEFAULT NULL,
  `collect` int(15) NULL DEFAULT NULL,
  `fans` int(10) NULL DEFAULT NULL,
  `profile` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pet` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `time` date NULL DEFAULT NULL,
  `status` bit(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `phone`(`phone`) USING BTREE,
  UNIQUE INDEX `userName`(`user_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '稻香', 'root', 'admin', 'http://47.101.171.252:81/static/6e6afa3c-7c58-412d-b7cd-d075e71d8301.jpg', '女', '蓝天白云', 12, 13, 14, '不管只怎样，办法总比苦难多', '中华田园犬', '2020-04-18', b'1');
INSERT INTO `user` VALUES (2, '闷热的选手', 'JackMa', '123', 'http://47.101.171.252:81/static/b2d161fc-ad00-4d39-a920-022dd1316544.jpg', '男', '杭州', NULL, NULL, NULL, '我放款，你尽管买，记得还哦', '中华田园犬', '2020-04-01', b'1');
INSERT INTO `user` VALUES (3, '盖伦撸铁', 'Gray', '123', 'http://47.101.171.252:81/static/e34263a6-1f53-45b9-8356-e8c1784bf8e4.jpg', '男', '铜仁市', NULL, NULL, NULL, '撸铁小王子', '柯基', '2020-04-01', b'1');
INSERT INTO `user` VALUES (5, '宠物小精灵', 'admin', 'admin', 'http://47.101.171.252:81/static/3e084ef9-af53-4915-954d-614d4d063ceb.jpeg', '女', '厦门市', NULL, NULL, NULL, '宠物智能百科小能手', '二哈', '2020-04-01', b'1');

SET FOREIGN_KEY_CHECKS = 1;
