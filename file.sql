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

 Date: 04/12/2019 19:56:50
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
INSERT INTO `authority` VALUES (1, '查询用户', 'query');
INSERT INTO `authority` VALUES (2, '注册用户', 'register');
INSERT INTO `authority` VALUES (3, '用户登入', 'login');
INSERT INTO `authority` VALUES (4, '验证码获取', 'getMessageCode');
INSERT INTO `authority` VALUES (5, '用户更新', 'updateUser');
INSERT INTO `authority` VALUES (6, '用户注销', 'deleteUser');

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
-- Table structure for file
-- ----------------------------
DROP TABLE IF EXISTS `file`;
CREATE TABLE `file`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `md5` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `path` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `upload_time` datetime(3) NOT NULL,
  `uid` bigint(20) NOT NULL,
  `absolutePath` varchar(2550) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `parentPath` varchar(2550) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url` varchar(2550) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK55itppkw3i07`(`uid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 70 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of file
-- ----------------------------
INSERT INTO `file` VALUES (1, 'my', NULL, '/F:/mavenProject2/spring-cloud-file-admin/file-service/target/classes/static/1/my', '2019-11-10 12:42:22.176', 1, '/F:/mavenProject2/spring-cloud-file-admin/file-service/target/classes/static/', '1', 'localhost:9090/static/1/my');
INSERT INTO `file` VALUES (2, 'picture', NULL, '/F:/mavenProject2/spring-cloud-file-admin/file-service/target/classes/static/1/picture', '2019-11-10 12:42:22.176', 1, '/F:/mavenProject2/spring-cloud-file-admin/file-service/target/classes/static/', '1', 'localhost:9090/static/1/picture');
INSERT INTO `file` VALUES (3, 'document', NULL, '/F:/mavenProject2/spring-cloud-file-admin/file-service/target/classes/static/1/document', '2019-11-10 12:42:22.459', 1, '/F:/mavenProject2/spring-cloud-file-admin/file-service/target/classes/static/', '1', 'localhost:9090/static/1/document');
INSERT INTO `file` VALUES (4, 'movie', NULL, '/F:/mavenProject2/spring-cloud-file-admin/file-service/target/classes/static/1/movie', '2019-11-10 12:42:22.741', 1, '/F:/mavenProject2/spring-cloud-file-admin/file-service/target/classes/static/', '1', 'localhost:9090/static/1/movie');
INSERT INTO `file` VALUES (50, 'JAva', '', '/F:/mavenProject2/spring-cloud-file-admin/file-service/target/classes/static/1/JAva', '2019-11-16 04:53:41.539', 1, '/F:/mavenProject2/spring-cloud-file-admin/file-service/target/classes/static/', '1', 'http://localhost:9090/static/1/JAva');
INSERT INTO `file` VALUES (51, 'Sg-uap开发环境搭建2.8.doc', 'a219cf222ed6b90f3d374408830057a7', '/F:/mavenProject2/spring-cloud-file-admin/file-service/target/classes/static/1/JAva/Sg-uap开发环境搭建2.8.doc', '2019-11-16 04:54:51.083', 1, '/F:/mavenProject2/spring-cloud-file-admin/file-service/target/classes/static/1/JAv', 'JAva', 'http://localhost:9090/static/1/JAva/Sg-uap开发环境搭建2.8.doc');
INSERT INTO `file` VALUES (52, 'git_workspace3.zip', 'f7ffd85ef76dd53b770d2b01640a2e2f', '/F:/mavenProject2/spring-cloud-file-admin/file-service/target/classes/static/1/JAva/git_workspace3.zip', '2019-11-16 09:13:20.039', 1, '/F:/mavenProject2/spring-cloud-file-admin/file-service/target/classes/static/1/JAv', 'JAva', 'http://localhost:9090/static/1/JAva/git_workspace3.zip');
INSERT INTO `file` VALUES (53, 'zip', '', '/F:/mavenProject2/spring-cloud-file-admin/file-service/target/classes/static/1/JAva/zip', '2019-11-16 09:31:55.713', 1, '/F:/mavenProject2/spring-cloud-file-admin/file-service/target/classes/static/1/JAv', 'JAva', 'http://localhost:9090/static/1/JAva/zip');
INSERT INTO `file` VALUES (54, '5b9ac1fb8cc0423fb3274c587ce3aa52.jpg', 'e1523c3ef5651705a2a44ba777145b3f', '/F:/mavenProject2/spring-cloud-file-admin/file-service/target/classes/static/1/picture/5b9ac1fb8cc0423fb3274c587ce3aa52.jpg', '2019-11-16 09:37:32.097', 1, '/F:/mavenProject2/spring-cloud-file-admin/file-service/target/classes/static/1/pictur', 'picture', 'http://localhost:9090/static/1/picture/5b9ac1fb8cc0423fb3274c587ce3aa52.jpg');
INSERT INTO `file` VALUES (55, '1201c5a49aa33f6ed120d4b0fea7ccba.jpg', 'e3dbc9a1bcaab73832765c6c0a4cb047', '/F:/mavenProject2/spring-cloud-file-admin/file-service/target/classes/static/1/picture/1201c5a49aa33f6ed120d4b0fea7ccba.jpg', '2019-11-16 09:37:33.169', 1, '/F:/mavenProject2/spring-cloud-file-admin/file-service/target/classes/static/1/pictur', 'picture', 'http://localhost:9090/static/1/picture/1201c5a49aa33f6ed120d4b0fea7ccba.jpg');
INSERT INTO `file` VALUES (56, '2018071123523112.gif', '1e26580c432405fce5649a61b89539c6', '/F:/mavenProject2/spring-cloud-file-admin/file-service/target/classes/static/1/picture/2018071123523112.gif', '2019-11-16 09:37:33.926', 1, '/F:/mavenProject2/spring-cloud-file-admin/file-service/target/classes/static/1/pictur', 'picture', 'http://localhost:9090/static/1/picture/2018071123523112.gif');
INSERT INTO `file` VALUES (57, 'KsromgVhv9HZyLJw.jpg', 'ce49cafffa0d74a65a705504a67d736e', '/F:/mavenProject2/spring-cloud-file-admin/file-service/target/classes/static/1/picture/KsromgVhv9HZyLJw.jpg', '2019-11-16 09:37:34.948', 1, '/F:/mavenProject2/spring-cloud-file-admin/file-service/target/classes/static/1/pictur', 'picture', 'http://localhost:9090/static/1/picture/KsromgVhv9HZyLJw.jpg');
INSERT INTO `file` VALUES (58, 'timg.jpg', '74ab9e0beb502fdc80907c23f84b85f5', '/F:/mavenProject2/spring-cloud-file-admin/file-service/target/classes/static/1/picture/timg.jpg', '2019-11-16 09:37:35.619', 1, '/F:/mavenProject2/spring-cloud-file-admin/file-service/target/classes/static/1/pictur', 'picture', 'http://localhost:9090/static/1/picture/timg.jpg');
INSERT INTO `file` VALUES (59, 'you', '', '/F:/mavenProject2/spring-cloud-file-admin/file-service/target/classes/static/1/picture/you', '2019-11-16 09:38:45.189', 1, '/F:/mavenProject2/spring-cloud-file-admin/file-service/target/classes/static/1/pictur', 'picture', 'http://localhost:9090/static/1/picture/you');
INSERT INTO `file` VALUES (60, '电网事业部员工假勤及日清填写指南.pdf', '3025ddc4829455d5c8cd3e5ea6f760a8', '/F:/mavenProject2/spring-cloud-file-admin/file-service/target/classes/static/1/JAva/电网事业部员工假勤及日清填写指南.pdf', '2019-11-17 08:13:14.698', 1, '/F:/mavenProject2/spring-cloud-file-admin/file-service/target/classes/static/1/JAv', 'JAva', 'http://127.0.0.1:9090/static/1/JAva/电网事业部员工假勤及日清填写指南.pdf');
INSERT INTO `file` VALUES (61, '群星 - 35.叙亡夫.mp3', '42551e524af768c8a45410540d50e7c5', '/F:/mavenProject2/spring-cloud-file-admin/file-service/target/classes/static/1/my/群星 - 35.叙亡夫.mp3', '2019-11-17 09:23:09.689', 1, '/F:/mavenProject2/spring-cloud-file-admin/file-service/target/classes/static/1/m', 'my', 'http://localhost:9090/static/1/my/群星 - 35.叙亡夫.mp3');
INSERT INTO `file` VALUES (62, '20170801223450.MP3', '1b1cc969140618cda0180574633d8623', '/F:/mavenProject2/spring-cloud-file-admin/file-service/target/classes/static/1/my/20170801223450.MP3', '2019-11-17 09:24:54.398', 1, '/F:/mavenProject2/spring-cloud-file-admin/file-service/target/classes/static/1/m', 'my', 'http://localhost:9090/static/1/my/20170801223450.MP3');
INSERT INTO `file` VALUES (63, 'G.E.M.邓紫棋 - 泡沫.mp3', 'c596661a6a1afb5b85c50ecfcb898232', '/F:/mavenProject2/spring-cloud-file-admin/file-service/target/classes/static/1/my/G.E.M.邓紫棋 - 泡沫.mp3', '2019-11-17 09:31:46.851', 1, '/F:/mavenProject2/spring-cloud-file-admin/file-service/target/classes/static/1/m', 'my', 'http://localhost:9090/static/1/my/G.E.M.邓紫棋 - 泡沫.mp3');
INSERT INTO `file` VALUES (64, '肖申克的救赎.mp4', '299aac7ec9534628084e2371552843d3', '/F:/mavenProject2/spring-cloud-file-admin/file-service/target/classes/static/1/my/肖申克的救赎.mp4', '2019-11-17 09:45:06.092', 1, '/F:/mavenProject2/spring-cloud-file-admin/file-service/target/classes/static/1/m', 'my', 'http://localhost:9090/static/1/my/肖申克的救赎.mp4');
INSERT INTO `file` VALUES (65, 'wallhaven-722391.jpg', '1bf313706ee2b2d15a365ab9eb713f63', '/F:/mavenProject2/spring-cloud-file-admin/file-service/target/classes/static/1/picture/wallhaven-722391.jpg', '2019-11-23 12:28:11.231', 1, '/F:/mavenProject2/spring-cloud-file-admin/file-service/target/classes/static/1/pictur', 'picture', 'http://localhost:9090/static/1/picture/wallhaven-722391.jpg');
INSERT INTO `file` VALUES (66, 'my', NULL, '/F:/mavenProject2/spring-cloud-file-admin/file-service/target/classes/static/2/my', '2019-11-30 08:45:50.712', 2, '/F:/mavenProject2/spring-cloud-file-admin/file-service/target/classes/static/', '2', 'http://localhost:9090/static/2/my');
INSERT INTO `file` VALUES (67, 'picture', NULL, '/F:/mavenProject2/spring-cloud-file-admin/file-service/target/classes/static/2/picture', '2019-11-30 08:45:53.777', 2, '/F:/mavenProject2/spring-cloud-file-admin/file-service/target/classes/static/', '2', 'http://localhost:9090/static/2/picture');
INSERT INTO `file` VALUES (68, 'document', NULL, '/F:/mavenProject2/spring-cloud-file-admin/file-service/target/classes/static/2/document', '2019-11-30 08:45:54.067', 2, '/F:/mavenProject2/spring-cloud-file-admin/file-service/target/classes/static/', '2', 'http://localhost:9090/static/2/document');
INSERT INTO `file` VALUES (69, 'movie', NULL, '/F:/mavenProject2/spring-cloud-file-admin/file-service/target/classes/static/2/movie', '2019-11-30 08:45:54.320', 2, '/F:/mavenProject2/spring-cloud-file-admin/file-service/target/classes/static/', '2', 'http://localhost:9090/static/2/movie');

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
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of friends
-- ----------------------------
INSERT INTO `friends` VALUES (1, 2, '2019-12-01 17:43:59', 'hcx', 1);
INSERT INTO `friends` VALUES (2, 1, '2019-12-01 10:07:19', NULL, 2);

-- ----------------------------
-- Table structure for group
-- ----------------------------
DROP TABLE IF EXISTS `group`;
CREATE TABLE `group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupId` bigint(20) NOT NULL,
  `date` datetime(0) NOT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `groupName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `groupImagePath` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for group_user
-- ----------------------------
DROP TABLE IF EXISTS `group_user`;
CREATE TABLE `group_user`  (
  `userId` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `isAdmin` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`userId`, `groupId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of login_history
-- ----------------------------
INSERT INTO `login_history` VALUES (1, '2019年11月10日 20:42:25', 'Chrome', 'PC端', '密码登入', 1);
INSERT INTO `login_history` VALUES (2, '2019年11月15日 09:29:14', 'Chrome', 'PC端', '密码登入', 1);
INSERT INTO `login_history` VALUES (3, '2019年11月16日 09:58:25', 'Chrome', 'PC端', '密码登入', 1);
INSERT INTO `login_history` VALUES (4, '2019年11月17日 11:32:44', 'Chrome', 'PC端', '密码登入', 1);
INSERT INTO `login_history` VALUES (5, '2019年11月23日 16:16:24', 'Chrome', 'PC端', '密码登入', 1);
INSERT INTO `login_history` VALUES (6, '2019年11月24日 16:19:29', 'Chrome', 'PC端', '密码登入', 1);
INSERT INTO `login_history` VALUES (7, '2019年11月30日 13:46:09', 'Chrome', 'PC端', '密码登入', 1);
INSERT INTO `login_history` VALUES (8, '2019年11月30日 13:47:46', 'Chrome', 'PC端', '密码登入', 1);
INSERT INTO `login_history` VALUES (9, '2019年11月30日 16:09:54', 'FF', 'PC端', '密码登入', 1);
INSERT INTO `login_history` VALUES (10, '2019年11月30日 16:45:52', 'FF', 'PC端', '密码登入', 2);
INSERT INTO `login_history` VALUES (11, '2019年12月01日 18:03:45', 'Chrome', 'PC端', '密码登入', 1);
INSERT INTO `login_history` VALUES (12, '2019年12月01日 20:41:44', 'FF', 'PC端', '密码登入', 2);

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `to` int(11) NOT NULL,
  `from` int(11) NOT NULL,
  `message` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `date` datetime(0) NOT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `flag` int(11) NULL DEFAULT NULL COMMENT '0:文件；1：消息',
  `isRead` int(11) NULL DEFAULT NULL,
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
INSERT INTO `user` VALUES (1, 'hcx', '$2a$10$9ld5JLYi8wjtlWhfzRAlfOijbmCvnpSUsUZ30RIcY3mbWtC7AqmR2', '2019年11月10日 20:42:21', '3144933378@qq.com', 'http://localhost:8763/static/head/img7.jpg', '18370671294');
INSERT INTO `user` VALUES (2, 'aways', '$2a$10$mfwWPC9vo0ymWeyRF.jbEOX/pi3s5bT7.WOGnolDKbd66KHjXhwFO', '2019年11月30日 16:45:45', 'HuangChiXin6@163.com', '', '15170812602');

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
INSERT INTO `user_roles` VALUES (1, 1);
INSERT INTO `user_roles` VALUES (2, 1);

SET FOREIGN_KEY_CHECKS = 1;
