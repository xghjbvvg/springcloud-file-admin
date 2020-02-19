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

 Date: 19/02/2020 15:04:38
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
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES (2, 'good number 2', '2020-02-17 19:30:58', 3, 2);
INSERT INTO `comment` VALUES (3, 'hcx\nuuu', '2020-02-18 17:26:33', 1, 5);

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
  `visible` int(1) NULL DEFAULT NULL,
  `uid` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dynamic
-- ----------------------------
INSERT INTO `dynamic` VALUES (1, 'vbuygvbuyvuyvby', '<p>vbuygvbuyvuyvby</p>\n', '2020-02-18 17:26:05', 0, '', 1, 5);

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
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of file
-- ----------------------------
INSERT INTO `file` VALUES (1, 'my', NULL, 'file:/file-service.jar!/BOOT-INF/classes!/static//file/common/my', '2020-02-18 15:22:43.000', 'http://47.112.188.28:9090/static/file/common//my', 'file:/file-service.jar!/BOOT-INF/classes!/static//file/common', 'common');
INSERT INTO `file` VALUES (2, 'pic', NULL, 'file:/file-service.jar!/BOOT-INF/classes!/static//file/common/pic', '2020-02-18 15:22:43.000', 'http://47.112.188.28:9090/static/file/common//pic', 'file:/file-service.jar!/BOOT-INF/classes!/static//file/common', 'common');
INSERT INTO `file` VALUES (3, 'doc', NULL, 'file:/file-service.jar!/BOOT-INF/classes!/static//file/common/doc', '2020-02-18 15:22:43.000', 'http://47.112.188.28:9090/static/file/common//doc', 'file:/file-service.jar!/BOOT-INF/classes!/static//file/common', 'common');
INSERT INTO `file` VALUES (4, 'vedio', NULL, 'file:/file-service.jar!/BOOT-INF/classes!/static//file/common/vedio', '2020-02-18 15:22:44.000', 'http://47.112.188.28:9090/static/file/common//vedio', 'file:/file-service.jar!/BOOT-INF/classes!/static//file/common', 'common');
INSERT INTO `file` VALUES (5, 'music', NULL, 'file:/file-service.jar!/BOOT-INF/classes!/static//file/common/music', '2020-02-18 15:22:44.000', 'http://47.112.188.28:9090/static/file/common//music', 'file:/file-service.jar!/BOOT-INF/classes!/static//file/common', 'common');
INSERT INTO `file` VALUES (16, 'my', NULL, 'file:/file-service.jar!/BOOT-INF/classes!/static//file/common/my', '2020-02-18 20:15:00.000', 'http://47.112.188.28:9090/static/file/common//my', 'file:/file-service.jar!/BOOT-INF/classes!/static//file/common', 'common');
INSERT INTO `file` VALUES (17, 'pic', NULL, 'file:/file-service.jar!/BOOT-INF/classes!/static//file/common/pic', '2020-02-18 20:15:00.000', 'http://47.112.188.28:9090/static/file/common//pic', 'file:/file-service.jar!/BOOT-INF/classes!/static//file/common', 'common');
INSERT INTO `file` VALUES (18, 'doc', NULL, 'file:/file-service.jar!/BOOT-INF/classes!/static//file/common/doc', '2020-02-18 20:15:00.000', 'http://47.112.188.28:9090/static/file/common//doc', 'file:/file-service.jar!/BOOT-INF/classes!/static//file/common', 'common');
INSERT INTO `file` VALUES (19, 'vedio', NULL, 'file:/file-service.jar!/BOOT-INF/classes!/static//file/common/vedio', '2020-02-18 20:15:00.000', 'http://47.112.188.28:9090/static/file/common//vedio', 'file:/file-service.jar!/BOOT-INF/classes!/static//file/common', 'common');
INSERT INTO `file` VALUES (20, 'music', NULL, 'file:/file-service.jar!/BOOT-INF/classes!/static//file/common/music', '2020-02-18 20:15:00.000', 'http://47.112.188.28:9090/static/file/common//music', 'file:/file-service.jar!/BOOT-INF/classes!/static//file/common', 'common');
INSERT INTO `file` VALUES (21, 'my', NULL, 'file:/file-service.jar!/BOOT-INF/classes!/static//file/common/my', '2020-02-18 22:02:28.000', 'http://47.112.188.28:9090/static/file/common//my', 'file:/file-service.jar!/BOOT-INF/classes!/static//file/common', 'common');
INSERT INTO `file` VALUES (22, 'pic', NULL, 'file:/file-service.jar!/BOOT-INF/classes!/static//file/common/pic', '2020-02-18 22:02:28.000', 'http://47.112.188.28:9090/static/file/common//pic', 'file:/file-service.jar!/BOOT-INF/classes!/static//file/common', 'common');
INSERT INTO `file` VALUES (23, 'doc', NULL, 'file:/file-service.jar!/BOOT-INF/classes!/static//file/common/doc', '2020-02-18 22:02:28.000', 'http://47.112.188.28:9090/static/file/common//doc', 'file:/file-service.jar!/BOOT-INF/classes!/static//file/common', 'common');
INSERT INTO `file` VALUES (24, 'vedio', NULL, 'file:/file-service.jar!/BOOT-INF/classes!/static//file/common/vedio', '2020-02-18 22:02:28.000', 'http://47.112.188.28:9090/static/file/common//vedio', 'file:/file-service.jar!/BOOT-INF/classes!/static//file/common', 'common');
INSERT INTO `file` VALUES (25, 'music', NULL, 'file:/file-service.jar!/BOOT-INF/classes!/static//file/common/music', '2020-02-18 22:02:28.000', 'http://47.112.188.28:9090/static/file/common//music', 'file:/file-service.jar!/BOOT-INF/classes!/static//file/common', 'common');
INSERT INTO `file` VALUES (26, 'my', NULL, 'file:/file-service.jar!/BOOT-INF/classes!/static//file/common/my', '2020-02-18 22:27:18.000', 'http://47.112.188.28:9090/static/file/common//my', 'file:/file-service.jar!/BOOT-INF/classes!/static//file/common', 'common');
INSERT INTO `file` VALUES (27, 'pic', NULL, 'file:/file-service.jar!/BOOT-INF/classes!/static//file/common/pic', '2020-02-18 22:27:18.000', 'http://47.112.188.28:9090/static/file/common//pic', 'file:/file-service.jar!/BOOT-INF/classes!/static//file/common', 'common');
INSERT INTO `file` VALUES (28, 'doc', NULL, 'file:/file-service.jar!/BOOT-INF/classes!/static//file/common/doc', '2020-02-18 22:27:18.000', 'http://47.112.188.28:9090/static/file/common//doc', 'file:/file-service.jar!/BOOT-INF/classes!/static//file/common', 'common');
INSERT INTO `file` VALUES (29, 'vedio', NULL, 'file:/file-service.jar!/BOOT-INF/classes!/static//file/common/vedio', '2020-02-18 22:27:18.000', 'http://47.112.188.28:9090/static/file/common//vedio', 'file:/file-service.jar!/BOOT-INF/classes!/static//file/common', 'common');
INSERT INTO `file` VALUES (30, 'music', NULL, 'file:/file-service.jar!/BOOT-INF/classes!/static//file/common/music', '2020-02-18 22:27:18.000', 'http://47.112.188.28:9090/static/file/common//music', 'file:/file-service.jar!/BOOT-INF/classes!/static//file/common', 'common');

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
INSERT INTO `file_user` VALUES (7, 1, '2020-02-19 11:21:00', 'my', '#7');
INSERT INTO `file_user` VALUES (7, 2, '2020-02-19 11:21:00', 'pic', '#7');
INSERT INTO `file_user` VALUES (7, 3, '2020-02-19 11:21:00', 'doc', '#7');
INSERT INTO `file_user` VALUES (7, 4, '2020-02-19 11:21:00', 'vedio', '#7');
INSERT INTO `file_user` VALUES (7, 5, '2020-02-19 11:21:00', 'music', '#7');

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
  `isAdmin` int(11) NULL DEFAULT 0 COMMENT '0:是管理员；1：不是管理员',
  `date` datetime(0) NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户备注名',
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
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

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
  `date` datetime(0) NULL DEFAULT NULL,
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
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (7, 'hcx', '$2a$10$gH4pAVY022KrpbW0RrIq.ON..lbaNLfnuKxoz8f4DJuePIy9gUkgi', '2020年02月19日 03:20:57', '3144933378@qq.com', NULL, '18370671294');

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
INSERT INTO `user_dynamic` VALUES (2, 3);

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
INSERT INTO `user_roles` VALUES (7, 2);

SET FOREIGN_KEY_CHECKS = 1;
