/*
 Navicat Premium Data Transfer

 Source Server         : anttiger
 Source Server Type    : MySQL
 Source Server Version : 50730
 Source Host           : localhost:3306
 Source Schema         : airtiger

 Target Server Type    : MySQL
 Target Server Version : 50730
 File Encoding         : 65001

 Date: 15/06/2021 22:35:24
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

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
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id`, `codename`) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 121 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission` VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission` VALUES (13, 'Can add content type', 4, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (14, 'Can change content type', 4, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (15, 'Can delete content type', 4, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (16, 'Can view content type', 4, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (17, 'Can add session', 5, 'add_session');
INSERT INTO `auth_permission` VALUES (18, 'Can change session', 5, 'change_session');
INSERT INTO `auth_permission` VALUES (19, 'Can delete session', 5, 'delete_session');
INSERT INTO `auth_permission` VALUES (20, 'Can view session', 5, 'view_session');
INSERT INTO `auth_permission` VALUES (21, 'Can add 部门管理', 6, 'add_department');
INSERT INTO `auth_permission` VALUES (22, 'Can change 部门管理', 6, 'change_department');
INSERT INTO `auth_permission` VALUES (23, 'Can delete 部门管理', 6, 'delete_department');
INSERT INTO `auth_permission` VALUES (24, 'Can view 部门管理', 6, 'view_department');
INSERT INTO `auth_permission` VALUES (25, 'Can add 用户表', 7, 'add_userprofile');
INSERT INTO `auth_permission` VALUES (26, 'Can change 用户表', 7, 'change_userprofile');
INSERT INTO `auth_permission` VALUES (27, 'Can delete 用户表', 7, 'delete_userprofile');
INSERT INTO `auth_permission` VALUES (28, 'Can view 用户表', 7, 'view_userprofile');
INSERT INTO `auth_permission` VALUES (29, 'Can add 菜单表', 8, 'add_menus');
INSERT INTO `auth_permission` VALUES (30, 'Can change 菜单表', 8, 'change_menus');
INSERT INTO `auth_permission` VALUES (31, 'Can delete 菜单表', 8, 'delete_menus');
INSERT INTO `auth_permission` VALUES (32, 'Can view 菜单表', 8, 'view_menus');
INSERT INTO `auth_permission` VALUES (33, 'Can add 权限表', 9, 'add_permissions');
INSERT INTO `auth_permission` VALUES (34, 'Can change 权限表', 9, 'change_permissions');
INSERT INTO `auth_permission` VALUES (35, 'Can delete 权限表', 9, 'delete_permissions');
INSERT INTO `auth_permission` VALUES (36, 'Can view 权限表', 9, 'view_permissions');
INSERT INTO `auth_permission` VALUES (37, 'Can add 角色表', 10, 'add_roles');
INSERT INTO `auth_permission` VALUES (38, 'Can change 角色表', 10, 'change_roles');
INSERT INTO `auth_permission` VALUES (39, 'Can delete 角色表', 10, 'delete_roles');
INSERT INTO `auth_permission` VALUES (40, 'Can view 角色表', 10, 'view_roles');
INSERT INTO `auth_permission` VALUES (41, 'Can add 数据关联', 11, 'add_databind');
INSERT INTO `auth_permission` VALUES (42, 'Can change 数据关联', 11, 'change_databind');
INSERT INTO `auth_permission` VALUES (43, 'Can delete 数据关联', 11, 'delete_databind');
INSERT INTO `auth_permission` VALUES (44, 'Can view 数据关联', 11, 'view_databind');
INSERT INTO `auth_permission` VALUES (45, 'Can add 模型关联表', 12, 'add_tablebind');
INSERT INTO `auth_permission` VALUES (46, 'Can change 模型关联表', 12, 'change_tablebind');
INSERT INTO `auth_permission` VALUES (47, 'Can delete 模型关联表', 12, 'delete_tablebind');
INSERT INTO `auth_permission` VALUES (48, 'Can view 模型关联表', 12, 'view_tablebind');
INSERT INTO `auth_permission` VALUES (49, 'Can add 表字段', 13, 'add_datavalue');
INSERT INTO `auth_permission` VALUES (50, 'Can change 表字段', 13, 'change_datavalue');
INSERT INTO `auth_permission` VALUES (51, 'Can delete 表字段', 13, 'delete_datavalue');
INSERT INTO `auth_permission` VALUES (52, 'Can view 表字段', 13, 'view_datavalue');
INSERT INTO `auth_permission` VALUES (53, 'Can add 表分类', 14, 'add_classify');
INSERT INTO `auth_permission` VALUES (54, 'Can change 表分类', 14, 'change_classify');
INSERT INTO `auth_permission` VALUES (55, 'Can delete 表分类', 14, 'delete_classify');
INSERT INTO `auth_permission` VALUES (56, 'Can view 表分类', 14, 'view_classify');
INSERT INTO `auth_permission` VALUES (57, 'Can add 表字段', 15, 'add_datamap');
INSERT INTO `auth_permission` VALUES (58, 'Can change 表字段', 15, 'change_datamap');
INSERT INTO `auth_permission` VALUES (59, 'Can delete 表字段', 15, 'delete_datamap');
INSERT INTO `auth_permission` VALUES (60, 'Can view 表字段', 15, 'view_datamap');
INSERT INTO `auth_permission` VALUES (61, 'Can add 数据关联', 16, 'add_datarelation');
INSERT INTO `auth_permission` VALUES (62, 'Can change 数据关联', 16, 'change_datarelation');
INSERT INTO `auth_permission` VALUES (63, 'Can delete 数据关联', 16, 'delete_datarelation');
INSERT INTO `auth_permission` VALUES (64, 'Can view 数据关联', 16, 'view_datarelation');
INSERT INTO `auth_permission` VALUES (65, 'Can add 模型关联表', 17, 'add_tablerelation');
INSERT INTO `auth_permission` VALUES (66, 'Can change 模型关联表', 17, 'change_tablerelation');
INSERT INTO `auth_permission` VALUES (67, 'Can delete 模型关联表', 17, 'delete_tablerelation');
INSERT INTO `auth_permission` VALUES (68, 'Can view 模型关联表', 17, 'view_tablerelation');
INSERT INTO `auth_permission` VALUES (69, 'Can add 表分类', 18, 'add_schema');
INSERT INTO `auth_permission` VALUES (70, 'Can change 表分类', 18, 'change_schema');
INSERT INTO `auth_permission` VALUES (71, 'Can delete 表分类', 18, 'delete_schema');
INSERT INTO `auth_permission` VALUES (72, 'Can view 表分类', 18, 'view_schema');
INSERT INTO `auth_permission` VALUES (73, 'Can add 表字段', 19, 'add_datafield');
INSERT INTO `auth_permission` VALUES (74, 'Can change 表字段', 19, 'change_datafield');
INSERT INTO `auth_permission` VALUES (75, 'Can delete 表字段', 19, 'delete_datafield');
INSERT INTO `auth_permission` VALUES (76, 'Can view 表字段', 19, 'view_datafield');
INSERT INTO `auth_permission` VALUES (77, 'Can add 表字段', 13, 'add_assetdata');
INSERT INTO `auth_permission` VALUES (78, 'Can change 表字段', 13, 'change_assetdata');
INSERT INTO `auth_permission` VALUES (79, 'Can delete 表字段', 13, 'delete_assetdata');
INSERT INTO `auth_permission` VALUES (80, 'Can view 表字段', 13, 'view_assetdata');
INSERT INTO `auth_permission` VALUES (81, 'Can add 数据关联', 16, 'add_assetrelation');
INSERT INTO `auth_permission` VALUES (82, 'Can change 数据关联', 16, 'change_assetrelation');
INSERT INTO `auth_permission` VALUES (83, 'Can delete 数据关联', 16, 'delete_assetrelation');
INSERT INTO `auth_permission` VALUES (84, 'Can view 数据关联', 16, 'view_assetrelation');
INSERT INTO `auth_permission` VALUES (85, 'Can add 表字段', 19, 'add_fielddata');
INSERT INTO `auth_permission` VALUES (86, 'Can change 表字段', 19, 'change_fielddata');
INSERT INTO `auth_permission` VALUES (87, 'Can delete 表字段', 19, 'delete_fielddata');
INSERT INTO `auth_permission` VALUES (88, 'Can view 表字段', 19, 'view_fielddata');
INSERT INTO `auth_permission` VALUES (89, 'Can add 表字段', 19, 'add_fieldmap');
INSERT INTO `auth_permission` VALUES (90, 'Can change 表字段', 19, 'change_fieldmap');
INSERT INTO `auth_permission` VALUES (91, 'Can delete 表字段', 19, 'delete_fieldmap');
INSERT INTO `auth_permission` VALUES (92, 'Can view 表字段', 19, 'view_fieldmap');
INSERT INTO `auth_permission` VALUES (93, 'Can add 模型关联表', 17, 'add_schemarelation');
INSERT INTO `auth_permission` VALUES (94, 'Can change 模型关联表', 17, 'change_schemarelation');
INSERT INTO `auth_permission` VALUES (95, 'Can delete 模型关联表', 17, 'delete_schemarelation');
INSERT INTO `auth_permission` VALUES (96, 'Can view 模型关联表', 17, 'view_schemarelation');
INSERT INTO `auth_permission` VALUES (97, 'Can add 数据关联', 20, 'add_assetsrelation');
INSERT INTO `auth_permission` VALUES (98, 'Can change 数据关联', 20, 'change_assetsrelation');
INSERT INTO `auth_permission` VALUES (99, 'Can delete 数据关联', 20, 'delete_assetsrelation');
INSERT INTO `auth_permission` VALUES (100, 'Can view 数据关联', 20, 'view_assetsrelation');
INSERT INTO `auth_permission` VALUES (101, 'Can add change record', 21, 'add_changerecord');
INSERT INTO `auth_permission` VALUES (102, 'Can change change record', 21, 'change_changerecord');
INSERT INTO `auth_permission` VALUES (103, 'Can delete change record', 21, 'delete_changerecord');
INSERT INTO `auth_permission` VALUES (104, 'Can view change record', 21, 'view_changerecord');
INSERT INTO `auth_permission` VALUES (105, 'Can add 表分类', 22, 'add_tableclassify');
INSERT INTO `auth_permission` VALUES (106, 'Can change 表分类', 22, 'change_tableclassify');
INSERT INTO `auth_permission` VALUES (107, 'Can delete 表分类', 22, 'delete_tableclassify');
INSERT INTO `auth_permission` VALUES (108, 'Can view 表分类', 22, 'view_tableclassify');
INSERT INTO `auth_permission` VALUES (109, 'Can add 表数据', 23, 'add_tabledata');
INSERT INTO `auth_permission` VALUES (110, 'Can change 表数据', 23, 'change_tabledata');
INSERT INTO `auth_permission` VALUES (111, 'Can delete 表数据', 23, 'delete_tabledata');
INSERT INTO `auth_permission` VALUES (112, 'Can view 表数据', 23, 'view_tabledata');
INSERT INTO `auth_permission` VALUES (113, 'Can add 表字段', 24, 'add_tablefield');
INSERT INTO `auth_permission` VALUES (114, 'Can change 表字段', 24, 'change_tablefield');
INSERT INTO `auth_permission` VALUES (115, 'Can delete 表字段', 24, 'delete_tablefield');
INSERT INTO `auth_permission` VALUES (116, 'Can view 表字段', 24, 'view_tablefield');
INSERT INTO `auth_permission` VALUES (117, 'Can add 表关联', 25, 'add_tablerelation');
INSERT INTO `auth_permission` VALUES (118, 'Can change 表关联', 25, 'change_tablerelation');
INSERT INTO `auth_permission` VALUES (119, 'Can delete 表关联', 25, 'delete_tablerelation');
INSERT INTO `auth_permission` VALUES (120, 'Can view 表关联', 25, 'view_tablerelation');

-- ----------------------------
-- Table structure for cmdb_assetsrelation
-- ----------------------------
DROP TABLE IF EXISTS `cmdb_assetsrelation`;
CREATE TABLE `cmdb_assetsrelation`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `remark` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `child_asset_id` int(11) NOT NULL,
  `parent_asset_id` int(11) NOT NULL,
  `table_relation_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `cmdb_assetsrelation_parent_asset_id_child_asset_id_4747d604_uniq`(`parent_asset_id`, `child_asset_id`) USING BTREE,
  INDEX `cmdb_assetsrelation_child_asset_id_8a39ac71_fk_cmdb_tabledata_id`(`child_asset_id`) USING BTREE,
  INDEX `cmdb_assetsrelation_table_relation_id_1d89dec7_fk_cmdb_tabl`(`table_relation_id`) USING BTREE,
  CONSTRAINT `cmdb_assetsrelation_child_asset_id_8a39ac71_fk_cmdb_tabledata_id` FOREIGN KEY (`child_asset_id`) REFERENCES `cmdb_tabledata` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `cmdb_assetsrelation_parent_asset_id_0203633b_fk_cmdb_tabl` FOREIGN KEY (`parent_asset_id`) REFERENCES `cmdb_tabledata` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `cmdb_assetsrelation_table_relation_id_1d89dec7_fk_cmdb_tabl` FOREIGN KEY (`table_relation_id`) REFERENCES `cmdb_tablerelation` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmdb_assetsrelation
-- ----------------------------
INSERT INTO `cmdb_assetsrelation` VALUES (11, '2021-05-26 02:58:09.999528', '2021-05-26 02:58:10.002791', NULL, 0, 12, 1, 2);
INSERT INTO `cmdb_assetsrelation` VALUES (12, '2021-05-26 02:58:14.297066', '2021-05-26 02:58:14.300152', NULL, 0, 13, 1, 2);

-- ----------------------------
-- Table structure for cmdb_changerecord
-- ----------------------------
DROP TABLE IF EXISTS `cmdb_changerecord`;
CREATE TABLE `cmdb_changerecord`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `remark` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `title` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_data_id` int(11) NOT NULL,
  `operator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `cmdb_changerecord_table_data_id_dfa272df_fk_cmdb_tabledata_id`(`table_data_id`) USING BTREE,
  CONSTRAINT `cmdb_changerecord_table_data_id_dfa272df_fk_cmdb_tabledata_id` FOREIGN KEY (`table_data_id`) REFERENCES `cmdb_tabledata` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmdb_changerecord
-- ----------------------------
INSERT INTO `cmdb_changerecord` VALUES (1, '2021-05-27 15:43:14.543249', '2021-05-27 15:43:14.577361', NULL, 0, '更新记录-物理机-name', 'eth121 > eth111', 1, 'AnonymousUser');
INSERT INTO `cmdb_changerecord` VALUES (2, '2021-05-27 15:43:14.596053', '2021-05-27 15:43:14.600032', NULL, 0, '更新记录-物理机-ipaddr', '192.168.1.121 > 192.168.1.111', 1, 'AnonymousUser');
INSERT INTO `cmdb_changerecord` VALUES (3, '2021-05-27 15:46:13.707279', '2021-05-27 15:46:13.739490', NULL, 0, '更新记录-物理网卡-name', 'eth111 > eth121', 1, 'AnonymousUser');
INSERT INTO `cmdb_changerecord` VALUES (4, '2021-05-27 15:46:13.754450', '2021-05-27 15:46:13.757435', NULL, 0, '更新记录-物理网卡-ipaddr', '192.168.1.111 > 192.168.1.121', 1, 'AnonymousUser');
INSERT INTO `cmdb_changerecord` VALUES (5, '2021-05-27 15:48:13.739543', '2021-05-27 15:48:13.770863', NULL, 0, '更新记录-物理机-board_sn', '00:34:87:ce:2f > 00:34:87:ce:1f', 1, 'AnonymousUser');
INSERT INTO `cmdb_changerecord` VALUES (6, '2021-05-27 15:48:13.774786', '2021-05-27 15:48:13.776771', NULL, 0, '更新记录-物理机-hostname', 'ops101.devops.cc > ops111.devops.cc', 1, 'AnonymousUser');
INSERT INTO `cmdb_changerecord` VALUES (7, '2021-05-27 16:22:04.933831', '2021-05-27 16:22:04.967243', NULL, 0, '更新记录-物理机-network', '变更详情: 255.255.255.0 > None', 1, 'AnonymousUser');
INSERT INTO `cmdb_changerecord` VALUES (8, '2021-05-27 16:24:37.631977', '2021-05-27 16:24:37.663554', NULL, 0, '更新记录-物理网卡-network', '变更详情: None > 255.255.255.0', 1, 'AnonymousUser');
INSERT INTO `cmdb_changerecord` VALUES (9, '2021-05-27 21:43:04.774280', '2021-05-27 21:43:04.779610', NULL, 0, '新增记录-物理网卡', '新增数据: eth3', 1, 'AnonymousUser');
INSERT INTO `cmdb_changerecord` VALUES (10, '2021-05-27 22:49:20.748506', '2021-05-27 22:49:20.751437', NULL, 0, '移除记录-物理网卡', '移除数据详情: {\'up\': \'up\', \'name\': \'eth121\', \'hwaddr\': \'00:cc:o9:98:df\', \'ipaddr\': \'192.168.1.121\', \'gateway\': \'192.168.1.254\', \'network\': \'255.255.255.0\'}', 1, 'AnonymousUser');
INSERT INTO `cmdb_changerecord` VALUES (11, '2021-05-27 22:59:39.018593', '2021-05-27 22:59:39.021154', NULL, 0, '删除记录-物理网卡', '删除详情: {\'up\': \'up\', \'name\': \'eth121\', \'hwaddr\': \'00:cc:o9:98:df\', \'ipaddr\': \'192.168.1.121\', \'gateway\': \'192.168.1.254\', \'network\': \'255.255.255.0\'}', 1, 'AnonymousUser');
INSERT INTO `cmdb_changerecord` VALUES (12, '2021-06-07 21:44:15.193430', '2021-06-07 21:44:15.213333', NULL, 0, '移除记录-物理网卡', '移除数据详情: {\'up\': \'up\', \'name\': \'eth121\', \'hwaddr\': \'00:cc:o9:98:df\', \'ipaddr\': \'192.168.1.121\', \'gateway\': \'192.168.1.254\', \'network\': \'255.255.255.0\'}', 1, 'AnonymousUser');
INSERT INTO `cmdb_changerecord` VALUES (13, '2021-06-07 21:46:11.588273', '2021-06-07 21:46:11.595210', NULL, 0, '移除记录-物理网卡', '移除数据详情: {\'up\': \'up\', \'name\': \'eth121\', \'hwaddr\': \'00:cc:o9:98:df\', \'ipaddr\': \'192.168.1.121\', \'gateway\': \'192.168.1.254\', \'network\': \'255.255.255.0\'}', 1, 'AnonymousUser');
INSERT INTO `cmdb_changerecord` VALUES (14, '2021-06-07 21:46:13.251783', '2021-06-07 21:46:13.260761', NULL, 0, '移除记录-物理网卡', '移除数据详情: {\'up\': \'up\', \'name\': \'eth121\', \'hwaddr\': \'00:cc:o9:98:df\', \'ipaddr\': \'192.168.1.121\', \'gateway\': \'192.168.1.254\', \'network\': \'255.255.255.0\'}', 1, 'AnonymousUser');
INSERT INTO `cmdb_changerecord` VALUES (15, '2021-06-07 21:46:13.812284', '2021-06-07 21:46:13.818278', NULL, 0, '移除记录-物理网卡', '移除数据详情: {\'up\': \'up\', \'name\': \'eth121\', \'hwaddr\': \'00:cc:o9:98:df\', \'ipaddr\': \'192.168.1.121\', \'gateway\': \'192.168.1.254\', \'network\': \'255.255.255.0\'}', 1, 'AnonymousUser');
INSERT INTO `cmdb_changerecord` VALUES (16, '2021-06-07 21:50:20.846334', '2021-06-07 21:50:20.853318', NULL, 0, '移除记录-物理网卡-eth121', '移除数据详情: {\'up\': \'up\', \'name\': \'eth121\', \'hwaddr\': \'00:cc:o9:98:df\', \'ipaddr\': \'192.168.1.121\', \'gateway\': \'192.168.1.254\', \'network\': \'255.255.255.0\'}', 1, 'AnonymousUser');

-- ----------------------------
-- Table structure for cmdb_tableclassify
-- ----------------------------
DROP TABLE IF EXISTS `cmdb_tableclassify`;
CREATE TABLE `cmdb_tableclassify`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `remark` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `is_forbid_bind` tinyint(1) NOT NULL,
  `pid_id` int(11) NULL DEFAULT NULL,
  `record_log` tinyint(1) NOT NULL,
  `icon` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE,
  UNIQUE INDEX `alias`(`alias`) USING BTREE,
  INDEX `cmdb_tableclassify_pid_id_6a3964e4_fk_cmdb_tableclassify_id`(`pid_id`) USING BTREE,
  CONSTRAINT `cmdb_tableclassify_pid_id_6a3964e4_fk_cmdb_tableclassify_id` FOREIGN KEY (`pid_id`) REFERENCES `cmdb_tableclassify` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmdb_tableclassify
-- ----------------------------
INSERT INTO `cmdb_tableclassify` VALUES (1, '2021-05-24 19:08:20.691968', '2021-06-02 22:38:57.058137', '服务器类型表主类', 0, '服务器', 'server', 0, NULL, 0, 'cmdb/icon/2021/06/02/2021-05-14_1.png');
INSERT INTO `cmdb_tableclassify` VALUES (2, '2021-05-24 19:14:25.475892', '2021-05-24 19:14:25.475892', '物理机类型表', 0, '物理机', 'Physical', 0, 1, 1, 'cmdb/icon/2021/06/02/2021-05-14_1.png');
INSERT INTO `cmdb_tableclassify` VALUES (3, '2021-05-24 19:15:05.464665', '2021-05-24 22:20:01.740249', '物理机类型表', 0, '物理磁盘', 'disk', 1, 1, 0, 'cmdb/icon/2021/06/02/2021-05-14_1.png');
INSERT INTO `cmdb_tableclassify` VALUES (4, '2021-05-24 19:15:20.503980', '2021-05-24 22:23:05.826990', '物理机类型表', 0, '物理网卡', 'network', 1, 1, 0, 'cmdb/icon/2021/06/02/2021-05-14_1.png');
INSERT INTO `cmdb_tableclassify` VALUES (5, '2021-05-24 22:06:59.573030', '2021-05-24 22:23:11.301387', '存放物理机内存', 0, '物理内存', 'memory', 1, 1, 0, 'cmdb/icon/2021/06/02/2021-05-14_1.png');
INSERT INTO `cmdb_tableclassify` VALUES (6, '2021-05-24 22:08:53.652636', '2021-05-24 22:08:53.652636', '存放通用记录', 0, '通用类', 'general', 0, NULL, 0, 'cmdb/icon/2021/06/02/2021-05-14_1.png');
INSERT INTO `cmdb_tableclassify` VALUES (7, '2021-05-24 22:09:25.851540', '2021-05-25 00:51:53.196490', '设备资产标签', 0, '标签', 'label', 0, 6, 0, 'cmdb/icon/2021/06/02/2021-05-14_1.png');
INSERT INTO `cmdb_tableclassify` VALUES (8, '2021-06-05 11:08:21.868422', '2021-06-05 11:08:21.868422', NULL, 0, '谢谢谢谢谢', 'serve信息', 0, NULL, 0, 'cmdb/icon/2021/06/05/2021-05-14_1.png');

-- ----------------------------
-- Table structure for cmdb_tabledata
-- ----------------------------
DROP TABLE IF EXISTS `cmdb_tabledata`;
CREATE TABLE `cmdb_tabledata`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `remark` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `data` json NOT NULL,
  `table_classify_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `cmdb_tabledata_table_classify_id_c831a239_fk_cmdb_tabl`(`table_classify_id`) USING BTREE,
  CONSTRAINT `cmdb_tabledata_table_classify_id_c831a239_fk_cmdb_tabl` FOREIGN KEY (`table_classify_id`) REFERENCES `cmdb_tableclassify` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmdb_tabledata
-- ----------------------------
INSERT INTO `cmdb_tabledata` VALUES (1, '2021-05-25 13:50:55.752485', '2021-05-27 15:48:13.782758', '', 0, '{\"board_sn\": \"00:34:87:ce:1f\", \"hostname\": \"ops111.devops.cc\", \"cpu_count\": 64, \"cpu_model\": \"志强 E52699 V4\", \"manage_ip\": \"172.16.0.101\", \"os_version\": \"Centos 7.9.2004\", \"board_model\": \"C610\", \"os_platform\": \"Linux\", \"device_status\": 0, \"board_manufacturer\": \"英特尔\", \"cpu_physical_count\": 24}', 2);
INSERT INTO `cmdb_tabledata` VALUES (2, '2021-05-25 13:51:42.535091', '2021-05-25 13:51:42.535091', '', 0, '{\"board_sn\": \"00:34:87:ce:2f\", \"hostname\": \"ops102.devops.cc\", \"cpu_count\": 64, \"cpu_model\": \"志强 E52699 V4\", \"manage_ip\": \"172.16.0.102\", \"os_version\": \"Centos 7.9.2004\", \"board_model\": \"C610\", \"os_platform\": \"Linux\", \"device_status\": 0, \"board_manufacturer\": \"英特尔\", \"cpu_physical_count\": 24}', 2);
INSERT INTO `cmdb_tabledata` VALUES (3, '2021-05-25 13:51:49.169352', '2021-05-25 13:51:49.169352', '', 0, '{\"board_sn\": \"00:34:87:ce:2f\", \"hostname\": \"ops103.devops.cc\", \"cpu_count\": 64, \"cpu_model\": \"志强 E52699 V4\", \"manage_ip\": \"172.16.0.103\", \"os_version\": \"Centos 7.9.2004\", \"board_model\": \"C610\", \"os_platform\": \"Linux\", \"device_status\": 0, \"board_manufacturer\": \"英特尔\", \"cpu_physical_count\": 24}', 2);
INSERT INTO `cmdb_tabledata` VALUES (4, '2021-05-25 13:51:56.536655', '2021-05-25 13:51:56.536655', '', 0, '{\"board_sn\": \"00:34:87:ce:2f\", \"hostname\": \"ops104.devops.cc\", \"cpu_count\": 64, \"cpu_model\": \"志强 E52699 V4\", \"manage_ip\": \"172.16.0.104\", \"os_version\": \"Centos 7.9.2004\", \"board_model\": \"C610\", \"os_platform\": \"Linux\", \"device_status\": 0, \"board_manufacturer\": \"英特尔\", \"cpu_physical_count\": 24}', 2);
INSERT INTO `cmdb_tabledata` VALUES (5, '2021-05-25 13:52:03.473106', '2021-05-25 13:52:03.473106', '', 0, '{\"board_sn\": \"00:34:87:ce:2f\", \"hostname\": \"ops105.devops.cc\", \"cpu_count\": 64, \"cpu_model\": \"志强 E52699 V4\", \"manage_ip\": \"172.16.0.105\", \"os_version\": \"Centos 7.9.2004\", \"board_model\": \"C610\", \"os_platform\": \"Linux\", \"device_status\": 0, \"board_manufacturer\": \"英特尔\", \"cpu_physical_count\": 24}', 2);
INSERT INTO `cmdb_tabledata` VALUES (6, '2021-05-25 13:52:11.520587', '2021-05-25 13:52:11.520587', '', 0, '{\"board_sn\": \"00:34:87:ce:2f\", \"hostname\": \"ops106.devops.cc\", \"cpu_count\": 64, \"cpu_model\": \"志强 E52699 V4\", \"manage_ip\": \"172.16.0.106\", \"os_version\": \"Centos 7.9.2004\", \"board_model\": \"C610\", \"os_platform\": \"Linux\", \"device_status\": 0, \"board_manufacturer\": \"英特尔\", \"cpu_physical_count\": 24}', 2);
INSERT INTO `cmdb_tabledata` VALUES (7, '2021-05-25 13:52:18.504914', '2021-05-25 13:52:18.504914', '', 0, '{\"board_sn\": \"00:34:87:ce:2f\", \"hostname\": \"ops107.devops.cc\", \"cpu_count\": 64, \"cpu_model\": \"志强 E52699 V4\", \"manage_ip\": \"172.16.0.107\", \"os_version\": \"Centos 7.9.2004\", \"board_model\": \"C610\", \"os_platform\": \"Linux\", \"device_status\": 0, \"board_manufacturer\": \"英特尔\", \"cpu_physical_count\": 24}', 2);
INSERT INTO `cmdb_tabledata` VALUES (8, '2021-05-25 13:54:39.510886', '2021-05-25 13:54:39.510886', '', 0, '{\"board_sn\": \"00:34:87:ce:2f\", \"hostname\": \"ops108.devops.cc\", \"cpu_count\": 64, \"cpu_model\": \"志强 E52699 V4\", \"manage_ip\": \"172.16.0.108\", \"os_version\": \"Centos 7.9.2004\", \"board_model\": \"C610\", \"os_platform\": \"Linux\", \"device_status\": 0, \"board_manufacturer\": \"英特尔\", \"cpu_physical_count\": 24}', 2);
INSERT INTO `cmdb_tabledata` VALUES (9, '2021-05-25 13:54:47.546403', '2021-05-25 13:54:47.546403', '', 0, '{\"board_sn\": \"00:34:87:ce:2f\", \"hostname\": \"ops109.devops.cc\", \"cpu_count\": 64, \"cpu_model\": \"志强 E52699 V4\", \"manage_ip\": \"172.16.0.109\", \"os_version\": \"Centos 7.9.2004\", \"board_model\": \"C610\", \"os_platform\": \"Linux\", \"device_status\": 0, \"board_manufacturer\": \"英特尔\", \"cpu_physical_count\": 24}', 2);
INSERT INTO `cmdb_tabledata` VALUES (10, '2021-05-25 13:55:00.534673', '2021-05-25 21:01:24.893161', '', 0, '{\"board_sn\": \"00:34:87:ce:2f\", \"hostname\": \"ops11.devops.cc\", \"cpu_count\": 64, \"cpu_model\": \"志强 E52699 V4\", \"manage_ip\": \"172.16.0.11\", \"os_version\": \"Centos 7.9.2004\", \"board_model\": \"C610\", \"os_platform\": \"Linux\", \"device_status\": 0, \"board_manufacturer\": \"英特尔\", \"cpu_physical_count\": 24}', 2);
INSERT INTO `cmdb_tabledata` VALUES (12, '2021-05-25 21:27:35.937076', '2021-05-25 22:18:24.389179', '', 1, '{\"up\": \"up\", \"name\": \"eth1\", \"hwaddr\": \"00:cc:o9:98:df\", \"ipaddr\": \"192.168.1.11\", \"gateway\": \"192.168.1.254\", \"network\": \"255.255.255.0\"}', 4);
INSERT INTO `cmdb_tabledata` VALUES (13, '2021-05-25 21:27:43.864905', '2021-05-27 16:24:37.671758', '', 0, '{\"up\": \"up\", \"name\": \"eth121\", \"hwaddr\": \"00:cc:o9:98:df\", \"ipaddr\": \"192.168.1.121\", \"gateway\": \"192.168.1.254\", \"network\": \"255.255.255.0\"}', 4);
INSERT INTO `cmdb_tabledata` VALUES (14, '2021-05-25 21:27:52.660357', '2021-05-25 21:27:52.660357', '', 0, '{\"up\": \"up\", \"name\": \"eth3\", \"hwaddr\": \"00:cc:o9:98:df\", \"ipaddr\": \"192.168.1.13\", \"gateway\": \"192.168.1.254\", \"network\": \"255.255.255.0\"}', 4);
INSERT INTO `cmdb_tabledata` VALUES (15, '2021-05-27 19:12:09.130727', '2021-05-27 19:12:09.130727', '', 0, '{\"up\": \"up\", \"name\": \"eth009\", \"hwaddr\": \"00:cc:o9:98:df\", \"ipaddr\": \"192.168.1.90\", \"gateway\": null, \"network\": \"None\"}', 4);
INSERT INTO `cmdb_tabledata` VALUES (16, '2021-06-13 23:54:19.417135', '2021-06-13 23:54:19.417135', '', 0, '{\"up\": \"up\", \"name\": \"eth009\", \"hwaddr\": \"00:cc:o9:98:df\", \"ipaddr\": \"192.168.1.90\", \"gateway\": null, \"network\": \"None\"}', 4);
INSERT INTO `cmdb_tabledata` VALUES (17, '2021-06-13 23:54:53.424214', '2021-06-13 23:54:53.424214', '', 0, '{\"up\": \"up\", \"name\": \"eth009\", \"hwaddr\": \"00:cc:o9:98:df\", \"ipaddr\": \"192.168.1.90\", \"gateway\": null, \"network\": \"None\"}', 4);
INSERT INTO `cmdb_tabledata` VALUES (18, '2021-06-13 23:58:15.135133', '2021-06-13 23:58:15.135133', '', 0, '{\"up\": \"up\", \"name\": \"eth009\", \"hwaddr\": \"00:cc:o9:98:df\", \"ipaddr\": \"192.168.1.90\", \"gateway\": null, \"network\": \"None\"}', 4);
INSERT INTO `cmdb_tabledata` VALUES (19, '2021-06-14 02:13:36.141481', '2021-06-14 02:13:36.141481', '', 0, '{\"up\": \"up\", \"name\": \"eth009\", \"hwaddr\": \"00:cc:o9:98:df\", \"ipaddr\": \"192.168.1.90\", \"gateway\": null, \"network\": \"None\"}', 4);
INSERT INTO `cmdb_tabledata` VALUES (20, '2021-06-14 20:58:27.229403', '2021-06-14 20:58:27.229403', '', 0, '{\"up\": \"up\", \"name\": \"eth009\", \"hwaddr\": \"00:cc:o9:98:df\", \"ipaddr\": \"192.168.1.90\", \"gateway\": \"None\", \"network\": \"255.255.255.0\"}', 4);
INSERT INTO `cmdb_tabledata` VALUES (21, '2021-06-14 20:59:03.355760', '2021-06-14 20:59:03.355760', '', 0, '{\"up\": \"up\", \"name\": \"eth009\", \"hwaddr\": \"00:cc:o9:98:df\", \"ipaddr\": \"192.168.1.90\", \"gateway\": \"None\", \"network\": \"255.255.255.0\"}', 4);
INSERT INTO `cmdb_tabledata` VALUES (22, '2021-06-14 21:00:36.293837', '2021-06-14 21:00:36.293837', '', 0, '{\"up\": \"up\", \"name\": \"eth009\", \"hwaddr\": \"00:cc:o9:98:df\", \"ipaddr\": \"192.168.1.90\", \"gateway\": \"None\", \"network\": \"255.255.255.0\"}', 4);
INSERT INTO `cmdb_tabledata` VALUES (23, '2021-06-14 21:01:21.643523', '2021-06-14 21:01:21.643523', '', 0, '{\"up\": \"up\", \"name\": \"eth009\", \"hwaddr\": \"00:cc:o9:98:df\", \"ipaddr\": \"192.168.1.90\", \"gateway\": \"None\", \"network\": \"255.255.255.0\"}', 4);
INSERT INTO `cmdb_tabledata` VALUES (24, '2021-06-14 21:03:16.322747', '2021-06-14 21:03:16.322747', '', 0, '{\"up\": \"up\", \"name\": \"eth009\", \"hwaddr\": \"00:cc:o9:98:df\", \"ipaddr\": \"192.168.1.90\", \"gateway\": \"None\", \"network\": \"255.255.255.0\"}', 4);
INSERT INTO `cmdb_tabledata` VALUES (25, '2021-06-14 21:13:32.469486', '2021-06-14 21:13:32.469486', '', 0, '{\"up\": \"up\", \"name\": \"eth009\", \"hwaddr\": \"00:cc:o9:98:df\", \"ipaddr\": \"192.168.1.90\", \"gateway\": \"None\", \"network\": \"255.255.255.0\"}', 4);
INSERT INTO `cmdb_tabledata` VALUES (26, '2021-06-14 21:13:56.611868', '2021-06-14 21:13:56.611868', '', 0, '{\"up\": \"up\", \"name\": \"eth009\", \"hwaddr\": \"00:cc:o9:98:df\", \"ipaddr\": \"192.168.1.90\", \"gateway\": \"None\", \"network\": \"255.255.255.0\"}', 4);
INSERT INTO `cmdb_tabledata` VALUES (27, '2021-06-14 21:22:50.229426', '2021-06-14 21:22:50.229426', '', 0, '{\"up\": \"up\", \"name\": \"eth02209\", \"hwaddr\": \"00:cc:o9:98:df\", \"ipaddr\": \"192.168.1.120\", \"gateway\": \"None\", \"network\": \"255.255.255.0\"}', 4);

-- ----------------------------
-- Table structure for cmdb_tablefield
-- ----------------------------
DROP TABLE IF EXISTS `cmdb_tablefield`;
CREATE TABLE `cmdb_tablefield`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `remark` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `fields` json NOT NULL,
  `rules` json NOT NULL,
  `table_classify_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `table_classify_id`(`table_classify_id`) USING BTREE,
  CONSTRAINT `cmdb_tablefield_table_classify_id_46af4139_fk_cmdb_tabl` FOREIGN KEY (`table_classify_id`) REFERENCES `cmdb_tableclassify` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmdb_tablefield
-- ----------------------------
INSERT INTO `cmdb_tablefield` VALUES (1, '2021-05-24 21:53:21.793140', '2021-05-24 21:53:21.793140', '', 0, '{\"board_sn\": {\"name\": \"主板SN号\", \"order\": 5}, \"hostname\": {\"guid\": true, \"name\": \"主机名\", \"order\": 0}, \"cpu_count\": {\"name\": \"逻辑CPU\", \"order\": 5}, \"cpu_model\": {\"name\": \"cpu_型号\", \"order\": 10}, \"manage_ip\": {\"name\": \"管理IP\", \"order\": 1}, \"os_version\": {\"name\": \"系统版本\", \"order\": 3}, \"board_model\": {\"name\": \"型号\", \"order\": 7}, \"os_platform\": {\"name\": \"操作系统\", \"order\": 2}, \"device_status\": {\"name\": \"设备状态\", \"order\": 4}, \"board_manufacturer\": {\"name\": \"制造商\", \"order\": 6}, \"cpu_physical_count\": {\"name\": \"物理CPU\", \"order\": 6}}', '{\"board_sn\": {\"lens\": 64, \"type\": \"Str\"}, \"hostname\": {\"lens\": 46, \"type\": \"Str\", \"unique\": true, \"not_null\": false}, \"cpu_count\": {\"max\": 130, \"min\": 1, \"type\": \"Int\"}, \"cpu_model\": {\"lens\": 64, \"type\": \"Str\"}, \"manage_ip\": {\"type\": \"IP\", \"prefix\": \"172.16.0.\", \"unique\": true}, \"os_version\": {\"lens\": 64, \"type\": \"Str\"}, \"board_model\": {\"lens\": 64, \"type\": \"Str\"}, \"os_platform\": {\"lens\": 64, \"type\": \"Str\"}, \"device_status\": {\"type\": \"Choice\", \"choice\": [\"上线\", \"下线\", \"离线\"], \"default\": 0}, \"board_manufacturer\": {\"lens\": 64, \"type\": \"Str\"}, \"cpu_physical_count\": {\"max\": 64, \"min\": 1, \"type\": \"Int\"}}', 2);
INSERT INTO `cmdb_tablefield` VALUES (2, '2021-05-24 21:56:53.666840', '2021-05-24 21:56:53.666840', '', 0, '{\"up\": {\"name\": \"网卡状态\", \"order\": 5}, \"name\": {\"guid\": true, \"name\": \"网卡名\", \"order\": 0}, \"hwaddr\": {\"name\": \"Mac地址\", \"order\": 4}, \"ipaddr\": {\"name\": \"IP地址\", \"order\": 1}, \"gateway\": {\"name\": \"网关\", \"order\": 3}, \"network\": {\"name\": \"子网掩码\", \"order\": 2}}', '{\"up\": {\"lens\": 64, \"type\": \"Str\"}, \"name\": {\"lens\": 46, \"type\": \"Str\", \"unique\": true}, \"hwaddr\": {\"lens\": 120, \"type\": \"Str\"}, \"ipaddr\": {\"type\": \"IP\", \"unique\": true, \"not_null\": true}, \"gateway\": {\"type\": \"IP\"}, \"network\": {\"lens\": 64, \"type\": \"Str\"}}', 4);
INSERT INTO `cmdb_tablefield` VALUES (3, '2021-05-24 22:02:38.548339', '2021-06-15 14:56:30.284073', '', 0, '{\"slot\": {\"guid\": true, \"name\": \"槽位\", \"order\": 0}, \"model\": {\"name\": \"型号\", \"order\": 1}, \"pd_type\": {\"name\": \"类别\", \"order\": 2}, \"capacity\": {\"name\": \"容量\", \"order\": 2}}', '{\"slot\": {\"lens\": 64, \"type\": \"Str\", \"unique\": true}, \"model\": {\"lens\": 64, \"type\": \"Str\"}, \"pd_type\": {\"lens\": 64, \"type\": \"Str\"}, \"capacity\": {\"lens\": 64, \"type\": \"Str\"}}', 3);
INSERT INTO `cmdb_tablefield` VALUES (4, '2021-05-24 22:07:42.780495', '2021-05-24 22:07:42.780495', '', 0, '{\"sn\": {\"name\": \"SN号\", \"order\": 4}, \"slot\": {\"guid\": true, \"name\": \"槽位\", \"order\": 0}, \"model\": {\"name\": \"型号\", \"order\": 2}, \"speed\": {\"name\": \"速率\", \"order\": 5}, \"capacity\": {\"name\": \"容量\", \"order\": 3}, \"manufacturer\": {\"name\": \"制造商\", \"order\": 1}}', '{\"sn\": {\"lens\": 64, \"type\": \"Str\"}, \"slot\": {\"lens\": 64, \"type\": \"Str\", \"unique\": true}, \"model\": {\"lens\": 64, \"type\": \"Str\"}, \"speed\": {\"lens\": 64, \"type\": \"Str\"}, \"capacity\": {\"lens\": 64, \"type\": \"Str\"}, \"manufacturer\": {\"lens\": 64, \"type\": \"Str\"}}', 5);
INSERT INTO `cmdb_tablefield` VALUES (5, '2021-05-24 22:10:51.323720', '2021-05-24 22:10:51.323720', '', 0, '{\"name\": {\"guid\": true, \"name\": \"标签名\", \"order\": 0}}', '{\"name\": {\"lens\": 64, \"type\": \"Str\", \"unique\": true}}', 7);

-- ----------------------------
-- Table structure for cmdb_tablerelation
-- ----------------------------
DROP TABLE IF EXISTS `cmdb_tablerelation`;
CREATE TABLE `cmdb_tablerelation`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `remark` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `is_foreign_key` tinyint(1) NOT NULL,
  `child_table_id` int(11) NOT NULL,
  `parent_table_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `cmdb_tablerelation_parent_table_id_child_table_id_78fd3bf5_uniq`(`parent_table_id`, `child_table_id`) USING BTREE,
  INDEX `cmdb_tablerelation_child_table_id_60c022cc_fk_cmdb_tabl`(`child_table_id`) USING BTREE,
  CONSTRAINT `cmdb_tablerelation_child_table_id_60c022cc_fk_cmdb_tabl` FOREIGN KEY (`child_table_id`) REFERENCES `cmdb_tableclassify` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `cmdb_tablerelation_parent_table_id_a13f41f3_fk_cmdb_tabl` FOREIGN KEY (`parent_table_id`) REFERENCES `cmdb_tableclassify` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmdb_tablerelation
-- ----------------------------
INSERT INTO `cmdb_tablerelation` VALUES (1, '2021-05-24 22:20:01.733270', '2021-05-24 22:20:01.738257', NULL, 0, 0, 3, 2);
INSERT INTO `cmdb_tablerelation` VALUES (2, '2021-05-24 22:23:05.820006', '2021-05-24 22:23:05.823029', NULL, 0, 0, 4, 2);
INSERT INTO `cmdb_tablerelation` VALUES (3, '2021-05-24 22:23:11.295365', '2021-05-24 22:23:11.298390', NULL, 0, 0, 5, 2);
INSERT INTO `cmdb_tablerelation` VALUES (6, '2021-05-25 00:52:20.922392', '2021-05-25 00:52:20.924384', NULL, 0, 1, 7, 2);

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk_user_profile_id`(`user_id`) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_user_profile_id` FOREIGN KEY (`user_id`) REFERENCES `user_profile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
INSERT INTO `django_admin_log` VALUES (1, '2021-04-28 18:01:59.958592', '1', 'admin', 1, '[{\"added\": {}}]', 10, 1);
INSERT INTO `django_admin_log` VALUES (2, '2021-04-28 18:02:17.599808', '1', '闫世成', 2, '[{\"changed\": {\"fields\": [\"Last login\", \"\\u89d2\\u8272\"]}}]', 7, 1);

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label`, `model`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (13, 'cmdb', 'assetdata');
INSERT INTO `django_content_type` VALUES (16, 'cmdb', 'assetrelation');
INSERT INTO `django_content_type` VALUES (20, 'cmdb', 'assetsrelation');
INSERT INTO `django_content_type` VALUES (21, 'cmdb', 'changerecord');
INSERT INTO `django_content_type` VALUES (14, 'cmdb', 'classify');
INSERT INTO `django_content_type` VALUES (11, 'cmdb', 'databind');
INSERT INTO `django_content_type` VALUES (15, 'cmdb', 'datamap');
INSERT INTO `django_content_type` VALUES (19, 'cmdb', 'fieldmap');
INSERT INTO `django_content_type` VALUES (18, 'cmdb', 'schema');
INSERT INTO `django_content_type` VALUES (17, 'cmdb', 'schemarelation');
INSERT INTO `django_content_type` VALUES (12, 'cmdb', 'tablebind');
INSERT INTO `django_content_type` VALUES (22, 'cmdb', 'tableclassify');
INSERT INTO `django_content_type` VALUES (23, 'cmdb', 'tabledata');
INSERT INTO `django_content_type` VALUES (24, 'cmdb', 'tablefield');
INSERT INTO `django_content_type` VALUES (25, 'cmdb', 'tablerelation');
INSERT INTO `django_content_type` VALUES (4, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (8, 'rbac', 'menus');
INSERT INTO `django_content_type` VALUES (9, 'rbac', 'permissions');
INSERT INTO `django_content_type` VALUES (10, 'rbac', 'roles');
INSERT INTO `django_content_type` VALUES (5, 'sessions', 'session');
INSERT INTO `django_content_type` VALUES (6, 'user', 'department');
INSERT INTO `django_content_type` VALUES (7, 'user', 'userprofile');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 48 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'rbac', '0001_initial', '2021-04-19 21:31:18.057580');
INSERT INTO `django_migrations` VALUES (2, 'contenttypes', '0001_initial', '2021-04-19 21:31:18.253044');
INSERT INTO `django_migrations` VALUES (3, 'contenttypes', '0002_remove_content_type_name', '2021-04-19 21:31:18.310536');
INSERT INTO `django_migrations` VALUES (4, 'auth', '0001_initial', '2021-04-19 21:31:18.381327');
INSERT INTO `django_migrations` VALUES (5, 'auth', '0002_alter_permission_name_max_length', '2021-04-19 21:31:18.544913');
INSERT INTO `django_migrations` VALUES (6, 'auth', '0003_alter_user_email_max_length', '2021-04-19 21:31:18.551895');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0004_alter_user_username_opts', '2021-04-19 21:31:18.558931');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0005_alter_user_last_login_null', '2021-04-19 21:31:18.565921');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0006_require_contenttypes_0002', '2021-04-19 21:31:18.568850');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0007_alter_validators_add_error_messages', '2021-04-19 21:31:18.574834');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0008_alter_user_username_max_length', '2021-04-19 21:31:18.580907');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0009_alter_user_last_name_max_length', '2021-04-19 21:31:18.588841');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0010_alter_group_name_max_length', '2021-04-19 21:31:18.600764');
INSERT INTO `django_migrations` VALUES (14, 'auth', '0011_update_proxy_permissions', '2021-04-19 21:31:18.609399');
INSERT INTO `django_migrations` VALUES (15, 'auth', '0012_alter_user_first_name_max_length', '2021-04-19 21:31:18.616419');
INSERT INTO `django_migrations` VALUES (16, 'user', '0001_initial', '2021-04-19 21:31:18.715804');
INSERT INTO `django_migrations` VALUES (17, 'admin', '0001_initial', '2021-04-19 21:31:19.033972');
INSERT INTO `django_migrations` VALUES (18, 'admin', '0002_logentry_remove_auto_add', '2021-04-19 21:31:19.114896');
INSERT INTO `django_migrations` VALUES (19, 'admin', '0003_logentry_add_action_flag_choices', '2021-04-19 21:31:19.126791');
INSERT INTO `django_migrations` VALUES (20, 'sessions', '0001_initial', '2021-04-19 21:31:19.146738');
INSERT INTO `django_migrations` VALUES (22, 'rbac', '0002_auto_20210419_2135', '2021-04-19 21:35:29.296330');
INSERT INTO `django_migrations` VALUES (41, 'cmdb', '0001_initial', '2021-05-24 18:48:01.148176');
INSERT INTO `django_migrations` VALUES (42, 'cmdb', '0002_auto_20210524_1848', '2021-05-24 18:48:33.034256');
INSERT INTO `django_migrations` VALUES (43, 'cmdb', '0003_auto_20210527_1305', '2021-05-27 14:51:17.943252');
INSERT INTO `django_migrations` VALUES (44, 'cmdb', '0004_auto_20210527_1450', '2021-05-27 14:51:18.170645');
INSERT INTO `django_migrations` VALUES (45, 'cmdb', '0005_tableclassify_icon', '2021-05-31 16:20:38.035324');
INSERT INTO `django_migrations` VALUES (46, 'cmdb', '0006_auto_20210531_1630', '2021-05-31 16:30:42.957851');
INSERT INTO `django_migrations` VALUES (47, 'cmdb', '0007_auto_20210607_2204', '2021-06-07 22:04:35.088157');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('939jlrupuwrrt8mz9kzik5kqqkyggqaw', '.eJxVjMsOwiAQRf-FtSEMbQdw6d5vaGZgkKqBpI-V8d-1SRe6veec-1IjbWsZt0XmcUrqrECdfjem-JC6g3Snems6trrOE-td0Qdd9LUleV4O9--g0FK-tRl6BkzZ5Q6AxPiQBLMHYYggLtjB2X5AYmsQQu7IRoOhY2_AIUan3h_UczcO:1lYU9P:0E6grHykUOa7aaYedzLw-a972AQfG9VxVUwLzdQxUzA', '2021-05-03 21:41:19.007903');
INSERT INTO `django_session` VALUES ('dflyuoqs8abebpgzj1zp2cca7dk0jhaj', '.eJxVjMsOwiAQRf-FtSEMbQdw6d5vaGZgkKqBpI-V8d-1SRe6veec-1IjbWsZt0XmcUrqrECdfjem-JC6g3Snems6trrOE-td0Qdd9LUleV4O9--g0FK-tRl6BkzZ5Q6AxPiQBLMHYYggLtjB2X5AYmsQQu7IRoOhY2_AIUan3h_UczcO:1lf1Pc:f6efsLh5ZRmN-EwaaD9hxJXmcK9umSmAjAFNkmkCUx4', '2021-05-21 22:25:04.239428');

-- ----------------------------
-- Table structure for rbac_menus
-- ----------------------------
DROP TABLE IF EXISTS `rbac_menus`;
CREATE TABLE `rbac_menus`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `remark` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `title` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pid` int(11) NULL DEFAULT NULL,
  `icon` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rbac_menus
-- ----------------------------

-- ----------------------------
-- Table structure for rbac_permissions
-- ----------------------------
DROP TABLE IF EXISTS `rbac_permissions`;
CREATE TABLE `rbac_permissions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `remark` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `title` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rbac_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for rbac_roles
-- ----------------------------
DROP TABLE IF EXISTS `rbac_roles`;
CREATE TABLE `rbac_roles`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `remark` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `title` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `title`(`title`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rbac_roles
-- ----------------------------
INSERT INTO `rbac_roles` VALUES (1, '2021-04-28 18:01:59.946627', '2021-04-28 18:01:59.946627', 'admin', 'admin');

-- ----------------------------
-- Table structure for rbac_roles_menus
-- ----------------------------
DROP TABLE IF EXISTS `rbac_roles_menus`;
CREATE TABLE `rbac_roles_menus`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roles_id` int(11) NOT NULL,
  `menus_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `_rbac_roles_menus_roles_id_menus_id_c5a7e240_uniq`(`roles_id`, `menus_id`) USING BTREE,
  INDEX `_rbac_roles_menus_menus_id_2b7dec96_fk_rbac_menus_id`(`menus_id`) USING BTREE,
  CONSTRAINT `_rbac_roles_menus_menus_id_2b7dec96_fk_rbac_menus_id` FOREIGN KEY (`menus_id`) REFERENCES `rbac_menus` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `_rbac_roles_menus_roles_id_95785c24_fk__rbac_roles_id` FOREIGN KEY (`roles_id`) REFERENCES `rbac_roles` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rbac_roles_menus
-- ----------------------------

-- ----------------------------
-- Table structure for rbac_roles_permissions
-- ----------------------------
DROP TABLE IF EXISTS `rbac_roles_permissions`;
CREATE TABLE `rbac_roles_permissions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roles_id` int(11) NOT NULL,
  `permissions_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `_rbac_roles_permissions_roles_id_permissions_id_6227f614_uniq`(`roles_id`, `permissions_id`) USING BTREE,
  INDEX `D_rbac_roles_permissi_permissions_id_b8365706_fk_rbac_per`(`permissions_id`) USING BTREE,
  CONSTRAINT `D_rbac_roles_permissi_permissions_id_b8365706_fk_rbac_per` FOREIGN KEY (`permissions_id`) REFERENCES `rbac_permissions` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `_rbac_roles_permissions_roles_id_32ea1355_fk__rbac_roles_id` FOREIGN KEY (`roles_id`) REFERENCES `rbac_roles` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rbac_roles_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for user_department
-- ----------------------------
DROP TABLE IF EXISTS `user_department`;
CREATE TABLE `user_department`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `remark` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `title` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `count` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_department
-- ----------------------------

-- ----------------------------
-- Table structure for user_profile
-- ----------------------------
DROP TABLE IF EXISTS `user_profile`;
CREATE TABLE `user_profile`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `remarks` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `create_time` datetime(6) NOT NULL,
  `department_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `email`(`email`) USING BTREE,
  INDEX `user_profile_department_id_fc0a31ad_fk_user_department_id`(`department_id`) USING BTREE,
  INDEX `user_profile_name_614c13cf`(`name`) USING BTREE,
  CONSTRAINT `user_profile_department_id_fc0a31ad_fk_user_department_id` FOREIGN KEY (`department_id`) REFERENCES `user_department` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_profile
-- ----------------------------
INSERT INTO `user_profile` VALUES (1, 'pbkdf2_sha256$216000$hI2QXJardWuL$Vv+bArW4FPGI6MzoFna3b8GBmlqk8NGxv6h1k9428HI=', '2021-05-07 22:25:04.236420', 1, 'devops@sina.com', 1, 1, '闫世成', NULL, '', '2021-04-19 21:41:03.897030', NULL);

-- ----------------------------
-- Table structure for user_profile_groups
-- ----------------------------
DROP TABLE IF EXISTS `user_profile_groups`;
CREATE TABLE `user_profile_groups`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `user_profile_groups_userprofile_id_group_id_634d6ad7_uniq`(`userprofile_id`, `group_id`) USING BTREE,
  INDEX `user_profile_groups_group_id_864f8fbf_fk_auth_group_id`(`group_id`) USING BTREE,
  CONSTRAINT `user_profile_groups_group_id_864f8fbf_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `user_profile_groups_userprofile_id_3e52d209_fk_user_profile_id` FOREIGN KEY (`userprofile_id`) REFERENCES `user_profile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_profile_groups
-- ----------------------------

-- ----------------------------
-- Table structure for user_profile_roles
-- ----------------------------
DROP TABLE IF EXISTS `user_profile_roles`;
CREATE TABLE `user_profile_roles`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `roles_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `user_profile_roles_userprofile_id_roles_id_69276c27_uniq`(`userprofile_id`, `roles_id`) USING BTREE,
  INDEX `user_profile_roles_roles_id_4d97e1d2_fk__rbac_roles_id`(`roles_id`) USING BTREE,
  CONSTRAINT `user_profile_roles_roles_id_4d97e1d2_fk__rbac_roles_id` FOREIGN KEY (`roles_id`) REFERENCES `rbac_roles` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `user_profile_roles_userprofile_id_72a62b9e_fk_user_profile_id` FOREIGN KEY (`userprofile_id`) REFERENCES `user_profile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_profile_roles
-- ----------------------------
INSERT INTO `user_profile_roles` VALUES (1, 1, 1);

-- ----------------------------
-- Table structure for user_profile_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `user_profile_user_permissions`;
CREATE TABLE `user_profile_user_permissions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `user_profile_user_permis_userprofile_id_permissio_881e08f1_uniq`(`userprofile_id`, `permission_id`) USING BTREE,
  INDEX `user_profile_user_pe_permission_id_f5abe73f_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `user_profile_user_pe_permission_id_f5abe73f_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `user_profile_user_pe_userprofile_id_663dc0ea_fk_user_prof` FOREIGN KEY (`userprofile_id`) REFERENCES `user_profile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_profile_user_permissions
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
