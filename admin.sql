/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : admin

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2019-03-19 23:54:32
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for sys_dict
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict`;
CREATE TABLE `sys_dict` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `value` varchar(100) NOT NULL COMMENT '数据值',
  `label` varchar(100) NOT NULL COMMENT '标签名',
  `type` varchar(100) NOT NULL COMMENT '类型',
  `description` varchar(100) DEFAULT NULL COMMENT '描述',
  `sort_order` int(11) NOT NULL COMMENT '排序（升序）',
  `status` int(1) DEFAULT NULL,
  `parent_id` varchar(64) DEFAULT '0' COMMENT '父级编号',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `del_flag` int(1) DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_dict_value` (`value`) USING BTREE,
  KEY `sys_dict_label` (`label`) USING BTREE,
  KEY `sys_dict_del_flag` (`del_flag`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='字典表';

-- ----------------------------
-- Records of sys_dict
-- ----------------------------
INSERT INTO `sys_dict` VALUES ('09f429a57fa645a3a4c7433c5e77e459', '0', '女', 'gender', '性别', '1', '0', '', 'admin', '2018-12-22 11:04:13', 'admin', '2018-12-22 11:04:13', '0');
INSERT INTO `sys_dict` VALUES ('3340086d047d49169fc09d323cdb196a', 'delete', '删除权限', 'button_type', '按钮权限', '2', '0', '', 'admin', '2018-12-22 11:04:37', 'admin', '2018-12-22 11:04:37', '0');
INSERT INTO `sys_dict` VALUES ('43bdda6c37e4469fbee6af1a78478ca6', 'view', '查看权限', 'button_type', '按钮权限', '0', '0', '', 'admin', '2018-12-22 11:04:37', 'admin', '2018-12-22 11:04:37', '0');
INSERT INTO `sys_dict` VALUES ('510078d5678e4072874d622eef13ebdf', 'add', '添加权限', 'button_type', '按钮权限', '4', '0', '', 'admin', '2018-12-22 12:59:25', null, '2018-12-22 12:59:25', '0');
INSERT INTO `sys_dict` VALUES ('6c661262f95e4e4b90f4228be28fde54', 'edit', '编辑权限', 'button_type', '按钮权限', '1', '0', '', 'admin', '2018-12-22 11:04:37', 'admin', '2018-12-22 11:04:37', '0');
INSERT INTO `sys_dict` VALUES ('72c1b1aa80324289830a1cd2550d5504', '2', '未知', 'gender', '性别', '3', '0', '', 'admin', '2018-12-22 11:04:37', 'admin', '2018-12-22 11:38:35', '0');
INSERT INTO `sys_dict` VALUES ('7b767947d5594235809235baf1e4e946', 'search', '查询权限', 'button_type', '按钮权限', '3', '0', '', 'admin', '2018-12-22 11:04:37', 'admin', '2018-12-22 11:04:37', '0');
INSERT INTO `sys_dict` VALUES ('b6c20628729a4d469520c43ca0c79f12', '1', '男', 'gender', '性别', '1', '0', '', 'admin', '2018-12-22 11:03:57', 'admin', '2018-12-22 11:03:57', '0');

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log` (
  `id` varchar(255) NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` int(11) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `cost_time` int(11) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `ip_info` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `request_param` varchar(255) DEFAULT NULL,
  `request_type` varchar(255) DEFAULT NULL,
  `request_url` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `log_type` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_log
-- ----------------------------
INSERT INTO `sys_log` VALUES ('bae5810b8c7e4d5b8470faf62e9ee524', null, '2018-12-22 17:30:06', '0', null, '2018-12-22 17:30:06', '212', '192.168.0.102', '未知', '登录系统', '{\"password\":\"你是看不见我的\",\"saveLogin\":\"true\",\"username\":\"admin\"}', 'POST', '/gengyu/login', 'admin', '1');
INSERT INTO `sys_log` VALUES ('c3b54f58a74c44298f4baf385b354eb2', null, '2018-12-22 17:30:13', '0', null, '2018-12-22 17:30:13', '258', '192.168.0.102', '未知', '查询用户列表', '{\"officeId\":\"\",\"pageNo\":\"1\",\"sex\":\"\",\"mobile\":\"\",\"pageSize\":\"10\",\"sort\":\"create_time\",\"type\":\"\",\"email\":\"\",\"username\":\"\",\"status\":\"\",\"order\":\"desc\"}', 'GET', '/gengyu/user/getUserList', 'admin', '0');
INSERT INTO `sys_log` VALUES ('892c727695ee4f97864d07f11216df5f', null, '2018-12-22 17:31:12', '0', null, '2018-12-22 17:31:12', '8144', '192.168.0.102', '未知', '添加用户', '{}', 'POST', '/gengyu/user/admin/add', 'admin', '0');
INSERT INTO `sys_log` VALUES ('8a33481015504967be558bce3257413f', null, '2018-12-22 17:32:39', '0', null, '2018-12-22 17:32:39', '557', '192.168.0.102', '未知', '查询用户列表', '{\"officeId\":\"\",\"pageNo\":\"1\",\"sex\":\"\",\"mobile\":\"\",\"pageSize\":\"10\",\"sort\":\"create_time\",\"type\":\"\",\"email\":\"\",\"username\":\"\",\"status\":\"\",\"order\":\"desc\"}', 'GET', '/gengyu/user/getUserList', 'admin', '0');
INSERT INTO `sys_log` VALUES ('ccc1f6aa74484ee5ad832e91d0c6155a', null, '2018-12-22 17:33:18', '0', null, '2018-12-22 17:33:18', '5803', '192.168.0.102', '未知', '添加用户', '{}', 'POST', '/gengyu/user/admin/add', 'admin', '0');
INSERT INTO `sys_log` VALUES ('5e241a940f21423d9bf131859b196fb2', null, '2018-12-22 17:33:18', '0', null, '2018-12-22 17:33:18', '134', '192.168.0.102', '未知', '查询用户列表', '{\"officeId\":\"\",\"pageNo\":\"1\",\"sex\":\"\",\"mobile\":\"\",\"pageSize\":\"10\",\"sort\":\"create_time\",\"type\":\"\",\"email\":\"\",\"username\":\"\",\"status\":\"\",\"order\":\"desc\"}', 'GET', '/gengyu/user/getUserList', 'admin', '0');
INSERT INTO `sys_log` VALUES ('32af46baed2045a9ac42c807ebf8e9ec', null, '2018-12-22 17:33:31', '0', null, '2018-12-22 17:33:31', '274', '192.168.0.102', '未知', '登录系统', '{\"password\":\"你是看不见我的\",\"saveLogin\":\"true\",\"username\":\"hugd\"}', 'POST', '/gengyu/login', 'hugd', '1');
INSERT INTO `sys_log` VALUES ('068a37effecd4150ba7c64d309b5c1a3', null, '2018-12-22 17:39:19', '0', null, '2018-12-22 17:39:19', '365', '192.168.0.102', '未知', '查询用户列表', '{\"officeId\":\"\",\"pageNo\":\"1\",\"sex\":\"\",\"mobile\":\"\",\"pageSize\":\"10\",\"sort\":\"create_time\",\"type\":\"\",\"email\":\"\",\"username\":\"\",\"status\":\"\",\"order\":\"desc\"}', 'GET', '/gengyu/user/getUserList', 'hugd', '0');
INSERT INTO `sys_log` VALUES ('64346613638d4e9ca848c561fad38c2e', null, '2018-12-22 17:39:42', '0', null, '2018-12-22 17:39:42', '168', '192.168.0.102', '未知', '用户资料修改', '{}', 'POST', '/gengyu/user/admin/edit', 'hugd', '0');
INSERT INTO `sys_log` VALUES ('39dacf44f7444ae2a82460e9f64912bd', null, '2018-12-22 17:39:42', '0', null, '2018-12-22 17:39:42', '138', '192.168.0.102', '未知', '查询用户列表', '{\"officeId\":\"\",\"pageNo\":\"1\",\"sex\":\"\",\"mobile\":\"\",\"pageSize\":\"10\",\"sort\":\"create_time\",\"type\":\"\",\"email\":\"\",\"username\":\"\",\"status\":\"\",\"order\":\"desc\"}', 'GET', '/gengyu/user/getUserList', 'hugd', '0');
INSERT INTO `sys_log` VALUES ('c86ecf62100e4fef89a55998089afaee', null, '2018-12-22 17:39:47', '0', null, '2018-12-22 17:39:47', '128', '192.168.0.102', '未知', '登录系统', '{\"password\":\"你是看不见我的\",\"saveLogin\":\"true\",\"username\":\"hugd\"}', 'POST', '/gengyu/login', 'hugd', '1');
INSERT INTO `sys_log` VALUES ('d6b2ad56722743738757841c4476ef9c', null, '2018-12-22 17:39:53', '0', null, '2018-12-22 17:39:53', '250', '192.168.0.102', '未知', '查询用户列表', '{\"officeId\":\"\",\"pageNo\":\"1\",\"sex\":\"\",\"mobile\":\"\",\"pageSize\":\"10\",\"sort\":\"create_time\",\"type\":\"\",\"email\":\"\",\"username\":\"\",\"status\":\"\",\"order\":\"desc\"}', 'GET', '/gengyu/user/getUserList', 'hugd', '0');
INSERT INTO `sys_log` VALUES ('1d380e4a855941edb8ce15a84394de71', null, '2018-12-22 17:42:12', '0', null, '2018-12-22 17:42:12', '232', '192.168.0.102', '未知', '登录系统', '{\"password\":\"你是看不见我的\",\"saveLogin\":\"true\",\"username\":\"hugd\"}', 'POST', '/gengyu/login', 'hugd', '1');
INSERT INTO `sys_log` VALUES ('51314d8a9c86406a98ac49fe611984a9', null, '2018-12-22 17:42:15', '0', null, '2018-12-22 17:42:15', '126', '192.168.0.102', '未知', '查询用户列表', '{\"officeId\":\"\",\"pageNo\":\"1\",\"sex\":\"\",\"mobile\":\"\",\"pageSize\":\"10\",\"sort\":\"create_time\",\"type\":\"\",\"email\":\"\",\"username\":\"\",\"status\":\"\",\"order\":\"desc\"}', 'GET', '/gengyu/user/getUserList', 'hugd', '0');
INSERT INTO `sys_log` VALUES ('9017816dd1af4c009e66d242bd1e6d5d', null, '2018-12-22 17:43:00', '0', null, '2018-12-22 17:43:00', '229', '192.168.0.102', '未知', '查询用户列表', '{\"officeId\":\"\",\"pageNo\":\"1\",\"sex\":\"\",\"mobile\":\"\",\"pageSize\":\"10\",\"sort\":\"create_time\",\"type\":\"\",\"email\":\"\",\"username\":\"\",\"status\":\"\",\"order\":\"desc\"}', 'GET', '/gengyu/user/getUserList', 'hugd', '0');
INSERT INTO `sys_log` VALUES ('755941bd27fc4af1bfa0ff597db06993', null, '2018-12-22 17:44:09', '0', null, '2018-12-22 17:44:09', '314', '192.168.0.102', '未知', '查询用户列表', '{\"officeId\":\"\",\"pageNo\":\"1\",\"sex\":\"\",\"mobile\":\"\",\"pageSize\":\"10\",\"sort\":\"create_time\",\"type\":\"\",\"email\":\"\",\"username\":\"\",\"status\":\"\",\"order\":\"desc\"}', 'GET', '/gengyu/user/getUserList', 'hugd', '0');
INSERT INTO `sys_log` VALUES ('4cff83f1dd25482489fa7963289c34ee', null, '2018-12-22 17:44:13', '0', null, '2018-12-22 17:44:13', '138', '192.168.0.102', '未知', '查询用户列表', '{\"officeId\":\"\",\"pageNo\":\"1\",\"sex\":\"\",\"mobile\":\"\",\"pageSize\":\"10\",\"sort\":\"create_time\",\"type\":\"\",\"email\":\"\",\"username\":\"\",\"status\":\"\",\"order\":\"desc\"}', 'GET', '/gengyu/user/getUserList', 'hugd', '0');
INSERT INTO `sys_log` VALUES ('aeff3101adcf4d3ca5e8ba764f3c1a5c', null, '2018-12-22 17:44:17', '0', null, '2018-12-22 17:44:17', '132', '192.168.0.102', '未知', '登录系统', '{\"password\":\"你是看不见我的\",\"saveLogin\":\"true\",\"username\":\"hugd\"}', 'POST', '/gengyu/login', 'hugd', '1');
INSERT INTO `sys_log` VALUES ('3723fd29232d4f45b30110c6e5d9b532', null, '2018-12-22 17:44:21', '0', null, '2018-12-22 17:44:21', '135', '192.168.0.102', '未知', '查询用户列表', '{\"officeId\":\"\",\"pageNo\":\"1\",\"sex\":\"\",\"mobile\":\"\",\"pageSize\":\"10\",\"sort\":\"create_time\",\"type\":\"\",\"email\":\"\",\"username\":\"\",\"status\":\"\",\"order\":\"desc\"}', 'GET', '/gengyu/user/getUserList', 'hugd', '0');
INSERT INTO `sys_log` VALUES ('98a87053dbd0489293df6438fa99c98c', null, '2018-12-22 17:44:24', '0', null, '2018-12-22 17:44:24', '134', '192.168.0.102', '未知', '查询用户列表', '{\"officeId\":\"\",\"pageNo\":\"1\",\"sex\":\"\",\"mobile\":\"\",\"pageSize\":\"10\",\"sort\":\"create_time\",\"type\":\"\",\"email\":\"\",\"username\":\"\",\"status\":\"\",\"order\":\"desc\"}', 'GET', '/gengyu/user/getUserList', 'hugd', '0');
INSERT INTO `sys_log` VALUES ('41dec9ef7dae4c2abdd596825e80becd', null, '2018-12-22 17:44:47', '0', null, '2018-12-22 17:44:47', '296', '192.168.0.102', '未知', '查询用户列表', '{\"officeId\":\"\",\"pageNo\":\"1\",\"sex\":\"\",\"mobile\":\"\",\"pageSize\":\"10\",\"sort\":\"create_time\",\"type\":\"\",\"email\":\"\",\"username\":\"\",\"status\":\"\",\"order\":\"desc\"}', 'GET', '/gengyu/user/getUserList', 'hugd', '0');
INSERT INTO `sys_log` VALUES ('e51b6867f2514c97a12bf30d6d5bdbc5', null, '2018-12-22 17:44:57', '0', null, '2018-12-22 17:44:57', '237', '192.168.0.102', '未知', '查询用户列表', '{\"officeId\":\"\",\"pageNo\":\"1\",\"sex\":\"\",\"mobile\":\"\",\"pageSize\":\"10\",\"sort\":\"create_time\",\"type\":\"\",\"email\":\"\",\"username\":\"\",\"status\":\"\",\"order\":\"desc\"}', 'GET', '/gengyu/user/getUserList', 'hugd', '0');
INSERT INTO `sys_log` VALUES ('76153fe0d98f4d5bb03f734e27730655', null, '2018-12-22 17:45:02', '0', null, '2018-12-22 17:45:02', '228', '192.168.0.102', '未知', '查询用户列表', '{\"officeId\":\"\",\"pageNo\":\"1\",\"sex\":\"\",\"mobile\":\"\",\"pageSize\":\"10\",\"sort\":\"create_time\",\"type\":\"\",\"email\":\"\",\"username\":\"\",\"status\":\"\",\"order\":\"desc\"}', 'GET', '/gengyu/user/getUserList', 'hugd', '0');
INSERT INTO `sys_log` VALUES ('c62257d8f2cd497fabec0d9ecb5a7d4b', null, '2018-12-22 17:45:10', '0', null, '2018-12-22 17:45:10', '240', '192.168.0.102', '未知', '登录系统', '{\"password\":\"你是看不见我的\",\"saveLogin\":\"true\",\"username\":\"hugd\"}', 'POST', '/gengyu/login', 'hugd', '1');
INSERT INTO `sys_log` VALUES ('78c34e1773864cef8af38a751c38302a', null, '2018-12-22 17:45:52', '0', null, '2018-12-22 17:45:52', '251', '192.168.0.102', '未知', '登录系统', '{\"password\":\"你是看不见我的\",\"saveLogin\":\"true\",\"username\":\"hugd\"}', 'POST', '/gengyu/login', 'hugd', '1');
INSERT INTO `sys_log` VALUES ('8bb85347dc4c4174867c19abce22c455', null, '2018-12-22 17:45:57', '0', null, '2018-12-22 17:45:57', '124', '192.168.0.102', '未知', '查询用户列表', '{\"officeId\":\"\",\"pageNo\":\"1\",\"sex\":\"\",\"mobile\":\"\",\"pageSize\":\"10\",\"sort\":\"create_time\",\"type\":\"\",\"email\":\"\",\"username\":\"\",\"status\":\"\",\"order\":\"desc\"}', 'GET', '/gengyu/user/getUserList', 'hugd', '0');
INSERT INTO `sys_log` VALUES ('dc85ab5ad4214257bb2d37bf0ec7252d', null, '2018-12-22 17:47:33', '0', null, '2018-12-22 17:47:33', '221', '192.168.0.102', '未知', '查询用户列表', '{\"officeId\":\"\",\"pageNo\":\"1\",\"sex\":\"\",\"mobile\":\"\",\"pageSize\":\"10\",\"sort\":\"create_time\",\"type\":\"\",\"email\":\"\",\"username\":\"\",\"status\":\"\",\"order\":\"desc\"}', 'GET', '/gengyu/user/getUserList', 'hugd', '0');
INSERT INTO `sys_log` VALUES ('ab0c4319f4da4b53b3a3b131b7f18150', null, '2018-12-22 17:48:27', '0', null, '2018-12-22 17:48:27', '273', '192.168.0.102', '未知', '登录系统', '{\"password\":\"你是看不见我的\",\"saveLogin\":\"true\",\"username\":\"admin\"}', 'POST', '/gengyu/login', 'admin', '1');
INSERT INTO `sys_log` VALUES ('f251b39ac6aa4b2993ae490fce464a03', null, '2018-12-22 17:51:35', '0', null, '2018-12-22 17:51:35', '237', '192.168.0.102', '未知', '登录系统', '{\"password\":\"你是看不见我的\",\"saveLogin\":\"true\",\"username\":\"admin\"}', 'POST', '/gengyu/login', 'admin', '1');
INSERT INTO `sys_log` VALUES ('3c4f2539745648e2a0d3ed03514219e4', null, '2018-12-22 17:51:48', '0', null, '2018-12-22 17:51:48', '218', '192.168.0.102', '未知', '登录系统', '{\"password\":\"你是看不见我的\",\"saveLogin\":\"true\",\"username\":\"admin\"}', 'POST', '/gengyu/login', 'admin', '1');
INSERT INTO `sys_log` VALUES ('9df0df93669a4d6fb76269d94767e60f', null, '2018-12-22 17:54:10', '0', null, '2018-12-22 17:54:10', '332', '192.168.0.102', '未知', '查询用户列表', '{\"officeId\":\"\",\"pageNo\":\"1\",\"sex\":\"\",\"mobile\":\"\",\"pageSize\":\"10\",\"sort\":\"create_time\",\"type\":\"\",\"email\":\"\",\"username\":\"\",\"status\":\"\",\"order\":\"desc\"}', 'GET', '/gengyu/user/getUserList', 'admin', '0');
INSERT INTO `sys_log` VALUES ('df8c30a610e44e0eb86e621c99cede99', null, '2019-03-19 23:24:30', '0', null, '2019-03-19 23:24:30', '704', '192.168.4.103', '未知', '登录系统', '{\"password\":\"你是看不见我的\",\"username\":\"admin\"}', 'POST', '/admin/login', 'admin', '1');
INSERT INTO `sys_log` VALUES ('462501321f7d4c94b0666c7de565a234', null, '2019-03-19 23:28:41', '0', null, '2019-03-19 23:28:41', '419', '192.168.4.103', '未知', '登录系统', '{\"password\":\"你是看不见我的\",\"username\":\"admin\"}', 'POST', '/admin/login', 'admin', '1');
INSERT INTO `sys_log` VALUES ('f8878e917f174c80964dd67a42100506', null, '2019-03-19 23:30:41', '0', null, '2019-03-19 23:30:41', '703', '192.168.4.103', '未知', '登录系统', '{\"password\":\"你是看不见我的\",\"username\":\"admin\"}', 'POST', '/admin/login', 'admin', '1');
INSERT INTO `sys_log` VALUES ('d2ee9745a0f54961b87f6be5dbe9f30b', null, '2019-03-19 23:31:50', '0', null, '2019-03-19 23:31:50', '672', '192.168.4.103', '未知', '登录系统', '{\"password\":\"你是看不见我的\",\"username\":\"admin\"}', 'POST', '/admin/login', 'admin', '1');
INSERT INTO `sys_log` VALUES ('69b4849995b64d7195b0a4079bf1e257', null, '2019-03-19 23:34:37', '0', null, '2019-03-19 23:34:37', '300', '192.168.4.103', '局域网', '登录系统', '{\"password\":\"你是看不见我的\",\"username\":\"admin\"}', 'POST', '/admin/login', 'admin', '1');
INSERT INTO `sys_log` VALUES ('9e01bd3c95904b95b66670f9d2361145', null, '2019-03-19 23:37:01', '0', null, '2019-03-19 23:37:01', '567', '192.168.4.103', '局域网', '登录系统', '{\"password\":\"你是看不见我的\",\"username\":\"admin\"}', 'POST', '/admin/login', 'admin', '1');
INSERT INTO `sys_log` VALUES ('8826fb50240c426b9a80d855617121d1', null, '2019-03-19 23:37:34', '0', null, '2019-03-19 23:37:34', '81', '192.168.4.103', '局域网', '登录系统', '{\"password\":\"你是看不见我的\",\"username\":\"admin\"}', 'POST', '/admin/login', 'admin', '1');
INSERT INTO `sys_log` VALUES ('bfcc81eb1aba4481b5575d7262fa56dd', null, '2019-03-19 23:40:19', '0', null, '2019-03-19 23:40:19', '344', '192.168.4.103', '局域网', '登录系统', '{\"password\":\"你是看不见我的\",\"username\":\"admin\"}', 'POST', '/admin/login', 'admin', '1');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `id` varchar(255) NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` int(11) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `parent_id` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `sort_order` decimal(10,2) DEFAULT NULL,
  `component` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `button_type` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('5129710648430592', '', '2018-06-04 19:02:29', '0', '', '2018-09-29 23:11:56', '', 'sys', '', '0', '1.00', 'Main', '/sys', '系统管理', 'ios-settings', '1', '', '0', '');
INSERT INTO `sys_menu` VALUES ('5129710648430593', '', '2018-06-04 19:02:32', '0', '', '2018-08-13 15:15:33', '', 'user-manage', '5129710648430592', '0', '1.10', 'sys/user-manage/userManage', 'user-manage', '用户管理', 'md-person', '2', '', '0', '');
INSERT INTO `sys_menu` VALUES ('5129710648430594', '', '2018-06-04 19:02:35', '0', '', '2018-10-13 13:51:36', '', 'role-manage', '5129710648430592', '0', '1.60', 'sys/role-manage/roleManage', 'role-manage', '角色管理', 'md-contacts', '2', '', '0', '');
INSERT INTO `sys_menu` VALUES ('5129710648430595', '', '2018-06-04 19:02:37', '0', '', '2018-09-23 23:32:02', '', 'menu-manage', '5129710648430592', '0', '1.70', 'sys/menu-manage/menuManage', 'menu-manage', '菜单管理', 'md-menu', '2', '', '0', '');
INSERT INTO `sys_menu` VALUES ('15701400130424832', '', '2018-06-03 22:04:06', '0', '', '2018-09-19 22:16:44', '', '', '5129710648430593', '1', '1.11', '', '/user/admin/add*', '添加用户', '', '3', 'add', '0', '');
INSERT INTO `sys_menu` VALUES ('15701915807518720', '', '2018-06-03 22:06:09', '0', '', '2018-06-06 14:46:51', '', '', '5129710648430593', '1', '1.13', '', '/user/admin/disable/**', '禁用用户', '', '3', 'disable', '0', null);
INSERT INTO `sys_menu` VALUES ('15708892205944832', '', '2018-06-03 22:33:52', '0', '', '2018-06-28 16:44:48', '', '', '5129710648430593', '1', '1.14', '', '/user/admin/enable/**', '启用用户', '', '3', 'enable', '0', null);
INSERT INTO `sys_menu` VALUES ('16678126574637056', '', '2018-06-06 14:45:16', '0', '', '2018-09-19 22:16:48', '', '', '5129710648430593', '1', '1.12', '', '/user/admin/edit*', '编辑用户', '', '3', 'edit', '0', '');
INSERT INTO `sys_menu` VALUES ('16678447719911424', '', '2018-06-06 14:46:32', '0', '', '2018-08-10 21:41:16', '', '', '5129710648430593', '1', '1.15', '', '/user/delByIds/**', '删除用户', '', '3', 'delete', '0', '');
INSERT INTO `sys_menu` VALUES ('16687383932047360', '', '2018-06-06 15:22:03', '0', '', '2018-09-19 22:07:34', '', '', '5129710648430594', '1', '1.21', '', '/role/save*', '添加角色', '', '3', 'add', '0', '');
INSERT INTO `sys_menu` VALUES ('16689632049631232', '', '2018-06-06 15:30:59', '0', '', '2018-09-19 22:07:37', '', '', '5129710648430594', '1', '1.22', '', '/role/edit*', '编辑角色', '', '3', 'edit', '0', '');
INSERT INTO `sys_menu` VALUES ('16689745006432256', '', '2018-06-06 15:31:26', '0', '', '2018-08-10 21:41:23', '', '', '5129710648430594', '1', '1.23', '', '/role/delAllByIds/**', '删除角色', '', '3', 'delete', '0', '');
INSERT INTO `sys_menu` VALUES ('16689883993083904', null, '2018-06-06 15:31:59', '0', null, '2018-06-06 15:31:59', null, null, '5129710648430594', '1', '1.24', null, '/role/editRolePerm/**', '分配权限', null, '3', 'editPerm', '0', null);
INSERT INTO `sys_menu` VALUES ('16690313745666048', '', '2018-06-06 15:33:41', '0', '', '2018-09-19 22:07:46', '', '', '5129710648430594', '1', '1.25', '', '/role/setDefault*', '设为默认角色', '', '3', 'setDefault', '0', '');
INSERT INTO `sys_menu` VALUES ('16694861252005888', '', '2018-06-06 15:51:46', '0', '', '2018-09-19 22:07:52', '', '', '5129710648430595', '1', '1.31', '', '/menu/add*', '添加菜单', '', '3', 'add', '0', '');
INSERT INTO `sys_menu` VALUES ('16695107491205120', '', '2018-06-06 15:52:44', '0', '', '2018-09-19 22:07:57', '', '', '5129710648430595', '1', '1.32', '', '/menu/edit*', '编辑菜单', '', '3', 'edit', '0', '');
INSERT INTO `sys_menu` VALUES ('16695243126607872', '', '2018-06-06 15:53:17', '0', 'admin', '2018-08-10 21:41:33', '', '', '5129710648430595', '1', '1.33', '', '/menu/delByIds/**', '删除菜单', '', '3', 'delete', '0', '');
INSERT INTO `sys_menu` VALUES ('39915540965232640', null, '2018-08-09 17:42:28', '0', null, '2018-08-09 17:42:28', null, 'monitor', null, '0', '2.00', 'Main', '/monitor', '系统设置', 'ios-analytics', '1', '', '0', null);
INSERT INTO `sys_menu` VALUES ('054f68ecbdd1497fbedd12f4b2b188d1', null, '2018-12-22 17:51:25', '0', null, '2018-12-22 17:51:25', null, 'system_setting', '39915540965232640', '0', '4.00', 'sys/setting/setting', 'setting/setting', '系统设置', 'ios-cog', '2', '', '0', null);
INSERT INTO `sys_menu` VALUES ('40238597734928384', null, '2018-08-10 15:06:10', '0', null, '2018-08-10 15:06:10', null, 'department-manage', '5129710648430592', '0', '1.20', 'sys/office/Office', 'department-manage', '部门管理', 'md-git-branch', '2', '', '0', null);
INSERT INTO `sys_menu` VALUES ('41363147411427328', '', '2018-08-13 17:34:43', '0', '', '2018-08-20 20:05:21', '', 'log-manage', '39915540965232640', '0', '2.20', 'sys/log-manage/logManage', 'log-manage', '日志管理', 'md-list-box', '2', '', '0', '');
INSERT INTO `sys_menu` VALUES ('41363537456533504', '', '2018-08-13 17:36:16', '0', '', '2018-08-13 17:56:11', '', '', '41363147411427328', '1', '2.11', '', '/log/delByIds/**', '删除日志', '', '3', 'delete', '0', '');
INSERT INTO `sys_menu` VALUES ('41364927394353152', '', '2018-08-13 17:41:48', '0', '', '2018-09-19 22:08:57', '', '', '41363147411427328', '1', '2.12', '', '/log/delAll*', '清空日志', '', '3', 'undefined', '0', '');
INSERT INTO `sys_menu` VALUES ('45235228800716800', '', '2018-08-24 10:01:00', '0', '', '2018-09-19 22:07:23', '', '', '44986029924421632', '1', '1.41', '', '/relate/delByIds*', '删除解绑', '', '3', 'delete', '0', '');
INSERT INTO `sys_menu` VALUES ('45235621697949696', '', '2018-08-24 10:02:33', '0', '', '2018-09-19 22:06:57', '', '', '40238597734928384', '1', '1.21', '', '/office/add*', '添加部门', '', '3', 'add', '0', '');
INSERT INTO `sys_menu` VALUES ('45235787867885568', '', '2018-08-24 10:03:13', '0', '', '2018-09-19 22:07:02', '', '', '40238597734928384', '1', '1.22', '', '/office/edit*', '编辑部门', '', '3', 'edit', '0', '');
INSERT INTO `sys_menu` VALUES ('45235939278065664', null, '2018-08-24 10:03:49', '0', null, '2018-08-24 10:03:49', null, '', '40238597734928384', '1', '1.23', '', '/office/delByIds/*', '删除部门', '', '3', 'delete', '0', null);
INSERT INTO `sys_menu` VALUES ('45236734832676864', '', '2018-08-24 10:06:59', '0', '', '2018-09-19 22:07:07', '', '', '43117268627886080', '1', '1.31', '', '/message/add*', '添加消息', '', '3', 'add', '0', '');
INSERT INTO `sys_menu` VALUES ('45237010692050944', '', '2018-08-24 10:08:04', '0', '', '2018-09-19 22:07:12', '', '', '43117268627886080', '1', '1.32', '', '/message/edit*', '编辑消息', '', '3', 'edit', '0', '');
INSERT INTO `sys_menu` VALUES ('45237170029465600', null, '2018-08-24 10:08:42', '0', null, '2018-08-24 10:08:42', null, '', '43117268627886080', '1', '1.33', '', '/message/delByIds/*', '删除消息', '', '3', 'delete', '0', null);
INSERT INTO `sys_menu` VALUES ('56898976661639168', '', '2018-09-25 14:28:34', '0', '', '2018-09-25 15:12:46', '', '', '5129710648430593', '1', '1.17', '', '/user/importData*', '导入用户', '', '3', 'input', '0', '');
INSERT INTO `sys_menu` VALUES ('b8a7639e9897425caf85f0e08616707e', null, null, '0', null, null, null, 'dict', '5129710648430592', '0', '1.00', 'sys/dict-manage/dictManage', 'dict', '字典管理', 'md-albums', '2', 'add', '0', null);
INSERT INTO `sys_menu` VALUES ('7435c534fd964e60bedd654fa02f3e21', null, null, '0', 'admin', null, null, '', 'b8a7639e9897425caf85f0e08616707e', '1', '1.00', '', 'dict/add', '添加字典', '', '3', 'add', '0', null);
INSERT INTO `sys_menu` VALUES ('9aee9dee2c434ddcad482c062730ef03', 'admin', '2018-12-22 14:04:48', '0', 'admin', '2018-12-22 14:04:48', null, '', 'b8a7639e9897425caf85f0e08616707e', '1', '3.00', '', '无', '删除字典', '', '3', 'delete', '0', null);
INSERT INTO `sys_menu` VALUES ('3467b2a05f224d2fb64055c4b36d18a0', 'admin', '2018-12-22 14:05:41', '0', null, '2018-12-22 14:05:41', null, '', 'b8a7639e9897425caf85f0e08616707e', '1', '1.00', '', '无', '编辑字典', '', '3', 'edit', '0', null);

-- ----------------------------
-- Table structure for sys_office
-- ----------------------------
DROP TABLE IF EXISTS `sys_office`;
CREATE TABLE `sys_office` (
  `id` varchar(255) NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` int(11) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `parent_id` varchar(255) DEFAULT NULL,
  `sort_order` decimal(10,2) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `is_parent` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_office
-- ----------------------------
INSERT INTO `sys_office` VALUES ('5a32ed5e028340b8b9b4749cf2e236ad', null, null, '0', null, null, '5e305db0ae6e4132a25138eae3994acf', '1.00', '0', '研发部', '\0');
INSERT INTO `sys_office` VALUES ('5e305db0ae6e4132a25138eae3994acf', null, null, '0', null, null, '0', '1.00', '0', '耕雨科技', '');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` varchar(255) NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `del_flag` int(11) DEFAULT NULL,
  `default_role` bit(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `data_type` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('496138616573952', '', '2018-04-22 23:03:49', 'admin', '2018-11-15 23:02:59', 'ROLE_ADMIN', '0', '\0', '超级管理员 拥有所有权限', '0');
INSERT INTO `sys_role` VALUES ('d559c3bd0c244cbebef2cb66e35e19c0', null, '2018-12-22 17:38:45', null, '2018-12-22 17:38:45', 'ROLE_USER', '0', '', '普通用户', '0');

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `id` varchar(255) NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` int(11) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `menu_id` varchar(255) DEFAULT NULL,
  `role_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES ('0d374b4193654f0f8efcef5107f8f684', null, '2018-12-22 17:39:17', '0', null, '2018-12-22 17:39:17', '3467b2a05f224d2fb64055c4b36d18a0', 'd559c3bd0c244cbebef2cb66e35e19c0');
INSERT INTO `sys_role_menu` VALUES ('19903f1e067940769a10d74ae981fed3', null, '2018-12-22 17:39:17', '0', null, '2018-12-22 17:39:17', '7435c534fd964e60bedd654fa02f3e21', 'd559c3bd0c244cbebef2cb66e35e19c0');
INSERT INTO `sys_role_menu` VALUES ('e5b43b1b7da942038517a514034f9763', null, '2018-12-22 17:39:17', '0', null, '2018-12-22 17:39:17', '9aee9dee2c434ddcad482c062730ef03', 'd559c3bd0c244cbebef2cb66e35e19c0');
INSERT INTO `sys_role_menu` VALUES ('22b5aad44d0f4dc4b4e3217b5acfade5', null, '2018-12-22 17:39:17', '0', null, '2018-12-22 17:39:17', 'b8a7639e9897425caf85f0e08616707e', 'd559c3bd0c244cbebef2cb66e35e19c0');
INSERT INTO `sys_role_menu` VALUES ('39b8e013045b4dd49e65cfdf5fc3f50c', null, '2018-12-22 17:39:17', '0', null, '2018-12-22 17:39:17', '15701400130424832', 'd559c3bd0c244cbebef2cb66e35e19c0');
INSERT INTO `sys_role_menu` VALUES ('4be7f22a612c4da89d2d4aa69b327ce5', null, '2018-12-22 17:39:17', '0', null, '2018-12-22 17:39:17', '16678126574637056', 'd559c3bd0c244cbebef2cb66e35e19c0');
INSERT INTO `sys_role_menu` VALUES ('b8da47a70524479584a7d3cab4b0e207', null, '2018-12-22 17:39:17', '0', null, '2018-12-22 17:39:17', '15701915807518720', 'd559c3bd0c244cbebef2cb66e35e19c0');
INSERT INTO `sys_role_menu` VALUES ('ef2f84ffd83340e98988c805a6c98f12', null, '2018-12-22 17:39:17', '0', null, '2018-12-22 17:39:17', '15708892205944832', 'd559c3bd0c244cbebef2cb66e35e19c0');
INSERT INTO `sys_role_menu` VALUES ('093e52d86646444d932e68811aeb2992', null, '2018-12-22 17:39:17', '0', null, '2018-12-22 17:39:17', '16678447719911424', 'd559c3bd0c244cbebef2cb66e35e19c0');
INSERT INTO `sys_role_menu` VALUES ('3125cc3b0373484793d0b644ea682a25', null, '2018-12-22 17:39:17', '0', null, '2018-12-22 17:39:17', '56898976661639168', 'd559c3bd0c244cbebef2cb66e35e19c0');
INSERT INTO `sys_role_menu` VALUES ('e14813d7716349beb99151aab8f43dc7', null, '2018-12-22 17:39:17', '0', null, '2018-12-22 17:39:17', '5129710648430593', 'd559c3bd0c244cbebef2cb66e35e19c0');
INSERT INTO `sys_role_menu` VALUES ('5080a623e86f4d6cad5819231370e1d1', null, '2018-12-22 17:39:17', '0', null, '2018-12-22 17:39:17', '40238597734928384', 'd559c3bd0c244cbebef2cb66e35e19c0');
INSERT INTO `sys_role_menu` VALUES ('4bb9e1a5de074a089691b4d94fc22f79', null, '2018-12-22 17:39:17', '0', null, '2018-12-22 17:39:17', '45235939278065664', 'd559c3bd0c244cbebef2cb66e35e19c0');
INSERT INTO `sys_role_menu` VALUES ('6eea6e460aee4506b205d19274ea613c', null, '2018-12-22 17:39:17', '0', null, '2018-12-22 17:39:17', '45235787867885568', 'd559c3bd0c244cbebef2cb66e35e19c0');
INSERT INTO `sys_role_menu` VALUES ('64837094b85d47e38c90b441360a5d25', null, '2018-12-22 17:39:17', '0', null, '2018-12-22 17:39:17', '45235621697949696', 'd559c3bd0c244cbebef2cb66e35e19c0');
INSERT INTO `sys_role_menu` VALUES ('331667f1b8354750973077d14eb2a3ef', null, '2018-12-22 17:39:17', '0', null, '2018-12-22 17:39:17', '16687383932047360', 'd559c3bd0c244cbebef2cb66e35e19c0');
INSERT INTO `sys_role_menu` VALUES ('cbedca128e714d0782d6de0499bdd2b2', null, '2018-12-22 17:39:17', '0', null, '2018-12-22 17:39:17', '16689632049631232', 'd559c3bd0c244cbebef2cb66e35e19c0');
INSERT INTO `sys_role_menu` VALUES ('c4f83b405023420184654a1c7e03d6f8', null, '2018-12-22 17:39:17', '0', null, '2018-12-22 17:39:17', '16689745006432256', 'd559c3bd0c244cbebef2cb66e35e19c0');
INSERT INTO `sys_role_menu` VALUES ('f7a240c3335d4783a2444c78c9dcfb75', null, '2018-12-22 17:39:17', '0', null, '2018-12-22 17:39:17', '16689883993083904', 'd559c3bd0c244cbebef2cb66e35e19c0');
INSERT INTO `sys_role_menu` VALUES ('45fa43ea9fac4e12b56d7e143287bd2b', null, '2018-12-22 17:39:17', '0', null, '2018-12-22 17:39:17', '16690313745666048', 'd559c3bd0c244cbebef2cb66e35e19c0');
INSERT INTO `sys_role_menu` VALUES ('d1544e045dee45efb81aca7a3ce742df', null, '2018-12-22 17:39:17', '0', null, '2018-12-22 17:39:17', '5129710648430594', 'd559c3bd0c244cbebef2cb66e35e19c0');
INSERT INTO `sys_role_menu` VALUES ('102a0c3a302e4320a4e554532008b825', null, '2018-12-22 17:39:17', '0', null, '2018-12-22 17:39:17', '16694861252005888', 'd559c3bd0c244cbebef2cb66e35e19c0');
INSERT INTO `sys_role_menu` VALUES ('cd38a57f32ec4b9d822c761e0e554851', null, '2018-12-22 17:39:17', '0', null, '2018-12-22 17:39:17', '16695107491205120', 'd559c3bd0c244cbebef2cb66e35e19c0');
INSERT INTO `sys_role_menu` VALUES ('b39bd384cff24f33afe0358da26fc04f', null, '2018-12-22 17:39:17', '0', null, '2018-12-22 17:39:17', '16695243126607872', 'd559c3bd0c244cbebef2cb66e35e19c0');
INSERT INTO `sys_role_menu` VALUES ('242c32adc4b54cc78b4797803f5675c7', null, '2018-12-22 17:39:17', '0', null, '2018-12-22 17:39:17', '5129710648430595', 'd559c3bd0c244cbebef2cb66e35e19c0');
INSERT INTO `sys_role_menu` VALUES ('a32c26c9ad3b4ca6987dc66f3ac7f423', null, '2018-12-22 17:39:17', '0', null, '2018-12-22 17:39:17', '5129710648430592', 'd559c3bd0c244cbebef2cb66e35e19c0');
INSERT INTO `sys_role_menu` VALUES ('10bb64c27d7f484a9d81e0e1ffc86807', null, '2018-12-22 17:54:17', '0', null, '2018-12-22 17:54:17', '7435c534fd964e60bedd654fa02f3e21', '496138616573952');
INSERT INTO `sys_role_menu` VALUES ('c8536b7cb84345a69984734b2edbfe29', null, '2018-12-22 17:54:17', '0', null, '2018-12-22 17:54:17', '3467b2a05f224d2fb64055c4b36d18a0', '496138616573952');
INSERT INTO `sys_role_menu` VALUES ('fa6415f767eb433caa5d893e45304e5b', null, '2018-12-22 17:54:17', '0', null, '2018-12-22 17:54:17', 'b8a7639e9897425caf85f0e08616707e', '496138616573952');
INSERT INTO `sys_role_menu` VALUES ('910068b54352426f9435cf636793dbd0', null, '2018-12-22 17:54:17', '0', null, '2018-12-22 17:54:17', '9aee9dee2c434ddcad482c062730ef03', '496138616573952');
INSERT INTO `sys_role_menu` VALUES ('9fd68b4dc6804b80b53c511171281cbb', null, '2018-12-22 17:54:17', '0', null, '2018-12-22 17:54:17', '15701400130424832', '496138616573952');
INSERT INTO `sys_role_menu` VALUES ('cd766ed830c0475f80bf8f481754387a', null, '2018-12-22 17:54:17', '0', null, '2018-12-22 17:54:17', '16678126574637056', '496138616573952');
INSERT INTO `sys_role_menu` VALUES ('fb1d93ef509d497a823c0616ae20e8cc', null, '2018-12-22 17:54:17', '0', null, '2018-12-22 17:54:17', '16689883993083904', '496138616573952');
INSERT INTO `sys_role_menu` VALUES ('8efdf4ac672741018721a0d8e41ac6e1', null, '2018-12-22 17:54:17', '0', null, '2018-12-22 17:54:17', '16689745006432256', '496138616573952');
INSERT INTO `sys_role_menu` VALUES ('4778d2d2ddf0454e882dc33bab6926d0', null, '2018-12-22 17:54:17', '0', null, '2018-12-22 17:54:17', '16689632049631232', '496138616573952');
INSERT INTO `sys_role_menu` VALUES ('288e954887834a4581703f37da2f9f8f', null, '2018-12-22 17:54:17', '0', null, '2018-12-22 17:54:17', '16687383932047360', '496138616573952');
INSERT INTO `sys_role_menu` VALUES ('b5665ece0681467b91281d263f848c5b', null, '2018-12-22 17:54:17', '0', null, '2018-12-22 17:54:17', '40238597734928384', '496138616573952');
INSERT INTO `sys_role_menu` VALUES ('105d8072efc34776a301d0955e40db27', null, '2018-12-22 17:54:17', '0', null, '2018-12-22 17:54:17', '45235939278065664', '496138616573952');
INSERT INTO `sys_role_menu` VALUES ('26477a7719554f7da936237a32c160c4', null, '2018-12-22 17:54:17', '0', null, '2018-12-22 17:54:17', '45235787867885568', '496138616573952');
INSERT INTO `sys_role_menu` VALUES ('b673b5232d32452eb1de4df00cb7fcb0', null, '2018-12-22 17:54:17', '0', null, '2018-12-22 17:54:17', '45235621697949696', '496138616573952');
INSERT INTO `sys_role_menu` VALUES ('6a6576d5836f4ed9ba82d6b7e01726ea', null, '2018-12-22 17:54:17', '0', null, '2018-12-22 17:54:17', '5129710648430593', '496138616573952');
INSERT INTO `sys_role_menu` VALUES ('ee3af28115774a48925be7401ce947d0', null, '2018-12-22 17:54:17', '0', null, '2018-12-22 17:54:17', '56898976661639168', '496138616573952');
INSERT INTO `sys_role_menu` VALUES ('aacfd4b03e164721902749c89f4ca4ee', null, '2018-12-22 17:54:17', '0', null, '2018-12-22 17:54:17', '16678447719911424', '496138616573952');
INSERT INTO `sys_role_menu` VALUES ('d34b6beab4d340cca5d363a1d3d06163', null, '2018-12-22 17:54:17', '0', null, '2018-12-22 17:54:17', '15708892205944832', '496138616573952');
INSERT INTO `sys_role_menu` VALUES ('5b9c016265244232937bfe8360ddf0dd', null, '2018-12-22 17:54:17', '0', null, '2018-12-22 17:54:17', '15701915807518720', '496138616573952');
INSERT INTO `sys_role_menu` VALUES ('2fe7a96f8cbf4c6b90a9ab7c13c065e0', null, '2018-12-22 17:54:17', '0', null, '2018-12-22 17:54:17', '5129710648430594', '496138616573952');
INSERT INTO `sys_role_menu` VALUES ('d57d2bb89faa406ba0e1bcb077b5fd97', null, '2018-12-22 17:54:17', '0', null, '2018-12-22 17:54:17', '16690313745666048', '496138616573952');
INSERT INTO `sys_role_menu` VALUES ('4801da4179ba4a269f2cdd2693cb709a', null, '2018-12-22 17:54:17', '0', null, '2018-12-22 17:54:17', '16695243126607872', '496138616573952');
INSERT INTO `sys_role_menu` VALUES ('fc28cc4ec07a4cc29536c30d0d7a6e52', null, '2018-12-22 17:54:17', '0', null, '2018-12-22 17:54:17', '16695107491205120', '496138616573952');
INSERT INTO `sys_role_menu` VALUES ('b59cb7f75e6640d5873b0cdf76009fac', null, '2018-12-22 17:54:17', '0', null, '2018-12-22 17:54:17', '16694861252005888', '496138616573952');
INSERT INTO `sys_role_menu` VALUES ('59ab44a80ba746c8b16771d59bcd0225', null, '2018-12-22 17:54:17', '0', null, '2018-12-22 17:54:17', '5129710648430595', '496138616573952');
INSERT INTO `sys_role_menu` VALUES ('ca5aabbb7926479dbd14d0194935ce18', null, '2018-12-22 17:54:17', '0', null, '2018-12-22 17:54:17', '5129710648430592', '496138616573952');
INSERT INTO `sys_role_menu` VALUES ('c1041e2124f44d02b809c6a1d3d33a1b', null, '2018-12-22 17:54:17', '0', null, '2018-12-22 17:54:17', '41363147411427328', '496138616573952');
INSERT INTO `sys_role_menu` VALUES ('5ac9c8ed853143708fe30509dd65b4ee', null, '2018-12-22 17:54:17', '0', null, '2018-12-22 17:54:17', '41364927394353152', '496138616573952');
INSERT INTO `sys_role_menu` VALUES ('ccb60f35ed424504a03626d52133b821', null, '2018-12-22 17:54:17', '0', null, '2018-12-22 17:54:17', '41363537456533504', '496138616573952');
INSERT INTO `sys_role_menu` VALUES ('813d33117a734ac5934ff3d6e49e9a8f', null, '2018-12-22 17:54:17', '0', null, '2018-12-22 17:54:17', '39915540965232640', '496138616573952');
INSERT INTO `sys_role_menu` VALUES ('463ab9e55ee445bf89d553519c6bbc55', null, '2018-12-22 17:54:17', '0', null, '2018-12-22 17:54:17', '054f68ecbdd1497fbedd12f4b2b188d1', '496138616573952');

-- ----------------------------
-- Table structure for sys_role_office
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_office`;
CREATE TABLE `sys_role_office` (
  `id` varchar(255) NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` int(11) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `office_id` varchar(255) DEFAULT NULL,
  `role_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role_office
-- ----------------------------

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` varchar(255) NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `avatar` varchar(1000) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `nick_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `sex` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `del_flag` int(11) DEFAULT NULL,
  `office_id` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `pass_strength` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', '', '2018-05-01 16:13:51', 'admin', '2018-11-14 21:52:20', '[\"510000\",\"510100\",\"510104\"]', 'http://p77xsahe9.bkt.clouddn.com/788eb3e78206429eb34fc7cd3e1e46f4.jpg', 'test', '2549575805@qq.com', '18782059038', 'admin', '$2a$10$PS04ecXfknNd3V8d.ymLTObQciapMU4xU8.GADBZZsuTZr7ymnagy', '1', '0', '1', 'admin', '0', '5e305db0ae6e4132a25138eae3994acf', '天府1街', '弱');
INSERT INTO `sys_user` VALUES ('f5a97ee936e441a58b8a4baa2ad41907', null, '2018-12-22 17:33:12', null, '2018-12-22 17:33:12', null, 'https://s1.ax1x.com/2018/05/19/CcdVQP.png', null, '775771672@qq.com', '18302971493', null, '$2a$10$ZmnzEzq.y8dyDKl.GiQIZ.Mu.5DAL5np/eeX5gH/uGbgsnQp117aC', '1', '0', '1', 'hugd', '0', '5e305db0ae6e4132a25138eae3994acf', null, null);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `id` varchar(255) NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` int(11) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `role_id` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('70669807116095488', null, '2018-11-02 14:28:56', '0', null, '2018-11-02 14:28:56', '496138616573952', '1');
INSERT INTO `sys_user_role` VALUES ('3b66cbc5fd024a549553ad53bd986c86', null, '2018-12-22 17:39:42', '0', null, '2018-12-22 17:39:42', 'd559c3bd0c244cbebef2cb66e35e19c0', 'f5a97ee936e441a58b8a4baa2ad41907');
