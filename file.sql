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

 Date: 01/02/2020 22:37:25
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
  `url` varchar(2550) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `absolutePath` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '父全路径',
  `parentName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '父路径名',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 109 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of file
-- ----------------------------
INSERT INTO `file` VALUES (1, 'my', NULL, '/F:/mavenProject2/spring-cloud-file-admin/file-service/target/classes/static/file/common/my', '2020-01-15 17:45:05.000', 'http://localhost:9090/static/file/common/my', '/F:/mavenProject2/spring-cloud-file-admin/file-service/target/classes/static/file/common', 'common');
INSERT INTO `file` VALUES (2, 'pic', NULL, '/F:/mavenProject2/spring-cloud-file-admin/file-service/target/classes/static/file/common/pic', '2020-01-15 17:45:05.000', 'http://localhost:9090/static/file/common/pic', '/F:/mavenProject2/spring-cloud-file-admin/file-service/target/classes/static/file/common', 'common');
INSERT INTO `file` VALUES (3, 'doc', NULL, '/F:/mavenProject2/spring-cloud-file-admin/file-service/target/classes/static/file/common/doc', '2020-01-15 17:45:05.000', 'http://localhost:9090/static/file/common/doc', '/F:/mavenProject2/spring-cloud-file-admin/file-service/target/classes/static/file/common', 'common');
INSERT INTO `file` VALUES (4, 'vedio', NULL, '/F:/mavenProject2/spring-cloud-file-admin/file-service/target/classes/static/file/common/vedio', '2020-01-15 17:45:06.000', 'http://localhost:9090/static/file/common/vedio', '/F:/mavenProject2/spring-cloud-file-admin/file-service/target/classes/static/file/common', 'common');
INSERT INTO `file` VALUES (5, 'music', NULL, '/F:/mavenProject2/spring-cloud-file-admin/file-service/target/classes/static/file/common/music', '2020-01-15 17:45:06.000', 'http://localhost:9090/static/file/common/music', '/F:/mavenProject2/spring-cloud-file-admin/file-service/target/classes/static/file/common', 'common');
INSERT INTO `file` VALUES (64, 'timg.jpg', '74ab9e0beb502fdc80907c23f84b85f5', '/F:/mavenProject2/spring-cloud-file-admin/file-service/target/classes/static/file/common/timg.jpg', '2020-01-17 11:49:18.000', 'http://localhost:9090/static/file/common/timg.jpg', '/F:/mavenProject2/spring-cloud-file-admin/file-service/target/classes/static/file/commo', 'common');
INSERT INTO `file` VALUES (66, '5b9ac1fb8cc0423fb3274c587ce3aa52.jpg', 'e1523c3ef5651705a2a44ba777145b3f', '/F:/mavenProject2/spring-cloud-file-admin/file-service/target/classes/static/file/common/pic/5b9ac1fb8cc0423fb3274c587ce3aa52.jpg', '2020-01-17 11:53:04.000', 'http://localhost:9090/static/file/common/pic/5b9ac1fb8cc0423fb3274c587ce3aa52.jpg', '/F:/mavenProject2/spring-cloud-file-admin/file-service/target/classes/static/file/common/pic', 'pic');
INSERT INTO `file` VALUES (74, '2018071123523112.gif', '1e26580c432405fce5649a61b89539c6', '/F:/mavenProject2/spring-cloud-file-admin/file-service/target/classes/static/file/common/pic/2018071123523112.gif', '2020-01-17 12:35:16.000', 'http://localhost:9090/static/file/common/pic/2018071123523112.gif', '/F:/mavenProject2/spring-cloud-file-admin/file-service/target/classes/static/file/common/pic', 'pic');
INSERT INTO `file` VALUES (75, 'KsromgVhv9HZyLJw.jpg', 'ce49cafffa0d74a65a705504a67d736e', '/F:/mavenProject2/spring-cloud-file-admin/file-service/target/classes/static/file/common/pic/KsromgVhv9HZyLJw.jpg', '2020-01-17 12:36:57.000', 'http://localhost:9090/static/file/common/pic/KsromgVhv9HZyLJw.jpg', '/F:/mavenProject2/spring-cloud-file-admin/file-service/target/classes/static/file/common/pic', 'pic');
INSERT INTO `file` VALUES (76, 'my', '', '/F:/mavenProject2/spring-cloud-file-admin/file-service/target/classes/static/file/common/pic/my', '2020-01-17 12:37:14.000', 'http://localhost:9090/static/file/common/pic/my', '/F:/mavenProject2/spring-cloud-file-admin/file-service/target/classes/static/file/common/pic', 'pic');
INSERT INTO `file` VALUES (78, 'you', '', '/F:/mavenProject2/spring-cloud-file-admin/file-service/target/classes/static/file/common/doc/you', '2020-01-17 14:25:52.000', 'http://localhost:9090/static/file/common/doc/you', '/F:/mavenProject2/spring-cloud-file-admin/file-service/target/classes/static/file/common/doc', 'doc');
INSERT INTO `file` VALUES (79, 'timg.jpg', 'ce64bef1e5c7248c82bab70d7b32ba29', '/F:/mavenProject2/spring-cloud-file-admin/file-service/target/classes/static/file/common/pic/timg.jpg', '2020-01-17 14:28:42.000', 'http://localhost:9090/static/file/common/pic/timg.jpg', '/F:/mavenProject2/spring-cloud-file-admin/file-service/target/classes/static/file/common/pic', 'pic');
INSERT INTO `file` VALUES (80, 'E-R.vsdx', '40c36dec6c9cecc2e791669f7899e5bd', '/F:/mavenProject2/spring-cloud-file-admin/file-service/target/classes/static/file/common/pic/E-R.vsdx', '2020-01-17 14:29:14.000', 'http://localhost:9090/static/file/common/pic/E-R.vsdx', '/F:/mavenProject2/spring-cloud-file-admin/file-service/target/classes/static/file/common/pic', 'pic');
INSERT INTO `file` VALUES (81, 'G.E.M.邓紫棋 - 泡沫.mp3', 'c596661a6a1afb5b85c50ecfcb898232', '/F:/mavenProject2/spring-cloud-file-admin/file-service/target/classes/static/file/common/vedio/G.E.M.邓紫棋 - 泡沫.mp3', '2020-01-17 14:30:42.000', 'http://localhost:9090/static/file/common/vedio/G.E.M.邓紫棋 - 泡沫.mp3', '/F:/mavenProject2/spring-cloud-file-admin/file-service/target/classes/static/file/common/vedio', 'vedio');
INSERT INTO `file` VALUES (82, '基于web开发技术微服务云盘管理系统的实现与设计.docx', '36a5ebfbe9b82dbcb509d395ecf1608a', '/F:/mavenProject2/spring-cloud-file-admin/file-service/target/classes/static/file/common/doc/基于web开发技术微服务云盘管理系统的实现与设计.docx', '2020-01-17 14:42:16.000', 'http://localhost:9090/static/file/common/doc/基于web开发技术微服务云盘管理系统的实现与设计.docx', '/F:/mavenProject2/spring-cloud-file-admin/file-service/target/classes/static/file/common/doo', 'doc');
INSERT INTO `file` VALUES (83, '视频', '', '/F:/mavenProject2/spring-cloud-file-admin/file-service/target/classes/static/file/common/java/视频', '2020-01-17 22:09:38.000', 'http://localhost:9090/static/file/common/java/视频', '/F:/mavenProject2/spring-cloud-file-admin/file-service/target/classes/static/file/common/java', 'java');
INSERT INTO `file` VALUES (84, '楚乔传第67集-国语720P(1).flv', '0595debd238e6cf240851a9cf5afaa03', '/F:/mavenProject2/spring-cloud-file-admin/file-service/target/classes/static/file/common/java/视频/楚乔传第67集-国语720P(1).flv', '2020-01-17 22:10:44.000', 'http://localhost:9090/static/file/common/java/视频/楚乔传第67集-国语720P(1).flv', '/F:/mavenProject2/spring-cloud-file-admin/file-service/target/classes/static/file/common/java/视频', '视频');
INSERT INTO `file` VALUES (85, 'common_district_1.sql', '8af970cf7dc9d661efc55b76ad57396d', '/F:/mavenProject2/spring-cloud-file-admin/file-service/target/classes/static/file/common/java/视频/common_district_1.sql', '2020-01-17 22:11:04.000', 'http://localhost:9090/static/file/common/java/视频/common_district_1.sql', '/F:/mavenProject2/spring-cloud-file-admin/file-service/target/classes/static/file/common/java/视频', '视频');
INSERT INTO `file` VALUES (86, 'doc', '', '/F:/mavenProject2/spring-cloud-file-admin/file-service/target/classes/static/file/common/java/视频/doc', '2020-01-17 22:11:25.000', 'http://localhost:9090/static/file/common/java/视频/doc', '/F:/mavenProject2/spring-cloud-file-admin/file-service/target/classes/static/file/common/java/视频', '视频');
INSERT INTO `file` VALUES (87, 'common_district_2.sql', 'fc56210ee7cafe5b329bfa2a865d1ae8', '/F:/mavenProject2/spring-cloud-file-admin/file-service/target/classes/static/file/common/common_district_2.sql', '2020-01-17 22:11:43.000', 'http://localhost:9090/static/file/common/common_district_2.sql', '/F:/mavenProject2/spring-cloud-file-admin/file-service/target/classes/static/file/common', 'common');
INSERT INTO `file` VALUES (88, 'common_district_3.sql', 'acba167ee3b0a238b5b0efcda8d3ae6f', '/F:/mavenProject2/spring-cloud-file-admin/file-service/target/classes/static/file/common/java/视频/doc/common_district_3.sql', '2020-01-17 22:11:55.000', 'http://localhost:9090/static/file/common/java/视频/doc/common_district_3.sql', '/F:/mavenProject2/spring-cloud-file-admin/file-service/target/classes/static/file/common/java/视频/doc', 'doc');
INSERT INTO `file` VALUES (89, '学生表.txt', '0bfacbdb6d4a84f93a6fb8325c958815', '/F:/mavenProject2/spring-cloud-file-admin/file-service/target/classes/static/file/common/java/学生表.txt', '2020-01-17 22:12:55.000', 'http://localhost:9090/static/file/common/java/学生表.txt', '/F:/mavenProject2/spring-cloud-file-admin/file-service/target/classes/static/file/common/java', 'java');
INSERT INTO `file` VALUES (90, 'MySQL项目实战上课资料.rar', 'bfebad472fdd807cc95ffff8a2930d7f', '/F:/mavenProject2/spring-cloud-file-admin/file-service/target/classes/static/file/common/MySQL项目实战上课资料.rar', '2020-01-17 22:15:00.000', 'http://localhost:9090/static/file/common/MySQL项目实战上课资料.rar', '/F:/mavenProject2/spring-cloud-file-admin/file-service/target/classes/static/file/common', 'common');
INSERT INTO `file` VALUES (91, '01  数据库系统简介.pptx', '9586fb5aeb899a51221f137024392a56', '/F:/mavenProject2/spring-cloud-file-admin/file-service/target/classes/static/file/common/01  数据库系统简介.pptx', '2020-01-17 22:15:50.000', 'http://localhost:9090/static/file/common/01  数据库系统简介.pptx', '/F:/mavenProject2/spring-cloud-file-admin/file-service/target/classes/static/file/common', 'common');
INSERT INTO `file` VALUES (92, '04  常见关系数据库.pptx', 'ef23af2372c29d78afba4f1388f6b67c', '/F:/mavenProject2/spring-cloud-file-admin/file-service/target/classes/static/file/common/java/04  常见关系数据库.pptx', '2020-01-17 22:16:03.000', 'http://localhost:9090/static/file/common/java/04  常见关系数据库.pptx', '/F:/mavenProject2/spring-cloud-file-admin/file-service/target/classes/static/file/common/java', 'java');
INSERT INTO `file` VALUES (93, '03  数据模型.pptx', '8ae124b098316150700091d3118219f4', '/F:/mavenProject2/spring-cloud-file-admin/file-service/target/classes/static/file/common/java/03  数据模型.pptx', '2020-01-17 22:16:18.000', 'http://localhost:9090/static/file/common/java/03  数据模型.pptx', '/F:/mavenProject2/spring-cloud-file-admin/file-service/target/classes/static/file/common/java', 'java');
INSERT INTO `file` VALUES (94, '02  数据库的体系结构.pptx', 'd78219b9a488ff4e7aab538e870a84ba', '/F:/mavenProject2/spring-cloud-file-admin/file-service/target/classes/static/file/common/java/02  数据库的体系结构.pptx', '2020-01-17 22:19:10.000', 'http://localhost:9090/static/file/common/java/02  数据库的体系结构.pptx', '/F:/mavenProject2/spring-cloud-file-admin/file-service/target/classes/static/file/common/java', 'java');
INSERT INTO `file` VALUES (96, '04  常见关系数据库.pptx', 'ef23af2372c29d78afba4f1388f6b67c', '/F:/mavenProject2/spring-cloud-file-admin/file-service/target/classes/static/file/common/04  常见关系数据库.pptx', '2020-01-17 22:38:58.000', 'http://localhost:9090/static/file/common/04  常见关系数据库.pptx', '/F:/mavenProject2/spring-cloud-file-admin/file-service/target/classes/static/file/common', 'common');
INSERT INTO `file` VALUES (104, '常见问题.txt', '8e400024f9fd080351cfb7d9017ecfe4', '/F:/mavenProject2/spring-cloud-file-admin/file-service/target/classes/static/file/common/java/my/常见问题.txt', '2020-01-17 23:28:20.000', 'http://localhost:9090/static/file/common/java/my/常见问题.txt', '/F:/mavenProject2/spring-cloud-file-admin/file-service/target/classes/static/file/common/java/my', 'my');
INSERT INTO `file` VALUES (106, 'COMCT232.DEP', 'afa0067b0a06f186316a05d0683dbe83', '/F:/mavenProject2/spring-cloud-file-admin/file-service/target/classes/static/file/common/java/my/COMCT232.DEP', '2020-01-18 16:18:42.000', 'http://localhost:9090/static/file/common/java/my/COMCT232.DEP', '/F:/mavenProject2/spring-cloud-file-admin/file-service/target/classes/static/file/common/java/my', 'my');
INSERT INTO `file` VALUES (107, 'flash.oca', '88ee8ea955eaee3d80aeeb3cf8cc4b77', '/F:/mavenProject2/spring-cloud-file-admin/file-service/target/classes/static/file/common/java/my/flash.oca', '2020-01-18 16:49:35.000', 'http://localhost:9090/static/file/common/java/my/flash.oca', '/F:/mavenProject2/spring-cloud-file-admin/file-service/target/classes/static/file/common/java/my', 'my');
INSERT INTO `file` VALUES (108, 'G.E.M.邓紫棋 - 来自天堂的魔鬼.mp3', 'f11eb5d7f68772bd528fb9e6d03cb27f', '/F:/mavenProject2/spring-cloud-file-admin/file-service/target/classes/static/file/common/G.E.M.邓紫棋 - 来自天堂的魔鬼.mp3', '2020-01-20 11:53:32.000', 'http://localhost:9090/static/file/common/G.E.M.邓紫棋 - 来自天堂的魔鬼.mp3', '/F:/mavenProject2/spring-cloud-file-admin/file-service/target/classes/static/file/common', 'common');

-- ----------------------------
-- Table structure for file_user
-- ----------------------------
DROP TABLE IF EXISTS `file_user`;
CREATE TABLE `file_user`  (
  `uid` bigint(20) NOT NULL,
  `fid` bigint(20) NOT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `parentId` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`uid`, `fid`, `parentId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of file_user
