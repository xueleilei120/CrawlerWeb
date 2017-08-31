/*
Navicat MySQL Data Transfer

Source Server         : liuyc
Source Server Version : 50625
Source Host           : localhost:3306
Source Database       : crawlerweb

Target Server Type    : MYSQL
Target Server Version : 50625
File Encoding         : 65001

Date: 2017-08-31 21:58:53
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permissi_content_type_id_2f476e4b_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES ('1', 'Can add log entry', '1', 'add_logentry');
INSERT INTO `auth_permission` VALUES ('2', 'Can change log entry', '1', 'change_logentry');
INSERT INTO `auth_permission` VALUES ('3', 'Can delete log entry', '1', 'delete_logentry');
INSERT INTO `auth_permission` VALUES ('4', 'Can add permission', '2', 'add_permission');
INSERT INTO `auth_permission` VALUES ('5', 'Can change permission', '2', 'change_permission');
INSERT INTO `auth_permission` VALUES ('6', 'Can delete permission', '2', 'delete_permission');
INSERT INTO `auth_permission` VALUES ('7', 'Can add group', '3', 'add_group');
INSERT INTO `auth_permission` VALUES ('8', 'Can change group', '3', 'change_group');
INSERT INTO `auth_permission` VALUES ('9', 'Can delete group', '3', 'delete_group');
INSERT INTO `auth_permission` VALUES ('10', 'Can add user', '4', 'add_user');
INSERT INTO `auth_permission` VALUES ('11', 'Can change user', '4', 'change_user');
INSERT INTO `auth_permission` VALUES ('12', 'Can delete user', '4', 'delete_user');
INSERT INTO `auth_permission` VALUES ('13', 'Can add content type', '5', 'add_contenttype');
INSERT INTO `auth_permission` VALUES ('14', 'Can change content type', '5', 'change_contenttype');
INSERT INTO `auth_permission` VALUES ('15', 'Can delete content type', '5', 'delete_contenttype');
INSERT INTO `auth_permission` VALUES ('16', 'Can add session', '6', 'add_session');
INSERT INTO `auth_permission` VALUES ('17', 'Can change session', '6', 'change_session');
INSERT INTO `auth_permission` VALUES ('18', 'Can delete session', '6', 'delete_session');
INSERT INTO `auth_permission` VALUES ('19', 'Can add 糗事百科文章', '7', 'add_qiushiarticle');
INSERT INTO `auth_permission` VALUES ('20', 'Can change 糗事百科文章', '7', 'change_qiushiarticle');
INSERT INTO `auth_permission` VALUES ('21', 'Can delete 糗事百科文章', '7', 'delete_qiushiarticle');
INSERT INTO `auth_permission` VALUES ('22', 'Can view log entry', '1', 'view_logentry');
INSERT INTO `auth_permission` VALUES ('23', 'Can view group', '3', 'view_group');
INSERT INTO `auth_permission` VALUES ('24', 'Can view permission', '2', 'view_permission');
INSERT INTO `auth_permission` VALUES ('25', 'Can view user', '4', 'view_user');
INSERT INTO `auth_permission` VALUES ('26', 'Can view content type', '5', 'view_contenttype');
INSERT INTO `auth_permission` VALUES ('27', 'Can view 糗事百科文章', '7', 'view_qiushiarticle');
INSERT INTO `auth_permission` VALUES ('28', 'Can view session', '6', 'view_session');
INSERT INTO `auth_permission` VALUES ('29', 'Can add Bookmark', '8', 'add_bookmark');
INSERT INTO `auth_permission` VALUES ('30', 'Can change Bookmark', '8', 'change_bookmark');
INSERT INTO `auth_permission` VALUES ('31', 'Can delete Bookmark', '8', 'delete_bookmark');
INSERT INTO `auth_permission` VALUES ('32', 'Can add User Setting', '9', 'add_usersettings');
INSERT INTO `auth_permission` VALUES ('33', 'Can change User Setting', '9', 'change_usersettings');
INSERT INTO `auth_permission` VALUES ('34', 'Can delete User Setting', '9', 'delete_usersettings');
INSERT INTO `auth_permission` VALUES ('35', 'Can add User Widget', '10', 'add_userwidget');
INSERT INTO `auth_permission` VALUES ('36', 'Can change User Widget', '10', 'change_userwidget');
INSERT INTO `auth_permission` VALUES ('37', 'Can delete User Widget', '10', 'delete_userwidget');
INSERT INTO `auth_permission` VALUES ('38', 'Can add log entry', '11', 'add_log');
INSERT INTO `auth_permission` VALUES ('39', 'Can change log entry', '11', 'change_log');
INSERT INTO `auth_permission` VALUES ('40', 'Can delete log entry', '11', 'delete_log');
INSERT INTO `auth_permission` VALUES ('41', 'Can view Bookmark', '8', 'view_bookmark');
INSERT INTO `auth_permission` VALUES ('42', 'Can view log entry', '11', 'view_log');
INSERT INTO `auth_permission` VALUES ('43', 'Can view User Setting', '9', 'view_usersettings');
INSERT INTO `auth_permission` VALUES ('44', 'Can view User Widget', '10', 'view_userwidget');
INSERT INTO `auth_permission` VALUES ('45', 'Can add 智联职位信息', '12', 'add_zhilianjob');
INSERT INTO `auth_permission` VALUES ('46', 'Can change 智联职位信息', '12', 'change_zhilianjob');
INSERT INTO `auth_permission` VALUES ('47', 'Can delete 智联职位信息', '12', 'delete_zhilianjob');
INSERT INTO `auth_permission` VALUES ('48', 'Can view 智联职位信息', '12', 'view_zhilianjob');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
INSERT INTO `auth_user` VALUES ('1', 'pbkdf2_sha256$24000$oKbfR6A9zK9n$7yVpY8XMLEuzPndaAVZE0hiDcdupA/GX7F85IcuzjUU=', '2017-08-31 08:44:47.755241', '1', 'liuyc', '', '', '2@qq.com', '1', '1', '2017-08-31 08:41:29.324284');
INSERT INTO `auth_user` VALUES ('2', 'pbkdf2_sha256$24000$k2smxEQFeJKM$P7/CjWVUk5wKFtmu+YZskosLWc5skiLWJJ3otQnQ4cY=', null, '1', '615chaoge', '', '', '2@qq.com', '1', '1', '2017-08-31 08:42:38.429983');

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('1', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('3', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('2', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('4', 'auth', 'user');
INSERT INTO `django_content_type` VALUES ('5', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('7', 'qsbk', 'qiushiarticle');
INSERT INTO `django_content_type` VALUES ('6', 'sessions', 'session');
INSERT INTO `django_content_type` VALUES ('8', 'xadmin', 'bookmark');
INSERT INTO `django_content_type` VALUES ('11', 'xadmin', 'log');
INSERT INTO `django_content_type` VALUES ('9', 'xadmin', 'usersettings');
INSERT INTO `django_content_type` VALUES ('10', 'xadmin', 'userwidget');
INSERT INTO `django_content_type` VALUES ('12', 'zhilian', 'zhilianjob');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES ('1', 'contenttypes', '0001_initial', '2017-08-31 08:40:49.971877');
INSERT INTO `django_migrations` VALUES ('2', 'auth', '0001_initial', '2017-08-31 08:40:58.333520');
INSERT INTO `django_migrations` VALUES ('3', 'admin', '0001_initial', '2017-08-31 08:41:00.062132');
INSERT INTO `django_migrations` VALUES ('4', 'admin', '0002_logentry_remove_auto_add', '2017-08-31 08:41:00.257869');
INSERT INTO `django_migrations` VALUES ('5', 'contenttypes', '0002_remove_content_type_name', '2017-08-31 08:41:01.347378');
INSERT INTO `django_migrations` VALUES ('6', 'auth', '0002_alter_permission_name_max_length', '2017-08-31 08:41:02.237398');
INSERT INTO `django_migrations` VALUES ('7', 'auth', '0003_alter_user_email_max_length', '2017-08-31 08:41:03.070432');
INSERT INTO `django_migrations` VALUES ('8', 'auth', '0004_alter_user_username_opts', '2017-08-31 08:41:03.118046');
INSERT INTO `django_migrations` VALUES ('9', 'auth', '0005_alter_user_last_login_null', '2017-08-31 08:41:03.779586');
INSERT INTO `django_migrations` VALUES ('10', 'auth', '0006_require_contenttypes_0002', '2017-08-31 08:41:03.820610');
INSERT INTO `django_migrations` VALUES ('11', 'auth', '0007_alter_validators_add_error_messages', '2017-08-31 08:41:03.878862');
INSERT INTO `django_migrations` VALUES ('12', 'qsbk', '0001_initial', '2017-08-31 08:41:04.290277');
INSERT INTO `django_migrations` VALUES ('13', 'sessions', '0001_initial', '2017-08-31 08:41:04.989766');
INSERT INTO `django_migrations` VALUES ('14', 'xadmin', '0001_initial', '2017-08-31 08:42:06.882194');
INSERT INTO `django_migrations` VALUES ('15', 'xadmin', '0002_log', '2017-08-31 08:42:08.799265');
INSERT INTO `django_migrations` VALUES ('16', 'xadmin', '0003_auto_20160715_0100', '2017-08-31 08:42:09.582390');
INSERT INTO `django_migrations` VALUES ('17', 'qsbk', '0002_auto_20170831_0850', '2017-08-31 08:50:16.257696');
INSERT INTO `django_migrations` VALUES ('18', 'qsbk', '0003_auto_20170831_1034', '2017-08-31 10:34:31.819376');
INSERT INTO `django_migrations` VALUES ('19', 'zhilian', '0001_initial', '2017-08-31 21:19:01.552614');
INSERT INTO `django_migrations` VALUES ('20', 'zhilian', '0002_auto_20170831_2146', '2017-08-31 21:46:21.538727');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('i0e1285oqmldqqcsi25xt8k71huaasz2', 'ZjFkYzJmYTAzNDU5OWE1YjA2YTZmMTk3NDE1YmQxMDUwMjZiYTc2Zjp7Il9hdXRoX3VzZXJfaGFzaCI6IjE3Yjg3ZTRkYTgzZTlkODdlNWMzZjNmYWVlNDUwM2M5ZDQ1ODY5YmMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIiwiTElTVF9RVUVSWSI6W1siemhpbGlhbiIsInpoaWxpYW5qb2IiXSwiIl19', '2017-09-14 21:57:07.959893');

-- ----------------------------
-- Table structure for qsbk_qiushiarticle
-- ----------------------------
DROP TABLE IF EXISTS `qsbk_qiushiarticle`;
CREATE TABLE `qsbk_qiushiarticle` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author` varchar(200) NOT NULL,
  `url` varchar(200) NOT NULL,
  `content` longtext NOT NULL,
  `image` varchar(100) NOT NULL,
  `crawl_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qsbk_qiushiarticle
-- ----------------------------
INSERT INTO `qsbk_qiushiarticle` VALUES ('1', '长颈鹿..', 'https://www.qiushibaike.com/article/119488990', '\n\n现实就是如此\n\n', 'full/0fe4bce2f9420facbbb77fa1d20cc7b04c43cefc.jpg', '2017-08-31 09:38:33.157742');
INSERT INTO `qsbk_qiushiarticle` VALUES ('2', '猫爹地', 'https://www.qiushibaike.com/article/119485795', '\n\n过完七夕…\n\n', 'full/739926f9f3c383acae907bab206052f4be98a231.jpg', '2017-08-31 09:38:36.113907');
INSERT INTO `qsbk_qiushiarticle` VALUES ('3', '股市有风险些割肉', 'https://www.qiushibaike.com/article/119487440', '\n\n这就是你找不到男盆友的原因！\n\n', 'full/e3a9b70b5dd927a4c6af9df5a4ca114296cf259d.jpg', '2017-08-31 09:38:39.188047');
INSERT INTO `qsbk_qiushiarticle` VALUES ('4', '高傲、与生俱來', 'https://www.qiushibaike.com/article/119486568', '\n\n54321\n\n', 'full/0e1182f6734f3421c120bfa5a3bf8aca295999de.jpg', '2017-08-31 09:38:43.584962');
INSERT INTO `qsbk_qiushiarticle` VALUES ('5', '虞小流氓', 'https://www.qiushibaike.com/article/119389113', '\n\n莫名就想笑\n\n', 'full/a287fc028818a60cc93705cefcf7c02af2c86ac6.jpg', '2017-08-31 09:38:47.687916');
INSERT INTO `qsbk_qiushiarticle` VALUES ('6', '航xing', 'https://www.qiushibaike.com/article/119488792', '\n\n公交车上一老太特牛逼，上来就对一小孩说，小伙子qie，让额坐。呵呵，垃圾老人，下面是小孩（蓝白条纹）\n\n', 'full/1ab48c17eb8fc74c02a2590c0572d5dcd8fd8887.jpg', '2017-08-31 09:38:51.542946');
INSERT INTO `qsbk_qiushiarticle` VALUES ('7', 'wrong你陪我', 'https://www.qiushibaike.com/article/119486776', '\n\n腾讯吵上天了，大家怎么看\n\n', 'full/9fef448492a70b0ad83ebb24b44744df4a0d3501.jpg', '2017-08-31 09:38:54.863452');
INSERT INTO `qsbk_qiushiarticle` VALUES ('8', '违规用户名6', 'https://www.qiushibaike.com/article/119489667', '\n\n骨子里的人才\n\n', 'full/dad6dbf353adfeee361dfe5df78803f73fc0ee99.jpg', '2017-08-31 09:38:58.666953');
INSERT INTO `qsbk_qiushiarticle` VALUES ('9', 'big笨egg', 'https://www.qiushibaike.com/article/119487881', '\n\n这逼装的，啧啧啧\n\n', 'full/34a56b32882efad35a544651dc38ccda6e025c9b.jpg', '2017-08-31 09:39:01.804301');
INSERT INTO `qsbk_qiushiarticle` VALUES ('10', '匿名', 'https://www.qiushibaike.com/article/119391354', '\n\n我是个很会过日子的人', 'full/c0457da6a89dfe9570a4f51f721a3fa4715513b3.jpg', '2017-08-31 09:39:04.225007');
INSERT INTO `qsbk_qiushiarticle` VALUES ('11', '昵称会显示在评论中,', 'https://www.qiushibaike.com/article/119486284', '\n\n冬瓜的存在感好强\n\n', 'full/9b1a99b19a03131c552aca956b09a54d69027f6e.jpg', '2017-08-31 09:39:07.016395');
INSERT INTO `qsbk_qiushiarticle` VALUES ('12', '魑魅妹妹~', 'https://www.qiushibaike.com/article/119490234', '\n\n去幼儿园接女儿的路上遇到一个莫名其妙的人，本来是走我前面，后来回头看了我一下，就慢慢悠悠走到我身后了，我走他走，我停他停，我拿出手机凑过来瞧然后还冲我笑问我去干嘛，我收起来手机，还紧跟着我，我有点害怕就急忙跑了。', 'full/58abf5cc64eb3511b6b4292f64ce4b7088e22919.jpg', '2017-08-31 09:39:10.998844');
INSERT INTO `qsbk_qiushiarticle` VALUES ('13', '绦子', 'https://www.qiushibaike.com/article/119466271', '\n\n★无题胜有题！～\n\n', 'full/182d3e9d903bf1fc602a67c1779aa44d4b86d784.jpg', '2017-08-31 09:39:15.510911');
INSERT INTO `qsbk_qiushiarticle` VALUES ('14', '信仰的绝望', 'https://www.qiushibaike.com/article/119488059', '\n\n。。。。。\n\n', 'full/55fd5811c0596fa3a9814c82a461679475d6a851.jpg', '2017-08-31 09:39:19.810378');
INSERT INTO `qsbk_qiushiarticle` VALUES ('15', '，努力吧', 'https://www.qiushibaike.com/article/119391653', '\n\n正面也好看\n\n', 'full/7ad91aa53ab5833d46941a84b02799ace3c6279d.jpg', '2017-08-31 09:39:23.989990');
INSERT INTO `qsbk_qiushiarticle` VALUES ('16', '打着领带的清洁工', 'https://www.qiushibaike.com/article/119487285', '\n\n今年我想要买一辆13.99万思域，目前有9900元了，今年目标想方设法借到13万，哈哈\n\n', 'full/b639687d2b5e516d0f9b9e2730f8de4848fcdb37.jpg', '2017-08-31 09:39:28.328579');
INSERT INTO `qsbk_qiushiarticle` VALUES ('17', '流失的思念', 'https://www.qiushibaike.com/article/119472753', '\n\n女友跟一个开奥迪R8的好了，我和那个男的约定，这个周末飙车分胜负来决斗。为了挽回我的颜面！为了周末的比赛，我的五菱宏光换了新的冷却液，机油机滤，空气滤清器，火花塞，雨刷器，刹车线刹车油，方向盘套，车膜，助力转向液压油，加了97号汽油，我把我的尾灯也藏起来了，让他看不见我的尾灯，请问糗友们还有什么需要注意的吗？\n\n', 'full/b0443d5580093484d23e7b733c17622e47d85a03.jpg', '2017-08-31 09:39:32.390522');
INSERT INTO `qsbk_qiushiarticle` VALUES ('18', 'nanfeng未起', 'https://www.qiushibaike.com/article/119476184', '\n\n有人看出哪里不对吗\n\n', 'full/38f545a8cd38fe48a3490e7f580dec5c6eecee35.jpg', '2017-08-31 09:39:54.142150');

-- ----------------------------
-- Table structure for xadmin_bookmark
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_bookmark`;
CREATE TABLE `xadmin_bookmark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `url_name` varchar(64) NOT NULL,
  `query` varchar(1000) NOT NULL,
  `is_share` tinyint(1) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_bookma_content_type_id_60941679_fk_django_content_type_id` (`content_type_id`),
  KEY `xadmin_bookmark_user_id_42d307fc_fk_auth_user_id` (`user_id`),
  CONSTRAINT `xadmin_bookma_content_type_id_60941679_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `xadmin_bookmark_user_id_42d307fc_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xadmin_bookmark
-- ----------------------------

-- ----------------------------
-- Table structure for xadmin_log
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_log`;
CREATE TABLE `xadmin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `ip_addr` char(39) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` varchar(32) NOT NULL,
  `message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` (`content_type_id`),
  KEY `xadmin_log_user_id_bb16a176_fk_auth_user_id` (`user_id`),
  CONSTRAINT `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `xadmin_log_user_id_bb16a176_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xadmin_log
-- ----------------------------

-- ----------------------------
-- Table structure for xadmin_usersettings
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_usersettings`;
CREATE TABLE `xadmin_usersettings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(256) NOT NULL,
  `value` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_usersettings_user_id_edeabe4a_fk_auth_user_id` (`user_id`),
  CONSTRAINT `xadmin_usersettings_user_id_edeabe4a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xadmin_usersettings
-- ----------------------------
INSERT INTO `xadmin_usersettings` VALUES ('1', 'dashboard:home:pos', '', '1');

-- ----------------------------
-- Table structure for xadmin_userwidget
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_userwidget`;
CREATE TABLE `xadmin_userwidget` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` varchar(256) NOT NULL,
  `widget_type` varchar(50) NOT NULL,
  `value` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_userwidget_user_id_c159233a_fk_auth_user_id` (`user_id`),
  CONSTRAINT `xadmin_userwidget_user_id_c159233a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xadmin_userwidget
-- ----------------------------

-- ----------------------------
-- Table structure for zhilian_zhilianjob
-- ----------------------------
DROP TABLE IF EXISTS `zhilian_zhilianjob`;
CREATE TABLE `zhilian_zhilianjob` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `url` varchar(200) NOT NULL,
  `salary_max` int(11) NOT NULL,
  `salary_min` int(11) NOT NULL,
  `work_years` int(11) NOT NULL,
  `work_city` varchar(20) NOT NULL,
  `degree_need` varchar(20) NOT NULL,
  `job_type` varchar(50) DEFAULT NULL,
  `publish_time` varchar(20) DEFAULT NULL,
  `job_advantage` varchar(200) DEFAULT NULL,
  `job_desc` longtext NOT NULL,
  `job_addr` varchar(150) NOT NULL,
  `company_name` varchar(200) NOT NULL,
  `crawl_time` datetime(6) NOT NULL,
  `user_nums` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zhilian_zhilianjob
-- ----------------------------
INSERT INTO `zhilian_zhilianjob` VALUES ('1', 'python软件工程师助理/python程序员', 'http://jobs.zhaopin.com/470442935250864.htm?ff=03&sg=8e1ac8b1f035473bbef279d0222d3833&so=2&ss=201&ssidkey=y', '6000', '4001', '0', '苏州', '大专', '软件工程师', '15天前', '五险一金', '<div class=\"tab-inner-cont\">\r\n                        <!-- SWSStringCutStart -->\r\n                        <div style=\"font-size:12px;min-height:16px;\"><p>岗位职责：<br><br>1.负责智能搜索；<br></p><div style=\"MIN-HEIGHT: 16px; FONT-SIZE: 12px\"><p>2.Python相关的数据处理； </p><p>3、大专及以上学历，无经验可从实习生做起；</p><p>4、热爱软件行业，并希望进去软件行业；’</p><p>5、负责协助项目后续维护和产品升级；</p><p><span style=\"FONT-SIZE: 14px\"><br></span></p><p><span style=\"FONT-SIZE: 14px\">任职要求：</span></p><p><span style=\"FONT-SIZE: 14px\">1、大专或以上学历，相关理工科专业。</span></p><p><span style=\"FONT-SIZE: 14px\">2、对互联网有着浓厚的兴趣，富有团队精神并具创造力。<br></span></p><p><span style=\"FONT-SIZE: 14px\">3、有较强的沟通能力、严谨的逻辑思维以及数据敏感性。</span></p><p><span style=\"FONT-SIZE: 14px\">4、具备良好的时间管理、规划执行力。</span></p><p><br></p><p>公司福利：</p><p>1、外地员工可提供住宿，双休；</p><p>2、工作时间：早9-晚6 双休 法定假日休息，带薪年假</p><p>3、签订正式劳动合同，从试用期开始缴纳五险一金；</p></div><div style=\"MIN-HEIGHT: 16px; FONT-SIZE: 12px\"><div style=\"MIN-HEIGHT: 16px; FONT-SIZE: 12px\"><p><span style=\"FONT-SIZE: 14px\"><br></span></p><p><span style=\"FONT-SIZE: 14px\">工作地址：</span></p><p><span style=\"FONT-SIZE: 14px\">  苏州市姑苏区广济南路199号全景大厦B座3楼<br></span></p><p><span style=\"FONT-SIZE: 14px\">  \r\n苏州市吴中区吴中东路158号利通大厦13楼1A06</span></p></div></div></div>\r\n                        <!-- SWSStringCutEnd -->\r\n                        \r\n                        <b>工作地址：</b>\r\n                        <h2>\r\n                            苏州市\r\n                            \r\n                            <a href=\"javascript:fnOpenMiniMap(\'\',\'\',\'%E8%8B%8F%E5%B7%9E\',\'31.308689\',\'120.59949\');\" onclick=\"dyweTrackEvent(\'bjobsdetail14gb\', \'showjobmap\');\" class=\"see-map\">查看职位地图</a>\r\n                            \r\n                        </h2>\r\n                        \r\n                        \r\n                        <p>\r\n                            <button id=\"applyVacButton1\" class=\"button-small\" title=\"申请职位\" onclick=\"zlzp.searchjob.ajaxApplyBrig3(\'1\');dyweTrackEvent(\'bjobsdetail14gb\',\'directapply_middle\');\"></button>\r\n                        </p>\r\n                        \r\n                    </div>', '苏州市', '苏州学码思科技有限公司 ', '2017-08-31 21:50:43.000000', '1');
INSERT INTO `zhilian_zhilianjob` VALUES ('2', '软件开发工程师', 'http://jobs.zhaopin.com/447072618250032.htm', '10000', '6000', '1', '苏州', '大专', '软件工程师', null, '五险一金', '<div class=\"tab-inner-cont\">\r\n                        <!-- SWSStringCutStart -->\r\n                        <p><strong>岗位职责：</strong></p><p>1.从事web后台的程序架构及程序编码工作；<br>2.负责后台接口的设计与开发；<br>3.优化并改进web架构，使之能迅速适应产品运营的需求；<br>4.时刻关注用户的满意度和需求，对开发方法的不断改进提出自己的见解并持续优化。<br><br><strong>任职要求：</strong><br>1.精通.net开发，熟悉web分布式架构技术和性能优化，熟悉常用的相关开源技术模块；<br>2.精通SQL，熟悉配置、维护、性能优化；熟悉各种条件查询、复合查询等的编写能力；并有良好的数据设计能力；<br>3.熟悉Javascript、Ajax、jQuery 等相关Web前端技术；<br>4.具有责任心优秀的创新精神、团队合作精神和敬业精神，能适应较大的工作压力。<br>5.熟悉easyui，fineui等框架，具有两年以上开发经验。<br></p><p><strong>薪资福利：</strong></p><p>1.试用期1-3个月，薪资4000-5000+高额提成+奖金；</p><p>2.企业文化福利：免费带薪培训和销售技巧培训等；缴纳五险一金；法定节假日正常休息；</p><p>3.关怀性福利：包吃包住，加班有补助，有全勤奖；不定期聚会、假日旅游、生日party、带薪年假等。</p><p><br></p>\r\n                        <!-- SWSStringCutEnd -->\r\n                        \r\n                        <b>工作地址：</b>\r\n                        <h2>\r\n                            吴江经济技术开发区华东商业城\r\n                            \r\n                            <a href=\"javascript:fnOpenMiniMap(\'\',\'\',\'%E8%8B%8F%E5%B7%9E\',\'31.181169\',\'120.673884\');\" onclick=\"dyweTrackEvent(\'bjobsdetail14gb\', \'showjobmap\');\" class=\"see-map\">查看职位地图</a>\r\n                            \r\n                        </h2>\r\n                        \r\n                        \r\n                        <p>\r\n                            <button class=\"btn_disable_small\" title=\"申请职位\"></button>\r\n                        </p>\r\n                        \r\n                    </div>', '吴江经济技术开发区华东商业城', '苏州拓诚网络科技有限公司 ', '2017-08-31 21:50:47.000000', '1');
INSERT INTO `zhilian_zhilianjob` VALUES ('3', '计算机学徒（2016应届生专岗）', 'http://jobs.zhaopin.com/253786584255691.htm', '6000', '4001', '0', '苏州', '大专', '软件工程师', '15天前', '五险一金', '<div class=\"tab-inner-cont\">\r\n                        <!-- SWSStringCutStart -->\r\n                        <p><br></p><p>美国上市公司-达内苏州旗舰中心欢迎有志之士加入我们！</p><p>岗位职责: <br> 1、专科及以上学历（条件优秀学历可适当放宽），计算机等理工科类相关专业；<br> 2、有良好的学习能力，计算机基础，对计算机感兴趣，热爱计算机程序设计者优先； <br> 3、有无经验均可，面试通过可直接上岗；<br> 4、工作认真、细致、敬业，责任心强；<br> 5、应届毕业生优先，在职想转行的也可以，我们期待喜欢挑战自己的你加入！</p><p><br> 工作时间：<br> 周一到周五 早9：00-18：00，双休</p><p><br></p>\r\n                        <!-- SWSStringCutEnd -->\r\n                        \r\n                        <b>工作地址：</b>\r\n                        <h2>\r\n                            苏州市沧浪区东吴北路223号惠康商务大厦十层\r\n                            \r\n                        </h2>\r\n                        \r\n                        \r\n                        <p>\r\n                            <button id=\"applyVacButton1\" class=\"button-small\" title=\"申请职位\" onclick=\"zlzp.searchjob.ajaxApplyBrig3(\'1\');dyweTrackEvent(\'bjobsdetail14gb\',\'directapply_middle\');\"></button>\r\n                        </p>\r\n                        \r\n                    </div>', '苏州市沧浪区东吴北路223号惠康商务大厦十层', '苏州达内信息科技有限公司第一分公司 ', '2017-08-31 21:50:51.000000', '4');
INSERT INTO `zhilian_zhilianjob` VALUES ('4', '软件控制工程师', 'http://jobs.zhaopin.com/000596561251070.htm', '12000', '6000', '0', '苏州', '硕士', '软件工程师', '刚刚', '五险一金', '<div class=\"tab-inner-cont\">\r\n                        <!-- SWSStringCutStart -->\r\n                        <p>岗位职责：</p><p>1. 设备系统软件设计，功能开发；</p><p>2. 设备程序调试，参数测定，稳定性测试；</p><p>3. 协助同事分析解决设备运行中问题。</p><p>任职要求：<br></p><p>1. 硕士及以上学历，计算机、机电一体化相关专业；</p><p>2. 熟悉C++语音、C#编程语音，熟悉window平台下程序开发；</p><p>3. 了解计算机图形学，能熟悉或使用过至少一种视觉开发库；</p><p>4. 熟悉运动控制领域，对工业控制系统较熟悉，从事过电机控制开发，运动控制系统开发研究者优先考虑；</p><p>5. 有良好的团队沟通与协助能力。</p><p>6. 欢迎优秀应届生加入。</p><p><br></p>\r\n                        <!-- SWSStringCutEnd -->\r\n                        \r\n                        <b>工作地址：</b>\r\n                        <h2>\r\n                            苏州工业园区新昌路68号\r\n                            \r\n                            <a href=\"javascript:fnOpenMiniMap(\'\',\'\',\'%E8%8B%8F%E5%B7%9E\',\'31.324273\',\'120.756101\');\" onclick=\"dyweTrackEvent(\'bjobsdetail14gb\', \'showjobmap\');\" class=\"see-map\">查看职位地图</a>\r\n                            \r\n                        </h2>\r\n                        \r\n                        \r\n                        <p>\r\n                            <button id=\"applyVacButton1\" class=\"button-small\" title=\"申请职位\" onclick=\"zlzp.searchjob.ajaxApplyBrig3(\'1\');dyweTrackEvent(\'bjobsdetail14gb\',\'directapply_middle\');\"></button>\r\n                        </p>\r\n                        \r\n                    </div>', '苏州工业园区新昌路68号', '苏州苏大维格光电科技股份有限公司 ', '2017-08-31 21:50:54.000000', '1');
INSERT INTO `zhilian_zhilianjob` VALUES ('5', '初级JAVA实习+福利好', 'http://jobs.zhaopin.com/253786584254402.htm', '6000', '4001', '0', '苏州', '大专', '软件工程师', '15天前', '五险一金', '<div class=\"tab-inner-cont\">\r\n                        <!-- SWSStringCutStart -->\r\n                        <p>岗位条件：</p><p> </p><p>       1、年龄18-28周岁，超龄勿扰；</p><p> </p><p>       2、学历大专及以上，理工科专业毕业优先录用；</p><p> </p><p>       3、对互联网行业感兴趣（非销售、非保险岗位），接收零基础求职者，从零培养；</p><p> </p><p>       4、工作认真、细致、敬业，责任心强；</p><p> </p><p>       5、想获得一份有长远发展、稳定、有晋升空间的工作。</p><p> </p><p>       待遇：</p><p> </p><p>       1、基本薪资4000起，另有项目奖金和提成；</p><p> </p><p>       2、五险一金，双休、法定节假日，正常休息；</p><p> </p><p>       3、公司工作环境优雅、氛围好，同事关系融洽，生日派对、聚餐等活动丰富；</p><p> </p><p>       4、公司注重员工培养，给予晋升机会，管理层主要员工中培养、提拔；</p><p> </p><p>       注意：更多福利待遇面试过程可详细了解以公司最新政策为准，竭诚欢迎您加入！</p><p><br></p>\r\n                        <!-- SWSStringCutEnd -->\r\n                        \r\n                        <b>工作地址：</b>\r\n                        <h2>\r\n                            苏州市沧浪区东吴北路223号惠康商务大厦十层\r\n                            \r\n                        </h2>\r\n                        \r\n                        \r\n                        <p>\r\n                            <button id=\"applyVacButton1\" class=\"button-small\" title=\"申请职位\" onclick=\"zlzp.searchjob.ajaxApplyBrig3(\'1\');dyweTrackEvent(\'bjobsdetail14gb\',\'directapply_middle\');\"></button>\r\n                        </p>\r\n                        \r\n                    </div>', '苏州市沧浪区东吴北路223号惠康商务大厦十层', '苏州达内信息科技有限公司第一分公司 ', '2017-08-31 21:50:57.000000', '3');
INSERT INTO `zhilian_zhilianjob` VALUES ('6', 'C#软件开发工程师', 'http://jobs.zhaopin.com/253786584256001.htm', '6000', '4001', '0', '苏州', '大专', '软件工程师', '15天前', '五险一金', '<div class=\"tab-inner-cont\">\r\n                        <!-- SWSStringCutStart -->\r\n                        <p><br></p><p> </p><p>专业要求：计算机及相关专业</p><p>职位要求：</p><p>1、了解C#编程相关技术（如.NET Framework等相关技术）</p><p>2、熟悉关系数据库理论，有SQLServer、Oracle、MYSQL至少一种数据库的编程经验</p><p>3、具有良好的沟通、交流、需求理解能力，工作积极主动，责任心强，能承担一定的工作压力</p><p>4、具有强烈的团队合作精神及良好的职业道德</p><p>职位描述：</p><p>1、负责基于C#技术的C/S应用的实现</p><p>2、负责部分软件模块的设计、开发与单元测试</p><p>3、配合测试小组工作</p><p>4、负责编写与项目相关的技术性文档</p><p>苏州市有三家分公司，工作就近分配。符合条件者，请踊跃投递。</p><p><br></p>\r\n                        <!-- SWSStringCutEnd -->\r\n                        \r\n                        <b>工作地址：</b>\r\n                        <h2>\r\n                            苏州市沧浪区东吴北路223号惠康商务大厦十层\r\n                            \r\n                        </h2>\r\n                        \r\n                        \r\n                        <p>\r\n                            <button id=\"applyVacButton1\" class=\"button-small\" title=\"申请职位\" onclick=\"zlzp.searchjob.ajaxApplyBrig3(\'1\');dyweTrackEvent(\'bjobsdetail14gb\',\'directapply_middle\');\"></button>\r\n                        </p>\r\n                        \r\n                    </div>', '苏州市沧浪区东吴北路223号惠康商务大厦十层', '苏州达内信息科技有限公司第一分公司 ', '2017-08-31 21:51:01.000000', '4');
INSERT INTO `zhilian_zhilianjob` VALUES ('7', '软件运维工程师', 'http://jobs.zhaopin.com/621824322250263.htm', '15000', '8000', '3', '苏州', '大专', '软件工程师', '2017-08-28', '五险一金', '<div class=\"tab-inner-cont\">\r\n                        <!-- SWSStringCutStart -->\r\n                        <p></p><p>职位描述：</p><p><span style=\"line-height: 1.5;\">1、负责软件项目的梳理和分析；</span></p><p>2、负责软件项目升级、迁移的影响、可行性、风险的评估分析；<br>3、负责软件项目迁移技术路线、方案和实施详细步骤的撰写；<br>4、负责协调资源落实软件迁移演练及实施，监控迁移过程和迁移后的系统运行，收集问题并协调解决；<br>5、负责与项目各方人员的沟通，及时解决项目实施细节问题，推进项目实施进程；<br>6、负责项目实施风险管理，有效识别项目实施过程中的各类风险，制定规避措施并落实执行；</p><p>7. 负责项目公司运维项目的系统升级，扩容需求与资源落实，配合开发需求，测试、调整运维平台。</p><p>   </p><p></p><p></p><p>任职要求：</p><p><span style=\"line-height: 1.5;\">1、计算机相关专业，2年以上软件开发和维护经验；</span></p><p>2、精通Java，熟悉常用开发框架、运行框架、设计模式、开发流程等；<br>3、熟悉Linux系统的安装、配置、优化、维护等；</p><p>4、熟悉nginxtomcatredismemcached等主流中间件能灵活运用DevOps工具集；</p><p>5、有自动化运维的经验，熟悉linux，windows下面的脚本开发，或者Python开发；</p><p>6、精通高可用、高性能web服务、数据库服务及监控系统的搭建、维护及调优；</p><p>7、掌握虚拟化技术的实现及其应用原理；</p><p>8、精通MySQL管理、维护和性能调优；<br>9、理解IIS、Tomcat、weblogic、Tuxedo等各类型中间件原理，精通中间件安装、配置、升级、迁移、常见问题解决等；<br>10、精通SQL语法，精通SQL Server、Oracle等常用数据库的安装、配置、升级、迁移、备份恢复、日志分析等；<br>11、具有较强的技术文档整理、分析、撰写能力，够独立编写技术文档或规范；<br>12、工作细致、积极主动、有耐心、有责任心，善于沟通、协作；<br>13、具有较好的发现问题、分析问题、解决问题的能力。</p><p>   </p><p></p><p><br></p>\r\n                        <!-- SWSStringCutEnd -->\r\n                        \r\n                        <b>工作地址：</b>\r\n                        <h2>\r\n                            苏州南环东路10号（汽车南站正对面）新联大厦1栋11层\r\n                            \r\n                        </h2>\r\n                        \r\n                        \r\n                        <p>\r\n                            <button id=\"applyVacButton1\" class=\"button-small\" title=\"申请职位\" onclick=\"zlzp.searchjob.ajaxApplyBrig3(\'1\');dyweTrackEvent(\'bjobsdetail14gb\',\'directapply_middle\');\"></button>\r\n                        </p>\r\n                        \r\n                    </div>', '苏州南环东路10号（汽车南站正对面）新联大厦1栋11层', '苏州橘子网络科技有限公司 ', '2017-08-31 21:51:04.000000', '1');
INSERT INTO `zhilian_zhilianjob` VALUES ('8', '软件（助理）工程师', 'http://jobs.zhaopin.com/702463221250064.htm', '6000', '4001', '1', '苏州', '大专', '软件工程师', '刚刚', '五险一金', '<div class=\"tab-inner-cont\">\r\n                        <!-- SWSStringCutStart -->\r\n                        <p>职位要求：</p><p>1、.计算机相关专业大专以上学历，一年以上相关工作经验，有基于.net平台的开发经验，了解软件开发流程和规范；</p><p>2、掌握.net开发技术，熟悉C#/VB.net；</p><p>3、能够进行WinForm（C/S）或WebForm（B/S）开发；</p><p>4、熟悉MS SQL Server，精通SQL语言，熟悉数据库开发技术；</p><p>5、具备良好的沟通能力和服务心态。</p><p>6、应届毕业生也可考虑。</p><p> </p><p>岗位职责：</p><p>1. .NET项目、产品的开发及维护, 参与系统设计，负责代码编写；</p><p>2. 解决软件中出现的问题和对产品进行优化；</p><p>3. 负责编写详细设计等相关文档；</p><p>4. 使用VS 2005、VS2008 + SQL Server集成开发环境，开发B/S结构的Web应用程序或者C/S结构的 WinForm应用程序；</p><p>5. 为客户提供软件技术支持服务；</p><p><br></p>\r\n                        <!-- SWSStringCutEnd -->\r\n                        \r\n                        <b>工作地址：</b>\r\n                        <h2>\r\n                            苏州工业园区唯和路93号B幢\r\n                            \r\n                            <a href=\"javascript:fnOpenMiniMap(\'\',\'\',\'%E8%8B%8F%E5%B7%9E\',\'31.296309\',\'120.672382\');\" onclick=\"dyweTrackEvent(\'bjobsdetail14gb\', \'showjobmap\');\" class=\"see-map\">查看职位地图</a>\r\n                            \r\n                        </h2>\r\n                        \r\n                        \r\n                        <p>\r\n                            <button id=\"applyVacButton1\" class=\"button-small\" title=\"申请职位\" onclick=\"zlzp.searchjob.ajaxApplyBrig3(\'1\');dyweTrackEvent(\'bjobsdetail14gb\',\'directapply_middle\');\"></button>\r\n                        </p>\r\n                        \r\n                    </div>', '苏州工业园区唯和路93号B幢', '苏州易瑞得电子科技有限公司 ', '2017-08-31 21:51:07.000000', '1');
INSERT INTO `zhilian_zhilianjob` VALUES ('9', '软件工程师', 'http://jobs.zhaopin.com/702463221250065.htm', '8000', '6001', '3', '苏州', '大专', '软件工程师', '3小时前', '五险一金', '<div class=\"tab-inner-cont\">\r\n                        <!-- SWSStringCutStart -->\r\n                        <p>职位要求：</p><p>1、.计算机相关专业专科以上学历，三年以上相关工作经验，有基于.net平台的开发经验，了解软件开发流程和规范；</p><p>2、掌握.net开发技术，熟悉C#/VB.net；</p><p>3、能够进行WinForm（C/S）或WebForm（B/S）开发；</p><p>4、熟悉MS SQL Server，精通SQL语言，熟悉数据库开发技术；</p><p>5、具备良好的沟通能力和服务心态。</p><p> </p><p>岗位职责：</p><p>1. .NET项目、产品的开发及维护, 参与系统设计，负责代码编写；</p><p>2. 解决软件中出现的问题和对产品进行优化；</p><p>3. 负责编写详细设计等相关文档；</p><p>4. 使用VS 2005、VS2008 + SQL Server集成开发环境，开发B/S结构的Web应用程序或者C/S结构的 WinForm应用程序；</p><p>5. 为客户提供软件技术支持服务；</p><p><br></p>\r\n                        <!-- SWSStringCutEnd -->\r\n                        \r\n                        <b>工作地址：</b>\r\n                        <h2>\r\n                            苏州工业园区唯和路93号B幢\r\n                            \r\n                            <a href=\"javascript:fnOpenMiniMap(\'\',\'\',\'%E8%8B%8F%E5%B7%9E\',\'31.296309\',\'120.672382\');\" onclick=\"dyweTrackEvent(\'bjobsdetail14gb\', \'showjobmap\');\" class=\"see-map\">查看职位地图</a>\r\n                            \r\n                        </h2>\r\n                        \r\n                        \r\n                        <p>\r\n                            <button id=\"applyVacButton1\" class=\"button-small\" title=\"申请职位\" onclick=\"zlzp.searchjob.ajaxApplyBrig3(\'1\');dyweTrackEvent(\'bjobsdetail14gb\',\'directapply_middle\');\"></button>\r\n                        </p>\r\n                        \r\n                    </div>', '苏州工业园区唯和路93号B幢', '苏州易瑞得电子科技有限公司 ', '2017-08-31 21:51:10.000000', '1');
INSERT INTO `zhilian_zhilianjob` VALUES ('10', '软件测试工程师', 'http://jobs.zhaopin.com/545305129250157.htm', '6000', '4001', '0', '苏州', '不限', '软件工程师', '昨天', '五险一金', '<div class=\"tab-inner-cont\">\r\n                        <!-- SWSStringCutStart -->\r\n                        <div style=\"font-size:12px;min-height:16px;\"><span style=\"color: rgb(40, 40, 40); font-family: Arial, 宋体; font-size: 14px; line-height: 28px; -webkit-text-size-adjust: none; \">岗位要求： （应届生优先考虑）</span><br style=\"color: rgb(40, 40, 40); font-family: Arial, 宋体; font-size: 14px; line-height: 28px; -webkit-text-size-adjust: none; \"><span style=\"color: rgb(40, 40, 40); font-family: Arial, 宋体; font-size: 14px; line-height: 28px; -webkit-text-size-adjust: none; \">1.熟悉C++/java开发语言者优先。</span><br style=\"color: rgb(40, 40, 40); font-family: Arial, 宋体; font-size: 14px; line-height: 28px; -webkit-text-size-adjust: none; \"><span style=\"color: rgb(40, 40, 40); font-family: Arial, 宋体; font-size: 14px; line-height: 28px; -webkit-text-size-adjust: none; \">2、了解软件测试理论、测试方法和测试流程，能够应用多种测试工具；有Loadrunner和测试工具使用经验者优先；</span><br style=\"color: rgb(40, 40, 40); font-family: Arial, 宋体; font-size: 14px; line-height: 28px; -webkit-text-size-adjust: none; \"><span style=\"color: rgb(40, 40, 40); font-family: Arial, 宋体; font-size: 14px; line-height: 28px; -webkit-text-size-adjust: none; \">3、有企业管理软件应用者优先（ERP，CRM，SAP...）优先。</span><br style=\"color: rgb(40, 40, 40); font-family: Arial, 宋体; font-size: 14px; line-height: 28px; -webkit-text-size-adjust: none; \"><span style=\"color: rgb(40, 40, 40); font-family: Arial, 宋体; font-size: 14px; line-height: 28px; -webkit-text-size-adjust: none; \">4、有较强的逻辑分析能力和学习能力，具备较强的总结能力； </span><br style=\"color: rgb(40, 40, 40); font-family: Arial, 宋体; font-size: 14px; line-height: 28px; -webkit-text-size-adjust: none; \"><span style=\"color: rgb(40, 40, 40); font-family: Arial, 宋体; font-size: 14px; line-height: 28px; -webkit-text-size-adjust: none; \">5、拥有较好的沟通技巧及团队合作精神，较强的责任感及进取精神；</span></div>\r\n                        <!-- SWSStringCutEnd -->\r\n                        \r\n                        <b>工作地址：</b>\r\n                        <h2>\r\n                            江苏省苏州市烽火路80号东一楼\r\n                            \r\n                        </h2>\r\n                        \r\n                        \r\n                        <p>\r\n                            <button id=\"applyVacButton1\" class=\"button-small\" title=\"申请职位\" onclick=\"zlzp.searchjob.ajaxApplyBrig3(\'1\');dyweTrackEvent(\'bjobsdetail14gb\',\'directapply_middle\');\"></button>\r\n                        </p>\r\n                        \r\n                    </div>', '江苏省苏州市烽火路80号东一楼', '苏州市威思登软件科技开发有限公司', '2017-08-31 21:51:13.000000', '20');
INSERT INTO `zhilian_zhilianjob` VALUES ('11', 'JAVA开发工程师', 'http://jobs.zhaopin.com/336140631250015.htm', '8000', '6001', '3', '苏州', '大专', '软件工程师', '前天', '五险一金', '<div class=\"tab-inner-cont\">\r\n                        <!-- SWSStringCutStart -->\r\n                        <p>岗位职责：</p><p>1. 负责项目的设计，开发工作；</p><p>2. 负责项目相关开发文档的编写；</p><p> </p><p>任职要求：</p><p>1. 3年及以上相关软件开发经验；</p><p>2. 具有大型 WEB 应用系统的设计和开发经验；?</p><p>3. 精通Java语言，熟悉J2EE体系架构，熟练掌握Spring、Spring MVC、Hibernate、myBATIS 等技术和框架进行开发;</p><p>4. 熟悉SQL语言，了解MSSQL/MySQL数据库，熟悉存储过程开发</p><p>5. 熟悉HTML、CSS+DIV、Javascript、JQuery、Ajax、XML、WebService等技术；</p><p>6. 熟悉Weblogic、Jboss、Tomcat中任一种应用服务器的开发、部署和相关配置优化；<br></p><p> </p>\r\n                        <!-- SWSStringCutEnd -->\r\n                        \r\n                        <b>工作地址：</b>\r\n                        <h2>\r\n                            苏州工业园区腾飞创业园\r\n                            \r\n                            <a href=\"javascript:fnOpenMiniMap(\'\',\'\',\'%E8%8B%8F%E5%B7%9E\',\'31.254772\',\'120.732951\');\" onclick=\"dyweTrackEvent(\'bjobsdetail14gb\', \'showjobmap\');\" class=\"see-map\">查看职位地图</a>\r\n                            \r\n                        </h2>\r\n                        \r\n                        \r\n                        <p>\r\n                            <button id=\"applyVacButton1\" class=\"button-small\" title=\"申请职位\" onclick=\"zlzp.searchjob.ajaxApplyBrig3(\'1\');dyweTrackEvent(\'bjobsdetail14gb\',\'directapply_middle\');\"></button>\r\n                        </p>\r\n                        \r\n                    </div>', '苏州工业园区腾飞创业园', '苏州凯爱信息技术有限公司 ', '2017-08-31 21:51:17.000000', '2');
INSERT INTO `zhilian_zhilianjob` VALUES ('12', '微信小程序开发', 'http://jobs.zhaopin.com/400399332250007.htm', '8000', '6001', '5', '苏州', '大专', '软件工程师', '2017-08-20', '五险一金', '<div class=\"tab-inner-cont\">\r\n                        <!-- SWSStringCutStart -->\r\n                        <p><strong><span style=\"color: rgb(255, 0, 0);\">卡卡文化发展有限公司</span></strong>（以下简称为<strong><span style=\"color: rgb(255, 0, 0);\">卡卡</span></strong>）是一家专心致力于智能软件开发，互联网平台的搭建&amp;运营。包括商业广告的视频拍摄&amp;制作，电影电视的配乐创作和后期制作，电子游戏的配乐。诞生于新世代的卡卡，完美有效的结合了互联网+给这个时代带来的便利，紧密结合了平台的优势，颠覆了传统资源渠道的封闭性和区域性，成为成长最快，最具革命性的文化传媒公司。未来卡卡会一如既往的追求高密度创作，生产出高品质的声乐视听产品；AI将是卡卡自身进化的下一个阶段，随着AI的成熟和普及，未来人类的生活会彻底被改变，无论在生活还是工作领域，一切都会变得更加便利与快捷，卡卡的产品将会更加深入我们每个人的生活，为创造更优质的生活而不懈努力。</p><p>招聘邮箱：<a href=\"mailto:martin5122008@126.com\">martin5122008@126.com</a></p><p><br></p><p><strong><span style=\"color: rgb(255, 0, 0);\">岗位职责：</span></strong></p><p>1，负责微信小程序开发框架日常维护、新特性开发。</p><p>2，H5页面制作等。</p><p>3，负责微信接口设计、开发和维护。</p><p>4，负责微信公众平台所需要的接口数据管理，API数据接口开发工作。</p><p><br></p><p><strong><span style=\"color: rgb(255, 0, 0);\">任职要求：</span></strong></p><p>1，精通HTML5、CSS3、ES5、ES6和JavaScript，具备框架设计能力。</p><p>2，精通JavaScript，理解JavaScript运行机制能够编写高质量原生JavaScript代码。</p><p>3，精通 nodejs 开发，对前端MVVM框架有深刻理解，Vuejs, AngularJS, React。</p><p>4，熟练掌握前端构建工具如grunt、gulp、webpack，有较强的解决各类bug的能力。</p><p>5，对 web 安全有深入理解。</p><p>6，对 chrome remote debug 协议有深入了解者更佳。</p><p>7，对Native技术有涉足者更佳。<br> 8，熟练使用Ajax、JSONP与后端进行数据交互处理。</p><p>9，有微信小程序开发经验者优先。</p><p>10，了解PHP等任一种服务器端编程语言。</p><p><br></p><p><strong><span style=\"color: rgb(255, 0, 0);\">薪资福利：</span></strong></p><p>1，正式员工享受十三薪及年终奖。年底2-6月奖金，并每年两次调薪。</p><p>2，享有国家规定的法定假期、带薪年休假等福利待遇。</p><p>3，晋升管道畅通，一年有两次加薪晋升机会。</p><p>4，公司提供不定期体检，月度聚餐，节日旅游等活动。</p><p>5，五天工作制，早9点-晚18：00，周末双休。</p><p><br></p>\r\n                        <!-- SWSStringCutEnd -->\r\n                        \r\n                        <b>工作地址：</b>\r\n                        <h2>\r\n                            姑苏区三香路999号非矿大厦909室\r\n                            \r\n                        </h2>\r\n                        \r\n                        \r\n                        <p>\r\n                            <button id=\"applyVacButton1\" class=\"button-small\" title=\"申请职位\" onclick=\"zlzp.searchjob.ajaxApplyBrig3(\'1\');dyweTrackEvent(\'bjobsdetail14gb\',\'directapply_middle\');\"></button>\r\n                        </p>\r\n                        \r\n                    </div>', '姑苏区三香路999号非矿大厦909室', '卡卡发展 ', '2017-08-31 21:51:22.000000', '3');
INSERT INTO `zhilian_zhilianjob` VALUES ('13', '.NET开发工程师', 'http://jobs.zhaopin.com/169515511250040.htm', '8000', '4000', '1', '苏州', '大专', '软件工程师', '2017-08-25', '五险一金', '<div class=\"tab-inner-cont\">\r\n                        <!-- SWSStringCutStart -->\r\n                        <p>技能要求：<br>1、大专及以上学历，计算机相关专业，<br>2、一年以上实际开发经验，熟练运用ASP.NET、C#、WEBSERVICE等进行编程，熟练掌握.NET Framework，熟练使用Visual Studio.NET开发工具，</p><p>3、至少参与一个以上的项目开发经验，<br>4、具有良好的代码编写风格，熟悉Web程序代码安全，<br>5、熟悉SQL SERVER、oracle数据库开发及设计，了解数据库性能，<br>6、熟悉主流的.NET开发流程与框架，<br>7、具有较强的团队协作精神和责任心，具备优秀的学习能力，能面对高强度，新技术的挑战，<br></p>\r\n                        <!-- SWSStringCutEnd -->\r\n                        \r\n                        <b>工作地址：</b>\r\n                        <h2>\r\n                            苏州市十全街吏舍弄10号苏大科创园1号楼3F\r\n                            \r\n                        </h2>\r\n                        \r\n                        \r\n                        <p>\r\n                            <button id=\"applyVacButton1\" class=\"button-small\" title=\"申请职位\" onclick=\"zlzp.searchjob.ajaxApplyBrig3(\'1\');dyweTrackEvent(\'bjobsdetail14gb\',\'directapply_middle\');\"></button>\r\n                        </p>\r\n                        \r\n                    </div>', '苏州市十全街吏舍弄10号苏大科创园1号楼3F', '苏州赛科计算机信息系统有限公司 ', '2017-08-31 21:51:25.000000', '2');
INSERT INTO `zhilian_zhilianjob` VALUES ('14', 'JAVA软件开发#高薪就业#', 'http://jobs.zhaopin.com/253786584254500.htm', '6000', '4001', '0', '苏州', '大专', '软件工程师', '15天前', '五险一金', '<div class=\"tab-inner-cont\">\r\n                        <!-- SWSStringCutStart -->\r\n                        <p>岗位职责：</p><p>１：JAVA软件高级工程师，软件开发维护测试；</p><p>２：入职前有三到四个月岗前培训同时签订正式就业协议；</p><p>3：完成软件系统代码的实现，编写代码注释和开发文档；<br> 4：辅助进行系统的功能定义,程序设计；<br> 5：根据设计文档或需求说明完成代码编写，调试，测试和维护；<br> 6：分析并解决软件开发过程中的问题；<br> 7：协助测试工程师制定测试计划，定位发现的问题；</p><p>8：配合项目经理完成相关任务目标。</p><p>任职资格：</p><p>１、要求大专及以上学历（暂无毕业证书亦可）。</p><p>２、对专业没有定向要求，可从零基础开始实训。</p><p>３、有志于从事软件行业者优先。</p><p>４、应往届毕业生均可。<br> <br> </p><p>工作时间：上午  9：00～11：30　　</p><p>下午 13：00～18：00</p><p>周末双休，节假日休</p><p>待遇：</p><p>签订正式劳动合同、办理组织关系迁转、享受国家规定的保险福利待遇，入职第一个月专科生起薪高于3500元、本科生高于4000元 ，工作三个月转正后，薪酬会达到5000元的平均水平，第二年起薪高于6000元/月，平均年薪6-10万元甚至更高。</p><p><br></p>\r\n                        <!-- SWSStringCutEnd -->\r\n                        \r\n                        <b>工作地址：</b>\r\n                        <h2>\r\n                            苏州市工业园区崇文路199号创意产业园富华科技大厦5楼   \r\n                            \r\n                            <a href=\"javascript:fnOpenMiniMap(\'\',\'\',\'%E8%8B%8F%E5%B7%9E\',\'31.278093\',\'120.625644\');\" onclick=\"dyweTrackEvent(\'bjobsdetail14gb\', \'showjobmap\');\" class=\"see-map\">查看职位地图</a>\r\n                            \r\n                        </h2>\r\n                        \r\n                        \r\n                        <p>\r\n                            <button id=\"applyVacButton1\" class=\"button-small\" title=\"申请职位\" onclick=\"zlzp.searchjob.ajaxApplyBrig3(\'1\');dyweTrackEvent(\'bjobsdetail14gb\',\'directapply_middle\');\"></button>\r\n                        </p>\r\n                        \r\n                    </div>', '苏州市工业园区崇文路199号创意产业园富华科技大厦5楼', '苏州达内信息科技有限公司第一分公司 ', '2017-08-31 21:51:30.000000', '4');
INSERT INTO `zhilian_zhilianjob` VALUES ('15', '4千双休+计算机技术学徒', 'http://jobs.zhaopin.com/253786584254508.htm', '6000', '4001', '0', '苏州', '大专', '软件工程师', '15天前', '五险一金', '<div class=\"tab-inner-cont\">\r\n                        <!-- SWSStringCutStart -->\r\n                        <p>任职要求:<br> 1、大专及以上学历均可，对互联网感兴趣，想在IT行业深入发展；</p><p>2、想获得一份有长远发展、稳定、有晋升空间的工作，愿意不断学习，充实完善自己的技能和技术；</p><p>3、专业不限，有无工作经验均可（无工作经验者可提供岗前学习）；</p><p>4、年龄在18-30岁，无不良记录；男女不限，超龄者勿扰；<br> 5、应往届毕业生均可。</p><p>6、综合素质优秀的可以提供完善的培训体系和培养机制；</p><p> </p><p>待遇：<br> 1、工作时间:09：00~18:00，周六周日双休，法定节假日休息，带薪年假；<br> 2、享受国家规定的保险福利待遇，签订正式劳动合同，七险一金；<br> 3、薪资为基本工资+项目提成+各种补助，提供餐补，奖金等。</p><p>待遇：底薪+奖金=3000-5000</p><p>五险一金，双休。法定节假日休息。定期旅游。</p><p>上市公司，入职即可享受五险一金</p><p>工作时间：早9:00晚6:00，周末双休，按照国家法定假日休息</p><p>工资视具体能力而定，能够直接上手工资相对高；能够快速上手接受能力强工资相对高</p><p><br></p>\r\n                        <!-- SWSStringCutEnd -->\r\n                        \r\n                        <b>工作地址：</b>\r\n                        <h2>\r\n                            苏州市工业园区崇文路199号创意产业园富华科技大厦5楼\r\n                            \r\n                            <a href=\"javascript:fnOpenMiniMap(\'\',\'\',\'%E8%8B%8F%E5%B7%9E\',\'31.278093\',\'120.625644\');\" onclick=\"dyweTrackEvent(\'bjobsdetail14gb\', \'showjobmap\');\" class=\"see-map\">查看职位地图</a>\r\n                            \r\n                        </h2>\r\n                        \r\n                        \r\n                        <p>\r\n                            <button id=\"applyVacButton1\" class=\"button-small\" title=\"申请职位\" onclick=\"zlzp.searchjob.ajaxApplyBrig3(\'1\');dyweTrackEvent(\'bjobsdetail14gb\',\'directapply_middle\');\"></button>\r\n                        </p>\r\n                        \r\n                    </div>', '苏州市工业园区崇文路199号创意产业园富华科技大厦5楼', '苏州达内信息科技有限公司第一分公司 ', '2017-08-31 21:51:33.000000', '3');
INSERT INTO `zhilian_zhilianjob` VALUES ('16', 'IT软件技术学徒 喜欢Java 双休 带薪年假', 'http://jobs.zhaopin.com/253786584254389.htm', '6000', '4001', '0', '苏州', '大专', '软件工程师', '15天前', '五险一金', '<div class=\"tab-inner-cont\">\r\n                        <!-- SWSStringCutStart -->\r\n                        <p>岗位条件：</p><p> </p><p>         1、年龄18-28周岁，超龄勿扰；</p><p> </p><p>         2、学历大专及以上，理工科专业毕业优先录用；</p><p> </p><p>         3、对互联网行业感兴趣（非销售、非保险岗位），接收零基础求职者，从零培养；</p><p> </p><p>         4、工作认真、细致、敬业，责任心强；</p><p> </p><p>         5、想获得一份有长远发展、稳定、有晋升空间的工作。</p><p> </p><p>         待遇：</p><p> </p><p>         1、基本薪资4000起，另有项目奖金和提成；</p><p> </p><p>         2、五险一金，双休、法定节假日，正常休息；</p><p> </p><p>         3、公司工作环境优雅、氛围好，同事关系融洽，生日派对、聚餐等活动丰富；</p><p> </p><p>         4、公司注重员工培养，给予晋升机会，管理层主要员工中培养、提拔；</p><p> </p><p>         注意：更多福利待遇面试过程可详细了解以公司最新政策为准，竭诚欢迎您加入！</p><p> </p><p><br></p>\r\n                        <!-- SWSStringCutEnd -->\r\n                        \r\n                        <b>工作地址：</b>\r\n                        <h2>\r\n                            苏州市沧浪区东吴北路223号惠康商务大厦十层\r\n                            \r\n                            <a href=\"javascript:fnOpenMiniMap(\'\',\'\',\'%E8%8B%8F%E5%B7%9E\',\'31.278093\',\'120.625644\');\" onclick=\"dyweTrackEvent(\'bjobsdetail14gb\', \'showjobmap\');\" class=\"see-map\">查看职位地图</a>\r\n                            \r\n                        </h2>\r\n                        \r\n                        \r\n                        <p>\r\n                            <button id=\"applyVacButton1\" class=\"button-small\" title=\"申请职位\" onclick=\"zlzp.searchjob.ajaxApplyBrig3(\'1\');dyweTrackEvent(\'bjobsdetail14gb\',\'directapply_middle\');\"></button>\r\n                        </p>\r\n                        \r\n                    </div>', '苏州市沧浪区东吴北路223号惠康商务大厦十层', '苏州达内信息科技有限公司第一分公司 ', '2017-08-31 21:51:37.000000', '4');
INSERT INTO `zhilian_zhilianjob` VALUES ('17', '测试工程师可实习+转正5千包食宿', 'http://jobs.zhaopin.com/253786584253959.htm', '6000', '4001', '0', '苏州', '大专', '软件工程师', '15天前', '五险一金', '<div class=\"tab-inner-cont\">\r\n                        <!-- SWSStringCutStart -->\r\n                        <p>岗位条件：</p><p> </p><p>         1、年龄18-28周岁，超龄勿扰；</p><p> </p><p>         2、学历大专及以上，理工科专业毕业优先录用；</p><p> </p><p>         3、对互联网行业感兴趣（非销售、非保险岗位），接收零基础求职者，从零培养；</p><p> </p><p>         4、工作认真、细致、敬业，责任心强；</p><p> </p><p>         5、想获得一份有长远发展、稳定、有晋升空间的工作。</p><p> </p><p>         待遇：</p><p> </p><p>         1、基本薪资4000起，另有项目奖金和提成；</p><p> </p><p>         2、五险一金，双休、法定节假日，正常休息；</p><p> </p><p>         3、公司工作环境优雅、氛围好，同事关系融洽，生日派对、聚餐等活动丰富；</p><p> </p><p>         4、公司注重员工培养，给予晋升机会，管理层主要员工中培养、提拔；</p><p> </p><p>         注意：更多福利待遇面试过程可详细了解以公司最新政策为准，竭诚欢迎您加入！</p><p> </p><p> </p><p><br></p>\r\n                        <!-- SWSStringCutEnd -->\r\n                        \r\n                        <b>工作地址：</b>\r\n                        <h2>\r\n                            苏州市沧浪区东吴北路223号惠康商务大厦十层\r\n                            \r\n                            <a href=\"javascript:fnOpenMiniMap(\'\',\'\',\'%E8%8B%8F%E5%B7%9E\',\'31.278093\',\'120.625644\');\" onclick=\"dyweTrackEvent(\'bjobsdetail14gb\', \'showjobmap\');\" class=\"see-map\">查看职位地图</a>\r\n                            \r\n                        </h2>\r\n                        \r\n                        \r\n                        <p>\r\n                            <button id=\"applyVacButton1\" class=\"button-small\" title=\"申请职位\" onclick=\"zlzp.searchjob.ajaxApplyBrig3(\'1\');dyweTrackEvent(\'bjobsdetail14gb\',\'directapply_middle\');\"></button>\r\n                        </p>\r\n                        \r\n                    </div>', '苏州市沧浪区东吴北路223号惠康商务大厦十层', '苏州达内信息科技有限公司第一分公司 ', '2017-08-31 21:51:41.000000', '3');
INSERT INTO `zhilian_zhilianjob` VALUES ('18', '初级软件工程师简单编程+4K起', 'http://jobs.zhaopin.com/253786584253966.htm', '6000', '4001', '0', '苏州', '大专', '软件工程师', '15天前', '五险一金', '<div class=\"tab-inner-cont\">\r\n                        <!-- SWSStringCutStart -->\r\n                        <p>岗位条件：</p><p> </p><p>         1、年龄18-28周岁，超龄勿扰；</p><p> </p><p>         2、学历大专及以上，理工科专业毕业优先录用；</p><p> </p><p>         3、对互联网行业感兴趣（非销售、非保险岗位），接收零基础求职者，从零培养；</p><p> </p><p>         4、工作认真、细致、敬业，责任心强；</p><p> </p><p>         5、想获得一份有长远发展、稳定、有晋升空间的工作。</p><p> </p><p>         待遇：</p><p> </p><p>         1、基本薪资4000起，另有项目奖金和提成；</p><p> </p><p>         2、五险一金，双休、法定节假日，正常休息；</p><p> </p><p>         3、公司工作环境优雅、氛围好，同事关系融洽，生日派对、聚餐等活动丰富；</p><p> </p><p>         4、公司注重员工培养，给予晋升机会，管理层主要员工中培养、提拔；</p><p> </p><p>         注意：更多福利待遇面试过程可详细了解以公司最新政策为准，竭诚欢迎您加入！</p><p> </p><p><br></p>\r\n                        <!-- SWSStringCutEnd -->\r\n                        \r\n                        <b>工作地址：</b>\r\n                        <h2>\r\n                            苏州市沧浪区东吴北路223号惠康商务大厦十层\r\n                            \r\n                            <a href=\"javascript:fnOpenMiniMap(\'\',\'\',\'%E8%8B%8F%E5%B7%9E\',\'31.278093\',\'120.625644\');\" onclick=\"dyweTrackEvent(\'bjobsdetail14gb\', \'showjobmap\');\" class=\"see-map\">查看职位地图</a>\r\n                            \r\n                        </h2>\r\n                        \r\n                        \r\n                        <p>\r\n                            <button id=\"applyVacButton1\" class=\"button-small\" title=\"申请职位\" onclick=\"zlzp.searchjob.ajaxApplyBrig3(\'1\');dyweTrackEvent(\'bjobsdetail14gb\',\'directapply_middle\');\"></button>\r\n                        </p>\r\n                        \r\n                    </div>', '苏州市沧浪区东吴北路223号惠康商务大厦十层', '苏州达内信息科技有限公司第一分公司 ', '2017-08-31 21:51:45.000000', '3');
INSERT INTO `zhilian_zhilianjob` VALUES ('19', 'Java', 'http://jobs.zhaopin.com/145017275250652.htm', '10000', '5000', '1', '苏州', '大专', '软件工程师', '15天前', '', '<div class=\"tab-inner-cont\">\r\n                        <!-- SWSStringCutStart -->\r\n                        <p>岗位职责：开发三分之一，维护三分之二1、要求java技能，oracle数据库基本掌握2、了解ssh ssm 框架，并且在工作中实际使用过3、沟通表达能力较好；统招本科以上，2年以上工作经验</p><p> </p><p>任职要求：开发三分之一，维护三分之二1、要求java技能，oracle数据库基本掌握2、了解ssh ssm 框架，并且在工作中实际使用过3、沟通表达能力较好；统招本科以上，2年以上工作经验</p>\r\n                        <!-- SWSStringCutEnd -->\r\n                        \r\n                        <b>工作地址：</b>\r\n                        <h2>\r\n                            郑州市高新区长椿路玉兰街中国移动东门\r\n                            \r\n                        </h2>\r\n                        \r\n                        \r\n                        <p>\r\n                            <button id=\"applyVacButton1\" class=\"button-small\" title=\"申请职位\" onclick=\"zlzp.searchjob.ajaxApplyBrig3(\'1\');dyweTrackEvent(\'bjobsdetail14gb\',\'directapply_middle\');\"></button>\r\n                        </p>\r\n                        \r\n                    </div>', '郑州市高新区长椿路玉兰街中国移动东门', '上海易宝软件有限公司南京分公司 ', '2017-08-31 21:51:49.000000', '5');
INSERT INTO `zhilian_zhilianjob` VALUES ('20', 'php工程师', 'http://jobs.zhaopin.com/460912526250088.htm', '6000', '4001', '0', '苏州', '大专', '软件工程师', '2017-08-21', '', '<div class=\"tab-inner-cont\">\r\n                        <!-- SWSStringCutStart -->\r\n                        <p>岗位职责：</p><p>1、负责网站/web软件项目的程序开发制作；</p><p>2、与游戏策划配合，实现和改进相关游戏服务器端逻辑；</p><p>3、辅助开发GM管理工具和运营数据分析工具。</p><p><br></p><p>任职要求：</p><p>1、计算机相关专业优先，一年以上php开发经验；<br>2、精通PHP+MYSQL数据库的设计与开发；<br>3、熟悉HTML、DIV+CSS、XML、JavaScript、jQuery等相关技术；</p><p>4、熟悉常用的数据结构及算法；<br>5、对行业网站性能、安全、SEO优化、服务器维护等有一定的了解；<br>6、工作积极主动，有责任心，重视团队协作，具有良好的沟通、理解能力；<br>7、有良好的英语阅读及书写能力；</p><p>8、Dota/Dota2资深玩家优先；</p><p><br></p>\r\n                        <!-- SWSStringCutEnd -->\r\n                        \r\n                        <b>工作地址：</b>\r\n                        <h2>\r\n                            苏州高新区竹园路209号\r\n                            \r\n                        </h2>\r\n                        \r\n                        \r\n                        <p>\r\n                            <button id=\"applyVacButton1\" class=\"button-small\" title=\"申请职位\" onclick=\"zlzp.searchjob.ajaxApplyBrig3(\'1\');dyweTrackEvent(\'bjobsdetail14gb\',\'directapply_middle\');\"></button>\r\n                        </p>\r\n                        \r\n                    </div>', '苏州高新区竹园路209号', '苏州天魂网络科技股份有限公司 ', '2017-08-31 21:51:51.000000', '1');
INSERT INTO `zhilian_zhilianjob` VALUES ('21', '电气工程师', 'http://jobs.zhaopin.com/404291385250007.htm', '15000', '10001', '3', '苏州', '大专', '数控编程', '15天前', '五险一金', '<div class=\"tab-inner-cont\">\r\n                        <!-- SWSStringCutStart -->\r\n                        <blockquote type=\"cite\" style=\"white-space: normal; widows: auto; margin-top: 0px; margin-bottom: 0px; margin-left: 0.5em; font-family: simsun; font-size: 14px; line-height: 23px; background-color: rgb(255, 255, 255);\"><div id=\"contentDescription\" style=\"text-align: justify;\"><blockquote style=\"margin-top: 0px; margin-bottom: 0px; margin-left: 0.5em;\"><div class=\"FoxDiv20161111100426487852\"><div id=\"isForwardContent\"><div id=\"isForwardContent\"><div id=\"isForwardContent\"><blockquote style=\"margin-top: 0px; margin-bottom: 0px; margin-left: 0.5em;\"><div class=\"FoxDiv20161024135323072018\"><div id=\"isForwardContent\"><div style=\"widows: auto;\"><span style=\"line-height: 23.8px;\">苏州超群智能科技有限公司（PMC）志在成为全球前3位品牌的机械手及制能装备制造商，现在PMC机械手在技术上已经引领亚洲，日系的产品品质+国际一流的漂亮外形，公司提供超高性价比极具竞争力的产品及非常优厚灵活的销售政策，公司全日系精英团队是产品及服务的坚强厚盾.</span></div></div></div></blockquote></div></div></div></div></blockquote></div></blockquote><p>岗位职责：</p><p>1,   参与项目方案讨论，对涉及现场部分的工作提出意见与技术支持；<br>     2、负责前期方案的电气的支持和电气方案的制定；<br>     3、负责现场系统电气控制的设计、调试，指导电工进行电气组柜及系统的电气集成；<br>     4、负责现场机器人系统的安装集成、程序调试，优化节拍，使其能满足生产要求<br>     2、 5年以上工作经验；<br>     3、 熟练使用西门子、三菱、Omron等常用PLC，及触摸屏组态编程；<br>     4、熟练使用常用电气绘图软件（AutoCAD Electrical，Eplan）进行电气绘图；<br>     5、熟悉伺服、步进电机、变频器等相关驱动装置选型和使用控制；<br>     6、了解各类常见的工业总线（DeviceNet,CANopen,Modbus等）；<br>     7、对高级语言（VC,VB,C#等）编程具有一定了解，有项目经验者优先；<br>     8、对常用的机器人品牌，如ABB、Fanuc、KUKA、Motoman，有过项目集成经验者优先；<br>     9、对基础机械方面知识有一定了解；<br>     <br>         </p><p><br></p><p>任职要求：</p>\r\n                        <!-- SWSStringCutEnd -->\r\n                        \r\n                        <b>工作地址：</b>\r\n                        <h2>\r\n                            苏州市吴中区木渎宝带西路\r\n                            \r\n                        </h2>\r\n                        \r\n                        \r\n                        <p>\r\n                            <button id=\"applyVacButton1\" class=\"button-small\" title=\"申请职位\" onclick=\"zlzp.searchjob.ajaxApplyBrig3(\'1\');dyweTrackEvent(\'bjobsdetail14gb\',\'directapply_middle\');\"></button>\r\n                        </p>\r\n                        \r\n                    </div>', '苏州市吴中区木渎宝带西路', '苏州超群智能科技有限公司 ', '2017-08-31 21:51:55.000000', '3');
INSERT INTO `zhilian_zhilianjob` VALUES ('22', 'web前端/java/PHP/ios软件开发实习生', 'http://jobs.zhaopin.com/466382035254117.htm', '6000', '4001', '0', '苏州', '大专', '软件工程师', '2小时前', '五险一金', '<div class=\"tab-inner-cont\">\r\n                        <!-- SWSStringCutStart -->\r\n                        <div style=\"MIN-HEIGHT: 16px; FONT-SIZE: 12px\"><span style=\"font-size: 14px;\">任职要求：<br>1、大专及以上学历，理工类专业应届毕业生优先；<br>2、具有较强的逻辑思维能力，热爱IT行业；<br>3、有良好的学习能力和执行力，能够按照主管要求完成工作。<br><br>岗位职责：<br>1、对软件测试基础理论及测试流程有一定了解；<br>2、熟悉主流测试技术、测试工具、测试方法；<br>3、细心，耐心，并具有缜密的逻辑思维能力；<br>5、针对无经验者和应届毕业生，公司提供完善的员工培训。<br><br>福利待遇：<br>1、享受国家法定休假、生日补贴、过节礼物；<br>2、工作时间：9:00-18:00，每天7.5小时，周末双休；<br>3、薪资结构：基本工资+月度绩效奖金+餐补+供住<br>4、公司不定期免费对员工进行技能培训，提升自身的专业技能<br></span><p style=\"font-family: simsun; margin-top: 0px; margin-bottom: 0px; padding: 0px; font-stretch: normal; line-height: 25px; color: rgb(51, 51, 51); white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"font-size: 14px;\"><strong><span style=\"font-size: 14px; color: rgb(255, 0, 0);\">欢迎应届生投递,我们提供给你最大的发展平台！</span></strong><strong><span style=\"font-size: 14px; color: rgb(255, 0, 0);\"></span></strong></span></p><span style=\"font-size: 14px;\"><strong><span style=\"font-size: 16px; color: rgb(255, 0, 0);\">后期发展方向：<br>软件开发实习生/学徒、初级程序员、中级程序员、高级程序员、项目主管、项目经理，三年内平均年薪六万到十五万。 <br><br>直接来电咨询电话：18862521338 沈经理<br>在线QQ/微信咨询（人力资源部）： QQ 3198099204  微信18862521338<br><br>公司目前扩展中需求大，其他专业有意想转行的优秀人士公司可先培养再上岗，带薪学徒。欢迎广大应届毕业生投递！</span></strong></span><p><br></p><p>     公司目前招聘软件开发助理/实习生、java程序员、web前端工程师助理/实习生、html5开发、c语言程序员、c++开发、php开发助理、python、.net开发助理、助理工程师，游戏开发实习生等相关岗位，欢迎往应届毕业生投递简历！<br></p><p><span style=\"font-size: 14px;\"><br></span></p><p><span style=\"font-size: 14px;\">工作地址：</span></p><p><span style=\"font-size: 14px;\">  苏州市姑苏区广济南路199号全景大厦B座3楼<br></span></p><p><span style=\"font-size: 14px;\">  苏州市吴中区吴中东路158号利通大厦13楼1A06</span></p></div>\r\n                        <!-- SWSStringCutEnd -->\r\n                        \r\n                        <b>工作地址：</b>\r\n                        <h2>\r\n                            苏州市\r\n                            \r\n                            <a href=\"javascript:fnOpenMiniMap(\'\',\'\',\'%E8%8B%8F%E5%B7%9E\',\'31.309029\',\'120.599988\');\" onclick=\"dyweTrackEvent(\'bjobsdetail14gb\', \'showjobmap\');\" class=\"see-map\">查看职位地图</a>\r\n                            \r\n                        </h2>\r\n                        \r\n                        \r\n                        <p>\r\n                            <button id=\"applyVacButton1\" class=\"button-small\" title=\"申请职位\" onclick=\"zlzp.searchjob.ajaxApplyBrig3(\'1\');dyweTrackEvent(\'bjobsdetail14gb\',\'directapply_middle\');\"></button>\r\n                        </p>\r\n                        \r\n                    </div>', '苏州市', '苏州软世通信息技术有限公司 ', '2017-08-31 21:51:59.000000', '3');
INSERT INTO `zhilian_zhilianjob` VALUES ('23', '中级JAVA工程师', 'http://jobs.zhaopin.com/555216625250235.htm', '12000', '8000', '3', '苏州', '大专', '软件工程师', '2017-08-25', '五险一金', '<div class=\"tab-inner-cont\">\r\n                        <!-- SWSStringCutStart -->\r\n                        <p>职位诱惑：</p><p>扁平化管理,弹性工作,发展空间大</p><p><br></p><p>职位描述：</p><p>如果你是一个正直、阳光、谦虚、上进的人，请继续往下；</p><p><br></p><p>我们是一支年轻的创业团队，向往Google、Facebook这样的公司环境和氛围，我们也坚定且努力朝着这方向努力。</p><p>我们有很好的文化，公平、公开、自由、扁平。</p><p>在这里，你可以尽情的发挥自己的能力，你也可以选择你喜欢做的事情。</p><p>在这里，也许你一个月会涨几次薪，也许你一个月就会被淘汰，一切皆有可能，取决于你自己。</p><p>在这里，你可以用mac，你可以用linux，你可以用windows，你可以用多个显示屏，随你喜欢。</p><p>在这里，你有问题可以随时问，没人会不理你，除非你只是为了找问题搭讪美女。</p><p>在这里，你可以随时给公司提建议，只要你有更好的解决方案。</p><p><br></p><p>工作其实可以不那么枯燥，只是你没遇到合适的团队和公司。喜欢的请往下看；</p><p><br></p><p>OK，也许你觉得这里还不错，但是我们的要求也很高，请仔细阅读：</p><p>1. 精通Java编程，熟练掌握Spring、Struts2、jpa,mybatis等开发技术； 　　　</p><p>2. 熟悉HTML/JAVASCRIPT/CSS/jQuery 等页面技术； 　　　　　</p><p>3. 熟练使用Eclipse、Ant、Maven 等软件开发工具； 　　 　</p><p>4. 熟练掌握SQL语句，熟悉MySQL、Redis等数据库开发；　　</p><p>5. 良好的需求分析及软件设计能力；</p><p>6. 具有较强的逻辑思维能力、独立工作能力和良好团队精神；　　</p><p>7. 能很快适应新的环境，自学能力强</p>\r\n                        <!-- SWSStringCutEnd -->\r\n                        \r\n                        <b>工作地址：</b>\r\n                        <h2>\r\n                            苏州市工业园区星湖街创意产业园16-B502单元\r\n                            \r\n                        </h2>\r\n                        \r\n                        \r\n                        <p>\r\n                            <button id=\"applyVacButton1\" class=\"button-small\" title=\"申请职位\" onclick=\"zlzp.searchjob.ajaxApplyBrig3(\'1\');dyweTrackEvent(\'bjobsdetail14gb\',\'directapply_middle\');\"></button>\r\n                        </p>\r\n                        \r\n                    </div>', '苏州市工业园区星湖街创意产业园16-B502单元', '苏州融希信息科技有限公司 ', '2017-08-31 21:52:02.000000', '2');
INSERT INTO `zhilian_zhilianjob` VALUES ('24', '项目经理-苏州-00072', 'http://jobs.zhaopin.com/615984528250525.htm', '20000', '10000', '5', '苏州', '本科', '项目经理/项目主管', '15天前', '五险一金', '<div class=\"tab-inner-cont\">\r\n                        <!-- SWSStringCutStart -->\r\n                        <p>职位描述</p><p></p><p>岗位职责</p><p>负责领导项目团队完成银行资金交易系统技术实施服务。</p><p>岗位职责</p><p></p><p>任职要求</p><p>1. 金融IT行业5年以上项目管理从业经验；担任项目经理3年以上。最好有外汇交易系统管理经验，银行或者证券甲方背景出身***</p><p>2. 具有良好的项目控制能力和同时处理多项任务的能力。</p><p>3. 有核心系统或者资金业务系统项目实施经验优先</p><p>4. 有过C或者C++开发经验。或者Java开发经验</p><p>5. 善于沟通，组织协调能力强。</p><p>6 熟悉项目管理知识体系，有PMP证书或信息系统管理是证书优先。</p>\r\n                        <!-- SWSStringCutEnd -->\r\n                        \r\n                        <b>工作地址：</b>\r\n                        <h2>\r\n                            苏州工业园区星湖街328号创意产业园\r\n                            \r\n                            <a href=\"javascript:fnOpenMiniMap(\'\',\'\',\'%E8%8B%8F%E5%B7%9E\',\'31.265821\',\'120.736315\');\" onclick=\"dyweTrackEvent(\'bjobsdetail14gb\', \'showjobmap\');\" class=\"see-map\">查看职位地图</a>\r\n                            \r\n                        </h2>\r\n                        \r\n                        \r\n                        <p>\r\n                            <button id=\"applyVacButton1\" class=\"button-small\" title=\"申请职位\" onclick=\"zlzp.searchjob.ajaxApplyBrig3(\'1\');dyweTrackEvent(\'bjobsdetail14gb\',\'directapply_middle\');\"></button>\r\n                        </p>\r\n                        \r\n                    </div>', '苏州工业园区星湖街328号创意产业园', '凯美瑞德(苏州)信息科技股份有限公司 ', '2017-08-31 21:52:06.000000', '1');
INSERT INTO `zhilian_zhilianjob` VALUES ('25', 'c#.Net 程序员 软件工程师', 'http://jobs.zhaopin.com/630097229250088.htm', '4000', '2001', '0', '苏州', '大专', '软件工程师', '15天前', '五险一金', '<div class=\"tab-inner-cont\">\r\n                        <!-- SWSStringCutStart -->\r\n                        <div style=\"min-height: 16px;\"><p style=\"font-family: simsun; font-size: 14px; margin: 0px; padding: 0px; line-height: 25px; color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);\">岗位职责：</p><p style=\"font-family: simsun; font-size: 14px; margin: 0px; padding: 0px; line-height: 25px; color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);\">1、根据需求文档，进行软件编码工作；<br>2、按照公司软件开发管理规范编制相关的开发文档；<br>3、完成领导安排的其它工作。</p><p style=\"font-family: simsun; font-size: 14px; margin: 0px; padding: 0px; line-height: 25px; color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);\">任职要求：</p><p style=\"margin: 0px; padding: 0px; background-color: rgb(255, 255, 255);\"><span style=\"color:#333333;font-family:simsun\"><span style=\"font-size: 14px; line-height: 25px;\">1.大学专科以上学历，计算机及相关专业，有.net软件开发经验者优先；</span></span></p><p style=\"margin: 0px; padding: 0px; background-color: rgb(255, 255, 255);\"><span style=\"color:#333333;font-family:simsun\"><span style=\"font-size: 14px; line-height: 25px;\">2.具备一定的系统体系架构知识（BS、CS），能独立完成复杂软件模块组件的详细设计；</span></span></p><p style=\"margin: 0px; padding: 0px; background-color: rgb(255, 255, 255);\"><span style=\"color:#333333;font-family:simsun\"><span style=\"font-size: 14px; line-height: 25px;\">3.工作主动、积极，有责任心，逻辑思维能力强，有很强的分析问题和解决问题的能力，具备较强的自我学习能力和钻研创新精神；</span></span></p><p style=\"margin: 0px; padding: 0px; background-color: rgb(255, 255, 255);\"><span style=\"color:#333333;font-family:simsun\"><span style=\"font-size: 14px; line-height: 25px;\">4.熟悉.NET框架、C#开发语言，ASP.NET、MVC、jQuery开发技术；</span></span></p><p style=\"margin: 0px; padding: 0px; background-color: rgb(255, 255, 255);\"><span style=\"color:#333333;font-family:simsun\"><span style=\"font-size: 14px; line-height: 25px;\">5.熟悉SqlServer，数据库设计，SQL语句编写</span></span></p></div>\r\n                        <!-- SWSStringCutEnd -->\r\n                        \r\n                        <b>工作地址：</b>\r\n                        <h2>\r\n                            苏州工业园区星湖街218号\r\n                            \r\n                        </h2>\r\n                        \r\n                        \r\n                        <p>\r\n                            <button id=\"applyVacButton1\" class=\"button-small\" title=\"申请职位\" onclick=\"zlzp.searchjob.ajaxApplyBrig3(\'1\');dyweTrackEvent(\'bjobsdetail14gb\',\'directapply_middle\');\"></button>\r\n                        </p>\r\n                        \r\n                    </div>', '苏州工业园区星湖街218号', '苏州科晴信息科技有限公司 ', '2017-08-31 21:52:09.000000', '1');
INSERT INTO `zhilian_zhilianjob` VALUES ('26', '软件工程师', 'http://jobs.zhaopin.com/313583037250000.htm', '8000', '4000', '1', '苏州', '大专', '软件工程师', '15天前', '五险一金', '<div class=\"tab-inner-cont\">\r\n                        <!-- SWSStringCutStart -->\r\n                        <p>岗位职责：</p><p>1、根据软件详细设计编写代码实现<br>2、理解业务需求，根据业务需求编写楖要设计和详细设计<br>3、进行程序单元、功能的测试，查出软件存在的缺陷并保证其质量<br>4、编写功能帮助文档</p><p><br></p><p>任职要求：</p><p>1、半年以上.net（C#）开发经验，并具有良好代码风格<br>2、有实际项目开发经验者优先<br>3、熟悉SQLServer或Oracle数据库管理平台一种，熟练编写SQL语句，了解存储过程、触发器<br>4、具有制造行业管理系统或ERP、PDM系统开发经验者优先考虑<br>5、良好的团队协作和沟通能力，优秀的学习能力与创新能力，工作责任心强、积极乐观，有激情及较强的自我驱动能力，愿意接受挑战。</p>\r\n                        <!-- SWSStringCutEnd -->\r\n                        \r\n                        <b>工作地址：</b>\r\n                        <h2>\r\n                            苏州高新区泰山路2号博济科技创业园1号楼505\r\n                            \r\n                            <a href=\"javascript:fnOpenMiniMap(\'\',\'\',\'%E8%8B%8F%E5%B7%9E\',\'31.333833\',\'120.542373\');\" onclick=\"dyweTrackEvent(\'bjobsdetail14gb\', \'showjobmap\');\" class=\"see-map\">查看职位地图</a>\r\n                            \r\n                        </h2>\r\n                        \r\n                        \r\n                        <p>\r\n                            <button id=\"applyVacButton1\" class=\"button-small\" title=\"申请职位\" onclick=\"zlzp.searchjob.ajaxApplyBrig3(\'1\');dyweTrackEvent(\'bjobsdetail14gb\',\'directapply_middle\');\"></button>\r\n                        </p>\r\n                        \r\n                    </div>', '苏州高新区泰山路2号博济科技创业园1号楼505', '苏州格联威智能科技有限公司 ', '2017-08-31 21:52:12.000000', '1');
INSERT INTO `zhilian_zhilianjob` VALUES ('27', '软件测试工程师', 'http://jobs.zhaopin.com/361780218250406.htm', '8000', '6001', '1', '苏州', '大专', '软件测试', '2017-08-25', '', '<div class=\"tab-inner-cont\">\r\n                        <!-- SWSStringCutStart -->\r\n                        <p><span style=\"color: rgb(0, 0, 0);\">任职要求：</span></p><p><span style=\"font-family: 宋体, tahoma, arial, helvetica, sans-serif; line-height: 25px;\">1. 计算机相关专业本科以上学历，有1年软件测试工作经验；</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 25px; color: rgb(35, 35, 35); font-family: 宋体, tahoma, arial, helvetica, sans-serif; white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\">2. 熟悉软件测试流程，缺陷管理流程，能够提取测试需求，编写测试计划及用例，设计和执行测试和分析测试结果，并具有编制文档能力；</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 25px; color: rgb(35, 35, 35); font-family: 宋体, tahoma, arial, helvetica, sans-serif; white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\">3. 熟悉测试基本理论、包括黑盒、白盒、灰盒测试技术；熟悉功能测试和<span id=\"0_nwp\" style=\"color: rgb(0, 0, 0); width: auto; height: auto; float: none;\"><a id=\"0_nwl\" href=\"http://cpro.baidu.com/cpro/ui/uijs.php?adclass=0&amp;app_id=0&amp;c=news&amp;cf=1001&amp;ch=0&amp;di=128&amp;fv=19&amp;is_app=0&amp;jk=169549927aa40a1&amp;k=%D0%D4%C4%DC%B2%E2%CA%D4&amp;k0=%D0%D4%C4%DC%B2%E2%CA%D4&amp;kdi0=0&amp;luki=3&amp;n=10&amp;p=baidu&amp;q=39050088_cpr&amp;rb=0&amp;rs=1&amp;seller_id=1&amp;sid=a140aa2799546901&amp;ssp2=1&amp;stid=0&amp;t=tpclicked3_hc&amp;td=1832582&amp;tu=u1832582&amp;u=http%3A%2F%2Fsz%2Ecaihao%2Ecom%2Fjobd%2D15082783237816%2Ehtml&amp;urlid=0\" target=\"_blank\" mpid=\"0\" style=\"color: rgb(37, 91, 179); text-decoration: none;\"><span style=\"color: rgb(0, 0, 0); width: auto; height: auto;\">性能测试</span></a></span>方法，并能根据项目特点，<span style=\"width: auto; height: auto; float: none; color: rgb(0, 0, 0);\"><a id=\"1_nwl\" href=\"http://cpro.baidu.com/cpro/ui/uijs.php?adclass=0&amp;app_id=0&amp;c=news&amp;cf=1001&amp;ch=0&amp;di=128&amp;fv=19&amp;is_app=0&amp;jk=169549927aa40a1&amp;k=%C9%E8%BC%C6&amp;k0=%C9%E8%BC%C6&amp;kdi0=0&amp;luki=4&amp;n=10&amp;p=baidu&amp;q=39050088_cpr&amp;rb=0&amp;rs=1&amp;seller_id=1&amp;sid=a140aa2799546901&amp;ssp2=1&amp;stid=0&amp;t=tpclicked3_hc&amp;td=1832582&amp;tu=u1832582&amp;u=http%3A%2F%2Fsz%2Ecaihao%2Ecom%2Fjobd%2D15082783237816%2Ehtml&amp;urlid=0\" target=\"_blank\" mpid=\"1\" style=\"color: rgb(37, 91, 179); text-decoration: none;\"><span style=\"float: none; width: auto; height: auto;\">设计</span></a></span>测试策略和测试方案；掌握常用的软件<span style=\"width: auto; height: auto; float: none; color: rgb(0, 0, 0);\"><a id=\"2_nwl\" href=\"http://cpro.baidu.com/cpro/ui/uijs.php?adclass=0&amp;app_id=0&amp;c=news&amp;cf=1001&amp;ch=0&amp;di=128&amp;fv=19&amp;is_app=0&amp;jk=169549927aa40a1&amp;k=%B2%E2%CA%D4%B9%A4%BE%DF&amp;k0=%B2%E2%CA%D4%B9%A4%BE%DF&amp;kdi0=0&amp;luki=5&amp;n=10&amp;p=baidu&amp;q=39050088_cpr&amp;rb=0&amp;rs=1&amp;seller_id=1&amp;sid=a140aa2799546901&amp;ssp2=1&amp;stid=0&amp;t=tpclicked3_hc&amp;td=1832582&amp;tu=u1832582&amp;u=http%3A%2F%2Fsz%2Ecaihao%2Ecom%2Fjobd%2D15082783237816%2Ehtml&amp;urlid=0\" target=\"_blank\" mpid=\"2\" style=\"color: rgb(37, 91, 179); text-decoration: none;\"><span style=\"float: none; width: auto; height: auto;\">测试工具</span></a></span>，熟悉HP Mercury、Compuware等主流测试工具，熟悉嵌入式测试工具者优先；</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 25px; color: rgb(35, 35, 35); font-family: 宋体, tahoma, arial, helvetica, sans-serif; white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\">4. 有效强的沟通能力和学习能力，善于思考问题，逻辑思维能力强，具有很强的分析与判断问题的能力。能适应较大工作压力，具有较强的责任感及进取精神，踏实肯干，具备团队合作精神。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 25px; color: rgb(35, 35, 35); font-family: 宋体, tahoma, arial, helvetica, sans-serif; white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\">5. <span style=\"color: rgb(0, 0, 0); font-size: 14px; line-height: 21px;\">缴纳苏州园区社保（五险一金），其他福利待遇面谈。</span></span></p><p><br></p>\r\n                        <!-- SWSStringCutEnd -->\r\n                        \r\n                        <b>工作地址：</b>\r\n                        <h2>\r\n                            中国江苏省苏州市工业园区月亮湾路10号慧湖大厦A座12楼\r\n                            \r\n                            <a href=\"javascript:fnOpenMiniMap(\'\',\'\',\'%E8%8B%8F%E5%B7%9E\',\'31.262209\',\'120.724093\');\" onclick=\"dyweTrackEvent(\'bjobsdetail14gb\', \'showjobmap\');\" class=\"see-map\">查看职位地图</a>\r\n                            \r\n                        </h2>\r\n                        \r\n                        \r\n                        <p>\r\n                            <button id=\"applyVacButton1\" class=\"button-small\" title=\"申请职位\" onclick=\"zlzp.searchjob.ajaxApplyBrig3(\'1\');dyweTrackEvent(\'bjobsdetail14gb\',\'directapply_middle\');\"></button>\r\n                        </p>\r\n                        \r\n                    </div>', '中国江苏省苏州市工业园区月亮湾路10号慧湖大厦A座12楼', '苏州协创软件技术有限公司 ', '2017-08-31 21:52:17.000000', '1');
INSERT INTO `zhilian_zhilianjob` VALUES ('28', 'JAVA高级工程师', 'http://jobs.zhaopin.com/445690112250530.htm', '8000', '6001', '1', '苏州', '本科', '高级软件工程师', '2017-08-23', '五险一金', '<div class=\"tab-inner-cont\">\r\n                        <!-- SWSStringCutStart -->\r\n                        <p>岗位职责：<br>根据需求进行银行项目模块功能的设计，开发和实施，需求分析、系统设计、编码、单元测试。<br>素质要求：<br>1．计算机或相关专业毕业，本科及以上学历 ；<br>2．2年以上软件开发经验，了解银行相关业务；<br>3．精通JSP技术，精通熟悉J2EE技术架构，MVC模式，Servlet规范，Spring；<br>4．有Oracle/mysql/sqlserver/DB2等数据库相关经验；<br>5．有良好的职业道德和工作态度，工作认真、踏实，责任心和进取心强，有良好的客户交流沟通能力和需求理解能力，较强的协作精神和团队意识。<br>6．有银行系统开发经验者优先；</p>\r\n                        <!-- SWSStringCutEnd -->\r\n                        \r\n                        <b>工作地址：</b>\r\n                        <h2>\r\n                            苏州市金阊区阊胥路88号（工商银行）\r\n                            \r\n                        </h2>\r\n                        \r\n                        \r\n                        <p>\r\n                            <button id=\"applyVacButton1\" class=\"button-small\" title=\"申请职位\" onclick=\"zlzp.searchjob.ajaxApplyBrig3(\'1\');dyweTrackEvent(\'bjobsdetail14gb\',\'directapply_middle\');\"></button>\r\n                        </p>\r\n                        \r\n                    </div>', '苏州市金阊区阊胥路88号（工商银行）', '江苏谷科软件有限公司 ', '2017-08-31 21:52:21.000000', '1');
INSERT INTO `zhilian_zhilianjob` VALUES ('29', 'Python软件工程师', 'http://jobs.zhaopin.com/208634285250003.htm', '6000', '4001', '1', '苏州', '大专', '软件工程师', '今天', '', '<div class=\"tab-inner-cont\">\r\n                        <!-- SWSStringCutStart -->\r\n                        <p><span style=\"font-size: 12px;\">职位要求：</span></p><p><span style=\"font-size: 12px;\">1. 一年Python开发经验，熟悉 python 编程语言和标准库，熟悉后端开发的相关领域知识，有实际的web应用开发经历；</span></p><p><span style=\"font-size: 12px;\">2. 熟悉 mvc 架构，熟悉 django；</span></p><p><span style=\"font-size: 12px;\">3. 掌握 基本的html/css/javascript；</span></p><p><span style=\"font-size: 12px;\">4. 熟悉PostgreSQL，git 等开发工具；</span></p><p><span style=\"font-size: 12px;\">5. 熟悉 Linux 基本命令；</span></p><p><span style=\"font-size: 12px;\">6. 能无障碍阅读英文文档；</span></p><p><span style=\"font-size: 12px;\">7. 具备较好的学习能力和应变能力，良好的沟通和团队协作能力；</span></p><p><br></p><p><span style=\"font-size: 12px;\">职位职责：</span></p><p><span style=\"font-size: 12px;\">1. 能够理解需求，根据设计文档，进行软件开发及维护。</span></p><p><span style=\"font-size: 12px;\">2. 协助测试人员分析缺陷，并提供解决方案。</span></p><p><span style=\"font-size: 12px;\">3. 相关的产品文档评审。</span></p><p><br></p>\r\n                        <!-- SWSStringCutEnd -->\r\n                        \r\n                        <b>工作地址：</b>\r\n                        <h2>\r\n                            苏州工业园区 苏雅路158号北楼华盛广场901室 (近星汉街)\r\n                            \r\n                            <a href=\"javascript:fnOpenMiniMap(\'\',\'\',\'%E8%8B%8F%E5%B7%9E\',\'31.316881\',\'120.673527\');\" onclick=\"dyweTrackEvent(\'bjobsdetail14gb\', \'showjobmap\');\" class=\"see-map\">查看职位地图</a>\r\n                            \r\n                        </h2>\r\n                        \r\n                        \r\n                        <p>\r\n                            <button id=\"applyVacButton1\" class=\"button-small\" title=\"申请职位\" onclick=\"zlzp.searchjob.ajaxApplyBrig3(\'1\');dyweTrackEvent(\'bjobsdetail14gb\',\'directapply_middle\');\"></button>\r\n                        </p>\r\n                        \r\n                    </div>', '苏州工业园区 苏雅路158号北楼华盛广场901室 (近星汉街)', '苏州思佳达信息科技有限公司 ', '2017-08-31 21:52:23.000000', '1');
INSERT INTO `zhilian_zhilianjob` VALUES ('30', '.net开发工程师', 'http://jobs.zhaopin.com/450958713250456.htm', '8000', '6001', '1', '苏州', '大专', '高级软件工程师', '刚刚', '五险一金', '<div class=\"tab-inner-cont\">\r\n                        <!-- SWSStringCutStart -->\r\n                        <p>岗位职责：</p><p>1、根据开发进度和任务分配，完成相应模块软件的设计、开发、编程任务；</p><p>3、进行编制项目文档和质量记录的工作；</p><p>4、维护软件使之保持可用性和稳定性；</p><p>5、完成公司自有产品的日常维护，功能修改和新功能开发；</p><p>6、完成客户定制项目的开发任务。</p><p> </p><p>任职要求：</p><p>1、大专及以上学历，1-3年.net实际开发经验，精通C#语言；</p><p>2、精通C#、ASP.NET、MVC4.0程序开发；<br>3、精通SQL Server，Oracle数据库<br>4、熟悉HTML、XML、DIV/CSS、JavaScript、Jquery、bootstrap等Web技术，并且有 一定的浏览器兼容性开发经验；<br>5、熟悉Microsoft Visual Studio 2015，</p><p> </p>\r\n                        <!-- SWSStringCutEnd -->\r\n                        \r\n                        <b>工作地址：</b>\r\n                        <h2>\r\n                            苏州市工业园区通园路666号\r\n                            \r\n                            <a href=\"javascript:fnOpenMiniMap(\'\',\'\',\'%E8%8B%8F%E5%B7%9E\',\'31.274311\',\'120.667768\');\" onclick=\"dyweTrackEvent(\'bjobsdetail14gb\', \'showjobmap\');\" class=\"see-map\">查看职位地图</a>\r\n                            \r\n                        </h2>\r\n                        \r\n                        \r\n                        <p>\r\n                            <button id=\"applyVacButton1\" class=\"button-small\" title=\"申请职位\" onclick=\"zlzp.searchjob.ajaxApplyBrig3(\'1\');dyweTrackEvent(\'bjobsdetail14gb\',\'directapply_middle\');\"></button>\r\n                        </p>\r\n                        \r\n                    </div>', '苏州市工业园区通园路666号', '八爪鱼在线旅游发展有限公司 ', '2017-08-31 21:52:26.000000', '1');
INSERT INTO `zhilian_zhilianjob` VALUES ('31', '.Net软件工程师', 'http://jobs.zhaopin.com/133363981250916.htm', '8000', '6001', '1', '苏州', '本科', '软件工程师', '昨天', '五险一金', '<div class=\"tab-inner-cont\">\r\n                        <!-- SWSStringCutStart -->\r\n                        <p>工作职责和内容：</p><p>1. 根据项目需求，完成项目编程工作； </p><p>2. 负责开发文档编写工作； </p><p>3. 负责对分公司、办事处工程部门提供技术支持工作；</p><p>4. 负责对项目后期维护工作；</p><p><br></p><p>任职要求： </p><p>1. 计算机相关专业，本科及以上学历；</p><p>2. 2年及以上.net平台winform方面开发经验；</p><p>3. 熟悉C/S架构，熟练掌握C#开发语言，多线程、Socket通信等技术。</p><p>4. 熟悉SQL Server、Mysql、postgresql等数据库；</p><p>5. 善于沟通，有较强的责任感和团队精神，工作细致认真;</p><p>6. 具有较强的学习和解决问题能力；</p><p>7. 具有Windows开发、系统集成经验优先。</p><p><br></p>\r\n                        <!-- SWSStringCutEnd -->\r\n                        \r\n                        <b>工作地址：</b>\r\n                        <h2>\r\n                            苏州高新区竹园路209号创业园3号楼15层(公司总部)\r\n                            \r\n                            <a href=\"javascript:fnOpenMiniMap(\'\',\'\',\'%E8%8B%8F%E5%B7%9E\',\'31.276957\',\'120.539741\');\" onclick=\"dyweTrackEvent(\'bjobsdetail14gb\', \'showjobmap\');\" class=\"see-map\">查看职位地图</a>\r\n                            \r\n                        </h2>\r\n                        \r\n                        \r\n                        <p>\r\n                            <button id=\"applyVacButton1\" class=\"button-small\" title=\"申请职位\" onclick=\"zlzp.searchjob.ajaxApplyBrig3(\'1\');dyweTrackEvent(\'bjobsdetail14gb\',\'directapply_middle\');\"></button>\r\n                        </p>\r\n                        \r\n                    </div>', '苏州高新区竹园路209号创业园3号楼15层(公司总部)', '苏州沈苏自动化技术开发有限公司', '2017-08-31 21:52:30.000000', '2');
INSERT INTO `zhilian_zhilianjob` VALUES ('32', '上市公司IT实习生4k', 'http://jobs.zhaopin.com/253786584254466.htm', '6000', '4001', '0', '苏州', '大专', '软件工程师', '15天前', '五险一金', '<div class=\"tab-inner-cont\">\r\n                        <!-- SWSStringCutStart -->\r\n                        <p>岗位条件：</p><p> </p><p>         1、年龄18-28周岁，超龄勿扰；</p><p> </p><p>         2、学历大专及以上，理工科专业毕业优先录用；</p><p> </p><p>         3、对互联网行业感兴趣（非销售、非保险岗位），接收零基础求职者，从零培养；</p><p> </p><p>         4、工作认真、细致、敬业，责任心强；</p><p> </p><p>         5、想获得一份有长远发展、稳定、有晋升空间的工作。</p><p> </p><p>         待遇：</p><p> </p><p>         1、基本薪资4000起，另有项目奖金和提成；</p><p> </p><p>         2、五险一金，双休、法定节假日，正常休息；</p><p> </p><p>         3、公司工作环境优雅、氛围好，同事关系融洽，生日派对、聚餐等活动丰富；</p><p> </p><p>         4、公司注重员工培养，给予晋升机会，管理层主要员工中培养、提拔；</p><p> </p><p>         注意：更多福利待遇面试过程可详细了解以公司最新政策为准，竭诚欢迎您加入！</p><p> </p><p><br></p>\r\n                        <!-- SWSStringCutEnd -->\r\n                        \r\n                        <b>工作地址：</b>\r\n                        <h2>\r\n                            苏州市沧浪区东吴北路223号惠康商务大厦十层\r\n                            \r\n                            <a href=\"javascript:fnOpenMiniMap(\'\',\'\',\'%E8%8B%8F%E5%B7%9E\',\'31.278093\',\'120.625644\');\" onclick=\"dyweTrackEvent(\'bjobsdetail14gb\', \'showjobmap\');\" class=\"see-map\">查看职位地图</a>\r\n                            \r\n                        </h2>\r\n                        \r\n                        \r\n                        <p>\r\n                            <button id=\"applyVacButton1\" class=\"button-small\" title=\"申请职位\" onclick=\"zlzp.searchjob.ajaxApplyBrig3(\'1\');dyweTrackEvent(\'bjobsdetail14gb\',\'directapply_middle\');\"></button>\r\n                        </p>\r\n                        \r\n                    </div>', '苏州市沧浪区东吴北路223号惠康商务大厦十层', '苏州达内信息科技有限公司第一分公司 ', '2017-08-31 21:52:33.000000', '4');
INSERT INTO `zhilian_zhilianjob` VALUES ('33', '软件开发工程师', 'http://jobs.zhaopin.com/295881086250000.htm', '6000', '4000', '0', '苏州', '本科', '软件工程师', '昨天', '五险一金', '<div class=\"tab-inner-cont\">\r\n                        <!-- SWSStringCutStart -->\r\n                        <p>岗位职责：</p><p><span style=\"font-size: 14px;\"></span></p><p>  负责测控系统软件模块的设计、编码、调试、测试等工作，参与相关质量活动，确保设计、实现、测试工作按时保质完成。</p><p><br><span style=\"font-size: 14px;\"></span></p><p>任职要求：</p><p>1、精通C/C++编程语言和工具；</p><p>2、熟悉Orcal、SQL等数据库；</p><p>3、英语四级以上，能熟练阅读专业英文资料；</p><p>4、热爱技术工作，具有较强的学习与创新能力、分析执行能力、沟通能力；</p><p>5、为人正直，敬业爱岗，有团队意识，抗压能力强，能出差。</p><p>6、周末双休，及各种节假日福利。</p><p><br></p>\r\n                        <!-- SWSStringCutEnd -->\r\n                        \r\n                        <b>工作地址：</b>\r\n                        <h2>\r\n                            江苏省苏州市工业园区春辉路11号\r\n                            \r\n                            <a href=\"javascript:fnOpenMiniMap(\'\',\'\',\'%E8%8B%8F%E5%B7%9E\',\'39.93119\',\'116.34519\');\" onclick=\"dyweTrackEvent(\'bjobsdetail14gb\', \'showjobmap\');\" class=\"see-map\">查看职位地图</a>\r\n                            \r\n                        </h2>\r\n                        \r\n                        \r\n                        <p>\r\n                            <button id=\"applyVacButton1\" class=\"button-small\" title=\"申请职位\" onclick=\"zlzp.searchjob.ajaxApplyBrig3(\'1\');dyweTrackEvent(\'bjobsdetail14gb\',\'directapply_middle\');\"></button>\r\n                        </p>\r\n                        \r\n                    </div>', '江苏省苏州市工业园区春辉路11号', '苏州百林辉控测控技术有限公司 ', '2017-08-31 21:52:36.000000', '3');
INSERT INTO `zhilian_zhilianjob` VALUES ('34', '.net软件工程师', 'http://jobs.zhaopin.com/199321417250011.htm', '8000', '6001', '1', '苏州', '大专', '软件工程师', '15天前', '五险一金', '<div class=\"tab-inner-cont\">\r\n                        <!-- SWSStringCutStart -->\r\n                        <div style=\"font-size: 12px;\"><div style=\"padding-bottom: 30px;\">1.计算机相关专业大专以上学历；<br>2.有至少一年以上的.Net开发经验，完成过3个以上产品或项目开发者优先考虑；<br>3.熟悉.Net的架构和思想，能使用.Net独立完成分析设计和开发；<br>4.熟悉主流的数据库开发（SQL SERVER/ ORACLE等）；<br>5.有高度的团队合作精神，肯吃苦耐劳；<br>6.有良好的书面和口头表达能力。</div><div style=\"padding-bottom: 30px;\">7.java方向的勿扰</div></div>\r\n                        <!-- SWSStringCutEnd -->\r\n                        \r\n                        <b>工作地址：</b>\r\n                        <h2>\r\n                            苏州市干将西路1067号虹桥商务楼5楼\r\n                            \r\n                        </h2>\r\n                        \r\n                        \r\n                        <p>\r\n                            <button id=\"applyVacButton1\" class=\"button-small\" title=\"申请职位\" onclick=\"zlzp.searchjob.ajaxApplyBrig3(\'1\');dyweTrackEvent(\'bjobsdetail14gb\',\'directapply_middle\');\"></button>\r\n                        </p>\r\n                        \r\n                    </div>', '苏州市干将西路1067号虹桥商务楼5楼', '苏州元和信息科技有限责任公司 ', '2017-08-31 21:52:40.000000', '5');
