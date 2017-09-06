/*
Navicat MySQL Data Transfer

Source Server         : liuyc
Source Server Version : 50625
Source Host           : localhost:3306
Source Database       : crawlerweb

Target Server Type    : MYSQL
Target Server Version : 50625
File Encoding         : 65001

Date: 2017-09-06 14:03:17
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for zhihu_zhihuquestion
-- ----------------------------
DROP TABLE IF EXISTS `zhihu_zhihuquestion`;
CREATE TABLE `zhihu_zhihuquestion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `zhihu_id` varchar(50) NOT NULL,
  `topics` varchar(200) NOT NULL,
  `url` varchar(200) NOT NULL,
  `title` varchar(200) NOT NULL,
  `content` longtext NOT NULL,
  `answer_num` int(11) NOT NULL,
  `comments_num` int(11) NOT NULL,
  `watch_user_num` int(11) NOT NULL,
  `click_num` int(11) NOT NULL,
  `crawl_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zhihu_zhihuquestion
-- ----------------------------
INSERT INTO `zhihu_zhihuquestion` VALUES ('1', '64528423', '游戏,电子竞技,Steam,绝地求生：大逃杀（Playerunknown\'s Battlegrounds）', 'https://www.zhihu.com/question/64528423', '玩《绝地求生：大逃杀》时，有哪些搞笑的瞬间？', '<div class=\"QuestionHeader-detail\"><div class=\"QuestionRichText QuestionRichText--expandable QuestionRichText--collapsed\"><div><span class=\"RichText\" itemprop=\"text\">萌新刚刚玩绝地求生大逃杀，一个礼拜多只吃了三次，但是搞笑的事情特别多（比如被自己的车碾死，队友也没幸免于难），想听听大家的游戏中有没有发生过，如果想找队友的话可以加群：648873509（周六日人比平时多一些，但是也有点少，大家快来吧，群里有小姐姐哦）</span><button class=\"Button QuestionRichText-more Button--plain\" type=\"button\">显示全部<svg viewbox=\"0 0 10 6\" class=\"Icon QuestionRichText-more-icon Icon--arrow\" style=\"height:16px;width:10px;\" width=\"10\" height=\"16\" aria-hidden=\"true\"><title></title><g><path d=\"M8.716.217L5.002 4 1.285.218C.99-.072.514-.072.22.218c-.294.29-.294.76 0 1.052l4.25 4.512c.292.29.77.29 1.063 0L9.78 1.27c.293-.29.293-.76 0-1.052-.295-.29-.77-.29-1.063 0z\"></path></g></svg></button></div></div></div>', '1031', '7', '3825', '5908889', '2017-09-06 13:48:52.000000');
INSERT INTO `zhihu_zhihuquestion` VALUES ('2', '64850057', 'NBA,篮球,芝加哥公牛（Chicago Bulls）,克里夫兰骑士（Cleveland Cavaliers）,德里克·罗斯（Derrick Rose）', 'https://www.zhihu.com/question/64850057', '从mvp到底薪，罗斯的经历教会了你什么？', '<div class=\"QuestionHeader-detail\"><div class=\"QuestionRichText QuestionRichText--expandable QuestionRichText--collapsed\"><div><span class=\"RichText\" itemprop=\"text\">看到罗斯哭了 百感交集</span><button class=\"Button QuestionRichText-more Button--plain\" type=\"button\">显示全部<svg viewbox=\"0 0 10 6\" class=\"Icon QuestionRichText-more-icon Icon--arrow\" style=\"height:16px;width:10px;\" width=\"10\" height=\"16\" aria-hidden=\"true\"><title></title><g><path d=\"M8.716.217L5.002 4 1.285.218C.99-.072.514-.072.22.218c-.294.29-.294.76 0 1.052l4.25 4.512c.292.29.77.29 1.063 0L9.78 1.27c.293-.29.293-.76 0-1.052-.295-.29-.77-.29-1.063 0z\"></path></g></svg></button></div></div></div>', '36', '0', '73', '41764', '2017-09-06 13:49:03.000000');
INSERT INTO `zhihu_zhihuquestion` VALUES ('3', '64939134', 'NBA,篮球,NBA 季后赛,金州勇士（Golden State Warriors）', 'https://www.zhihu.com/question/64939134', '西部球队可能在季后赛中淘汰勇士吗？', '<div class=\"QuestionHeader-detail\"><div class=\"QuestionRichText QuestionRichText--expandable QuestionRichText--collapsed\"><div><span class=\"RichText\" itemprop=\"text\">首先本人不是勇士黑，也不是勇士吹。 感觉虽然许多球队都补强了，但是似乎不可能打得过勇士啊。或者说勇士的表现让人产生了他们强的离谱的错觉(虽然勇士实际上也很强)？…但勇士进了总决赛就肯定就是冠军了吧。我不是很懂球… 求靠谱的分析…</span><button class=\"Button QuestionRichText-more Button--plain\" type=\"button\">显示全部<svg viewbox=\"0 0 10 6\" class=\"Icon QuestionRichText-more-icon Icon--arrow\" style=\"height:16px;width:10px;\" width=\"10\" height=\"16\" aria-hidden=\"true\"><title></title><g><path d=\"M8.716.217L5.002 4 1.285.218C.99-.072.514-.072.22.218c-.294.29-.294.76 0 1.052l4.25 4.512c.292.29.77.29 1.063 0L9.78 1.27c.293-.29.293-.76 0-1.052-.295-.29-.77-.29-1.063 0z\"></path></g></svg></button></div></div></div>', '15', '0', '21', '13705', '2017-09-06 13:49:07.000000');
INSERT INTO `zhihu_zhihuquestion` VALUES ('4', '64898701', 'NBA,体育,篮球,篮球技术,体育赛事', 'https://www.zhihu.com/question/64898701', '作为联盟数一数二的小前锋，杜兰特和詹姆斯各有什么优缺点？', '<div class=\"QuestionHeader-detail\"><div class=\"QuestionRichText QuestionRichText--expandable QuestionRichText--collapsed\"><div><span></span><button class=\"Button QuestionRichText-more Button--plain\" type=\"button\">显示全部<svg viewbox=\"0 0 10 6\" class=\"Icon QuestionRichText-more-icon Icon--arrow\" style=\"height:16px;width:10px;\" width=\"10\" height=\"16\" aria-hidden=\"true\"><title></title><g><path d=\"M8.716.217L5.002 4 1.285.218C.99-.072.514-.072.22.218c-.294.29-.294.76 0 1.052l4.25 4.512c.292.29.77.29 1.063 0L9.78 1.27c.293-.29.293-.76 0-1.052-.295-.29-.77-.29-1.063 0z\"></path></g></svg></button></div></div></div>', '30', '0', '48', '53070', '2017-09-06 13:49:14.000000');
INSERT INTO `zhihu_zhihuquestion` VALUES ('5', '35131105', '软件学院,哈尔滨工程大学（HEU）,大学就读体验', 'https://www.zhihu.com/question/35131105', '在哈尔滨工程大学软件学院就读是一种什么样的体验？', '<div class=\"QuestionHeader-detail\"><div class=\"QuestionRichText QuestionRichText--expandable QuestionRichText--collapsed\"><div><span class=\"RichText\" itemprop=\"text\">如题，首先题主不知道有没有这样的体验。在大实习之前找到了校外实习，但是学院方的负责老师用各种各样的手续卡着不让人出去实习。导致有的人被从实习岗位拉下来中断实习去跟着学校到大连东软做一些过时的东西。 还有很多事情，比如说有的老师无端加课，无端挂人，并且上课讲黄段子，其实什么也不懂非得要去胡说八道。并且被赋予了相当大的权力，比如说自己的工作量是别的老师的三四倍这种事情。</span><button class=\"Button QuestionRichText-more Button--plain\" type=\"button\">显示全部<svg viewbox=\"0 0 10 6\" class=\"Icon QuestionRichText-more-icon Icon--arrow\" style=\"height:16px;width:10px;\" width=\"10\" height=\"16\" aria-hidden=\"true\"><title></title><g><path d=\"M8.716.217L5.002 4 1.285.218C.99-.072.514-.072.22.218c-.294.29-.294.76 0 1.052l4.25 4.512c.292.29.77.29 1.063 0L9.78 1.27c.293-.29.293-.76 0-1.052-.295-.29-.77-.29-1.063 0z\"></path></g></svg></button></div></div></div>', '9', '0', '28', '5803', '2017-09-06 13:50:45.000000');
INSERT INTO `zhihu_zhihuquestion` VALUES ('6', '61944688', '心理学,学生,学校,教师', 'https://www.zhihu.com/question/61944688', '你觉得人的什么行为表明他在走下坡路？', '<div class=\"QuestionHeader-detail\"><div class=\"QuestionRichText QuestionRichText--expandable QuestionRichText--collapsed\"><div><span class=\"RichText\" itemprop=\"text\">比如有个人努力一段时间，取得一个好成绩。然后他怎么的行为会“表明”ta无法取得更大的成就，会一点点走下坡路。</span><button class=\"Button QuestionRichText-more Button--plain\" type=\"button\">显示全部<svg viewbox=\"0 0 10 6\" class=\"Icon QuestionRichText-more-icon Icon--arrow\" style=\"height:16px;width:10px;\" width=\"10\" height=\"16\" aria-hidden=\"true\"><title></title><g><path d=\"M8.716.217L5.002 4 1.285.218C.99-.072.514-.072.22.218c-.294.29-.294.76 0 1.052l4.25 4.512c.292.29.77.29 1.063 0L9.78 1.27c.293-.29.293-.76 0-1.052-.295-.29-.77-.29-1.063 0z\"></path></g></svg></button></div></div></div>', '248', '7', '6243', '713867', '2017-09-06 13:51:13.000000');
INSERT INTO `zhihu_zhihuquestion` VALUES ('7', '64779552', '调查类问题,大学生,研究生,清华大学,如何看待/评价 X', 'https://www.zhihu.com/question/64779552', '如何看待 11 名清华大学研究生因婚外情、殴打恋爱对象、偷窥异性入厕等原因遭处分，最重为开除学籍？', '<div class=\"QuestionHeader-detail\"><div class=\"QuestionRichText QuestionRichText--expandable QuestionRichText--collapsed\"><div><span class=\"RichText\" itemprop=\"text\">8月底清华大学研究生院、党委研究生工作部发布公告，对2016年9月至2017年7月期间，违纪的11名研究生进行了处分公告。 这些学生中，有8名博士生、2名硕士生和1名在职硕士。他们的违纪行为包括：无故离校5天（不记法定节假日）、婚外情、殴打恋爱对象、学术不端、偷窥异性入厕、殴打工作人员等等。校方对违纪研究生进行了不同程度的处罚，最轻为警告，最重为开除学籍 我来补充原文！ </span><button class=\"Button QuestionRichText-more Button--plain\" type=\"button\">显示全部<svg viewbox=\"0 0 10 6\" class=\"Icon QuestionRichText-more-icon Icon--arrow\" style=\"height:16px;width:10px;\" width=\"10\" height=\"16\" aria-hidden=\"true\"><title></title><g><path d=\"M8.716.217L5.002 4 1.285.218C.99-.072.514-.072.22.218c-.294.29-.294.76 0 1.052l4.25 4.512c.292.29.77.29 1.063 0L9.78 1.27c.293-.29.293-.76 0-1.052-.295-.29-.77-.29-1.063 0z\"></path></g></svg></button></div></div></div>', '131', '15', '836', '472206', '2017-09-06 13:51:17.000000');
INSERT INTO `zhihu_zhihuquestion` VALUES ('8', '64873930', '北京理工大学（BIT）,北京理工大学良乡校区', 'https://www.zhihu.com/question/64873930', '如何看待北京理工大学关停了极速之星？', '<div class=\"QuestionHeader-detail\"><div class=\"QuestionRichText QuestionRichText--expandable QuestionRichText--collapsed\"><div><span></span><button class=\"Button QuestionRichText-more Button--plain\" type=\"button\">显示全部<svg viewbox=\"0 0 10 6\" class=\"Icon QuestionRichText-more-icon Icon--arrow\" style=\"height:16px;width:10px;\" width=\"10\" height=\"16\" aria-hidden=\"true\"><title></title><g><path d=\"M8.716.217L5.002 4 1.285.218C.99-.072.514-.072.22.218c-.294.29-.294.76 0 1.052l4.25 4.512c.292.29.77.29 1.063 0L9.78 1.27c.293-.29.293-.76 0-1.052-.295-.29-.77-.29-1.063 0z\"></path></g></svg></button></div></div></div>', '176', '9', '611', '249017', '2017-09-06 13:51:21.000000');
INSERT INTO `zhihu_zhihuquestion` VALUES ('9', '64948479', 'NBA', 'https://www.zhihu.com/question/64948479', '如果选秀出现一个和奥尼尔一样天赋的中锋 是否会改变小球时代？', '<div class=\"QuestionHeader-detail\"><div class=\"QuestionRichText QuestionRichText--expandable QuestionRichText--collapsed\"><div><span></span><button class=\"Button QuestionRichText-more Button--plain\" type=\"button\">显示全部<svg viewbox=\"0 0 10 6\" class=\"Icon QuestionRichText-more-icon Icon--arrow\" style=\"height:16px;width:10px;\" width=\"10\" height=\"16\" aria-hidden=\"true\"><title></title><g><path d=\"M8.716.217L5.002 4 1.285.218C.99-.072.514-.072.22.218c-.294.29-.294.76 0 1.052l4.25 4.512c.292.29.77.29 1.063 0L9.78 1.27c.293-.29.293-.76 0-1.052-.295-.29-.77-.29-1.063 0z\"></path></g></svg></button></div></div></div>', '2', '0', '5', '466', '2017-09-06 13:51:25.000000');
INSERT INTO `zhihu_zhihuquestion` VALUES ('10', '64843151', '投资,经济,商业,中国,金融', 'https://www.zhihu.com/question/64843151', '同样是向海外转移资产，为什么部分支持李嘉诚的中国网民会挖苦王健林？', '<div class=\"QuestionHeader-detail\"><div class=\"QuestionRichText QuestionRichText--expandable QuestionRichText--collapsed\"><div><span class=\"RichText\" itemprop=\"text\">同样是撤资中国，布局海外感觉大众普遍能理解甚至支持李嘉诚的决定，但似乎对王健林充满了挖苦和不满为什么会出现这种态度上的差别？</span><button class=\"Button QuestionRichText-more Button--plain\" type=\"button\">显示全部<svg viewbox=\"0 0 10 6\" class=\"Icon QuestionRichText-more-icon Icon--arrow\" style=\"height:16px;width:10px;\" width=\"10\" height=\"16\" aria-hidden=\"true\"><title></title><g><path d=\"M8.716.217L5.002 4 1.285.218C.99-.072.514-.072.22.218c-.294.29-.294.76 0 1.052l4.25 4.512c.292.29.77.29 1.063 0L9.78 1.27c.293-.29.293-.76 0-1.052-.295-.29-.77-.29-1.063 0z\"></path></g></svg></button></div></div></div>', '212', '14', '2649', '2401892', '2017-09-06 13:51:30.000000');
INSERT INTO `zhihu_zhihuquestion` VALUES ('11', '64578855', '心理学,教育,社会现象,人生观,学习规划', 'https://www.zhihu.com/question/64578855', '如何评价新闻“10岁男孩考第一嫌爸妈没钱:不配有我这好儿子”？', '<div class=\"QuestionHeader-detail\"><div class=\"QuestionRichText QuestionRichText--expandable QuestionRichText--collapsed\"><div><span class=\"RichText\" itemprop=\"text\">看了之后心里怪怪的，总感觉自己想明白后会全身冷汗，所以还是你们来吧哈哈哈附链接：<a href=\"https://link.zhihu.com/?target=https%3A//www.baidu.com/home/news/data/newspage%3Fnid%3D7805155627232357725%26n_type%3D0%26p_from%3D1%26dtype%3D-1\" class=\" wrap external\" target=\"_blank\" rel=\"nofollow noreferrer\">网曝10岁男孩考第一嫌爸妈没钱:不配有我这好儿子<i class=\"icon-external\"></i></a>对了，我15，感觉自己也有这种现象，越来越觉得自己想的父母已经无法理解。。------------------------------------------------------------------------------------分割线很感谢各位知乎er在本问题的回答，我一直把知乎当工具书用，提这个问题的初衷也只是有两个原因：1.给我的父母看看，因…</span><button class=\"Button QuestionRichText-more Button--plain\" type=\"button\">显示全部<svg viewbox=\"0 0 10 6\" class=\"Icon QuestionRichText-more-icon Icon--arrow\" style=\"height:16px;width:10px;\" width=\"10\" height=\"16\" aria-hidden=\"true\"><title></title><g><path d=\"M8.716.217L5.002 4 1.285.218C.99-.072.514-.072.22.218c-.294.29-.294.76 0 1.052l4.25 4.512c.292.29.77.29 1.063 0L9.78 1.27c.293-.29.293-.76 0-1.052-.295-.29-.77-.29-1.063 0z\"></path></g></svg></button></div></div></div>', '335', '18', '591', '307120', '2017-09-06 13:51:34.000000');
INSERT INTO `zhihu_zhihuquestion` VALUES ('12', '64432577', 'NBA,NBA 总决赛,NBA 球员,金州勇士（Golden State Warriors）,斯蒂芬·库里（Stephen Curry）', 'https://www.zhihu.com/question/64432577', '库里的单打能力在联盟那个梯队？', '<div class=\"QuestionHeader-detail\"><div class=\"QuestionRichText QuestionRichText--expandable QuestionRichText--collapsed\"><div><span class=\"RichText\" itemprop=\"text\">大家觉得库里的单打能力在联盟能算第一梯队(前五)吗？不知道为什么，问题内容被删了好多！难道说库里二运了，知乎小编也不满意了？还是有人投诉了 本人真实勇士球迷六年，库里进入nba就开始关注，只是希望大家能客观认识看待问题！二运就是二运了，但一样是好球，评论员一样尖叫了，是不是看链接<a href=\"https://link.zhihu.com/?target=https%3A//m.weibo.cn/3485212312/4115400108945641https%3A//m.weibo.cn/3485212312/4115400108945641\" class=\" external\" target=\"_blank\" rel=\"nofollow noreferrer\"><span class=\"invisible\">https://</span><span class=\"visible\">m.weibo.cn/3485212312/4</span><span class=\"invisible\">115400108945641https://m.weibo.cn/3485212312/4115400108945641</span><span class=\"ellipsis\"></span><i class=\"icon-external\"></i></a> 一个评论里面的链接和图，谢谢！ 跑题了！本来说的是单打，欧文单打小王子之所以单打多，大多是卢指导的意思，…</span><button class=\"Button QuestionRichText-more Button--plain\" type=\"button\">显示全部<svg viewbox=\"0 0 10 6\" class=\"Icon QuestionRichText-more-icon Icon--arrow\" style=\"height:16px;width:10px;\" width=\"10\" height=\"16\" aria-hidden=\"true\"><title></title><g><path d=\"M8.716.217L5.002 4 1.285.218C.99-.072.514-.072.22.218c-.294.29-.294.76 0 1.052l4.25 4.512c.292.29.77.29 1.063 0L9.78 1.27c.293-.29.293-.76 0-1.052-.295-.29-.77-.29-1.063 0z\"></path></g></svg></button></div></div></div>', '48', '6', '107', '152390', '2017-09-06 13:51:42.000000');
INSERT INTO `zhihu_zhihuquestion` VALUES ('13', '28091420', '女性,内裤,女性健康,女性着装,健美', 'https://www.zhihu.com/question/28091420', '如何防止内裤勒痕出现？', '<div class=\"QuestionHeader-detail\"><div class=\"QuestionRichText QuestionRichText--expandable QuestionRichText--collapsed\"><div><span class=\"RichText\" itemprop=\"text\">特指两点 1，穿上裤子后看到的内裤边的痕迹 2，脱了内裤后，腰上的某个部位由于常年被勒，脱了内裤也有一道痕迹 个人觉得不是一句内裤大小能解决的，求赐教谢谢！</span><button class=\"Button QuestionRichText-more Button--plain\" type=\"button\">显示全部<svg viewbox=\"0 0 10 6\" class=\"Icon QuestionRichText-more-icon Icon--arrow\" style=\"height:16px;width:10px;\" width=\"10\" height=\"16\" aria-hidden=\"true\"><title></title><g><path d=\"M8.716.217L5.002 4 1.285.218C.99-.072.514-.072.22.218c-.294.29-.294.76 0 1.052l4.25 4.512c.292.29.77.29 1.063 0L9.78 1.27c.293-.29.293-.76 0-1.052-.295-.29-.77-.29-1.063 0z\"></path></g></svg></button></div></div></div>', '70', '15', '1144', '313890', '2017-09-06 13:52:38.000000');
INSERT INTO `zhihu_zhihuquestion` VALUES ('14', '64411443', '体育,足球,欧洲冠军联赛', 'https://www.zhihu.com/question/64411443', '如何看待 2017-2018 赛季欧冠联赛小组赛抽签结果？', '<div class=\"QuestionHeader-detail\"><div class=\"QuestionRichText QuestionRichText--expandable QuestionRichText--collapsed\"><div><span class=\"RichText\" itemprop=\"text\"><b>本题已加入圆桌 »<a href=\"https://www.zhihu.com/roundtable/ouzhouzutan\" class=\"internal\">看球 · 欧洲足坛</a>，更多「足球」相关的话题欢迎关注讨论</b></span><button class=\"Button QuestionRichText-more Button--plain\" type=\"button\">显示全部<svg viewbox=\"0 0 10 6\" class=\"Icon QuestionRichText-more-icon Icon--arrow\" style=\"height:16px;width:10px;\" width=\"10\" height=\"16\" aria-hidden=\"true\"><title></title><g><path d=\"M8.716.217L5.002 4 1.285.218C.99-.072.514-.072.22.218c-.294.29-.294.76 0 1.052l4.25 4.512c.292.29.77.29 1.063 0L9.78 1.27c.293-.29.293-.76 0-1.052-.295-.29-.77-.29-1.063 0z\"></path></g></svg></button></div></div></div>', '62', '0', '166', '158201', '2017-09-06 13:53:45.000000');
INSERT INTO `zhihu_zhihuquestion` VALUES ('15', '20302989', '情感,爱情,爱情观', 'https://www.zhihu.com/question/20302989', '什么才是真正的爱情？', '<div class=\"QuestionHeader-detail\"><div class=\"QuestionRichText QuestionRichText--expandable QuestionRichText--collapsed\"><div><span class=\"RichText\" itemprop=\"text\">以前觉得男男女女恋爱时的卿卿我我就是爱情，现在觉得两个人能真正携手到老的才是真正的爱情，对吗？</span><button class=\"Button QuestionRichText-more Button--plain\" type=\"button\">显示全部<svg viewbox=\"0 0 10 6\" class=\"Icon QuestionRichText-more-icon Icon--arrow\" style=\"height:16px;width:10px;\" width=\"10\" height=\"16\" aria-hidden=\"true\"><title></title><g><path d=\"M8.716.217L5.002 4 1.285.218C.99-.072.514-.072.22.218c-.294.29-.294.76 0 1.052l4.25 4.512c.292.29.77.29 1.063 0L9.78 1.27c.293-.29.293-.76 0-1.052-.295-.29-.77-.29-1.063 0z\"></path></g></svg></button></div></div></div>', '590', '18', '5604', '1423026', '2017-09-06 13:53:49.000000');
INSERT INTO `zhihu_zhihuquestion` VALUES ('16', '62954760', '商业,App 评测,极限挑战 (综艺节目),极限挑战第三季,拼多多', 'https://www.zhihu.com/question/62954760', '如何看待「拼多多」这个 app？', '<div class=\"QuestionHeader-detail\"><div class=\"QuestionRichText QuestionRichText--expandable QuestionRichText--collapsed\"><div><span class=\"RichText\" itemprop=\"text\">近来不论是极限挑战，还是其他一些电视节目，都收到拼多多的资金冠名，可有人说这个app带有传销性质，而且百分之八十的商品都是假货，传说中的一亿人使用的app，真如广告里一样那么好用吗？</span><button class=\"Button QuestionRichText-more Button--plain\" type=\"button\">显示全部<svg viewbox=\"0 0 10 6\" class=\"Icon QuestionRichText-more-icon Icon--arrow\" style=\"height:16px;width:10px;\" width=\"10\" height=\"16\" aria-hidden=\"true\"><title></title><g><path d=\"M8.716.217L5.002 4 1.285.218C.99-.072.514-.072.22.218c-.294.29-.294.76 0 1.052l4.25 4.512c.292.29.77.29 1.063 0L9.78 1.27c.293-.29.293-.76 0-1.052-.295-.29-.77-.29-1.063 0z\"></path></g></svg></button></div></div></div>', '307', '12', '1158', '1395244', '2017-09-06 13:54:47.000000');
INSERT INTO `zhihu_zhihuquestion` VALUES ('17', '64684449', '生活,经验,科技,专业角度,抠脚', 'https://www.zhihu.com/question/64684449', '抠脚有哪些特殊的技巧？', '<div class=\"QuestionHeader-detail\"><div class=\"QuestionRichText QuestionRichText--expandable QuestionRichText--collapsed\"><div><span class=\"RichText\" itemprop=\"text\">帮朋友问的。</span><button class=\"Button QuestionRichText-more Button--plain\" type=\"button\">显示全部<svg viewbox=\"0 0 10 6\" class=\"Icon QuestionRichText-more-icon Icon--arrow\" style=\"height:16px;width:10px;\" width=\"10\" height=\"16\" aria-hidden=\"true\"><title></title><g><path d=\"M8.716.217L5.002 4 1.285.218C.99-.072.514-.072.22.218c-.294.29-.294.76 0 1.052l4.25 4.512c.292.29.77.29 1.063 0L9.78 1.27c.293-.29.293-.76 0-1.052-.295-.29-.77-.29-1.063 0z\"></path></g></svg></button></div></div></div>', '13', '6', '73', '10479', '2017-09-06 13:54:51.000000');
INSERT INTO `zhihu_zhihuquestion` VALUES ('18', '63537524', '艺术,生活,设计,细节,有哪些 X', 'https://www.zhihu.com/question/63537524', '有哪些令人叹为观止的细节？', '<div class=\"QuestionHeader-detail\"><div class=\"QuestionRichText QuestionRichText--expandable QuestionRichText--collapsed\"><div><span class=\"RichText\" itemprop=\"text\">比如杰克船长一生穿戴的东西都是来自第一批船员的献礼（加勒比5看到这个细节瞬间激动）；亚马逊（amazon）的logo上，有个小箭头由a指到z，暗示什么都可以在亚马逊上买到（知道之后真心感叹设计师的智慧）。还有什么类似的案例能让人感叹作者的智慧吗？</span><button class=\"Button QuestionRichText-more Button--plain\" type=\"button\">显示全部<svg viewbox=\"0 0 10 6\" class=\"Icon QuestionRichText-more-icon Icon--arrow\" style=\"height:16px;width:10px;\" width=\"10\" height=\"16\" aria-hidden=\"true\"><title></title><g><path d=\"M8.716.217L5.002 4 1.285.218C.99-.072.514-.072.22.218c-.294.29-.294.76 0 1.052l4.25 4.512c.292.29.77.29 1.063 0L9.78 1.27c.293-.29.293-.76 0-1.052-.295-.29-.77-.29-1.063 0z\"></path></g></svg></button></div></div></div>', '1293', '23', '36296', '59696370', '2017-09-06 13:55:19.000000');
INSERT INTO `zhihu_zhihuquestion` VALUES ('19', '41017412', '调查类问题,生活经历,相貌,外貌,颜值', 'https://www.zhihu.com/question/41017412', '你曾因为长相/颜值而受到过什么特殊待遇？', '<div class=\"QuestionHeader-detail\"><div class=\"QuestionRichText QuestionRichText--expandable QuestionRichText--collapsed\"><div><span class=\"RichText\" itemprop=\"text\">或好或坏</span><button class=\"Button QuestionRichText-more Button--plain\" type=\"button\">显示全部<svg viewbox=\"0 0 10 6\" class=\"Icon QuestionRichText-more-icon Icon--arrow\" style=\"height:16px;width:10px;\" width=\"10\" height=\"16\" aria-hidden=\"true\"><title></title><g><path d=\"M8.716.217L5.002 4 1.285.218C.99-.072.514-.072.22.218c-.294.29-.294.76 0 1.052l4.25 4.512c.292.29.77.29 1.063 0L9.78 1.27c.293-.29.293-.76 0-1.052-.295-.29-.77-.29-1.063 0z\"></path></g></svg></button></div></div></div>', '2422', '31', '15157', '7862454', '2017-09-06 13:58:50.000000');