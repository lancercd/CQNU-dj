/*
Navicat MySQL Data Transfer

Source Server         : xampp
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2021-02-10 20:51:04
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `tb_tk_admin`
-- ----------------------------
DROP TABLE IF EXISTS `tb_tk_admin`;
CREATE TABLE `tb_tk_admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '管理员id',
  `admin_name` varchar(50) DEFAULT NULL COMMENT '管理员名',
  `admin_pwd` varchar(50) DEFAULT NULL COMMENT '密码',
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='管理员表';

-- ----------------------------
-- Records of tb_tk_admin
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_tk_appform`
-- ----------------------------
DROP TABLE IF EXISTS `tb_tk_appform`;
CREATE TABLE `tb_tk_appform` (
  `appf_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '志愿书id',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `appf_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '提交时间',
  `appf_state` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态',
  `appf_count` int(11) DEFAULT NULL COMMENT '志愿书次数',
  `appf_content` varchar(255) DEFAULT NULL COMMENT '志愿书内容',
  PRIMARY KEY (`appf_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='志愿书表';

-- ----------------------------
-- Records of tb_tk_appform
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_tk_application`
-- ----------------------------
DROP TABLE IF EXISTS `tb_tk_application`;
CREATE TABLE `tb_tk_application` (
  `app_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '申请书id',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `app_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '提交时间',
  `app_state` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态',
  `app_count` int(11) DEFAULT NULL COMMENT '申请书次数',
  PRIMARY KEY (`app_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='申请书表';

-- ----------------------------
-- Records of tb_tk_application
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_tk_atsurpport`
-- ----------------------------
DROP TABLE IF EXISTS `tb_tk_atsurpport`;
CREATE TABLE `tb_tk_atsurpport` (
  `att_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '推荐id',
  `att_state` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态（是否推荐积极分子）',
  `att_remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `att_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '推荐时间',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `att_state2` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态2（是否具有入党资格)',
  PRIMARY KEY (`att_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='推荐积极分子表';

-- ----------------------------
-- Records of tb_tk_atsurpport
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_tk_branch`
-- ----------------------------
DROP TABLE IF EXISTS `tb_tk_branch`;
CREATE TABLE `tb_tk_branch` (
  `branch_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '支部id',
  `branch_name` varchar(50) DEFAULT NULL COMMENT '支部名字',
  PRIMARY KEY (`branch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='所属党支部表';

-- ----------------------------
-- Records of tb_tk_branch
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_tk_convert`
-- ----------------------------
DROP TABLE IF EXISTS `tb_tk_convert`;
CREATE TABLE `tb_tk_convert` (
  `cont_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '转正书id',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `cont_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '提交时间',
  `cont_state` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '审核进度(状态)',
  `cont_content` varchar(255) DEFAULT NULL COMMENT '提交内容',
  PRIMARY KEY (`cont_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='转正申请书表';

-- ----------------------------
-- Records of tb_tk_convert
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_tk_develpobj`
-- ----------------------------
DROP TABLE IF EXISTS `tb_tk_develpobj`;
CREATE TABLE `tb_tk_develpobj` (
  `dobj_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '发展对象id',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `dobj_state` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态（是否称为发展对象）',
  `dobj_mark` varchar(255) DEFAULT NULL COMMENT '备注',
  `dobj_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '时间',
  PRIMARY KEY (`dobj_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='发展对象表';

-- ----------------------------
-- Records of tb_tk_develpobj
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_tk_discuss`
-- ----------------------------
DROP TABLE IF EXISTS `tb_tk_discuss`;
CREATE TABLE `tb_tk_discuss` (
  `appf_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '志愿书id',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `appf_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '提交时间',
  `appf_state` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态',
  `appf_count` int(11) DEFAULT NULL COMMENT '志愿书次数',
  `appf_content` varchar(255) DEFAULT NULL COMMENT '志愿书内容',
  PRIMARY KEY (`appf_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='志愿书表';

-- ----------------------------
-- Records of tb_tk_discuss
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_tk_dmemship`
-- ----------------------------
DROP TABLE IF EXISTS `tb_tk_dmemship`;
CREATE TABLE `tb_tk_dmemship` (
  `dship_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '联系人id',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `dship_name` varchar(25) DEFAULT NULL COMMENT '联系人姓名',
  `dship_phone` char(11) DEFAULT NULL COMMENT '联系人电话',
  `dship_message` varchar(255) DEFAULT NULL COMMENT '联系人信息',
  PRIMARY KEY (`dship_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='入党联系人表';

-- ----------------------------
-- Records of tb_tk_dmemship
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_tk_dreference`
-- ----------------------------
DROP TABLE IF EXISTS `tb_tk_dreference`;
CREATE TABLE `tb_tk_dreference` (
  `dref_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '党委备案id',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `dref_state` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '备案状态',
  `dref_mark` varchar(255) DEFAULT NULL COMMENT '备注',
  `dref_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '时间',
  `is_application` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '入党申请书状态',
  `is_talk` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '入党积极分子谈话表状态',
  `is_report` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '思想汇报状态',
  `is_volun` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '入党志愿书状态',
  `is_synth` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '综合材料政审状态',
  `is_inspect` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '入党积极分子考察表',
  `is_convert` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '转正申请状态',
  PRIMARY KEY (`dref_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='党委备案表';

-- ----------------------------
-- Records of tb_tk_dreference
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_tk_eadacord`
-- ----------------------------
DROP TABLE IF EXISTS `tb_tk_eadacord`;
CREATE TABLE `tb_tk_eadacord` (
  `eacord_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '审批记录id',
  `user_id1` int(11) DEFAULT NULL COMMENT '用户id',
  `dref_id` int(11) DEFAULT NULL COMMENT '备案id',
  `eacord_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '审批时间',
  `user_id2` int(11) DEFAULT NULL COMMENT '审批人id',
  `eacord_state` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否通过',
  PRIMARY KEY (`eacord_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='审批记录表';

-- ----------------------------
-- Records of tb_tk_eadacord
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_tk_file`
-- ----------------------------
DROP TABLE IF EXISTS `tb_tk_file`;
CREATE TABLE `tb_tk_file` (
  `file_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '归档id',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`file_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='材料归档表';

-- ----------------------------
-- Records of tb_tk_file
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_tk_lecturecord`
-- ----------------------------
DROP TABLE IF EXISTS `tb_tk_lecturecord`;
CREATE TABLE `tb_tk_lecturecord` (
  `lcord_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '记录id',
  `lcord_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '记录时间',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `lcord_state` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '考勤状态',
  `lcord_grade` int(20) DEFAULT NULL COMMENT '考试成绩',
  `lcord_pass` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否合格',
  PRIMARY KEY (`lcord_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='党课培训记录表';

-- ----------------------------
-- Records of tb_tk_lecturecord
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_tk_oath`
-- ----------------------------
DROP TABLE IF EXISTS `tb_tk_oath`;
CREATE TABLE `tb_tk_oath` (
  `oath_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '宣誓id',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `oath_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '宣誓时间',
  `oath_state` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否宣誓',
  `oath_content` varchar(255) DEFAULT NULL COMMENT '宣誓内容',
  PRIMARY KEY (`oath_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='入党宣誓表';

-- ----------------------------
-- Records of tb_tk_oath
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_tk_partymember`
-- ----------------------------
DROP TABLE IF EXISTS `tb_tk_partymember`;
CREATE TABLE `tb_tk_partymember` (
  `pm_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '党员id',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `pm_from` int(11) DEFAULT NULL COMMENT '所属党支部',
  `pm_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '入党时间',
  PRIMARY KEY (`pm_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='党员信息表';

-- ----------------------------
-- Records of tb_tk_partymember
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_tk_political`
-- ----------------------------
DROP TABLE IF EXISTS `tb_tk_political`;
CREATE TABLE `tb_tk_political` (
  `pol_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '政审id',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `pol_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '政审时间',
  `pol_content` varchar(255) DEFAULT NULL COMMENT '政审内容',
  `pol_state` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '政审状态',
  PRIMARY KEY (`pol_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='政审表';

-- ----------------------------
-- Records of tb_tk_political
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_tk_sendtalk`
-- ----------------------------
DROP TABLE IF EXISTS `tb_tk_sendtalk`;
CREATE TABLE `tb_tk_sendtalk` (
  `st_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '谈话id',
  `user_id1` int(11) DEFAULT NULL COMMENT '被谈话用户id',
  `st_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '谈话时间',
  `st_topic` varchar(255) DEFAULT NULL COMMENT '谈话主题',
  `user_id2` int(11) DEFAULT NULL COMMENT '谈话用户id',
  `st_content` varchar(255) DEFAULT NULL COMMENT '证明材料',
  PRIMARY KEY (`st_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='党委派人谈话表';

-- ----------------------------
-- Records of tb_tk_sendtalk
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_tk_talkrecord`
-- ----------------------------
DROP TABLE IF EXISTS `tb_tk_talkrecord`;
CREATE TABLE `tb_tk_talkrecord` (
  `tkd_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '谈话记录id',
  `tkd_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '谈话时间',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `tkd_content` varchar(255) DEFAULT NULL COMMENT '谈话内容',
  PRIMARY KEY (`tkd_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='谈话记录表';

-- ----------------------------
-- Records of tb_tk_talkrecord
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_tk_thoureport`
-- ----------------------------
DROP TABLE IF EXISTS `tb_tk_thoureport`;
CREATE TABLE `tb_tk_thoureport` (
  `thport_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '汇报id',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `app_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '提交时间',
  `thport_content` varchar(255) DEFAULT NULL COMMENT '内容',
  `thport_state` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '提交状态',
  `thport_count` int(11) DEFAULT NULL COMMENT '提交次数',
  PRIMARY KEY (`thport_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='思想汇报表';

-- ----------------------------
-- Records of tb_tk_thoureport
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_tk_tnrecord`
-- ----------------------------
DROP TABLE IF EXISTS `tb_tk_tnrecord`;
CREATE TABLE `tb_tk_tnrecord` (
  `tncord_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '记录id',
  `tncord_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '考察时间',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `tncord_content` int(255) DEFAULT NULL COMMENT '考察记录',
  PRIMARY KEY (`tncord_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='培养考察记录表';

-- ----------------------------
-- Records of tb_tk_tnrecord
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_tk_totrain`
-- ----------------------------
DROP TABLE IF EXISTS `tb_tk_totrain`;
CREATE TABLE `tb_tk_totrain` (
  `totrain_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '集中培训id',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `totrain_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '培训时间',
  `totrain_content` varchar(255) DEFAULT NULL COMMENT '培训内容',
  `totrain_mainp` varchar(20) DEFAULT NULL COMMENT '培训主持人',
  `totrain_state` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态(是否参加此次培训)',
  PRIMARY KEY (`totrain_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='政审表';

-- ----------------------------
-- Records of tb_tk_totrain
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_tk_trainer`
-- ----------------------------
DROP TABLE IF EXISTS `tb_tk_trainer`;
CREATE TABLE `tb_tk_trainer` (
  `trainer_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '培养人id',
  `trainer_name` varchar(25) DEFAULT NULL COMMENT '培养人姓名',
  `trainer_state` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '身份状态',
  `branch_id` int(11) DEFAULT NULL COMMENT '隶属支部',
  `trainer_phone` char(11) DEFAULT NULL COMMENT '联系方式',
  PRIMARY KEY (`trainer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='培养人表';

-- ----------------------------
-- Records of tb_tk_trainer
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_tk_user`
-- ----------------------------
DROP TABLE IF EXISTS `tb_tk_user`;
CREATE TABLE `tb_tk_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `user_phone` char(11) DEFAULT NULL COMMENT '手机号',
  `user_cid` varchar(50) DEFAULT NULL COMMENT '身份证号',
  `user_sid` char(15) DEFAULT NULL COMMENT '学号',
  `user_name` varchar(25) DEFAULT NULL COMMENT '姓名',
  `user_pwd` varchar(255) DEFAULT NULL COMMENT '密码',
  `trainer_id` int(11) DEFAULT NULL COMMENT '培养人id',
  `trainer_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '指定培养人时间',
  `is_pass` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '申请书是否通过',
  `is_att` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否称为推优积极分子',
  `is_allin` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '材料档案是否齐全',
  `is_course` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '党课是否结业',
  `dship_id` int(11) DEFAULT NULL COMMENT '入党联系人',
  `user_sex` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '性别',
  `user_pic` varchar(255) DEFAULT NULL COMMENT '头像',
  `user_mm` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '身份面貌',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of tb_tk_user
-- ----------------------------
