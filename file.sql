/*
 Navicat Premium Data Transfer

 Source Server         : aliyun
 Source Server Type    : MySQL
 Source Server Version : 50718
 Source Host           : 120.78.88.169:3306
 Source Schema         : file

 Target Server Type    : MySQL
 Target Server Version : 50718
 File Encoding         : 65001

 Date: 26/02/2020 12:39:03
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for authority
-- ----------------------------
DROP TABLE IF EXISTS `authority`;
CREATE TABLE `authority`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of authority
-- ----------------------------
INSERT INTO `authority` VALUES (1, '获取所有问题', 'getQuestions');
INSERT INTO `authority` VALUES (2, '更新用户问题状态', 'updateQuestion');
INSERT INTO `authority` VALUES (3, '获取所有用户', 'getAllUser');
INSERT INTO `authority` VALUES (4, '更新角色', 'changeRole');
INSERT INTO `authority` VALUES (5, '查找用户通过角色', 'getUsersByRole');
INSERT INTO `authority` VALUES (6, '用户注销', 'deleteUser');

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` varchar(2550) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `dynamic_id` bigint(20) NULL DEFAULT NULL,
  `uid` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for common_file
-- ----------------------------
DROP TABLE IF EXISTS `common_file`;
CREATE TABLE `common_file`  (
  `id` int(11) NOT NULL,
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `userId` bigint(20) NULL DEFAULT NULL,
  `filename` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_date` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for dynamic
-- ----------------------------
DROP TABLE IF EXISTS `dynamic`;
CREATE TABLE `dynamic`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `htmlContent` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `date` datetime(0) NULL DEFAULT NULL,
  `starCount` int(255) NULL DEFAULT NULL,
  `firstImage` varchar(10000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `visible` int(1) NULL DEFAULT NULL COMMENT '1：全部；2：好友',
  `uid` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for email
-- ----------------------------
DROP TABLE IF EXISTS `email`;
CREATE TABLE `email`  (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(10000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `htmlContent` varchar(10000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `date` datetime(0) NULL DEFAULT NULL,
  `year` int(1) NULL DEFAULT NULL,
  `uid` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for file
-- ----------------------------
DROP TABLE IF EXISTS `file`;
CREATE TABLE `file`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `md5` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `path` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `upload_time` datetime(3) NOT NULL,
  `url` varchar(2550) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `absolutePath` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '父全路径',
  `parentName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '父路径名',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of file
-- ----------------------------
INSERT INTO `file` VALUES (1, 'my', NULL, '/root/uploadFiles/my', '2020-02-25 18:31:59.000', 'http://120.78.88.169:8763/file/static/my', '/root/uploadFiles/', 'uploadFolder');
INSERT INTO `file` VALUES (2, 'pic', NULL, '/root/uploadFiles/pic', '2020-02-25 18:31:59.000', 'http://120.78.88.169:8763/file/static/pic', '/root/uploadFiles/', 'uploadFolder');
INSERT INTO `file` VALUES (3, 'doc', NULL, '/root/uploadFiles/doc', '2020-02-25 18:31:59.000', 'http://120.78.88.169:8763/file/static/doc', '/root/uploadFiles/', 'uploadFolder');
INSERT INTO `file` VALUES (4, 'vedio', NULL, '/root/uploadFiles/vedio', '2020-02-25 18:31:59.000', 'http://120.78.88.169:8763/file/static/vedio', '/root/uploadFiles/', 'uploadFolder');
INSERT INTO `file` VALUES (5, 'music', NULL, '/root/uploadFiles/music', '2020-02-25 18:31:59.000', 'http://120.78.88.169:8763/file/static/music', '/root/uploadFiles/', 'uploadFolder');
INSERT INTO `file` VALUES (6, 'wallhaven-724791.jpg', 'ffc6e513610bbfe8151e858a15ce1fcf', '/root/uploadFiles/my/wallhaven-724791.jpg', '2020-02-25 18:50:45.000', 'http://120.78.88.169:8763/file/static/my/wallhaven-724791.jpg', '/root/uploadFiles/my', 'my');
INSERT INTO `file` VALUES (8, '常见关系数据库.mp4', '343121759ddec26fbabdd654973637f0', '/root/uploadFiles/vedio/常见关系数据库.mp4', '2020-02-25 19:10:39.000', 'http://120.78.88.169:8763/file/static/vedio/常见关系数据库.mp4', '/root/uploadFiles/vedio', 'vedio');
INSERT INTO `file` VALUES (9, '楚乔传第67集-国语720P(1).flv', '0595debd238e6cf240851a9cf5afaa03', '/root/uploadFiles/vedio/楚乔传第67集-国语720P(1).flv', '2020-02-25 19:19:39.000', 'http://120.78.88.169:8763/file/static/vedio/楚乔传第67集-国语720P(1).flv', '/root/uploadFiles/vedio', 'vedio');
INSERT INTO `file` VALUES (12, 'wallhaven-697062.jpg', '71458c6f0cd66b8ddf76b226ac579f10', '/root/uploadFiles/my/wallhaven-697062.jpg', '2020-02-25 19:39:55.000', 'http://120.78.88.169:8763/file/static/my/wallhaven-697062.jpg', '/root/uploadFiles/my', 'my');
INSERT INTO `file` VALUES (13, 'wallhaven-634130.jpg', 'ca9241baa54c87c730186b487aad53c3', '/root/uploadFiles/pic/wallhaven-634130.jpg', '2020-02-25 19:49:27.000', 'http://120.78.88.169:8763/file/static/pic/wallhaven-634130.jpg', '/root/uploadFiles/pic', 'pic');
INSERT INTO `file` VALUES (14, '基于web开发技术微服务云盘管理系统的实现与设计.docx', '5e655b8e3b0afed896281b6e727aef43', '/root/uploadFiles/vedio/基于web开发技术微服务云盘管理系统的实现与设计.docx', '2020-02-25 19:55:51.000', 'http://120.78.88.169:8763/file/static/vedio/基于web开发技术微服务云盘管理系统的实现与设计.docx', '/root/uploadFiles/vedio', 'vedio');
INSERT INTO `file` VALUES (15, '20170801223450.MP3', '1b1cc969140618cda0180574633d8623', '/root/uploadFiles/vedio/20170801223450.MP3', '2020-02-25 20:18:05.000', 'http://120.78.88.169:8763/file/static/vedio/20170801223450.MP3', '/root/uploadFiles/vedio', 'vedio');
INSERT INTO `file` VALUES (16, '萧煌奇 - 过我的生活.mp3', '7dbe3a3300f87c9981ce13f015f0021c', '/root/uploadFiles/vedio/萧煌奇 - 过我的生活.mp3', '2020-02-25 20:20:22.000', 'http://120.78.88.169:8763/file/static/vedio/萧煌奇 - 过我的生活.mp3', '/root/uploadFiles/vedio', 'vedio');
INSERT INTO `file` VALUES (17, 'Jam - 不露声色.mp3', '5ceb01658cf827248e14f34760d648a7', '/root/uploadFiles/vedio/Jam - 不露声色.mp3', '2020-02-25 20:21:33.000', 'http://120.78.88.169:8763/file/static/vedio/Jam - 不露声色.mp3', '/root/uploadFiles/vedio', 'vedio');
INSERT INTO `file` VALUES (18, '夏小虎 - 自拔.mp3', 'd0b710d2b554ed3280531920ff593fe2', '/root/uploadFiles/music/夏小虎 - 自拔.mp3', '2020-02-25 20:35:48.000', 'http://120.78.88.169:8763/file/static/music/夏小虎 - 自拔.mp3', '/root/uploadFiles/music', 'music');
INSERT INTO `file` VALUES (19, '陈慧娴 - 千千阙歌.mp3', '572168be715eea0f20f3de42aaff7c8a', '/root/uploadFiles/music/陈慧娴 - 千千阙歌.mp3', '2020-02-25 20:43:24.000', 'http://120.78.88.169:8763/file/static/music/陈慧娴 - 千千阙歌.mp3', '/root/uploadFiles/music', 'music');
INSERT INTO `file` VALUES (21, '张学友 - 秋意浓.mp3', '36b76b64226d70a81d3b47e563c07d48', '/root/uploadFiles/my/张学友 - 秋意浓.mp3', '2020-02-25 21:21:13.000', 'http://120.78.88.169:8763/file/static/my/张学友 - 秋意浓.mp3', '/root/uploadFiles/my', 'my');
INSERT INTO `file` VALUES (22, '李宇春 - 1987我不知会遇见你.mp3', 'c6ec03f4483839eb43f0611e614d7020', '/root/uploadFiles/my/李宇春 - 1987我不知会遇见你.mp3', '2020-02-25 21:24:28.000', 'http://120.78.88.169:8763/file/static/my/李宇春 - 1987我不知会遇见你.mp3', '/root/uploadFiles/my', 'my');
INSERT INTO `file` VALUES (23, '毛不易 - 不染.mp3', '38c0511141a31b9fcab4e93868797bd7', '/root/uploadFiles/my/毛不易 - 不染.mp3', '2020-02-25 21:30:06.000', 'http://120.78.88.169:8763/file/static/my/毛不易 - 不染.mp3', '/root/uploadFiles/my', 'my');
INSERT INTO `file` VALUES (24, '刘莱斯 - 浮生.mp3', 'b487995d2e151ca79ec34ec3df689df6', '/root/uploadFiles/my/刘莱斯 - 浮生.mp3', '2020-02-25 21:34:59.000', 'http://120.78.88.169:8763/file/static/my/刘莱斯 - 浮生.mp3', '/root/uploadFiles/my', 'my');
INSERT INTO `file` VALUES (25, 'G.E.M.邓紫棋 - 泡沫.mp3', 'c596661a6a1afb5b85c50ecfcb898232', '/root/uploadFiles/my/G.E.M.邓紫棋 - 泡沫.mp3', '2020-02-25 21:43:35.000', 'http://120.78.88.169:8763/file/static/my/G.E.M.邓紫棋 - 泡沫.mp3', '/root/uploadFiles/my', 'my');

-- ----------------------------
-- Table structure for file_user
-- ----------------------------
DROP TABLE IF EXISTS `file_user`;
CREATE TABLE `file_user`  (
  `uid` bigint(20) NOT NULL,
  `fid` bigint(20) NOT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `parentId` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`uid`, `fid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of file_user
-- ----------------------------
INSERT INTO `file_user` VALUES (1, 1, '2020-02-25 18:48:11', 'my', '#1');
INSERT INTO `file_user` VALUES (1, 2, '2020-02-25 18:48:11', 'pic', '#1');
INSERT INTO `file_user` VALUES (1, 3, '2020-02-25 18:48:11', 'doc', '#1');
INSERT INTO `file_user` VALUES (1, 4, '2020-02-25 18:48:11', 'vedio', '#1');
INSERT INTO `file_user` VALUES (1, 5, '2020-02-25 18:48:11', 'music', '#1');
INSERT INTO `file_user` VALUES (1, 6, '2020-02-25 18:50:45', 'wallhaven-724791.jpg', '1');
INSERT INTO `file_user` VALUES (1, 8, '2020-02-25 19:10:39', '常见关系数据库.mp4', '4');
INSERT INTO `file_user` VALUES (1, 9, '2020-02-25 19:19:39', '楚乔传第67集-国语720P(1).flv', '4');
INSERT INTO `file_user` VALUES (1, 12, '2020-02-25 19:39:55', 'wallhaven-697062.jpg', '1');
INSERT INTO `file_user` VALUES (1, 13, '2020-02-25 19:49:27', 'wallhaven-634130.jpg', '2');
INSERT INTO `file_user` VALUES (1, 14, '2020-02-25 19:55:51', '基于web开发技术微服务云盘管理系统的实现与设计.docx', '4');
INSERT INTO `file_user` VALUES (1, 15, '2020-02-25 20:18:05', '20170801223450.MP3', '4');
INSERT INTO `file_user` VALUES (1, 16, '2020-02-25 20:20:22', '萧煌奇 - 过我的生活.mp3', '4');
INSERT INTO `file_user` VALUES (1, 17, '2020-02-25 20:21:33', 'Jam - 不露声色.mp3', '4');
INSERT INTO `file_user` VALUES (1, 18, '2020-02-25 20:35:48', '夏小虎 - 自拔.mp3', '5');
INSERT INTO `file_user` VALUES (1, 19, '2020-02-25 20:43:24', '陈慧娴 - 千千阙歌.mp3', '5');
INSERT INTO `file_user` VALUES (1, 21, '2020-02-25 21:21:13', '张学友 - 秋意浓.mp3', '1');
INSERT INTO `file_user` VALUES (1, 22, '2020-02-25 21:24:29', '李宇春 - 1987我不知会遇见你.mp3', '1');
INSERT INTO `file_user` VALUES (1, 23, '2020-02-25 21:30:06', '毛不易 - 不染.mp3', '1');
INSERT INTO `file_user` VALUES (1, 24, '2020-02-25 21:34:59', '刘莱斯 - 浮生.mp3', '1');
INSERT INTO `file_user` VALUES (1, 25, '2020-02-25 21:43:35', 'G.E.M.邓紫棋 - 泡沫.mp3', '1');
INSERT INTO `file_user` VALUES (2, 1, '2020-02-26 00:15:16', 'my', '#2');
INSERT INTO `file_user` VALUES (2, 2, '2020-02-26 00:15:16', 'pic', '#2');
INSERT INTO `file_user` VALUES (2, 3, '2020-02-26 00:15:16', 'doc', '#2');
INSERT INTO `file_user` VALUES (2, 4, '2020-02-26 00:15:16', 'vedio', '#2');
INSERT INTO `file_user` VALUES (2, 5, '2020-02-26 00:15:16', 'music', '#2');

-- ----------------------------
-- Table structure for friends
-- ----------------------------
DROP TABLE IF EXISTS `friends`;
CREATE TABLE `friends`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `friendId` int(11) NOT NULL,
  `date` datetime(0) NOT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `userId` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for hibernate_sequence
-- ----------------------------
DROP TABLE IF EXISTS `hibernate_sequence`;
CREATE TABLE `hibernate_sequence`  (
  `next_val` bigint(20) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hibernate_sequence
-- ----------------------------
INSERT INTO `hibernate_sequence` VALUES (1);
INSERT INTO `hibernate_sequence` VALUES (1);
INSERT INTO `hibernate_sequence` VALUES (1);
INSERT INTO `hibernate_sequence` VALUES (1);
INSERT INTO `hibernate_sequence` VALUES (1);
INSERT INTO `hibernate_sequence` VALUES (1);

-- ----------------------------
-- Table structure for login_history
-- ----------------------------
DROP TABLE IF EXISTS `login_history`;
CREATE TABLE `login_history`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `browser` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `device` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `way` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `uid` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK55itppkw3i07do`(`uid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of login_history
-- ----------------------------
INSERT INTO `login_history` VALUES (1, '2020年02月25日 10:48:17', 'Chrome', 'PC端', '密码登入', 1);
INSERT INTO `login_history` VALUES (2, '2020年02月25日 11:28:09', 'Chrome', 'PC端', '密码登入', 1);
INSERT INTO `login_history` VALUES (3, '2020年02月25日 11:55:22', 'Chrome', 'PC端', '密码登入', 1);
INSERT INTO `login_history` VALUES (4, '2020年02月25日 16:15:25', 'Chrome', 'PC端', '密码登入', 2);

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `to` int(11) NOT NULL,
  `from` int(11) NOT NULL,
  `message` varchar(11000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `date` datetime(0) NOT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `flag` int(11) NULL DEFAULT NULL COMMENT '0:文件；1：消息;2:好友请求；3：请求同意；4：请求拒绝',
  `isRead` int(11) NULL DEFAULT NULL COMMENT '0:已读；1：未读',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for note
-- ----------------------------
DROP TABLE IF EXISTS `note`;
CREATE TABLE `note`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(10000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `htmlContent` varchar(10000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `date` date NULL DEFAULT NULL,
  `uid` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for question
-- ----------------------------
DROP TABLE IF EXISTS `question`;
CREATE TABLE `question`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` varchar(2550) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `date` datetime(0) NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `fromEmail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `flag` int(255) NULL DEFAULT NULL COMMENT '1:未解决；2：已解决',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` tinyblob NOT NULL,
  `update_time` tinyblob NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (1, 0xACED00057372000D6A6176612E74696D652E536572955D84BA1B2248B20C00007870770D02000000005D886A071C8CF5C078, 0xACED00057372000D6A6176612E74696D652E536572955D84BA1B2248B20C00007870770D02000000005D886A071C8CF5C078, '管理员', 'ROLE_ADMIN');
INSERT INTO `role` VALUES (2, 0xACED00057372000D6A6176612E74696D652E536572955D84BA1B2248B20C00007870770D02000000005D886A0726165DC078, 0xACED00057372000D6A6176612E74696D652E536572955D84BA1B2248B20C00007870770D02000000005D886A0726165DC078, '普通用户', 'ROLE_USER');

-- ----------------------------
-- Table structure for role_authorities
-- ----------------------------
DROP TABLE IF EXISTS `role_authorities`;
CREATE TABLE `role_authorities`  (
  `role_id` bigint(20) NOT NULL,
  `authorities_id` bigint(20) NOT NULL,
  PRIMARY KEY (`role_id`, `authorities_id`) USING BTREE,
  INDEX `FK4cy1svku5asbuvksc7ap47iyi`(`authorities_id`) USING BTREE,
  CONSTRAINT `FK4cy1svku5asbuvksc7ap47iyi` FOREIGN KEY (`authorities_id`) REFERENCES `authority` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK8dv2uo3imjpm4dmk7pge9v2vo` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role_authorities
-- ----------------------------
INSERT INTO `role_authorities` VALUES (1, 1);
INSERT INTO `role_authorities` VALUES (2, 1);
INSERT INTO `role_authorities` VALUES (1, 2);
INSERT INTO `role_authorities` VALUES (2, 2);
INSERT INTO `role_authorities` VALUES (1, 3);
INSERT INTO `role_authorities` VALUES (2, 3);
INSERT INTO `role_authorities` VALUES (1, 4);
INSERT INTO `role_authorities` VALUES (2, 4);
INSERT INTO `role_authorities` VALUES (1, 5);
INSERT INTO `role_authorities` VALUES (2, 5);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `image_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'hcx', '$2a$10$eJuRIcUZ0fEUEZdj15sjFePE60nOr48Bjmj7jRZ9UbAzZXYPOGgfu', '2020年02月25日 10:48:06', '3144933378@qq.com', NULL, '18370671294');
INSERT INTO `user` VALUES (2, '再怎么修改也是个憨憨', '$2a$10$CPjDWsUVNIbRK8UwxLwsYeZ1Z1i1VJckA6yXTOXETCclku.91I15y', '2020年02月25日 16:15:16', '3175275172@qq.com', 'http://120.78.88.169:8763/static/images/afafc589521401fa6520ded8573d821d.jpg', '15727614353');

-- ----------------------------
-- Table structure for user_dynamic
-- ----------------------------
DROP TABLE IF EXISTS `user_dynamic`;
CREATE TABLE `user_dynamic`  (
  `userId` bigint(20) NOT NULL,
  `dynamicId` bigint(20) NOT NULL,
  PRIMARY KEY (`userId`, `dynamicId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_dynamic
-- ----------------------------
INSERT INTO `user_dynamic` VALUES (18, 3);
INSERT INTO `user_dynamic` VALUES (20, 5);

-- ----------------------------
-- Table structure for user_roles
-- ----------------------------
DROP TABLE IF EXISTS `user_roles`;
CREATE TABLE `user_roles`  (
  `user_id` bigint(20) NOT NULL,
  `roles_id` bigint(20) NOT NULL,
  PRIMARY KEY (`user_id`, `roles_id`) USING BTREE,
  INDEX `FKj9553ass9uctjrmh0gkqsmv0d`(`roles_id`) USING BTREE,
  CONSTRAINT `FK55itppkw3i07do3h7qoclqd4k` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKj9553ass9uctjrmh0gkqsmv0d` FOREIGN KEY (`roles_id`) REFERENCES `role` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_roles
-- ----------------------------
INSERT INTO `user_roles` VALUES (1, 2);
INSERT INTO `user_roles` VALUES (2, 2);

SET FOREIGN_KEY_CHECKS = 1;
