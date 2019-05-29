/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 80012
Source Host           : localhost:3306
Source Database       : ginadmin

Target Server Type    : MYSQL
Target Server Version : 80012
File Encoding         : 65001

Date: 2019-05-29 23:06:55
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for g_demo
-- ----------------------------
DROP TABLE IF EXISTS `g_demo`;
CREATE TABLE `g_demo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `record_id` varchar(36) DEFAULT NULL,
  `code` varchar(50) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `memo` varchar(200) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `creator` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_g_demo_deleted_at` (`deleted_at`),
  KEY `idx_g_demo_record_id` (`record_id`),
  KEY `idx_g_demo_code` (`code`),
  KEY `idx_g_demo_name` (`name`),
  KEY `idx_g_demo_status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of g_demo
-- ----------------------------

-- ----------------------------
-- Table structure for g_menu
-- ----------------------------
DROP TABLE IF EXISTS `g_menu`;
CREATE TABLE `g_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `record_id` varchar(36) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `sequence` int(11) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `router` varchar(255) DEFAULT NULL,
  `hidden` int(11) DEFAULT NULL,
  `parent_id` varchar(36) DEFAULT NULL,
  `parent_path` varchar(518) DEFAULT NULL,
  `creator` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_g_menu_deleted_at` (`deleted_at`),
  KEY `idx_g_menu_record_id` (`record_id`),
  KEY `idx_g_menu_name` (`name`),
  KEY `idx_g_menu_sequence` (`sequence`),
  KEY `idx_g_menu_hidden` (`hidden`),
  KEY `idx_g_menu_parent_id` (`parent_id`),
  KEY `idx_g_menu_parent_path` (`parent_path`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of g_menu
-- ----------------------------
INSERT INTO `g_menu` VALUES ('1', '2019-05-25 21:30:26', '2019-05-25 21:30:26', null, 'aedf48b7-9057-4acf-8dc2-1942c88b50ba', '首页', '1900000', 'dashboard', '/dashboard', '0', '', '', '');
INSERT INTO `g_menu` VALUES ('2', '2019-05-25 21:30:26', '2019-05-25 21:30:26', null, 'af00d15e-b445-4b2d-926d-2ae11e8e3936', '系统管理', '1100000', 'setting', '/system', '0', '', '', '');
INSERT INTO `g_menu` VALUES ('3', '2019-05-25 21:30:26', '2019-05-25 21:30:26', null, 'd751e7ce-5981-4eef-b05f-391484452f09', '菜单管理', '1190000', 'solution', '/system/menu', '0', 'af00d15e-b445-4b2d-926d-2ae11e8e3936', 'af00d15e-b445-4b2d-926d-2ae11e8e3936', '');
INSERT INTO `g_menu` VALUES ('4', '2019-05-25 21:30:26', '2019-05-25 21:30:26', null, 'd9666564-645b-48f6-ae32-e241f451a45c', '角色管理', '1180000', 'audit', '/system/role', '0', 'af00d15e-b445-4b2d-926d-2ae11e8e3936', 'af00d15e-b445-4b2d-926d-2ae11e8e3936', '');
INSERT INTO `g_menu` VALUES ('5', '2019-05-25 21:30:26', '2019-05-25 21:30:26', null, 'e45bcff6-d2fd-4e10-b7cf-4e3d19ed471d', '用户管理', '1170000', 'user', '/system/user', '0', 'af00d15e-b445-4b2d-926d-2ae11e8e3936', 'af00d15e-b445-4b2d-926d-2ae11e8e3936', '');
INSERT INTO `g_menu` VALUES ('6', '2019-05-27 19:21:22', '2019-05-27 19:23:31', null, 'd32998a6-8cc1-4991-9e30-125eff8b6531', '信徒管理', '1000001', 'dashboard', '/believer_manage', '0', '', '', 'root');
INSERT INTO `g_menu` VALUES ('7', '2019-05-27 19:26:21', '2019-05-27 19:26:21', null, '4db442c3-2150-47eb-a67b-75a11fcfc7b0', '小组管理', '1000000', 'dashboard', '/group_manage', '0', '', '', 'root');
INSERT INTO `g_menu` VALUES ('8', '2019-05-27 19:27:32', '2019-05-27 19:27:32', null, 'edb76232-23eb-44c9-93de-f6941ef559e9', '聚会点管理', '1000000', 'dashboard', '/meeting_point_manage', '0', '', '', 'root');
INSERT INTO `g_menu` VALUES ('9', '2019-05-27 19:28:27', '2019-05-27 19:28:27', null, '1143bc40-9d71-4422-8b92-57d909ae02ca', '行政管理', '1000000', 'dashboard', '/administrative_manage', '0', '', '', 'root');
INSERT INTO `g_menu` VALUES ('10', '2019-05-27 19:30:05', '2019-05-27 19:30:05', null, '8d4f81cc-e5cd-4f6b-aa8d-893aacb3580b', '圣工管理', '1000000', 'dashboard', '/holywork_manage', '0', '', '', 'root');
INSERT INTO `g_menu` VALUES ('11', '2019-05-29 22:56:47', '2019-05-29 22:57:36', null, '9beb29ef-f079-4ae9-8021-60de8afb1323', '信徒管理', '1000000', 'user', '/believer_manage/manage', '0', 'd32998a6-8cc1-4991-9e30-125eff8b6531', 'd32998a6-8cc1-4991-9e30-125eff8b6531', 'root');
INSERT INTO `g_menu` VALUES ('12', '2019-05-29 22:57:59', '2019-05-29 22:57:59', null, '0723a35f-091d-40a4-9390-84e830a701c2', '圣工管理', '1000000', 'setting', '/holywork_manage/manage', '0', '8d4f81cc-e5cd-4f6b-aa8d-893aacb3580b', '8d4f81cc-e5cd-4f6b-aa8d-893aacb3580b', 'root');
INSERT INTO `g_menu` VALUES ('13', '2019-05-29 22:58:22', '2019-05-29 22:58:22', null, '971d31a0-3479-4a99-9871-36366e589988', '行政管理', '1000000', 'user', '/administrative_manage/manage', '0', '1143bc40-9d71-4422-8b92-57d909ae02ca', '1143bc40-9d71-4422-8b92-57d909ae02ca', 'root');
INSERT INTO `g_menu` VALUES ('14', '2019-05-29 22:58:37', '2019-05-29 22:58:37', null, 'b6c8d302-01a9-4a00-847f-b6f5f76c9100', '聚会点管理', '1000000', 'user', '/meeting_point_manage/manage', '0', 'edb76232-23eb-44c9-93de-f6941ef559e9', 'edb76232-23eb-44c9-93de-f6941ef559e9', 'root');
INSERT INTO `g_menu` VALUES ('15', '2019-05-29 22:58:53', '2019-05-29 22:58:53', null, '55713ced-a1ce-4570-aa24-84a41c2fe11a', '小组管理', '1000000', 'user', '/group_manage/manage', '0', '4db442c3-2150-47eb-a67b-75a11fcfc7b0', '4db442c3-2150-47eb-a67b-75a11fcfc7b0', 'root');

-- ----------------------------
-- Table structure for g_menu_action
-- ----------------------------
DROP TABLE IF EXISTS `g_menu_action`;
CREATE TABLE `g_menu_action` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `menu_id` varchar(36) DEFAULT NULL,
  `code` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_g_menu_action_deleted_at` (`deleted_at`),
  KEY `idx_g_menu_action_menu_id` (`menu_id`),
  KEY `idx_g_menu_action_code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of g_menu_action
-- ----------------------------
INSERT INTO `g_menu_action` VALUES ('1', '2019-05-25 21:30:26', '2019-05-25 21:30:26', null, 'd751e7ce-5981-4eef-b05f-391484452f09', 'add', '新增');
INSERT INTO `g_menu_action` VALUES ('2', '2019-05-25 21:30:26', '2019-05-25 21:30:26', null, 'd751e7ce-5981-4eef-b05f-391484452f09', 'edit', '编辑');
INSERT INTO `g_menu_action` VALUES ('3', '2019-05-25 21:30:26', '2019-05-25 21:30:26', null, 'd751e7ce-5981-4eef-b05f-391484452f09', 'del', '删除');
INSERT INTO `g_menu_action` VALUES ('4', '2019-05-25 21:30:26', '2019-05-25 21:30:26', null, 'd751e7ce-5981-4eef-b05f-391484452f09', 'query', '查询');
INSERT INTO `g_menu_action` VALUES ('5', '2019-05-25 21:30:26', '2019-05-25 21:30:26', null, 'd9666564-645b-48f6-ae32-e241f451a45c', 'add', '新增');
INSERT INTO `g_menu_action` VALUES ('6', '2019-05-25 21:30:26', '2019-05-25 21:30:26', null, 'd9666564-645b-48f6-ae32-e241f451a45c', 'edit', '编辑');
INSERT INTO `g_menu_action` VALUES ('7', '2019-05-25 21:30:26', '2019-05-25 21:30:26', null, 'd9666564-645b-48f6-ae32-e241f451a45c', 'del', '删除');
INSERT INTO `g_menu_action` VALUES ('8', '2019-05-25 21:30:26', '2019-05-25 21:30:26', null, 'd9666564-645b-48f6-ae32-e241f451a45c', 'query', '查询');
INSERT INTO `g_menu_action` VALUES ('9', '2019-05-25 21:30:26', '2019-05-25 21:30:26', null, 'e45bcff6-d2fd-4e10-b7cf-4e3d19ed471d', 'add', '新增');
INSERT INTO `g_menu_action` VALUES ('10', '2019-05-25 21:30:26', '2019-05-25 21:30:26', null, 'e45bcff6-d2fd-4e10-b7cf-4e3d19ed471d', 'edit', '编辑');
INSERT INTO `g_menu_action` VALUES ('11', '2019-05-25 21:30:26', '2019-05-25 21:30:26', null, 'e45bcff6-d2fd-4e10-b7cf-4e3d19ed471d', 'del', '删除');
INSERT INTO `g_menu_action` VALUES ('12', '2019-05-25 21:30:26', '2019-05-25 21:30:26', null, 'e45bcff6-d2fd-4e10-b7cf-4e3d19ed471d', 'query', '查询');
INSERT INTO `g_menu_action` VALUES ('13', '2019-05-27 19:21:22', '2019-05-27 19:21:22', '2019-05-27 19:22:25', 'd32998a6-8cc1-4991-9e30-125eff8b6531', '', '');
INSERT INTO `g_menu_action` VALUES ('14', '2019-05-27 19:22:25', '2019-05-27 19:23:31', null, 'd32998a6-8cc1-4991-9e30-125eff8b6531', 'add', '新增');
INSERT INTO `g_menu_action` VALUES ('15', '2019-05-27 19:22:25', '2019-05-27 19:23:31', null, 'd32998a6-8cc1-4991-9e30-125eff8b6531', 'edit', '编辑');
INSERT INTO `g_menu_action` VALUES ('16', '2019-05-27 19:22:25', '2019-05-27 19:23:31', null, 'd32998a6-8cc1-4991-9e30-125eff8b6531', 'del', '删除');
INSERT INTO `g_menu_action` VALUES ('17', '2019-05-27 19:22:25', '2019-05-27 19:23:31', null, 'd32998a6-8cc1-4991-9e30-125eff8b6531', 'query', '查询');
INSERT INTO `g_menu_action` VALUES ('18', '2019-05-27 19:26:21', '2019-05-27 19:26:21', null, '4db442c3-2150-47eb-a67b-75a11fcfc7b0', 'add', '新增');
INSERT INTO `g_menu_action` VALUES ('19', '2019-05-27 19:26:21', '2019-05-27 19:26:21', null, '4db442c3-2150-47eb-a67b-75a11fcfc7b0', 'edit', '编辑');
INSERT INTO `g_menu_action` VALUES ('20', '2019-05-27 19:26:21', '2019-05-27 19:26:21', null, '4db442c3-2150-47eb-a67b-75a11fcfc7b0', 'del', '删除');
INSERT INTO `g_menu_action` VALUES ('21', '2019-05-27 19:26:21', '2019-05-27 19:26:21', null, '4db442c3-2150-47eb-a67b-75a11fcfc7b0', 'query', '查询');
INSERT INTO `g_menu_action` VALUES ('22', '2019-05-27 19:27:32', '2019-05-27 19:27:32', null, 'edb76232-23eb-44c9-93de-f6941ef559e9', 'add', '新增');
INSERT INTO `g_menu_action` VALUES ('23', '2019-05-27 19:27:32', '2019-05-27 19:27:32', null, 'edb76232-23eb-44c9-93de-f6941ef559e9', 'edit', '编辑');
INSERT INTO `g_menu_action` VALUES ('24', '2019-05-27 19:27:32', '2019-05-27 19:27:32', null, 'edb76232-23eb-44c9-93de-f6941ef559e9', 'del', '删除');
INSERT INTO `g_menu_action` VALUES ('25', '2019-05-27 19:27:32', '2019-05-27 19:27:32', null, 'edb76232-23eb-44c9-93de-f6941ef559e9', 'query', '查询');
INSERT INTO `g_menu_action` VALUES ('26', '2019-05-27 19:28:27', '2019-05-27 19:28:27', null, '1143bc40-9d71-4422-8b92-57d909ae02ca', 'add', '新增');
INSERT INTO `g_menu_action` VALUES ('27', '2019-05-27 19:28:27', '2019-05-27 19:28:27', null, '1143bc40-9d71-4422-8b92-57d909ae02ca', 'edit', '编辑');
INSERT INTO `g_menu_action` VALUES ('28', '2019-05-27 19:28:27', '2019-05-27 19:28:27', null, '1143bc40-9d71-4422-8b92-57d909ae02ca', 'del', '删除');
INSERT INTO `g_menu_action` VALUES ('29', '2019-05-27 19:28:27', '2019-05-27 19:28:27', null, '1143bc40-9d71-4422-8b92-57d909ae02ca', 'query', '查询');
INSERT INTO `g_menu_action` VALUES ('30', '2019-05-27 19:30:05', '2019-05-27 19:30:05', null, '8d4f81cc-e5cd-4f6b-aa8d-893aacb3580b', 'add', '新增');
INSERT INTO `g_menu_action` VALUES ('31', '2019-05-27 19:30:05', '2019-05-27 19:30:05', null, '8d4f81cc-e5cd-4f6b-aa8d-893aacb3580b', 'edit', '编辑');
INSERT INTO `g_menu_action` VALUES ('32', '2019-05-27 19:30:05', '2019-05-27 19:30:05', null, '8d4f81cc-e5cd-4f6b-aa8d-893aacb3580b', 'del', '删除');
INSERT INTO `g_menu_action` VALUES ('33', '2019-05-27 19:30:05', '2019-05-27 19:30:05', null, '8d4f81cc-e5cd-4f6b-aa8d-893aacb3580b', 'query', '查询');

-- ----------------------------
-- Table structure for g_menu_resource
-- ----------------------------
DROP TABLE IF EXISTS `g_menu_resource`;
CREATE TABLE `g_menu_resource` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `menu_id` varchar(36) DEFAULT NULL,
  `code` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `method` varchar(50) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_g_menu_resource_code` (`code`),
  KEY `idx_g_menu_resource_deleted_at` (`deleted_at`),
  KEY `idx_g_menu_resource_menu_id` (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of g_menu_resource
-- ----------------------------
INSERT INTO `g_menu_resource` VALUES ('1', '2019-05-25 21:30:26', '2019-05-25 21:30:26', null, 'd751e7ce-5981-4eef-b05f-391484452f09', 'query', '查询菜单数据', 'GET', '/api/v1/menus');
INSERT INTO `g_menu_resource` VALUES ('2', '2019-05-25 21:30:26', '2019-05-25 21:30:26', null, 'd751e7ce-5981-4eef-b05f-391484452f09', 'get', '精确查询菜单数据', 'GET', '/api/v1/menus/:id');
INSERT INTO `g_menu_resource` VALUES ('3', '2019-05-25 21:30:26', '2019-05-25 21:30:26', null, 'd751e7ce-5981-4eef-b05f-391484452f09', 'create', '创建菜单数据', 'POST', '/api/v1/menus');
INSERT INTO `g_menu_resource` VALUES ('4', '2019-05-25 21:30:26', '2019-05-25 21:30:26', null, 'd751e7ce-5981-4eef-b05f-391484452f09', 'update', '更新菜单数据', 'PUT', '/api/v1/menus/:id');
INSERT INTO `g_menu_resource` VALUES ('5', '2019-05-25 21:30:26', '2019-05-25 21:30:26', null, 'd751e7ce-5981-4eef-b05f-391484452f09', 'delete', '删除菜单数据', 'DELETE', '/api/v1/menus/:id');
INSERT INTO `g_menu_resource` VALUES ('6', '2019-05-25 21:30:26', '2019-05-25 21:30:26', null, 'd9666564-645b-48f6-ae32-e241f451a45c', 'query', '查询角色数据', 'GET', '/api/v1/roles');
INSERT INTO `g_menu_resource` VALUES ('7', '2019-05-25 21:30:26', '2019-05-25 21:30:26', null, 'd9666564-645b-48f6-ae32-e241f451a45c', 'get', '精确查询角色数据', 'GET', '/api/v1/roles/:id');
INSERT INTO `g_menu_resource` VALUES ('8', '2019-05-25 21:30:26', '2019-05-25 21:30:26', null, 'd9666564-645b-48f6-ae32-e241f451a45c', 'create', '创建角色数据', 'POST', '/api/v1/roles');
INSERT INTO `g_menu_resource` VALUES ('9', '2019-05-25 21:30:26', '2019-05-25 21:30:26', null, 'd9666564-645b-48f6-ae32-e241f451a45c', 'update', '更新角色数据', 'PUT', '/api/v1/roles/:id');
INSERT INTO `g_menu_resource` VALUES ('10', '2019-05-25 21:30:26', '2019-05-25 21:30:26', null, 'd9666564-645b-48f6-ae32-e241f451a45c', 'delete', '删除角色数据', 'DELETE', '/api/v1/roles/:id');
INSERT INTO `g_menu_resource` VALUES ('11', '2019-05-25 21:30:26', '2019-05-25 21:30:26', null, 'd9666564-645b-48f6-ae32-e241f451a45c', 'queryMenu', '查询菜单数据', 'GET', '/api/v1/menus');
INSERT INTO `g_menu_resource` VALUES ('12', '2019-05-25 21:30:26', '2019-05-25 21:30:26', null, 'e45bcff6-d2fd-4e10-b7cf-4e3d19ed471d', 'query', '查询用户数据', 'GET', '/api/v1/users');
INSERT INTO `g_menu_resource` VALUES ('13', '2019-05-25 21:30:26', '2019-05-25 21:30:26', null, 'e45bcff6-d2fd-4e10-b7cf-4e3d19ed471d', 'get', '精确查询用户数据', 'GET', '/api/v1/users/:id');
INSERT INTO `g_menu_resource` VALUES ('14', '2019-05-25 21:30:26', '2019-05-25 21:30:26', null, 'e45bcff6-d2fd-4e10-b7cf-4e3d19ed471d', 'create', '创建用户数据', 'POST', '/api/v1/users');
INSERT INTO `g_menu_resource` VALUES ('15', '2019-05-25 21:30:26', '2019-05-25 21:30:26', null, 'e45bcff6-d2fd-4e10-b7cf-4e3d19ed471d', 'update', '更新用户数据', 'PUT', '/api/v1/users/:id');
INSERT INTO `g_menu_resource` VALUES ('16', '2019-05-25 21:30:26', '2019-05-25 21:30:26', null, 'e45bcff6-d2fd-4e10-b7cf-4e3d19ed471d', 'delete', '删除用户数据', 'DELETE', '/api/v1/users/:id');
INSERT INTO `g_menu_resource` VALUES ('17', '2019-05-25 21:30:26', '2019-05-25 21:30:26', null, 'e45bcff6-d2fd-4e10-b7cf-4e3d19ed471d', 'disable', '禁用用户数据', 'PATCH', '/api/v1/users/:id/disable');
INSERT INTO `g_menu_resource` VALUES ('18', '2019-05-25 21:30:26', '2019-05-25 21:30:26', null, 'e45bcff6-d2fd-4e10-b7cf-4e3d19ed471d', 'enable', '启用用户数据', 'PATCH', '/api/v1/users/:id/enable');
INSERT INTO `g_menu_resource` VALUES ('19', '2019-05-25 21:30:26', '2019-05-25 21:30:26', null, 'e45bcff6-d2fd-4e10-b7cf-4e3d19ed471d', 'queryRole', '查询角色数据', 'GET', '/api/v1/roles');
INSERT INTO `g_menu_resource` VALUES ('20', '2019-05-27 19:23:31', '2019-05-27 19:23:31', null, 'd32998a6-8cc1-4991-9e30-125eff8b6531', 'query', '查询测试资源名1', 'GET', '/test_resource1');
INSERT INTO `g_menu_resource` VALUES ('21', '2019-05-27 19:23:31', '2019-05-27 19:23:31', null, 'd32998a6-8cc1-4991-9e30-125eff8b6531', 'get', '精确查询测试资源名1', 'GET', '/test_resource1/:id');
INSERT INTO `g_menu_resource` VALUES ('22', '2019-05-27 19:23:31', '2019-05-27 19:23:31', null, 'd32998a6-8cc1-4991-9e30-125eff8b6531', 'create', '创建测试资源名1', 'POST', '/test_resource1');
INSERT INTO `g_menu_resource` VALUES ('23', '2019-05-27 19:23:31', '2019-05-27 19:23:31', null, 'd32998a6-8cc1-4991-9e30-125eff8b6531', 'update', '更新测试资源名1', 'PUT', '/test_resource1/:id');
INSERT INTO `g_menu_resource` VALUES ('24', '2019-05-27 19:23:31', '2019-05-27 19:23:31', null, 'd32998a6-8cc1-4991-9e30-125eff8b6531', 'delete', '删除测试资源名1', 'DELETE', '/test_resource1/:id');
INSERT INTO `g_menu_resource` VALUES ('25', '2019-05-27 19:26:21', '2019-05-27 19:26:21', null, '4db442c3-2150-47eb-a67b-75a11fcfc7b0', 'query', '查询testresource2', 'GET', '/testresource2');
INSERT INTO `g_menu_resource` VALUES ('26', '2019-05-27 19:26:21', '2019-05-27 19:26:21', null, '4db442c3-2150-47eb-a67b-75a11fcfc7b0', 'get', '精确查询testresource2', 'GET', '/testresource2/:id');
INSERT INTO `g_menu_resource` VALUES ('27', '2019-05-27 19:26:21', '2019-05-27 19:26:21', null, '4db442c3-2150-47eb-a67b-75a11fcfc7b0', 'create', '创建testresource2', 'POST', '/testresource2');
INSERT INTO `g_menu_resource` VALUES ('28', '2019-05-27 19:26:21', '2019-05-27 19:26:21', null, '4db442c3-2150-47eb-a67b-75a11fcfc7b0', 'update', '更新testresource2', 'PUT', '/testresource2/:id');
INSERT INTO `g_menu_resource` VALUES ('29', '2019-05-27 19:26:21', '2019-05-27 19:26:21', null, '4db442c3-2150-47eb-a67b-75a11fcfc7b0', 'delete', '删除testresource2', 'DELETE', '/testresource2/:id');

-- ----------------------------
-- Table structure for g_role
-- ----------------------------
DROP TABLE IF EXISTS `g_role`;
CREATE TABLE `g_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `record_id` varchar(36) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `sequence` int(11) DEFAULT NULL,
  `memo` varchar(200) DEFAULT NULL,
  `creator` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_g_role_deleted_at` (`deleted_at`),
  KEY `idx_g_role_record_id` (`record_id`),
  KEY `idx_g_role_name` (`name`),
  KEY `idx_g_role_sequence` (`sequence`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of g_role
-- ----------------------------
INSERT INTO `g_role` VALUES ('1', '2019-05-27 19:17:40', '2019-05-27 22:08:36', null, 'bbf07953-9fac-44a5-aea2-63909fccd0b4', 'normal', '1000000', '普通用户', 'root');
INSERT INTO `g_role` VALUES ('2', '2019-05-27 19:18:06', '2019-05-27 19:18:06', null, 'e99bdbf0-dd01-46c6-a8e2-0d164af012ab', 'admin', '1000000', '管理员用户', 'root');

-- ----------------------------
-- Table structure for g_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `g_role_menu`;
CREATE TABLE `g_role_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `menu_id` varchar(36) DEFAULT NULL,
  `action` varchar(2048) DEFAULT NULL,
  `resource` varchar(2048) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_g_role_menu_role_id` (`role_id`),
  KEY `idx_g_role_menu_menu_id` (`menu_id`),
  KEY `idx_g_role_menu_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of g_role_menu
-- ----------------------------
INSERT INTO `g_role_menu` VALUES ('1', '2019-05-27 19:17:40', '2019-05-27 22:08:36', null, 'bbf07953-9fac-44a5-aea2-63909fccd0b4', 'aedf48b7-9057-4acf-8dc2-1942c88b50ba', '', '');
INSERT INTO `g_role_menu` VALUES ('2', '2019-05-27 19:17:40', '2019-05-27 19:18:26', '2019-05-27 22:04:08', 'bbf07953-9fac-44a5-aea2-63909fccd0b4', 'd751e7ce-5981-4eef-b05f-391484452f09', 'add,edit,del,query', 'query,get,create,update,delete');
INSERT INTO `g_role_menu` VALUES ('3', '2019-05-27 19:18:06', '2019-05-27 19:18:06', null, 'e99bdbf0-dd01-46c6-a8e2-0d164af012ab', 'aedf48b7-9057-4acf-8dc2-1942c88b50ba', '', '');
INSERT INTO `g_role_menu` VALUES ('4', '2019-05-27 19:18:06', '2019-05-27 19:18:06', null, 'e99bdbf0-dd01-46c6-a8e2-0d164af012ab', 'd751e7ce-5981-4eef-b05f-391484452f09', 'add,edit,del,query', 'query,get,create,update,delete');
INSERT INTO `g_role_menu` VALUES ('5', '2019-05-27 19:18:06', '2019-05-27 19:18:06', null, 'e99bdbf0-dd01-46c6-a8e2-0d164af012ab', 'd9666564-645b-48f6-ae32-e241f451a45c', 'add,edit,del,query', 'query,get,create,update,delete,queryMenu');
INSERT INTO `g_role_menu` VALUES ('6', '2019-05-27 19:18:06', '2019-05-27 19:18:06', null, 'e99bdbf0-dd01-46c6-a8e2-0d164af012ab', 'e45bcff6-d2fd-4e10-b7cf-4e3d19ed471d', 'add,edit,del,query', 'query,get,create,update,delete,disable,enable,queryRole');
INSERT INTO `g_role_menu` VALUES ('7', '2019-05-27 22:04:08', '2019-05-27 22:04:08', '2019-05-27 22:08:36', 'bbf07953-9fac-44a5-aea2-63909fccd0b4', 'd9666564-645b-48f6-ae32-e241f451a45c', 'add,edit,del,query', 'query,get,create,update,delete,queryMenu');
INSERT INTO `g_role_menu` VALUES ('8', '2019-05-27 22:04:08', '2019-05-27 22:04:08', '2019-05-27 22:08:36', 'bbf07953-9fac-44a5-aea2-63909fccd0b4', 'e45bcff6-d2fd-4e10-b7cf-4e3d19ed471d', 'add,edit,del,query', 'query,get,create,update,delete,disable,enable,queryRole');
INSERT INTO `g_role_menu` VALUES ('9', '2019-05-27 22:04:08', '2019-05-27 22:08:36', null, 'bbf07953-9fac-44a5-aea2-63909fccd0b4', 'd32998a6-8cc1-4991-9e30-125eff8b6531', 'add,edit,del,query', 'query,get,create,update,delete');
INSERT INTO `g_role_menu` VALUES ('10', '2019-05-27 22:04:08', '2019-05-27 22:08:36', null, 'bbf07953-9fac-44a5-aea2-63909fccd0b4', '8d4f81cc-e5cd-4f6b-aa8d-893aacb3580b', 'add,edit,del,query', '');
INSERT INTO `g_role_menu` VALUES ('11', '2019-05-27 22:04:08', '2019-05-27 22:08:36', null, 'bbf07953-9fac-44a5-aea2-63909fccd0b4', '1143bc40-9d71-4422-8b92-57d909ae02ca', 'add,edit,del,query', '');
INSERT INTO `g_role_menu` VALUES ('12', '2019-05-27 22:04:08', '2019-05-27 22:08:36', null, 'bbf07953-9fac-44a5-aea2-63909fccd0b4', 'edb76232-23eb-44c9-93de-f6941ef559e9', 'add,edit,del,query', '');
INSERT INTO `g_role_menu` VALUES ('13', '2019-05-27 22:04:08', '2019-05-27 22:08:36', null, 'bbf07953-9fac-44a5-aea2-63909fccd0b4', '4db442c3-2150-47eb-a67b-75a11fcfc7b0', 'add,edit,del,query', 'query,get,create,update,delete');

-- ----------------------------
-- Table structure for g_user
-- ----------------------------
DROP TABLE IF EXISTS `g_user`;
CREATE TABLE `g_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `record_id` varchar(36) DEFAULT NULL,
  `user_name` varchar(64) DEFAULT NULL,
  `real_name` varchar(64) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `creator` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_g_user_deleted_at` (`deleted_at`),
  KEY `idx_g_user_record_id` (`record_id`),
  KEY `idx_g_user_user_name` (`user_name`),
  KEY `idx_g_user_real_name` (`real_name`),
  KEY `idx_g_user_email` (`email`),
  KEY `idx_g_user_phone` (`phone`),
  KEY `idx_g_user_status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of g_user
-- ----------------------------
INSERT INTO `g_user` VALUES ('1', '2019-05-27 20:41:10', '2019-05-27 20:43:15', null, '848c16ac-c248-4927-ba2c-0513ee2c0cf3', 'yswing', '杰克', '10470c3b4b1fed12c3baac014be15fac67c6e815', '1059051512@qq.com', '18980084702', '1', 'root');
INSERT INTO `g_user` VALUES ('2', '2019-05-27 20:41:53', '2019-05-27 20:43:36', null, '31e9de92-299c-4af0-8b80-2d5afe92ed5a', 'normal', '张山', '10470c3b4b1fed12c3baac014be15fac67c6e815', '', '', '1', 'root');

-- ----------------------------
-- Table structure for g_user_role
-- ----------------------------
DROP TABLE IF EXISTS `g_user_role`;
CREATE TABLE `g_user_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_g_user_role_deleted_at` (`deleted_at`),
  KEY `idx_g_user_role_user_id` (`user_id`),
  KEY `idx_g_user_role_role_id` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of g_user_role
-- ----------------------------
INSERT INTO `g_user_role` VALUES ('1', '2019-05-27 20:41:10', '2019-05-27 20:41:10', '2019-05-27 20:43:01', '848c16ac-c248-4927-ba2c-0513ee2c0cf3', 'bbf07953-9fac-44a5-aea2-63909fccd0b4');
INSERT INTO `g_user_role` VALUES ('2', '2019-05-27 20:41:53', '2019-05-27 20:41:53', null, '31e9de92-299c-4af0-8b80-2d5afe92ed5a', 'bbf07953-9fac-44a5-aea2-63909fccd0b4');
INSERT INTO `g_user_role` VALUES ('3', '2019-05-27 20:43:01', '2019-05-27 20:43:01', null, '848c16ac-c248-4927-ba2c-0513ee2c0cf3', 'e99bdbf0-dd01-46c6-a8e2-0d164af012ab');
