/*
 Navicat Premium Data Transfer

 Source Server         : dj
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : localhost:3306
 Source Schema         : dj

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 25/02/2021 00:12:04
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tb_tk_admin
-- ----------------------------
DROP TABLE IF EXISTS `tb_tk_admin`;
CREATE TABLE `tb_tk_admin`  (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '管理员id',
  `admin_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '管理员名',
  `admin_pwd` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  PRIMARY KEY (`admin_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '管理员表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tb_tk_appform
-- ----------------------------
DROP TABLE IF EXISTS `tb_tk_appform`;
CREATE TABLE `tb_tk_appform`  (
  `appf_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '志愿书id',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `appf_time` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '提交时间',
  `appf_state` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '状态',
  `appf_count` int(11) NULL DEFAULT NULL COMMENT '志愿书次数',
  `appf_content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '志愿书内容',
  PRIMARY KEY (`appf_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '志愿书表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tb_tk_application
-- ----------------------------
DROP TABLE IF EXISTS `tb_tk_application`;
CREATE TABLE `tb_tk_application`  (
  `app_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '申请书id',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `app_time` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '提交时间',
  `app_state` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '状态',
  `app_count` int(11) NULL DEFAULT NULL COMMENT '申请书次数',
  PRIMARY KEY (`app_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '申请书表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tb_tk_atsurpport
-- ----------------------------
DROP TABLE IF EXISTS `tb_tk_atsurpport`;
CREATE TABLE `tb_tk_atsurpport`  (
  `att_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '推荐id',
  `att_state` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '状态（是否推荐积极分子）',
  `att_remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `att_time` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '推荐时间',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `att_state2` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '状态2（是否具有入党资格)',
  PRIMARY KEY (`att_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '推荐积极分子表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tb_tk_branch
-- ----------------------------
DROP TABLE IF EXISTS `tb_tk_branch`;
CREATE TABLE `tb_tk_branch`  (
  `branch_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '支部id',
  `branch_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '支部名字',
  PRIMARY KEY (`branch_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '所属党支部表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_tk_branch
-- ----------------------------
INSERT INTO `tb_tk_branch` VALUES (1, '第一支部');
INSERT INTO `tb_tk_branch` VALUES (2, '第二支部');
INSERT INTO `tb_tk_branch` VALUES (3, '第三支部');

-- ----------------------------
-- Table structure for tb_tk_convert
-- ----------------------------
DROP TABLE IF EXISTS `tb_tk_convert`;
CREATE TABLE `tb_tk_convert`  (
  `cont_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '转正书id',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `cont_time` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '提交时间',
  `cont_state` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '审核进度(状态)',
  `cont_content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '提交内容',
  PRIMARY KEY (`cont_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '转正申请书表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tb_tk_develpobj
-- ----------------------------
DROP TABLE IF EXISTS `tb_tk_develpobj`;
CREATE TABLE `tb_tk_develpobj`  (
  `dobj_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '发展对象id',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `dobj_state` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '状态（是否称为发展对象）',
  `dobj_mark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `dobj_time` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '时间',
  PRIMARY KEY (`dobj_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '发展对象表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tb_tk_discuss
-- ----------------------------
DROP TABLE IF EXISTS `tb_tk_discuss`;
CREATE TABLE `tb_tk_discuss`  (
  `appf_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '志愿书id',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `appf_time` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '提交时间',
  `appf_state` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '状态',
  `appf_count` int(11) NULL DEFAULT NULL COMMENT '志愿书次数',
  `appf_content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '志愿书内容',
  PRIMARY KEY (`appf_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '志愿书表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tb_tk_dmemship
-- ----------------------------
DROP TABLE IF EXISTS `tb_tk_dmemship`;
CREATE TABLE `tb_tk_dmemship`  (
  `dship_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '联系人id',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `dship_name` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系人姓名',
  `dship_phone` char(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系人电话',
  `dship_message` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系人信息',
  PRIMARY KEY (`dship_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '入党联系人表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tb_tk_dreference
-- ----------------------------
DROP TABLE IF EXISTS `tb_tk_dreference`;
CREATE TABLE `tb_tk_dreference`  (
  `dref_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '党委备案id',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `dref_state` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '备案状态',
  `dref_mark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `dref_time` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '时间',
  `is_application` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '入党申请书状态',
  `is_talk` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '入党积极分子谈话表状态',
  `is_report` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '思想汇报状态',
  `is_volun` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '入党志愿书状态',
  `is_synth` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '综合材料政审状态',
  `is_inspect` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '入党积极分子考察表',
  `is_convert` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '转正申请状态',
  PRIMARY KEY (`dref_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '党委备案表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tb_tk_eadacord
-- ----------------------------
DROP TABLE IF EXISTS `tb_tk_eadacord`;
CREATE TABLE `tb_tk_eadacord`  (
  `eacord_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '审批记录id',
  `user_id1` int(11) NULL DEFAULT NULL COMMENT '用户id',
  `dref_id` int(11) NULL DEFAULT NULL COMMENT '备案id',
  `eacord_time` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '审批时间',
  `user_id2` int(11) NULL DEFAULT NULL COMMENT '审批人id',
  `eacord_state` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否通过',
  PRIMARY KEY (`eacord_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '审批记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tb_tk_file
-- ----------------------------
DROP TABLE IF EXISTS `tb_tk_file`;
CREATE TABLE `tb_tk_file`  (
  `file_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '归档id',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`file_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '材料归档表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tb_tk_lecturecord
-- ----------------------------
DROP TABLE IF EXISTS `tb_tk_lecturecord`;
CREATE TABLE `tb_tk_lecturecord`  (
  `lcord_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '记录id',
  `lcord_time` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '记录时间',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `lcord_state` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '考勤状态',
  `lcord_grade` int(11) NULL DEFAULT NULL COMMENT '考试成绩',
  `lcord_pass` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否合格',
  PRIMARY KEY (`lcord_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '党课培训记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tb_tk_oath
-- ----------------------------
DROP TABLE IF EXISTS `tb_tk_oath`;
CREATE TABLE `tb_tk_oath`  (
  `oath_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '宣誓id',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `oath_time` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '宣誓时间',
  `oath_state` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否宣誓',
  `oath_content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '宣誓内容',
  PRIMARY KEY (`oath_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '入党宣誓表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tb_tk_partymember
-- ----------------------------
DROP TABLE IF EXISTS `tb_tk_partymember`;
CREATE TABLE `tb_tk_partymember`  (
  `pm_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '党员id',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `pm_from` int(11) NULL DEFAULT NULL COMMENT '所属党支部',
  `pm_time` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '入党时间',
  PRIMARY KEY (`pm_id`) USING BTREE,
  INDEX `partymember_branch`(`pm_from`) USING BTREE,
  CONSTRAINT `partymember_branch` FOREIGN KEY (`pm_from`) REFERENCES `tb_tk_branch` (`branch_id`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '党员信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tb_tk_political
-- ----------------------------
DROP TABLE IF EXISTS `tb_tk_political`;
CREATE TABLE `tb_tk_political`  (
  `pol_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '政审id',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `pol_time` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '政审时间',
  `pol_content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '政审内容',
  `pol_state` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '政审状态',
  PRIMARY KEY (`pol_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '政审表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tb_tk_sendtalk
-- ----------------------------
DROP TABLE IF EXISTS `tb_tk_sendtalk`;
CREATE TABLE `tb_tk_sendtalk`  (
  `st_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '谈话id',
  `user_id1` int(11) NULL DEFAULT NULL COMMENT '被谈话用户id',
  `st_time` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '谈话时间',
  `st_topic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '谈话主题',
  `user_id2` int(11) NULL DEFAULT NULL COMMENT '谈话用户id',
  `st_content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '证明材料',
  PRIMARY KEY (`st_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '党委派人谈话表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tb_tk_talkrecord
-- ----------------------------
DROP TABLE IF EXISTS `tb_tk_talkrecord`;
CREATE TABLE `tb_tk_talkrecord`  (
  `tkd_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '谈话记录id',
  `tkd_time` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '谈话时间',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `tkd_content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '谈话内容',
  PRIMARY KEY (`tkd_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '谈话记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tb_tk_thoureport
-- ----------------------------
DROP TABLE IF EXISTS `tb_tk_thoureport`;
CREATE TABLE `tb_tk_thoureport`  (
  `thport_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '汇报id',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `app_time` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '提交时间',
  `thport_content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '内容',
  `thport_state` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '提交状态',
  `thport_count` int(11) NULL DEFAULT NULL COMMENT '提交次数',
  PRIMARY KEY (`thport_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '思想汇报表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tb_tk_tnrecord
-- ----------------------------
DROP TABLE IF EXISTS `tb_tk_tnrecord`;
CREATE TABLE `tb_tk_tnrecord`  (
  `tncord_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '记录id',
  `tncord_time` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '考察时间',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `tncord_content` int(255) NULL DEFAULT NULL COMMENT '考察记录',
  PRIMARY KEY (`tncord_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '培养考察记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tb_tk_totrain
-- ----------------------------
DROP TABLE IF EXISTS `tb_tk_totrain`;
CREATE TABLE `tb_tk_totrain`  (
  `totrain_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '集中培训id',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `totrain_time` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '培训时间',
  `totrain_content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '培训内容',
  `totrain_mainp` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '培训主持人',
  `totrain_state` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '状态(是否参加此次培训)',
  PRIMARY KEY (`totrain_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '政审表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tb_tk_trainer
-- ----------------------------
DROP TABLE IF EXISTS `tb_tk_trainer`;
CREATE TABLE `tb_tk_trainer`  (
  `trainer_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '培养人id',
  `trainer_name` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '培养人姓名',
  `trainer_state` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '身份状态',
  `branch_id` int(11) NULL DEFAULT NULL COMMENT '隶属支部',
  `trainer_phone` char(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系方式',
  PRIMARY KEY (`trainer_id`) USING BTREE,
  INDEX `trainer_branch`(`branch_id`) USING BTREE,
  CONSTRAINT `trainer_branch` FOREIGN KEY (`branch_id`) REFERENCES `tb_tk_branch` (`branch_id`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '培养人表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_tk_trainer
-- ----------------------------
INSERT INTO `tb_tk_trainer` VALUES (1, '123', 0, 3, NULL);

-- ----------------------------
-- Table structure for tb_tk_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_tk_user`;
CREATE TABLE `tb_tk_user`  (
  `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `user_phone` char(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号',
  `user_cid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '身份证号',
  `user_sid` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学号',
  `user_name` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `user_pwd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `trainer_id` int(11) NULL DEFAULT NULL COMMENT '培养人id',
  `trainer_time` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '指定培养人时间',
  `is_pass` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '申请书是否通过',
  `is_att` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否称为推优积极分子',
  `is_allin` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '材料档案是否齐全',
  `is_course` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '党课是否结业',
  `dship_id` int(11) NULL DEFAULT NULL COMMENT '入党联系人',
  `user_sex` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '性别',
  `user_pic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像',
  `user_mm` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '身份面貌',
  PRIMARY KEY (`user_id`) USING BTREE,
  INDEX `user_trainer`(`trainer_id`) USING BTREE,
  CONSTRAINT `user_trainer` FOREIGN KEY (`trainer_id`) REFERENCES `tb_tk_trainer` (`trainer_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
