/*
 Navicat Premium Data Transfer

 Source Server         : localhost_ROOT
 Source Server Type    : MySQL
 Source Server Version : 50721
 Source Host           : localhost:3306
 Source Schema         : pythontest

 Target Server Type    : MySQL
 Target Server Version : 50721
 File Encoding         : 65001

 Date: 08/05/2018 16:21:27
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id`, `permission_id`) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissions_ibfk_1` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_ibfk_2` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id`, `codename`) USING BTREE,
  CONSTRAINT `auth_permission_ibfk_1` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (5, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (8, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (9, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (10, 'Can add user', 4, 'add_user');
INSERT INTO `auth_permission` VALUES (11, 'Can change user', 4, 'change_user');
INSERT INTO `auth_permission` VALUES (12, 'Can delete user', 4, 'delete_user');
INSERT INTO `auth_permission` VALUES (13, 'Can add content type', 5, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (14, 'Can change content type', 5, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (15, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (16, 'Can add session', 6, 'add_session');
INSERT INTO `auth_permission` VALUES (17, 'Can change session', 6, 'change_session');
INSERT INTO `auth_permission` VALUES (18, 'Can delete session', 6, 'delete_session');
INSERT INTO `auth_permission` VALUES (19, 'Can add blog post', 7, 'add_blogpost');
INSERT INTO `auth_permission` VALUES (20, 'Can change blog post', 7, 'change_blogpost');
INSERT INTO `auth_permission` VALUES (21, 'Can delete blog post', 7, 'delete_blogpost');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `first_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `email` varchar(254) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
INSERT INTO `auth_user` VALUES (1, 'pbkdf2_sha256$100000$LHmVdk5p2GiB$J5aLphA+ED8G3+EdYkFhJjN0lsdx6lyojxGKiH6sFgM=', '2018-03-06 04:43:48.287114', 1, 'admin', '', '', 'zhang888@163.com', 1, 1, '2018-03-06 04:42:58.467264');

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_groups_user_id_group_id_94350c0c_uniq`(`user_id`, `group_id`) USING BTREE,
  INDEX `auth_user_groups_group_id_97559544_fk_auth_group_id`(`group_id`) USING BTREE,
  CONSTRAINT `auth_user_groups_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_groups_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq`(`user_id`, `permission_id`) USING BTREE,
  INDEX `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_user_user_permissions_ibfk_1` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_user_permissions_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for blog_blogpost
-- ----------------------------
DROP TABLE IF EXISTS `blog_blogpost`;
CREATE TABLE `blog_blogpost`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(150) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `body` longtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `timestamp` datetime(6) NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of blog_blogpost
-- ----------------------------
INSERT INTO `blog_blogpost` VALUES (1, 'python manage.py createsuperuser', '# python manage.py createsuperuser\r\nUsername (leave blank to use \'root\'): admin\r\nEmail address: admin@runoob.com\r\nPassword:\r\nPassword (again):\r\nSuperuser created successfully.\r\n[root@solar HelloWorld]#', '2018-03-06 04:44:00.000000');
INSERT INTO `blog_blogpost` VALUES (2, 'Django 提供了基于 web 的管理工具。', 'Django 自动管理工具是 django.contrib 的一部分。你可以在项目的 settings.py 中的 INSTALLED_APPS 看到它：', '2018-03-06 04:44:00.000000');
INSERT INTO `blog_blogpost` VALUES (3, '激活管理工具', '通常我们在生成项目时会在 urls.py 中自动设置好，我们只需去掉注释即可。\r\n\r\n配置项如下所示：', '2018-03-06 04:45:00.000000');
INSERT INTO `blog_blogpost` VALUES (4, 'Python下有许多款不同的 Web 框架。Django是重量级选手中最有', 'Python下有许多款不同的 Web 框架。Django是重量级选手中最有代表性的一位。许多成功的网站和APP都基于Django。\r\n\r\nDjango是一个开放源代码的Web应用框架，由Python写成。\r\n\r\nDjango遵守BSD版权，初次发布于2005年7月, 并于2008年9月发布了第一个正式版本1.0 。\r\n\r\nDjango采用了MVC的软件设计模式，即模型M，视图V和控制器C。', '2018-03-06 04:45:00.000000');
INSERT INTO `blog_blogpost` VALUES (5, 'dfasdasdfasd', 'dfasdfasdfai', '2018-03-07 02:28:40.024284');
INSERT INTO `blog_blogpost` VALUES (6, 'ddd', 'dddd', '2018-03-07 02:54:00.000000');
INSERT INTO `blog_blogpost` VALUES (7, 'dd', 'ddd', '2018-03-07 02:54:00.000000');
INSERT INTO `blog_blogpost` VALUES (8, 'fdfasd', 'fsadfasd', '2018-03-07 02:54:00.000000');
INSERT INTO `blog_blogpost` VALUES (9, 'fasdfas', 'dfasdfa', '2018-03-07 02:54:00.000000');
INSERT INTO `blog_blogpost` VALUES (10, 'gasfddasd', 'fsdfasdfsad', '2018-03-07 02:55:00.000000');
INSERT INTO `blog_blogpost` VALUES (11, 'gfdsg', 'dfsgdsfgds', '2018-03-07 02:55:00.000000');
INSERT INTO `blog_blogpost` VALUES (12, 'ghfgh', 'fghdfgh', '2018-03-07 02:55:00.000000');
INSERT INTO `blog_blogpost` VALUES (13, 'hfgh', 'dfghdfgh', '2018-03-07 02:55:00.000000');
INSERT INTO `blog_blogpost` VALUES (14, 'hjhg', 'jghjgh', '2018-03-07 02:55:00.000000');
INSERT INTO `blog_blogpost` VALUES (15, 'kjj', 'hkhjkhgj', '2018-03-07 02:55:00.000000');
INSERT INTO `blog_blogpost` VALUES (16, '111', '111', '2018-03-07 10:05:18.475019');
INSERT INTO `blog_blogpost` VALUES (17, '111', '111', '2018-03-07 10:13:04.100652');
INSERT INTO `blog_blogpost` VALUES (18, 'ddd', 'dddd', '2018-03-07 10:14:30.301582');
INSERT INTO `blog_blogpost` VALUES (19, '222', '2222', '2018-03-07 10:19:02.701162');
INSERT INTO `blog_blogpost` VALUES (20, 'www', 'wwww', '2018-03-07 10:19:06.955406');
INSERT INTO `blog_blogpost` VALUES (21, '222', '222', '2018-03-07 10:19:10.391602');
INSERT INTO `blog_blogpost` VALUES (22, 'sss', 'sss', '2018-03-07 10:23:25.133173');
INSERT INTO `blog_blogpost` VALUES (23, 'sss', 'sss', '2018-03-07 10:23:34.192691');
INSERT INTO `blog_blogpost` VALUES (24, '11', '11', '2018-03-07 10:27:42.892916');
INSERT INTO `blog_blogpost` VALUES (25, '11', '111', '2018-03-07 10:28:29.739595');
INSERT INTO `blog_blogpost` VALUES (26, '111', '111', '2018-03-07 10:28:33.521811');
INSERT INTO `blog_blogpost` VALUES (27, '11', '111', '2018-03-07 10:28:36.923006');
INSERT INTO `blog_blogpost` VALUES (28, '111', '111', '2018-03-07 18:44:03.393997');
INSERT INTO `blog_blogpost` VALUES (29, 'www', 'www', '2018-03-07 18:44:18.864882');
INSERT INTO `blog_blogpost` VALUES (30, 'zhang', 'qing', '2018-03-07 18:46:09.105187');
INSERT INTO `blog_blogpost` VALUES (31, 'fdasf', 'fasdfas', '2018-03-07 21:44:21.228742');
INSERT INTO `blog_blogpost` VALUES (32, 'ddd', 'ddd', '2018-03-07 23:36:26.289551');
INSERT INTO `blog_blogpost` VALUES (33, 'tt', 'tt', '2018-03-08 08:36:13.196816');

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NULL,
  `object_id` longtext CHARACTER SET utf8 COLLATE utf8_bin NULL,
  `object_repr` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `content_type_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk`(`user_id`) USING BTREE,
  CONSTRAINT `django_admin_log_ibfk_1` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
INSERT INTO `django_admin_log` VALUES (1, '2018-03-06 04:44:20.920980', '1', 'BlogPost object (1)', 1, '[{\"added\": {}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (2, '2018-03-06 04:44:45.580391', '2', 'BlogPost object (2)', 1, '[{\"added\": {}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (3, '2018-03-06 04:45:14.421040', '3', 'BlogPost object (3)', 1, '[{\"added\": {}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (4, '2018-03-06 04:45:47.332923', '4', 'BlogPost object (4)', 1, '[{\"added\": {}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (5, '2018-03-07 02:54:37.908925', '6', 'BlogPost object (6)', 1, '[{\"added\": {}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (6, '2018-03-07 02:54:45.318349', '7', 'BlogPost object (7)', 1, '[{\"added\": {}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (7, '2018-03-07 02:54:51.937728', '8', 'BlogPost object (8)', 1, '[{\"added\": {}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (8, '2018-03-07 02:54:58.078079', '9', 'BlogPost object (9)', 1, '[{\"added\": {}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (9, '2018-03-07 02:55:07.251603', '10', 'BlogPost object (10)', 1, '[{\"added\": {}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (10, '2018-03-07 02:55:23.234518', '11', 'BlogPost object (11)', 1, '[{\"added\": {}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (11, '2018-03-07 02:55:29.772892', '12', 'BlogPost object (12)', 1, '[{\"added\": {}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (12, '2018-03-07 02:55:41.543565', '13', 'BlogPost object (13)', 1, '[{\"added\": {}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (13, '2018-03-07 02:55:49.510020', '14', 'BlogPost object (14)', 1, '[{\"added\": {}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (14, '2018-03-07 02:55:56.672430', '15', 'BlogPost object (15)', 1, '[{\"added\": {}}]', 7, 1);

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `model` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label`, `model`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (4, 'auth', 'user');
INSERT INTO `django_content_type` VALUES (7, 'blog', 'blogpost');
INSERT INTO `django_content_type` VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (6, 'sessions', 'session');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `applied` datetime(6) NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2018-03-06 04:40:05.317360');
INSERT INTO `django_migrations` VALUES (2, 'auth', '0001_initial', '2018-03-06 04:40:20.782245');
INSERT INTO `django_migrations` VALUES (3, 'admin', '0001_initial', '2018-03-06 04:40:24.400452');
INSERT INTO `django_migrations` VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2018-03-06 04:40:24.523459');
INSERT INTO `django_migrations` VALUES (5, 'contenttypes', '0002_remove_content_type_name', '2018-03-06 04:40:27.619636');
INSERT INTO `django_migrations` VALUES (6, 'auth', '0002_alter_permission_name_max_length', '2018-03-06 04:40:29.140723');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0003_alter_user_email_max_length', '2018-03-06 04:40:30.632808');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0004_alter_user_username_opts', '2018-03-06 04:40:30.736814');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0005_alter_user_last_login_null', '2018-03-06 04:40:31.754873');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0006_require_contenttypes_0002', '2018-03-06 04:40:31.826877');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0007_alter_validators_add_error_messages', '2018-03-06 04:40:31.912882');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0008_alter_user_username_max_length', '2018-03-06 04:40:35.643095');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0009_alter_user_last_name_max_length', '2018-03-06 04:40:37.369194');
INSERT INTO `django_migrations` VALUES (14, 'blog', '0001_initial', '2018-03-06 04:40:38.614265');
INSERT INTO `django_migrations` VALUES (15, 'sessions', '0001_initial', '2018-03-06 04:40:40.291361');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `session_data` longtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `expire_date` datetime(6) NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('h9ev59j7poh03qhwy94l6sev4gtc5751', 'ZTAzNzJlODM2YzY5NzYwNDlkOWU1ZGIyOTAwZTc0ZjgzOWUyNzAzNTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1MjI5ZGUwOTFhNWM2ZmIzZDQ5YTYxZTU4YjU5N2Y3ZjlkNmVkNDJiIn0=', '2018-03-20 04:43:48.371118');

SET FOREIGN_KEY_CHECKS = 1;
