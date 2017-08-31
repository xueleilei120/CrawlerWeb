/*
Navicat MySQL Data Transfer

Source Server         : liuyc
Source Server Version : 50625
Source Host           : localhost:3306
Source Database       : crawlerweb

Target Server Type    : MYSQL
Target Server Version : 50625
File Encoding         : 65001

Date: 2017-08-31 10:45:36
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
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

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
INSERT INTO `django_session` VALUES ('i0e1285oqmldqqcsi25xt8k71huaasz2', 'MzFhYTRiOGJlNmZlOWI5MGNiNzg0MDQzZDY1ZWYyZWMwM2I3YjkyYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxN2I4N2U0ZGE4M2U5ZDg3ZTVjM2YzZmFlZTQ1MDNjOWQ0NTg2OWJjIiwiTElTVF9RVUVSWSI6W1sicXNiayIsInFpdXNoaWFydGljbGUiXSwiIl19', '2017-09-14 10:36:33.333660');

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