-- ----------------------------
INSERT INTO `file_user` VALUES (2, 1, '2020-01-15 20:54:12', 'my', '#2');
INSERT INTO `file_user` VALUES (2, 2, '2020-01-15 20:54:12', 'pic', '#2');
INSERT INTO `file_user` VALUES (2, 3, '2020-01-15 20:54:12', 'doc', '#2');
INSERT INTO `file_user` VALUES (2, 4, '2020-01-15 20:54:12', 'vedio', '#2');
INSERT INTO `file_user` VALUES (2, 5, '2020-01-15 20:54:12', 'music', '#2');
INSERT INTO `file_user` VALUES (2, 66, '2020-01-17 11:53:04', '5b9ac1fb8cc0423fb3274c587ce3aa52.jpg', '2');
INSERT INTO `file_user` VALUES (2, 74, '2020-01-17 12:35:16', '2018071123523112.gif', '2');
INSERT INTO `file_user` VALUES (2, 75, '2020-01-17 12:36:57', 'KsromgVhv9HZyLJw.jpg', '2');
INSERT INTO `file_user` VALUES (2, 76, '2020-01-17 12:37:15', 'my', '2');
INSERT INTO `file_user` VALUES (2, 78, '2020-01-17 14:25:52', 'you', '3');
INSERT INTO `file_user` VALUES (2, 79, '2020-01-17 14:28:42', 'timg.jpg', '2');
INSERT INTO `file_user` VALUES (2, 80, '2020-01-17 14:29:15', 'E-R.vsdx', '2');
INSERT INTO `file_user` VALUES (2, 81, '2020-01-17 14:30:42', 'G.E.M.邓紫棋 - 泡沫.mp3', '4');
INSERT INTO `file_user` VALUES (2, 82, '2020-01-17 14:42:17', '基于web开发技术微服务云盘管理系统的实现与设计.docx', '3');
INSERT INTO `file_user` VALUES (3, 1, '2020-01-20 12:50:16', 'my', '#3');
INSERT INTO `file_user` VALUES (3, 2, '2020-01-20 12:50:16', 'pic', '#3');
INSERT INTO `file_user` VALUES (3, 3, '2020-01-20 12:50:16', 'doc', '#3');
INSERT INTO `file_user` VALUES (3, 4, '2020-01-20 12:50:16', 'vedio', '#3');
INSERT INTO `file_user` VALUES (3, 5, '2020-01-20 12:50:16', 'music', '#3');
INSERT INTO `file_user` VALUES (3, 66, '2020-02-01 22:22:35', '5b9ac1fb8cc0423fb3274c587ce3aa52.jpg', '1');
INSERT INTO `file_user` VALUES (3, 74, '2020-02-01 22:22:35', '2018071123523112.gif', '1');
INSERT INTO `file_user` VALUES (3, 75, '2020-02-01 22:22:35', 'KsromgVhv9HZyLJw.jpg', '1');
INSERT INTO `file_user` VALUES (3, 75, '2020-01-30 12:20:25', 'KsromgVhv9HZyLJw.jpg', '5');
INSERT INTO `file_user` VALUES (3, 76, '2020-02-01 22:22:35', 'my', '1');
INSERT INTO `file_user` VALUES (3, 79, '2020-02-01 22:22:36', 'timg.jpg', '1');
INSERT INTO `file_user` VALUES (3, 80, '2020-02-01 22:22:36', 'E-R.vsdx', '1');

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
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of friends
-- ----------------------------
INSERT INTO `friends` VALUES (1, 2, '2020-01-24 22:11:24', NULL, 3);
INSERT INTO `friends` VALUES (3, 3, '2020-01-30 11:13:08', 'envy', 2);

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
) ENGINE = InnoDB AUTO_INCREMENT = 48 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of login_history
-- ----------------------------
INSERT INTO `login_history` VALUES (1, '2020年01月15日 20:53:45', 'Chrome', 'PC端', '密码登入', 2);
INSERT INTO `login_history` VALUES (2, '2020年01月16日 21:59:12', 'Chrome', 'PC端', '密码登入', 2);
INSERT INTO `login_history` VALUES (3, '2020年01月17日 14:24:06', 'Chrome', 'PC端', '密码登入', 2);
INSERT INTO `login_history` VALUES (4, '2020年01月17日 22:08:40', 'Chrome', 'PC端', '密码登入', 2);
INSERT INTO `login_history` VALUES (5, '2020年01月18日 16:48:44', 'Chrome', 'PC端', '密码登入', 2);
INSERT INTO `login_history` VALUES (6, '2020年01月20日 11:23:20', 'Chrome', 'PC端', '密码登入', 2);
INSERT INTO `login_history` VALUES (7, '2020年01月20日 12:49:47', 'FF', 'PC端', '密码登入', 3);
INSERT INTO `login_history` VALUES (8, '2020年01月24日 18:26:55', 'FF', 'PC端', '密码登入', 3);
INSERT INTO `login_history` VALUES (9, '2020年01月24日 18:44:09', 'Chrome', 'PC端', '密码登入', 2);
INSERT INTO `login_history` VALUES (10, '2020年01月25日 19:18:41', 'FF', 'PC端', '密码登入', 3);
INSERT INTO `login_history` VALUES (11, '2020年01月25日 19:38:45', 'Chrome', 'PC端', '密码登入', 2);
INSERT INTO `login_history` VALUES (12, '2020年01月26日 12:49:27', 'FF', 'PC端', '密码登入', 3);
INSERT INTO `login_history` VALUES (13, '2020年01月26日 12:51:15', 'Chrome', 'PC端', '密码登入', 2);
INSERT INTO `login_history` VALUES (14, '2020年01月26日 19:57:42', 'Chrome', 'PC端', '密码登入', 2);
INSERT INTO `login_history` VALUES (15, '2020年01月26日 20:21:08', 'Chrome', 'PC端', '密码登入', 2);
INSERT INTO `login_history` VALUES (16, '2020年01月27日 12:29:01', 'FF', 'PC端', '密码登入', 3);
INSERT INTO `login_history` VALUES (17, '2020年01月27日 12:50:42', 'Chrome', 'PC端', '密码登入', 2);
INSERT INTO `login_history` VALUES (18, '2020年01月27日 13:45:49', 'Chrome', 'PC端', '密码登入', 2);
INSERT INTO `login_history` VALUES (19, '2020年01月27日 13:45:54', 'FF', 'PC端', '密码登入', 3);
INSERT INTO `login_history` VALUES (20, '2020年01月27日 13:52:44', 'FF', 'PC端', '密码登入', 3);
INSERT INTO `login_history` VALUES (21, '2020年01月27日 16:00:46', 'FF', 'PC端', '密码登入', 3);
INSERT INTO `login_history` VALUES (22, '2020年01月27日 16:04:16', 'Chrome', 'PC端', '密码登入', 2);
INSERT INTO `login_history` VALUES (23, '2020年01月27日 16:32:58', 'Chrome', 'PC端', '密码登入', 2);
INSERT INTO `login_history` VALUES (24, '2020年01月27日 16:45:17', 'Chrome', 'PC端', '密码登入', 2);
INSERT INTO `login_history` VALUES (25, '2020年01月27日 17:11:37', 'Chrome', 'PC端', '密码登入', 2);
INSERT INTO `login_history` VALUES (26, '2020年01月27日 20:40:37', 'Chrome', 'PC端', '密码登入', 2);
INSERT INTO `login_history` VALUES (27, '2020年01月27日 20:49:54', 'Chrome', 'PC端', '密码登入', 2);
INSERT INTO `login_history` VALUES (28, '2020年01月28日 12:06:28', 'FF', 'PC端', '密码登入', 3);
INSERT INTO `login_history` VALUES (29, '2020年01月28日 12:18:28', 'FF', 'PC端', '密码登入', 3);
INSERT INTO `login_history` VALUES (30, '2020年01月28日 12:59:01', 'FF', 'PC端', '密码登入', 3);
INSERT INTO `login_history` VALUES (31, '2020年01月28日 20:54:59', 'Chrome', 'PC端', '密码登入', 2);
INSERT INTO `login_history` VALUES (32, '2020年01月29日 13:02:46', 'FF', 'PC端', '密码登入', 3);
INSERT INTO `login_history` VALUES (33, '2020年01月29日 21:37:07', 'Chrome', 'PC端', '密码登入', 2);
INSERT INTO `login_history` VALUES (34, '2020年01月30日 11:10:27', 'Chrome', 'PC端', '密码登入', 2);
INSERT INTO `login_history` VALUES (35, '2020年01月30日 13:49:26', 'Chrome', 'PC端', '密码登入', 2);
INSERT INTO `login_history` VALUES (36, '2020年01月30日 15:18:28', 'FF', 'PC端', '密码登入', 3);
INSERT INTO `login_history` VALUES (37, '2020年01月30日 15:20:10', 'FF', 'PC端', '密码登入', 3);
INSERT INTO `login_history` VALUES (38, '2020年01月30日 22:07:42', 'Chrome', 'PC端', '密码登入', 2);
INSERT INTO `login_history` VALUES (39, '2020年01月31日 14:22:36', 'FF', 'PC端', '密码登入', 3);
INSERT INTO `login_history` VALUES (40, '2020年01月31日 16:00:47', 'Chrome', 'PC端', '密码登入', 2);
INSERT INTO `login_history` VALUES (41, '2020年01月31日 16:00:49', 'FF', 'PC端', '密码登入', 3);
INSERT INTO `login_history` VALUES (42, '2020年01月31日 22:31:59', 'Chrome', 'PC端', '密码登入', 2);
INSERT INTO `login_history` VALUES (43, '2020年02月01日 11:30:40', 'Chrome', 'PC端', '密码登入', 2);
INSERT INTO `login_history` VALUES (44, '2020年02月01日 11:36:37', 'FF', 'PC端', '密码登入', 3);
INSERT INTO `login_history` VALUES (45, '2020年02月01日 12:34:45', 'Chrome', 'PC端', '密码登入', 2);
INSERT INTO `login_history` VALUES (46, '2020年02月01日 18:16:40', 'FF', 'PC端', '密码登入', 2);
INSERT INTO `login_history` VALUES (47, '2020年02月01日 18:23:19', 'FF', 'PC端', '密码登入', 3);

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `to` int(11) NOT NULL,
  `from` int(11) NOT NULL,
  `message` varchar(8000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `date` datetime(0) NOT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `flag` int(11) NULL DEFAULT NULL COMMENT '0：文件；\r\n1：消息;\r\n2：好友通知;\r\n3：好友添加完成;\r\n4：拒绝好友请求',
  `isRead` int(11) NULL DEFAULT NULL COMMENT '0:已读；1：未读',
  `fileItem` varchar(10000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES (1, 2, 3, '789', '2020-01-02 15:19:18', 1, 0, NULL);
INSERT INTO `message` VALUES (2, 2, 3, '654', '2019-12-01 15:22:00', 1, 0, NULL);
INSERT INTO `message` VALUES (3, 3, 2, '7894', '2020-01-28 15:23:32', 1, 0, NULL);
INSERT INTO `message` VALUES (4, 3, 2, '68908', '2020-01-15 15:26:07', 1, 0, NULL);
INSERT INTO `message` VALUES (5, 2, 3, '464', '2019-10-01 15:41:54', 1, 0, NULL);
INSERT INTO `message` VALUES (6, 3, 2, '7984', '2020-01-01 15:45:14', 1, 0, NULL);
INSERT INTO `message` VALUES (7, 3, 2, '推开他#NO;', '2020-01-11 17:12:27', 1, 0, NULL);
INSERT INTO `message` VALUES (8, 3, 2, '#NO;', '2020-01-28 17:12:35', 1, 0, NULL);
INSERT INTO `message` VALUES (9, 3, 2, '#弱;', '2020-01-28 17:12:40', 1, 0, NULL);
INSERT INTO `message` VALUES (10, 3, 2, '#足球;', '2020-01-28 17:12:48', 1, 0, NULL);
INSERT INTO `message` VALUES (11, 3, 2, '#困;', '2020-01-19 17:13:16', 1, 0, NULL);
INSERT INTO `message` VALUES (12, 3, 2, '#菜刀;', '2020-01-28 17:13:20', 1, 0, NULL);
INSERT INTO `message` VALUES (13, 3, 2, '#闪电;', '2020-01-05 17:13:23', 1, 0, NULL);
INSERT INTO `message` VALUES (14, 3, 2, '#微笑;#撇嘴;#色;#发呆;#得意;#流泪;#害羞;#闭嘴;#饥饿;#困;#惊恐;#流汗;#憨笑;#大兵;#奋斗;#咒骂;', '2020-01-28 17:13:42', 1, 0, NULL);
INSERT INTO `message` VALUES (15, 3, 2, '#疑问;#嘘;#晕;#折磨;#衰;#骷髅;#敲打;#再见;#擦汗;#抠鼻;#鼓掌;#糗大了;#坏笑;', '2020-01-20 17:13:54', 1, 0, NULL);
INSERT INTO `message` VALUES (16, 2, 3, '#磕头;#回头;#跳绳;#挥手;#激动;#街舞;#左太极;#右太极;#转圈;#怄火;#发抖;#跳跳;#飞吻;#爱情;#OK;#NO;#弱;#握手;#胜利;#抱拳;#勾引;#拳头;#差劲;#爱你;#强;', '2020-01-28 17:14:24', 1, 0, NULL);
INSERT INTO `message` VALUES (17, 2, 3, '#瓢虫;#便便;#月亮;#太阳;#礼物;#拥抱;#强;', '2020-01-24 17:14:41', 1, 0, NULL);
INSERT INTO `message` VALUES (18, 2, 3, '#凋谢;#示爱;#爱心;#心碎;#蛋糕;#闪电;#炸弹;#刀;#玫瑰;#猪头;#饭;#咖啡;#乒乓;#篮球;#啤酒;#西瓜;', '2020-01-28 17:14:54', 1, 0, NULL);
INSERT INTO `message` VALUES (19, 3, 2, '#疑问;#擦汗;#鄙视;#抠鼻;#委屈;#鼓掌;#快哭了;#糗大了;#阴险;#坏笑;#亲亲;#左哼哼;#吓;#右哼哼;#可怜;#哈欠;#菜刀;', '2019-11-01 17:15:26', 1, 0, NULL);
INSERT INTO `message` VALUES (20, 3, 2, 'planet', '2020-01-29 19:05:39', 1, 0, NULL);
INSERT INTO `message` VALUES (22, 2, 3, '898', '2020-01-30 15:32:22', 1, 0, NULL);
INSERT INTO `message` VALUES (24, 3, 2, '797', '2020-01-30 15:36:12', 1, 0, NULL);
INSERT INTO `message` VALUES (31, 2, 3, '{\"id\":1,\"name\":\"my\",\"path\":\"/F:/mavenProject2/spring-cloud-file-admin/file-service/target/classes/static/file/common/my\",\"parentName\":\"common\",\"absolutePath\":\"/F:/mavenProject2/spring-cloud-file-admin/file-service/target/classes/static/file/common\",\"url\":\"http://localhost:9090/static/file/common/my\",\"dateMillis\":1579074691217,\"date\":\"2020-01-15 15:51\",\"size\":\"-\",\"realSize\":0,\"isFolder\":true}', '2020-01-30 22:44:15', 0, 0, NULL);
INSERT INTO `message` VALUES (32, 3, 2, '{\"id\":82,\"name\":\"基于web开发技术微服务云盘管理系统的实现与设计.docx\",\"path\":\"/F:/mavenProject2/spring-cloud-file-admin/file-service/target/classes/static/file/common/doc/基于web开发技术微服务云盘管理系统的实现与设计.docx\",\"parentName\":\"doc\",\"absolutePath\":\"/F:/mavenProject2/spring-cloud-file-admin/file-service/target/classes/static/file/common/do\",\"url\":\"http://localhost:9090/static/file/common/doc/基于web开发技术微服务云盘管理系统的实现与设计.docx\",\"dateMillis\":1579243306221,\"date\":\"2020-01-17 14:41\",\"size\":\"2.55MB\",\"realSize\":2673092,\"isFolder\":false}', '2020-01-31 11:25:18', 0, 0, NULL);
INSERT INTO `message` VALUES (33, 3, 2, '{\"id\":2,\"name\":\"pic\",\"path\":\"/F:/mavenProject2/spring-cloud-file-admin/file-service/target/classes/static/file/common/pic\",\"parentName\":\"common\",\"absolutePath\":\"/F:/mavenProject2/spring-cloud-file-admin/file-service/target/classes/static/file/common\",\"url\":\"http://localhost:9090/static/file/common/pic\",\"dateMillis\":1579242524134,\"date\":\"2020-01-17 14:28\",\"size\":\"-\",\"realSize\":4096,\"isFolder\":true}', '2020-01-31 13:51:11', 0, 0, NULL);

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
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (2, '黄炽鑫', '$2a$10$4d4LJSYH3z5UqYwzwTGlZuX7LlbHGWeWu4D0OhL7mriiywe3Z/tPS', '2020年01月15日 20:53:39', '3144933378@qq.com', NULL, '18370671294');
INSERT INTO `user` VALUES (3, 'aways', '$2a$10$tkqh5dVimXWLxcFsplw5i.37xFhZRjuBscfSt8I2SL0BNI3LrShzO', '2020年01月20日 12:49:38', 'chixin_coder@163.com', 'http://localhost:8763/static/head/img7.jpg', '15170812602');

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
INSERT INTO `user_roles` VALUES (2, 1);
INSERT INTO `user_roles` VALUES (3, 2);

SET FOREIGN_KEY_CHECKS = 1;
