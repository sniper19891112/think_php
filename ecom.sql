/*
 Navicat Premium Data Transfer

 Source Server         : 43.154.106.155_3306
 Source Server Type    : MySQL
 Source Server Version : 50744
 Source Host           : 43.154.106.155:3306
 Source Schema         : thinkphp

 Target Server Type    : MySQL
 Target Server Version : 50744
 File Encoding         : 65001

 Date: 05/09/2024 01:07:22
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for system_auth
-- ----------------------------
DROP TABLE IF EXISTS `system_auth`;
CREATE TABLE `system_auth`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '权限名称',
  `status` tinyint(1) UNSIGNED NULL DEFAULT 1 COMMENT '权限状态',
  `sort` bigint(20) UNSIGNED NULL DEFAULT 0 COMMENT '排序权重',
  `desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '备注说明',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_system_auth_status`(`status`) USING BTREE,
  INDEX `index_system_auth_title`(`title`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统-权限' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of system_auth
-- ----------------------------
INSERT INTO `system_auth` VALUES (1, '测试账号', 0, 0, '拥有全部权限', '2019-10-17 15:04:15');
INSERT INTO `system_auth` VALUES (3, '客服', 1, 0, '客服', '2022-03-12 15:12:19');
INSERT INTO `system_auth` VALUES (4, '管理', 1, 0, '管理', '2022-03-12 15:13:03');

-- ----------------------------
-- Table structure for system_auth_node
-- ----------------------------
DROP TABLE IF EXISTS `system_auth_node`;
CREATE TABLE `system_auth_node`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `auth` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT '角色',
  `node` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '节点',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_system_auth_auth`(`auth`) USING BTREE,
  INDEX `index_system_auth_node`(`node`(191)) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2213 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统-权限-授权' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of system_auth_node
-- ----------------------------
INSERT INTO `system_auth_node` VALUES (1321, 1, 'admin');
INSERT INTO `system_auth_node` VALUES (1322, 1, 'admin/auth');
INSERT INTO `system_auth_node` VALUES (1323, 1, 'admin/auth/index');
INSERT INTO `system_auth_node` VALUES (1324, 1, 'admin/auth/apply');
INSERT INTO `system_auth_node` VALUES (1325, 1, 'admin/auth/add');
INSERT INTO `system_auth_node` VALUES (1326, 1, 'admin/auth/edit');
INSERT INTO `system_auth_node` VALUES (1327, 1, 'admin/auth/refresh');
INSERT INTO `system_auth_node` VALUES (1328, 1, 'admin/auth/forbid');
INSERT INTO `system_auth_node` VALUES (1329, 1, 'admin/auth/resume');
INSERT INTO `system_auth_node` VALUES (1330, 1, 'admin/auth/remove');
INSERT INTO `system_auth_node` VALUES (1331, 1, 'admin/config');
INSERT INTO `system_auth_node` VALUES (1332, 1, 'admin/config/info');
INSERT INTO `system_auth_node` VALUES (1333, 1, 'admin/config/config');
INSERT INTO `system_auth_node` VALUES (1334, 1, 'admin/config/file');
INSERT INTO `system_auth_node` VALUES (1335, 1, 'admin/deal');
INSERT INTO `system_auth_node` VALUES (1336, 1, 'admin/deal/order_list');
INSERT INTO `system_auth_node` VALUES (1337, 1, 'admin/deal/deal_console');
INSERT INTO `system_auth_node` VALUES (1338, 1, 'admin/deal/goods_list');
INSERT INTO `system_auth_node` VALUES (1339, 1, 'admin/deal/goods_cate');
INSERT INTO `system_auth_node` VALUES (1340, 1, 'admin/deal/add_goods');
INSERT INTO `system_auth_node` VALUES (1341, 1, 'admin/deal/add_cate');
INSERT INTO `system_auth_node` VALUES (1342, 1, 'admin/deal/edit_goods');
INSERT INTO `system_auth_node` VALUES (1343, 1, 'admin/deal/edit_cate');
INSERT INTO `system_auth_node` VALUES (1344, 1, 'admin/deal/edit_goods_status');
INSERT INTO `system_auth_node` VALUES (1345, 1, 'admin/deal/del_goods');
INSERT INTO `system_auth_node` VALUES (1346, 1, 'admin/deal/del_cate');
INSERT INTO `system_auth_node` VALUES (1347, 1, 'admin/deal/user_recharge');
INSERT INTO `system_auth_node` VALUES (1348, 1, 'admin/deal/edit_recharge');
INSERT INTO `system_auth_node` VALUES (1349, 1, 'admin/deal/deposit_list');
INSERT INTO `system_auth_node` VALUES (1350, 1, 'admin/deal/do_deposit');
INSERT INTO `system_auth_node` VALUES (1351, 1, 'admin/deal/do_deposit2');
INSERT INTO `system_auth_node` VALUES (1352, 1, 'admin/deal/daochu');
INSERT INTO `system_auth_node` VALUES (1353, 1, 'admin/deal/do_deposit3');
INSERT INTO `system_auth_node` VALUES (1354, 1, 'admin/deal/do_commission');
INSERT INTO `system_auth_node` VALUES (1355, 1, 'admin/deal/order_log');
INSERT INTO `system_auth_node` VALUES (1356, 1, 'admin/deal/team_reward');
INSERT INTO `system_auth_node` VALUES (1357, 1, 'admin/help');
INSERT INTO `system_auth_node` VALUES (1358, 1, 'admin/help/message_ctrl');
INSERT INTO `system_auth_node` VALUES (1359, 1, 'admin/help/add_message');
INSERT INTO `system_auth_node` VALUES (1360, 1, 'admin/help/edit_message');
INSERT INTO `system_auth_node` VALUES (1361, 1, 'admin/help/del_message');
INSERT INTO `system_auth_node` VALUES (1362, 1, 'admin/help/home_msg');
INSERT INTO `system_auth_node` VALUES (1363, 1, 'admin/help/edit_home_msg');
INSERT INTO `system_auth_node` VALUES (1364, 1, 'admin/help/banner');
INSERT INTO `system_auth_node` VALUES (1365, 1, 'admin/help/edit_banner');
INSERT INTO `system_auth_node` VALUES (1366, 1, 'admin/help/add_banner');
INSERT INTO `system_auth_node` VALUES (1367, 1, 'admin/index');
INSERT INTO `system_auth_node` VALUES (1368, 1, 'admin/index/main');
INSERT INTO `system_auth_node` VALUES (1369, 1, 'admin/index/clearruntime');
INSERT INTO `system_auth_node` VALUES (1370, 1, 'admin/index/buildoptimize');
INSERT INTO `system_auth_node` VALUES (1371, 1, 'admin/menu');
INSERT INTO `system_auth_node` VALUES (1372, 1, 'admin/menu/index');
INSERT INTO `system_auth_node` VALUES (1373, 1, 'admin/menu/add');
INSERT INTO `system_auth_node` VALUES (1374, 1, 'admin/menu/edit');
INSERT INTO `system_auth_node` VALUES (1375, 1, 'admin/menu/resume');
INSERT INTO `system_auth_node` VALUES (1376, 1, 'admin/menu/forbid');
INSERT INTO `system_auth_node` VALUES (1377, 1, 'admin/menu/remove');
INSERT INTO `system_auth_node` VALUES (1378, 1, 'admin/oplog');
INSERT INTO `system_auth_node` VALUES (1379, 1, 'admin/oplog/index');
INSERT INTO `system_auth_node` VALUES (1380, 1, 'admin/oplog/clear');
INSERT INTO `system_auth_node` VALUES (1381, 1, 'admin/oplog/remove');
INSERT INTO `system_auth_node` VALUES (1382, 1, 'admin/pay');
INSERT INTO `system_auth_node` VALUES (1383, 1, 'admin/pay/index');
INSERT INTO `system_auth_node` VALUES (1384, 1, 'admin/pay/edit');
INSERT INTO `system_auth_node` VALUES (1385, 1, 'admin/queue');
INSERT INTO `system_auth_node` VALUES (1386, 1, 'admin/queue/index');
INSERT INTO `system_auth_node` VALUES (1387, 1, 'admin/queue/redo');
INSERT INTO `system_auth_node` VALUES (1388, 1, 'admin/queue/processstart');
INSERT INTO `system_auth_node` VALUES (1389, 1, 'admin/queue/processstop');
INSERT INTO `system_auth_node` VALUES (1390, 1, 'admin/queue/remove');
INSERT INTO `system_auth_node` VALUES (1391, 1, 'admin/shop');
INSERT INTO `system_auth_node` VALUES (1392, 1, 'admin/shop/order_list');
INSERT INTO `system_auth_node` VALUES (1393, 1, 'admin/shop/goods_list');
INSERT INTO `system_auth_node` VALUES (1394, 1, 'admin/shop/goods_cate');
INSERT INTO `system_auth_node` VALUES (1395, 1, 'admin/shop/add_goods');
INSERT INTO `system_auth_node` VALUES (1396, 1, 'admin/shop/add_cate');
INSERT INTO `system_auth_node` VALUES (1397, 1, 'admin/shop/edit_goods');
INSERT INTO `system_auth_node` VALUES (1398, 1, 'admin/shop/edit_cate');
INSERT INTO `system_auth_node` VALUES (1399, 1, 'admin/shop/edit_goods_status');
INSERT INTO `system_auth_node` VALUES (1400, 1, 'admin/shop/del_goods');
INSERT INTO `system_auth_node` VALUES (1401, 1, 'admin/shop/del_cate');
INSERT INTO `system_auth_node` VALUES (1402, 1, 'admin/shop/daochu');
INSERT INTO `system_auth_node` VALUES (1403, 1, 'admin/shop/do_deposit3');
INSERT INTO `system_auth_node` VALUES (1404, 1, 'admin/user');
INSERT INTO `system_auth_node` VALUES (1405, 1, 'admin/user/index');
INSERT INTO `system_auth_node` VALUES (1406, 1, 'admin/user/add');
INSERT INTO `system_auth_node` VALUES (1407, 1, 'admin/user/edit');
INSERT INTO `system_auth_node` VALUES (1408, 1, 'admin/user/pass');
INSERT INTO `system_auth_node` VALUES (1409, 1, 'admin/user/forbid');
INSERT INTO `system_auth_node` VALUES (1410, 1, 'admin/user/resume');
INSERT INTO `system_auth_node` VALUES (1411, 1, 'admin/user/remove');
INSERT INTO `system_auth_node` VALUES (1412, 1, 'admin/users');
INSERT INTO `system_auth_node` VALUES (1413, 1, 'admin/users/index');
INSERT INTO `system_auth_node` VALUES (1414, 1, 'admin/users/level');
INSERT INTO `system_auth_node` VALUES (1415, 1, 'admin/users/add_users');
INSERT INTO `system_auth_node` VALUES (1416, 1, 'admin/users/edit_users');
INSERT INTO `system_auth_node` VALUES (1417, 1, 'admin/users/edit_users_ankou');
INSERT INTO `system_auth_node` VALUES (1418, 1, 'admin/users/edit_users_status');
INSERT INTO `system_auth_node` VALUES (1419, 1, 'admin/users/edit_users_status2');
INSERT INTO `system_auth_node` VALUES (1420, 1, 'admin/users/edit_users_ewm');
INSERT INTO `system_auth_node` VALUES (1421, 1, 'admin/users/caiwu');
INSERT INTO `system_auth_node` VALUES (1422, 1, 'admin/users/tuandui');
INSERT INTO `system_auth_node` VALUES (1423, 1, 'admin/users/open');
INSERT INTO `system_auth_node` VALUES (1424, 1, 'admin/users/cs_list');
INSERT INTO `system_auth_node` VALUES (1425, 1, 'admin/users/add_cs');
INSERT INTO `system_auth_node` VALUES (1426, 1, 'admin/users/edit_cs_status');
INSERT INTO `system_auth_node` VALUES (1427, 1, 'admin/users/edit_cs');
INSERT INTO `system_auth_node` VALUES (1428, 1, 'admin/users/cs_code');
INSERT INTO `system_auth_node` VALUES (1429, 1, 'admin/users/edit_users_bk');
INSERT INTO `system_auth_node` VALUES (1430, 1, 'admin/users/edit_users_level');
INSERT INTO `system_auth_node` VALUES (1431, 1, 'admin/users/edit_users_balance');
INSERT INTO `system_auth_node` VALUES (1432, 1, 'admin/users/onlineuser');
INSERT INTO `system_auth_node` VALUES (1955, 4, 'admin');
INSERT INTO `system_auth_node` VALUES (1956, 4, 'admin/auth');
INSERT INTO `system_auth_node` VALUES (1957, 4, 'admin/auth/index');
INSERT INTO `system_auth_node` VALUES (1958, 4, 'admin/auth/apply');
INSERT INTO `system_auth_node` VALUES (1959, 4, 'admin/auth/add');
INSERT INTO `system_auth_node` VALUES (1960, 4, 'admin/auth/edit');
INSERT INTO `system_auth_node` VALUES (1961, 4, 'admin/auth/refresh');
INSERT INTO `system_auth_node` VALUES (1962, 4, 'admin/auth/forbid');
INSERT INTO `system_auth_node` VALUES (1963, 4, 'admin/auth/resume');
INSERT INTO `system_auth_node` VALUES (1964, 4, 'admin/auth/remove');
INSERT INTO `system_auth_node` VALUES (1965, 4, 'admin/config');
INSERT INTO `system_auth_node` VALUES (1966, 4, 'admin/config/info');
INSERT INTO `system_auth_node` VALUES (1967, 4, 'admin/config/clear');
INSERT INTO `system_auth_node` VALUES (1968, 4, 'admin/config/config');
INSERT INTO `system_auth_node` VALUES (1969, 4, 'admin/config/file');
INSERT INTO `system_auth_node` VALUES (1970, 4, 'admin/deal');
INSERT INTO `system_auth_node` VALUES (1971, 4, 'admin/deal/order_list');
INSERT INTO `system_auth_node` VALUES (1972, 4, 'admin/deal/edit_order_goods_list');
INSERT INTO `system_auth_node` VALUES (1973, 4, 'admin/deal/jiedong');
INSERT INTO `system_auth_node` VALUES (1974, 4, 'admin/deal/deal_console');
INSERT INTO `system_auth_node` VALUES (1975, 4, 'admin/deal/goods_list');
INSERT INTO `system_auth_node` VALUES (1976, 4, 'admin/deal/goods_cate');
INSERT INTO `system_auth_node` VALUES (1977, 4, 'admin/deal/add_goods');
INSERT INTO `system_auth_node` VALUES (1978, 4, 'admin/deal/add_cate');
INSERT INTO `system_auth_node` VALUES (1979, 4, 'admin/deal/edit_goods');
INSERT INTO `system_auth_node` VALUES (1980, 4, 'admin/deal/edit_cate');
INSERT INTO `system_auth_node` VALUES (1981, 4, 'admin/deal/edit_goods_status');
INSERT INTO `system_auth_node` VALUES (1982, 4, 'admin/deal/del_goods');
INSERT INTO `system_auth_node` VALUES (1983, 4, 'admin/deal/del_cate');
INSERT INTO `system_auth_node` VALUES (1984, 4, 'admin/deal/user_recharge');
INSERT INTO `system_auth_node` VALUES (1985, 4, 'admin/deal/edit_recharge');
INSERT INTO `system_auth_node` VALUES (1986, 4, 'admin/deal/deposit_list');
INSERT INTO `system_auth_node` VALUES (1987, 4, 'admin/deal/disbursement');
INSERT INTO `system_auth_node` VALUES (1988, 4, 'admin/deal/edit_deposit');
INSERT INTO `system_auth_node` VALUES (1989, 4, 'admin/deal/lixibao_log');
INSERT INTO `system_auth_node` VALUES (1990, 4, 'admin/deal/add_lixibao');
INSERT INTO `system_auth_node` VALUES (1991, 4, 'admin/deal/edit_lixibao');
INSERT INTO `system_auth_node` VALUES (1992, 4, 'admin/deal/del_lixibao');
INSERT INTO `system_auth_node` VALUES (1993, 4, 'admin/deal/lixibao_list');
INSERT INTO `system_auth_node` VALUES (1994, 4, 'admin/deal/lxb_forbid');
INSERT INTO `system_auth_node` VALUES (1995, 4, 'admin/deal/lxb_resume');
INSERT INTO `system_auth_node` VALUES (1996, 4, 'admin/deal/do_deposit');
INSERT INTO `system_auth_node` VALUES (1997, 4, 'admin/deal/do_deposit2');
INSERT INTO `system_auth_node` VALUES (1998, 4, 'admin/deal/daochu');
INSERT INTO `system_auth_node` VALUES (1999, 4, 'admin/deal/do_deposit3');
INSERT INTO `system_auth_node` VALUES (2000, 4, 'admin/deal/do_commission');
INSERT INTO `system_auth_node` VALUES (2001, 4, 'admin/deal/order_log');
INSERT INTO `system_auth_node` VALUES (2002, 4, 'admin/deal/team_reward');
INSERT INTO `system_auth_node` VALUES (2003, 4, 'admin/grouping');
INSERT INTO `system_auth_node` VALUES (2004, 4, 'admin/grouping/index');
INSERT INTO `system_auth_node` VALUES (2005, 4, 'admin/grouping/edit_grouping');
INSERT INTO `system_auth_node` VALUES (2006, 4, 'admin/grouping/add_user');
INSERT INTO `system_auth_node` VALUES (2007, 4, 'admin/grouping/delete_grouping');
INSERT INTO `system_auth_node` VALUES (2008, 4, 'admin/help');
INSERT INTO `system_auth_node` VALUES (2009, 4, 'admin/help/message_ctrl');
INSERT INTO `system_auth_node` VALUES (2010, 4, 'admin/help/add_message');
INSERT INTO `system_auth_node` VALUES (2011, 4, 'admin/help/edit_message');
INSERT INTO `system_auth_node` VALUES (2012, 4, 'admin/help/del_message');
INSERT INTO `system_auth_node` VALUES (2013, 4, 'admin/help/home_msg');
INSERT INTO `system_auth_node` VALUES (2014, 4, 'admin/help/edit_home_msg');
INSERT INTO `system_auth_node` VALUES (2015, 4, 'admin/help/banner');
INSERT INTO `system_auth_node` VALUES (2016, 4, 'admin/help/edit_banner');
INSERT INTO `system_auth_node` VALUES (2017, 4, 'admin/help/add_banner');
INSERT INTO `system_auth_node` VALUES (2018, 4, 'admin/index');
INSERT INTO `system_auth_node` VALUES (2019, 4, 'admin/index/main');
INSERT INTO `system_auth_node` VALUES (2020, 4, 'admin/index/clearruntime');
INSERT INTO `system_auth_node` VALUES (2021, 4, 'admin/index/buildoptimize');
INSERT INTO `system_auth_node` VALUES (2022, 4, 'admin/menu');
INSERT INTO `system_auth_node` VALUES (2023, 4, 'admin/menu/index');
INSERT INTO `system_auth_node` VALUES (2024, 4, 'admin/menu/add');
INSERT INTO `system_auth_node` VALUES (2025, 4, 'admin/menu/edit');
INSERT INTO `system_auth_node` VALUES (2026, 4, 'admin/menu/resume');
INSERT INTO `system_auth_node` VALUES (2027, 4, 'admin/menu/forbid');
INSERT INTO `system_auth_node` VALUES (2028, 4, 'admin/menu/remove');
INSERT INTO `system_auth_node` VALUES (2029, 4, 'admin/oplog');
INSERT INTO `system_auth_node` VALUES (2030, 4, 'admin/oplog/index');
INSERT INTO `system_auth_node` VALUES (2031, 4, 'admin/oplog/clear');
INSERT INTO `system_auth_node` VALUES (2032, 4, 'admin/oplog/remove');
INSERT INTO `system_auth_node` VALUES (2033, 4, 'admin/pay');
INSERT INTO `system_auth_node` VALUES (2034, 4, 'admin/pay/index');
INSERT INTO `system_auth_node` VALUES (2035, 4, 'admin/pay/edit');
INSERT INTO `system_auth_node` VALUES (2036, 4, 'admin/pay/forbid');
INSERT INTO `system_auth_node` VALUES (2037, 4, 'admin/pay/resume');
INSERT INTO `system_auth_node` VALUES (2038, 4, 'admin/queue');
INSERT INTO `system_auth_node` VALUES (2039, 4, 'admin/queue/index');
INSERT INTO `system_auth_node` VALUES (2040, 4, 'admin/queue/redo');
INSERT INTO `system_auth_node` VALUES (2041, 4, 'admin/queue/processstart');
INSERT INTO `system_auth_node` VALUES (2042, 4, 'admin/queue/processstop');
INSERT INTO `system_auth_node` VALUES (2043, 4, 'admin/queue/remove');
INSERT INTO `system_auth_node` VALUES (2044, 4, 'admin/shop');
INSERT INTO `system_auth_node` VALUES (2045, 4, 'admin/shop/order_list');
INSERT INTO `system_auth_node` VALUES (2046, 4, 'admin/shop/goods_list');
INSERT INTO `system_auth_node` VALUES (2047, 4, 'admin/shop/fahuo');
INSERT INTO `system_auth_node` VALUES (2048, 4, 'admin/shop/goods_cate');
INSERT INTO `system_auth_node` VALUES (2049, 4, 'admin/shop/add_goods');
INSERT INTO `system_auth_node` VALUES (2050, 4, 'admin/shop/add_cate');
INSERT INTO `system_auth_node` VALUES (2051, 4, 'admin/shop/edit_goods');
INSERT INTO `system_auth_node` VALUES (2052, 4, 'admin/shop/edit_cate');
INSERT INTO `system_auth_node` VALUES (2053, 4, 'admin/shop/edit_goods_status');
INSERT INTO `system_auth_node` VALUES (2054, 4, 'admin/shop/del_goods');
INSERT INTO `system_auth_node` VALUES (2055, 4, 'admin/shop/del_cate');
INSERT INTO `system_auth_node` VALUES (2056, 4, 'admin/shop/forbid');
INSERT INTO `system_auth_node` VALUES (2057, 4, 'admin/shop/resume');
INSERT INTO `system_auth_node` VALUES (2058, 4, 'admin/shop/daochu');
INSERT INTO `system_auth_node` VALUES (2059, 4, 'admin/shop/do_deposit3');
INSERT INTO `system_auth_node` VALUES (2060, 4, 'admin/user');
INSERT INTO `system_auth_node` VALUES (2061, 4, 'admin/user/index');
INSERT INTO `system_auth_node` VALUES (2062, 4, 'admin/user/add');
INSERT INTO `system_auth_node` VALUES (2063, 4, 'admin/user/edit');
INSERT INTO `system_auth_node` VALUES (2064, 4, 'admin/user/pass');
INSERT INTO `system_auth_node` VALUES (2065, 4, 'admin/user/forbid');
INSERT INTO `system_auth_node` VALUES (2066, 4, 'admin/user/resume');
INSERT INTO `system_auth_node` VALUES (2067, 4, 'admin/user/remove');
INSERT INTO `system_auth_node` VALUES (2068, 4, 'admin/users');
INSERT INTO `system_auth_node` VALUES (2069, 4, 'admin/users/index');
INSERT INTO `system_auth_node` VALUES (2070, 4, 'admin/users/level');
INSERT INTO `system_auth_node` VALUES (2071, 4, 'admin/users/caiwu');
INSERT INTO `system_auth_node` VALUES (2072, 4, 'admin/users/add_users');
INSERT INTO `system_auth_node` VALUES (2073, 4, 'admin/users/edit_users');
INSERT INTO `system_auth_node` VALUES (2074, 4, 'admin/users/edit_users_ankou');
INSERT INTO `system_auth_node` VALUES (2075, 4, 'admin/users/edit_users_status');
INSERT INTO `system_auth_node` VALUES (2076, 4, 'admin/users/edit_users_address');
INSERT INTO `system_auth_node` VALUES (2077, 4, 'admin/users/edit_users_status2');
INSERT INTO `system_auth_node` VALUES (2078, 4, 'admin/users/edit_users_ewm');
INSERT INTO `system_auth_node` VALUES (2079, 4, 'admin/users/tuandui');
INSERT INTO `system_auth_node` VALUES (2080, 4, 'admin/users/open');
INSERT INTO `system_auth_node` VALUES (2081, 4, 'admin/users/cs_list');
INSERT INTO `system_auth_node` VALUES (2082, 4, 'admin/users/add_cs');
INSERT INTO `system_auth_node` VALUES (2083, 4, 'admin/users/edit_cs_status');
INSERT INTO `system_auth_node` VALUES (2084, 4, 'admin/users/edit_cs');
INSERT INTO `system_auth_node` VALUES (2085, 4, 'admin/users/cs_code');
INSERT INTO `system_auth_node` VALUES (2086, 4, 'admin/users/edit_users_bk');
INSERT INTO `system_auth_node` VALUES (2087, 4, 'admin/users/edit_users_level');
INSERT INTO `system_auth_node` VALUES (2088, 4, 'admin/users/daochu');
INSERT INTO `system_auth_node` VALUES (2150, 3, 'admin');
INSERT INTO `system_auth_node` VALUES (2151, 3, 'admin/deal');
INSERT INTO `system_auth_node` VALUES (2152, 3, 'admin/deal/order_list');
INSERT INTO `system_auth_node` VALUES (2153, 3, 'admin/deal/edit_order_goods_list');
INSERT INTO `system_auth_node` VALUES (2154, 3, 'admin/deal/jiedong');
INSERT INTO `system_auth_node` VALUES (2155, 3, 'admin/deal/deal_console');
INSERT INTO `system_auth_node` VALUES (2156, 3, 'admin/deal/goods_list');
INSERT INTO `system_auth_node` VALUES (2157, 3, 'admin/deal/goods_cate');
INSERT INTO `system_auth_node` VALUES (2158, 3, 'admin/deal/add_goods');
INSERT INTO `system_auth_node` VALUES (2159, 3, 'admin/deal/add_cate');
INSERT INTO `system_auth_node` VALUES (2160, 3, 'admin/deal/edit_goods');
INSERT INTO `system_auth_node` VALUES (2161, 3, 'admin/deal/edit_cate');
INSERT INTO `system_auth_node` VALUES (2162, 3, 'admin/deal/edit_goods_status');
INSERT INTO `system_auth_node` VALUES (2163, 3, 'admin/deal/del_goods');
INSERT INTO `system_auth_node` VALUES (2164, 3, 'admin/deal/del_cate');
INSERT INTO `system_auth_node` VALUES (2165, 3, 'admin/deal/user_recharge');
INSERT INTO `system_auth_node` VALUES (2166, 3, 'admin/deal/edit_recharge');
INSERT INTO `system_auth_node` VALUES (2167, 3, 'admin/deal/deposit_list');
INSERT INTO `system_auth_node` VALUES (2168, 3, 'admin/deal/disbursement');
INSERT INTO `system_auth_node` VALUES (2169, 3, 'admin/deal/edit_deposit');
INSERT INTO `system_auth_node` VALUES (2170, 3, 'admin/deal/add_lixibao');
INSERT INTO `system_auth_node` VALUES (2171, 3, 'admin/deal/lixibao_list');
INSERT INTO `system_auth_node` VALUES (2172, 3, 'admin/deal/lxb_forbid');
INSERT INTO `system_auth_node` VALUES (2173, 3, 'admin/deal/lxb_resume');
INSERT INTO `system_auth_node` VALUES (2174, 3, 'admin/deal/do_deposit');
INSERT INTO `system_auth_node` VALUES (2175, 3, 'admin/deal/do_deposit2');
INSERT INTO `system_auth_node` VALUES (2176, 3, 'admin/deal/do_deposit3');
INSERT INTO `system_auth_node` VALUES (2177, 3, 'admin/deal/do_commission');
INSERT INTO `system_auth_node` VALUES (2178, 3, 'admin/deal/order_log');
INSERT INTO `system_auth_node` VALUES (2179, 3, 'admin/deal/team_reward');
INSERT INTO `system_auth_node` VALUES (2180, 3, 'admin/pay');
INSERT INTO `system_auth_node` VALUES (2181, 3, 'admin/pay/index');
INSERT INTO `system_auth_node` VALUES (2182, 3, 'admin/pay/edit');
INSERT INTO `system_auth_node` VALUES (2183, 3, 'admin/pay/forbid');
INSERT INTO `system_auth_node` VALUES (2184, 3, 'admin/pay/resume');
INSERT INTO `system_auth_node` VALUES (2185, 3, 'admin/shop');
INSERT INTO `system_auth_node` VALUES (2186, 3, 'admin/shop/order_list');
INSERT INTO `system_auth_node` VALUES (2187, 3, 'admin/shop/goods_list');
INSERT INTO `system_auth_node` VALUES (2188, 3, 'admin/shop/fahuo');
INSERT INTO `system_auth_node` VALUES (2189, 3, 'admin/shop/goods_cate');
INSERT INTO `system_auth_node` VALUES (2190, 3, 'admin/shop/add_goods');
INSERT INTO `system_auth_node` VALUES (2191, 3, 'admin/shop/add_cate');
INSERT INTO `system_auth_node` VALUES (2192, 3, 'admin/shop/edit_goods');
INSERT INTO `system_auth_node` VALUES (2193, 3, 'admin/shop/edit_cate');
INSERT INTO `system_auth_node` VALUES (2194, 3, 'admin/shop/edit_goods_status');
INSERT INTO `system_auth_node` VALUES (2195, 3, 'admin/shop/del_goods');
INSERT INTO `system_auth_node` VALUES (2196, 3, 'admin/shop/del_cate');
INSERT INTO `system_auth_node` VALUES (2197, 3, 'admin/shop/forbid');
INSERT INTO `system_auth_node` VALUES (2198, 3, 'admin/shop/resume');
INSERT INTO `system_auth_node` VALUES (2199, 3, 'admin/shop/daochu');
INSERT INTO `system_auth_node` VALUES (2200, 3, 'admin/shop/do_deposit3');
INSERT INTO `system_auth_node` VALUES (2201, 3, 'admin/user');
INSERT INTO `system_auth_node` VALUES (2202, 3, 'admin/user/edit');
INSERT INTO `system_auth_node` VALUES (2203, 3, 'admin/user/pass');
INSERT INTO `system_auth_node` VALUES (2204, 3, 'admin/user/forbid');
INSERT INTO `system_auth_node` VALUES (2205, 3, 'admin/user/resume');
INSERT INTO `system_auth_node` VALUES (2206, 3, 'admin/users');
INSERT INTO `system_auth_node` VALUES (2207, 3, 'admin/users/index');
INSERT INTO `system_auth_node` VALUES (2208, 3, 'admin/users/caiwu');
INSERT INTO `system_auth_node` VALUES (2209, 3, 'admin/users/edit_users');
INSERT INTO `system_auth_node` VALUES (2210, 3, 'admin/users/edit_users_status');
INSERT INTO `system_auth_node` VALUES (2211, 3, 'admin/users/edit_users_address');
INSERT INTO `system_auth_node` VALUES (2212, 3, 'admin/users/edit_users_bk');

-- ----------------------------
-- Table structure for system_auth_node_copy
-- ----------------------------
DROP TABLE IF EXISTS `system_auth_node_copy`;
CREATE TABLE `system_auth_node_copy`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `auth` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT '角色',
  `node` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '节点',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_system_auth_auth`(`auth`) USING BTREE,
  INDEX `index_system_auth_node`(`node`(191)) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 766 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统-权限-授权' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of system_auth_node_copy
-- ----------------------------
INSERT INTO `system_auth_node_copy` VALUES (608, 1, 'admin');
INSERT INTO `system_auth_node_copy` VALUES (609, 1, 'admin/auth');
INSERT INTO `system_auth_node_copy` VALUES (610, 1, 'admin/auth/index');
INSERT INTO `system_auth_node_copy` VALUES (611, 1, 'admin/auth/apply');
INSERT INTO `system_auth_node_copy` VALUES (612, 1, 'admin/auth/add');
INSERT INTO `system_auth_node_copy` VALUES (613, 1, 'admin/auth/edit');
INSERT INTO `system_auth_node_copy` VALUES (614, 1, 'admin/auth/refresh');
INSERT INTO `system_auth_node_copy` VALUES (615, 1, 'admin/auth/forbid');
INSERT INTO `system_auth_node_copy` VALUES (616, 1, 'admin/auth/resume');
INSERT INTO `system_auth_node_copy` VALUES (617, 1, 'admin/auth/remove');
INSERT INTO `system_auth_node_copy` VALUES (618, 1, 'admin/config');
INSERT INTO `system_auth_node_copy` VALUES (619, 1, 'admin/config/info');
INSERT INTO `system_auth_node_copy` VALUES (620, 1, 'admin/config/config');
INSERT INTO `system_auth_node_copy` VALUES (621, 1, 'admin/config/file');
INSERT INTO `system_auth_node_copy` VALUES (622, 1, 'admin/deal');
INSERT INTO `system_auth_node_copy` VALUES (623, 1, 'admin/deal/order_list');
INSERT INTO `system_auth_node_copy` VALUES (624, 1, 'admin/deal/deal_console');
INSERT INTO `system_auth_node_copy` VALUES (625, 1, 'admin/deal/goods_list');
INSERT INTO `system_auth_node_copy` VALUES (626, 1, 'admin/deal/add_goods');
INSERT INTO `system_auth_node_copy` VALUES (627, 1, 'admin/deal/edit_goods');
INSERT INTO `system_auth_node_copy` VALUES (628, 1, 'admin/deal/edit_goods_status');
INSERT INTO `system_auth_node_copy` VALUES (629, 1, 'admin/deal/del_goods');
INSERT INTO `system_auth_node_copy` VALUES (630, 1, 'admin/deal/user_recharge');
INSERT INTO `system_auth_node_copy` VALUES (631, 1, 'admin/deal/edit_recharge');
INSERT INTO `system_auth_node_copy` VALUES (632, 1, 'admin/deal/deposit_list');
INSERT INTO `system_auth_node_copy` VALUES (633, 1, 'admin/deal/do_deposit');
INSERT INTO `system_auth_node_copy` VALUES (634, 1, 'admin/deal/do_commission');
INSERT INTO `system_auth_node_copy` VALUES (635, 1, 'admin/deal/order_log');
INSERT INTO `system_auth_node_copy` VALUES (636, 1, 'admin/deal/team_reward');
INSERT INTO `system_auth_node_copy` VALUES (637, 1, 'admin/help');
INSERT INTO `system_auth_node_copy` VALUES (638, 1, 'admin/help/message_ctrl');
INSERT INTO `system_auth_node_copy` VALUES (639, 1, 'admin/help/add_message');
INSERT INTO `system_auth_node_copy` VALUES (640, 1, 'admin/help/edit_message');
INSERT INTO `system_auth_node_copy` VALUES (641, 1, 'admin/help/del_message');
INSERT INTO `system_auth_node_copy` VALUES (642, 1, 'admin/help/home_msg');
INSERT INTO `system_auth_node_copy` VALUES (643, 1, 'admin/help/edit_home_msg');
INSERT INTO `system_auth_node_copy` VALUES (644, 1, 'admin/index');
INSERT INTO `system_auth_node_copy` VALUES (645, 1, 'admin/index/main');
INSERT INTO `system_auth_node_copy` VALUES (646, 1, 'admin/index/clearruntime');
INSERT INTO `system_auth_node_copy` VALUES (647, 1, 'admin/index/buildoptimize');
INSERT INTO `system_auth_node_copy` VALUES (648, 1, 'admin/menu');
INSERT INTO `system_auth_node_copy` VALUES (649, 1, 'admin/menu/index');
INSERT INTO `system_auth_node_copy` VALUES (650, 1, 'admin/menu/add');
INSERT INTO `system_auth_node_copy` VALUES (651, 1, 'admin/menu/edit');
INSERT INTO `system_auth_node_copy` VALUES (652, 1, 'admin/menu/resume');
INSERT INTO `system_auth_node_copy` VALUES (653, 1, 'admin/menu/forbid');
INSERT INTO `system_auth_node_copy` VALUES (654, 1, 'admin/menu/remove');
INSERT INTO `system_auth_node_copy` VALUES (655, 1, 'admin/oplog');
INSERT INTO `system_auth_node_copy` VALUES (656, 1, 'admin/oplog/index');
INSERT INTO `system_auth_node_copy` VALUES (657, 1, 'admin/oplog/clear');
INSERT INTO `system_auth_node_copy` VALUES (658, 1, 'admin/oplog/remove');
INSERT INTO `system_auth_node_copy` VALUES (659, 1, 'admin/pay');
INSERT INTO `system_auth_node_copy` VALUES (660, 1, 'admin/pay/index');
INSERT INTO `system_auth_node_copy` VALUES (661, 1, 'admin/pay/edit');
INSERT INTO `system_auth_node_copy` VALUES (662, 1, 'admin/pay/forbid');
INSERT INTO `system_auth_node_copy` VALUES (663, 1, 'admin/pay/resume');
INSERT INTO `system_auth_node_copy` VALUES (664, 1, 'admin/queue');
INSERT INTO `system_auth_node_copy` VALUES (665, 1, 'admin/queue/index');
INSERT INTO `system_auth_node_copy` VALUES (666, 1, 'admin/queue/redo');
INSERT INTO `system_auth_node_copy` VALUES (667, 1, 'admin/queue/processstart');
INSERT INTO `system_auth_node_copy` VALUES (668, 1, 'admin/queue/processstop');
INSERT INTO `system_auth_node_copy` VALUES (669, 1, 'admin/queue/remove');
INSERT INTO `system_auth_node_copy` VALUES (670, 1, 'admin/user');
INSERT INTO `system_auth_node_copy` VALUES (671, 1, 'admin/user/index');
INSERT INTO `system_auth_node_copy` VALUES (672, 1, 'admin/user/add');
INSERT INTO `system_auth_node_copy` VALUES (673, 1, 'admin/user/edit');
INSERT INTO `system_auth_node_copy` VALUES (674, 1, 'admin/user/pass');
INSERT INTO `system_auth_node_copy` VALUES (675, 1, 'admin/user/forbid');
INSERT INTO `system_auth_node_copy` VALUES (676, 1, 'admin/user/resume');
INSERT INTO `system_auth_node_copy` VALUES (677, 1, 'admin/user/remove');
INSERT INTO `system_auth_node_copy` VALUES (678, 1, 'admin/users');
INSERT INTO `system_auth_node_copy` VALUES (679, 1, 'admin/users/index');
INSERT INTO `system_auth_node_copy` VALUES (680, 1, 'admin/users/level');
INSERT INTO `system_auth_node_copy` VALUES (681, 1, 'admin/users/add_users');
INSERT INTO `system_auth_node_copy` VALUES (682, 1, 'admin/users/edit_users');
INSERT INTO `system_auth_node_copy` VALUES (683, 1, 'admin/users/edit_users_ankou');
INSERT INTO `system_auth_node_copy` VALUES (684, 1, 'admin/users/edit_users_status');
INSERT INTO `system_auth_node_copy` VALUES (685, 1, 'admin/users/edit_users_ewm');
INSERT INTO `system_auth_node_copy` VALUES (686, 1, 'admin/users/cs_list');
INSERT INTO `system_auth_node_copy` VALUES (687, 1, 'admin/users/add_cs');
INSERT INTO `system_auth_node_copy` VALUES (688, 1, 'admin/users/edit_cs_status');
INSERT INTO `system_auth_node_copy` VALUES (689, 1, 'admin/users/edit_cs');
INSERT INTO `system_auth_node_copy` VALUES (690, 1, 'admin/users/cs_code');
INSERT INTO `system_auth_node_copy` VALUES (691, 1, 'admin/users/edit_users_bk');
INSERT INTO `system_auth_node_copy` VALUES (692, 1, 'admin/users/edit_users_level');
INSERT INTO `system_auth_node_copy` VALUES (756, 2, 'admin');
INSERT INTO `system_auth_node_copy` VALUES (757, 2, 'admin/deal');
INSERT INTO `system_auth_node_copy` VALUES (758, 2, 'admin/deal/order_list');
INSERT INTO `system_auth_node_copy` VALUES (759, 2, 'admin/deal/user_recharge');
INSERT INTO `system_auth_node_copy` VALUES (760, 2, 'admin/deal/deposit_list');
INSERT INTO `system_auth_node_copy` VALUES (761, 2, 'admin/users');
INSERT INTO `system_auth_node_copy` VALUES (762, 2, 'admin/users/index');
INSERT INTO `system_auth_node_copy` VALUES (763, 2, 'admin/users/edit_users_ewm');
INSERT INTO `system_auth_node_copy` VALUES (764, 2, 'admin/users/edit_users_level');
INSERT INTO `system_auth_node_copy` VALUES (765, 1, 'admin/users/edit_users_balance');

-- ----------------------------
-- Table structure for system_config
-- ----------------------------
DROP TABLE IF EXISTS `system_config`;
CREATE TABLE `system_config`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '配置名',
  `value` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '配置值',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_system_config_name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 105 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统-配置' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of system_config
-- ----------------------------
INSERT INTO `system_config` VALUES (1, 'app_name', 'global buy');
INSERT INTO `system_config` VALUES (2, 'site_name', 'global buy');
INSERT INTO `system_config` VALUES (3, 'app_version', 'V3.0');
INSERT INTO `system_config` VALUES (4, 'site_copy', '©Copyright Mission system');
INSERT INTO `system_config` VALUES (5, 'site_icon', '/upload/6e70fbcd7101ee03/7fec7d328fbc46d8.png');
INSERT INTO `system_config` VALUES (7, 'miitbeian', '暂无');
INSERT INTO `system_config` VALUES (8, 'storage_type', 'local');
INSERT INTO `system_config` VALUES (9, 'storage_local_exts', 'doc,gif,icon,jpg,mp3,mp4,p12,pem,png,rar');
INSERT INTO `system_config` VALUES (10, 'storage_qiniu_bucket', 'https');
INSERT INTO `system_config` VALUES (11, 'storage_qiniu_domain', '用你自己的吧');
INSERT INTO `system_config` VALUES (12, 'storage_qiniu_access_key', '用你自己的吧');
INSERT INTO `system_config` VALUES (13, 'storage_qiniu_secret_key', '用你自己的吧');
INSERT INTO `system_config` VALUES (14, 'storage_oss_bucket', 'cuci-mytest');
INSERT INTO `system_config` VALUES (15, 'storage_oss_endpoint', 'oss-cn-hangzhou.aliyuncs.com');
INSERT INTO `system_config` VALUES (16, 'storage_oss_domain', '用你自己的吧');
INSERT INTO `system_config` VALUES (17, 'storage_oss_keyid', '用你自己的吧');
INSERT INTO `system_config` VALUES (18, 'storage_oss_secret', '用你自己的吧');
INSERT INTO `system_config` VALUES (36, 'storage_oss_is_https', 'http');
INSERT INTO `system_config` VALUES (43, 'storage_qiniu_region', '华东');
INSERT INTO `system_config` VALUES (44, 'storage_qiniu_is_https', 'https');
INSERT INTO `system_config` VALUES (45, 'wechat_mch_id', '1332187001');
INSERT INTO `system_config` VALUES (46, 'wechat_mch_key', 'A82DC5BD1F3359081049C568D8502BC5');
INSERT INTO `system_config` VALUES (47, 'wechat_mch_ssl_type', 'p12');
INSERT INTO `system_config` VALUES (48, 'wechat_mch_ssl_p12', '65b8e4f56718182d/1bc857ee646aa15d.p12');
INSERT INTO `system_config` VALUES (49, 'wechat_mch_ssl_key', 'cc2e3e1345123930/c407d033294f283d.pem');
INSERT INTO `system_config` VALUES (50, 'wechat_mch_ssl_cer', '966eaf89299e9c95/7014872cc109b29a.pem');
INSERT INTO `system_config` VALUES (51, 'wechat_token', 'mytoken');
INSERT INTO `system_config` VALUES (52, 'wechat_appid', 'wx60a43dd8161666d4');
INSERT INTO `system_config` VALUES (53, 'wechat_appsecret', '9978422e0e431643d4b42868d183d60b');
INSERT INTO `system_config` VALUES (54, 'wechat_encodingaeskey', '');
INSERT INTO `system_config` VALUES (55, 'wechat_push_url', '消息推送地址：http://127.0.0.1:8000/wechat/api.push');
INSERT INTO `system_config` VALUES (56, 'wechat_type', 'thr');
INSERT INTO `system_config` VALUES (57, 'wechat_thr_appid', 'wx60a43dd8161666d4');
INSERT INTO `system_config` VALUES (58, 'wechat_thr_appkey', '5caf4b0727f6e46a7e6ccbe773cc955d');
INSERT INTO `system_config` VALUES (60, 'wechat_thr_appurl', '消息推送地址：http://127.0.0.1:2314/wechat/api.push');
INSERT INTO `system_config` VALUES (61, 'component_appid', 'wx28b58798480874f9');
INSERT INTO `system_config` VALUES (62, 'component_appsecret', '8d0e1ec14ea0adc5027dd0ad82c64bc9');
INSERT INTO `system_config` VALUES (63, 'component_token', 'P8QHTIxpBEq88IrxatqhgpBm2OAQROkI');
INSERT INTO `system_config` VALUES (64, 'component_encodingaeskey', 'L5uFIa0U6KLalPyXckyqoVIJYLhsfrg8k9YzybZIHsx');
INSERT INTO `system_config` VALUES (65, 'system_message_state', '0');
INSERT INTO `system_config` VALUES (66, 'sms_zt_username', '可以找CUCI申请');
INSERT INTO `system_config` VALUES (67, 'sms_zt_password', '可以找CUCI申请');
INSERT INTO `system_config` VALUES (68, 'sms_reg_template', '您的验证码为{code}，请在十分钟内完成操作！');
INSERT INTO `system_config` VALUES (69, 'sms_secure', '可以找CUCI申请');
INSERT INTO `system_config` VALUES (70, 'store_title', '测试商城');
INSERT INTO `system_config` VALUES (71, 'store_order_wait_time', '0.50');
INSERT INTO `system_config` VALUES (72, 'store_order_clear_time', '24.00');
INSERT INTO `system_config` VALUES (73, 'store_order_confirm_time', '60.00');
INSERT INTO `system_config` VALUES (74, 'sms_zt_username2', '可以找CUCI申请2');
INSERT INTO `system_config` VALUES (75, 'sms_zt_password2', '可以找CUCI申请2');
INSERT INTO `system_config` VALUES (76, 'sms_secure2', '可以找CUCI申请2');
INSERT INTO `system_config` VALUES (77, 'sms_reg_template2', '您的验证码为{code}，请在十分钟内完成操作！2');
INSERT INTO `system_config` VALUES (78, 'michat_appid', '2882303761518074614');
INSERT INTO `system_config` VALUES (79, 'michat_appkey', '5861807470614');
INSERT INTO `system_config` VALUES (80, 'michat_appsecert', 'CP/WUTUgDuyOxgLQ5ztesg==');
INSERT INTO `system_config` VALUES (81, 'index_notice', '1');
INSERT INTO `system_config` VALUES (82, 'isopenpcindex', '0');
INSERT INTO `system_config` VALUES (83, 'app_url', 'http://6ui.oleole.xyz/index/user/login.html');
INSERT INTO `system_config` VALUES (84, 'membermultiple', '10');
INSERT INTO `system_config` VALUES (85, 'catmultiple', '5');
INSERT INTO `system_config` VALUES (86, 'userqrcode', '1');
INSERT INTO `system_config` VALUES (87, 'allowindex', '1');
INSERT INTO `system_config` VALUES (88, 'sigin_status', '1');
INSERT INTO `system_config` VALUES (89, 'index_money_num', '20000000');
INSERT INTO `system_config` VALUES (90, 'index_member_num', '50000');
INSERT INTO `system_config` VALUES (91, 'sigin_money', '0.35');
INSERT INTO `system_config` VALUES (92, 'isopeninvitecode', '1');
INSERT INTO `system_config` VALUES (93, 'zhcn', '1');
INSERT INTO `system_config` VALUES (94, 'enus', '1');
INSERT INTO `system_config` VALUES (95, 'frfr', '1');
INSERT INTO `system_config` VALUES (96, 'eses', '1');
INSERT INTO `system_config` VALUES (97, 'ptpt', '1');
INSERT INTO `system_config` VALUES (98, 'site_logo', '/upload/6e70fbcd7101ee03/7fec7d328fbc46d8.png');
INSERT INTO `system_config` VALUES (99, 'site_index_logo', '/upload/6e70fbcd7101ee03/7fec7d328fbc46d8.png');
INSERT INTO `system_config` VALUES (100, 'krkr', '1');
INSERT INTO `system_config` VALUES (101, 'jpjp', '1');
INSERT INTO `system_config` VALUES (102, 'thth', '1');
INSERT INTO `system_config` VALUES (103, 'indind', '1');
INSERT INTO `system_config` VALUES (104, 'app_color', 'pink');

-- ----------------------------
-- Table structure for system_data
-- ----------------------------
DROP TABLE IF EXISTS `system_data`;
CREATE TABLE `system_data`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '配置名',
  `value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '配置值',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_system_data_name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统-数据' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of system_data
-- ----------------------------
INSERT INTO `system_data` VALUES (1, 'menudata', '[{\"name\":\"请输入名称\",\"type\":\"scancode_push\",\"key\":\"scancode_push\"}]');

-- ----------------------------
-- Table structure for system_log
-- ----------------------------
DROP TABLE IF EXISTS `system_log`;
CREATE TABLE `system_log`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `node` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '当前操作节点',
  `geoip` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '操作者IP地址',
  `action` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '操作行为名称',
  `content` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '操作内容描述',
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '操作人用户名',
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1883 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统-日志' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of system_log
-- ----------------------------
INSERT INTO `system_log` VALUES (1836, 'admin/login/index', '194.29.186.83', '系统管理', '用户登录系统成功', 'admin', '2022-10-09 16:19:40');
INSERT INTO `system_log` VALUES (1837, 'admin/login/index', '194.29.186.83', '系统管理', '用户登录系统成功', 'hengheng26', '2022-10-09 16:22:04');
INSERT INTO `system_log` VALUES (1838, 'admin/login/index', '194.29.186.83', '系统管理', '用户登录系统成功', 'admin', '2022-10-09 16:24:42');
INSERT INTO `system_log` VALUES (1839, 'admin/login/index', '103.35.74.171', '系统管理', '用户登录系统成功', 'admin', '2022-10-09 16:24:54');
INSERT INTO `system_log` VALUES (1840, 'admin/login/index', '104.218.166.153', '系统管理', '用户登录系统成功', 'admin', '2022-10-09 16:36:01');
INSERT INTO `system_log` VALUES (1841, 'admin/login/index', '103.138.75.48', '系统管理', '用户登录系统成功', 'admin', '2022-10-15 16:32:56');
INSERT INTO `system_log` VALUES (1842, 'admin/login/index', '178.173.225.132', '系统管理', '用户登录系统成功', 'admin', '2022-10-25 20:22:48');
INSERT INTO `system_log` VALUES (1843, 'admin/login/index', '113.132.193.5', '系统管理', '用户登录系统成功', 'admin', '2022-10-26 15:21:51');
INSERT INTO `system_log` VALUES (1844, 'admin/login/index', '116.206.101.158', '系统管理', '用户登录系统成功', 'admin', '2022-10-26 15:47:26');
INSERT INTO `system_log` VALUES (1845, 'admin/login/index', '116.206.101.158', '系统管理', '用户登录系统成功', 'admin', '2022-10-27 10:14:25');
INSERT INTO `system_log` VALUES (1846, 'admin/login/index', '113.132.194.144', '系统管理', '用户登录系统成功', 'admin', '2022-10-28 10:06:52');
INSERT INTO `system_log` VALUES (1847, 'admin/login/index', '113.201.132.67', '系统管理', '用户登录系统成功', 'admin', '2022-10-28 17:20:05');
INSERT INTO `system_log` VALUES (1848, 'admin/login/index', '178.173.225.132', '系统管理', '用户登录系统成功', 'admin', '2022-10-29 16:29:53');
INSERT INTO `system_log` VALUES (1849, 'admin/login/index', '134.236.73.14', '系统管理', '用户登录系统成功', 'admin', '2022-10-29 19:11:50');
INSERT INTO `system_log` VALUES (1850, 'admin/login/index', '116.206.101.158', '系统管理', '用户登录系统成功', 'admin', '2022-11-01 11:20:17');
INSERT INTO `system_log` VALUES (1851, 'admin/login/index', '113.132.198.20', '系统管理', '用户登录系统成功', 'admin', '2022-11-02 12:21:20');
INSERT INTO `system_log` VALUES (1852, 'admin/login/index', '113.132.193.19', '系统管理', '用户登录系统成功', 'admin', '2022-11-04 11:34:07');
INSERT INTO `system_log` VALUES (1853, 'admin/login/index', '116.206.101.158', '系统管理', '用户登录系统成功', 'admin', '2022-11-05 22:17:13');
INSERT INTO `system_log` VALUES (1854, 'admin/login/index', '116.206.101.158', '系统管理', '用户登录系统成功', 'admin', '2022-11-05 22:25:27');
INSERT INTO `system_log` VALUES (1855, 'admin/login/index', '113.132.207.238', '系统管理', '用户登录系统成功', 'admin', '2022-11-07 10:20:24');
INSERT INTO `system_log` VALUES (1856, 'admin/login/index', '178.173.225.132', '系统管理', '用户登录系统成功', 'admin', '2022-11-08 17:25:53');
INSERT INTO `system_log` VALUES (1857, 'admin/login/index', '116.206.101.158', '系统管理', '用户登录系统成功', 'admin', '2022-11-09 14:57:01');
INSERT INTO `system_log` VALUES (1858, 'admin/login/index', '116.206.101.158', '系统管理', '用户登录系统成功', 'admin', '2022-11-09 17:39:37');
INSERT INTO `system_log` VALUES (1859, 'admin/login/index', '65.18.122.200', '系统管理', '用户登录系统成功', 'admin', '2022-11-09 17:41:27');
INSERT INTO `system_log` VALUES (1860, 'admin/login/index', '65.18.122.200', '系统管理', '用户登录系统成功', 'admin', '2022-11-09 17:51:19');
INSERT INTO `system_log` VALUES (1861, 'admin/login/index', '113.132.203.231', '系统管理', '用户登录系统成功', 'admin', '2022-11-09 18:02:33');
INSERT INTO `system_log` VALUES (1862, 'admin/login/index', '178.173.225.132', '系统管理', '用户登录系统成功', 'admin', '2022-11-10 15:19:53');
INSERT INTO `system_log` VALUES (1863, 'admin/login/index', '134.195.101.26', '系统管理', '用户登录系统成功', 'admin', '2022-11-10 15:21:52');
INSERT INTO `system_log` VALUES (1864, 'admin/login/index', '::1', '系统管理', '用户登录系统成功', 'admin', '2024-08-26 23:43:18');
INSERT INTO `system_log` VALUES (1865, 'admin/login/index', '50.7.159.47', '系统管理', '用户登录系统成功', 'admin', '2024-08-27 14:02:55');
INSERT INTO `system_log` VALUES (1866, 'admin/login/index', '103.30.198.133', '系统管理', '用户登录系统成功', 'admin', '2024-08-28 10:14:22');
INSERT INTO `system_log` VALUES (1867, 'admin/login/index', '103.30.198.133', '系统管理', '用户登录系统成功', 'admin', '2024-08-28 10:25:23');
INSERT INTO `system_log` VALUES (1868, 'admin/login/index', '49.156.46.131', '系统管理', '用户登录系统成功', 'admin', '2024-08-28 10:49:26');
INSERT INTO `system_log` VALUES (1869, 'admin/login/index', '49.156.46.131', '系统管理', '用户登录系统成功', 'admin', '2024-08-28 11:25:16');
INSERT INTO `system_log` VALUES (1870, 'admin/login/index', '49.156.46.131', '系统管理', '用户登录系统成功', 'admin', '2024-08-28 12:21:50');
INSERT INTO `system_log` VALUES (1871, 'admin/login/index', '188.43.136.44', '系统管理', '用户登录系统成功', 'admin', '2024-08-28 12:26:43');
INSERT INTO `system_log` VALUES (1872, 'admin/login/index', '50.7.159.47', '系统管理', '用户登录系统成功', 'admin', '2024-08-28 14:19:48');
INSERT INTO `system_log` VALUES (1873, 'admin/login/index', '49.156.46.131', '系统管理', '用户登录系统成功', 'admin', '2024-08-28 14:21:03');
INSERT INTO `system_log` VALUES (1874, 'admin/login/index', '50.7.159.47', '系统管理', '用户登录系统成功', 'admin', '2024-08-28 14:26:33');
INSERT INTO `system_log` VALUES (1875, 'admin/login/index', '50.7.159.47', '系统管理', '用户登录系统成功', 'admin', '2024-08-28 15:31:49');
INSERT INTO `system_log` VALUES (1876, 'admin/login/index', '50.7.159.47', '系统管理', '用户登录系统成功', 'admin', '2024-08-28 15:37:59');
INSERT INTO `system_log` VALUES (1877, 'admin/login/index', '50.7.159.47', '系统管理', '用户登录系统成功', 'admin', '2024-08-28 15:46:29');
INSERT INTO `system_log` VALUES (1878, 'admin/login/index', '50.7.159.47', '系统管理', '用户登录系统成功', 'admin', '2024-08-28 15:48:19');
INSERT INTO `system_log` VALUES (1879, 'admin/login/index', '49.156.46.131', '系统管理', '用户登录系统成功', 'admin', '2024-08-29 07:51:20');
INSERT INTO `system_log` VALUES (1880, 'admin/login/index', '103.30.198.133', '系统管理', '用户登录系统成功', 'admin', '2024-08-29 09:23:12');
INSERT INTO `system_log` VALUES (1881, 'admin/login/index', '188.43.136.44', '系统管理', '用户登录系统成功', 'admin', '2024-09-03 13:30:43');
INSERT INTO `system_log` VALUES (1882, 'admin/login/index', '115.178.24.12', '系统管理', '用户登录系统成功', 'admin', '2024-09-03 14:40:11');

-- ----------------------------
-- Table structure for system_menu
-- ----------------------------
DROP TABLE IF EXISTS `system_menu`;
CREATE TABLE `system_menu`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pid` bigint(20) UNSIGNED NULL DEFAULT 0 COMMENT '父ID',
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '名称',
  `node` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '节点代码',
  `icon` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '菜单图标',
  `url` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '链接',
  `params` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '链接参数',
  `target` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '_self' COMMENT '打开方式',
  `sort` int(10) UNSIGNED NULL DEFAULT 0 COMMENT '菜单排序',
  `status` tinyint(1) UNSIGNED NULL DEFAULT 1 COMMENT '状态(0:禁用,1:启用)',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_system_menu_node`(`node`(191)) USING BTREE,
  INDEX `index_system_menu_status`(`status`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 102 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统-菜单' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of system_menu
-- ----------------------------
INSERT INTO `system_menu` VALUES (1, 0, '后台首页', '', '', 'admin/index/main', '', '_self', 500, 1, '2018-09-05 18:59:38');
INSERT INTO `system_menu` VALUES (2, 0, '系统管理', '', '', '#', '', '_self', 0, 1, '2018-09-05 19:04:52');
INSERT INTO `system_menu` VALUES (3, 4, '系统菜单管理', '', 'layui-icon layui-icon-layouts', 'admin/menu/index', '', '_self', 1, 1, '2018-09-05 19:05:26');
INSERT INTO `system_menu` VALUES (4, 2, '系统配置', '', '', '#', '', '_self', 20, 1, '2018-09-05 19:07:17');
INSERT INTO `system_menu` VALUES (5, 12, '系统用户管理', '', 'layui-icon layui-icon-username', 'admin/user/index', '', '_self', 1, 1, '2018-09-06 12:10:42');
INSERT INTO `system_menu` VALUES (7, 12, '访问权限管理', '', 'layui-icon layui-icon-vercode', 'admin/auth/index', '', '_self', 2, 1, '2018-09-06 16:17:14');
INSERT INTO `system_menu` VALUES (11, 4, '系统参数配置', '', 'layui-icon layui-icon-set', 'admin/config/info', '', '_self', 4, 1, '2018-09-06 17:43:47');
INSERT INTO `system_menu` VALUES (12, 2, '权限管理', '', '', '#', '', '_self', 10, 1, '2018-09-06 19:01:31');
INSERT INTO `system_menu` VALUES (62, 0, '角色', '', 'layui-icon layui-icon-username', '#', '', '_self', 19, 1, '2019-10-17 14:43:53');
INSERT INTO `system_menu` VALUES (63, 62, '会员管理', '', '', '#', '', '_self', 0, 1, '2019-10-17 14:44:17');
INSERT INTO `system_menu` VALUES (64, 63, '会员列表', '', 'layui-icon layui-icon-username', 'admin/users/index', '', '_self', 0, 1, '2019-10-17 14:44:45');
INSERT INTO `system_menu` VALUES (65, 0, '帮助中心', '', 'fa fa-flag-o', '#', '', '_self', 2, 1, '2019-10-18 11:42:54');
INSERT INTO `system_menu` VALUES (66, 67, '公告管理', '', 'layui-icon layui-icon-speaker', 'admin/help/message_ctrl', '', '_self', 0, 1, '2019-10-18 11:45:12');
INSERT INTO `system_menu` VALUES (67, 65, '首页文本', '', '', '#', '', '_self', 0, 1, '2019-10-18 15:50:42');
INSERT INTO `system_menu` VALUES (68, 67, '文本管理', '', 'fa fa-book', 'admin/help/home_msg', '', '_self', 0, 1, '2019-10-18 16:13:53');
INSERT INTO `system_menu` VALUES (69, 0, '交易', '', 'fa fa-balance-scale', '#', '', '_self', 18, 1, '2019-10-19 15:38:16');
INSERT INTO `system_menu` VALUES (70, 69, '商品管理', '', '', '#', '', '_self', 1, 1, '2019-10-19 15:39:55');
INSERT INTO `system_menu` VALUES (71, 70, '商品列表', '', 'fa fa-shopping-cart', 'admin/deal/goods_list', '', '_self', 0, 1, '2019-10-19 15:40:50');
INSERT INTO `system_menu` VALUES (72, 69, '交易管理', '', '', '#', '', '_self', 2, 1, '2019-10-19 16:31:16');
INSERT INTO `system_menu` VALUES (73, 72, '交易控制', '', 'layui-icon layui-icon-console', 'admin/deal/deal_console', '', '_self', 1, 1, '2019-10-19 16:32:25');
INSERT INTO `system_menu` VALUES (74, 72, '充值管理', '', 'layui-icon layui-icon-chart-screen', 'admin/deal/user_recharge', '', '_self', 3, 1, '2019-10-22 15:15:27');
INSERT INTO `system_menu` VALUES (75, 72, '订单列表', '', 'layui-icon layui-icon-cart-simple', 'admin/deal/order_list', '', '_self', 4, 1, '2019-10-24 17:10:29');
INSERT INTO `system_menu` VALUES (76, 72, '提现管理', '', 'fa fa-legal', 'admin/deal/deposit_list', '', '_self', 2, 1, '2019-10-24 17:44:52');
INSERT INTO `system_menu` VALUES (77, 62, '客服管理', '', '', '#', '', '_self', 0, 1, '2019-10-25 11:01:53');
INSERT INTO `system_menu` VALUES (78, 77, '客服列表', '', 'layui-icon layui-icon-group', 'admin/users/cs_list', '', '_self', 0, 1, '2019-10-25 11:07:17');
INSERT INTO `system_menu` VALUES (79, 77, '客服代码', '', 'layui-icon layui-icon-fonts-code', 'admin/users/cs_code', '', '_self', 0, 1, '2019-10-29 14:53:55');
INSERT INTO `system_menu` VALUES (82, 67, '首页轮播图', '', 'layui-icon layui-icon-carousel', 'admin/help/banner', '', '_self', 0, 1, '2019-12-11 12:21:29');
INSERT INTO `system_menu` VALUES (83, 70, '商品分类', '', '', '/admin/deal/goods_cate', '', '_self', 0, 1, '2020-01-05 12:16:29');
INSERT INTO `system_menu` VALUES (84, 4, '支付方式管理', '', '', '/admin/pay/index', '', '_self', 0, 1, '2020-01-14 21:50:29');
INSERT INTO `system_menu` VALUES (85, 63, '会员等级', '', '', '/admin/users/level', '', '_self', 0, 1, '2020-02-05 17:55:18');
INSERT INTO `system_menu` VALUES (88, 69, '利息宝', '', '', '#', '', '_self', 0, 1, '2020-02-25 03:33:56');
INSERT INTO `system_menu` VALUES (89, 88, '利息宝选项', '', '', '/admin/deal/lixibao_list', '', '_self', 0, 1, '2020-02-25 03:34:53');
INSERT INTO `system_menu` VALUES (90, 88, '利息宝记录', '', '', '/admin/deal/lixibao_log', '', '_self', 0, 1, '2020-02-25 03:35:19');
INSERT INTO `system_menu` VALUES (91, 0, '商城', '', '', '#', '', '_self', 0, 1, '2020-03-05 12:42:10');
INSERT INTO `system_menu` VALUES (92, 91, '商城管理', '', '', '#', '', '_self', 0, 1, '2020-03-05 12:42:29');
INSERT INTO `system_menu` VALUES (93, 92, '商品分类', '', '', '/admin/shop/goods_cate', '', '_self', 0, 1, '2020-03-05 12:42:54');
INSERT INTO `system_menu` VALUES (94, 92, '商品列表', '', '', '/admin/shop/goods_list', '', '_self', 0, 1, '2020-03-05 12:43:06');
INSERT INTO `system_menu` VALUES (95, 92, '订单列表', '', '', '/admin/shop/order_list', '', '_self', 0, 1, '2020-03-05 12:43:16');
INSERT INTO `system_menu` VALUES (97, 63, '充值管理', '', 'layui-icon layui-icon-chart-screen', 'admin/deal/user_recharge', '', '_self', 0, 1, '2021-03-22 19:39:01');
INSERT INTO `system_menu` VALUES (98, 63, '提现管理', '', 'layui-icon layui-icon-chart-screen', '/admin/deal/deposit_list', '', '_self', 0, 1, '2021-03-23 19:56:09');
INSERT INTO `system_menu` VALUES (99, 4, '首页弹窗', '', 'layui-icon layui-icon-cellphone', '/admin/config/indexconfig', '', '_self', 0, 1, '2021-06-13 11:25:42');
INSERT INTO `system_menu` VALUES (100, 69, '分组管理', '', 'layui-icon layui-icon-username', '#', '', '_self', 0, 1, '2021-10-24 22:41:00');
INSERT INTO `system_menu` VALUES (101, 100, '分组列表', '', '', 'admin/Grouping/index', '', '_self', 0, 1, '2021-10-24 22:42:57');

-- ----------------------------
-- Table structure for system_queue
-- ----------------------------
DROP TABLE IF EXISTS `system_queue`;
CREATE TABLE `system_queue`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '任务名称',
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '执行参数',
  `status` tinyint(1) UNSIGNED NULL DEFAULT 1 COMMENT '任务状态(1新任务,2处理中,3成功,4失败)',
  `preload` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '执行内容',
  `time` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '执行时间',
  `double` tinyint(1) NULL DEFAULT 1 COMMENT '单例模式',
  `desc` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '状态描述',
  `start_at` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '开始时间',
  `end_at` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '结束时间',
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_system_queue_double`(`double`) USING BTREE,
  INDEX `index_system_queue_time`(`time`) USING BTREE,
  INDEX `index_system_queue_title`(`title`) USING BTREE,
  INDEX `index_system_queue_create_at`(`create_at`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统-任务' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of system_queue
-- ----------------------------

-- ----------------------------
-- Table structure for system_user
-- ----------------------------
DROP TABLE IF EXISTS `system_user`;
CREATE TABLE `system_user`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '用户账号',
  `password` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '用户密码',
  `qq` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '联系QQ',
  `mail` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '联系邮箱',
  `phone` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '联系手机',
  `login_at` datetime NULL DEFAULT NULL COMMENT '登录时间',
  `login_ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '登录IP',
  `login_num` bigint(20) UNSIGNED NULL DEFAULT 0 COMMENT '登录次数',
  `authorize` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '权限授权',
  `tags` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '用户标签',
  `desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '备注说明',
  `status` tinyint(1) UNSIGNED NULL DEFAULT 1 COMMENT '状态(0禁用,1启用)',
  `is_deleted` tinyint(1) UNSIGNED NULL DEFAULT 0 COMMENT '删除(1删除,0未删)',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_system_user_username`(`username`) USING BTREE,
  INDEX `index_system_user_status`(`status`) USING BTREE,
  INDEX `index_system_user_deleted`(`is_deleted`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10172 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统-用户' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of system_user
-- ----------------------------
INSERT INTO `system_user` VALUES (10000, 'admin', '21232f297a57a5a743894a0e4a801fc3', '22222222', '', '', '2024-09-03 14:40:11', '115.178.24.12', 1647, '', '', '', 1, 0, '2015-11-13 16:14:22');

-- ----------------------------
-- Table structure for xy_balance_log
-- ----------------------------
DROP TABLE IF EXISTS `xy_balance_log`;
CREATE TABLE `xy_balance_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL COMMENT '会员ID',
  `sid` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '交易对象id',
  `oid` char(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '交易单号',
  `num` decimal(10, 2) NOT NULL COMMENT '交易金额',
  `type` int(11) NOT NULL COMMENT '交易类型 0系统 1充值 2交易 3返佣 4强制交易 5推广返佣 6下级交易返佣  7提现,11彩金',
  `status` int(11) NULL DEFAULT 1 COMMENT '收入1 支出2',
  `addtime` int(11) NOT NULL COMMENT '添加时间',
  `f_lv` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `oid`(`oid`) USING BTREE,
  INDEX `uid`(`uid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 270769 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '会员-收支明细表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of xy_balance_log
-- ----------------------------
INSERT INTO `xy_balance_log` VALUES (270711, 12229, 0, '0', 11.00, 11, 1, 1665819267, NULL);
INSERT INTO `xy_balance_log` VALUES (270712, 12229, 0, '0', 111111.00, 11, 1, 1665819271, NULL);
INSERT INTO `xy_balance_log` VALUES (270713, 12229, 0, 'UB2210151535124481', 59800.00, 2, 2, 1665819336, NULL);
INSERT INTO `xy_balance_log` VALUES (270714, 12229, 0, 'UB2210151535124481', 1495.00, 3, 1, 1665819336, NULL);
INSERT INTO `xy_balance_log` VALUES (270715, 12229, 0, '签到红包', 0.35, 1, 1, 1666754954, NULL);
INSERT INTO `xy_balance_log` VALUES (270716, 12229, 0, '签到红包', 0.35, 1, 1, 1666944023, NULL);
INSERT INTO `xy_balance_log` VALUES (270717, 12229, 0, 'UB2210271117511814', 28470.00, 2, 2, 1666952419, NULL);
INSERT INTO `xy_balance_log` VALUES (270718, 12229, 0, 'UB2210271117511814', 711.75, 3, 1, 1666952419, NULL);
INSERT INTO `xy_balance_log` VALUES (270719, 12229, 0, 'UB2210281834303864', 68994.00, 2, 2, 1666953294, NULL);
INSERT INTO `xy_balance_log` VALUES (270720, 12229, 0, 'UB2210281834303864', 1724.85, 3, 1, 1666953294, NULL);
INSERT INTO `xy_balance_log` VALUES (270721, 12229, 0, '签到红包', 0.35, 1, 1, 1667005947, NULL);
INSERT INTO `xy_balance_log` VALUES (270722, 12229, 0, 'UB2210281837254583', 71874.00, 2, 2, 1667043107, NULL);
INSERT INTO `xy_balance_log` VALUES (270723, 12229, 0, 'UB2210281837254583', 1796.85, 3, 1, 1667043107, NULL);
INSERT INTO `xy_balance_log` VALUES (270724, 12229, 0, 'UB2210291933142848', 19180.00, 2, 2, 1667043222, NULL);
INSERT INTO `xy_balance_log` VALUES (270725, 12229, 0, 'UB2210291933142848', 479.50, 3, 1, 1667043222, NULL);
INSERT INTO `xy_balance_log` VALUES (270726, 12229, 0, 'UB2211021408527137', 79992.00, 2, 2, 1667897657, NULL);
INSERT INTO `xy_balance_log` VALUES (270727, 12229, 0, 'UB2211021408527137', 1999.80, 3, 1, 1667897657, NULL);
INSERT INTO `xy_balance_log` VALUES (270731, 12229, 0, 'UB2211091701161541', 39920.00, 2, 2, 1667989152, NULL);
INSERT INTO `xy_balance_log` VALUES (270732, 12229, 0, 'UB2211091701161541', 998.00, 3, 1, 1667989152, NULL);
INSERT INTO `xy_balance_log` VALUES (270733, 12229, 0, 'UB2211091819352478', 37554.00, 2, 2, 1667989223, NULL);
INSERT INTO `xy_balance_log` VALUES (270734, 12229, 0, 'UB2211091819352478', 938.85, 3, 1, 1667989223, NULL);
INSERT INTO `xy_balance_log` VALUES (270735, 12229, 0, 'UB2211091936236435', 57540.00, 2, 2, 1667993809, NULL);
INSERT INTO `xy_balance_log` VALUES (270736, 12229, 0, 'UB2211091936236435', 1438.50, 3, 1, 1667993809, NULL);
INSERT INTO `xy_balance_log` VALUES (270737, 12229, 0, 'UB2211091937189717', 12750.00, 2, 2, 1667993865, NULL);
INSERT INTO `xy_balance_log` VALUES (270738, 12229, 0, 'UB2211091937189717', 318.75, 3, 1, 1667993865, NULL);
INSERT INTO `xy_balance_log` VALUES (270739, 12229, 0, 'UB2211091948051391', 11499.00, 2, 2, 1667994516, NULL);
INSERT INTO `xy_balance_log` VALUES (270740, 12229, 0, 'UB2211091948051391', 287.48, 3, 1, 1667994516, NULL);
INSERT INTO `xy_balance_log` VALUES (270741, 12229, 0, 'UB2211091949125812', 55500.00, 2, 2, 1667994577, NULL);
INSERT INTO `xy_balance_log` VALUES (270742, 12229, 0, 'UB2211091949125812', 1387.50, 3, 1, 1667994577, NULL);
INSERT INTO `xy_balance_log` VALUES (270743, 12229, 0, 'UB2211101425514425', 83960.00, 2, 2, 1668061570, NULL);
INSERT INTO `xy_balance_log` VALUES (270744, 12229, 0, 'UB2211101425514425', 2099.00, 3, 1, 1668061570, NULL);
INSERT INTO `xy_balance_log` VALUES (270745, 12229, 0, 'UB2211101427001376', 16900.00, 2, 2, 1668061643, NULL);
INSERT INTO `xy_balance_log` VALUES (270746, 12229, 0, 'UB2211101427001376', 422.50, 3, 1, 1668061643, NULL);
INSERT INTO `xy_balance_log` VALUES (270747, 12230, 0, 'UB2408281944298091', 5990.00, 2, 2, 1724845510, NULL);
INSERT INTO `xy_balance_log` VALUES (270748, 12230, 0, 'UB2408281944298091', 119.80, 3, 1, 1724845510, NULL);
INSERT INTO `xy_balance_log` VALUES (270749, 12229, 12230, 'UB2408281944298091', 41.93, 6, 1, 1724845510, 1);
INSERT INTO `xy_balance_log` VALUES (270750, 12232, 0, 'UB2408282036528189', 5024.00, 2, 2, 1724848636, NULL);
INSERT INTO `xy_balance_log` VALUES (270751, 12232, 0, 'UB2408282036528189', 125.60, 3, 1, 1724848636, NULL);
INSERT INTO `xy_balance_log` VALUES (270752, 12229, 12232, 'UB2408282036528189', 15.07, 6, 1, 1724848636, 2);
INSERT INTO `xy_balance_log` VALUES (270753, 12230, 12232, 'UB2408282036528189', 43.96, 6, 1, 1724848636, 1);
INSERT INTO `xy_balance_log` VALUES (270754, 12230, 0, 'UB2408282110428925', 3020.00, 2, 2, 1724850690, NULL);
INSERT INTO `xy_balance_log` VALUES (270755, 12230, 0, 'UB2408282110428925', 30.20, 3, 1, 1724850690, NULL);
INSERT INTO `xy_balance_log` VALUES (270756, 12229, 12230, 'UB2408282110428925', 10.57, 6, 1, 1724850690, 1);
INSERT INTO `xy_balance_log` VALUES (270757, 12230, 0, 'UB2408282115064752', 5290.00, 2, 2, 1724850941, NULL);
INSERT INTO `xy_balance_log` VALUES (270758, 12230, 0, 'UB2408282115064752', 52.90, 3, 1, 1724850941, NULL);
INSERT INTO `xy_balance_log` VALUES (270759, 12229, 12230, 'UB2408282115064752', 18.52, 6, 1, 1724850941, 1);
INSERT INTO `xy_balance_log` VALUES (270760, 12232, 0, 'UB2408282130011975', 1049.00, 2, 2, 1724851820, NULL);
INSERT INTO `xy_balance_log` VALUES (270761, 12232, 0, 'UB2408282130011975', 10.49, 3, 1, 1724851820, NULL);
INSERT INTO `xy_balance_log` VALUES (270762, 12229, 12232, 'UB2408282130011975', 1.26, 6, 1, 1724851820, 2);
INSERT INTO `xy_balance_log` VALUES (270763, 12230, 12232, 'UB2408282130011975', 3.67, 6, 1, 1724851820, 1);
INSERT INTO `xy_balance_log` VALUES (270764, 12234, 0, 'UB2408282148164814', 49.00, 2, 2, 1724852914, NULL);
INSERT INTO `xy_balance_log` VALUES (270765, 12234, 0, 'UB2408282148164814', 0.49, 3, 1, 1724852914, NULL);
INSERT INTO `xy_balance_log` VALUES (270766, 12229, 12234, 'UB2408282148164814', 0.04, 6, 1, 1724852914, 3);
INSERT INTO `xy_balance_log` VALUES (270767, 12230, 12234, 'UB2408282148164814', 0.06, 6, 1, 1724852914, 2);
INSERT INTO `xy_balance_log` VALUES (270768, 12232, 12234, 'UB2408282148164814', 0.17, 6, 1, 1724852914, 1);

-- ----------------------------
-- Table structure for xy_bank_list
-- ----------------------------
DROP TABLE IF EXISTS `xy_bank_list`;
CREATE TABLE `xy_bank_list`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `type` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `bankcode` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '银行编号',
  `bankname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '银行名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '提现银行编码表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of xy_bank_list
-- ----------------------------
INSERT INTO `xy_bank_list` VALUES (1, '', 'IDPT0001', 'Canara Bank');
INSERT INTO `xy_bank_list` VALUES (2, '', 'IDPT0002', 'DCB Bank');
INSERT INTO `xy_bank_list` VALUES (3, '', 'IDPT0003', 'Federal Bank');
INSERT INTO `xy_bank_list` VALUES (4, '', 'IDPT0004', 'HDFC Bank');
INSERT INTO `xy_bank_list` VALUES (5, '', 'IDPT0005', 'Punjab National Bank');
INSERT INTO `xy_bank_list` VALUES (6, '', 'IDPT0006', 'Indian Bank');
INSERT INTO `xy_bank_list` VALUES (7, '', 'IDPT0007', 'ICICI Bank');
INSERT INTO `xy_bank_list` VALUES (8, '', 'IDPT0008', 'Syndicate Bank');
INSERT INTO `xy_bank_list` VALUES (9, '', 'IDPT0009', 'Karur Vysya Bank');
INSERT INTO `xy_bank_list` VALUES (10, '', 'IDPT0010', 'Union Bank of India');
INSERT INTO `xy_bank_list` VALUES (11, '', 'IDPT0011', 'Kotak Mahindra Bank');
INSERT INTO `xy_bank_list` VALUES (12, '', 'IDPT0012', 'IDFC First Bank');
INSERT INTO `xy_bank_list` VALUES (13, '', 'IDPT0013', 'Andhra Bank');
INSERT INTO `xy_bank_list` VALUES (14, '', 'IDPT0014', 'Karnataka Bank');
INSERT INTO `xy_bank_list` VALUES (15, '', 'IDPT0015', 'icici corporate bank');
INSERT INTO `xy_bank_list` VALUES (16, '', 'IDPT0016', 'Axis Bank');
INSERT INTO `xy_bank_list` VALUES (17, '', 'IDPT0017', 'UCO Bank');
INSERT INTO `xy_bank_list` VALUES (18, '', 'IDPT0018', 'South Indian Bank');
INSERT INTO `xy_bank_list` VALUES (19, '', 'IDPT0019', 'Yes Bank');
INSERT INTO `xy_bank_list` VALUES (20, '', 'IDPT0020', 'Standard Chartered Bank');
INSERT INTO `xy_bank_list` VALUES (21, '', 'IDPT0021', 'State Bank of India');
INSERT INTO `xy_bank_list` VALUES (22, '', 'IDPT0022', 'Indian Overseas Bank');
INSERT INTO `xy_bank_list` VALUES (23, '', 'IDPT0023', 'Bandhan Bank');
INSERT INTO `xy_bank_list` VALUES (24, '', 'IDPT0024', 'Central Bank of India');
INSERT INTO `xy_bank_list` VALUES (25, '', 'IDPT0025', 'Bank of Baroda');
INSERT INTO `xy_bank_list` VALUES (26, '', 'IDPT0025', 'Bank of Baroda');

-- ----------------------------
-- Table structure for xy_bankinfo
-- ----------------------------
DROP TABLE IF EXISTS `xy_bankinfo`;
CREATE TABLE `xy_bankinfo`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uid` int(10) UNSIGNED NOT NULL COMMENT '会员ID',
  `bankname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '银行名称',
  `bankcode` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `cardnum` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '卡号',
  `username` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '用户名',
  `site` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '开户行地址',
  `tel` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '手机号',
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '状态，1启用，0禁用',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `qq` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ifsc` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `remark` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `Uid`(`uid`) USING BTREE,
  INDEX `Cardnum`(`cardnum`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '会员-银行卡信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of xy_bankinfo
-- ----------------------------
INSERT INTO `xy_bankinfo` VALUES (1, 12229, 'ธนาคารกรุงศรีอยุธยา', 'ธนาคารกรุงศรีอยุธยา', 'asdasd', '张三', '', '0630065352', 1, NULL, NULL, '', 'asdad');

-- ----------------------------
-- Table structure for xy_banner
-- ----------------------------
DROP TABLE IF EXISTS `xy_banner`;
CREATE TABLE `xy_banner`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '首页轮播图' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of xy_banner
-- ----------------------------
INSERT INTO `xy_banner` VALUES (11, '/upload/612f9d2820bb370c/a70e368eb74b56da.jpg', NULL, 'https://www.thgorb.com/');
INSERT INTO `xy_banner` VALUES (12, '/upload/4b8d0ba50ceee0cb/d5b359c0c428e5ba.png', NULL, 'https://www.thgorb.com/');
INSERT INTO `xy_banner` VALUES (14, '/upload/b837d47d9e909b8e/df1069548a05d800.jpg', NULL, 'https://www.thgorb.com/');
INSERT INTO `xy_banner` VALUES (18, '/upload/064c2d05a5aee4a9/fa28deef7e3ab4a7.png', NULL, 'https://shopeeth8.com');
INSERT INTO `xy_banner` VALUES (20, '/upload/4ce3f8693faa3634/5e727c8ca353d750.png', NULL, 'https://18shopee.com/');
INSERT INTO `xy_banner` VALUES (21, '/upload/a76cb9815b63c16a/d5895b92ffba9154.png', NULL, 'https://18shopee.com/');

-- ----------------------------
-- Table structure for xy_convey
-- ----------------------------
DROP TABLE IF EXISTS `xy_convey`;
CREATE TABLE `xy_convey`  (
  `id` char(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `uid` int(11) NOT NULL COMMENT '会员ID',
  `ubalance` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `num` decimal(10, 2) NOT NULL DEFAULT 0.00 COMMENT '交易金额',
  `addtime` int(11) NOT NULL DEFAULT 0 COMMENT '下单时间',
  `endtime` int(11) NOT NULL DEFAULT 0 COMMENT '完成交易时间',
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '订单状态 0待付款 1交易完成 2用户取消  3强制完成 4强制取消  5交易冻结',
  `commission` decimal(10, 2) NOT NULL DEFAULT 0.00 COMMENT '佣金',
  `c_status` int(11) NOT NULL DEFAULT 0 COMMENT '佣金发放状态 0未发放 1已发放 2账号冻结',
  `add_id` int(11) NOT NULL COMMENT '收货地址',
  `goods_id` int(11) NOT NULL COMMENT '商品ID',
  `goods_count` int(11) NOT NULL DEFAULT 1 COMMENT '商品数量',
  `grouping_id` int(11) NOT NULL,
  `order_num` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uid`(`uid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '会员-订单表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of xy_convey
-- ----------------------------
INSERT INTO `xy_convey` VALUES ('UB2210151535124481', 12229, '111122.00', 59800.00, 1665819312, 1665819396, 1, 1495.00, 1, 2105, 1852, 2, 0, 0);
INSERT INTO `xy_convey` VALUES ('UB2210271117511814', 12229, '112617.35', 28470.00, 1666840671, 1666952479, 1, 711.75, 1, 2105, 1700, 3, 0, 0);
INSERT INTO `xy_convey` VALUES ('UB2210281834303864', 12229, '113329.45', 68994.00, 1666953270, 1666953354, 1, 1724.85, 1, 2105, 1801, 6, 0, 0);
INSERT INTO `xy_convey` VALUES ('UB2210281837254583', 12229, '115054.30', 71874.00, 1666953445, 1667043167, 1, 1796.85, 1, 2105, 1766, 9, 0, 0);
INSERT INTO `xy_convey` VALUES ('UB2210291933142848', 12229, '116851.50', 19180.00, 1667043194, 1667043282, 1, 479.50, 1, 2105, 1718, 2, 0, 0);
INSERT INTO `xy_convey` VALUES ('UB2211021408527137', 12229, '117331.00', 79992.00, 1667369332, 1667897717, 1, 1999.80, 1, 2105, 1667, 8, 0, 0);
INSERT INTO `xy_convey` VALUES ('UB2211091701161541', 12229, '119330.80', 39920.00, 1667984476, 1667989212, 1, 998.00, 1, 2105, 1659, 8, 0, 0);
INSERT INTO `xy_convey` VALUES ('UB2211091819352478', 12229, '120328.80', 37554.00, 1667989175, 1667989283, 1, 938.85, 1, 2105, 1738, 6, 0, 0);
INSERT INTO `xy_convey` VALUES ('UB2211091936236435', 12229, '121267.65', 57540.00, 1667993783, 1667993869, 1, 1438.50, 1, 2105, 1718, 6, 0, 0);
INSERT INTO `xy_convey` VALUES ('UB2211091937189717', 12229, '122706.15', 12750.00, 1667993838, 1667993925, 1, 318.75, 1, 2105, 1616, 5, 0, 0);
INSERT INTO `xy_convey` VALUES ('UB2211091948051391', 12229, '123024.90', 11499.00, 1667994485, 1667994576, 1, 287.48, 1, 2105, 1801, 1, 0, 0);
INSERT INTO `xy_convey` VALUES ('UB2211091949125812', 12229, '123312.38', 55500.00, 1667994552, 1667994637, 1, 1387.50, 1, 2105, 1707, 10, 0, 0);
INSERT INTO `xy_convey` VALUES ('UB2211101425514425', 12229, '124699.88', 83960.00, 1668061551, 1668061630, 1, 2099.00, 1, 2105, 1860, 4, 0, 0);
INSERT INTO `xy_convey` VALUES ('UB2211101427001376', 12229, '126798.88', 16900.00, 1668061620, 1668061703, 1, 422.50, 1, 2105, 1847, 1, 0, 0);
INSERT INTO `xy_convey` VALUES ('UB2211101441005027', 12229, '127221.38', 70650.00, 1668062460, 1668062580, 0, 1766.25, 0, 2105, 1862, 3, 0, 0);
INSERT INTO `xy_convey` VALUES ('UB2408281944298091', 12230, '10000.00', 5990.00, 1724845469, 1724845570, 1, 119.80, 1, 2106, 1723, 1, 0, 0);
INSERT INTO `xy_convey` VALUES ('UB2408282036528189', 12232, '10000.00', 5024.00, 1724848612, 1724848696, 1, 125.60, 1, 2107, 1477, 8, 0, 0);
INSERT INTO `xy_convey` VALUES ('UB2408282110428925', 12230, '10163.76', 3020.00, 1724850642, 1724850750, 1, 30.20, 1, 2106, 1430, 4, 0, 0);
INSERT INTO `xy_convey` VALUES ('UB2408282115064752', 12230, '10193.96', 5290.00, 1724850906, 1724851001, 1, 52.90, 1, 2106, 1732, 1, 0, 0);
INSERT INTO `xy_convey` VALUES ('UB2408282130011975', 12232, '10125.60', 1049.00, 1724851801, 1724851880, 1, 10.49, 1, 2107, 1771, 1, 0, 0);
INSERT INTO `xy_convey` VALUES ('UB2408282148164814', 12234, '100.00', 49.00, 1724852896, 1724852974, 1, 0.49, 1, 2108, 1008, 1, 0, 0);
INSERT INTO `xy_convey` VALUES ('UB2408291738457673', 12232, '10136.26', 1700.00, 1724924325, 1724924445, 0, 17.00, 0, 2107, 1422, 2, 0, 0);

-- ----------------------------
-- Table structure for xy_cs
-- ----------------------------
DROP TABLE IF EXISTS `xy_cs`;
CREATE TABLE `xy_cs`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tel` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '手机号',
  `username` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户名',
  `pwd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '密码',
  `salt` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '盐',
  `qq` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'QQ号',
  `wechat` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '微信号',
  `qr_code` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '微信二维码',
  `btime` char(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0' COMMENT '上班时间',
  `etime` char(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '下班时间',
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '账号状态 1启用 2禁用',
  `addtime` int(11) NOT NULL COMMENT '添加时间',
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ico` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `remark` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `linktext` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '客服-用户表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of xy_cs
-- ----------------------------
INSERT INTO `xy_cs` VALUES (1, '453453666', 'ศูนย์บริการลูกค้า', '12346578', '', '0', '', '/upload/9a28e1c6ab31e7ca/6eb52acfc613834b.png', '09:00', '21:30', 1, 1571970644, 'https://lin.ee/duVxYQD', '/upload/edac6581366a9d33/88caa94db53646d0.png', 'ฝ่ายบริการ', 'Click online');
INSERT INTO `xy_cs` VALUES (2, '139999999', 'ศูนย์บริการลูกค้า', '12345678', '', '0', '', '/upload/9a28e1c6ab31e7ca/6eb52acfc613834b.png', '09:00', '21:30', 1, 1571971118, 'https://lin.ee/duVxYQD', '/upload/d94c787cb2e0ed64/8694206ab7ed7cd0.png', 'ฝ่ายบริการ', 'Click online');
INSERT INTO `xy_cs` VALUES (3, '13800000000', '首次提现需审核（个人安全信息）', 'c123456789.', '', '0', '', 'http://www.kkugea.cn/upload/278cce429f71e443/f55c41cf04b35a6f.jpg', '00:00', '00:00', 2, 1575521614, 'https://lin.ee/duVxYQD', '', 'ฝ่ายบริการลูกค้า', 'Click online');
INSERT INTO `xy_cs` VALUES (4, '13800000000', '平台审核客服MChat（请咨询在线客服下载）', 'queen123456', '', '0', '', 'http://qd.cn/upload/f8a252173a9d2e87/a14ecf487cc2fe1c.png', '09:00', '22:00', 2, 1575595897, 'https://lin.ee/duVxYQD', '', 'ฝ่ายบริการลูกค้า', 'Click online');

-- ----------------------------
-- Table structure for xy_deal_elog
-- ----------------------------
DROP TABLE IF EXISTS `xy_deal_elog`;
CREATE TABLE `xy_deal_elog`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `oid` char(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '相关订单',
  `uid` int(10) UNSIGNED NOT NULL COMMENT '用户id',
  `errmsg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '错误信息',
  `addtime` int(10) UNSIGNED NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `oid`(`oid`) USING BTREE,
  INDEX `uid`(`uid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '交易错误日志表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of xy_deal_elog
-- ----------------------------

-- ----------------------------
-- Table structure for xy_deposit
-- ----------------------------
DROP TABLE IF EXISTS `xy_deposit`;
CREATE TABLE `xy_deposit`  (
  `id` char(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `uid` int(11) NOT NULL COMMENT '提现用户',
  `bk_id` int(11) NOT NULL COMMENT '银行卡信息',
  `num` decimal(12, 2) NOT NULL COMMENT '提现金额',
  `addtime` int(11) NOT NULL COMMENT '提交时间',
  `endtime` int(11) NOT NULL DEFAULT 0 COMMENT '审核时间',
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '订单状态 1待处理 2审核通过 3审核不通过',
  `type` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `real_num` decimal(12, 2) NULL DEFAULT NULL,
  `shouxu` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `trc20_address` varchar(34) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `erc20_address` varchar(34) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `tradeResult` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `tradeNo` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `applyDate` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `notifyDate` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '会员-余额提现表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of xy_deposit
-- ----------------------------

-- ----------------------------
-- Table structure for xy_goods_cate
-- ----------------------------
DROP TABLE IF EXISTS `xy_goods_cate`;
CREATE TABLE `xy_goods_cate`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '商店名称',
  `bili` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '商品名称',
  `cate_info` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '商品描述',
  `goods_price` decimal(10, 2) NULL DEFAULT NULL COMMENT '商品价格',
  `cate_pic` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '商品展示图片',
  `cat_ico` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `addtime` int(11) NOT NULL COMMENT '添加时间',
  `status` int(11) NULL DEFAULT 0 COMMENT '上架状态 0不上架 1上架',
  `min` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '最小金额限制',
  `level_id` int(11) NULL DEFAULT NULL,
  `deal_min_num` int(11) NOT NULL,
  `deal_max_num` int(11) NOT NULL,
  `deal_min_numbaifenbi` int(11) NOT NULL DEFAULT 0,
  `deal_max_numbaifenbi` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 172 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '商品表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of xy_goods_cate
-- ----------------------------
INSERT INTO `xy_goods_cate` VALUES (1, 'VIP-1', '0.008', 'Amazon channel CPS 0.012%', 0.00, '/upload/b927e2fe5ff25804/bc21a4dbfa1d6699.png', '/upload/b927e2fe5ff25804/bc21a4dbfa1d6699.png', 1651070498, 0, '100', 1, 0, 0, 0, 0);
INSERT INTO `xy_goods_cate` VALUES (2, 'VIP-2', '0.011', 'Amazon channel CPS 0.011%', NULL, '/upload/dd2cbaca67761847/f8be5c878e88992e.png', '/upload/dd2cbaca67761847/f8be5c878e88992e.png', 1651070510, 0, '500', 2, 0, 0, 0, 0);
INSERT INTO `xy_goods_cate` VALUES (3, 'VIP-3', '0.013', 'Amazon channel CPS 0.013%', NULL, '/upload/a2159927d3437d51/7d364d1d702d4419.png', '/upload/a2159927d3437d51/7d364d1d702d4419.png', 1651070914, 0, '1000', 3, 0, 0, 0, 0);
INSERT INTO `xy_goods_cate` VALUES (4, 'VIP-4', '0.015', 'Gmarket channel CPS 0.015%', NULL, '/upload/109ff091d8a385c2/32eb856019cb3a42.png', '/upload/109ff091d8a385c2/32eb856019cb3a42.png', 1651070925, 0, '3000', 4, 0, 250, 0, 0);
INSERT INTO `xy_goods_cate` VALUES (5, 'VIP-5', '0.016', 'Amazon channel CPS 0.016%', NULL, '/upload/102bb567163e956c/07bf777c6cceee00.png', '/upload/102bb567163e956c/07bf777c6cceee00.png', 1651070941, 0, '5000', 5, 0, 200, 0, 0);
INSERT INTO `xy_goods_cate` VALUES (6, 'VIP-6', '0.018', 'Amazon channel CPS 0.018%', NULL, '/upload/c5d35c61b08c8ef2/a0e1d2c57ff79e1d.png', '/upload/c5d35c61b08c8ef2/a0e1d2c57ff79e1d.png', 1651070956, 0, '10000', 6, 0, 400, 0, 0);
INSERT INTO `xy_goods_cate` VALUES (170, 'VIP-7', '0.020', 'Amazon channel CPS 0.020%', NULL, '/upload/d3870f2a27a90c83/3018223cc4ff7864.png', '/upload/d3870f2a27a90c83/3018223cc4ff7864.png', 1651070969, 0, '20000', 7, 0, 0, 0, 0);
INSERT INTO `xy_goods_cate` VALUES (171, 'VIP-8', '0.022', 'Amazon channel CPS 0.022%', NULL, '/upload/547478851e4ff6cd/7685cee5090ffefc.png', '/upload/547478851e4ff6cd/7685cee5090ffefc.png', 1651070979, 0, '50000', 8, 0, 0, 0, 0);

-- ----------------------------
-- Table structure for xy_goods_list
-- ----------------------------
DROP TABLE IF EXISTS `xy_goods_list`;
CREATE TABLE `xy_goods_list`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shop_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '商店名称',
  `en_shop_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `goods_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '商品名称',
  `en_goods_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `goods_info` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '商品描述',
  `en_goods_info` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `goods_price` decimal(10, 2) NOT NULL COMMENT '商品价格',
  `goods_pic` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品展示图片',
  `addtime` int(11) NOT NULL COMMENT '添加时间',
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '上架状态 0不上架 1上架',
  `cid` int(11) NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1880 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '商品表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of xy_goods_list
-- ----------------------------
INSERT INTO `xy_goods_list` VALUES (797, 'หนังสือปลอม ของแต่งบ้าน พร็อพถ่ายรูป พร็อพแต่งห้อง หนังสือตั้งโชว์ #Z-BH', '', 'หนังสือปลอม ของแต่งบ้าน พร็อพถ่ายรูป พร็อพแต่งห้อง หนังสือตั้งโชว์ #Z-BH', '', '', '', 37.00, '/upload/09b061150f672368/152fcd608e39d0f6.png', 1647149245, 0, 1);
INSERT INTO `xy_goods_list` VALUES (798, 'หมวกกันแดดหญิงฤดูร้อนผ้าคลุมหน้าขี่จักรยานหมวกกันแดดกลางแจ้งแห้งเร็วหมวกพับเย็น', '', 'หมวกกันแดดหญิงฤดูร้อนผ้าคลุมหน้าขี่จักรยานหมวกกันแดดกลางแจ้งแห้งเร็วหมวกพับเย็น', '', '', '', 200.00, '/upload/17a8528aefaf9f9a/14bf6e7c4dde65b2.png', 1647149369, 0, 2);
INSERT INTO `xy_goods_list` VALUES (799, 'ขวดใส่น้ำยาซักผ้า ขวดรีฟิล ขวดน้ำยาซักผ้า 1100ML ฟรีสติกเกอร์ทั้งแผ่นทุกขวด ขวดรีฟิลน้ํายาซักผ้า', '', 'ขวดใส่น้ำยาซักผ้า ขวดรีฟิล ขวดน้ำยาซักผ้า 1100ML ฟรีสติกเกอร์ทั้งแผ่นทุกขวด ขวดรีฟิลน้ํายาซักผ้า', '', '', '', 83.00, '/upload/6793a3062c06c155/87615b6b37e6d8d1.png', 1647149409, 0, 1);
INSERT INTO `xy_goods_list` VALUES (800, 'กรงเล็บมังกรกลางแจ้งเปลญวนแขวนเก้าอี้ผ้าใบหนาเดี่ยวเด็กวิทยาลัยนักศึกษาแคมป์ปิ้งสวิง', '', 'กรงเล็บมังกรกลางแจ้งเปลญวนแขวนเก้าอี้ผ้าใบหนาเดี่ยวเด็กวิทยาลัยนักศึกษาแคมป์ปิ้งสวิง', '', '', '', 251.00, '/upload/b49c5dd16d3e977b/709e1d1d9b194e22.png', 1647149539, 0, 2);
INSERT INTO `xy_goods_list` VALUES (801, 'เก้าอี้แค้มปิ้ง พับได้ มีปลอกหูหิ้ว แข็งแรง พกพาสะดวก', '', 'เก้าอี้แค้มปิ้ง พับได้ มีปลอกหูหิ้ว แข็งแรง พกพาสะดวก', '', '', '', 285.00, '/upload/27370b498efbf9fb/4dda5e51dcac0c20.png', 1647149614, 0, 2);
INSERT INTO `xy_goods_list` VALUES (802, 'รองเท้าลำลองสีขาว รองเท้ากีฬาผู้หญิง รองเท้าสีขาวขนาดเล็ก SA7318', '', 'รองเท้าลำลองสีขาว รองเท้ากีฬาผู้หญิง รองเท้าสีขาวขนาดเล็ก SA7318', '', '', '', 165.00, '/upload/6e19d459bc97cbea/1f53b91cf9de661a.png', 1647149671, 0, 2);
INSERT INTO `xy_goods_list` VALUES (803, 'แจกันดอกไม้​เซรามิก​ มินิมอล​ **มีขนาดระบุนะคะ', '', 'แจกันดอกไม้​เซรามิก​ มินิมอล​ **มีขนาดระบุนะคะv', '', '', '', 39.00, '/upload/b36061bf07daa837/71b7b3c323f78e8e.png', 1647149675, 0, 1);
INSERT INTO `xy_goods_list` VALUES (804, 'กระเป๋าผ้าสะพายไหล่ ความจุขนาดใหญ่ แฟชั่นสําหรับผู้ชายและผู้หญิง', '', 'กระเป๋าผ้าสะพายไหล่ ความจุขนาดใหญ่ แฟชั่นสําหรับผู้ชายและผู้หญิง', '', '', '', 89.00, '/upload/b41e5e10c1322397/aecfe0bc5adb748c.png', 1647149736, 0, 1);
INSERT INTO `xy_goods_list` VALUES (805, 'Happytime Babytoy กรงไม้ธรรมชาติของเล่นสําหรับสัตว์เลี้ยง 1 ชิ้น', '', 'Happytime Babytoy กรงไม้ธรรมชาติของเล่นสําหรับสัตว์เลี้ยง 1 ชิ้น', '', '', '', 57.00, '/upload/f0750e5cafc8ae94/1e37edbf4a201f08.png', 1647149891, 0, 1);
INSERT INTO `xy_goods_list` VALUES (806, 'Hot Sale ความจุขนาดใหญ่เวอร์ชั่นเกาหลีของกระเป๋าเป้สะพายหลังวิทยาเขตนักเรียนแฟชั่น', '', 'Hot Sale ความจุขนาดใหญ่เวอร์ชั่นเกาหลีของกระเป๋าเป้สะพายหลังวิทยาเขตนักเรียนแฟชั่น', '', '', '', 79.00, '/upload/2265500dd305d627/7392f0901aa917c9.png', 1647150103, 0, 1);
INSERT INTO `xy_goods_list` VALUES (807, 'Geemy โกนหนวดไฟฟ้า ที่โกนหนวด เครื่องโกนหนวด เครื่องโกนหนวดไฟฟ้า มีดโกนหนวดไฟฟ้า ปัตตาเลี่ยนโกนหนวด', '', 'Geemy โกนหนวดไฟฟ้า ที่โกนหนวด เครื่องโกนหนวด เครื่องโกนหนวดไฟฟ้า มีดโกนหนวดไฟฟ้า ปัตตาเลี่ยนโกนหนวด', '', '', '', 329.00, '/upload/0330526c3aa90e8e/9846332e17155487.jpg', 1647150107, 0, 2);
INSERT INTO `xy_goods_list` VALUES (808, 'รองเท้าบูทมาร์ติน หัวกลม มีซิปด้านข้าง แฟชั่นสำหรับผู้หญิง', '', 'รองเท้าบูทมาร์ติน หัวกลม มีซิปด้านข้าง แฟชั่นสำหรับผู้หญิง', '', '', '', 199.00, '/upload/700a08a322a18955/a63e7ba59ecc9294.png', 1647150202, 0, 2);
INSERT INTO `xy_goods_list` VALUES (809, 'กระเป๋าสะพายไหล่ ผ้าแคนวาส เข้ากับทุกการแต่งกาย แบบเรียบง่าย แฟชั่นฮาราจูกุ สไตล์เกาหลี และญี่ปุ่น', '', 'กระเป๋าสะพายไหล่ ผ้าแคนวาส เข้ากับทุกการแต่งกาย แบบเรียบง่าย แฟชั่นฮาราจูกุ สไตล์เกาหลี และญี่ปุ่น', '', '', '', 98.00, '/upload/e3316122ffb1bb0e/578d64a246068d94.png', 1647150218, 0, 1);
INSERT INTO `xy_goods_list` VALUES (810, 'K&J?รองเท้าบูทมาร์ตินผู้หญิงสไตล์อังกฤษรองเท้าบูทเดี่ยวรองเท้าบูทสั้นส้นสูง', '', 'K&J?รองเท้าบูทมาร์ตินผู้หญิงสไตล์อังกฤษรองเท้าบูทเดี่ยวรองเท้าบูทสั้นส้นสูง', '', '', '', 259.00, '/upload/883b2d75c0bb9e24/9b2e8a6e0d7b3ad8.png', 1647150307, 0, 2);
INSERT INTO `xy_goods_list` VALUES (811, 'การ์ตูน ? นาฬิกาปลุกจับเวลา รูปหมีน่ารัก ถูกใจผู้หญิง สําหรับห้องครัว ร้านขายของชํา', '', 'การ์ตูน ? นาฬิกาปลุกจับเวลา รูปหมีน่ารัก ถูกใจผู้หญิง สําหรับห้องครัว ร้านขายของชํา', '', '', '', 79.00, '/upload/722469f5ca829361/cfefc4bc53d496c3.png', 1647150360, 0, 1);
INSERT INTO `xy_goods_list` VALUES (812, '【?ไทยแลนด์สปอต : พร้อมส่งจากไทย 】รองเท้าถักเชือก รุ่นใหม่ และรุ่นเก่า สไตล์ เชือกถักสาน รองเท้าเดินป่า ชาย หญิง', '', '【?ไทยแลนด์สปอต : พร้อมส่งจากไทย 】รองเท้าถักเชือก รุ่นใหม่ และรุ่นเก่า สไตล์ เชือกถักสาน รองเท้าเดินป่า ชาย หญิง', '', '', '', 455.00, '/upload/4b56c53ccee0dad3/e879859210000a52.png', 1647150392, 0, 2);
INSERT INTO `xy_goods_list` VALUES (813, 'ไฟพื้นหลังพระอาทิตย์ตก ไฟสร้างบรรยากาศ LED ไฟโปรเจคเตอร์ LED', '', 'ไฟพื้นหลังพระอาทิตย์ตก ไฟสร้างบรรยากาศ LED ไฟโปรเจคเตอร์ LED', '', '', '', 48.00, '/upload/94386dba6f62a76b/85871ab25bb23dfe.png', 1647150450, 0, 1);
INSERT INTO `xy_goods_list` VALUES (814, '❤️รองเท้าคัชชูหนังชาย รองเท้าลำลองผู้ชายรุ่นใหม่. รองเท้าหนังนิ่ม แต่เพียงผู้เดียวระบายอากาศได้ดี', '', '❤️รองเท้าคัชชูหนังชาย รองเท้าลำลองผู้ชายรุ่นใหม่. รองเท้าหนังนิ่ม แต่เพียงผู้เดียวระบายอากาศได้ดี', '', '', '', 288.00, '/upload/97edc90d3bfb194b/fbadf2c4c00b32f5.png', 1647150457, 0, 2);
INSERT INTO `xy_goods_list` VALUES (795, '?ขายดี ส่งเร็ว?รองเท้าสวมรุ่นChic สีนู้ด ขาว', '', '?ขายดี ส่งเร็ว?รองเท้าสวมรุ่นChic สีนู้ด ขาว', '', '', '', 89.00, '/upload/6e104322b5f45cff/5c94c06893724400.png', 1647149020, 0, 1);
INSERT INTO `xy_goods_list` VALUES (796, 'Sale‼️ ?พร้อมส่ง‼️ กางเกงชิโน่ เข้ารูป กางเกงขายาวผู้ชาย กระบอกเล็ก กางเกงขายาวกางเ(ผ้าคุณภาพสูง)', '', 'Sale‼️ ?พร้อมส่ง‼️ กางเกงชิโน่ เข้ารูป กางเกงขายาวผู้ชาย กระบอกเล็ก กางเกงขายาวกางเ(ผ้าคุณภาพสูง)', '', '', '', 250.00, '/upload/e3b9ca517028f512/6f0839fe16a85d4e.jpg', 1647149192, 0, 2);
INSERT INTO `xy_goods_list` VALUES (782, 'ลุ้นรักสาวโรบอท (เล่ม 1-2จบ) ประเภท การ์ตูน ญี่ปุ่น บงกช Bongkoch', '', 'ลุ้นรักสาวโรบอท (เล่ม 1-2จบ) ประเภท การ์ตูน ญี่ปุ่น บงกช Bongkoch', '', '', '', 90.00, '/upload/3e5db7ce2cb3b599/9a5b0bbf66c6817e.jpg', 1647003505, 0, 1);
INSERT INTO `xy_goods_list` VALUES (783, 'JARTON ฝักบัวอาบน้ำ สายอ่อน สีฟ้า รุ่น124002', '', 'JARTON ฝักบัวอาบน้ำ สายอ่อน สีฟ้า รุ่น124002', '', '', '', 100.00, '/upload/5025577c7ba4c790/4593a0fb5229fca4.jpg', 1647003625, 0, 1);
INSERT INTO `xy_goods_list` VALUES (784, 'CUTE PRESS บำรุงมือและเล็บ SWEET MUSK HAND AND NAIL CREAM', '', 'CUTE PRESS บำรุงมือและเล็บ SWEET MUSK HAND AND NAIL CREAM', '', '', '', 50.00, '/upload/472064fa501b4c43/ba51f05602de87ea.jpg', 1647003843, 0, 1);
INSERT INTO `xy_goods_list` VALUES (785, '3D Mask ทรีดี มาส์ก หน้ากากอนามัยสำหรับเด็กผู้ชาย จำนวน 5 ชิ้น', '', '3D Mask ทรีดี มาส์ก หน้ากากอนามัยสำหรับเด็กผู้ชาย จำนวน 5 ชิ้น', '', '', '', 80.00, '/upload/e26db47d54f1baa8/0fe589037b056210.jpg', 1647006882, 0, 1);
INSERT INTO `xy_goods_list` VALUES (786, 'ดีนี่ เทนเดอร์ทัช ครีมอาบน้ำ 450 มล. D-nee Tender Touch Body Bath 450 ml.', '', 'ดีนี่ เทนเดอร์ทัช ครีมอาบน้ำ 450 มล. D-nee Tender Touch Body Bath 450 ml.', '', '', '', 110.00, '/upload/88a79f01db1950c1/9d212b70dd88d765.png', 1647007039, 0, 1);
INSERT INTO `xy_goods_list` VALUES (787, 'เทสโต มันฝรั่งทอดกรอบแผ่นหยักเกลือ 11 กรัม แพ็ค 12', '', 'เทสโต มันฝรั่งทอดกรอบแผ่นหยักเกลือ 11 กรัม แพ็ค 12', '', '', '', 60.00, '/upload/05637ccd9caa12ec/11be88197682d2cb.jpg', 1647007020, 0, 1);
INSERT INTO `xy_goods_list` VALUES (788, 'CHAME’ Sye Coffee Pack (ชาเม่ ซาย คอฟฟี่ แพค) 10 ซอง', '', 'CHAME’ Sye Coffee Pack (ชาเม่ ซาย คอฟฟี่ แพค) 10 ซอง', '', '', '', 70.00, '/upload/eba4def6670d5bee/123aecc44ea24cf7.jpg', 1647007138, 0, 1);
INSERT INTO `xy_goods_list` VALUES (789, 'MamyPoko Baby Wipe มามี่โพโค ไวพส์ พรีเมี่ยม ซอฟท์ ไลน์ ขนาด 80 ชิ้น (ผ้านุ่มชุ่มชื่น ,ผ้าเปียก, ทิชชู่เปียก)', '', 'MamyPoko Baby Wipe มามี่โพโค ไวพส์ พรีเมี่ยม ซอฟท์ ไลน์ ขนาด 80 ชิ้น (ผ้านุ่มชุ่มชื่น ,ผ้าเปียก, ทิชชู่เปียก)', '', '', '', 120.00, '/upload/c49badb57bed1776/01f3537a839eaaa8.png', 1647007202, 0, 1);
INSERT INTO `xy_goods_list` VALUES (790, 'ไพโอเนียร์ฟาร์ม บลูเบอร์รี่อบแห้ง 70 กรัม (ซื้อ 1 แถม 1)', '', 'ไพโอเนียร์ฟาร์ม บลูเบอร์รี่อบแห้ง 70 กรัม (ซื้อ 1 แถม 1)', '', '', '', 130.00, '/upload/b2685659575f5798/51ecadb00bbf0e26.jpg', 1647007819, 0, 1);
INSERT INTO `xy_goods_list` VALUES (791, '1 แถม 1 โปรโมชั่นส่งฟรีทั้งร้าน! ปลาเส้นอบกรอบ 100% 60กรัม', '', '1 แถม 1 โปรโมชั่นส่งฟรีทั้งร้าน! ปลาเส้นอบกรอบ 100% 60กรัม', '', '', '', 140.00, '/upload/c4e9b849a8e81b88/66c2bab84ea08d18.jpg', 1647007883, 0, 1);
INSERT INTO `xy_goods_list` VALUES (792, 'Mille ดินสอเขียนคิ้วหัวเรียวเล็ก 6D Slim Brow Pencil Waterproof 0.05g.', '', 'Mille ดินสอเขียนคิ้วหัวเรียวเล็ก 6D Slim Brow Pencil Waterproof 0.05g.', '', '', '', 150.00, '/upload/8f3b6a98bdcb6948/27dc8f9146e92e05.png', 1647007949, 0, 1);
INSERT INTO `xy_goods_list` VALUES (793, 'เบอร์ดี้ กาแฟปรุงสำเร็จชนิดผง 3อิน1 โรบัสต้า 15 กรัม แพ็ค 60 จัดส่งฟรีทั่วประเทศ เมื่อซื้อครบ 99 บาท เงื่อนไขเป็นไปตามบริษัทกำหนดเงื่อนไขเพิ่มเติม', '', 'เบอร์ดี้ กาแฟปรุงสำเร็จชนิดผง 3อิน1 โรบัสต้า 15 กรัม แพ็ค 60 จัดส่งฟรีทั่วประเทศ เมื่อซื้อครบ 99 บาท เงื่อนไขเป็นไปตามบริษัทกำหนดเงื่อนไขเพิ่มเติม', '', '', '', 160.00, '/upload/053935b82d050662/27a3c8329eaa7271.jpg', 1647008119, 0, 1);
INSERT INTO `xy_goods_list` VALUES (794, 'ซีรีแล็ค อาหารเสริมธัญพืช สูตรข้าวสาลีปลาและผักโขม 250 กรัม', '', 'ซีรีแล็ค อาหารเสริมธัญพืช สูตรข้าวสาลีปลาและผักโขม 250 กรัม', '', '', '', 170.00, '/upload/df9abbe6b6fc1819/f1e2ac9c3f334f61.jpg', 1647008236, 0, 1);
INSERT INTO `xy_goods_list` VALUES (815, '❤️รองเท้าคัชชูหนังชาย รองเท้าลำลองผู้ชายรุ่นใหม่. รองเท้าหนังนิ่ม แต่เพียงผู้เดียวระบายอากาศได้ดี', '', '❤️รองเท้าคัชชูหนังชาย รองเท้าลำลองผู้ชายรุ่นใหม่. รองเท้าหนังนิ่ม แต่เพียงผู้เดียวระบายอากาศได้ดี', '', '', '', 288.00, '/upload/e5a192d66607da20/c956afb091411a9b.png', 1647150555, 0, 2);
INSERT INTO `xy_goods_list` VALUES (816, 'New OUKU OK02 ของแท้ 100% Suction Cup Car Holder ที่วางโทรศัพท์มือถือในรถยนต์', '', 'New OUKU OK02 ของแท้ 100% Suction Cup Car Holder ที่วางโทรศัพท์มือถือในรถยนต์', '', '', '', 75.00, '/upload/422858fa5f12afa4/c03cad4b4df130c8.png', 1647150565, 0, 1);
INSERT INTO `xy_goods_list` VALUES (817, 'RIWA ปัตตาเลี่ยนผมไฟฟ้าปัตตาเลี่ยนผมไฟฟ้าผมมีดโกนปัตตาเลี่ยนชายมืออาชีพร้านทำผมสิ่งประดิษฐ์เพื่อโกนผมของคุณเองที่บ้าน', '', 'RIWA ปัตตาเลี่ยนผมไฟฟ้าปัตตาเลี่ยนผมไฟฟ้าผมมีดโกนปัตตาเลี่ยนชายมืออาชีพร้านทำผมสิ่งประดิษฐ์เพื่อโกนผมของคุณเองที่บ้าน', '', '', '', 480.00, '/upload/58a946fa0500dd58/46d4ca7c2aa72019.png', 1647150675, 0, 2);
INSERT INTO `xy_goods_list` VALUES (818, 'รองเท้าวิ่งกีฬาตาข่ายน้ำหนักเบาและระบายอากาศสำหรับผู้ชาย 2022 รองเท้าผ้าใบผู้ชาย', '', 'รองเท้าวิ่งกีฬาตาข่ายน้ำหนักเบาและระบายอากาศสำหรับผู้ชาย 2022 รองเท้าผ้าใบผู้ชาย', '', '', '', 347.00, '/upload/05f72334f8a90619/e5525a2c30deed86.png', 1647150739, 0, 2);
INSERT INTO `xy_goods_list` VALUES (819, '[thebliss] ของเล่น ของตกแต่ง ของแต่งกรง ของแต่งบ้าน เรซิ่น มีหลายแบบ', '', '[thebliss] ของเล่น ของตกแต่ง ของแต่งกรง ของแต่งบ้าน เรซิ่น มีหลายแบบ', '', '', '', 55.00, '/upload/eba300e053378281/b025f2b76a4006e5.png', 1647150753, 0, 1);
INSERT INTO `xy_goods_list` VALUES (820, 'กล่องไม้เนื้อแข็งฝาปิดกล่องทิชชูห้องรับแขกห้องเก็บทิชชู่ HM253 4.7', '', 'กล่องไม้เนื้อแข็งฝาปิดกล่องทิชชูห้องรับแขกห้องเก็บทิชชู่ HM253 4.7', '', '', '', 40.00, '/upload/2feb497768ad3934/048f2fa7f655e342.png', 1647150814, 0, 1);
INSERT INTO `xy_goods_list` VALUES (821, 'รองเท้าผ้าใบแฟ ทรงแวนผ้าใบทรงVansใส่ได้ทั้งชาย/หญิง ยี่ห้อLeo/Mashare #ShopeeFashionTH #ShopeeTH', '', 'รองเท้าผ้าใบแฟ ทรงแวนผ้าใบทรงVansใส่ได้ทั้งชาย/หญิง ยี่ห้อLeo/Mashare #ShopeeFashionTH #ShopeeTH', '', '', '', 177.00, '/upload/98a195ca3d14c06c/7d82a89601c4a2da.png', 1647150973, 0, 2);
INSERT INTO `xy_goods_list` VALUES (822, 'ต้นคริสต์มาส ดอกคริสต์มาส ของแต่งคริสต์มาส Christmas decorations IKEA', '', 'ต้นคริสต์มาส ดอกคริสต์มาส ของแต่งคริสต์มาส Christmas decorations IKEA', '', '', '', 59.00, '/upload/c2af97ee07700134/20beeb6f52960e59.png', 1647151043, 0, 1);
INSERT INTO `xy_goods_list` VALUES (823, 'VMAL Dr.Martens รองเท้าหนัง แบบผูกเชือก สำหรับผู้ชาย', '', 'VMAL Dr.Martens รองเท้าหนัง แบบผูกเชือก สำหรับผู้ชาย', '', '', '', 500.00, '/upload/4aed8775e20605f8/4e5c2f9af3b08b8d.png', 1647151055, 0, 2);
INSERT INTO `xy_goods_list` VALUES (824, 'Happytime ล้อพลาสติกขนาดเล็กขนาด 13 ซมของเล่นสําหรับสัตว์เลี้ยงหนูแฮมสเตอร์', '', 'Happytime ล้อพลาสติกขนาดเล็กขนาด 13 ซมของเล่นสําหรับสัตว์เลี้ยงหนูแฮมสเตอร์', '', '', '', 37.00, '/upload/c27df68cea67eebb/94aa398c7e8d49d2.png', 1647151171, 0, 1);
INSERT INTO `xy_goods_list` VALUES (825, 'Vmal Air Max รองเท้าผ้าใบ ลําลอง สําหรับผู้ชาย', '', 'Vmal Air Max รองเท้าผ้าใบ ลําลอง สําหรับผู้ชาย', '', '', '', 420.00, '/upload/4190cb1707fdb71d/3b47da52806a3f3a.png', 1647151181, 0, 2);
INSERT INTO `xy_goods_list` VALUES (826, 'Babyonline(X085)E2E4รองเท้ากันลื่นลายรูปสัตว์มี6แบบ', '', 'Babyonline(X085)E2E4รองเท้ากันลื่นลายรูปสัตว์มี6แบบ', '', '', '', 45.00, '/upload/00faf22f1da67a32/5330979a9bdf88db.png', 1647153458, 0, 1);
INSERT INTO `xy_goods_list` VALUES (827, 'ชามสแตนเลส 2 ชั้น สไตล์เกาหลี ถ้วยสแตนเลส มีหลายขนาด', '', 'ชามสแตนเลส 2 ชั้น สไตล์เกาหลี ถ้วยสแตนเลส มีหลายขนาด', '', '', '', 70.00, '/upload/dc8381b0b0ac89bb/e501af0c18a0db91.png', 1647153539, 0, 1);
INSERT INTO `xy_goods_list` VALUES (828, 'รองเท้าแตะ รองเท้าใส่ในบ้าน รองเท้านวด รองเท้าสุขภาพ ( EVAรุ่นพื้นหนา 3cm )', '', 'รองเท้าแตะ รองเท้าใส่ในบ้าน รองเท้านวด รองเท้าสุขภาพ ( EVAรุ่นพื้นหนา 3cm )', '', '', '', 65.00, '/upload/a8dd4c4966d5c1ed/c0ec9b306fd3143f.png', 1647153692, 0, 1);
INSERT INTO `xy_goods_list` VALUES (829, 'อุปกรณ์ฟิตเนสเครื่องช่วยซิทอัพของใช้ในครัวเรือนอุปกรณ์กีฬาบางคันเหยียบที่ท้องและเอวดึงเชือกดึง', '', 'อุปกรณ์ฟิตเนสเครื่องช่วยซิทอัพของใช้ในครัวเรือนอุปกรณ์กีฬาบางคันเหยียบที่ท้องและเอวดึงเชือกดึง', '', '', '', 65.00, '/upload/bb531be8c9135946/bb70426fcff5bea7.png', 1647153787, 0, 1);
INSERT INTO `xy_goods_list` VALUES (830, 'LINPUREตุ๊กตายาง เด้งดึ๋ง ไดโนเสาร์ยางไทรเซอราทอปส์ หนาใหญ่พิเศษ ของเล่นเด็กบ๊อบบี้เอลฟ์ ม้ากระโดด เตืมลมแล้วเล่นได้เลย', '', 'LINPUREตุ๊กตายาง เด้งดึ๋ง ไดโนเสาร์ยางไทรเซอราทอปส์ หนาใหญ่พิเศษ ของเล่นเด็กบ๊อบบี้เอลฟ์ ม้ากระโดด เตืมลมแล้วเล่นได้เลย', '', '', '', 248.00, '/upload/c7207965172b9d30/f522a959d790bdbb.png', 1647153960, 0, 2);
INSERT INTO `xy_goods_list` VALUES (831, 'ปากกาสี My color 3 (MC3) two tone 30 สี ชุด 15 ด้ามฟรีกระเป๋า 1 ใบ ขนาดหัว 0.3 มม และ 0.7 มม. ราคาต่อชุด', '', 'ปากกาสี My color 3 (MC3) two tone 30 สี ชุด 15 ด้ามฟรีกระเป๋า 1 ใบ ขนาดหัว 0.3 มม และ 0.7 มม. ราคาต่อชุด', '', '', '', 144.00, '/upload/11ebf04b7a7de6dc/c8b99aa1b7c553a9.png', 1647154040, 0, 2);
INSERT INTO `xy_goods_list` VALUES (832, 'พร้อมส่งมาก กระทะไฟฟ้ามินิ เตาไฟฟ้า หม้อไฟฟ้า หม้อชาบู กะทะหมูกะทะ กระทะไฟฟ้า กระทะไฟฟ้าอเนกประสงค์', '', 'พร้อมส่งมาก กระทะไฟฟ้ามินิ เตาไฟฟ้า หม้อไฟฟ้า หม้อชาบู กะทะหมูกะทะ กระทะไฟฟ้า กระทะไฟฟ้าอเนกประสงค์', '', '', '', 135.00, '/upload/71ee21c763a0af79/4703d2bda7370afd.png', 1647154215, 0, 2);
INSERT INTO `xy_goods_list` VALUES (833, 'OTTO เตาย่าง 2in1 รุ่น GR-170a สุกี้บาร์บีคิว ความจุหม้อ 1 ลิตร หม้อสุกี้ เตาปิ้งย่าง ไฟฟ้า ต้มชาบู สุกี้ ต้ม ผัด ปิ้ง', '', 'OTTO เตาย่าง 2in1 รุ่น GR-170a สุกี้บาร์บีคิว ความจุหม้อ 1 ลิตร หม้อสุกี้ เตาปิ้งย่าง ไฟฟ้า ต้มชาบู สุกี้ ต้ม ผัด ปิ้ง', '', '', '', 422.00, '/upload/a6336287ff7b77c8/518fd793ec649129.png', 1647154280, 0, 2);
INSERT INTO `xy_goods_list` VALUES (834, 'กระเป๋าถือ กระเป๋าเป้สะพายหลังมัลติฟังก์ชั่ กระเป๋าสตรี กระเป๋าสุภาพสตรี กระเป๋าเป้สะพายหลัง กระเป๋าสะพายไหล่', '', 'กระเป๋าถือ กระเป๋าเป้สะพายหลังมัลติฟังก์ชั่ กระเป๋าสตรี กระเป๋าสุภาพสตรี กระเป๋าเป้สะพายหลัง กระเป๋าสะพายไหล่', '', '', '', 329.00, '/upload/3a8742c455bfe29c/862f35ddc79cda44.png', 1647154336, 0, 2);
INSERT INTO `xy_goods_list` VALUES (835, 'MGBBหูฟัง บลูทูธไร้สาย หูฟัง inear ไมค์ bluetooth หูฟังครอบหู ออกกำลังกาย', '', 'MGBBหูฟัง บลูทูธไร้สาย หูฟัง inear ไมค์ bluetooth หูฟังครอบหู ออกกำลังกาย', '', '', '', 128.00, '/upload/193be0e6fbcdb1d6/9570f5232e7e5bbf.png', 1647154461, 0, 2);
INSERT INTO `xy_goods_list` VALUES (836, '[Yangzi] น้ำยากันยุงไฟฟ้า ปลอดภัย ไร้สารพิษ ไร้รสยากันยุง', '', '[Yangzi] น้ำยากันยุงไฟฟ้า ปลอดภัย ไร้สารพิษ ไร้รสยากันยุง', '', '', '', 135.00, '/upload/a9aa77736d4ee5a1/f383ff73f4fd19c5.png', 1647154564, 0, 2);
INSERT INTO `xy_goods_list` VALUES (837, 'AWEI T36 หูฟังบลูทูธไร้สาย True Wireless พร้อมกล่องชาร์จไฟ Bluetooth V5.0 Mini TWS', '', 'AWEI T36 หูฟังบลูทูธไร้สาย True Wireless พร้อมกล่องชาร์จไฟ Bluetooth V5.0 Mini TWS', '', '', '', 249.00, '/upload/399950f4b905a4a4/d9526a3b2abf7672.png', 1647154679, 0, 2);
INSERT INTO `xy_goods_list` VALUES (838, 'LIN PUREเบาะรองนนั่ง ที่รองนั่งเพื่อสุขภาพ เบาะพิงหลัง เนื้อผ้านนุ่ม ขนาด 40*40cm ใช้ได้กับเก้าอี้ทำงาน ในรถ และ โซฟา', '', 'LIN PUREเบาะรองนนั่ง ที่รองนั่งเพื่อสุขภาพ เบาะพิงหลัง เนื้อผ้านนุ่ม ขนาด 40*40cm ใช้ได้กับเก้าอี้ทำงาน ในรถ และ โซฟา', '', '', '', 128.00, '/upload/4d3f6aebed2fd239/ff185a588e79dd11.png', 1647154807, 0, 2);
INSERT INTO `xy_goods_list` VALUES (839, 'โลชั่นเด็ก ครีมทาผิวเด็ก สูตรเข้มข้น 2 เท่า 85 ml. Enfant Organic Double Lotion 85 ml. แบบหลอด', '', 'โลชั่นเด็ก ครีมทาผิวเด็ก สูตรเข้มข้น 2 เท่า 85 ml. Enfant Organic Double Lotion 85 ml. แบบหลอด', '', '', '', 89.00, '/upload/896f65212d986b28/73be45c679f056c6.png', 1647154815, 0, 1);
INSERT INTO `xy_goods_list` VALUES (840, 'Alicdolly หมอนรองคอแฟนซี ลายการ์ตูน มีกระดุมล็อค ใยสังเคราะห์คุณภาพสูง ผ้าด้านนอกเป็นผ้ากำมะหยี่ Neck pillow', '', 'Alicdolly หมอนรองคอแฟนซี ลายการ์ตูน มีกระดุมล็อค ใยสังเคราะห์คุณภาพสูง ผ้าด้านนอกเป็นผ้ากำมะหยี่ Neck pillow', '', '', '', 49.00, '/upload/15b294ac65213cd9/b6ae6ed6e1fa9734.png', 1647154879, 0, 1);
INSERT INTO `xy_goods_list` VALUES (841, 'Newmine ลำโพงบลูทูธ20วัตต์เบสคอลัมน์ลำโพงกลางแจ้งกันน้ำสนับสนุน AUX TF USB ลำโพงซับวูฟเฟอร์ TG117', '', 'Newmine ลำโพงบลูทูธ20วัตต์เบสคอลัมน์ลำโพงกลางแจ้งกันน้ำสนับสนุน AUX TF USB ลำโพงซับวูฟเฟอร์ TG117', '', '', '', 120.00, '/upload/6185d09efc7ed2a5/0cd6a9c0ed691501.png', 1647154897, 0, 2);
INSERT INTO `xy_goods_list` VALUES (842, 'Star kitchen เครื่องปั่นอเนกประสงค์ แบบสแตนเสส เครื่องปั่น เครื่องปั่นอเนกประสงค์เครื่องผสมอาหาร 2 ลิตร (244433)', '', 'Star kitchen เครื่องปั่นอเนกประสงค์ แบบสแตนเสส เครื่องปั่น เครื่องปั่นอเนกประสงค์เครื่องผสมอาหาร 2 ลิตร (244433)', '', '', '', 139.00, '/upload/60afc2ea00a7aa1e/8b49bc91e6eb956e.png', 1647155104, 0, 2);
INSERT INTO `xy_goods_list` VALUES (843, 'เชือกกระโดด เชือกกระโดดมีลูกปืน เชือกกระโดดออกกำลังกาย สายลวดเหล็ก ทนทาน ปรับความยาวเชือกได้', '', 'เชือกกระโดด เชือกกระโดดมีลูกปืน เชือกกระโดดออกกำลังกาย สายลวดเหล็ก ทนทาน ปรับความยาวเชือกได้', '', '', '', 85.00, '/upload/42f5c2b230c291d0/f6541dec64628c06.png', 1647155125, 0, 1);
INSERT INTO `xy_goods_list` VALUES (844, 'เตาไฟฟ้าปิ้งย่าง เตาปิ้งย่าง กระทะย่างไฟฟ้า BBQ ทรงยาว + ช่องใส่น้ำ กระทะปิ้งย่าง', '', 'เตาไฟฟ้าปิ้งย่าง เตาปิ้งย่าง กระทะย่างไฟฟ้า BBQ ทรงยาว + ช่องใส่น้ำ กระทะปิ้งย่าง', '', '', '', 320.00, '/upload/d44e80daf4d39e51/45e6b4e6d35d064d.png', 1647155173, 0, 2);
INSERT INTO `xy_goods_list` VALUES (845, 'DODOLOVE Baby Cotton Soft Tissue ทิชชู่ สำหรับเด็กอ่อน หนานุ่ม 3 ชั้น', '', 'DODOLOVE Baby Cotton Soft Tissue ทิชชู่ สำหรับเด็กอ่อน หนานุ่ม 3 ชั้น', '', '', '', 85.00, '/upload/96ab84d704232dad/c4982d4a8a98b9b4.png', 1647155379, 0, 1);
INSERT INTO `xy_goods_list` VALUES (846, 'Lenovo Audio LP80 หูฟังบลูทูธไร้สาย HD 5.0 สําหรับเล่นกีฬา', '', 'Lenovo Audio LP80 หูฟังบลูทูธไร้สาย HD 5.0 สําหรับเล่นกีฬา', '', '', '', 339.00, '/upload/ca9b522d4760fead/49b98992a3139827.png', 1647155449, 0, 2);
INSERT INTO `xy_goods_list` VALUES (847, 'แจกันมินิมอล แจกันใส่ดอกไม้ แจกันเกาหลี แจกันใส่ดอกทิวลิป ของแต่งห้อง ของแต่งบ้าน แจกันโมเดิร์น แจกันฮวงจุ้ย 4.6', '', 'แจกันมินิมอล แจกันใส่ดอกไม้ แจกันเกาหลี แจกันใส่ดอกทิวลิป ของแต่งห้อง ของแต่งบ้าน แจกันโมเดิร์น แจกันฮวงจุ้ย 4.6', '', '', '', 99.00, '/upload/955f7aefb147255d/577a1aa0e3e4a8d7.png', 1647155572, 0, 1);
INSERT INTO `xy_goods_list` VALUES (848, 'กาน้ำร้อนไฟฟ้าความจุ 2 ลิตร 2L', '', 'กาน้ำร้อนไฟฟ้าความจุ 2 ลิตร 2L', '', '', '', 149.00, '/upload/9b8760f7061c3700/5ac871bcbd45b8b0.png', 1647155682, 0, 2);
INSERT INTO `xy_goods_list` VALUES (849, 'DODOLOVE แผ่นซับน้ำนมแม่ 30 ชิ้น แผ่นซับน้ำนม แบบบางพิเศษและมาตรฐาน นุ่มและสบาย', '', 'DODOLOVE แผ่นซับน้ำนมแม่ 30 ชิ้น แผ่นซับน้ำนม แบบบางพิเศษและมาตรฐาน นุ่มและสบาย', '', '', '', 74.00, '/upload/7f3d160ae105c538/e633e1b694b5fe0c.png', 1647155684, 0, 1);
INSERT INTO `xy_goods_list` VALUES (850, 'LIN PURE พร้อมส่งรถบังคับดั๊มขนทรายรถดัมพ์​ได้ บังคับ​ทำงานเหมือน​จริง​สายชาร์จUSB วิทยุบังคับ 2.4Ghz รถก่อสร้างบังคับ', '', 'LIN PURE พร้อมส่งรถบังคับดั๊มขนทรายรถดัมพ์​ได้ บังคับ​ทำงานเหมือน​จริง​สายชาร์จUSB วิทยุบังคับ 2.4Ghz รถก่อสร้างบังคับ', '', '', '', 428.00, '/upload/11550beb84e374f8/41674400985a2124.png', 1647155783, 0, 2);
INSERT INTO `xy_goods_list` VALUES (851, 'LIN PURE พร้อมส่ง ของเล่น รถแม็คโค รถแม็คโครบังคับรีโมท รถของเล่นสำหรับเด็กๆ สินค้าพร้อมส่งไม่ต้องพรีออเดอร์', '', 'LIN PURE พร้อมส่ง ของเล่น รถแม็คโค รถแม็คโครบังคับรีโมท รถของเล่นสำหรับเด็กๆ สินค้าพร้อมส่งไม่ต้องพรีออเดอร์', '', '', '', 338.00, '/upload/818679f00517c7f6/08da50930fff0266.png', 1647155854, 0, 2);
INSERT INTO `xy_goods_list` VALUES (852, 'Hola รีโมทเด็ก เสริมการเรียนรู้ภาษา Learning Remote Huile ของเล่นรีโมทเสริมการเรียนรู้ Huile toys', '', 'Hola รีโมทเด็ก เสริมการเรียนรู้ภาษา Learning Remote Huile ของเล่นรีโมทเสริมการเรียนรู้ Huile toys', '', '', '', 185.00, '/upload/8b2ac32c05975f6c/fd3573d066ae9d9a.png', 1647155923, 0, 2);
INSERT INTO `xy_goods_list` VALUES (853, 'ที่ตากผ้าห่ม ไม้แขวนผ้าปูที่นอน ผ้าห่ม ไม้แขวนทรงเกลียว ไม้แขวนทรงกลม ไม้แขวนผ้า ขนาด 40 X 2.10 ม.', '', 'ที่ตากผ้าห่ม ไม้แขวนผ้าปูที่นอน ผ้าห่ม ไม้แขวนทรงเกลียว ไม้แขวนทรงกลม ไม้แขวนผ้า ขนาด 40 X 2.10 ม.', '', '', '', 51.00, '/upload/42ac2700a23eb998/fc35bcd190a83521.png', 1647155991, 0, 1);
INSERT INTO `xy_goods_list` VALUES (854, 'เครื่องทำวาฟเฟิลมินิ 8 ชิ้น CASIKO', '', 'เครื่องทำวาฟเฟิลมินิ 8 ชิ้น CASIKO', '', '', '', 439.00, '/upload/607513e4b14e12aa/1ea33c1219dfb4ee.png', 1647156030, 0, 2);
INSERT INTO `xy_goods_list` VALUES (855, 'ถังน้ำกลมฝาล็อค 333/A 62 ลิตร PLIM สีขาว ถังพลาสติกเอนกประสงค์ ผลิตจากพลาสติกคุณภาพดี มีที่ล็อกฝา และมีฝาปิดกันแมลง', '', 'ถังน้ำกลมฝาล็อค 333/A 62 ลิตร PLIM สีขาว ถังพลาสติกเอนกประสงค์ ผลิตจากพลาสติกคุณภาพดี มีที่ล็อกฝา และมีฝาปิดกันแมลง', '', '', '', 344.00, '/upload/e6eb0d589e8c288d/ff6afd6ecdee3081.png', 1647156101, 0, 2);
INSERT INTO `xy_goods_list` VALUES (856, 'กะละมังพลาสติก กะละมังเหลี่ยม อุปกรณ์ซักผ้า กะละมังอเนกประสงค์ กะละมังซักผ้า กะละมังล้างผัก ที่ล้างผลไม้ พลาสติก สีขาว', '', 'กะละมังพลาสติก กะละมังเหลี่ยม อุปกรณ์ซักผ้า กะละมังอเนกประสงค์ กะละมังซักผ้า กะละมังล้างผัก ที่ล้างผลไม้ พลาสติก สีขาว', '', '', '', 229.00, '/upload/ef22b386d02ecad0/532ce48c668f6dc7.png', 1647156154, 0, 2);
INSERT INTO `xy_goods_list` VALUES (857, 'กระบะพลาสติก ถาดพลาสติก อ่าง กะละมัง เหลี่ยม ถาดใส่ของ กระบะใส่ของ แข็งแรง หนาพิเศษ', '', 'กระบะพลาสติก ถาดพลาสติก อ่าง กะละมัง เหลี่ยม ถาดใส่ของ กระบะใส่ของ แข็งแรง หนาพิเศษ', '', '', '', 378.00, '/upload/41f607b13ed46cfe/cf8c9b2f6ab9f71f.png', 1647156221, 0, 2);
INSERT INTO `xy_goods_list` VALUES (858, 'กระบะทราย**ถูกสุด (เริ่มต้น 440 บ.)** อ่างเปล อ่างบัว อ่างเลี้ยงปลา อ่างปูน กระบะปูน 240 ลิตร', '', 'กระบะทราย**ถูกสุด (เริ่มต้น 440 บ.)** อ่างเปล อ่างบัว อ่างเลี้ยงปลา อ่างปูน กระบะปูน 240 ลิตร', '', '', '', 980.00, '/upload/706e1ed2417ecea9/1ddfc1c0088facbd.png', 1647156286, 0, 2);
INSERT INTO `xy_goods_list` VALUES (859, 'รองเท้าหัวโต ส้นตึก ร้องเท้าสีพื้น สไตล์เกาหลี รองเท้าแฟชั่น พื้นนุ่มมาก ส้นหนาใส่แล้วสูง SHO-H-11', '', 'รองเท้าหัวโต ส้นตึก ร้องเท้าสีพื้น สไตล์เกาหลี รองเท้าแฟชั่น พื้นนุ่มมาก ส้นหนาใส่แล้วสูง SHO-H-11', '', '', '', 85.00, '/upload/614f971045e8271c/b030dca98b8e472a.png', 1647156292, 0, 1);
INSERT INTO `xy_goods_list` VALUES (860, '[พร้อมส่ง] หมวกกันน็อค หมวกกันน็อคมอเตอร์ไซค์ หมวกกันน็อค หมวกกันน็อคเต็มใบ หมวกกันน็อคผู้ใหญ่ คุณภาพดีราคาถูก ทันสมัย', '', '[พร้อมส่ง] หมวกกันน็อค หมวกกันน็อคมอเตอร์ไซค์ หมวกกันน็อค หมวกกันน็อคเต็มใบ หมวกกันน็อคผู้ใหญ่ คุณภาพดีราคาถูก ทันสมัย', '', '', '', 455.00, '/upload/49deb21fd99b5cd3/e472a2c2c78f7fd8.png', 1647156360, 0, 2);
INSERT INTO `xy_goods_list` VALUES (861, 'LINPUREตุ๊กตายาง เด้งดึ๋ง ไดโนเสาร์ยางไทรเซอราทอปส์ หนาใหญ่พิเศษ ของเล่นเด็กบ๊อบบี้เอลฟ์ ม้ากระโดด เตืมลมแล้วเล่นได้เลย', '', 'LINPUREตุ๊กตายาง เด้งดึ๋ง ไดโนเสาร์ยางไทรเซอราทอปส์ หนาใหญ่พิเศษ ของเล่นเด็กบ๊อบบี้เอลฟ์ ม้ากระโดด เตืมลมแล้วเล่นได้เลย', '', '', '', 248.00, '/upload/c7207965172b9d30/f522a959d790bdbb.png', 1647156497, 0, 2);
INSERT INTO `xy_goods_list` VALUES (862, 'แก้วใส่เครื่องดื่ม แบบมีหูจับ สำหรับใช้ในบ้าน และร้านอาหาร', '', 'แก้วใส่เครื่องดื่ม แบบมีหูจับ สำหรับใช้ในบ้าน และร้านอาหาร', '', '', '', 76.00, '/upload/7b8636626142cf20/f1f06149d235bbc1.png', 1647156536, 0, 1);
INSERT INTO `xy_goods_list` VALUES (863, 'Soulful house ที่แขวนไดร์เป่าผม พับได้ ที่วางไดร์เป่าผม วางสิ่งของอื่นๆในห้องน้ำไม่ต้องเจาะผนัง ที่', '', 'Soulful house ที่แขวนไดร์เป่าผม พับได้ ที่วางไดร์เป่าผม วางสิ่งของอื่นๆในห้องน้ำไม่ต้องเจาะผนัง ที่', '', '', '', 89.00, '/upload/ca024cbfbf14fb49/8bfa72a9a8125f1b.png', 1647156622, 0, 1);
INSERT INTO `xy_goods_list` VALUES (864, 'หม้อไฟฟ้า กะทะไฟฟ้า หม้อไฟฟ้ามัลติฟังก์ชั่น หม้อไฟฟ้าเอกประสงค์ ผัด ตุ๋น ต้ม อุ่น พกพาสะดวก 1.5L 20cm', '', 'หม้อไฟฟ้า กะทะไฟฟ้า หม้อไฟฟ้ามัลติฟังก์ชั่น หม้อไฟฟ้าเอกประสงค์ ผัด ตุ๋น ต้ม อุ่น พกพาสะดวก 1.5L 20cm', '', '', '', 198.00, '/upload/7d7c29ba3fa2f58e/7cd51407fecc615d.jpg', 1647156823, 0, 2);
INSERT INTO `xy_goods_list` VALUES (865, '【พร้อมส่งจากไทย】เครื่องตัดผมไฟฟ้า รุ่นใหม่ Xiaomi Enchen Boost Electric Hair Clipper ปัตตาเลี่ยน ไร้สาย ตัดผม น้ำหนักเบา', '', '【พร้อมส่งจากไทย】เครื่องตัดผมไฟฟ้า รุ่นใหม่ Xiaomi Enchen Boost Electric Hair Clipper ปัตตาเลี่ยน ไร้สาย ตัดผม น้ำหนักเบา', '', '', '', 239.00, '/upload/0c6e29f74e167fcc/42da71b3789795cf.jpg', 1647156991, 0, 2);
INSERT INTO `xy_goods_list` VALUES (866, '❤️ไม่มียุงอีก❤️เครื่องช็อตยุง เครื่องดักยุง กําจัดแมลง กริดไฟฟ้า100000V กริดไฟฟ้าสองชั้น สไตล์LED โคมไฟดักยุง ที่ดักยุง', '', '❤️ไม่มียุงอีก❤️เครื่องช็อตยุง เครื่องดักยุง กําจัดแมลง กริดไฟฟ้า100000V กริดไฟฟ้าสองชั้น สไตล์LED โคมไฟดักยุง ที่ดักยุง', '', '', '', 439.00, '/upload/63298b5b05bbad2e/cfc6557cc42d1b33.png', 1647157029, 0, 2);
INSERT INTO `xy_goods_list` VALUES (867, 'หลอดไฟพัดลม 6 แฉก ไฟ LED 6+1 185w. OTOKO LED BULB ประหยัดพลังงาน 220V. พับเก็บได้', '', 'หลอดไฟพัดลม 6 แฉก ไฟ LED 6+1 185w. OTOKO LED BULB ประหยัดพลังงาน 220V. พับเก็บได้', '', '', '', 215.00, '/upload/3fd299eec8a0a825/086ebec30a4888bd.png', 1647157066, 0, 2);
INSERT INTO `xy_goods_list` VALUES (868, 'Spotlight LED สปอร์ตไลท์ 220v และ DC12v. กันน้ำได้ ใช้ไฟบ้าน แสงสีขาว แสงวอร์มไลท์ แสงสีเขียว RGB ไฟติดหน้าบ้าน ไฟในสวน', '', 'Spotlight LED สปอร์ตไลท์ 220v และ DC12v. กันน้ำได้ ใช้ไฟบ้าน แสงสีขาว แสงวอร์มไลท์ แสงสีเขียว RGB ไฟติดหน้าบ้าน ไฟในสวน', '', '', '', 158.00, '/upload/8b07b8d4b20cfb47/9e89da44704914b4.png', 1647157100, 0, 2);
INSERT INTO `xy_goods_list` VALUES (869, '(ขายส่ง)?ขายดีสุด? Pick1 ชุดไฟไลฟ์สดไฟLed+พร้อมขาตั้ง 2.1เมตร / ขาตั้ง3110+ที่จับมือถือ วงไฟมีหลายขนาดให้เลือก ปรับได้3สี เปลี่ยนได้10ระดับ', '', '(ขายส่ง)?ขายดีสุด? Pick1 ชุดไฟไลฟ์สดไฟLed+พร้อมขาตั้ง 2.1เมตร / ขาตั้ง3110+ที่จับมือถือ วงไฟมีหลายขนาดให้เลือก ปรับได้3สี เปลี่ยนได้10ระดับ', '', '', '', 389.00, '/upload/d0574044de2362c7/b726238047b98849.png', 1647157142, 0, 2);
INSERT INTO `xy_goods_list` VALUES (870, 'ไม้กวาด ที่โกยผง ไม้กวาดไมโครไฟเบอร์ BE MAN คละสี อุปกรณ์ทำความสะอาด ของใช้ภายในบ้าน BROOM MICRO FIBER NORMAL BLACKMAN', '', 'ไม้กวาด ที่โกยผง ไม้กวาดไมโครไฟเบอร์ BE MAN คละสี อุปกรณ์ทำความสะอาด ของใช้ภายในบ้าน BROOM MICRO FIBER NORMAL BLACKMAN', '', '', '', 149.00, '/upload/d88fc1f8df2c47d1/2d76dc4c62610c61.png', 1647157342, 0, 2);
INSERT INTO `xy_goods_list` VALUES (871, 'YUANTA ชุดไม้ถูพื้น แบบพกพาและ ใช้งานง่ายผ้าถู พื้นแบบหมุน ได้สองไดรฟ์แบบหมุน ไม้ถูพื้นถังปั่น SPIN MOP', '', 'YUANTA ชุดไม้ถูพื้น แบบพกพาและ ใช้งานง่ายผ้าถู พื้นแบบหมุน ได้สองไดรฟ์แบบหมุน ไม้ถูพื้นถังปั่น SPIN MOP', '', '', '', 149.00, '/upload/4d3f29959df00ff3/2920e704ab3f2895.png', 1647157377, 0, 2);
INSERT INTO `xy_goods_list` VALUES (872, 'ชุดถังปั่น ถังปั่นไม้ม๊อบ ชุดถังปั่นม๊อบสแตนเลส ไม้ถูพื้นถังปั่น ถังปั่นแห้ง Spin Mop หมุนได้360องศา', '', 'ชุดถังปั่น ถังปั่นไม้ม๊อบ ชุดถังปั่นม๊อบสแตนเลส ไม้ถูพื้นถังปั่น ถังปั่นแห้ง Spin Mop หมุนได้360องศา', '', '', '', 449.00, '/upload/9190e8f61505ef22/8e23cf54257b1f18.png', 1647157408, 0, 2);
INSERT INTO `xy_goods_list` VALUES (873, 'เครื่องดูดฝุ่นในรถ Car Vacuum Cleaner ในรถ ที่ดูดฝุ่นในรถ เครื่องดูดฝุ่นขนาด 120 วัตต์ 12V ระบบสุญญากาศ แถมหัวดูด 5 ชนิด', '', 'เครื่องดูดฝุ่นในรถ Car Vacuum Cleaner ในรถ ที่ดูดฝุ่นในรถ เครื่องดูดฝุ่นขนาด 120 วัตต์ 12V ระบบสุญญากาศ แถมหัวดูด 5 ชนิด', '', '', '', 151.00, '/upload/bca84b18f21b37b8/e2894af177869e18.png', 1647157435, 0, 2);
INSERT INTO `xy_goods_list` VALUES (874, 'HL ดูดเหรียญได้ เครื่องดูฝุ่นในรถ 18000PA ฟรีหัว3หัว เครื่องดูดฝุ่นไรสาย เครื่องดูดฝุ่น เครองดูดฝุ่นในรถ อุปกรณ์ในรถ', '', 'HL ดูดเหรียญได้ เครื่องดูฝุ่นในรถ 18000PA ฟรีหัว3หัว เครื่องดูดฝุ่นไรสาย เครื่องดูดฝุ่น เครองดูดฝุ่นในรถ อุปกรณ์ในรถ', '', '', '', 499.00, '/upload/07c19c2ef9f1fa4e/58c93aea48bd71e8.png', 1647157473, 0, 2);
INSERT INTO `xy_goods_list` VALUES (875, 'luckythai ถังขยะ แบบตะแกรงเหล็ก ตะกร้าใส่ผ้า ถังขยะตาข่าย มี2ขนาด', '', 'luckythai ถังขยะ แบบตะแกรงเหล็ก ตะกร้าใส่ผ้า ถังขยะตาข่าย มี2ขนาด', '', '', '', 85.00, '/upload/8ede81ef85efca1c/6d5586e974b481c8.png', 1647157658, 0, 1);
INSERT INTO `xy_goods_list` VALUES (876, 'ดอกไม้ประดิษฐ์ ดอกโบตั๋นประดิษฐ์ (B1) 1 มัด มี 5 ดอก *ไม่รวมแจกัน', '', 'ดอกไม้ประดิษฐ์ ดอกโบตั๋นประดิษฐ์ (B1) 1 มัด มี 5 ดอก *ไม่รวมแจกัน', '', '', '', 95.00, '/upload/eac0f4ddbfea9d17/30ea91b763f4f475.png', 1647157745, 0, 1);
INSERT INTO `xy_goods_list` VALUES (877, 'ชั้นวางเครื่องปรุง 4ชั้น ชั้นวางของในครัว ที่วางเครื่องปรุง ชั้นวางขวดเครื่องปรุง ชั้นวางอเนกประสงค์ ส่งจากไทย（043）', '', 'ชั้นวางเครื่องปรุง 4ชั้น ชั้นวางของในครัว ที่วางเครื่องปรุง ชั้นวางขวดเครื่องปรุง ชั้นวางอเนกประสงค์ ส่งจากไทย（043）', '', '', '', 339.00, '/upload/5410c40d93674f88/568ae26c474abcc1.png', 1647157798, 0, 2);
INSERT INTO `xy_goods_list` VALUES (878, 'Babyonline(Y184)I1เซตชุดนอนขายาวแขนยาวเด็กลายการ์ตูน', '', 'Babyonline(Y184)I1เซตชุดนอนขายาวแขนยาวเด็กลายการ์ตูน', '', '', '', 99.00, '/upload/5feb7604ff22bb81/65198d8c7fb2c541.png', 1647157831, 0, 1);
INSERT INTO `xy_goods_list` VALUES (879, 'กระเป๋าสะพายข้างแฟชั่นผู้หญิงมาใหม่MH000101', '', 'กระเป๋าสะพายข้างแฟชั่นผู้หญิงมาใหม่MH000101', '', '', '', 98.00, '/upload/140ce495576e40fe/187c53077d84198e.png', 1647158069, 0, 1);
INSERT INTO `xy_goods_list` VALUES (880, 'MGBB บลูทู ธ ตัวรับรถบลูทู ธ FM Transmitter เครื่องเล่น MP3 รถยนต์ BT36B-Black', '', 'MGBB บลูทู ธ ตัวรับรถบลูทู ธ FM Transmitter เครื่องเล่น MP3 รถยนต์ BT36B-Black', '', '', '', 158.00, '/upload/5a66bab0accab20f/78b7637c8fb597fd.png', 1647158146, 0, 2);
INSERT INTO `xy_goods_list` VALUES (881, 'ปากกามาร์กเกอร์ไฮไลท์ สีเรืองแสง สําหรับเขียนไฮไลท์ มาร์กเกอร์', '', 'ปากกามาร์กเกอร์ไฮไลท์ สีเรืองแสง สําหรับเขียนไฮไลท์ มาร์กเกอร์', '', '', '', 46.00, '/upload/ffd322b4ebfa8bab/e285b5d2333aeb34.png', 1647158159, 0, 1);
INSERT INTO `xy_goods_list` VALUES (882, 'คาบูเดิม Dio ทุกAf ทั้งaf18/25/27/28 สำหรับรถสูบตั้ง', '', 'คาบูเดิม Dio ทุกAf ทั้งaf18/25/27/28 สำหรับรถสูบตั้ง', '', '', '', 499.00, '/upload/ccbe55def7bc5673/2cc0f2e3bc01c0ee.png', 1647158184, 0, 2);
INSERT INTO `xy_goods_list` VALUES (883, 'zsdtrp manifold ท่อไอเสีย +35 มม. คาร์บูเรเตอร์ สําหรับ dio 17/18/27/28 50 cc 90 cc 2t', '', 'zsdtrp manifold ท่อไอเสีย +35 มม. คาร์บูเรเตอร์ สําหรับ dio 17/18/27/28 50 cc 90 cc 2t', '', '', '', 352.00, '/upload/25f2a9df284336f7/5414409638d3152f.png', 1647158219, 0, 2);
INSERT INTO `xy_goods_list` VALUES (884, '( 2 ชิ้น ) ตุ๊กตาเด็ก ( จุ๊บ ) ตุ๊กตาคู่รัก โมเดลคู่รัก ตุ๊กตาเด็กน้อย ฟิกเกอร์ ของเล่น ของแต่งบ้าน', '', '( 2 ชิ้น ) ตุ๊กตาเด็ก ( จุ๊บ ) ตุ๊กตาคู่รัก โมเดลคู่รัก ตุ๊กตาเด็กน้อย ฟิกเกอร์ ของเล่น ของแต่งบ้าน', '', '', '', 49.00, '/upload/3d3d40f9d3238fac/8797c59dee5626ac.png', 1647158231, 0, 1);
INSERT INTO `xy_goods_list` VALUES (885, 'คาร์บูเรเตอร์ คาร์บูแดชDASH งานอย่างดี จูนนิ่ง จูนง่าย', '', 'คาร์บูเรเตอร์ คาร์บูแดชDASH งานอย่างดี จูนนิ่ง จูนง่าย', '', '', '', 299.00, '/upload/02395cc3e95d78b6/c204de6d5c65abd6.png', 1647158256, 0, 2);
INSERT INTO `xy_goods_list` VALUES (886, 'รถออฟโรดรถจักรยานยนต์ดัดแปลงหัวกุญแจลูกวัวผีไฟรถยนต์ไฟฟ้าปลอกกุญแจปลอกกุญแจปลอกกุญแจอะไหล่ตกแต่ง', '', 'รถออฟโรดรถจักรยานยนต์ดัดแปลงหัวกุญแจลูกวัวผีไฟรถยนต์ไฟฟ้าปลอกกุญแจปลอกกุญแจปลอกกุญแจอะไหล่ตกแต่ง', '', '', '', 265.00, '/upload/95623da81c98ab1e/6af3e2b0910fac64.png', 1647158331, 0, 2);
INSERT INTO `xy_goods_list` VALUES (887, 'โคมไฟตั้งโต๊ะ Led แม่เหล็ก อเนกประสงค์ ปรับแสงอุ่นได้ ป้องกันดวงตา', '', 'โคมไฟตั้งโต๊ะ Led แม่เหล็ก อเนกประสงค์ ปรับแสงอุ่นได้ ป้องกันดวงตา', '', '', '', 75.00, '/upload/c56fbee8054d2cc5/57e7d2dbbf3a97e6.png', 1647158378, 0, 1);
INSERT INTO `xy_goods_list` VALUES (888, 'Xiaomi Car mijia Air Purifier Filter Formaldehyde Version ไส้กรองเครื่องฟอกอากาศ เสี่ยวมี่ ใน รถยนต์ กรองฝุ่น PM2.5', '', 'Xiaomi Car mijia Air Purifier Filter Formaldehyde Version ไส้กรองเครื่องฟอกอากาศ เสี่ยวมี่ ใน รถยนต์ กรองฝุ่น PM2.5', '', '', '', 269.00, '/upload/b7eec89f4a939b21/d5b548cff6b93d0c.png', 1647158615, 0, 2);
INSERT INTO `xy_goods_list` VALUES (889, 'Air purifier PM2.5 เครื่องฟอกอากาศ​รุ่นพรีเมี่ยมไทย​ ฟอกอากาศบริสุทธิ์ กรองฝุ่น ควัน และสารก่อภูมิแพ้ ขนาดห้อง50ตรม.', '', 'Air purifier PM2.5 เครื่องฟอกอากาศ​รุ่นพรีเมี่ยมไทย​ ฟอกอากาศบริสุทธิ์ กรองฝุ่น ควัน และสารก่อภูมิแพ้ ขนาดห้อง50ตรม.', '', '', '', 499.00, '/upload/5b318924d70d3c50/1c8272a2ce2921bb.png', 1647158655, 0, 2);
INSERT INTO `xy_goods_list` VALUES (890, 'เครื่องฟอกอากาศ Air Purifier กรองฝุ่น เครื่องฟอกอากาศ เครื่องกรองอากาศ กรองPM2.5 กำจัดมลพิษสำหรับห้อง 50 ตรม', '', 'เครื่องฟอกอากาศ Air Purifier กรองฝุ่น เครื่องฟอกอากาศ เครื่องกรองอากาศ กรองPM2.5 กำจัดมลพิษสำหรับห้อง 50 ตรม', '', '', '', 499.00, '/upload/d8b379a698bd2658/022e3d2ec9e8c96c.png', 1647158701, 0, 2);
INSERT INTO `xy_goods_list` VALUES (891, 'MAANGE ชุดแปรงแต่งหน้า พร้อมที่จับ ขนแปรงนุ่ม พร้อมถังแปรง 9 ชิ้น', '', 'MAANGE ชุดแปรงแต่งหน้า พร้อมที่จับ ขนแปรงนุ่ม พร้อมถังแปรง 9 ชิ้น', '', '', '', 99.00, '/upload/da4f2940e4ada13e/d1868c67dd80502f.png', 1647158702, 0, 1);
INSERT INTO `xy_goods_list` VALUES (892, 'เครื่องดับกลิ่นอัตโนมัติ เครื่องฟอกอากาศ air purifier สารก่อภูมิแพ้ PM2.5 หน้าจอLED ดับกลิ่นสัตว์เลี้ยง กลิ่น แมว สุนัข', '', 'เครื่องดับกลิ่นอัตโนมัติ เครื่องฟอกอากาศ air purifier สารก่อภูมิแพ้ PM2.5 หน้าจอLED ดับกลิ่นสัตว์เลี้ยง กลิ่น แมว สุนัข', '', '', '', 380.00, '/upload/cbb82e79ac48e4f6/38a10cea42fdc19a.png', 1647158751, 0, 2);
INSERT INTO `xy_goods_list` VALUES (893, 'Oker desktop speakers Aux+Bluetooth ปรับเบสได้ ลำโพงคอม รุ่นSP836', '', 'Oker desktop speakers Aux+Bluetooth ปรับเบสได้ ลำโพงคอม รุ่นSP836', '', '', '', 319.00, '/upload/c07ea21e6abcd174/ca72a5126e391eec.png', 1647158778, 0, 2);
INSERT INTO `xy_goods_list` VALUES (894, 'แจกันบับเบิ้ล แจกันแก้ว แจกันมินิมอล แจกันเกาหลี แจกันใส แจกันดอกไม้ ของแต่งห้อง', '', 'แจกันบับเบิ้ล แจกันแก้ว แจกันมินิมอล แจกันเกาหลี แจกันใส แจกันดอกไม้ ของแต่งห้อง', '', '', '', 99.00, '/upload/ce8c0a1f7686632a/59363a7a3f434f43.png', 1647158792, 0, 1);
INSERT INTO `xy_goods_list` VALUES (895, 'ที่หนีบ โทรศัพท์มือถือ ขาจับ โทรศัพท์ แบบหนีบ คลิปหนีบโต๊ะ CLIP MOBILE PHONE HOLDER', '', 'ที่หนีบ โทรศัพท์มือถือ ขาจับ โทรศัพท์ แบบหนีบ คลิปหนีบโต๊ะ CLIP MOBILE PHONE HOLDER', '', '', '', 39.00, '/upload/4bee7fbe732545e2/c3f4ba6136284d74.png', 1647158920, 0, 1);
INSERT INTO `xy_goods_list` VALUES (896, '[PVVRJS2K ลด 50บาท] SKG เครื่องบด-สับไฟฟ้า ใบมีด4ใบ รุ่น SK-6618 และ Mxnec เครื่องบด-สับไฟฟ้า ใบมีด4ใบ รุ่นใหม่ M-1688', '', '[PVVRJS2K ลด 50บาท] SKG เครื่องบด-สับไฟฟ้า ใบมีด4ใบ รุ่น SK-6618 และ Mxnec เครื่องบด-สับไฟฟ้า ใบมีด4ใบ รุ่นใหม่ M-1688', '', '', '', 218.00, '/upload/8dd822e7798bed35/03f1e1224819e50c.png', 1647158929, 0, 2);
INSERT INTO `xy_goods_list` VALUES (897, 'มีดเชฟ​ มีดทำครัว​ญี่ปุ่นแบรนด์​# OMAKASE​', '', 'มีดเชฟ​ มีดทำครัว​ญี่ปุ่นแบรนด์​# OMAKASE​', '', '', '', 427.00, '/upload/9d04a213f6af14f5/c6d691abdd12521a.png', 1647158962, 0, 2);
INSERT INTO `xy_goods_list` VALUES (898, 'เครื่องครัว❈☑❁ชุดมีดทำครัวสแตนเลสสำหรับห้องครัวในครัวเรือน', '', 'เครื่องครัว❈☑❁ชุดมีดทำครัวสแตนเลสสำหรับห้องครัวในครัวเรือน', '', '', '', 272.00, '/upload/f06701afde9bdb07/6d98cf9dfe35f8d6.png', 1647158993, 0, 2);
INSERT INTO `xy_goods_list` VALUES (899, '?แถมฟรีสติ๊กเกอร์? กล่องยา กล่องเก็บของ กล่องเก็บยา มีฝาปิด กล่องจัดระเบียบของ', '', '?แถมฟรีสติ๊กเกอร์? กล่องยา กล่องเก็บของ กล่องเก็บยา มีฝาปิด กล่องจัดระเบียบของ', '', '', '', 99.00, '/upload/786ebc80ecaf97e7/a23297c6e48ab932.png', 1647158996, 0, 1);
INSERT INTO `xy_goods_list` VALUES (900, '?ส่งจากกรุงเทพ? ชุดหม้อสนาม ชุดครัวแคมป์ปิ้ง ชุดหม้อ+กะทะ+กาต้มน้ำ สำหรับ 3-4 คน แถมฟรีถุงผ้าใส่ชุ', '', '?ส่งจากกรุงเทพ? ชุดหม้อสนาม ชุดครัวแคมป์ปิ้ง ชุดหม้อ+กะทะ+กาต้มน้ำ สำหรับ 3-4 คน แถมฟรีถุงผ้าใส่ชุ', '', '', '', 473.00, '/upload/4c2e338184ac4521/4a5ab43764c8d32d.png', 1647159040, 0, 2);
INSERT INTO `xy_goods_list` VALUES (901, 'กกลางแจ้งถุงเก็บของมัลติฟังก์ชั่เตาหม้อหุงก๊าซแบบพกพากระเป๋าแคมป์ปิ้งขับรถ กระเป๋าใส่เครื่องครัว', '', 'กกลางแจ้งถุงเก็บของมัลติฟังก์ชั่เตาหม้อหุงก๊าซแบบพกพากระเป๋าแคมป์ปิ้งขับรถ กระเป๋าใส่เครื่องครัว', '', '', '', 389.00, '/upload/20c4d73cc841a0c2/e890b35921395850.png', 1647159081, 0, 2);
INSERT INTO `xy_goods_list` VALUES (902, 'DDX01 รองเท้าแตะรัดส้นเด็กลายการ์ตูน รองเท้าเด็ก กันลื่น', '', 'DDX01 รองเท้าแตะรัดส้นเด็กลายการ์ตูน รองเท้าเด็ก กันลื่น', '', '', '', 72.00, '/upload/ae67a09212ee3f39/15dc3a690b243a86.png', 1647159124, 0, 1);
INSERT INTO `xy_goods_list` VALUES (903, 'หัวหนีบสารพัดประโยชน์ หัวหนีบยึดโทรศัพท์มือถือ หัวต่อมือถือ หัวจับมือถือ หัวหนีบมือถือ ตัวจับขาโต๊ะ ขาหนีบมือถือ', '', 'หัวหนีบสารพัดประโยชน์ หัวหนีบยึดโทรศัพท์มือถือ หัวต่อมือถือ หัวจับมือถือ หัวหนีบมือถือ ตัวจับขาโต๊ะ ขาหนีบมือถือ', '', '', '', 79.00, '/upload/151cb2c3a46c3889/ca268268d0e6100a.png', 1647159200, 0, 1);
INSERT INTO `xy_goods_list` VALUES (904, 'Enchen EC-1001 Boost USB ปัตตาเลี่ยน เครื่องตัดผม ปัตตาเลี่ยนไร้สาย ปัตตาเลี่ยนตัดผม ไม่ดึงเส้นผม', '', 'Enchen EC-1001 Boost USB ปัตตาเลี่ยน เครื่องตัดผม ปัตตาเลี่ยนไร้สาย ปัตตาเลี่ยนตัดผม ไม่ดึงเส้นผม', '', '', '', 269.00, '/upload/680a3b5634912a07/df5dbef9f9d6532d.png', 1647159240, 0, 2);
INSERT INTO `xy_goods_list` VALUES (905, 'VGRรุ่นV-331ที่โกนหนวดโกนเคราไร้สาย', '', 'VGRรุ่นV-331ที่โกนหนวดโกนเคราไร้สาย', '', '', '', 239.00, '/upload/8ad9a27372a723f7/d0b1d3dcd16156e6.png', 1647159283, 0, 2);
INSERT INTO `xy_goods_list` VALUES (906, 'มีดโกนหนวดไฟฟ้า เครื่องตัดแต่งผมไฟฟ้า มีดโกนไร้สาย โกนหนวดไฟฟ้าสำหรับผู้ชาย', '', 'มีดโกนหนวดไฟฟ้า เครื่องตัดแต่งผมไฟฟ้า มีดโกนไร้สาย โกนหนวดไฟฟ้าสำหรับผู้ชาย', '', '', '', 145.00, '/upload/86ba3d178f9b38a2/e1be9d0abf618c83.png', 1647159316, 0, 2);
INSERT INTO `xy_goods_list` VALUES (907, 'Xiaomi Enchen เครื่องโกนหนวดไฟฟ้า Black Stone 3 ที่โกนหนวดไฟฟ้า IPX7 Waterproof Wet & Dry LCD มีหัวกันจอนในตัว', '', 'Xiaomi Enchen เครื่องโกนหนวดไฟฟ้า Black Stone 3 ที่โกนหนวดไฟฟ้า IPX7 Waterproof Wet & Dry LCD มีหัวกันจอนในตัว', '', '', '', 399.00, '/upload/740d5f6007de6f04/f8aa8d89edbf865d.png', 1647159364, 0, 2);
INSERT INTO `xy_goods_list` VALUES (908, 'สายถัก3 ใน 1สายชาร์จโทรศัพท์มือถือ สายถัก ใช้ได้ 3 หัว', '', 'สายถัก3 ใน 1สายชาร์จโทรศัพท์มือถือ สายถัก ใช้ได้ 3 หัว', '', '', '', 55.00, '/upload/b4aff8bbb6e766de/84fe277bc2cbd5fd.png', 1647159380, 0, 1);
INSERT INTO `xy_goods_list` VALUES (909, 'STQMEX?พร้อมส่ง ?เครื่องตัดผม ปัตตาเลี่ยนตัดผม วินเทจ เฟดเดอร์หัวน้ำมัน ชนิด USB แบบไร้สาย ปัตตาเลี่ยนไฟฟ้า มีลายให้เลือกมากมาย', '', 'STQMEX?พร้อมส่ง ?เครื่องตัดผม ปัตตาเลี่ยนตัดผม วินเทจ เฟดเดอร์หัวน้ำมัน ชนิด USB แบบไร้สาย ปัตตาเลี่ยนไฟฟ้า มีลายให้เลือกลายมากมาย', '', '', '', 179.00, '/upload/bcaaf0383a6d64a9/cb020b556d8f6810.png', 1647159430, 0, 2);
INSERT INTO `xy_goods_list` VALUES (910, 'luckythai รองเท้ากันลื่น 1021 ใส่ในห้องน้ำ รองเท้าแตะ รุ่นยาง EVA กันลื่น', '', 'luckythai รองเท้ากันลื่น 1021 ใส่ในห้องน้ำ รองเท้าแตะ รุ่นยาง EVA กันลื่น', '', '', '', 44.00, '/upload/5a68fcdd6599fa84/af14c391c89fab40.png', 1647159479, 0, 1);
INSERT INTO `xy_goods_list` VALUES (911, 'Xiaomi SmartMi Car Air Purifier (Global Version) เครื่องฟอกอากาศภายในรถยนต์ | ประกันศูนย์ไทย 1 ปี', '', 'Xiaomi SmartMi Car Air Purifier (Global Version) เครื่องฟอกอากาศภายในรถยนต์ | ประกันศูนย์ไทย 1 ปี', '', '', '', 495.00, '/upload/26f11c9b2c135e1c/5ec3c4174f487ab4.png', 1647159541, 0, 2);
INSERT INTO `xy_goods_list` VALUES (912, 'เรซิ่นติดสวิตซ์ไฟลายนางฟ้า ตุ๊กตาเรซิ่น เรซิ่นติดผนัง ของแต่งบ้าน ปลั๊กไฟ ของใช้ในบ้าน ติดผนัง ของแต่งผนัง', '', 'เรซิ่นติดสวิตซ์ไฟลายนางฟ้า ตุ๊กตาเรซิ่น เรซิ่นติดผนัง ของแต่งบ้าน ปลั๊กไฟ ของใช้ในบ้าน ติดผนัง ของแต่งผนัง', '', '', '', 75.00, '/upload/85fe57fd214d2401/e6b955cd171b5f07.png', 1647159565, 0, 1);
INSERT INTO `xy_goods_list` VALUES (913, 'NETEL ชั้นวางของอเนกประสงค์ ขนาดใหญ่', '', 'NETEL ชั้นวางของอเนกประสงค์ ขนาดใหญ่', '', '', '', 500.00, '/upload/d46c9d908653ee15/bc0b49928c21d439.png', 1647159632, 0, 2);
INSERT INTO `xy_goods_list` VALUES (914, 'พร็อพถ่ายรูปลายหินขัด(Tray / prop) ของแต่งบ้าน', '', 'พร็อพถ่ายรูปลายหินขัด(Tray / prop) ของแต่งบ้าน', '', '', '', 79.00, '/upload/8497a9ea4131afb9/b190a99d97b35945.png', 1647159717, 0, 1);
INSERT INTO `xy_goods_list` VALUES (915, 'บล็อกตัวต่อแม่เหล็กของเล่น เสริมการศึกษาสำหรับเด็ก', '', 'บล็อกตัวต่อแม่เหล็กของเล่น เสริมการศึกษาสำหรับเด็ก', '', '', '', 482.00, '/upload/9080d06223d9ffea/09bda8a29c8ee899.png', 1647159806, 0, 2);
INSERT INTO `xy_goods_list` VALUES (916, 'W & G ?หัวมนุษย์เรซิ่น ✿รูปปั้นปูนปลาสเตอร์เรซิ่น ขนาดเล็ก สไตล์นอร์ดิก สําหรับ', '', 'W & G ?หัวมนุษย์เรซิ่น ✿รูปปั้นปูนปลาสเตอร์เรซิ่น ขนาดเล็ก สไตล์นอร์ดิก สําหรับ', '', '', '', 47.00, '/upload/48031a32140fa6fd/495bd27676bf5169.png', 1647159823, 0, 1);
INSERT INTO `xy_goods_list` VALUES (917, 'Godmami มาย มินิบรัช เซ็ท ชุดแปรงแต่งหน้าสำหรับเด็กและผู้ใหญ่ เกรดพรีเมียม', '', 'Godmami มาย มินิบรัช เซ็ท ชุดแปรงแต่งหน้าสำหรับเด็กและผู้ใหญ่ เกรดพรีเมียม', '', '', '', 289.00, '/upload/c1067973c6cb2597/366b3cee93539bc6.png', 1647159836, 0, 2);
INSERT INTO `xy_goods_list` VALUES (918, 'กระจกมีไฟ LED แบตเตอร์รี่ 1200mAh 3ระดับ กระจกแต่งหน้าถาดเก็บของ กระจกแต่งหน้าLED กระจกมีไฟส่องหน้า มีไฟ แบบพกพา', '', 'กระจกมีไฟ LED แบตเตอร์รี่ 1200mAh 3ระดับ กระจกแต่งหน้าถาดเก็บของ กระจกแต่งหน้าLED กระจกมีไฟส่องหน้า มีไฟ แบบพกพา', '', '', '', 78.00, '/upload/3dbc467ab0527f98/99e9b828286a7f11.png', 1647159961, 0, 1);
INSERT INTO `xy_goods_list` VALUES (919, 'THETOY ของเล่นเด็ก กลองชุด 5 ชิ้น สำหรับเด็ก ขนาดสูง 80 ซม.', '', 'THETOY ของเล่นเด็ก กลองชุด 5 ชิ้น สำหรับเด็ก ขนาดสูง 80 ซม.', '', '', '', 379.00, '/upload/1736e967351b144e/fef5d8e9ced2c4de.png', 1647159990, 0, 2);
INSERT INTO `xy_goods_list` VALUES (920, 'BEZ 11MN ลำโพงบลูทูธ แบบพกพา เบสหนัก Wireless Bluetooth Speaker Portable', '', 'BEZ 11MN ลำโพงบลูทูธ แบบพกพา เบสหนัก Wireless Bluetooth Speaker Portable', '', '', '', 239.00, '/upload/53deb9614145640c/e5e854a72fb0f4ee.png', 1647160087, 0, 2);
INSERT INTO `xy_goods_list` VALUES (921, 'Blogger โคมไฟตั้งโต๊ะ LED รูปดวงจันทร์ สําหรับตกแต่งห้องนอน', '', 'Blogger โคมไฟตั้งโต๊ะ LED รูปดวงจันทร์ สําหรับตกแต่งห้องนอน', '', '', '', 89.00, '/upload/ed5543ea6c2342d1/4ac154dcca58a856.png', 1647160105, 0, 1);
INSERT INTO `xy_goods_list` VALUES (922, 'อุปกรณ์โยคะพิลาทิส แหวนโยคะ ห่วงโยคะ เครื่องช่วยออกกำลังกายโยคะ ห่วงยางยืด ห่วงยางยืดสำหรับออกกำลังกาย', '', 'อุปกรณ์โยคะพิลาทิส แหวนโยคะ ห่วงโยคะ เครื่องช่วยออกกำลังกายโยคะ ห่วงยางยืด ห่วงยางยืดสำหรับออกกำลังกาย', '', '', '', 49.00, '/upload/0fecf6d6121150fc/7dbaa105a6fd6e05.png', 1647160205, 0, 1);
INSERT INTO `xy_goods_list` VALUES (923, 'ชุดเครื่องครัว ชุดครัว 13 ชิ้น ซิลิโคน ทนความร้อน เครื่องครัว ทัพพี ตะหลิว', '', 'ชุดเครื่องครัว ชุดครัว 13 ชิ้น ซิลิโคน ทนความร้อน เครื่องครัว ทัพพี ตะหลิว', '', '', '', 288.00, '/upload/87f4725b4e04606b/1c5f4de0c7b53df0.png', 1647160213, 0, 2);
INSERT INTO `xy_goods_list` VALUES (924, 'โคมไฟตั้งโต๊ะขนาดเล็ก', '', 'โคมไฟตั้งโต๊ะขนาดเล็ก', '', '', '', 38.00, '/upload/44336f5feaef09b3/12938133e9289263.png', 1647160306, 0, 1);
INSERT INTO `xy_goods_list` VALUES (925, 'Lesasha เครื่องหนีบ หนีบผมหมาดได้ ชุ่มชื้น Wet 2 Dry Pretty Hair Straightener รุ่น LS0953 เครื่องหนีบผม ที่หนีบผม หนีบผม', '', 'Lesasha เครื่องหนีบ หนีบผมหมาดได้ ชุ่มชื้น Wet 2 Dry Pretty Hair Straightener รุ่น LS0953 เครื่องหนีบผม ที่หนีบผม หนีบผม', '', '', '', 490.00, '/upload/1ca7db08e44bbdce/5bc07d9df76dcea9.png', 1647160390, 0, 2);
INSERT INTO `xy_goods_list` VALUES (926, 'Vans แว่นแวน แว่นกันแดดสำหรับผู้หญิง สีดำ W Sunglass Hip Cat VN0A47RHBLK (490)T', '', 'Vans แว่นแวน แว่นกันแดดสำหรับผู้หญิง สีดำ W Sunglass Hip Cat VN0A47RHBLK (490)T', '', '', '', 401.00, '/upload/58eed2fd132a6434/98cb116afa09b93c.png', 1647160429, 0, 2);
INSERT INTO `xy_goods_list` VALUES (927, 'RoShari A38 แว่นตาขับรถกลางคืน Polarized Anti Glare สำหรับผู้ชายผู้หญิง HD Day Night Vision', '', 'RoShari A38 แว่นตาขับรถกลางคืน Polarized Anti Glare สำหรับผู้ชายผู้หญิง HD Day Night Vision', '', '', '', 499.00, '/upload/f6e873c8d7363a1b/d978cf63bc46013a.png', 1647160464, 0, 2);
INSERT INTO `xy_goods_list` VALUES (928, 'หมวกมิกิ ผ้าลูกฟูกTopDry หมวกmiki หมวกวินเทจ (miki cap) Men Hat Casual Docker SAILOR Mechanic Brimless Miki Hat', '', 'หมวกมิกิ ผ้าลูกฟูกTopDry หมวกmiki หมวกวินเทจ (miki cap) Men Hat Casual Docker SAILOR Mechanic Brimless Miki Hat', '', '', '', 199.00, '/upload/bdcce52ed1e00085/bdc11b164722bf16.png', 1647160497, 0, 2);
INSERT INTO `xy_goods_list` VALUES (929, 'B543 1-5 ปี หมวกกะละมัง เด็ก หมวกโจรสลัด หมวกปีกนุ่ม หมวกเด็ก สีเขียว ผู้ชาย ผู้หญิง หมวกเด็กผู้หญิง หมวกเด็กผู้ชาย', '', 'B543 1-5 ปี หมวกกะละมัง เด็ก หมวกโจรสลัด หมวกปีกนุ่ม หมวกเด็ก สีเขียว ผู้ชาย ผู้หญิง หมวกเด็กผู้หญิง หมวกเด็กผู้ชาย', '', '', '', 139.00, '/upload/606e75e14ca23d63/f20ea39c63fc7d67.png', 1647160535, 0, 2);
INSERT INTO `xy_goods_list` VALUES (930, 'หมวกเเก๊ป โลโก้ 1985 งานใหม่ล่าสุด งานดีมา', '', 'หมวกเเก๊ป โลโก้ 1985 งานใหม่ล่าสุด งานดีมา', '', '', '', 39.00, '/upload/c1c8877927f3a641/ef32f6d981f355f1.png', 1647160572, 0, 1);
INSERT INTO `xy_goods_list` VALUES (931, 'IWACHI เครื่องหนีบผม รุ่น GY-0556 35W ให้ความร้อนเร็ว พร้อมแผ่นเซรามิก ถนอมเส้นผม', '', 'IWACHI เครื่องหนีบผม รุ่น GY-0556 35W ให้ความร้อนเร็ว พร้อมแผ่นเซรามิก ถนอมเส้นผม', '', '', '', 129.00, '/upload/6665415c53e68a49/656cf6fd23fa736d.png', 1647160734, 0, 2);
INSERT INTO `xy_goods_list` VALUES (932, '-#-SHARP เตารีดไฟฟ้า 1000 วัตต์ รุ่น AM-P455 HME', '', '-#-SHARP เตารีดไฟฟ้า 1000 วัตต์ รุ่น AM-P455 HME', '', '', '', 489.00, '/upload/f265e7cf5a3f4576/57c3c04756fd2126.png', 1647160768, 0, 2);
INSERT INTO `xy_goods_list` VALUES (933, 'OTTO เตารีดไฟฟ้า(แบบแห้ง) หน้าเตาเคลือบเทปล่อน EI-601 คละสี 4.6', '', 'OTTO เตารีดไฟฟ้า(แบบแห้ง) หน้าเตาเคลือบเทปล่อน EI-601 คละสี 4.6', '', '', '', 168.00, '/upload/254f9be854921ca6/ce2b8102a446aa7d.png', 1647160803, 0, 2);
INSERT INTO `xy_goods_list` VALUES (934, '[พร้อมส่งใน 1 วัน] ไดร์เป่าผม XIaomi Mijia Hair Dryer Negative Ion 1600 W ที่เป่าผมประจุไอออน ช่วยบำรุงผมให้นุ่มเงางาม', '', '[พร้อมส่งใน 1 วัน] ไดร์เป่าผม XIaomi Mijia Hair Dryer Negative Ion 1600 W ที่เป่าผมประจุไอออน ช่วยบำรุงผมให้นุ่มเงางาม', '', '', '', 495.00, '/upload/e151e9d382c05d07/35362c150707d83f.png', 1647160836, 0, 2);
INSERT INTO `xy_goods_list` VALUES (935, 'Eagle Eyes Risky Fold Up Night Lite Model 1 แว่นตากลางคืน', '', 'Eagle Eyes Risky Fold Up Night Lite Model 1 แว่นตากลางคืน', '', '', '', 390.00, '/upload/e988cf692e28d1a1/f01c96a77a7c8293.png', 1647160863, 0, 2);
INSERT INTO `xy_goods_list` VALUES (1415, 'Aston Spark pro 2K กล้องติดรถยนต์ 2 กล้องหน้าหลัง ทรง Dashcam ชัดระดับ 2K จอกว้าง 4.0 นิ้ว เมนูภาษาไทย รับประกัน1ปี รองรับ Loop Rec รองรับ Motion detection รองรับ G-sensor รองรับ Parking mode', '', 'Aston Spark pro 2K กล้องติดรถยนต์ 2 กล้องหน้าหลัง ทรง Dashcam ชัดระดับ 2K จอกว้าง 4.0 นิ้ว เมนูภาษาไทย รับประกัน1ปี รองรับ Loop Rec รองรับ Motion detection รองรับ G-sensor รองรับ Parking mode', '', '', '', 929.00, '/upload/215f03f421121f64/bedbb95f9e89185d.png', 1647588210, 0, 1);
INSERT INTO `xy_goods_list` VALUES (937, '?ช้อน-ส้อนสไตล์เกาหลี สแตนเลสแท้ ด้ามจับเซรามิคลายการ์ตูน 6แบบลาย?', '', '?ช้อน-ส้อนสไตล์เกาหลี สแตนเลสแท้ ด้ามจับเซรามิคลายการ์ตูน 6แบบลาย?', '', '', '', 49.00, '/upload/0a79bb194121a5e6/4baeeacae769aa52.png', 1647161000, 0, 1);
INSERT INTO `xy_goods_list` VALUES (938, 'Lesasha เครื่องหนีบ หนีบผมหมาดได้ ชุ่มชื้น Wet 2 Dry Pretty Hair Straightener รุ่น LS0953 เครื่องหนีบผม ที่หนีบผม หนีบผม', '', 'Lesasha เครื่องหนีบ หนีบผมหมาดได้ ชุ่มชื้น Wet 2 Dry Pretty Hair Straightener รุ่น LS0953 เครื่องหนีบผม ที่หนีบผม หนีบผม', '', '', '', 490.00, '/upload/1ca7db08e44bbdce/5bc07d9df76dcea9.png', 1647161063, 0, 2);
INSERT INTO `xy_goods_list` VALUES (939, 'Vans แว่นแวน แว่นกันแดดสำหรับผู้หญิง สีดำ W Sunglass Hip Cat VN0A47RHBLK (490)T', '', 'Vans แว่นแวน แว่นกันแดดสำหรับผู้หญิง สีดำ W Sunglass Hip Cat VN0A47RHBLK (490)T', '', '', '', 400.00, '/upload/f6e873c8d7363a1b/d978cf63bc46013a.png', 1647161097, 0, 2);
INSERT INTO `xy_goods_list` VALUES (940, 'RoShari A38 แว่นตาขับรถกลางคืน Polarized Anti Glare สำหรับผู้ชายผู้หญิง HD Day', '', 'RoShari A38 แว่นตาขับรถกลางคืน Polarized Anti Glare สำหรับผู้ชายผู้หญิง HD Day', '', '', '', 499.00, '/upload/f6e873c8d7363a1b/d978cf63bc46013a.png', 1647161127, 0, 2);
INSERT INTO `xy_goods_list` VALUES (941, 'หมวกมิกิ ผ้าลูกฟูกTopDry หมวกmiki หมวกวินเทจ (miki cap) Men Hat Casual Docker SAILOR Mechanic Brimless Miki Hat', '', 'หมวกมิกิ ผ้าลูกฟูกTopDry หมวกmiki หมวกวินเทจ (miki cap) Men Hat Casual Docker SAILOR Mechanic Brimless Miki Hat', '', '', '', 199.00, '/upload/bdcce52ed1e00085/bdc11b164722bf16.png', 1647161158, 0, 2);
INSERT INTO `xy_goods_list` VALUES (942, 'B543 1-5 ปี หมวกกะละมัง เด็ก หมวกโจรสลัด หมวกปีกนุ่ม หมวกเด็ก สีเขียว ผู้ชาย ผู้หญิง หมวกเด็กผู้หญิง หมวกเด็กผู้ชาย', '', 'B543 1-5 ปี หมวกกะละมัง เด็ก หมวกโจรสลัด หมวกปีกนุ่ม หมวกเด็ก สีเขียว ผู้ชาย ผู้หญิง หมวกเด็กผู้หญิง หมวกเด็กผู้ชาย', '', '', '', 139.00, '/upload/606e75e14ca23d63/f20ea39c63fc7d67.png', 1647161188, 0, 2);
INSERT INTO `xy_goods_list` VALUES (943, 'Sale‼️ ?พร้อมส่ง‼️ กางเกงชิโน่ เข้ารูป กางเกงขายาวผู้ชาย กระบอกเล็ก กางเกงขายาวกางเ(ผ้าคุณภาพสูง) ราคา 250', '', 'Sale‼️ ?พร้อมส่ง‼️ กางเกงชิโน่ เข้ารูป กางเกงขายาวผู้ชาย กระบอกเล็ก กางเกงขายาวกางเ(ผ้าคุณภาพสูง) ราคา 250', '', '', '', 250.00, '/upload/e3b9ca517028f512/6f0839fe16a85d4e.jpg', 1647161443, 0, 2);
INSERT INTO `xy_goods_list` VALUES (944, 'TAILI ที่ใส่ไข่ไก่ ที่เก็บไข่ไก่ ที่ใส่ไข่ ที่วางไข่ไก่ ถาดไข่พลาสติก ชั้นวางของครัว เครื่องครัว ของใช้ในครัว อุปกรณ์ในครัว เครื่องครัวเซต', '', 'TAILI ที่ใส่ไข่ไก่ ที่เก็บไข่ไก่ ที่ใส่ไข่ ที่วางไข่ไก่ ถาดไข่พลาสติก ชั้นวางของครัว เครื่องครัว ของใช้ในครัว อุปกรณ์ในครัว เครื่องครัวเซต', '', '', '', 61.00, '/upload/82de6fd8bcb6159b/acbc9de1e6474a3b.png', 1647161454, 0, 1);
INSERT INTO `xy_goods_list` VALUES (945, 'หมวกกันแดดหญิงฤดูร้อนผ้าคลุมหน้าขี่จักรยานหมวกกันแดดกลางแจ้งแห้งเร็วหมวกพับเย็น', '', 'หมวกกันแดดหญิงฤดูร้อนผ้าคลุมหน้าขี่จักรยานหมวกกันแดดกลางแจ้งแห้งเร็วหมวกพับเย็น', '', '', '', 233.00, '/upload/17a8528aefaf9f9a/14bf6e7c4dde65b2.png', 1647161480, 0, 2);
INSERT INTO `xy_goods_list` VALUES (946, 'กรงเล็บมังกรกลางแจ้งเปลญวนแขวนเก้าอี้ผ้าใบหนาเดี่ยวเด็กวิทยาลัยนักศึกษาแคมป์ปิ้งสวิง', '', 'กรงเล็บมังกรกลางแจ้งเปลญวนแขวนเก้าอี้ผ้าใบหนาเดี่ยวเด็กวิทยาลัยนักศึกษาแคมป์ปิ้งสวิง', '', '', '', 251.00, '/upload/b49c5dd16d3e977b/709e1d1d9b194e22.png', 1647161515, 0, 2);
INSERT INTO `xy_goods_list` VALUES (947, 'เก้าอี้แค้มปิ้ง พับได้ มีปลอกหูหิ้ว แข็งแรง พกพาสะดวก', '', 'เก้าอี้แค้มปิ้ง พับได้ มีปลอกหูหิ้ว แข็งแรง พกพาสะดวก', '', '', '', 285.00, '/upload/27370b498efbf9fb/4dda5e51dcac0c20.png', 1647161540, 0, 2);
INSERT INTO `xy_goods_list` VALUES (948, 'ส่งออกเร็ว1-2วัน ชุดชั้นในน่ารัก เสื้อชั้นในไร้โครง ผ้านิ่มดี มีฟองดันทรงในตัว NY56-2', '', 'ส่งออกเร็ว1-2วัน ชุดชั้นในน่ารัก เสื้อชั้นในไร้โครง ผ้านิ่มดี มีฟองดันทรงในตัว NY56-2', '', '', '', 89.00, '/upload/405a55832d323813/a4fbb75e04239550.png', 1647161554, 0, 1);
INSERT INTO `xy_goods_list` VALUES (949, 'รองเท้าลำลองสีขาว รองเท้ากีฬาผู้หญิง รองเท้าสีขาวขนาดเล็ก SA7318', '', 'รองเท้าลำลองสีขาว รองเท้ากีฬาผู้หญิง รองเท้าสีขาวขนาดเล็ก SA7318', '', '', '', 165.00, '/upload/6e19d459bc97cbea/1f53b91cf9de661a.png', 1647161580, 0, 2);
INSERT INTO `xy_goods_list` VALUES (950, 'TheTerrace กล่องใส่กระดาษทิชชู่ พร้อมที่วางโทรศัพท์', '', 'TheTerrace กล่องใส่กระดาษทิชชู่ พร้อมที่วางโทรศัพท์', '', '', '', 42.00, '/upload/9d22f022f724e60c/b0a043a9e7671095.png', 1647161651, 0, 1);
INSERT INTO `xy_goods_list` VALUES (951, 'เสื้อในผู้หญิง รุ่นB-061 สปอร์ตบราไร้ขอบ ไร้โครง ฟรีไซส์ มีหลากสีให้เลือก พร้อมส่ง', '', 'เสื้อในผู้หญิง รุ่นB-061 สปอร์ตบราไร้ขอบ ไร้โครง ฟรีไซส์ มีหลากสีให้เลือก พร้อมส่ง', '', '', '', 46.00, '/upload/5b11473d440ddcec/98eaa3faa418ba20.png', 1647161861, 0, 1);
INSERT INTO `xy_goods_list` VALUES (952, 'แปรงขัดพื้น 2in1 แปรงถูพื้น แปรงด้ามยาว แปรงขัดห้องน้ำ แปรงล้างพื้น แปรงทำความสะอาด มีที่กวาดน้ำ ไม้ขัดพื้น แปรงตราสมอ', '', 'แปรงขัดพื้น 2in1 แปรงถูพื้น แปรงด้ามยาว แปรงขัดห้องน้ำ แปรงล้างพื้น แปรงทำความสะอาด มีที่กวาดน้ำ ไม้ขัดพื้น แปรงตราสมอ', '', '', '', 78.00, '/upload/1347592a67f5b9b5/b6b86ba474f1357f.png', 1647162176, 0, 1);
INSERT INTO `xy_goods_list` VALUES (953, 'Gion-ที่ลับมีด อุปกรณ์ลับมีด หินลับมีด แท่นลับมีด ลับได้ 3 ระดับ รุ่น SS-168', '', 'Gion-ที่ลับมีด อุปกรณ์ลับมีด หินลับมีด แท่นลับมีด ลับได้ 3 ระดับ รุ่น SS-168', '', '', '', 43.00, '/upload/6440a0b85fcf03aa/afa59bf243353ba9.png', 1647162306, 0, 1);
INSERT INTO `xy_goods_list` VALUES (954, 'กางเกงกีฬา กางเกงลำลองสีเทาสีดำกางเกงแครอทหลวมกางเกงในกางเกงทั้งหมด', '', 'กางเกงกีฬา กางเกงลำลองสีเทาสีดำกางเกงแครอทหลวมกางเกงในกางเกงทั้งหมด', '', '', '', 99.00, '/upload/dd5f8596de288c3e/bad81bd630bf6c5e.png', 1647162676, 0, 1);
INSERT INTO `xy_goods_list` VALUES (955, 'ของแท้ CKL / JMF 818 ที่หนีบผม ราคาประหยัด หนีบตรง ของดีราคาถูก เครื่องหนีบผม 4.5', '', 'ของแท้ CKL / JMF 818 ที่หนีบผม ราคาประหยัด หนีบตรง ของดีราคาถูก เครื่องหนีบผม 4.5', '', '', '', 79.00, '/upload/cbfe58fda2159188/473a3db36cc141a5.png', 1647162795, 0, 1);
INSERT INTO `xy_goods_list` VALUES (956, 'HUOHOU แปรงขัดห้องน้ำ อุปกรณ์ทำความสะอาดชักโครก แปรงขัดชักโครก ที่ขัดห้องน้ำ แปรงขัดส้วม ที่ขัดส้วม แปรงขัดห้องน้ำพร้อมที่เก็บ', '', 'HUOHOU แปรงขัดห้องน้ำ อุปกรณ์ทำความสะอาดชักโครก แปรงขัดชักโครก ที่ขัดห้องน้ำ แปรงขัดส้วม ที่ขัดส้วม แปรงขัดห้องน้ำพร้อมที่เก็บ', '', '', '', 49.00, '/upload/f1e7e4c67e3dcf8b/2d3f09fff1d9e412.png', 1647163124, 0, 1);
INSERT INTO `xy_goods_list` VALUES (957, '【สองมือจับ】 เก้าอี้สไตล์นอร์ดิก เก้าอี้ห้องอาหาร เก้าอี้ เก้าอี้หนัง เก้าอี้กินข้าว เก้าอี้ทำงาน เก้าอี้อเนกปร', '', '【สองมือจับ】 เก้าอี้สไตล์นอร์ดิก เก้าอี้ห้องอาหาร เก้าอี้ เก้าอี้หนัง เก้าอี้กินข้าว เก้าอี้ทำงาน เก้าอี้อเนกปร', '', '', '', 1980.00, '/upload/f84590d6df7e026c/e1dd9e6fde594a0c.jpg', 1647163450, 0, 4);
INSERT INTO `xy_goods_list` VALUES (958, 'T757 ชั้นวางของติดผนังสำหรับวางของบนผนัง', '', 'T757 ชั้นวางของติดผนังสำหรับวางของบนผนัง', '', '', '', 41.00, '/upload/58519efbb299dfa6/9199fa1d283aee4e.png', 1647163481, 0, 1);
INSERT INTO `xy_goods_list` VALUES (959, 'FREEMAX โต๊ะเครื่องแป้งในห้องนอน โต๊ะเครื่องแป้งขนาดเล็กเรียบง่าย โต๊ะเครื่องแป้งแบบไม่มีเก้าอี้', '', 'FREEMAX โต๊ะเครื่องแป้งในห้องนอน โต๊ะเครื่องแป้งขนาดเล็กเรียบง่าย โต๊ะเครื่องแป้งแบบไม่มีเก้าอี้', '', '', '', 2188.00, '/upload/0a8f2e916d824699/9bcc4ee4c630c660.jpg', 1647163540, 0, 4);
INSERT INTO `xy_goods_list` VALUES (960, 'FREEMAX โซฟา โซฟาสไตน์นอร์ดิก เเข็งเร็ง ทนทาง มี 2 ที่นั่ง หลายสีให้เลือก', '', 'FREEMAX โซฟา โซฟาสไตน์นอร์ดิก เเข็งเร็ง ทนทาง มี 2 ที่นั่ง หลายสีให้เลือก', '', '', '', 2399.00, '/upload/a080216906f48bff/a78c1feb0fc701ab.jpg', 1647163667, 0, 4);
INSERT INTO `xy_goods_list` VALUES (961, 'เทียน เทียนหอม ดับกลิ่น เทียนหอมอโรม่า เทียนหอมไขถั่วเหลือง เทียนหอมปรับอากาศ เทียนหอมสร้างบรรยากาศ น้ำหนัก 50g', '', 'เทียน เทียนหอม ดับกลิ่น เทียนหอมอโรม่า เทียนหอมไขถั่วเหลือง เทียนหอมปรับอากาศ เทียนหอมสร้างบรรยากาศ น้ำหนัก 50g', '', '', '', 48.00, '/upload/3da9735c1efe6bfc/4898b3aa794bf92d.png', 1647163735, 0, 1);
INSERT INTO `xy_goods_list` VALUES (962, '[HOT DEAL] งานเกรดพรีเมี่ยม โซฟาปรับนอน 3 ระดับ หุ้มหนังเงา จัดส่งทั่วไทย', '', '[HOT DEAL] งานเกรดพรีเมี่ยม โซฟาปรับนอน 3 ระดับ หุ้มหนังเงา จัดส่งทั่วไทย', '', '', '', 2999.00, '/upload/9b2ef4efdcc90a22/a4bfa56c25f696ab.jpg', 1647163761, 0, 4);
INSERT INTO `xy_goods_list` VALUES (963, 'TheTerrace ชั้นวางรองเท้า ชั้นเก็บรองเท้า แบบสามชั้น', '', 'TheTerrace ชั้นวางรองเท้า ชั้นเก็บรองเท้า แบบสามชั้น', '', '', '', 35.00, '/upload/f5a653dcb5d101b6/3fb22f87d17bb849.jpg', 1647163825, 0, 1);
INSERT INTO `xy_goods_list` VALUES (964, 'FP ตู้วางทีวีชั้นวางทีวี ตู้ทีวี190CMโต๊ะวางของโต๊ะวางทีวีชั้นวางโทรทัศน์รองรับทีวี40-50นิ้ว2-4ประตูมีตู้เก็บของมีช่องวา', '', 'FP ตู้วางทีวีชั้นวางทีวี ตู้ทีวี190CMโต๊ะวางของโต๊ะวางทีวีชั้นวางโทรทัศน์รองรับทีวี40-50นิ้ว2-4ประตูมีตู้เก็บของมีช่องวา', '', '', '', 1000.00, '/upload/da3c5c0823a716bc/89118a599d989025.jpg', 1647163890, 0, 4);
INSERT INTO `xy_goods_list` VALUES (965, 'TheTerrace พรมเช็ดเท้า พรมปูพื้น นุ่มสบาย ลายน่ารัก', '', 'TheTerrace พรมเช็ดเท้า พรมปูพื้น นุ่มสบาย ลายน่ารัก', '', '', '', 48.00, '/upload/16d1d9ec054e3072/35d2a42dfd2a7688.jpg', 1647163985, 0, 1);
INSERT INTO `xy_goods_list` VALUES (966, '☾♠StarWorld LED Analog TV อนาล็อกทีวี ทีวี21นิ้ว ทีวีจอแบน', '', '☾♠StarWorld LED Analog TV อนาล็อกทีวี ทีวี21นิ้ว ทีวีจอแบน', '', '', '', 3068.00, '/upload/093b0665f7dec092/bdd6a091303b989b.jpg', 1647164125, 0, 4);
INSERT INTO `xy_goods_list` VALUES (967, '✣❡พร้อมส่ง? พัดลม P9s/P10/P21 USB desktop fans พัดลมไฟฟ้า พัดลมพกพาพับได้ พัดลมตั้งโต๊ะ ยืดหดได้ พัดลมชาจเก็บไฟ พัดลมมิ', '', '✣❡พร้อมส่ง? พัดลม P9s/P10/P21 USB desktop fans พัดลมไฟฟ้า พัดลมพกพาพับได้ พัดลมตั้งโต๊ะ ยืดหดได้ พัดลมชาจเก็บไฟ พัดลมมิ', '', '', '', 1062.00, '/upload/89e69d72d770e8b6/7132820415e50f67.jpg', 1647164311, 0, 4);
INSERT INTO `xy_goods_list` VALUES (968, 'TheTerrace ถังขยะพลาสติก ขนาดเล็ก สำหรับแขวน', '', 'TheTerrace ถังขยะพลาสติก ขนาดเล็ก สำหรับแขวน', '', '', '', 63.00, '/upload/424cbbeca2753178/f25c5ce92ef6a9e2.jpg', 1647164351, 0, 1);
INSERT INTO `xy_goods_list` VALUES (969, 'NTS # PR810V เบรกเกอร์ติดแร็ค มีโวลต์ (8799SLV)', '', 'NTS # PR810V เบรกเกอร์ติดแร็ค มีโวลต์ (8799SLV)', '', '', '', 1220.00, '/upload/5f0ee24cbda23ff6/1f34b65174e01906.jpg', 1647164486, 0, 4);
INSERT INTO `xy_goods_list` VALUES (970, 'CEFLAR MINI80 มิกซ์เซอร์ .', '', 'CEFLAR MINI80 มิกซ์เซอร์ .', '', '', '', 3490.00, '/upload/f412eafa39ec992f/771cc220cac2af55.jpg', 1647164622, 0, 4);
INSERT INTO `xy_goods_list` VALUES (971, 'SOUNDBEST MGP6X MIXER Mixer 6 CH มิกเซอร์ 6 ช่อง USB Bluetooth MP3*ทักแชทเพื่อขอส่วนลดพิเศษ', '', 'SOUNDBEST MGP6X MIXER Mixer 6 CH มิกเซอร์ 6 ช่อง USB Bluetooth MP3*ทักแชทเพื่อขอส่วนลดพิเศษ', '', '', '', 3770.00, '/upload/3ce6939aa4bef507/cddc1d488c38f142.jpg', 1647164688, 0, 4);
INSERT INTO `xy_goods_list` VALUES (972, '3Dโคมไฟอะคริลิค LED ตกแต่งห้องนอน F3D', '', '3Dโคมไฟอะคริลิค LED ตกแต่งห้องนอน F3D', '', '', '', 65.00, '/upload/a4766d661560a27e/f5b7d9c45b0b876e.jpg', 1647164732, 0, 1);
INSERT INTO `xy_goods_list` VALUES (973, 'Maono AU-AM200 ประกันศูนย์ไทย 1ปีเต็ม!! MaonoCaster Lite Portable Podcast Production Studio', '', 'Maono AU-AM200 ประกันศูนย์ไทย 1ปีเต็ม!! MaonoCaster Lite Portable Podcast Production Studio', '', '', '', 2500.00, '/upload/d0f30664aab697ca/13879f0e65d8917d.jpg', 1647164798, 0, 4);
INSERT INTO `xy_goods_list` VALUES (974, 'นาฬิกาวินเทจ ของแต่งห้อง นาฬิกานักดนตรี ตั้งโต๊ะ นาฬิกาแต่งบ้าน น่ารัก ดีไซน์ไม่ซ้ำ', '', 'นาฬิกาวินเทจ ของแต่งห้อง นาฬิกานักดนตรี ตั้งโต๊ะ นาฬิกาแต่งบ้าน น่ารัก ดีไซน์ไม่ซ้ำ', '', '', '', 78.00, '/upload/030c9f442cee820d/14f6f9dfd950424a.jpg', 1647165036, 0, 1);
INSERT INTO `xy_goods_list` VALUES (975, 'ใส่โค้ด 789L050 ลด 50B?พร้อมส่งจากไทย?จักรยานสไตล์วินเทจ จักรยาน จักรยานวินเทจ จักรยานผู้ใหญ่ ขนาด 24นิ้ว', '', 'ใส่โค้ด 789L050 ลด 50B?พร้อมส่งจากไทย?จักรยานสไตล์วินเทจ จักรยาน จักรยานวินเทจ จักรยานผู้ใหญ่ ขนาด 24นิ้ว', '', '', '', 1999.00, '/upload/902dd34c06dea2ea/e925b4e7c1b5fe96.jpg', 1647165101, 0, 4);
INSERT INTO `xy_goods_list` VALUES (976, 'กล่องใส่แปรงสีฟัน ที่เก็บแปรงสีฟัน ช่วยรักษาความสะอาด น่ารัก พกพาสะดวก', '', 'กล่องใส่แปรงสีฟัน ที่เก็บแปรงสีฟัน ช่วยรักษาความสะอาด น่ารัก พกพาสะดวก', '', '', '', 36.00, '/upload/66ee468881930ab2/74c2ea58e52c024b.jpg', 1647165157, 0, 1);
INSERT INTO `xy_goods_list` VALUES (977, '?ลดเพิ่ม20B ใส่โค้ด789L020?จักรยานเด็ก จักรยานพาสเทล 16/18 นิ้ว จักรยานปั่น 4 ล้อ สีพาสเทลน่ารัก ขี่ง่าย', '', '?ลดเพิ่ม20B ใส่โค้ด789L020?จักรยานเด็ก จักรยานพาสเทล 16/18 นิ้ว จักรยานปั่น 4 ล้อ สีพาสเทลน่ารัก ขี่ง่าย', '', '', '', 1099.00, '/upload/66d22243e30fa138/89451ca0eb05e870.jpg', 1647165185, 0, 4);
INSERT INTO `xy_goods_list` VALUES (978, 'สายคล้องแมส สายคล้องหน้ากากอนามัย ไข่มุก ลูกปัด งานเกาหลี พรีเมียม แฟชั่น แข็งแรงไม่ขาดง่าย', '', 'สายคล้องแมส สายคล้องหน้ากากอนามัย ไข่มุก ลูกปัด งานเกาหลี พรีเมียม แฟชั่น แข็งแรงไม่ขาดง่าย', '', '', '', 59.00, '/upload/c03d98aa76dc97d8/9b4ebf35047eb0c7.jpg', 1647165227, 0, 1);
INSERT INTO `xy_goods_list` VALUES (979, 'Thames ที่นอนยางพารา Buckinghamshire หนา5 นิ้ว ที่นอน นุ่มแน่น บอกลาอาการปวดหลัง 3ฟุต 3.5ฟุต 5ฟุต 6ฟุต mattress', '', 'Thames ที่นอนยางพารา Buckinghamshire หนา5 นิ้ว ที่นอน นุ่มแน่น บอกลาอาการปวดหลัง 3ฟุต 3.5ฟุต 5ฟุต 6ฟุต mattress', '', '', '', 4199.00, '/upload/d64494f7ce2bbaea/aa0c1dc6307ec3ff.jpg', 1647165281, 0, 4);
INSERT INTO `xy_goods_list` VALUES (980, 'ที่นอน Parasureยางพาราแท้หนา8นิ้วรับประกัน12ปี(พิเศษหมอนยางพาราลดอาการปวดคอ)', '', 'ที่นอน Parasureยางพาราแท้หนา8นิ้วรับประกัน12ปี(พิเศษหมอนยางพาราลดอาการปวดคอ)', '', '', '', 4990.00, '/upload/664067348527de78/acadcb44bd6dc621.jpg', 1647165378, 0, 4);
INSERT INTO `xy_goods_list` VALUES (981, 'เครื่องทำความชื้น น้ำมันหอมระเหย ขนาดเล็ก สำหรับพกพา 220 มล.', '', 'เครื่องทำความชื้น น้ำมันหอมระเหย ขนาดเล็ก สำหรับพกพา 220 มล.', '', '', '', 56.00, '/upload/9615d3536b339cfb/e6022620037a6d18.png', 1647165384, 0, 1);
INSERT INTO `xy_goods_list` VALUES (982, 'ตียงนอนหัวดีไนซ์หรูหราสีขาว5ฟุต', '', 'ตียงนอนหัวดีไนซ์หรูหราสีขาว5ฟุต', '', '', '', 3300.00, '/upload/6fae57500e5f06bc/4a3595acfeb7f613.jpg', 1647165462, 0, 4);
INSERT INTO `xy_goods_list` VALUES (983, 'จำหน่วยเตียงนอนสวยๆทุกขนาด/เลือกแบบเตียงและสีได้ตามใจชอบ', '', 'จำหน่วยเตียงนอนสวยๆทุกขนาด/เลือกแบบเตียงและสีได้ตามใจชอบ', '', '', '', 2275.00, '/upload/ae8102b9a8ab6f01/20a89a86f1c9ba9f.jpg', 1647165562, 0, 4);
INSERT INTO `xy_goods_list` VALUES (985, 'Marshall Emberton ลำโพงบลูทูธ ขาว Bluetooth Speaker ลำโพงพกพา ลำโพงคอมพิวเตอร์ ลำโพงบลูทูธเบสหนัก ลำโพง marshall', '', 'Marshall Emberton ลำโพงบลูทูธ ขาว Bluetooth Speaker ลำโพงพกพา ลำโพงคอมพิวเตอร์ ลำโพงบลูทูธเบสหนัก ลำโพง marshall', '', '', '', 3899.00, '/upload/407e0247369f46a0/ef5914fd1bbb602f.jpg', 1647165641, 0, 4);
INSERT INTO `xy_goods_list` VALUES (986, 'cutepress คิวเพรส แป้งอิเวอร์รี่ รีทัช x 1 ชิ้น', '', 'cutepress คิวเพรส แป้งอิเวอร์รี่ รีทัช x 1 ชิ้น', '', '', '', 89.00, '/upload/e383914ff2afa980/990bd9fd7cee8861.jpg', 1647165654, 0, 1);
INSERT INTO `xy_goods_list` VALUES (987, 'หูฟังบูลทูธMarshall Major III Bluetooth Earphone Wireless Headphones Earbuds หูฟังบลูทูธ หูฟังไร้สาย หูฟังครอบ', '', 'หูฟังบูลทูธMarshall Major III Bluetooth Earphone Wireless Headphones Earbuds หูฟังบลูทูธ หูฟังไร้สาย หูฟังครอบ', '', '', '', 2688.00, '/upload/296879e06085e81b/0ce2a6d7df863d3e.jpg', 1647165759, 0, 4);
INSERT INTO `xy_goods_list` VALUES (988, 'ถุงคลุมรองเท้ากันน้ำ รองเท้ากันน้ำ รองเท้ากันฝน มีหลายขนาดให้เลือก', '', 'ถุงคลุมรองเท้ากันน้ำ รองเท้ากันน้ำ รองเท้ากันฝน มีหลายขนาดให้เลือก', '', '', '', 85.00, '/upload/ff0e1d86676aea2f/a209cf044040eca9.png', 1647165970, 0, 1);
INSERT INTO `xy_goods_list` VALUES (989, 'ตู้ครัว ตู้กระเบื้อง ตู้กับข้าว ตู้เก็บจาน 4ฟุต', '', 'ตู้ครัว ตู้กระเบื้อง ตู้กับข้าว ตู้เก็บจาน 4ฟุต', '', '', '', 2750.00, '/upload/889654a6d09a568c/9ed7e16f66f51642.jpg', 1647166020, 0, 4);
INSERT INTO `xy_goods_list` VALUES (990, 'nanarak เบาะรองนั่ง หมอนรองนั่ง นุ่มสบาย ดีไซน์น่ารัก มีทั้งแบบกลมและเหลี่ยม รุ่น 3115/3116', '', 'nanarak เบาะรองนั่ง หมอนรองนั่ง นุ่มสบาย ดีไซน์น่ารัก มีทั้งแบบกลมและเหลี่ยม รุ่น 3115/3116', '', '', '', 36.00, '/upload/d8410cba9d68ed27/a2cc794706fefefa.png', 1647166103, 0, 1);
INSERT INTO `xy_goods_list` VALUES (991, 'ตู้กับข้าวจิ๋ว ตู้กับข้าว สีขาว มีชั้นคว่ำจาน ลึก 43 ซม. ยาว 60 ซม. สูง 77 ซม. ด่วน! มีของแถม', '', 'ตู้กับข้าวจิ๋ว ตู้กับข้าว สีขาว มีชั้นคว่ำจาน ลึก 43 ซม. ยาว 60 ซม. สูง 77 ซม. ด่วน! มีของแถม', '', '', '', 1029.00, '/upload/bc6642e777970a0b/919f88f33c0e7dc3.jpg', 1647166123, 0, 4);
INSERT INTO `xy_goods_list` VALUES (992, 'ส่งทั่วไทย‼️?ตู้ ตู้เสื้อผ้า ตู้เสื้อผ้าสีขาว ตู้เสื้อผ้าลายหินอ่อน 80 cm 90 cm', '', 'ส่งทั่วไทย‼️?ตู้ ตู้เสื้อผ้า ตู้เสื้อผ้าสีขาว ตู้เสื้อผ้าลายหินอ่อน 80 cm 90 cm', '', '', '', 1890.00, '/upload/3c717d3c21f8a4a8/081a1d0ea102f984.jpg', 1647166251, 0, 4);
INSERT INTO `xy_goods_list` VALUES (993, 'มีดกรรคิ้ว ผู้หญิง มาใหม่ใช้ง่าย พับได้ ปลอดภัย ใบมีดเปลี่ยนได้ ชุดเครื่องมือความงาม', '', 'มีดกรรคิ้ว ผู้หญิง มาใหม่ใช้ง่าย พับได้ ปลอดภัย ใบมีดเปลี่ยนได้ ชุดเครื่องมือความงาม', '', '', '', 79.00, '/upload/6a1c279461b74f6a/e2599112c00ad2a2.png', 1647166284, 0, 1);
INSERT INTO `xy_goods_list` VALUES (994, 'Greenforst โต๊ะคอมพิวเตอร์ โต๊ะทำงาน โต๊ะรูปตัว L พร้อมชั้นวางของ ดีไซน์ใหม่ทรงทันสมัย รุ่น A-2234', '', 'Greenforst โต๊ะคอมพิวเตอร์ โต๊ะทำงาน โต๊ะรูปตัว L พร้อมชั้นวางของ ดีไซน์ใหม่ทรงทันสมัย รุ่น A-2234', '', '', '', 1432.00, '/upload/530e41f11a5dbbf3/30d3ccf496fc36bb.jpg', 1647166411, 0, 4);
INSERT INTO `xy_goods_list` VALUES (995, 'ล้อออกกำลังกาย（008） ล้อลูกกลิ้งเล่นกล้ามท้อง ล้อบริหารหน้าท้อง，14 นิ้ว，wheel，work out，ล้อหน้าท้อง, ออกกำลังกาย，roller,', '', 'ล้อออกกำลังกาย（008） ล้อลูกกลิ้งเล่นกล้ามท้อง ล้อบริหารหน้าท้อง，14 นิ้ว，wheel，work out，ล้อหน้าท้อง, ออกกำลังกาย，roller,', '', '', '', 58.00, '/upload/f3c878d94bef11b1/870fd28313812bae.png', 1647166470, 0, 1);
INSERT INTO `xy_goods_list` VALUES (996, 'Realme Smartphone C11 (2021) โทรศัพท์มือถือ by Banana IT', '', 'Realme Smartphone C11 (2021) โทรศัพท์มือถือ by Banana IT', '', '', '', 3199.00, '/upload/a98ea2915a96e11f/db7ca8a1b0d11e52.jpg', 1647166579, 0, 4);
INSERT INTO `xy_goods_list` VALUES (997, 'OPPO A15 (3+32/2+32/4+64/4+128) โทรศัพท์ มือถือ AI 3 กล้องหลัง จอใหญ่ 6.52 นิ้ว', '', 'OPPO A15 (3+32/2+32/4+64/4+128) โทรศัพท์ มือถือ AI 3 กล้องหลัง จอใหญ่ 6.52 นิ้ว', '', '', '', 4187.00, '/upload/9f8296a21e60ed1c/a7dddec686835764.jpg', 1647166665, 0, 4);
INSERT INTO `xy_goods_list` VALUES (998, 'Casio นาฬิกาข้อมือกันน้ำและกันกระแทกg-shock GA-110HR-1Aนาฬิกาผู้ชาย ของแท้100%จัดส่งพร้อมกล่องคู่มือใบประกันศูนย์CMG 1ปี', '', 'Casio นาฬิกาข้อมือกันน้ำและกันกระแทกg-shock GA-110HR-1Aนาฬิกาผู้ชาย ของแท้100%จัดส่งพร้อมกล่องคู่มือใบประกันศูนย์CMG 1ปี', '', '', '', 1050.00, '/upload/8d8dad1b9c338e12/754300d90fe6b6de.jpg', 1647166879, 0, 4);
INSERT INTO `xy_goods_list` VALUES (999, 'D.G เสื้อสายเดี่ยวครึ่งตัว เสื้อซับใน รุ่น B-002 สินค้าพร้อมจัดส่งจากไทย 4.6', '', 'D.G เสื้อสายเดี่ยวครึ่งตัว เสื้อซับใน รุ่น B-002 สินค้าพร้อมจัดส่งจากไทย 4.6', '', '', '', 36.00, '/upload/c0efbf2306a671a6/c9dcea6ae5f7b1e3.png', 1647166887, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1000, 'Casio นาฬิกาข้อมือกันน้ำและกันกระแทกg-shock GA-110HR-1Aนาฬิกาผู้ชาย ของแท้100%จัดส่งพร้อมกล่องคู่มือใบประกันศูนย์CMG 1ปี', '', 'Casio นาฬิกาข้อมือกันน้ำและกันกระแทกg-shock GA-110HR-1Aนาฬิกาผู้ชาย ของแท้100%จัดส่งพร้อมกล่องคู่มือใบประกันศูนย์CMG 1ปี', '', '', '', 2050.00, '/upload/6a35d331b4c462d3/7aa08a4fd0c18b04.jpg', 1647166906, 0, 4);
INSERT INTO `xy_goods_list` VALUES (1001, 'Casio นาฬิกาข้อมือกันน้ำและกันกระแทกg-shock GA-110HR-1Aนาฬิกาผู้ชาย ของแท้100%จัดส่งพร้อมกล่องคู่มือใบประกันศูนย์CMG 1ปี', '', 'Casio นาฬิกาข้อมือกันน้ำและกันกระแทกg-shock GA-110HR-1Aนาฬิกาผู้ชาย ของแท้100%จัดส่งพร้อมกล่องคู่มือใบประกันศูนย์CMG 1ปี', '', '', '', 2990.00, '/upload/eb3e49da25824d75/e6e0dd78a8505bb4.jpg', 1647166953, 0, 4);
INSERT INTO `xy_goods_list` VALUES (1002, 'MABUY เครื่องดูดฝุ่นอุตสาหกรรม พลังงานสูง มีระบบเป่าแห้ง HM141 [อ่านก่อนสั่งซื้อ]', '', 'MABUY เครื่องดูดฝุ่นอุตสาหกรรม พลังงานสูง มีระบบเป่าแห้ง HM141 [อ่านก่อนสั่งซื้อ]', '', '', '', 1250.00, '/upload/802babb071d099bc/807c03aec1e0feb1.jpg', 1647167102, 0, 4);
INSERT INTO `xy_goods_list` VALUES (1003, 'SHARP เครื่องดูดฝุ่น​ 3.3 รุ่น EC-LS20 (สีแดง, ม่วง) มีไฟเตือนเมื่อฝุ่นเต็ม​รับประกัน1ปี(อย่าลืมกดส่วนลด23บ.)', '', 'SHARP เครื่องดูดฝุ่น​ 3.3 รุ่น EC-LS20 (สีแดง, ม่วง) มีไฟเตือนเมื่อฝุ่นเต็ม​รับประกัน1ปี(อย่าลืมกดส่วนลด23บ.)', '', '', '', 1888.00, '/upload/932da501b8ff6526/a0878aeb7b5ebcae.jpg', 1647167187, 0, 4);
INSERT INTO `xy_goods_list` VALUES (1004, 'กล่องลิ้นชักเก็บเครื่องสําอาง ลิ้นชัก กล่องลิ้นชัก ชั่นวางของ ชั้นใส่ของ No.YSL023', '', 'กล่องลิ้นชักเก็บเครื่องสําอาง ลิ้นชัก กล่องลิ้นชัก ชั่นวางของ ชั้นใส่ของ No.YSL023', '', '', '', 36.00, '/upload/978d45e461d24479/193bef51c8bb38e0.png', 1647167239, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1005, 'Pinkflash Ohmywink มาสคาร่า กันน้ำ ติดทนนาน', '', 'Pinkflash Ohmywink มาสคาร่า กันน้ำ ติดทนนาน', '', '', '', 89.00, '/upload/d636470da4dad459/adc99eaf41113a38.png', 1647167503, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1006, 'Lotus ที่นอนยางพารา ลดอาการปวดหลัง Latex Made In Belgium ส่งฟรี', '', 'Lotus ที่นอนยางพารา ลดอาการปวดหลัง Latex Made In Belgium ส่งฟรี', '', '', '', 5000.00, '/upload/00d33ba72116e585/ad72d2a1392e69f1.jpg', 1647167733, 0, 4);
INSERT INTO `xy_goods_list` VALUES (1007, 'PAWAWA ถุงขยะ (100ใบ) ถุงขยะหูหิ้ว ขนาด18x20นิ้ว ถุงขยะเหนียว ของใช้ในครัว ของใช้ในบ้าน กลิ่นหอมอ่อนๆ', '', 'PAWAWA ถุงขยะ (100ใบ) ถุงขยะหูหิ้ว ขนาด18x20นิ้ว ถุงขยะเหนียว ของใช้ในครัว ของใช้ในบ้าน กลิ่นหอมอ่อนๆ', '', '', '', 45.00, '/upload/fef04d6456a9ab56/afc1ac645279a9bd.png', 1647167734, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1008, 'กางเกงขาสั้นลําลองสําหรับสตรีขากว้างเอวสูงขากว้างทรงหลวมขนาดพลัสเหมาะกับการเล่นฟิตเนส', '', 'กางเกงขาสั้นลําลองสําหรับสตรีขากว้างเอวสูงขากว้างทรงหลวมขนาดพลัสเหมาะกับการเล่นฟิตเนส', '', '', '', 49.00, '/upload/8342396c34a0df03/e57a885a89b2c3ca.png', 1647167849, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1009, 'TP-LINK TAPO C200 C210 C310 Security Wi-Fi Camera กล้องอัจฉริยะ Warranty 2 year', '', 'TP-LINK TAPO C200 C210 C310 Security Wi-Fi Camera กล้องอัจฉริยะ Warranty 2 year', '', '', '', 2310.00, '/upload/7631a2ed38d0c562/0658d510f56cf2c1.jpg', 1647167880, 0, 4);
INSERT INTO `xy_goods_list` VALUES (1010, 'กล้องฟรุ้งฟริ้งมือ2 รุ่น ZR5000 สภาพสวย ราคาถูก', '', 'กล้องฟรุ้งฟริ้งมือ2 รุ่น ZR5000 สภาพสวย ราคาถูก', '', '', '', 3790.00, '/upload/3cae21dedad90099/eca82ef4f310fca2.jpg', 1647168089, 0, 4);
INSERT INTO `xy_goods_list` VALUES (1011, 'กระเป๋าผ้ามินิมอล 4 ลายสกรีน', '', 'กระเป๋าผ้ามินิมอล 4 ลายสกรีน', '', '', '', 48.00, '/upload/869ac56478da904a/57b8678c333711e2.png', 1647168089, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1012, 'คูปองลดอีก50-100฿???MAKITA บล็อกไร้สาย 209V แปลงเป็นสว่านได้(AAA) ✅✅✅รับประกัน3เดือน', '', 'คูปองลดอีก50-100฿???MAKITA บล็อกไร้สาย 209V แปลงเป็นสว่านได้(AAA) ✅✅✅รับประกัน3เดือน', '', '', '', 1850.00, '/upload/a1b230d980694d9f/e692ceb91ee2e00a.jpg', 1647168286, 0, 4);
INSERT INTO `xy_goods_list` VALUES (1013, 'พรมเช็ดเท้า ผ้าเช็ดเท้า ขนาด60X40 cm. ทอหนาแน่น สีไม่ตก มียางกันลื่น พรม เมมโมรี่โฟม ดูดซับได้ดี กันลื่น พรมปูพื้น', '', 'พรมเช็ดเท้า ผ้าเช็ดเท้า ขนาด60X40 cm. ทอหนาแน่น สีไม่ตก มียางกันลื่น พรม เมมโมรี่โฟม ดูดซับได้ดี กันลื่น พรมปูพื้น', '', '', '', 35.00, '/upload/a70466085d82821a/6270bbed8157a0c1.png', 1647168301, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1014, 'ขาตั้งโทรศัพท์ ที่วางโทรศัพท์ ขาจับโทรศัพท์ ปรับสูงต่ำได้ ที่จับโทรศัพท์ ขาตั้งมือถือ ที่ตั', '', 'ขาตั้งโทรศัพท์ ที่วางโทรศัพท์ ขาจับโทรศัพท์ ปรับสูงต่ำได้ ที่จับโทรศัพท์ ขาตั้งมือถือ ที่ตั', '', '', '', 49.00, '/upload/c8580088c5071358/b254da7cc95efd97.png', 1647168406, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1015, 'คูปองลดอีก50-100฿???MAKITA เลื่อยโซ่ 10 นิ้ว แบบไร้สาย 199V(AAA) สินค้าขายดี✅✅✅รับประกัน3เดือน', '', 'คูปองลดอีก50-100฿???MAKITA เลื่อยโซ่ 10 นิ้ว แบบไร้สาย 199V(AAA) สินค้าขายดี✅✅✅รับประกัน3เดือน', '', '', '', 2120.00, '/upload/e644625a5ec95142/e5408d916ab47a04.jpg', 1647168446, 0, 4);
INSERT INTO `xy_goods_list` VALUES (1016, 'Maktec สว่านไฟฟ้า สว่านกระแทก รุ่น MT814 710W ขนาดเจาะ 13mm + Maktec สว่านไฟฟ้า สว่าน 2 หุน รุ่น MT653 230W ขนาดเจาะ 6.5', '', 'Maktec สว่านไฟฟ้า สว่านกระแทก รุ่น MT814 710W ขนาดเจาะ 13mm + Maktec สว่านไฟฟ้า สว่าน 2 หุน รุ่น MT653 230W ขนาดเจาะ 6.5', '', '', '', 1269.00, '/upload/2f8813c38e62c0dc/4168b3edba198ed1.jpg', 1647168588, 0, 4);
INSERT INTO `xy_goods_list` VALUES (1017, 'Fusion Int แก้ว Good morning ทรงอ้วน แก้วน้ำ แก้วนม แก้วเหล้า แก้วสวยๆ แก้วกาแฟ แก้วใส ของใช้ในบ้าน ของใช้ในครัว', '', 'Fusion Int แก้ว Good morning ทรงอ้วน แก้วน้ำ แก้วนม แก้วเหล้า แก้วสวยๆ แก้วกาแฟ แก้วใส ของใช้ในบ้าน ของใช้ในครัว', '', '', '', 74.00, '/upload/556e85bd2ee37898/2171e7d92f15c99c.jpg', 1647168743, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1018, 'คูปองลดอีก50-100฿???BOSCHs สว่านโรตารี่ 3 ระบบ รุ่น 2-26 (งานไต้หวันAAA)✅✅✅รับประกัน3เดือน', '', 'คูปองลดอีก50-100฿???BOSCHs สว่านโรตารี่ 3 ระบบ รุ่น 2-26 (งานไต้หวันAAA)✅✅✅รับประกัน3เดือน', '', '', '', 1350.00, '/upload/765a5f9fa04b9914/1ac4525e17b4b483.jpg', 1647168883, 0, 4);
INSERT INTO `xy_goods_list` VALUES (1019, 'โคมไฟ LED อัตโนมัติ แบบเสียบปลั๊ก', '', 'โคมไฟ LED อัตโนมัติ แบบเสียบปลั๊ก', '', '', '', 31.00, '/upload/5cf64400fabd8237/cdeab853e07c76f2.png', 1647169021, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1020, 'Card ? ภาพวินเทจ แฟชั่น ภาพแต่งห้องสไตล์มินิมอล กระดาษแต่งห้อง อุปกรณ์ประกอบฉาก พร๊อพถ่ายรูป ของแต่งบ้าน', '', 'Card ? ภาพวินเทจ แฟชั่น ภาพแต่งห้องสไตล์มินิมอล กระดาษแต่งห้อง อุปกรณ์ประกอบฉาก พร๊อพถ่ายรูป ของแต่งบ้าน', '', '', '', 45.00, '/upload/2f7adfc1175dc321/0fd6d90dd7c825ce.jpg', 1647169184, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1021, 'ไฟโซล่าเซล โซลาร์เซลล์ 150W~600W Solar Light ไฟสปอตไลต์แผงโซลาร์เซลล์กันน้ำ ไฟสวน ไฟกลางแจ้ง รีโมทค', '', 'ไฟโซล่าเซล โซลาร์เซลล์ 150W~600W Solar Light ไฟสปอตไลต์แผงโซลาร์เซลล์กันน้ำ ไฟสวน ไฟกลางแจ้ง รีโมทค', '', '', '', 1492.00, '/upload/5d724a4804a4dabd/48df0f96a9166dee.jpg', 1647169204, 0, 3);
INSERT INTO `xy_goods_list` VALUES (1022, 'PINK PVSSY ดอกไม้ ดอกกุหลาบ ดอกไม้สีทอง ของขวัญ ของขวัญวาเลนไทน์ วาเลนไทน์ ของแต่งห้อง ของฝาก ของขวัญ แต่งบ้าน แต่งห้อง', '', 'PINK PVSSY ดอกไม้ ดอกกุหลาบ ดอกไม้สีทอง ของขวัญ ของขวัญวาเลนไทน์ วาเลนไทน์ ของแต่งห้อง ของฝาก ของขวัญ แต่งบ้าน แต่งห้อง', '', '', '', 100.00, '/upload/8525e4080cebb808/2d072dfccd0f43e0.jpg', 1647169408, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1023, 'กระเป๋า กระเป๋าเป้ กระเป๋าผู้หญิง กระเป๋าสะพาย กระเป๋าสะพายหลัง เด็ก แฟชั่น ใส่ของ', '', 'กระเป๋า กระเป๋าเป้ กระเป๋าผู้หญิง กระเป๋าสะพาย กระเป๋าสะพายหลัง เด็ก แฟชั่น ใส่ของ', '', '', '', 100.00, '/upload/b2ff1a5591db9596/f90de135eb637c6a.jpg', 1647171133, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1024, 'ร่ม ร่มกันฝน ร่มกันแดด ร่มยาว กันแดด กันฝน ลายทาง ร่มตอนเดี่ยว กันฝน กันแดด ร่มกันฝนกันแดด ร่มลายทาง', '', 'ร่ม ร่มกันฝน ร่มกันแดด ร่มยาว กันแดด กันฝน ลายทาง ร่มตอนเดี่ยว กันฝน กันแดด ร่มกันฝนกันแดด ร่มลายทาง', '', '', '', 100.00, '/upload/50f2b3908ec44708/4c2b09d3ba58dc7c.jpg', 1647171228, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1025, 'ตกแต่ง เครื่องประดับ ธรรมชาติซิทรินเงินต้นไม้ตู้ไวน์ตกแต่งโชคดีตกแต่งบ้านร้านเปิดของขวัญตกแต่งต้นไม้ที่อุดมไปด้วย', '', 'ตกแต่ง เครื่องประดับ ธรรมชาติซิทรินเงินต้นไม้ตู้ไวน์ตกแต่งโชคดีตกแต่งบ้านร้านเปิดของขวัญตกแต่งต้นไม้ที่อุดมไปด้วย', '', '', '', 1852.00, '/upload/b92d9753fdd39860/fa0828ad55d6b774.jpg', 1647171305, 0, 4);
INSERT INTO `xy_goods_list` VALUES (1026, 'กระเป๋าดินสอ กระเป๋าเครื่องสำอางค์ กระเป๋าอเนคประสงค์ หางเงือก เครื่องเขียน กระเป๋า กล่องดินสอ กระเป๋าใส', '', 'กระเป๋าดินสอ กระเป๋าเครื่องสำอางค์ กระเป๋าอเนคประสงค์ หางเงือก เครื่องเขียน กระเป๋า กล่องดินสอ กระเป๋าใส', '', '', '', 100.00, '/upload/c0b74ed271241a6a/55e7bc357b02c1fb.jpg', 1647171308, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1027, 'หินเจียร 4 นิ้ว *สวิทบีบ* ของแท้ ตัวแทนจำหน่าย มากีต้า ประเทศไทย ขายเอง มาแรง ยอดนิยม สุดปัง', '', 'หินเจียร 4 นิ้ว *สวิทบีบ* ของแท้ ตัวแทนจำหน่าย มากีต้า ประเทศไทย ขายเอง มาแรง ยอดนิยม สุดปัง', '', '', '', 2150.00, '/upload/ec08fc4f21d0d109/c93807e6219c29e9.jpg', 1647171430, 0, 4);
INSERT INTO `xy_goods_list` VALUES (1028, 'PVSSY พัดลม หน้าร้อน ของใช้ พัดลมพกพา พัดลมไฟฟ้า ของขวัญ', '', 'PVSSY พัดลม หน้าร้อน ของใช้ พัดลมพกพา พัดลมไฟฟ้า ของขวัญ', '', '', '', 59.00, '/upload/9c014d6121ea81de/09ee352810337684.jpg', 1647171501, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1029, 'บล็อกลม & สว่าน บล็อกไฟฟ้า 128V 2in1 ไร้สาย OSUKA สินค้าเเท้รับประกันจากผู้เเทนจำหน่าย', '', 'บล็อกลม & สว่าน บล็อกไฟฟ้า 128V 2in1 ไร้สาย OSUKA สินค้าเเท้รับประกันจากผู้เเทนจำหน่าย', '', '', '', 1699.00, '/upload/44790f5d9c2150bb/e6de279bb71e38c9.jpg', 1647171533, 0, 4);
INSERT INTO `xy_goods_list` VALUES (1030, 'MASAKI ปั๊มลม ถังลม 30 ลิตร แบรนด์ดัง + อุปกรณ์ 5 อย่าง กำลัง 950W ปั๊มลม ปั๊มลมโรตารี่ ปั๊มลมออยฟรี', '', 'MASAKI ปั๊มลม ถังลม 30 ลิตร แบรนด์ดัง + อุปกรณ์ 5 อย่าง กำลัง 950W ปั๊มลม ปั๊มลมโรตารี่ ปั๊มลมออยฟรี', '', '', '', 2390.00, '/upload/4630cb35b56adcf7/bc5a313e36d63ee4.jpg', 1647171677, 0, 4);
INSERT INTO `xy_goods_list` VALUES (1031, 'กระเป๋าพับเก็บได้ กระเป๋าผ้า ม้วนเก็บ กระเป๋าพกพา ผ้าร่ม กระเป๋าสะพายข้าง ถุงผ้า พับเก็บได้', '', 'กระเป๋าพับเก็บได้ กระเป๋าผ้า ม้วนเก็บ กระเป๋าพกพา ผ้าร่ม กระเป๋าสะพายข้าง ถุงผ้า พับเก็บได้', '', '', '', 49.00, '/upload/9b1034b0435f3837/92ab31a054112bd4.jpg', 1647171748, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1032, '[PUMPKIN] พัมคิน - ปั้มลมโรตารี่ MEGATON 3.0HP 50 ลิตร รุ่น PTT-3HP50 แถม สายลมแบบตรง เกจ์วัดลม-เติมลม', '', '[PUMPKIN] พัมคิน - ปั้มลมโรตารี่ MEGATON 3.0HP 50 ลิตร รุ่น PTT-3HP50 แถม สายลมแบบตรง เกจ์วัดลม-เติมลม', '', '', '', 3640.00, '/upload/9cd5a3720c31a18d/6a8ca60c97b39bc8.jpg', 1647171756, 0, 4);
INSERT INTO `xy_goods_list` VALUES (1033, 'ปั้มลมโรตารี่ POLO 3HP ถังลมขนาด 70 ลิตร ถังใหญ่ เครื่องแรง SGBM9037', '', 'ปั้มลมโรตารี่ POLO 3HP ถังลมขนาด 70 ลิตร ถังใหญ่ เครื่องแรง SGBM9037', '', '', '', 4790.00, '/upload/e9f3122687d8f061/f42cbb36e72398ef.jpg', 1647172005, 0, 4);
INSERT INTO `xy_goods_list` VALUES (1038, 'Koncept furniture โซฟาเบดผ้า Jelly#4 สีขาว (95x163x88 ซม)', '', 'Koncept furniture โซฟาเบดผ้า Jelly#4 สีขาว (95x163x88 ซม)', '', '', '', 11840.00, '/upload/95cbe9db9ad1d03c/3595268416b2e14a.jpg', 1647172579, 0, 6);
INSERT INTO `xy_goods_list` VALUES (1035, 'แม่แรง พร้อมขาตั้ง ยี่ห้อ Smart แม่แรงยกรถ แม่แรงตะเข้ แม่แรงตะเข้2.5Ton + ขาสไลด์3Ton', '', 'แม่แรง พร้อมขาตั้ง ยี่ห้อ Smart แม่แรงยกรถ แม่แรงตะเข้ แม่แรงตะเข้2.5Ton + ขาสไลด์3Ton', '', '', '', 1855.00, '/upload/a041bf408bbab0ba/96e62dcc2d183cec.jpg', 1647172161, 0, 4);
INSERT INTO `xy_goods_list` VALUES (1037, 'ยางรถสกู๊ตเตอร์กึ่งร้อนละลายของ Michelin CITY จับยางไฟฟ้า Mavericks ที่ทนทานต่อการสึกหรอและไม่ลื่น', '', 'ยางรถสกู๊ตเตอร์กึ่งร้อนละลายของ Michelin CITY จับยางไฟฟ้า Mavericks ที่ทนทานต่อการสึกหรอและไม่ลื่น', '', '', '', 2851.00, '/upload/136d19b7df684f45/2e7cc27164d5f951.jpg', 1647172370, 0, 4);
INSERT INTO `xy_goods_list` VALUES (1039, 'Goodride รุ่น SA37 ยางรถยนต์ ยางสปอร์ต ยางรถแต่ง ปี21 ราคาต่อ 1 เส้น สั่งครบ 4 เส้นแถมฟรีจุฟลม 1 ชุด', '', 'Goodride รุ่น SA37 ยางรถยนต์ ยางสปอร์ต ยางรถแต่ง ปี21 ราคาต่อ 1 เส้น สั่งครบ 4 เส้นแถมฟรีจุฟลม 1 ชุด', '', '', '', 2259.00, '/upload/d5d2b768ce07ba87/443e692d778ea1ad.jpg', 1647172545, 0, 4);
INSERT INTO `xy_goods_list` VALUES (1040, 'โซฟาหนังเข้ามุมขวา Trumble สีเทา (240x179x82 ซม.)', '', 'โซฟาหนังเข้ามุมขวา Trumble สีเทา (240x179x82 ซม.)', '', '', '', 12900.00, '/upload/1fc14716236b9045/6e3bcbf0cbb0293a.jpg', 1647172631, 0, 6);
INSERT INTO `xy_goods_list` VALUES (1041, 'ชุดห้องนอน ขนาด 5 ฟุต รุ่น Backus สีโอ๊ค', '', 'ชุดห้องนอน ขนาด 5 ฟุต รุ่น Backus สีโอ๊ค', '', '', '', 13290.00, '/upload/32414e343ad0f052/be656a7989fec8ad.jpg', 1647173081, 0, 6);
INSERT INTO `xy_goods_list` VALUES (1042, 'เคลียร์สต๊อก ลดราคา แอร์เคลื่อนที่ ยี่ห้อ Natural 6,000 BTU รับประกันศูนย์ NAP-5061 จัดส่งด่วน', '', 'เคลียร์สต๊อก ลดราคา แอร์เคลื่อนที่ ยี่ห้อ Natural 6,000 BTU รับประกันศูนย์ NAP-5061 จัดส่งด่วน', '', '', '', 4600.00, '/upload/05dddb7601b2a8a1/c70d435df2e765bf.jpg', 1647173212, 0, 4);
INSERT INTO `xy_goods_list` VALUES (1043, 'แอร์เคลื่อนที่ 6,000 ประหยัดไฟ Natural 4061 กินไฟแค่ หน่วยละ 1-2 บาท', '', 'แอร์เคลื่อนที่ 6,000 ประหยัดไฟ Natural 4061 กินไฟแค่ หน่วยละ 1-2 บาท', '', '', '', 4990.00, '/upload/f77e93f5f4b4995b/652c389f9b44b8b8.jpg', 1647173305, 0, 4);
INSERT INTO `xy_goods_list` VALUES (1044, 'Mascot(มาสคอต)รถสามล้อไฟฟ้า รุ่นใหม่ คันใหญ่ ขับขี่ง่ายสบาย รถไฟฟ้าสามล้อ', '', 'Mascot(มาสคอต)รถสามล้อไฟฟ้า รุ่นใหม่ คันใหญ่ ขับขี่ง่ายสบาย รถไฟฟ้าสามล้อ', '', '', '', 16888.00, '/upload/52cab6c08ecbf7be/198bcc8341a5d7b4.jpg', 1647173349, 0, 6);
INSERT INTO `xy_goods_list` VALUES (1045, 'แอร์เคลื่อนที่ 9000 BTU รุ่น SPAZIES ระบบประหยัดไฟ มีรีโมท ล้อสะดวกต่อการเคลื่อนย้าย รับประกันสินค้า 1ปี', '', 'แอร์เคลื่อนที่ 9000 BTU รุ่น SPAZIES ระบบประหยัดไฟ มีรีโมท ล้อสะดวกต่อการเคลื่อนย้าย รับประกันสินค้า 1ปี', '', '', '', 4999.00, '/upload/25c7294ed14ba020/876b76653c670dde.jpg', 1647173451, 0, 4);
INSERT INTO `xy_goods_list` VALUES (1046, 'จักรยานเสือภูเขาไฟฟ้าพับได้ 36V แบตเตอรี่ลิเธียม จักรยานไฟฟ้าช่วย ปรับความเร็วได้และไฟหน้า LED', '', 'จักรยานเสือภูเขาไฟฟ้าพับได้ 36V แบตเตอรี่ลิเธียม จักรยานไฟฟ้าช่วย ปรับความเร็วได้และไฟหน้า LED', '', '', '', 11990.00, '/upload/8d9ebc0b57b4e27e/95a5c0a8d8f2bc60.jpg', 1647173559, 0, 6);
INSERT INTO `xy_goods_list` VALUES (1047, 'พัดลม+โคมไฟ ทูอินวันพร้อมรีโมทไร้สาย ใบพัดขนาด 48 เซ็นติเมตร (ประกัน 1 ปี)', '', 'พัดลม+โคมไฟ ทูอินวันพร้อมรีโมทไร้สาย ใบพัดขนาด 48 เซ็นติเมตร (ประกัน 1 ปี)', '', '', '', 1980.00, '/upload/e5867be45dab6d95/99e45efdcb02d643.jpg', 1647173664, 0, 4);
INSERT INTO `xy_goods_list` VALUES (1048, 'SEALUP Q9 36v 8.8ah 350W สกุตเตอร์ไฟฟ้าสกูตเตอร์ไฟฟ้าผู้ใหญ่พับได้มินิสกู๊ดเตอร์ไฟฟ้า กันน้ำ', '', 'SEALUP Q9 36v 8.8ah 350W สกุตเตอร์ไฟฟ้าสกูตเตอร์ไฟฟ้าผู้ใหญ่พับได้มินิสกู๊ดเตอร์ไฟฟ้า กันน้ำ', '', '', '', 10896.00, '/upload/abcbc4155bf17491/88f3bb4121f823b5.jpg', 1647173683, 0, 6);
INSERT INTO `xy_goods_list` VALUES (1049, 'เครื่องบินบังคับxk x450 มอเตอร์บัสเลส 2.4gh #เครื่องบินบังคับวิทยุ', '', 'เครื่องบินบังคับxk x450 มอเตอร์บัสเลส 2.4gh #เครื่องบินบังคับวิทยุ', '', '', '', 3300.00, '/upload/c0a9f44a2caae2b1/f6e3f2bc39c185f2.jpg', 1647173811, 0, 4);
INSERT INTO `xy_goods_list` VALUES (1050, 'F10 Pro MaxโดรนGPS 4K 5G WiFi วิดีโอถ่ายทอดสด FPV Quadrotor เที่ยวบิน25นาที RC ระยะทาง2000M Drone HD F10 F11', '', 'F10 Pro MaxโดรนGPS 4K 5G WiFi วิดีโอถ่ายทอดสด FPV Quadrotor เที่ยวบิน25นาที RC ระยะทาง2000M Drone HD F10 F11', '', '', '', 1699.00, '/upload/8998a0b9592c0991/c271198a15086235.jpg', 1647173952, 0, 4);
INSERT INTO `xy_goods_list` VALUES (1051, 'DJI TELLO โดรนถ่ายภาพขนาดเล็ก กล้อง 5 MP / วิดีโอ HD 720P ควบคุมง่าย บินสนุก โหมดถ่ายภาพวิดีโอสุดเจ๋ง', '', 'DJI TELLO โดรนถ่ายภาพขนาดเล็ก กล้อง 5 MP / วิดีโอ HD 720P ควบคุมง่าย บินสนุก โหมดถ่ายภาพวิดีโอสุดเจ๋ง', '', '', '', 3999.00, '/upload/4ae4ddb31adace8c/7a5bc5debb92f27c.jpg', 1647174095, 0, 4);
INSERT INTO `xy_goods_list` VALUES (1052, 'รายละเอียดสินค้า หมวกกันน็อค เต็มใบ REAL THUNDER นวมถอดซ๊กได้ “Iridium shield ปรับสีเองอัตโนมัติ', '', 'รายละเอียดสินค้า หมวกกันน็อค เต็มใบ REAL THUNDER นวมถอดซ๊กได้ “Iridium shield ปรับสีเองอัตโนมัติ', '', '', '', 1899.00, '/upload/aaa426094e39592e/f66d72a62a32ba40.jpg', 1647174226, 0, 4);
INSERT INTO `xy_goods_list` VALUES (1053, 'หมวกกันน็อคReal Falcon R Sport', '', 'หมวกกันน็อคReal Falcon R Sport', '', '', '', 2400.00, '/upload/fe5ee3855d518eff/10c7ba2fda87eead.jpg', 1647174319, 0, 4);
INSERT INTO `xy_goods_list` VALUES (1054, 'กระสอบทรายตั้งพื้น กระสอบทราย กระสอบทรายออกกำลังกาย เป้าชกมวยเกรดพรีเมี่ยม แถมนวม', '', 'กระสอบทรายตั้งพื้น กระสอบทราย กระสอบทรายออกกำลังกาย เป้าชกมวยเกรดพรีเมี่ยม แถมนวม', '', '', '', 4390.00, '/upload/ea27ad397d2bf0af/52cd1109c7288060.jpg', 1647174503, 0, 4);
INSERT INTO `xy_goods_list` VALUES (1055, 'รุ่นที่4หน้าจอสี SEALUP Q8รุ่นซิตี้สกู๊ตเตอร์ไฟฟ้าสกูตเตอร์ไฟฟ้าผู้ใหญ่พับได้สกู๊ดเตอร์ไฟฟ้าา48v 500w', '', 'รุ่นที่4หน้าจอสี SEALUP Q8รุ่นซิตี้สกู๊ตเตอร์ไฟฟ้าสกูตเตอร์ไฟฟ้าผู้ใหญ่พับได้สกู๊ดเตอร์ไฟฟ้าา48v 500w', '', '', '', 26457.00, '/upload/9fa0c11479d9df50/e7fa93b46e151f51.jpg', 1647174624, 0, 6);
INSERT INTO `xy_goods_list` VALUES (1056, 'HelloMom รถแบตเตอรี่เด็ก รถแบตแทรคเตอร์ รถแบตเด็ก แทรคเตอร์มีพวงท้าย รถดั้ม รถไฟฟ้าเด็ก รถเด็กเล่น 2 มอเตอร์ รถเด็กนั่ง', '', 'HelloMom รถแบตเตอรี่เด็ก รถแบตแทรคเตอร์ รถแบตเด็ก แทรคเตอร์มีพวงท้าย รถดั้ม รถไฟฟ้าเด็ก รถเด็กเล่น 2 มอเตอร์ รถเด็กนั่ง', '', '', '', 2479.00, '/upload/b07d70c1a3fcec29/4d57d99a00c080ee.png', 1647174703, 0, 4);
INSERT INTO `xy_goods_list` VALUES (1057, 'ดิสเบรคชุดแปลงดรั๊มเบรคเป็นดิสเบรค(ฮับมอเตอร์รถไฟฟ้า)', '', 'ดิสเบรคชุดแปลงดรั๊มเบรคเป็นดิสเบรค(ฮับมอเตอร์รถไฟฟ้า)', '', '', '', 1290.00, '/upload/61391f31257691b3/6cb3b51fd4a12bad.jpg', 1647174800, 0, 3);
INSERT INTO `xy_goods_list` VALUES (1058, 'สกู๊ตเตอร์ไฟฟ้า สกู้ตเตอร์เล็กราคาพิเศษ รถไฟฟ้า1ที่ันั่ง สกู้ตเตอร์เด็กมีเบาะเสริม electric scooter พับเก็บได้', '', 'สกู๊ตเตอร์ไฟฟ้า สกู้ตเตอร์เล็กราคาพิเศษ รถไฟฟ้า1ที่ันั่ง สกู้ตเตอร์เด็กมีเบาะเสริม electric scooter พับเก็บได้', '', '', '', 3749.00, '/upload/390b9fea9f9ecf8a/23d4fcf0e890d153.jpg', 1647174968, 0, 4);
INSERT INTO `xy_goods_list` VALUES (1059, 'Apple Watch Series5 ตัวเรือนอะลูมิเนียม สีเทาสเปซเกรย์ พร้อมสายแบบ Sport Band สีดำ ; iStudio โดย UFicon', '', 'Apple Watch Series5 ตัวเรือนอะลูมิเนียม สีเทาสเปซเกรย์ พร้อมสายแบบ Sport Band สีดำ ; iStudio โดย UFicon', '', '', '', 17900.00, '/upload/5b7273bcc7c2cc86/dade352e41ec984b.jpg', 1647175037, 0, 6);
INSERT INTO `xy_goods_list` VALUES (1060, 'HAIER Top Load Washing Machine 7 kg HWM70-1708T quick wash, soft closing door', '', 'HAIER Top Load Washing Machine 7 kg HWM70-1708T quick wash, soft closing door', '', '', '', 4999.00, '/upload/5c939ee857c91a31/10b33408f07a754a.jpg', 1647175191, 0, 4);
INSERT INTO `xy_goods_list` VALUES (1061, '?SAMSUNG WT15J7PEC/XST เครื่องซักผ้า 2 ถังกึ่งอัตโนมัติ ความจุ 13 kg ?CANDY HWM-T130 OXC รับประกันสินค้า 1 ปี ทั่วประเทศ', '', '?SAMSUNG WT15J7PEC/XST เครื่องซักผ้า 2 ถังกึ่งอัตโนมัติ ความจุ 13 kg ?CANDY HWM-T130 OXC รับประกันสินค้า 1 ปี ทั่วประเทศ', '', '', '', 4390.00, '/upload/618e68251e65667e/5c5e429d4727682e.jpg', 1647175376, 0, 4);
INSERT INTO `xy_goods_list` VALUES (1062, 'ตู้เย็น HAIER Refrigerators 1 Door รุ่น HR-CEQ15X 5.2Q (Muse Series) สีเงิน ตู้เย็น 1 ประตู', '', 'ตู้เย็น HAIER Refrigerators 1 Door รุ่น HR-CEQ15X 5.2Q (Muse Series) สีเงิน ตู้เย็น 1 ประตู', '', '', '', 4120.00, '/upload/acb7faaba66123b0/62ac47793eec3882.jpg', 1647175463, 0, 4);
INSERT INTO `xy_goods_list` VALUES (1063, 'Apple iPhone 12 มินิ 2020 ; iStudio โดย UFicon', '', 'Apple iPhone 12 มินิ 2020 ; iStudio โดย UFicon', '', '', '', 27900.00, '/upload/8e0028449d587d87/b014e46cc02c009a.jpg', 1647175501, 0, 6);
INSERT INTO `xy_goods_list` VALUES (1064, 'Electrolux EFT6510X เครื่องดูดควัน ขนาด 60 ซม. แบบ Slim', '', 'Electrolux EFT6510X เครื่องดูดควัน ขนาด 60 ซม. แบบ Slim', '', '', '', 4990.00, '/upload/ce7256396969fb58/b1138bcfbe13f67a.jpg', 1647175895, 0, 4);
INSERT INTO `xy_goods_list` VALUES (1065, 'TECNOPLUS เครื่องดูดควันแบบมาตรฐาน ขนาด 60 ซม. รุ่น TNP HDS', '', 'TECNOPLUS เครื่องดูดควันแบบมาตรฐาน ขนาด 60 ซม. รุ่น TNP HDS', '', '', '', 3990.00, '/upload/66a6abd43cb28fcf/8b0c592446ca3a24.jpg', 1647175998, 0, 4);
INSERT INTO `xy_goods_list` VALUES (1066, 'HISENSE RB546N4AF1 ตู้เย็น15.4Q 2Dสีดำ', '', 'HISENSE RB546N4AF1 ตู้เย็น15.4Q 2Dสีดำ', '', '', '', 15590.00, '/upload/dafb770bbb45e189/9bcae12f9187c031.jpg', 1647176087, 0, 6);
INSERT INTO `xy_goods_list` VALUES (1067, 'Kashiwa เครื่องดูดควัน เครื่องดูดควันขนาดใหญ่ เครื่องดูดควันในครัว ขนาด 90cm รุ่น PSD-203D / PSD-308H / PSD-603H /209H', '', 'Kashiwa เครื่องดูดควัน เครื่องดูดควันขนาดใหญ่ เครื่องดูดควันในครัว ขนาด 90cm รุ่น PSD-203D / PSD-308H / PSD-603H /209H', '', '', '', 4590.00, '/upload/41646d076760728e/6be35e3326486135.jpg', 1647176111, 0, 4);
INSERT INTO `xy_goods_list` VALUES (1068, 'Electrolux ETG728GK เตาแก๊สตั้งโต๊ะ หัวเตาทองเหลือง 2 หัว', '', 'Electrolux ETG728GK เตาแก๊สตั้งโต๊ะ หัวเตาทองเหลือง 2 หัว', '', '', '', 2590.00, '/upload/3dd47ee8fcc60987/b415f6951b43914f.jpg', 1647176210, 0, 4);
INSERT INTO `xy_goods_list` VALUES (1069, 'Electrolux ETG729GKT เตาแก๊สตั้งโต๊ะขนาด 70 ซม. ทำความร้อน 4.3 กิโลวัตต์ 2 หัว', '', 'Electrolux ETG729GKT เตาแก๊สตั้งโต๊ะขนาด 70 ซม. ทำความร้อน 4.3 กิโลวัตต์ 2 หัว', '', '', '', 3290.00, '/upload/5eed9d56bfe2a452/322bcea1532bc457.jpg', 1647176309, 0, 4);
INSERT INTO `xy_goods_list` VALUES (1070, 'Electrolux E7TS1-60BP เครื่องปิ้งขนมปัง 820 – 980 วัตต์ พร้อมตะแกรงอุ่นครัวซ็องต์', '', 'Electrolux E7TS1-60BP เครื่องปิ้งขนมปัง 820 – 980 วัตต์ พร้อมตะแกรงอุ่นครัวซ็องต์', '', '', '', 2260.00, '/upload/bc36c9e452d9e6c0/fa4a3a4b68cabef2.jpg', 1647176701, 0, 4);
INSERT INTO `xy_goods_list` VALUES (1071, 'AOC U28P2U (มอนิเตอร์) 28\" IPS/ Flat/ Adaptive Sync/ 3840x2160 4K @60Hz/ 4ms/ D-sub/ HDMI/ : Monitor', '', 'AOC U28P2U (มอนิเตอร์) 28\" IPS/ Flat/ Adaptive Sync/ 3840x2160 4K @60Hz/ 4ms/ D-sub/ HDMI/ : Monitor', '', '', '', 12290.00, '/upload/9d9b70393eb99fb3/11c250118716dbe2.jpg', 1647176944, 0, 6);
INSERT INTO `xy_goods_list` VALUES (1072, 'Xiaomi Monitor Gaming Curved 34\" 21:9 Refresh Rate 144Hz WQHD จอเกมมิ่ง รับประกันสินค้า 1ปี', '', 'Xiaomi Monitor Gaming Curved 34\" 21:9 Refresh Rate 144Hz WQHD จอเกมมิ่ง รับประกันสินค้า 1ปี', '', '', '', 14890.00, '/upload/e61b426f5f640c6a/856936c56088eb07.jpg', 1647177066, 0, 6);
INSERT INTO `xy_goods_list` VALUES (1073, 'โรโบร็อค Roborock Dyad เครื่องล้างพื้น - ดูดฝุ่น ถูพื้น ล้างพื้น ครบจบในเครื่องเดียว', '', 'โรโบร็อค Roborock Dyad เครื่องล้างพื้น - ดูดฝุ่น ถูพื้น ล้างพื้น ครบจบในเครื่องเดียว', '', '', '', 24490.00, '/upload/c71004686615c154/6f69a288764aa147.jpg', 1647177256, 0, 6);
INSERT INTO `xy_goods_list` VALUES (1074, 'Xiaomi Mi 23.8\" Desktop Monitor 1C จอคอมพิวเตอร์ จอมอนิเตอร์ 23.8 นิ้ว Full HD รุ่น BHR4510GL', '', 'Xiaomi Mi 23.8\" Desktop Monitor 1C จอคอมพิวเตอร์ จอมอนิเตอร์ 23.8 นิ้ว Full HD รุ่น BHR4510GL', '', '', '', 4690.00, '/upload/eb9521b898695bd2/abae590c687fcf26.jpg', 1647177533, 0, 4);
INSERT INTO `xy_goods_list` VALUES (1075, 'ทองคำแท้บริสุทธิ์สูง 96.5% สร้อยคอพร้อมจี้ดอกโคลเวอร์ลงยาสีพิเศษ Enamel สไตล์อิตาลี', '', 'ทองคำแท้บริสุทธิ์สูง 96.5% สร้อยคอพร้อมจี้ดอกโคลเวอร์ลงยาสีพิเศษ Enamel สไตล์อิตาลี', '', '', '', 10202.00, '/upload/054b369fd711ff41/4c298bdb70ca0b25.jpg', 1647177598, 0, 6);
INSERT INTO `xy_goods_list` VALUES (1076, 'ทองคำแท้บริสุทธิ์สูง 96.5% สร้อยข้อมือ Hello Daisy', '', 'ทองคำแท้บริสุทธิ์สูง 96.5% สร้อยข้อมือ Hello Daisy', '', '', '', 10429.00, '/upload/aa20dc99ccdcd43e/1465852323b7eee9.jpg', 1647177785, 0, 6);
INSERT INTO `xy_goods_list` VALUES (1077, 'ACER MONITOR VG240Ybmiix (IPS Panel) จอมอนิเตอร์ by Banana IT', '', 'ACER MONITOR VG240Ybmiix (IPS Panel) จอมอนิเตอร์ by Banana IT', '', '', '', 4800.00, '/upload/11e3e7199cdee83a/4eaf9aa01cfee3c8.jpg', 1647177807, 0, 4);
INSERT INTO `xy_goods_list` VALUES (1078, 'Electrolux E3TB1-210K เครื่องปั่นผลไม้ กำลังไฟฟ้า 500 วัตต์ ความจุ 1.95 ลิตร ใช้ได้ 1.5 ลิตร', '', 'Electrolux E3TB1-210K เครื่องปั่นผลไม้ กำลังไฟฟ้า 500 วัตต์ ความจุ 1.95 ลิตร ใช้ได้ 1.5 ลิตร', '', '', '', 1090.00, '/upload/c1ee755fe3046af2/aaee900c0b6e5585.jpg', 1647177980, 0, 4);
INSERT INTO `xy_goods_list` VALUES (1079, 'Philips Blender เครื่องปั่นเอนกประสงค์ พร้อมโถบดแห้งและโถบดสับ HR2041/30', '', 'Philips Blender เครื่องปั่นเอนกประสงค์ พร้อมโถบดแห้งและโถบดสับ HR2041/30', '', '', '', 1290.00, '/upload/6a4736b8b0a290d8/6050566a526334b2.jpg', 1647178126, 0, 4);
INSERT INTO `xy_goods_list` VALUES (1080, 'Philips เครื่องเตรียมอาหารอเนกประสงค์ รุ่น HR1847', '', 'Philips เครื่องเตรียมอาหารอเนกประสงค์ รุ่น HR1847', '', '', '', 3490.00, '/upload/55e506feb9970f4d/c0059932a57f51b4.jpg', 1647178207, 0, 4);
INSERT INTO `xy_goods_list` VALUES (1081, 'Philips Rice Cooker (Induction Heating) หม้อหุงข้าวระบบ iSpiral IH HD4528/35', '', 'Philips Rice Cooker (Induction Heating) หม้อหุงข้าวระบบ iSpiral IH HD4528/35', '', '', '', 4690.00, '/upload/6d18d6527676913a/3fee426cf88f0a30.jpg', 1647178324, 0, 4);
INSERT INTO `xy_goods_list` VALUES (1082, 'Philips Rice Cooker หม้อหุงข้าว HD3138/35', '', 'Philips Rice Cooker หม้อหุงข้าว HD3138/35', '', '', '', 1890.00, '/upload/857ae378403cb72a/64d2f385b1690a7a.jpg', 1647178446, 0, 4);
INSERT INTO `xy_goods_list` VALUES (1083, 'Lixada ขวดน้ําไทเทเนียม ถ้วยโรงอาหารกลางแจ้ง ชุดเครื่องครัว ตั้งแคมป์ ชุดทําอาหาร กาต้มน้ําดื่ม พร้อมกระเป๋าลายพราง', '', 'Lixada ขวดน้ําไทเทเนียม ถ้วยโรงอาหารกลางแจ้ง ชุดเครื่องครัว ตั้งแคมป์ ชุดทําอาหาร กาต้มน้ําดื่ม พร้อมกระเป๋าลายพราง', '', '', '', 4088.00, '/upload/51c280d8e4cb207e/046d763aa4a5c727.jpg', 1647178617, 0, 4);
INSERT INTO `xy_goods_list` VALUES (1084, '20% off INSSA กะทะ ชุดกระทะ ชุดเครื่องครัว Vanilla Gelato Series (Shopee code: NEWMR22N)', '', '20% off INSSA กะทะ ชุดกระทะ ชุดเครื่องครัว Vanilla Gelato Series (Shopee code: NEWMR22N)', '', '', '', 2089.00, '/upload/32985047abc0a91a/9d3da2055ee2cc18.jpg', 1647178783, 0, 4);
INSERT INTO `xy_goods_list` VALUES (1085, 'เตาอบไฟฟ้า 30 ลิตร เตาอบไฟฟ้ามัลติฟังก์ชั่นอัจฉริยะ อบอัตโนมัติ (Shopee code: NEWMR22N)', '', 'เตาอบไฟฟ้า 30 ลิตร เตาอบไฟฟ้ามัลติฟังก์ชั่นอัจฉริยะ อบอัตโนมัติ (Shopee code: NEWMR22N)', '', '', '', 1459.00, '/upload/ca287f4223064980/f59caf9d606d9cba.jpg', 1647178977, 0, 4);
INSERT INTO `xy_goods_list` VALUES (1086, 'หม้อทอดไร้น้ำมัน ใหม่ 5L ความจุขนาดใหญ่ หม้อทอดไร้น้ำมันมัลติฟังก์ชั่น ไร้น้ำมัน LCD (Shopee code: NEWMR22N)', '', 'หม้อทอดไร้น้ำมัน ใหม่ 5L ความจุขนาดใหญ่ หม้อทอดไร้น้ำมันมัลติฟังก์ชั่น ไร้น้ำมัน LCD (Shopee code: NEWMR22N)', '', '', '', 1199.00, '/upload/c70ce21c8f4d0d10/1a8f062e5c05adec.jpg', 1647179161, 0, 4);
INSERT INTO `xy_goods_list` VALUES (1087, 'เตาอบไฟฟ้า 36 ลิตร รุ่น HOM-23F368 VERASU วีรสุ เตา เตาไฟฟ้า เตาทำอาหาร เตาอบ', '', 'เตาอบไฟฟ้า 36 ลิตร รุ่น HOM-23F368 VERASU วีรสุ เตา เตาไฟฟ้า เตาทำอาหาร เตาอบ', '', '', '', 3500.00, '/upload/58ab214bd902cf61/b0becdd407e8ef1a.jpg', 1647179323, 0, 4);
INSERT INTO `xy_goods_list` VALUES (1088, 'เครื่องทำไอศกรีม HOM-122050 เครื่องทำไอติม ไอติม เครื่องทำไอศครีม เครื่องปั่นไอติม Ice Cream', '', 'เครื่องทำไอศกรีม HOM-122050 เครื่องทำไอติม ไอติม เครื่องทำไอศครีม เครื่องปั่นไอติม Ice Cream', '', '', '', 4650.00, '/upload/90a6d6f62f059002/d8018ed121647981.jpg', 1647179478, 0, 4);
INSERT INTO `xy_goods_list` VALUES (1089, 'เครื่องทำไอศครีม Bruno Japan ice cream maker เครื่องทำไอศครีมมินิ?? แถมฟรีปลั๊กแปลง', '', 'เครื่องทำไอศครีม Bruno Japan ice cream maker เครื่องทำไอศครีมมินิ?? แถมฟรีปลั๊กแปลง', '', '', '', 3490.00, '/upload/741d0f7f9e9221a6/d1f3062e61b36fe0.jpg', 1647179580, 0, 4);
INSERT INTO `xy_goods_list` VALUES (1090, 'เครื่องทำไอศครีม Bruno Japan ice cream maker เครื่องทำไอศครีมมินิ?? แถมฟรีปลั๊กแปลง', '', 'เครื่องทำไอศครีม Bruno Japan ice cream maker เครื่องทำไอศครีมมินิ?? แถมฟรีปลั๊กแปลง', '', '', '', 2790.00, '/upload/4cbbd5c385ae9b8c/899488583f597bad.jpg', 1647179700, 0, 4);
INSERT INTO `xy_goods_list` VALUES (1091, 'GEMONDO สร้อยไข่มุกน้ำจืดแท้ (Freshwater Pearl) ทรงกลม สีขาว ยาว 16 นิ้ว (40 cm.) : สร้อยมุกแท้ สร้อยไข่มุกแท้', '', 'GEMONDO สร้อยไข่มุกน้ำจืดแท้ (Freshwater Pearl) ทรงกลม สีขาว ยาว 16 นิ้ว (40 cm.) : สร้อยมุกแท้ สร้อยไข่มุกแท้', '', '', '', 14500.00, '/upload/83959e17090ab4c6/637048f8aaeb99ce.jpg', 1647179713, 0, 6);
INSERT INTO `xy_goods_list` VALUES (1092, 'เตียงนอน6 ฟุต ดีไซน์สวยหรู', '', 'เตียงนอน6 ฟุต ดีไซน์สวยหรู', '', '', '', 3800.00, '/upload/d9068dc08343ef00/37c1dcf292681e84.jpg', 1647179969, 0, 4);
INSERT INTO `xy_goods_list` VALUES (1093, 'เตียงนอนเดี่ยว3.5ฟุต', '', 'เตียงนอนเดี่ยว3.5ฟุต', '', '', '', 2275.00, '/upload/2c97124e3688ec3e/5d41cc5a89848b07.jpg', 1647180092, 0, 4);
INSERT INTO `xy_goods_list` VALUES (1094, 'ชุดห้องนอน เตียงบานเลื่อนลิ้นชัก 3.5, 5 และ 6 ฟุต หรือ พร้อมที่นอนสปริง **ตจว.มีค่าจัดส่ง สอบถามก่อนสั่งสินค้า**', '', 'ชุดห้องนอน เตียงบานเลื่อนลิ้นชัก 3.5, 5 และ 6 ฟุต หรือ พร้อมที่นอนสปริง **ตจว.มีค่าจัดส่ง สอบถามก่อนสั่งสินค้า**', '', '', '', 4990.00, '/upload/c2c11704c18b1935/7c43b3eb59c6e867.jpg', 1647180370, 0, 4);
INSERT INTO `xy_goods_list` VALUES (1095, 'Midas เตียงนอนพร้อมฐาน รุ่น Marine I หุ้มผ้า Microfibre', '', 'Midas เตียงนอนพร้อมฐาน รุ่น Marine I หุ้มผ้า Microfibre', '', '', '', 10990.00, '/upload/5c3ea22b3b090f27/6398dc55106ea65f.jpg', 1647180448, 0, 6);
INSERT INTO `xy_goods_list` VALUES (1096, 'กล้องวงจรปิดไร้สาย WIFI IP Camera รุ่น C21(1MP) / C21S(2MP) EYE4', '', 'กล้องวงจรปิดไร้สาย WIFI IP Camera รุ่น C21(1MP) / C21S(2MP) EYE4', '', '', '', 1000.00, '/upload/606a74974c3c2b83/57063aa76ddcf0e6.jpg', 1647180588, 0, 4);
INSERT INTO `xy_goods_list` VALUES (1097, 'ตียงเด็กและแม่ เตียงสองชั้น เตียงทำมาจากไม้เนื้อแข็งทั้งหมด ความสูงพอดี เตียงสองชั้นหลายฟังก์ชั่น เตียงนอน2ชั้น', '', 'ตียงเด็กและแม่ เตียงสองชั้น เตียงทำมาจากไม้เนื้อแข็งทั้งหมด ความสูงพอดี เตียงสองชั้นหลายฟังก์ชั่น เตียงนอน2ชั้น', '', '', '', 12990.00, '/upload/e00a99d0796604e6/36a0255f930fb873.jpg', 1647180814, 0, 6);
INSERT INTO `xy_goods_list` VALUES (1098, 'โค้ดF9ZZ6F23] Xiaomi Mi Home Security Camera PTZ Pro 2K 1296P (GB V.)', '', 'โค้ดF9ZZ6F23] Xiaomi Mi Home Security Camera PTZ Pro 2K 1296P (GB V.)', '', '', '', 1349.00, '/upload/717aac6d51917596/73f3b6c4ab27b05a.jpg', 1647180837, 0, 4);
INSERT INTO `xy_goods_list` VALUES (1099, 'FILA DARTKS2101PF01 รองเท้าลำลองสำหรับผู้หญิง', '', 'FILA DARTKS2101PF01 รองเท้าลำลองสำหรับผู้หญิง', '', '', '', 1271.00, '/upload/2c9e7303d0d3f163/f1fd81db6395d455.jpg', 1647181279, 0, 4);
INSERT INTO `xy_goods_list` VALUES (1100, 'FILA DARTKS2101PF01 รองเท้าลำลองสำหรับผู้หญิง', '', 'FILA DARTKS2101PF01 รองเท้าลำลองสำหรับผู้หญิง', '', '', '', 1455.00, '/upload/0ba622206fedaa04/78dd21dd163ab5c1.jpg', 1647181362, 0, 4);
INSERT INTO `xy_goods_list` VALUES (1101, 'MLB รองเท้าผ้าใบ PLAYBALL MULE ORIGIN SNEAKER UNISEX 3AMUUA11N 50WHS NEW YORK YANKEES WHITE', '', 'MLB รองเท้าผ้าใบ PLAYBALL MULE ORIGIN SNEAKER UNISEX 3AMUUA11N 50WHS NEW YORK YANKEES WHITE', '', '', '', 2290.00, '/upload/7938e82ef5f9bf7c/9ede9f32056607b9.jpg', 1647181500, 0, 4);
INSERT INTO `xy_goods_list` VALUES (1102, 'CONVERSE RUN STAR HIKE HI รองเท้าคอนเวิร์ส ของแท้ 100%', '', 'CONVERSE RUN STAR HIKE HI รองเท้าคอนเวิร์ส ของแท้ 100%', '', '', '', 3190.00, '/upload/ef2d30b24df8a74e/ef122a112e8a0f13.jpg', 1647181645, 0, 4);
INSERT INTO `xy_goods_list` VALUES (1103, 'CONVERSE RUN STAR HIKE OX รองเท้าคอนเวิร์ส ของแท้ 100%', '', 'CONVERSE RUN STAR HIKE OX รองเท้าคอนเวิร์ส ของแท้ 100%', '', '', '', 3500.00, '/upload/52c6eb696c6430d9/444d675bbd736582.jpg', 1647181766, 0, 4);
INSERT INTO `xy_goods_list` VALUES (1104, 'CONVERSE RUN STAR HIKE OX รองเท้าคอนเวิร์ส ของแท้ 100%', '', 'CONVERSE RUN STAR HIKE OX รองเท้าคอนเวิร์ส ของแท้ 100%', '', '', '', 3990.00, '/upload/e20dd9e397857083/79ad97f65349c722.jpg', 1647181894, 0, 4);
INSERT INTO `xy_goods_list` VALUES (1105, 'Aston Spark pro 2K กล้องติดรถยนต์ 2 กล้องหน้าหลัง ทรง Dashcam ชัดระดับ 2K จอกว้าง 4.0 นิ้ว เมนูภาษาไทย รับประกัน1ปี', '', 'Aston Spark pro 2K กล้องติดรถยนต์ 2 กล้องหน้าหลัง ทรง Dashcam ชัดระดับ 2K จอกว้าง 4.0 นิ้ว เมนูภาษาไทย รับประกัน1ปี', '', '', '', 929.00, '/upload/09c8f03a2ae65184/79c00676e7f10bc1.jpg', 1647227298, 0, 3);
INSERT INTO `xy_goods_list` VALUES (1106, 'SWISSGEAR กระเป๋าเป้ รุ่น KW-060', '', 'SWISSGEAR กระเป๋าเป้ รุ่น KW-060', '', '', '', 599.00, '/upload/9d0103ae7e56448c/706448ad5b2a97f7.png', 1647227542, 0, 3);
INSERT INTO `xy_goods_list` VALUES (1107, 'Computer Case VENUZ ATX Computer Case VC1616', '', 'Computer Case VENUZ ATX Computer Case VC1616', '', '', '', 539.00, '/upload/07efe103eef9ac29/594f6e0a07a58cfa.png', 1647227612, 0, 3);
INSERT INTO `xy_goods_list` VALUES (1108, 'Citadel กระเป๋าสะพายข้าง กระเป๋าผู้ชาย ผ้าใบกันน้ำ100% ตัวล็อคดีไซน์ใหม่ รุ่น B-495', '', 'Citadel กระเป๋าสะพายข้าง กระเป๋าผู้ชาย ผ้าใบกันน้ำ100% ตัวล็อคดีไซน์ใหม่ รุ่น B-495', '', '', '', 500.00, '/upload/1f669c70b02a6cf8/da888100a905a892.png', 1647227690, 0, 3);
INSERT INTO `xy_goods_list` VALUES (1109, '[ทักแชทรับโค้ด]AJ ลำโพงบลูทูธพกพา รุ่น AJ-777N', '', '[ทักแชทรับโค้ด]AJ ลำโพงบลูทูธพกพา รุ่น AJ-777N', '', '', '', 770.00, '/upload/5c190d7ec020a869/4941f674042b59f3.png', 1647227748, 0, 3);
INSERT INTO `xy_goods_list` VALUES (1110, 'NIKE รุ่นJORDAN 1 CRIB BOOTIE สีWHITE/BLACK-VARSITY RED (AT3745-163)', '', 'NIKE รุ่นJORDAN 1 CRIB BOOTIE สีWHITE/BLACK-VARSITY RED (AT3745-163)', '', '', '', 850.00, '/upload/cd6484ec15ca05a7/537d7dda7d4638b5.png', 1647227825, 0, 3);
INSERT INTO `xy_goods_list` VALUES (1111, 'NIKE Air Force 1 Shadow ของแท้ 100%', '', 'NIKE Air Force 1 Shadow ของแท้ 100%', '', '', '', 4500.00, '/upload/ee6d42ad050dee12/a0613cdb80d4f759.jpg', 1647227873, 0, 4);
INSERT INTO `xy_goods_list` VALUES (1112, 'Nike Kawa Shower Slides แท้?%จากช้อป มีกล่อง', '', 'Nike Kawa Shower Slides แท้?%จากช้อป มีกล่อง', '', '', '', 900.00, '/upload/c6d8290391204e76/68e8846de190f26a.png', 1647227891, 0, 3);
INSERT INTO `xy_goods_list` VALUES (1113, 'Mc Jeans รองเท้า Slip on หญิงและชาย สีขาว M09Z00410', '', 'Mc Jeans รองเท้า Slip on หญิงและชาย สีขาว M09Z00410', '', '', '', 900.00, '/upload/fd61e47e46e32168/f4e57d17070fb516.png', 1647227959, 0, 3);
INSERT INTO `xy_goods_list` VALUES (1114, 'Handheld Ironing Machine Steam iron เตารีดไอน้ำ เตารีดไอน้ำ', '', 'Handheld Ironing Machine Steam iron เตารีดไอน้ำ เตารีดไอน้ำ', '', '', '', 599.00, '/upload/5866996ba72cdf5e/f130f2984d1252da.png', 1647228052, 0, 3);
INSERT INTO `xy_goods_list` VALUES (1115, 'HW16 smart watch ขนาด44mmสวยมากของแท้100%', '', 'HW16 smart watch ขนาด44mmสวยมากของแท้100%', '', '', '', 600.00, '/upload/e2be4bf1add1013e/aba427ef8fc43d0a.png', 1647228104, 0, 3);
INSERT INTO `xy_goods_list` VALUES (1116, 'SHARP พัดลมสไลด์ 16 นิ้วรุ่น PJ-SL163 (ปรับระดับได้)', '', 'SHARP พัดลมสไลด์ 16 นิ้วรุ่น PJ-SL163 (ปรับระดับได้)', '', '', '', 755.00, '/upload/db38f386672b5b8b/47e038cf76e769ca.png', 1647228210, 0, 3);
INSERT INTO `xy_goods_list` VALUES (1117, 'กางเกงขายาวสำหรับส่องสัตว์ รุ่น 500 (สีน้ำตาลเข้ม) SOLOGNAC', '', 'กางเกงขายาวสำหรับส่องสัตว์ รุ่น 500 (สีน้ำตาลเข้ม) SOLOGNAC', '', '', '', 800.00, '/upload/c2d7f6fb598061cf/9957cbd55d6e7494.png', 1647228262, 0, 3);
INSERT INTO `xy_goods_list` VALUES (1118, 'กางเกงขายาวสำหรับส่องสัตว์ รุ่น Cargo 300 (สีดำ) SOLOGNAC', '', 'กางเกงขายาวสำหรับส่องสัตว์ รุ่น Cargo 300 (สีดำ) SOLOGNAC', '', '', '', 690.00, '/upload/c193f945d99f85e8/c902f629dce43337.png', 1647228339, 0, 3);
INSERT INTO `xy_goods_list` VALUES (1119, 'กางเกงเดินป่า ขาสั้น S.ARCHON ผ้าแห้งเร็ว น้ำหนักเบา ด้านในเป็นตาข่าย ของแท้ มีป้ายครบ พร้อมส่งจากไทย กางเกงขาสั้น', '', 'กางเกงเดินป่า ขาสั้น S.ARCHON ผ้าแห้งเร็ว น้ำหนักเบา ด้านในเป็นตาข่าย ของแท้ มีป้ายครบ พร้อมส่งจากไทย กางเกงขาสั้น', '', '', '', 500.00, '/upload/5c09aa9ed7ce495a/e9bb74732de16a88.png', 1647228470, 0, 3);
INSERT INTO `xy_goods_list` VALUES (1120, 'นวมซ้อมมวย หนังเทียม Boxing Gloves Muaythai', '', 'นวมซ้อมมวย หนังเทียม Boxing Gloves Muaythai', '', '', '', 649.00, '/upload/76899202d2ee09f6/9b6bcd5b2061e772.png', 1647228590, 0, 3);
INSERT INTO `xy_goods_list` VALUES (1121, 'มอเตอร์ 48v 500w สำหรับรถไฟฟ้า', '', 'มอเตอร์ 48v 500w สำหรับรถไฟฟ้า', '', '', '', 2300.00, '/upload/e7694417c3121c85/4e526e50313e92e8.jpg', 1647228644, 0, 4);
INSERT INTO `xy_goods_list` VALUES (1122, 'กางเกงยีนส์ ทรง BRUCE รุ่น LE L1BRU010 สีขาว ลี เสื้อผ้าผู้ชาย กางเกงยีนส์ กางเกงยีนส์ผู้ชาย', '', 'กางเกงยีนส์ ทรง BRUCE รุ่น LE L1BRU010 สีขาว ลี เสื้อผ้าผู้ชาย กางเกงยีนส์ กางเกงยีนส์ผู้ชาย', '', '', '', 750.00, '/upload/df8f3cd91dd8137d/898979d5809ad6e8.png', 1647228669, 0, 3);
INSERT INTO `xy_goods_list` VALUES (1123, 'กางเกงยีนส์ขาสั้น คาดรอบขาด้วยหนัง เเต่งขาด (เเถมเข็มขัด)', '', 'กางเกงยีนส์ขาสั้น คาดรอบขาด้วยหนัง เเต่งขาด (เเถมเข็มขัด)', '', '', '', 590.00, '/upload/4327f4f5ba763913/6cced38462b762fd.png', 1647228748, 0, 3);
INSERT INTO `xy_goods_list` VALUES (1124, 'RADO Captain Cook High-Tech Ceramic นาฬิกาข้อมือ รุ่น R32127162', '', 'RADO Captain Cook High-Tech Ceramic นาฬิกาข้อมือ รุ่น R32127162', '', '', '', 122600.00, '/upload/bfb1617f11d166aa/b4fec0840f02e980.jpg', 1647228816, 0, 6);
INSERT INTO `xy_goods_list` VALUES (1125, 'หม้อหุงข้าว 1.0ลิตร หม้อในเคลือบเทฟล่อน รุ่น SK-129 , เครื่องใช้ไฟฟ้า ห', '', 'หม้อหุงข้าว 1.0ลิตร หม้อในเคลือบเทฟล่อน รุ่น SK-129 , เครื่องใช้ไฟฟ้า ห', '', '', '', 700.00, '/upload/72c8d70ff467f6f4/b69915fa67b04b5e.png', 1647228955, 0, 3);
INSERT INTO `xy_goods_list` VALUES (1126, 'ยอดขายอันดับ1 มอเตอร์ dc บัสเลส 12v 24v 48v โซล่าเซลล์ มอเตอร์บัสเลส บัสเลสมอเตอร์ มอเตอร์ปั๊ม โซล่าเซลล์ ทองแดงแท้', '', 'ยอดขายอันดับ1 มอเตอร์ dc บัสเลส 12v 24v 48v โซล่าเซลล์ มอเตอร์บัสเลส บัสเลสมอเตอร์ มอเตอร์ปั๊ม โซล่าเซลล์ ทองแดงแท้', '', '', '', 3119.00, '/upload/840269f2f67dd050/3d97c30cfbd01a0f.jpg', 1647229001, 0, 4);
INSERT INTO `xy_goods_list` VALUES (1127, 'Oy โต๊ะ120CM โต๊ะทำงานไม้ โต๊ะคอมพิวเตอร์ โต๊ะทํางาน 2ชั้น', '', 'Oy โต๊ะ120CM โต๊ะทำงานไม้ โต๊ะคอมพิวเตอร์ โต๊ะทํางาน 2ชั้น', '', '', '', 1000.00, '/upload/5a30454b08b0e8b2/6d74dcaf02c8e381.png', 1647229016, 0, 3);
INSERT INTO `xy_goods_list` VALUES (1128, 'DJI POCKET 2 Black และ Sunset White ดีเจไอ กล้องพกพาถ่ายภาพนิ่งชัด 64MP และวิดีโอระดับ 4K/60fps', '', 'DJI POCKET 2 Black และ Sunset White ดีเจไอ กล้องพกพาถ่ายภาพนิ่งชัด 64MP และวิดีโอระดับ 4K/60fps', '', '', '', 17349.00, '/upload/c1935cd0c6eddfd8/8ce004c17a9093f6.jpg', 1647229111, 0, 6);
INSERT INTO `xy_goods_list` VALUES (1129, 'EQUL ตู้ใส่เสื้อผ้า ตู้เก็บของ ตู้เก็บเสื้อผ้า ตู้พลาสติกแขวนเสื้อผ้า 2in1ตู้', '', 'EQUL ตู้ใส่เสื้อผ้า ตู้เก็บของ ตู้เก็บเสื้อผ้า ตู้พลาสติกแขวนเสื้อผ้า 2in1ตู้', '', '', '', 690.00, '/upload/b0c89a643220c0ef/4ff1dd776a69327f.png', 1647229156, 0, 3);
INSERT INTO `xy_goods_list` VALUES (1130, 'Mc Jeans เสื้อกันหนาว MC รุ่น MJHP026 Unisex มีฮู้ด 4 สี เสื้อกันหนาว', '', 'Mc Jeans เสื้อกันหนาว MC รุ่น MJHP026 Unisex มีฮู้ด 4 สี เสื้อกันหนาว', '', '', '', 995.00, '/upload/84e6bc78684637c2/4ed66cfebed2392c.png', 1647229240, 0, 3);
INSERT INTO `xy_goods_list` VALUES (1131, 'Mc Jeans รองเท้าผ้าใบ M09Z006 Unisex สีขาว', '', 'Mc Jeans รองเท้าผ้าใบ M09Z006 Unisex สีขาว', '', '', '', 900.00, '/upload/f6a1c9bfbeb78398/5aa7cdfdfb27f6ed.png', 1647229331, 0, 3);
INSERT INTO `xy_goods_list` VALUES (1132, 'ใหม่เสื้อกันหนาวมีฮู้ดฤดูใบไม้ร่วงและฤดูหนาวแจ็คเก็ตเบสบอลชายเสื้อกีฬาเกาหลี plus กำมะหยี่หนา', '', 'ใหม่เสื้อกันหนาวมีฮู้ดฤดูใบไม้ร่วงและฤดูหนาวแจ็คเก็ตเบสบอลชายเสื้อกีฬาเกาหลี plus กำมะหยี่หนา', '', '', '', 567.00, '/upload/dd6fcf8bed80c680/e7b22dc1ce015062.png', 1647229405, 0, 3);
INSERT INTO `xy_goods_list` VALUES (1133, 'กทมมีส่งด่วนใน 1 ชม GoPro HERO 10 Black กล้องแอ็คชั่นแคมที่ดีที่สุด ถ่ายวิดีโอ 5K ประกันศูนย์1ปี.', '', 'กทมมีส่งด่วนใน 1 ชม GoPro HERO 10 Black กล้องแอ็คชั่นแคมที่ดีที่สุด ถ่ายวิดีโอ 5K ประกันศูนย์1ปี.', '', '', '', 18525.00, '/upload/51ca59ffe06449b9/ecc9f840236c35c2.jpg', 1647229419, 0, 6);
INSERT INTO `xy_goods_list` VALUES (1134, 'ฤดูใบไม้ร่วงการค้าต่างประเทศข้ามภูมิภาค Amazon ผู้ชายแจ็คเก็ตแบบสบาย ๆ กองทัพอากาศหมายเลข 1', '', 'ฤดูใบไม้ร่วงการค้าต่างประเทศข้ามภูมิภาค Amazon ผู้ชายแจ็คเก็ตแบบสบาย ๆ กองทัพอากาศหมายเลข 1', '', '', '', 822.00, '/upload/0cd450d0059b094d/39d397385971e044.png', 1647229501, 0, 3);
INSERT INTO `xy_goods_list` VALUES (1135, 'คุณภาพสูงจากโรงงานโดยตรง 2018 ฤดูหนาวใหม่แจ็คเก็ตยีนส์ผู้ชายบวกกำมะหยี่หนาอบอุ่นแจ็คเก็ตผ้าฝ้ายสไตล์เกาหลี', '', 'คุณภาพสูงจากโรงงานโดยตรง 2018 ฤดูหนาวใหม่แจ็คเก็ตยีนส์ผู้ชายบวกกำมะหยี่หนาอบอุ่นแจ็คเก็ตผ้าฝ้ายสไตล์เกาหลี', '', '', '', 800.00, '/upload/897b6c858d57b664/196155c23ef00168.png', 1647229622, 0, 3);
INSERT INTO `xy_goods_list` VALUES (1136, 'BONCHIสว่านไร้สาย 99V 2ระบบ ปรับสปีดได้ สำหรับเจาะไม้ เหล็ก ขันน็อตสก', '', 'BONCHIสว่านไร้สาย 99V 2ระบบ ปรับสปีดได้ สำหรับเจาะไม้ เหล็ก ขันน็อตสก', '', '', '', 500.00, '/upload/69c72079d5fd062b/4e9294398e89bc5e.png', 1647229673, 0, 3);
INSERT INTO `xy_goods_list` VALUES (1137, 'K120 เสื้อลูกไม้ไซส์ใหญ่?38-46 นิ้ว เสื้อผ้าสาวอวบ แฟชั่นผู้หญิง ออกงาน', '', 'K120 เสื้อลูกไม้ไซส์ใหญ่?38-46 นิ้ว เสื้อผ้าสาวอวบ แฟชั่นผู้หญิง ออกงาน', '', '', '', 580.00, '/upload/9f5e014339e681fd/c8dd628de6f6983b.png', 1647229837, 0, 3);
INSERT INTO `xy_goods_list` VALUES (1138, 'Iris Boutique IS138-IP018 Summer night set เสื้อผ้าแฟชั่นผู้หญิง ชุดเข้าเซท [Pre15days]', '', 'Iris Boutique IS138-IP018 Summer night set เสื้อผ้าแฟชั่นผู้หญิง ชุดเข้าเซท [Pre15days]', '', '', '', 790.00, '/upload/b086ffc13c71ec77/5b497e698f18c586.png', 1647229913, 0, 3);
INSERT INTO `xy_goods_list` VALUES (1139, 'Under Armour UA Men\'s Blitzing 3.0 Cap หมวกแก๊ปสำหรับผู้ชาย', '', 'Under Armour UA Men\'s Blitzing 3.0 Cap หมวกแก๊ปสำหรับผู้ชาย', '', '', '', 890.00, '/upload/6e2ad281a03580df/8436fa91b515fcf2.png', 1647229971, 0, 3);
INSERT INTO `xy_goods_list` VALUES (1140, 'Under Armour UA Men\'s Playmaker Fixed Strap Slides อันเดอร์ อาร์เมอร์ รองเท้าแตะ สำหรับผู้ชาย รุ่น Playmaker Fixed', '', 'Under Armour UA Men\'s Playmaker Fixed Strap Slides อันเดอร์ อาร์เมอร์ รองเท้าแตะ สำหรับผู้ชาย รุ่น Playmaker Fixed', '', '', '', 990.00, '/upload/d926adbf05ee4176/54855284d589e78c.png', 1647230082, 0, 3);
INSERT INTO `xy_goods_list` VALUES (1141, 'Nike ไนกี้ หมวก หมวกแก๊ป UX Cap NSW Heritage 86 Futura 913011-100 WH (700)', '', 'Nike ไนกี้ หมวก หมวกแก๊ป UX Cap NSW Heritage 86 Futura 913011-100 WH (700)', '', '', '', 560.00, '/upload/61a635c984ca56d5/88c1732761fd8220.png', 1647230135, 0, 3);
INSERT INTO `xy_goods_list` VALUES (1142, 'Nike Collection ไนกี้ หมวกบักเก็ต หมวกปีกรอบ หมวกสำหรับเด็ก NSW Bucket Futura Wash DC3967-072 / DC3967-010 (900)', '', 'Nike Collection ไนกี้ หมวกบักเก็ต หมวกปีกรอบ หมวกสำหรับเด็ก NSW Bucket Futura Wash DC3967-072 / DC3967-010 (900)', '', '', '', 720.00, '/upload/fa81b4c61cadb32c/d257a11364869417.png', 1647230298, 0, 3);
INSERT INTO `xy_goods_list` VALUES (1143, 'Adidas หมวกอดิดาส หมวกบัคเก็ต หมวกปีกรอบ สำหรับผู้ชาย และผู้หญิง สีดำ SPF Adicolor Trefoil Bucket Hat AJ8995 BK(1100)T', '', 'Adidas หมวกอดิดาส หมวกบัคเก็ต หมวกปีกรอบ สำหรับผู้ชาย และผู้หญิง สีดำ SPF Adicolor Trefoil Bucket Hat AJ8995 BK(1100)T', '', '', '', 720.00, '/upload/7bcf1bff6776d17f/e77a8235947c98c5.png', 1647230413, 0, 3);
INSERT INTO `xy_goods_list` VALUES (1144, 'จัดส่งได้ตลอดเวลา⚡️แฟลชเซลล์⚡️itimtoys -มอไซค์เด็กซ๊อปเปอร์ ฮาเล่ สุดเท่ห์ รถไฟฟ้าเด็ก รุ่น102', '', 'จัดส่งได้ตลอดเวลา⚡️แฟลชเซลล์⚡️itimtoys -มอไซค์เด็กซ๊อปเปอร์ ฮาเล่ สุดเท่ห์ รถไฟฟ้าเด็ก รุ่น102', '', '', '', 1110.00, '/upload/bb86f4802959ad2b/0c4b235ce82fdea1.jpg', 1647230548, 0, 4);
INSERT INTO `xy_goods_list` VALUES (1145, 'Marwell มาร์เวลล์ เข็มขัดหนังแท้ รุ่น MW 52-0015', '', 'Marwell มาร์เวลล์ เข็มขัดหนังแท้ รุ่น MW 52-0015', '', '', '', 950.00, '/upload/4314edd5c63c1b99/d2d64aeee4143265.png', 1647230566, 0, 3);
INSERT INTO `xy_goods_list` VALUES (1146, 'sony zv-1[ของแท้ศูนย์?%] Compact V-log camera sony zv1', '', 'sony zv-1[ของแท้ศูนย์?%] Compact V-log camera sony zv1', '', '', '', 20600.00, '/upload/f212e5ce7fd31180/77438f8015c77b81.jpg', 1647230599, 0, 6);
INSERT INTO `xy_goods_list` VALUES (1147, 'LEE เข็มขัด ผู้ชาย BELT รุ่น LE L1802002 สีน้ำตาล ลี เข็มขัด เสื้อผ้าผู้ชาย', '', 'LEE เข็มขัด ผู้ชาย BELT รุ่น LE L1802002 สีน้ำตาล ลี เข็มขัด เสื้อผ้าผู้ชาย', '', '', '', 890.00, '/upload/4e090854248b01ea/4b5fe47b330e36ce.png', 1647230619, 0, 3);
INSERT INTO `xy_goods_list` VALUES (1148, 'Marwell (มาร์เวลล์)เข็มขัดสุภาพบุรุษ รุ่น MW 59-0036 สีดำ', '', 'Marwell (มาร์เวลล์)เข็มขัดสุภาพบุรุษ รุ่น MW 59-0036 สีดำ', '', '', '', 550.00, '/upload/eb45c5dff7e481f0/24e9591242ba55b6.png', 1647230688, 0, 3);
INSERT INTO `xy_goods_list` VALUES (1149, 'RYBACK table เก้าอี้พับ โต๊ะเก้าอี้ โต๊ะรับประทานอาหาร เก้าอี้กินข้าว โต๊ะกินข้าว กาง-พับได้', '', 'RYBACK table เก้าอี้พับ โต๊ะเก้าอี้ โต๊ะรับประทานอาหาร เก้าอี้กินข้าว โต๊ะกินข้าว กาง-พับได้', '', '', '', 628.00, '/upload/5b91bf71c7f8a80d/4dfaf08563893eb8.png', 1647230817, 0, 3);
INSERT INTO `xy_goods_list` VALUES (1150, 'โคมไฟพัดลมเพดาน พัดลมเพดาน โคมไฟแบบมีพัดลมติดเพดาน ไฟ LED เปลี่ยนสีไฟได้ 3 สี มีรีโมทควบคุม 42นิ้ว', '', 'โคมไฟพัดลมเพดาน พัดลมเพดาน โคมไฟแบบมีพัดลมติดเพดาน ไฟ LED เปลี่ยนสีไฟได้ 3 สี มีรีโมทควบคุม 42นิ้ว', '', '', '', 1899.00, '/upload/28765cf202dc8fc4/d93871ebb584552e.jpg', 1647230841, 0, 4);
INSERT INTO `xy_goods_list` VALUES (1151, 'Fujifilm XC 50-230 MM. F4.5-6.7 OIS II Mirrorless Lenses เลนส์ - ประกันศูนย์', '', 'Fujifilm XC 50-230 MM. F4.5-6.7 OIS II Mirrorless Lenses เลนส์ - ประกันศูนย์', '', '', '', 17990.00, '/upload/43c9775e24b8f10f/76871d0df21321cf.jpg', 1647230851, 0, 6);
INSERT INTO `xy_goods_list` VALUES (1152, 'HomeHuk โต๊ะอเนกประสงค์ พับได้ เหล็กกล้าคาร์บอน ท็อปไม้ 100-120x60x75 cm', '', 'HomeHuk โต๊ะอเนกประสงค์ พับได้ เหล็กกล้าคาร์บอน ท็อปไม้ 100-120x60x75 cm', '', '', '', 769.00, '/upload/5ebf8b9d8a42b79a/0972c39d48a506f5.png', 1647230909, 0, 3);
INSERT INTO `xy_goods_list` VALUES (1153, '[รุ่นใหม่ 4สี] HomeHuk เก้าอี้กินข้าวเด็ก เบาะหนังรองนั่ง ถาดรองอาหาร ล้อเลื่อน ปรับได้ 5 แบบ', '', '[รุ่นใหม่ 4สี] HomeHuk เก้าอี้กินข้าวเด็ก เบาะหนังรองนั่ง ถาดรองอาหาร ล้อเลื่อน ปรับได้ 5 แบบ', '', '', '', 749.00, '/upload/541f0f9dd053ca1b/5375264fd063714f.png', 1647230971, 0, 3);
INSERT INTO `xy_goods_list` VALUES (1154, 'Canon EOS M50 Mark II kit 15-45mm Mirrorless - ประกันศูนย์', '', 'Canon EOS M50 Mark II kit 15-45mm Mirrorless - ประกันศูนย์', '', '', '', 25990.00, '/upload/197cb5551a867483/5088fb58cde5efc9.jpg', 1647230976, 0, 6);
INSERT INTO `xy_goods_list` VALUES (1155, 'HomePro เก้าอี้ รุ่น Unit C-116-1 หนัง PU สีดำ ขนาด 53x79x60 ซม. แบรนด์ Furdini', '', 'HomePro เก้าอี้ รุ่น Unit C-116-1 หนัง PU สีดำ ขนาด 53x79x60 ซม. แบรนด์ Furdini', '', '', '', 690.00, '/upload/322856ba5d48f2bb/f2d87a1a969cc885.png', 1647231074, 0, 3);
INSERT INTO `xy_goods_list` VALUES (1156, 'HomeHuk เก้าอี้กินข้าว เบาะหนัง / เบาะผ้า ขาเหล็ก พนักพิงกลางหลัง รับสรีระ 37x40.5x95 cm รับน้ำหนัก 120 kg', '', 'HomeHuk เก้าอี้กินข้าว เบาะหนัง / เบาะผ้า ขาเหล็ก พนักพิงกลางหลัง รับสรีระ 37x40.5x95 cm รับน้ำหนัก 120 kg', '', '', '', 559.00, '/upload/374fb6596b379416/36d3f3e70ea43ac5.png', 1647231164, 0, 3);
INSERT INTO `xy_goods_list` VALUES (1157, 'วินเทจเรดวูด5ใบมีดสีบรอนซ์พัดลมเพดานที่มี3/4แก้ว Shade 42 Ceiling Lights', '', 'วินเทจเรดวูด5ใบมีดสีบรอนซ์พัดลมเพดานที่มี3/4แก้ว Shade 42 Ceiling Lights', '', '', '', 1599.00, '/upload/71a416f55f0517ce/51f9509e0610d715.jpg', 1647231252, 0, 4);
INSERT INTO `xy_goods_list` VALUES (1158, 'โคมระย้ายุโรปห้องนั่งเล่นโคมระย้าฝรั่งเศสโคมไฟบ้านโคมระย้าไฟห้องนั่งเล่นห้องนอนร้านอาหารวิลล่าledโคมไฟส่องสว่าง', '', 'โคมระย้ายุโรปห้องนั่งเล่นโคมระย้าฝรั่งเศสโคมไฟบ้านโคมระย้าไฟห้องนั่งเล่นห้องนอนร้านอาหารวิลล่าledโคมไฟส่องสว่าง', '', '', '', 1926.00, '/upload/85f5a06612f9b9da/d671f2a2950b7f64.jpg', 1647231348, 0, 4);
INSERT INTO `xy_goods_list` VALUES (1159, 'HomeHuk เก้าอี้กินข้าว เบาะหนัง / เบาะผ้า ขาเหล็ก พนักพิงกลางหลัง รับสรีระ 37x40.5x95 cm รับน้ำหนัก 120 kg', '', 'HomeHuk เก้าอี้กินข้าว เบาะหนัง / เบาะผ้า ขาเหล็ก พนักพิงกลางหลัง รับสรีระ 37x40.5x95 cm รับน้ำหนัก 120 kg', '', '', '', 575.00, '/upload/217c383be7afe2e8/5e6e7f8edc75d592.png', 1647231387, 0, 3);
INSERT INTO `xy_goods_list` VALUES (1160, 'โคมไฟติดผนังโมเดิร์น หัวกวางแขวนผนัง โคมไฟห้องนอน หัวกวาง โคมไฟข้างเตียง', '', 'โคมไฟติดผนังโมเดิร์น หัวกวางแขวนผนัง โคมไฟห้องนอน หัวกวาง โคมไฟข้างเตียง', '', '', '', 1499.00, '/upload/b95054bfcdd818c2/1a78dc6eacc85bbf.jpg', 1647231744, 0, 4);
INSERT INTO `xy_goods_list` VALUES (1161, 'โคมระย้ายุโรปห้องนั่งเล่นบรรยากาศหรูหราบ้านสีฟ้าเซรามิกที่ทันสมัยห้องอาหารที่เรียบง่ายโคมระย้าคริสตัลฝรั่งเศสไฟ', '', 'โคมระย้ายุโรปห้องนั่งเล่นบรรยากาศหรูหราบ้านสีฟ้าเซรามิกที่ทันสมัยห้องอาหารที่เรียบง่ายโคมระย้าคริสตัลฝรั่งเศสไฟ', '', '', '', 1929.00, '/upload/153d8dfd36d148b0/bc4b710b0c44afd5.jpg', 1647231926, 0, 4);
INSERT INTO `xy_goods_list` VALUES (1162, 'adidas เสื้อยืด Essentials Big Logo ผู้ชาย สีขาว GK9121', '', 'adidas เสื้อยืด Essentials Big Logo ผู้ชาย สีขาว GK9121', '', '', '', 900.00, '/upload/e98e68fa971f4ac6/629877e34670ce0d.png', 1647232023, 0, 3);
INSERT INTO `xy_goods_list` VALUES (1163, 'adidas TRAINING Classic Essential Sling Bag ไม่ระบุเพศ สีดำ H30358', '', 'adidas TRAINING Classic Essential Sling Bag ไม่ระบุเพศ สีดำ H30358', '', '', '', 624.00, '/upload/0083510126a3cee6/f8cf7a953631247e.png', 1647232117, 0, 3);
INSERT INTO `xy_goods_list` VALUES (1164, '[โค้ด LULAE60 ลดสูงสุด 600-] LULAE L2 ฮาร์เลย์สกู๊ตเตอร์ไฟฟ้า electric scooter ความจุของแบตเตอรี่ 24V12A มอเตอร์ 300W', '', '[โค้ด LULAE60 ลดสูงสุด 600-] LULAE L2 ฮาร์เลย์สกู๊ตเตอร์ไฟฟ้า electric scooter ความจุของแบตเตอรี่ 24V12A มอเตอร์ 300W', '', '', '', 4799.00, '/upload/0ce2c2640529f435/8b3311055c888a53.jpg', 1647232199, 0, 4);
INSERT INTO `xy_goods_list` VALUES (1165, 'adidas เสื้อยืด adidas Designed To Move Big Logo ผู้ชาย สีดำ GN5707', '', 'adidas เสื้อยืด adidas Designed To Move Big Logo ผู้ชาย สีดำ GN5707', '', '', '', 672.00, '/upload/173ec2cfe022db58/76e48b7811e41474.png', 1647232204, 0, 3);
INSERT INTO `xy_goods_list` VALUES (1166, 'สกูตเตอร์ไฟฟ้า2เบาะผู้ใหญ่โครงเหล็ก2ที่นั่งรับน้ำหนัก150โล #รุ่นนี้ไม่ต้องใช้สายพานล้อหน้า​24', '', 'สกูตเตอร์ไฟฟ้า2เบาะผู้ใหญ่โครงเหล็ก2ที่นั่งรับน้ำหนัก150โล #รุ่นนี้ไม่ต้องใช้สายพานล้อหน้า​24', '', '', '', 4799.00, '/upload/9a0d179beb0aeed5/344b06ec3eaeb927.jpg', 1647232392, 0, 4);
INSERT INTO `xy_goods_list` VALUES (1167, '[Yangzi] Seki เตาอบไฟฟ้า เตาอบ เตาอบไฟฟ้า32ลิตร', '', '[Yangzi] Seki เตาอบไฟฟ้า เตาอบ เตาอบไฟฟ้า32ลิตร', '', '', '', 1000.00, '/upload/db4ce8fbfd747ea6/c16af44dc8c1f67f.png', 1647232396, 0, 3);
INSERT INTO `xy_goods_list` VALUES (1168, 'NETEL ชั้นวางจาน ชั้นวางท่อระบายน้ำสแตนเลส ชั้นวางของในครัว ชั้นวางช้อนส้อม ชั้นใส่ของ ที่คว่ำจาน ชั้นวางจาน ที่วางจาน ชั้นวางเครื่องปรุงในครัว', '', 'NETEL ชั้นวางจาน ชั้นวางท่อระบายน้ำสแตนเลส ชั้นวางของในครัว ชั้นวางช้อนส้อม ชั้นใส่ของ ที่คว่ำจาน ชั้นวางจาน ที่วางจาน ชั้นวางเครื่องปรุงในครัว', '', '', '', 758.00, '/upload/269b6db1e3395578/a4cf92af0437df03.png', 1647232531, 0, 3);
INSERT INTO `xy_goods_list` VALUES (1169, 'NETEL ชั้นวางของอเนกประสงค์ ขนาดใหญ่', '', 'NETEL ชั้นวางของอเนกประสงค์ ขนาดใหญ่', '', '', '', 538.00, '/upload/7fc205a255297f6a/65ffd297e436cb5c.png', 1647232618, 0, 3);
INSERT INTO `xy_goods_list` VALUES (1170, 'NETEL ชั้นวางอเนกประสงค์ ชั้นใส่ของ ชั้นวางของ ชั้นวางของในครัว ชั้นวางของใต้ซิงค์ ชั้นเก็บของ ชั้นวางของในครัว ชนิดเลื่อนได้ ประกอบง่าย สำหรับห้องครัว ห้องน้ำ สำนักงาน อ่างล้างจาน', '', 'NETEL ชั้นวางอเนกประสงค์ ชั้นใส่ของ ชั้นวางของ ชั้นวางของในครัว ชั้นวางของใต้ซิงค์ ชั้นเก็บของ ชั้นวางของในครัว ชนิดเลื่อนได้ ประกอบง่าย สำหรับห้องครัว ห้องน้ำ สำนักงาน อ่างล้างจาน', '', '', '', 588.00, '/upload/3e9f2a8cf82a6eaa/eff141781a2ed977.png', 1647232949, 0, 3);
INSERT INTO `xy_goods_list` VALUES (1171, 'WOOD OUTLET (คลังวัสดุไม้) ประตู HDF รุ่น 6 ลูกฟัก ขนาด 80x180 cm.ประตูห้องนอน ประตูห้อง', '', 'WOOD OUTLET (คลังวัสดุไม้) ประตู HDF รุ่น 6 ลูกฟัก ขนาด 80x180 cm.ประตูห้องนอน ประตูห้อง', '', '', '', 699.00, '/upload/791d8cc7b56b2517/439d1b1ceec00bd7.png', 1647233094, 0, 3);
INSERT INTO `xy_goods_list` VALUES (1172, 'Eagle Eyes Magnetic Clip-On แว่นกันแดดกรองแสง พร้อมเลนส์ 4 ชิ้น โดย TV Direct', '', 'Eagle Eyes Magnetic Clip-On แว่นกันแดดกรองแสง พร้อมเลนส์ 4 ชิ้น โดย TV Direct', '', '', '', 990.00, '/upload/703fab13f24c6917/c976d883085581a8.png', 1647233126, 0, 3);
INSERT INTO `xy_goods_list` VALUES (1173, 'Fujifilm Camera X-T200 kit 15-45 mm. เมนู ENG [รับประกัน 1 ปี By AVcentershop]', '', 'Fujifilm Camera X-T200 kit 15-45 mm. เมนู ENG [รับประกัน 1 ปี By AVcentershop]', '', '', '', 22150.00, '/upload/cd8c430430573b74/4786ec2484e63a34.jpg', 1647233149, 0, 6);
INSERT INTO `xy_goods_list` VALUES (1174, 'SMART GUARD (แถมไฟ LED 1หลอดเพิ่ม) + SMART SOLAR CENSOR 2 ดวง ราคา 990 บาทโดย TV Direct', '', 'SMART GUARD (แถมไฟ LED 1หลอดเพิ่ม) + SMART SOLAR CENSOR 2 ดวง ราคา 990 บาทโดย TV Direct', '', '', '', 990.00, '/upload/dcd6af9d7c75e755/ed39a16e9b1f78a8.png', 1647233191, 0, 3);
INSERT INTO `xy_goods_list` VALUES (1175, 'EAGLE EYES แว่นตากันแดด รุ่น RISKY FOLD-UP NL MODEL 1 โดย TV Direct', '', 'EAGLE EYES แว่นตากันแดด รุ่น RISKY FOLD-UP NL MODEL 1 โดย TV Direct', '', '', '', 690.00, '/upload/817d5ee2b7ff2a5e/45bf8438318593c8.png', 1647233265, 0, 3);
INSERT INTO `xy_goods_list` VALUES (1176, '[New Arrival] ETC Couple Umbrella ร่มคู่ ผ้าไนลอน ป้องกันแสงแดด รังสี UV', '', '[New Arrival] ETC Couple Umbrella ร่มคู่ ผ้าไนลอน ป้องกันแสงแดด รังสี UV', '', '', '', 850.00, '/upload/02855bdcedef7e6f/3692afc5abe5896a.png', 1647233380, 0, 3);
INSERT INTO `xy_goods_list` VALUES (1177, 'BGG UV Cut 100% Blocktech Folding Umbrella ร่ม ร่มพับ 3ตอน กันแดด กันยูวี 100% กันฝน ผ้าบล็อคเทค (FM1114)', '', 'BGG UV Cut 100% Blocktech Folding Umbrella ร่ม ร่มพับ 3ตอน กันแดด กันยูวี 100% กันฝน ผ้าบล็อคเทค (FM1114)', '', '', '', 690.00, '/upload/ea761d9da3d7bc46/249c527482a28dd8.png', 1647233703, 0, 3);
INSERT INTO `xy_goods_list` VALUES (1178, 'GRAND SPORT GAเต็นท์ 3 คน 1ประตู 3 หน้าต่าง+ฟรายชีท รหัส : 311063', '', 'GRAND SPORT GAเต็นท์ 3 คน 1ประตู 3 หน้าต่าง+ฟรายชีท รหัส : 311063', '', '', '', 679.00, '/upload/26c454efe0c12565/6dcb5275f7d9ebb8.png', 1647233725, 0, 3);
INSERT INTO `xy_goods_list` VALUES (1179, 'HP LaserJet Pro M404dn Printer', '', 'HP LaserJet Pro M404dn Printer', '', '', '', 17500.00, '/upload/47d8c09a6137bbe2/122bc2fc04db7771.jpg', 1647233734, 0, 6);
INSERT INTO `xy_goods_list` VALUES (1180, 'MOLTEN ลูกฟุตบอล หนังเย็บ เบอร์ 4 Football PU pk F4A3400 G (940) (แถมฟรี ตาข่ายใส่ลูกฟุตบอล +เข็มสูบลม+สูบมือ)', '', 'MOLTEN ลูกฟุตบอล หนังเย็บ เบอร์ 4 Football PU pk F4A3400 G (940) (แถมฟรี ตาข่ายใส่ลูกฟุตบอล +เข็มสูบลม+สูบมือ)', '', '', '', 582.00, '/upload/6ea85b28349bbc64/95389f9f91742972.png', 1647233786, 0, 3);
INSERT INTO `xy_goods_list` VALUES (1181, 'MOLTEN ลูกฟุตบอลหนัง เบอร์ 5 Football Hybrid PU pk F5U3600-G0 UEFA (1100)(แถมฟรี ตาข่ายใส่ลูกฟุตบอล +เข็มสูบลม+สูบมือ)', '', 'MOLTEN ลูกฟุตบอลหนัง เบอร์ 5 Football Hybrid PU pk F5U3600-G0 UEFA (1100)(แถมฟรี ตาข่ายใส่ลูกฟุตบอล +เข็มสูบลม+สูบมือ)', '', '', '', 682.00, '/upload/0e4495fce6fb296d/6ae7f1ec0e1c8b2c.png', 1647233867, 0, 3);
INSERT INTO `xy_goods_list` VALUES (1182, 'โน๊ตบุ๊ค HP Pavilion Laptop 15-eh1120AU Ryzen 5-5500U/ Ram 8GB /SSD 512GB / Win 11 / MS Office H&S 2019', '', 'โน๊ตบุ๊ค HP Pavilion Laptop 15-eh1120AU Ryzen 5-5500U/ Ram 8GB /SSD 512GB / Win 11 / MS Office H&S 2019', '', '', '', 22990.00, '/upload/2b66aed2df77ece7/dd07884c75733cd2.jpg', 1647233914, 0, 6);
INSERT INTO `xy_goods_list` VALUES (1183, '[ลดล้างสต็อก] ADIDAS by FBT รองเท้าฟุตบอล อาดิดาส สตั๊ด PREDATOR 19.4 s FxG EF0383', '', '[ลดล้างสต็อก] ADIDAS by FBT รองเท้าฟุตบอล อาดิดาส สตั๊ด PREDATOR 19.4 s FxG EF0383', '', '', '', 800.00, '/upload/a6623ec524fb037d/1f6e3216bdcc34c5.png', 1647234003, 0, 3);
INSERT INTO `xy_goods_list` VALUES (1184, '[ลดล้างสต็อก] ADIDAS by FBT รองเท้าฟุตบอล อาดิดาส สตั๊ด X 19.4 FxG F35377', '', '[ลดล้างสต็อก] ADIDAS by FBT รองเท้าฟุตบอล อาดิดาส สตั๊ด X 19.4 FxG F35377', '', '', '', 680.00, '/upload/97856fee8201ad71/c89e69ef70cb0b56.png', 1647234105, 0, 3);
INSERT INTO `xy_goods_list` VALUES (1185, '[ลดล้างสต็อก] ADIDAS by FBT รองเท้าฟุตบอล อาดิดาส สตั๊ด X 19.4 FG F35378', '', '[ลดล้างสต็อก] ADIDAS by FBT รองเท้าฟุตบอล อาดิดาส สตั๊ด X 19.4 FG F35378', '', '', '', 680.00, '/upload/48156605fd03f7ed/6614e96a6a5e603e.png', 1647234735, 0, 3);
INSERT INTO `xy_goods_list` VALUES (1186, 'Spalding ลูกบาสเก็ตบอล รุ่น TF250', '', 'Spalding ลูกบาสเก็ตบอล รุ่น TF250', '', '', '', 990.00, '/upload/1767a219f89ed0c8/578341929e2b1f82.png', 1647234866, 0, 3);
INSERT INTO `xy_goods_list` VALUES (1187, 'Nike ไนกี้ บาส ลูกบาสเก็ตบอล เบอร์ 3 Basketball RB Skills K Irving N.100.0691.074(650)', '', 'Nike ไนกี้ บาส ลูกบาสเก็ตบอล เบอร์ 3 Basketball RB Skills K Irving N.100.0691.074(650)', '', '', '', 520.00, '/upload/46b30f722ad8a592/b8a95d8ed54ea037.png', 1647234944, 0, 3);
INSERT INTO `xy_goods_list` VALUES (1188, 'PEAK Lightning \"ECS\" รองเท้าบาสเกตบอล พีค ข้อกลาง นุ่ม ปกป้องข้อเท้า รองรับเท้าได้ดี พื้นทนต่อการสึกหรอ E81053A', '', 'PEAK Lightning \"ECS\" รองเท้าบาสเกตบอล พีค ข้อกลาง นุ่ม ปกป้องข้อเท้า รองรับเท้าได้ดี พื้นทนต่อการสึกหรอ E81053A', '', '', '', 990.00, '/upload/0a0f5698872570a1/7cb83d532ef63b31.png', 1647235090, 0, 3);
INSERT INTO `xy_goods_list` VALUES (1190, 'PEAK Lou Williams Street Master Professional Damping Cushioning Tech รองเท้าบาสเก็ตบอล ไม่มีรอยต่อด้านบน ระบายอากาศ สำหรับผู้ชาย', '', 'PEAK Lou Williams Street Master Professional Damping Cushioning Tech รองเท้าบาสเก็ตบอล ไม่มีรอยต่อด้านบน ระบายอากาศ สำหรับผู้ชาย', '', '', '', 990.00, '/upload/35537e9dfda71b3d/3156e8f914b40045.png', 1647235328, 0, 3);
INSERT INTO `xy_goods_list` VALUES (1191, 'PRIM ถังขยะสแตนเลส ถังขยะสแตนเลสแบบเหยียบ ขนาด 6ลิตร ถังขยะ มีระบบ Soft Close ปิดนุ่มนวล สะดวก ไม่มีเสียง', '', 'PRIM ถังขยะสแตนเลส ถังขยะสแตนเลสแบบเหยียบ ขนาด 6ลิตร ถังขยะ มีระบบ Soft Close ปิดนุ่มนวล สะดวก ไม่มีเสียง', '', '', '', 690.00, '/upload/78afa8b431e06dfd/35544403076ace38.png', 1647235438, 0, 3);
INSERT INTO `xy_goods_list` VALUES (1192, 'ACER Nitro 5 AN515-57-58LR /i5-11400H/ประกัน 3YOnsite', '', 'ACER Nitro 5 AN515-57-58LR /i5-11400H/ประกัน 3YOnsite', '', '', '', 2808.00, '/upload/6a54a99ee03a8104/993866360b2c0ed2.jpg', 1647235452, 0, 6);
INSERT INTO `xy_goods_list` VALUES (1193, 'LocknLock ถังขยะ Square Steel Pedal Dust Bin ความจุ 6 L. รุ่น BYP122', '', 'LocknLock ถังขยะ Square Steel Pedal Dust Bin ความจุ 6 L. รุ่น BYP122', '', '', '', 599.00, '/upload/99fc7d7992b04d07/15542e79e1e93f58.png', 1647235552, 0, 3);
INSERT INTO `xy_goods_list` VALUES (1194, 'LocknLock แก้วน้ำเก็บอุณหภูมิ Energetic One Touch Tumbler ความจุ 550 ml. รุ่น LHC3249', '', 'LocknLock แก้วน้ำเก็บอุณหภูมิ Energetic One Touch Tumbler ความจุ 550 ml. รุ่น LHC3249', '', '', '', 539.00, '/upload/213ebb48c8a66d04/d33a82124a99ba61.png', 1647235621, 0, 3);
INSERT INTO `xy_goods_list` VALUES (1195, 'Apple iPhone12 หน้าจอ 6.1 นิ้ว', '', 'Apple iPhone12 หน้าจอ 6.1 นิ้ว', '', '', '', 27900.00, '/upload/077b19603052f16f/108dd21ee1dd0d69.jpg', 1647235697, 0, 6);
INSERT INTO `xy_goods_list` VALUES (1196, 'ถูกที่สุด>>พร้อมส่ง>>Tpartner กระเป๋าเดินทาง กระเป๋าเดินทางล้อลาก Insta Series เฟรมซิป วัสดุABS+PC สีสดใส 8 สี', '', 'ถูกที่สุด>>พร้อมส่ง>>Tpartner กระเป๋าเดินทาง กระเป๋าเดินทางล้อลาก Insta Series เฟรมซิป วัสดุABS+PC สีสดใส 8 สี', '', '', '', 899.00, '/upload/9dc93b29aa28c942/2f852faf1b40dda3.png', 1647235796, 0, 3);
INSERT INTO `xy_goods_list` VALUES (1197, 'Apple iPad Air4 (2020) Wifi หน้าจอ 10.9 นิ้ว', '', 'Apple iPad Air4 (2020) Wifi หน้าจอ 10.9 นิ้ว', '', '', '', 24900.00, '/upload/3ebe5fbce0a3947c/d04efb97d85e22b8.jpg', 1647235948, 0, 6);
INSERT INTO `xy_goods_list` VALUES (1198, 'adidas TRAINING กระเป๋าดัฟเฟิลขนาดเล็กพิเศษ 4ATHLTS ไม่ระบุเพศ สีดำ FJ4455', '', 'adidas TRAINING กระเป๋าดัฟเฟิลขนาดเล็กพิเศษ 4ATHLTS ไม่ระบุเพศ สีดำ FJ4455', '', '', '', 616.00, '/upload/e03df0d241f4815c/c113f3585938c519.png', 1647235965, 0, 3);
INSERT INTO `xy_goods_list` VALUES (1199, 'Apple AirPods Max แอร์พอดแม็กซ์', '', 'Apple AirPods Max แอร์พอดแม็กซ์', '', '', '', 19900.00, '/upload/136016f0a3a3d685/00ddc6ed2c728b07.jpg', 1647236164, 0, 6);
INSERT INTO `xy_goods_list` VALUES (1200, 'Adidas กระเป๋า กระเป๋าเดินทาง Bag Essentials 3S Duffel GN2041 / GN2042 (900)', '', 'Adidas กระเป๋า กระเป๋าเดินทาง Bag Essentials 3S Duffel GN2041 / GN2042 (900)', '', '', '', 720.00, '/upload/3d4fa9901d1cf43b/f90199949e2fb365.png', 1647236293, 0, 3);
INSERT INTO `xy_goods_list` VALUES (1201, 'adidas กระเป๋าถือพับเก็บได้ ไม่ระบุเพศ สีดำ GN2020', '', 'adidas กระเป๋าถือพับเก็บได้ ไม่ระบุเพศ สีดำ GN2020', '', '', '', 900.00, '/upload/aef947608074c545/316047b0f8a7527a.png', 1647236559, 0, 3);
INSERT INTO `xy_goods_list` VALUES (1202, 'SKMEI นาฬิกา Smart watch เชื่อม Bluetooth SK-1255 และ Todex Watch Series 7', '', 'SKMEI นาฬิกา Smart watch เชื่อม Bluetooth SK-1255 และ Todex Watch Series 7', '', '', '', 629.00, '/upload/67f526d01d46fbe8/b6de058acef02888.png', 1647236674, 0, 3);
INSERT INTO `xy_goods_list` VALUES (1203, 'Walkingpad R1 ลู่เดิน-วิ่งไฟฟ้า มีรีโมท พับเก็บได้ หน้าจอ LED ระบบสัมผัส ล้อลาก -30D', '', 'Walkingpad R1 ลู่เดิน-วิ่งไฟฟ้า มีรีโมท พับเก็บได้ หน้าจอ LED ระบบสัมผัส ล้อลาก -30D', '', '', '', 11990.00, '/upload/0f07667e91dfe42e/617b1865075fd19f.jpg', 1647236751, 0, 6);
INSERT INTO `xy_goods_list` VALUES (1204, 'SKMEI นาฬิกา Smart watch เชื่อม Bluetooth SK-1255 และ Todex Watch Series 7', '', 'SKMEI นาฬิกา Smart watch เชื่อม Bluetooth SK-1255 และ Todex Watch Series 7', '', '', '', 629.00, '/upload/0442da2fc07516ac/adf5118a20458bff.png', 1647236767, 0, 3);
INSERT INTO `xy_goods_list` VALUES (1205, 'Julius นาฬิกาข้อมือ แบรนด์เกาหลี แฟชั่นฮิตของแท้ รุ่น JA-1190L', '', 'Julius นาฬิกาข้อมือ แบรนด์เกาหลี แฟชั่นฮิตของแท้ รุ่น JA-1190L', '', '', '', 930.00, '/upload/ebec617ba6c3c891/bd30ed0b69e1f5e1.png', 1647236816, 0, 3);
INSERT INTO `xy_goods_list` VALUES (1206, 'POWER REFORM โฮมยิม 1 สถานี รุ่น PEGASUS แผ่นน้ำหนักในตัว 68 กก. Home Gym Single Station 68 KG. weight stack', '', 'POWER REFORM โฮมยิม 1 สถานี รุ่น PEGASUS แผ่นน้ำหนักในตัว 68 กก. Home Gym Single Station 68 KG. weight stack', '', '', '', 13900.00, '/upload/54368b745188d0fd/8d74a342780b38ef.jpg', 1647236924, 0, 6);
INSERT INTO `xy_goods_list` VALUES (1207, 'WISHDOIT นาฬิกาข้อมือ สายโลหะ กันน้ำ สำหรับผู้ชาย', '', 'WISHDOIT นาฬิกาข้อมือ สายโลหะ กันน้ำ สำหรับผู้ชาย', '', '', '', 559.00, '/upload/0ec1230729c1be46/57f124e244a17414.png', 1647236935, 0, 3);
INSERT INTO `xy_goods_list` VALUES (1208, 'Original Lixada ยางยืดออกกำลังกาย ทนทาน สำหรับยิม โยคะ ฝึกความแข็งแรง 2 ชิ้น', '', 'Original Lixada ยางยืดออกกำลังกาย ทนทาน สำหรับยิม โยคะ ฝึกความแข็งแรง 2 ชิ้น', '', '', '', 905.00, '/upload/c6ca1fa442809d2c/2dd59dcf5034e43d.png', 1647237148, 0, 3);
INSERT INTO `xy_goods_list` VALUES (1209, 'Lixada 3 In 1 เสื้อชูชีพ ผ้าตาข่าย ระบายอากาศ ปลอดภัย สําหรับตกปลา เรือคายัค เรือใบ', '', 'Lixada 3 In 1 เสื้อชูชีพ ผ้าตาข่าย ระบายอากาศ ปลอดภัย สําหรับตกปลา เรือคายัค เรือใบ', '', '', '', 964.00, '/upload/e9e7da9264fd5762/6f09e0a35b1645bb.png', 1647237276, 0, 3);
INSERT INTO `xy_goods_list` VALUES (1210, 'POWER REFORM สมิทแมชชีน รุ่น Patriot พร้อม Crossover และ Power Rack ในตัว อุปกรณ์เสริม 9 รายการ Smith Machine Cross Over', '', 'POWER REFORM สมิทแมชชีน รุ่น Patriot พร้อม Crossover และ Power Rack ในตัว อุปกรณ์เสริม 9 รายการ Smith Machine Cross Over', '', '', '', 23900.00, '/upload/38d0bab4e040bef3/bdfab1d5f7923354.jpg', 1647237299, 0, 6);
INSERT INTO `xy_goods_list` VALUES (1211, 'Lixada เตาไทเทเนียม แบบพกพา พับได้ น้ําหนักเบา สําหรับตั้งแคมป์ ปิกนิก ทําอาหารกลางแจ้ง', '', 'Lixada เตาไทเทเนียม แบบพกพา พับได้ น้ําหนักเบา สําหรับตั้งแคมป์ ปิกนิก ทําอาหารกลางแจ้ง', '', '', '', 925.00, '/upload/6787c1676baf7616/1fd453f88fa3dcb0.png', 1647237372, 0, 3);
INSERT INTO `xy_goods_list` VALUES (1212, 'Lixada แผ่นเชื่อมต่อ 8 หลุม 45KN สําหรับปีนเขา', '', 'Lixada แผ่นเชื่อมต่อ 8 หลุม 45KN สําหรับปีนเขา', '', '', '', 753.00, '/upload/19bde6c50f92f2d4/e03ddcec9113b9f2.png', 1647237439, 0, 3);
INSERT INTO `xy_goods_list` VALUES (1213, 'THE TOTAL REBODYเครื่องบริหารร่างกายรีบอดี โดย TV Direct by TVD OUTLET', '', 'THE TOTAL REBODYเครื่องบริหารร่างกายรีบอดี โดย TV Direct by TVD OUTLET', '', '', '', 990.00, '/upload/141afd5a0d7bdd33/a5aa4f616807b0db.png', 1647237487, 0, 3);
INSERT INTO `xy_goods_list` VALUES (1214, 'XtivePRO เครื่องออกกำลังกายแบบเหยียบขึ้นลง พร้อมสายแรงต้าน เครื่องออกกำลังขา Mini Stepper', '', 'XtivePRO เครื่องออกกำลังกายแบบเหยียบขึ้นลง พร้อมสายแรงต้าน เครื่องออกกำลังขา Mini Stepper', '', '', '', 790.00, '/upload/4e1d528931eea31d/1757191432a059a1.png', 1647237524, 0, 3);
INSERT INTO `xy_goods_list` VALUES (1215, 'เสื้อแจ็คเก็ตดาวน์ The North Face อยู่ยงคงกระพัน', '', 'เสื้อแจ็คเก็ตดาวน์ The North Face อยู่ยงคงกระพัน', '', '', '', 13390.00, '/upload/8fc90cf8f5821a6d/3e444d3d4224eeae.jpg', 1647237677, 0, 6);
INSERT INTO `xy_goods_list` VALUES (1216, 'ถูกที่สุด ของแท้ 100% GUCCI T SHIRT', '', 'ถูกที่สุด ของแท้ 100% GUCCI T SHIRT', '', '', '', 18900.00, '/upload/8fc425843a10f643/4a06050f4f7a1124.jpg', 1647237834, 0, 6);
INSERT INTO `xy_goods_list` VALUES (1217, '[ส่งฟรี] XtivePRO เชือกกระโดด สายเคเบิ้ลโลหะหุ้ม PVC หัวลูกปืนลื่น ปรับความยาวได้ กระชับหุ่น ลดไขมันหน้าท้อง Speed Jump Rope', '', '[ส่งฟรี] XtivePRO เชือกกระโดด สายเคเบิ้ลโลหะหุ้ม PVC หัวลูกปืนลื่น ปรับความยาวได้ กระชับหุ่น ลดไขมันหน้าท้อง Speed Jump Rope', '', '', '', 590.00, '/upload/c35ddac6ae2eafa7/c4084d19fdabf1f6.png', 1647239686, 0, 3);
INSERT INTO `xy_goods_list` VALUES (1218, 'STN 1998จักรยานเด็ก ขนาด 12 นิ้ว มีตะกร้า ล้อยางสูบลมได้ เหมาะกับเด็กอายุ 1-4ขวบ', '', 'STN 1998จักรยานเด็ก ขนาด 12 นิ้ว มีตะกร้า ล้อยางสูบลมได้ เหมาะกับเด็กอายุ 1-4ขวบ', '', '', '', 835.00, '/upload/6422f609115571ad/93730f0705411f2a.png', 1647239737, 0, 3);
INSERT INTO `xy_goods_list` VALUES (1219, 'Onbros หมวกกันน็อค น้ําหนักเบา ปรับได้ เพื่อความปลอดภัย สําหรับผู้ชาย และผู้หญิง เหมาะกับการขี่จักรยาน', '', 'Onbros หมวกกันน็อค น้ําหนักเบา ปรับได้ เพื่อความปลอดภัย สําหรับผู้ชาย และผู้หญิง เหมาะกับการขี่จักรยาน', '', '', '', 656.00, '/upload/916691fa2f9d71bd/65933d85e546db72.png', 1647239809, 0, 3);
INSERT INTO `xy_goods_list` VALUES (1220, 'หมวกกันน็อคจักรยาน S-fight รุ่น JT-136 เสือหมอบ เสือภูเขา', '', 'หมวกกันน็อคจักรยาน S-fight รุ่น JT-136 เสือหมอบ เสือภูเขา', '', '', '', 550.00, '/upload/b06ade8318cbc3be/0a2fb49e9a9cd6ed.png', 1647239859, 0, 3);
INSERT INTO `xy_goods_list` VALUES (1221, 'TL FMA หมวกกันน็อคยุทธวิธี GPNVG 18 night vision Goggle NVG model', '', 'TL FMA หมวกกันน็อคยุทธวิธี GPNVG 18 night vision Goggle NVG model', '', '', '', 943.00, '/upload/e058c8395c51e9b7/141d4a008f2dfbee.png', 1647239912, 0, 3);
INSERT INTO `xy_goods_list` VALUES (1222, 'Haixnfire TK104 Cree L2 ไฟฉาย LED สำหรับตั้งแคมป์กลางแจ้ง', '', 'Haixnfire TK104 Cree L2 ไฟฉาย LED สำหรับตั้งแคมป์กลางแจ้ง', '', '', '', 569.00, '/upload/f2a6408fd241c908/67971da329ffe64a.png', 1647239986, 0, 3);
INSERT INTO `xy_goods_list` VALUES (1223, '♞♝○1102 g 1000 lumen xm - l 2 ไฟฉายยุทธวิธีแบบชาร์จ usb กันน้ําแบตเตอรี่ 18650 สีเขียว', '', '♞♝○1102 g 1000 lumen xm - l 2 ไฟฉายยุทธวิธีแบบชาร์จ usb กันน้ําแบตเตอรี่ 18650 สีเขียว', '', '', '', 574.00, '/upload/640309c6f67ec143/9bd440241712f62f.png', 1647240036, 0, 3);
INSERT INTO `xy_goods_list` VALUES (1224, 'ไฟฉาย usb led xhp 90.2 26650 แบบชาร์จไฟสําหรับตั้งแคมป์', '', 'ไฟฉาย usb led xhp 90.2 26650 แบบชาร์จไฟสําหรับตั้งแคมป์', '', '', '', 575.00, '/upload/0fc72025daf04cfd/94b64b953c1e6c5d.png', 1647240098, 0, 3);
INSERT INTO `xy_goods_list` VALUES (1225, 'ผ้าห่มขนแกะ Ultimate [ขนาด 200x230 CM] ผ้าห่ม ขนแกะ ผ้าห่มขนนุ่ม ผ้าห่มขนแกะแบบหนา ผ้าห่มขนสัตว์ ผ้าห่มขนแกะหนา ผ้าห่ม', '', 'ผ้าห่มขนแกะ Ultimate [ขนาด 200x230 CM] ผ้าห่ม ขนแกะ ผ้าห่มขนนุ่ม ผ้าห่มขนแกะแบบหนา ผ้าห่มขนสัตว์ ผ้าห่มขนแกะหนา ผ้าห่ม', '', '', '', 890.00, '/upload/c69b402206afb770/71901a56614e7b0c.png', 1647240178, 0, 3);
INSERT INTO `xy_goods_list` VALUES (1226, 'Telecorsa ผ้าห่มโบตั๋น คละสี ขนาด 6 ฟุต รุ่น Lotus-Botun-6-feet-Blanket-Mattress-big-00E-psk2', '', 'Telecorsa ผ้าห่มโบตั๋น คละสี ขนาด 6 ฟุต รุ่น Lotus-Botun-6-feet-Blanket-Mattress-big-00E-psk2', '', '', '', 618.00, '/upload/25bf7e1449b9bd84/84f5427a020adee7.png', 1647240219, 0, 3);
INSERT INTO `xy_goods_list` VALUES (1227, 'Two Sisters ผ้าห่มขนหนู ขนาด 60x80 นิ้ว ขนคู่ 40 ปอนด์', '', 'Two Sisters ผ้าห่มขนหนู ขนาด 60x80 นิ้ว ขนคู่ 40 ปอนด์', '', '', '', 710.00, '/upload/412309c40e30519d/b2bae485bab55772.png', 1647240249, 0, 3);
INSERT INTO `xy_goods_list` VALUES (1228, 'HomePro หมอน BODY พร้อมปลอก DIAMOND 18X50 นิ้ว แบรนด์ HOME LIVING STYLE', '', 'HomePro หมอน BODY พร้อมปลอก DIAMOND 18X50 นิ้ว แบรนด์ HOME LIVING STYLE', '', '', '', 559.00, '/upload/735352d879d29e3b/6cd9cbddec4c3bc9.png', 1647240314, 0, 3);
INSERT INTO `xy_goods_list` VALUES (1229, 'Abloom หมอนโดนัทเมมโมรี่โฟม หมอนรองนั่ง ออกแบบตามสรีระการนั่ง รองรับน้ำหนักได้ดี (สีน้ำตาล) 1 ชิ้น', '', 'Abloom หมอนโดนัทเมมโมรี่โฟม หมอนรองนั่ง ออกแบบตามสรีระการนั่ง รองรับน้ำหนักได้ดี (สีน้ำตาล) 1 ชิ้น', '', '', '', 690.00, '/upload/1844d4dae5d9e681/b3ba4de74123d690.png', 1647240346, 0, 3);
INSERT INTO `xy_goods_list` VALUES (1230, 'Abloom หมอนโดนัทเมมโมรี่โฟม หมอนรองนั่ง ออกแบบตามสรีระการนั่ง รองรับน้ำหนักได้ดี (สีน้ำเงิน) 1 ชิ้น', '', 'Abloom หมอนโดนัทเมมโมรี่โฟม หมอนรองนั่ง ออกแบบตามสรีระการนั่ง รองรับน้ำหนักได้ดี (สีน้ำเงิน) 1 ชิ้น', '', '', '', 690.00, '/upload/511821a39dd4d8d8/2e71c06e8d410c3a.png', 1647240380, 0, 3);
INSERT INTO `xy_goods_list` VALUES (1231, 'Abloom หมอนเพื่อสุขภาพ หมอนโดนัท หมอนรองก้น ป้องกันแผลกดทับ (สีเทา) 1 ชิ้น', '', 'Abloom หมอนเพื่อสุขภาพ หมอนโดนัท หมอนรองก้น ป้องกันแผลกดทับ (สีเทา) 1 ชิ้น', '', '', '', 790.00, '/upload/9e8dd5832e3e7df9/5d49b0ebe9e37334.png', 1647240427, 0, 3);
INSERT INTO `xy_goods_list` VALUES (1232, 'Viva ถุงทรายข้อมือ 0.5 กิโลกรัม', '', 'Viva ถุงทรายข้อมือ 0.5 กิโลกรัม', '', '', '', 750.00, '/upload/49a4f72addbb7b78/eef8090a6deda632.png', 1647240469, 0, 3);
INSERT INTO `xy_goods_list` VALUES (1233, 'หนังเทียม สำหรับผึกซ้อม แข็งแรง มวย', '', 'หนังเทียม สำหรับผึกซ้อม แข็งแรง มวย', '', '', '', 990.00, '/upload/db067447976af7d3/b386d65923112798.png', 1647240537, 0, 3);
INSERT INTO `xy_goods_list` VALUES (1234, 'นวมมวยไทย นวมโรงงานไทย คุณภาพชกมวย หนังเทียม สำหรับผึกซ้อม แข็งแรง ทนทาน!!! ส่งออก', '', 'นวมมวยไทย นวมโรงงานไทย คุณภาพชกมวย หนังเทียม สำหรับผึกซ้อม แข็งแรง ทนทาน!!! ส่งออก', '', '', '', 690.00, '/upload/cf7609746ac1fadc/889fb2d76dd20b12.png', 1647240587, 0, 3);
INSERT INTO `xy_goods_list` VALUES (1235, 'Ray-Ban Round Metal - RB3447N 004/51 -sunglasses', '', 'Ray-Ban Round Metal - RB3447N 004/51 -sunglasses', '', '', '', 6800.00, '/upload/27f6173328a36dc7/0be073c2b804af18.png', 1647241465, 0, 5);
INSERT INTO `xy_goods_list` VALUES (1238, 'กระเป๋าผ้าไหม TORSIL (ทอศิลป์)', '', 'กระเป๋าผ้าไหม TORSIL (ทอศิลป์)', '', '', '', 12000.00, '/upload/c43e34fa400c6445/0f37172f357a5556.jpg', 1647241652, 0, 6);
INSERT INTO `xy_goods_list` VALUES (1239, 'Ray-Ban Round Metal - RX3447V 2503 - Eyeglasses', '', 'Ray-Ban Round Metal - RX3447V 2503 - Eyeglasses', '', '', '', 5600.00, '/upload/99f6e4a5e184a26f/4da7c9e4ae6a2b61.png', 1647241666, 0, 4);
INSERT INTO `xy_goods_list` VALUES (1240, 'Ray-Ban Clubmaster - RB3016 W0366 size 51 -sunglasses', '', 'Ray-Ban Clubmaster - RB3016 W0366 size 51 -sunglasses', '', '', '', 6350.00, '/upload/c59ca40e5ed1b874/8f684cfa52d13703.png', 1647241727, 0, 5);
INSERT INTO `xy_goods_list` VALUES (1241, 'Ray-Ban Round Metal - RB3447 001 size 50 - sunglasses', '', 'Ray-Ban Round Metal - RB3447 001 size 50 - sunglasses', '', '', '', 6350.00, '/upload/c01dce71ffba0732/6d7027b43ad4c74c.png', 1647241808, 0, 5);
INSERT INTO `xy_goods_list` VALUES (1242, 'Ray-Ban Round Metal - RX3447V 2991', '', 'Ray-Ban Round Metal - RX3447V 2991', '', '', '', 5600.00, '/upload/130f538071ca5b5c/a8e00e751cd142d2.png', 1647241866, 0, 5);
INSERT INTO `xy_goods_list` VALUES (1243, 'Ray-Ban Aviator Large Metal Polarized - RB3025 002/58 size 58 - sunglasses', '', 'Ray-Ban Aviator Large Metal Polarized - RB3025 002/58 size 58 - sunglasses', '', '', '', 8500.00, '/upload/d5d3fa3b2db7b58f/5a8ed89f9fa05644.png', 1647241919, 0, 5);
INSERT INTO `xy_goods_list` VALUES (1244, 'แอร์ จอร์แดน 1 โลว์ วูลฟ์ เกรย์ (ญ)', '', 'แอร์ จอร์แดน 1 โลว์ วูลฟ์ เกรย์ (ญ)', '', '', '', 19200.00, '/upload/c766dd217219e55c/4613053c0efe18ae.jpg', 1647241965, 0, 6);
INSERT INTO `xy_goods_list` VALUES (1245, 'Ray-Ban Wayfarer Polarized - RB2140F 901/58 size 54', '', 'Ray-Ban Wayfarer Polarized - RB2140F 901/58 size 54', '', '', '', 8500.00, '/upload/98a9d343d9fb2358/5e5f2de4437c4934.png', 1647241972, 0, 5);
INSERT INTO `xy_goods_list` VALUES (1246, '[ของแท้] Perry Ellis นาฬิกาข้อมือผู้ชาย รุ่น DECAGON 08003-02 สีเงิน [รับประกันศูนย์ CMG]', '', '[ของแท้] Perry Ellis นาฬิกาข้อมือผู้ชาย รุ่น DECAGON 08003-02 สีเงิน [รับประกันศูนย์ CMG]', '', '', '', 6500.00, '/upload/754caa58f16b4340/b327cbe20f5c7ad0.png', 1647242166, 0, 5);
INSERT INTO `xy_goods_list` VALUES (1247, '[ของแท้] Emporio Armani นาฬิกาข้อมือ เอ็มโพริโอ อาร์มานี รุ่น AR11088 สี BLACK [รับประกันศูนย์ CMG]', '', '[ของแท้] Emporio Armani นาฬิกาข้อมือ เอ็มโพริโอ อาร์มานี รุ่น AR11088 สี BLACK [รับประกันศูนย์ CMG]', '', '', '', 5750.00, '/upload/642c6ffa5d97ffc5/eb9085f0b2e00149.png', 1647242232, 0, 5);
INSERT INTO `xy_goods_list` VALUES (1248, '[ของแท้] Emporio Armani นาฬิกาผู้หญิง รุ่น AR11055 [รับประกันศูนย์ CMG]', '', '[ของแท้] Emporio Armani นาฬิกาผู้หญิง รุ่น AR11055 [รับประกันศูนย์ CMG]', '', '', '', 6950.00, '/upload/4d9b49e8cfe35a29/643152f0cb490a04.png', 1647242295, 0, 5);
INSERT INTO `xy_goods_list` VALUES (1249, '[ของแท้] Michael Kors นาฬิกาข้อมือผู้หญิง รุ่น RUNWAY MERCER MK6713 [รับประกันศูนย์ CMG]', '', '[ของแท้] Michael Kors นาฬิกาข้อมือผู้หญิง รุ่น RUNWAY MERCER MK6713 [รับประกันศูนย์ CMG]', '', '', '', 6750.00, '/upload/5a8864a29f907a85/d7b41ae974ab7b94.png', 1647242360, 0, 5);
INSERT INTO `xy_goods_list` VALUES (1250, 'NIKE DUNK ต่ำ BLACK WHITE', '', 'NIKE DUNK ต่ำ BLACK WHITE', '', '', '', 10400.00, '/upload/315764409ce441b9/98c0019d0c80550c.jpg', 1647242630, 0, 6);
INSERT INTO `xy_goods_list` VALUES (1251, 'Adidas Yeezy350 Bred ของแท้100% ไม่แท้คืนเงิน', '', 'Adidas Yeezy350 Bred ของแท้100% ไม่แท้คืนเงิน', '', '', '', 18900.00, '/upload/714772929efd3c2d/4c6dcc387bf3aa54.png', 1647242760, 0, 6);
INSERT INTO `xy_goods_list` VALUES (1252, 'TORY BURCH SANDAL/black, ivory', '', 'TORY BURCH SANDAL/black, ivory', '', '', '', 5100.00, '/upload/fab948bc909d5e31/1159d07c010e5f11.png', 1647242846, 0, 5);
INSERT INTO `xy_goods_list` VALUES (1253, 'TORY BURCH รองเท้ากีฬา เสริมส้น 4 ซม. สวมใส่สบาย เข้ากับทุกการแต่งกาย แฟชั่นฤดูใบไม้ผลิ สําหรับผู้หญิง 2022', '', 'TORY BURCH รองเท้ากีฬา เสริมส้น 4 ซม. สวมใส่สบาย เข้ากับทุกการแต่งกาย แฟชั่นฤดูใบไม้ผลิ สําหรับผู้หญิง 2022', '', '', '', 6132.00, '/upload/5d0f5589e50231a3/055e735f4f98401d.png', 1647242949, 0, 5);
INSERT INTO `xy_goods_list` VALUES (1254, 'Adidas Yeezy Boost350 zebra ของแท้?%', '', 'Adidas Yeezy Boost350 zebra ของแท้?%', '', '', '', 19500.00, '/upload/8720b4d4ec7437bc/a260279e98909fd9.png', 1647243012, 0, 6);
INSERT INTO `xy_goods_list` VALUES (1255, 'Zhao Silu Contrast Style HOGAN H585 Bobo รองเท้าผ้าใบลําลอง ส้นหนา สีขาว เหมาะกับการวิ่ง เล่นกีฬา สําหรับสตรี', '', 'Zhao Silu Contrast Style HOGAN H585 Bobo รองเท้าผ้าใบลําลอง ส้นหนา สีขาว เหมาะกับการวิ่ง เล่นกีฬา สําหรับสตรี', '', '', '', 5423.00, '/upload/f90acb489db82389/f6a21fe35f6ca509.png', 1647243134, 0, 5);
INSERT INTO `xy_goods_list` VALUES (1256, 'Lv Sarah Monogram ‼️ของแท้?‼️มือสอง', '', 'Lv Sarah Monogram ‼️ของแท้?‼️มือสอง', '', '', '', 5999.00, '/upload/140dcde9e8f3b3a0/b9fb28a913520d58.png', 1647243230, 0, 5);
INSERT INTO `xy_goods_list` VALUES (1257, 'BaoBao Rock Small Matte คุณภาพดั้งเดิมของญี่ปุ่น รับประกันฟรีภายในหนึ่งปี', '', 'BaoBao Rock Small Matte คุณภาพดั้งเดิมของญี่ปุ่น รับประกันฟรีภายในหนึ่งปี', '', '', '', 23450.00, '/upload/84b0b945dc44b72a/796803d629906892.jpg', 1647243295, 0, 6);
INSERT INTO `xy_goods_list` VALUES (1258, 'Lv Sarah monogram wallet กระเป๋าสตางค์หลุยส์ ของแท้ ?%', '', 'Lv Sarah monogram wallet กระเป๋าสตางค์หลุยส์ ของแท้ ?%', '', '', '', 6999.00, '/upload/6c7a2190a6844552/dac288dfa601ecb5.png', 1647243303, 0, 5);
INSERT INTO `xy_goods_list` VALUES (1259, '☆New Mcm Flap Wallet☆ ของแท้ 100%', '', '☆New Mcm Flap Wallet☆ ของแท้ 100%', '', '', '', 5990.00, '/upload/b9101d504d64aebd/3b5154f89112efa5.png', 1647243450, 0, 5);
INSERT INTO `xy_goods_list` VALUES (1260, 'ITO Almond 24 นิ้ว(61 ซม)กระเป๋าเดินทางCheck-inพร้อมเข็มขัดคาดตัวกล่องเรียบหรูดูดีระบบล๊อกใส่รหัสมาตรฐานTSA', '', 'ITO Almond 24 นิ้ว(61 ซม)กระเป๋าเดินทางCheck-inพร้อมเข็มขัดคาดตัวกล่องเรียบหรูดูดีระบบล๊อกใส่รหัสมาตรฐานTSA', '', '', '', 18290.00, '/upload/73550d0d7833ec7a/c722b5f52615e71e.jpg', 1647243460, 0, 6);
INSERT INTO `xy_goods_list` VALUES (1261, '?พร้อมส่ง?Mcm ของแท้ ?% Trifold Wallet Size Mini สี Cognac', '', '?พร้อมส่ง?Mcm ของแท้ ?% Trifold Wallet Size Mini สี Cognac', '', '', '', 7990.00, '/upload/0ad5d4d773bd1d01/c80c820fcd3112a6.png', 1647243518, 0, 5);
INSERT INTO `xy_goods_list` VALUES (1262, 'POWER REFORM ลู่วิ่งไฟฟ้า รุ่น PANDORA มอเตอร์ 4.8 แรงม้า สายพาน 48 ซม. ต่อ ZWIFT ได้ พร้อมเครื่องนวดและของแถม Treadmill', '', 'POWER REFORM ลู่วิ่งไฟฟ้า รุ่น PANDORA มอเตอร์ 4.8 แรงม้า สายพาน 48 ซม. ต่อ ZWIFT ได้ พร้อมเครื่องนวดและของแถม Treadmill', '', '', '', 23900.00, '/upload/4f150f6e557a432a/fec46ce0ae0cc196.jpg', 1647243676, 0, 6);
INSERT INTO `xy_goods_list` VALUES (1263, 'แท้?Mcm small walletรุ่นพับ(ไม่แท้คืนเงิน)', '', 'แท้?Mcm small walletรุ่นพับ(ไม่แท้คืนเงิน)', '', '', '', 6890.00, '/upload/33feb342f06035ab/281ac990bda6b799.png', 1647243722, 0, 5);
INSERT INTO `xy_goods_list` VALUES (1264, 'จักรยานออกกำลังกาย รุ่น SKY - เครื่องออกกำลังกาย แบรนด์ IRONTEC', '', 'จักรยานออกกำลังกาย รุ่น SKY - เครื่องออกกำลังกาย แบรนด์ IRONTEC', '', '', '', 12900.00, '/upload/f13327a8e685de1c/462e13a0552141e2.jpg', 1647243738, 0, 6);
INSERT INTO `xy_goods_list` VALUES (1265, '?พร้อมส่ง?Mcm ของแท้ ?% กระเป๋าสตางค์ยาว 2Fold Wallet สี Black', '', '?พร้อมส่ง?Mcm ของแท้ ?% กระเป๋าสตางค์ยาว 2Fold Wallet สี Black', '', '', '', 7990.00, '/upload/e6835a33d3aaa3a9/65bdfd6440ecead5.png', 1647243923, 0, 5);
INSERT INTO `xy_goods_list` VALUES (1266, 'POWER REFORM จักรยานเอนปั่น รุ่น BEACH BENCH ต่อ ZWIFT ได้ จักรยานออกกำลังกาย Recumbent Bike เกรด Semi-Commercial', '', 'POWER REFORM จักรยานเอนปั่น รุ่น BEACH BENCH ต่อ ZWIFT ได้ จักรยานออกกำลังกาย Recumbent Bike เกรด Semi-Commercial', '', '', '', 12990.00, '/upload/ce89214c01b73095/e3deae160b8ad667.jpg', 1647244057, 0, 6);
INSERT INTO `xy_goods_list` VALUES (1267, '?พร้อมส่ง?Mcm แท้?% พวงกุญแจ Neo Duke Backpack Charm สี Cognac', '', '?พร้อมส่ง?Mcm แท้?% พวงกุญแจ Neo Duke Backpack Charm สี Cognac', '', '', '', 9200.00, '/upload/d00335d9bda56a1e/78a679a6e043360b.png', 1647244111, 0, 5);
INSERT INTO `xy_goods_list` VALUES (1268, 'ดัมเบล HEX 8 คู่ พร้อมขาตั้ง - เครื่องออกกำลังกาย แบรนด์ IRONTEC', '', 'ดัมเบล HEX 8 คู่ พร้อมขาตั้ง - เครื่องออกกำลังกาย แบรนด์ IRONTEC', '', '', '', 22900.00, '/upload/96f1e68acc6abfd8/f79801e47e470a30.jpg', 1647244186, 0, 6);
INSERT INTO `xy_goods_list` VALUES (1269, 'เครื่องเดินวงรี รุ่น E140 - เครื่องออกกำลังกาย แบรนด์ IRONTEC', '', 'เครื่องเดินวงรี รุ่น E140 - เครื่องออกกำลังกาย แบรนด์ IRONTEC', '', '', '', 14900.00, '/upload/04eca7ef4fb2a5ec/d398461960f5323f.jpg', 1647244276, 0, 6);
INSERT INTO `xy_goods_list` VALUES (1270, 'โฮมยิม รุ่น H1 - เครื่องออกกำลังกาย แบรนด์ IRONTEC', '', 'โฮมยิม รุ่น H1 - เครื่องออกกำลังกาย แบรนด์ IRONTEC', '', '', '', 11900.00, '/upload/54368b745188d0fd/8d74a342780b38ef.jpg', 1647244371, 0, 6);
INSERT INTO `xy_goods_list` VALUES (1271, 'Suunto Smartwatch นาฬิกามัลติสปอร์ต รุ่น Suunto9(Baro) สี Black รับประกันศูนย์ไทย 2 ปี', '', 'Suunto Smartwatch นาฬิกามัลติสปอร์ต รุ่น Suunto9(Baro) สี Black รับประกันศูนย์ไทย 2 ปี', '', '', '', 15900.00, '/upload/4188cd1ebdffd29e/e07b395d0db61b55.jpg', 1647244506, 0, 6);
INSERT INTO `xy_goods_list` VALUES (1272, 'SUUNTO 9 PEAK -ใหม่ล่าสุด Suunto Multi Sport & GPS Watch นาฬิกามัลติสปอร์ต', '', 'SUUNTO 9 PEAK -ใหม่ล่าสุด Suunto Multi Sport & GPS Watch นาฬิกามัลติสปอร์ต', '', '', '', 25900.00, '/upload/6a8ae97303142c7c/6a1a7389b0dd3898.jpg', 1647244596, 0, 6);
INSERT INTO `xy_goods_list` VALUES (1273, 'โน๊ตบุ๊คมือสองสภาพดี Notebook Fujitsu A572 Intel Core i3 เรียนออนไลน์ หน้าจอ15.6นิ้ว​ มีของแถม(รับประกัน 3 เดือน)', '', 'โน๊ตบุ๊คมือสองสภาพดี Notebook Fujitsu A572 Intel Core i3 เรียนออนไลน์ หน้าจอ15.6นิ้ว​ มีของแถม(รับประกัน 3 เดือน)', '', '', '', 5590.00, '/upload/67b07ef4a091d738/65afcd1eb64dc7c4.png', 1647244658, 0, 5);
INSERT INTO `xy_goods_list` VALUES (1274, 'Lenovo Xiaoxin Pad แท็บเล็ต 11 นิ้ว สำหรับเรียนออนไลน์ ดูหนัง รับชมวิดีโอ 2k แบบ Full HD 6GB + 128GB Tablet WIFI สีเทา', '', 'Lenovo Xiaoxin Pad แท็บเล็ต 11 นิ้ว สำหรับเรียนออนไลน์ ดูหนัง รับชมวิดีโอ 2k แบบ Full HD 6GB + 128GB Tablet WIFI สีเทา', '', '', '', 9500.00, '/upload/6abfc0a5c6fc618b/34641e4c9f6c86e4.png', 1647244777, 0, 5);
INSERT INTO `xy_goods_list` VALUES (1275, 'SEIKO 5 SPORTS THAILAND LIMITED EDITION SRPF91K', '', 'SEIKO 5 SPORTS THAILAND LIMITED EDITION SRPF91K', '', '', '', 22790.00, '/upload/642c7ff199e815b6/ee48d752439efb8f.jpg', 1647245030, 0, 6);
INSERT INTO `xy_goods_list` VALUES (1276, 'Lenovo Tablet Xiaoxin Pad แท็บเล็ต 11 นิ้ว 6GB+128GB รองรับ Play Store ภาษาไทย รับประกัน 1 ปีในไทย', '', 'Lenovo Tablet Xiaoxin Pad แท็บเล็ต 11 นิ้ว 6GB+128GB รองรับ Play Store ภาษาไทย รับประกัน 1 ปีในไทย', '', '', '', 7990.00, '/upload/9e6a614b020c0a66/4a38778e138eeb38.png', 1647245157, 0, 5);
INSERT INTO `xy_goods_list` VALUES (1277, 'Collector Item)Seiko Prospex Tuna Zimbe Thailand Limited Edition No.13 รหัสรุ่น SRPE14K1. (Zimbe13)', '', 'Collector Item)Seiko Prospex Tuna Zimbe Thailand Limited Edition No.13 รหัสรุ่น SRPE14K1. (Zimbe13)', '', '', '', 30990.00, '/upload/3d7add7daa2ba529/498aaa9d01bf22ac.jpg', 1647245185, 0, 6);
INSERT INTO `xy_goods_list` VALUES (1278, '[สินค้าขายดี] BMAX I11 แท็บเล็ต 4G ใส่ซิมโทรได้ 8GB+128GB รองรับภาษาไทย', '', '[สินค้าขายดี] BMAX I11 แท็บเล็ต 4G ใส่ซิมโทรได้ 8GB+128GB รองรับภาษาไทย', '', '', '', 7490.00, '/upload/36833457ecbd7e99/6a4cde0db3e188de.png', 1647245348, 0, 5);
INSERT INTO `xy_goods_list` VALUES (1279, 'โซฟาผีเสื้อ สไตล์เกาหลี รุ่น2ที่นั่ง', '', 'โซฟาผีเสื้อ สไตล์เกาหลี รุ่น2ที่นั่ง', '', '', '', 10395.00, '/upload/53b0c94b5ab8e2d0/1ab616aebd24380e.jpg', 1647245363, 0, 6);
INSERT INTO `xy_goods_list` VALUES (1280, 'โซฟา เก้าอี้พักผ่อน armchair nordic style', '', 'โซฟา เก้าอี้พักผ่อน armchair nordic style', '', '', '', 13990.00, '/upload/5671898ae18771a9/e42776f10d526418.jpg', 1647245487, 0, 6);
INSERT INTO `xy_goods_list` VALUES (1281, 'เก้าอี้นวด massage chair ใหม่ ไฟฟ้า แรงโน้มถ่วงเป็นศูนย์ นวดแผนไทย ถุงลมนิรภัยที่ห่อหุ้มอย่างเต็มที่ การบีบอัดที่ส', '', 'เก้าอี้นวด massage chair ใหม่ ไฟฟ้า แรงโน้มถ่วงเป็นศูนย์ นวดแผนไทย ถุงลมนิรภัยที่ห่อหุ้มอย่างเต็มที่ การบีบอัดที่ส', '', '', '', 22990.00, '/upload/42e225269c51f828/bdfd36ec53089719.jpg', 1647245722, 0, 3);
INSERT INTO `xy_goods_list` VALUES (1282, 'Alldocube iPlay 20P Tablet จอ10.1นิ้ว แท็บเล็ต Android 11 RAM 6GB ROM 128GB รองรับการโทรผ่าน4G แท็บเล็ตถูกๆ WiFi 6000mAh', '', 'Alldocube iPlay 20P Tablet จอ10.1นิ้ว แท็บเล็ต Android 11 RAM 6GB ROM 128GB รองรับการโทรผ่าน4G แท็บเล็ตถูกๆ WiFi 6000mAh', '', '', '', 5989.00, '/upload/e03e9a84a71385dd/20d9a90f5d17b09e.png', 1647245949, 0, 5);
INSERT INTO `xy_goods_list` VALUES (1283, 'Ysl card wallet envelope ของใหม่ สีดำอะไหล่ เงิน/ทอง ขาวทอง ชมพูทอง ของแท้ 100% ค่ะ ไม่ขายของปลอมค่ะ', '', 'Ysl card wallet envelope ของใหม่ สีดำอะไหล่ เงิน/ทอง ขาวทอง ชมพูทอง ของแท้ 100% ค่ะ ไม่ขายของปลอมค่ะ', '', '', '', 16999.00, '/upload/cd415f3739195c29/3ebe54673c1ffaca.jpg', 1647245950, 0, 6);
INSERT INTO `xy_goods_list` VALUES (1284, 'New Gucci interlocking wallet', '', 'New Gucci interlocking wallet', '', '', '', 15999.00, '/upload/e7ff1e3af57148e3/2bda41887549aec9.jpg', 1647246073, 0, 6);
INSERT INTO `xy_goods_list` VALUES (1285, 'ราคาถูกที่สุด ของแท้ 100% Balenciaga Phone Bag', '', 'ราคาถูกที่สุด ของแท้ 100% Balenciaga Phone Bag', '', '', '', 23500.00, '/upload/e89e44e46b9e7b05/79cf23b91e97f0e3.jpg', 1647246207, 0, 6);
INSERT INTO `xy_goods_list` VALUES (1286, 'Xiaomi Redmi 10 (4/64GB) แถมฟรี!! ซิมเน็ตเต็มสปีด ใช้ได้นาน 12 เดือน รวม 120GB!!', '', 'Xiaomi Redmi 10 (4/64GB) แถมฟรี!! ซิมเน็ตเต็มสปีด ใช้ได้นาน 12 เดือน รวม 120GB!!', '', '', '', 5299.00, '/upload/9d77ff8a9e0b69d7/b5d80532b367edc1.png', 1647246226, 0, 5);
INSERT INTO `xy_goods_list` VALUES (1287, 'Xiaomi Redmi Note 10 5G (4/128GB) แถมฟรี!! ซิมเน็ตเต็มสปีด ใช้ได้นาน 12 เดือน รวม 120GB!!', '', 'Xiaomi Redmi Note 10 5G (4/128GB) แถมฟรี!! ซิมเน็ตเต็มสปีด ใช้ได้นาน 12 เดือน รวม 120GB!!', '', '', '', 5999.00, '/upload/b4059c2ec3cd3e53/26440609fa590f44.png', 1647246317, 0, 5);
INSERT INTO `xy_goods_list` VALUES (1288, 'Xiaomi 11 Lite 5G NE (8/128GB) แถมฟรี!! ซิมเน็ตเต็มสปีด ใช้ได้นาน 12 เดือน รวม 120GB!! [ทักแชท สั่งซื้อเครื่องถูกพร้อมโปร]', '', 'Xiaomi 11 Lite 5G NE (8/128GB) แถมฟรี!! ซิมเน็ตเต็มสปีด ใช้ได้นาน 12 เดือน รวม 120GB!! [ทักแชท สั่งซื้อเครื่องถูกพร้อมโปร]', '', '', '', 9499.00, '/upload/ba354aea8731e3d1/c72312687106ab11.png', 1647246614, 0, 5);
INSERT INTO `xy_goods_list` VALUES (1289, 'ถูกที่สุด ของแท้ 100% Prada hobo bag', '', 'ถูกที่สุด ของแท้ 100% Prada hobo bag', '', '', '', 31500.00, '/upload/e40bec96cdf8973a/b98585ad7ba8af2d.jpg', 1647246650, 0, 6);
INSERT INTO `xy_goods_list` VALUES (1290, '[New] OPPO A95 (8+128) โทรศัพท์มือถือ บางเบา ชาร์จไว 33W แบตเตอรี่ 5000mAh รับประกัน 12 เดือน พร้อมของแถม', '', '[New] OPPO A95 (8+128) โทรศัพท์มือถือ บางเบา ชาร์จไว 33W แบตเตอรี่ 5000mAh รับประกัน 12 เดือน พร้อมของแถม', '', '', '', 9499.00, '/upload/b5a185675f069014/f02bdffb8d642a78.png', 1647246694, 0, 5);
INSERT INTO `xy_goods_list` VALUES (1291, '[New][Online Exclusive] OPPO A74 5G (6+128) โทรศัพท์มือถือ จอ 6.5 นิ้ว รองรับ 5G รับประกัน 12 เดือน', '', '[New][Online Exclusive] OPPO A74 5G (6+128) โทรศัพท์มือถือ จอ 6.5 นิ้ว รองรับ 5G รับประกัน 12 เดือน', '', '', '', 7999.00, '/upload/ec1a274988e67a09/b4e01fb46412f5da.png', 1647246767, 0, 5);
INSERT INTO `xy_goods_list` VALUES (1292, 'Samsung Galaxy M32 (8/128GB)', '', 'Samsung Galaxy M32 (8/128GB)', '', '', '', 7390.00, '/upload/28f039f7be74f716/c69d8d2ba2acd074.png', 1647246820, 0, 5);
INSERT INTO `xy_goods_list` VALUES (1293, 'Gucci / New / Dionysus series GG กระเป๋าสะพายใบเล็ก / กระเป๋าถือผู้หญิง / กระเป๋าแฟชั่น / กระเป๋าสายโซ่ / ของแท้ 100%)', '', 'Gucci / New / Dionysus series GG กระเป๋าสะพายใบเล็ก / กระเป๋าถือผู้หญิง / กระเป๋าแฟชั่น / กระเป๋าสายโซ่ / ของแท้ 100%)', '', '', '', 19800.00, '/upload/fa4c794f2bdf4c3e/c2a7d1f2bbe7317b.jpg', 1647246892, 0, 6);
INSERT INTO `xy_goods_list` VALUES (1294, 'ELECTROLUX เตาอบไมโครเวฟ พร้อมระบบย่าง รุ่น EMS3085X ขนาด 30 ลิตร', '', 'ELECTROLUX เตาอบไมโครเวฟ พร้อมระบบย่าง รุ่น EMS3085X ขนาด 30 ลิตร', '', '', '', 5590.00, '/upload/971eea6536c9e55c/cafaea6aeb762a22.png', 1647246896, 0, 5);
INSERT INTO `xy_goods_list` VALUES (1295, 'Electrolux EMS3087X ไมโครเวฟ 30 ลิตร ฟังก์ชันผสม แถมฟรี !! Electrolux E6TB1-80GB เครื่องปั่นผลไม้', '', 'Electrolux EMS3087X ไมโครเวฟ 30 ลิตร ฟังก์ชันผสม แถมฟรี !! Electrolux E6TB1-80GB เครื่องปั่นผลไม้', '', '', '', 7990.00, '/upload/0d9ba24fcb4f23a3/e92c3a65ac444968.png', 1647247278, 0, 5);
INSERT INTO `xy_goods_list` VALUES (1296, 'ถูกที่สุด ของแท้ 100% Boyy bobby 18', '', 'ถูกที่สุด ของแท้ 100% Boyy bobby 18', '', '', '', 30500.00, '/upload/a12183e3164992de/dcaaee290dd4bd77.jpg', 1647247295, 0, 6);
INSERT INTO `xy_goods_list` VALUES (1297, 'ไมโครเวฟ Steam Oven TOSHIBA รุ่น MS1-TC20SC', '', 'ไมโครเวฟ Steam Oven TOSHIBA รุ่น MS1-TC20SC', '', '', '', 9484.00, '/upload/c0586e73b960f8d9/485e3cb06d9c5283.png', 1647247349, 0, 5);
INSERT INTO `xy_goods_list` VALUES (1298, 'Samsung ตู้เย็น 2 ประตู รุ่น RT25FGRADSA/ST 9.1 คิว', '', 'Samsung ตู้เย็น 2 ประตู รุ่น RT25FGRADSA/ST 9.1 คิว', '', '', '', 9290.00, '/upload/5a272e0981f71bf5/221048ba238477ad.png', 1647247437, 0, 5);
INSERT INTO `xy_goods_list` VALUES (1299, 'Samsung ตู้เย็น 2 ประตู RT29K501JB1/ST พร้อมด้วย Mono Cooling, 10.7 Q', '', 'Samsung ตู้เย็น 2 ประตู RT29K501JB1/ST พร้อมด้วย Mono Cooling, 10.7 Q', '', '', '', 9990.00, '/upload/2c83845e4fbe38b0/a384104b402f58bc.png', 1647247525, 0, 5);
INSERT INTO `xy_goods_list` VALUES (1300, 'Samsung เครื่องซักผ้าฝาบน WA11T5260BW/ST พร้อมด้วย Digital Inverter, 11 กก.', '', 'Samsung เครื่องซักผ้าฝาบน WA11T5260BW/ST พร้อมด้วย Digital Inverter, 11 กก.', '', '', '', 7990.00, '/upload/d699d5a32ae44db4/a56e0bd32b3a45bb.png', 1647247654, 0, 5);
INSERT INTO `xy_goods_list` VALUES (1301, '[LT22034 เงินคืน16%] [สูงสุด 1,00COINS] SAMSUNG ซัมซุง เครื่องซักผ้าฝาบน 15 กิโล รุ่น WA15R6380BV/ST', '', '[LT22034 เงินคืน16%] [สูงสุด 1,00COINS] SAMSUNG ซัมซุง เครื่องซักผ้าฝาบน 15 กิโล รุ่น WA15R6380BV/ST', '', '', '', 9990.00, '/upload/2c176fc191ae18d7/af10685759886dfb.png', 1647247737, 0, 5);
INSERT INTO `xy_goods_list` VALUES (1302, 'Gucci / new / GG Supreme canvas belt bag / shoulder bag / กระเป๋าสะพายข้าง กระเป๋าคาดหน้าอก ของแท้ 100%', '', 'Gucci / new / GG Supreme canvas belt bag / shoulder bag / กระเป๋าสะพายข้าง กระเป๋าคาดหน้าอก ของแท้ 100%', '', '', '', 15900.00, '/upload/0aa87c326e529715/7cfa3fbe75ede174.jpg', 1647247754, 0, 6);
INSERT INTO `xy_goods_list` VALUES (1303, 'Toshiba เครื่องซักผ้า 1 ถัง อัตโนมัติ ความจุ 10 กก. รุ่น AW-B1100GT(WD)', '', 'Toshiba เครื่องซักผ้า 1 ถัง อัตโนมัติ ความจุ 10 กก. รุ่น AW-B1100GT(WD)', '', '', '', 6990.00, '/upload/ec830f81eeb2b811/f8852fae4f263724.png', 1647247881, 0, 5);
INSERT INTO `xy_goods_list` VALUES (1304, 'LG เครื่องซักผ้า ฝาบน T2108VSPM8 8 กิโล สีเทา TurboDrum™ Smart Inverter Auto Restart T2108 2108', '', 'LG เครื่องซักผ้า ฝาบน T2108VSPM8 8 กิโล สีเทา TurboDrum™ Smart Inverter Auto Restart T2108 2108', '', '', '', 6490.00, '/upload/5ca399e9ed03cb52/56594559aa912b83.png', 1647248088, 0, 5);
INSERT INTO `xy_goods_list` VALUES (1305, 'PreSonus ตู้ลำโพงมอนิเตอร์สตูดิโอ Eris E3.5 ขนาด 3.5 นิ้ว (1คู่)', '', 'PreSonus ตู้ลำโพงมอนิเตอร์สตูดิโอ Eris E3.5 ขนาด 3.5 นิ้ว (1คู่)', '', '', '', 5900.00, '/upload/d4f0b3cb82c3b7ac/99108f4a4b977445.png', 1647248228, 0, 5);
INSERT INTO `xy_goods_list` VALUES (1306, 'Yamaha HS5i ลำโพงมอนิเตอร์ Yamaha HS5 Studio Monitor ลำโพง +ประกันศูนย์ 1ปี Music Arms', '', 'Yamaha HS5i ลำโพงมอนิเตอร์ Yamaha HS5 Studio Monitor ลำโพง +ประกันศูนย์ 1ปี Music Arms', '', '', '', 8000.00, '/upload/06c90e71333ec925/0c293930e3a006e5.png', 1647248378, 0, 5);
INSERT INTO `xy_goods_list` VALUES (1307, 'BaoBao Daypack ของใหม่ แท้100%', '', 'BaoBao Daypack ของใหม่ แท้100%', '', '', '', 16580.00, '/upload/f6a627d25586fc3e/cfb552869650b38d.jpg', 1647248483, 0, 6);
INSERT INTO `xy_goods_list` VALUES (1308, 'VALENTIER RE-EDITION Lace Dress เดรส เดรสลูกไม้ เดรสลายดอกไม้ เดรสออกงาน เสื้อผ้าผู้หญิง เสื้อผ้าแฟชั่น', '', 'VALENTIER RE-EDITION Lace Dress เดรส เดรสลูกไม้ เดรสลายดอกไม้ เดรสออกงาน เสื้อผ้าผู้หญิง เสื้อผ้าแฟชั่น', '', '', '', 13000.00, '/upload/99e7dffda5b3e1cc/5adf954c35ea1773.jpg', 1647248509, 0, 6);
INSERT INTO `xy_goods_list` VALUES (1309, 'Audio Technica ATH-M50X หูฟังมอนิเตอร์', '', 'Audio Technica ATH-M50X หูฟังมอนิเตอร์', '', '', '', 6141.00, '/upload/338038d0c1258f23/57023f95b7bf44bb.png', 1647248621, 0, 5);
INSERT INTO `xy_goods_list` VALUES (1310, 'Audio Technica ATH-SR5BT หูฟังไร้สาย', '', 'Audio Technica ATH-SR5BT หูฟังไร้สาย', '', '', '', 7400.00, '/upload/6c08b00d02d96650/1d316eee81bf4459.png', 1647248694, 0, 5);
INSERT INTO `xy_goods_list` VALUES (1311, 'Focusrite Scarlett 2i2 (Gen 3) ออดิโออินเตอร์เฟส อุปกรณ์บันทึกเสียง โฮมสตูดิโอ 2in/2out USB Audio Interface (ProPlugin)', '', 'Focusrite Scarlett 2i2 (Gen 3) ออดิโออินเตอร์เฟส อุปกรณ์บันทึกเสียง โฮมสตูดิโอ 2in/2out USB Audio Interface (ProPlugin)', '', '', '', 7290.00, '/upload/9dece49569a408c4/e6988f6e40d48668.png', 1647248899, 0, 5);
INSERT INTO `xy_goods_list` VALUES (1312, 'HyperX QuadCast S RGB USB Condenser Microphone รองรับ PC PS4 and Mac (HMIQ1S-XX-RG/G)', '', 'HyperX QuadCast S RGB USB Condenser Microphone รองรับ PC PS4 and Mac (HMIQ1S-XX-RG/G)', '', '', '', 5990.00, '/upload/a7d3cb89827235d9/9391ceeeb628d61d.png', 1647249137, 0, 5);
INSERT INTO `xy_goods_list` VALUES (1313, 'Apogee Mic Plus ไมโครโฟนยูเอสบี USB Microphone', '', 'Apogee Mic Plus ไมโครโฟนยูเอสบี USB Microphone', '', '', '', 9840.00, '/upload/57f3ee6f30008db1/899ae561556526bd.png', 1647249278, 0, 5);
INSERT INTO `xy_goods_list` VALUES (1314, 'Shure MV7 USB Podcast Microphone', '', 'Shure MV7 USB Podcast Microphone', '', '', '', 8599.00, '/upload/c4ccce7d9ea776c0/ea5e60bab45d7505.png', 1647249350, 0, 5);
INSERT INTO `xy_goods_list` VALUES (1315, 'Marshall Acton II Bluetooth Speaker ลำโพงมาแชล รุ่น Acton ll', '', 'Marshall Acton II Bluetooth Speaker ลำโพงมาแชล รุ่น Acton ll', '', '', '', 11990.00, '/upload/61bbbe0bb5459797/45903b0718852947.jpg', 1647249355, 0, 6);
INSERT INTO `xy_goods_list` VALUES (1316, 'Samson Q9U XLR/USB Dynamic Broadcast Microphone รุ่นใหมาล่าสุด ไดนามิกซ์แบบUSB ที่ดีที่สุด!! สำหรับการทำ padcast', '', 'Samson Q9U XLR/USB Dynamic Broadcast Microphone รุ่นใหมาล่าสุด ไดนามิกซ์แบบUSB ที่ดีที่สุด!! สำหรับการทำ padcast', '', '', '', 6400.00, '/upload/b482996538c83297/77ccc70080b179bb.png', 1647249491, 0, 5);
INSERT INTO `xy_goods_list` VALUES (1317, '[กทม ส่งgrabทันที] AKG LYRA Ultra-HD Multimode USB Microphone ไมโครโฟน', '', '[กทม ส่งgrabทันที] AKG LYRA Ultra-HD Multimode USB Microphone ไมโครโฟน', '', '', '', 6490.00, '/upload/099c9c1c74eae49b/2064632308e8056e.png', 1647249616, 0, 5);
INSERT INTO `xy_goods_list` VALUES (1318, 'Blue Spark Digital Studio Condenser USB Microphone ไมค์บันทึกเสียง SPARK DIGITAL ไมค์ห้องอัด จากแบรนด์ชั้นนำ BLUE', '', 'Blue Spark Digital Studio Condenser USB Microphone ไมค์บันทึกเสียง SPARK DIGITAL ไมค์ห้องอัด จากแบรนด์ชั้นนำ BLUE', '', '', '', 5580.00, '/upload/bbd34664144bc0e4/9101688aa3f9c773.png', 1647249961, 0, 5);
INSERT INTO `xy_goods_list` VALUES (1319, 'HARMAN KARDON SOUNDSTICKS4 ลำโพงบลูทูธแบบพกพา', '', 'HARMAN KARDON SOUNDSTICKS4 ลำโพงบลูทูธแบบพกพา', '', '', '', 12900.00, '/upload/cfaa2ff9962dc195/2cd9ee975971a525.jpg', 1647250096, 0, 6);
INSERT INTO `xy_goods_list` VALUES (1320, 'INDEX LIVING MALL เตียงนอน รุ่นสเปนเซอร์ ขนาด 6 ฟุต - สีน้ำตาลเข้ม/เทา', '', 'INDEX LIVING MALL เตียงนอน รุ่นสเปนเซอร์ ขนาด 6 ฟุต - สีน้ำตาลเข้ม/เทา', '', '', '', 6990.00, '/upload/41e2273e28dbba6f/80ed146ab66da767.png', 1647250313, 0, 5);
INSERT INTO `xy_goods_list` VALUES (1321, 'เครื่องซักผ้าฝาหน้า Haier (10Kg) รุ่น HW100-BP14959S6 สีดำ', '', 'เครื่องซักผ้าฝาหน้า Haier (10Kg) รุ่น HW100-BP14959S6 สีดำ', '', '', '', 19990.00, '/upload/696d0c20325a0192/0c38516643d32045.jpg', 1647250480, 0, 3);
INSERT INTO `xy_goods_list` VALUES (1322, 'INDEX LIVING MALL ตู้เสื้อผ้าไม้ 3 บานประตู รุ่น วาซ - สีขาว/ธรรมชาติ และสีไม้น้ำตาล (เลือกสีได้)', '', 'INDEX LIVING MALL ตู้เสื้อผ้าไม้ 3 บานประตู รุ่น วาซ - สีขาว/ธรรมชาติ และสีไม้น้ำตาล (เลือกสีได้)', '', '', '', 5790.00, '/upload/19218609486692aa/c86fab1f430184c1.png', 1647250539, 0, 5);
INSERT INTO `xy_goods_list` VALUES (1323, 'ตู้แช่เย็น ตู้เเช่เครื่องดื่ม 2 ประตู Haier สีขาว 763L/ 27Q ประหยัดไฟ No.5 รหัส TD0038030 รุ่น SC-1400PCS2-LS V4', '', 'ตู้แช่เย็น ตู้เเช่เครื่องดื่ม 2 ประตู Haier สีขาว 763L/ 27Q ประหยัดไฟ No.5 รหัส TD0038030 รุ่น SC-1400PCS2-LS V4', '', '', '', 22490.00, '/upload/11feb19f3fdaa3a2/824612b93dba8631.jpg', 1647250624, 0, 6);
INSERT INTO `xy_goods_list` VALUES (1324, 'INDEX LIVING MALL ตู้เสื้อผ้า 3 บานประตู รุ่นวินซ์ - สีขาว / ลายไม้ธรรมชาติ', '', 'INDEX LIVING MALL ตู้เสื้อผ้า 3 บานประตู รุ่นวินซ์ - สีขาว / ลายไม้ธรรมชาติ', '', '', '', 5990.00, '/upload/c31f264133359d6a/4806e7603a0805ef.png', 1647250655, 0, 5);
INSERT INTO `xy_goods_list` VALUES (1325, 'Koncept furniture ตู้เสื้อผ้า รุ่น Hanz สีโอ๊ค (150x60x180 ซม.)', '', 'Koncept furniture ตู้เสื้อผ้า รุ่น Hanz สีโอ๊ค (150x60x180 ซม.)', '', '', '', 5990.00, '/upload/20b19bb07922c6a6/2039c72aad654aac.png', 1647250736, 0, 5);
INSERT INTO `xy_goods_list` VALUES (1326, 'Hisense ตู้เย็น2 ประตู Side By Side :19Q/520 ลิตร รุ่น RS670N4AD1 New 2021', '', 'Hisense ตู้เย็น2 ประตู Side By Side :19Q/520 ลิตร รุ่น RS670N4AD1 New 2021', '', '', '', 21990.00, '/upload/1db02ddecd251133/2d2d5557ad48ffcb.jpg', 1647250963, 0, 6);
INSERT INTO `xy_goods_list` VALUES (1327, 'SB Design Square เตียงนอน 3.5 ฟุต รุ่น Econi Function สีไม้อ่อน (116x205.7x90 ซม.)', '', 'SB Design Square เตียงนอน 3.5 ฟุต รุ่น Econi Function สีไม้อ่อน (116x205.7x90 ซม.)', '', '', '', 9945.00, '/upload/2e3573a125726bf6/e9b3fe699d3f4257.png', 1647251190, 0, 5);
INSERT INTO `xy_goods_list` VALUES (1328, 'SB Design Square เตียงนอนเด็ก 3.5 ฟุต รุ่น Kidzio-D สีไม้อ่อน', '', 'SB Design Square เตียงนอนเด็ก 3.5 ฟุต รุ่น Kidzio-D สีไม้อ่อน', '', '', '', 9900.00, '/upload/0783273f78ed1497/97e97e53af9c3f14.png', 1647251576, 0, 5);
INSERT INTO `xy_goods_list` VALUES (1329, 'Mcm ของแท้ คาดอก Belt Bag Size M สี Black', '', 'Mcm ของแท้ คาดอก Belt Bag Size M สี Black', '', '', '', 16990.00, '/upload/c7b8a86f2be26ec1/e694acbfa029a6c8.jpg', 1647251615, 0, 6);
INSERT INTO `xy_goods_list` VALUES (1330, 'Koncept furniture เตียงนอน 3.5 ฟุต รุ่น Harper สีไม้อ่อน (114X215X90 ซม.)', '', 'Koncept furniture เตียงนอน 3.5 ฟุต รุ่น Harper สีไม้อ่อน (114X215X90 ซม.)', '', '', '', 5670.00, '/upload/d1d4b7d4b27ff212/851ebc728f5178e7.png', 1647251711, 0, 5);
INSERT INTO `xy_goods_list` VALUES (1331, 'Gucci กระเป๋าคาดอก ถูกที่สุด ของแท้ 100% Gucci Print Small Belt Bag ใหม่(จัดส่งฟรี)22-28CM', '', 'Gucci กระเป๋าคาดอก ถูกที่สุด ของแท้ 100% Gucci Print Small Belt Bag ใหม่(จัดส่งฟรี)22-28CM', '', '', '', 13800.00, '/upload/e344704c809535f6/8fb75cc105c16e8f.jpg', 1647251731, 0, 6);
INSERT INTO `xy_goods_list` VALUES (1332, 'Louis Vuitton new กระเป๋ารุ่น PALM SPRINGS MINI กระเป๋าเป้มินิ กระเป๋าเป้สะพายหลัง ของแท้ 100%', '', 'Louis Vuitton new กระเป๋ารุ่น PALM SPRINGS MINI กระเป๋าเป้มินิ กระเป๋าเป้สะพายหลัง ของแท้ 100%', '', '', '', 23000.00, '/upload/e200005678697a09/cb3352ab20c959b9.jpg', 1647251825, 0, 6);
INSERT INTO `xy_goods_list` VALUES (1333, 'รองเท้าของแท้ รุ่นยอดฮิต', '', 'รองเท้าของแท้ รุ่นยอดฮิต', '', '', '', 17900.00, '/upload/503d0f197034dfbd/e89850656c5e32b4.jpg', 1647252307, 0, 6);
INSERT INTO `xy_goods_list` VALUES (1334, 'Koncept furniture เตียงนอน 3.5 ฟุต รุ่น Bente สีไม้อ่อน (116x218x96 ซม.)', '', 'Koncept furniture เตียงนอน 3.5 ฟุต รุ่น Bente สีไม้อ่อน (116x218x96 ซม.)', '', '', '', 7770.00, '/upload/4107ee33edb26164/9049b692eec1998d.png', 1647252619, 0, 5);
INSERT INTO `xy_goods_list` VALUES (1335, 'เครื่องเกม XBOX SERIES X | SERIES S (เกม Xbox Series ?)', '', 'เครื่องเกม XBOX SERIES X | SERIES S (เกม Xbox Series ?)', '', '', '', 13990.00, '/upload/ade98b222f14c77f/d3443f5ff26f6c19.jpg', 1647252705, 0, 6);
INSERT INTO `xy_goods_list` VALUES (1336, 'Tefal เครื่องดูดฝุ่น ไร้สายอเนกประสงค์ Handstick Airforce All-In-One 460 รุ่น TY9282WO', '', 'Tefal เครื่องดูดฝุ่น ไร้สายอเนกประสงค์ Handstick Airforce All-In-One 460 รุ่น TY9282WO', '', '', '', 9590.00, '/upload/48ea8b10ccefa951/8f28e891f53e3238.png', 1647252738, 0, 5);
INSERT INTO `xy_goods_list` VALUES (1337, 'Tefal เครื่องปั่นร้อนเย็นพลังสูง PERFECTMIX COOK รุ่น BL83SD66', '', 'Tefal เครื่องปั่นร้อนเย็นพลังสูง PERFECTMIX COOK รุ่น BL83SD66', '', '', '', 7290.00, '/upload/7260331dbbe14c51/ed736501c289fd9c.png', 1647252822, 0, 5);
INSERT INTO `xy_goods_list` VALUES (1338, '✓❇BE@RBRICK Building Block หมี ​​Bearbrick แท้ Poupelle Chimney Town ตุ๊กตาตกแต่งตุ๊กตา11', '', '✓❇BE@RBRICK Building Block หมี ​​Bearbrick แท้ Poupelle Chimney Town ตุ๊กตาตกแต่งตุ๊กตา11', '', '', '', 14586.00, '/upload/f83ad5a6d3446d60/44d972e83f243dc2.jpg', 1647253007, 0, 6);
INSERT INTO `xy_goods_list` VALUES (1339, 'Tefal เครื่องดูดฝุ่นไร้สายงอได้ X-Force Flex 8.60 รุ่น TY9639WO', '', 'Tefal เครื่องดูดฝุ่นไร้สายงอได้ X-Force Flex 8.60 รุ่น TY9639WO', '', '', '', 7590.00, '/upload/af368ba66029d5a7/4cc40977d1711025.png', 1647253085, 0, 5);
INSERT INTO `xy_goods_list` VALUES (1340, 'Tefal เครื่องดูดฝุ่นไร้สายอเนกประสงค์ X-PERT 3.60 รุ่น TY6975WO', '', 'Tefal เครื่องดูดฝุ่นไร้สายอเนกประสงค์ X-PERT 3.60 รุ่น TY6975WO', '', '', '', 5590.00, '/upload/1a9f3e4f96e62763/b1da0311fc1a0281.png', 1647253274, 0, 5);
INSERT INTO `xy_goods_list` VALUES (1341, '[สมนาคุณ งดจำหน่าย] Tefal เครื่องฟอกอากาศ PURE AIR PURIFIER รุ่น PT3030FO', '', '[สมนาคุณ งดจำหน่าย] Tefal เครื่องฟอกอากาศ PURE AIR PURIFIER รุ่น PT3030FO', '', '', '', 7990.00, '/upload/83d1980fe9a6009d/dcb047ec71cba4cf.png', 1647253412, 0, 5);
INSERT INTO `xy_goods_list` VALUES (1342, 'Tefal เครื่องฟอกอากาศ Intense Pure Air Auto สำหรับห้อง 30 ตร.ม. รุ่น PU4067 กรองฝุ่นPM2.5', '', 'Tefal เครื่องฟอกอากาศ Intense Pure Air Auto สำหรับห้อง 30 ตร.ม. รุ่น PU4067 กรองฝุ่นPM2.5', '', '', '', 9490.00, '/upload/bdc306ee2ecdc579/55c16862de84a750.png', 1647253460, 0, 5);
INSERT INTO `xy_goods_list` VALUES (1343, 'ทีวี Digital TV 37/42/47นิ้ว ทีวีดิจิตอล Analog TV FULL HD', '', 'ทีวี Digital TV 37/42/47นิ้ว ทีวีดิจิตอล Analog TV FULL HD', '', '', '', 8399.00, '/upload/45a6c691288f6104/27735c41f3a059c8.png', 1647254040, 0, 5);
INSERT INTO `xy_goods_list` VALUES (1344, 'Xiaomi Mi TV P1 43\" Android TV 4K UHD รองรับ Netflix,Youtube,Google Assistant ประกันศูนย์ไทย 3 ปี', '', 'Xiaomi Mi TV P1 43\" Android TV 4K UHD รองรับ Netflix,Youtube,Google Assistant ประกันศูนย์ไทย 3 ปี', '', '', '', 9990.00, '/upload/7d6634efee4641d2/57ff235c4074a89e.png', 1647254473, 0, 5);
INSERT INTO `xy_goods_list` VALUES (1345, 'TCL Smart TV HD Wifi Android TV ขนาด 32 นิ้ว รุ่น 32S6500 Google assistant,Netflix,Youtube(Free VoiceSearchRemote)', '', 'TCL Smart TV HD Wifi Android TV ขนาด 32 นิ้ว รุ่น 32S6500 Google assistant,Netflix,Youtube(Free VoiceSearchRemote)', '', '', '', 5590.00, '/upload/89f99e515c39b00b/5ddcb1f21ebfb378.png', 1647254738, 0, 5);
INSERT INTO `xy_goods_list` VALUES (1346, 'TCL Smart TV ขนาด 40 นิ้ว Wifi Full HD Android 8.0 รุ่น 40S65A -Google assistant/Netflix/Youtube-Free VoiceSearchRemote', '', 'TCL Smart TV ขนาด 40 นิ้ว Wifi Full HD Android 8.0 รุ่น 40S65A -Google assistant/Netflix/Youtube-Free VoiceSearchRemote', '', '', '', 6790.00, '/upload/48a45e1ae2ad89be/9715e919a9272cd2.png', 1647254811, 0, 5);
INSERT INTO `xy_goods_list` VALUES (1347, 'KYOSHO รถบังคับ MINI-Z AWD NISSAN SKYLINE GT-R R34 V.specⅡNur Millennium Jade 32624MJ', '', 'KYOSHO รถบังคับ MINI-Z AWD NISSAN SKYLINE GT-R R34 V.specⅡNur Millennium Jade 32624MJ', '', '', '', 6500.00, '/upload/7f230e1832910bae/ebc183cad64d3cda.png', 1647255434, 0, 5);
INSERT INTO `xy_goods_list` VALUES (1348, 'KYOSHO รถบังคับ MINI-Z Buggy Readyset TURBO OPTIMA Mid Special Yellow 32092Y', '', 'KYOSHO รถบังคับ MINI-Z Buggy Readyset TURBO OPTIMA Mid Special Yellow 32092Y', '', '', '', 6500.00, '/upload/b6986c7467c9ae6d/d1677051bd0395a2.png', 1647255492, 0, 5);
INSERT INTO `xy_goods_list` VALUES (1349, 'KYOSHO MINI-Z AWD NISSAN SKYLINE GT-R NISMO(R33) Blue Readyset 32616BL', '', 'KYOSHO MINI-Z AWD NISSAN SKYLINE GT-R NISMO(R33) Blue Readyset 32616BL', '', '', '', 6500.00, '/upload/cdbe9d1d27e7059b/2f6bbb0616e00a64.png', 1647255622, 0, 5);
INSERT INTO `xy_goods_list` VALUES (1350, 'KYOSHO MINI-Z AWD NISSAN SKYLINE GT-R NISMO(R33) Blue Readyset 32616BL', '', 'KYOSHO MINI-Z AWD NISSAN SKYLINE GT-R NISMO(R33) Blue Readyset 32616BL', '', '', '', 6500.00, '/upload/f426062d3a0744fd/e5f2942c6d1f8857.png', 1647255678, 0, 5);
INSERT INTO `xy_goods_list` VALUES (1351, 'KYOSHO MINI-Z AWD TOYOTA GR SUPRA Matt Storm Gray Metallic 32619GM', '', 'KYOSHO MINI-Z AWD TOYOTA GR SUPRA Matt Storm Gray Metallic 32619GM', '', '', '', 6500.00, '/upload/c3dba681198d9a69/4e5fd061b394a74c.png', 1647255736, 0, 5);
INSERT INTO `xy_goods_list` VALUES (1352, 'แว่นตา Celine รุ่น oval สี Havana กระ ของแท้ 100%', '', 'แว่นตา Celine รุ่น oval สี Havana กระ ของแท้ 100%', '', '', '', 10900.00, '/upload/7d9451f060d70247/ebcee6ef36af4dbf.jpg', 1647255815, 0, 6);
INSERT INTO `xy_goods_list` VALUES (1353, 'MINI-Z RWD Series Ready Set Chevrolet Corvette ZR1 Racing Yellow (with LED) 32334BL', '', 'MINI-Z RWD Series Ready Set Chevrolet Corvette ZR1 Racing Yellow (with LED) 32334BL', '', '', '', 5500.00, '/upload/5166263af7f253bc/5d83429c74e73a4e.png', 1647255829, 0, 5);
INSERT INTO `xy_goods_list` VALUES (1354, 'New Dior Signature B1U Sunglasses', '', 'New Dior Signature B1U Sunglasses', '', '', '', 17490.00, '/upload/fbfd525b8a35cbbd/d91bc6d785329832.jpg', 1647255928, 0, 6);
INSERT INTO `xy_goods_list` VALUES (1355, 'Geele C4 Surfskate Skateboard carver เซิร์ฟสเก็ต สเก็ตบอร์ด เซิร์ฟสเก็ตบอร์ด สำหรับผู้เริ่มต้น ราคาถูก', '', 'Geele C4 Surfskate Skateboard carver เซิร์ฟสเก็ต สเก็ตบอร์ด เซิร์ฟสเก็ตบอร์ด สำหรับผู้เริ่มต้น ราคาถูก', '', '', '', 5900.00, '/upload/f4f69edb9a0878cd/5ba1826a5ed3ad03.png', 1647255957, 0, 5);
INSERT INTO `xy_goods_list` VALUES (1356, '【100%ของแท้】32นิ้ว SWAY Pro Surfskate S7ใหม่ขยายที่ดินท่องสเก็ตบอร์ด L-S7 วงเล็บสี่ล้อสเก็ตบอร์ดปลา สเก็ตบอร์ดผู้ใหญ่', '', '【100%ของแท้】32นิ้ว SWAY Pro Surfskate S7ใหม่ขยายที่ดินท่องสเก็ตบอร์ด L-S7 วงเล็บสี่ล้อสเก็ตบอร์ดปลา สเก็ตบอร์ดผู้ใหญ่', '', '', '', 5986.00, '/upload/bf9b746942b0b834/a0365ae0c9046060.png', 1647256042, 0, 5);
INSERT INTO `xy_goods_list` VALUES (1357, 'New Versace Sunglasses', '', 'New Versace Sunglasses', '', '', '', 11590.00, '/upload/5336a8bb8d62b458/88966577eda11ed9.jpg', 1647256291, 0, 6);
INSERT INTO `xy_goods_list` VALUES (1358, 'PLAYUKUHHS64 - จักรยานไฮบริด Giant Escape 3', '', 'PLAYUKUHHS64 - จักรยานไฮบริด Giant Escape 3', '', '', '', 9900.00, '/upload/0ff39fb904b1f81e/a88ea2f9faf804af.png', 1647259264, 0, 5);
INSERT INTO `xy_goods_list` VALUES (1359, 'จักรยานไฮบริด Trinx รุ่น Free 2.0 24sp[ฟรีค่าจัดส่ง]', '', 'จักรยานไฮบริด Trinx รุ่น Free 2.0 24sp[ฟรีค่าจัดส่ง]', '', '', '', 6500.00, '/upload/e88ec22c83f64109/787b44c44dfadb3b.png', 1647259486, 0, 5);
INSERT INTO `xy_goods_list` VALUES (1360, 'จักรยานไฮบริด Trinx รุ่น Free 2.0 24sp[ฟรีค่าจัดส่ง]', '', 'จักรยานไฮบริด Trinx รุ่น Free 2.0 24sp[ฟรีค่าจัดส่ง]', '', '', '', 6500.00, '/upload/30b1801247b54e48/91095c41fe9a29ff.png', 1647259594, 0, 5);
INSERT INTO `xy_goods_list` VALUES (1361, 'RICHTER รุ่น CLICK เฟรมอลู 9สปีด ล้อ 700c', '', 'RICHTER รุ่น CLICK เฟรมอลู 9สปีด ล้อ 700c', '', '', '', 7600.00, '/upload/abd21f1e67a53733/ffe2602ed3d02018.png', 1647259696, 0, 5);
INSERT INTO `xy_goods_list` VALUES (1362, 'RICHTER รุ่น CLICK เฟรมอลู 9สปีด ล้อ 700c', '', 'RICHTER รุ่น CLICK เฟรมอลู 9สปีด ล้อ 700c', '', '', '', 5100.00, '/upload/def98e25e6c5b7be/7d678ca12a3cf853.png', 1647259883, 0, 5);
INSERT INTO `xy_goods_list` VALUES (1363, '!! คอมประกอบสเปคสุดคุ้ม เจน11 CPU I5-11400 6คอร์ 12เทรด RAM 8GB', '', '!! คอมประกอบสเปคสุดคุ้ม เจน11 CPU I5-11400 6คอร์ 12เทรด RAM 8GB', '', '', '', 16990.00, '/upload/894ad7a6991231bb/d11458807b0fe95f.jpg', 1647259888, 0, 6);
INSERT INTO `xy_goods_list` VALUES (1364, 'HOFFEN หน้าต่างบานเลื่อน uPVC 180X110 ซม. รุ่น PRO พร้อมมุ้ง', '', 'HOFFEN หน้าต่างบานเลื่อน uPVC 180X110 ซม. รุ่น PRO พร้อมมุ้ง', '', '', '', 5250.00, '/upload/81ab72da5e78c6d3/6aeb43fe8d4bd0c0.png', 1647259971, 0, 5);
INSERT INTO `xy_goods_list` VALUES (1365, 'LG MONITOR 27GP850-B 27\" NANO IPS 2K/ 180hz / HDR400/ประกันซ่อมถึงบ้าน3ปี', '', 'LG MONITOR 27GP850-B 27\" NANO IPS 2K/ 180hz / HDR400/ประกันซ่อมถึงบ้าน3ปี', '', '', '', 13990.00, '/upload/9d9b70393eb99fb3/11c250118716dbe2.jpg', 1647259999, 0, 6);
INSERT INTO `xy_goods_list` VALUES (1366, 'Microsoft Surface Laptop Go i5-1035G1 Processor/Platinum/Warranty 1 Year by Microsoft', '', 'Microsoft Surface Laptop Go i5-1035G1 Processor/Platinum/Warranty 1 Year by Microsoft', '', '', '', 27999.00, '/upload/c20346cb251f87d6/a5d470920b7edfd9.jpg', 1647260329, 0, 6);
INSERT INTO `xy_goods_list` VALUES (1367, 'ของแท้100% ของแท้100% Nikeไนกี้อย่างเป็นทางการBLAZER MID &#39;77รองเท้าบุรุษสตรีทั้งหมดรองเท้าDO2331', '', 'ของแท้100% ของแท้100% Nikeไนกี้อย่างเป็นทางการBLAZER MID &#39;77รองเท้าบุรุษสตรีทั้งหมดรองเท้าDO2331', '', '', '', 8530.00, '/upload/3699f28c5ee1303a/3b4117d1a3b18d70.png', 1647260691, 0, 5);
INSERT INTO `xy_goods_list` VALUES (1368, 'แท้100%Nike Daybreak x Undercover (BLACK) AXDy', '', 'แท้100%Nike Daybreak x Undercover (BLACK) AXDy', '', '', '', 9200.00, '/upload/fbe341d40c3fd5bc/51ab5922dd168e08.png', 1647260743, 0, 5);
INSERT INTO `xy_goods_list` VALUES (1369, '?ของแท้100% Nikeไนกี้อย่างเป็นทางการZOOMX VAPORFLY NEXT% 2ผู้ชายวิ่งฤดูใบไม้ร่วงและฤดูหนาวมาราธอนCU4111 jvC6', '', '?ของแท้100% Nikeไนกี้อย่างเป็นทางการZOOMX VAPORFLY NEXT% 2ผู้ชายวิ่งฤดูใบไม้ร่วงและฤดูหนาวมาราธอนCU4111 jvC6', '', '', '', 8219.00, '/upload/985fada72c42723a/56481cf62eb63391.png', 1647260813, 0, 5);
INSERT INTO `xy_goods_list` VALUES (1370, 'Andis ปัตตาเลี่ยนตัดขนสุนัขและแมว รุ่น Pulse ZR II 5–Speed', '', 'Andis ปัตตาเลี่ยนตัดขนสุนัขและแมว รุ่น Pulse ZR II 5–Speed', '', '', '', 13940.00, '/upload/222adf09173c49b4/850a573810ed484a.jpg', 1647260998, 0, 6);
INSERT INTO `xy_goods_list` VALUES (1371, 'แท้100%NIKE DUNK HIGH SP PURE PLATINUM [CZ8149101] m0Ez', '', 'แท้100%NIKE DUNK HIGH SP PURE PLATINUM [CZ8149101] m0Ez', '', '', '', 6970.00, '/upload/5b33b3a324f04e92/8bfd8ad4ed5317ea.png', 1647261170, 0, 5);
INSERT INTO `xy_goods_list` VALUES (1372, 'Litter-Robot 3 Connect ห้องน้ำแมวอัตโนมัติ', '', 'Litter-Robot 3 Connect ห้องน้ำแมวอัตโนมัติ', '', '', '', 27900.00, '/upload/574ffca3fce859b4/769d9baeb6fe0b04.jpg', 1647261226, 0, 6);
INSERT INTO `xy_goods_list` VALUES (1373, 'Ibiyaya รถเข็นสำหรับสัตว์เลี้ยง Monarch Premium Pet Jogger -', '', 'Ibiyaya รถเข็นสำหรับสัตว์เลี้ยง Monarch Premium Pet Jogger -', '', '', '', 14980.00, '/upload/8e3921a976084b90/71d2d8b74e918f50.jpg', 1647261355, 0, 6);
INSERT INTO `xy_goods_list` VALUES (1374, 'AIRBUGGY DOME 3 (LARGE) รถเข็นสุนัข ญี่ปุ่น', '', 'AIRBUGGY DOME 3 (LARGE) รถเข็นสุนัข ญี่ปุ่น', '', '', '', 23900.00, '/upload/45aed614eae9ead7/fbbaa8ac73c17550.jpg', 1647261463, 0, 6);
INSERT INTO `xy_goods_list` VALUES (1375, 'ตู้เป่าขนสัตว์เลี้ยง Pettime (เราเป็นตัวแทนจำหน่ายของประเทศไทยนะคะ)', '', 'ตู้เป่าขนสัตว์เลี้ยง Pettime (เราเป็นตัวแทนจำหน่ายของประเทศไทยนะคะ)', '', '', '', 14999.00, '/upload/9049cb19941a078e/2de60837bdf92242.jpg', 1647261598, 0, 6);
INSERT INTO `xy_goods_list` VALUES (1376, 'แท้100%NIKE DUNK HIGH SP PURE PLATINUM [CZ8149101] m0Ez', '', 'แท้100%NIKE DUNK HIGH SP PURE PLATINUM [CZ8149101] m0Ez', '', '', '', 8920.00, '/upload/c740f98cd64aaf0e/1daafcc6c77f9907.png', 1647261658, 0, 5);
INSERT INTO `xy_goods_list` VALUES (1377, 'Supboard บอร์ดยืนพายแบบใส', '', 'Supboard บอร์ดยืนพายแบบใส', '', '', '', 28000.00, '/upload/0c44f3d05288f8ca/35e5516dc8aaf3e6.jpg', 1647261732, 0, 6);
INSERT INTO `xy_goods_list` VALUES (1378, 'แท้100%NIKE DUNK HIGH SP PURE PLATINUM [CZ8149101] m0Ez', '', 'แท้100%NIKE DUNK HIGH SP PURE PLATINUM [CZ8149101] m0Ez', '', '', '', 6790.00, '/upload/cedba84c257620f9/4896b754b6117f9f.png', 1647262098, 0, 5);
INSERT INTO `xy_goods_list` VALUES (1379, 'adidas ORIGINALS รองเท้า Stan Smith ผู้ชาย สีขาว Sneaker FX5502', '', 'adidas ORIGINALS รองเท้า Stan Smith ผู้ชาย สีขาว Sneaker FX5502', '', '', '', 5000.00, '/upload/cd03d2d661f56a88/bee832b2765a6863.png', 1647262583, 0, 5);
INSERT INTO `xy_goods_list` VALUES (1380, 'Gucci Hoodie เสื้อ กุชชี่ ฮู้ดดี้ shorts กางเกง ขาสั้น ของแท้ ส่งฟรี EMS ทั้งร้าน', '', 'Gucci Hoodie เสื้อ กุชชี่ ฮู้ดดี้ shorts กางเกง ขาสั้น ของแท้ ส่งฟรี EMS ทั้งร้าน', '', '', '', 9775.00, '/upload/ada179b6251dbe8f/1c815b15696cca51.png', 1647262889, 0, 5);
INSERT INTO `xy_goods_list` VALUES (1381, 'Gucci shorts กางเกงขาสั้น สีน้ำเงิน มีดาวปักสีทอง กุชชี่่ ของแท้ ส่งฟรี EMS ทั้งร้าน', '', 'Gucci shorts กางเกงขาสั้น สีน้ำเงิน มีดาวปักสีทอง กุชชี่่ ของแท้ ส่งฟรี EMS ทั้งร้าน', '', '', '', 7800.00, '/upload/a48db73816ea4c35/75a5c41eed62dfdd.png', 1647263188, 0, 5);
INSERT INTO `xy_goods_list` VALUES (1382, 'สร้อยมือทอแท้ น้ำหนัก 2 สลึง', '', 'สร้อยมือทอแท้ น้ำหนัก 2 สลึง', '', '', '', 18445.00, '/upload/3258e9c163b9f7fd/e2f5855e99aa0459.jpg', 1647263271, 0, 6);
INSERT INTO `xy_goods_list` VALUES (1383, 'Gucci hoodie for women เสื้อ ลายด้านหลัง น่ารัก กุชชี่ ฮู้ดดี้ ของแท้ ส่งฟรีEMS ทั้งร้าน', '', 'Gucci hoodie for women เสื้อ ลายด้านหลัง น่ารัก กุชชี่ ฮู้ดดี้ ของแท้ ส่งฟรีEMS ทั้งร้าน', '', '', '', 9750.00, '/upload/dfe16c2aff0fb9b3/035add63a4a521b8.png', 1647263419, 0, 5);
INSERT INTO `xy_goods_list` VALUES (1384, 'รองเท้า Nike LD Waffle x Sacai x Fragment \" Blue Void \"', '', 'รองเท้า Nike LD Waffle x Sacai x Fragment \" Blue Void \"', '', '', '', 14378.00, '/upload/9a325207637eff67/8a7145dd1a78db95.jpg', 1647263635, 0, 6);
INSERT INTO `xy_goods_list` VALUES (1385, 'NIKE AIR JORDAN 1 MID CHICAGO BLACK TOE [554725-069]', '', 'NIKE AIR JORDAN 1 MID CHICAGO BLACK TOE [554725-069]', '', '', '', 12600.00, '/upload/fb8a5ff9344e521e/792fee6f04eecc96.jpg', 1647263802, 0, 6);
INSERT INTO `xy_goods_list` VALUES (1386, 'Burberry Shirt London Box Logo for Men เสื้อเชิ้ต ของแท้ ส่งฟรี EMS ทั้งร้าน', '', 'Burberry Shirt London Box Logo for Men เสื้อเชิ้ต ของแท้ ส่งฟรี EMS ทั้งร้าน', '', '', '', 8970.00, '/upload/1105a9660d7c3c60/4164dbce96f5a0c7.png', 1647263991, 0, 5);
INSERT INTO `xy_goods_list` VALUES (1387, 'Balenciaga Shirt oversize for men size 38 อก 50” เสื้อเชิ้ต บาเลนเซียก้า ของแท้ ส่งฟรี EMS ทั้งร้าน', '', 'Balenciaga Shirt oversize for men size 38 อก 50” เสื้อเชิ้ต บาเลนเซียก้า ของแท้ ส่งฟรี EMS ทั้งร้าน', '', '', '', 9375.00, '/upload/5162c95ce669ca73/4e1872248240e82d.png', 1647264245, 0, 5);
INSERT INTO `xy_goods_list` VALUES (1388, 'เต๊นท์ทรงกระโจม Blackdeer Dreamland Teepee Tent+Tarp', '', 'เต๊นท์ทรงกระโจม Blackdeer Dreamland Teepee Tent+Tarp', '', '', '', 11000.00, '/upload/5393cd43ef4bf4eb/67496e8f3833461d.jpg', 1647265315, 0, 6);
INSERT INTO `xy_goods_list` VALUES (1389, 'Stiebel Eltron เครื่องทำน้ำอุ่น รุ่น XG 45 EC Black Edition', '', 'Stiebel Eltron เครื่องทำน้ำอุ่น รุ่น XG 45 EC Black Edition', '', '', '', 6190.00, '/upload/00e36a51a6346b50/3db7596c0c5d28f3.png', 1647265463, 0, 5);
INSERT INTO `xy_goods_list` VALUES (1390, 'Stiebel Eltron เครื่องทำน้ำร้อน รุ่น DDH 6 EC', '', 'Stiebel Eltron เครื่องทำน้ำร้อน รุ่น DDH 6 EC', '', '', '', 5890.00, '/upload/3ef36aff4da78d50/deade6828c8e42ba.png', 1647265519, 0, 5);
INSERT INTO `xy_goods_list` VALUES (1391, '[ฟรี! ติดตั้งแบบจั๊ม] Stiebel Eltron เครื่องทำน้ำร้อนแบบผ่านร้อน รุ่น DHC 8 ILEC', '', '[ฟรี! ติดตั้งแบบจั๊ม] Stiebel Eltron เครื่องทำน้ำร้อนแบบผ่านร้อน รุ่น DHC 8 ILEC', '', '', '', 9190.00, '/upload/b7448a0fc23718a5/fa8d5fdad0b4e453.png', 1647265565, 0, 5);
INSERT INTO `xy_goods_list` VALUES (1392, 'ส่งฟรี!!!เครื่องทำน้ำอุ่น+ชาวเวอร์เรน STIEBEL รุ่น BLACK 6000W', '', 'ส่งฟรี!!!เครื่องทำน้ำอุ่น+ชาวเวอร์เรน STIEBEL รุ่น BLACK 6000W', '', '', '', 8988.00, '/upload/667942dbfe8f5602/c4c0113fe6d8ef3d.png', 1647265606, 0, 5);
INSERT INTO `xy_goods_list` VALUES (1393, 'BOTTEGA VENETA VII LILLA ขนาด 100 ml', '', 'BOTTEGA VENETA VII LILLA ขนาด 100 ml', '', '', '', 11290.00, '/upload/4668835339afbb88/092f822ef10124d6.jpg', 1647265633, 0, 6);
INSERT INTO `xy_goods_list` VALUES (1394, 'เครื่องทำน้ำอุ่น STIEBEL CHROME -2 4500W', '', 'เครื่องทำน้ำอุ่น STIEBEL CHROME -2 4500W', '', '', '', 8070.00, '/upload/c973594b7ed46db5/bf2ada36eba9f958.png', 1647265647, 0, 5);
INSERT INTO `xy_goods_list` VALUES (1395, 'เครื่องซักผ้าฝาหน้า SAMSUNG WW70T3020WW/ST 7.0KG ขาว', '', 'เครื่องซักผ้าฝาหน้า SAMSUNG WW70T3020WW/ST 7.0KG ขาว', '', '', '', 9990.00, '/upload/4abd22e6b6e3fde4/a55e1e9ff4607c7c.png', 1647265740, 0, 5);
INSERT INTO `xy_goods_list` VALUES (1396, '?เคาน์เตอร์ของแท้? Dior Jadore Real Me EDP 100ml นํ้าหอม ความงาม น้ำหอมพกพา น้ำหอมผู้หญิง น้ําหอมผู้ชาย', '', '?เคาน์เตอร์ของแท้? Dior Jadore Real Me EDP 100ml นํ้าหอม ความงาม น้ำหอมพกพา น้ำหอมผู้หญิง น้ําหอมผู้ชาย', '', '', '', 20000.00, '/upload/8625bc739d472694/1d02b5ee543ecf90.jpg', 1647265778, 0, 6);
INSERT INTO `xy_goods_list` VALUES (1397, 'Dyson Corrale ของแท้ ชอปไทย รับประกันศูนย์ไทย 2 ปีเต็ม ในชอปไม่ลดราคา', '', 'Dyson Corrale ของแท้ ชอปไทย รับประกันศูนย์ไทย 2 ปีเต็ม ในชอปไม่ลดราคา', '', '', '', 16500.00, '/upload/879d288e04b40a68/cc67f2dd0da646bf.jpg', 1647265973, 0, 6);
INSERT INTO `xy_goods_list` VALUES (1398, 'Dyson Supersonic HD08 ไดร์เป่าผม ของแท้ชอปไทย ประกันศูนย์ 3 ปีเต็ม', '', 'Dyson Supersonic HD08 ไดร์เป่าผม ของแท้ชอปไทย ประกันศูนย์ 3 ปีเต็ม', '', '', '', 15900.00, '/upload/b87cb74c590421f3/47742c898ba47c55.jpg', 1647266180, 0, 6);
INSERT INTO `xy_goods_list` VALUES (1399, '?ของเล่นเด็ก พร้อมส่ง?ชุดครัวครบเซ็ต แบรนด์ STEP 2 งานนำเข้าเกรดพรีเมี่ยม', '', '?ของเล่นเด็ก พร้อมส่ง?ชุดครัวครบเซ็ต แบรนด์ STEP 2 งานนำเข้าเกรดพรีเมี่ยม', '', '', '', 16900.00, '/upload/0c957925048acd02/ad8a33edc332feb3.jpg', 1647266550, 0, 6);
INSERT INTO `xy_goods_list` VALUES (1400, '☾สามารถนั่งผู้ใหญ่เด็กสองคนรถยนต์ไฟฟ้ารถออฟโรดเด็กของเล่นเด็กรถแบตเตอรี่รถขับเคลื่อนสี่ล้อพร้อมรีโมทคอนโทรล', '', '☾สามารถนั่งผู้ใหญ่เด็กสองคนรถยนต์ไฟฟ้ารถออฟโรดเด็กของเล่นเด็กรถแบตเตอรี่รถขับเคลื่อนสี่ล้อพร้อมรีโมทคอนโทรล', '', '', '', 23523.00, '/upload/a27efd4779cc08ad/7438b59ddd926b40.jpg', 1647266694, 0, 6);
INSERT INTO `xy_goods_list` VALUES (1401, 'เตียงเด็ก รุ่น BDYA-603 ขนาด3.5ฟุต (มีให้เลือกหลายสี) เตียงเด็ก เตียงเด็กผู้หญิง เตียงลายการ์ตูน', '', 'เตียงเด็ก รุ่น BDYA-603 ขนาด3.5ฟุต (มีให้เลือกหลายสี) เตียงเด็ก เตียงเด็กผู้หญิง เตียงลายการ์ตูน', '', '', '', 18900.00, '/upload/48d79bdd6ee4ca78/0be4c56746e563af.jpg', 1647266822, 0, 6);
INSERT INTO `xy_goods_list` VALUES (1402, 'เปลไกวไฟฟ้าfico สีน้ำตาล ปรับเป็นเพลเพนได้ ไกวได้8ระดับ เปล2ชั้น รับน้ำหนักได้30กก', '', 'เปลไกวไฟฟ้าfico สีน้ำตาล ปรับเป็นเพลเพนได้ ไกวได้8ระดับ เปล2ชั้น รับน้ำหนักได้30กก', '', '', '', 13421.00, '/upload/447ba07ce57e3da9/0b3fef86b355687d.jpg', 1647266996, 0, 6);
INSERT INTO `xy_goods_list` VALUES (1403, 'อร์เต็นท์ แอร์เคลื่อนที่ แอร์18000 BTUรุ่น AS181HAPB ห้องขนาด(ตร.ม.):16-23 รับประกันมอเตอร์ 3 ปี', '', 'อร์เต็นท์ แอร์เคลื่อนที่ แอร์18000 BTUรุ่น AS181HAPB ห้องขนาด(ตร.ม.):16-23 รับประกันมอเตอร์ 3 ปี', '', '', '', 21400.00, '/upload/a4f62c54e585c576/9e6873557e96b8d9.jpg', 1647267408, 0, 6);
INSERT INTO `xy_goods_list` VALUES (1404, 'แอร์ AMENA-WF13B-MNVKE 12000 บีทียู', '', 'แอร์ AMENA-WF13B-MNVKE 12000 บีทียู', '', '', '', 11900.00, '/upload/59802f4b9fcc8555/3f9b4673d5fb20af.jpg', 1647267493, 0, 6);
INSERT INTO `xy_goods_list` VALUES (1416, 'SWISSGEAR กระเป๋าเป้ รุ่น KW-060', '', 'SWISSGEAR กระเป๋าเป้ รุ่น KW-060', '', '', '', 599.00, '/upload/9d0103ae7e56448c/706448ad5b2a97f7.png', 1647588254, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1417, 'ดูดเหรียญได้ เครื่องดูฝุ่นในรถ 18000PA ฟรีหัว3หัว เครื่องดูดฝุ่นไรสาย เครื่องดูดฝุ่น เครองดูดฝุ่นในรถ อุปกรณ์ในรถ', '', 'ดูดเหรียญได้ เครื่องดูฝุ่นในรถ 18000PA ฟรีหัว3หัว เครื่องดูดฝุ่นไรสาย เครื่องดูดฝุ่น เครองดูดฝุ่นในรถ อุปกรณ์ในรถ', '', '', '', 499.00, '/upload/e2bb2b65d9b69069/fa9a8cbeababb34e.jpg', 1647588274, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1418, 'Computer Case VENUZ ATX Computer Case VC1616', '', 'Computer Case VENUZ ATX Computer Case VC1616', '', '', '', 539.00, '/upload/07efe103eef9ac29/594f6e0a07a58cfa.png', 1647588297, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1419, 'Citadel กระเป๋าสะพายข้าง กระเป๋าผู้ชาย ผ้าใบกันน้ำ100% ตัวล็อคดีไซน์ใหม่ รุ่น B-495', '', 'Citadel กระเป๋าสะพายข้าง กระเป๋าผู้ชาย ผ้าใบกันน้ำ100% ตัวล็อคดีไซน์ใหม่ รุ่น B-495', '', '', '', 500.00, '/upload/1f669c70b02a6cf8/da888100a905a892.png', 1647588331, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1420, '[ทักแชทรับโค้ด]AJ ลำโพงบลูทูธพกพา รุ่น AJ-777N', '', '[ทักแชทรับโค้ด]AJ ลำโพงบลูทูธพกพา รุ่น AJ-777N', '', '', '', 770.00, '/upload/5c190d7ec020a869/4941f674042b59f3.png', 1647588366, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1421, 'HL เลื่อยไฟฟ้า หัวแปลง สว่านไฟฟ้าเปลี่ยนเป็นเลื่อยไฟฟ้า ฟรีใบเลื่อย 3 ใบ เลื่อย เลื่อยจิ๊กซอ เลื่อยยนต์ เลื่อยชัก', '', 'HL เลื่อยไฟฟ้า หัวแปลง สว่านไฟฟ้าเปลี่ยนเป็นเลื่อยไฟฟ้า ฟรีใบเลื่อย 3 ใบ เลื่อย เลื่อยจิ๊กซอ เลื่อยยนต์ เลื่อยชัก', '', '', '', 329.00, '/upload/3465d849d130877e/a4a4e4809bae240b.jpg', 1647588373, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1422, 'NIKE รุ่นJORDAN 1 CRIB BOOTIE สีWHITE/BLACK-VARSITY RED (AT3745-163) รองเท้าแบบผูกเชือก ร้าน Sneaker WOW ของแท้ 100%', '', 'NIKE รุ่นJORDAN 1 CRIB BOOTIE สีWHITE/BLACK-VARSITY RED (AT3745-163) รองเท้าแบบผูกเชือก ร้าน Sneaker WOW ของแท้ 100%', '', '', '', 850.00, '/upload/cd6484ec15ca05a7/537d7dda7d4638b5.png', 1647588431, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1423, 'HL 9นิ้ว ขนาดใหญ่มาก พัดลมชาร์จแบต เย็นจนเป็นหวัด 5000mAh พัดลม พัดลมพกพา พัดลมตั้งโต๊ะ Fan พัดลมพกพาชาร์จ พัดลมไร้สาย', '', 'HL 9นิ้ว ขนาดใหญ่มาก พัดลมชาร์จแบต เย็นจนเป็นหวัด 5000mAh พัดลม พัดลมพกพา พัดลมตั้งโต๊ะ Fan พัดลมพกพาชาร์จ พัดลมไร้สาย', '', '', '', 439.00, '/upload/9bbd32b877ba6a66/c57748049648c78e.jpg', 1647588443, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1424, 'Nike Kawa Shower Slides แท้?%จากช้อป มีกล่อง', '', 'Nike Kawa Shower Slides แท้?%จากช้อป มีกล่อง', '', '', '', 900.00, '/upload/c6d8290391204e76/68e8846de190f26a.png', 1647588483, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1425, 'HL กริดไฟฟ้า100000Vฆ่ายุงในวินาที เครื่องดักยุง ฟรีหลอดไฟLED2ตัว ดักยุง เครื่องช็อตยุง ที่ดักยุง เครื่องดักยุงไฟฟ', '', 'HL กริดไฟฟ้า100000Vฆ่ายุงในวินาที เครื่องดักยุง ฟรีหลอดไฟLED2ตัว ดักยุง เครื่องช็อตยุง ที่ดักยุง เครื่องดักยุงไฟฟ', '', '', '', 400.00, '/upload/840175310eb96af9/e202caed3debaefc.jpg', 1647588514, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1426, 'Mc Jeans รองเท้า Slip on หญิงและชาย สีขาว M09Z00410', '', 'Mc Jeans รองเท้า Slip on หญิงและชาย สีขาว M09Z00410', '', '', '', 907.00, '/upload/fd61e47e46e32168/f4e57d17070fb516.png', 1647588523, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1427, '[รับ500c.CCB2MAR500] Xiaomi Mi Mijia Handheld Ironing Machine Steam iron เตารีดไอน้ำ เตารีดไอน้ำพกพา เตารีด', '', '[รับ500c.CCB2MAR500] Xiaomi Mi Mijia Handheld Ironing Machine Steam iron เตารีดไอน้ำ เตารีดไอน้ำพกพา เตารีด', '', '', '', 599.00, '/upload/5866996ba72cdf5e/f130f2984d1252da.png', 1647588554, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1428, 'HL อัพเกรด New เครื่องดูดไรฝุ่น 12000Pa การดูดแรง สีดำ เครื่องดูดฝุ่น เครื่องดูดฝุ่นในรถ เครื่องดูดฝุ่นไร้สาย', '', 'HL อัพเกรด New เครื่องดูดไรฝุ่น 12000Pa การดูดแรง สีดำ เครื่องดูดฝุ่น เครื่องดูดฝุ่นในรถ เครื่องดูดฝุ่นไร้สาย', '', '', '', 350.00, '/upload/e0badc519f67bc38/217bd42c3a409a1f.jpg', 1647588581, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1429, 'HW16 smart watch ขนาด44mmสวยมากของแท้100%', '', 'HW16 smart watch ขนาด44mmสวยมากของแท้100%', '', '', '', 600.00, '/upload/e2be4bf1add1013e/aba427ef8fc43d0a.png', 1647588603, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1430, 'SHARP พัดลมสไลด์ 16 นิ้วรุ่น PJ-SL163 (ปรับระดับได้)', '', 'SHARP พัดลมสไลด์ 16 นิ้วรุ่น PJ-SL163 (ปรับระดับได้)', '', '', '', 755.00, '/upload/db38f386672b5b8b/47e038cf76e769ca.png', 1647588644, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1431, '?มาใหม่?พร้อมส่ง? เครื่องโกนหนวด Kemei รุ่น KM 719 / 418 เครื่องโกนหนวด เครื่องโกนขน ที่โกนหนวด มีดโกนหนวด โกนหนวด', '', '?มาใหม่?พร้อมส่ง? เครื่องโกนหนวด Kemei รุ่น KM 719 / 418 เครื่องโกนหนวด เครื่องโกนขน ที่โกนหนวด มีดโกนหนวด โกนหนวด', '', '', '', 229.00, '/upload/444a4901b1953b93/52ed8567f7608b02.jpg', 1647588657, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1432, 'กางเกงขายาวสำหรับส่องสัตว์ รุ่น 500 (สีน้ำตาลเข้ม) SOLOGNAC', '', 'กางเกงขายาวสำหรับส่องสัตว์ รุ่น 500 (สีน้ำตาลเข้ม) SOLOGNAC', '', '', '', 800.00, '/upload/c2d7f6fb598061cf/9957cbd55d6e7494.png', 1647588684, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1433, 'Hair Essence Double T แฮร์เอสเซ้นส์บำรุงผม ดับเบิ้ลที 30 ml.', '', 'Hair Essence Double T แฮร์เอสเซ้นส์บำรุงผม ดับเบิ้ลที 30 ml.', '', '', '', 100.00, '/upload/c10ae2de1cf348d0/39e9f5aa6a7d341f.jpg', 1647588709, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1434, 'กางเกงขายาวสำหรับส่องสัตว์ รุ่น Cargo 300 (สีดำ) SOLOGNAC', '', 'กางเกงขายาวสำหรับส่องสัตว์ รุ่น Cargo 300 (สีดำ) SOLOGNAC', '', '', '', 690.00, '/upload/c193f945d99f85e8/c902f629dce43337.png', 1647588725, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1435, 'กางเกงเดินป่า ขาสั้น S.ARCHON ผ้าแห้งเร็ว น้ำหนักเบา ด้านในเป็นตาข่าย ของแท้ มีป้ายครบ พร้อมส่งจากไทย กางเกงขาสั้น', '', 'กางเกงเดินป่า ขาสั้น S.ARCHON ผ้าแห้งเร็ว น้ำหนักเบา ด้านในเป็นตาข่าย ของแท้ มีป้ายครบ พร้อมส่งจากไทย กางเกงขาสั้น', '', '', '', 589.00, '/upload/5c09aa9ed7ce495a/e9bb74732de16a88.png', 1647588819, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1436, 'นวมเด็ก และ นวมผู้ใหญ่ นวมชกมวย นวม นวมชกมวยเด็ก นวมมวยไทย มวย นวมต่อยมวย นวมซ้อมมวย หนังเทียม Boxing Gloves Muaythai', '', 'นวมเด็ก และ นวมผู้ใหญ่ นวมชกมวย นวม นวมชกมวยเด็ก นวมมวยไทย มวย นวมต่อยมวย นวมซ้อมมวย หนังเทียม Boxing Gloves Muaythai', '', '', '', 649.00, '/upload/76899202d2ee09f6/9b6bcd5b2061e772.png', 1647588861, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1437, 'Bonnie Collection (Crossbody bag)', '', 'Bonnie Collection (Crossbody bag)', '', '', '', 400.00, '/upload/5d367bceb97ae6bb/fdf0e96489323b90.png', 1647588903, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1438, '[NEW ARRIVAL] LEE กางเกงยีนส์ ทรง BRUCE รุ่น LE L1BRU010 สีขาว ลี เสื้อผ้าผู้ชาย กางเกงยีนส์ กางเกงยีนส์ผู้ชาย', '', '[NEW ARRIVAL] LEE กางเกงยีนส์ ทรง BRUCE รุ่น LE L1BRU010 สีขาว ลี เสื้อผ้าผู้ชาย กางเกงยีนส์ กางเกงยีนส์ผู้ชาย', '', '', '', 750.00, '/upload/df8f3cd91dd8137d/898979d5809ad6e8.png', 1647588976, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1439, 'รองเท้ารุ่น ♥️ ​ * อิคคิว *♥️ ​ แนะนำ บวกไซพื้นนุ่ม', '', 'รองเท้ารุ่น ♥️ ​ * อิคคิว *♥️ ​ แนะนำ บวกไซพื้นนุ่ม', '', '', '', 200.00, '/upload/e57c64a6fc152911/ad79ceef419a5384.jpg', 1647589007, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1440, 'กางเกงยีนส์ขาสั้น คาดรอบขาด้วยหนัง เเต่งขาด (เเถมเข็มขัด)', '', 'กางเกงยีนส์ขาสั้น คาดรอบขาด้วยหนัง เเต่งขาด (เเถมเข็มขัด)', '', '', '', 590.00, '/upload/4327f4f5ba763913/6cced38462b762fd.png', 1647589012, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1441, '(โค้ดลด12%—> 18DCFWFW )(30+ลาย)เสื้อยืดแขนสั้นทรง oversized อก40”ยาว28”ผ้าcotton TC แห้งไว ไม่ต้องรีด', '', '(โค้ดลด12%—> 18DCFWFW )(30+ลาย)เสื้อยืดแขนสั้นทรง oversized อก40”ยาว28”ผ้าcotton TC แห้งไว ไม่ต้องรีด', '', '', '', 120.00, '/upload/74c41aca3c45beb2/f1801210790db366.jpg', 1647589070, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1442, 'หม้อหุงข้าว 1.0ลิตร หม้อในเคลือบเทฟล่อน รุ่น SK-129 , เครื่องใช้ไฟฟ้า หม้อหุงข้าวไฟฟ้า หม้อหุงข้าว1ลิต หมอหุงข้าว', '', 'หม้อหุงข้าว 1.0ลิตร หม้อในเคลือบเทฟล่อน รุ่น SK-129 , เครื่องใช้ไฟฟ้า หม้อหุงข้าวไฟฟ้า หม้อหุงข้าว1ลิต หมอหุงข้าว', '', '', '', 700.00, '/upload/72c8d70ff467f6f4/b69915fa67b04b5e.png', 1647589111, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1443, 'Oy โต๊ะ120CM โต๊ะทำงานไม้ โต๊ะคอมพิวเตอร์ โต๊ะทํางาน 2ชั้นComputer Desk ชุดโต๊ะทํางาน โต๊ะคอม', '', 'Oy โต๊ะ120CM โต๊ะทำงานไม้ โต๊ะคอมพิวเตอร์ โต๊ะทํางาน 2ชั้นComputer Desk ชุดโต๊ะทํางาน โต๊ะคอม', '', '', '', 1000.00, '/upload/5a30454b08b0e8b2/6d74dcaf02c8e381.png', 1647589143, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1444, 'SKMEI นาฬิกาข้อมือดิจิทัล LED สายสเตนเลส แบบกันน้ำ สำหรับผู้หญิง（Updated version）', '', 'SKMEI นาฬิกาข้อมือดิจิทัล LED สายสเตนเลส แบบกันน้ำ สำหรับผู้หญิง（Updated version）', '', '', '', 150.00, '/upload/c468cdc0aefa4158/191179a1b2631a83.jpg', 1647589150, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1445, 'EQUL ตู้ใส่เสื้อผ้า ตู้เก็บของ ตู้เก็บเสื้อผ้า ตู้พลาสติกแขวนเสื้อผ้า 2in1ตู้อเนกประสงค์ ถอดประกอบเองได้ ตู้เสื้อผ้า', '', 'EQUL ตู้ใส่เสื้อผ้า ตู้เก็บของ ตู้เก็บเสื้อผ้า ตู้พลาสติกแขวนเสื้อผ้า 2in1ตู้อเนกประสงค์ ถอดประกอบเองได้ ตู้เสื้อผ้า', '', '', '', 929.00, '/upload/b0c89a643220c0ef/4ff1dd776a69327f.png', 1647589197, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1446, 'Posee2022 Velcro รองเท้าแตะสไตล์เกาหลี นุ่มและสะดวกสบายสําหรับผู้หญิง', '', 'Posee2022 Velcro รองเท้าแตะสไตล์เกาหลี นุ่มและสะดวกสบายสําหรับผู้หญิง', '', '', '', 205.00, '/upload/7a8be2c9c0c836a0/1b63859319ad4f6e.jpg', 1647589239, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1447, 'Mc Jeans เสื้อกันหนาว MC รุ่น MJHP026 Unisex มีฮู้ด 4 สี เสื้อกันหนาว', '', 'Mc Jeans เสื้อกันหนาว MC รุ่น MJHP026 Unisex มีฮู้ด 4 สี เสื้อกันหนาว', '', '', '', 995.00, '/upload/84e6bc78684637c2/4ed66cfebed2392c.png', 1647589255, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1448, 'Mc Jeans รองเท้าผ้าใบ M09Z006 Unisex สีขาว', '', 'Mc Jeans รองเท้าผ้าใบ M09Z006 Unisex สีขาว', '', '', '', 907.00, '/upload/f6a1c9bfbeb78398/5aa7cdfdfb27f6ed.png', 1647589344, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1449, 'FBT เสื้อฟุตบอลคอกลม เสื้อคอกลม เสื้อกีฬา เสื้อออกกำลังกาย เสื้อฟิสเนต เสื้อลำลอง เสื้อแขนสั้น เสื้อสีพื้น 12269', '', 'FBT เสื้อฟุตบอลคอกลม เสื้อคอกลม เสื้อกีฬา เสื้อออกกำลังกาย เสื้อฟิสเนต เสื้อลำลอง เสื้อแขนสั้น เสื้อสีพื้น 12269', '', '', '', 129.00, '/upload/3c5b4c9b614ebadf/71769b781df25c13.jpg', 1647589422, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1450, 'ใหม่เสื้อกันหนาวมีฮู้ดฤดูใบไม้ร่วงและฤดูหนาวแจ็คเก็ตเบสบอลชายเสื้อกีฬาเกาหลี plus กำมะหยี่หนา', '', 'ใหม่เสื้อกันหนาวมีฮู้ดฤดูใบไม้ร่วงและฤดูหนาวแจ็คเก็ตเบสบอลชายเสื้อกีฬาเกาหลี plus กำมะหยี่หนา', '', '', '', 567.00, '/upload/dd6fcf8bed80c680/e7b22dc1ce015062.png', 1647589466, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1451, 'ฤดูใบไม้ร่วงการค้าต่างประเทศข้ามภูมิภาค Amazon ผู้ชายแจ็คเก็ตแบบสบาย ๆ กองทัพอากาศหมายเลข 1', '', 'ฤดูใบไม้ร่วงการค้าต่างประเทศข้ามภูมิภาค Amazon ผู้ชายแจ็คเก็ตแบบสบาย ๆ กองทัพอากาศหมายเลข 1', '', '', '', 822.00, '/upload/0cd450d0059b094d/39d397385971e044.png', 1647589530, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1452, 'คุณภาพสูงจากโรงงานโดยตรง 2018 ฤดูหนาวใหม่แจ็คเก็ตยีนส์ผู้ชายบวกกำมะหยี่หนาอบอุ่นแจ็คเก็ตผ้าฝ้ายสไตล์เกาหลีเทรนด์บางขนาดบ', '', 'คุณภาพสูงจากโรงงานโดยตรง 2018 ฤดูหนาวใหม่แจ็คเก็ตยีนส์ผู้ชายบวกกำมะหยี่หนาอบอุ่นแจ็คเก็ตผ้าฝ้ายสไตล์เกาหลีเทรนด์บางขนาดบ', '', '', '', 803.00, '/upload/897b6c858d57b664/196155c23ef00168.png', 1647589697, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1453, 'BONCHIสว่านไร้สาย 99V 2ระบบ ปรับสปีดได้ สำหรับเจาะไม้ เหล็ก ขันน็อตสกรู พร้อมแบตเตอรี่ 2 ก้อน อุปกรณ์ครบชุด ทั้งหมด29ช', '', 'BONCHIสว่านไร้สาย 99V 2ระบบ ปรับสปีดได้ สำหรับเจาะไม้ เหล็ก ขันน็อตสกรู พร้อมแบตเตอรี่ 2 ก้อน อุปกรณ์ครบชุด ทั้งหมด29ช', '', '', '', 500.00, '/upload/69c72079d5fd062b/4e9294398e89bc5e.png', 1647589751, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1454, 'K120 เสื้อลูกไม้ไซส์ใหญ่?38-46 นิ้ว เสื้อผ้าสาวอวบ แฟชั่นผู้หญิง ออกงาน', '', 'K120 เสื้อลูกไม้ไซส์ใหญ่?38-46 นิ้ว เสื้อผ้าสาวอวบ แฟชั่นผู้หญิง ออกงาน', '', '', '', 580.00, '/upload/9f5e014339e681fd/c8dd628de6f6983b.png', 1647589793, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1455, 'Kito รองเท้าผ้าใบ รุ่น BE7 Size 36-44', '', 'Kito รองเท้าผ้าใบ รุ่น BE7 Size 36-44', '', '', '', 275.00, '/upload/6eefe4cc10075101/255f9347cc6e413c.jpg', 1647589851, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1456, 'Baoji 727 Sunshine Day รองเท้าผ้าใบ ผู้หญิง บาโอจิ รองรับการวิ่ง', '', 'Baoji 727 Sunshine Day รองเท้าผ้าใบ ผู้หญิง บาโอจิ รองรับการวิ่ง', '', '', '', 500.00, '/upload/33b201633527f6d7/1f681ee0ed6980a8.jpg', 1647589940, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1457, 'WARRIX เสื้อโปโล วอริกซ์ WA-PLA330NP', '', 'WARRIX เสื้อโปโล วอริกซ์ WA-PLA330NP', '', '', '', 159.00, '/upload/ef4e0138557e393d/92ec7b00950c1027.jpg', 1647590097, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1458, '「สินค้าลิขสิทธิ์แท้」Iris Boutique IS138-IP018 Summer night set เสื้อผ้าแฟชั่นผู้หญิง ชุดเข้าเซท [Pre15days]', '', '「สินค้าลิขสิทธิ์แท้」Iris Boutique IS138-IP018 Summer night set เสื้อผ้าแฟชั่นผู้หญิง ชุดเข้าเซท [Pre15days]', '', '', '', 790.00, '/upload/b086ffc13c71ec77/5b497e698f18c586.png', 1647590208, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1459, 'Haier Hand Mixer เครื่องผสมอาหารมือถือ กำลังไฟฟ้า 300 วัตต์ รุ่น HHM-1132', '', 'Haier Hand Mixer เครื่องผสมอาหารมือถือ กำลังไฟฟ้า 300 วัตต์ รุ่น HHM-1132', '', '', '', 500.00, '/upload/39c578722079d6fe/56462d6895a536ac.jpg', 1647590210, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1460, 'Under Armour UA Men\'s Blitzing 3.0 Cap หมวกแก๊ปสำหรับผู้ชาย', '', 'Under Armour UA Men\'s Blitzing 3.0 Cap หมวกแก๊ปสำหรับผู้ชาย', '', '', '', 890.00, '/upload/6e2ad281a03580df/8436fa91b515fcf2.png', 1647590339, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1461, 'เนสกาแฟ โคลด์ บริว เพียวแบล็ค กาแฟพร้อมดื่ม แบบขวด 220 มล. (แพ็ค 6 ขวด) NESCAFE', '', 'เนสกาแฟ โคลด์ บริว เพียวแบล็ค กาแฟพร้อมดื่ม แบบขวด 220 มล. (แพ็ค 6 ขวด) NESCAFE', '', '', '', 234.00, '/upload/d30ace7167f2c263/36ebf14d88ea35de.jpg', 1647590469, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1462, 'Under Armour UA Men\'s Playmaker Fixed Strap Slides อันเดอร์ อาร์เมอร์ รองเท้าแตะ สำหรับผู้ชาย รุ่น Playmaker Fixed', '', 'Under Armour UA Men\'s Playmaker Fixed Strap Slides อันเดอร์ อาร์เมอร์ รองเท้าแตะ สำหรับผู้ชาย รุ่น Playmaker Fixed', '', '', '', 990.00, '/upload/d926adbf05ee4176/54855284d589e78c.png', 1647590582, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1463, 'ANCHOR ถ้วยตวง 8 ออนซ์ รุ่น ANC-55175 VERASU วีรสุ อุปกรณ์ทำขนม ถ้วยตวง', '', 'ANCHOR ถ้วยตวง 8 ออนซ์ รุ่น ANC-55175 VERASU วีรสุ อุปกรณ์ทำขนม ถ้วยตวง', '', '', '', 275.00, '/upload/c29a57562af5b916/e082bf63dd263798.jpg', 1647590584, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1464, 'Nike ไนกี้ หมวก หมวกแก๊ป UX Cap NSW Heritage 86 Futura 913011-100 WH (700)', '', 'Nike ไนกี้ หมวก หมวกแก๊ป UX Cap NSW Heritage 86 Futura 913011-100 WH (700)', '', '', '', 560.00, '/upload/61a635c984ca56d5/88c1732761fd8220.png', 1647590720, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1465, 'ครื่องชั่งน้ำหนัก เครื่องชั่งน้ำหนักดิจิตอล ตราชั่งดิจิตอล อัจฉริยะ ที่ชั่ง ตาชั่ง ตาชั่ง', '', 'ครื่องชั่งน้ำหนัก เครื่องชั่งน้ำหนักดิจิตอล ตราชั่งดิจิตอล อัจฉริยะ ที่ชั่ง ตาชั่ง ตาชั่ง', '', '', '', 279.00, '/upload/7a59ffd8f6972f36/e7c6d0e76f9aaf73.jpg', 1647590722, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1466, 'NESCAFÉ Americano House Blend Ready-to-Drink Coffee เนสกาแฟ อเมริกาโน เฮาส์ เบลนด์ กาแฟพร้อมดื่ม แบบขวด 950 มล. (แพ็ค 6 ขวด)', '', 'NESCAFÉ Americano House Blend Ready-to-Drink Coffee เนสกาแฟ อเมริกาโน เฮาส์ เบลนด์ กาแฟพร้อมดื่ม แบบขวด 950 มล. (แพ็ค 6 ขวด)', '', '', '', 275.00, '/upload/fa07df004f976cda/fd3a067cbe5c15cd.jpg', 1647590892, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1467, 'HOTO Smart Kitchen Scale เครื่องชั่งน้ำหนัก เครื่องตวงอาหาร จอแสดงผล LED', '', 'HOTO Smart Kitchen Scale เครื่องชั่งน้ำหนัก เครื่องตวงอาหาร จอแสดงผล LED', '', '', '', 500.00, '/upload/1d37bf634d8d14ee/33213e450d10cca0.jpg', 1647590955, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1468, 'Jordan&Judy Desktop Makeup Mirror กระจกแต่งหน้า ไฟ LED อัจฉริยะพกพา', '', 'Jordan&Judy Desktop Makeup Mirror กระจกแต่งหน้า ไฟ LED อัจฉริยะพกพา', '', '', '', 219.00, '/upload/bf347a3defa26ea2/fd18a3fe7c7e808b.jpg', 1647591036, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1469, 'ShowSee Electric Nose Hair Trimmer C1-BK เครื่องกำจัดขนจมูกไฟฟ้าแบบพกพา', '', 'ShowSee Electric Nose Hair Trimmer C1-BK เครื่องกำจัดขนจมูกไฟฟ้าแบบพกพา', '', '', '', 169.00, '/upload/9796813d4ebc3042/664768e60d07e932.jpg', 1647591105, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1470, 'FAMLY: โต๊ะมินิมอล โต๊ะคอมพิวเตอร์ โต๊ะคอม โต๊ะทำงาน พร้อมส่ง มี 2 ขนาด 70x40 และ 80x50 cm(สินค้ามี 3 สี)(พร้อมส่ง)', '', 'FAMLY: โต๊ะมินิมอล โต๊ะคอมพิวเตอร์ โต๊ะคอม โต๊ะทำงาน พร้อมส่ง มี 2 ขนาด 70x40 และ 80x50 cm(สินค้ามี 3 สี)(พร้อมส่ง)', '', '', '', 399.00, '/upload/328dbaaf2f392791/253faa4503189f0a.jpg', 1647591361, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1471, 'Nike Collection ไนกี้ หมวกบักเก็ต หมวกปีกรอบ หมวกสำหรับเด็ก NSW Bucket Futura Wash DC3967-072 / DC3967-010 (900)', '', 'Nike Collection ไนกี้ หมวกบักเก็ต หมวกปีกรอบ หมวกสำหรับเด็ก NSW Bucket Futura Wash DC3967-072 / DC3967-010 (900)', '', '', '', 720.00, '/upload/fa81b4c61cadb32c/d257a11364869417.png', 1647591392, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1472, 'Adidas หมวกอดิดาส หมวกบัคเก็ต หมวกปีกรอบ สำหรับผู้ชาย และผู้หญิง สีดำ SPF Adicolor Trefoil Bucket Hat AJ8995 BK(1100)T', '', 'Adidas หมวกอดิดาส หมวกบัคเก็ต หมวกปีกรอบ สำหรับผู้ชาย และผู้หญิง สีดำ SPF Adicolor Trefoil Bucket Hat AJ8995 BK(1100)T', '', '', '', 720.00, '/upload/7bcf1bff6776d17f/e77a8235947c98c5.png', 1647591474, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1473, 'Marwell มาร์เวลล์ เข็มขัดหนังแท้ รุ่น MW 52-0015', '', 'Marwell มาร์เวลล์ เข็มขัดหนังแท้ รุ่น MW 52-0015', '', '', '', 950.00, '/upload/4314edd5c63c1b99/d2d64aeee4143265.png', 1647591507, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1474, 'FBT เชือกกระโดด เชือกออกกำลังกาย เชือกกระโดดด้ามพลาสติก สีแดง,สีน้ำเงิน รหัส 47313', '', 'FBT เชือกกระโดด เชือกออกกำลังกาย เชือกกระโดดด้ามพลาสติก สีแดง,สีน้ำเงิน รหัส 47313', '', '', '', 144.00, '/upload/fa6e1b7172635e62/bec7d76cedb5089b.jpg', 1647591522, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1475, 'LEE เข็มขัด ผู้ชาย BELT รุ่น LE L1802002 สีน้ำตาล ลี เข็มขัด เสื้อผ้าผู้ชาย', '', 'LEE เข็มขัด ผู้ชาย BELT รุ่น LE L1802002 สีน้ำตาล ลี เข็มขัด เสื้อผ้าผู้ชาย', '', '', '', 891.00, '/upload/4e090854248b01ea/4b5fe47b330e36ce.png', 1647591554, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1476, 'Marwell (มาร์เวลล์)เข็มขัดสุภาพบุรุษ รุ่น MW 59-0036 สีดำ', '', 'Marwell (มาร์เวลล์)เข็มขัดสุภาพบุรุษ รุ่น MW 59-0036 สีดำ', '', '', '', 550.00, '/upload/eb45c5dff7e481f0/24e9591242ba55b6.png', 1647591588, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1477, 'RYBACK table เก้าอี้พับ โต๊ะเก้าอี้ โต๊ะรับประทานอาหาร เก้าอี้กินข้าว โต๊ะกินข้าว กาง-พับได้', '', 'RYBACK table เก้าอี้พับ โต๊ะเก้าอี้ โต๊ะรับประทานอาหาร เก้าอี้กินข้าว โต๊ะกินข้าว กาง-พับได้', '', '', '', 628.00, '/upload/5b91bf71c7f8a80d/4dfaf08563893eb8.png', 1647591696, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1478, 'FBT ดัมเบลลูกตุ้ม (แพคคู่) รหัส 99917', '', 'FBT ดัมเบลลูกตุ้ม (แพคคู่) รหัส 99917', '', '', '', 261.00, '/upload/f5b11f50ae09799f/41a53f9ed28bb1bc.jpg', 1647591779, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1479, '[รุ่นใหม่ 4สี] HomeHuk เก้าอี้กินข้าวเด็ก เบาะหนังรองนั่ง ถาดรองอาหาร ล้อเลื่อน ปรับได้ 5 แบบ เก้าอี้เด็ก เก้าอี้ โต๊ะเด็ก โต๊ะ โต๊ะกินข้าวเด็ก เก้าอี้สูง เก้าอี้เด็กสูง Baby Highchair with Caster โฮมฮัก', '', '[รุ่นใหม่ 4สี] HomeHuk เก้าอี้กินข้าวเด็ก เบาะหนังรองนั่ง ถาดรองอาหาร ล้อเลื่อน ปรับได้ 5 แบบ เก้าอี้เด็ก เก้าอี้ โต๊ะเด็ก โต๊ะ โต๊ะกินข้าวเด็ก เก้าอี้สูง เก้าอี้เด็กสูง Baby Highchair with Caster โฮมฮัก', '', '', '', 749.00, '/upload/541f0f9dd053ca1b/5375264fd063714f.png', 1647591784, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1480, 'FBT LIVEPRO เคเทิลเบล เคเทิลบอล เคตเทิลเบล Kettlebell LP2047B 6กก 6KG 67363', '', 'FBT LIVEPRO เคเทิลเบล เคเทิลบอล เคตเทิลเบล Kettlebell LP2047B 6กก 6KG 67363', '', '', '', 432.00, '/upload/00a532aed3ef64aa/e5ef1c652d160465.jpg', 1647591842, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1481, 'FBT ถุงเท้ากันลื่น ถุงเท้าออกกำลังกาย รหัส 82514', '', 'FBT ถุงเท้ากันลื่น ถุงเท้าออกกำลังกาย รหัส 82514', '', '', '', 101.00, '/upload/03e8e8e78f6d5def/b5615794fd3a651c.jpg', 1647591937, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1482, 'HomePro เก้าอี้ รุ่น Unit C-116-1 หนัง PU สีดำ ขนาด 53x79x60 ซม. แบรนด์ Furdini', '', 'HomePro เก้าอี้ รุ่น Unit C-116-1 หนัง PU สีดำ ขนาด 53x79x60 ซม. แบรนด์ Furdini', '', '', '', 690.00, '/upload/322856ba5d48f2bb/f2d87a1a969cc885.png', 1647591940, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1483, 'HomeHuk เก้าอี้กินข้าว เบาะหนัง / เบาะผ้า ขาเหล็ก พนักพิงกลางหลัง รับสรีระ 37x40.5x95 cm รับน้ำหนัก 120 kg เก้าอี้เบาะหนัง เก้าอี้หนัง เก้าอี้นั่ง เก้าอี้มินิมอล เก้าอี้พักผ่อน เก้าอี้ทำงาน เก้าอี้ร้านอาหาร PU Leather Dining Chair', '', 'HomeHuk เก้าอี้กินข้าว เบาะหนัง / เบาะผ้า ขาเหล็ก พนักพิงกลางหลัง รับสรีระ 37x40.5x95 cm รับน้ำหนัก 120 kg เก้าอี้เบาะหนัง เก้าอี้หนัง เก้าอี้นั่ง เก้าอี้มินิมอล เก้าอี้พักผ่อน เก้าอี้ทำงาน เก้าอี้ร้านอาหาร PU Leather Dining Chair', '', '', '', 559.00, '/upload/374fb6596b379416/36d3f3e70ea43ac5.png', 1647591983, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1484, 'EQUAL ราวไม้ ราวแขวนเสื้อผ้าอเนกประสงค์ ราวแขวน ราวสามขา แขวนกระเป๋า ราวผ้าตั้งพื้น แขวนหมวก แขวนเสื้อ ราวแขวนผ้า', '', 'EQUAL ราวไม้ ราวแขวนเสื้อผ้าอเนกประสงค์ ราวแขวน ราวสามขา แขวนกระเป๋า ราวผ้าตั้งพื้น แขวนหมวก แขวนเสื้อ ราวแขวนผ้า', '', '', '', 349.00, '/upload/9ed4e92ab805b647/700980c5ab63cf98.jpg', 1647592389, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1485, 'EQUAL ชั้นวางของมีล้อ ชั้นวางของในครัว วางของครัว ชั้นเก็บของ ชั้นเก็บอเนกประสงค์ ชั้นเหล็ก ชั้นวางของสแตนเลส ชั้นวาง', '', 'EQUAL ชั้นวางของมีล้อ ชั้นวางของในครัว วางของครัว ชั้นเก็บของ ชั้นเก็บอเนกประสงค์ ชั้นเหล็ก ชั้นวางของสแตนเลส ชั้นวาง', '', '', '', 438.00, '/upload/5d195786854d9d87/ddb3474eb987deff.jpg', 1647592514, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1486, 'EQUAL ที่เก็บร้องเท้า ชั้นวางรองเท้า DIY ชั้นวางรองเท้า วางร่มได้ ที่เก็บรองเท้า จัดระเบียบรองเท้า ชั้นวาง ชั้นวาง', '', 'EQUAL ที่เก็บร้องเท้า ชั้นวางรองเท้า DIY ชั้นวางรองเท้า วางร่มได้ ที่เก็บรองเท้า จัดระเบียบรองเท้า ชั้นวาง ชั้นวาง', '', '', '', 348.00, '/upload/0795a51e9626c526/11ad84b4e8556f0c.jpg', 1647592722, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1487, 'ไฮยีน เอ็กซ์เพิร์ท แคร์ น้ำยาปรับผ้านุ่มสูตรเข้มข้นพิเศษ 3500มล.', '', 'ไฮยีน เอ็กซ์เพิร์ท แคร์ น้ำยาปรับผ้านุ่มสูตรเข้มข้นพิเศษ 3500มล.', '', '', '', 259.00, '/upload/af1d2f2eba71e6c6/4600eb135827f689.jpg', 1647592853, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1488, 'KAISER เก้าอี้สนามพับได้ เก้าอี้สนาม เก้าอี้แคมป์ปิ้ง เก้าอี้ปิคนิค เก้าอี้แคมป์ ปรับเอนนอนได้ 150 กก ส่งถุงเก็บ', '', 'KAISER เก้าอี้สนามพับได้ เก้าอี้สนาม เก้าอี้แคมป์ปิ้ง เก้าอี้ปิคนิค เก้าอี้แคมป์ ปรับเอนนอนได้ 150 กก ส่งถุงเก็บ', '', '', '', 575.00, '/upload/217c383be7afe2e8/5e6e7f8edc75d592.png', 1647593298, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1489, 'Haoli เครื่องดูดฝุ่นในรถยนต์ เครื่องดูดฝุ่นในรถ เครื่องดูดฝุ่น ไร้สาย ที่ดูดฝุ่นในรถ ดูดฝุ่น USB 16000pa Vacuum Cleaner', '', 'Haoli เครื่องดูดฝุ่นในรถยนต์ เครื่องดูดฝุ่นในรถ เครื่องดูดฝุ่น ไร้สาย ที่ดูดฝุ่นในรถ ดูดฝุ่น USB 16000pa Vacuum Cleaner', '', '', '', 175.00, '/upload/ee186faa63d32257/b1c301f1f7590d10.jpg', 1647593807, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1490, 'เครื่องชั่งดิจิตอลแสตนเลส MAXIE รุ่น15กิโล 4หน่วยตวง รุ่น3IN1(USB/ใช้ถ่าน/สำรองแบต) Stainless Steel Kitchen scale', '', 'เครื่องชั่งดิจิตอลแสตนเลส MAXIE รุ่น15กิโล 4หน่วยตวง รุ่น3IN1(USB/ใช้ถ่าน/สำรองแบต) Stainless Steel Kitchen scale', '', '', '', 329.00, '/upload/9f8fb859c0b4be89/a3f179bfb9d66a9e.jpg', 1647593925, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1491, '♥ น้ำหอมแท้100%แบ่งขาย Estee Lauder Modern Muse EDP แท้ 100%', '', '♥ น้ำหอมแท้100%แบ่งขาย Estee Lauder Modern Muse EDP แท้ 100%', '', '', '', 325.00, '/upload/e85881a2b49e3530/47d01b838f6726e6.jpg', 1647594175, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1492, 'SKMEI 1251 นาฬิกาข้อมือดิจิตอล แท้ 100% พร้อมกล่องใบครบเซ็ต สไตล์สปอร์ต (มีไซส์ชาย/หญิง)', '', 'SKMEI 1251 นาฬิกาข้อมือดิจิตอล แท้ 100% พร้อมกล่องใบครบเซ็ต สไตล์สปอร์ต (มีไซส์ชาย/หญิง)', '', '', '', 179.00, '/upload/e1197789351a4042/7d83199f6263dc7e.jpg', 1647594312, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1493, 'Bandai SDW Heroes 01 - 17 เลือกแบบด้านใน (Plastic Model)', '', 'Bandai SDW Heroes 01 - 17 เลือกแบบด้านใน (Plastic Model)', '', '', '', 220.00, '/upload/b5af27129866d5f2/2d564446563b186b.jpg', 1647594668, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1494, 'adidas เสื้อยืด Essentials Big Logo ผู้ชาย สีขาว GK9121', '', 'adidas เสื้อยืด Essentials Big Logo ผู้ชาย สีขาว GK9121', '', '', '', 900.00, '/upload/e98e68fa971f4ac6/629877e34670ce0d.png', 1647594698, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1495, 'Xiaomi Ecochain 3Life เครื่องเพิ่มความชื้นแบบไร้สาย รูปทรงแคปซูลแมว ขนาดเล็ก แบบพกพา', '', 'Xiaomi Ecochain 3Life เครื่องเพิ่มความชื้นแบบไร้สาย รูปทรงแคปซูลแมว ขนาดเล็ก แบบพกพา', '', '', '', 320.00, '/upload/91c0e19ffe2e3413/82ab56cc9f233851.jpg', 1647594728, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1496, 'adidas TRAINING Classic Essential Sling Bag ไม่ระบุเพศ สีดำ H30358', '', 'adidas TRAINING Classic Essential Sling Bag ไม่ระบุเพศ สีดำ H30358', '', '', '', 624.00, '/upload/0083510126a3cee6/f8cf7a953631247e.png', 1647594737, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1497, 'adidas เสื้อยืด adidas Designed To Move Big Logo ผู้ชาย สีดำ GN5707', '', 'adidas เสื้อยืด adidas Designed To Move Big Logo ผู้ชาย สีดำ GN5707', '', '', '', 672.00, '/upload/173ec2cfe022db58/76e48b7811e41474.png', 1647594786, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1498, 'เครื่องชั่งดิจิตอลแสตนเลสแท้ รุ่นใหม่ 10 / 3 กิโล มี 3 สีให้เลือก ชั่งได้ 4 หน่วยตวง (Stainless Steel scale) 2-8', '', 'เครื่องชั่งดิจิตอลแสตนเลสแท้ รุ่นใหม่ 10 / 3 กิโล มี 3 สีให้เลือก ชั่งได้ 4 หน่วยตวง (Stainless Steel scale) 2-8', '', '', '', 139.00, '/upload/b56a05a60bdff507/f47e02d78828fa59.jpg', 1647594819, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1499, '[Yangzi] Seki เตาอบไฟฟ้า เตาอบ เตาอบไฟฟ้า32ลิตร', '', '[Yangzi] Seki เตาอบไฟฟ้า เตาอบ เตาอบไฟฟ้า32ลิตร', '', '', '', 1000.00, '/upload/db4ce8fbfd747ea6/c16af44dc8c1f67f.png', 1647594826, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1500, 'NETEL ชั้นวางจาน ชั้นวางท่อระบายน้ำสแตนเลส ชั้นวางของในครัว ชั้นวางช้อนส้อม ชั้นใส่ของ ที่คว่ำจาน ชั้นวางจาน ที่วางจาน ชั้นวางเครื่องปรุงในครัว ชั้นคว่ำจาน ที่เก็บจาน ที่ใส่ช้อน ที่ใส่ช้อนส้อม ที่วางจานชาม ตู้วางของในครัว ชั้นวางของ ชั้นวางของในครัว', '', 'NETEL ชั้นวางจาน ชั้นวางท่อระบายน้ำสแตนเลส ชั้นวางของในครัว ชั้นวางช้อนส้อม ชั้นใส่ของ ที่คว่ำจาน ชั้นวางจาน ที่วางจาน ชั้นวางเครื่องปรุงในครัว ชั้นคว่ำจาน ที่เก็บจาน ที่ใส่ช้อน ที่ใส่ช้อนส้อม ที่วางจานชาม ตู้วางของในครัว ชั้นวางของ ชั้นวางของในครัว', '', '', '', 758.00, '/upload/269b6db1e3395578/a4cf92af0437df03.png', 1647594876, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1501, 'ที่คีบอาหาร สแตนเลสแท้ สีโรสโกลด์ WANNA(มีให้เลือกซื้อ4สี! 2ขนาด!) คีมคีบอาหาร ไม้คีบอาหาร Tong ที่คีบอาหารทอด', '', 'ที่คีบอาหาร สแตนเลสแท้ สีโรสโกลด์ WANNA(มีให้เลือกซื้อ4สี! 2ขนาด!) คีมคีบอาหาร ไม้คีบอาหาร Tong ที่คีบอาหารทอด', '', '', '', 120.00, '/upload/edbb1e902ae823f8/1fb49625e95abbcd.jpg', 1647594911, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1502, 'NETEL ชั้นวางของอเนกประสงค์ ขนาดใหญ่', '', 'NETEL ชั้นวางของอเนกประสงค์ ขนาดใหญ่', '', '', '', 538.00, '/upload/7fc205a255297f6a/65ffd297e436cb5c.png', 1647594926, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1503, 'NETEL ชั้นวางอเนกประสงค์ ชั้นใส่ของ ชั้นวางของ ชั้นวางของในครัว ชั้นวางของใต้ซิงค์ ชั้นเก็บของ ชั้นวางของในครัว ชนิดเลื่อนได้ ประกอบง่าย สำหรับห้องครัว ห้องน้ำ สำนักงาน อ่างล้างจาน', '', 'NETEL ชั้นวางอเนกประสงค์ ชั้นใส่ของ ชั้นวางของ ชั้นวางของในครัว ชั้นวางของใต้ซิงค์ ชั้นเก็บของ ชั้นวางของในครัว ชนิดเลื่อนได้ ประกอบง่าย สำหรับห้องครัว ห้องน้ำ สำนักงาน อ่างล้างจาน', '', '', '', 588.00, '/upload/3e9f2a8cf82a6eaa/eff141781a2ed977.png', 1647594954, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1504, 'เครื่องชั่งอาหาร เครื่องชั่งน้ำหนักดิจิตอล ชาร์จแบตได้ แถมฟรีสาย usb เครื่องชั่งดิจิตอล ชั่งอาหาร ที่ชั่งอาหาร', '', 'เครื่องชั่งอาหาร เครื่องชั่งน้ำหนักดิจิตอล ชาร์จแบตได้ แถมฟรีสาย usb เครื่องชั่งดิจิตอล ชั่งอาหาร ที่ชั่งอาหาร', '', '', '', 325.00, '/upload/b8709df69454bca2/99165a9b30817a1b.jpg', 1647594992, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1505, 'เครื่องชั่งดิจิตอล ถาดสแตนเลส ชั่งได้ 5 Kg ชาร์จแบตได้ ใส่ถ่านได้ หน้าจอ LED เครื่องชั่งอาหาร เครื่องชั่งน้ำหนัก', '', 'เครื่องชั่งดิจิตอล ถาดสแตนเลส ชั่งได้ 5 Kg ชาร์จแบตได้ ใส่ถ่านได้ หน้าจอ LED เครื่องชั่งอาหาร เครื่องชั่งน้ำหนัก', '', '', '', 395.00, '/upload/796a20ec789b5f96/bd7ee644b1b5b55a.jpg', 1647595095, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1506, 'ของแท้?❗ Yunteng VCT-5218 ขาตั้งกล้อง ขาตั้งมือถือมือถือ พร้อมรีโมทบลูทูธ TRIPOD', '', 'ของแท้?❗ Yunteng VCT-5218 ขาตั้งกล้อง ขาตั้งมือถือมือถือ พร้อมรีโมทบลูทูธ TRIPOD', '', '', '', 499.00, '/upload/d6c334cf2bc421a0/26cd0b718687dba5.jpg', 1647595302, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1507, 'PULUZ Card Reader 22in1 Memory Card Case for 1Standard SIM 2Micro-SIM 2Nano-SIM 3CF 7SD 6TF 1CARD PIN', '', 'PULUZ Card Reader 22in1 Memory Card Case for 1Standard SIM 2Micro-SIM 2Nano-SIM 3CF 7SD 6TF 1CARD PIN', '', '', '', 499.00, '/upload/feb183ff2439ea42/e3a0f634fd214a17.jpg', 1647595451, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1508, 'ชุดเครื่องครัว ชุดครัว 13 ชิ้น ซิลิโคน ทนความร้อน เครื่องครัว ทัพพี ตะหลิว Kitchen set', '', 'ชุดเครื่องครัว ชุดครัว 13 ชิ้น ซิลิโคน ทนความร้อน เครื่องครัว ทัพพี ตะหลิว Kitchen set', '', '', '', 288.00, '/upload/8c5efedc38048289/42077106b0331c35.jpg', 1647595567, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1509, 'โกนหนวดไฟฟ้า ที่โกนหนวดไฟฟ้า เครื่องโกนหนวดไฟฟ้า ที่โกนหนวดชาย เครื่องโกนหนวด มีดโกนหนวดชาย ที่โกนหนวด', '', 'โกนหนวดไฟฟ้า ที่โกนหนวดไฟฟ้า เครื่องโกนหนวดไฟฟ้า ที่โกนหนวดชาย เครื่องโกนหนวด มีดโกนหนวดชาย ที่โกนหนวด', '', '', '', 225.00, '/upload/03c517ceec4496c2/406ca74380ecb46c.jpg', 1647595758, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1510, 'DUERDEAO260ml ซักรองเท้าขาว โฟมทำความสะอาดรองเท้า น้ำยาทำความสะอาดรองเท้า โฟมซักรองเท้า น้ำยาซักรองเท้าขาว', '', 'DUERDEAO260ml ซักรองเท้าขาว โฟมทำความสะอาดรองเท้า น้ำยาทำความสะอาดรองเท้า โฟมซักรองเท้า น้ำยาซักรองเท้าขาว', '', '', '', 155.00, '/upload/b2aed3fc0d7fa23d/afab523c5355a323.jpg', 1647595855, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1511, 'WOOD OUTLET (คลังวัสดุไม้) ประตู HDF รุ่น 6 ลูกฟัก ขนาด 80x180 cm.ประตูห้องนอน ประตูห้อง', '', 'WOOD OUTLET (คลังวัสดุไม้) ประตู HDF รุ่น 6 ลูกฟัก ขนาด 80x180 cm.ประตูห้องนอน ประตูห้อง', '', '', '', 699.00, '/upload/791d8cc7b56b2517/439d1b1ceec00bd7.png', 1647595993, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1512, 'LIMEID คีย์บอร์ด คีบอร์ดเกมมิ่ง คีย์บอร์ดมีไฟ ชุดคีย์บอร์ดเมาส์ แป้นพิมพ์เครื่องกล คีย์บอร์ดเกมมิ่ง คีย์บอร์ด LED', '', 'LIMEID คีย์บอร์ด คีบอร์ดเกมมิ่ง คีย์บอร์ดมีไฟ ชุดคีย์บอร์ดเมาส์ แป้นพิมพ์เครื่องกล คีย์บอร์ดเกมมิ่ง คีย์บอร์ด LED', '', '', '', 359.00, '/upload/af6c2572c5daec8d/7e4c71e1ef9a4245.jpg', 1647596030, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1513, 'Eagle Eyes Magnetic Clip-On แว่นกันแดดกรองแสง พร้อมเลนส์ 4 ชิ้น โดย TV Direct', '', 'Eagle Eyes Magnetic Clip-On แว่นกันแดดกรองแสง พร้อมเลนส์ 4 ชิ้น โดย TV Direct', '', '', '', 990.00, '/upload/703fab13f24c6917/c976d883085581a8.png', 1647596098, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1514, 'SMART GUARD (แถมไฟ LED 1หลอดเพิ่ม) + SMART SOLAR CENSOR 2 ดวง ราคา 990 บาทโดย TV Direct', '', 'SMART GUARD (แถมไฟ LED 1หลอดเพิ่ม) + SMART SOLAR CENSOR 2 ดวง ราคา 990 บาทโดย TV Direct', '', '', '', 990.00, '/upload/dcd6af9d7c75e755/ed39a16e9b1f78a8.png', 1647596132, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1515, 'New Women Workout Sets Scrunch Butt Leggings Open back Sports Bra High Waist Women Yoga Pants Leggings Seamless Yoga Set', '', 'New Women Workout Sets Scrunch Butt Leggings Open back Sports Bra High Waist Women Yoga Pants Leggings Seamless Yoga Set', '', '', '', 442.00, '/upload/4a074f5b1f1a5d64/84c446b5d4865458.jpg', 1647596374, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1516, 'EAGLE EYES แว่นตากันแดด รุ่น RISKY FOLD-UP NL MODEL 1 โดย TV Direct', '', 'EAGLE EYES แว่นตากันแดด รุ่น RISKY FOLD-UP NL MODEL 1 โดย TV Direct', '', '', '', 690.00, '/upload/817d5ee2b7ff2a5e/45bf8438318593c8.png', 1647596392, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1517, 'Three-piece luxury office suit men\'s wedding formal wear standard size suit jacket business suit', '', 'Three-piece luxury office suit men\'s wedding formal wear standard size suit jacket business suit', '', '', '', 500.00, '/upload/f8532b695722a53f/1fcf2b13d8b7d95e.jpg', 1647596456, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1518, '[New Arrival] ETC Couple Umbrella ร่มคู่ ผ้าไนลอน ป้องกันแสงแดด รังสี UV', '', '[New Arrival] ETC Couple Umbrella ร่มคู่ ผ้าไนลอน ป้องกันแสงแดด รังสี UV', '', '', '', 850.00, '/upload/02855bdcedef7e6f/3692afc5abe5896a.png', 1647596532, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1519, '2022 New Fashion kid two piece cotton set 32 solid color sets short sleeve two-piece child\'s wear outfits kid boutique', '', '2022 New Fashion kid two piece cotton set 32 solid color sets short sleeve two-piece child\'s wear outfits kid boutique', '', '', '', 400.00, '/upload/989ae0b4fc08dec9/b0f5f88c4365c8ed.jpg', 1647596565, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1520, 'BGG UV Cut 100% Blocktech Folding Umbrella ร่ม ร่มพับ 3ตอน กันแดด กันยูวี 100% กันฝน ผ้าบล็อคเทค (FM1114)', '', 'BGG UV Cut 100% Blocktech Folding Umbrella ร่ม ร่มพับ 3ตอน กันแดด กันยูวี 100% กันฝน ผ้าบล็อคเทค (FM1114)', '', '', '', 690.00, '/upload/ea761d9da3d7bc46/249c527482a28dd8.png', 1647596607, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1521, 'GRAND SPORT GAเต็นท์ 3 คน 1ประตู 3 หน้าต่าง+ฟรายชีท รหัส : 311063', '', 'GRAND SPORT GAเต็นท์ 3 คน 1ประตู 3 หน้าต่าง+ฟรายชีท รหัส : 311063', '', '', '', 679.00, '/upload/26c454efe0c12565/6dcb5275f7d9ebb8.png', 1647596653, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1522, 'MOLTEN ลูกฟุตบอล หนังเย็บ เบอร์ 4 Football PU pk F4A3400 G (940) (แถมฟรี ตาข่ายใส่ลูกฟุตบอล +เข็มสูบลม+สูบมือ)', '', 'MOLTEN ลูกฟุตบอล หนังเย็บ เบอร์ 4 Football PU pk F4A3400 G (940) (แถมฟรี ตาข่ายใส่ลูกฟุตบอล +เข็มสูบลม+สูบมือ)', '', '', '', 582.00, '/upload/6ea85b28349bbc64/95389f9f91742972.png', 1647596702, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1523, 'High Quality Sphygmomanometer Arm Tensiometers OEM BP Machine Electronic Blood Pressure Monitor Other Household Medical Devices 1 buyer', '', 'High Quality Sphygmomanometer Arm Tensiometers OEM BP Machine Electronic Blood Pressure Monitor Other Household Medical Devices 1 buyer', '', '', '', 499.00, '/upload/a9793c8e8ab57df9/f3a8e6b16732f37e.jpg', 1647596740, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1524, 'MOLTEN ลูกฟุตบอลหนัง เบอร์ 5 Football Hybrid PU pk F5U3600-G0 UEFA (1100)(แถมฟรี ตาข่ายใส่ลูกฟุตบอล +เข็มสูบลม+สูบมือ)', '', 'MOLTEN ลูกฟุตบอลหนัง เบอร์ 5 Football Hybrid PU pk F5U3600-G0 UEFA (1100)(แถมฟรี ตาข่ายใส่ลูกฟุตบอล +เข็มสูบลม+สูบมือ)', '', '', '', 682.00, '/upload/0e4495fce6fb296d/6ae7f1ec0e1c8b2c.png', 1647596772, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1525, '[ลดล้างสต็อก] ADIDAS by FBT รองเท้าฟุตบอล อาดิดาส สตั๊ด PREDATOR 19.4 s FxG EF0383', '', '[ลดล้างสต็อก] ADIDAS by FBT รองเท้าฟุตบอล อาดิดาส สตั๊ด PREDATOR 19.4 s FxG EF0383', '', '', '', 800.00, '/upload/a6623ec524fb037d/1f6e3216bdcc34c5.png', 1647596849, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1526, '[ลดล้างสต็อก] ADIDAS by FBT รองเท้าฟุตบอล อาดิดาส สตั๊ด X 19.4 FxG F35377', '', '[ลดล้างสต็อก] ADIDAS by FBT รองเท้าฟุตบอล อาดิดาส สตั๊ด X 19.4 FxG F35377', '', '', '', 680.00, '/upload/97856fee8201ad71/c89e69ef70cb0b56.png', 1647596934, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1527, 'Home Use Rechargeable Ultrasonic Mesh Nebulizer for Adults Children', '', 'Home Use Rechargeable Ultrasonic Mesh Nebulizer for Adults Children', '', '', '', 350.00, '/upload/fdf79533a305134c/776389ec10c5f914.jpg', 1647596937, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1528, '[ลดล้างสต็อก] ADIDAS by FBT รองเท้าฟุตบอล อาดิดาส สตั๊ด X 19.4 FG F35378', '', '[ลดล้างสต็อก] ADIDAS by FBT รองเท้าฟุตบอล อาดิดาส สตั๊ด X 19.4 FG F35378', '', '', '', 680.00, '/upload/48156605fd03f7ed/6614e96a6a5e603e.png', 1647597024, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1529, 'Spalding ลูกบาสเก็ตบอล รุ่น TF250', '', 'Spalding ลูกบาสเก็ตบอล รุ่น TF250', '', '', '', 990.00, '/upload/1767a219f89ed0c8/578341929e2b1f82.png', 1647597053, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1530, 'Best Selling popular automatic blood pressure monitor Tensiometro blood pressure monitor with factory price', '', 'Best Selling popular automatic blood pressure monitor Tensiometro blood pressure monitor with factory price', '', '', '', 259.00, '/upload/66de87b6b967a184/89fa5457fe23671f.jpg', 1647597059, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1531, 'Nike ไนกี้ บาส ลูกบาสเก็ตบอล เบอร์ 3 Basketball RB Skills K Irving N.100.0691.074(650)', '', 'Nike ไนกี้ บาส ลูกบาสเก็ตบอล เบอร์ 3 Basketball RB Skills K Irving N.100.0691.074(650)', '', '', '', 520.00, '/upload/46b30f722ad8a592/b8a95d8ed54ea037.png', 1647597086, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1532, 'PEAK Lightning \"ECS\" รองเท้าบาสเกตบอล พีค ข้อกลาง นุ่ม ปกป้องข้อเท้า รองรับเท้าได้ดี พื้นทนต่อการสึกหรอ E81053A', '', 'PEAK Lightning \"ECS\" รองเท้าบาสเกตบอล พีค ข้อกลาง นุ่ม ปกป้องข้อเท้า รองรับเท้าได้ดี พื้นทนต่อการสึกหรอ E81053A', '', '', '', 990.00, '/upload/0a0f5698872570a1/7cb83d532ef63b31.png', 1647597110, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1533, 'PEAK Lou Williams Street Master Professional Damping Cushioning Tech รองเท้าบาสเก็ตบอล ไม่มีรอยต่อด้านบน ระบายอากาศ สำหรับผู้ชาย', '', 'PEAK Lou Williams Street Master Professional Damping Cushioning Tech รองเท้าบาสเก็ตบอล ไม่มีรอยต่อด้านบน ระบายอากาศ สำหรับผู้ชาย', '', '', '', 990.00, '/upload/35537e9dfda71b3d/3156e8f914b40045.png', 1647597133, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1534, 'PRIM ถังขยะสแตนเลส ถังขยะสแตนเลสแบบเหยียบ ขนาด 6ลิตร ถังขยะ มีระบบ Soft Close ปิดนุ่มนวล สะดวก ไม่มีเสียง', '', 'PRIM ถังขยะสแตนเลส ถังขยะสแตนเลสแบบเหยียบ ขนาด 6ลิตร ถังขยะ มีระบบ Soft Close ปิดนุ่มนวล สะดวก ไม่มีเสียง', '', '', '', 690.00, '/upload/78afa8b431e06dfd/35544403076ace38.png', 1647597179, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1535, 'adjustable shoulder brace shoulder ice pack shoulder supporter brace for dislocations and injuries', '', 'adjustable shoulder brace shoulder ice pack shoulder supporter brace for dislocations and injuries', '', '', '', 450.00, '/upload/1cb2c32f7d762cc5/c479d5a6c42b2080.jpg', 1647597190, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1536, 'LocknLock ถังขยะ Square Steel Pedal Dust Bin ความจุ 6 L. รุ่น BYP122', '', 'LocknLock ถังขยะ Square Steel Pedal Dust Bin ความจุ 6 L. รุ่น BYP122', '', '', '', 599.00, '/upload/99fc7d7992b04d07/15542e79e1e93f58.png', 1647597210, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1537, 'LocknLock แก้วน้ำเก็บอุณหภูมิ Energetic One Touch Tumbler ความจุ 550 ml. รุ่น LHC3249', '', 'LocknLock แก้วน้ำเก็บอุณหภูมิ Energetic One Touch Tumbler ความจุ 550 ml. รุ่น LHC3249', '', '', '', 539.00, '/upload/213ebb48c8a66d04/d33a82124a99ba61.png', 1647597273, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1538, 'portable oximeter oximeter finger pulse pulse oximeter199', '', 'portable oximeter oximeter finger pulse pulse oximeter', '', '', '', 199.00, '/upload/4805f7f217ea79d4/0962ba066ddeeff3.jpg', 1647597349, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1539, 'ถูกที่สุด>>พร้อมส่ง>>Tpartner กระเป๋าเดินทาง กระเป๋าเดินทางล้อลาก Insta Series เฟรมซิป วัสดุABS+PC สีสดใส 8 สี', '', 'ถูกที่สุด>>พร้อมส่ง>>Tpartner กระเป๋าเดินทาง กระเป๋าเดินทางล้อลาก Insta Series เฟรมซิป วัสดุABS+PC สีสดใส 8 สี', '', '', '', 899.00, '/upload/9dc93b29aa28c942/2f852faf1b40dda3.png', 1647597408, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1540, 'adidas TRAINING กระเป๋าดัฟเฟิลขนาดเล็กพิเศษ 4ATHLTS ไม่ระบุเพศ สีดำ FJ4455', '', 'adidas TRAINING กระเป๋าดัฟเฟิลขนาดเล็กพิเศษ 4ATHLTS ไม่ระบุเพศ สีดำ FJ4455', '', '', '', 616.00, '/upload/e03df0d241f4815c/c113f3585938c519.png', 1647597470, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1541, 'Adidas กระเป๋า กระเป๋าเดินทาง Bag Essentials 3S Duffel GN2041 / GN2042 (900)', '', 'Adidas กระเป๋า กระเป๋าเดินทาง Bag Essentials 3S Duffel GN2041 / GN2042 (900)', '', '', '', 720.00, '/upload/c82f5b9b5c3bf3d1/0f7a2492596fc10c.png', 1647597510, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1542, 'Verbatim Wired Computer Mouse - Corded USB Mouse for Laptops and PCs - Right or Left Hand Use, Black', '', 'Verbatim Wired Computer Mouse - Corded USB Mouse for Laptops and PCs - Right or Left Hand Use, Black', '', '', '', 190.00, '/upload/12c4c78d4f4cc68e/a78ebe55b7f3c76b.jpg', 1647597542, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1543, 'adidas กระเป๋าถือพับเก็บได้ ไม่ระบุเพศ สีดำ GN2020', '', 'adidas กระเป๋าถือพับเก็บได้ ไม่ระบุเพศ สีดำ GN2020', '', '', '', 900.00, '/upload/aef947608074c545/316047b0f8a7527a.png', 1647597546, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1544, 'SKMEI นาฬิกา Smart watch เชื่อม Bluetooth SK-1255 และ Todex Watch Series 7', '', 'SKMEI นาฬิกา Smart watch เชื่อม Bluetooth SK-1255 และ Todex Watch Series 7', '', '', '', 629.00, '/upload/67f526d01d46fbe8/b6de058acef02888.png', 1647597590, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1545, 'BAOFENG BF-F8HP (UV-5R 3rd Gen) 8-Watt Dual Band Two-Way Radio (136-174MHz VHF & 400-520MHz UHF) Includes Full Kit with Large Battery', '', 'BAOFENG BF-F8HP (UV-5R 3rd Gen) 8-Watt Dual Band Two-Way Radio (136-174MHz VHF & 400-520MHz UHF) Includes Full Kit with Large Battery', '', '', '', 499.00, '/upload/806bcf32202e96ce/833165978bd2dd0e.jpg', 1647597616, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1546, 'SKMEI นาฬิกา Smart watch เชื่อม Bluetooth SK-1255 และ Todex Watch Series 7', '', 'SKMEI นาฬิกา Smart watch เชื่อม Bluetooth SK-1255 และ Todex Watch Series 7', '', '', '', 629.00, '/upload/0442da2fc07516ac/adf5118a20458bff.png', 1647597625, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1547, 'Fitbit Versa 2 Health and Fitness Smartwatch with Heart Rate, Music, Alexa Built-In, Sleep and Swim Tracking, Petal/Copper Rose, One Size (S and L Bands Included)', '', 'Fitbit Versa 2 Health and Fitness Smartwatch with Heart Rate, Music, Alexa Built-In, Sleep and Swim Tracking, Petal/Copper Rose, One Size (S and L Bands Included)', '', '', '', 500.00, '/upload/e19962555e4ba0c9/4591edd5e6d77592.jpg', 1647597753, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1548, 'Julius นาฬิกาข้อมือ แบรนด์เกาหลี แฟชั่นฮิตของแท้ รุ่น JA-1190L', '', 'Julius นาฬิกาข้อมือ แบรนด์เกาหลี แฟชั่นฮิตของแท้ รุ่น JA-1190L', '', '', '', 930.00, '/upload/ebec617ba6c3c891/bd30ed0b69e1f5e1.png', 1647597842, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1549, 'Womens Wool Socks, 5 Pairs Vintage Thick Knit Winter Warm Socks for Women Men Gifts', '', 'Womens Wool Socks, 5 Pairs Vintage Thick Knit Winter Warm Socks for Women Men Gifts', '', '', '', 239.00, '/upload/7d19a3e4e227f34a/b2161b6590c37ba8.jpg', 1647597851, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1550, 'WISHDOIT นาฬิกาข้อมือ สายโลหะ กันน้ำ สำหรับผู้ชาย', '', 'WISHDOIT นาฬิกาข้อมือ สายโลหะ กันน้ำ สำหรับผู้ชาย', '', '', '', 559.00, '/upload/0ec1230729c1be46/57f124e244a17414.png', 1647597870, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1551, 'Original Lixada ยางยืดออกกำลังกาย ทนทาน สำหรับยิม โยคะ ฝึกความแข็งแรง 2 ชิ้น', '', 'Original Lixada ยางยืดออกกำลังกาย ทนทาน สำหรับยิม โยคะ ฝึกความแข็งแรง 2 ชิ้น', '', '', '', 905.00, '/upload/c6ca1fa442809d2c/2dd59dcf5034e43d.png', 1647597890, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1552, 'Lixada 3 In 1 เสื้อชูชีพ ผ้าตาข่าย ระบายอากาศ ปลอดภัย สําหรับตกปลา เรือคายัค เรือใบ', '', 'Lixada 3 In 1 เสื้อชูชีพ ผ้าตาข่าย ระบายอากาศ ปลอดภัย สําหรับตกปลา เรือคายัค เรือใบ', '', '', '', 964.00, '/upload/e9e7da9264fd5762/6f09e0a35b1645bb.png', 1647597956, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1553, 'Fuinloth Balaclava Face Mask, Summer Cooling Neck Gaiter, UV Protector Motorcycle Ski Scarf for Men/Women', '', 'Fuinloth Balaclava Face Mask, Summer Cooling Neck Gaiter, UV Protector Motorcycle Ski Scarf for Men/Women', '', '', '', 344.00, '/upload/8d964607d4bc0ced/27d9076877e7fb8e.jpg', 1647597973, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1554, 'Lixada เตาไทเทเนียม แบบพกพา พับได้ น้ําหนักเบา สําหรับตั้งแคมป์ ปิกนิก ทําอาหารกลางแจ้ง', '', 'Lixada เตาไทเทเนียม แบบพกพา พับได้ น้ําหนักเบา สําหรับตั้งแคมป์ ปิกนิก ทําอาหารกลางแจ้ง', '', '', '', 925.00, '/upload/6787c1676baf7616/1fd453f88fa3dcb0.png', 1647597993, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1555, 'The Original Liddle Bluetooth Speaker Magnetic and Wireless Enhanced with Bluetooth 5.0 Chip for Sound Quality 8 Hours of Playtime World First Magnetic Bluetooth Speaker (Silver)', '', 'The Original Liddle Bluetooth Speaker Magnetic and Wireless Enhanced with Bluetooth 5.0 Chip for Sound Quality 8 Hours of Playtime World First Magnetic Bluetooth Speaker (Silver)', '', '', '', 489.00, '/upload/d2a225818f1b3e2e/30081191c6dbf2e6.jpg', 1647598141, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1556, 'Lixada แผ่นเชื่อมต่อ 8 หลุม 45KN สําหรับปีนเขา', '', 'Lixada แผ่นเชื่อมต่อ 8 หลุม 45KN สําหรับปีนเขา', '', '', '', 753.00, '/upload/19bde6c50f92f2d4/e03ddcec9113b9f2.png', 1647598416, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1557, 'THE TOTAL REBODYเครื่องบริหารร่างกายรีบอดี โดย TV Direct by TVD OUTLET', '', 'THE TOTAL REBODYเครื่องบริหารร่างกายรีบอดี โดย TV Direct by TVD OUTLET', '', '', '', 990.00, '/upload/141afd5a0d7bdd33/a5aa4f616807b0db.png', 1647598449, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1558, 'Roku Express 4K+ 2021 | Streaming Media Player HD/4K/HDR with Smooth Wireless Streaming and Roku Voice Remote with TV Controls, Includes Premium HDMI® Cable', '', 'Roku Express 4K+ 2021 | Streaming Media Player HD/4K/HDR with Smooth Wireless Streaming and Roku Voice Remote with TV Controls, Includes Premium HDMI® Cable', '', '', '', 498.00, '/upload/36876f0ca2022c6b/1c0c1248217b9b37.jpg', 1647598451, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1559, 'XtivePRO เครื่องออกกำลังกายแบบเหยียบขึ้นลง พร้อมสายแรงต้าน เครื่องออกกำลังขา Mini Stepper', '', 'XtivePRO เครื่องออกกำลังกายแบบเหยียบขึ้นลง พร้อมสายแรงต้าน เครื่องออกกำลังขา Mini Stepper', '', '', '', 790.00, '/upload/4e1d528931eea31d/1757191432a059a1.png', 1647598487, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1560, '[ส่งฟรี] XtivePRO เชือกกระโดด สายเคเบิ้ลโลหะหุ้ม PVC หัวลูกปืนลื่น ปรับความยาวได้ กระชับหุ่น ลดไขมันหน้าท้อง Speed Jump Rope', '', '[ส่งฟรี] XtivePRO เชือกกระโดด สายเคเบิ้ลโลหะหุ้ม PVC หัวลูกปืนลื่น ปรับความยาวได้ กระชับหุ่น ลดไขมันหน้าท้อง Speed Jump Rope', '', '', '', 590.00, '/upload/c35ddac6ae2eafa7/c4084d19fdabf1f6.png', 1647598530, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1561, 'Roku Express 4K+ 2021 | Streaming Media Player HD/4K/HDR with Smooth Wireless Streaming and Roku Voice Remote with TV Controls, Includes Premium HDMI® Cable', '', 'Roku Express 4K+ 2021 | Streaming Media Player HD/4K/HDR with Smooth Wireless Streaming and Roku Voice Remote with TV Controls, Includes Premium HDMI® Cable', '', '', '', 399.00, '/upload/36876f0ca2022c6b/1c0c1248217b9b37.jpg', 1647598539, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1562, 'STN 1998จักรยานเด็ก ขนาด 12 นิ้ว มีตะกร้า ล้อยางสูบลมได้ เหมาะกับเด็กอายุ 1-4ขวบ', '', 'STN 1998จักรยานเด็ก ขนาด 12 นิ้ว มีตะกร้า ล้อยางสูบลมได้ เหมาะกับเด็กอายุ 1-4ขวบ', '', '', '', 835.00, '/upload/6422f609115571ad/93730f0705411f2a.png', 1647598572, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1563, 'Onbros หมวกกันน็อค น้ําหนักเบา ปรับได้ เพื่อความปลอดภัย สําหรับผู้ชาย และผู้หญิง เหมาะกับการขี่จักรยาน', '', 'Onbros หมวกกันน็อค น้ําหนักเบา ปรับได้ เพื่อความปลอดภัย สําหรับผู้ชาย และผู้หญิง เหมาะกับการขี่จักรยาน', '', '', '', 656.00, '/upload/916691fa2f9d71bd/65933d85e546db72.png', 1647598597, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1564, 'หมวกกันน็อคจักรยาน S-fight รุ่น JT-136 เสือหมอบ เสือภูเขา', '', 'หมวกกันน็อคจักรยาน S-fight รุ่น JT-136 เสือหมอบ เสือภูเขา', '', '', '', 550.00, '/upload/b06ade8318cbc3be/0a2fb49e9a9cd6ed.png', 1647598617, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1565, 'TL FMA หมวกกันน็อคยุทธวิธี GPNVG 18 night vision Goggle NVG model', '', 'TL FMA หมวกกันน็อคยุทธวิธี GPNVG 18 night vision Goggle NVG model', '', '', '', 943.00, '/upload/e058c8395c51e9b7/141d4a008f2dfbee.png', 1647598650, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1566, 'Tv Antenna Indoor, Digital Amplified Indoor HDTV Antenna, 1080p VHF UHF Television Local Channels Detachable Signal Amplifier and 16.5ft Longer Coax Cable', '', 'Tv Antenna Indoor, Digital Amplified Indoor HDTV Antenna, 1080p VHF UHF Television Local Channels Detachable Signal Amplifier and 16.5ft Longer Coax Cable', '', '', '', 398.00, '/upload/a613ff01f1b00c31/078199523a1da761.jpg', 1647598675, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1567, 'Haixnfire TK104 Cree L2 ไฟฉาย LED สำหรับตั้งแคมป์กลางแจ้ง', '', 'Haixnfire TK104 Cree L2 ไฟฉาย LED สำหรับตั้งแคมป์กลางแจ้ง', '', '', '', 569.00, '/upload/f2a6408fd241c908/67971da329ffe64a.png', 1647598685, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1568, '♞♝○1102 g 1000 lumen xm - l 2 ไฟฉายยุทธวิธีแบบชาร์จ usb กันน้ําแบตเตอรี่ 18650 สีเขียว', '', '♞♝○1102 g 1000 lumen xm - l 2 ไฟฉายยุทธวิธีแบบชาร์จ usb กันน้ําแบตเตอรี่ 18650 สีเขียว', '', '', '', 574.00, '/upload/640309c6f67ec143/9bd440241712f62f.png', 1647598711, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1569, 'ไฟฉาย usb led xhp 90.2 26650 แบบชาร์จไฟสําหรับตั้งแคมป์', '', 'ไฟฉาย usb led xhp 90.2 26650 แบบชาร์จไฟสําหรับตั้งแคมป์', '', '', '', 575.00, '/upload/0fc72025daf04cfd/94b64b953c1e6c5d.png', 1647598737, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1570, 'ผ้าห่มขนแกะ Ultimate [ขนาด 200x230 CM] ผ้าห่ม ขนแกะ ผ้าห่มขนนุ่ม ผ้าห่มขนแกะแบบหนา ผ้าห่มขนสัตว์ ผ้าห่มขนแกะหนา ผ้าห่ม', '', 'ผ้าห่มขนแกะ Ultimate [ขนาด 200x230 CM] ผ้าห่ม ขนแกะ ผ้าห่มขนนุ่ม ผ้าห่มขนแกะแบบหนา ผ้าห่มขนสัตว์ ผ้าห่มขนแกะหนา ผ้าห่ม', '', '', '', 890.00, '/upload/c69b402206afb770/71901a56614e7b0c.png', 1647598761, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1571, 'Telecorsa ผ้าห่มโบตั๋น คละสี ขนาด 6 ฟุต รุ่น Lotus-Botun-6-feet-Blanket-Mattress-big-00E-psk2', '', 'Telecorsa ผ้าห่มโบตั๋น คละสี ขนาด 6 ฟุต รุ่น Lotus-Botun-6-feet-Blanket-Mattress-big-00E-psk2', '', '', '', 618.00, '/upload/25bf7e1449b9bd84/84f5427a020adee7.png', 1647598788, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1572, 'Two Sisters ผ้าห่มขนหนู ขนาด 60x80 นิ้ว ขนคู่ 40 ปอนด์', '', 'Two Sisters ผ้าห่มขนหนู ขนาด 60x80 นิ้ว ขนคู่ 40 ปอนด์', '', '', '', 710.00, '/upload/412309c40e30519d/b2bae485bab55772.png', 1647598811, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1573, 'HomePro หมอน BODY พร้อมปลอก DIAMOND 18X50 นิ้ว แบรนด์ HOME LIVING STYLE', '', 'HomePro หมอน BODY พร้อมปลอก DIAMOND 18X50 นิ้ว แบรนด์ HOME LIVING STYLE', '', '', '', 559.00, '/upload/735352d879d29e3b/6cd9cbddec4c3bc9.png', 1647598832, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1574, 'Abloom หมอนโดนัทเมมโมรี่โฟม หมอนรองนั่ง ออกแบบตามสรีระการนั่ง รองรับน้ำหนักได้ดี (สีน้ำตาล) 1 ชิ้น', '', 'Abloom หมอนโดนัทเมมโมรี่โฟม หมอนรองนั่ง ออกแบบตามสรีระการนั่ง รองรับน้ำหนักได้ดี (สีน้ำตาล) 1 ชิ้น', '', '', '', 690.00, '/upload/1844d4dae5d9e681/b3ba4de74123d690.png', 1647598857, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1575, 'Abloom หมอนโดนัทเมมโมรี่โฟม หมอนรองนั่ง ออกแบบตามสรีระการนั่ง รองรับน้ำหนักได้ดี (สีน้ำเงิน) 1 ชิ้น', '', 'Abloom หมอนโดนัทเมมโมรี่โฟม หมอนรองนั่ง ออกแบบตามสรีระการนั่ง รองรับน้ำหนักได้ดี (สีน้ำเงิน) 1 ชิ้น', '', '', '', 690.00, '/upload/511821a39dd4d8d8/2e71c06e8d410c3a.png', 1647598879, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1576, 'Abloom หมอนเพื่อสุขภาพ หมอนโดนัท หมอนรองก้น ป้องกันแผลกดทับ (สีเทา) 1 ชิ้น', '', 'Abloom หมอนเพื่อสุขภาพ หมอนโดนัท หมอนรองก้น ป้องกันแผลกดทับ (สีเทา) 1 ชิ้น', '', '', '', 790.00, '/upload/9e8dd5832e3e7df9/5d49b0ebe9e37334.png', 1647598902, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1577, 'Viva ถุงทรายข้อมือ 0.5 กิโลกรัม', '', 'Viva ถุงทรายข้อมือ 0.5 กิโลกรัม', '', '', '', 750.00, '/upload/49a4f72addbb7b78/eef8090a6deda632.png', 1647598923, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1578, '[โค้ด MAR300LS ลด 15%] นวมมวยไทย นวมโรงงานไทย คุณภาพชกมวย หนังเทียม สำหรับผึกซ้อม แข็งแรง ทนทาน!!! ส่งออก', '', '[โค้ด MAR300LS ลด 15%] นวมมวยไทย นวมโรงงานไทย คุณภาพชกมวย หนังเทียม สำหรับผึกซ้อม แข็งแรง ทนทาน!!! ส่งออก', '', '', '', 550.00, '/upload/cf7609746ac1fadc/889fb2d76dd20b12.png', 1647598949, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1579, 'Hanes Women\'s EcoSmart Full-Zip Hoodie Sweatshirt', '', 'Hanes Women\'s EcoSmart Full-Zip Hoodie Sweatshirt', '', '', '', 299.00, '/upload/c14699cf1401c2d6/73042aaf4d4c6153.jpg', 1647599050, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1580, 'LCW Smart Watch,Fitness Trackers with Heart Rate Monitor,Waterproof IP67 Activity Trackers Watch Pedometer Stopwatch,Body Temperature Measurement, for Men Women for iPhone Android Phone', '', 'LCW Smart Watch,Fitness Trackers with Heart Rate Monitor,Waterproof IP67 Activity Trackers Watch Pedometer Stopwatch,Body Temperature Measurement, for Men Women for iPhone Android Phone', '', '', '', 389.00, '/upload/a656aabf78381fdc/b6c0b530ea1e6ce8.jpg', 1647599137, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1581, 'Smart Watch iHome - Activity Trackers and Smartwatches with GPS, Heart Rate, Calorie Counter, Sleep & Step Counter - Waterproof Smart Band with Touch Screen - Fitness Trackers for Women, Men and Kids', '', 'Smart Watch iHome - Activity Trackers and Smartwatches with GPS, Heart Rate, Calorie Counter, Sleep & Step Counter - Waterproof Smart Band with Touch Screen - Fitness Trackers for Women, Men and Kids', '', '', '', 289.00, '/upload/e4bf624b2c98377d/1529ca18407e253e.jpg', 1647599189, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1582, 'Pursonic | Facial Trimmer & Eyebrow Styling Kit for Hair Removal on Eyebrows, Lips, Cheeks, Ears, Neck, Underarms and Bikini Area - Painless & Easy-to-Use Design', '', 'Pursonic | Facial Trimmer & Eyebrow Styling Kit for Hair Removal on Eyebrows, Lips, Cheeks, Ears, Neck, Underarms and Bikini Area - Painless & Easy-to-Use Design', '', '', '', 499.00, '/upload/dad7c2720c144422/46d496d989afee0e.jpg', 1647599325, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1583, '18 Pcs Eyebrow Razors Shaper, Safety Facial Hair Remover Face Shaver Trimmer, Exfoliating Dermaplaning Tool for Women and Men', '', '18 Pcs Eyebrow Razors Shaper, Safety Facial Hair Remover Face Shaver Trimmer, Exfoliating Dermaplaning Tool for Women and Men', '', '', '', 185.00, '/upload/cd87978821f2b442/7d16060e3d287ee0.jpg', 1647599886, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1584, 'Dash DMW001BK Machine, 4 inch, Black & DMS001SL Mini Maker Electric Round Griddle, with Indicator Light + Included Recipe Book, Silver', '', 'Dash DMW001BK Machine, 4 inch, Black & DMS001SL Mini Maker Electric Round Griddle, with Indicator Light + Included Recipe Book, Silver', '', '', '', 499.00, '/upload/432c7ea535271a79/af10969eae82a98b.jpg', 1647600685, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1585, 'CUSIMAX Charcoal Grill Portable Grill Outdoor Cooking & Smoker Folding Tabletop Grills for BBQ Camping Patio Backyard and Anywhere, 18-Inch, Black', '', 'CUSIMAX Charcoal Grill Portable Grill Outdoor Cooking & Smoker Folding Tabletop Grills for BBQ Camping Patio Backyard and Anywhere, 18-Inch, Black', '', '', '', 500.00, '/upload/59001743962a5e27/0db2fdad48d0eb52.jpg', 1647600795, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1586, 'Dash Mini Maker Electric Round Griddle for Individual Pancakes, Cookies, Eggs & other on the go Breakfast, Lunch & Snacks with Indicator Light + Included Recipe Book - Silver', '', 'Dash Mini Maker Electric Round Griddle for Individual Pancakes, Cookies, Eggs & other on the go Breakfast, Lunch & Snacks with Indicator Light + Included Recipe Book - Silver', '', '', '', 398.00, '/upload/1a59371f0b390480/40fcd67a22fbebc2.jpg', 1647600964, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1587, 'Zesty Paws Pill Wrap Probiotic Paste for Dogs - Immune & Digestive System Support - Bacon Flavor - with DE111 Bacillus subtilis - Pockets Any Pill, Tablet & Capsule for Your Dog - 60 Portions…', '', 'Zesty Paws Pill Wrap Probiotic Paste for Dogs - Immune & Digestive System Support - Bacon Flavor - with DE111 Bacillus subtilis - Pockets Any Pill, Tablet & Capsule for Your Dog - 60 Portions…', '', '', '', 188.00, '/upload/d551007ae9aa8dc1/bdf9dff475c6b522.jpg', 1647601124, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1588, 'Dexas MudBuster Portable Dog Paw Cleaner, Medium, Blue', '', 'Dexas MudBuster Portable Dog Paw Cleaner, Medium, Blue', '', '', '', 199.00, '/upload/2af1ad85bcbdab35/81c7468a3b5f38d4.jpg', 1647602835, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1589, 'MalsiPree Dog Water Bottle, Leak Proof Portable Puppy Water Dispenser with Drinking Feeder for Pets Outdoor Walking, Hiking, Travel, Food Grade Plastic (19oz, Pink)', '', 'MalsiPree Dog Water Bottle, Leak Proof Portable Puppy Water Dispenser with Drinking Feeder for Pets Outdoor Walking, Hiking, Travel, Food Grade Plastic (19oz, Pink)', '', '', '', 299.00, '/upload/4de6f796bd1b4553/ab0407d057d098d5.jpg', 1647602885, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1590, 'Earth Rated Dog Wipes, Thick Plant Based Grooming Wipes for Easy Use on Paws, Body and Bum, Lavender Scented, 400 Count', '', 'Earth Rated Dog Wipes, Thick Plant Based Grooming Wipes for Easy Use on Paws, Body and Bum, Lavender Scented, 400 Count', '', '', '', 399.00, '/upload/00b88a008a4d325b/4e0e775a7d69d875.jpg', 1647602933, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1591, 'Wet Ones for Pets Hypoallergenic Multi-Purpose Dog Wipes with Vitamins A, C & E, 50 Count - 12 Pack | Fragrance-Free Hypoallergenic Dog Wipes for All Dogs Wipes Multipurpose (FF14365PCS12)', '', 'Wet Ones for Pets Hypoallergenic Multi-Purpose Dog Wipes with Vitamins A, C & E, 50 Count - 12 Pack | Fragrance-Free Hypoallergenic Dog Wipes for All Dogs Wipes Multipurpose (FF14365PCS12)', '', '', '', 499.00, '/upload/195c97f12dafe722/30da2dbe715ac573.jpg', 1647603008, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1592, 'Dash Express 8” Waffle Maker for Waffles, Paninis, Hash Browns + other Breakfast, Lunch, or Snacks, with Easy Clean, Dual Non-Stick Surfaces - Aqua', '', 'Dash Express 8” Waffle Maker for Waffles, Paninis, Hash Browns + other Breakfast, Lunch, or Snacks, with Easy Clean, Dual Non-Stick Surfaces - Aqua', '', '', '', 500.00, '/upload/391b20b5c2193d6c/a461cc2a43642ab8.jpg', 1647603207, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1593, 'New Bose QuietComfort 45 Bluetooth Wireless Noise Canceling Headphones - Triple Black', '', 'New Bose QuietComfort 45 Bluetooth Wireless Noise Canceling Headphones - Triple Black', '', '', '', 275.00, '/upload/9eedde7d923017da/67da0c351113d8b7.jpg', 1647603305, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1594, 'Kasa Indoor Pan/Tilt Smart Security Camera, 1080p HD Dog Camera 2.4GHz with Night Vision, Motion Detection for Baby and Pet Monitor, Cloud & SD Card Storage, Works with Alexa & Google Home (EC70)', '', 'Kasa Indoor Pan/Tilt Smart Security Camera, 1080p HD Dog Camera 2.4GHz with Night Vision, Motion Detection for Baby and Pet Monitor, Cloud & SD Card Storage, Works with Alexa & Google Home (EC70)', '', '', '', 399.00, '/upload/a39ecf98da6adf17/3f83e217b9bca5c2.jpg', 1647603444, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1595, 'DREAM PAIRS Women\'s Gigi Fashion Stilettos Open Toe Pump Heel Sandals', '', 'DREAM PAIRS Women\'s Gigi Fashion Stilettos Open Toe Pump Heel Sandals', '', '', '', 289.00, '/upload/fd58fb47b8ad2327/54b1f5ca28122b69.jpg', 1647603554, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1596, 'Columbia Boulder Ridge Rectangular Sunglasses', '', 'Columbia Boulder Ridge Rectangular Sunglasses', '', '', '', 159.00, '/upload/e4742aad9a3ccfff/dc6403cbb3b0c93a.jpg', 1647603663, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1597, 'Polarized Sunglasses for Men and Women Matte Finish Sun glasses Color Mirror Lens 100% UV Blocking (3 Pack)', '', 'Polarized Sunglasses for Men and Women Matte Finish Sun glasses Color Mirror Lens 100% UV Blocking (3 Pack)', '', '', '', 495.00, '/upload/0cba9e7625541fb6/f0d528aeb7b69c0d.jpg', 1647603729, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1598, 'True Religion Men\'s Geno Slim Fit Straight Leg Jean with Back Flap Pockets', '', 'True Religion Men\'s Geno Slim Fit Straight Leg Jean with Back Flap Pockets', '', '', '', 329.00, '/upload/08e93bf3202b519e/2b90354b7f1838d8.jpg', 1647603805, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1599, 'Michael Kors Men\'s Slim Runway Stainless Steel Quartz Watch', '', 'Michael Kors Men\'s Slim Runway Stainless Steel Quartz Watch', '', '', '', 489.00, '/upload/ec72c6b6961fd141/8de49396d4f06d17.jpg', 1647603949, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1600, 'AX BOXING Mens Casual Shoes Fashion Sneakers Breathable Comfort Walking Shoes for Male', '', 'AX BOXING Mens Casual Shoes Fashion Sneakers Breathable Comfort Walking Shoes for Male', '', '', '', 599.00, '/upload/2ff0e9d23f212d7c/e6bcd8d28ce8555c.jpg', 1647604217, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1601, 'SeaVees Men\'s Army Issue Low Standard Casual Sneaker', '', 'SeaVees Men\'s Army Issue Low Standard Casual Sneaker', '', '', '', 599.00, '/upload/e93cef963e353df8/42fbd064ed6c5ab2.jpg', 1647604404, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1602, 'Amazon Basics 8-Sheet Cross-Cut Paper and Credit Card Home Office Shredder, Quiet Working with 4.1-Gallon Bin, Black', '', 'Amazon Basics 8-Sheet Cross-Cut Paper and Credit Card Home Office Shredder, Quiet Working with 4.1-Gallon Bin, Black', '', '', '', 498.00, '/upload/05ece497aa1262f9/635585a4424dcd48.jpg', 1647604553, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1603, 'TRAVANDO Mens Slim Wallet with Money Clip AUSTIN RFID Blocking Bifold Credit Card Holder for Men with Gift Box', '', 'TRAVANDO Mens Slim Wallet with Money Clip AUSTIN RFID Blocking Bifold Credit Card Holder for Men with Gift Box', '', '', '', 489.00, '/upload/1e3aec20dfc8c9a5/fb52b6698949fa8e.jpg', 1647604639, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1604, 'Amazon Basics 48 Pack AA High-Performance Alkaline Batteries, 10-Year Shelf Life, Easy to Open Value Pack', '', 'Amazon Basics 48 Pack AA High-Performance Alkaline Batteries, 10-Year Shelf Life, Easy to Open Value Pack', '', '', '', 349.00, '/upload/2504674cd8d9d9cb/01f2941b708c3903.jpg', 1647604732, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1605, 'Amazon Basics 8 Pack 9 Volt Performance All-Purpose Alkaline Batteries, 5-Year Shelf Life, Easy to Open Value Pack', '', 'Amazon Basics 8 Pack 9 Volt Performance All-Purpose Alkaline Batteries, 5-Year Shelf Life, Easy to Open Value Pack', '', '', '', 350.00, '/upload/77ede16cbb190eb8/c359de1822b5221e.jpg', 1647604795, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1606, 'ACDelco 12-Count 9 Volt Batteries, Maximum Power Super Alkaline Battery, 7-Year Shelf Life, Recloseable Packaging', '', 'ACDelco 12-Count 9 Volt Batteries, Maximum Power Super Alkaline Battery, 7-Year Shelf Life, Recloseable Packaging', '', '', '', 359.00, '/upload/50efa133f814d3d9/eacf33924f88abff.jpg', 1647604853, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1607, 'Amazon Basics Slim, Velvet, Non-Slip Suit Clothes Hangers, Black/Silver - Pack of 50', '', 'Amazon Basics Slim, Velvet, Non-Slip Suit Clothes Hangers, Black/Silver - Pack of 50', '', '', '', 329.00, '/upload/805cd6b43f8386e9/ebb04435760ff410.jpg', 1647604938, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1608, 'ZOBER Space Saving 5 Tier Metal Skirt Hanger with Clips (3pk) Hang 5-on-1, Gain 70% More Space,Rubber Coated Hanger Clips,360 Swivel Hook,Adjustable Clips Pants Hanger,Hang Slack,Trouser,Jeans,Towels', '', 'ZOBER Space Saving 5 Tier Metal Skirt Hanger with Clips (3pk) Hang 5-on-1, Gain 70% More Space,Rubber Coated Hanger Clips,360 Swivel Hook,Adjustable Clips Pants Hanger,Hang Slack,Trouser,Jeans,Towels', '', '', '', 469.00, '/upload/c3f7eda3b4a37259/2e23ac423560b9e9.jpg', 1647605052, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1609, 'Amazon Basics 5-Shelf Adjustable, Heavy Duty Storage Shelving Unit (350 lbs loading capacity per shelf), Steel Organizer Wire Rack, Black (36L x 14W x 72H)', '', 'Amazon Basics 5-Shelf Adjustable, Heavy Duty Storage Shelving Unit (350 lbs loading capacity per shelf), Steel Organizer Wire Rack, Black (36L x 14W x 72H)', '', '', '', 498.00, '/upload/9d52fddcab5e6fbb/8dff65e817e0b1f1.jpg', 1647605154, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1610, 'Amazon Basics Enameled Cast Iron Covered Dutch Oven, 4.3-Quart, Red', '', 'Amazon Basics Enameled Cast Iron Covered Dutch Oven, 4.3-Quart, Red', '', '', '', 399.00, '/upload/36d07fd5bec57782/76de14dc3509e933.jpg', 1647605233, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1611, 'IPOW Wing Corkscrew, Multifunctional Wine Beer Bottle Opener, Wine Corkscrew for all Cork Stoppered and Beer Cap Bottles. Used in Kitchen Chateau Restaurant Bars for Wine Enthusiast and Waiters White', '', 'IPOW Wing Corkscrew, Multifunctional Wine Beer Bottle Opener, Wine Corkscrew for all Cork Stoppered and Beer Cap Bottles. Used in Kitchen Chateau Restaurant Bars for Wine Enthusiast and Waiters White', '', '', '', 489.00, '/upload/3316261c888823dd/6609c259bfb4b68b.jpg', 1647605357, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1612, 'Japanese seamless knitted long sleeve winter dresses women elegant', '', 'Japanese seamless knitted long sleeve winter dresses women elegant', '', '', '', 1500.00, '/upload/1f1b235d1025f82d/93d8755468c76cf2.png', 1647605438, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1613, 'Three colors Japanese premium knitted hoodie plus size men\'s jackets', '', 'Three colors Japanese premium knitted hoodie plus size men\'s jackets', '', '', '', 1750.00, '/upload/05c7837892ae6252/eb0f6bbad9d84c30.png', 1647605532, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1614, 'Medical use kneepad protector health care product leg brace straps', '', 'Medical use kneepad protector health care product leg brace straps', '', '', '', 1490.00, '/upload/a5df828900c40e3c/7be4367e9920e3c1.png', 1647605618, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1615, 'Japan OEM 3D anti wrinkle Seamless Turtleneck Knit pullover sexy sweater for women', '', 'Japan OEM 3D anti wrinkle Seamless Turtleneck Knit pullover sexy sweater for women', '', '', '', 1090.00, '/upload/56b72dbee8f96415/6c983a02303c756b.png', 1647605712, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1616, 'high quality modern office chair for office meeting table boss lifting chair', '', 'high quality modern office chair for office meeting table boss lifting chair', '', '', '', 2550.00, '/upload/225e2db3c8144daf/ab4d3cf49ea6d101.png', 1647605791, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1617, '2020 simple LED light modern small family dressing table metal Nordic luxury dressing table makeup mirror simple bedroom dresser', '', '2020 simple LED light modern small family dressing table metal Nordic luxury dressing table makeup mirror simple bedroom dresser', '', '', '', 2634.00, '/upload/db22971d95f5244a/bef1802fddfddf80.png', 1647605895, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1618, 'MITSUBISHI ตู้เย็น 2 ประตู รุ่น MR-FV22S/OB 7.3 คิว สีดำ', '', 'MITSUBISHI ตู้เย็น 2 ประตู รุ่น MR-FV22S/OB 7.3 คิว สีดำ', '', '', '', 7690.00, '/upload/67a1f62a52766a55/dcd16548abbfb1f7.jpg', 1647605957, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1619, 'Hot Sales 2020 New Style Cheap Modern Panel Make Up Dressing Table Luxury Fashion Dressers with mirror and drawers', '', 'Hot Sales 2020 New Style Cheap Modern Panel Make Up Dressing Table Luxury Fashion Dressers with mirror and drawers', '', '', '', 1600.00, '/upload/36bd96cf20954f69/f061db0081b90ed5.png', 1647605961, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1620, 'Modern Bedroom Furniture Multifunction Mirrored Bedside Table White Baroque Nightstand With 2 Drawers night table', '', 'Modern Bedroom Furniture Multifunction Mirrored Bedside Table White Baroque Nightstand With 2 Drawers night table', '', '', '', 1500.00, '/upload/86fd9f80ebdc5156/7996e214abe0547b.png', 1647606042, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1621, 'Post-modernity Two Drawer Mirror Nightstand Wooden Beside Table Side Cabinet Locker', '', 'Post-modernity Two Drawer Mirror Nightstand Wooden Beside Table Side Cabinet Locker', '', '', '', 1500.00, '/upload/eaa450f00ddbd164/824a035b27aa9f93.png', 1647606103, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1622, '59S อุปกรณ์ฆ่าเชื้อและเครื่องเป่าลม T5 ขนาดเล็ก Led Sanitizer', '', '59S อุปกรณ์ฆ่าเชื้อและเครื่องเป่าลม T5 ขนาดเล็ก Led Sanitizer', '', '', '', 5300.00, '/upload/13a4ea8e96791537/b481a6c649220ef0.jpg', 1647606121, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1623, 'Chic Modern Gold Wood Carved Beside Table Upholstery Nightstand Corner Table Set Cabinet', '', 'Chic Modern Gold Wood Carved Beside Table Upholstery Nightstand Corner Table Set Cabinet', '', '', '', 2634.00, '/upload/4de457940d613d33/74c8f2f895200f9f.png', 1647606206, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1624, 'Bedroom furniture American Rustic Solid Wood Structure Double Bed Handmade Carving Sleeping Bed king size bed', '', 'Bedroom furniture American Rustic Solid Wood Structure Double Bed Handmade Carving Sleeping Bed king size bed', '', '', '', 5534.00, '/upload/3e989e0a35907126/8806e53a698ba684.png', 1647606303, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1625, 'ALPHA ทีวี TV สมาททีวี SMARTTV LED ขนาด 40นิ้ว แอนดรอย9 รุ่น #LWD-395 AA', '', 'ALPHA ทีวี TV สมาททีวี SMARTTV LED ขนาด 40นิ้ว แอนดรอย9 รุ่น #LWD-395 AA', '', '', '', 8590.00, '/upload/bb7a47caba97ea89/2f4e28350605e695.jpg', 1647606303, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1626, 'Bedroom furniture American Rustic Solid Wood Structure Double Bed Handmade Carving Sleeping Bed king size bed', '', 'Bedroom furniture American Rustic Solid Wood Structure Double Bed Handmade Carving Sleeping Bed king size bed', '', '', '', 5000.00, '/upload/8f17aa1f12339435/92bc58569567058d.png', 1647606439, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1627, 'TCL ทีวี 40 นิ้ว Android TV Full HD Wifi/Youtube/Nexflix+FreeVoiceSearchremote (รุ่น LED40S6500)', '', 'TCL ทีวี 40 นิ้ว Android TV Full HD Wifi/Youtube/Nexflix+FreeVoiceSearchremote (รุ่น LED40S6500)', '', '', '', 8190.00, '/upload/42f7007516e71998/21e8d3d844147cb1.jpg', 1647606474, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1628, 'Levoit เครื่องฟอกอากาศ Air Purifier True HEPA LV-PUR131 กรองอากาศ กรองฝุ่น PM2.5 เครื่องฟอกอาศ จอสัมผัส เครื่องฟอก เครื่องกรองอากาศ', '', 'Levoit เครื่องฟอกอากาศ Air Purifier True HEPA LV-PUR131 กรองอากาศ กรองฝุ่น PM2.5 เครื่องฟอกอาศ จอสัมผัส เครื่องฟอก เครื่องกรองอากาศ', '', '', '', 5893.00, '/upload/56f5501b295bcb7e/fa114d04f7da48b0.jpg', 1647606629, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1629, 'Xiaomi Mi Air Purifier Pro H PM 2.5 เครื่องฟอกอากาศ 72', '', 'Xiaomi Mi Air Purifier Pro H PM 2.5 เครื่องฟอกอากาศ 72', '', '', '', 7580.00, '/upload/743f4eeb17469d7f/152242ef5d70ebec.jpg', 1647606757, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1630, 'Classic King Size living room Set European Style Hot Sell Royal Luxury Bedroom Wardrobe Design Furniture', '', 'Classic King Size living room Set European Style Hot Sell Royal Luxury Bedroom Wardrobe Design Furniture', '', '', '', 3368.00, '/upload/d58ed37f9d8ee2fd/24b77058e558081c.png', 1647606810, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1631, 'Xiaomi Mi Air Purifier 4 Pro (PM 2.5) เครื่องฟอกอากาศ 60 ตรม. รับประกันศูนย์ไทย 1 ปี', '', 'Xiaomi Mi Air Purifier 4 Pro (PM 2.5) เครื่องฟอกอากาศ 60 ตรม. รับประกันศูนย์ไทย 1 ปี', '', '', '', 7590.00, '/upload/eb1e436b065303fa/0f34aacdf8824dd8.jpg', 1647606821, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1632, 'Europe style modern silver stainless steel velvet dining chair', '', 'Europe style modern silver stainless steel velvet dining chair', '', '', '', 3267.00, '/upload/652d39965da0c85b/d8cc60d763d754bc.png', 1647606879, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1633, 'High Quality Solid Wood Crystal River Table Top Epoxy Resin Coffee Table Elegant Style Home Decoration', '', 'High Quality Solid Wood Crystal River Table Top Epoxy Resin Coffee Table Elegant Style Home Decoration', '', '', '', 2264.00, '/upload/d723cb5cd46eddf0/5c0d070c325fa94f.png', 1647607133, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1634, 'RINA HEY โซฟา 3 ที่นั่ง โซฟาและอาร์มแชร์ RAF/3 – สี เทาเทรนดี้ , เขียวอาร์มี่ ,เบจโมเดิร์น', '', 'RINA HEY โซฟา 3 ที่นั่ง โซฟาและอาร์มแชร์ RAF/3 – สี เทาเทรนดี้ , เขียวอาร์มี่ ,เบจโมเดิร์น', '', '', '', 9940.00, '/upload/ca43faaf9cad0b8f/f500dcd74ec7107d.jpg', 1647607140, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1635, 'Koncept furniture KONCEPT FURNITURE โซฟาหนังสังเคราะห์ โซฟา 2 ที่นั่ง Gunly ขนาด 150x81x78 ซม', '', 'Koncept furniture KONCEPT FURNITURE โซฟาหนังสังเคราะห์ โซฟา 2 ที่นั่ง Gunly ขนาด 150x81x78 ซม', '', '', '', 6570.00, '/upload/baac8ee019a29e13/292f021475b11828.jpg', 1647607200, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1636, 'Koncept furniture KONCEPT FURNITURE โซฟาหนังสังเคราะห์ โซฟาเบด Chaaim ขนาด 191x109x47 ซม. - สีดำ', '', 'Koncept furniture KONCEPT FURNITURE โซฟาหนังสังเคราะห์ โซฟาเบด Chaaim ขนาด 191x109x47 ซม. - สีดำ', '', '', '', 7900.00, '/upload/87fd058d598dcf7a/732e64e759173bb8.jpg', 1647607261, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1637, 'โซฟา 2ที่นั่ง BRICK Sofa I-Shape ขนาด 2.00m. 1.80m. 1.60m. Premium PU / ผ้าลินิน', '', 'โซฟา 2ที่นั่ง BRICK Sofa I-Shape ขนาด 2.00m. 1.80m. 1.60m. Premium PU / ผ้าลินิน', '', '', '', 7890.00, '/upload/1ec3c9c7e4be5fa9/263ae307f6d78263.jpg', 1647607329, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1638, 'Ezy Tone Treadmill ลู่บริหาร 3 in 1 โดย TVDirect', '', 'Ezy Tone Treadmill ลู่บริหาร 3 in 1 โดย TVDirect', '', '', '', 6990.00, '/upload/475feccfe135f3e5/438e543d2e097b68.jpg', 1647607430, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1639, 'Haier ตู้เย็น 2 ประตู FiX-Speed ความจุ 7.2 คิว รุ่น HRF-THM20NS (ONL)', '', 'Haier ตู้เย็น 2 ประตู FiX-Speed ความจุ 7.2 คิว รุ่น HRF-THM20NS (ONL)', '', '', '', 7590.00, '/upload/88fb954a5779d897/c66d1c95be7dc8f8.jpg', 1647607500, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1640, 'Haier ตู้แช่แข็ง ขนาด 103 ลิตร (3.6คิว) รุ่น HCF-100HM', '', 'Haier ตู้แช่แข็ง ขนาด 103 ลิตร (3.6คิว) รุ่น HCF-100HM', '', '', '', 5490.00, '/upload/a6e57e4f504d9f8a/afd6483df23c0324.jpg', 1647607574, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1641, 'ตู้แช่แข็ง ขนาด 208 ลิตร รุ่น RF259N4TW1 สีขาว New 2021', '', 'ตู้แช่แข็ง ขนาด 208 ลิตร รุ่น RF259N4TW1 สีขาว New 2021', '', '', '', 6190.00, '/upload/19eefa1ca2583a15/95af97df1086a935.jpg', 1647607641, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1642, 'Hisense เครื่องปรับอากาศติดผนัง CD Series ไม่รวมติดตั้ง', '', 'Hisense เครื่องปรับอากาศติดผนัง CD Series ไม่รวมติดตั้ง', '', '', '', 9990.00, '/upload/9408defd23dc8600/d2719dcdca0380b7.jpg', 1647607776, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1643, 'Original Logo Yeezy Men Shoes 700 V2 V3 Casual Sport Shoes Sneakers Running Women High Quality Yeezy Shoes', '', 'Original Logo Yeezy Men Shoes 700 V2 V3 Casual Sport Shoes Sneakers Running Women High Quality Yeezy Shoes', '', '', '', 1633.00, '/upload/396ef5a54233ff05/4342fe82e3d782d4.png', 1647607792, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1644, 'แอร์ ไฮเซ่นส์(Hisense) รุ่น KB รุ่นใหม่ล่าสุด!!!! ระบบ อินเวอร์เตอร์ ประหยัดไฟเบอร์ 5 ราคาถูกที่สุด', '', 'แอร์ ไฮเซ่นส์(Hisense) รุ่น KB รุ่นใหม่ล่าสุด!!!! ระบบ อินเวอร์เตอร์ ประหยัดไฟเบอร์ 5 ราคาถูกที่สุด', '', '', '', 8299.00, '/upload/0ab6bb8ef84e1493/5051cbc00af343a3.jpg', 1647607897, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1645, 'In Stock X Brand Sneakers SB Dunkes Low High Women Men Blue Panda Bears Skate Board design Casual Shoes', '', 'In Stock X Brand Sneakers SB Dunkes Low High Women Men Blue Panda Bears Skate Board design Casual Shoes', '', '', '', 1620.00, '/upload/a00335649cf4f06a/7008fddd93345a47.png', 1647608004, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1646, 'zapatillas hombre Air jondac AJ 4 Retro Black cat men\'s fashion 4s Bred Blue Fire Red all brand Sneakers', '', 'zapatillas hombre Air jondac AJ 4 Retro Black cat men\'s fashion 4s Bred Blue Fire Red all brand Sneakers', '', '', '', 2934.00, '/upload/ee8dcc24c1773938/902635a0f5a6455e.png', 1647608072, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1647, 'XIAOMI MI ANDROID LED TV P1 55 นิ้ว สีดำ', '', 'XIAOMI MI ANDROID LED TV P1 55 นิ้ว สีดำ', '', '', '', 10000.00, '/upload/f96378e3c04d736f/946007c8cf43e44b.jpg', 1647608111, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1648, 'XIAOMI สกู๊ตเตอร์ไฟฟ้า MI SCOOTER ESSENTIAL สีดำ', '', 'XIAOMI สกู๊ตเตอร์ไฟฟ้า MI SCOOTER ESSENTIAL สีดำ', '', '', '', 9200.00, '/upload/e9aaa90e3bf6ac01/a9234f8254c3cd9b.jpg', 1647608171, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1649, 'GYMNASTIKA ลู่วิ่งไฟฟ้า KINGSMITH K12 (HUAWEI X1)', '', 'GYMNASTIKA ลู่วิ่งไฟฟ้า KINGSMITH K12 (HUAWEI X1)', '', '', '', 9299.00, '/upload/4734169facf5fb5d/7fb1aebb230759ba.jpg', 1647608241, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1650, 'Xiaomi Mi Electric Scooter Pro / Essential Lite สกู๊ตเตอร์ไฟฟ้าผู้ใหญ่ เบา บาง จาก', '', 'Xiaomi Mi Electric Scooter Pro / Essential Lite สกู๊ตเตอร์ไฟฟ้าผู้ใหญ่ เบา บาง จาก', '', '', '', 9920.00, '/upload/a272c81df6294782/30e2de983fc44a62.jpg', 1647608308, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1651, '360 Robot Vacuum Cleaner S7 Pro เครื่องดูดฝุ่นหุ่นยนต์แบบไร้สาย เชื่อมต่อผ่านแอพ 360 Robot', '', '360 Robot Vacuum Cleaner S7 Pro เครื่องดูดฝุ่นหุ่นยนต์แบบไร้สาย เชื่อมต่อผ่านแอพ 360 Robot', '', '', '', 8990.00, '/upload/cd700465c8bb5841/5c7084defe5aa4e6.jpg', 1647608380, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1652, 'ELECTROLUX เตาอบไมโครเวฟ พร้อมระบบย่าง รุ่น EMS3085X ขนาด 30 ลิตร', '', 'ELECTROLUX เตาอบไมโครเวฟ พร้อมระบบย่าง รุ่น EMS3085X ขนาด 30 ลิตร', '', '', '', 5590.00, '/upload/293d6bdf95f7980c/6793b87f828bef20.jpg', 1647608624, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1653, 'LG ตู้เย็น 2D 14.2 คิว รุ่น GN-B422SQCL', '', 'LG ตู้เย็น 2D 14.2 คิว รุ่น GN-B422SQCL', '', '', '', 9990.00, '/upload/e7a5cebf2488a434/3e673de4327df396.jpg', 1647608728, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1654, 'LG เครื่องซักผ้าฝาบน 13 กก. Inverter รุ่น T2313VSPM', '', 'LG เครื่องซักผ้าฝาบน 13 กก. Inverter รุ่น T2313VSPM', '', '', '', 7590.00, '/upload/fc24808f06890ce9/d080fdef28b99e08.jpg', 1647608836, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1655, 'men women Casual Shoes Air 1 Retro high Bred Patent Atmosphere low Brotherhood Prototype 1s men\'s fashion sneakers AJ 1', '', 'men women Casual Shoes Air 1 Retro high Bred Patent Atmosphere low Brotherhood Prototype 1s men\'s fashion sneakers AJ 1', '', '', '', 2943.00, '/upload/c6a21d3de65440e2/6b0d2f11b0d2ab68.png', 1647608895, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1656, 'amsung เครื่องซักผ้า 2 ถัง ขนาด 14 kg. รุ่น WT16J8', '', 'amsung เครื่องซักผ้า 2 ถัง ขนาด 14 kg. รุ่น WT16J8', '', '', '', 6490.00, '/upload/5b058552f26ec9e1/2cf6940623ca72f1.jpg', 1647608919, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1657, 'Lightweight Yezzy Fly Fabric Knitting Men\'s Footwear Sock Breathable Ladies Non-slip Sneakers Kids Walking Style Casual ShoesHot sale products', '', 'Lightweight Yezzy Fly Fabric Knitting Men\'s Footwear Sock Breathable Ladies Non-slip Sneakers Kids Walking Style Casual ShoesHot sale products', '', '', '', 4990.00, '/upload/2ed72184bec7f80e/f2414bcdb85d5129.png', 1647609050, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1658, 'SAMSUNG เครื่องซักผ้า 2 ถัง 13 กก. รุ่น WT15J7PEC/XST , WT15J7PEC', '', 'SAMSUNG เครื่องซักผ้า 2 ถัง 13 กก. รุ่น WT15J7PEC/XST , WT15J7PEC', '', '', '', 8940.00, '/upload/abaa40c50ea14803/6655df7564a47edc.png', 1647609086, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1659, 'Custom Explosive Alphafly Next% marathon Air Cushion Zoomx Outsole Brand Women Sneaker For Men Trainers Running ShoesHot sale products', '', 'Custom Explosive Alphafly Next% marathon Air Cushion Zoomx Outsole Brand Women Sneaker For Men Trainers Running ShoesHot sale products', '', '', '', 4990.00, '/upload/de4ba024acea1720/12de33ab530fbd29.png', 1647609160, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1660, 'หน้ากากฟอกอากาศ รุ่น AP551AWFA AP551ABFA', '', 'หน้ากากฟอกอากาศ รุ่น AP551AWFA AP551ABFA', '', '', '', 5490.00, '/upload/3ba354ea8247ed15/4c5f7a12dbe94a7c.jpg', 1647609164, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1661, 'เครื่องซักผ้า TOSHIBA รุ่น AW-UK1100HT(10KG)', '', 'เครื่องซักผ้า TOSHIBA รุ่น AW-UK1100HT(10KG)', '', '', '', 7575.00, '/upload/38e19029cbdf1640/7856252786ae522a.jpg', 1647609302, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1662, 'Sony Lens FE 50 mm. F1.8 (FE-mount) [รับประกัน 1 ปี by AVcentershop]', '', 'Sony Lens FE 50 mm. F1.8 (FE-mount) [รับประกัน 1 ปี by AVcentershop]', '', '', '', 8250.00, '/upload/6d8e201d5b5de5de/96445bbe05235d9e.jpg', 1647609436, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1663, '2020 Logo Custom New Skateboarding Sneaker Woman Pennyboard Peanuts Couples Taylor Classic Originals Sta Smith Adult ShoesHot sale products', '', '2020 Logo Custom New Skateboarding Sneaker Woman Pennyboard Peanuts Couples Taylor Classic Originals Sta Smith Adult ShoesHot sale products', '', '', '', 4990.00, '/upload/fd9f31b985030048/7489cd34bde875cd.png', 1647609453, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1664, 'Sony Lens E 55-210 mm. F4.5-6.3 OSS - รับประกันร้าน i camera 1ปี', '', 'Sony Lens E 55-210 mm. F4.5-6.3 OSS - รับประกันร้าน i camera 1ปี', '', '', '', 8390.00, '/upload/cc002f2cb78a126c/4d12fd73b09acf2d.jpg', 1647609582, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1665, 'Hot Sell Comfortable knitting fabric Casual Walking Shoes', '', 'Hot Sell Comfortable knitting fabric Casual Walking Shoes', '', '', '', 3990.00, '/upload/183405a982378235/9fe4d4eeb228c55f.png', 1647609627, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1666, 'Running Shoes for Men Comfortable Sneaker Size 39-44 Lace-up Outdoor casual shoes', '', 'Running Shoes for Men Comfortable Sneaker Size 39-44 Lace-up Outdoor casual shoes', '', '', '', 2990.00, '/upload/0775f8fe39bed57c/8d6b1e707f40587c.png', 1647609690, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1667, 'DJI MINI SE ดีเจไอ มินิ เอสอี มินิโดรนไซส์เล็ก ชุดเริ่มต้น สเปคสุดคุ้ม น้ำหนักเบา พกง่าย', '', 'DJI MINI SE ดีเจไอ มินิ เอสอี มินิโดรนไซส์เล็ก ชุดเริ่มต้น สเปคสุดคุ้ม น้ำหนักเบา พกง่าย', '', '', '', 9999.00, '/upload/4b863af9f03ab68d/4e20a0715db942d8.jpg', 1647609777, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1668, 'cheap latest brand summer sports sandals designs for men', '', 'cheap latest brand summer sports sandals designs for men', '', '', '', 1990.00, '/upload/f7bf7bfe3ed639bf/c101d9b4b779553b.png', 1647609778, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1669, 'High Quality Men Sneakers Unisex Autumn High Top Anti-slip Outdoor Sports Shoes Trainer Women Summer Basketball ShoesHot sale products', '', 'High Quality Men Sneakers Unisex Autumn High Top Anti-slip Outdoor Sports Shoes Trainer Women Summer Basketball ShoesHot sale products', '', '', '', 1550.00, '/upload/970cca7696ebb935/3f90c850d5897828.png', 1647609842, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1670, 'หัวกระทะไฟฟ้า ควบคุมระยะไกล 0.3W', '', 'หัวกระทะไฟฟ้า ควบคุมระยะไกล 0.3W', '', '', '', 5937.00, '/upload/647ece6d39ed7f09/51cae70eea1ed957.jpg', 1647609894, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1671, 'wholesale family camping tents hot selling outdoor glamping large luxury auto quick custom opening beach automatic open folding', '', 'wholesale family camping tents hot selling outdoor glamping large luxury auto quick custom opening beach automatic open folding', '', '', '', 1290.00, '/upload/558111221c58c5a3/5058b1840ab04d57.png', 1647609953, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1672, 'TROXUSรถวิบาก49cc รถจักรยานยนต์ครอสคันทรี เครื่องยนต์ 49CC KTM เต็มกำลังรถ ATV ความเร็ว 50 กม. / ชม รับน้ำหนักได้ 100 กก', '', 'TROXUSรถวิบาก49cc รถจักรยานยนต์ครอสคันทรี เครื่องยนต์ 49CC KTM เต็มกำลังรถ ATV ความเร็ว 50 กม. / ชม รับน้ำหนักได้ 100 กก', '', '', '', 6390.00, '/upload/a3a7642a569ac2f1/f7913b12fad5798d.jpg', 1647610101, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1673, 'แชร์:   Favorite (143) มอเตอร์ไซค์วิบากจิ๋ว รถขี่เล่น เด็ก ผู้ใหญ่ วัยรุ่น ล้อ10นิว 49cc miniมอเตอร์ไซค์ ออกแบบสวย W6010', '', 'แชร์:   Favorite (143) มอเตอร์ไซค์วิบากจิ๋ว รถขี่เล่น เด็ก ผู้ใหญ่ วัยรุ่น ล้อ10นิว 49cc miniมอเตอร์ไซค์ ออกแบบสวย W6010', '', '', '', 6707.00, '/upload/08b30022c4ed2880/12c9de6cdc470bbf.jpg', 1647610217, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1674, 'มอเตอร์ไซค์วิบากจิ๋ว รถขี่เล่น เด็ก ผู้ใหญ่ วัยรุ่น ล้อ10นิว 49cc ออกแบบสวย', '', 'มอเตอร์ไซค์วิบากจิ๋ว รถขี่เล่น เด็ก ผู้ใหญ่ วัยรุ่น ล้อ10นิว 49cc ออกแบบสวย', '', '', '', 6690.00, '/upload/d132ece0b6975210/f8d85f27711175d8.jpg', 1647610305, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1675, 'Free F9 Earphone 9D Hifi Stereo LED Display Waterproof In Ear Headphone BT 5.0 TWS F9 Wireless Earbuds', '', 'Free F9 Earphone 9D Hifi Stereo LED Display Waterproof In Ear Headphone BT 5.0 TWS F9 Wireless Earbuds', '', '', '', 1059.00, '/upload/af19cab732de83e8/6d9feb12c788923c.png', 1647610330, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1676, 'มอเตอร์ไซค์วิบากจิ๋ว รถขี่เล่น เด็ก ผู้ใหญ่ วัยรุ่น ล้อ10นิว 49cc ออกแบบสวย', '', 'มอเตอร์ไซค์วิบากจิ๋ว รถขี่เล่น เด็ก ผู้ใหญ่ วัยรุ่น ล้อ10นิว 49cc ออกแบบสวย', '', '', '', 6690.00, '/upload/d132ece0b6975210/f8d85f27711175d8.jpg', 1647610552, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1677, 'NFC smartwatch S7 1.82 inch big screen wireless charging bt calling series 7 reloj inteligente android smart watch', '', 'NFC smartwatch S7 1.82 inch big screen wireless charging bt calling series 7 reloj inteligente android smart watch', '', '', '', 1454.00, '/upload/5d05cc8e7c0801ae/260f2ce48ea7408c.png', 1647610614, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1678, 'Xiaomi Mi Electric Scooter Pro / Essential Lite สกู๊ตเตอร์ไฟฟ้าผู้ใหญ่ เบา บาง จาก', '', 'Xiaomi Mi Electric Scooter Pro / Essential Lite สกู๊ตเตอร์ไฟฟ้าผู้ใหญ่ เบา บาง จาก', '', '', '', 9990.00, '/upload/df74d18fe6d8724f/ff19974d09382485.jpg', 1647610647, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1679, '360 Robot S9 Vacuum Cleaner Sweeping Mopping เครื่องดูดฝุ่นหุ่นยนต์อัจฉริยะ เชื่อมต่อผ่านแอพ', '', '360 Robot S9 Vacuum Cleaner Sweeping Mopping เครื่องดูดฝุ่นหุ่นยนต์อัจฉริยะ เชื่อมต่อผ่านแอพ', '', '', '', 9990.00, '/upload/38bb5f7a513cc082/6f17aa2c507aa931.jpg', 1647610702, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1680, '2022 Smartphone for Samsung Galaxy S21 Ultra 5G Android 11 Global Version 6.8 inch original unlock 16GB+512GB Mobile phonesHot sale products', '', '2022 Smartphone for Samsung Galaxy S21 Ultra 5G Android 11 Global Version 6.8 inch original unlock 16GB+512GB Mobile phonesHot sale products', '', '', '', 4990.00, '/upload/0e7512af03f4e655/92480dca22b8db85.png', 1647610724, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1681, 'Dreame V12 Handheld Wireless Vacuum Cleaner เครื่องดูดฝุ่นไร้สาย แรงดูด 27Kpa', '', 'Dreame V12 Handheld Wireless Vacuum Cleaner เครื่องดูดฝุ่นไร้สาย แรงดูด 27Kpa', '', '', '', 10000.00, '/upload/caac6dd53940ebe8/94154598fdb70db9.jpg', 1647610777, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1682, 'custom designer wholesale brand fashion hot selling latest tote women leather large shoulder hand bag', '', 'custom designer wholesale brand fashion hot selling latest tote women leather large shoulder hand bag', '', '', '', 3954.00, '/upload/252e5ce11a21c2d5/7e5f236cb81d8c30.png', 1647610887, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1683, 'HUAWEI nova 9 SE มือถือ | Pre-Order จัดส่งสินค้า วันที่ 26 มีนาคม 2565 108MP ภาพถ่ายความละเอียด สูง สร้างสรรค์เรื่องราวใหม่ผ่าน', '', 'HUAWEI nova 9 SE มือถือ | Pre-Order จัดส่งสินค้า วันที่ 26 มีนาคม 2565 108MP ภาพถ่ายความละเอียด สูง สร้างสรรค์เรื่องราวใหม่ผ่าน', '', '', '', 9490.00, '/upload/1ab7d408bf45abb1/232f9e095f795130.jpg', 1647610932, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1684, 'Samsung Galaxy A22 5G (8/128GB) ขนาดหน้าจอ 6.6\"', '', 'Samsung Galaxy A22 5G (8/128GB) ขนาดหน้าจอ 6.6\"', '', '', '', 7890.00, '/upload/b1f9bcebdc7ed4b8/2bab884360aeea4a.jpg', 1647611015, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1685, 'trend pu leather purses blue hand bags 2022 women shoulder handbag luxury ladies', '', 'trend pu leather purses blue hand bags 2022 women shoulder handbag luxury ladies', '', '', '', 2990.00, '/upload/3f4566a10f2293eb/14a2f6d953e22be7.png', 1647611065, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1686, 'Galaxy Samsung A52s 5G/A52 LTE/5Gเครื่องศูนย์ไทย(ประกันศูนย์11-12เดือน)', '', 'Galaxy Samsung A52s 5G/A52 LTE/5Gเครื่องศูนย์ไทย(ประกันศูนย์11-12เดือน)', '', '', '', 9490.00, '/upload/d20b4ad379268c79/388691cfd9d80dbc.jpg', 1647611145, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1687, '2022 oem brand brown luxury vintage korean cheap ladies pu fancy fashion cute small crossbody hand bags for girl', '', '2022 oem brand brown luxury vintage korean cheap ladies pu fancy fashion cute small crossbody hand bags for girl', '', '', '', 4990.00, '/upload/68c0e9f816fa79c0/82c58684dd5620c3.png', 1647611210, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1688, 'Samsung Galaxy A22 4G/5Gเครื่องศูนย์ไทยเครียร์สต๊อก', '', 'Samsung Galaxy A22 4G/5Gเครื่องศูนย์ไทยเครียร์สต๊อก', '', '', '', 6590.00, '/upload/0aa97ab12f095158/908aa6212df18e1b.jpg', 1647611217, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1689, '2022 hot sales china best brand female fashion designer gold colour shoulder geometric woman popular hand bags', '', '2022 hot sales china best brand female fashion designer gold colour shoulder geometric woman popular hand bags', '', '', '', 4990.00, '/upload/d82115392230ba26/510c1a3bf2fd64c8.png', 1647611314, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1690, 'จักรยานไฟฟ้า (\"ออเดอร์ละ 1คัน\"ประกอบเสร็จ100%พร้อมขับขี่) electric bike รุ่น TD4', '', 'จักรยานไฟฟ้า (\"ออเดอร์ละ 1คัน\"ประกอบเสร็จ100%พร้อมขับขี่) electric bike รุ่น TD4', '', '', '', 8089.00, '/upload/74824dcab93d0c94/a06def640c2b1d76.jpg', 1647611415, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1691, 'luxury custom grey color female cheap unique cute new arrival ladies shoulder hand bags', '', 'luxury custom grey color female cheap unique cute new arrival ladies shoulder hand bags', '', '', '', 2550.00, '/upload/c9995e0b761ebc5f/5ddbf3a80927cde0.png', 1647611424, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1692, 'new model customize pink female black color pu woman hand bags set vendor', '', 'new model customize pink female black color pu woman hand bags set vendor', '', '', '', 4560.00, '/upload/53775af775d0782a/fec364f1865af242.png', 1647611485, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1693, 'Xiaomi Yesoul S3 / S3 pro / M1 จักรยานออกกำลังกาย Smart Spinning Bicycle จักรยาน จักรยานอ', '', 'Xiaomi Yesoul S3 / S3 pro / M1 จักรยานออกกำลังกาย Smart Spinning Bicycle จักรยาน จักรยาน', '', '', '', 6890.00, '/upload/a1b30f5c2077bd24/2812d8affa358267.jpg', 1647611496, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1694, 'Fashion Big Circle C Shaped Earrings Women Jewelry Gold Plated Oversized Stainless Steel Big Hoop Earrings', '', 'Fashion Big Circle C Shaped Earrings Women Jewelry Gold Plated Oversized Stainless Steel Big Hoop Earrings', '', '', '', 1250.00, '/upload/742ff5723fe42593/4b28700e7d6ca024.png', 1647611579, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1695, 'จักรยานเด็ก RASTAR BMW 14 นิ้ว kid running bike', '', 'จักรยานเด็ก RASTAR BMW 14 นิ้ว kid running bike', '', '', '', 6590.00, '/upload/d622bbf39ca02c19/1f23d87a9bfc5e67.jpg', 1647611586, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1696, 'จักรยานไปรษณีย์มือสองญี่ปุ่น', '', 'จักรยานไปรษณีย์มือสองญี่ปุ่น', '', '', '', 5800.00, '/upload/39fb31c176343774/cbc8e3483753c02f.jpg', 1647611662, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1697, 'Luxury Elegant Rhinestone Colourful Pearl Ring Of Saturn Jewelry Set Wedding Bride Bridesmaid Necklace Pendant Earring For Women', '', 'Luxury Elegant Rhinestone Colourful Pearl Ring Of Saturn Jewelry Set Wedding Bride Bridesmaid Necklace Pendant Earring For Women', '', '', '', 5000.00, '/upload/d123defe5af90307/34f655a618871644.png', 1647611712, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1698, 'จักรยานญี่ปุ่น Doppelganger Road Yach 330', '', 'จักรยานญี่ปุ่น Doppelganger Road Yach 330', '', '', '', 5000.00, '/upload/1623153b1ac21aeb/bd19b2a7e13236a6.jpg', 1647611730, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1699, 'Luxury Vintage Hyperbole Gold Plated Wedding Bride Bridesmaid Emerald Necklace Bracelet Earring Ring 4 Jewelry Set For Lady', '', 'Luxury Vintage Hyperbole Gold Plated Wedding Bride Bridesmaid Emerald Necklace Bracelet Earring Ring 4 Jewelry Set For Lady', '', '', '', 4999.00, '/upload/aa1406f013ba3fb3/a162df7b0a6bb7e5.png', 1647611789, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1700, 'HUAWEI nova 9 SE มือถือ | Pre-Order จัดส่งสินค้า วันที่ 26 มีนาคม 2565 108MP ภาพถ่ายความละเอียด', '', 'HUAWEI nova 9 SE มือถือ | Pre-Order จัดส่งสินค้า วันที่ 26 มีนาคม 2565 108MP ภาพถ่ายความละเอียด', '', '', '', 9490.00, '/upload/0c935ac247af0dea/991d4c283dd27e9c.jpg', 1647611841, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1701, 'Stainless Steel Roman Numerals Bangles Set Knit Weave Twist Bracelets Screw Nut Rome Gold Plating Titanium Steel Men Jewelry', '', 'Stainless Steel Roman Numerals Bangles Set Knit Weave Twist Bracelets Screw Nut Rome Gold Plating Titanium Steel Men Jewelry', '', '', '', 1955.00, '/upload/4356bc56a9ae4915/8e691f166fe9fdb0.png', 1647611856, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1702, 'จักรยาน MONTASEN MBS01 ล้อ 16 นิ้ว', '', 'จักรยาน MONTASEN MBS01 ล้อ 16 นิ้ว', '', '', '', 5590.00, '/upload/ce70bd2e5ec4a081/8c1edfb63ac3b30c.jpg', 1647611923, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1703, 'จักรยานเด็ก RASTAR BMW 14 นิ้ว kid running bike', '', 'จักรยานเด็ก RASTAR BMW 14 นิ้ว kid running bike', '', '', '', 6590.00, '/upload/2ec5440b82baa4af/2bfabcd33e6bbbad.jpg', 1647612004, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1704, 'Hip Hop Personalized Custom Iced Out Love Heart Photo Frame Pendant Necklace', '', 'Hip Hop Personalized Custom Iced Out Love Heart Photo Frame Pendant Necklace', '', '', '', 4990.00, '/upload/34b102b6e3ff3e27/373455e58c00406a.png', 1647612114, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1705, 'MINI COOPER Fold Tricycle จักรยานฝึกปั่น ลิขสิทธิ์แท้ ของแท้ รุ่น 10’Tricycle Bike สำหรับเด็ก 10เดือน - 3ปี', '', 'MINI COOPER Fold Tricycle จักรยานฝึกปั่น ลิขสิทธิ์แท้ ของแท้ รุ่น 10’Tricycle Bike สำหรับเด็ก 10เดือน - 3ปี', '', '', '', 6490.00, '/upload/bf5d20fd075e5dce/92e3aff4366613eb.jpg', 1647612124, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1706, 'Amazon FBA label printer MHT-L1081 thermal printer 4x6 shipping label thermal printe', '', 'Amazon FBA label printer MHT-L1081 thermal printer 4x6 shipping label thermal printe', '', '', '', 4990.00, '/upload/cb6a6cce688eaeb0/d022b4d1c54c2518.png', 1647612354, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1707, '4 Long Range Walkie Talkies Rechargeable for Adults - NOAA 2 Way Radios Walkie Talkies 4 Pack -', '', '4 Long Range Walkie Talkies Rechargeable for Adults - NOAA 2 Way Radios Walkie Talkies 4 Pack -', '', '', '', 5550.00, '/upload/9391a02c9ccf97a4/c66a2868ea91ac91.jpg', 1647612778, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1708, 'Balance Bike Cruzee 2021 (11 Colors) Aluminium Frame', '', 'Balance Bike Cruzee 2021 (11 Colors) Aluminium Frame', '', '', '', 6590.00, '/upload/fbea9dafa6978b39/63dd7d6c3a4dfc69.jpg', 1647612943, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1709, 'ALPHA ทีวี TV สมาททีวี SMARTTV LED ขนาด 32 นิ้ว แอนดรอย9 รุ่น LWD-325AA SMT V.9', '', 'ALPHA ทีวี TV สมาททีวี SMARTTV LED ขนาด 32 นิ้ว แอนดรอย9 รุ่น LWD-325AA SMT V.9', '', '', '', 6990.00, '/upload/fbea9dafa6978b39/63dd7d6c3a4dfc69.jpg', 1647613062, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1710, 'Milestone Printer MHT-P80A Kitchen receipt printer wifi blue tooth com Lan USB ports 250mm/s High speed 80mm pos thermal printer', '', 'Milestone Printer MHT-P80A Kitchen receipt printer wifi blue tooth com Lan USB ports 250mm/s High speed 80mm pos thermal printer', '', '', '', 3582.00, '/upload/1b86a9a6d061e9cc/5745d014dce60f42.png', 1647613082, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1712, 'HomePro ฐานรองหัวเตียง 6 ฟุต HOME LIVING STYLE MUNICH น้ำตาลเข้ม แบรนด์ HOME LIVING STYLE', '', 'HomePro ฐานรองหัวเตียง 6 ฟุต HOME LIVING STYLE MUNICH น้ำตาลเข้ม แบรนด์ HOME LIVING STYLE', '', '', '', 9900.00, '/upload/4b9f74f8926eda38/a972f1e5fd99e21f.jpg', 1647613260, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1713, 'Milestone Printer MHT-P80A Kitchen receipt printer wifi blue tooth com Lan USB ports 250mm/s High speed 80mm pos thermal printer', '', 'Milestone Printer MHT-P80A Kitchen receipt printer wifi blue tooth com Lan USB ports 250mm/s High speed 80mm pos thermal printer', '', '', '', 1890.00, '/upload/86fa5409c16504dd/4793b10a58b17605.png', 1647613264, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1714, 'Wireless shipping label printer 4x6 inch thermal barcode printer with blue tooth ethernet usb port', '', 'Wireless shipping label printer 4x6 inch thermal barcode printer with blue tooth ethernet usb port', '', '', '', 1190.00, '/upload/4b1062d356138289/a8e2ba41b56717fa.png', 1647613375, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1715, 'Koncept furniture KONCEPT FURNITURE ชุดห้องนอน ตู้เสื้อผ้าบานเปิด KC-PLAY ขนาด 120x60x200 ซม. - สีขาว', '', 'Koncept furniture KONCEPT FURNITURE ชุดห้องนอน ตู้เสื้อผ้าบานเปิด KC-PLAY ขนาด 120x60x200 ซม. - สีขาว', '', '', '', 6590.00, '/upload/0d5c00a591247aa5/0187ae88d95dcd3d.jpg', 1647613473, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1716, 'Factory Cheap Price MHT-F5 Wired Barcode Scanner Module', '', 'Factory Cheap Price MHT-F5 Wired Barcode Scanner Module', '', '', '', 1824.00, '/upload/4cea3a059d7ed998/29d7c46ccec553c9.png', 1647613524, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1717, 'oncept furniture KONCEPT FURNITURE โซฟาหนังสังเคราะห์ โซฟา 2 ที่นั่ง Gabano ขนาด 146x76x74 ซม. - สีน้ำตาล', '', 'oncept furniture KONCEPT FURNITURE โซฟาหนังสังเคราะห์ โซฟา 2 ที่นั่ง Gabano ขนาด 146x76x74 ซม. - สีน้ำตาล', '', '', '', 6300.00, '/upload/23e2a83df6d1f0b0/bb5b5765f50e9476.jpg', 1647613535, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1718, 'Koncept furniture KONCEPT FURNITURE เก้าอี้พักผ่อนผ้า เก้าอี้พักผ่อนปรับระดับไฟฟ้า 1 ที่นั่ง Lenef ขนาด 93x94x103 ซม. -', '', 'Koncept furniture KONCEPT FURNITURE เก้าอี้พักผ่อนผ้า เก้าอี้พักผ่อนปรับระดับไฟฟ้า 1 ที่นั่ง Lenef ขนาด 93x94x103 ซม. -', '', '', '', 9590.00, '/upload/80c0416234a94dc0/270ba3b177c319e8.png', 1647613655, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1719, 'MHT-M1 Android barcode qr code scanner pda machines with 3g', '', 'MHT-M1 Android barcode qr code scanner pda machines with 3g', '', '', '', 2550.00, '/upload/835c2955b765a732/27725ede857171c6.png', 1647613729, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1720, 'Koncept furniture KONCEPT FURNITURE โซฟาผ้า โซฟาเบด Shasa ขนาด 135x101x85 ซม. -', '', 'Koncept furniture KONCEPT FURNITURE โซฟาผ้า โซฟาเบด Shasa ขนาด 135x101x85 ซม. -', '', '', '', 8790.00, '/upload/f42a2f6a73df9371/7d2d5d0c052ccc43.png', 1647613766, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1721, 'Koncept furniture KONCEPT FURNITURE โซฟาหนังสังเคราะห์ โซฟาเบด Chaaim ขนาด 191x109x47 ซม. - สีดำ', '', 'Koncept furniture KONCEPT FURNITURE โซฟาหนังสังเคราะห์ โซฟาเบด Chaaim ขนาด 191x109x47 ซม. - สีดำ', '', '', '', 6700.00, '/upload/833e769a206e15de/8a0b07eb442b8a96.jpg', 1647613849, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1722, 'Koncept furniture KONCEPT FURNITURE ชุดห้องนอน ตู้เสื้อผ้าบานเลื่อน Havin ขนาด 1x1x1 ซม. - สีโอ๊ค', '', 'Koncept furniture KONCEPT FURNITURE ชุดห้องนอน ตู้เสื้อผ้าบานเลื่อน Havin ขนาด 1x1x1 ซม. - สีโอ๊ค', '', '', '', 6890.00, '/upload/86378a3ffa7f5c10/a966c12cc83d6c4b.jpg', 1647613903, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1723, 'Koncept furniture KONCEPT FURNITURE ชุดห้องนอน ตู้เสื้อผ้าบานเลื่อน Havin ขนาด 1x1x1 ซม. - สีโอ๊ค', '', 'Koncept furniture KONCEPT FURNITURE ชุดห้องนอน ตู้เสื้อผ้าบานเลื่อน Havin ขนาด 1x1x1 ซม. - สีโอ๊ค', '', '', '', 5990.00, '/upload/ab47bc4e7e98c726/8aadcedf3c4911f7.jpg', 1647613958, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1724, 'Koncept furniture KONCEPT FURNITURE ชุดห้องนอน ตู้เสื้อผ้าบานเลื่อน Havin ขนาด 1x1x1 ซม. - สีโอ๊ค', '', 'Koncept furniture KONCEPT FURNITURE ชุดห้องนอน ตู้เสื้อผ้าบานเลื่อน Havin ขนาด 1x1x1 ซม. - สีโอ๊ค', '', '', '', 6900.00, '/upload/620411fa176c24ba/975e2e41a7b7947d.jpg', 1647614085, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1725, 'Koncept furniture KONCEPT FURNITURE ชุดห้องนอน ตู้เสื้อผ้าบานเลื่อน Havin ขนาด 1x1x1 ซม. - สีโอ๊ค', '', 'Koncept furniture KONCEPT FURNITURE ชุดห้องนอน ตู้เสื้อผ้าบานเลื่อน Havin ขนาด 1x1x1 ซม. - สีโอ๊ค', '', '', '', 6990.00, '/upload/14be78654fff1e39/c64290c9e0869bc5.jpg', 1647614106, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1726, 'Recliner Relax หุ้มหนังสังเคราะห์เกรดA พร้อมที่วางแก้วอย่างดี มี2สี', '', 'Recliner Relax หุ้มหนังสังเคราะห์เกรดA พร้อมที่วางแก้วอย่างดี มี2สี', '', '', '', 5000.00, '/upload/2624b6b41b4ec987/d0a2ad8d7c378bcf.jpg', 1647614269, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1727, 'HomeHuk เก้าอี้พักผ่อน รุ่น Virtus เก้าอี้โซฟา เบาะหนัง ปรับเอน 170 องศา ที่วางขา มี/ไม่มีแท่นวาง เก้าอี้นอน เก้าอี้เบาะหนัง โซฟาพับได้', '', 'HomeHuk เก้าอี้พักผ่อน รุ่น Virtus เก้าอี้โซฟา เบาะหนัง ปรับเอน 170 องศา ที่วางขา มี/ไม่มีแท่นวาง เก้าอี้นอน เก้าอี้เบาะหนัง โซฟาพับได้', '', '', '', 6499.00, '/upload/67a052ff21a16bd0/28f244f25c223f34.jpg', 1647614552, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1728, 'LG ตู้เย็น 2D 14.2 คิว รุ่น GN-B422SQCL', '', 'LG ตู้เย็น 2D 14.2 คิว รุ่น GN-B422SQCL', '', '', '', 9999.00, '/upload/e7a5cebf2488a434/3e673de4327df396.jpg', 1647614788, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1729, 'MEX เตาไฟฟ้าฐานเซรามิก 4 หัวเตา รุ่น HVC264', '', 'MEX เตาไฟฟ้าฐานเซรามิก 4 หัวเตา รุ่น HVC264', '', '', '', 10000.00, '/upload/39350fa0dc826a49/8b435da8296d1900.jpg', 1647614809, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1730, 'Transparent Rubber Silicone Belt Concept Quartz Watch Racing Sports Wrist Watches Mechanical Cyberpunk Men Jewelry', '', 'Transparent Rubber Silicone Belt Concept Quartz Watch Racing Sports Wrist Watches Mechanical Cyberpunk Men Jewelry', '', '', '', 4520.00, '/upload/c240adbe3ffe8b23/86687d88092fea58.png', 1647614846, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1731, 'เตาแก็ส Ariston 4 หัว ตัวใหม่ พร้อมไฟฟ้า 1 เตา ลดราคาจาก 14000 เหลือ 4000 บาท', '', 'เตาแก็ส Ariston 4 หัว ตัวใหม่ พร้อมไฟฟ้า 1 เตา ลดราคาจาก 14000 เหลือ 4000 บาท', '', '', '', 5000.00, '/upload/5c1df282d1ed72f2/fe42e830df087da5.jpg', 1647614920, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1732, 'FRANKE เตาแก๊สแบบฝัง 2 หัว รุ่น FHS 7212', '', 'FRANKE เตาแก๊สแบบฝัง 2 หัว รุ่น FHS 7212', '', '', '', 5290.00, '/upload/94a886f7f2379608/fb3f455d48cf0f14.jpg', 1647614974, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1733, 'เครื่องซักผ้า TOSHIBA รุ่น AW-UK1100HT(10KG)', '', 'เครื่องซักผ้า TOSHIBA รุ่น AW-UK1100HT(10KG)', '', '', '', 7575.00, '/upload/cdf501574f5c108b/6e35d13ac3817801.jpg', 1647615088, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1734, 'Haier เครื่องซักผ้าฝาบน ความจุ 10 Kg. รุ่น HWM100-1826T', '', 'Haier เครื่องซักผ้าฝาบน ความจุ 10 Kg. รุ่น HWM100-1826T', '', '', '', 6790.00, '/upload/eb871639d130290a/2111d94ee7f7b411.jpg', 1647615165, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1735, 'Yesoul M1 จักรยานไฟฟ้าออกกำลังกาย คาร์ดิโอ Smart Training Spinning Bicycle', '', 'Yesoul M1 จักรยานไฟฟ้าออกกำลังกาย คาร์ดิโอ Smart Training Spinning Bicycle', '', '', '', 7299.00, '/upload/63cb0de71e46994a/c17cc7d2a835526c.jpg', 1647615229, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1736, 'Wrist Watches Custom Logo Eco-friendly Wooden Ebony Quartz Glass Leather Men Round Pointer No Waterproof 45mm CN;ZHE 25.7g 22cmHot sale products', '', 'Wrist Watches Custom Logo Eco-friendly Wooden Ebony Quartz Glass Leather Men Round Pointer No Waterproof 45mm CN;ZHE 25.7g 22cmHot sale products', '', '', '', 1452.00, '/upload/ee58fee787dc50b2/4d216605b149db4a.png', 1647615303, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1737, 'GYMNASTIKA ลู่วิ่งไฟฟ้า KINGSMITH K12 (HUAWEI X1)', '', 'GYMNASTIKA ลู่วิ่งไฟฟ้า KINGSMITH K12 (HUAWEI X1)', '', '', '', 9299.00, '/upload/d3c3ca703c9722e7/2535c13b6433ede7.jpg', 1647615353, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1738, 'OVICX Xiaoqiao QISP ลู่วิ่งไฟฟ้าแบบเรียบแบน ระบบแรงโน้มถ่วง พร้อมจอแสดงผล มีรีโมท Mini walking pad', '', 'OVICX Xiaoqiao QISP ลู่วิ่งไฟฟ้าแบบเรียบแบน ระบบแรงโน้มถ่วง พร้อมจอแสดงผล มีรีโมท Mini walking pad', '', '', '', 6259.00, '/upload/677b127b360e79ab/58f29ab8f4a9e35d.jpg', 1647615419, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1739, 'กะทะไฟฟ้า (มีรูระบายน้ำมัน) หม้อชาบู หม้อสุกี้ กะทะปิ้งย่าง เตาปิ้งย่างชาบู บาร์บีคิว 2 in 1 Electric panกะทะไฟฟ้า', '', 'กะทะไฟฟ้า (มีรูระบายน้ำมัน) หม้อชาบู หม้อสุกี้ กะทะปิ้งย่าง เตาปิ้งย่างชาบู บาร์บีคิว 2 in 1 Electric panกะทะไฟฟ้า', '', '', '', 6204.00, '/upload/b7eed7d8dbbfbcab/1fa14ea027d95fbb.jpg', 1647615536, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1740, 'Midea WJH3002 กระทะไฟฟ้า เครื่องทําแพนเค้กความร้อนสองด้าน เครื่องอบเค้ก เครื่องทอด', '', 'Midea WJH3002 กระทะไฟฟ้า เครื่องทําแพนเค้กความร้อนสองด้าน เครื่องอบเค้ก เครื่องทอด', '', '', '', 7043.00, '/upload/f11b09f4ef88b295/1f4fdd31b5432df0.jpg', 1647615599, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1741, 'Electric cookerSupor หม้อไฟฟ้าหม้อไฟไฟฟ้าในครัวเรือนหอพักนักศึกษามัลติฟังก์ชั่หนึ่งกระทะไฟฟ้าหม้อนึ่งสตูว์ขนาดเล็ก', '', 'Electric cookerSupor หม้อไฟฟ้าหม้อไฟไฟฟ้าในครัวเรือนหอพักนักศึกษามัลติฟังก์ชั่หนึ่งกระทะไฟฟ้าหม้อนึ่งสตูว์ขนาดเล็ก', '', '', '', 6740.00, '/upload/c4741497294cc99c/902509ef78ac9a4a.jpg', 1647615662, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1742, 'โคมไฟติดเพดาน 9 ลูก เปิดไฟแล้วสวยมาก', '', 'โคมไฟติดเพดาน 9 ลูก เปิดไฟแล้วสวยมาก', '', '', '', 6900.00, '/upload/1e1f30a15410878a/472b4a2ca39c04ba.jpg', 1647659394, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1743, 'Yolo คริสตัลไฟติดเพดานโคมไฟระย้าทอง Crystal ceiling light chandelier gold（X8152)', '', 'Yolo คริสตัลไฟติดเพดานโคมไฟระย้าทอง Crystal ceiling light chandelier gold（X8152)', '', '', '', 9419.00, '/upload/22b6aa4e61ae0c50/8783ea6d384008c8.jpg', 1647659554, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1744, 'โคมไฟห้อยช่อ Chandelier ช่อแก้ว ติดเพดาน SL-1-4373', '', 'โคมไฟห้อยช่อ Chandelier ช่อแก้ว ติดเพดาน SL-1-4373', '', '', '', 6500.00, '/upload/89ea2452f6b651ba/1cd4a11fe88a0869.jpg', 1647659622, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1745, 'โคมระย้าคริสตัล โคมไฟห้องนั่งเล่น ห้องนอนของโรงแรม โคมระย้าคริสตัล โคมไฟขายร้อนCeiling Lights w080', '', 'โคมระย้าคริสตัล โคมไฟห้องนั่งเล่น ห้องนอนของโรงแรม โคมระย้าคริสตัล โคมไฟขายร้อนCeiling Lights w080', '', '', '', 6270.00, '/upload/8dd4560400831203/4eb6a35f426dce26.jpg', 1647659737, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1746, 'ด้านหลังที่ทันสมัยเรียบง่ายสแตนเลสแสงหรูหราห้องนั่งเล่นโคมไฟควันสีเทาคริสตัลโคมระย้ารูปไข่ร้านอาหารห้องนอนแสง QZk3', '', 'ด้านหลังที่ทันสมัยเรียบง่ายสแตนเลสแสงหรูหราห้องนั่งเล่นโคมไฟควันสีเทาคริสตัลโคมระย้ารูปไข่ร้านอาหารห้องนอนแสง QZk3', '', '', '', 5815.00, '/upload/26f631eaf0a8e9ac/6e2cfd87783a9d70.jpg', 1647659826, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1747, 'DENGO Auto Rover กล้องติดรถยนต์ 2 กล้องเทพ ถูกกว่าคุ้มกว่า จอซ้าย-เลนส์ขวา ชัด 1080p FHD สว่างชัด มีเส้นกะระยะถอย จับการ', '', 'DENGO Auto Rover กล้องติดรถยนต์ 2 กล้องเทพ ถูกกว่าคุ้มกว่า จอซ้าย-เลนส์ขวา ชัด 1080p FHD สว่างชัด มีเส้นกะระยะถอย จับการ', '', '', '', 1049.00, '/upload/fa30a99869df6417/dc93fabc95d5f4b9.png', 1647660116, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1748, 'Universal Waterproof Phone Pouch with Lanyard Cellphone ip8x Diving Up to 7.0\" Dry Bag Case Outdoor Beach Floating Underwater high Clear TPU dustproof Touch Phone case for iPhone Android Blue', '', 'Universal Waterproof Phone Pouch with Lanyard Cellphone ip8x Diving Up to 7.0\" Dry Bag Case Outdoor Beach Floating Underwater high Clear TPU dustproof Touch Phone case for iPhone Android Blue', '', '', '', 8590.00, '/upload/63ca58a9bf6f4814/10ca78b52912190e.jpg', 1647660168, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1749, '70mai M300 Dash Cam 70 mai M 300 Car Camera 2k กล้องติดรถยนต์อัจฉริยะ ความคมชัด 1296P', '', '70mai M300 Dash Cam 70 mai M 300 Car Camera 2k กล้องติดรถยนต์อัจฉริยะ ความคมชัด 1296P', '', '', '', 1499.00, '/upload/84c044ef5feca978/d38c16f9dad1ee7a.png', 1647660213, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1750, '70mai Saphir Smartwatch นาฬิกาสมาร์ทวอทช์ กันน้ำ 5 ATM วัดอัตราการเต้นของหัวใจ', '', '70mai Saphir Smartwatch นาฬิกาสมาร์ทวอทช์ กันน้ำ 5 ATM วัดอัตราการเต้นของหัวใจ', '', '', '', 3890.00, '/upload/925cc243d0ef145d/508b4ef963640305.png', 1647660297, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1751, 'โคมไฟคริสตัล ตกแต่ง รหัสสินค้า MZ-028', '', 'โคมไฟคริสตัล ตกแต่ง รหัสสินค้า MZ-028', '', '', '', 7590.00, '/upload/270bc2598f854d9a/5e347854bdef5c12.jpg', 1647660379, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1752, '70mai Dash Cam A400 2K กล้องติดรถยนต์ ความละเอียด 1440P Quad HD', '', '70mai Dash Cam A400 2K กล้องติดรถยนต์ ความละเอียด 1440P Quad HD', '', '', '', 3249.00, '/upload/d1eb492ce36c718b/9befb7f2debaf713.png', 1647660433, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1753, 'SONY SRS-XB43 Portable BLUETOOTH® Speaker EXTRA BASS™', '', 'SONY SRS-XB43 Portable BLUETOOTH® Speaker EXTRA BASS™', '', '', '', 7490.00, '/upload/fad7e41a93520c92/3318c96aee4b7d8c.png', 1647660533, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1754, '70mai Dash Cam A400 2K กล้องติดรถยนต์ ภาพคมชัด ความละเอียด 1440P Quad HD', '', '70mai Dash Cam A400 2K กล้องติดรถยนต์ ภาพคมชัด ความละเอียด 1440P Quad HD', '', '', '', 4249.00, '/upload/da43e149aa447c9d/f4f795dfc6651946.png', 1647660535, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1755, 'HUAWEI nova 9 SE มือถือ | Pre-Order จัดส่งสินค้า วันที่ 26 มีนาคม 2565 108MP ภาพถ่ายความละเอียด สูง', '', 'HUAWEI nova 9 SE มือถือ | Pre-Order จัดส่งสินค้า วันที่ 26 มีนาคม 2565 108MP ภาพถ่ายความละเอียด สูง', '', '', '', 9490.00, '/upload/33007687d9c0b846/0613a232bced16d5.jpg', 1647660635, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1756, '70mai Portable Car Jump Starter PS01 จั้มสตาร์ทรถยนต์ แบตเตอรี่ เป็น power bank ได้ แบ', '', '70mai Portable Car Jump Starter PS01 จั้มสตาร์ทรถยนต์ แบตเตอรี่ เป็น power bank ได้ แบ', '', '', '', 1699.00, '/upload/1c774b8c4f491e47/6875fe2909d498b8.png', 1647660849, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1757, 'กล้อง Canon 450D ?สินค้ามือสองสภาพดี', '', 'กล้อง Canon 450D ?สินค้ามือสองสภาพดี', '', '', '', 5500.00, '/upload/442228ac661c9007/913e734797a9a015.jpg', 1647660867, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1758, 'Fuji xa2 สภาพสวย 90%⚡️สินค้ามือสองสภาพดี', '', 'Fuji xa2 สภาพสวย 90%⚡️สินค้ามือสองสภาพดี', '', '', '', 5890.00, '/upload/e379afb29352eb48/e24f6990a59fb0e8.jpg', 1647660942, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1759, 'Baseus 20000mAh Car Jump Starter Power Bank 2000A 12V Portable Battery Charger Auto Emergency Booster Starting Device Jump Start', '', 'Baseus 20000mAh Car Jump Starter Power Bank 2000A 12V Portable Battery Charger Auto Emergency Booster Starting Device Jump Start', '', '', '', 2729.00, '/upload/f3ff45dab8e4b9dd/68800e038c70fe7a.png', 1647661030, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1760, 'Geeni Freebird Wireless Indoor/Outdoor WiFi Security Camera, Rechargeable Battery-Powered Home Security Camera, 1080P Night Vision/Waterproof, Motion Detection, 2-Way Audio, Works with Alexa (2 Pack)', '', 'Geeni Freebird Wireless Indoor/Outdoor WiFi Security Camera, Rechargeable Battery-Powered Home Security Camera, 1080P Night Vision/Waterproof, Motion Detection, 2-Way Audio, Works with Alexa (2 Pack)', '', '', '', 6500.00, '/upload/a45f5fcdd495b5b7/48c82bdc3b6f541e.jpg', 1647661168, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1761, 'Geeni Sentry Wi-Fi Wireless Smart Floodlight Security Camera, 2-Way Audio, Motion Sensor Alarm, Audio Video Recording, Works with Alexa and Hey Google', '', 'Geeni Sentry Wi-Fi Wireless Smart Floodlight Security Camera, 2-Way Audio, Motion Sensor Alarm, Audio Video Recording, Works with Alexa and Hey Google', '', '', '', 7000.00, '/upload/4ed55611c76b8578/711f7dfb86c96fc2.jpg', 1647661275, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1762, 'Baseus เครื่องดูดฝุ่นแบบพกพา แรงดูดสูงถึง 15000Pa Portable Car Vacuum Cleaner', '', 'Baseus เครื่องดูดฝุ่นแบบพกพา แรงดูดสูงถึง 15000Pa Portable Car Vacuum Cleaner', '', '', '', 1100.00, '/upload/e4bd1e6b7ef19c04/116a05452ecadc23.png', 1647661378, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1763, 'แท่นเลื่อยฉลุไฟฟ้า makita sj401', '', 'แท่นเลื่อยฉลุไฟฟ้า makita sj401', '', '', '', 7800.00, '/upload/e6264162ef7cb116/f0b78d111f46cf94.jpg', 1647661953, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1764, 'Baseus Air compressure pump ปั๊มเติมลมอัตโนมัติแบบพกพา สามารถเติมลมยาง รถยนต์ รถจักรยานยนต์ มอเตอร์ไซค์ บอล ที่นอนเป่าลม', '', 'Baseus Air compressure pump ปั๊มเติมลมอัตโนมัติแบบพกพา สามารถเติมลมยาง รถยนต์ รถจักรยานยนต์ มอเตอร์ไซค์ บอล ที่นอนเป่าลม', '', '', '', 1800.00, '/upload/e4658c6d58f7705c/1604c01b6b83bdd4.png', 1647662181, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1765, 'ELECTRIC CHAINSAW GREENWORKS GWS0004 24V เลื่อยไฟฟ้า+แบตเตอรี่ GREENWORKS GWS0004 24 โวลต์', '', 'ELECTRIC CHAINSAW GREENWORKS GWS0004 24V เลื่อยไฟฟ้า+แบตเตอรี่ GREENWORKS GWS0004 24 โวลต์', '', '', '', 8827.00, '/upload/241236ad46a9093b/22ff9c919915ff20.jpg', 1647662243, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1766, 'โต๊ะเลื่อยวงเดือนงานไม้ โต๊ะเลื่อยวงเดือน เลื่อยวงเดือน เลื่อยไฟฟ้า โต๊ะอุตสาหกรรม ครัวเรือน ชนบท โต๊ะเลื่อยไม้ เลื่อยวง', '', 'โต๊ะเลื่อยวงเดือนงานไม้ โต๊ะเลื่อยวงเดือน เลื่อยวงเดือน เลื่อยไฟฟ้า โต๊ะอุตสาหกรรม ครัวเรือน ชนบท โต๊ะเลื่อยไม้ เลื่อยวง', '', '', '', 7986.00, '/upload/98778cb8421d2d02/4aef7e5859c4557f.jpg', 1647662329, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1767, '✅ เสื้อฟิลคอยล์ กบไสไม้ไฟฟ้า Makita มากีต้า 1805N (แท้-มากีต้า)', '', '✅ เสื้อฟิลคอยล์ กบไสไม้ไฟฟ้า Makita มากีต้า 1805N (แท้-มากีต้า)', '', '', '', 9249.00, '/upload/e306b4ea1712fded/9589b760c370fee0.jpg', 1647662458, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1768, 'BOSCH เครื่องเจียรไร้สาย เครื่องเจียรคอตรง เครื่องเจียร์ไฟฟ้า รุ่น GGS 18 V-LI Professional (SOLO ตัวเปล่า)', '', 'BOSCH เครื่องเจียรไร้สาย เครื่องเจียรคอตรง เครื่องเจียร์ไฟฟ้า รุ่น GGS 18 V-LI Professional (SOLO ตัวเปล่า)', '', '', '', 6690.00, '/upload/a68317cec358bf14/68fa42e8ffd7ff95.jpg', 1647662524, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1769, 'เลื่อยไฟฟ้า เลื่อยยนต์ เครื่องเลื่อยยนต์ เครื่องตัดไม้ RHINO รุ่น 5800 รับประกันความแรง', '', 'เลื่อยไฟฟ้า เลื่อยยนต์ เครื่องเลื่อยยนต์ เครื่องตัดไม้ RHINO รุ่น 5800 รับประกันความแรง', '', '', '', 7010.00, '/upload/305f636f8d207275/fc9c2350db230a3d.jpg', 1647662580, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1770, '☾✑♈Yong Ruiqi เลื่อยไร้ฝุ่นมัลติฟังก์ชั่งานไม้ขนาดเล็กโต๊ะเลื่อยงานไม้เลื่อยไฟฟ้ามอเตอร์สูญญากาศไม้เนื้อแข็งโต๊ะเลื่อยอุ', '', '☾✑♈Yong Ruiqi เลื่อยไร้ฝุ่นมัลติฟังก์ชั่งานไม้ขนาดเล็กโต๊ะเลื่อยงานไม้เลื่อยไฟฟ้ามอเตอร์สูญญากาศไม้เนื้อแข็งโต๊ะเลื่อยอุ', '', '', '', 9191.00, '/upload/08ff3240ce62aec6/c9e0fa2f8339c062.jpg', 1647662652, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1771, 'Zinus หมอนหนุนไมโครไฟเบอร์ กรีนทีเมมโมรีโฟม **หนุนได้สองด้าน ส่งฟรี', '', 'Zinus หมอนหนุนไมโครไฟเบอร์ กรีนทีเมมโมรีโฟม **หนุนได้สองด้าน ส่งฟรี', '', '', '', 1049.00, '/upload/6bd0fb9d415f1b97/72099c6ba595e643.png', 1647662691, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1772, '(new)เลื่อยไฟฟ้าขนาด 6 นิ้วสําหรับแบตเตอรี่ Makita 18v AgUL', '', '(new)เลื่อยไฟฟ้าขนาด 6 นิ้วสําหรับแบตเตอรี่ Makita 18v AgUL', '', '', '', 8290.00, '/upload/062b4a9870a959fa/63ef5cb01e2c1817.jpg', 1647662710, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1773, 'Makita® 5” รุ่น GA5010 หินเจียรใส่โครงเป็นเลื่อยไฟฟ้า โครงหนา บาร์แท้ STIHL® เท่านั้น โซ่ และ บาร์ ยาว 22”', '', 'Makita® 5” รุ่น GA5010 หินเจียรใส่โครงเป็นเลื่อยไฟฟ้า โครงหนา บาร์แท้ STIHL® เท่านั้น โซ่ และ บาร์ ยาว 22”', '', '', '', 8800.00, '/upload/ecaaa71a2a220937/0d128834ae8f66cb.jpg', 1647662829, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1774, 'MAKITA เครื่องเจียร์ไฟฟ้า GA7030 180mm (7\")', '', 'MAKITA เครื่องเจียร์ไฟฟ้า GA7030 180mm (7\")', '', '', '', 6220.00, '/upload/672a4006da565ee4/f8c3c6063ecc343f.jpg', 1647662894, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1775, 'GSH500 สกัดไฟฟ้า 17มม. BOSCH สินค้าแท้ประกัน 1 ปี', '', 'GSH500 สกัดไฟฟ้า 17มม. BOSCH สินค้าแท้ประกัน 1 ปี', '', '', '', 6988.00, '/upload/778c98fbec0ffa37/d7997b50ad35cf8f.jpg', 1647662960, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1776, 'ใบเลื่อยวงเดือน力川เสาหินเครื่องบากมุมขนาดใหญ่อเนกประสงค์เครื่องบดมุมคอนกรีตผนังน้ำและไฟฟ้าเครื่องตัดหินสิ่งประดิษฐ์COD c0', '', 'ใบเลื่อยวงเดือน力川เสาหินเครื่องบากมุมขนาดใหญ่อเนกประสงค์เครื่องบดมุมคอนกรีตผนังน้ำและไฟฟ้าเครื่องตัดหินสิ่งประดิษฐ์COD c0', '', '', '', 5392.00, '/upload/f23b471750d59cac/2ef2dd548b0ea896.jpg', 1647663047, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1777, 'มอเตอร์ เลื่อยสายพาน Makita มากีต้า LB1200F (แท้-สั่ง)', '', 'มอเตอร์ เลื่อยสายพาน Makita มากีต้า LB1200F (แท้-สั่ง)', '', '', '', 8729.00, '/upload/3c4784bd1257fed5/effefa9d1a7e335f.jpg', 1647663138, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1778, 'Zinus หมอนหนุนไมโครไฟเบอร์ กรีนทีเมมโมรีโฟม **หนุนได้สองด้าน ส่งฟรี', '', 'Zinus หมอนหนุนไมโครไฟเบอร์ กรีนทีเมมโมรีโฟม **หนุนได้สองด้าน ส่งฟรี', '', '', '', 1090.00, '/upload/6bd0fb9d415f1b97/72099c6ba595e643.png', 1647663190, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1779, 'Zinus ที่นอนชาเขียว (สเปคนุ่ม) รุ่น Becca หนา 7 cm. **รับประกัน 5 ปี ส่งฟรี', '', 'Zinus ที่นอนชาเขียว (สเปคนุ่ม) รุ่น Becca หนา 7 cm. **รับประกัน 5 ปี ส่งฟรี', '', '', '', 2790.00, '/upload/047a8f970c47fd19/f4f3fc218cf7ade9.png', 1647663297, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1780, 'Zinus ที่นอนชาเขียว (สเปคนุ่ม) รุ่น Baily หนา 7 cm. **รับประกัน 5 ปี ส่งฟรี', '', 'Zinus ที่นอนชาเขียว (สเปคนุ่ม) รุ่น Baily หนา 7 cm. **รับประกัน 5 ปี ส่งฟรี', '', '', '', 4890.00, '/upload/6b34a18ab52fc7d9/7e26130e53ba1069.png', 1647663381, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1781, 'Morning Sleep ที่นอนสปริง ที่นอนเมมโมรี่โฟม ให้สัมผัสนุ่มเด้ง กระจายแรงกดทับ ลดการปวดเมื่อย หนา7นิ้ว รุ่น Cosmic', '', 'Morning Sleep ที่นอนสปริง ที่นอนเมมโมรี่โฟม ให้สัมผัสนุ่มเด้ง กระจายแรงกดทับ ลดการปวดเมื่อย หนา7นิ้ว รุ่น Cosmic', '', '', '', 4390.00, '/upload/3eade42c64c36ce9/31ed6af6d4c8b741.png', 1647663600, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1782, 'INDEX LIVING MALL เตียงนอน รุ่นโกเบ ขนาด 5 ฟุต - บาวาเรี่ยน โอ๊ค', '', 'INDEX LIVING MALL เตียงนอน รุ่นโกเบ ขนาด 5 ฟุต - บาวาเรี่ยน โอ๊ค', '', '', '', 4590.00, '/upload/cfa2090115863b79/93979fb1cb608ca6.png', 1647664057, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1783, 'Koncept furniture เตียงนอน รุ่น Playeah ขนาด 5 ฟุต (158x205x84 ซม.)', '', 'Koncept furniture เตียงนอน รุ่น Playeah ขนาด 5 ฟุต (158x205x84 ซม.)', '', '', '', 4900.00, '/upload/cce15cc8529251d3/e20a1053ad74d4e8.png', 1647664374, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1784, 'Koncept furniture ตู้เสื้อผ้า ขนาด 120 ซม. รุ่น Preem (120x60x200 ซม.)', '', 'Koncept furniture ตู้เสื้อผ้า ขนาด 120 ซม. รุ่น Preem (120x60x200 ซม.)', '', '', '', 3990.00, '/upload/63b644bcaf9a89e1/fc90bf3b6b624835.png', 1647664504, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1785, 'INDEX LIVING MALL ตู้เสื้อผ้า 3 บานประตู รุ่นโว้ค - สีดาร์ค อีโบนี่', '', 'INDEX LIVING MALL ตู้เสื้อผ้า 3 บานประตู รุ่นโว้ค - สีดาร์ค อีโบนี่', '', '', '', 4490.00, '/upload/d2a6c9734680b9c6/6dce4312a90a2a44.png', 1647665146, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1786, 'XtivePRO ม้านั่งยกน้ำหนัก ม้านั่งบริหารร่างกาย เก้าอี้ยกน้ำหนัก ม้านั่งดัมเบล Adjustable Weight Bench', '', 'XtivePRO ม้านั่งยกน้ำหนัก ม้านั่งบริหารร่างกาย เก้าอี้ยกน้ำหนัก ม้านั่งดัมเบล Adjustable Weight Bench', '', '', '', 1290.00, '/upload/49957b88a67283f2/9c762431624a856b.png', 1647665242, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1787, 'XtivePRO ชั้นวางบาร์เบล ปรับความสูงได้ ที่วางบาร์เบล แร็คบาร์เบล Barbell', '', 'XtivePRO ชั้นวางบาร์เบล ปรับความสูงได้ ที่วางบาร์เบล แร็คบาร์เบล Barbell', '', '', '', 1450.00, '/upload/33b8fb2bbcf6ee79/44afb38ff39047d0.png', 1647665305, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1788, 'XtivePRO เก้าอี้ดัมเบล พร้อมชั้นวางบาร์เบล 2 in 1 ยกน้ำหนัก สร้างกล้ามเนื้อ Multifunctional Weight Bench', '', 'XtivePRO เก้าอี้ดัมเบล พร้อมชั้นวางบาร์เบล 2 in 1 ยกน้ำหนัก สร้างกล้ามเนื้อ Multifunctional Weight Bench', '', '', '', 2890.00, '/upload/5fb89b6593b273ba/89f1566d96f0d36a.png', 1647665389, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1789, 'OneTwoFit ม้านั่งออกกำลังกกาย ยกน้ำหนักที่ปรับเอนได้ ม้ายกดัมเบล ม้านั่งดัมเบล เก้าอี้ยกน้ำหนัก อุปกรณ์ออกกำลังกาย 250 กิโลกรัม Adjustable Bench Folding OT112', '', 'OneTwoFit ม้านั่งออกกำลังกกาย ยกน้ำหนักที่ปรับเอนได้ ม้ายกดัมเบล ม้านั่งดัมเบล เก้าอี้ยกน้ำหนัก อุปกรณ์ออกกำลังกาย 250 กิโลกรัม Adjustable Bench Folding OT112', '', '', '', 1718.00, '/upload/3dbab214df1811bb/0ddd7f4cd4ed015e.png', 1647665456, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1790, 'OneTwoFit บาร์โหน บาร์ดึงข้อแบบตั้งพื้น สำหรับออกกำลังกาย OT061A', '', 'OneTwoFit บาร์โหน บาร์ดึงข้อแบบตั้งพื้น สำหรับออกกำลังกาย OT061A', '', '', '', 2648.00, '/upload/060739a997451229/5edc06053be8a091.png', 1647665562, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1791, 'OneTwoFit ชั้นวางบาร์เบล squat rack barbell stand Multi-Function Barbell ปรับความสูงได้ ที่วางบาร์เบล แร็คบาร์เบล Barbell', '', 'OneTwoFit ชั้นวางบาร์เบล squat rack barbell stand Multi-Function Barbell ปรับความสูงได้ ที่วางบาร์เบล แร็คบาร์เบล Barbell', '', '', '', 1439.00, '/upload/d5fe17427051d3ed/640c9cb21a2f9b88.png', 1647665636, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1792, 'OneTwoFit เครื่องออกกำลังกายท่าหกสูง เตียงยืดหลัง เครื่องออกกำลังกายท่าหกสูง เพื่อการยืดกล้ามเนื้อและลดอาการปวดหลัง OT079', '', 'OneTwoFit เครื่องออกกำลังกายท่าหกสูง เตียงยืดหลัง เครื่องออกกำลังกายท่าหกสูง เพื่อการยืดกล้ามเนื้อและลดอาการปวดหลัง OT079', '', '', '', 2649.00, '/upload/c30f6dcb0247600d/f1789cbf1223936d.png', 1647665693, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1795, 'SANDA นาฬิกาข้อมือดิจิตอล กันน้ำ มีไฟ LED หรูหรา แฟชั่นสำหรับผู้หญิงและผู้ชาย', '', 'SANDA นาฬิกาข้อมือดิจิตอล กันน้ำ มีไฟ LED หรูหรา แฟชั่นสำหรับผู้หญิงและผู้ชาย', '', '', '', 2485.00, '/upload/0c2a9d28fff28c5d/bcc0e1ef0583717e.png', 1647665841, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1794, '[Online Exclusive] realme GT Neo 2 (8+128G) ,Snapdragon 870 5G Processor, 5000mAh Massive battery 65 Superdart Charge', '', '[Online Exclusive] realme GT Neo 2 (8+128G) ,Snapdragon 870 5G Processor, 5000mAh Massive battery 65 Superdart Charge', '', '', '', 13990.00, '/upload/cf7591c1f614f250/d76e91f549e5fbeb.jpg', 1647665823, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1796, 'Samsung Galaxy M52 5G (8/128GB)', '', 'Samsung Galaxy M52 5G (8/128GB)', '', '', '', 11490.00, '/upload/497999c41c6c6268/a96eeb56d18eda25.jpg', 1647665847, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1797, 'Sanda นาฬิกาข้อมือควอทซ์มีไฟ Led กันน้ําสําหรับผู้ชาย', '', 'Sanda นาฬิกาข้อมือควอทซ์มีไฟ Led กันน้ําสําหรับผู้ชาย', '', '', '', 2980.00, '/upload/d09337570c7cb4e5/fd97523ea8d594fa.png', 1647665927, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1798, 'OPPO Reno6 Z 5G (8+128) โทรศัพท์มือถือ กล้องหลัง 64 ล้านพิกเซล หน้าจอ 6.43 นิ้ว รับประกัน 12 เดือน พร้อมของแถม(คละสี)', '', 'OPPO Reno6 Z 5G (8+128) โทรศัพท์มือถือ กล้องหลัง 64 ล้านพิกเซล หน้าจอ 6.43 นิ้ว รับประกัน 12 เดือน พร้อมของแถม(คละสี)', '', '', '', 12990.00, '/upload/ff258e115b65ba1d/7aa05c20e4d62159.jpg', 1647665960, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1799, 'Samsung สมาร์ทโฟน มือถือ Galaxy A72 (8/128GB)', '', 'Samsung สมาร์ทโฟน มือถือ Galaxy A72 (8/128GB)', '', '', '', 11999.00, '/upload/fd870ea57ffc39ce/d498a13a4e14239e.jpg', 1647665982, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1800, 'SANDA นาฬิกาข้อมือผู้ชายแฟชั่นกันน้ำนาฬิกาสุดหรู', '', 'SANDA นาฬิกาข้อมือผู้ชายแฟชั่นกันน้ำนาฬิกาสุดหรู', '', '', '', 2480.00, '/upload/0e9818466d7f1c6f/e5c794ed5d23b806.png', 1647665983, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1801, 'Vivo V21 5G Ram 8+3GB Rom 256GB 6.44-inch Iโทรศัพท์ วีโว่ กล้องหน้า 44MP OIS AF / กล้องหลัง 64MP', '', 'Vivo V21 5G Ram 8+3GB Rom 256GB 6.44-inch Iโทรศัพท์ วีโว่ กล้องหน้า 44MP OIS AF / กล้องหลัง 64MP', '', '', '', 11499.00, '/upload/fd85d087ffc39191/d8a9eca6adc64d16.jpg', 1647666007, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1802, 'Xiaomi Pad 5 6+128GB รับประกัน 15 เดือน', '', 'Xiaomi Pad 5 6+128GB รับประกัน 15 เดือน', '', '', '', 10990.00, '/upload/2f03bb2b5e2a32cc/08a011642c97b987.jpg', 1647666030, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1803, 'กระทะ 32 cm สีแดง กะทะ กะทะเทฟล่อน กระทะเทฟล่อน', '', 'กระทะ 32 cm สีแดง กะทะ กะทะเทฟล่อน กระทะเทฟล่อน', '', '', '', 1290.00, '/upload/af29f91190e69bdf/4f3ede18d816020e.png', 1647666043, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1804, 'Samsung Galaxy Watch 4 Classic 46mm Stainless Steel Bluetooth', '', 'Samsung Galaxy Watch 4 Classic 46mm Stainless Steel Bluetooth', '', '', '', 10690.00, '/upload/81b66e61f95b00ed/4ca4eacf1fdeda5b.jpg', 1647666052, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1805, 'Apple Watch Series 7 GPS (2021) สาย Sport Band', '', 'Apple Watch Series 7 GPS (2021) สาย Sport Band', '', '', '', 13900.00, '/upload/8005c8c6a931056b/5c3c2ba0a8c0cebd.jpg', 1647666074, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1806, 'Apple AirPods Max หูฟังไร้สาย พร้อมระบบตัดเสียงรบกวน', '', 'Apple AirPods Max หูฟังไร้สาย พร้อมระบบตัดเสียงรบกวน', '', '', '', 16990.00, '/upload/6424e41b5b824bf8/3ab5f4f56f8432fb.jpg', 1647666098, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1807, 'หม้อชุด 5ใบ พร้อมฝาแก้ว ขนาด 16/18/20/22/24cm. ใช้กับเตาแม่เหล็กไฟฟ้าได้', '', 'หม้อชุด 5ใบ พร้อมฝาแก้ว ขนาด 16/18/20/22/24cm. ใช้กับเตาแม่เหล็กไฟฟ้าได้', '', '', '', 1590.00, '/upload/ed904b6540c160af/f61ba46b1af55abb.png', 1647666101, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1808, 'OPPO Reno6 5G (8+128) โทรศัพท์มือถือ กล้องหลัง AI 64MP MediaTek Dimensity 900 รับประกัน 12 เดือน พร้อมของแถม(คละสี)', '', 'OPPO Reno6 5G (8+128) โทรศัพท์มือถือ กล้องหลัง AI 64MP MediaTek Dimensity 900 รับประกัน 12 เดือน พร้อมของแถม(คละสี)', '', '', '', 17990.00, '/upload/37f731542d460753/e5b1d57688daf881.jpg', 1647666116, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1809, 'SEIKO นาฬิกาไซโก้ SPORT 5 Automatic SRPG47 SRPG47K SRPG47K1 Limited Edition', '', 'SEIKO นาฬิกาไซโก้ SPORT 5 Automatic SRPG47 SRPG47K SRPG47K1 Limited Edition', '', '', '', 14000.00, '/upload/0e9e59cfe37526ff/4747d17be56dc572.jpg', 1647666133, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1810, 'Tissot PR 100 Sport Chic ทิสโซต์ พีอาร์ 100 สปอร์ต ชิค สีขาวมุก สองกษัตริย์ T1019102211600 นาฬิกาผู้หญิง', '', 'Tissot PR 100 Sport Chic ทิสโซต์ พีอาร์ 100 สปอร์ต ชิค สีขาวมุก สองกษัตริย์ T1019102211600 นาฬิกาผู้หญิง', '', '', '', 18500.00, '/upload/52801487f89ea9d9/e3d8e70ca701cc88.jpg', 1647666153, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1811, 'กระเป๋าเดินทาง ขนาด 20นิ้ว กระเป๋าเดินทางวินเทจสีสันสดใส กระเป๋าเดินทางล้อลาก', '', 'กระเป๋าเดินทาง ขนาด 20นิ้ว กระเป๋าเดินทางวินเทจสีสันสดใส กระเป๋าเดินทางล้อลาก', '', '', '', 2459.00, '/upload/e7cff496b240acb9/e5770e6de38a31a7.png', 1647666154, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1812, 'นาฬิกาข้อมือ Seiko Prospex Baby Tuna รุ่น SRPE85K1 / SRP637K1 ประกันศูนย์', '', 'นาฬิกาข้อมือ Seiko Prospex Baby Tuna รุ่น SRPE85K1 / SRP637K1 ประกันศูนย์', '', '', '', 10200.00, '/upload/4c2410c8b04dc7a8/dd251a9de962dc0f.jpg', 1647666173, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1813, 'Seiko Monster รุ่น SRPH13K / SRPH13K1', '', 'Seiko Monster รุ่น SRPH13K / SRPH13K1', '', '', '', 10900.00, '/upload/69f30951d39f15cd/dd89f7ea7013ebaa.jpg', 1647666190, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1814, 'ชั้นวางของมีล้อ สีขาว/ดำ 2-5ชั้น วัสดุพลาสติก+สแตนเลส ประหยัดพื้นที่', '', 'ชั้นวางของมีล้อ สีขาว/ดำ 2-5ชั้น วัสดุพลาสติก+สแตนเลส ประหยัดพื้นที่', '', '', '', 1490.00, '/upload/f7e287effde3361e/5c803839684c5f5d.png', 1647666214, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1815, 'นาฬิกาข้อมือ Seiko Prospex Sumo รุ่น SPB101J1 / SPB103J1 ประกันศูนย์ไทย', '', 'นาฬิกาข้อมือ Seiko Prospex Sumo รุ่น SPB101J1 / SPB103J1 ประกันศูนย์ไทย', '', '', '', 16800.00, '/upload/35da310056032c25/cfcd4b952ca66247.jpg', 1647666216, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1816, 'นาฬิกาข้อมือ Citizen Promaster รุ่น NY0097-87A & NY0099-81X ประกันศูนย์ไทย', '', 'นาฬิกาข้อมือ Citizen Promaster รุ่น NY0097-87A & NY0099-81X ประกันศูนย์ไทย', '', '', '', 10200.00, '/upload/352b9e1412a3b3c2/463fb5542626afa0.jpg', 1647666240, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1817, 'Tissot ทิสโซต์ เอฟวรี่ไทม์ สีดำ T1094071605100 นาฬิกาผู้ชาย', '', 'Tissot ทิสโซต์ เอฟวรี่ไทม์ สีดำ T1094071605100 นาฬิกาผู้ชาย', '', '', '', 15000.00, '/upload/fc2167dd2d1af690/9aebebc50bf70c98.jpg', 1647666258, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1818, 'CITIZEN Automatic NY0070-83L Super-Titanium Promaster Men\'s Watch', '', 'CITIZEN Automatic NY0070-83L Super-Titanium Promaster Men\'s Watch', '', '', '', 18130.00, '/upload/e813ae794355580b/84a31eccd7e891b2.jpg', 1647666277, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1819, 'd_coutdoor ชั้นวางของ ชั้นวางอเนกประสงค์ ชั้นวางสินค้าแบบมีล้อเลื่อน2ชั้น 3ชั้น 4ชั้น 5ชั้น', '', 'd_coutdoor ชั้นวางของ ชั้นวางอเนกประสงค์ ชั้นวางสินค้าแบบมีล้อเลื่อน2ชั้น 3ชั้น 4ชั้น 5ชั้น', '', '', '', 1470.00, '/upload/1e6df3a22206ef0d/6950ca6385421604.png', 1647666280, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1820, 'CITIZEN Eco-Drive EW2560-86Y Super-Titanium Lady Watch', '', 'CITIZEN Eco-Drive EW2560-86Y Super-Titanium Lady Watch', '', '', '', 14195.00, '/upload/6aa414f018cb9345/2d3f99eb4898e9b7.jpg', 1647666294, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1821, 'Tissot PR 100 Sport Chic ทิสโซต์ พีอาร์ 100 สปอร์ต ชิค สีดำ สองกษัตริย์ T1019102206100 นาฬิกาผู้หญิง', '', 'Tissot PR 100 Sport Chic ทิสโซต์ พีอาร์ 100 สปอร์ต ชิค สีดำ สองกษัตริย์ T1019102206100 นาฬิกาผู้หญิง', '', '', '', 14600.00, '/upload/fe8c9df1a5009947/914d257afa00c860.jpg', 1647666318, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1822, 'ชั้นวางของในครัว ชั้นวางของเหล็ก 3/4/5ชั้น ตะกร้าอาหาร ลิ้นชัห้องครัว ชั้นวางของอเนกประสงค์ มีล้อสามารถเคลื่อนย้ายได้', '', 'ชั้นวางของในครัว ชั้นวางของเหล็ก 3/4/5ชั้น ตะกร้าอาหาร ลิ้นชัห้องครัว ชั้นวางของอเนกประสงค์ มีล้อสามารถเคลื่อนย้ายได้', '', '', '', 2890.00, '/upload/ee0e22f0be25795d/69eac51bc21eb1df.png', 1647666348, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1823, 'จักรยานเด็ก 12-16 นิ้ว แถมฟรี หมวกจักรยานเด็ก Kid Bike (รุ่น SD) เก็บเงินปลายทางได้', '', 'จักรยานเด็ก 12-16 นิ้ว แถมฟรี หมวกจักรยานเด็ก Kid Bike (รุ่น SD) เก็บเงินปลายทางได้', '', '', '', 1069.00, '/upload/51b2c12200875e7c/2c4a183285399cd1.png', 1647666417, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1824, 'จักรยานเด็ก12นิ้วและ16นิ้ว (S6) เหล็ก ยางเติมลม มีตะกร้า เหมาะกับเด็ก12นิ้ว1-3 16นิ้ว3-6 ขวบ', '', 'จักรยานเด็ก12นิ้วและ16นิ้ว (S6) เหล็ก ยางเติมลม มีตะกร้า เหมาะกับเด็ก12นิ้ว1-3 16นิ้ว3-6 ขวบ', '', '', '', 1520.00, '/upload/3f5ec6bd8edb977f/01030ce58e5acf58.png', 1647666478, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1825, 'จักรยานเสือภูเขา 16 นิ้ว พับได้ 16นิ้ว ( Folding Mountain Bike) มีกระติกน้ำ', '', 'จักรยานเสือภูเขา 16 นิ้ว พับได้ 16นิ้ว ( Folding Mountain Bike) มีกระติกน้ำ', '', '', '', 1449.00, '/upload/151c899c742d9337/93ed181970f473ea.png', 1647666524, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1826, 'จักรยานเด็ก18นิ้ว(V8)เหล็ก แถมตะกร้าและขาตั้ง เหมาะกับเด็ก 6-10 ปี', '', 'จักรยานเด็ก18นิ้ว(V8)เหล็ก แถมตะกร้าและขาตั้ง เหมาะกับเด็ก 6-10 ปี', '', '', '', 1379.00, '/upload/23eb6634a274b286/3fc0da07215f0017.png', 1647666586, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1827, 'จักรยานเด็ก 18 นิ้ว (ZS-02 ) เหล็ก ยางเติมลม มีตะกร้า เบาะซ้อนท้าย แถมกระดิ่ง', '', 'จักรยานเด็ก 18 นิ้ว (ZS-02 ) เหล็ก ยางเติมลม มีตะกร้า เบาะซ้อนท้าย แถมกระดิ่ง', '', '', '', 1299.00, '/upload/382aff6ed00e43fe/0dc418f11608080b.png', 1647666625, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1828, 'จักรยานเด็ก 20นิ้ว G5 เหล็ก มีกะดิ่ง แถมตะกร้า มีเบาะหลัง เหมาะกับเด็ก 6-12 ปี \'', '', 'จักรยานเด็ก 20นิ้ว G5 เหล็ก มีกะดิ่ง แถมตะกร้า มีเบาะหลัง เหมาะกับเด็ก 6-12 ปี \'', '', '', '', 1599.00, '/upload/f2d61c6e957edb42/71bfc67eadb4cc82.png', 1647666667, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1829, 'จักรยานแม่บ้าน 20-24 นิ้ว รุ่น PT MINI', '', 'จักรยานแม่บ้าน 20-24 นิ้ว รุ่น PT MINI', '', '', '', 1750.00, '/upload/42734ac885cf081c/ec5c47f228395f52.png', 1647666751, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1830, 'จักรยานแม่บ้านรุ่น PT SPEED 20-24 นิ้ว', '', 'จักรยานแม่บ้านรุ่น PT SPEED 20-24 นิ้ว', '', '', '', 1450.00, '/upload/d7dc82d2e8da185e/844c4b244af21dc2.png', 1647666790, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1831, 'Redragon Fizz K617 RGB คีย์บอร์ดเกมมิ่ง ขนาดเล็ก ชาร์จ 61 สาย USB สวิตช์สีแดง ปุ่มกดแบบมีสาย ถอดออกได้', '', 'Redragon Fizz K617 RGB คีย์บอร์ดเกมมิ่ง ขนาดเล็ก ชาร์จ 61 สาย USB สวิตช์สีแดง ปุ่มกดแบบมีสาย ถอดออกได้', '', '', '', 1509.00, '/upload/2dfbd3511d5f3da6/661b2c3b39f1b6be.png', 1647666891, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1832, 'ของแท้‼️Coins คืน 10% NUBWO X30 TERMINATOR WHITE MECHANICAL GAMING KEYBOARD สเปคตรัม?แมคคานิคคอลคีย์บอร์ด', '', 'ของแท้‼️Coins คืน 10% NUBWO X30 TERMINATOR WHITE MECHANICAL GAMING KEYBOARD สเปคตรัม?แมคคานิคคอลคีย์บอร์ด', '', '', '', 1390.00, '/upload/04736606c767680d/5527f9dbf0010ba8.png', 1647666937, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1833, 'HP GK400Y Gaming Keyboard คีย์บอร์ดเกมมิ่ง Mechanical Key การออกแบบปุ่ม Retro ทนทานกดได้ถึง 50 ล้านครั้ง✔ รับประกัน 2 ปี', '', 'HP GK400Y Gaming Keyboard คีย์บอร์ดเกมมิ่ง Mechanical Key การออกแบบปุ่ม Retro ทนทานกดได้ถึง 50 ล้านครั้ง✔ รับประกัน 2 ปี', '', '', '', 1230.00, '/upload/77134b537507e24e/e934242b3b204093.png', 1647666990, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1834, 'Aula F2088PK คีย์บอร์ดเล่นเกมสไตล์พังก์ป้องกันผี', '', 'Aula F2088PK คีย์บอร์ดเล่นเกมสไตล์พังก์ป้องกันผี', '', '', '', 1019.00, '/upload/a744288003469997/a19e83a4f10c3dd0.png', 1647667107, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1835, 'Aula Sc300 2 . 4 G เมาส์ไร้สายประหยัดพลังงาน 4 Cool Lights Effect สําหรับแล็ปท็อป', '', 'Aula Sc300 2 . 4 G เมาส์ไร้สายประหยัดพลังงาน 4 Cool Lights Effect สําหรับแล็ปท็อป', '', '', '', 1499.00, '/upload/fc079d6b65cead85/4498d1a0290c5292.png', 1647667159, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1836, 'Tissot T-My Lady Quartz ทิสโซต์ ที มาย เลดี้ สีขาว แถมสายหนังสีขาว T1320101111100 นาฬิกาผู้หญิง', '', 'Tissot T-My Lady Quartz ทิสโซต์ ที มาย เลดี้ สีขาว แถมสายหนังสีขาว T1320101111100 นาฬิกาผู้หญิง', '', '', '', 16100.00, '/upload/b4aa47706352966d/807373f5780875b6.jpg', 1647667207, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1837, 'ZELOTES เมาส์สำหรับเล่นเกมแนวตั้งตั้งโปรแกรมได้11ปุ่มUSB แบบมีสาย RGB Optical Remote Ergonomicเม้าส์เม้าส์สำหรับPUBG LOL', '', 'ZELOTES เมาส์สำหรับเล่นเกมแนวตั้งตั้งโปรแกรมได้11ปุ่มUSB แบบมีสาย RGB Optical Remote Ergonomicเม้าส์เม้าส์สำหรับPUBG LOL', '', '', '', 1099.00, '/upload/ddc2ca702fef8816/b91f7b1b763aab1c.png', 1647667221, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1838, 'Tissot ทิสโซต์ เลอ โลค สีขาว ดำ T0064071603300 นาฬิกาผู้ชาย', '', 'Tissot ทิสโซต์ เลอ โลค สีขาว ดำ T0064071603300 นาฬิกาผู้ชาย', '', '', '', 19700.00, '/upload/f01d71e444552d85/2fb5626f6a2fde54.jpg', 1647667242, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1839, 'ASUS VivoBook Flip 14 (TP412FA-EC491T) Notebook 14\" FHD i3-10110U RAM4GB SSD256GB W10Home', '', 'ASUS VivoBook Flip 14 (TP412FA-EC491T) Notebook 14\" FHD i3-10110U RAM4GB SSD256GB W10Home', '', '', '', 17990.00, '/upload/e9d25dfac55f922e/4553cf871aafb4a2.jpg', 1647667268, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1840, 'HUAWEI MateBook D 15 i3 Freegift LaptopBag Core™ i3-10110U Processor แล็ปท็อป', '', 'HUAWEI MateBook D 15 i3 Freegift LaptopBag Core™ i3-10110U Processor แล็ปท็อป', '', '', '', 15990.00, '/upload/5c200f9abbb3ae34/5b681803e33cec7a.jpg', 1647667285, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1841, 'Xiaomi Curved Monitor Gaming 34 นิ้ว ขนาด 21:9 รุ่น BHR5133GL', '', 'Xiaomi Curved Monitor Gaming 34 นิ้ว ขนาด 21:9 รุ่น BHR5133GL', '', '', '', 13990.00, '/upload/de3404d0492c85ad/61e07d7ae6093f77.jpg', 1647667303, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1842, 'HUAWEI MateView GT | หน้าจอโค้งขนาด 34\" จอแสดงผลคมชัดระดับ 3K 165Hz ลำโพงแบบ Soundbar', '', 'HUAWEI MateView GT | หน้าจอโค้งขนาด 34\" จอแสดงผลคมชัดระดับ 3K 165Hz ลำโพงแบบ Soundbar', '', '', '', 17990.00, '/upload/d69359f0b1dcccab/541baa9e4998c9de.jpg', 1647667324, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1843, 'ASUS Vivobook D413 (D413DA-EB003T) Notebook ( โน๊ตบุ๊ค ) 14\" FHD R3-3250U RAM4GB SSD512GB W10 รับประกัน 2 ปี', '', 'ASUS Vivobook D413 (D413DA-EB003T) Notebook ( โน๊ตบุ๊ค ) 14\" FHD R3-3250U RAM4GB SSD512GB W10 รับประกัน 2 ปี', '', '', '', 14990.00, '/upload/fd1467cf7b9df2c7/16aa55e81f2561e9.jpg', 1647667344, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1844, 'Razer Iskur Premium Gaming Chair with Integrated Lumbar Support (เก้าอี้เกมมิ่ง) แถมฟรี! SSD Kigston มูลค่า 2,650.-', '', 'Razer Iskur Premium Gaming Chair with Integrated Lumbar Support (เก้าอี้เกมมิ่ง) แถมฟรี! SSD Kigston มูลค่า 2,650.-', '', '', '', 14900.00, '/upload/c874cf0294956ab0/3c4549e793c89622.jpg', 1647667362, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1845, 'Amazfit Airrun Smart Treadmill ลู่วิ่งไฟฟ้า ลู่วิ่งออกกำลังกาย พับเก็บได้ ลำโพงJBL l รับประกัน1ปี', '', 'Amazfit Airrun Smart Treadmill ลู่วิ่งไฟฟ้า ลู่วิ่งออกกำลังกาย พับเก็บได้ ลำโพงJBL l รับประกัน1ปี', '', '', '', 16990.00, '/upload/f78c843fb5fc0b51/57840803eb0d2466.jpg', 1647667381, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1846, 'Ninebot F20A สกู๊ตเตอร์ไฟฟ้า 2022 รุ่นใหม่ล่าสุด เครื่องศูนย์จาก Segway - Ninebot', '', 'Ninebot F20A สกู๊ตเตอร์ไฟฟ้า 2022 รุ่นใหม่ล่าสุด เครื่องศูนย์จาก Segway - Ninebot', '', '', '', 20900.00, '/upload/78db0f5eea9f413b/558398d1a48bb8fb.jpg', 1647667399, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1847, 'OVICX ลู่วิ่งไฟฟ้า รุ่นQ2S Treadmill มอเตอร์3.0แรงม้า พับเก็บได้ ลู่วิ่งไม่ต้องประกอบ', '', 'OVICX ลู่วิ่งไฟฟ้า รุ่นQ2S Treadmill มอเตอร์3.0แรงม้า พับเก็บได้ ลู่วิ่งไม่ต้องประกอบ', '', '', '', 16900.00, '/upload/3107c581aa50b4d9/44ab56a733281288.jpg', 1647667421, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1848, 'Horizon เครื่องเดินวงรี Syros Pro', '', 'Horizon เครื่องเดินวงรี Syros Pro', '', '', '', 18905.00, '/upload/d1e226b841ab21a3/85ef85793ab1bd08.jpg', 1647667441, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1849, 'Ninebot E25A สกูตเตอร์ไฟฟ้า รุ่นใหม่ อัพจาก ES2-เครื่องศูนย์', '', 'Ninebot E25A สกูตเตอร์ไฟฟ้า รุ่นใหม่ อัพจาก ES2-เครื่องศูนย์', '', '', '', 27900.00, '/upload/aab4d8cfec0dee3d/fa1ce54f1d8dc52f.jpg', 1647667462, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1850, 'ลู่วิ่งไฟฟ้า มอเตอร์ พื้นที่วิ่งกว้าง 58 ซม. ความเร็ว 20 ระดับ รับน้ำหนักได้ 150 กก.', '', 'ลู่วิ่งไฟฟ้า มอเตอร์ พื้นที่วิ่งกว้าง 58 ซม. ความเร็ว 20 ระดับ รับน้ำหนักได้ 150 กก.', '', '', '', 21900.00, '/upload/bdb5c540a3052833/b5504c8a78e322f6.jpg', 1647667479, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1851, 'Sony ZV-1 Digital Camera 20.1MP ZEISS Lens 4K Recording with Internal Microphone', '', 'Sony ZV-1 Digital Camera 20.1MP ZEISS Lens 4K Recording with Internal Microphone', '', '', '', 21990.00, '/upload/97597ef256a2f69f/a3006199ae59bb41.jpg', 1647667554, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1852, 'Ricoh GR III ประกันศูนย์ไทย Ricoh GRIII GR3 GR 3 snapshot snapshotshop', '', 'Ricoh GR III ประกันศูนย์ไทย Ricoh GRIII GR3 GR 3 snapshot snapshotshop', '', '', '', 29900.00, '/upload/1f2d4a982b7c2f77/1531e3804bfa9048.jpg', 1647667573, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1853, 'Sony ZV-1 กล้องคอมแพค - ประกันศูนย์', '', 'Sony ZV-1 กล้องคอมแพค - ประกันศูนย์', '', '', '', 20990.00, '/upload/3bb95d9ce5b437cc/c6ebd2e6e235021a.jpg', 1647667589, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1854, 'Canon Powershot G7x III กล้อง Compact - ประกันศูนย์', '', 'Canon Powershot G7x III กล้อง Compact - ประกันศูนย์', '', '', '', 23900.00, '/upload/a8816fb3366aab1a/639fc71c786a369e.jpg', 1647667607, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1855, 'Fujifilm X-T200 Mirrorless กล้องมิลเลอร์เลส - ประกันศูนย์', '', 'Fujifilm X-T200 Mirrorless กล้องมิลเลอร์เลส - ประกันศูนย์', '', '', '', 24990.00, '/upload/ae880990933bd804/15651e7606baba85.jpg', 1647667625, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1856, 'DJI MAVIC AIR 2 ดีเจไอ โดรนไซส์พกพา กล้องชัด 4K/60fps คมชัดสีสวยสมจริง กิมบอลกันสั่นแบบ 3 แกน บินนาน', '', 'DJI MAVIC AIR 2 ดีเจไอ โดรนไซส์พกพา กล้องชัด 4K/60fps คมชัดสีสวยสมจริง กิมบอลกันสั่นแบบ 3 แกน บินนาน', '', '', '', 26990.00, '/upload/b6652c21bac11e82/92a186ef74070824.jpg', 1647667643, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1857, 'DJI FPV COMBO ดีเจไอ โดรน FPV เครื่องแรกของโลก เซ็นเซอร์กล้อง 1/2.3 วิดีโอระดับ 4K', '', 'DJI FPV COMBO ดีเจไอ โดรน FPV เครื่องแรกของโลก เซ็นเซอร์กล้อง 1/2.3 วิดีโอระดับ 4K', '', '', '', 35990.00, '/upload/1d64588fb434e699/624543cc7570bf58.jpg', 1647667663, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1858, 'SAMSUNG 55\" SMART Curve TV Crystal UHD 4K (จอโค้ง) รุ่น UA55TU8300KXXT', '', 'SAMSUNG 55\" SMART Curve TV Crystal UHD 4K (จอโค้ง) รุ่น UA55TU8300KXXT', '', '', '', 17990.00, '/upload/74ebddaf28e2d350/b3fe82db4866486e.jpg', 1647667704, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1859, 'SAMSUNG 55\" สมาร์ททีวี 4K UHD รุ่น UA55AU7000KXXT', '', 'SAMSUNG 55\" สมาร์ททีวี 4K UHD รุ่น UA55AU7000KXXT', '', '', '', 17990.00, '/upload/ec2f0cf90f997f64/8aa403d0e0791be5.jpg', 1647667722, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1860, 'SAMSUNG QLED TV 4K 120Hz SMART TV 55 นิ้ว 55q70a รุ่น QA55Q70AAKXXT', '', 'SAMSUNG QLED TV 4K 120Hz SMART TV 55 นิ้ว 55q70a รุ่น QA55Q70AAKXXT', '', '', '', 20990.00, '/upload/dbaeade3c1f01744/3d95bd0422754177.jpg', 1647667745, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1861, 'Sony 3.1 ch โฮมเธียเตอร์ & SOUNDBAR | HT-G700 Dolby Atmos®/ DTS:X™', '', 'Sony 3.1 ch โฮมเธียเตอร์ & SOUNDBAR | HT-G700 Dolby Atmos®/ DTS:X™', '', '', '', 16990.00, '/upload/6c36af21f075863c/a75cea0bc62e1243.jpg', 1647667765, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1862, 'Sony KD-55X80J (55 นิ้ว) l 4K Ultra HD l High Dynamic Range (HDR) l สมาร์ททีวี (Google TV)', '', 'Sony KD-55X80J (55 นิ้ว) l 4K Ultra HD l High Dynamic Range (HDR) l สมาร์ททีวี (Google TV)', '', '', '', 23550.00, '/upload/bd879c030b9afd67/02b48ef98315a920.jpg', 1647667785, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1863, 'เครื่อง PS5 PLAYSTATION 5 CONSOLE (เกม PlayStation®5 ™ | Play Has No Limits )', '', 'เครื่อง PS5 PLAYSTATION 5 CONSOLE (เกม PlayStation®5 ™ | Play Has No Limits )', '', '', '', 32490.00, '/upload/88b466bf83b4a436/7f659db67c41e1ba.jpg', 1647667822, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1864, 'Apple iPhone 13 Pro Max ไอโฟน by Studio 7 256GB', '', 'Apple iPhone 13 Pro Max ไอโฟน by Studio 7 256GB', '', '', '', 45400.00, '/upload/9019ecc49577faf4/7808b8f6d0ff8c7f.jpg', 1647667843, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1865, 'Apple iPhone 13 Pro ไอโฟน by Studio 7   256GB', '', 'Apple iPhone 13 Pro ไอโฟน by Studio 7   256GB', '', '', '', 42300.00, '/upload/74ff09ad36172e5d/b16137c4c2eb5960.jpg', 1647667862, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1866, 'Apple iPhone 13 ไอโฟน by Studio 7  256GB', '', 'Apple iPhone 13 ไอโฟน by Studio 7  256GB', '', '', '', 32900.00, '/upload/d4d5c52798b56cb6/73f963824bbbe184.jpg', 1647667927, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1867, 'Apple iPhone12 หน้าจอ 6.1 นิ้ว  128GB', '', 'Apple iPhone12 หน้าจอ 6.1 นิ้ว  128GB', '', '', '', 27900.00, '/upload/d4d5c52798b56cb6/73f963824bbbe184.jpg', 1647667959, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1868, 'Apple iPhone12 Pro หน้าจอ 6.1 นิ้ว 256GB', '', 'Apple iPhone12 Pro หน้าจอ 6.1 นิ้ว 256GB', '', '', '', 36500.00, '/upload/baeba96b7a1cf3eb/50579efeaf4fc00f.jpg', 1647667980, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1869, 'Apple iPhone 12 Pro Max 2020 iStudio by UFicon 256GB', '', 'Apple iPhone 12 Pro Max 2020 iStudio by UFicon 256GB', '', '', '', 42900.00, '/upload/5b912ff763a02e50/0c2ca47a4abc3fd5.jpg', 1647667997, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1870, 'Apple iPhone 11 iStudio by UFicon New Model 128GB', '', 'Apple iPhone 11 iStudio by UFicon New Model 128GB', '', '', '', 21000.00, '/upload/581735a9135b7ccc/ac2d47a13e6349c0.jpg', 1647668021, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1871, 'Apple iPhone 12 mini 2020 ; iStudio by UFicon  256GB', '', 'Apple iPhone 12 mini 2020 ; iStudio by UFicon  256GB', '', '', '', 27900.00, '/upload/9c7d51064352ccb0/cfb61135e2a7292d.jpg', 1647668043, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1872, 'Apple iPhone 11 Pro Max iStudio by UFicon ครบเซ็ต  64GB', '', 'Apple iPhone 11 Pro Max iStudio by UFicon ครบเซ็ต  64GB', '', '', '', 34500.00, '/upload/14cb56cfc22e4e5a/a1eef17c11284f99.jpg', 1647668061, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1873, '[Online Exclusive] OPPO Reno6 Pro 5G (12+256) โทรศัพท์มือถือ กล้องหลัง AI 50MP Sony IMX766 รับประกัน 12 เดือน พร้อมของแถม(คละสี)', '', '[Online Exclusive] OPPO Reno6 Pro 5G (12+256) โทรศัพท์มือถือ กล้องหลัง AI 50MP Sony IMX766 รับประกัน 12 เดือน พร้อมของแถม(คละสี)', '', '', '', 22990.00, '/upload/ef97af114443cd37/611660cf7df29aed.jpg', 1647668080, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1874, 'Apple iPad Air รุ่น WiFi-Cellular [2020] iStudio by copperwired', '', 'Apple iPad Air รุ่น WiFi-Cellular [2020] iStudio by copperwired', '', '', '', 24400.00, '/upload/afee756003d8f5a5/6356fc0f5dc9ef01.jpg', 1647668100, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1875, 'Samsung Galaxy Note 20 Ultra 5G | 4G ประกันศูนย์ไทยทั่วประเทศ Note20 Ultra เครื่องใหม่ เครื่องศูนย์ไทย', '', 'Samsung Galaxy Note 20 Ultra 5G | 4G ประกันศูนย์ไทยทั่วประเทศ Note20 Ultra เครื่องใหม่ เครื่องศูนย์ไทย', '', '', '', 25950.00, '/upload/30983ba2e03c8e9a/2135058dafb86c86.jpg', 1647668118, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1876, 'Samsung Galaxy S21 Ultra 5G (12/128,256GB-16/512GB)', '', 'Samsung Galaxy S21 Ultra 5G (12/128,256GB-16/512GB)', '', '', '', 25550.00, '/upload/ccb27b511420c1da/14b91d3075a8265b.jpg', 1647668137, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1877, 'OnePlus 9 Pro Snapdragon 888  CN Flash EU 8/256GB 12/256GB Ram12', '', 'OnePlus 9 Pro Snapdragon 888  CN Flash EU 8/256GB 12/256GB Ram12', '', '', '', 21350.00, '/upload/d25cda1fdd07d199/de816edb09292e13.jpg', 1647668155, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1878, 'Samsung Galaxy Z Flip 3 5G เครื่องศูนย์ไทย เครื่องใหม่ ประกันศูนย์ samsung 1ปี Samsung Flip3 256GB', '', 'Samsung Galaxy Z Flip 3 5G เครื่องศูนย์ไทย เครื่องใหม่ ประกันศูนย์ samsung 1ปี Samsung Flip3 256GB', '', '', '', 25990.00, '/upload/942e6569bfcf7ddb/96903af54b709b1e.jpg', 1647668173, 0, 1);
INSERT INTO `xy_goods_list` VALUES (1879, 'ASUS ROG PHONE 5s (BK/WH) Mobile Phone ( โทรศัพท์มือถือ ) Android 11.0 Snapdragon 888+ 256G/12G/6.78\"', '', 'ASUS ROG PHONE 5s (BK/WH) Mobile Phone ( โทรศัพท์มือถือ ) Android 11.0 Snapdragon 888+ 256G/12G/6.78\"', '', '', '', 25990.00, '/upload/899bd7662b3193e3/0d5885efca57fe9a.jpg', 1647668197, 0, 1);

-- ----------------------------
-- Table structure for xy_grouping
-- ----------------------------
DROP TABLE IF EXISTS `xy_grouping`;
CREATE TABLE `xy_grouping`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL,
  `title` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 62 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of xy_grouping
-- ----------------------------
INSERT INTO `xy_grouping` VALUES (2, 0, 'ให้กำไร10บิล', '[{\"pipei_dan_num\":1,\"pipei_dan_run\":\"1\",\"pipei_min\":\"40\",\"pipei_max\":\"50\"},{\"pipei_dan_num\":2,\"pipei_dan_run\":\"1\",\"pipei_min\":\"20\",\"pipei_max\":\"30\"},{\"pipei_dan_num\":3,\"pipei_dan_run\":\"1\",\"pipei_min\":\"50\",\"pipei_max\":\"60\"},{\"pipei_dan_num\":4,\"pipei_dan_run\":\"1\",\"pipei_min\":\"50\",\"pipei_max\":\"60\"},{\"pipei_dan_num\":5,\"pipei_dan_run\":\"2\",\"pipei_min\":\"30\",\"pipei_max\":\"50\"},{\"pipei_dan_num\":6,\"pipei_dan_run\":\"2\",\"pipei_min\":\"25\",\"pipei_max\":\"60\"},{\"pipei_dan_num\":7,\"pipei_dan_run\":\"2\",\"pipei_min\":\"50\",\"pipei_max\":\"60\"},{\"pipei_dan_num\":8,\"pipei_dan_run\":\"2\",\"pipei_min\":\"70\",\"pipei_max\":\"80\"},{\"pipei_dan_num\":9,\"pipei_dan_run\":\"2\",\"pipei_min\":\"40\",\"pipei_max\":\"45\"},{\"pipei_dan_num\":10,\"pipei_dan_run\":\"2\",\"pipei_min\":\"50\",\"pipei_max\":\"70\"},{\"pipei_dan_num\":11,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":12,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":13,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":14,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":15,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":16,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":17,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":18,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":19,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":20,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":21,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"}]', 0);
INSERT INTO `xy_grouping` VALUES (3, 0, 'ฆ่า เป็นเปอเซ็น(มีเว้นช่วง)', '[{\"pipei_dan_num\":1,\"pipei_dan_run\":\"5\",\"pipei_min\":\"80\",\"pipei_max\":\"85\"},{\"pipei_dan_num\":2,\"pipei_dan_run\":\"5\",\"pipei_min\":\"50\",\"pipei_max\":\"60\"},{\"pipei_dan_num\":3,\"pipei_dan_run\":\"5\",\"pipei_min\":\"150\",\"pipei_max\":\"200\"},{\"pipei_dan_num\":4,\"pipei_dan_run\":\"5\",\"pipei_min\":\"70\",\"pipei_max\":\"80\"},{\"pipei_dan_num\":5,\"pipei_dan_run\":\"5\",\"pipei_min\":\"170\",\"pipei_max\":\"180\"},{\"pipei_dan_num\":6,\"pipei_dan_run\":\"5\",\"pipei_min\":\"50\",\"pipei_max\":\"80\"},{\"pipei_dan_num\":7,\"pipei_dan_run\":\"5\",\"pipei_min\":\"150\",\"pipei_max\":\"160\"},{\"pipei_dan_num\":8,\"pipei_dan_run\":\"5\",\"pipei_min\":\"90\",\"pipei_max\":\"100\"},{\"pipei_dan_num\":9,\"pipei_dan_run\":\"5\",\"pipei_min\":\"150\",\"pipei_max\":\"210\"},{\"pipei_dan_num\":10,\"pipei_dan_run\":\"5\",\"pipei_min\":\"200\",\"pipei_max\":\"210\"},{\"pipei_dan_num\":11,\"pipei_dan_run\":\"5\",\"pipei_min\":\"80\",\"pipei_max\":\"90\"},{\"pipei_dan_num\":12,\"pipei_dan_run\":\"5\",\"pipei_min\":\"70\",\"pipei_max\":\"90\"},{\"pipei_dan_num\":13,\"pipei_dan_run\":\"5\",\"pipei_min\":\"50\",\"pipei_max\":\"60\"},{\"pipei_dan_num\":14,\"pipei_dan_run\":\"5\",\"pipei_min\":\"70\",\"pipei_max\":\"80\"},{\"pipei_dan_num\":15,\"pipei_dan_run\":\"5\",\"pipei_min\":\"80\",\"pipei_max\":\"90\"},{\"pipei_dan_num\":16,\"pipei_dan_run\":\"5\",\"pipei_min\":\"80\",\"pipei_max\":\"90\"},{\"pipei_dan_num\":17,\"pipei_dan_run\":\"5\",\"pipei_min\":\"20\",\"pipei_max\":\"30\"},{\"pipei_dan_num\":18,\"pipei_dan_run\":\"5\",\"pipei_min\":\"30\",\"pipei_max\":\"40\"},{\"pipei_dan_num\":19,\"pipei_dan_run\":\"5\",\"pipei_min\":\"150\",\"pipei_max\":\"170\"},{\"pipei_dan_num\":20,\"pipei_dan_run\":\"5\",\"pipei_min\":\"120\",\"pipei_max\":\"130\"},{\"pipei_dan_num\":21,\"pipei_dan_run\":\"5\",\"pipei_min\":\"170\",\"pipei_max\":\"180\"}]', 0);
INSERT INTO `xy_grouping` VALUES (4, 0, 'ฆ่าเป็นเปอเซ็นทุกออเดอร์', '[{\"pipei_dan_num\":1,\"pipei_dan_run\":\"2\",\"pipei_min\":\"200\",\"pipei_max\":\"200\"},{\"pipei_dan_num\":2,\"pipei_dan_run\":\"1\",\"pipei_min\":\"120\",\"pipei_max\":\"130\"},{\"pipei_dan_num\":3,\"pipei_dan_run\":\"1\",\"pipei_min\":\"130\",\"pipei_max\":\"140\"},{\"pipei_dan_num\":4,\"pipei_dan_run\":\"1\",\"pipei_min\":\"150\",\"pipei_max\":\"160\"},{\"pipei_dan_num\":5,\"pipei_dan_run\":\"1\",\"pipei_min\":\"160\",\"pipei_max\":\"170\"},{\"pipei_dan_num\":6,\"pipei_dan_run\":\"1\",\"pipei_min\":\"160\",\"pipei_max\":\"170\"},{\"pipei_dan_num\":7,\"pipei_dan_run\":\"1\",\"pipei_min\":\"160\",\"pipei_max\":\"170\"},{\"pipei_dan_num\":8,\"pipei_dan_run\":\"1\",\"pipei_min\":\"150\",\"pipei_max\":\"160\"},{\"pipei_dan_num\":9,\"pipei_dan_run\":\"1\",\"pipei_min\":\"150\",\"pipei_max\":\"160\"},{\"pipei_dan_num\":10,\"pipei_dan_run\":\"1\",\"pipei_min\":\"150\",\"pipei_max\":\"160\"},{\"pipei_dan_num\":11,\"pipei_dan_run\":\"1\",\"pipei_min\":\"150\",\"pipei_max\":\"160\"},{\"pipei_dan_num\":12,\"pipei_dan_run\":\"1\",\"pipei_min\":\"150\",\"pipei_max\":\"160\"},{\"pipei_dan_num\":13,\"pipei_dan_run\":\"1\",\"pipei_min\":\"150\",\"pipei_max\":\"160\"},{\"pipei_dan_num\":14,\"pipei_dan_run\":\"1\",\"pipei_min\":\"150\",\"pipei_max\":\"160\"},{\"pipei_dan_num\":15,\"pipei_dan_run\":\"1\",\"pipei_min\":\"160\",\"pipei_max\":\"165\"},{\"pipei_dan_num\":16,\"pipei_dan_run\":\"1\",\"pipei_min\":\"165\",\"pipei_max\":\"170\"},{\"pipei_dan_num\":17,\"pipei_dan_run\":\"1\",\"pipei_min\":\"150\",\"pipei_max\":\"155\"},{\"pipei_dan_num\":18,\"pipei_dan_run\":\"1\",\"pipei_min\":\"150\",\"pipei_max\":\"160\"},{\"pipei_dan_num\":19,\"pipei_dan_run\":\"1\",\"pipei_min\":\"170\",\"pipei_max\":\"180\"},{\"pipei_dan_num\":20,\"pipei_dan_run\":\"1\",\"pipei_min\":\"190\",\"pipei_max\":\"200\"},{\"pipei_dan_num\":21,\"pipei_dan_run\":\"1\",\"pipei_min\":\"200\",\"pipei_max\":\"210\"}]', 0);
INSERT INTO `xy_grouping` VALUES (6, 1, 'ฆ่าแปปกำหนดยอดเอง1000', '[{\"pipei_dan_num\":1,\"pipei_dan_run\":\"10\",\"pipei_min\":\"300\",\"pipei_max\":\"500\"},{\"pipei_dan_num\":2,\"pipei_dan_run\":\"7\",\"pipei_min\":\"400\",\"pipei_max\":\"450\"},{\"pipei_dan_num\":3,\"pipei_dan_run\":\"12\",\"pipei_min\":\"500\",\"pipei_max\":\"600\"},{\"pipei_dan_num\":4,\"pipei_dan_run\":\"20\",\"pipei_min\":\"700\",\"pipei_max\":\"800\"},{\"pipei_dan_num\":5,\"pipei_dan_run\":\"30\",\"pipei_min\":\"1500\",\"pipei_max\":\"2000\"},{\"pipei_dan_num\":6,\"pipei_dan_run\":\"45\",\"pipei_min\":\"2000\",\"pipei_max\":\"3000\"},{\"pipei_dan_num\":7,\"pipei_dan_run\":\"15\",\"pipei_min\":\"700\",\"pipei_max\":\"800\"},{\"pipei_dan_num\":8,\"pipei_dan_run\":\"25\",\"pipei_min\":\"1000\",\"pipei_max\":\"1200\"},{\"pipei_dan_num\":9,\"pipei_dan_run\":\"80\",\"pipei_min\":\"3000\",\"pipei_max\":\"4000\"},{\"pipei_dan_num\":10,\"pipei_dan_run\":\"50\",\"pipei_min\":\"800\",\"pipei_max\":\"900\"},{\"pipei_dan_num\":11,\"pipei_dan_run\":\"70\",\"pipei_min\":\"1500\",\"pipei_max\":\"2000\"},{\"pipei_dan_num\":12,\"pipei_dan_run\":\"100\",\"pipei_min\":\"5000\",\"pipei_max\":\"6000\"},{\"pipei_dan_num\":13,\"pipei_dan_run\":\"150\",\"pipei_min\":\"7000\",\"pipei_max\":\"8000\"},{\"pipei_dan_num\":14,\"pipei_dan_run\":\"200\",\"pipei_min\":\"9000\",\"pipei_max\":\"10000\"},{\"pipei_dan_num\":15,\"pipei_dan_run\":\"250\",\"pipei_min\":\"10000\",\"pipei_max\":\"12000\"},{\"pipei_dan_num\":16,\"pipei_dan_run\":\"300\",\"pipei_min\":\"13500\",\"pipei_max\":\"15000\"},{\"pipei_dan_num\":17,\"pipei_dan_run\":\"350\",\"pipei_min\":\"17000\",\"pipei_max\":\"18000\"},{\"pipei_dan_num\":18,\"pipei_dan_run\":\"400\",\"pipei_min\":\"20000\",\"pipei_max\":\"21000\"},{\"pipei_dan_num\":19,\"pipei_dan_run\":\"450\",\"pipei_min\":\"25000\",\"pipei_max\":\"30000\"},{\"pipei_dan_num\":20,\"pipei_dan_run\":\"500\",\"pipei_min\":\"35000\",\"pipei_max\":\"40000\"},{\"pipei_dan_num\":21,\"pipei_dan_run\":\"600\",\"pipei_min\":\"45000\",\"pipei_max\":\"50000\"}]', 0);
INSERT INTO `xy_grouping` VALUES (7, 1, 'ทุน100 ต่อทุน500 ภายในวัน(10บิ', '[{\"pipei_dan_num\":1,\"pipei_dan_run\":\"10\",\"pipei_min\":\"300\",\"pipei_max\":\"400\"},{\"pipei_dan_num\":2,\"pipei_dan_run\":\"20\",\"pipei_min\":\"500\",\"pipei_max\":\"600\"},{\"pipei_dan_num\":3,\"pipei_dan_run\":\"120\",\"pipei_min\":\"900\",\"pipei_max\":\"1200\"},{\"pipei_dan_num\":4,\"pipei_dan_run\":\"100\",\"pipei_min\":\"1500\",\"pipei_max\":\"1500\"},{\"pipei_dan_num\":5,\"pipei_dan_run\":\"14\",\"pipei_min\":\"400\",\"pipei_max\":\"500\"},{\"pipei_dan_num\":6,\"pipei_dan_run\":\"30\",\"pipei_min\":\"1000\",\"pipei_max\":\"1200\"},{\"pipei_dan_num\":7,\"pipei_dan_run\":\"40\",\"pipei_min\":\"1500\",\"pipei_max\":\"1800\"},{\"pipei_dan_num\":8,\"pipei_dan_run\":\"20\",\"pipei_min\":\"500\",\"pipei_max\":\"600\"},{\"pipei_dan_num\":9,\"pipei_dan_run\":\"50\",\"pipei_min\":\"2000\",\"pipei_max\":\"2500\"},{\"pipei_dan_num\":10,\"pipei_dan_run\":\"60\",\"pipei_min\":\"3500\",\"pipei_max\":\"4000\"},{\"pipei_dan_num\":11,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":12,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":13,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":14,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":15,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":16,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":17,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":18,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":19,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":20,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":21,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"}]', 0);
INSERT INTO `xy_grouping` VALUES (8, 1, 'ทุน500 ต่อ ทุน1000 (ฆ่าภายในวั', '[{\"pipei_dan_num\":1,\"pipei_dan_run\":\"120\",\"pipei_min\":\"1200\",\"pipei_max\":\"1500\"},{\"pipei_dan_num\":2,\"pipei_dan_run\":\"150\",\"pipei_min\":\"800\",\"pipei_max\":\"1500\"},{\"pipei_dan_num\":3,\"pipei_dan_run\":\"100\",\"pipei_min\":\"900\",\"pipei_max\":\"1500\"},{\"pipei_dan_num\":4,\"pipei_dan_run\":\"150\",\"pipei_min\":\"1200\",\"pipei_max\":\"1500\"},{\"pipei_dan_num\":5,\"pipei_dan_run\":\"300\",\"pipei_min\":\"3000\",\"pipei_max\":\"5000\"},{\"pipei_dan_num\":6,\"pipei_dan_run\":\"120\",\"pipei_min\":\"1200\",\"pipei_max\":\"2000\"},{\"pipei_dan_num\":7,\"pipei_dan_run\":\"300\",\"pipei_min\":\"3000\",\"pipei_max\":\"4000\"},{\"pipei_dan_num\":8,\"pipei_dan_run\":\"200\",\"pipei_min\":\"2000\",\"pipei_max\":\"2500\"},{\"pipei_dan_num\":9,\"pipei_dan_run\":\"300\",\"pipei_min\":\"5000\",\"pipei_max\":\"6000\"},{\"pipei_dan_num\":10,\"pipei_dan_run\":\"350\",\"pipei_min\":\"7500\",\"pipei_max\":\"8000\"},{\"pipei_dan_num\":11,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":12,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":13,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":14,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":15,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":16,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":17,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":18,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":19,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":20,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":21,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"}]', 0);
INSERT INTO `xy_grouping` VALUES (9, 1, 'กำไร6บิล แล้วฆ่า', '[{\"pipei_dan_num\":1,\"pipei_dan_run\":\"15\",\"pipei_min\":\"200\",\"pipei_max\":\"250\"},{\"pipei_dan_num\":2,\"pipei_dan_run\":\"20\",\"pipei_min\":\"200\",\"pipei_max\":\"300\"},{\"pipei_dan_num\":3,\"pipei_dan_run\":\"30\",\"pipei_min\":\"400\",\"pipei_max\":\"500\"},{\"pipei_dan_num\":4,\"pipei_dan_run\":\"40\",\"pipei_min\":\"600\",\"pipei_max\":\"700\"},{\"pipei_dan_num\":5,\"pipei_dan_run\":\"50\",\"pipei_min\":\"800\",\"pipei_max\":\"900\"},{\"pipei_dan_num\":6,\"pipei_dan_run\":\"60\",\"pipei_min\":\"950\",\"pipei_max\":\"1000\"},{\"pipei_dan_num\":7,\"pipei_dan_run\":\"100\",\"pipei_min\":\"2000\",\"pipei_max\":\"3000\"},{\"pipei_dan_num\":8,\"pipei_dan_run\":\"150\",\"pipei_min\":\"4000\",\"pipei_max\":\"5000\"},{\"pipei_dan_num\":9,\"pipei_dan_run\":\"200\",\"pipei_min\":\"6000\",\"pipei_max\":\"7000\"},{\"pipei_dan_num\":10,\"pipei_dan_run\":\"250\",\"pipei_min\":\"8000\",\"pipei_max\":\"9000\"},{\"pipei_dan_num\":11,\"pipei_dan_run\":\"300\",\"pipei_min\":\"10000\",\"pipei_max\":\"12000\"},{\"pipei_dan_num\":12,\"pipei_dan_run\":\"320\",\"pipei_min\":\"13000\",\"pipei_max\":\"14000\"},{\"pipei_dan_num\":13,\"pipei_dan_run\":\"350\",\"pipei_min\":\"15000\",\"pipei_max\":\"16500\"},{\"pipei_dan_num\":14,\"pipei_dan_run\":\"400\",\"pipei_min\":\"17000\",\"pipei_max\":\"18000\"},{\"pipei_dan_num\":15,\"pipei_dan_run\":\"420\",\"pipei_min\":\"19000\",\"pipei_max\":\"20000\"},{\"pipei_dan_num\":16,\"pipei_dan_run\":\"450\",\"pipei_min\":\"21000\",\"pipei_max\":\"22000\"},{\"pipei_dan_num\":17,\"pipei_dan_run\":\"470\",\"pipei_min\":\"24000\",\"pipei_max\":\"25000\"},{\"pipei_dan_num\":18,\"pipei_dan_run\":\"500\",\"pipei_min\":\"30000\",\"pipei_max\":\"35000\"},{\"pipei_dan_num\":19,\"pipei_dan_run\":\"550\",\"pipei_min\":\"34000\",\"pipei_max\":\"35000\"},{\"pipei_dan_num\":20,\"pipei_dan_run\":\"600\",\"pipei_min\":\"37000\",\"pipei_max\":\"38000\"},{\"pipei_dan_num\":21,\"pipei_dan_run\":\"650\",\"pipei_min\":\"40000\",\"pipei_max\":\"41000\"}]', 0);
INSERT INTO `xy_grouping` VALUES (10, 0, 'ฆ่าตั้งค่าเป็นเปอเซ็น', '[{\"pipei_dan_num\":1,\"pipei_dan_run\":\"1\",\"pipei_min\":\"10000\",\"pipei_max\":\"20000\"},{\"pipei_dan_num\":2,\"pipei_dan_run\":\"2\",\"pipei_min\":\"50\",\"pipei_max\":\"60\"},{\"pipei_dan_num\":3,\"pipei_dan_run\":\"2\",\"pipei_min\":\"70\",\"pipei_max\":\"80\"},{\"pipei_dan_num\":4,\"pipei_dan_run\":\"2\",\"pipei_min\":\"90\",\"pipei_max\":\"100\"},{\"pipei_dan_num\":5,\"pipei_dan_run\":\"2\",\"pipei_min\":\"120\",\"pipei_max\":\"150\"},{\"pipei_dan_num\":6,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":7,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":8,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":9,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":10,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":11,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":12,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":13,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":14,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":15,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":16,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":17,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":18,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":19,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":20,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":21,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"}]', 0);
INSERT INTO `xy_grouping` VALUES (11, 0, 'ฆ่าตั้งแต่บิลแรก', '[{\"pipei_dan_num\":1,\"pipei_dan_run\":\"1\",\"pipei_min\":\"200\",\"pipei_max\":\"200\"},{\"pipei_dan_num\":2,\"pipei_dan_run\":\"2\",\"pipei_min\":\"270\",\"pipei_max\":\"290\"},{\"pipei_dan_num\":3,\"pipei_dan_run\":\"2\",\"pipei_min\":\"300\",\"pipei_max\":\"350\"},{\"pipei_dan_num\":4,\"pipei_dan_run\":\"2\",\"pipei_min\":\"400\",\"pipei_max\":\"450\"},{\"pipei_dan_num\":5,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":6,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":7,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":8,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":9,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":10,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":11,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":12,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":13,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":14,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":15,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":16,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":17,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":18,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":19,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":20,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":21,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"}]', 0);
INSERT INTO `xy_grouping` VALUES (12, 0, 'เชือดลูกค้าใหญ่ แบบนิ่มๆ', '[{\"pipei_dan_num\":1,\"pipei_dan_run\":\"7\",\"pipei_min\":\"60\",\"pipei_max\":\"70\"},{\"pipei_dan_num\":2,\"pipei_dan_run\":\"7\",\"pipei_min\":\"60\",\"pipei_max\":\"70\"},{\"pipei_dan_num\":3,\"pipei_dan_run\":\"7\",\"pipei_min\":\"60\",\"pipei_max\":\"70\"},{\"pipei_dan_num\":4,\"pipei_dan_run\":\"7\",\"pipei_min\":\"60\",\"pipei_max\":\"70\"},{\"pipei_dan_num\":5,\"pipei_dan_run\":\"7\",\"pipei_min\":\"60\",\"pipei_max\":\"70\"},{\"pipei_dan_num\":6,\"pipei_dan_run\":\"7\",\"pipei_min\":\"60\",\"pipei_max\":\"70\"},{\"pipei_dan_num\":7,\"pipei_dan_run\":\"7\",\"pipei_min\":\"160\",\"pipei_max\":\"200\"},{\"pipei_dan_num\":8,\"pipei_dan_run\":\"7\",\"pipei_min\":\"60\",\"pipei_max\":\"70\"},{\"pipei_dan_num\":9,\"pipei_dan_run\":\"7\",\"pipei_min\":\"60\",\"pipei_max\":\"70\"},{\"pipei_dan_num\":10,\"pipei_dan_run\":\"7\",\"pipei_min\":\"200\",\"pipei_max\":\"210\"},{\"pipei_dan_num\":11,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":12,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":13,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":14,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":15,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":16,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":17,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":18,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":19,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":20,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":21,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"}]', 0);
INSERT INTO `xy_grouping` VALUES (13, 0, 'ห้องเชือด2บิลปรับแต่งได้ (500)', '[{\"pipei_dan_num\":1,\"pipei_dan_run\":\"10\",\"pipei_min\":\"55\",\"pipei_max\":\"70\"},{\"pipei_dan_num\":2,\"pipei_dan_run\":\"10\",\"pipei_min\":\"55\",\"pipei_max\":\"70\"},{\"pipei_dan_num\":3,\"pipei_dan_run\":\"10\",\"pipei_min\":\"55\",\"pipei_max\":\"70\"},{\"pipei_dan_num\":4,\"pipei_dan_run\":\"10\",\"pipei_min\":\"55\",\"pipei_max\":\"70\"},{\"pipei_dan_num\":5,\"pipei_dan_run\":\"10\",\"pipei_min\":\"60\",\"pipei_max\":\"70\"},{\"pipei_dan_num\":6,\"pipei_dan_run\":\"10\",\"pipei_min\":\"60\",\"pipei_max\":\"70\"},{\"pipei_dan_num\":7,\"pipei_dan_run\":\"20\",\"pipei_min\":\"65\",\"pipei_max\":\"80\"},{\"pipei_dan_num\":8,\"pipei_dan_run\":\"20\",\"pipei_min\":\"55\",\"pipei_max\":\"70\"},{\"pipei_dan_num\":9,\"pipei_dan_run\":\"20\",\"pipei_min\":\"60\",\"pipei_max\":\"70\"},{\"pipei_dan_num\":10,\"pipei_dan_run\":\"10\",\"pipei_min\":\"65\",\"pipei_max\":\"70\"},{\"pipei_dan_num\":11,\"pipei_dan_run\":\"20\",\"pipei_min\":\"33\",\"pipei_max\":\"50\"},{\"pipei_dan_num\":12,\"pipei_dan_run\":\"20\",\"pipei_min\":\"60\",\"pipei_max\":\"70\"},{\"pipei_dan_num\":13,\"pipei_dan_run\":\"10\",\"pipei_min\":\"30\",\"pipei_max\":\"40\"},{\"pipei_dan_num\":14,\"pipei_dan_run\":\"10\",\"pipei_min\":\"50\",\"pipei_max\":\"60\"},{\"pipei_dan_num\":15,\"pipei_dan_run\":\"30\",\"pipei_min\":\"70\",\"pipei_max\":\"80\"},{\"pipei_dan_num\":16,\"pipei_dan_run\":\"50\",\"pipei_min\":\"150\",\"pipei_max\":\"200\"},{\"pipei_dan_num\":17,\"pipei_dan_run\":\"30\",\"pipei_min\":\"55\",\"pipei_max\":\"65\"},{\"pipei_dan_num\":18,\"pipei_dan_run\":\"40\",\"pipei_min\":\"55\",\"pipei_max\":\"60\"},{\"pipei_dan_num\":19,\"pipei_dan_run\":\"50\",\"pipei_min\":\"250\",\"pipei_max\":\"300\"},{\"pipei_dan_num\":20,\"pipei_dan_run\":\"50\",\"pipei_min\":\"350\",\"pipei_max\":\"500\"},{\"pipei_dan_num\":21,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"}]', 0);
INSERT INTO `xy_grouping` VALUES (14, 0, 'ห้องเชือด2บิล ปรับแต่งได้（1000', '[{\"pipei_dan_num\":1,\"pipei_dan_run\":\"7\",\"pipei_min\":\"50\",\"pipei_max\":\"60\"},{\"pipei_dan_num\":2,\"pipei_dan_run\":\"7\",\"pipei_min\":\"40\",\"pipei_max\":\"50\"},{\"pipei_dan_num\":3,\"pipei_dan_run\":\"7\",\"pipei_min\":\"50\",\"pipei_max\":\"60\"},{\"pipei_dan_num\":4,\"pipei_dan_run\":\"7\",\"pipei_min\":\"50\",\"pipei_max\":\"60\"},{\"pipei_dan_num\":5,\"pipei_dan_run\":\"7\",\"pipei_min\":\"50\",\"pipei_max\":\"66\"},{\"pipei_dan_num\":6,\"pipei_dan_run\":\"7\",\"pipei_min\":\"60\",\"pipei_max\":\"65\"},{\"pipei_dan_num\":7,\"pipei_dan_run\":\"7\",\"pipei_min\":\"190\",\"pipei_max\":\"200\"},{\"pipei_dan_num\":8,\"pipei_dan_run\":\"7\",\"pipei_min\":\"40\",\"pipei_max\":\"50\"},{\"pipei_dan_num\":9,\"pipei_dan_run\":\"7\",\"pipei_min\":\"60\",\"pipei_max\":\"65\"},{\"pipei_dan_num\":10,\"pipei_dan_run\":\"7\",\"pipei_min\":\"230\",\"pipei_max\":\"240\"},{\"pipei_dan_num\":11,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":12,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":13,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":14,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":15,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":16,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":17,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":18,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":19,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":20,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":21,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"}]', 0);
INSERT INTO `xy_grouping` VALUES (15, 0, 'จับฆ่ามันนนเว้นช่วง', '[{\"pipei_dan_num\":1,\"pipei_dan_run\":\"1\",\"pipei_min\":\"80\",\"pipei_max\":\"85\"},{\"pipei_dan_num\":2,\"pipei_dan_run\":\"1\",\"pipei_min\":\"10\",\"pipei_max\":\"30\"},{\"pipei_dan_num\":3,\"pipei_dan_run\":\"1\",\"pipei_min\":\"20\",\"pipei_max\":\"40\"},{\"pipei_dan_num\":4,\"pipei_dan_run\":\"1\",\"pipei_min\":\"30\",\"pipei_max\":\"50\"},{\"pipei_dan_num\":5,\"pipei_dan_run\":\"1\",\"pipei_min\":\"120\",\"pipei_max\":\"150\"},{\"pipei_dan_num\":6,\"pipei_dan_run\":\"1\",\"pipei_min\":\"40\",\"pipei_max\":\"60\"},{\"pipei_dan_num\":7,\"pipei_dan_run\":\"1\",\"pipei_min\":\"40\",\"pipei_max\":\"60\"},{\"pipei_dan_num\":8,\"pipei_dan_run\":\"1\",\"pipei_min\":\"100\",\"pipei_max\":\"200\"},{\"pipei_dan_num\":9,\"pipei_dan_run\":\"1\",\"pipei_min\":\"100\",\"pipei_max\":\"200\"},{\"pipei_dan_num\":10,\"pipei_dan_run\":\"1\",\"pipei_min\":\"40\",\"pipei_max\":\"60\"},{\"pipei_dan_num\":11,\"pipei_dan_run\":\"1\",\"pipei_min\":\"40\",\"pipei_max\":\"60\"},{\"pipei_dan_num\":12,\"pipei_dan_run\":\"1\",\"pipei_min\":\"100\",\"pipei_max\":\"200\"},{\"pipei_dan_num\":13,\"pipei_dan_run\":\"1\",\"pipei_min\":\"100\",\"pipei_max\":\"200\"},{\"pipei_dan_num\":14,\"pipei_dan_run\":\"1\",\"pipei_min\":\"100\",\"pipei_max\":\"200\"},{\"pipei_dan_num\":15,\"pipei_dan_run\":\"1\",\"pipei_min\":\"50\",\"pipei_max\":\"60\"},{\"pipei_dan_num\":16,\"pipei_dan_run\":\"1\",\"pipei_min\":\"100\",\"pipei_max\":\"200\"},{\"pipei_dan_num\":17,\"pipei_dan_run\":\"1\",\"pipei_min\":\"100\",\"pipei_max\":\"200\"},{\"pipei_dan_num\":18,\"pipei_dan_run\":\"1\",\"pipei_min\":\"100\",\"pipei_max\":\"200\"},{\"pipei_dan_num\":19,\"pipei_dan_run\":\"1\",\"pipei_min\":\"100\",\"pipei_max\":\"200\"},{\"pipei_dan_num\":20,\"pipei_dan_run\":\"1\",\"pipei_min\":\"100\",\"pipei_max\":\"200\"},{\"pipei_dan_num\":21,\"pipei_dan_run\":\"1\",\"pipei_min\":\"100\",\"pipei_max\":\"200\"}]', 0);
INSERT INTO `xy_grouping` VALUES (16, 0, '500 เชือด2บิลสุดท้าย', '[{\"pipei_dan_num\":1,\"pipei_dan_run\":\"10\",\"pipei_min\":\"55\",\"pipei_max\":\"60\"},{\"pipei_dan_num\":2,\"pipei_dan_run\":\"20\",\"pipei_min\":\"65\",\"pipei_max\":\"75\"},{\"pipei_dan_num\":3,\"pipei_dan_run\":\"30\",\"pipei_min\":\"75\",\"pipei_max\":\"80\"},{\"pipei_dan_num\":4,\"pipei_dan_run\":\"30\",\"pipei_min\":\"50\",\"pipei_max\":\"60\"},{\"pipei_dan_num\":5,\"pipei_dan_run\":\"20\",\"pipei_min\":\"70\",\"pipei_max\":\"75\"},{\"pipei_dan_num\":6,\"pipei_dan_run\":\"20\",\"pipei_min\":\"65\",\"pipei_max\":\"70\"},{\"pipei_dan_num\":7,\"pipei_dan_run\":\"30\",\"pipei_min\":\"70\",\"pipei_max\":\"75\"},{\"pipei_dan_num\":8,\"pipei_dan_run\":\"20\",\"pipei_min\":\"65\",\"pipei_max\":\"70\"},{\"pipei_dan_num\":9,\"pipei_dan_run\":\"50\",\"pipei_min\":\"100\",\"pipei_max\":\"120\"},{\"pipei_dan_num\":10,\"pipei_dan_run\":\"50\",\"pipei_min\":\"120\",\"pipei_max\":\"150\"},{\"pipei_dan_num\":11,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":12,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":13,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":14,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":15,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":16,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":17,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":18,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":19,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":20,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":21,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"}]', 0);
INSERT INTO `xy_grouping` VALUES (17, 0, '1000+', '[{\"pipei_dan_num\":1,\"pipei_dan_run\":\"1\",\"pipei_min\":\"30\",\"pipei_max\":\"50\"},{\"pipei_dan_num\":2,\"pipei_dan_run\":\"1\",\"pipei_min\":\"50\",\"pipei_max\":\"60\"},{\"pipei_dan_num\":3,\"pipei_dan_run\":\"1\",\"pipei_min\":\"20\",\"pipei_max\":\"30\"},{\"pipei_dan_num\":4,\"pipei_dan_run\":\"1\",\"pipei_min\":\"26\",\"pipei_max\":\"30\"},{\"pipei_dan_num\":5,\"pipei_dan_run\":\"1\",\"pipei_min\":\"30\",\"pipei_max\":\"35\"},{\"pipei_dan_num\":6,\"pipei_dan_run\":\"1\",\"pipei_min\":\"50\",\"pipei_max\":\"60\"},{\"pipei_dan_num\":7,\"pipei_dan_run\":\"1\",\"pipei_min\":\"80\",\"pipei_max\":\"90\"},{\"pipei_dan_num\":8,\"pipei_dan_run\":\"1\",\"pipei_min\":\"70\",\"pipei_max\":\"80\"},{\"pipei_dan_num\":9,\"pipei_dan_run\":\"1\",\"pipei_min\":\"50\",\"pipei_max\":\"60\"},{\"pipei_dan_num\":10,\"pipei_dan_run\":\"1\",\"pipei_min\":\"10\",\"pipei_max\":\"60\"},{\"pipei_dan_num\":11,\"pipei_dan_run\":\"1\",\"pipei_min\":\"80\",\"pipei_max\":\"80\"},{\"pipei_dan_num\":12,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":13,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":14,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":15,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":16,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":17,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":18,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":19,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":20,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":21,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"}]', 0);
INSERT INTO `xy_grouping` VALUES (18, 0, 'ห้องเชือด(ธรรมดา) 1', '[{\"pipei_dan_num\":1,\"pipei_dan_run\":\"1\",\"pipei_min\":\"50\",\"pipei_max\":\"70\"},{\"pipei_dan_num\":2,\"pipei_dan_run\":\"1\",\"pipei_min\":\"60\",\"pipei_max\":\"70\"},{\"pipei_dan_num\":3,\"pipei_dan_run\":\"1\",\"pipei_min\":\"110\",\"pipei_max\":\"120\"},{\"pipei_dan_num\":4,\"pipei_dan_run\":\"1\",\"pipei_min\":\"80\",\"pipei_max\":\"90\"},{\"pipei_dan_num\":5,\"pipei_dan_run\":\"1\",\"pipei_min\":\"2500\",\"pipei_max\":\"3000\"},{\"pipei_dan_num\":6,\"pipei_dan_run\":\"1\",\"pipei_min\":\"110\",\"pipei_max\":\"120\"},{\"pipei_dan_num\":7,\"pipei_dan_run\":\"1\",\"pipei_min\":\"80\",\"pipei_max\":\"90\"},{\"pipei_dan_num\":8,\"pipei_dan_run\":\"1\",\"pipei_min\":\"2000\",\"pipei_max\":\"2500\"},{\"pipei_dan_num\":9,\"pipei_dan_run\":\"1\",\"pipei_min\":\"120\",\"pipei_max\":\"130\"},{\"pipei_dan_num\":10,\"pipei_dan_run\":\"1\",\"pipei_min\":\"90\",\"pipei_max\":\"100\"},{\"pipei_dan_num\":11,\"pipei_dan_run\":\"1\",\"pipei_min\":\"220\",\"pipei_max\":\"250\"},{\"pipei_dan_num\":12,\"pipei_dan_run\":\"1\",\"pipei_min\":\"150\",\"pipei_max\":\"200\"},{\"pipei_dan_num\":13,\"pipei_dan_run\":\"1\",\"pipei_min\":\"80\",\"pipei_max\":\"90\"},{\"pipei_dan_num\":14,\"pipei_dan_run\":\"1\",\"pipei_min\":\"120\",\"pipei_max\":\"130\"},{\"pipei_dan_num\":15,\"pipei_dan_run\":\"1\",\"pipei_min\":\"80\",\"pipei_max\":\"90\"},{\"pipei_dan_num\":16,\"pipei_dan_run\":\"1\",\"pipei_min\":\"70\",\"pipei_max\":\"80\"},{\"pipei_dan_num\":17,\"pipei_dan_run\":\"1\",\"pipei_min\":\"150\",\"pipei_max\":\"180\"},{\"pipei_dan_num\":18,\"pipei_dan_run\":\"1\",\"pipei_min\":\"90\",\"pipei_max\":\"110\"},{\"pipei_dan_num\":19,\"pipei_dan_run\":\"1\",\"pipei_min\":\"110\",\"pipei_max\":\"120\"},{\"pipei_dan_num\":20,\"pipei_dan_run\":\"1\",\"pipei_min\":\"200\",\"pipei_max\":\"220\"},{\"pipei_dan_num\":21,\"pipei_dan_run\":\"1\",\"pipei_min\":\"220\",\"pipei_max\":\"250\"}]', 0);
INSERT INTO `xy_grouping` VALUES (19, 0, 'ธรรมดา VIP 1 2 3', '[{\"pipei_dan_num\":1,\"pipei_dan_run\":\"1\",\"pipei_min\":\"70\",\"pipei_max\":\"90\"},{\"pipei_dan_num\":2,\"pipei_dan_run\":\"1\",\"pipei_min\":\"80\",\"pipei_max\":\"90\"},{\"pipei_dan_num\":3,\"pipei_dan_run\":\"1\",\"pipei_min\":\"80\",\"pipei_max\":\"90\"},{\"pipei_dan_num\":4,\"pipei_dan_run\":\"1\",\"pipei_min\":\"100\",\"pipei_max\":\"120\"},{\"pipei_dan_num\":5,\"pipei_dan_run\":\"1\",\"pipei_min\":\"90\",\"pipei_max\":\"100\"},{\"pipei_dan_num\":6,\"pipei_dan_run\":\"1\",\"pipei_min\":\"50\",\"pipei_max\":\"70\"},{\"pipei_dan_num\":7,\"pipei_dan_run\":\"1\",\"pipei_min\":\"80\",\"pipei_max\":\"90\"},{\"pipei_dan_num\":8,\"pipei_dan_run\":\"1\",\"pipei_min\":\"50\",\"pipei_max\":\"60\"},{\"pipei_dan_num\":9,\"pipei_dan_run\":\"1\",\"pipei_min\":\"120\",\"pipei_max\":\"140\"},{\"pipei_dan_num\":10,\"pipei_dan_run\":\"1\",\"pipei_min\":\"100\",\"pipei_max\":\"130\"},{\"pipei_dan_num\":11,\"pipei_dan_run\":\"1\",\"pipei_min\":\"150\",\"pipei_max\":\"200\"},{\"pipei_dan_num\":12,\"pipei_dan_run\":\"1\",\"pipei_min\":\"100\",\"pipei_max\":\"130\"},{\"pipei_dan_num\":13,\"pipei_dan_run\":\"1\",\"pipei_min\":\"90\",\"pipei_max\":\"100\"},{\"pipei_dan_num\":14,\"pipei_dan_run\":\"1\",\"pipei_min\":\"80\",\"pipei_max\":\"90\"},{\"pipei_dan_num\":15,\"pipei_dan_run\":\"1\",\"pipei_min\":\"500\",\"pipei_max\":\"600\"},{\"pipei_dan_num\":16,\"pipei_dan_run\":\"1\",\"pipei_min\":\"90\",\"pipei_max\":\"110\"},{\"pipei_dan_num\":17,\"pipei_dan_run\":\"1\",\"pipei_min\":\"150\",\"pipei_max\":\"220\"},{\"pipei_dan_num\":18,\"pipei_dan_run\":\"1\",\"pipei_min\":\"300\",\"pipei_max\":\"350\"},{\"pipei_dan_num\":19,\"pipei_dan_run\":\"1\",\"pipei_min\":\"200\",\"pipei_max\":\"250\"},{\"pipei_dan_num\":20,\"pipei_dan_run\":\"1\",\"pipei_min\":\"250\",\"pipei_max\":\"300\"},{\"pipei_dan_num\":21,\"pipei_dan_run\":\"1\",\"pipei_min\":\"200\",\"pipei_max\":\"250\"}]', 0);
INSERT INTO `xy_grouping` VALUES (20, 0, 'ฆ่า10บิล', '[{\"pipei_dan_num\":1,\"pipei_dan_run\":\"10\",\"pipei_min\":\"70\",\"pipei_max\":\"80\"},{\"pipei_dan_num\":2,\"pipei_dan_run\":\"30\",\"pipei_min\":\"150\",\"pipei_max\":\"180\"},{\"pipei_dan_num\":3,\"pipei_dan_run\":\"30\",\"pipei_min\":\"70\",\"pipei_max\":\"80\"},{\"pipei_dan_num\":4,\"pipei_dan_run\":\"30\",\"pipei_min\":\"80\",\"pipei_max\":\"85\"},{\"pipei_dan_num\":5,\"pipei_dan_run\":\"30\",\"pipei_min\":\"300\",\"pipei_max\":\"350\"},{\"pipei_dan_num\":6,\"pipei_dan_run\":\"20\",\"pipei_min\":\"70\",\"pipei_max\":\"85\"},{\"pipei_dan_num\":7,\"pipei_dan_run\":\"10\",\"pipei_min\":\"150\",\"pipei_max\":\"160\"},{\"pipei_dan_num\":8,\"pipei_dan_run\":\"1\",\"pipei_min\":\"40\",\"pipei_max\":\"50\"},{\"pipei_dan_num\":9,\"pipei_dan_run\":\"5\",\"pipei_min\":\"50\",\"pipei_max\":\"60\"},{\"pipei_dan_num\":10,\"pipei_dan_run\":\"5\",\"pipei_min\":\"200\",\"pipei_max\":\"250\"},{\"pipei_dan_num\":11,\"pipei_dan_run\":\"5\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":12,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":13,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":14,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":15,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":16,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":17,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":18,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":19,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":20,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":21,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"}]', 0);
INSERT INTO `xy_grouping` VALUES (21, 0, 'ห้องเชือด(ธรรมดา)2', '[{\"pipei_dan_num\":1,\"pipei_dan_run\":\"1\",\"pipei_min\":\"70\",\"pipei_max\":\"80\"},{\"pipei_dan_num\":2,\"pipei_dan_run\":\"1\",\"pipei_min\":\"80\",\"pipei_max\":\"90\"},{\"pipei_dan_num\":3,\"pipei_dan_run\":\"1\",\"pipei_min\":\"80\",\"pipei_max\":\"90\"},{\"pipei_dan_num\":4,\"pipei_dan_run\":\"1\",\"pipei_min\":\"90\",\"pipei_max\":\"100\"},{\"pipei_dan_num\":5,\"pipei_dan_run\":\"1\",\"pipei_min\":\"200\",\"pipei_max\":\"220\"},{\"pipei_dan_num\":6,\"pipei_dan_run\":\"1\",\"pipei_min\":\"50\",\"pipei_max\":\"70\"},{\"pipei_dan_num\":7,\"pipei_dan_run\":\"2\",\"pipei_min\":\"120\",\"pipei_max\":\"150\"},{\"pipei_dan_num\":8,\"pipei_dan_run\":\"1\",\"pipei_min\":\"40\",\"pipei_max\":\"60\"},{\"pipei_dan_num\":9,\"pipei_dan_run\":\"2\",\"pipei_min\":\"150\",\"pipei_max\":\"200\"},{\"pipei_dan_num\":10,\"pipei_dan_run\":\"2\",\"pipei_min\":\"80\",\"pipei_max\":\"90\"},{\"pipei_dan_num\":11,\"pipei_dan_run\":\"2\",\"pipei_min\":\"100\",\"pipei_max\":\"120\"},{\"pipei_dan_num\":12,\"pipei_dan_run\":\"2\",\"pipei_min\":\"80\",\"pipei_max\":\"90\"},{\"pipei_dan_num\":13,\"pipei_dan_run\":\"2\",\"pipei_min\":\"180\",\"pipei_max\":\"220\"},{\"pipei_dan_num\":14,\"pipei_dan_run\":\"2\",\"pipei_min\":\"90\",\"pipei_max\":\"100\"},{\"pipei_dan_num\":15,\"pipei_dan_run\":\"2\",\"pipei_min\":\"190\",\"pipei_max\":\"220\"},{\"pipei_dan_num\":16,\"pipei_dan_run\":\"2\",\"pipei_min\":\"220\",\"pipei_max\":\"250\"},{\"pipei_dan_num\":17,\"pipei_dan_run\":\"2\",\"pipei_min\":\"70\",\"pipei_max\":\"80\"},{\"pipei_dan_num\":18,\"pipei_dan_run\":\"2\",\"pipei_min\":\"80\",\"pipei_max\":\"100\"},{\"pipei_dan_num\":19,\"pipei_dan_run\":\"2\",\"pipei_min\":\"150\",\"pipei_max\":\"190\"},{\"pipei_dan_num\":20,\"pipei_dan_run\":\"2\",\"pipei_min\":\"170\",\"pipei_max\":\"200\"},{\"pipei_dan_num\":21,\"pipei_dan_run\":\"2\",\"pipei_min\":\"250\",\"pipei_max\":\"280\"}]', 0);
INSERT INTO `xy_grouping` VALUES (22, 0, 'ฆ่าโหด3บิล สุดท้ายใช้ได้', '[{\"pipei_dan_num\":1,\"pipei_dan_run\":\"5\",\"pipei_min\":\"80\",\"pipei_max\":\"90\"},{\"pipei_dan_num\":2,\"pipei_dan_run\":\"5\",\"pipei_min\":\"80\",\"pipei_max\":\"90\"},{\"pipei_dan_num\":3,\"pipei_dan_run\":\"5\",\"pipei_min\":\"80\",\"pipei_max\":\"90\"},{\"pipei_dan_num\":4,\"pipei_dan_run\":\"5\",\"pipei_min\":\"70\",\"pipei_max\":\"90\"},{\"pipei_dan_num\":5,\"pipei_dan_run\":\"5\",\"pipei_min\":\"50\",\"pipei_max\":\"60\"},{\"pipei_dan_num\":6,\"pipei_dan_run\":\"5\",\"pipei_min\":\"30\",\"pipei_max\":\"60\"},{\"pipei_dan_num\":7,\"pipei_dan_run\":\"5\",\"pipei_min\":\"150\",\"pipei_max\":\"160\"},{\"pipei_dan_num\":8,\"pipei_dan_run\":\"5\",\"pipei_min\":\"40\",\"pipei_max\":\"50\"},{\"pipei_dan_num\":9,\"pipei_dan_run\":\"5\",\"pipei_min\":\"200\",\"pipei_max\":\"220\"},{\"pipei_dan_num\":10,\"pipei_dan_run\":\"5\",\"pipei_min\":\"220\",\"pipei_max\":\"250\"},{\"pipei_dan_num\":11,\"pipei_dan_run\":\"2\",\"pipei_min\":\"280\",\"pipei_max\":\"300\"},{\"pipei_dan_num\":12,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":13,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":14,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":15,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":16,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":17,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":18,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":19,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":20,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":21,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"}]', 0);
INSERT INTO `xy_grouping` VALUES (23, 0, '杀20บิล  3บิลสุดท้าย', '[{\"pipei_dan_num\":1,\"pipei_dan_run\":\"2\",\"pipei_min\":\"50\",\"pipei_max\":\"60\"},{\"pipei_dan_num\":2,\"pipei_dan_run\":\"2\",\"pipei_min\":\"40\",\"pipei_max\":\"50\"},{\"pipei_dan_num\":3,\"pipei_dan_run\":\"2\",\"pipei_min\":\"60\",\"pipei_max\":\"70\"},{\"pipei_dan_num\":4,\"pipei_dan_run\":\"5\",\"pipei_min\":\"20\",\"pipei_max\":\"30\"},{\"pipei_dan_num\":5,\"pipei_dan_run\":\"2\",\"pipei_min\":\"20\",\"pipei_max\":\"30\"},{\"pipei_dan_num\":6,\"pipei_dan_run\":\"2\",\"pipei_min\":\"80\",\"pipei_max\":\"85\"},{\"pipei_dan_num\":7,\"pipei_dan_run\":\"3\",\"pipei_min\":\"40\",\"pipei_max\":\"60\"},{\"pipei_dan_num\":8,\"pipei_dan_run\":\"3\",\"pipei_min\":\"200\",\"pipei_max\":\"210\"},{\"pipei_dan_num\":9,\"pipei_dan_run\":\"2\",\"pipei_min\":\"30\",\"pipei_max\":\"40\"},{\"pipei_dan_num\":10,\"pipei_dan_run\":\"2\",\"pipei_min\":\"50\",\"pipei_max\":\"60\"},{\"pipei_dan_num\":11,\"pipei_dan_run\":\"2\",\"pipei_min\":\"40\",\"pipei_max\":\"50\"},{\"pipei_dan_num\":12,\"pipei_dan_run\":\"2\",\"pipei_min\":\"30\",\"pipei_max\":\"50\"},{\"pipei_dan_num\":13,\"pipei_dan_run\":\"2\",\"pipei_min\":\"40\",\"pipei_max\":\"50\"},{\"pipei_dan_num\":14,\"pipei_dan_run\":\"2\",\"pipei_min\":\"70\",\"pipei_max\":\"80\"},{\"pipei_dan_num\":15,\"pipei_dan_run\":\"2\",\"pipei_min\":\"200\",\"pipei_max\":\"250\"},{\"pipei_dan_num\":16,\"pipei_dan_run\":\"2\",\"pipei_min\":\"50\",\"pipei_max\":\"60\"},{\"pipei_dan_num\":17,\"pipei_dan_run\":\"2\",\"pipei_min\":\"70\",\"pipei_max\":\"80\"},{\"pipei_dan_num\":18,\"pipei_dan_run\":\"2\",\"pipei_min\":\"50\",\"pipei_max\":\"60\"},{\"pipei_dan_num\":19,\"pipei_dan_run\":\"2\",\"pipei_min\":\"250\",\"pipei_max\":\"300\"},{\"pipei_dan_num\":20,\"pipei_dan_run\":\"2\",\"pipei_min\":\"250\",\"pipei_max\":\"300\"},{\"pipei_dan_num\":21,\"pipei_dan_run\":\"0\",\"pipei_min\":\"120\",\"pipei_max\":\"200\"}]', 0);
INSERT INTO `xy_grouping` VALUES (24, 0, '不杀20单', '[{\"pipei_dan_num\":1,\"pipei_dan_run\":\"2\",\"pipei_min\":\"10\",\"pipei_max\":\"70\"},{\"pipei_dan_num\":2,\"pipei_dan_run\":\"2\",\"pipei_min\":\"20\",\"pipei_max\":\"30\"},{\"pipei_dan_num\":3,\"pipei_dan_run\":\"2\",\"pipei_min\":\"50\",\"pipei_max\":\"60\"},{\"pipei_dan_num\":4,\"pipei_dan_run\":\"2\",\"pipei_min\":\"40\",\"pipei_max\":\"60\"},{\"pipei_dan_num\":5,\"pipei_dan_run\":\"2\",\"pipei_min\":\"70\",\"pipei_max\":\"80\"},{\"pipei_dan_num\":6,\"pipei_dan_run\":\"2\",\"pipei_min\":\"10\",\"pipei_max\":\"50\"},{\"pipei_dan_num\":7,\"pipei_dan_run\":\"2\",\"pipei_min\":\"30\",\"pipei_max\":\"40\"},{\"pipei_dan_num\":8,\"pipei_dan_run\":\"2\",\"pipei_min\":\"50\",\"pipei_max\":\"80\"},{\"pipei_dan_num\":9,\"pipei_dan_run\":\"2\",\"pipei_min\":\"60\",\"pipei_max\":\"70\"},{\"pipei_dan_num\":10,\"pipei_dan_run\":\"2\",\"pipei_min\":\"50\",\"pipei_max\":\"60\"},{\"pipei_dan_num\":11,\"pipei_dan_run\":\"2\",\"pipei_min\":\"70\",\"pipei_max\":\"80\"},{\"pipei_dan_num\":12,\"pipei_dan_run\":\"2\",\"pipei_min\":\"20\",\"pipei_max\":\"60\"},{\"pipei_dan_num\":13,\"pipei_dan_run\":\"2\",\"pipei_min\":\"70\",\"pipei_max\":\"80\"},{\"pipei_dan_num\":14,\"pipei_dan_run\":\"2\",\"pipei_min\":\"10\",\"pipei_max\":\"80\"},{\"pipei_dan_num\":15,\"pipei_dan_run\":\"2\",\"pipei_min\":\"10\",\"pipei_max\":\"80\"},{\"pipei_dan_num\":16,\"pipei_dan_run\":\"2\",\"pipei_min\":\"70\",\"pipei_max\":\"80\"},{\"pipei_dan_num\":17,\"pipei_dan_run\":\"2\",\"pipei_min\":\"50\",\"pipei_max\":\"60\"},{\"pipei_dan_num\":18,\"pipei_dan_run\":\"2\",\"pipei_min\":\"10\",\"pipei_max\":\"60\"},{\"pipei_dan_num\":19,\"pipei_dan_run\":\"2\",\"pipei_min\":\"50\",\"pipei_max\":\"80\"},{\"pipei_dan_num\":20,\"pipei_dan_run\":\"2\",\"pipei_min\":\"40\",\"pipei_max\":\"60\"},{\"pipei_dan_num\":21,\"pipei_dan_run\":\"2\",\"pipei_min\":\"70\",\"pipei_max\":\"85\"}]', 0);
INSERT INTO `xy_grouping` VALUES (25, 0, 'เชือด2บิล', '[{\"pipei_dan_num\":1,\"pipei_dan_run\":\"5\",\"pipei_min\":\"40\",\"pipei_max\":\"50\"},{\"pipei_dan_num\":2,\"pipei_dan_run\":\"5\",\"pipei_min\":\"70\",\"pipei_max\":\"80\"},{\"pipei_dan_num\":3,\"pipei_dan_run\":\"5\",\"pipei_min\":\"50\",\"pipei_max\":\"60\"},{\"pipei_dan_num\":4,\"pipei_dan_run\":\"5\",\"pipei_min\":\"50\",\"pipei_max\":\"60\"},{\"pipei_dan_num\":5,\"pipei_dan_run\":\"5\",\"pipei_min\":\"20\",\"pipei_max\":\"50\"},{\"pipei_dan_num\":6,\"pipei_dan_run\":\"5\",\"pipei_min\":\"40\",\"pipei_max\":\"50\"},{\"pipei_dan_num\":7,\"pipei_dan_run\":\"5\",\"pipei_min\":\"50\",\"pipei_max\":\"60\"},{\"pipei_dan_num\":8,\"pipei_dan_run\":\"5\",\"pipei_min\":\"140\",\"pipei_max\":\"150\"},{\"pipei_dan_num\":9,\"pipei_dan_run\":\"5\",\"pipei_min\":\"50\",\"pipei_max\":\"60\"},{\"pipei_dan_num\":10,\"pipei_dan_run\":\"5\",\"pipei_min\":\"180\",\"pipei_max\":\"200\"},{\"pipei_dan_num\":11,\"pipei_dan_run\":\"5\",\"pipei_min\":\"200\",\"pipei_max\":\"250\"},{\"pipei_dan_num\":12,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":13,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":14,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":15,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":16,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":17,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":18,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":19,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":20,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":21,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"}]', 0);
INSERT INTO `xy_grouping` VALUES (26, 0, 'ฆ่าโหด10บิล 5บิลสุดท้าย', '[{\"pipei_dan_num\":1,\"pipei_dan_run\":\"1\",\"pipei_min\":\"70\",\"pipei_max\":\"80\"},{\"pipei_dan_num\":2,\"pipei_dan_run\":\"2\",\"pipei_min\":\"70\",\"pipei_max\":\"80\"},{\"pipei_dan_num\":3,\"pipei_dan_run\":\"1\",\"pipei_min\":\"80\",\"pipei_max\":\"90\"},{\"pipei_dan_num\":4,\"pipei_dan_run\":\"2\",\"pipei_min\":\"50\",\"pipei_max\":\"70\"},{\"pipei_dan_num\":5,\"pipei_dan_run\":\"2\",\"pipei_min\":\"50\",\"pipei_max\":\"60\"},{\"pipei_dan_num\":6,\"pipei_dan_run\":\"2\",\"pipei_min\":\"180\",\"pipei_max\":\"200\"},{\"pipei_dan_num\":7,\"pipei_dan_run\":\"2\",\"pipei_min\":\"250\",\"pipei_max\":\"300\"},{\"pipei_dan_num\":8,\"pipei_dan_run\":\"2\",\"pipei_min\":\"250\",\"pipei_max\":\"280\"},{\"pipei_dan_num\":9,\"pipei_dan_run\":\"2\",\"pipei_min\":\"300\",\"pipei_max\":\"350\"},{\"pipei_dan_num\":10,\"pipei_dan_run\":\"2\",\"pipei_min\":\"280\",\"pipei_max\":\"320\"},{\"pipei_dan_num\":11,\"pipei_dan_run\":\"2\",\"pipei_min\":\"300\",\"pipei_max\":\"350\"},{\"pipei_dan_num\":12,\"pipei_dan_run\":\"2\",\"pipei_min\":\"200\",\"pipei_max\":\"300\"},{\"pipei_dan_num\":13,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":14,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":15,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":16,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":17,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":18,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":19,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":20,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":21,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"}]', 0);
INSERT INTO `xy_grouping` VALUES (27, 0, '1บิลอย่างโหด ออเดอร์ที่20', '[{\"pipei_dan_num\":1,\"pipei_dan_run\":\"1\",\"pipei_min\":\"50\",\"pipei_max\":\"80\"},{\"pipei_dan_num\":2,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":3,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":4,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":5,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":6,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":7,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":8,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":9,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":10,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":11,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":12,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":13,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":14,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":15,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":16,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":17,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":18,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":19,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":20,\"pipei_dan_run\":\"1\",\"pipei_min\":\"80\",\"pipei_max\":\"90\"},{\"pipei_dan_num\":21,\"pipei_dan_run\":\"2\",\"pipei_min\":\"250\",\"pipei_max\":\"300\"}]', 0);
INSERT INTO `xy_grouping` VALUES (28, 0, 'เชือด100 ที่ไม่ยอมต่อวีไอพี2', '[{\"pipei_dan_num\":1,\"pipei_dan_run\":\"1\",\"pipei_min\":\"70\",\"pipei_max\":\"90\"},{\"pipei_dan_num\":2,\"pipei_dan_run\":\"1\",\"pipei_min\":\"80\",\"pipei_max\":\"90\"},{\"pipei_dan_num\":3,\"pipei_dan_run\":\"0\",\"pipei_min\":\"80\",\"pipei_max\":\"90\"},{\"pipei_dan_num\":4,\"pipei_dan_run\":\"1\",\"pipei_min\":\"500\",\"pipei_max\":\"900\"},{\"pipei_dan_num\":5,\"pipei_dan_run\":\"1\",\"pipei_min\":\"1200\",\"pipei_max\":\"1500\"},{\"pipei_dan_num\":6,\"pipei_dan_run\":\"1\",\"pipei_min\":\"2000\",\"pipei_max\":\"3000\"},{\"pipei_dan_num\":7,\"pipei_dan_run\":\"1\",\"pipei_min\":\"2800\",\"pipei_max\":\"3000\"},{\"pipei_dan_num\":8,\"pipei_dan_run\":\"1\",\"pipei_min\":\"500\",\"pipei_max\":\"1400\"},{\"pipei_dan_num\":9,\"pipei_dan_run\":\"1\",\"pipei_min\":\"1000\",\"pipei_max\":\"1200\"},{\"pipei_dan_num\":10,\"pipei_dan_run\":\"1\",\"pipei_min\":\"1200\",\"pipei_max\":\"1500\"},{\"pipei_dan_num\":11,\"pipei_dan_run\":\"1\",\"pipei_min\":\"5000\",\"pipei_max\":\"6000\"},{\"pipei_dan_num\":12,\"pipei_dan_run\":\"1\",\"pipei_min\":\"1500\",\"pipei_max\":\"1800\"},{\"pipei_dan_num\":13,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":14,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":15,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":16,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":17,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":18,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":19,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":20,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":21,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"}]', 0);
INSERT INTO `xy_grouping` VALUES (29, 0, 'เชือด500/10บิล', '[{\"pipei_dan_num\":1,\"pipei_dan_run\":\"20\",\"pipei_min\":\"50\",\"pipei_max\":\"60\"},{\"pipei_dan_num\":2,\"pipei_dan_run\":\"40\",\"pipei_min\":\"55\",\"pipei_max\":\"60\"},{\"pipei_dan_num\":3,\"pipei_dan_run\":\"40\",\"pipei_min\":\"65\",\"pipei_max\":\"70\"},{\"pipei_dan_num\":4,\"pipei_dan_run\":\"20\",\"pipei_min\":\"50\",\"pipei_max\":\"55\"},{\"pipei_dan_num\":5,\"pipei_dan_run\":\"20\",\"pipei_min\":\"60\",\"pipei_max\":\"65\"},{\"pipei_dan_num\":6,\"pipei_dan_run\":\"40\",\"pipei_min\":\"60\",\"pipei_max\":\"70\"},{\"pipei_dan_num\":7,\"pipei_dan_run\":\"40\",\"pipei_min\":\"150\",\"pipei_max\":\"180\"},{\"pipei_dan_num\":8,\"pipei_dan_run\":\"20\",\"pipei_min\":\"65\",\"pipei_max\":\"70\"},{\"pipei_dan_num\":9,\"pipei_dan_run\":\"50\",\"pipei_min\":\"200\",\"pipei_max\":\"250\"},{\"pipei_dan_num\":10,\"pipei_dan_run\":\"50\",\"pipei_min\":\"250\",\"pipei_max\":\"300\"},{\"pipei_dan_num\":11,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":12,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":13,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":14,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":15,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":16,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":17,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":18,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":19,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":20,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":21,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"}]', 0);
INSERT INTO `xy_grouping` VALUES (30, 0, 'เชือด1000/10บิล', '[{\"pipei_dan_num\":1,\"pipei_dan_run\":\"10\",\"pipei_min\":\"65\",\"pipei_max\":\"75\"},{\"pipei_dan_num\":2,\"pipei_dan_run\":\"10\",\"pipei_min\":\"65\",\"pipei_max\":\"80\"},{\"pipei_dan_num\":3,\"pipei_dan_run\":\"10\",\"pipei_min\":\"60\",\"pipei_max\":\"65\"},{\"pipei_dan_num\":4,\"pipei_dan_run\":\"20\",\"pipei_min\":\"65\",\"pipei_max\":\"70\"},{\"pipei_dan_num\":5,\"pipei_dan_run\":\"10\",\"pipei_min\":\"65\",\"pipei_max\":\"70\"},{\"pipei_dan_num\":6,\"pipei_dan_run\":\"10\",\"pipei_min\":\"60\",\"pipei_max\":\"75\"},{\"pipei_dan_num\":7,\"pipei_dan_run\":\"50\",\"pipei_min\":\"120\",\"pipei_max\":\"150\"},{\"pipei_dan_num\":8,\"pipei_dan_run\":\"40\",\"pipei_min\":\"50\",\"pipei_max\":\"55\"},{\"pipei_dan_num\":9,\"pipei_dan_run\":\"50\",\"pipei_min\":\"150\",\"pipei_max\":\"180\"},{\"pipei_dan_num\":10,\"pipei_dan_run\":\"50\",\"pipei_min\":\"150\",\"pipei_max\":\"200\"},{\"pipei_dan_num\":11,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":12,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":13,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":14,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":15,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":16,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":17,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":18,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":19,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":20,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":21,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"}]', 0);
INSERT INTO `xy_grouping` VALUES (31, 0, 'เชือด 10 บิลหนัก', '[{\"pipei_dan_num\":1,\"pipei_dan_run\":\"5\",\"pipei_min\":\"40\",\"pipei_max\":\"50\"},{\"pipei_dan_num\":2,\"pipei_dan_run\":\"5\",\"pipei_min\":\"50\",\"pipei_max\":\"60\"},{\"pipei_dan_num\":3,\"pipei_dan_run\":\"5\",\"pipei_min\":\"30\",\"pipei_max\":\"40\"},{\"pipei_dan_num\":4,\"pipei_dan_run\":\"5\",\"pipei_min\":\"40\",\"pipei_max\":\"60\"},{\"pipei_dan_num\":5,\"pipei_dan_run\":\"5\",\"pipei_min\":\"50\",\"pipei_max\":\"70\"},{\"pipei_dan_num\":6,\"pipei_dan_run\":\"5\",\"pipei_min\":\"50\",\"pipei_max\":\"60\"},{\"pipei_dan_num\":7,\"pipei_dan_run\":\"5\",\"pipei_min\":\"250\",\"pipei_max\":\"300\"},{\"pipei_dan_num\":8,\"pipei_dan_run\":\"5\",\"pipei_min\":\"50\",\"pipei_max\":\"55\"},{\"pipei_dan_num\":9,\"pipei_dan_run\":\"5\",\"pipei_min\":\"65\",\"pipei_max\":\"70\"},{\"pipei_dan_num\":10,\"pipei_dan_run\":\"5\",\"pipei_min\":\"300\",\"pipei_max\":\"350\"},{\"pipei_dan_num\":11,\"pipei_dan_run\":\"5\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":12,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":13,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":14,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":15,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":16,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":17,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":18,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":19,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":20,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":21,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"}]', 0);
INSERT INTO `xy_grouping` VALUES (32, 0, '500 รอบ 2', '[{\"pipei_dan_num\":1,\"pipei_dan_run\":\"15\",\"pipei_min\":\"65\",\"pipei_max\":\"70\"},{\"pipei_dan_num\":2,\"pipei_dan_run\":\"20\",\"pipei_min\":\"50\",\"pipei_max\":\"65\"},{\"pipei_dan_num\":3,\"pipei_dan_run\":\"20\",\"pipei_min\":\"60\",\"pipei_max\":\"70\"},{\"pipei_dan_num\":4,\"pipei_dan_run\":\"15\",\"pipei_min\":\"50\",\"pipei_max\":\"55\"},{\"pipei_dan_num\":5,\"pipei_dan_run\":\"20\",\"pipei_min\":\"65\",\"pipei_max\":\"70\"},{\"pipei_dan_num\":6,\"pipei_dan_run\":\"20\",\"pipei_min\":\"55\",\"pipei_max\":\"60\"},{\"pipei_dan_num\":7,\"pipei_dan_run\":\"50\",\"pipei_min\":\"55\",\"pipei_max\":\"60\"},{\"pipei_dan_num\":8,\"pipei_dan_run\":\"50\",\"pipei_min\":\"65\",\"pipei_max\":\"70\"},{\"pipei_dan_num\":9,\"pipei_dan_run\":\"40\",\"pipei_min\":\"150\",\"pipei_max\":\"200\"},{\"pipei_dan_num\":10,\"pipei_dan_run\":\"50\",\"pipei_min\":\"200\",\"pipei_max\":\"250\"},{\"pipei_dan_num\":11,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":12,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":13,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":14,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":15,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":16,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":17,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":18,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":19,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":20,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":21,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"}]', 0);
INSERT INTO `xy_grouping` VALUES (33, 0, 'time', '[{\"pipei_dan_num\":1,\"pipei_dan_run\":\"5\",\"pipei_min\":\"50\",\"pipei_max\":\"60\"},{\"pipei_dan_num\":2,\"pipei_dan_run\":\"5\",\"pipei_min\":\"50\",\"pipei_max\":\"75\"},{\"pipei_dan_num\":3,\"pipei_dan_run\":\"5\",\"pipei_min\":\"50\",\"pipei_max\":\"60\"},{\"pipei_dan_num\":4,\"pipei_dan_run\":\"5\",\"pipei_min\":\"50\",\"pipei_max\":\"60\"},{\"pipei_dan_num\":5,\"pipei_dan_run\":\"5\",\"pipei_min\":\"50\",\"pipei_max\":\"60\"},{\"pipei_dan_num\":6,\"pipei_dan_run\":\"5\",\"pipei_min\":\"150\",\"pipei_max\":\"200\"},{\"pipei_dan_num\":7,\"pipei_dan_run\":\"5\",\"pipei_min\":\"50\",\"pipei_max\":\"60\"},{\"pipei_dan_num\":8,\"pipei_dan_run\":\"5\",\"pipei_min\":\"50\",\"pipei_max\":\"60\"},{\"pipei_dan_num\":9,\"pipei_dan_run\":\"5\",\"pipei_min\":\"50\",\"pipei_max\":\"60\"},{\"pipei_dan_num\":10,\"pipei_dan_run\":\"5\",\"pipei_min\":\"210\",\"pipei_max\":\"260\"},{\"pipei_dan_num\":11,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":12,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":13,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":14,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":15,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":16,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":17,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":18,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":19,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":20,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":21,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"}]', 0);
INSERT INTO `xy_grouping` VALUES (37, 0, 'time1', '[{\"pipei_dan_num\":1,\"pipei_dan_run\":\"5\",\"pipei_min\":\"50\",\"pipei_max\":\"60\"},{\"pipei_dan_num\":2,\"pipei_dan_run\":\"5\",\"pipei_min\":\"50\",\"pipei_max\":\"60\"},{\"pipei_dan_num\":3,\"pipei_dan_run\":\"5\",\"pipei_min\":\"60\",\"pipei_max\":\"70\"},{\"pipei_dan_num\":4,\"pipei_dan_run\":\"5\",\"pipei_min\":\"60\",\"pipei_max\":\"65\"},{\"pipei_dan_num\":5,\"pipei_dan_run\":\"5\",\"pipei_min\":\"100\",\"pipei_max\":\"140\"},{\"pipei_dan_num\":6,\"pipei_dan_run\":\"5\",\"pipei_min\":\"50\",\"pipei_max\":\"60\"},{\"pipei_dan_num\":7,\"pipei_dan_run\":\"5\",\"pipei_min\":\"180\",\"pipei_max\":\"200\"},{\"pipei_dan_num\":8,\"pipei_dan_run\":\"5\",\"pipei_min\":\"50\",\"pipei_max\":\"60\"},{\"pipei_dan_num\":9,\"pipei_dan_run\":\"5\",\"pipei_min\":\"70\",\"pipei_max\":\"80\"},{\"pipei_dan_num\":10,\"pipei_dan_run\":\"5\",\"pipei_min\":\"200\",\"pipei_max\":\"260\"},{\"pipei_dan_num\":11,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":12,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":13,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":14,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":15,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":16,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":17,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":18,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":19,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":20,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":21,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"}]', 0);
INSERT INTO `xy_grouping` VALUES (38, 0, 'time2', '[{\"pipei_dan_num\":1,\"pipei_dan_run\":\"5\",\"pipei_min\":\"50\",\"pipei_max\":\"60\"},{\"pipei_dan_num\":2,\"pipei_dan_run\":\"5\",\"pipei_min\":\"50\",\"pipei_max\":\"60\"},{\"pipei_dan_num\":3,\"pipei_dan_run\":\"5\",\"pipei_min\":\"50\",\"pipei_max\":\"60\"},{\"pipei_dan_num\":4,\"pipei_dan_run\":\"5\",\"pipei_min\":\"50\",\"pipei_max\":\"60\"},{\"pipei_dan_num\":5,\"pipei_dan_run\":\"5\",\"pipei_min\":\"50\",\"pipei_max\":\"60\"},{\"pipei_dan_num\":6,\"pipei_dan_run\":\"5\",\"pipei_min\":\"60\",\"pipei_max\":\"70\"},{\"pipei_dan_num\":7,\"pipei_dan_run\":\"5\",\"pipei_min\":\"70\",\"pipei_max\":\"80\"},{\"pipei_dan_num\":8,\"pipei_dan_run\":\"5\",\"pipei_min\":\"150\",\"pipei_max\":\"200\"},{\"pipei_dan_num\":9,\"pipei_dan_run\":\"5\",\"pipei_min\":\"50\",\"pipei_max\":\"60\"},{\"pipei_dan_num\":10,\"pipei_dan_run\":\"5\",\"pipei_min\":\"200\",\"pipei_max\":\"250\"},{\"pipei_dan_num\":11,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":12,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":13,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":14,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":15,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":16,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":17,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":18,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":19,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":20,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":21,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"}]', 0);
INSERT INTO `xy_grouping` VALUES (39, 1, '1000โปร', '[{\"pipei_dan_num\":1,\"pipei_dan_run\":\"211\",\"pipei_min\":\"750\",\"pipei_max\":\"980\"},{\"pipei_dan_num\":2,\"pipei_dan_run\":\"423\",\"pipei_min\":\"750\",\"pipei_max\":\"980\"},{\"pipei_dan_num\":3,\"pipei_dan_run\":\"212\",\"pipei_min\":\"750\",\"pipei_max\":\"980\"},{\"pipei_dan_num\":4,\"pipei_dan_run\":\"321\",\"pipei_min\":\"750\",\"pipei_max\":\"980\"},{\"pipei_dan_num\":5,\"pipei_dan_run\":\"422\",\"pipei_min\":\"750\",\"pipei_max\":\"980\"},{\"pipei_dan_num\":6,\"pipei_dan_run\":\"122\",\"pipei_min\":\"750\",\"pipei_max\":\"980\"},{\"pipei_dan_num\":7,\"pipei_dan_run\":\"311\",\"pipei_min\":\"750\",\"pipei_max\":\"980\"},{\"pipei_dan_num\":8,\"pipei_dan_run\":\"412\",\"pipei_min\":\"750\",\"pipei_max\":\"980\"},{\"pipei_dan_num\":9,\"pipei_dan_run\":\"232\",\"pipei_min\":\"750\",\"pipei_max\":\"980\"},{\"pipei_dan_num\":10,\"pipei_dan_run\":\"98\",\"pipei_min\":\"750\",\"pipei_max\":\"980\"},{\"pipei_dan_num\":11,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":12,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":13,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":14,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":15,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":16,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":17,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":18,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":19,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":20,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":21,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"}]', 0);
INSERT INTO `xy_grouping` VALUES (40, 1, '500โปร', '[{\"pipei_dan_num\":1,\"pipei_dan_run\":\"100\",\"pipei_min\":\"400\",\"pipei_max\":\"450\"},{\"pipei_dan_num\":2,\"pipei_dan_run\":\"120\",\"pipei_min\":\"400\",\"pipei_max\":\"450\"},{\"pipei_dan_num\":3,\"pipei_dan_run\":\"100\",\"pipei_min\":\"400\",\"pipei_max\":\"450\"},{\"pipei_dan_num\":4,\"pipei_dan_run\":\"130\",\"pipei_min\":\"400\",\"pipei_max\":\"450\"},{\"pipei_dan_num\":5,\"pipei_dan_run\":\"100\",\"pipei_min\":\"400\",\"pipei_max\":\"450\"},{\"pipei_dan_num\":6,\"pipei_dan_run\":\"150\",\"pipei_min\":\"400\",\"pipei_max\":\"450\"},{\"pipei_dan_num\":7,\"pipei_dan_run\":\"120\",\"pipei_min\":\"400\",\"pipei_max\":\"450\"},{\"pipei_dan_num\":8,\"pipei_dan_run\":\"160\",\"pipei_min\":\"400\",\"pipei_max\":\"450\"},{\"pipei_dan_num\":9,\"pipei_dan_run\":\"190\",\"pipei_min\":\"400\",\"pipei_max\":\"450\"},{\"pipei_dan_num\":10,\"pipei_dan_run\":\"200\",\"pipei_min\":\"400\",\"pipei_max\":\"450\"},{\"pipei_dan_num\":11,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":12,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":13,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":14,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":15,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":16,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":17,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":18,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":19,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":20,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":21,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"}]', 0);
INSERT INTO `xy_grouping` VALUES (41, 1, '3000 โปร', '[{\"pipei_dan_num\":1,\"pipei_dan_run\":\"100\",\"pipei_min\":\"2500\",\"pipei_max\":\"2900\"},{\"pipei_dan_num\":2,\"pipei_dan_run\":\"500\",\"pipei_min\":\"2500\",\"pipei_max\":\"2900\"},{\"pipei_dan_num\":3,\"pipei_dan_run\":\"300\",\"pipei_min\":\"2500\",\"pipei_max\":\"2900\"},{\"pipei_dan_num\":4,\"pipei_dan_run\":\"450\",\"pipei_min\":\"2500\",\"pipei_max\":\"2900\"},{\"pipei_dan_num\":5,\"pipei_dan_run\":\"100\",\"pipei_min\":\"2500\",\"pipei_max\":\"2900\"},{\"pipei_dan_num\":6,\"pipei_dan_run\":\"200\",\"pipei_min\":\"2500\",\"pipei_max\":\"2900\"},{\"pipei_dan_num\":7,\"pipei_dan_run\":\"100\",\"pipei_min\":\"2500\",\"pipei_max\":\"2900\"},{\"pipei_dan_num\":8,\"pipei_dan_run\":\"100\",\"pipei_min\":\"2500\",\"pipei_max\":\"2900\"},{\"pipei_dan_num\":9,\"pipei_dan_run\":\"200\",\"pipei_min\":\"2500\",\"pipei_max\":\"2900\"},{\"pipei_dan_num\":10,\"pipei_dan_run\":\"800\",\"pipei_min\":\"2500\",\"pipei_max\":\"2900\"},{\"pipei_dan_num\":11,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":12,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":13,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":14,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":15,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":16,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":17,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":18,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":19,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":20,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":21,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"}]', 0);
INSERT INTO `xy_grouping` VALUES (42, 1, '500 กำไร 4000++', '[{\"pipei_dan_num\":1,\"pipei_dan_run\":\"500\",\"pipei_min\":\"400\",\"pipei_max\":\"490\"},{\"pipei_dan_num\":2,\"pipei_dan_run\":\"223\",\"pipei_min\":\"400\",\"pipei_max\":\"490\"},{\"pipei_dan_num\":3,\"pipei_dan_run\":\"356\",\"pipei_min\":\"400\",\"pipei_max\":\"490\"},{\"pipei_dan_num\":4,\"pipei_dan_run\":\"300\",\"pipei_min\":\"400\",\"pipei_max\":\"490\"},{\"pipei_dan_num\":5,\"pipei_dan_run\":\"400\",\"pipei_min\":\"400\",\"pipei_max\":\"490\"},{\"pipei_dan_num\":6,\"pipei_dan_run\":\"700\",\"pipei_min\":\"400\",\"pipei_max\":\"490\"},{\"pipei_dan_num\":7,\"pipei_dan_run\":\"590\",\"pipei_min\":\"400\",\"pipei_max\":\"490\"},{\"pipei_dan_num\":8,\"pipei_dan_run\":\"500\",\"pipei_min\":\"400\",\"pipei_max\":\"490\"},{\"pipei_dan_num\":9,\"pipei_dan_run\":\"150\",\"pipei_min\":\"400\",\"pipei_max\":\"490\"},{\"pipei_dan_num\":10,\"pipei_dan_run\":\"250\",\"pipei_min\":\"400\",\"pipei_max\":\"490\"},{\"pipei_dan_num\":11,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":12,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":13,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":14,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":15,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":16,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":17,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":18,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":19,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":20,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":21,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"}]', 0);
INSERT INTO `xy_grouping` VALUES (43, 1, '1000 กำไร 6000+++', '[{\"pipei_dan_num\":1,\"pipei_dan_run\":\"200\",\"pipei_min\":\"800\",\"pipei_max\":\"990\"},{\"pipei_dan_num\":2,\"pipei_dan_run\":\"800\",\"pipei_min\":\"800\",\"pipei_max\":\"990\"},{\"pipei_dan_num\":3,\"pipei_dan_run\":\"950\",\"pipei_min\":\"800\",\"pipei_max\":\"990\"},{\"pipei_dan_num\":4,\"pipei_dan_run\":\"900\",\"pipei_min\":\"800\",\"pipei_max\":\"990\"},{\"pipei_dan_num\":5,\"pipei_dan_run\":\"980\",\"pipei_min\":\"800\",\"pipei_max\":\"990\"},{\"pipei_dan_num\":6,\"pipei_dan_run\":\"600\",\"pipei_min\":\"800\",\"pipei_max\":\"990\"},{\"pipei_dan_num\":7,\"pipei_dan_run\":\"600\",\"pipei_min\":\"800\",\"pipei_max\":\"990\"},{\"pipei_dan_num\":8,\"pipei_dan_run\":\"300\",\"pipei_min\":\"800\",\"pipei_max\":\"990\"},{\"pipei_dan_num\":9,\"pipei_dan_run\":\"650\",\"pipei_min\":\"800\",\"pipei_max\":\"990\"},{\"pipei_dan_num\":10,\"pipei_dan_run\":\"600\",\"pipei_min\":\"800\",\"pipei_max\":\"990\"},{\"pipei_dan_num\":11,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":12,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":13,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":14,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":15,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":16,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":17,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":18,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":19,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":20,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":21,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"}]', 0);
INSERT INTO `xy_grouping` VALUES (44, 1, '500 โปร 20 ครั้ง', '[{\"pipei_dan_num\":1,\"pipei_dan_run\":\"105\",\"pipei_min\":\"300\",\"pipei_max\":\"490\"},{\"pipei_dan_num\":2,\"pipei_dan_run\":\"102\",\"pipei_min\":\"300\",\"pipei_max\":\"490\"},{\"pipei_dan_num\":3,\"pipei_dan_run\":\"106\",\"pipei_min\":\"300\",\"pipei_max\":\"490\"},{\"pipei_dan_num\":4,\"pipei_dan_run\":\"109\",\"pipei_min\":\"300\",\"pipei_max\":\"490\"},{\"pipei_dan_num\":5,\"pipei_dan_run\":\"105\",\"pipei_min\":\"300\",\"pipei_max\":\"490\"},{\"pipei_dan_num\":6,\"pipei_dan_run\":\"80\",\"pipei_min\":\"300\",\"pipei_max\":\"490\"},{\"pipei_dan_num\":7,\"pipei_dan_run\":\"103\",\"pipei_min\":\"300\",\"pipei_max\":\"490\"},{\"pipei_dan_num\":8,\"pipei_dan_run\":\"109\",\"pipei_min\":\"300\",\"pipei_max\":\"490\"},{\"pipei_dan_num\":9,\"pipei_dan_run\":\"85\",\"pipei_min\":\"300\",\"pipei_max\":\"490\"},{\"pipei_dan_num\":10,\"pipei_dan_run\":\"109\",\"pipei_min\":\"300\",\"pipei_max\":\"490\"},{\"pipei_dan_num\":11,\"pipei_dan_run\":\"103\",\"pipei_min\":\"300\",\"pipei_max\":\"490\"},{\"pipei_dan_num\":12,\"pipei_dan_run\":\"60\",\"pipei_min\":\"300\",\"pipei_max\":\"490\"},{\"pipei_dan_num\":13,\"pipei_dan_run\":\"85\",\"pipei_min\":\"300\",\"pipei_max\":\"490\"},{\"pipei_dan_num\":14,\"pipei_dan_run\":\"103\",\"pipei_min\":\"300\",\"pipei_max\":\"490\"},{\"pipei_dan_num\":15,\"pipei_dan_run\":\"85\",\"pipei_min\":\"300\",\"pipei_max\":\"490\"},{\"pipei_dan_num\":16,\"pipei_dan_run\":\"109\",\"pipei_min\":\"300\",\"pipei_max\":\"490\"},{\"pipei_dan_num\":17,\"pipei_dan_run\":\"103\",\"pipei_min\":\"300\",\"pipei_max\":\"490\"},{\"pipei_dan_num\":18,\"pipei_dan_run\":\"60\",\"pipei_min\":\"300\",\"pipei_max\":\"490\"},{\"pipei_dan_num\":19,\"pipei_dan_run\":\"103\",\"pipei_min\":\"300\",\"pipei_max\":\"490\"},{\"pipei_dan_num\":20,\"pipei_dan_run\":\"60\",\"pipei_min\":\"300\",\"pipei_max\":\"490\"},{\"pipei_dan_num\":21,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"}]', 0);
INSERT INTO `xy_grouping` VALUES (45, 0, 'เชือดเบาๆออเดอร์ที่9', '[{\"pipei_dan_num\":1,\"pipei_dan_run\":\"5\",\"pipei_min\":\"50\",\"pipei_max\":\"70\"},{\"pipei_dan_num\":2,\"pipei_dan_run\":\"2\",\"pipei_min\":\"50\",\"pipei_max\":\"70\"},{\"pipei_dan_num\":3,\"pipei_dan_run\":\"6\",\"pipei_min\":\"50\",\"pipei_max\":\"70\"},{\"pipei_dan_num\":4,\"pipei_dan_run\":\"5\",\"pipei_min\":\"50\",\"pipei_max\":\"70\"},{\"pipei_dan_num\":5,\"pipei_dan_run\":\"6\",\"pipei_min\":\"50\",\"pipei_max\":\"70\"},{\"pipei_dan_num\":6,\"pipei_dan_run\":\"3\",\"pipei_min\":\"50\",\"pipei_max\":\"70\"},{\"pipei_dan_num\":7,\"pipei_dan_run\":\"3\",\"pipei_min\":\"50\",\"pipei_max\":\"70\"},{\"pipei_dan_num\":8,\"pipei_dan_run\":\"5\",\"pipei_min\":\"50\",\"pipei_max\":\"70\"},{\"pipei_dan_num\":9,\"pipei_dan_run\":\"38\",\"pipei_min\":\"175\",\"pipei_max\":\"180\"},{\"pipei_dan_num\":10,\"pipei_dan_run\":\"40\",\"pipei_min\":\"138\",\"pipei_max\":\"142\"},{\"pipei_dan_num\":11,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":12,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":13,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":14,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":15,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":16,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":17,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":18,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":19,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":20,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":21,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"}]', 0);
INSERT INTO `xy_grouping` VALUES (46, 0, 'เชือดเบาๆ 7กับ 10  180%', '[{\"pipei_dan_num\":1,\"pipei_dan_run\":\"2\",\"pipei_min\":\"40\",\"pipei_max\":\"80\"},{\"pipei_dan_num\":2,\"pipei_dan_run\":\"5\",\"pipei_min\":\"40\",\"pipei_max\":\"80\"},{\"pipei_dan_num\":3,\"pipei_dan_run\":\"6\",\"pipei_min\":\"40\",\"pipei_max\":\"80\"},{\"pipei_dan_num\":4,\"pipei_dan_run\":\"3\",\"pipei_min\":\"40\",\"pipei_max\":\"80\"},{\"pipei_dan_num\":5,\"pipei_dan_run\":\"3\",\"pipei_min\":\"40\",\"pipei_max\":\"80\"},{\"pipei_dan_num\":6,\"pipei_dan_run\":\"4\",\"pipei_min\":\"40\",\"pipei_max\":\"80\"},{\"pipei_dan_num\":7,\"pipei_dan_run\":\"35\",\"pipei_min\":\"180\",\"pipei_max\":\"185\"},{\"pipei_dan_num\":8,\"pipei_dan_run\":\"3\",\"pipei_min\":\"40\",\"pipei_max\":\"80\"},{\"pipei_dan_num\":9,\"pipei_dan_run\":\"5\",\"pipei_min\":\"40\",\"pipei_max\":\"80\"},{\"pipei_dan_num\":10,\"pipei_dan_run\":\"39\",\"pipei_min\":\"180\",\"pipei_max\":\"185\"},{\"pipei_dan_num\":11,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":12,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":13,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":14,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":15,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":16,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":17,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":18,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":19,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":20,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":21,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"}]', 0);
INSERT INTO `xy_grouping` VALUES (47, 1, '1000 โปร 20 ครั้ง', '[{\"pipei_dan_num\":1,\"pipei_dan_run\":\"180\",\"pipei_min\":\"500\",\"pipei_max\":\"850\"},{\"pipei_dan_num\":2,\"pipei_dan_run\":\"140\",\"pipei_min\":\"500\",\"pipei_max\":\"850\"},{\"pipei_dan_num\":3,\"pipei_dan_run\":\"158\",\"pipei_min\":\"500\",\"pipei_max\":\"850\"},{\"pipei_dan_num\":4,\"pipei_dan_run\":\"129\",\"pipei_min\":\"500\",\"pipei_max\":\"850\"},{\"pipei_dan_num\":5,\"pipei_dan_run\":\"140\",\"pipei_min\":\"500\",\"pipei_max\":\"850\"},{\"pipei_dan_num\":6,\"pipei_dan_run\":\"158\",\"pipei_min\":\"500\",\"pipei_max\":\"850\"},{\"pipei_dan_num\":7,\"pipei_dan_run\":\"156\",\"pipei_min\":\"500\",\"pipei_max\":\"850\"},{\"pipei_dan_num\":8,\"pipei_dan_run\":\"120\",\"pipei_min\":\"500\",\"pipei_max\":\"850\"},{\"pipei_dan_num\":9,\"pipei_dan_run\":\"132\",\"pipei_min\":\"500\",\"pipei_max\":\"850\"},{\"pipei_dan_num\":10,\"pipei_dan_run\":\"120\",\"pipei_min\":\"500\",\"pipei_max\":\"850\"},{\"pipei_dan_num\":11,\"pipei_dan_run\":\"110\",\"pipei_min\":\"500\",\"pipei_max\":\"850\"},{\"pipei_dan_num\":12,\"pipei_dan_run\":\"100\",\"pipei_min\":\"500\",\"pipei_max\":\"850\"},{\"pipei_dan_num\":13,\"pipei_dan_run\":\"150\",\"pipei_min\":\"500\",\"pipei_max\":\"850\"},{\"pipei_dan_num\":14,\"pipei_dan_run\":\"120\",\"pipei_min\":\"500\",\"pipei_max\":\"850\"},{\"pipei_dan_num\":15,\"pipei_dan_run\":\"120\",\"pipei_min\":\"500\",\"pipei_max\":\"850\"},{\"pipei_dan_num\":16,\"pipei_dan_run\":\"158\",\"pipei_min\":\"500\",\"pipei_max\":\"850\"},{\"pipei_dan_num\":17,\"pipei_dan_run\":\"150\",\"pipei_min\":\"500\",\"pipei_max\":\"850\"},{\"pipei_dan_num\":18,\"pipei_dan_run\":\"158\",\"pipei_min\":\"500\",\"pipei_max\":\"850\"},{\"pipei_dan_num\":19,\"pipei_dan_run\":\"120\",\"pipei_min\":\"500\",\"pipei_max\":\"850\"},{\"pipei_dan_num\":20,\"pipei_dan_run\":\"120\",\"pipei_min\":\"500\",\"pipei_max\":\"850\"},{\"pipei_dan_num\":21,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"}]', 0);
INSERT INTO `xy_grouping` VALUES (48, 0, 'บิลที่ 4', '[{\"pipei_dan_num\":1,\"pipei_dan_run\":\"2\",\"pipei_min\":\"50\",\"pipei_max\":\"70\"},{\"pipei_dan_num\":2,\"pipei_dan_run\":\"5\",\"pipei_min\":\"50\",\"pipei_max\":\"70\"},{\"pipei_dan_num\":3,\"pipei_dan_run\":\"6\",\"pipei_min\":\"50\",\"pipei_max\":\"70\"},{\"pipei_dan_num\":4,\"pipei_dan_run\":\"1\",\"pipei_min\":\"50\",\"pipei_max\":\"70\"},{\"pipei_dan_num\":5,\"pipei_dan_run\":\"20\",\"pipei_min\":\"135\",\"pipei_max\":\"150\"},{\"pipei_dan_num\":6,\"pipei_dan_run\":\"3\",\"pipei_min\":\"50\",\"pipei_max\":\"70\"},{\"pipei_dan_num\":7,\"pipei_dan_run\":\"1\",\"pipei_min\":\"50\",\"pipei_max\":\"70\"},{\"pipei_dan_num\":8,\"pipei_dan_run\":\"1\",\"pipei_min\":\"50\",\"pipei_max\":\"70\"},{\"pipei_dan_num\":9,\"pipei_dan_run\":\"2\",\"pipei_min\":\"50\",\"pipei_max\":\"70\"},{\"pipei_dan_num\":10,\"pipei_dan_run\":\"2\",\"pipei_min\":\"130\",\"pipei_max\":\"140\"},{\"pipei_dan_num\":11,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":12,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":13,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":14,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":15,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":16,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":17,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":18,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":19,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":20,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":21,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"}]', 0);
INSERT INTO `xy_grouping` VALUES (49, 1, 'ออเดอร์เล็ก บิลที่ 9', '[{\"pipei_dan_num\":1,\"pipei_dan_run\":\"13\",\"pipei_min\":\"800\",\"pipei_max\":\"900\"},{\"pipei_dan_num\":2,\"pipei_dan_run\":\"12\",\"pipei_min\":\"800\",\"pipei_max\":\"900\"},{\"pipei_dan_num\":3,\"pipei_dan_run\":\"12\",\"pipei_min\":\"800\",\"pipei_max\":\"900\"},{\"pipei_dan_num\":4,\"pipei_dan_run\":\"13\",\"pipei_min\":\"800\",\"pipei_max\":\"900\"},{\"pipei_dan_num\":5,\"pipei_dan_run\":\"14\",\"pipei_min\":\"800\",\"pipei_max\":\"900\"},{\"pipei_dan_num\":6,\"pipei_dan_run\":\"10\",\"pipei_min\":\"800\",\"pipei_max\":\"900\"},{\"pipei_dan_num\":7,\"pipei_dan_run\":\"12\",\"pipei_min\":\"800\",\"pipei_max\":\"900\"},{\"pipei_dan_num\":8,\"pipei_dan_run\":\"12\",\"pipei_min\":\"800\",\"pipei_max\":\"900\"},{\"pipei_dan_num\":9,\"pipei_dan_run\":\"40\",\"pipei_min\":\"1180\",\"pipei_max\":\"1350\"},{\"pipei_dan_num\":10,\"pipei_dan_run\":\"12\",\"pipei_min\":\"800\",\"pipei_max\":\"900\"},{\"pipei_dan_num\":11,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":12,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":13,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":14,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":15,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":16,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":17,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":18,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":19,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":20,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":21,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"}]', 0);
INSERT INTO `xy_grouping` VALUES (50, 1, 'ออเดอร์ เล็ก บิลที่ 5', '[{\"pipei_dan_num\":1,\"pipei_dan_run\":\"10\",\"pipei_min\":\"800\",\"pipei_max\":\"900\"},{\"pipei_dan_num\":2,\"pipei_dan_run\":\"12\",\"pipei_min\":\"800\",\"pipei_max\":\"900\"},{\"pipei_dan_num\":3,\"pipei_dan_run\":\"13\",\"pipei_min\":\"800\",\"pipei_max\":\"900\"},{\"pipei_dan_num\":4,\"pipei_dan_run\":\"13\",\"pipei_min\":\"800\",\"pipei_max\":\"900\"},{\"pipei_dan_num\":5,\"pipei_dan_run\":\"45\",\"pipei_min\":\"1140\",\"pipei_max\":\"1300\"},{\"pipei_dan_num\":6,\"pipei_dan_run\":\"11\",\"pipei_min\":\"800\",\"pipei_max\":\"900\"},{\"pipei_dan_num\":7,\"pipei_dan_run\":\"14\",\"pipei_min\":\"800\",\"pipei_max\":\"900\"},{\"pipei_dan_num\":8,\"pipei_dan_run\":\"12\",\"pipei_min\":\"800\",\"pipei_max\":\"900\"},{\"pipei_dan_num\":9,\"pipei_dan_run\":\"10\",\"pipei_min\":\"800\",\"pipei_max\":\"900\"},{\"pipei_dan_num\":10,\"pipei_dan_run\":\"10\",\"pipei_min\":\"800\",\"pipei_max\":\"900\"},{\"pipei_dan_num\":11,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":12,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":13,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":14,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":15,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":16,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":17,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":18,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":19,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":20,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":21,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"}]', 0);
INSERT INTO `xy_grouping` VALUES (51, 1, '3000 บิลที่7', '[{\"pipei_dan_num\":1,\"pipei_dan_run\":\"15\",\"pipei_min\":\"2500\",\"pipei_max\":\"2800\"},{\"pipei_dan_num\":2,\"pipei_dan_run\":\"16\",\"pipei_min\":\"2500\",\"pipei_max\":\"2800\"},{\"pipei_dan_num\":3,\"pipei_dan_run\":\"12\",\"pipei_min\":\"2500\",\"pipei_max\":\"2800\"},{\"pipei_dan_num\":4,\"pipei_dan_run\":\"25\",\"pipei_min\":\"2500\",\"pipei_max\":\"2800\"},{\"pipei_dan_num\":5,\"pipei_dan_run\":\"20\",\"pipei_min\":\"2500\",\"pipei_max\":\"2800\"},{\"pipei_dan_num\":6,\"pipei_dan_run\":\"20\",\"pipei_min\":\"2500\",\"pipei_max\":\"2800\"},{\"pipei_dan_num\":7,\"pipei_dan_run\":\"120\",\"pipei_min\":\"3650\",\"pipei_max\":\"3850\"},{\"pipei_dan_num\":8,\"pipei_dan_run\":\"25\",\"pipei_min\":\"2500\",\"pipei_max\":\"2800\"},{\"pipei_dan_num\":9,\"pipei_dan_run\":\"10\",\"pipei_min\":\"2500\",\"pipei_max\":\"2800\"},{\"pipei_dan_num\":10,\"pipei_dan_run\":\"12\",\"pipei_min\":\"2500\",\"pipei_max\":\"2800\"},{\"pipei_dan_num\":11,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":12,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":13,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":14,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":15,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":16,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":17,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":18,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":19,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":20,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":21,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"}]', 0);
INSERT INTO `xy_grouping` VALUES (52, 1, '3000 บิลที่9', '[{\"pipei_dan_num\":1,\"pipei_dan_run\":\"25\",\"pipei_min\":\"2500\",\"pipei_max\":\"2800\"},{\"pipei_dan_num\":2,\"pipei_dan_run\":\"30\",\"pipei_min\":\"2500\",\"pipei_max\":\"2800\"},{\"pipei_dan_num\":3,\"pipei_dan_run\":\"35\",\"pipei_min\":\"2500\",\"pipei_max\":\"2800\"},{\"pipei_dan_num\":4,\"pipei_dan_run\":\"30\",\"pipei_min\":\"2500\",\"pipei_max\":\"2800\"},{\"pipei_dan_num\":5,\"pipei_dan_run\":\"31\",\"pipei_min\":\"2500\",\"pipei_max\":\"2800\"},{\"pipei_dan_num\":6,\"pipei_dan_run\":\"32\",\"pipei_min\":\"2500\",\"pipei_max\":\"2800\"},{\"pipei_dan_num\":7,\"pipei_dan_run\":\"34\",\"pipei_min\":\"2500\",\"pipei_max\":\"2800\"},{\"pipei_dan_num\":8,\"pipei_dan_run\":\"30\",\"pipei_min\":\"2500\",\"pipei_max\":\"2800\"},{\"pipei_dan_num\":9,\"pipei_dan_run\":\"135\",\"pipei_min\":\"3400\",\"pipei_max\":\"3750\"},{\"pipei_dan_num\":10,\"pipei_dan_run\":\"30\",\"pipei_min\":\"2500\",\"pipei_max\":\"2800\"},{\"pipei_dan_num\":11,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":12,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":13,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":14,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":15,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":16,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":17,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":18,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":19,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":20,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":21,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"}]', 0);
INSERT INTO `xy_grouping` VALUES (53, 1, '9999 กำไรเยอะๆ', '[{\"pipei_dan_num\":1,\"pipei_dan_run\":\"975\",\"pipei_min\":\"7000\",\"pipei_max\":\"8500\"},{\"pipei_dan_num\":2,\"pipei_dan_run\":\"690\",\"pipei_min\":\"7000\",\"pipei_max\":\"8500\"},{\"pipei_dan_num\":3,\"pipei_dan_run\":\"562\",\"pipei_min\":\"7000\",\"pipei_max\":\"8500\"},{\"pipei_dan_num\":4,\"pipei_dan_run\":\"490\",\"pipei_min\":\"7000\",\"pipei_max\":\"8500\"},{\"pipei_dan_num\":5,\"pipei_dan_run\":\"456\",\"pipei_min\":\"7000\",\"pipei_max\":\"8500\"},{\"pipei_dan_num\":6,\"pipei_dan_run\":\"482\",\"pipei_min\":\"7000\",\"pipei_max\":\"8500\"},{\"pipei_dan_num\":7,\"pipei_dan_run\":\"658\",\"pipei_min\":\"7000\",\"pipei_max\":\"8500\"},{\"pipei_dan_num\":8,\"pipei_dan_run\":\"980\",\"pipei_min\":\"7000\",\"pipei_max\":\"8500\"},{\"pipei_dan_num\":9,\"pipei_dan_run\":\"360\",\"pipei_min\":\"7000\",\"pipei_max\":\"8500\"},{\"pipei_dan_num\":10,\"pipei_dan_run\":\"980\",\"pipei_min\":\"7000\",\"pipei_max\":\"8500\"},{\"pipei_dan_num\":11,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":12,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":13,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":14,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":15,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":16,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":17,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":18,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":19,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":20,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":21,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"}]', 0);
INSERT INTO `xy_grouping` VALUES (54, 1, '500  บิลเล็ก 5', '[{\"pipei_dan_num\":1,\"pipei_dan_run\":\"3\",\"pipei_min\":\"400\",\"pipei_max\":\"456\"},{\"pipei_dan_num\":2,\"pipei_dan_run\":\"9\",\"pipei_min\":\"400\",\"pipei_max\":\"450\"},{\"pipei_dan_num\":3,\"pipei_dan_run\":\"8\",\"pipei_min\":\"400\",\"pipei_max\":\"450\"},{\"pipei_dan_num\":4,\"pipei_dan_run\":\"7\",\"pipei_min\":\"400\",\"pipei_max\":\"450\"},{\"pipei_dan_num\":5,\"pipei_dan_run\":\"45\",\"pipei_min\":\"780\",\"pipei_max\":\"860\"},{\"pipei_dan_num\":6,\"pipei_dan_run\":\"6\",\"pipei_min\":\"400\",\"pipei_max\":\"456\"},{\"pipei_dan_num\":7,\"pipei_dan_run\":\"7\",\"pipei_min\":\"400\",\"pipei_max\":\"456\"},{\"pipei_dan_num\":8,\"pipei_dan_run\":\"6\",\"pipei_min\":\"400\",\"pipei_max\":\"456\"},{\"pipei_dan_num\":9,\"pipei_dan_run\":\"9\",\"pipei_min\":\"400\",\"pipei_max\":\"456\"},{\"pipei_dan_num\":10,\"pipei_dan_run\":\"7\",\"pipei_min\":\"400\",\"pipei_max\":\"456\"},{\"pipei_dan_num\":11,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":12,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":13,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":14,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":15,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":16,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":17,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":18,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":19,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":20,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":21,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"}]', 0);
INSERT INTO `xy_grouping` VALUES (55, 0, 'เชือดบิลเเรก', '[{\"pipei_dan_num\":1,\"pipei_dan_run\":\"45\",\"pipei_min\":\"145\",\"pipei_max\":\"150\"},{\"pipei_dan_num\":2,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":3,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":4,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":5,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":6,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":7,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":8,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":9,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":10,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":11,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":12,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":13,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":14,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":15,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":16,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":17,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":18,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":19,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":20,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":21,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"}]', 0);
INSERT INTO `xy_grouping` VALUES (56, 0, 'เชือด 7-10 โปร 1000', '[{\"pipei_dan_num\":1,\"pipei_dan_run\":\"12\",\"pipei_min\":\"45\",\"pipei_max\":\"75\"},{\"pipei_dan_num\":2,\"pipei_dan_run\":\"10\",\"pipei_min\":\"45\",\"pipei_max\":\"75\"},{\"pipei_dan_num\":3,\"pipei_dan_run\":\"12\",\"pipei_min\":\"45\",\"pipei_max\":\"75\"},{\"pipei_dan_num\":4,\"pipei_dan_run\":\"13\",\"pipei_min\":\"45\",\"pipei_max\":\"75\"},{\"pipei_dan_num\":5,\"pipei_dan_run\":\"10\",\"pipei_min\":\"45\",\"pipei_max\":\"75\"},{\"pipei_dan_num\":6,\"pipei_dan_run\":\"13\",\"pipei_min\":\"45\",\"pipei_max\":\"75\"},{\"pipei_dan_num\":7,\"pipei_dan_run\":\"36\",\"pipei_min\":\"250\",\"pipei_max\":\"260\"},{\"pipei_dan_num\":8,\"pipei_dan_run\":\"13\",\"pipei_min\":\"45\",\"pipei_max\":\"75\"},{\"pipei_dan_num\":9,\"pipei_dan_run\":\"40\",\"pipei_min\":\"350\",\"pipei_max\":\"380\"},{\"pipei_dan_num\":10,\"pipei_dan_run\":\"17\",\"pipei_min\":\"45\",\"pipei_max\":\"75\"},{\"pipei_dan_num\":11,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":12,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":13,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":14,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":15,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":16,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":17,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":18,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":19,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":20,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":21,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"}]', 0);
INSERT INTO `xy_grouping` VALUES (57, 0, 'ไม่เข้าโปร  500-100', '[{\"pipei_dan_num\":1,\"pipei_dan_run\":\"7\",\"pipei_min\":\"40\",\"pipei_max\":\"65\"},{\"pipei_dan_num\":2,\"pipei_dan_run\":\"6\",\"pipei_min\":\"40\",\"pipei_max\":\"65\"},{\"pipei_dan_num\":3,\"pipei_dan_run\":\"5\",\"pipei_min\":\"40\",\"pipei_max\":\"65\"},{\"pipei_dan_num\":4,\"pipei_dan_run\":\"4\",\"pipei_min\":\"40\",\"pipei_max\":\"65\"},{\"pipei_dan_num\":5,\"pipei_dan_run\":\"3\",\"pipei_min\":\"40\",\"pipei_max\":\"65\"},{\"pipei_dan_num\":6,\"pipei_dan_run\":\"2\",\"pipei_min\":\"40\",\"pipei_max\":\"65\"},{\"pipei_dan_num\":7,\"pipei_dan_run\":\"1\",\"pipei_min\":\"40\",\"pipei_max\":\"65\"},{\"pipei_dan_num\":8,\"pipei_dan_run\":\"39\",\"pipei_min\":\"160\",\"pipei_max\":\"165\"},{\"pipei_dan_num\":9,\"pipei_dan_run\":\"2\",\"pipei_min\":\"40\",\"pipei_max\":\"65\"},{\"pipei_dan_num\":10,\"pipei_dan_run\":\"45\",\"pipei_min\":\"150\",\"pipei_max\":\"155\"},{\"pipei_dan_num\":11,\"pipei_dan_run\":\"2\",\"pipei_min\":\"40\",\"pipei_max\":\"65\"},{\"pipei_dan_num\":12,\"pipei_dan_run\":\"1\",\"pipei_min\":\"40\",\"pipei_max\":\"65\"},{\"pipei_dan_num\":13,\"pipei_dan_run\":\"4\",\"pipei_min\":\"40\",\"pipei_max\":\"65\"},{\"pipei_dan_num\":14,\"pipei_dan_run\":\"3\",\"pipei_min\":\"40\",\"pipei_max\":\"65\"},{\"pipei_dan_num\":15,\"pipei_dan_run\":\"2\",\"pipei_min\":\"40\",\"pipei_max\":\"65\"},{\"pipei_dan_num\":16,\"pipei_dan_run\":\"1\",\"pipei_min\":\"40\",\"pipei_max\":\"65\"},{\"pipei_dan_num\":17,\"pipei_dan_run\":\"35\",\"pipei_min\":\"250\",\"pipei_max\":\"260\"},{\"pipei_dan_num\":18,\"pipei_dan_run\":\"7\",\"pipei_min\":\"40\",\"pipei_max\":\"65\"},{\"pipei_dan_num\":19,\"pipei_dan_run\":\"6\",\"pipei_min\":\"40\",\"pipei_max\":\"65\"},{\"pipei_dan_num\":20,\"pipei_dan_run\":\"40\",\"pipei_min\":\"260\",\"pipei_max\":\"270\"},{\"pipei_dan_num\":21,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"}]', 0);
INSERT INTO `xy_grouping` VALUES (58, 0, 'โปร 500 เชือด 8 กับ 10', '[{\"pipei_dan_num\":1,\"pipei_dan_run\":\"7\",\"pipei_min\":\"45\",\"pipei_max\":\"75\"},{\"pipei_dan_num\":2,\"pipei_dan_run\":\"5\",\"pipei_min\":\"45\",\"pipei_max\":\"75\"},{\"pipei_dan_num\":3,\"pipei_dan_run\":\"6\",\"pipei_min\":\"45\",\"pipei_max\":\"75\"},{\"pipei_dan_num\":4,\"pipei_dan_run\":\"7\",\"pipei_min\":\"45\",\"pipei_max\":\"75\"},{\"pipei_dan_num\":5,\"pipei_dan_run\":\"8\",\"pipei_min\":\"45\",\"pipei_max\":\"75\"},{\"pipei_dan_num\":6,\"pipei_dan_run\":\"2\",\"pipei_min\":\"45\",\"pipei_max\":\"75\"},{\"pipei_dan_num\":7,\"pipei_dan_run\":\"3\",\"pipei_min\":\"45\",\"pipei_max\":\"75\"},{\"pipei_dan_num\":8,\"pipei_dan_run\":\"45\",\"pipei_min\":\"205\",\"pipei_max\":\"209\"},{\"pipei_dan_num\":9,\"pipei_dan_run\":\"2\",\"pipei_min\":\"45\",\"pipei_max\":\"75\"},{\"pipei_dan_num\":10,\"pipei_dan_run\":\"50\",\"pipei_min\":\"180\",\"pipei_max\":\"190\"},{\"pipei_dan_num\":11,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":12,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":13,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":14,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":15,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":16,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":17,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":18,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":19,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":20,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":21,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"}]', 0);
INSERT INTO `xy_grouping` VALUES (59, 1, 'โปร 300 20 ครั้ง', '[{\"pipei_dan_num\":1,\"pipei_dan_run\":\"39\",\"pipei_min\":\"150\",\"pipei_max\":\"230\"},{\"pipei_dan_num\":2,\"pipei_dan_run\":\"25\",\"pipei_min\":\"150\",\"pipei_max\":\"230\"},{\"pipei_dan_num\":3,\"pipei_dan_run\":\"35\",\"pipei_min\":\"150\",\"pipei_max\":\"230\"},{\"pipei_dan_num\":4,\"pipei_dan_run\":\"14\",\"pipei_min\":\"150\",\"pipei_max\":\"230\"},{\"pipei_dan_num\":5,\"pipei_dan_run\":\"25\",\"pipei_min\":\"150\",\"pipei_max\":\"230\"},{\"pipei_dan_num\":6,\"pipei_dan_run\":\"36\",\"pipei_min\":\"150\",\"pipei_max\":\"230\"},{\"pipei_dan_num\":7,\"pipei_dan_run\":\"25\",\"pipei_min\":\"150\",\"pipei_max\":\"230\"},{\"pipei_dan_num\":8,\"pipei_dan_run\":\"36\",\"pipei_min\":\"150\",\"pipei_max\":\"230\"},{\"pipei_dan_num\":9,\"pipei_dan_run\":\"25\",\"pipei_min\":\"150\",\"pipei_max\":\"230\"},{\"pipei_dan_num\":10,\"pipei_dan_run\":\"28\",\"pipei_min\":\"150\",\"pipei_max\":\"230\"},{\"pipei_dan_num\":11,\"pipei_dan_run\":\"27\",\"pipei_min\":\"150\",\"pipei_max\":\"230\"},{\"pipei_dan_num\":12,\"pipei_dan_run\":\"39\",\"pipei_min\":\"150\",\"pipei_max\":\"230\"},{\"pipei_dan_num\":13,\"pipei_dan_run\":\"38\",\"pipei_min\":\"150\",\"pipei_max\":\"230\"},{\"pipei_dan_num\":14,\"pipei_dan_run\":\"35\",\"pipei_min\":\"150\",\"pipei_max\":\"230\"},{\"pipei_dan_num\":15,\"pipei_dan_run\":\"27\",\"pipei_min\":\"150\",\"pipei_max\":\"230\"},{\"pipei_dan_num\":16,\"pipei_dan_run\":\"22\",\"pipei_min\":\"150\",\"pipei_max\":\"230\"},{\"pipei_dan_num\":17,\"pipei_dan_run\":\"24\",\"pipei_min\":\"150\",\"pipei_max\":\"230\"},{\"pipei_dan_num\":18,\"pipei_dan_run\":\"29\",\"pipei_min\":\"150\",\"pipei_max\":\"230\"},{\"pipei_dan_num\":19,\"pipei_dan_run\":\"39\",\"pipei_min\":\"150\",\"pipei_max\":\"230\"},{\"pipei_dan_num\":20,\"pipei_dan_run\":\"27\",\"pipei_min\":\"150\",\"pipei_max\":\"230\"},{\"pipei_dan_num\":21,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"}]', 0);
INSERT INTO `xy_grouping` VALUES (60, 1, '300 โปร 10 ครั้ง', '[{\"pipei_dan_num\":1,\"pipei_dan_run\":\"65\",\"pipei_min\":\"100\",\"pipei_max\":\"260\"},{\"pipei_dan_num\":2,\"pipei_dan_run\":\"69\",\"pipei_min\":\"100\",\"pipei_max\":\"260\"},{\"pipei_dan_num\":3,\"pipei_dan_run\":\"75\",\"pipei_min\":\"100\",\"pipei_max\":\"260\"},{\"pipei_dan_num\":4,\"pipei_dan_run\":\"65\",\"pipei_min\":\"100\",\"pipei_max\":\"260\"},{\"pipei_dan_num\":5,\"pipei_dan_run\":\"76\",\"pipei_min\":\"100\",\"pipei_max\":\"260\"},{\"pipei_dan_num\":6,\"pipei_dan_run\":\"65\",\"pipei_min\":\"100\",\"pipei_max\":\"260\"},{\"pipei_dan_num\":7,\"pipei_dan_run\":\"65\",\"pipei_min\":\"100\",\"pipei_max\":\"260\"},{\"pipei_dan_num\":8,\"pipei_dan_run\":\"67\",\"pipei_min\":\"100\",\"pipei_max\":\"260\"},{\"pipei_dan_num\":9,\"pipei_dan_run\":\"79\",\"pipei_min\":\"100\",\"pipei_max\":\"260\"},{\"pipei_dan_num\":10,\"pipei_dan_run\":\"72\",\"pipei_min\":\"100\",\"pipei_max\":\"260\"},{\"pipei_dan_num\":11,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":12,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":13,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":14,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":15,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":16,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":17,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":18,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":19,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":20,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":21,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"}]', 0);
INSERT INTO `xy_grouping` VALUES (61, 0, 'เชือบิล 3', '[{\"pipei_dan_num\":1,\"pipei_dan_run\":\"4\",\"pipei_min\":\"40\",\"pipei_max\":\"70\"},{\"pipei_dan_num\":2,\"pipei_dan_run\":\"40\",\"pipei_min\":\"235\",\"pipei_max\":\"250\"},{\"pipei_dan_num\":3,\"pipei_dan_run\":\"40\",\"pipei_min\":\"235\",\"pipei_max\":\"250\"},{\"pipei_dan_num\":4,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":5,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":6,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":7,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":8,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":9,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":10,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":11,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":12,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":13,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":14,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":15,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":16,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":17,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":18,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":19,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":20,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"},{\"pipei_dan_num\":21,\"pipei_dan_run\":\"0\",\"pipei_min\":\"0\",\"pipei_max\":\"0\"}]', 0);

-- ----------------------------
-- Table structure for xy_index_msg
-- ----------------------------
DROP TABLE IF EXISTS `xy_index_msg`;
CREATE TABLE `xy_index_msg`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `en_title` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `fr_title` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `es_title` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `pt_title` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '文本内容',
  `en_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `fr_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `es_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `pt_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `type` int(11) NOT NULL DEFAULT 1 COMMENT '1平台公告 2平台简介 3抢单规则 4代理合作 5常见问题',
  `addtime` int(11) NOT NULL COMMENT '发表时间',
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '0发布 1不发布',
  `author` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '作者',
  `kr_title` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `kr_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `jp_title` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `jp_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '首页内容表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of xy_index_msg
-- ----------------------------
INSERT INTO `xy_index_msg` VALUES (1, '平台公告', 'Platform announcemen', 'Platform announcemen', 'Platform announcemen', 'Platform announcemen', '<pre data-placeholder=\"คำแปล\" dir=\"ltr\" id=\"tw-target-text\">\r\nเรียนสมาชิก สวัสดี! เกี่ยวกับบัตรโอน มีปัญหาในการควบคุมความเสี่ยงในการโอนจากระยะไกล เนื่องจาก  เหรียญUSDT  เป็นซอฟต์แวร์การชำระเงินของบุคคลที่สาม กระทรวงข้อมูลสาธารณะจึงมีหน้าที่ป้องกันการฟอกเงิน ปัญหาดังกล่าวเป็นเรื่องปกติ โปรดอย่ากังวล ขอแนะนำให้คุณใช้กระเป๋าเงิน bitcoin เติมเงินกระเป๋าเงิน USDT  ง่ายและรวดเร็ว ขอให้คุณมีความสุขในชีวิต!</pre>', '<p>เรียนสมาชิก สวัสดี! เกี่ยวกับบัตรโอน มีปัญหาในการควบคุมความเสี่ยงในการโอนจากระยะไกล เนื่องจาก เหรียญUSDT เป็นซอฟต์แวร์การชำระเงินของบุคคลที่สาม กระทรวงข้อมูลสาธารณะจึงมีหน้าที่ป้องกันการฟอกเงิน ปัญหาดังกล่าวเป็นเรื่องปกติ โปรดอย่ากังวล ขอแนะนำให้คุณใช้กระเป๋าเงิน bitcoin เติมเงินกระเป๋าเงิน USDT ง่ายและรวดเร็ว ขอให้คุณมีความสุขในชีวิต!</p>', '<p>เรียนสมาชิก สวัสดี! เกี่ยวกับบัตรโอน มีปัญหาในการควบคุมความเสี่ยงในการโอนจากระยะไกล เนื่องจาก เหรียญUSDT เป็นซอฟต์แวร์การชำระเงินของบุคคลที่สาม กระทรวงข้อมูลสาธารณะจึงมีหน้าที่ป้องกันการฟอกเงิน ปัญหาดังกล่าวเป็นเรื่องปกติ โปรดอย่ากังวล ขอแนะนำให้คุณใช้กระเป๋าเงิน bitcoin เติมเงินกระเป๋าเงิน USDT ง่ายและรวดเร็ว ขอให้คุณมีความสุขในชีวิต!</p>', '<p>เรียนสมาชิก สวัสดี! เกี่ยวกับบัตรโอน มีปัญหาในการควบคุมความเสี่ยงในการโอนจากระยะไกล เนื่องจาก เหรียญUSDT เป็นซอฟต์แวร์การชำระเงินของบุคคลที่สาม กระทรวงข้อมูลสาธารณะจึงมีหน้าที่ป้องกันการฟอกเงิน ปัญหาดังกล่าวเป็นเรื่องปกติ โปรดอย่ากังวล ขอแนะนำให้คุณใช้กระเป๋าเงิน bitcoin เติมเงินกระเป๋าเงิน USDT ง่ายและรวดเร็ว ขอให้คุณมีความสุขในชีวิต!</p>', '<p>เรียนสมาชิก สวัสดี! เกี่ยวกับบัตรโอน มีปัญหาในการควบคุมความเสี่ยงในการโอนจากระยะไกล เนื่องจาก เหรียญUSDT เป็นซอฟต์แวร์การชำระเงินของบุคคลที่สาม กระทรวงข้อมูลสาธารณะจึงมีหน้าที่ป้องกันการฟอกเงิน ปัญหาดังกล่าวเป็นเรื่องปกติ โปรดอย่ากังวล ขอแนะนำให้คุณใช้กระเป๋าเงิน bitcoin เติมเงินกระเป๋าเงิน USDT ง่ายและรวดเร็ว ขอให้คุณมีความสุขในชีวิต!</p>', 3, 1647762641, 1, 'admin', '平台公告', '<p>เรียนสมาชิก สวัสดี! เกี่ยวกับบัตรโอน มีปัญหาในการควบคุมความเสี่ยงในการโอนจากระยะไกล เนื่องจาก เหรียญUSDT เป็นซอฟต์แวร์การชำระเงินของบุคคลที่สาม กระทรวงข้อมูลสาธารณะจึงมีหน้าที่ป้องกันการฟอกเงิน ปัญหาดังกล่าวเป็นเรื่องปกติ โปรดอย่ากังวล ขอแนะนำให้คุณใช้กระเป๋าเงิน bitcoin เติมเงินกระเป๋าเงิน USDT ง่ายและรวดเร็ว ขอให้คุณมีความสุขในชีวิต!</p>', 'プラットフォームの発表', '<p>เรียนสมาชิก สวัสดี! เกี่ยวกับบัตรโอน มีปัญหาในการควบคุมความเสี่ยงในการโอนจากระยะไกล เนื่องจาก เหรียญUSDT เป็นซอฟต์แวร์การชำระเงินของบุคคลที่สาม กระทรวงข้อมูลสาธารณะจึงมีหน้าที่ป้องกันการฟอกเงิน ปัญหาดังกล่าวเป็นเรื่องปกติ โปรดอย่ากังวล ขอแนะนำให้คุณใช้กระเป๋าเงิน bitcoin เติมเงินกระเป๋าเงิน USDT ง่ายและรวดเร็ว ขอให้คุณมีความสุขในชีวิต!</p>');
INSERT INTO `xy_index_msg` VALUES (2, '平台简介', 'company profile ', 'Profil de la société', 'Perfil de la empresa', 'perfil de companhia', '<p>ของเราเป็นการทำกำไรผ่านแพลตฟอร์ม<br />\r\nโดยการเพิ่มยอดขายการสั่งซื้อให้แบรนด์สินค้าชั้นนำเพียงแค่กดจับออเดอร์ก็ทำกำไรได้แล้วค่ะไม่ใช่การพนัน//-ไม่ใช่แชร์ลูกโซ่-//</p>\r\n\r\n<p>สินค้าทุกอย่างที่ลูกค้าได้ทำการกดรับออเดอร์ระบบจับโดยอัตโนมัติหากมีสินค้าที่มียอดมีมากกว่าในระบบลูกค้าสามารถทำการเพิ่มยอดชำระเพื่อทำคำสั่งซื้อให้เสร็จสิ้นและถอนเงินค่ะ</p>\r\n\r\n<p>ในการเข้าจับออเดอร์ตรงนี้ เราจะได้ค่าคอมมิชชั่นจาการที่เราเข้าทำการจับออเดอร์<br />\r\nทางร้านจะจ้างทางระบบเพื่อเป็นการโปรโมทสินค้าทางระบบ เพิ่มยอดขายให้กับแบนด์กับร้านค้า</p>\r\n\r\n<p>ระบบออเดอร์จะรีวันต่อวันนะค่ะ เป็นระบบอัตโนมัติ</p>\r\n\r\n<p>（แพตฟอร์ม ของเราเป็นตัวกลางซื้อขายของออนไลน์ให้กับร้านค้าเล็กๆจนถึงร้านค้าใหญ่ๆที่ต้องการเพิ่มยอดขายให้กับทางร้าน โดยมีร้านค้าจาก eBay-Alibaba-Amazon-BestBuy และอื่นๆอีกมากมายค่อยซื้อสินค้า）</p>\r\n\r\n<p>บริษัทมีรายได้จากการซื้อสินค้าของพาร์ทเนอร์สินค้าทุกอย่างมีบวกค่าบริการของแพตฟอร์มไปเรียบร้อย</p>\r\n\r\n<p>ส่วนเงินกำไรที่ลูกค้าได้ จะได้จากบริษัททางเรา เป็นคนแบ่งรายได้ให้กับลูกค้า<br />\r\nเงินที่ลูกค้าเติมเข้ามาเป็นเงินที่ลูกค้าร่วมลงทุนกับบริษัท<br />\r\nส่วนสินค้ามาจากร้านค้าที่ต้องการเพิ่มยอดขาย<br />\r\n&nbsp;</p>\r\n\r\n<p><br />\r\n<img alt=\"\" src=\"/upload/6e70fbcd7101ee03/7fec7d328fbc46d8.png\" style=\"max-width:100%;border:0\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', '<p>ของเราเป็นการทำกำไรผ่านแพลตฟอร์ม<br />\r\nโดยการเพิ่มยอดขายการสั่งซื้อให้แบรนด์สินค้าชั้นนำเพียงแค่กดจับออเดอร์ก็ทำกำไรได้แล้วค่ะไม่ใช่การพนัน//-ไม่ใช่แชร์ลูกโซ่-//</p>\r\n\r\n<p>สินค้าทุกอย่างที่ลูกค้าได้ทำการกดรับออเดอร์ระบบจับโดยอัตโนมัติหากมีสินค้าที่มียอดมีมากกว่าในระบบลูกค้าสามารถทำการเพิ่มยอดชำระเพื่อทำคำสั่งซื้อให้เสร็จสิ้นและถอนเงินค่ะ</p>\r\n\r\n<p>ในการเข้าจับออเดอร์ตรงนี้ เราจะได้ค่าคอมมิชชั่นจาการที่เราเข้าทำการจับออเดอร์<br />\r\nทางร้านจะจ้างทางระบบเพื่อเป็นการโปรโมทสินค้าทางระบบ เพิ่มยอดขายให้กับแบนด์กับร้านค้า</p>\r\n\r\n<p>ระบบออเดอร์จะรีวันต่อวันนะค่ะ เป็นระบบอัตโนมัติ</p>\r\n\r\n<p>（แพตฟอร์ม ของเราเป็นตัวกลางซื้อขายของออนไลน์ให้กับร้านค้าเล็กๆจนถึงร้านค้าใหญ่ๆที่ต้องการเพิ่มยอดขายให้กับทางร้าน โดยมีร้านค้าจาก eBay-Alibaba-Amazon-BestBuy และอื่นๆอีกมากมายค่อยซื้อสินค้า）</p>\r\n\r\n<p>บริษัทมีรายได้จากการซื้อสินค้าของพาร์ทเนอร์สินค้าทุกอย่างมีบวกค่าบริการของแพตฟอร์มไปเรียบร้อย</p>\r\n\r\n<p>ส่วนเงินกำไรที่ลูกค้าได้ จะได้จากบริษัททางเรา เป็นคนแบ่งรายได้ให้กับลูกค้า<br />\r\nเงินที่ลูกค้าเติมเข้ามาเป็นเงินที่ลูกค้าร่วมลงทุนกับบริษัท<br />\r\nส่วนสินค้ามาจากร้านค้าที่ต้องการเพิ่มยอดขาย<br />\r\n&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"/upload/6e70fbcd7101ee03/7fec7d328fbc46d8.png\" style=\"max-width:100%;border:0\" /></p>', '<p>ของเราเป็นการทำกำไรผ่านแพลตฟอร์ม<br />\r\nโดยการเพิ่มยอดขายการสั่งซื้อให้แบรนด์สินค้าชั้นนำเพียงแค่กดจับออเดอร์ก็ทำกำไรได้แล้วค่ะไม่ใช่การพนัน//-ไม่ใช่แชร์ลูกโซ่-//</p>\r\n\r\n<p>สินค้าทุกอย่างที่ลูกค้าได้ทำการกดรับออเดอร์ระบบจับโดยอัตโนมัติหากมีสินค้าที่มียอดมีมากกว่าในระบบลูกค้าสามารถทำการเพิ่มยอดชำระเพื่อทำคำสั่งซื้อให้เสร็จสิ้นและถอนเงินค่ะ</p>\r\n\r\n<p>ในการเข้าจับออเดอร์ตรงนี้ เราจะได้ค่าคอมมิชชั่นจาการที่เราเข้าทำการจับออเดอร์<br />\r\nทางร้านจะจ้างทางระบบเพื่อเป็นการโปรโมทสินค้าทางระบบ เพิ่มยอดขายให้กับแบนด์กับร้านค้า</p>\r\n\r\n<p>ระบบออเดอร์จะรีวันต่อวันนะค่ะ เป็นระบบอัตโนมัติ</p>\r\n\r\n<p>（แพตฟอร์ม ของเราเป็นตัวกลางซื้อขายของออนไลน์ให้กับร้านค้าเล็กๆจนถึงร้านค้าใหญ่ๆที่ต้องการเพิ่มยอดขายให้กับทางร้าน โดยมีร้านค้าจาก eBay-Alibaba-Amazon-BestBuy และอื่นๆอีกมากมายค่อยซื้อสินค้า）</p>\r\n\r\n<p>บริษัทมีรายได้จากการซื้อสินค้าของพาร์ทเนอร์สินค้าทุกอย่างมีบวกค่าบริการของแพตฟอร์มไปเรียบร้อย</p>\r\n\r\n<p>ส่วนเงินกำไรที่ลูกค้าได้ จะได้จากบริษัททางเรา เป็นคนแบ่งรายได้ให้กับลูกค้า<br />\r\nเงินที่ลูกค้าเติมเข้ามาเป็นเงินที่ลูกค้าร่วมลงทุนกับบริษัท<br />\r\nส่วนสินค้ามาจากร้านค้าที่ต้องการเพิ่มยอดขาย<br />\r\n<img alt=\"\" src=\"/upload/6e70fbcd7101ee03/7fec7d328fbc46d8.png\" style=\"max-width:100%;border:0\" /></p>', '<p>ของเราเป็นการทำกำไรผ่านแพลตฟอร์ม<br />\r\nโดยการเพิ่มยอดขายการสั่งซื้อให้แบรนด์สินค้าชั้นนำเพียงแค่กดจับออเดอร์ก็ทำกำไรได้แล้วค่ะไม่ใช่การพนัน//-ไม่ใช่แชร์ลูกโซ่-//</p>\r\n\r\n<p>สินค้าทุกอย่างที่ลูกค้าได้ทำการกดรับออเดอร์ระบบจับโดยอัตโนมัติหากมีสินค้าที่มียอดมีมากกว่าในระบบลูกค้าสามารถทำการเพิ่มยอดชำระเพื่อทำคำสั่งซื้อให้เสร็จสิ้นและถอนเงินค่ะ</p>\r\n\r\n<p>ในการเข้าจับออเดอร์ตรงนี้ เราจะได้ค่าคอมมิชชั่นจาการที่เราเข้าทำการจับออเดอร์<br />\r\nทางร้านจะจ้างทางระบบเพื่อเป็นการโปรโมทสินค้าทางระบบ เพิ่มยอดขายให้กับแบนด์กับร้านค้า</p>\r\n\r\n<p>ระบบออเดอร์จะรีวันต่อวันนะค่ะ เป็นระบบอัตโนมัติ</p>\r\n\r\n<p>（แพตฟอร์ม ของเราเป็นตัวกลางซื้อขายของออนไลน์ให้กับร้านค้าเล็กๆจนถึงร้านค้าใหญ่ๆที่ต้องการเพิ่มยอดขายให้กับทางร้าน โดยมีร้านค้าจาก eBay-Alibaba-Amazon-BestBuy และอื่นๆอีกมากมายค่อยซื้อสินค้า）</p>\r\n\r\n<p>บริษัทมีรายได้จากการซื้อสินค้าของพาร์ทเนอร์สินค้าทุกอย่างมีบวกค่าบริการของแพตฟอร์มไปเรียบร้อย</p>\r\n\r\n<p>ส่วนเงินกำไรที่ลูกค้าได้ จะได้จากบริษัททางเรา เป็นคนแบ่งรายได้ให้กับลูกค้า<br />\r\nเงินที่ลูกค้าเติมเข้ามาเป็นเงินที่ลูกค้าร่วมลงทุนกับบริษัท<br />\r\nส่วนสินค้ามาจากร้านค้าที่ต้องการเพิ่มยอดขาย<br />\r\n<img alt=\"\" src=\"/upload/6e70fbcd7101ee03/7fec7d328fbc46d8.png\" style=\"max-width:100%;border:0\" /></p>', '<p>ของเราเป็นการทำกำไรผ่านแพลตฟอร์ม<br />\r\nโดยการเพิ่มยอดขายการสั่งซื้อให้แบรนด์สินค้าชั้นนำเพียงแค่กดจับออเดอร์ก็ทำกำไรได้แล้วค่ะไม่ใช่การพนัน//-ไม่ใช่แชร์ลูกโซ่-//</p>\r\n\r\n<p>สินค้าทุกอย่างที่ลูกค้าได้ทำการกดรับออเดอร์ระบบจับโดยอัตโนมัติหากมีสินค้าที่มียอดมีมากกว่าในระบบลูกค้าสามารถทำการเพิ่มยอดชำระเพื่อทำคำสั่งซื้อให้เสร็จสิ้นและถอนเงินค่ะ</p>\r\n\r\n<p>ในการเข้าจับออเดอร์ตรงนี้ เราจะได้ค่าคอมมิชชั่นจาการที่เราเข้าทำการจับออเดอร์<br />\r\nทางร้านจะจ้างทางระบบเพื่อเป็นการโปรโมทสินค้าทางระบบ เพิ่มยอดขายให้กับแบนด์กับร้านค้า</p>\r\n\r\n<p>ระบบออเดอร์จะรีวันต่อวันนะค่ะ เป็นระบบอัตโนมัติ</p>\r\n\r\n<p>（แพตฟอร์ม ของเราเป็นตัวกลางซื้อขายของออนไลน์ให้กับร้านค้าเล็กๆจนถึงร้านค้าใหญ่ๆที่ต้องการเพิ่มยอดขายให้กับทางร้าน โดยมีร้านค้าจาก eBay-Alibaba-Amazon-BestBuy และอื่นๆอีกมากมายค่อยซื้อสินค้า）</p>\r\n\r\n<p>บริษัทมีรายได้จากการซื้อสินค้าของพาร์ทเนอร์สินค้าทุกอย่างมีบวกค่าบริการของแพตฟอร์มไปเรียบร้อย</p>\r\n\r\n<p>ส่วนเงินกำไรที่ลูกค้าได้ จะได้จากบริษัททางเรา เป็นคนแบ่งรายได้ให้กับลูกค้า<br />\r\nเงินที่ลูกค้าเติมเข้ามาเป็นเงินที่ลูกค้าร่วมลงทุนกับบริษัท<br />\r\nส่วนสินค้ามาจากร้านค้าที่ต้องการเพิ่มยอดขาย<br />\r\n<img alt=\"\" src=\"/upload/6e70fbcd7101ee03/7fec7d328fbc46d8.png\" style=\"max-width:100%;border:0\" /></p>', 3, 1659974848, 1, 'admin', '平台简介', '<p>ของเราเป็นการทำกำไรผ่านแพลตฟอร์ม<br />\r\nโดยการเพิ่มยอดขายการสั่งซื้อให้แบรนด์สินค้าชั้นนำเพียงแค่กดจับออเดอร์ก็ทำกำไรได้แล้วค่ะไม่ใช่การพนัน//-ไม่ใช่แชร์ลูกโซ่-//</p>\r\n\r\n<p>สินค้าทุกอย่างที่ลูกค้าได้ทำการกดรับออเดอร์ระบบจับโดยอัตโนมัติหากมีสินค้าที่มียอดมีมากกว่าในระบบลูกค้าสามารถทำการเพิ่มยอดชำระเพื่อทำคำสั่งซื้อให้เสร็จสิ้นและถอนเงินค่ะ</p>\r\n\r\n<p>ในการเข้าจับออเดอร์ตรงนี้ เราจะได้ค่าคอมมิชชั่นจาการที่เราเข้าทำการจับออเดอร์<br />\r\nทางร้านจะจ้างทางระบบเพื่อเป็นการโปรโมทสินค้าทางระบบ เพิ่มยอดขายให้กับแบนด์กับร้านค้า</p>\r\n\r\n<p>ระบบออเดอร์จะรีวันต่อวันนะค่ะ เป็นระบบอัตโนมัติ</p>\r\n\r\n<p>（แพตฟอร์ม ของเราเป็นตัวกลางซื้อขายของออนไลน์ให้กับร้านค้าเล็กๆจนถึงร้านค้าใหญ่ๆที่ต้องการเพิ่มยอดขายให้กับทางร้าน โดยมีร้านค้าจาก eBay-Alibaba-Amazon-BestBuy และอื่นๆอีกมากมายค่อยซื้อสินค้า）</p>\r\n\r\n<p>บริษัทมีรายได้จากการซื้อสินค้าของพาร์ทเนอร์สินค้าทุกอย่างมีบวกค่าบริการของแพตฟอร์มไปเรียบร้อย</p>\r\n\r\n<p>ส่วนเงินกำไรที่ลูกค้าได้ จะได้จากบริษัททางเรา เป็นคนแบ่งรายได้ให้กับลูกค้า<br />\r\nเงินที่ลูกค้าเติมเข้ามาเป็นเงินที่ลูกค้าร่วมลงทุนกับบริษัท<br />\r\nส่วนสินค้ามาจากร้านค้าที่ต้องการเพิ่มยอดขาย<br />\r\n<img alt=\"\" src=\"/upload/6e70fbcd7101ee03/7fec7d328fbc46d8.png\" style=\"max-width:100%;border:0\" /></p>', 'プラットフォームの紹介', '<p>ของเราเป็นการทำกำไรผ่านแพลตฟอร์ม<br />\r\nโดยการเพิ่มยอดขายการสั่งซื้อให้แบรนด์สินค้าชั้นนำเพียงแค่กดจับออเดอร์ก็ทำกำไรได้แล้วค่ะไม่ใช่การพนัน//-ไม่ใช่แชร์ลูกโซ่-//</p>\r\n\r\n<p>สินค้าทุกอย่างที่ลูกค้าได้ทำการกดรับออเดอร์ระบบจับโดยอัตโนมัติหากมีสินค้าที่มียอดมีมากกว่าในระบบลูกค้าสามารถทำการเพิ่มยอดชำระเพื่อทำคำสั่งซื้อให้เสร็จสิ้นและถอนเงินค่ะ</p>\r\n\r\n<p>ในการเข้าจับออเดอร์ตรงนี้ เราจะได้ค่าคอมมิชชั่นจาการที่เราเข้าทำการจับออเดอร์<br />\r\nทางร้านจะจ้างทางระบบเพื่อเป็นการโปรโมทสินค้าทางระบบ เพิ่มยอดขายให้กับแบนด์กับร้านค้า</p>\r\n\r\n<p>ระบบออเดอร์จะรีวันต่อวันนะค่ะ เป็นระบบอัตโนมัติ</p>\r\n\r\n<p>（แพตฟอร์ม ของเราเป็นตัวกลางซื้อขายของออนไลน์ให้กับร้านค้าเล็กๆจนถึงร้านค้าใหญ่ๆที่ต้องการเพิ่มยอดขายให้กับทางร้าน โดยมีร้านค้าจาก eBay-Alibaba-Amazon-BestBuy และอื่นๆอีกมากมายค่อยซื้อสินค้า）</p>\r\n\r\n<p>บริษัทมีรายได้จากการซื้อสินค้าของพาร์ทเนอร์สินค้าทุกอย่างมีบวกค่าบริการของแพตฟอร์มไปเรียบร้อย</p>\r\n\r\n<p>ส่วนเงินกำไรที่ลูกค้าได้ จะได้จากบริษัททางเรา เป็นคนแบ่งรายได้ให้กับลูกค้า<br />\r\nเงินที่ลูกค้าเติมเข้ามาเป็นเงินที่ลูกค้าร่วมลงทุนกับบริษัท<br />\r\nส่วนสินค้ามาจากร้านค้าที่ต้องการเพิ่มยอดขาย<br />\r\n<img alt=\"\" src=\"/upload/6e70fbcd7101ee03/7fec7d328fbc46d8.png\" style=\"max-width:100%;border:0\" /></p>');
INSERT INTO `xy_index_msg` VALUES (3, '抢单规则', 'Rule description', 'Description de la règle', 'Descripción de la regla', 'Descrição da regra', '<p><span style=\"font-size:18px;\">เนื่องจากมีข้อมูลการเติมเงินเป็นจำนวนมาก โปรดตรวจสอบหมายเลขบัตรบัญชีของแพลตฟอร์มนี้อย่างรอบคอบก่อนที่จะชาร์จใหม่ แพลตฟอร์มนี้จะเปลี่ยนบัญชีธนาคารเป็นครั้งคราว หากคุณมีคำถามใดๆ โปรดคลิกฝ่ายบริการลูกค้าออนไลน์ของแพลตฟอร์มเพื่อขอคำปรึกษา . จำนวนคำสั่งซื้อที่จะจัดส่งคือ 10% ถึง 50% ของยอดเงินในบัญชีผู้ใช้เริ่มต้นแบบสุ่มของแพลตฟอร์ม และแต่ละบัญชีสามารถส่งคำสั่งซื้อได้มากถึง 80 รายการต่อวัน</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:18px;\">เกี่ยวกับการถอนเงิน</span></p>\r\n\r\n<p><span style=\"font-size:18px;\">เพื่อป้องกันไม่ให้บุคคลใดทำการฟอกเงินหรือดำเนินการจ่ายเงินในลักษณะผิดปกติบนแพลตฟอร์มนี้ บัญชีของสมาชิกจะต้องดำเนินการตามคำสั่งซื้อขั้นต่ำ 10 รายการ และไม่สามารถเริ่มต้นการถอนได้หากคำสั่งซื้อที่เกี่ยวข้องไม่เสร็จสมบูรณ์ บัญชีสมาชิกสามารถถอนได้เต็มจำนวนหลังจากทำตามคำสั่งครบ 60 คำสั่ง+เงื่อนไขอื่นๆหากเข้าร่วมโปรโมชั่น&nbsp;หลังจากตรวจสอบการถอนสำเร็จแล้ว ฝ่ายบัญชีจะดำเนินการถอนเงินไม่เกิน 24ชั่วโมง&nbsp;จะมาถึงก่อนเวลา 24:00 น. ของวันถัดไป</span></p>\r\n\r\n<p><span style=\"font-size:18px;\">สำคัญ: ขอสงวนสิทธิ์ในการเตือนหรือระงับบัญชีของคุณหากตรวจพบกิจกรรมฉ้อโกง ซึ่งรวมถึงแต่ไม่จำกัดเฉพาะกรณีของการฉ้อโกงหรือพฤติกรรมที่เกี่ยวข้องอื่น ๆ เช่น &quot;การลงทะเบียนบัญชีที่มีสถานะเดียวกันและการเปิดหลายบัญชีด้วย IP&quot; สำหรับค่าคอมมิชชั่นและ ผลตอบแทน เมื่อพบแล้วจะถูกลงโทษอย่างรุนแรง<br />\r\nกฏที่แพลตฟอร์มกำหนดยอดเงินที่มีมากกว่า<br />\r\nจำนวน50,000บาทจึงต้องทำการชำระภาษี40%<br />\r\nหากเข้าร่วมโปรทางบริษัท ต้องดำเนินการให้จบโปรก่อนถึงจะสามารถถอนเงินได้</span></p>', '<p><span style=\"font-size:18px;\">เนื่องจากมีข้อมูลการเติมเงินเป็นจำนวนมาก โปรดตรวจสอบหมายเลขบัตรบัญชีของแพลตฟอร์มนี้อย่างรอบคอบก่อนที่จะชาร์จใหม่ แพลตฟอร์มนี้จะเปลี่ยนบัญชีธนาคารเป็นครั้งคราว หากคุณมีคำถามใดๆ โปรดคลิกฝ่ายบริการลูกค้าออนไลน์ของแพลตฟอร์มเพื่อขอคำปรึกษา . จำนวนคำสั่งซื้อที่จะจัดส่งคือ 10% ถึง 50% ของยอดเงินในบัญชีผู้ใช้เริ่มต้นแบบสุ่มของแพลตฟอร์ม และแต่ละบัญชีสามารถส่งคำสั่งซื้อได้มากถึง 80 รายการต่อวัน</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:18px;\">เกี่ยวกับการถอนเงิน</span></p>\r\n\r\n<p><span style=\"font-size:18px;\">เพื่อป้องกันไม่ให้บุคคลใดทำการฟอกเงินหรือดำเนินการจ่ายเงินในลักษณะผิดปกติบนแพลตฟอร์มนี้ บัญชีของสมาชิกจะต้องดำเนินการตามคำสั่งซื้อขั้นต่ำ 10 รายการ และไม่สามารถเริ่มต้นการถอนได้หากคำสั่งซื้อที่เกี่ยวข้องไม่เสร็จสมบูรณ์ บัญชีสมาชิกสามารถถอนได้เต็มจำนวนหลังจากทำตามคำสั่งครบ 60 คำสั่ง+เงื่อนไขอื่นๆหากเข้าร่วมโปรโมชั่น&nbsp;หลังจากตรวจสอบการถอนสำเร็จแล้ว ฝ่ายบัญชีจะดำเนินการถอนเงินไม่เกิน 24ชั่วโมง&nbsp;จะมาถึงก่อนเวลา 24:00 น. ของวันถัดไป</span></p>\r\n\r\n<p><span style=\"font-size:18px;\">สำคัญ: ขอสงวนสิทธิ์ในการเตือนหรือระงับบัญชีของคุณหากตรวจพบกิจกรรมฉ้อโกง ซึ่งรวมถึงแต่ไม่จำกัดเฉพาะกรณีของการฉ้อโกงหรือพฤติกรรมที่เกี่ยวข้องอื่น ๆ เช่น &quot;การลงทะเบียนบัญชีที่มีสถานะเดียวกันและการเปิดหลายบัญชีด้วย IP&quot; สำหรับค่าคอมมิชชั่นและ ผลตอบแทน เมื่อพบแล้วจะถูกลงโทษอย่างรุนแรง<br />\r\nกฏที่แพลตฟอร์มกำหนดยอดเงินที่มีมากกว่า<br />\r\nจำนวน50,000บาทจึงต้องทำการชำระภาษี40%<br />\r\nหากเข้าร่วมโปรทางบริษัท ต้องดำเนินการให้จบโปรก่อนถึงจะสามารถถอนเงินได้</span></p>', '<p><span style=\"font-size:18px;\">เนื่องจากมีข้อมูลการเติมเงินเป็นจำนวนมาก โปรดตรวจสอบหมายเลขบัตรบัญชีของแพลตฟอร์มนี้อย่างรอบคอบก่อนที่จะชาร์จใหม่ แพลตฟอร์มนี้จะเปลี่ยนบัญชีธนาคารเป็นครั้งคราว หากคุณมีคำถามใดๆ โปรดคลิกฝ่ายบริการลูกค้าออนไลน์ของแพลตฟอร์มเพื่อขอคำปรึกษา . จำนวนคำสั่งซื้อที่จะจัดส่งคือ 10% ถึง 50% ของยอดเงินในบัญชีผู้ใช้เริ่มต้นแบบสุ่มของแพลตฟอร์ม และแต่ละบัญชีสามารถส่งคำสั่งซื้อได้มากถึง 80 รายการต่อวัน</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:18px;\">เกี่ยวกับการถอนเงิน</span></p>\r\n\r\n<p><span style=\"font-size:18px;\">เพื่อป้องกันไม่ให้บุคคลใดทำการฟอกเงินหรือดำเนินการจ่ายเงินในลักษณะผิดปกติบนแพลตฟอร์มนี้ บัญชีของสมาชิกจะต้องดำเนินการตามคำสั่งซื้อขั้นต่ำ 10 รายการ และไม่สามารถเริ่มต้นการถอนได้หากคำสั่งซื้อที่เกี่ยวข้องไม่เสร็จสมบูรณ์ บัญชีสมาชิกสามารถถอนได้เต็มจำนวนหลังจากทำตามคำสั่งครบ 60 คำสั่ง+เงื่อนไขอื่นๆหากเข้าร่วมโปรโมชั่น&nbsp;หลังจากตรวจสอบการถอนสำเร็จแล้ว ฝ่ายบัญชีจะดำเนินการถอนเงินไม่เกิน 24ชั่วโมง&nbsp;จะมาถึงก่อนเวลา 24:00 น. ของวันถัดไป</span></p>\r\n\r\n<p><span style=\"font-size:18px;\">สำคัญ: ขอสงวนสิทธิ์ในการเตือนหรือระงับบัญชีของคุณหากตรวจพบกิจกรรมฉ้อโกง ซึ่งรวมถึงแต่ไม่จำกัดเฉพาะกรณีของการฉ้อโกงหรือพฤติกรรมที่เกี่ยวข้องอื่น ๆ เช่น &quot;การลงทะเบียนบัญชีที่มีสถานะเดียวกันและการเปิดหลายบัญชีด้วย IP&quot; สำหรับค่าคอมมิชชั่นและ ผลตอบแทน เมื่อพบแล้วจะถูกลงโทษอย่างรุนแรง<br />\r\nกฏที่แพลตฟอร์มกำหนดยอดเงินที่มีมากกว่า<br />\r\nจำนวน50,000บาทจึงต้องทำการชำระภาษี40%<br />\r\nหากเข้าร่วมโปรทางบริษัท ต้องดำเนินการให้จบโปรก่อนถึงจะสามารถถอนเงินได้</span></p>', '<p><span style=\"font-size:18px;\">เนื่องจากมีข้อมูลการเติมเงินเป็นจำนวนมาก โปรดตรวจสอบหมายเลขบัตรบัญชีของแพลตฟอร์มนี้อย่างรอบคอบก่อนที่จะชาร์จใหม่ แพลตฟอร์มนี้จะเปลี่ยนบัญชีธนาคารเป็นครั้งคราว หากคุณมีคำถามใดๆ โปรดคลิกฝ่ายบริการลูกค้าออนไลน์ของแพลตฟอร์มเพื่อขอคำปรึกษา . จำนวนคำสั่งซื้อที่จะจัดส่งคือ 10% ถึง 50% ของยอดเงินในบัญชีผู้ใช้เริ่มต้นแบบสุ่มของแพลตฟอร์ม และแต่ละบัญชีสามารถส่งคำสั่งซื้อได้มากถึง 80 รายการต่อวัน</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:18px;\">เกี่ยวกับการถอนเงิน</span></p>\r\n\r\n<p><span style=\"font-size:18px;\">เพื่อป้องกันไม่ให้บุคคลใดทำการฟอกเงินหรือดำเนินการจ่ายเงินในลักษณะผิดปกติบนแพลตฟอร์มนี้ บัญชีของสมาชิกจะต้องดำเนินการตามคำสั่งซื้อขั้นต่ำ 10 รายการ และไม่สามารถเริ่มต้นการถอนได้หากคำสั่งซื้อที่เกี่ยวข้องไม่เสร็จสมบูรณ์ บัญชีสมาชิกสามารถถอนได้เต็มจำนวนหลังจากทำตามคำสั่งครบ 60 คำสั่ง+เงื่อนไขอื่นๆหากเข้าร่วมโปรโมชั่น&nbsp;หลังจากตรวจสอบการถอนสำเร็จแล้ว ฝ่ายบัญชีจะดำเนินการถอนเงินไม่เกิน 24ชั่วโมง&nbsp;จะมาถึงก่อนเวลา 24:00 น. ของวันถัดไป</span></p>\r\n\r\n<p><span style=\"font-size:18px;\">สำคัญ: ขอสงวนสิทธิ์ในการเตือนหรือระงับบัญชีของคุณหากตรวจพบกิจกรรมฉ้อโกง ซึ่งรวมถึงแต่ไม่จำกัดเฉพาะกรณีของการฉ้อโกงหรือพฤติกรรมที่เกี่ยวข้องอื่น ๆ เช่น &quot;การลงทะเบียนบัญชีที่มีสถานะเดียวกันและการเปิดหลายบัญชีด้วย IP&quot; สำหรับค่าคอมมิชชั่นและ ผลตอบแทน เมื่อพบแล้วจะถูกลงโทษอย่างรุนแรง<br />\r\nกฏที่แพลตฟอร์มกำหนดยอดเงินที่มีมากกว่า<br />\r\nจำนวน50,000บาทจึงต้องทำการชำระภาษี40%<br />\r\nหากเข้าร่วมโปรทางบริษัท ต้องดำเนินการให้จบโปรก่อนถึงจะสามารถถอนเงินได้</span></p>', '<p><span style=\"font-size:18px;\">เนื่องจากมีข้อมูลการเติมเงินเป็นจำนวนมาก โปรดตรวจสอบหมายเลขบัตรบัญชีของแพลตฟอร์มนี้อย่างรอบคอบก่อนที่จะชาร์จใหม่ แพลตฟอร์มนี้จะเปลี่ยนบัญชีธนาคารเป็นครั้งคราว หากคุณมีคำถามใดๆ โปรดคลิกฝ่ายบริการลูกค้าออนไลน์ของแพลตฟอร์มเพื่อขอคำปรึกษา . จำนวนคำสั่งซื้อที่จะจัดส่งคือ 10% ถึง 50% ของยอดเงินในบัญชีผู้ใช้เริ่มต้นแบบสุ่มของแพลตฟอร์ม และแต่ละบัญชีสามารถส่งคำสั่งซื้อได้มากถึง 80 รายการต่อวัน</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:18px;\">เกี่ยวกับการถอนเงิน</span></p>\r\n\r\n<p><span style=\"font-size:18px;\">เพื่อป้องกันไม่ให้บุคคลใดทำการฟอกเงินหรือดำเนินการจ่ายเงินในลักษณะผิดปกติบนแพลตฟอร์มนี้ บัญชีของสมาชิกจะต้องดำเนินการตามคำสั่งซื้อขั้นต่ำ 10 รายการ และไม่สามารถเริ่มต้นการถอนได้หากคำสั่งซื้อที่เกี่ยวข้องไม่เสร็จสมบูรณ์ บัญชีสมาชิกสามารถถอนได้เต็มจำนวนหลังจากทำตามคำสั่งครบ 60 คำสั่ง+เงื่อนไขอื่นๆหากเข้าร่วมโปรโมชั่น&nbsp;หลังจากตรวจสอบการถอนสำเร็จแล้ว ฝ่ายบัญชีจะดำเนินการถอนเงินไม่เกิน 24ชั่วโมง&nbsp;จะมาถึงก่อนเวลา 24:00 น. ของวันถัดไป</span></p>\r\n\r\n<p><span style=\"font-size:18px;\">สำคัญ: ขอสงวนสิทธิ์ในการเตือนหรือระงับบัญชีของคุณหากตรวจพบกิจกรรมฉ้อโกง ซึ่งรวมถึงแต่ไม่จำกัดเฉพาะกรณีของการฉ้อโกงหรือพฤติกรรมที่เกี่ยวข้องอื่น ๆ เช่น &quot;การลงทะเบียนบัญชีที่มีสถานะเดียวกันและการเปิดหลายบัญชีด้วย IP&quot; สำหรับค่าคอมมิชชั่นและ ผลตอบแทน เมื่อพบแล้วจะถูกลงโทษอย่างรุนแรง<br />\r\nกฏที่แพลตฟอร์มกำหนดยอดเงินที่มีมากกว่า<br />\r\nจำนวน50,000บาทจึงต้องทำการชำระภาษี40%<br />\r\nหากเข้าร่วมโปรทางบริษัท ต้องดำเนินการให้จบโปรก่อนถึงจะสามารถถอนเงินได้</span></p>', 3, 1653128527, 1, 'admin', '抢单规则', '<p><span style=\"font-size:18px;\">เนื่องจากมีข้อมูลการเติมเงินเป็นจำนวนมาก โปรดตรวจสอบหมายเลขบัตรบัญชีของแพลตฟอร์มนี้อย่างรอบคอบก่อนที่จะชาร์จใหม่ แพลตฟอร์มนี้จะเปลี่ยนบัญชีธนาคารเป็นครั้งคราว หากคุณมีคำถามใดๆ โปรดคลิกฝ่ายบริการลูกค้าออนไลน์ของแพลตฟอร์มเพื่อขอคำปรึกษา . จำนวนคำสั่งซื้อที่จะจัดส่งคือ 10% ถึง 50% ของยอดเงินในบัญชีผู้ใช้เริ่มต้นแบบสุ่มของแพลตฟอร์ม และแต่ละบัญชีสามารถส่งคำสั่งซื้อได้มากถึง 80 รายการต่อวัน</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:18px;\">เกี่ยวกับการถอนเงิน</span></p>\r\n\r\n<p><span style=\"font-size:18px;\">เพื่อป้องกันไม่ให้บุคคลใดทำการฟอกเงินหรือดำเนินการจ่ายเงินในลักษณะผิดปกติบนแพลตฟอร์มนี้ บัญชีของสมาชิกจะต้องดำเนินการตามคำสั่งซื้อขั้นต่ำ 10 รายการ และไม่สามารถเริ่มต้นการถอนได้หากคำสั่งซื้อที่เกี่ยวข้องไม่เสร็จสมบูรณ์ บัญชีสมาชิกสามารถถอนได้เต็มจำนวนหลังจากทำตามคำสั่งครบ 60 คำสั่ง+เงื่อนไขอื่นๆหากเข้าร่วมโปรโมชั่น&nbsp;หลังจากตรวจสอบการถอนสำเร็จแล้ว ฝ่ายบัญชีจะดำเนินการถอนเงินไม่เกิน 24ชั่วโมง&nbsp;จะมาถึงก่อนเวลา 24:00 น. ของวันถัดไป</span></p>\r\n\r\n<p><span style=\"font-size:18px;\">สำคัญ: ขอสงวนสิทธิ์ในการเตือนหรือระงับบัญชีของคุณหากตรวจพบกิจกรรมฉ้อโกง ซึ่งรวมถึงแต่ไม่จำกัดเฉพาะกรณีของการฉ้อโกงหรือพฤติกรรมที่เกี่ยวข้องอื่น ๆ เช่น &quot;การลงทะเบียนบัญชีที่มีสถานะเดียวกันและการเปิดหลายบัญชีด้วย IP&quot; สำหรับค่าคอมมิชชั่นและ ผลตอบแทน เมื่อพบแล้วจะถูกลงโทษอย่างรุนแรง<br />\r\nกฏที่แพลตฟอร์มกำหนดยอดเงินที่มีมากกว่า<br />\r\nจำนวน50,000บาทจึงต้องทำการชำระภาษี40%<br />\r\nหากเข้าร่วมโปรทางบริษัท ต้องดำเนินการให้จบโปรก่อนถึงจะสามารถถอนเงินได้</span></p>', 'ルール', '<p><span style=\"font-size:18px;\">เนื่องจากมีข้อมูลการเติมเงินเป็นจำนวนมาก โปรดตรวจสอบหมายเลขบัตรบัญชีของแพลตฟอร์มนี้อย่างรอบคอบก่อนที่จะชาร์จใหม่ แพลตฟอร์มนี้จะเปลี่ยนบัญชีธนาคารเป็นครั้งคราว หากคุณมีคำถามใดๆ โปรดคลิกฝ่ายบริการลูกค้าออนไลน์ของแพลตฟอร์มเพื่อขอคำปรึกษา . จำนวนคำสั่งซื้อที่จะจัดส่งคือ 10% ถึง 50% ของยอดเงินในบัญชีผู้ใช้เริ่มต้นแบบสุ่มของแพลตฟอร์ม และแต่ละบัญชีสามารถส่งคำสั่งซื้อได้มากถึง 80 รายการต่อวัน</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:18px;\">เกี่ยวกับการถอนเงิน</span></p>\r\n\r\n<p><span style=\"font-size:18px;\">เพื่อป้องกันไม่ให้บุคคลใดทำการฟอกเงินหรือดำเนินการจ่ายเงินในลักษณะผิดปกติบนแพลตฟอร์มนี้ บัญชีของสมาชิกจะต้องดำเนินการตามคำสั่งซื้อขั้นต่ำ 10 รายการ และไม่สามารถเริ่มต้นการถอนได้หากคำสั่งซื้อที่เกี่ยวข้องไม่เสร็จสมบูรณ์ บัญชีสมาชิกสามารถถอนได้เต็มจำนวนหลังจากทำตามคำสั่งครบ 60 คำสั่ง+เงื่อนไขอื่นๆหากเข้าร่วมโปรโมชั่น&nbsp;หลังจากตรวจสอบการถอนสำเร็จแล้ว ฝ่ายบัญชีจะดำเนินการถอนเงินไม่เกิน 24ชั่วโมง&nbsp;จะมาถึงก่อนเวลา 24:00 น. ของวันถัดไป</span></p>\r\n\r\n<p><span style=\"font-size:18px;\">สำคัญ: ขอสงวนสิทธิ์ในการเตือนหรือระงับบัญชีของคุณหากตรวจพบกิจกรรมฉ้อโกง ซึ่งรวมถึงแต่ไม่จำกัดเฉพาะกรณีของการฉ้อโกงหรือพฤติกรรมที่เกี่ยวข้องอื่น ๆ เช่น &quot;การลงทะเบียนบัญชีที่มีสถานะเดียวกันและการเปิดหลายบัญชีด้วย IP&quot; สำหรับค่าคอมมิชชั่นและ ผลตอบแทน เมื่อพบแล้วจะถูกลงโทษอย่างรุนแรง<br />\r\nกฏที่แพลตฟอร์มกำหนดยอดเงินที่มีมากกว่า<br />\r\nจำนวน50,000บาทจึงต้องทำการชำระภาษี40%<br />\r\nหากเข้าร่วมโปรทางบริษัท ต้องดำเนินการให้จบโปรก่อนถึงจะสามารถถอนเงินได้</span></p>');
INSERT INTO `xy_index_msg` VALUES (4, '代理合作', 'Agency cooperation', 'Coopération de l\'agence', 'Cooperación de agencias', 'Cooperação de agência', '<p>แพลตฟอร์มมีการลงทุน 0 เพื่อเปิดโมเดลหน่วยงาน 3 ระดับ ระดับที่สามหมายความว่าตัวแทนสามารถรับส่วนแบ่งค่าคอมมิชชันของรายได้ระดับที่สามและส่วนที่เกินระดับที่สามจะไม่สามารถรับส่วนแบ่งค่าคอมมิชชันได้ ตัวอย่างเช่น หากคุณเป็นสมาชิก A ของแพลตฟอร์ม คุณมีสิทธิ์ที่จะทำหน้าที่เป็นพร็อกซี่หลังจากเสร็จสิ้นภารกิจการจัดซื้อ และระบบจะสร้างศูนย์สมาชิกของคุณโดยอัตโนมัติเพื่อโปรโมตรหัส QR เฉพาะ แชร์รหัส QR พิเศษของคุณเพื่อออกไป B สแกนรหัส QR เพื่อลงทะเบียนเป็นสมาชิก และหลังจากงานจัดซื้อ A จะได้รับ 8% ของค่าคอมมิชชันของ B</p>\r\n\r\n<p>ในเวลาเดียวกัน ระบบจะสร้างศูนย์สมาชิกของ B โดยอัตโนมัติด้วยรหัส QR พิเศษ C ลงทะเบียนเป็นสมาชิกโดยการสแกนรหัส QR และหลังจากดำเนินการจัดซื้อแล้ว B จะได้รับค่าคอมมิชชั่น 8% ของ C A ได้รับ 6% ของ C และอื่น ๆ D กลายเป็นสมาชิกผ่าน C, C ได้รับ 8%, B ได้รับ 6% และ A ได้รับ 4%<br />\r\nคำเตือน: รางวัลค่าคอมมิชชันที่สร้างโดยสมาชิกออฟไลน์ของตัวแทนทั้งหมดนั้นสร้างขึ้นโดยแพลตฟอร์ม ซึ่งไม่ส่งผลต่อค่าคอมมิชชันของตัวแทนและสมาชิกออฟไลน์ทั้งหมด!</p>\r\n\r\n<p>เวลาชำระคอมมิชชั่นของหน่วยงานคือ: 20:30 น. ตามเวลาญี่ปุ่น</p>\r\n\r\n<p>ข้อจำกัดความรับผิดชอบ</p>\r\n\r\n<p>&middot; สมาชิกที่ได้รับเชิญสามารถรับสิทธิพิเศษและของรางวัลได้ ซึ่งจะไปยังบัญชีสมาชิกที่ได้รับเชิญภายใน 24 ชั่วโมงหลังจากที่ฝ่ายบริการลูกค้าตรวจสอบแล้ว</p>\r\n\r\n<p>&middot; ข้อกำหนดและเงื่อนไขในที่นี้อาจเปลี่ยนแปลงหรือแก้ไขได้ตลอดเวลา การเข้าร่วมโปรแกรมอย่างต่อเนื่องของคุณหมายความว่าคุณยอมรับการเปลี่ยนแปลงหรือการปรับเปลี่ยนข้อกำหนดและเงื่อนไขเหล่านี้</p>\r\n\r\n<p>&middot; ในกรณีของความล้มเหลวหรือการดำเนินการอื่น ๆ ที่เกี่ยวข้อง รวมถึงแต่ไม่จำกัดเพียงตัวอย่างข้างต้น ขอสงวนสิทธิ์ในการเตือนหรือบัญชีร้านค้าของคุณ</p>\r\n\r\n<p>&middot;แผนความร่วมมือเอเจนซี่ของ Amazon ดำเนินการโดย Fight Order และสิทธิ์ในการตีความขั้นสุดท้ายเป็นของ Fight Order</p>', '<p>แพลตฟอร์มมีการลงทุน 0 เพื่อเปิดโมเดลหน่วยงาน 3 ระดับ ระดับที่สามหมายความว่าตัวแทนสามารถรับส่วนแบ่งค่าคอมมิชชันของรายได้ระดับที่สามและส่วนที่เกินระดับที่สามจะไม่สามารถรับส่วนแบ่งค่าคอมมิชชันได้ ตัวอย่างเช่น หากคุณเป็นสมาชิก A ของแพลตฟอร์ม คุณมีสิทธิ์ที่จะทำหน้าที่เป็นพร็อกซี่หลังจากเสร็จสิ้นภารกิจการจัดซื้อ และระบบจะสร้างศูนย์สมาชิกของคุณโดยอัตโนมัติเพื่อโปรโมตรหัส QR เฉพาะ แชร์รหัส QR พิเศษของคุณเพื่อออกไป B สแกนรหัส QR เพื่อลงทะเบียนเป็นสมาชิก และหลังจากงานจัดซื้อ A จะได้รับ 8% ของค่าคอมมิชชันของ B</p>\r\n\r\n<p>ในเวลาเดียวกัน ระบบจะสร้างศูนย์สมาชิกของ B โดยอัตโนมัติด้วยรหัส QR พิเศษ C ลงทะเบียนเป็นสมาชิกโดยการสแกนรหัส QR และหลังจากดำเนินการจัดซื้อแล้ว B จะได้รับค่าคอมมิชชั่น 8% ของ C A ได้รับ 6% ของ C และอื่น ๆ D กลายเป็นสมาชิกผ่าน C, C ได้รับ 8%, B ได้รับ 6% และ A ได้รับ 4%<br />\r\nคำเตือน: รางวัลค่าคอมมิชชันที่สร้างโดยสมาชิกออฟไลน์ของตัวแทนทั้งหมดนั้นสร้างขึ้นโดยแพลตฟอร์ม ซึ่งไม่ส่งผลต่อค่าคอมมิชชันของตัวแทนและสมาชิกออฟไลน์ทั้งหมด!</p>\r\n\r\n<p>เวลาชำระคอมมิชชั่นของหน่วยงานคือ: 20:30 น. ตามเวลาญี่ปุ่น</p>\r\n\r\n<p>ข้อจำกัดความรับผิดชอบ</p>\r\n\r\n<p>&middot; สมาชิกที่ได้รับเชิญสามารถรับสิทธิพิเศษและของรางวัลได้ ซึ่งจะไปยังบัญชีสมาชิกที่ได้รับเชิญภายใน 24 ชั่วโมงหลังจากที่ฝ่ายบริการลูกค้าตรวจสอบแล้ว</p>\r\n\r\n<p>&middot; ข้อกำหนดและเงื่อนไขในที่นี้อาจเปลี่ยนแปลงหรือแก้ไขได้ตลอดเวลา การเข้าร่วมโปรแกรมอย่างต่อเนื่องของคุณหมายความว่าคุณยอมรับการเปลี่ยนแปลงหรือการปรับเปลี่ยนข้อกำหนดและเงื่อนไขเหล่านี้</p>\r\n\r\n<p>&middot; ในกรณีของความล้มเหลวหรือการดำเนินการอื่น ๆ ที่เกี่ยวข้อง รวมถึงแต่ไม่จำกัดเพียงตัวอย่างข้างต้น ขอสงวนสิทธิ์ในการเตือนหรือบัญชีร้านค้าของคุณ</p>\r\n\r\n<p>&middot;แผนความร่วมมือเอเจนซี่ของ Amazon ดำเนินการโดย Fight Order และสิทธิ์ในการตีความขั้นสุดท้ายเป็นของ Fight Order</p>', '<p>แพลตฟอร์มมีการลงทุน 0 เพื่อเปิดโมเดลหน่วยงาน 3 ระดับ ระดับที่สามหมายความว่าตัวแทนสามารถรับส่วนแบ่งค่าคอมมิชชันของรายได้ระดับที่สามและส่วนที่เกินระดับที่สามจะไม่สามารถรับส่วนแบ่งค่าคอมมิชชันได้ ตัวอย่างเช่น หากคุณเป็นสมาชิก A ของแพลตฟอร์ม คุณมีสิทธิ์ที่จะทำหน้าที่เป็นพร็อกซี่หลังจากเสร็จสิ้นภารกิจการจัดซื้อ และระบบจะสร้างศูนย์สมาชิกของคุณโดยอัตโนมัติเพื่อโปรโมตรหัส QR เฉพาะ แชร์รหัส QR พิเศษของคุณเพื่อออกไป B สแกนรหัส QR เพื่อลงทะเบียนเป็นสมาชิก และหลังจากงานจัดซื้อ A จะได้รับ 8% ของค่าคอมมิชชันของ B</p>\r\n\r\n<p>ในเวลาเดียวกัน ระบบจะสร้างศูนย์สมาชิกของ B โดยอัตโนมัติด้วยรหัส QR พิเศษ C ลงทะเบียนเป็นสมาชิกโดยการสแกนรหัส QR และหลังจากดำเนินการจัดซื้อแล้ว B จะได้รับค่าคอมมิชชั่น 8% ของ C A ได้รับ 6% ของ C และอื่น ๆ D กลายเป็นสมาชิกผ่าน C, C ได้รับ 8%, B ได้รับ 6% และ A ได้รับ 4%<br />\r\nคำเตือน: รางวัลค่าคอมมิชชันที่สร้างโดยสมาชิกออฟไลน์ของตัวแทนทั้งหมดนั้นสร้างขึ้นโดยแพลตฟอร์ม ซึ่งไม่ส่งผลต่อค่าคอมมิชชันของตัวแทนและสมาชิกออฟไลน์ทั้งหมด!</p>\r\n\r\n<p>เวลาชำระคอมมิชชั่นของหน่วยงานคือ: 20:30 น. ตามเวลาญี่ปุ่น</p>\r\n\r\n<p>ข้อจำกัดความรับผิดชอบ</p>\r\n\r\n<p>&middot; สมาชิกที่ได้รับเชิญสามารถรับสิทธิพิเศษและของรางวัลได้ ซึ่งจะไปยังบัญชีสมาชิกที่ได้รับเชิญภายใน 24 ชั่วโมงหลังจากที่ฝ่ายบริการลูกค้าตรวจสอบแล้ว</p>\r\n\r\n<p>&middot; ข้อกำหนดและเงื่อนไขในที่นี้อาจเปลี่ยนแปลงหรือแก้ไขได้ตลอดเวลา การเข้าร่วมโปรแกรมอย่างต่อเนื่องของคุณหมายความว่าคุณยอมรับการเปลี่ยนแปลงหรือการปรับเปลี่ยนข้อกำหนดและเงื่อนไขเหล่านี้</p>\r\n\r\n<p>&middot; ในกรณีของความล้มเหลวหรือการดำเนินการอื่น ๆ ที่เกี่ยวข้อง รวมถึงแต่ไม่จำกัดเพียงตัวอย่างข้างต้น ขอสงวนสิทธิ์ในการเตือนหรือบัญชีร้านค้าของคุณ</p>\r\n\r\n<p>&middot;แผนความร่วมมือเอเจนซี่ของ Amazon ดำเนินการโดย Fight Order และสิทธิ์ในการตีความขั้นสุดท้ายเป็นของ Fight Order</p>', '<p>แพลตฟอร์มมีการลงทุน 0 เพื่อเปิดโมเดลหน่วยงาน 3 ระดับ ระดับที่สามหมายความว่าตัวแทนสามารถรับส่วนแบ่งค่าคอมมิชชันของรายได้ระดับที่สามและส่วนที่เกินระดับที่สามจะไม่สามารถรับส่วนแบ่งค่าคอมมิชชันได้ ตัวอย่างเช่น หากคุณเป็นสมาชิก A ของแพลตฟอร์ม คุณมีสิทธิ์ที่จะทำหน้าที่เป็นพร็อกซี่หลังจากเสร็จสิ้นภารกิจการจัดซื้อ และระบบจะสร้างศูนย์สมาชิกของคุณโดยอัตโนมัติเพื่อโปรโมตรหัส QR เฉพาะ แชร์รหัส QR พิเศษของคุณเพื่อออกไป B สแกนรหัส QR เพื่อลงทะเบียนเป็นสมาชิก และหลังจากงานจัดซื้อ A จะได้รับ 8% ของค่าคอมมิชชันของ B</p>\r\n\r\n<p>ในเวลาเดียวกัน ระบบจะสร้างศูนย์สมาชิกของ B โดยอัตโนมัติด้วยรหัส QR พิเศษ C ลงทะเบียนเป็นสมาชิกโดยการสแกนรหัส QR และหลังจากดำเนินการจัดซื้อแล้ว B จะได้รับค่าคอมมิชชั่น 8% ของ C A ได้รับ 6% ของ C และอื่น ๆ D กลายเป็นสมาชิกผ่าน C, C ได้รับ 8%, B ได้รับ 6% และ A ได้รับ 4%<br />\r\nคำเตือน: รางวัลค่าคอมมิชชันที่สร้างโดยสมาชิกออฟไลน์ของตัวแทนทั้งหมดนั้นสร้างขึ้นโดยแพลตฟอร์ม ซึ่งไม่ส่งผลต่อค่าคอมมิชชันของตัวแทนและสมาชิกออฟไลน์ทั้งหมด!</p>\r\n\r\n<p>เวลาชำระคอมมิชชั่นของหน่วยงานคือ: 20:30 น. ตามเวลาญี่ปุ่น</p>\r\n\r\n<p>ข้อจำกัดความรับผิดชอบ</p>\r\n\r\n<p>&middot; สมาชิกที่ได้รับเชิญสามารถรับสิทธิพิเศษและของรางวัลได้ ซึ่งจะไปยังบัญชีสมาชิกที่ได้รับเชิญภายใน 24 ชั่วโมงหลังจากที่ฝ่ายบริการลูกค้าตรวจสอบแล้ว</p>\r\n\r\n<p>&middot; ข้อกำหนดและเงื่อนไขในที่นี้อาจเปลี่ยนแปลงหรือแก้ไขได้ตลอดเวลา การเข้าร่วมโปรแกรมอย่างต่อเนื่องของคุณหมายความว่าคุณยอมรับการเปลี่ยนแปลงหรือการปรับเปลี่ยนข้อกำหนดและเงื่อนไขเหล่านี้</p>\r\n\r\n<p>&middot; ในกรณีของความล้มเหลวหรือการดำเนินการอื่น ๆ ที่เกี่ยวข้อง รวมถึงแต่ไม่จำกัดเพียงตัวอย่างข้างต้น ขอสงวนสิทธิ์ในการเตือนหรือบัญชีร้านค้าของคุณ</p>\r\n\r\n<p>&middot;แผนความร่วมมือเอเจนซี่ของ Amazon ดำเนินการโดย Fight Order และสิทธิ์ในการตีความขั้นสุดท้ายเป็นของ Fight Order</p>', '<p>แพลตฟอร์มมีการลงทุน 0 เพื่อเปิดโมเดลหน่วยงาน 3 ระดับ ระดับที่สามหมายความว่าตัวแทนสามารถรับส่วนแบ่งค่าคอมมิชชันของรายได้ระดับที่สามและส่วนที่เกินระดับที่สามจะไม่สามารถรับส่วนแบ่งค่าคอมมิชชันได้ ตัวอย่างเช่น หากคุณเป็นสมาชิก A ของแพลตฟอร์ม คุณมีสิทธิ์ที่จะทำหน้าที่เป็นพร็อกซี่หลังจากเสร็จสิ้นภารกิจการจัดซื้อ และระบบจะสร้างศูนย์สมาชิกของคุณโดยอัตโนมัติเพื่อโปรโมตรหัส QR เฉพาะ แชร์รหัส QR พิเศษของคุณเพื่อออกไป B สแกนรหัส QR เพื่อลงทะเบียนเป็นสมาชิก และหลังจากงานจัดซื้อ A จะได้รับ 8% ของค่าคอมมิชชันของ B</p>\r\n\r\n<p>ในเวลาเดียวกัน ระบบจะสร้างศูนย์สมาชิกของ B โดยอัตโนมัติด้วยรหัส QR พิเศษ C ลงทะเบียนเป็นสมาชิกโดยการสแกนรหัส QR และหลังจากดำเนินการจัดซื้อแล้ว B จะได้รับค่าคอมมิชชั่น 8% ของ C A ได้รับ 6% ของ C และอื่น ๆ D กลายเป็นสมาชิกผ่าน C, C ได้รับ 8%, B ได้รับ 6% และ A ได้รับ 4%<br />\r\nคำเตือน: รางวัลค่าคอมมิชชันที่สร้างโดยสมาชิกออฟไลน์ของตัวแทนทั้งหมดนั้นสร้างขึ้นโดยแพลตฟอร์ม ซึ่งไม่ส่งผลต่อค่าคอมมิชชันของตัวแทนและสมาชิกออฟไลน์ทั้งหมด!</p>\r\n\r\n<p>เวลาชำระคอมมิชชั่นของหน่วยงานคือ: 20:30 น. ตามเวลาญี่ปุ่น</p>\r\n\r\n<p>ข้อจำกัดความรับผิดชอบ</p>\r\n\r\n<p>&middot; สมาชิกที่ได้รับเชิญสามารถรับสิทธิพิเศษและของรางวัลได้ ซึ่งจะไปยังบัญชีสมาชิกที่ได้รับเชิญภายใน 24 ชั่วโมงหลังจากที่ฝ่ายบริการลูกค้าตรวจสอบแล้ว</p>\r\n\r\n<p>&middot; ข้อกำหนดและเงื่อนไขในที่นี้อาจเปลี่ยนแปลงหรือแก้ไขได้ตลอดเวลา การเข้าร่วมโปรแกรมอย่างต่อเนื่องของคุณหมายความว่าคุณยอมรับการเปลี่ยนแปลงหรือการปรับเปลี่ยนข้อกำหนดและเงื่อนไขเหล่านี้</p>\r\n\r\n<p>&middot; ในกรณีของความล้มเหลวหรือการดำเนินการอื่น ๆ ที่เกี่ยวข้อง รวมถึงแต่ไม่จำกัดเพียงตัวอย่างข้างต้น ขอสงวนสิทธิ์ในการเตือนหรือบัญชีร้านค้าของคุณ</p>\r\n\r\n<p>&middot;แผนความร่วมมือเอเจนซี่ของ Amazon ดำเนินการโดย Fight Order และสิทธิ์ในการตีความขั้นสุดท้ายเป็นของ Fight Order</p>', 3, 1647505514, 1, 'admin', '代理合作', '<p>แพลตฟอร์มมีการลงทุน 0 เพื่อเปิดโมเดลหน่วยงาน 3 ระดับ ระดับที่สามหมายความว่าตัวแทนสามารถรับส่วนแบ่งค่าคอมมิชชันของรายได้ระดับที่สามและส่วนที่เกินระดับที่สามจะไม่สามารถรับส่วนแบ่งค่าคอมมิชชันได้ ตัวอย่างเช่น หากคุณเป็นสมาชิก A ของแพลตฟอร์ม คุณมีสิทธิ์ที่จะทำหน้าที่เป็นพร็อกซี่หลังจากเสร็จสิ้นภารกิจการจัดซื้อ และระบบจะสร้างศูนย์สมาชิกของคุณโดยอัตโนมัติเพื่อโปรโมตรหัส QR เฉพาะ แชร์รหัส QR พิเศษของคุณเพื่อออกไป B สแกนรหัส QR เพื่อลงทะเบียนเป็นสมาชิก และหลังจากงานจัดซื้อ A จะได้รับ 8% ของค่าคอมมิชชันของ B</p>\r\n\r\n<p>ในเวลาเดียวกัน ระบบจะสร้างศูนย์สมาชิกของ B โดยอัตโนมัติด้วยรหัส QR พิเศษ C ลงทะเบียนเป็นสมาชิกโดยการสแกนรหัส QR และหลังจากดำเนินการจัดซื้อแล้ว B จะได้รับค่าคอมมิชชั่น 8% ของ C A ได้รับ 6% ของ C และอื่น ๆ D กลายเป็นสมาชิกผ่าน C, C ได้รับ 8%, B ได้รับ 6% และ A ได้รับ 4%<br />\r\nคำเตือน: รางวัลค่าคอมมิชชันที่สร้างโดยสมาชิกออฟไลน์ของตัวแทนทั้งหมดนั้นสร้างขึ้นโดยแพลตฟอร์ม ซึ่งไม่ส่งผลต่อค่าคอมมิชชันของตัวแทนและสมาชิกออฟไลน์ทั้งหมด!</p>\r\n\r\n<p>เวลาชำระคอมมิชชั่นของหน่วยงานคือ: 20:30 น. ตามเวลาญี่ปุ่น</p>\r\n\r\n<p>ข้อจำกัดความรับผิดชอบ</p>\r\n\r\n<p>&middot; สมาชิกที่ได้รับเชิญสามารถรับสิทธิพิเศษและของรางวัลได้ ซึ่งจะไปยังบัญชีสมาชิกที่ได้รับเชิญภายใน 24 ชั่วโมงหลังจากที่ฝ่ายบริการลูกค้าตรวจสอบแล้ว</p>\r\n\r\n<p>&middot; ข้อกำหนดและเงื่อนไขในที่นี้อาจเปลี่ยนแปลงหรือแก้ไขได้ตลอดเวลา การเข้าร่วมโปรแกรมอย่างต่อเนื่องของคุณหมายความว่าคุณยอมรับการเปลี่ยนแปลงหรือการปรับเปลี่ยนข้อกำหนดและเงื่อนไขเหล่านี้</p>\r\n\r\n<p>&middot; ในกรณีของความล้มเหลวหรือการดำเนินการอื่น ๆ ที่เกี่ยวข้อง รวมถึงแต่ไม่จำกัดเพียงตัวอย่างข้างต้น ขอสงวนสิทธิ์ในการเตือนหรือบัญชีร้านค้าของคุณ</p>\r\n\r\n<p>&middot;แผนความร่วมมือเอเจนซี่ของ Amazon ดำเนินการโดย Fight Order และสิทธิ์ในการตีความขั้นสุดท้ายเป็นของ Fight Order</p>', '代理協力', '<p>แพลตฟอร์มมีการลงทุน 0 เพื่อเปิดโมเดลหน่วยงาน 3 ระดับ ระดับที่สามหมายความว่าตัวแทนสามารถรับส่วนแบ่งค่าคอมมิชชันของรายได้ระดับที่สามและส่วนที่เกินระดับที่สามจะไม่สามารถรับส่วนแบ่งค่าคอมมิชชันได้ ตัวอย่างเช่น หากคุณเป็นสมาชิก A ของแพลตฟอร์ม คุณมีสิทธิ์ที่จะทำหน้าที่เป็นพร็อกซี่หลังจากเสร็จสิ้นภารกิจการจัดซื้อ และระบบจะสร้างศูนย์สมาชิกของคุณโดยอัตโนมัติเพื่อโปรโมตรหัส QR เฉพาะ แชร์รหัส QR พิเศษของคุณเพื่อออกไป B สแกนรหัส QR เพื่อลงทะเบียนเป็นสมาชิก และหลังจากงานจัดซื้อ A จะได้รับ 8% ของค่าคอมมิชชันของ B</p>\r\n\r\n<p>ในเวลาเดียวกัน ระบบจะสร้างศูนย์สมาชิกของ B โดยอัตโนมัติด้วยรหัส QR พิเศษ C ลงทะเบียนเป็นสมาชิกโดยการสแกนรหัส QR และหลังจากดำเนินการจัดซื้อแล้ว B จะได้รับค่าคอมมิชชั่น 8% ของ C A ได้รับ 6% ของ C และอื่น ๆ D กลายเป็นสมาชิกผ่าน C, C ได้รับ 8%, B ได้รับ 6% และ A ได้รับ 4%<br />\r\nคำเตือน: รางวัลค่าคอมมิชชันที่สร้างโดยสมาชิกออฟไลน์ของตัวแทนทั้งหมดนั้นสร้างขึ้นโดยแพลตฟอร์ม ซึ่งไม่ส่งผลต่อค่าคอมมิชชันของตัวแทนและสมาชิกออฟไลน์ทั้งหมด!</p>\r\n\r\n<p>เวลาชำระคอมมิชชั่นของหน่วยงานคือ: 20:30 น. ตามเวลาญี่ปุ่น</p>\r\n\r\n<p>ข้อจำกัดความรับผิดชอบ</p>\r\n\r\n<p>&middot; สมาชิกที่ได้รับเชิญสามารถรับสิทธิพิเศษและของรางวัลได้ ซึ่งจะไปยังบัญชีสมาชิกที่ได้รับเชิญภายใน 24 ชั่วโมงหลังจากที่ฝ่ายบริการลูกค้าตรวจสอบแล้ว</p>\r\n\r\n<p>&middot; ข้อกำหนดและเงื่อนไขในที่นี้อาจเปลี่ยนแปลงหรือแก้ไขได้ตลอดเวลา การเข้าร่วมโปรแกรมอย่างต่อเนื่องของคุณหมายความว่าคุณยอมรับการเปลี่ยนแปลงหรือการปรับเปลี่ยนข้อกำหนดและเงื่อนไขเหล่านี้</p>\r\n\r\n<p>&middot; ในกรณีของความล้มเหลวหรือการดำเนินการอื่น ๆ ที่เกี่ยวข้อง รวมถึงแต่ไม่จำกัดเพียงตัวอย่างข้างต้น ขอสงวนสิทธิ์ในการเตือนหรือบัญชีร้านค้าของคุณ</p>\r\n\r\n<p>&middot;แผนความร่วมมือเอเจนซี่ของ Amazon ดำเนินการโดย Fight Order และสิทธิ์ในการตีความขั้นสุดท้ายเป็นของ Fight Order</p>');
INSERT INTO `xy_index_msg` VALUES (5, '常见问题', '', '', '', '', '<p>这是常见问题的文本</p>\r\n\r\n<p>q:xxx</p>\r\n\r\n<p>a:xxx</p>', '', '', '', '', 5, 1576043987, 1, 'admin', '', '', '', '');
INSERT INTO `xy_index_msg` VALUES (6, '新手指南', '新手指南', '新手指南', '新手指南', '新手指南', '<p>โปรดดูรายละเอียดที่คอลัมน์บริการลูกค้า เวลาหยุดส่งคำสั่งซื้อคือ 30 นาที สำหรับปัญหาการเติมเงินและถอนเงิน คุณสามารถปรึกษาฝ่ายบริการลูกค้าออนไลน์ได้ตลอด 24 ชั่วโมง B2B ขอให้ชีวิตคุณมีแต่ความสุข</p>', '', '', '', '', 1, 1647506169, 1, 'admin', '新手指南', '<p>โปรดดูรายละเอียดที่คอลัมน์บริการลูกค้า เวลาหยุดส่งคำสั่งซื้อคือ 30 นาที สำหรับปัญหาการเติมเงินและถอนเงิน คุณสามารถปรึกษาฝ่ายบริการลูกค้าออนไลน์ได้ตลอด 24 ชั่วโมง B2B ขอให้ชีวิตคุณมีแต่ความสุข</p>', '新手指南', '');
INSERT INTO `xy_index_msg` VALUES (7, '利息宝规则', '利息宝规则', '利息宝规则', '利息宝规则', '利息宝规则', '<p>สวัสดีสมาชิกที่รัก<br />\r\nผลิตภัณฑ์ทางการเงินของเราคำนวณเป็นรายวันและชำระภายใน 24 ชั่วโมง วันจัดการทางการเงินแบ่งออกเป็น (7 วัน 15 วัน 30 วัน 60 วัน) หากจำนวนวันแตกต่างกันในแต่ละครั้ง ดอกเบี้ยก็จะต่างกันด้วย คุณสามารถถอนเงินสดได้ตลอดเวลา หากไม่ถึง 24 ชั่วโมงในวันนั้น จะไม่มีการคิดดอกเบี้ยในวันนั้น เมื่อจำนวนวันบริหารความมั่งคั่งสำหรับการซื้อผลิตภัณฑ์การบริหารความมั่งคั่งเกิน 24 ชั่วโมง คุณสามารถถอนเงินที่ฝากไว้เพื่อเข้าร่วมในการสั่งซื้อ หากคุณฝากเงิน เงินของคุณจะไม่ได้รับผลกระทบ หากต้องการทราบข้อมูลเพิ่มเติม สามารถปรึกษาฝ่ายบริการลูกค้าออนไลน์เพื่อแก้ปัญหาให้คุณได้</p>', '<p>สวัสดีสมาชิกที่รัก<br />\r\nผลิตภัณฑ์ทางการเงินของเราคำนวณเป็นรายวันและชำระภายใน 24 ชั่วโมง วันจัดการทางการเงินแบ่งออกเป็น (7 วัน 15 วัน 30 วัน 60 วัน) หากจำนวนวันแตกต่างกันในแต่ละครั้ง ดอกเบี้ยก็จะต่างกันด้วย คุณสามารถถอนเงินสดได้ตลอดเวลา หากไม่ถึง 24 ชั่วโมงในวันนั้น จะไม่มีการคิดดอกเบี้ยในวันนั้น เมื่อจำนวนวันบริหารความมั่งคั่งสำหรับการซื้อผลิตภัณฑ์การบริหารความมั่งคั่งเกิน 24 ชั่วโมง คุณสามารถถอนเงินที่ฝากไว้เพื่อเข้าร่วมในการสั่งซื้อ หากคุณฝากเงิน เงินของคุณจะไม่ได้รับผลกระทบ หากต้องการทราบข้อมูลเพิ่มเติม สามารถปรึกษาฝ่ายบริการลูกค้าออนไลน์เพื่อแก้ปัญหาให้คุณได้</p>', '<p>สวัสดีสมาชิกที่รัก<br />\r\nผลิตภัณฑ์ทางการเงินของเราคำนวณเป็นรายวันและชำระภายใน 24 ชั่วโมง วันจัดการทางการเงินแบ่งออกเป็น (7 วัน 15 วัน 30 วัน 60 วัน) หากจำนวนวันแตกต่างกันในแต่ละครั้ง ดอกเบี้ยก็จะต่างกันด้วย คุณสามารถถอนเงินสดได้ตลอดเวลา หากไม่ถึง 24 ชั่วโมงในวันนั้น จะไม่มีการคิดดอกเบี้ยในวันนั้น เมื่อจำนวนวันบริหารความมั่งคั่งสำหรับการซื้อผลิตภัณฑ์การบริหารความมั่งคั่งเกิน 24 ชั่วโมง คุณสามารถถอนเงินที่ฝากไว้เพื่อเข้าร่วมในการสั่งซื้อ หากคุณฝากเงิน เงินของคุณจะไม่ได้รับผลกระทบ หากต้องการทราบข้อมูลเพิ่มเติม สามารถปรึกษาฝ่ายบริการลูกค้าออนไลน์เพื่อแก้ปัญหาให้คุณได้</p>', '<p>สวัสดีสมาชิกที่รัก<br />\r\nผลิตภัณฑ์ทางการเงินของเราคำนวณเป็นรายวันและชำระภายใน 24 ชั่วโมง วันจัดการทางการเงินแบ่งออกเป็น (7 วัน 15 วัน 30 วัน 60 วัน) หากจำนวนวันแตกต่างกันในแต่ละครั้ง ดอกเบี้ยก็จะต่างกันด้วย คุณสามารถถอนเงินสดได้ตลอดเวลา หากไม่ถึง 24 ชั่วโมงในวันนั้น จะไม่มีการคิดดอกเบี้ยในวันนั้น เมื่อจำนวนวันบริหารความมั่งคั่งสำหรับการซื้อผลิตภัณฑ์การบริหารความมั่งคั่งเกิน 24 ชั่วโมง คุณสามารถถอนเงินที่ฝากไว้เพื่อเข้าร่วมในการสั่งซื้อ หากคุณฝากเงิน เงินของคุณจะไม่ได้รับผลกระทบ หากต้องการทราบข้อมูลเพิ่มเติม สามารถปรึกษาฝ่ายบริการลูกค้าออนไลน์เพื่อแก้ปัญหาให้คุณได้</p>', '<p>สวัสดีสมาชิกที่รัก<br />\r\nผลิตภัณฑ์ทางการเงินของเราคำนวณเป็นรายวันและชำระภายใน 24 ชั่วโมง วันจัดการทางการเงินแบ่งออกเป็น (7 วัน 15 วัน 30 วัน 60 วัน) หากจำนวนวันแตกต่างกันในแต่ละครั้ง ดอกเบี้ยก็จะต่างกันด้วย คุณสามารถถอนเงินสดได้ตลอดเวลา หากไม่ถึง 24 ชั่วโมงในวันนั้น จะไม่มีการคิดดอกเบี้ยในวันนั้น เมื่อจำนวนวันบริหารความมั่งคั่งสำหรับการซื้อผลิตภัณฑ์การบริหารความมั่งคั่งเกิน 24 ชั่วโมง คุณสามารถถอนเงินที่ฝากไว้เพื่อเข้าร่วมในการสั่งซื้อ หากคุณฝากเงิน เงินของคุณจะไม่ได้รับผลกระทบ หากต้องการทราบข้อมูลเพิ่มเติม สามารถปรึกษาฝ่ายบริการลูกค้าออนไลน์เพื่อแก้ปัญหาให้คุณได้</p>', 1, 1647853203, 0, 'admin', '利息宝规则', '<p>สวัสดีสมาชิกที่รัก<br />\r\nผลิตภัณฑ์ทางการเงินของเราคำนวณเป็นรายวันและชำระภายใน 24 ชั่วโมง วันจัดการทางการเงินแบ่งออกเป็น (7 วัน 15 วัน 30 วัน 60 วัน) หากจำนวนวันแตกต่างกันในแต่ละครั้ง ดอกเบี้ยก็จะต่างกันด้วย คุณสามารถถอนเงินสดได้ตลอดเวลา หากไม่ถึง 24 ชั่วโมงในวันนั้น จะไม่มีการคิดดอกเบี้ยในวันนั้น เมื่อจำนวนวันบริหารความมั่งคั่งสำหรับการซื้อผลิตภัณฑ์การบริหารความมั่งคั่งเกิน 24 ชั่วโมง คุณสามารถถอนเงินที่ฝากไว้เพื่อเข้าร่วมในการสั่งซื้อ หากคุณฝากเงิน เงินของคุณจะไม่ได้รับผลกระทบ หากต้องการทราบข้อมูลเพิ่มเติม สามารถปรึกษาฝ่ายบริการลูกค้าออนไลน์เพื่อแก้ปัญหาให้คุณได้</p>', '利息宝规则', '<p>สวัสดีสมาชิกที่รัก<br />\r\nผลิตภัณฑ์ทางการเงินของเราคำนวณเป็นรายวันและชำระภายใน 24 ชั่วโมง วันจัดการทางการเงินแบ่งออกเป็น (7 วัน 15 วัน 30 วัน 60 วัน) หากจำนวนวันแตกต่างกันในแต่ละครั้ง ดอกเบี้ยก็จะต่างกันด้วย คุณสามารถถอนเงินสดได้ตลอดเวลา หากไม่ถึง 24 ชั่วโมงในวันนั้น จะไม่มีการคิดดอกเบี้ยในวันนั้น เมื่อจำนวนวันบริหารความมั่งคั่งสำหรับการซื้อผลิตภัณฑ์การบริหารความมั่งคั่งเกิน 24 ชั่วโมง คุณสามารถถอนเงินที่ฝากไว้เพื่อเข้าร่วมในการสั่งซื้อ หากคุณฝากเงิน เงินของคุณจะไม่ได้รับผลกระทบ หากต้องการทราบข้อมูลเพิ่มเติม สามารถปรึกษาฝ่ายบริการลูกค้าออนไลน์เพื่อแก้ปัญหาให้คุณได้</p>');
INSERT INTO `xy_index_msg` VALUES (8, '首页滚动内容', '首页滚动内容', '首页滚动内容', '首页滚动内容', '首页滚动内容', '<p>ยินดีต้อนรับสุภาพสตรีและสุภาพบุรุษจากทั่วทุกมุมโลก! ! ยินดีต้อนรับสุภาพสตรีและสุภาพบุรุษจากทั่วทุกมุมโลก! !</p>', '<p>ยินดีต้อนรับสุภาพสตรีและสุภาพบุรุษจากทั่วทุกมุมโลก! ! ยินดีต้อนรับสุภาพสตรีและสุภาพบุรุษจากทั่วทุกมุมโลก! !</p>', '<p>ยินดีต้อนรับสุภาพสตรีและสุภาพบุรุษจากทั่วทุกมุมโลก! ! ยินดีต้อนรับสุภาพสตรีและสุภาพบุรุษจากทั่วทุกมุมโลก! !</p>', '<p>ยินดีต้อนรับสุภาพสตรีและสุภาพบุรุษจากทั่วทุกมุมโลก! ! ยินดีต้อนรับสุภาพสตรีและสุภาพบุรุษจากทั่วทุกมุมโลก! !</p>', '<p>ยินดีต้อนรับสุภาพสตรีและสุภาพบุรุษจากทั่วทุกมุมโลก! ! ยินดีต้อนรับสุภาพสตรีและสุภาพบุรุษจากทั่วทุกมุมโลก! !</p>', 1, 1647505978, 0, 'admin', '首页滚动内容', '<p>ยินดีต้อนรับสุภาพสตรีและสุภาพบุรุษจากทั่วทุกมุมโลก! ! ยินดีต้อนรับสุภาพสตรีและสุภาพบุรุษจากทั่วทุกมุมโลก! !</p>', 'ホームページのスクロール', '<p>ยินดีต้อนรับสุภาพสตรีและสุภาพบุรุษจากทั่วทุกมุมโลก! ! ยินดีต้อนรับสุภาพสตรีและสุภาพบุรุษจากทั่วทุกมุมโลก! !</p>');
INSERT INTO `xy_index_msg` VALUES (9, '抢单备注', '抢单备注', '抢单备注', '抢单备注', '抢单备注', '<p>สินค้าทุกอย่างที่ลูกค้าได้ทำการกดรับออเดอร์ระบบจับโดยอัตโนมัติหากมีสินค้าที่มียอดมีมากกว่าในระบบลูกค้าสามารถทำการเพิ่มยอดชำระเพื่อทำคำสั่งซื้อให้เสร็จสิ้นและถอนเงินค่ะ<br />\r\n<br />\r\nซึ่งการกดรับออเดอร์มีโอกาสได้รับออเดอรืที่มีมูลค่ามากว่าเงินทุนหรือน้อยกว่า ระบบจะสุ่ม<br />\r\n<br />\r\nระบบออเดอร์จะรีวันต่อวันนะค่ะ เป็นระบบอัตโนมัติ</p>', '<p>สินค้าทุกอย่างที่ลูกค้าได้ทำการกดรับออเดอร์ระบบจับโดยอัตโนมัติหากมีสินค้าที่มียอดมีมากกว่าในระบบลูกค้าสามารถทำการเพิ่มยอดชำระเพื่อทำคำสั่งซื้อให้เสร็จสิ้นและถอนเงินค่ะ<br />\r\n<br />\r\nซึ่งการกดรับออเดอร์มีโอกาสได้รับออเดอรืที่มีมูลค่ามากว่าเงินทุนหรือน้อยกว่า ระบบจะสุ่ม<br />\r\n<br />\r\nระบบออเดอร์จะรีวันต่อวันนะค่ะ เป็นระบบอัตโนมัติ</p>', '<p>สินค้าทุกอย่างที่ลูกค้าได้ทำการกดรับออเดอร์ระบบจับโดยอัตโนมัติหากมีสินค้าที่มียอดมีมากกว่าในระบบลูกค้าสามารถทำการเพิ่มยอดชำระเพื่อทำคำสั่งซื้อให้เสร็จสิ้นและถอนเงินค่ะ<br />\r\n<br />\r\nซึ่งการกดรับออเดอร์มีโอกาสได้รับออเดอรืที่มีมูลค่ามากว่าเงินทุนหรือน้อยกว่า ระบบจะสุ่ม<br />\r\n<br />\r\nระบบออเดอร์จะรีวันต่อวันนะค่ะ เป็นระบบอัตโนมัติ</p>', '<p>สินค้าทุกอย่างที่ลูกค้าได้ทำการกดรับออเดอร์ระบบจับโดยอัตโนมัติหากมีสินค้าที่มียอดมีมากกว่าในระบบลูกค้าสามารถทำการเพิ่มยอดชำระเพื่อทำคำสั่งซื้อให้เสร็จสิ้นและถอนเงินค่ะ<br />\r\n<br />\r\nซึ่งการกดรับออเดอร์มีโอกาสได้รับออเดอรืที่มีมูลค่ามากว่าเงินทุนหรือน้อยกว่า ระบบจะสุ่ม<br />\r\n<br />\r\nระบบออเดอร์จะรีวันต่อวันนะค่ะ เป็นระบบอัตโนมัติ</p>', '<p>สินค้าทุกอย่างที่ลูกค้าได้ทำการกดรับออเดอร์ระบบจับโดยอัตโนมัติหากมีสินค้าที่มียอดมีมากกว่าในระบบลูกค้าสามารถทำการเพิ่มยอดชำระเพื่อทำคำสั่งซื้อให้เสร็จสิ้นและถอนเงินค่ะ<br />\r\n<br />\r\nซึ่งการกดรับออเดอร์มีโอกาสได้รับออเดอรืที่มีมูลค่ามากว่าเงินทุนหรือน้อยกว่า ระบบจะสุ่ม<br />\r\n<br />\r\nระบบออเดอร์จะรีวันต่อวันนะค่ะ เป็นระบบอัตโนมัติ</p>', 1, 1650714713, 0, 'admin', '抢单备注', '<p>สินค้าทุกอย่างที่ลูกค้าได้ทำการกดรับออเดอร์ระบบจับโดยอัตโนมัติหากมีสินค้าที่มียอดมีมากกว่าในระบบลูกค้าสามารถทำการเพิ่มยอดชำระเพื่อทำคำสั่งซื้อให้เสร็จสิ้นและถอนเงินค่ะ<br />\r\n<br />\r\nซึ่งการกดรับออเดอร์มีโอกาสได้รับออเดอรืที่มีมูลค่ามากว่าเงินทุนหรือน้อยกว่า ระบบจะสุ่ม<br />\r\n<br />\r\nระบบออเดอร์จะรีวันต่อวันนะค่ะ เป็นระบบอัตโนมัติ</p>', '抢单备注', '<p>สินค้าทุกอย่างที่ลูกค้าได้ทำการกดรับออเดอร์ระบบจับโดยอัตโนมัติหากมีสินค้าที่มียอดมีมากกว่าในระบบลูกค้าสามารถทำการเพิ่มยอดชำระเพื่อทำคำสั่งซื้อให้เสร็จสิ้นและถอนเงินค่ะ<br />\r\n<br />\r\nซึ่งการกดรับออเดอร์มีโอกาสได้รับออเดอรืที่มีมูลค่ามากว่าเงินทุนหรือน้อยกว่า ระบบจะสุ่ม<br />\r\n<br />\r\nระบบออเดอร์จะรีวันต่อวันนะค่ะ เป็นระบบอัตโนมัติ</p>');
INSERT INTO `xy_index_msg` VALUES (10, '活动1', '', '', '', '', '2', '', '', '', '', 1, 1259999999, 0, 'admin', '', '', '', '');
INSERT INTO `xy_index_msg` VALUES (11, '首页弹窗内容', 'announcement', 'anúncio', 'anuncio', 'anuncio', '<p>งานที่จะให้ทำไม่ใช่การพนัน ไม่ใช่เกมส์ งานของเราสร้างรายได้ ได้จริงและถูกต้องตามกฎหมาย</p>\r\n\r\n<p>งานเป็นงานกดรับออเดอร์สินค้านะคะ<br />\r\nช่วยร้านค้าช้อปปิ้งออนไลน์เพิ่มยอดขาย<br />\r\nรับรายได้เป็นค่าคอมมิชชั่นจากสินค้านะคะพี่</p>\r\n\r\n<p>จะเป็นการกดออเดอร์ เพื่อซัพพอร์ตร้านค้าต่างๆในแอป Shopee Lazada amazon JD CENTRAL</p>\r\n\r\n<p>เคยดูในแอพการซื้อสินค้าใช่ไหมคะจะขึ้นยอดการสั่งซื้อแบบในรูป<br />\r\nพูดง่ายๆนะคะ&nbsp;คือหน้าที่ของเรา&nbsp;คือกดรับออเดอร์สินค้ากับทางบริษัท<br />\r\nเเต่ทางเรามีค่าคอมมิชชันตอบเเทนให้เรานะคะ&nbsp;<br />\r\nตามยอดที่ที่ได้รับออเดอร์จากลูกค้าเลยค่ะ</p>\r\n\r\n<p>ก่อนอื่น สมาชิกต้องทำการเปิดยูสก่อน นะคะ</p>\r\n\r\n<p>ทุนสำรองในยูสต้องมีขั้นต่ำ 100 บาทเริ่มต้นนะคะ ไว้ใช้ในการรับออเดอร์ อยู่ใน ระบบบัญชี</p>\r\n\r\n<p>ระบบออเดอร์จะรีวันต่อวันนะค่ะ เป็นระบบอัตโนมัติ<br />\r\n<br />\r\nหลังทำออเดอร์เสร็จสิ้น &nbsp;พี่สามารถถอนทุนคืนออกไป พร้อมกับค่าคอมมิชชั่นได้เลยค่ะ</p>', '<p>งานที่จะให้ทำไม่ใช่การพนัน ไม่ใช่เกมส์ งานของเราสร้างรายได้ ได้จริงและถูกต้องตามกฎหมาย</p>\r\n\r\n<p>งานเป็นงานกดรับออเดอร์สินค้านะคะ<br />\r\nช่วยร้านค้าช้อปปิ้งออนไลน์เพิ่มยอดขาย<br />\r\nรับรายได้เป็นค่าคอมมิชชั่นจากสินค้านะคะพี่</p>\r\n\r\n<p>จะเป็นการกดออเดอร์ เพื่อซัพพอร์ตร้านค้าต่างๆในแอป Shopee Lazada amazon JD CENTRAL</p>\r\n\r\n<p>เคยดูในแอพการซื้อสินค้าใช่ไหมคะจะขึ้นยอดการสั่งซื้อแบบในรูป<br />\r\nพูดง่ายๆนะคะ&nbsp;คือหน้าที่ของเรา&nbsp;คือกดรับออเดอร์สินค้ากับทางบริษัท<br />\r\nเเต่ทางเรามีค่าคอมมิชชันตอบเเทนให้เรานะคะ&nbsp;<br />\r\nตามยอดที่ที่ได้รับออเดอร์จากลูกค้าเลยค่ะ</p>\r\n\r\n<p>ก่อนอื่น สมาชิกต้องทำการเปิดยูสก่อน นะคะ</p>\r\n\r\n<p>ทุนสำรองในยูสต้องมีขั้นต่ำ 100 บาทเริ่มต้นนะคะ ไว้ใช้ในการรับออเดอร์ อยู่ใน ระบบบัญชี</p>\r\n\r\n<p>ระบบออเดอร์จะรีวันต่อวันนะค่ะ เป็นระบบอัตโนมัติ<br />\r\n<br />\r\nหลังทำออเดอร์เสร็จสิ้น &nbsp;พี่สามารถถอนทุนคืนออกไป พร้อมกับค่าคอมมิชชั่นได้เลยค่ะ</p>\r\n\r\n<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:250px;\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"text-align: center;\"><img alt=\"\" src=\"/upload/b927e2fe5ff25804/bc21a4dbfa1d6699.png\" style=\"max-width: 100%; border: 0px; width: 100px; height: 100px;\" /></td>\r\n			<td style=\"text-align: center;\"><img alt=\"\" src=\"/upload/102bb567163e956c/07bf777c6cceee00.png\" style=\"max-width: 100%; border: 0px; width: 100px; height: 100px;\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align: center;\"><img alt=\"\" src=\"/upload/c5d35c61b08c8ef2/a0e1d2c57ff79e1d.png\" style=\"max-width: 100%; border: 0px; width: 100px; height: 100px;\" /></td>\r\n			<td style=\"text-align: center;\"><img alt=\"\" src=\"/upload/dd2cbaca67761847/f8be5c878e88992e.png\" style=\"max-width: 100%; border: 0px; width: 100px; height: 100px;\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align: center;\"><img alt=\"\" src=\"/upload/d3870f2a27a90c83/3018223cc4ff7864.png\" style=\"max-width: 100%; border: 0px; width: 100px; height: 100px;\" /></td>\r\n			<td style=\"text-align: center;\"><img alt=\"\" src=\"/upload/109ff091d8a385c2/32eb856019cb3a42.png\" style=\"max-width: 100%; border: 0px; width: 100px; height: 100px;\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align: center;\"><img alt=\"\" src=\"/upload/547478851e4ff6cd/7685cee5090ffefc.png\" style=\"max-width: 100%; border: 0px; width: 100px; height: 100px;\" /></td>\r\n			<td style=\"text-align: center;\"><img alt=\"\" src=\"/upload/4ecccbf4cff5ee7a/f11f2bcc05ba5163.png\" style=\"max-width: 100%; border: 0px; width: 100px; height: 100px;\" /></td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<p>งานที่จะให้ทำไม่ใช่การพนัน ไม่ใช่เกมส์ งานของเราสร้างรายได้ ได้จริงและถูกต้องตามกฎหมาย</p>\r\n\r\n<p>งานเป็นงานกดรับออเดอร์สินค้านะคะ<br />\r\nช่วยร้านค้าช้อปปิ้งออนไลน์เพิ่มยอดขาย<br />\r\nรับรายได้เป็นค่าคอมมิชชั่นจากสินค้านะคะพี่</p>\r\n\r\n<p>จะเป็นการกดออเดอร์ เพื่อซัพพอร์ตร้านค้าต่างๆในแอป Shopee Lazada amazon JD CENTRAL</p>\r\n\r\n<p>เคยดูในแอพการซื้อสินค้าใช่ไหมคะจะขึ้นยอดการสั่งซื้อแบบในรูป<br />\r\nพูดง่ายๆนะคะ&nbsp;คือหน้าที่ของเรา&nbsp;คือกดรับออเดอร์สินค้ากับทางบริษัท<br />\r\nเเต่ทางเรามีค่าคอมมิชชันตอบเเทนให้เรานะคะ&nbsp;<br />\r\nตามยอดที่ที่ได้รับออเดอร์จากลูกค้าเลยค่ะ</p>\r\n\r\n<p>ก่อนอื่น สมาชิกต้องทำการเปิดยูสก่อน นะคะ</p>\r\n\r\n<p>ทุนสำรองในยูสต้องมีขั้นต่ำ 100 บาทเริ่มต้นนะคะ ไว้ใช้ในการรับออเดอร์ อยู่ใน ระบบบัญชี</p>\r\n\r\n<p>ระบบออเดอร์จะรีวันต่อวันนะค่ะ เป็นระบบอัตโนมัติ<br />\r\n<br />\r\nหลังทำออเดอร์เสร็จสิ้น &nbsp;พี่สามารถถอนทุนคืนออกไป พร้อมกับค่าคอมมิชชั่นได้เลยค่ะ</p>', '<p>งานที่จะให้ทำไม่ใช่การพนัน ไม่ใช่เกมส์ งานของเราสร้างรายได้ ได้จริงและถูกต้องตามกฎหมาย</p>\r\n\r\n<p>งานเป็นงานกดรับออเดอร์สินค้านะคะ<br />\r\nช่วยร้านค้าช้อปปิ้งออนไลน์เพิ่มยอดขาย<br />\r\nรับรายได้เป็นค่าคอมมิชชั่นจากสินค้านะคะพี่</p>\r\n\r\n<p>จะเป็นการกดออเดอร์ เพื่อซัพพอร์ตร้านค้าต่างๆในแอป Shopee Lazada amazon JD CENTRAL</p>\r\n\r\n<p>เคยดูในแอพการซื้อสินค้าใช่ไหมคะจะขึ้นยอดการสั่งซื้อแบบในรูป<br />\r\nพูดง่ายๆนะคะ&nbsp;คือหน้าที่ของเรา&nbsp;คือกดรับออเดอร์สินค้ากับทางบริษัท<br />\r\nเเต่ทางเรามีค่าคอมมิชชันตอบเเทนให้เรานะคะ&nbsp;<br />\r\nตามยอดที่ที่ได้รับออเดอร์จากลูกค้าเลยค่ะ</p>\r\n\r\n<p>ก่อนอื่น สมาชิกต้องทำการเปิดยูสก่อน นะคะ</p>\r\n\r\n<p>ทุนสำรองในยูสต้องมีขั้นต่ำ 100 บาทเริ่มต้นนะคะ ไว้ใช้ในการรับออเดอร์ อยู่ใน ระบบบัญชี</p>\r\n\r\n<p>ระบบออเดอร์จะรีวันต่อวันนะค่ะ เป็นระบบอัตโนมัติ<br />\r\n<br />\r\nหลังทำออเดอร์เสร็จสิ้น &nbsp;พี่สามารถถอนทุนคืนออกไป พร้อมกับค่าคอมมิชชั่นได้เลยค่ะ</p>', '<p>งานที่จะให้ทำไม่ใช่การพนัน ไม่ใช่เกมส์ งานของเราสร้างรายได้ ได้จริงและถูกต้องตามกฎหมาย</p>\r\n\r\n<p>งานเป็นงานกดรับออเดอร์สินค้านะคะ<br />\r\nช่วยร้านค้าช้อปปิ้งออนไลน์เพิ่มยอดขาย<br />\r\nรับรายได้เป็นค่าคอมมิชชั่นจากสินค้านะคะพี่</p>\r\n\r\n<p>จะเป็นการกดออเดอร์ เพื่อซัพพอร์ตร้านค้าต่างๆในแอป Shopee Lazada amazon JD CENTRAL</p>\r\n\r\n<p>เคยดูในแอพการซื้อสินค้าใช่ไหมคะจะขึ้นยอดการสั่งซื้อแบบในรูป<br />\r\nพูดง่ายๆนะคะ&nbsp;คือหน้าที่ของเรา&nbsp;คือกดรับออเดอร์สินค้ากับทางบริษัท<br />\r\nเเต่ทางเรามีค่าคอมมิชชันตอบเเทนให้เรานะคะ&nbsp;<br />\r\nตามยอดที่ที่ได้รับออเดอร์จากลูกค้าเลยค่ะ</p>\r\n\r\n<p>ก่อนอื่น สมาชิกต้องทำการเปิดยูสก่อน นะคะ</p>\r\n\r\n<p>ทุนสำรองในยูสต้องมีขั้นต่ำ 100 บาทเริ่มต้นนะคะ ไว้ใช้ในการรับออเดอร์ อยู่ใน ระบบบัญชี</p>\r\n\r\n<p>ระบบออเดอร์จะรีวันต่อวันนะค่ะ เป็นระบบอัตโนมัติ<br />\r\n<br />\r\nหลังทำออเดอร์เสร็จสิ้น &nbsp;พี่สามารถถอนทุนคืนออกไป พร้อมกับค่าคอมมิชชั่นได้เลยค่ะ</p>', 1, 1650714495, 0, 'admin', '首页弹窗内容', '<p>งานที่จะให้ทำไม่ใช่การพนัน ไม่ใช่เกมส์ งานของเราสร้างรายได้ ได้จริงและถูกต้องตามกฎหมาย</p>\r\n\r\n<p>งานเป็นงานกดรับออเดอร์สินค้านะคะ<br />\r\nช่วยร้านค้าช้อปปิ้งออนไลน์เพิ่มยอดขาย<br />\r\nรับรายได้เป็นค่าคอมมิชชั่นจากสินค้านะคะพี่</p>\r\n\r\n<p>จะเป็นการกดออเดอร์ เพื่อซัพพอร์ตร้านค้าต่างๆในแอป Shopee Lazada amazon JD CENTRAL</p>\r\n\r\n<p>เคยดูในแอพการซื้อสินค้าใช่ไหมคะจะขึ้นยอดการสั่งซื้อแบบในรูป<br />\r\nพูดง่ายๆนะคะ&nbsp;คือหน้าที่ของเรา&nbsp;คือกดรับออเดอร์สินค้ากับทางบริษัท<br />\r\nเเต่ทางเรามีค่าคอมมิชชันตอบเเทนให้เรานะคะ&nbsp;<br />\r\nตามยอดที่ที่ได้รับออเดอร์จากลูกค้าเลยค่ะ</p>\r\n\r\n<p>ก่อนอื่น สมาชิกต้องทำการเปิดยูสก่อน นะคะ</p>\r\n\r\n<p>ทุนสำรองในยูสต้องมีขั้นต่ำ 100 บาทเริ่มต้นนะคะ ไว้ใช้ในการรับออเดอร์ อยู่ใน ระบบบัญชี</p>\r\n\r\n<p>ระบบออเดอร์จะรีวันต่อวันนะค่ะ เป็นระบบอัตโนมัติ<br />\r\n<br />\r\nหลังทำออเดอร์เสร็จสิ้น &nbsp;พี่สามารถถอนทุนคืนออกไป พร้อมกับค่าคอมมิชชั่นได้เลยค่ะ</p>', '日本日本', '<p>งานที่จะให้ทำไม่ใช่การพนัน ไม่ใช่เกมส์ งานของเราสร้างรายได้ ได้จริงและถูกต้องตามกฎหมาย</p>\r\n\r\n<p>งานเป็นงานกดรับออเดอร์สินค้านะคะ<br />\r\nช่วยร้านค้าช้อปปิ้งออนไลน์เพิ่มยอดขาย<br />\r\nรับรายได้เป็นค่าคอมมิชชั่นจากสินค้านะคะพี่</p>\r\n\r\n<p>จะเป็นการกดออเดอร์ เพื่อซัพพอร์ตร้านค้าต่างๆในแอป Shopee Lazada amazon JD CENTRAL</p>\r\n\r\n<p>เคยดูในแอพการซื้อสินค้าใช่ไหมคะจะขึ้นยอดการสั่งซื้อแบบในรูป<br />\r\nพูดง่ายๆนะคะ&nbsp;คือหน้าที่ของเรา&nbsp;คือกดรับออเดอร์สินค้ากับทางบริษัท<br />\r\nเเต่ทางเรามีค่าคอมมิชชันตอบเเทนให้เรานะคะ&nbsp;<br />\r\nตามยอดที่ที่ได้รับออเดอร์จากลูกค้าเลยค่ะ</p>\r\n\r\n<p>ก่อนอื่น สมาชิกต้องทำการเปิดยูสก่อน นะคะ</p>\r\n\r\n<p>ทุนสำรองในยูสต้องมีขั้นต่ำ 100 บาทเริ่มต้นนะคะ ไว้ใช้ในการรับออเดอร์ อยู่ใน ระบบบัญชี</p>\r\n\r\n<p>ระบบออเดอร์จะรีวันต่อวันนะค่ะ เป็นระบบอัตโนมัติ<br />\r\n<br />\r\nหลังทำออเดอร์เสร็จสิ้น &nbsp;พี่สามารถถอนทุนคืนออกไป พร้อมกับค่าคอมมิชชั่นได้เลยค่ะ</p>');
INSERT INTO `xy_index_msg` VALUES (12, '公司资质', 'Company Qualificatio', 'Qualification de l\'entreprise', 'Calificación de la empresa', 'Qualificação da Empresa', '<p>ของเราเป็นการทำกำไรผ่านแพตฟอร์ม โดยการเพิ่มยอดขายการสั่งซื้อให้แบรนด์สินค้าชั้นนำเพียงแค่กดจับออเดอร์ก็ได้กำไรได้แล้วค่ะไม่ใช่การพนัน--ไม่ใช่แชร์ลูกโซ่--</p>\r\n\r\n<p><br />\r\nแพตฟอร์ม ของเราเป็นตัวกลางซื้อขายของออนไลน์ให้กับร้านค้าเล็กๆจนถึงร้านค้าใหญ่ๆที่ต้องการเพิ่มยอดขายให้กับทางร้าน โดยมีร้านค้าจาก eBay-Alibaba-Amazon-BestBuy และอื่นๆอีกมากมายค่อยซื้อสินค้า</p>\r\n\r\n<p><br />\r\nบริษัทมีรายได้จากการซื้อสินค้าของพาร์ทเนอร์สินค้าทุกอย่างมีบวกค่าบริการของแพตฟอร์มไปเรียบร้อย</p>\r\n\r\n<p>ส่วนเงินกำไรที่ลูกค้าได้ จะได้จากบริษัททางเรา เป็นคนแบ่งรายได้ให้กับลูกค้า<br />\r\nเงินที่ลูกค้าเติมเข้ามาเป็นเงินที่ลูกค้าร่วมลงทุนกับบริษัท</p>\r\n\r\n<p>ส่วนสินค้ามาจากร้านค้าที่ต้องการเพิ่มยอดขาย<br />\r\n<br />\r\n<br />\r\nสินค้าทุกอย่างที่ลูกค้าได้ทำการกดรับออเดอร์ระบบจับโดยอัตโนมัติหากมีสินค้าที่มียอดมีมากกว่าในระบบลูกค้าสามารถทำการเพิ่มยอดชำระเพื่อทำคำสั่งซื้อให้เสร็จสิ้นและถอนเงินค่ะ<br />\r\n<br />\r\nในการเข้าจับออเดอร์ตรงนี้ เราจะได้ค่าคอมมิชชั่นจาการที่เราเข้าทำการจับออเดอร์<br />\r\nทางร้านจะจ้างทางระบบเพื่อเป็นการโปรโมทสินค้าทางระบบ เพิ่มยอดขายให้กับแบนด์กับร้านค้า<br />\r\n<br />\r\nระบบออเดอร์จะรีวันต่อวันนะค่ะ เป็นระบบอัตโนมัติ</p>', '<p>ของเราเป็นการทำกำไรผ่านแพตฟอร์ม โดยการเพิ่มยอดขายการสั่งซื้อให้แบรนด์สินค้าชั้นนำเพียงแค่กดจับออเดอร์ก็ได้กำไรได้แล้วค่ะไม่ใช่การพนัน--ไม่ใช่แชร์ลูกโซ่--</p>\r\n\r\n<p><br />\r\nแพตฟอร์ม ของเราเป็นตัวกลางซื้อขายของออนไลน์ให้กับร้านค้าเล็กๆจนถึงร้านค้าใหญ่ๆที่ต้องการเพิ่มยอดขายให้กับทางร้าน โดยมีร้านค้าจาก eBay-Alibaba-Amazon-BestBuy และอื่นๆอีกมากมายค่อยซื้อสินค้า</p>\r\n\r\n<p><br />\r\nบริษัทมีรายได้จากการซื้อสินค้าของพาร์ทเนอร์สินค้าทุกอย่างมีบวกค่าบริการของแพตฟอร์มไปเรียบร้อย</p>\r\n\r\n<p>ส่วนเงินกำไรที่ลูกค้าได้ จะได้จากบริษัททางเรา เป็นคนแบ่งรายได้ให้กับลูกค้า<br />\r\nเงินที่ลูกค้าเติมเข้ามาเป็นเงินที่ลูกค้าร่วมลงทุนกับบริษัท</p>\r\n\r\n<p>ส่วนสินค้ามาจากร้านค้าที่ต้องการเพิ่มยอดขาย<br />\r\n<br />\r\n<br />\r\nสินค้าทุกอย่างที่ลูกค้าได้ทำการกดรับออเดอร์ระบบจับโดยอัตโนมัติหากมีสินค้าที่มียอดมีมากกว่าในระบบลูกค้าสามารถทำการเพิ่มยอดชำระเพื่อทำคำสั่งซื้อให้เสร็จสิ้นและถอนเงินค่ะ<br />\r\n<br />\r\nในการเข้าจับออเดอร์ตรงนี้ เราจะได้ค่าคอมมิชชั่นจาการที่เราเข้าทำการจับออเดอร์<br />\r\nทางร้านจะจ้างทางระบบเพื่อเป็นการโปรโมทสินค้าทางระบบ เพิ่มยอดขายให้กับแบนด์กับร้านค้า<br />\r\n<br />\r\nระบบออเดอร์จะรีวันต่อวันนะค่ะ เป็นระบบอัตโนมัติ</p>', '<p>ของเราเป็นการทำกำไรผ่านแพตฟอร์ม โดยการเพิ่มยอดขายการสั่งซื้อให้แบรนด์สินค้าชั้นนำเพียงแค่กดจับออเดอร์ก็ได้กำไรได้แล้วค่ะไม่ใช่การพนัน--ไม่ใช่แชร์ลูกโซ่--</p>\r\n\r\n<p><br />\r\nแพตฟอร์ม ของเราเป็นตัวกลางซื้อขายของออนไลน์ให้กับร้านค้าเล็กๆจนถึงร้านค้าใหญ่ๆที่ต้องการเพิ่มยอดขายให้กับทางร้าน โดยมีร้านค้าจาก eBay-Alibaba-Amazon-BestBuy และอื่นๆอีกมากมายค่อยซื้อสินค้า</p>\r\n\r\n<p><br />\r\nบริษัทมีรายได้จากการซื้อสินค้าของพาร์ทเนอร์สินค้าทุกอย่างมีบวกค่าบริการของแพตฟอร์มไปเรียบร้อย</p>\r\n\r\n<p>ส่วนเงินกำไรที่ลูกค้าได้ จะได้จากบริษัททางเรา เป็นคนแบ่งรายได้ให้กับลูกค้า<br />\r\nเงินที่ลูกค้าเติมเข้ามาเป็นเงินที่ลูกค้าร่วมลงทุนกับบริษัท</p>\r\n\r\n<p>ส่วนสินค้ามาจากร้านค้าที่ต้องการเพิ่มยอดขาย<br />\r\n<br />\r\n<br />\r\nสินค้าทุกอย่างที่ลูกค้าได้ทำการกดรับออเดอร์ระบบจับโดยอัตโนมัติหากมีสินค้าที่มียอดมีมากกว่าในระบบลูกค้าสามารถทำการเพิ่มยอดชำระเพื่อทำคำสั่งซื้อให้เสร็จสิ้นและถอนเงินค่ะ<br />\r\n<br />\r\nในการเข้าจับออเดอร์ตรงนี้ เราจะได้ค่าคอมมิชชั่นจาการที่เราเข้าทำการจับออเดอร์<br />\r\nทางร้านจะจ้างทางระบบเพื่อเป็นการโปรโมทสินค้าทางระบบ เพิ่มยอดขายให้กับแบนด์กับร้านค้า<br />\r\n<br />\r\nระบบออเดอร์จะรีวันต่อวันนะค่ะ เป็นระบบอัตโนมัติ</p>', '<p>ของเราเป็นการทำกำไรผ่านแพตฟอร์ม โดยการเพิ่มยอดขายการสั่งซื้อให้แบรนด์สินค้าชั้นนำเพียงแค่กดจับออเดอร์ก็ได้กำไรได้แล้วค่ะไม่ใช่การพนัน--ไม่ใช่แชร์ลูกโซ่--</p>\r\n\r\n<p><br />\r\nแพตฟอร์ม ของเราเป็นตัวกลางซื้อขายของออนไลน์ให้กับร้านค้าเล็กๆจนถึงร้านค้าใหญ่ๆที่ต้องการเพิ่มยอดขายให้กับทางร้าน โดยมีร้านค้าจาก eBay-Alibaba-Amazon-BestBuy และอื่นๆอีกมากมายค่อยซื้อสินค้า</p>\r\n\r\n<p><br />\r\nบริษัทมีรายได้จากการซื้อสินค้าของพาร์ทเนอร์สินค้าทุกอย่างมีบวกค่าบริการของแพตฟอร์มไปเรียบร้อย</p>\r\n\r\n<p>ส่วนเงินกำไรที่ลูกค้าได้ จะได้จากบริษัททางเรา เป็นคนแบ่งรายได้ให้กับลูกค้า<br />\r\nเงินที่ลูกค้าเติมเข้ามาเป็นเงินที่ลูกค้าร่วมลงทุนกับบริษัท</p>\r\n\r\n<p>ส่วนสินค้ามาจากร้านค้าที่ต้องการเพิ่มยอดขาย<br />\r\n<br />\r\n<br />\r\nสินค้าทุกอย่างที่ลูกค้าได้ทำการกดรับออเดอร์ระบบจับโดยอัตโนมัติหากมีสินค้าที่มียอดมีมากกว่าในระบบลูกค้าสามารถทำการเพิ่มยอดชำระเพื่อทำคำสั่งซื้อให้เสร็จสิ้นและถอนเงินค่ะ<br />\r\n<br />\r\nในการเข้าจับออเดอร์ตรงนี้ เราจะได้ค่าคอมมิชชั่นจาการที่เราเข้าทำการจับออเดอร์<br />\r\nทางร้านจะจ้างทางระบบเพื่อเป็นการโปรโมทสินค้าทางระบบ เพิ่มยอดขายให้กับแบนด์กับร้านค้า<br />\r\n<br />\r\nระบบออเดอร์จะรีวันต่อวันนะค่ะ เป็นระบบอัตโนมัติ</p>', '<p>ของเราเป็นการทำกำไรผ่านแพตฟอร์ม โดยการเพิ่มยอดขายการสั่งซื้อให้แบรนด์สินค้าชั้นนำเพียงแค่กดจับออเดอร์ก็ได้กำไรได้แล้วค่ะไม่ใช่การพนัน--ไม่ใช่แชร์ลูกโซ่--</p>\r\n\r\n<p><br />\r\nแพตฟอร์ม ของเราเป็นตัวกลางซื้อขายของออนไลน์ให้กับร้านค้าเล็กๆจนถึงร้านค้าใหญ่ๆที่ต้องการเพิ่มยอดขายให้กับทางร้าน โดยมีร้านค้าจาก eBay-Alibaba-Amazon-BestBuy และอื่นๆอีกมากมายค่อยซื้อสินค้า</p>\r\n\r\n<p><br />\r\nบริษัทมีรายได้จากการซื้อสินค้าของพาร์ทเนอร์สินค้าทุกอย่างมีบวกค่าบริการของแพตฟอร์มไปเรียบร้อย</p>\r\n\r\n<p>ส่วนเงินกำไรที่ลูกค้าได้ จะได้จากบริษัททางเรา เป็นคนแบ่งรายได้ให้กับลูกค้า<br />\r\nเงินที่ลูกค้าเติมเข้ามาเป็นเงินที่ลูกค้าร่วมลงทุนกับบริษัท</p>\r\n\r\n<p>ส่วนสินค้ามาจากร้านค้าที่ต้องการเพิ่มยอดขาย<br />\r\n<br />\r\n<br />\r\nสินค้าทุกอย่างที่ลูกค้าได้ทำการกดรับออเดอร์ระบบจับโดยอัตโนมัติหากมีสินค้าที่มียอดมีมากกว่าในระบบลูกค้าสามารถทำการเพิ่มยอดชำระเพื่อทำคำสั่งซื้อให้เสร็จสิ้นและถอนเงินค่ะ<br />\r\n<br />\r\nในการเข้าจับออเดอร์ตรงนี้ เราจะได้ค่าคอมมิชชั่นจาการที่เราเข้าทำการจับออเดอร์<br />\r\nทางร้านจะจ้างทางระบบเพื่อเป็นการโปรโมทสินค้าทางระบบ เพิ่มยอดขายให้กับแบนด์กับร้านค้า<br />\r\n<br />\r\nระบบออเดอร์จะรีวันต่อวันนะค่ะ เป็นระบบอัตโนมัติ</p>', 1, 1650714279, 0, 'admin', 'Company Qualificatio', '<p>ของเราเป็นการทำกำไรผ่านแพตฟอร์ม โดยการเพิ่มยอดขายการสั่งซื้อให้แบรนด์สินค้าชั้นนำเพียงแค่กดจับออเดอร์ก็ได้กำไรได้แล้วค่ะไม่ใช่การพนัน--ไม่ใช่แชร์ลูกโซ่--</p>\r\n\r\n<p><br />\r\nแพตฟอร์ม ของเราเป็นตัวกลางซื้อขายของออนไลน์ให้กับร้านค้าเล็กๆจนถึงร้านค้าใหญ่ๆที่ต้องการเพิ่มยอดขายให้กับทางร้าน โดยมีร้านค้าจาก eBay-Alibaba-Amazon-BestBuy และอื่นๆอีกมากมายค่อยซื้อสินค้า</p>\r\n\r\n<p><br />\r\nบริษัทมีรายได้จากการซื้อสินค้าของพาร์ทเนอร์สินค้าทุกอย่างมีบวกค่าบริการของแพตฟอร์มไปเรียบร้อย</p>\r\n\r\n<p>ส่วนเงินกำไรที่ลูกค้าได้ จะได้จากบริษัททางเรา เป็นคนแบ่งรายได้ให้กับลูกค้า<br />\r\nเงินที่ลูกค้าเติมเข้ามาเป็นเงินที่ลูกค้าร่วมลงทุนกับบริษัท</p>\r\n\r\n<p>ส่วนสินค้ามาจากร้านค้าที่ต้องการเพิ่มยอดขาย<br />\r\n<br />\r\n<br />\r\nสินค้าทุกอย่างที่ลูกค้าได้ทำการกดรับออเดอร์ระบบจับโดยอัตโนมัติหากมีสินค้าที่มียอดมีมากกว่าในระบบลูกค้าสามารถทำการเพิ่มยอดชำระเพื่อทำคำสั่งซื้อให้เสร็จสิ้นและถอนเงินค่ะ<br />\r\n<br />\r\nในการเข้าจับออเดอร์ตรงนี้ เราจะได้ค่าคอมมิชชั่นจาการที่เราเข้าทำการจับออเดอร์<br />\r\nทางร้านจะจ้างทางระบบเพื่อเป็นการโปรโมทสินค้าทางระบบ เพิ่มยอดขายให้กับแบนด์กับร้านค้า<br />\r\n<br />\r\nระบบออเดอร์จะรีวันต่อวันนะค่ะ เป็นระบบอัตโนมัติ</p>', '会社の資格', '<p>ของเราเป็นการทำกำไรผ่านแพตฟอร์ม โดยการเพิ่มยอดขายการสั่งซื้อให้แบรนด์สินค้าชั้นนำเพียงแค่กดจับออเดอร์ก็ได้กำไรได้แล้วค่ะไม่ใช่การพนัน--ไม่ใช่แชร์ลูกโซ่--</p>\r\n\r\n<p><br />\r\nแพตฟอร์ม ของเราเป็นตัวกลางซื้อขายของออนไลน์ให้กับร้านค้าเล็กๆจนถึงร้านค้าใหญ่ๆที่ต้องการเพิ่มยอดขายให้กับทางร้าน โดยมีร้านค้าจาก eBay-Alibaba-Amazon-BestBuy และอื่นๆอีกมากมายค่อยซื้อสินค้า</p>\r\n\r\n<p><br />\r\nบริษัทมีรายได้จากการซื้อสินค้าของพาร์ทเนอร์สินค้าทุกอย่างมีบวกค่าบริการของแพตฟอร์มไปเรียบร้อย</p>\r\n\r\n<p>ส่วนเงินกำไรที่ลูกค้าได้ จะได้จากบริษัททางเรา เป็นคนแบ่งรายได้ให้กับลูกค้า<br />\r\nเงินที่ลูกค้าเติมเข้ามาเป็นเงินที่ลูกค้าร่วมลงทุนกับบริษัท</p>\r\n\r\n<p>ส่วนสินค้ามาจากร้านค้าที่ต้องการเพิ่มยอดขาย<br />\r\n<br />\r\n<br />\r\nสินค้าทุกอย่างที่ลูกค้าได้ทำการกดรับออเดอร์ระบบจับโดยอัตโนมัติหากมีสินค้าที่มียอดมีมากกว่าในระบบลูกค้าสามารถทำการเพิ่มยอดชำระเพื่อทำคำสั่งซื้อให้เสร็จสิ้นและถอนเงินค่ะ<br />\r\n<br />\r\nในการเข้าจับออเดอร์ตรงนี้ เราจะได้ค่าคอมมิชชั่นจาการที่เราเข้าทำการจับออเดอร์<br />\r\nทางร้านจะจ้างทางระบบเพื่อเป็นการโปรโมทสินค้าทางระบบ เพิ่มยอดขายให้กับแบนด์กับร้านค้า<br />\r\n<br />\r\nระบบออเดอร์จะรีวันต่อวันนะค่ะ เป็นระบบอัตโนมัติ</p>');

-- ----------------------------
-- Table structure for xy_io_log
-- ----------------------------
DROP TABLE IF EXISTS `xy_io_log`;
CREATE TABLE `xy_io_log`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `oid` char(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `amount` decimal(7, 2) NOT NULL COMMENT '支付金额',
  `tran_amount` decimal(7, 2) NOT NULL COMMENT '实收金额',
  `type` int(11) NOT NULL DEFAULT 1 COMMENT '1收入(用户充值) 2支出(用户提现)',
  `addtime` int(10) UNSIGNED NOT NULL COMMENT '交易时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `oid`(`oid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '平台收支记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of xy_io_log
-- ----------------------------

-- ----------------------------
-- Table structure for xy_level
-- ----------------------------
DROP TABLE IF EXISTS `xy_level`;
CREATE TABLE `xy_level`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(36) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `order_num` int(11) NULL DEFAULT NULL COMMENT '接单限制',
  `num` decimal(18, 2) NULL DEFAULT NULL,
  `addtime` datetime NULL DEFAULT NULL,
  `bili` decimal(18, 4) NULL DEFAULT NULL COMMENT '比例',
  `level` int(11) NULL DEFAULT NULL COMMENT 'd等级',
  `tixian_ci` int(11) NULL DEFAULT NULL COMMENT '提现次数',
  `tixian_min` decimal(18, 2) NULL DEFAULT NULL,
  `tixian_max` decimal(18, 2) NULL DEFAULT NULL COMMENT '提现最大金额',
  `num_min` decimal(18, 2) NULL DEFAULT NULL,
  `cids` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `tixian_nim_order` int(11) NULL DEFAULT NULL COMMENT '提现最少完成订单数',
  `auto_vip_xu_num` int(11) NULL DEFAULT NULL COMMENT '自动升级vip需要邀请的人',
  `tixian_shouxu` varchar(36) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '0' COMMENT '提现手续费',
  `pic` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of xy_level
-- ----------------------------
INSERT INTO `xy_level` VALUES (1, 'VIP 1', 3, 100.00, '2020-02-05 17:48:29', 0.0100, 0, 3, 100.00, 10000000000.00, 100.00, '', 3, 3, '0', '/public/level/lv1.png');
INSERT INTO `xy_level` VALUES (2, 'VIP 2', 5, 300.00, '2020-02-05 17:48:29', 0.0200, 1, 6, 300.00, 6000.00, 300.00, '', 10, 8, '0', '/public/level/lv2.png');
INSERT INTO `xy_level` VALUES (3, 'VIP 3', 10, 500.00, '2020-02-05 17:48:29', 0.0300, 2, 6, 500.00, 100000.00, 500.00, '', 15, 12, '0', '/public/level/lv3.png');
INSERT INTO `xy_level` VALUES (4, 'VIP 4', 40, 1000.00, '2020-02-05 17:48:29', 0.0200, 3, 8, 1000.00, 350000.00, 1000.00, '', 30, 36, '0', '/public/level/lv4.png');
INSERT INTO `xy_level` VALUES (5, 'VIP 5', 50, 3000.00, '2021-08-07 00:00:00', 0.0200, 4, 8, 3000.00, 5000000.00, 3000.00, '', 45, 70, '0', '/public/level/lv5.png');
INSERT INTO `xy_level` VALUES (6, 'VIP 6', 60, 5000.00, '2021-08-07 00:00:00', 0.0200, 5, 8, 5000.00, 800000.00, 5000.00, '', 80, 80, '0', '/public/level/lv6.png');
INSERT INTO `xy_level` VALUES (7, 'VIP 7', 70, 10000.00, '2021-08-07 00:00:00', 0.0200, 6, 8, 10000.00, 10000000.00, 10000.00, '', 80, 90, '0', '/public/level/lv7.png');
INSERT INTO `xy_level` VALUES (8, 'VIP 8', 80, 50000.00, '2021-08-07 00:00:00', 0.0220, 7, 10, 50000.00, 10000000.00, 50000.00, '', 80, 100, '0', '/public/level/lv8.png');

-- ----------------------------
-- Table structure for xy_lixibao
-- ----------------------------
DROP TABLE IF EXISTS `xy_lixibao`;
CREATE TABLE `xy_lixibao`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NULL DEFAULT NULL,
  `num` decimal(18, 5) NULL DEFAULT NULL,
  `addtime` int(11) NULL DEFAULT NULL,
  `endtime` int(11) NULL DEFAULT NULL,
  `type` int(11) NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  `yuji_num` decimal(18, 5) NULL DEFAULT NULL,
  `sid` int(11) NULL DEFAULT NULL,
  `is_qu` int(11) NULL DEFAULT 0,
  `shouxu` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `real_num` decimal(18, 5) NULL DEFAULT 0.00000,
  `is_sy` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of xy_lixibao
-- ----------------------------

-- ----------------------------
-- Table structure for xy_lixibao_list
-- ----------------------------
DROP TABLE IF EXISTS `xy_lixibao_list`;
CREATE TABLE `xy_lixibao_list`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `day` int(11) NULL DEFAULT NULL,
  `bili` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `min_num` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `max_num` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `addtime` int(11) NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  `shouxu` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of xy_lixibao_list
-- ----------------------------
INSERT INTO `xy_lixibao_list` VALUES (1, 'one day', 1, '0.003', '100', '200000', 1629018716, 1, '0.01');
INSERT INTO `xy_lixibao_list` VALUES (2, 'Seven days', 7, '0.005', '100', '500000', 1629018876, 1, '0.02');
INSERT INTO `xy_lixibao_list` VALUES (3, 'One month', 30, '0.01', '100', '500000', 1629018882, 1, '0.03');
INSERT INTO `xy_lixibao_list` VALUES (4, 'One year', 365, '0.015', '100', '500000', 1629018893, 1, '0.01');

-- ----------------------------
-- Table structure for xy_member_address
-- ----------------------------
DROP TABLE IF EXISTS `xy_member_address`;
CREATE TABLE `xy_member_address`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '会员ID',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '收货姓名',
  `tel` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '收货手机',
  `area` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '地区',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '地址-详情',
  `is_default` tinyint(1) UNSIGNED NULL DEFAULT 0 COMMENT '默认地址',
  `addtime` int(11) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_xy_member_address_uid`(`uid`) USING BTREE,
  INDEX `index_xy_member_address_is_default`(`is_default`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2109 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '会员收货地址' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of xy_member_address
-- ----------------------------
INSERT INTO `xy_member_address` VALUES (2105, 12229, '12312', '123123', '1231231', '1231231', 0, 1665819303);
INSERT INTO `xy_member_address` VALUES (2106, 12230, '测试', '306699999', '英国', '流浪者', 0, 1724845427);
INSERT INTO `xy_member_address` VALUES (2107, 12232, 'sugel', '+661238569', 'US', '336', 0, 1724848579);
INSERT INTO `xy_member_address` VALUES (2108, 12234, 'ceshi', '+85212345678', 'US', '9685', 0, 1724852853);

-- ----------------------------
-- Table structure for xy_message
-- ----------------------------
DROP TABLE IF EXISTS `xy_message`;
CREATE TABLE `xy_message`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL DEFAULT 0 COMMENT '接收人ID',
  `sid` int(11) NOT NULL DEFAULT 0 COMMENT '发送人ID',
  `title` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '信息标题',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '正文内容',
  `addtime` int(11) NOT NULL COMMENT '发表时间',
  `type` int(11) NOT NULL DEFAULT 1 COMMENT '消息类型 1公告 2通知',
  `status` int(11) NOT NULL COMMENT '是否阅读状态',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `sid`(`sid`) USING BTREE,
  INDEX `uid`(`uid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 141 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '会员-消息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of xy_message
-- ----------------------------
INSERT INTO `xy_message` VALUES (1, 6633, 0, 'ระบบแจ้งเตือน', 'คุณมีคุณสมบัติถึงเกณฑ์การอัพระดับแล้ว การอัพระดับโดยอัตโนมัติ', 1657186005, 2, 0);
INSERT INTO `xy_message` VALUES (2, 6633, 0, 'ระบบแจ้งเตือน', 'คุณมีคุณสมบัติถึงเกณฑ์การอัพระดับแล้ว การอัพระดับโดยอัตโนมัติ', 1657194824, 2, 0);
INSERT INTO `xy_message` VALUES (3, 6687, 0, '系统通知', '交易订单UB2207081237144579已被系统强制取消，如有疑问请联系客服', 1657255259, 2, 0);
INSERT INTO `xy_message` VALUES (4, 6630, 0, 'ระบบแจ้งเตือน', 'คุณมีคุณสมบัติถึงเกณฑ์การอัพระดับแล้ว การอัพระดับโดยอัตโนมัติ', 1657349331, 2, 0);
INSERT INTO `xy_message` VALUES (5, 6887, 0, 'System notification', 'Recharge orderSY2207091558272116has been returned. If you have any questions, please contact customer service', 1657353512, 2, 0);
INSERT INTO `xy_message` VALUES (6, 6633, 0, 'ระบบแจ้งเตือน', 'คุณมีคุณสมบัติถึงเกณฑ์การอัพระดับแล้ว การอัพระดับโดยอัตโนมัติ', 1657355728, 2, 0);
INSERT INTO `xy_message` VALUES (7, 6639, 0, 'ระบบแจ้งเตือน', 'คุณมีคุณสมบัติถึงเกณฑ์การอัพระดับแล้ว การอัพระดับโดยอัตโนมัติ', 1657444743, 2, 0);
INSERT INTO `xy_message` VALUES (8, 6630, 0, 'ระบบแจ้งเตือน', 'คุณมีคุณสมบัติถึงเกณฑ์การอัพระดับแล้ว การอัพระดับโดยอัตโนมัติ', 1657448056, 2, 0);
INSERT INTO `xy_message` VALUES (9, 7046, 0, 'System notification', 'Recharge orderSY2207101812505013has been returned. If you have any questions, please contact customer service', 1657448825, 2, 0);
INSERT INTO `xy_message` VALUES (10, 6633, 0, 'ระบบแจ้งเตือน', 'คุณมีคุณสมบัติถึงเกณฑ์การอัพระดับแล้ว การอัพระดับโดยอัตโนมัติ', 1657462494, 2, 0);
INSERT INTO `xy_message` VALUES (11, 7086, 0, 'System notification', 'Recharge orderSY2207111141287850has been returned. If you have any questions, please contact customer service', 1657510918, 2, 0);
INSERT INTO `xy_message` VALUES (12, 7131, 0, 'System notification', 'Recharge orderSY2207111538493313has been returned. If you have any questions, please contact customer service', 1657525165, 2, 0);
INSERT INTO `xy_message` VALUES (13, 6633, 0, 'ระบบแจ้งเตือน', 'คุณมีคุณสมบัติถึงเกณฑ์การอัพระดับแล้ว การอัพระดับโดยอัตโนมัติ', 1657532450, 2, 0);
INSERT INTO `xy_message` VALUES (14, 6639, 0, 'ระบบแจ้งเตือน', 'คุณมีคุณสมบัติถึงเกณฑ์การอัพระดับแล้ว การอัพระดับโดยอัตโนมัติ', 1657537622, 2, 0);
INSERT INTO `xy_message` VALUES (15, 7161, 0, 'System notification', 'Recharge orderSY2207112219404004has been returned. If you have any questions, please contact customer service', 1657549194, 2, 0);
INSERT INTO `xy_message` VALUES (16, 7185, 0, '系统通知', '交易订单UB2207112220165756已被系统强制取消，如有疑问请联系客服', 1657549653, 2, 0);
INSERT INTO `xy_message` VALUES (17, 7173, 0, 'System notification', 'Recharge orderSY2207121047127310has been returned. If you have any questions, please contact customer service', 1657594046, 2, 0);
INSERT INTO `xy_message` VALUES (18, 6633, 0, 'ระบบแจ้งเตือน', 'คุณมีคุณสมบัติถึงเกณฑ์การอัพระดับแล้ว การอัพระดับโดยอัตโนมัติ', 1657602708, 2, 0);
INSERT INTO `xy_message` VALUES (19, 6630, 0, 'ระบบแจ้งเตือน', 'คุณมีคุณสมบัติถึงเกณฑ์การอัพระดับแล้ว การอัพระดับโดยอัตโนมัติ', 1657629414, 2, 0);
INSERT INTO `xy_message` VALUES (20, 6632, 0, 'ระบบแจ้งเตือน', 'คุณมีคุณสมบัติถึงเกณฑ์การอัพระดับแล้ว การอัพระดับโดยอัตโนมัติ', 1657631070, 2, 0);
INSERT INTO `xy_message` VALUES (21, 6636, 0, 'ระบบแจ้งเตือน', 'คุณมีคุณสมบัติถึงเกณฑ์การอัพระดับแล้ว การอัพระดับโดยอัตโนมัติ', 1657685629, 2, 0);
INSERT INTO `xy_message` VALUES (22, 6648, 0, 'ระบบแจ้งเตือน', 'คุณมีคุณสมบัติถึงเกณฑ์การอัพระดับแล้ว การอัพระดับโดยอัตโนมัติ', 1657685745, 2, 0);
INSERT INTO `xy_message` VALUES (23, 7235, 0, 'System notification', 'Recharge orderSY2207131235002490has been returned. If you have any questions, please contact customer service', 1657686921, 2, 0);
INSERT INTO `xy_message` VALUES (24, 6648, 0, 'ระบบแจ้งเตือน', 'คุณมีคุณสมบัติถึงเกณฑ์การอัพระดับแล้ว การอัพระดับโดยอัตโนมัติ', 1657695658, 2, 0);
INSERT INTO `xy_message` VALUES (25, 6632, 0, 'ระบบแจ้งเตือน', 'คุณมีคุณสมบัติถึงเกณฑ์การอัพระดับแล้ว การอัพระดับโดยอัตโนมัติ', 1657717399, 2, 0);
INSERT INTO `xy_message` VALUES (26, 6630, 0, 'ระบบแจ้งเตือน', 'คุณมีคุณสมบัติถึงเกณฑ์การอัพระดับแล้ว การอัพระดับโดยอัตโนมัติ', 1657719330, 2, 0);
INSERT INTO `xy_message` VALUES (27, 7461, 0, 'System notification', 'Recharge orderSY2207141025168448has been returned. If you have any questions, please contact customer service', 1657765541, 2, 0);
INSERT INTO `xy_message` VALUES (28, 6633, 0, 'ระบบแจ้งเตือน', 'คุณมีคุณสมบัติถึงเกณฑ์การอัพระดับแล้ว การอัพระดับโดยอัตโนมัติ', 1657769607, 2, 0);
INSERT INTO `xy_message` VALUES (29, 7510, 0, 'System notification', 'Recharge orderSY2207141327376508has been returned. If you have any questions, please contact customer service', 1657777097, 2, 0);
INSERT INTO `xy_message` VALUES (30, 7516, 0, 'System notification', 'Recharge orderSY2207141446216760has been returned. If you have any questions, please contact customer service', 1657781205, 2, 0);
INSERT INTO `xy_message` VALUES (31, 7579, 0, '系统通知', '交易订单UB2207142158237029已被系统强制取消，如有疑问请联系客服', 1657807270, 2, 0);
INSERT INTO `xy_message` VALUES (32, 7562, 0, 'System notification', 'Recharge orderSY2207151018035414has been returned. If you have any questions, please contact customer service', 1657851551, 2, 0);
INSERT INTO `xy_message` VALUES (33, 7600, 0, '系统通知', '交易订单UB2207151202369798已被系统强制取消，如有疑问请联系客服', 1657857883, 2, 0);
INSERT INTO `xy_message` VALUES (34, 6630, 0, 'ระบบแจ้งเตือน', 'คุณมีคุณสมบัติถึงเกณฑ์การอัพระดับแล้ว การอัพระดับโดยอัตโนมัติ', 1657860767, 2, 0);
INSERT INTO `xy_message` VALUES (35, 7531, 0, 'System notification', 'Recharge orderSY2207151404481260has been returned. If you have any questions, please contact customer service', 1657865106, 2, 0);
INSERT INTO `xy_message` VALUES (36, 7662, 0, 'System notification', 'Recharge orderSY2207151705279710has been returned. If you have any questions, please contact customer service', 1657875934, 2, 0);
INSERT INTO `xy_message` VALUES (37, 7699, 0, 'System notification', 'Recharge orderSY2207151927329374has been returned. If you have any questions, please contact customer service', 1657884571, 2, 0);
INSERT INTO `xy_message` VALUES (38, 7699, 0, 'System notification', 'Recharge orderSY2207152026123559has been returned. If you have any questions, please contact customer service', 1657888163, 2, 0);
INSERT INTO `xy_message` VALUES (39, 6630, 0, 'ระบบแจ้งเตือน', 'คุณมีคุณสมบัติถึงเกณฑ์การอัพระดับแล้ว การอัพระดับโดยอัตโนมัติ', 1657970024, 2, 0);
INSERT INTO `xy_message` VALUES (40, 6637, 0, 'ระบบแจ้งเตือน', 'คุณมีคุณสมบัติถึงเกณฑ์การอัพระดับแล้ว การอัพระดับโดยอัตโนมัติ', 1657971107, 2, 0);
INSERT INTO `xy_message` VALUES (41, 7866, 0, 'System notification', 'Recharge orderSY2207171225066193has been returned. If you have any questions, please contact customer service', 1658031933, 2, 0);
INSERT INTO `xy_message` VALUES (42, 6649, 0, 'ระบบแจ้งเตือน', 'คุณมีคุณสมบัติถึงเกณฑ์การอัพระดับแล้ว การอัพระดับโดยอัตโนมัติ', 1658035623, 2, 0);
INSERT INTO `xy_message` VALUES (43, 7773, 0, '系统通知', '交易订单UB2207171517379383已被系统强制付款，如有疑问请联系客服', 1658045488, 2, 0);
INSERT INTO `xy_message` VALUES (44, 7913, 0, 'System notification', 'Recharge orderSY2207171746285649has been returned. If you have any questions, please contact customer service', 1658051465, 2, 0);
INSERT INTO `xy_message` VALUES (45, 7920, 0, '系统通知', '交易订单UB2207171954107655已被系统强制付款，如有疑问请联系客服', 1658064075, 2, 0);
INSERT INTO `xy_message` VALUES (46, 7966, 0, 'System notification', 'Recharge orderSY2207181153367891has been returned. If you have any questions, please contact customer service', 1658116480, 2, 0);
INSERT INTO `xy_message` VALUES (47, 7966, 0, 'System notification', 'Recharge orderSY2207181206537593has been returned. If you have any questions, please contact customer service', 1658117652, 2, 0);
INSERT INTO `xy_message` VALUES (48, 7875, 0, 'System notification', 'Recharge orderSY2207181349538606has been returned. If you have any questions, please contact customer service', 1658123596, 2, 0);
INSERT INTO `xy_message` VALUES (49, 6630, 0, 'ระบบแจ้งเตือน', 'คุณมีคุณสมบัติถึงเกณฑ์การอัพระดับแล้ว การอัพระดับโดยอัตโนมัติ', 1658137984, 2, 0);
INSERT INTO `xy_message` VALUES (50, 8005, 0, 'System notification', 'Recharge orderSY2207191609268730has been returned. If you have any questions, please contact customer service', 1658218572, 2, 0);
INSERT INTO `xy_message` VALUES (51, 8161, 0, 'System notification', 'Recharge orderSY2207191632508471has been returned. If you have any questions, please contact customer service', 1658219577, 2, 0);
INSERT INTO `xy_message` VALUES (52, 8151, 0, '系统通知', '交易订单UB2207191632097989已被系统强制付款，如有疑问请联系客服', 1658220055, 2, 0);
INSERT INTO `xy_message` VALUES (53, 8151, 0, '系统通知', '交易订单UB2207191642174539已被系统强制付款，如有疑问请联系客服', 1658220730, 2, 0);
INSERT INTO `xy_message` VALUES (54, 8151, 0, '系统通知', '交易订单UB2207191653082907已被系统强制付款，如有疑问请联系客服', 1658226884, 2, 0);
INSERT INTO `xy_message` VALUES (55, 8119, 0, '系统通知', '交易订单UB2207191801501081已被系统强制付款，如有疑问请联系客服', 1658229449, 2, 0);
INSERT INTO `xy_message` VALUES (56, 7658, 0, 'System notification', 'Recharge orderSY2207201038362122has been returned. If you have any questions, please contact customer service', 1658284843, 2, 0);
INSERT INTO `xy_message` VALUES (57, 6639, 0, 'ระบบแจ้งเตือน', 'คุณมีคุณสมบัติถึงเกณฑ์การอัพระดับแล้ว การอัพระดับโดยอัตโนมัติ', 1658292048, 2, 0);
INSERT INTO `xy_message` VALUES (58, 8189, 0, 'System notification', 'Recharge orderSY2207201546382117has been returned. If you have any questions, please contact customer service', 1658304081, 2, 0);
INSERT INTO `xy_message` VALUES (59, 8189, 0, 'System notification', 'Recharge orderSY2207201606549323has been returned. If you have any questions, please contact customer service', 1658304515, 2, 0);
INSERT INTO `xy_message` VALUES (60, 8189, 0, 'System notification', 'Recharge orderSY2207201629144925has been returned. If you have any questions, please contact customer service', 1658306582, 2, 0);
INSERT INTO `xy_message` VALUES (61, 8252, 0, 'System notification', 'Recharge orderSY2207201643241519has been returned. If you have any questions, please contact customer service', 1658306791, 2, 0);
INSERT INTO `xy_message` VALUES (62, 8189, 0, 'System notification', 'Recharge orderSY2207201644373270has been returned. If you have any questions, please contact customer service', 1658306794, 2, 0);
INSERT INTO `xy_message` VALUES (63, 8252, 0, 'System notification', 'Recharge orderSY2207201700461124has been returned. If you have any questions, please contact customer service', 1658307666, 2, 0);
INSERT INTO `xy_message` VALUES (64, 8090, 0, '系统通知', '交易订单UB2207202012221865已被系统强制付款，如有疑问请联系客服', 1658319157, 2, 0);
INSERT INTO `xy_message` VALUES (65, 8270, 0, 'System notification', 'Recharge orderSY2207202102467087has been returned. If you have any questions, please contact customer service', 1658322212, 2, 0);
INSERT INTO `xy_message` VALUES (66, 8189, 0, '系统通知', '交易订单UB2207201936032664已被系统强制付款，如有疑问请联系客服', 1658372120, 2, 0);
INSERT INTO `xy_message` VALUES (67, 8436, 0, 'System notification', 'Recharge orderSY2207221501292251has been returned. If you have any questions, please contact customer service', 1658473321, 2, 0);
INSERT INTO `xy_message` VALUES (68, 6639, 0, 'ระบบแจ้งเตือน', 'คุณมีคุณสมบัติถึงเกณฑ์การอัพระดับแล้ว การอัพระดับโดยอัตโนมัติ', 1658497980, 2, 0);
INSERT INTO `xy_message` VALUES (69, 8493, 0, 'System notification', 'Recharge orderSY2207222337055037has been returned. If you have any questions, please contact customer service', 1658504272, 2, 0);
INSERT INTO `xy_message` VALUES (70, 8493, 0, '系统通知', '交易订单UB2207222316591731已被系统强制取消，如有疑问请联系客服', 1658504301, 2, 0);
INSERT INTO `xy_message` VALUES (71, 7334, 0, 'ระบบแจ้งเตือน', 'คุณมีคุณสมบัติถึงเกณฑ์การอัพระดับแล้ว การอัพระดับโดยอัตโนมัติ', 1658570202, 2, 0);
INSERT INTO `xy_message` VALUES (72, 6639, 0, 'ระบบแจ้งเตือน', 'คุณมีคุณสมบัติถึงเกณฑ์การอัพระดับแล้ว การอัพระดับโดยอัตโนมัติ', 1658577586, 2, 0);
INSERT INTO `xy_message` VALUES (73, 8654, 0, 'System notification', 'Recharge orderSY2207232015485225has been returned. If you have any questions, please contact customer service', 1658578627, 2, 0);
INSERT INTO `xy_message` VALUES (74, 6632, 0, 'ระบบแจ้งเตือน', 'คุณมีคุณสมบัติถึงเกณฑ์การอัพระดับแล้ว การอัพระดับโดยอัตโนมัติ', 1658726891, 2, 0);
INSERT INTO `xy_message` VALUES (75, 8840, 0, 'System notification', 'Recharge orderSY2207251346534868has been returned. If you have any questions, please contact customer service', 1658728032, 2, 0);
INSERT INTO `xy_message` VALUES (76, 6656, 0, 'ระบบแจ้งเตือน', 'คุณมีคุณสมบัติถึงเกณฑ์การอัพระดับแล้ว การอัพระดับโดยอัตโนมัติ', 1658728423, 2, 0);
INSERT INTO `xy_message` VALUES (77, 8848, 0, 'System notification', 'Recharge orderSY2207251754523927has been returned. If you have any questions, please contact customer service', 1658742929, 2, 0);
INSERT INTO `xy_message` VALUES (78, 6639, 0, 'System notification', 'Please enter the password again', 1658749529, 2, 0);
INSERT INTO `xy_message` VALUES (79, 6637, 0, 'ระบบแจ้งเตือน', 'คุณมีคุณสมบัติถึงเกณฑ์การอัพระดับแล้ว การอัพระดับโดยอัตโนมัติ', 1658757254, 2, 0);
INSERT INTO `xy_message` VALUES (80, 8906, 0, 'System notification', 'Recharge orderSY2207261021385985has been returned. If you have any questions, please contact customer service', 1658802800, 2, 0);
INSERT INTO `xy_message` VALUES (81, 9026, 0, 'System notification', 'Recharge orderSY2207261012246510has been returned. If you have any questions, please contact customer service', 1658802804, 2, 0);
INSERT INTO `xy_message` VALUES (82, 8982, 0, 'System notification', 'Recharge orderSY2207261006477391has been returned. If you have any questions, please contact customer service', 1658802808, 2, 0);
INSERT INTO `xy_message` VALUES (83, 8932, 0, '系统通知', '交易订单UB2207261251106233已被系统强制付款，如有疑问请联系客服', 1658811877, 2, 0);
INSERT INTO `xy_message` VALUES (84, 7688, 0, 'ระบบแจ้งเตือน', 'คุณมีคุณสมบัติถึงเกณฑ์การอัพระดับแล้ว การอัพระดับโดยอัตโนมัติ', 1658836574, 2, 0);
INSERT INTO `xy_message` VALUES (85, 9246, 0, '系统通知', '交易订单UB2207262042358861已被系统强制付款，如有疑问请联系客服', 1658840486, 2, 0);
INSERT INTO `xy_message` VALUES (86, 6658, 0, 'ระบบแจ้งเตือน', 'คุณมีคุณสมบัติถึงเกณฑ์การอัพระดับแล้ว การอัพระดับโดยอัตโนมัติ', 1658891983, 2, 0);
INSERT INTO `xy_message` VALUES (87, 6639, 0, 'ระบบแจ้งเตือน', 'คุณมีคุณสมบัติถึงเกณฑ์การอัพระดับแล้ว การอัพระดับโดยอัตโนมัติ', 1658895187, 2, 0);
INSERT INTO `xy_message` VALUES (88, 9247, 0, '系统通知', '交易订单UB2207271350017119已被系统强制取消，如有疑问请联系客服', 1658901121, 2, 0);
INSERT INTO `xy_message` VALUES (89, 9247, 0, '系统通知', '交易订单UB2207271426492361已被系统强制取消，如有疑问请联系客服', 1658903217, 2, 0);
INSERT INTO `xy_message` VALUES (90, 9296, 0, 'System notification', 'Recharge orderSY2207271839025716has been returned. If you have any questions, please contact customer service', 1658918349, 2, 0);
INSERT INTO `xy_message` VALUES (91, 6632, 0, 'ระบบแจ้งเตือน', 'คุณมีคุณสมบัติถึงเกณฑ์การอัพระดับแล้ว การอัพระดับโดยอัตโนมัติ', 1658923824, 2, 0);
INSERT INTO `xy_message` VALUES (92, 9422, 0, 'System notification', 'Recharge orderSY2207272026147363has been returned. If you have any questions, please contact customer service', 1658925574, 2, 0);
INSERT INTO `xy_message` VALUES (93, 8570, 0, 'System notification', 'Recharge orderSY2207272020281256has been returned. If you have any questions, please contact customer service', 1658925578, 2, 0);
INSERT INTO `xy_message` VALUES (94, 9530, 0, 'System notification', 'Recharge orderSY2207281914239569has been returned. If you have any questions, please contact customer service', 1659007027, 2, 0);
INSERT INTO `xy_message` VALUES (95, 9677, 0, 'System notification', 'Recharge orderSY2207291551014102has been returned. If you have any questions, please contact customer service', 1659081311, 2, 0);
INSERT INTO `xy_message` VALUES (96, 6649, 0, 'ระบบแจ้งเตือน', 'คุณมีคุณสมบัติถึงเกณฑ์การอัพระดับแล้ว การอัพระดับโดยอัตโนมัติ', 1659098280, 2, 0);
INSERT INTO `xy_message` VALUES (97, 9733, 0, 'System notification', 'Recharge orderSY2207292041521136has been returned. If you have any questions, please contact customer service', 1659099748, 2, 0);
INSERT INTO `xy_message` VALUES (98, 9549, 0, 'System notification', 'Recharge orderSY2207301227153743has been returned. If you have any questions, please contact customer service', 1659155260, 2, 0);
INSERT INTO `xy_message` VALUES (99, 9549, 0, 'System notification', 'Recharge orderSY2207301243046815has been returned. If you have any questions, please contact customer service', 1659156199, 2, 0);
INSERT INTO `xy_message` VALUES (100, 7334, 0, 'ระบบแจ้งเตือน', 'คุณมีคุณสมบัติถึงเกณฑ์การอัพระดับแล้ว การอัพระดับโดยอัตโนมัติ', 1659164046, 2, 0);
INSERT INTO `xy_message` VALUES (101, 9792, 0, '系统通知', '交易订单UB2207301625374886已被系统强制取消，如有疑问请联系客服', 1659169656, 2, 0);
INSERT INTO `xy_message` VALUES (102, 7688, 0, 'ระบบแจ้งเตือน', 'คุณมีคุณสมบัติถึงเกณฑ์การอัพระดับแล้ว การอัพระดับโดยอัตโนมัติ', 1659268399, 2, 0);
INSERT INTO `xy_message` VALUES (103, 8521, 0, '系统通知', '交易订单UB2207312203108144已被系统强制付款，如有疑问请联系客服', 1659277184, 2, 0);
INSERT INTO `xy_message` VALUES (104, 6656, 0, 'ระบบแจ้งเตือน', 'คุณมีคุณสมบัติถึงเกณฑ์การอัพระดับแล้ว การอัพระดับโดยอัตโนมัติ', 1659323950, 2, 0);
INSERT INTO `xy_message` VALUES (105, 7333, 0, 'ระบบแจ้งเตือน', 'คุณมีคุณสมบัติถึงเกณฑ์การอัพระดับแล้ว การอัพระดับโดยอัตโนมัติ', 1659342481, 2, 0);
INSERT INTO `xy_message` VALUES (106, 10129, 0, 'System notification', 'Recharge orderSY2208011713485970has been returned. If you have any questions, please contact customer service', 1659345254, 2, 0);
INSERT INTO `xy_message` VALUES (107, 9968, 0, 'System notification', 'Recharge orderSY2208011822449699has been returned. If you have any questions, please contact customer service', 1659349394, 2, 0);
INSERT INTO `xy_message` VALUES (108, 10019, 0, 'System notification', 'Recharge orderSY2208011956483379has been returned. If you have any questions, please contact customer service', 1659355083, 2, 0);
INSERT INTO `xy_message` VALUES (109, 10222, 0, 'System notification', 'Recharge orderSY2208021231337876has been returned. If you have any questions, please contact customer service', 1659414843, 2, 0);
INSERT INTO `xy_message` VALUES (110, 10219, 0, 'System notification', 'Recharge orderSY2208021257306535has been returned. If you have any questions, please contact customer service', 1659416678, 2, 0);
INSERT INTO `xy_message` VALUES (111, 10219, 0, 'System notification', 'Recharge orderSY2208021238287294has been returned. If you have any questions, please contact customer service', 1659416689, 2, 0);
INSERT INTO `xy_message` VALUES (112, 10241, 0, '系统通知', '交易订单UB2208031612599336已被系统强制付款，如有疑问请联系客服', 1659518425, 2, 0);
INSERT INTO `xy_message` VALUES (113, 6658, 0, 'ระบบแจ้งเตือน', 'คุณมีคุณสมบัติถึงเกณฑ์การอัพระดับแล้ว การอัพระดับโดยอัตโนมัติ', 1659538350, 2, 0);
INSERT INTO `xy_message` VALUES (114, 6648, 0, 'ระบบแจ้งเตือน', 'คุณมีคุณสมบัติถึงเกณฑ์การอัพระดับแล้ว การอัพระดับโดยอัตโนมัติ', 1659589329, 2, 0);
INSERT INTO `xy_message` VALUES (115, 10513, 0, '系统通知', '交易订单UB2208041547356052已被系统强制付款，如有疑问请联系客服', 1659601090, 2, 0);
INSERT INTO `xy_message` VALUES (116, 10494, 0, '系统通知', '交易订单UB2208041747481396已被系统强制付款，如有疑问请联系客服', 1659608235, 2, 0);
INSERT INTO `xy_message` VALUES (117, 10569, 0, 'System notification', 'Recharge orderSY2208042157392292has been returned. If you have any questions, please contact customer service', 1659621475, 2, 0);
INSERT INTO `xy_message` VALUES (118, 6632, 0, 'ระบบแจ้งเตือน', 'คุณมีคุณสมบัติถึงเกณฑ์การอัพระดับแล้ว การอัพระดับโดยอัตโนมัติ', 1659759180, 2, 0);
INSERT INTO `xy_message` VALUES (119, 10775, 0, 'System notification', 'Recharge orderSY2208061751073124has been returned. If you have any questions, please contact customer service', 1659779498, 2, 0);
INSERT INTO `xy_message` VALUES (120, 10867, 0, 'System notification', 'Recharge orderSY2208071336426686has been returned. If you have any questions, please contact customer service', 1659850837, 2, 0);
INSERT INTO `xy_message` VALUES (121, 10890, 0, 'System notification', 'Recharge orderSY2208071604554004has been returned. If you have any questions, please contact customer service', 1659859533, 2, 0);
INSERT INTO `xy_message` VALUES (122, 10901, 0, 'System notification', 'Recharge orderSY2208071756392451has been returned. If you have any questions, please contact customer service', 1659866210, 2, 0);
INSERT INTO `xy_message` VALUES (123, 9857, 0, '系统通知', '交易订单UB2208071956532354已被系统强制取消，如有疑问请联系客服', 1659873525, 2, 0);
INSERT INTO `xy_message` VALUES (124, 10667, 0, 'System notification', 'Recharge orderSY2208072321358224has been returned. If you have any questions, please contact customer service', 1659924928, 2, 0);
INSERT INTO `xy_message` VALUES (125, 6642, 0, 'ระบบแจ้งเตือน', 'คุณมีคุณสมบัติถึงเกณฑ์การอัพระดับแล้ว การอัพระดับโดยอัตโนมัติ', 1659933625, 2, 0);
INSERT INTO `xy_message` VALUES (126, 6666, 0, 'ระบบแจ้งเตือน', 'คุณมีคุณสมบัติถึงเกณฑ์การอัพระดับแล้ว การอัพระดับโดยอัตโนมัติ', 1660012841, 2, 0);
INSERT INTO `xy_message` VALUES (127, 6637, 0, 'ระบบแจ้งเตือน', 'คุณมีคุณสมบัติถึงเกณฑ์การอัพระดับแล้ว การอัพระดับโดยอัตโนมัติ', 1660098597, 2, 0);
INSERT INTO `xy_message` VALUES (128, 6679, 0, 'ระบบแจ้งเตือน', 'คุณมีคุณสมบัติถึงเกณฑ์การอัพระดับแล้ว การอัพระดับโดยอัตโนมัติ', 1660106905, 2, 0);
INSERT INTO `xy_message` VALUES (129, 11309, 0, 'System notification', 'Recharge orderSY2208111525368640has been returned. If you have any questions, please contact customer service', 1660202772, 2, 0);
INSERT INTO `xy_message` VALUES (130, 6632, 0, 'ระบบแจ้งเตือน', 'คุณมีคุณสมบัติถึงเกณฑ์การอัพระดับแล้ว การอัพระดับโดยอัตโนมัติ', 1660208406, 2, 0);
INSERT INTO `xy_message` VALUES (131, 6663, 0, 'ระบบแจ้งเตือน', 'คุณมีคุณสมบัติถึงเกณฑ์การอัพระดับแล้ว การอัพระดับโดยอัตโนมัติ', 1660882698, 2, 0);
INSERT INTO `xy_message` VALUES (132, 11772, 0, '系统通知', '交易订单UB2208191807325504已被系统强制付款，如有疑问请联系客服', 1660904271, 2, 0);
INSERT INTO `xy_message` VALUES (133, 11786, 0, 'System notification', 'Recharge orderSY2208191817524744has been returned. If you have any questions, please contact customer service', 1660904314, 2, 0);
INSERT INTO `xy_message` VALUES (134, 11892, 0, '系统通知', '交易订单UB2208201352223510已被系统强制付款，如有疑问请联系客服', 1660975318, 2, 0);
INSERT INTO `xy_message` VALUES (135, 11894, 0, 'System notification', 'Recharge orderSY2208201409598141has been returned. If you have any questions, please contact customer service', 1660976167, 2, 0);
INSERT INTO `xy_message` VALUES (136, 6632, 0, 'ระบบแจ้งเตือน', 'คุณมีคุณสมบัติถึงเกณฑ์การอัพระดับแล้ว การอัพระดับโดยอัตโนมัติ', 1660984526, 2, 0);
INSERT INTO `xy_message` VALUES (137, 11944, 0, '系统通知', '交易订单UB2208212135313739已被系统强制付款，如有疑问请联系客服', 1661090416, 2, 0);
INSERT INTO `xy_message` VALUES (138, 11703, 0, 'System notification', 'Recharge orderSY2209051315575934has been returned. If you have any questions, please contact customer service', 1662354970, 2, 0);
INSERT INTO `xy_message` VALUES (139, 11969, 0, '系统通知', '交易订单UB2209091644097560已被系统强制付款，如有疑问请联系客服', 1662718255, 2, 0);
INSERT INTO `xy_message` VALUES (140, 12094, 0, 'System notification', 'Recharge orderSY2209151204289580has been returned. If you have any questions, please contact customer service', 1663214690, 2, 0);

-- ----------------------------
-- Table structure for xy_msg
-- ----------------------------
DROP TABLE IF EXISTS `xy_msg`;
CREATE TABLE `xy_msg`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '文本内容',
  `type` int(11) NOT NULL DEFAULT 1 COMMENT '1平台公告 2平台简介 3抢单规则 4代理合作 5常见问题',
  `addtime` int(11) NOT NULL COMMENT '发表时间',
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '0发布 1不发布',
  `author` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '作者',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of xy_msg
-- ----------------------------

-- ----------------------------
-- Table structure for xy_pay
-- ----------------------------
DROP TABLE IF EXISTS `xy_pay`;
CREATE TABLE `xy_pay`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `name2` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `ico` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `min` double(18, 2) NULL DEFAULT NULL,
  `max` double(18, 2) NULL DEFAULT NULL,
  `ewm` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `address` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NULL DEFAULT NULL,
  `tuijian` int(11) NOT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `sort` int(11) NOT NULL,
  `charge` int(11) NOT NULL COMMENT '手续费',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of xy_pay
-- ----------------------------
INSERT INTO `xy_pay` VALUES (1, '支付宝快捷支付', 'zfb', '/public/img/alipay.png', 0.01, 10000.00, '/upload/b59ab0f55665c54d/031cae943f1846c1.jpg', '', 0, 0, '/index/ctrl/recharge2?type=zfb', 0, 0);
INSERT INTO `xy_pay` VALUES (2, 'Wechatpay', 'wx', '/public/img/wx.png', 0.01, 5000.00, '/upload/b59ab0f55665c54d/031cae943f1846c1.jpg', '1', 0, 0, '/index/ctrl/recharge2?type=wx', 8, 0);
INSERT INTO `xy_pay` VALUES (3, 'Cardpay', 'card', '/public/img/card.png', 50.00, 5000000.00, '', '0', 1, 0, '/index/ctrl/recharge', 7, 0);
INSERT INTO `xy_pay` VALUES (4, 'BitPay', 'bipay', '/public/img/bit.png', 20.00, 100000.00, '', '3NnJVaE4dmFPvSTnGN6Zfvp1mgsqjeG1vv', 0, 1, '/index/ctrl/recharge2?type=bipay', 9, 0);
INSERT INTO `xy_pay` VALUES (5, 'PayPal pay', 'paypal', '/public/img/paypal.png', 0.01, 10000.00, '/upload/b59ab0f55665c54d/031cae943f1846c1.jpg', 'xxxxxxxxxxxx@qq.com', 0, 0, '/index/ctrl/recharge2?type=paysapi', 5, 0);
INSERT INTO `xy_pay` VALUES (6, 'USDT-TRC20', 'usdt', '/public/img/usdt.png', 20.00, 100000.00, '', '1111111111111111111111', 0, 1, '/index/ctrl/recharge_woaipay', 6, 1);
INSERT INTO `xy_pay` VALUES (7, 'USDT-ERC20', 'usdterc', '/public/img/usdt.png', 20.00, 100000.00, '', '0x48AdD16E222eDc1E2501d37098D883DcE1362197', 0, 1, '/index/ctrl/recharge_woaipay', 7, 10);
INSERT INTO `xy_pay` VALUES (8, 'KebPay', 'kebpay', '/public/img/bit.png', 1.00, 100000.00, '', '16031|11939abd874de319c13ebdce1a550583', 0, 1, '/index/ctrl/recharge6?type=kebpay', 9, 10);
INSERT INTO `xy_pay` VALUES (9, 'กสิกรไทย', 'kbkpay', '/public/img/bit.png', 1.00, 100000.00, '', '12002|a5938ded6843fc86568deb452a5da697', 0, 1, '/index/ctrl/recharge7?type=kbkpay', 10, 10);
INSERT INTO `xy_pay` VALUES (10, 'Qea', 'Qea', '/public/img/uz.png', 1.00, 100000.00, '', '12002|a5938ded6843fc86568deb452a5da697', 0, 1, '/index/ctrl/recharge_Qea?type=Qea', 11, 10);

-- ----------------------------
-- Table structure for xy_reads
-- ----------------------------
DROP TABLE IF EXISTS `xy_reads`;
CREATE TABLE `xy_reads`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `mid` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '消息ID',
  `uid` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '会员ID',
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '读取时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `mid-uid`(`mid`, `uid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '会员-消息读取记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of xy_reads
-- ----------------------------
INSERT INTO `xy_reads` VALUES (1, 30, 1, 1582140346);

-- ----------------------------
-- Table structure for xy_recharge
-- ----------------------------
DROP TABLE IF EXISTS `xy_recharge`;
CREATE TABLE `xy_recharge`  (
  `id` char(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `uid` int(11) NOT NULL COMMENT '用户ID',
  `real_name` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '充值姓名',
  `tel` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '手机号',
  `num` decimal(12, 2) NOT NULL COMMENT '充值金额',
  `type` int(11) NOT NULL DEFAULT 1 COMMENT '支付方式 1微信 2支付宝 3qq',
  `pic` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '打款凭证',
  `addtime` int(11) NOT NULL COMMENT '下单时间',
  `endtime` int(11) NOT NULL DEFAULT 0 COMMENT '处理时间',
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '订单状态 1下单成功 2充值成功 3充值失败',
  `pay_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `is_vip` int(11) NULL DEFAULT 0,
  `level` int(11) NULL DEFAULT NULL,
  `pay_type` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `charge` int(11) NOT NULL COMMENT '充值手续费',
  `payInfo` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `orderNo` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `orderDate` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `notifyDate` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uid`(`uid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '会员-充值表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of xy_recharge
-- ----------------------------

-- ----------------------------
-- Table structure for xy_reward_log
-- ----------------------------
DROP TABLE IF EXISTS `xy_reward_log`;
CREATE TABLE `xy_reward_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `oid` char(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '订单号',
  `uid` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '产生交易用户',
  `sid` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '交易对象',
  `num` decimal(10, 2) NOT NULL DEFAULT 0.00 COMMENT '交易数额',
  `lv` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '级差',
  `type` int(11) NOT NULL DEFAULT 0 COMMENT '订单类型 1充值订单(推广返佣) 2交易订单(交易返佣)',
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '佣金发放状态 0自动发放 1未发放 2已发放',
  `addtime` int(10) UNSIGNED NOT NULL COMMENT '创建时间',
  `endtime` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '处理时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `oid`(`oid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 202606 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '订单佣金发放记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of xy_reward_log
-- ----------------------------
INSERT INTO `xy_reward_log` VALUES (1, 'UB2207041826131995', 6638, 0, 36.00, 0, 2, 0, 1656930387, 0);
INSERT INTO `xy_reward_log` VALUES (202576, 'UB2210151535124481', 12229, 0, 59800.00, 0, 2, 0, 1665819336, 0);
INSERT INTO `xy_reward_log` VALUES (202577, 'UB2210271117511814', 12229, 0, 28470.00, 0, 2, 0, 1666952419, 0);
INSERT INTO `xy_reward_log` VALUES (202578, 'UB2210281834303864', 12229, 0, 68994.00, 0, 2, 0, 1666953294, 0);
INSERT INTO `xy_reward_log` VALUES (202579, 'UB2210281837254583', 12229, 0, 71874.00, 0, 2, 0, 1667043107, 0);
INSERT INTO `xy_reward_log` VALUES (202580, 'UB2210291933142848', 12229, 0, 19180.00, 0, 2, 0, 1667043222, 0);
INSERT INTO `xy_reward_log` VALUES (202581, 'UB2211021408527137', 12229, 0, 79992.00, 0, 2, 0, 1667897657, 0);
INSERT INTO `xy_reward_log` VALUES (202582, 'UB2211091701161541', 12229, 0, 39920.00, 0, 2, 0, 1667989152, 0);
INSERT INTO `xy_reward_log` VALUES (202583, 'UB2211091819352478', 12229, 0, 37554.00, 0, 2, 0, 1667989223, 0);
INSERT INTO `xy_reward_log` VALUES (202584, 'UB2211091936236435', 12229, 0, 57540.00, 0, 2, 0, 1667993809, 0);
INSERT INTO `xy_reward_log` VALUES (202585, 'UB2211091937189717', 12229, 0, 12750.00, 0, 2, 0, 1667993865, 0);
INSERT INTO `xy_reward_log` VALUES (202586, 'UB2211091948051391', 12229, 0, 11499.00, 0, 2, 0, 1667994516, 0);
INSERT INTO `xy_reward_log` VALUES (202587, 'UB2211091949125812', 12229, 0, 55500.00, 0, 2, 0, 1667994577, 0);
INSERT INTO `xy_reward_log` VALUES (202588, 'UB2211101425514425', 12229, 0, 83960.00, 0, 2, 0, 1668061570, 0);
INSERT INTO `xy_reward_log` VALUES (202589, 'UB2211101427001376', 12229, 0, 16900.00, 0, 2, 0, 1668061643, 0);
INSERT INTO `xy_reward_log` VALUES (202590, 'UB2408281944298091', 12230, 0, 5990.00, 0, 2, 0, 1724845510, 0);
INSERT INTO `xy_reward_log` VALUES (202591, 'UB2408281944298091', 12229, 12230, 41.93, 1, 2, 1, 1724845510, 0);
INSERT INTO `xy_reward_log` VALUES (202592, 'UB2408282036528189', 12232, 0, 5024.00, 0, 2, 0, 1724848636, 0);
INSERT INTO `xy_reward_log` VALUES (202593, 'UB2408282036528189', 12229, 12232, 15.07, 2, 2, 1, 1724848636, 0);
INSERT INTO `xy_reward_log` VALUES (202594, 'UB2408282036528189', 12230, 12232, 43.96, 1, 2, 1, 1724848636, 0);
INSERT INTO `xy_reward_log` VALUES (202595, 'UB2408282110428925', 12230, 0, 3020.00, 0, 2, 0, 1724850690, 0);
INSERT INTO `xy_reward_log` VALUES (202596, 'UB2408282110428925', 12229, 12230, 10.57, 1, 2, 1, 1724850690, 0);
INSERT INTO `xy_reward_log` VALUES (202597, 'UB2408282115064752', 12230, 0, 5290.00, 0, 2, 0, 1724850941, 0);
INSERT INTO `xy_reward_log` VALUES (202598, 'UB2408282115064752', 12229, 12230, 18.52, 1, 2, 1, 1724850941, 0);
INSERT INTO `xy_reward_log` VALUES (202599, 'UB2408282130011975', 12232, 0, 1049.00, 0, 2, 0, 1724851820, 0);
INSERT INTO `xy_reward_log` VALUES (202600, 'UB2408282130011975', 12229, 12232, 1.26, 2, 2, 1, 1724851820, 0);
INSERT INTO `xy_reward_log` VALUES (202601, 'UB2408282130011975', 12230, 12232, 3.67, 1, 2, 1, 1724851820, 0);
INSERT INTO `xy_reward_log` VALUES (202602, 'UB2408282148164814', 12234, 0, 49.00, 0, 2, 0, 1724852914, 0);
INSERT INTO `xy_reward_log` VALUES (202603, 'UB2408282148164814', 12229, 12234, 0.04, 3, 2, 1, 1724852914, 0);
INSERT INTO `xy_reward_log` VALUES (202604, 'UB2408282148164814', 12230, 12234, 0.06, 2, 2, 1, 1724852914, 0);
INSERT INTO `xy_reward_log` VALUES (202605, 'UB2408282148164814', 12232, 12234, 0.17, 1, 2, 1, 1724852914, 0);

-- ----------------------------
-- Table structure for xy_script
-- ----------------------------
DROP TABLE IF EXISTS `xy_script`;
CREATE TABLE `xy_script`  (
  `script` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '代码块',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of xy_script
-- ----------------------------
INSERT INTO `xy_script` VALUES ('', 1);

-- ----------------------------
-- Table structure for xy_shop_goods_cate
-- ----------------------------
DROP TABLE IF EXISTS `xy_shop_goods_cate`;
CREATE TABLE `xy_shop_goods_cate`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '商店名称',
  `bili` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '商品名称',
  `cate_info` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '商品描述',
  `goods_price` decimal(10, 2) NULL DEFAULT NULL COMMENT '商品价格',
  `cate_pic` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '商品展示图片',
  `addtime` int(11) NOT NULL COMMENT '添加时间',
  `status` int(11) NULL DEFAULT 0 COMMENT '上架状态 0不上架 1上架',
  `min` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '最小金额限制',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 167 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '商品表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of xy_shop_goods_cate
-- ----------------------------
INSERT INTO `xy_shop_goods_cate` VALUES (1, '家电', '0', '顶顶顶顶', NULL, 'http://qd2.cn/upload/4201872b7132c82b/9d3e81fb395d46ff.png', 1626512913, 0, '');
INSERT INTO `xy_shop_goods_cate` VALUES (2, '汽车', '0', '京东', NULL, 'http://qd2.cn/upload/4201872b7132c82b/9d3e81fb395d46ff.png', 1583381331, 0, '');
INSERT INTO `xy_shop_goods_cate` VALUES (3, '零食', '0', '唯品会专区', NULL, '/statics/img/w.svg', 1583409871, 0, '');
INSERT INTO `xy_shop_goods_cate` VALUES (166, '美妆', '0', '美妆', NULL, '', 1583409885, 0, '');
INSERT INTO `xy_shop_goods_cate` VALUES (4, '装饰品', '0', '111', NULL, 'http://qd2.cn/upload/4201872b7132c82b/9d3e81fb395d46ff.png', 1583381309, 0, '');

-- ----------------------------
-- Table structure for xy_shop_goods_list
-- ----------------------------
DROP TABLE IF EXISTS `xy_shop_goods_list`;
CREATE TABLE `xy_shop_goods_list`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shop_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '商店名称',
  `en_shop_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `goods_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '商品名称',
  `en_goods_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `goods_info` varchar(5000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '商品描述',
  `en_goods_info` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `goods_price` decimal(10, 2) NOT NULL COMMENT '商品价格',
  `goods_pic` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '商品展示图片',
  `addtime` int(11) NOT NULL COMMENT '添加时间',
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '上架状态 0不上架 1上架',
  `cid` int(11) NULL DEFAULT 1,
  `is_tj` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 954 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '商品表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of xy_shop_goods_list
-- ----------------------------
INSERT INTO `xy_shop_goods_list` VALUES (1, '信酷小米专营店', 'MIUIMIUIMIUIMIUIMIUIMIUI', '小米/MIUI', 'MIUIMIUIMIUIMIUIMIUI', '<div style=\"width: 100%;text-align: center\"><img data-lazyloaded=\"true\" src=\"https://wx.hi.cn/attachment/images/3/2019/12/a5DD5WWZwEdT5mZ5dlDi6cttvO6ttidO.jpg\" /><img data-lazyloaded=\"true\" src=\"https://wx.hi.cn/attachment/images/3/2019/12/xtwBtwyzvzwbtj67q0yyyGGTU0U7ttT7.jpg\" /><img data-lazyloaded=\"true\" src=\"https://wx.hi.cn/attachment/images/3/2019/12/aBnF546904l2jfNNv6333926JLe023q3.jpg\" /><img data-lazyloaded=\"true\" src=\"https://wx.hi.cn/attachment/images/3/2019/12/jEKScyUUGyUEaHvhGCX0VVCHQLakvYAI.jpg\" /><img data-lazyloaded=\"true\" src=\"https://wx.hi.cn/attachment/images/3/2019/12/n0HHNe2W0r22H1WEnsS7jCScws2A1sn2.jpg\" /><img data-lazyloaded=\"true\" src=\"https://wx.hi.cn/attachment/images/3/2019/12/V1sFA4X8U6e1MIU44u8fS1u246i88UFM.jpg\" /><img data-lazyloaded=\"true\" src=\"https://wx.hi.cn/attachment/images/3/2019/12/RI11mTdzSRMWOqS68t26d11R1R3jtSto.jpg\" /><img data-lazyloaded=\"true\" src=\"https://wx.hi.cn/attachment/images/3/2019/12/GEn9IIwNfFI9niU6DPZ9npUV6n66FVnI.jpg\" /><img data-lazyloaded=\"true\" src=\"https://wx.hi.cn/attachment/images/3/2019/12/ZgqMP7iIG5SmA5t5qr5WgTz5miPSmB46.jpg\" /><img data-lazyloaded=\"true\" src=\"https://wx.hi.cn/attachment/images/3/2019/12/Bl0YhM95Q9ap1zB5fpF9PZpy9Bp5yyRA.jpg\" /><img data-lazyloaded=\"true\" src=\"https://wx.hi.cn/attachment/images/3/2019/12/xTtA0bmBhaERfSuEdax8bmBtADFxhNn0.jpg\" /><img data-lazyloaded=\"true\" src=\"https://wx.hi.cn/attachment/images/3/2019/12/I8h3ChhD44C2Ed82D2RFeECrO8chr4C2.jpg\" /><img data-lazyloaded=\"true\" src=\"https://wx.hi.cn/attachment/images/3/2019/12/YOFKzjhCdHCduBD8hR9F6EBUeRUh8eHD.jpg\" /><img data-lazyloaded=\"true\" src=\"https://wx.hi.cn/attachment/images/3/2019/12/Mu8HDkr8UCm7h2auDzxjAAkxkKyK80zz.jpg\" /><img data-lazyloaded=\"true\" src=\"https://wx.hi.cn/attachment/images/3/2019/12/pe0wjlww3WZasWllfGKqea02gRusNZ8w.jpg\" /><img data-lazyloaded=\"true\" src=\"https://wx.hi.cn/attachment/images/3/2019/12/d1aWewWIBYBd41BZYy91wyWdO54PP2zA.jpg\" /><img data-lazyloaded=\"true\" src=\"https://wx.hi.cn/attachment/images/3/2019/12/wE6tY2bBef9JFTya3FZz5ROn65PB99Bb.jpg\" /><img data-lazyloaded=\"true\" src=\"https://wx.hi.cn/attachment/images/3/2019/12/AJS9m33GKgGNG9ehAaaMA60JMWeA7he0.jpg\" /><img data-lazyloaded=\"true\" src=\"https://wx.hi.cn/attachment/images/3/2019/12/Ed2w42xIwa9I3OM3zP5i99I98Isx6D9I.jpg\" /><img data-lazyloaded=\"true\" src=\"https://wx.hi.cn/attachment/images/3/2019/12/IP6HzhnZdn8Zt09nLfzduLX8H0X6iXcD.jpg\" /><img data-lazyloaded=\"true\" src=\"https://wx.hi.cn/attachment/images/3/2019/12/IsQ02d5zAZwqqwdWyQPaQnT5Wu05gMsQ.jpg\" /><img data-lazyloaded=\"true\" src=\"https://wx.hi.cn/attachment/images/3/2019/12/M4855SkJn5Nv67c76AmMkJKm5dnj5aKV.jpg\" /><img data-lazyloaded=\"true\" src=\"https://wx.hi.cn/attachment/images/3/2019/12/dYZ4a5BgsjoAsTBt8Q5BSvs7ovJSs7u7.jpg\" /><img data-lazyloaded=\"true\" src=\"https://wx.hi.cn/attachment/images/3/2019/12/izT2DgGND24d744Lg9HDELlnd9L2D8EQ.jpg\" /><img data-lazyloaded=\"true\" src=\"https://wx.hi.cn/attachment/images/3/2019/12/TVWHzwWwwW12WvWE1abFzXHs21epvw9z.jpg\" /><img data-lazyloaded=\"true\" src=\"https://wx.hi.cn/attachment/images/3/2019/12/V35V03d5z5Q2vIVm7QQVi7I8wv2Zw7qo.jpg\" /><img data-lazyloaded=\"true\" src=\"https://wx.hi.cn/attachment/images/3/2019/12/j16T1tje6HGFjfq3q1zf15V113zt55GQ.jpg\" /><img data-lazyloaded=\"true\" src=\"https://wx.hi.cn/attachment/images/3/2019/12/bEHXWUDA2SrsCUhXEYwDWXEYux5kXc5E.jpg\" /><img data-lazyloaded=\"true\" src=\"https://wx.hi.cn/attachment/images/3/2019/12/f2870u4uFBUJj0E8SIope5U0Sn4a6Psb.jpg\" /> <img data-lazyloaded=\"true\" src=\"https://wx.hi.cn/attachment/images/3/2019/12/FYmTqmlD0Dgv7RyhEDLtdgGleQ07Vr40.png\" /></div>', '<p>MIUIMIUIMIUIMIUIMIUIMIUIMIUIMIUIMIUIMIUIMIUI</p>', 1.00, '/upload/goods_img/大家电/5db3b89a8d174.jpg', 1623078907, 0, 1, 1);
INSERT INTO `xy_shop_goods_list` VALUES (2, '邮乐安阳馆', '', '【汤阴县积分用户专享】洗衣机XpB—126-9896S', '', '', '', 1.00, '/upload/goods_img/大家电/5db3b89a9f288.jpg', 1578206762, 0, 1, 1);
INSERT INTO `xy_shop_goods_list` VALUES (3, '海信电器旗舰店', '', '海信（Hisense）HZ39E35A 39英寸高清手机交互 轻薄金属 WIFI人工智能液晶电视机', '', '', '', 2.00, '/upload/goods_img/大家电/5db3b89ab61bd.jpg', 1617706782, 0, 1, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (4, '邮滋味如皋馆专柜', '', '创维9公斤变频滚筒洗衣机  型号：F9015NC-炫金  如皋免费送货上门南通包邮', '', '<p>创维洗衣机，安全健康专家，免费上门安装，绝对优惠，每月线下更有现场特惠活动</p>', '', 1.00, '/upload/goods_img/大家电/5db3b89b52437.jpg', 1617706896, 0, 1, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (5, '邮滋味如皋馆专柜', '', '创维2P定频立式柜机，型号：KFR-50LW/F2DA1A-3（限如皋地区免费送货上门安装）', '', '创维定频空调，免费上门安装，绝对优惠，每月更有现场特惠活动', '', 4.00, '/upload/goods_img/大家电/5db3b89b6e95e.jpg', 1572059510, 0, 1, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (6, '创维电视官方旗舰店', '', '创维/SKYWORTH 58H8M 58英寸4K超高清全面屏防蓝光智能语音HDR超薄网络电视', '', '<p>4K超高清，声像自然，一场声觉革新，视觉体验，光学防蓝光，护眼不偏色</p>', '', 3.00, '/upload/goods_img/大家电/5db3b89b79d10.jpg', 1617706947, 0, 1, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (7, '邮乐洛阳', '', '【洛阳金融积分兑换】TCL 205升 三门电冰箱 （星空银） BC（邮政网点配送）', '', '', '', 1.00, '/upload/goods_img/大家电/5db3b89bc11c1.jpg', 1572059510, 0, 1, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (8, '邮滋味如皋馆专柜', '', '创维9公斤全自动波轮洗衣机，型号XQB90-52BAS淡雅银如皋免费送货上门包邮', '', '<p>创维家电大品牌，安全可靠，夏季特惠；每月现场有特惠活动</p>', '', 5.00, '/upload/goods_img/大家电/5db3b89bcfc24.jpg', 1617706839, 0, 1, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (9, '信阳邮约会', '', '【限信阳地区积分兑换专用，不对外销售】家用洗衣机，图片仅供参考', '', '', '', 1.00, '/upload/goods_img/大家电/5db3b89be0d98.jpg', 1572059510, 0, 1, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (10, '邮乐安阳馆', '', '【滑县积分用户专享】创维电器洗衣机9公斤波轮安阳', '', '', '', 1.00, '/upload/goods_img/大家电/5db3b89bee474.jpg', 1572059510, 0, 1, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (11, '邮乐安阳馆', '', '美菱3开门冰箱BCD-209M3CX【汤阴县积分兑换专用，其他下单不发货】', '', '', '', 1.00, '/upload/goods_img/大家电/5db3b89c06586.jpg', 1572059510, 0, 1, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (12, '邮乐安阳馆', '', '美菱电冰箱209L3CS【安阳县积分兑换用户专用，其他地区发】', '', '', '', 1.00, '/upload/goods_img/大家电/5db3b89c16f2a.jpg', 1572059510, 0, 1, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (13, '信阳邮约会', '', '【限信阳地区积分兑换专用，不对外销售】自动洗衣机 家用洗衣机，图片仅供参考', '', '', '', 2.00, '/upload/goods_img/大家电/5db3b89c22e95.jpg', 1572059510, 0, 1, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (14, '邮乐安阳馆', '', '【滑县积分用户专享】创维电器电视50寸4K智能安阳', '', '', '', 3.00, '/upload/goods_img/大家电/5db3b89c2bb37.jpg', 1572059510, 0, 1, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (15, '邮乐安阳馆', '', '【安阳县积分用户专享】长虹液晶电视55U1', '', '', '', 3.00, '/upload/goods_img/大家电/5db3b89f48109.jpg', 1572059510, 0, 1, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (16, '海信电器旗舰店', '', '海信（Hisense）HZ32E30D 32英寸蓝光高清平板液晶电视机 酒店宾馆卧室推荐', '', '【海信今日限时特惠-到手价788元！】限量200台！抢完即止！', '', 749.00, '/upload/goods_img/大家电/5db3b89f51194.jpg', 1572059510, 0, 1, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (17, '邮滋味如皋馆专柜', '', '邮乐特卖：庭美家用消毒柜    型号：YTP-280    如皋免费送货上门包邮配送', '', '<p>庭美消毒柜，安全可靠，邮乐特惠；每月现场有特惠活动&mdash;&mdash;18862731238</p>', '', 755.00, '/upload/goods_img/大家电/5db3b89f5ec57.jpg', 1617706977, 0, 1, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (18, '吉舜诚商城专柜', '', '飞利浦（PHILIPS）  19英寸液晶电视机 显示器两用 hdmi高清接口', '', '19PFF2650', '', 799.00, '/upload/goods_img/大家电/5db3b89fb14ba.jpg', 1572059510, 0, 1, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (19, '创维集团官方旗舰店', '', '创维/SKYWORTH 32X3 32英寸窄边非智能老人机蓝光高清节能LED平板液晶电视机', '', '<p>蓝光高清，经典窄边，节能液晶，简单好用，谁用谁知道，实用耐用款</p>', '', 799.00, '/upload/goods_img/大家电/5db3b89fc8fa8.jpg', 1617706874, 0, 1, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (20, '吉舜诚商城专柜', '', '飞利浦（PHILIPS）22英寸LED高清液晶平板电视机含底座 黑色', '', '22PFF2650/T3', '', 899.00, '/upload/goods_img/大家电/5db3b89fd917b.jpg', 1572059510, 0, 1, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (21, '创维集团官方旗舰店', '', '创维/SKYWORTH 32X6 32英寸10核窄边高清 人工智能 网络WIFI 卧室液晶平板电视机', '', '超值钜惠，高清智能电视，WIFI，酷开系统，10核处理器', '', 899.00, '/upload/goods_img/大家电/5db3b89fe6086.jpg', 1572059510, 0, 1, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (22, '海信电器旗舰店', '', '海信 (Hisense) HZ32E35A 32英寸AI智能WIFI 轻薄金属 卧室神器高清电视机', '', '', '', 899.00, '/upload/goods_img/大家电/5db3b8a0004c2.jpg', 1572059510, 0, 1, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (23, '邮滋味如皋馆专柜', '', '创维邮乐特卖： 32寸液晶电视机，型号：32E381S   如皋免费送货上门，南通包邮，华东地区配货', '', '创维液晶电视大品牌，夏季特惠；每月现场有特惠活动', '', 899.00, '/upload/goods_img/大家电/5db3b8a01be30.jpg', 1572059510, 0, 1, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (24, '琥麟电器专柜', '', '海信 XQB60-H3568 6公斤全自动波轮洗衣机', '', '', '', 749.00, '/upload/goods_img/大家电/5db3b8a0279b3.jpg', 1572059510, 0, 1, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (25, '邮滋味如皋馆专柜', '', '创维7公斤全自动波轮洗衣机，型号：XQB70-21C淡雅银，如皋免费送货上门包邮配送', '', '<p>创维家电大品牌，安全可靠，邮乐特惠；每月现场有特惠活动&mdash;&mdash;18862731238</p>', '', 928.00, '/upload/goods_img/大家电/5db3b8a0367fe.jpg', 1617707098, 0, 1, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (26, '邮滋味如皋馆专柜', '', '创维单冷冰柜，型号：BD/C-160雅白，如皋地区免费送货上门安装南通地区包邮', '', '<p>创维冰柜，安全健康专家，免费上门安装，绝对优惠，每月线下更有现场特惠活动</p>', '', 999.00, '/upload/goods_img/大家电/5db3b8a042f39.jpg', 1617707119, 0, 1, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (27, '创维集团官方旗舰店', '', '创维（SKYWORTH）32H5 32英寸高清HDR 护眼全面屏 AI人工智能语音 网络WIFI 卧', '', '高清HDR 护眼全面屏 AI人工智能语音 网络WIFI', '', 999.00, '/upload/goods_img/大家电/5db3b8a0511cd.jpg', 1572059510, 0, 1, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (28, '邮滋味如皋馆专柜', '', '创维/SKYWORTH热水器，型号：DSZF-D5501-80，如皋免费送货上门，南通包邮 创维/', '', '创维家电大品牌，安全可靠，邮乐特惠；每月现场有特惠活动——18862731238', '', 999.00, '/upload/goods_img/大家电/5db3b8a07389d.jpg', 1572059510, 0, 1, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (29, '琥麟电器专柜', '', 'Hisense/海信 HB80DA332G8KG公斤大容量家用全自动节能波轮洗衣机', '', '', '', 899.00, '/upload/goods_img/大家电/5db3b8a386615.jpg', 1572059510, 0, 1, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (30, '琥麟电器专柜', '', '海信 BCD-163N/B 冰柜冷藏冷冻双温家用商用小型卧式', '', '', '', 999.00, '/upload/goods_img/大家电/5db3b8a390a27.jpg', 1572059510, 0, 1, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (31, '吉舜诚商城专柜', '', '东芝（TOSHIBA）  32英寸 蓝光液晶电视 高清平板电视机 东芝电视机', '', '32L1500C', '', 1.00, '/upload/goods_img/大家电/5db3b8a69aafd.jpg', 1572059510, 0, 1, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (32, '创维集团官方旗舰店', '', '创维/SKYWORTH 40X6 40英寸10核窄边高清 人工智能 网络WIFI 卧室液晶平板电视机', '', '超值钜惠！高清智能，10核处理器，可以WIFI上网', '', 1.00, '/upload/goods_img/大家电/5db3b8a9a6b14.jpg', 1572059510, 0, 1, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (33, '甲子商城旗舰店', '', '康佳/KONKA  LED39E330C 39英寸卧室电视高清蓝光节能平板液晶电视', '', '', '', 949.00, '/upload/goods_img/大家电/5db3b8a9b22ae.jpg', 1572059510, 0, 1, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (34, '邮乐赣州馆', '', '【不支持邮乐卡支付】创维-彩电-40E1C 40英寸全高清HDR 护眼全面屏 AI人工智能语音', '', '', '', 1.00, '/upload/goods_img/大家电/5db3b8a9cf38d.jpg', 1572059510, 0, 1, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (35, '琥麟电器专柜', '', '海信 BCD-177F/Q 177升 双门冰箱', '', '', '', 1.00, '/upload/goods_img/大家电/5db3b8a9f0abd.jpg', 1572059510, 0, 1, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (36, '创维集团官方旗舰店', '', '创维/SKYWORTH 43X6 43英寸10核窄边高清 人工智能 网络WIFI 卧室液晶平板电视机', '', '【买电视选创维】高清智能，10核处理器，质量上乘，价格厚道，可以Wifi上网', '', 1.00, '/upload/goods_img/大家电/5db3b8aa1b4b4.jpg', 1572059510, 0, 1, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (37, '创维集团官方旗舰店', '', '创维（SKYWORTH）40H5 40英寸全高清HDR 护眼全面屏 AI人工智能语音 网络WIFI', '', '全高清HDR 护眼全面屏 AI人工智能语音', '', 1.00, '/upload/goods_img/大家电/5db3b8aa26c4f.jpg', 1572059510, 0, 1, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (38, '邮乐安阳馆', '', '市区积分用户专享】创维平板电视32X6', '', '', '', 1.00, '/upload/goods_img/大家电/5db3b8aa31c19.jpg', 1572059510, 0, 1, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (39, '吉舜诚商城专柜', '', '飞利浦（PHILIPS）32英寸新品高清LED电视 接口丰富窄边高清LED液晶平板电视机', '', '32PHF3282/T3', '', 1.00, '/upload/goods_img/大家电/5db3b8aa3b85c.jpg', 1572059510, 0, 1, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (40, '琥麟电器专柜', '', '海信 BD/BC-308NU/A 冰柜家用 顶开式卧式商用冷藏冷冻柜', '', '', '', 1.00, '/upload/goods_img/大家电/5db3b8aa4931f.jpg', 1572059510, 0, 1, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (41, '明凰服饰专营店', '', '男女冲锋衣工装棉服外套修身加厚款', '', '邮乐支持微信，支付宝，网银，邮储卡和银联卡支付。（不同商品请分开下单）', '', 85.00, '/upload/goods_img/户外服饰/5db3b8b22c022.jpg', 1572059516, 0, 1, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (42, '户外途量工厂专卖店', '', '春夏季运动风衣钓鱼防晒衣男女超薄透气皮肤衣防风外套户外速干潮流衣服情侣款皮肤衣', '', '大码骑行长袖', '', 29.90, '/upload/goods_img/户外服饰/5db3b8b23604c.jpg', 1572059516, 0, 1, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (43, '探路者正江专卖店', '', '探路者/TOREAD 冲锋裤 运动裤 秋冬户外软壳裤男透气防风保暖徒步裤KAMG91159', '', '', '', 428.00, '/upload/goods_img/户外服饰/5db3b8b25312b.jpg', 1572059516, 0, 1, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (44, '探路者正江专卖店', '', '探路者运动服 探路者冲锋衣 19秋冬户外女式防水透湿套绒冲锋衣TAWH92285', '', '', '', 839.00, '/upload/goods_img/户外服饰/5db3b8b25d925.jpg', 1572059516, 0, 1, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (45, '好看哒专营店', '', '防晒衣女中长款薄款防晒服', '', 'FSY-6387', '', 45.00, '/upload/goods_img/户外服饰/5db3b8b56628b.jpg', 1572059516, 0, 1, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (46, '宝仕母婴专营店专柜', '', 'L户外皮肤衣防紫外线防晒衣男女夏季超薄透气防晒服运动风衣', '', '', '', 75.00, '/upload/goods_img/户外服饰/5db3b8b573966.jpg', 1572059516, 0, 1, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (47, '好看哒专营店', '', '防晒衣女夏季新款韩版连帽系带长袖防晒衣糖果色沙滩户外披肩防晒衣', '', 'FSY-54', '', 19.90, '/upload/goods_img/户外服饰/5db3b8b88f380.jpg', 1572059516, 0, 1, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (48, '户外途量工厂专卖店', '', '户外速干T恤男 女休闲跑步运动健身短袖大码情侣快干衣排汗透气', '', '', '', 22.80, '/upload/goods_img/户外服饰/5db3b8b8abc8f.jpg', 1572059516, 0, 1, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (49, '好看哒专营店', '', '防晒衣 户外薄款防紫外线印花防晒衣', '', 'FSY-1736', '', 25.00, '/upload/goods_img/户外服饰/5db3b8b8c0c84.jpg', 1572059516, 0, 1, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (50, '好看哒专营店', '', '防晒衣夏季女蝙蝠袖连帽拉链短款防晒衣', '', 'FSY-5423', '', 35.00, '/upload/goods_img/户外服饰/5db3b8b9b16a1.jpg', 1572059516, 0, 1, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (51, '好看哒专营店', '', '防晒衣男士薄款纯色连帽防晒衣', '', 'FSY-4167', '', 35.00, '/upload/goods_img/户外服饰/5db3b8b9bbe9c.jpg', 1572059516, 0, 1, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (52, '户外途量工厂专卖店', '', '城徒 户外春夏单层冲锋衣女防晒衣男轻薄防风钓鱼服透气速干外套长袖衫', '', '', '', 35.80, '/upload/goods_img/户外服饰/5db3b8ba1b847.jpg', 1572059516, 0, 1, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (53, '好看哒专营店', '', '防晒衣韩版短款薄款连帽长袖防晒衣', '', 'FSY-5439', '', 36.00, '/upload/goods_img/户外服饰/5db3b8ba72314.jpg', 1572059516, 0, 1, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (54, '好看哒专营店', '', '防晒衣女中长款涂鸦薄款防晒衣', '', 'FSY-5282', '', 36.00, '/upload/goods_img/户外服饰/5db3b8ba99fd5.jpg', 1572059516, 0, 1, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (55, '好看哒专营店', '', '防晒衣女中长款薄款防晒衣', '', 'FSY-5456', '', 37.90, '/upload/goods_img/户外服饰/5db3b8baa8e20.jpg', 1572059516, 0, 1, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (56, '户外途量工厂专卖店', '', '秋冬户外男抓绒衣摇粒绒女外套保暖冲锋衣内胆开衫卫衣', '', '', '', 39.00, '/upload/goods_img/户外服饰/5db3b8bab267b.jpg', 1572059516, 0, 1, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (57, '户外途量工厂专卖店', '', '户外秋冬季加绒加厚抓绒衣男女摇粒绒保暖抓绒外套开衫冲锋衣内胆', '', '', '', 49.00, '/upload/goods_img/户外服饰/5db3b8bae0cb5.jpg', 1572059516, 0, 1, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (58, '江门新会馆', '', '【江门新会馆】caxa断码 两截速干裤女 韩版修身透气徒步快干裤野外登山跑步长裤', '', '', '', 50.00, '/upload/goods_img/户外服饰/5db3b8baf06b9.jpg', 1572059516, 0, 1, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (59, '宝仕母婴专营店专柜', '', 'L夏季休闲短裤男宽松5分中裤子男士运动五分裤大码跑步速干沙滩裤', '', '', '', 55.00, '/upload/goods_img/户外服饰/5db3b8bb2ba54.jpg', 1572059516, 0, 1, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (60, '江门新会馆', '', '【江门新会馆】caxa修身户外健身速干裤女 快干弹力透气登山大码长裤 弹力户外裤', '', '', '', 60.00, '/upload/goods_img/户外服饰/5db3b8bb513ed.jpg', 1572059516, 0, 1, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (61, '探路者正江专卖店', '', '探路者/TOREADt恤女户外夏季快干速干透气运动服TAJG82984', '', '', '', 61.00, '/upload/goods_img/户外服饰/5db3b8bb5ac47.jpg', 1572059516, 0, 1, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (62, '铁好家居美妆日用百货专营店', '', '佳钓尼 夏遮阳防晒帽套头面罩透气防紫外线渔夫帽', '', '', '', 48.00, '/upload/goods_img/户外服饰/5db3b8bb8e0a3.jpg', 1572059516, 0, 1, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (63, '宝仕母婴专营店专柜', '', '防晒衣男女情侣春夏季防雨风衣超薄透气速干钓鱼防晒服户外皮肤衣MN', '', '', '', 69.00, '/upload/goods_img/户外服饰/5db3b8bb9f9e7.jpg', 1572059516, 0, 1, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (64, '户外途量工厂专卖店', '', '城徒 春夏季速干裤男女大码轻薄快干透气户外修身显瘦弹力冲锋裤', '', '', '', 69.00, '/upload/goods_img/户外服饰/5db3b8bbb3e24.jpg', 1572059516, 0, 1, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (65, '宝仕母婴专营店专柜', '', 'L运动户外夏季速干t恤 男女短袖速干衣快干t恤 吸汗透气', '', '', '', 69.00, '/upload/goods_img/户外服饰/5db3b8bbe33ff.jpg', 1572059516, 0, 1, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (66, '宝仕母婴专营店专柜', '', 'L健身房教练速干T恤男女 圆领情侣夏季短袖汗衫', '', '', '', 69.00, '/upload/goods_img/户外服饰/5db3b8bc1bca2.jpg', 1572059516, 0, 1, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (67, '户外途量工厂专卖店', '', '城徒 冬季正品户外冲锋裤男女抓绒裤保暖防风防水加厚软壳裤登山裤长裤', '', '', '', 75.00, '/upload/goods_img/户外服饰/5db3b8bc42dab.jpg', 1572059516, 0, 1, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (68, '江门新会馆', '', '【江门新会馆】caxa修身弹力女款休闲棉裤 户外休闲快干长裤 女士跑步登山健身裤', '', '', '', 78.00, '/upload/goods_img/户外服饰/5db3b8bc96997.jpg', 1572059516, 0, 1, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (643, '大众汽车城', '', '手机车载支架无线充电器汽车内装饰用品大全车载黑科技导航支撑架', '', '', '', 100.00, 'http://v813.cn/upload/8be3bfab37978401/ba52be96c22d5395.png', 1618469494, 0, 2, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (644, '大众汽车城', '', '临时停车手机电话挪车号码牌摆件车载移车牌汽车用品装饰大全车内', '', '', '', 11.00, 'http://v813.cn/upload/6fe06d4863952d3e/bf7f5bcefeba9207.png', 1618469700, 0, 2, 1);
INSERT INTO `xy_shop_goods_list` VALUES (645, '零食大礼包', '', '猪饲料零食大礼包生日男女辣条充饥夜宵整箱麻辣卤味小吃休闲食品', '', '', '', 30.00, 'http://v813.cn/upload/96b9cfdf7ce7fa80/a70ddff98809fe6e.png', 1618469949, 0, 3, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (646, '零食大礼包', '', '零食大礼包送女友小吃休闲食品零食大全各种美食排行榜优惠38元', '', '', '', 38.00, 'http://v813.cn/upload/57a657ae84010db7/70e0a042a8c53b58.png', 1618470131, 0, 3, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (647, '食肉者', '', '钛合金折扇子定制古风金属防身便携玉钢骨太极功夫战术转扇', '', '', '', 1280.00, 'http://www.alikoba.com/upload/4a0590573478a3ca/05a29979a4d3fe47.jpg', 1628060931, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (648, '宁业专卖店', '', '饮水机公司立式下置式水桶装冰热制冷管线机智能电器茶吧机', '', '', '', 278.00, 'http://www.alikoba.com/upload/0d00de6d75a2607f/ed28b4104014835f.jpg', 1628062397, 0, 1, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (649, '松下', '', '松下电饭煲1-8人日本原装进口智能IH电磁加热双预约厨房家用电器', '', '', '', 2799.00, 'http://www.alikoba.com/upload/d4aee953c8fa1d29/212b92912537e7ad.jpg', 1628062594, 0, 1, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (650, 'APIYOO', '', 'APIYOO艾优皮卡丘充电空气加湿器小型家用卧室蒸汽电器室内喷雾器', '', '', '', 198.00, 'http://www.alikoba.com/upload/a801e4909cdf31c3/ef1a4a8d6bf23a7b.jpg', 1628062723, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (651, '克鲁克旗舰店', '', '配Dyson戴森吸尘器锂电池非原装v6v7v8v10v11配件索尼电芯充电器', '', '', '', 699.00, 'http://www.alikoba.com/upload/11adcbdf90bd0c45/c3d473cbab25e4f1.jpg', 1628063001, 0, 1, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (652, '思翔电器专营店', '', '位美养生杯多功能可调陶瓷办公室迷你电器小炖杯煮粥电热牛奶炖杯', '', '', '', 89.00, 'http://www.alikoba.com/upload/d44db1ee237dbdbe/2d5b81a1f280515d.jpg', 1628063193, 0, 1, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (653, '昆峰电器旗舰店', '', '昆峰电器电风扇台式家用静音台扇宿舍办公室立式摇头定时桌面电扇', '', '', '', 68.00, 'http://www.alikoba.com/upload/a0f56410bef1f869/328f2edbc297d8e2.jpg', 1628063458, 0, 1, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (654, '法尔希顿企业店', '', '法尔希顿10/15/20/30L上下出水储水式小型电热水器家用厨房电器', '', '', '', 268.00, 'http://www.alikoba.com/upload/37ec39b4b3a54856/166dd3cae66c85b1.jpg', 1628063751, 0, 1, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (655, 'nicjoy旗舰店', '', '适用dyson戴森吸尘器v6 v7v8v10V11充电器DC58/59/62电源线适配器', '', '', '', 68.00, 'http://www.alikoba.com/upload/e07b5e486b639dd1/a5a0e5d1bcadd6a6.jpg', 1628063886, 0, 1, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (656, '海翼居家智能配件', '', '小狗吸尘器收纳架T10T11T12pro/Plus/Mate挂充座充电器墙挂免打孔', '', '', '', 108.00, 'http://www.alikoba.com/upload/0b91c85d0667cfc6/776f2b9784cf006b.jpg', 1628064239, 0, 1, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (657, '新飞乐众专卖店', '', '新飞甩干桶脱水机烘干半自动蓝光家用宿舍小型迷你懒人单脱水电器', '', '', '', 198.00, 'http://www.alikoba.com/upload/beb23048384df9e4/4afc55c0b36a6870.jpg', 1628064439, 0, 1, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (658, '华润电器城', '', '幸运星电饭煲家用多功能小2人迷你饭锅1-3-4人老式小型煮饭电器2L', '', '', '', 58.00, 'http://www.alikoba.com/upload/e6c40263756c3c05/0e7603bc756842f1.jpg', 1628064555, 0, 1, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (659, 'ONANOFF', '', 'BuddyPhones Play +, draadloze Bluetooth-volumebeperking Kinderen Hoofdtelefoon', '', '', '', 69.99, 'http://www.alikoba.com/upload/18b306429f69b4a8/3c8ec4433afb81ef.jpg', 1628065698, 0, 1, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (660, 'OKUMA 宝熊钓具', '', 'vs-605 – 20 Voyager 旋转旅行套装', '', '', '', 302.49, 'http://www.alikoba.com/upload/2fcc725701045816/48bef0436eb38162.jpg', 1628067145, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (661, 'Ring', '', 'Introducing Ring Video Doorbell Pro 2 by Amazon | HD Head to Toe Video, 3D Motion Detection, hardwired installation (existing doorbell wiring required) | With 30-day free trial of Ring Protect Plan', '', '', '', 1888.00, 'http://www.alikoba.com/upload/34017dce7cec6787/fa95a5e3ae68ac47.jpg', 1628068835, 0, 1, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (662, 'Maybelline', '', 'Maybelline Instant Anti Age Eraser Eye Concealer, Dark Circles and Blemish Concealer, Ultra Blendable Formula, 02 Nude', '', '', '', 5.60, 'http://www.alikoba.com/upload/48113cfa3f1174b4/f48b051fc7dbb0c6.jpg', 1628068999, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (663, 'Pledge Friendly', '', 'Maybelline Fit Me Concealer 25 Medium 6.8ml', '', '', '', 5.90, 'http://www.alikoba.com/upload/333a661fcf1a349e/e92fd09e95bc55d2.jpg', 1628069138, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (664, 'Maybelline', '', 'Maybelline Hyper Precise Liquid Eyeliner, Black', '', '', '', 20.89, 'http://www.alikoba.com/upload/6de1d54dfb32998b/cb337f8fec393649.jpg', 1628069241, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (665, 'Fossil', '', 'Fossil Men\'s chronograph quartz watch', '', '', '', 119.00, 'http://www.alikoba.com/upload/6b41a26573b1b8df/45bcf528156c871d.jpg', 1628084483, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (666, 'Rosian', '', 'Rosian & Levine ™ Magnetic Pure Copper Arthritis Therapy Bracelet with Extra Strong Magnets for Carpal Tunnel Migraine Menopause - Unisex Copper Bracelet Immune Support (Medium 17.5 cm)', '', '', '', 15.99, 'http://www.alikoba.com/upload/66606983df935fce/b35cb5e5fac02a42.jpg', 1628084681, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (667, 'Copper', '', 'Copper Bracelets for Arthritis for Women Men with Healing Magnets for Arthritis Pain Relief', '', '', '', 11.99, 'http://www.alikoba.com/upload/e037880cf0c9e41a/02f093b33b9e6c07.jpg', 1628084777, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (668, 'Osprey', '', 'Osprey Ultralight Bag', '', '', '', 98.00, 'http://www.alikoba.com/upload/56ab4368d2efd974/df22ea5df5be3f6b.jpg', 1628084882, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (669, 'PUMA', '', 'Puma Unisex Adults’ Buzz Casual Daypack', '', '', '', 38.00, 'http://www.alikoba.com/upload/3d2042ed0e9bf2ae/1253367caeaafc4f.jpg', 1628085062, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (670, 'Fjällräven', '', 'FJÄLLRÄVEN Unisex Rucksack Kanken Rucksack', '', '', '', 68.00, 'http://www.alikoba.com/upload/97c9047d0118f92b/a536326086710659.jpg', 1628085319, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (671, 'Osprey Europe', '', 'Osprey Talon 33 Men\'s Hiking Pack', '', '', '', 29.00, 'http://www.alikoba.com/upload/df6f6c82b99b6c56/c591bdae4da6572c.jpg', 1628085421, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (672, 'EASTPAK', '', 'Eastpak Padded Pak\'r Backpack, 40 cm, 24 L, Black', '', '', '', 19.00, 'http://www.alikoba.com/upload/0aa8b51ab4ee79de/3139652ac0b1f729.jpg', 1628085500, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (673, 'Berghaus', '', 'Berghaus Brand Bag Backpack 25 Litres', '', '', '', 18.00, 'http://www.alikoba.com/upload/7ee7398fdf9e43f4/3d93ace2c86df0a4.jpg', 1628085642, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (674, 'hype', '', 'Hype Multi Drips Backpack', '', '', '', 24.99, 'http://www.alikoba.com/upload/83bca20ad8fb666d/a1bf655c263fef91.jpg', 1628085767, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (675, 'Vans', '', 'Vans Unisex\'s Old Skool Check Backpack, One Size', '', '', '', 30.00, 'http://www.alikoba.com/upload/6f0205ca6072b973/5a03da5270492af1.jpg', 1628085845, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (676, 'NIKE', '', 'NIKE Unisex Heritage - 2.0 Backpack', '', '', '', 19.90, 'http://www.alikoba.com/upload/0956392fcc408776/6f00b9f090627fd5.jpg', 1628086003, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (677, 'adidas', '', 'adidas Linear Core Unisex Sports Backpack', '', '', '', 28.00, 'http://www.alikoba.com/upload/c2e3d1d774ae9639/87d7d3469fdc21a9.jpg', 1628086098, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (678, 'Under Armour', '', 'Under Armour UA Scrimmage 2.0 Backpack, Laptop Backpack, Waterproof Bag Unisex', '', '', '', 26.00, 'http://www.alikoba.com/upload/6e90bd8a2b13c3c8/fc54f8cbfc85d6e0.jpg', 1628086183, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (679, 'Kipling', '', 'Kipling Women\'s City Pack S Backpack Handbag, One Size', '', '', '', 52.89, 'http://www.alikoba.com/upload/749fc7746488646d/0e1ebfc36b050139.jpg', 1628086254, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (680, 'Vans', '', 'Vans REALM BACKPACK , One Size', '', '', '', 23.10, 'http://www.alikoba.com/upload/c33822d9723cf8fa/7d2c99ce29e28967.jpg', 1628086342, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (681, 'Osprey Europe', '', 'Osprey Europe Ultralight Stuff Pack', '', '', '', 26.44, 'http://www.alikoba.com/upload/50633195f8413389/86a080848276b772.jpg', 1628086429, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (682, 'Osprey Europe', '', 'Osprey Europe Daylite Tote Pack Unisex Lifestyle Pack', '', '', '', 25.66, 'http://www.alikoba.com/upload/792b3554c89c93ee/4b9fa81730ace02e.jpg', 1628086557, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (683, 'Eono', '', 'Amazon Brand - Eono Geniuine Leather Wallet with RFID for Men-Coin comparment Multi Credit Card Slim Wallets (Brown Hunter)', '', '', '', 14.99, 'http://www.alikoba.com/upload/27d57ac74316b1cb/87f1ed4cdec24973.jpg', 1628086895, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (684, 'BIAL', '', 'BIAL Mens Wallet, RFID Blocking Wallet, Wallets Mens, Bifold Wallet, Flip Wallet, Wallets for Men, Slim Bifold Wallet, 2 ID Window Wallet, Superfine Fiber PU Synthetic Leather', '', '', '', 22.99, 'http://www.alikoba.com/upload/4c68786007bbc220/301f15b063af8cad.jpg', 1628087048, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (685, 'VULKIT', '', 'VULKIT Credit Card Holders RFID Blocking Carbon Fiber Slim Bank Card Case Automatic Pop Up Card Wallet, Holds 5 Cards', '', '', '', 15.99, 'http://www.alikoba.com/upload/63ee171af5f2659a/9f881c0d254fbc5d.jpg', 1628087180, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (686, 'VULKIT', '', 'VULKIT Credit Card Holder for Men Leather Card Wallet RFID Blocking Pop Up Metal Bank Card Case with 3 Slots for Cards & Notes (V1 Navy)', '', '', '', 19.99, 'http://www.alikoba.com/upload/98dc7394fd5aa772/2b3f353a2d9bcbb7.jpg', 1628087646, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (687, 'Wilbest', '', 'Wallets Mens RFID Blocking with Money Clip, Bi-fold Slim Genuine Leather Men Wallet with Coin Pocket, Credit Card Slots, ID Window. Minimalist Mini Wallet for Gents Men with Gift Box - Black & Orange', '', '', '', 11.89, 'http://www.alikoba.com/upload/a9f9ca113b09d172/25c4b6dcfee5c408.jpg', 1628087913, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (688, 'Perlegear Store', '', 'TV Wall Bracket, Swivels Tilts Extends Rotates TV Wall Mount for 10-40 inch TVs up to 20KG, Max VESA 200X200mm', '', '', '', 15.99, 'http://www.alikoba.com/upload/e716fac976be4e5d/5f397ec147a2dbd6.jpg', 1628136276, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (689, 'Samsung', '', 'Samsung - RB31FDRNDSA - freestanding - 308 litres - A+ - metallic fridge-freezer - fridge-freezers (freestanding, graphite, metallic, up-right, LED, glass, 308 litres) [Energy Class A+]', '', '', '', 1599.00, 'http://www.alikoba.com/upload/5ff72cf6f2c5f8c6/2228f6108f6096f7.jpg', 1628136491, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (690, 'Hisense', '', 'Hisense RL423N4AC11 175x60cm 320L Freestanding Fridge - Stainless Steel [Energy Class A+]', '', '', '', 1499.00, 'http://www.alikoba.com/upload/806f73eb2d54a6db/7f94ebfdaaae96e4.jpg', 1628136596, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (691, 'Hisense', '', 'Hisense 535 Litre American Fridge Freezer - Black', '', '', '', 2500.00, 'http://www.alikoba.com/upload/a0a1c1080d53ab35/c266bfe13acbc677.jpg', 1628136733, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (692, 'CHiQ', '', 'CHiQ American fridge freezer FSS559NEI42D, 559 litres, inverter compressor, ventilated cold, frost free, dark inox, E, 39db, water dispenser 5 liters [Energy Class E]', '', '', '', 3100.00, 'http://www.alikoba.com/upload/bce24922c1c7fc15/fa2732f9e07438f9.jpg', 1628136967, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (693, 'LG', '', 'LG InstaView™ Door-in-Door™ GSX960NSVZ American Fridge Freezer - Stainless Steel [Energy Class A+++]', '', '', '', 1799.00, 'http://www.alikoba.com/upload/f34a6b470dded48e/04c6ab4f0b091c67.jpg', 1628137501, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (694, 'HOTPOIN', '', 'HOTPOINT FFU3DW 450 Litre Freestanding Fridge Freezer 60/40 Split Frost Free 70cm Wide - White [Energy Class A+]', '', '', '', 1388.00, 'http://www.alikoba.com/upload/326861516c7b174e/b2f81a01b3eb24a1.jpg', 1628137588, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (695, 'LG', '', 'LG GSB760PZXV Frost Free Side-by-side American Fridge Freezer - Shiny Steel [Energy Class A+]', '', '', '', 1699.99, 'http://www.alikoba.com/upload/8e9f39b559ddaa9e/434b2d362bf0abe2.jpg', 1628137695, 0, 4, 1);
INSERT INTO `xy_shop_goods_list` VALUES (696, 'LG', '', 'LG GBB92STAXP Freestanding 384 Litre Freestanding Fridge Freezer 70/30 Split Fast Freeze 60cm Wide - Stainless Steel [Energy Class A+++]', '', '', '', 1688.99, 'http://www.alikoba.com/upload/7844338600045b08/a4140cad3870d1ad.jpg', 1628138238, 0, 4, 1);
INSERT INTO `xy_shop_goods_list` VALUES (697, 'LG', '', 'LG GMX844MCKV American Fridge Freezer', '', '', '', 1859.00, 'http://www.alikoba.com/upload/82723d946f097541/8c6c87580e77c4f3.jpg', 1628138345, 0, 4, 1);
INSERT INTO `xy_shop_goods_list` VALUES (698, 'Samsung', '', 'Samsung RS52N3313WW Freestanding American Fridge Freezer with Digital Inverter Technology, Water Dispenser, 520 Litre, 91 cm wide, White [Energy Class F]', '', '', '', 2100.00, 'http://www.alikoba.com/upload/b7b0b47364dc5695/0c113e1c5a8f3e8e.jpg', 1628138748, 0, 4, 1);
INSERT INTO `xy_shop_goods_list` VALUES (699, 'BD.Y', '', 'BD.Y Portable Compressor Cool Box,Portable Fridge Freezer Camping，24V/12V/220-240V (35L/45L/65L) Car Refrigerator, Car Cooler, For Travel Camping Picnics (Size : 35L)', '', '', '', 2300.00, 'http://www.alikoba.com/upload/8ba4f5928f9e064a/53c5ddceaf2528dc.jpg', 1628139496, 0, 4, 1);
INSERT INTO `xy_shop_goods_list` VALUES (700, 'DOMETIC', '', 'DOMETIC CoolFreeze CFX 28 Portable Compressor Cooler and Freezer, 26 Litre Mini Fridge 12/230 V', '', '', '', 799.00, 'http://www.alikoba.com/upload/b81db9d030326c7a/a0a744041f0bc844.jpg', 1628139674, 0, 1, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (701, 'Sony Store', '', 'Sony Bravia KDL43WF663 43-Inch Full HD HDR Smart TV with Freeview Play, Black [Energy Class G]', '', '', '', 780.00, 'http://www.alikoba.com/upload/eb266f05ff5fd09d/ea52b743bec4d43d.jpg', 1628142347, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (702, 'Blaupunkt', '', 'Blaupunkt 24\" HD Ready LED TV Freeview HD Saorview and USB Media/Record', '', '', '', 149.99, 'http://www.alikoba.com/upload/ac14fa0074c6ed24/dc8e3d2b7b8995ee.jpg', 1628143109, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (703, 'Cello Store', '', 'Cello ZSO291 19″ Digital LED TV with Freeview and Built In Satellite Tuner , Black [Energy Class A]', '', '', '', 119.00, 'http://www.alikoba.com/upload/ac14fa0074c6ed24/dc8e3d2b7b8995ee.jpg', 1628143428, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (704, 'ZOEGO', '', 'ZOEGO Rain Suits for Men Women Waterproof Heavy Duty Raincoat Fishing Rain Gear Jacket and Pants Hideaway Hood', '', '', '', 39.99, 'http://www.alikoba.com/upload/f25039ebab808398/ce462d20bd5b7ed9.jpg', 1628143563, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (705, 'Diwa', '', 'Diwa Spinning Fishing Reels for Saltwater Freshwater 3000 4000 5000 6000 7000 Spools Ultra Smooth Ultralight Powerful Trout Bass Carp Gear Stainless Ball Bearings Metal Body Ice Fishing Reels', '', '', '', 35.99, 'http://www.alikoba.com/upload/d377e644d6dad2f5/50f7424761555130.jpg', 1628143729, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (706, 'CRAZY SHARK', '', 'CRAZY SHARK 6\" Fishing Pliers, Stainless Steel Fishing Tools, Saltwater Resistant Fishing Gear, Tungsten Carbide Cutters, Split Ring Pliers Fishing Gifts For Men', '', '', '', 17.99, 'http://www.alikoba.com/upload/ce2084d4ac42a14d/4ce048b3e4076fbd.jpg', 1628143835, 0, 1, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (707, 'GIRIAITUS', '', 'Camping Multitool Accessories Gifts for Men Dad 16 in 1 Upgraded Multi Tool Survival Gear with Hammer Pliers Saw Screwdrivers Bottle Opener Whistle & Portable Sheath for Hiking, Hunting, Fishing', '', '', '', 15.99, 'http://www.alikoba.com/upload/9e0377a2746d038e/acf326cd46f091a2.jpg', 1628143924, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (708, 'CUIFULI Store', '', 'Fishing Tackle Set, Fishing Tackle Accessories Set with Tackle Box Including Barrel Swivels, Off Set Hooks, Swivel Slides, Cross-line Barrel Swivels for Saltwater and Freshwater', '', '', '', 18.99, 'http://www.alikoba.com/upload/727926aa7a42bb80/a50d9e40114d24a3.jpg', 1628144013, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (709, 'Lixada', '', 'Lixada Telescopic Fishing Rod and Reel Combo Full Kit Spinning Fishing Reel Gear Pole Set with 100M Fishing Line,Fishing Lures,Fishing Hooks Jig Head, Fishing Carrier Bag Case', '', '', '', 32.99, 'http://www.alikoba.com/upload/f8a6ea161a008791/1bf967eb5deeae64.jpg', 1628144096, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (710, 'Running Man', '', 'Fish Hook Remover Fishing Tackle Fishing Tool Fishing Gear, Spring-Loaded Handle, Upgrade Sharp Fishing Line Scissors, Fishing Gifts for Men', '', '', '', 7.99, 'http://www.alikoba.com/upload/485116b37c163777/26d4157aac4a4add.jpg', 1628144219, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (711, 'MOVKZACV', '', 'MOVKZACV Fishing Reel Bag, Oxford Cloth Fishing Tackle Bag Fishing Reel Gear Organizer Baitcasting Fly Reels Storage Case Fishing Reel & Gear Bag Carry', '', '', '', 15.15, 'http://www.alikoba.com/upload/00022623b9018d5a/91f08fab0353a95e.jpg', 1628144281, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (712, 'QudraKast Store', '', 'QudraKast Fishing Rod and Reel Combos, Unique Design With X-Warping Painting, Carbon Fiber Telescopic Fishing Rod with Reel Combo Kit with Tackle Box, Best gift for Fishing Beginner and Angler', '', '', '', 28.99, 'http://www.alikoba.com/upload/479da815feac6eef/c87169c859067b7d.jpg', 1628144438, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (713, 'Magreel Store', '', 'Magreel Fishing Tackle Bag with 1x Fishing Tackle Box, Water-Resistant Shoulder Backpack Sling Bag with Rod Holder', '', '', '', 49.99, 'http://www.alikoba.com/upload/8df265e164e7efc1/b56c3bf117aba2a4.jpg', 1628144615, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (714, 'Li-xada', '', 'Lixada Portable Folding Fishing Rod Carrier Canvas Fishing Pole Tools Storage Bag Case Fishing Gear Tackle(3 Layer-150CM)', '', '', '', 27.99, 'http://www.alikoba.com/upload/4b6b0ff45bd9ef29/ea994d6dbeebec07.jpg', 1628145447, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (715, 'Mirocle Life', '', 'Kids Fishing Rod and Reel Combo Kids Fishing Pole Kit Telescopic Portable with Fishing Line Fishing Gears Tackle Box Travel Bag Xmas gift for Boys Girls or Youth', '', '', '', 21.99, 'http://www.alikoba.com/upload/6cd97b37da542067/9cb2419d387bed58.jpg', 1628145562, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (716, 'foolsGold Store', '', 'foolsGold Large Fishing Carryall Bag', '', '', '', 29.95, 'http://www.alikoba.com/upload/6a0ee569d32aa4e2/e9ef5a06119c8ba3.jpg', 1628145663, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (717, 'YIVIYAR', '', 'YIVIYAR Acrylic Makeup Vanity Cosmetic Organizer Make Up Brush Holders Makeup Storage Case for Nail Polish Perfume Lipstick Dresser Skincare Organizer Holder, Bathroom Counter Organizer Countertop', '', '', '', 2.99, 'http://www.alikoba.com/upload/577c779da0f063b8/c78efcf7771ae66b.jpg', 1628145762, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (718, 'MAC', '', 'Mac Prep+Prime Eye Base Makeup 12 ml', '', '', '', 15.75, 'http://www.alikoba.com/upload/73c49b479b289494/d83a15827d1f0a8d.jpg', 1628145839, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (719, 'Rovtop', '', 'Rovtop Makeup Organizer Cotton Pads Holder Cosmetics Makeup Cotton Swab Holder Cotton Pads Dispenser, 4 Sections with 100 Pcs Makeup Cotton Swabs(Swabs Color Random)', '', '', '', 10.99, 'http://www.alikoba.com/upload/27853c1cdb0da588/c7b88363b0347af0.jpg', 1628151458, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (720, 'Display4top', '', 'Display4top White Beauty Multi-function Makeup Jewelry Organiser Cosmetic Accessories Make Up Storage Boxes', '', '', '', 13.98, 'http://www.alikoba.com/upload/0e59e807d591fd76/abcd60b7e957cbfa.jpg', 1628151540, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (721, 'Sougayilang', '', 'Combination retractable fishing rod and fishing reel combination, ultralight way sub-reel, suitable for travel in saltwater fresh water, with baits, fittings and fishing rod bag 5.9ft / 6.9ft', '', '', '', 587.44, 'http://www.alikoba.com/upload/394dea0c00f6057b/9b0e5f29844592dc.jpg', 1628160088, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (722, 'Daiwa 达亿瓦', '', 'Small fishing tackle set CP-X1 portable bag (spinning wheel, rod, storage box set) fishing', '', '', '', 791.84, 'http://www.alikoba.com/upload/03fd822d54c5cc6b/4f77b920ef5dea97.jpg', 1628160287, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (723, '13 FISHING', '', 'Concept TX2 Baiting reel', '', '', '', 1949.03, 'http://www.alikoba.com/upload/016e33869001ff64/ecccff0af5facdfd.jpg', 1628160420, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (724, 'adidas', '', 'Adidas Women\'s Gym sneakers', '', '', '', 653.01, 'http://www.alikoba.com/upload/22c55a11109cb427/62a27396887dd6c2.jpg', 1628160612, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (725, 'adidas', '', 'Adidas Men Essentials 3 stripe woven windbreaker', '', '', '', 465.25, 'http://www.alikoba.com/upload/12c0fb73cfeb6cf2/12a584d16fc05a71.jpg', 1628160701, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (726, 'adidas', '', 'Adidas Tiro 19 men\'s training jacket', '', '', '', 513.00, 'http://www.alikoba.com/upload/457a2504985cd13f/521ea579a85224ea.jpg', 1628160860, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (727, 'adidas', '', 'Originals men\'s camouflage T-shirt', '', '', '', 445.88, 'http://www.alikoba.com/upload/ee423de4fe364eb6/723eb638a3724dd7.jpg', 1628160969, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (728, 'adidas 阿迪达斯', '', 'FM1287 Unisex adult pack black average size', '', '', '', 478.02, 'http://www.alikoba.com/upload/ef986aadf481d188/6bae9128a0372bef.jpg', 1628161061, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (729, 'adidas 阿迪达斯', '', 'Men\'s Process Sp1 Z10 3374-00 White silica silica fashion watch', '', '', '', 388.30, 'http://www.alikoba.com/upload/07492e398c435680/a14d712be627dc86.jpg', 1628161190, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (730, 'adidas 阿迪达斯', '', 'Men\'s True Trg Pnt pants', '', '', '', 612.95, 'http://www.alikoba.com/upload/256d8ceaca490e51/fa615b9cc290f364.jpg', 1628161292, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (731, 'adidas 阿迪达斯', '', 'Alphabounce Rc, men\'s running shoes', '', '', '', 398.75, 'http://www.alikoba.com/upload/8dd19968d54d23b4/3b19d383d41488e1.jpg', 1628161377, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (732, 'Adidas 阿迪达斯', '', 'Ultimate Classic men\'s Pants TM6293S9', '', '', '', 701.52, 'http://www.alikoba.com/upload/61f7b7e96760ccd0/8dc617502ee48a2c.jpg', 1628161458, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (733, 'adidas 阿迪达斯', '', 'Men\'s Nmd D-Utility J coat', '', '', '', 1568.21, 'http://www.alikoba.com/upload/c0cee37c22423292/3cdee455305a1d2e.jpg', 1628161608, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (734, 'adidas 阿迪达斯', '', 'Japan Away jersey -- 2020', '', '', '', 608.04, 'http://www.alikoba.com/upload/0610c24033703b93/00c4a2e7bd3a5dd9.jpg', 1628161789, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (735, 'adidas 阿迪达斯', '', 'Women\'s 5 inch printed Primegreen golf shorts', '', '', '', 475.81, 'http://www.alikoba.com/upload/17e24d95b4176ac1/d6f47201d9400562.jpg', 1628161955, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (736, 'adidas 阿迪达斯', '', 'Neutral Adilette Boost slippers', '', '', '', 350.32, 'http://www.alikoba.com/upload/fc13d4d3cba64b15/32eeb0086d9077bb.jpg', 1628162183, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (737, 'adidas 阿迪达斯', '', 'Women\'s Cloudfoam Lite Flex W Aw4202 Low Top Sneaker', '', '', '', 443.06, 'http://www.alikoba.com/upload/9ec73213836bd9e1/206ae242b29184c7.jpg', 1628162285, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (738, 'adidas 阿迪达斯', '', 'Men\'s Adizero Wrestling XIV-M shoes', '', '', '', 640.23, 'http://www.alikoba.com/upload/4e8cc9c32b4c005c/4fddf0dabda9ed02.jpg', 1628162404, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (739, 'adidas 阿迪达斯', '', 'Team Issue quarter zip top - casual for men', '', '', '', 384.46, 'http://www.alikoba.com/upload/65b92d9ca4474b2a/e49e4b9107bda309.jpg', 1628162513, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (740, 'adidas 阿迪达斯', '', 'Watch Men\'s 70\'s style stainless steel digital watch with 5 loop bracelet (36mm).', '', '', '', 725.18, 'http://www.alikoba.com/upload/3695fecea6d3e19a/c98d6fa56bc6de65.jpg', 1628162612, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (741, 'adidas 阿迪达斯', '', 'Adizero Crop Top for women, CE0418', '', '', '', 792.43, 'http://www.alikoba.com/upload/4b48c98ef47b2822/25f60624dd8f9f83.jpg', 1628162747, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (742, 'adidas 阿迪达斯', '', 'Clr-84 knitted trousers for men', '', '', '', 587.36, 'http://www.alikoba.com/upload/92bb6b4400850685/f5d37e197687ce95.jpg', 1628162847, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (743, 'adidas 阿迪达斯', '', 'Lady Eezay Flip Flop sneaker', '', '', '', 125.94, 'http://www.alikoba.com/upload/d6418ed551123203/794d78bc9e996494.jpg', 1628162967, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (744, 'adidas 阿迪达斯', '', 'Watch Process _SP1. Silicone strap,20 mm width (38 mm).', '', '', '', 408.26, 'http://www.alikoba.com/upload/a5da7580d98d14a6/0068e71916ba80d8.jpg', 1628163078, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (745, 'adidas 阿迪达斯', '', 'Premium Essentials pockets', '', '', '', 209.18, 'http://www.alikoba.com/upload/7e2e7c53366b0543/494c88de4f8e313b.jpg', 1628163201, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (746, 'adidas 阿迪达斯', '', 'M Fi Tee Bos A T-shirt', '', '', '', 144.38, 'http://www.alikoba.com/upload/228e37b74f00b3d2/f07cfc658f67d658.jpg', 1628163449, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (747, 'adidas 阿迪达斯', '', 'Men\'s trousers M 3s Ft Te Pt', '', '', '', 279.31, 'http://www.alikoba.com/upload/7006d2a7fc023b3f/fdd441fefa6c6f08.jpg', 1628163624, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (748, '宇崎日新', '', 'Fishing Rod Fine Mode dry landscape', '', '', '', 407.97, 'http://www.alikoba.com/upload/a692e8d58e8e8a5d/3cbad6700fb46ee8.jpg', 1628163799, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (749, 'SOTO', '', 'Aluminum folding table ST-630', '', '', '', 300.99, 'http://www.alikoba.com/upload/ed76fd73a5d7ce67/0f73d8b1556978b6.jpg', 1628163969, 0, 1, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (750, 'Naicissism', '', 'American Flag Fishing Shirt with Fishing rod Vintage outdoor shirt hiking - the best fishing gift for men', '', '', '', 137.00, 'http://www.alikoba.com/upload/d6370566c5789754/161de4b2a3ed39b7.jpg', 1628164141, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (751, 'Bosch 博世', '', 'Part 2610921651 fishing rod', '', '', '', 62.83, 'http://www.alikoba.com/upload/ee8809c4503e6137/fd3c7fd3fcbedf8b.jpg', 1628164246, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (752, 'DAIWA 达亿瓦', '', 'Wide side 60TL NATIVE Traow fishing rod', '', '', '', 917.10, 'http://www.alikoba.com/upload/3ec270bfdd60c833/2f97ef9f7a20fe3d.jpg', 1628164517, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (753, 'DAIWA 达亿瓦', '', 'Stream rod Taiwa RT 06319110 30 Fishing rod', '', '', '', 489.13, 'http://www.alikoba.com/upload/e5952c8573946b6b/a20e6c9551bdf2a4.jpg', 1628164622, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (754, 'PUMA 彪马', '', 'TeamFINAL 21 Internal warp knitted jacket for men', '', '', '', 346.21, 'http://www.alikoba.com/upload/03068d0e47069216/13273b99a905b99d.jpg', 1628164751, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (755, 'PUMA', '', 'Boys\' Logo Performance Tee', '', '', '', 125.23, 'http://www.alikoba.com/upload/44a9b9b36a82dd82/9382aa7ee593e19b.jpg', 1628164864, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (756, 'PUMA 彪马', '', 'Mercedes AMG Petronas Motorsport MCS sweatpants for men', '', '', '', 398.66, 'http://www.alikoba.com/upload/b4ea11b2ecab0280/20e7198a255b28e5.jpg', 1628165027, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (757, 'PUMA 彪马', '', 'Windbreak pants train regular pants for ladies', '', '', '', 235.59, 'http://www.alikoba.com/upload/8e80e4b973af1abf/837a662fccf6ecbb.jpg', 1628165217, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (758, 'PUMA 彪马', '', 'Popcat All-purpose adult bathroom/beach slippers', '', '', '', 212.91, 'http://www.alikoba.com/upload/da8cae510abf53df/fb3e7eee72c4a4c2.jpg', 1628165341, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (759, 'PUMA 彪马', '', 'Golf Boys 2019 Union Camo Polo', '', '', '', 292.73, 'http://www.alikoba.com/upload/00006f91386a1ef0/7c0cc7475d0d6d43.jpg', 1628165417, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (760, 'PUMA 彪马', '', 'Evercat backpack and lunch set for kids', '', '', '', 277.07, 'http://www.alikoba.com/upload/00182c951fd3ff10/5772b2ccee98220d.jpg', 1628165514, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (761, 'PUMA 彪马', '', 'Cld9 One Hit Ko Men\'s T-shirt', '', '', '', 155.24, 'http://www.alikoba.com/upload/b6748855a72ecee2/55bb2bc61e23985e.jpg', 1628165593, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (762, 'PUMA 彪马', '', 'Evospeed Distance 8 Wn Track shoe for women', '', '', '', 507.13, 'http://www.alikoba.com/upload/cc9d36c956bb00f1/5ece01c1a8508c13.jpg', 1628165677, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (763, 'PUMA 彪马', '', 'Casual socks (2 pairs)', '', '', '', 61.30, 'http://www.alikoba.com/upload/93ec55d4ae920ca4/f33d93fcb44ec90f.jpg', 1628165768, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (764, 'PUMA 彪马', '', 'Backpack', '', '', '', 268.87, 'http://www.alikoba.com/upload/c89a606d86d83c45/73ed11c15989a719.jpg', 1628165848, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (765, 'PUMA 彪马', '', 'PU 0064 O-001 glasses/blue', '', '', '', 344.75, 'http://www.alikoba.com/upload/abc837147a362f53/e76b018ea7767348.jpg', 1628165944, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (766, 'PUMA 彪马', '', 'Neutral children\'s animal crew neck sweatshirt', '', '', '', 290.94, 'http://www.alikoba.com/upload/c24c8cbb1f53da3d/8aa2ae3247eb512e.jpg', 1628166054, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (767, 'Dior 迪奥', '', 'Rouge Dior Couture Colour Lipstick .04 oz. Mini - 999 Matte Red', '', '', '', 235.10, 'http://www.alikoba.com/upload/9d56e14961a3a144/b39e637bed3ea216.jpg', 1628166300, 0, 166, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (768, 'DIOR 迪奥', '', 'Rouge Dior Couture Gorgeous Blue & Gold Lipstick, 999,0.12oz, 3.5g', '', '', '', 275.69, 'http://www.alikoba.com/upload/0c045dfbd1dfaeee/5a45046b4d9626e8.jpg', 1628166568, 0, 166, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (769, 'Dior 迪奥', '', 'DIOR STELLAIRE O11 GOLD 55/15/145', '', '', '', 618.55, 'http://www.alikoba.com/upload/29eb6efebd29f380/77ac0362d5b3de11.jpg', 1628166679, 0, 166, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (770, 'DIOR 迪奥', '', 'Christian Dior Diorskin Forever Extreme Control Extreme Control, Spf 20, Medium Beige, 0.31 oz, 9 g', '', '', '', 329.81, 'http://www.alikoba.com/upload/0ed15264491f280e/db8b1960885ce26e.jpg', 1628166784, 0, 166, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (771, 'DIOR 迪奥', '', 'Sauvage Wilderness Perfume for Men, 75 g', '', '', '', 257.95, 'http://www.alikoba.com/upload/4192d5fbadf51bbc/724ac14300d2fd95.jpg', 1628166861, 0, 166, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (772, 'Dior 迪奥', '', 'Christian Dior DiorSkin Mineral Nude Matte Powder 05 translucent', '', '', '', 296.67, 'http://www.alikoba.com/upload/ebf1ddb50dbe5508/18eb59c3121e17fd.jpg', 1628166958, 0, 166, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (773, 'Dior 迪奥', '', 'Christian Dior cheek is red', '', '', '', 344.07, 'http://www.alikoba.com/upload/eb01e194ed0bb7fb/c4aefec1da5d9af5.jpg', 1628167035, 0, 166, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (774, 'A|X ARMANI EXCHANGE', '', 'Men\'s round collar regular slim version of short sleeves', '', '', '', 390.31, 'http://www.alikoba.com/upload/b4ed1d8acd2f47f8/53e172ab926149f8.jpg', 1628167278, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (775, 'A|X ARMANI EXCHANGE', '', 'Armani Exchange Men\'s Elastic cotton Popeline * blue mesh logo shirt', '', '', '', 607.12, 'http://www.alikoba.com/upload/d6d7ad75105dd1b7/0106523d53d64c30.jpg', 1628167379, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (776, 'A|X ARMANI EXCHANGE', '', 'Armani Exchange men\'s short-sleeved Polo shirt with stripes on the sleeves', '', '', '', 363.68, 'http://www.alikoba.com/upload/8904a18a7f7a7879/c19d3c7115327760.jpg', 1628167456, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (777, 'A|X ARMANI EXCHANGE', '', 'Armani men\'s smart elastic satin casual shirt', '', '', '', 608.43, 'http://www.alikoba.com/upload/481bb0c91b2d238c/d3232a72c24595c4.jpg', 1628167616, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (778, 'A|X ARMANI EXCHANGE', '', 'Armani men\'s indigo denim 5 pocket pants', '', '', '', 836.58, 'http://www.alikoba.com/upload/08d49eb41721a964/2f5577890ee45b92.jpg', 1628167779, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (779, 'A|X ARMANI EXCHANGE', '', 'Men\'s Polo shirt knitted 4 button/high contrast color brand logo', '', '', '', 429.40, 'http://www.alikoba.com/upload/ea8669d8fae061ab/9194120bc8da9b50.jpg', 1628167862, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (780, 'A|X ARMANI EXCHANGE', '', 'Emporio Armani Exchange Men\'s Classic Cotton T-shirt with logo', '', '', '', 431.89, 'http://www.alikoba.com/upload/cd0b9fc92b94a3b8/aaf8d454bd864530.jpg', 1628167962, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (781, 'Emporio Armani', '', '安普里奥·阿玛尼 男式流行标志短袖圆领', '', '', '', 419.36, 'http://www.alikoba.com/upload/64d35baea3d0a1b2/917743f54021d853.jpg', 1628168061, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (782, 'A|X ARMANI EXCHANGE', '', 'Men\'s Icon Project embroidered zipper hooded sweatshirt', '', '', '', 752.39, 'http://www.alikoba.com/upload/c3728a9bf9863ab0/453f8f8ae88147f2.jpg', 1628168143, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (783, 'Armani Complexion', '', 'Stunning Perfect foundation SPF 25 - # 6 (moderately warm) 30ml/1oz', '', '', '', 370.10, 'http://www.alikoba.com/upload/cd20ec3a9842f058/c322d4cfe0e025bb.jpg', 1628168240, 0, 166, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (784, 'Emporio Armani', '', 'Emporio Armani Women\'s T-shirt', '', '', '', 298.33, 'http://www.alikoba.com/upload/1176d3d23820d74b/bf641ff30a214995.jpg', 1628168313, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (785, 'Emporio Armani', '', 'Men\'s stretch loop cotton hoodie', '', '', '', 659.21, 'http://www.alikoba.com/upload/0817c7b8e31f833a/6cd20d15fe501640.jpg', 1628168415, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (786, 'Emporio Armani', '', 'Men\'s underwear sweater full body logo sweater', '', '', '', 481.49, 'http://www.alikoba.com/upload/c333e43afd425c3d/ca9c737f1914ebe2.jpg', 1628168554, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (787, 'A|X ARMANI EXCHANGE', '', 'Men\'s short-sleeved Polo shirt', '', '', '', 270.94, 'http://www.alikoba.com/upload/3083282af53d116a/d7161fd07ca7a793.jpg', 1628168713, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (788, 'Emporio Armani', '', 'Men\'s T-shirt', '', '', '', 280.56, 'http://www.alikoba.com/upload/a5aa293508f58eed/ec789e61fbd96cd4.jpg', 1628168798, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (789, 'Emporio Armani', '', 'Men\'s corner swimming trunks', '', '', '', 372.62, 'http://www.alikoba.com/upload/06eb19ecc5879761/6e22afb96870e113.jpg', 1628168882, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (790, 'Emporio Armani', '', 'Emporio Armani Lingerie, evening wear, sustainable cotton, evening wear', '', '', '', 472.16, 'http://www.alikoba.com/upload/113ed7b834b2dff0/0a4e4a4c9e35ce90.jpg', 1628168970, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (791, 'A|X ARMANI EXCHANGE', '', 'Women\'s loose denim belt', '', '', '', 477.43, 'http://www.alikoba.com/upload/c6e207de31ac7c99/1bb14ad85591aae8.jpg', 1628169063, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (792, 'A|X ARMANI EXCHANGE', '', 'Men\'s Mercerized cotton plain knit jacquard and pure * blue Polo shirt', '', '', '', 695.99, 'http://www.alikoba.com/upload/1a708968208883b3/d1e65323d4a355b4.jpg', 1628169139, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (793, 'A|X ARMANI EXCHANGE', '', 'Men\'s sports jacket', '', '', '', 561.58, 'http://www.alikoba.com/upload/35f482920b80046e/1116e47d54735d3d.jpg', 1628169213, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (794, 'A|X ARMANI EXCHANGE', '', 'Armani Exchange Men\'s Pima cotton plain knit Black T-shirt', '', '', '', 418.24, 'http://www.alikoba.com/upload/eb918c9fcd6175f4/2483c3022265c2f9.jpg', 1628169595, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (795, 'Emporio Armani Swimwear', '', 'Men\'s swimsuit crew neck T-shirt, bold logo band', '', '', '', 494.36, 'http://www.alikoba.com/upload/156683cd2cf87f88/4ed8ebb70289cfec.jpg', 1628169807, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (796, 'Emporio Armani', '', 'Men\'s underwear Yarn Dyed Woven sweatpants', '', '', '', 456.30, 'http://www.alikoba.com/upload/112e712ba60b8ee2/40f35bb60d8f21bd.jpg', 1628169918, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (797, 'A|X ARMANI EXCHANGE', '', 'Men\'s * recycled cotton black Tiger T-shirt', '', '', '', 380.20, 'http://www.alikoba.com/upload/54b54d06285728ea/953769e98d00cb45.jpg', 1628170152, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (798, 'Armani Exchange', '', 'Women\'s stencil logo full zipper hooded sweatshirt', '', '', '', 356.06, 'http://www.alikoba.com/upload/c62c1ac6a149e014/cab05f51549b1292.jpg', 1628170219, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (799, 'EMPORIO ARMANI', '', 'Y4R170YLA0E Long Wallet EA-Y4R170YLA0E-81072 [Parallel Imported goods]', '', '', '', 703.52, 'http://www.alikoba.com/upload/84d21538038327b2/a8fe3186d41a3aea.jpg', 1628170351, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (800, 'Emporio Armani', '', '女士 T 恤', '', '', '', 368.81, 'http://www.alikoba.com/upload/3e657050ef22aa33/30e8e24d13ec5282.jpg', 1628170426, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (801, 'A|X ARMANI EXCHANGE', '', 'Armani men\'s indigo denim 5 pocket pants', '', '', '', 563.19, 'http://www.alikoba.com/upload/069e766ed66a7e72/7245219c8a753170.jpg', 1628170534, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (802, 'Emporio Armani', '', 'men\'s Bonded microfiber short-sleeved crew neck T-shirt', '', '', '', 192.30, 'http://www.alikoba.com/upload/ef86aee06f2e6b3e/1527502d05237d1e.jpg', 1628170654, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (803, 'Emporio Armani Swimwear', '', 'Men\'s crewneck Graphic World T-shirt', '', '', '', 413.67, 'http://www.alikoba.com/upload/900aea8a15c833b5/9854c71948478a42.jpg', 1628170752, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (804, 'Emporio Armani', '', 'Men\'s cotton jacket with loops', '', '', '', 561.64, 'http://www.alikoba.com/upload/a83e476e87b30a14/1ef68b8450d7ef54.jpg', 1628170815, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (805, 'A|X ARMANI EXCHANGE', '', 'Men\'s stretch cotton knit black T-shirt', '', '', '', 304.59, 'http://www.alikoba.com/upload/c9280c407b94dc2d/ea2c5b53ec454fa0.jpg', 1628170984, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (806, 'Emporio Armani', '', 'Men\'s T-shirt', '', '', '', 391.78, 'http://www.alikoba.com/upload/0cae7513570452f4/2a44bcfe815a22bf.jpg', 1628171084, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (807, 'A|X ARMANI EXCHANGE', '', 'Men\'s hoodies', '', '', '', 697.22, 'http://www.alikoba.com/upload/ebfde45dc2ca563b/f589cd7f368648ac.jpg', 1628171185, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (808, 'A|X ARMANI EXCHANGE', '', 'Bermuda shoes for men', '', '', '', 487.89, 'http://www.alikoba.com/upload/28fce73adc0b8206/b7de48ba74db36ae.jpg', 1628175924, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (809, 'A|X ARMANI EXCHANGE', '', 'Lady Fluid trench coat', '', '', '', 757.75, 'http://www.alikoba.com/upload/d6c7b8cbaa09bc0b/e70e95452279630b.jpg', 1628176024, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (810, 'Emporio Armani', '', 'Emporio Armani T-shirt', '', '', '', 227.77, 'http://www.alikoba.com/upload/77649c39ae5f688b/dbe631b758112477.jpg', 1628176108, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (811, 'A|X ARMANI EXCHANGE', '', 'Men\'s * cotton logo pattern Polo shirt', '', '', '', 419.49, 'http://www.alikoba.com/upload/dd6b2e853a9e358b/03079b76cd18ca01.jpg', 1628176241, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (812, 'Emporio Armani', '', 'Ms T-shirt', '', '', '', 456.30, 'http://www.alikoba.com/upload/3ac09cccd5ef4191/09affa395422f170.jpg', 1628176479, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (813, 'AX Armani Exchange', '', 'Women\'s rivet icon logo T-shirt dress', '', '', '', 383.85, 'http://www.alikoba.com/upload/4878e42d11c78d8c/bb8e34d7bc8c6131.jpg', 1628176611, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (814, 'A|X ARMANI EXCHANGE', '', 'Navy Crop&Square full body shirt for men', '', '', '', 570.38, 'http://www.alikoba.com/upload/67ad232a538e2ee1/ab4c6c7ea1296964.jpg', 1628176738, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (815, 'A|X ARMANI EXCHANGE', '', 'Men\'s logo T-shirts', '', '', '', 329.74, 'http://www.alikoba.com/upload/dc59946a7836aea1/c3b93cfefab977dc.jpg', 1628177057, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (816, 'Armani Exchange', '', 'Men\'s * Recycled cotton black panda T-shirt', '', '', '', 380.28, 'http://www.alikoba.com/upload/87afd0482d61aece/cfb7f89ad7e16285.jpg', 1628177134, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (817, 'Emporio Armani', '', 'Women\'s T-shirt', '', '', '', 418.24, 'http://www.alikoba.com/upload/870e0516603ad746/7992f25901a5afd3.jpg', 1628177246, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (818, 'Emporio Armani', '', 'Men\'s Eagle V-neck T-shirt', '', '', '', 359.21, 'http://www.alikoba.com/upload/d9ecbc37350e735e/e9d06f466df95144.jpg', 1628177499, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (819, 'Emporio Armani', '', 'Men\'s underwear spandex sweatpants', '', '', '', 570.38, 'http://www.alikoba.com/upload/8dc197100c285178/2eed78f2dc43e0b2.jpg', 1628177568, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (820, 'EMPORIO ARMANI', '', 'Shoulder bag Y4M177YFE6J [parallel imported goods]', '', '', '', 870.97, 'http://www.alikoba.com/upload/648cea5a246ccc7b/4d6117b5b817dfa8.jpg', 1628177748, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (821, 'Emporio Armani', '', 'Ms T-shirt', '', '', '', 266.27, 'http://www.alikoba.com/upload/1bbf62841be1f64c/63793566393277be.jpg', 1628177823, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (822, 'Emporio Armani', '', 'Men\'s chronograph quartz watch with leather strap AR11143', '', '', '', 1.00, 'http://www.alikoba.com/upload/0204dd5f816ece23/2c70b2071d8b0585.jpg', 1628177939, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (823, 'A|X ARMANI EXCHANGE', '', 'Lightweight hooded jacket for men', '', '', '', 873.78, 'http://www.alikoba.com/upload/7b792490083ff6c9/1f8338d920fea5d5.jpg', 1628178050, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (824, 'A|X ARMANI EXCHANGE', '', 'Backpack with handle', '', '', '', 778.35, 'http://www.alikoba.com/upload/382dc9a2ef4b5010/dac7a7baf3b7650b.jpg', 1628178130, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (825, 'A|X ARMANI EXCHANGE', '', 'Men\'s sports jacket, * blue', '', '<p>1,241.93</p>', '', 1.00, 'http://www.alikoba.com/upload/4528b26cfc0b11fb/dd1e9da201a2513a.jpg', 1628178239, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (826, 'A|X ARMANI EXCHANGE', '', 'All Over Logo printed long sleeve T-shirt for men', '', '<p>494.36</p>', '', 494.36, 'http://www.alikoba.com/upload/4528b26cfc0b11fb/dd1e9da201a2513a.jpg', 1628178348, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (827, 'Emporio Armani', '', 'Ms T-shirt', '', '', '', 359.24, 'http://www.alikoba.com/upload/634b0cde3640835c/d90854d9027150f6.jpg', 1628178444, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (828, 'A|X ARMANI EXCHANGE', '', 'Men\'s A | x logo color popular French cotton knitted T-shirt', '', '', '', 342.23, 'http://www.alikoba.com/upload/f64a6c77e65c26f8/95987425f1277b6b.jpg', 1628178643, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (829, 'Emporio Armani', '', 'EMPORIO ARMANI Watch KAPPA AR80014', '', '', '', 3.00, 'http://www.alikoba.com/upload/c004705fb50ebb7e/392f8b02a137e816.jpg', 1628178769, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (830, 'Abu Garcia', '', '路亚游戏 Spinning 钓竿 Salty Style Colors', '', '', '', 697.22, 'http://www.alikoba.com/upload/f07157e5b7c5be2f/1c9c58f44e5ada40.jpg', 1628178885, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (831, 'Daiwa 达亿瓦', '', 'Black Label Travel Black Label Travel DAIWA DAIWA', '', '', '', 1.00, 'http://www.alikoba.com/upload/7cc2d6345c20228c/1cce7dc77051f7be.jpg', 1628178979, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (832, 'Daiwa', '', 'Fishing rod beauty fishing line under the moon', '', '', '', 657.45, 'http://www.alikoba.com/upload/6a8586b42fc9713d/c3a322282b71e3a3.jpg', 1628179103, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (833, 'Abu Garcia', '', 'Bait reel ROXANI 7/8', '', '', '', 788.03, 'http://www.alikoba.com/upload/c11f3ba7be02b6e6/954939a34fa3b8c9.jpg', 1628189510, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (834, 'Abu Garcia', '', 'Trout rod bait', '', '', '', 942.48, 'http://www.alikoba.com/upload/1ec42a120f2d270d/b4a7b85372a8400e.jpg', 1628189643, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (835, 'GUNCraft', '', 'Lucky lipstick lua bait T-shirt', '', '', '', 290.69, 'http://www.alikoba.com/upload/0e46bc6e92f18f04/5c89b09fd793c144.jpg', 1628189903, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (836, 'Rapala', '', 'LureCamo Tackle Bag RBLCTBME', '', '', '', 357.47, 'http://www.alikoba.com/upload/849cc2cafa20d989/c510450a6330891f.jpg', 1628190181, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (837, 'Sougayilang', '', 'Retractable way sub wheel combination fishing rod and reel combination, ultra light way sub wheel, suitable for travel in saltwater fresh water and beginners 5.9 ft /6.9 ft', '', '', '', 520.91, 'http://www.alikoba.com/upload/8b3fbd57e849b5bd/dbe3118e8aeb166b.jpg', 1628190327, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (838, 'Rapala', '', 'Lua bait camouflage long sleeve shirt', '', '', '', 304.84, 'http://www.alikoba.com/upload/515ad7a72c823590/68a4513632471e54.jpg', 1628190439, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (839, 'PUMA 彪马', '', 'Run Light Razer Cut SS T-shirt for ladies', '', '', '', 207.00, 'http://www.alikoba.com/upload/093cc430d84ad2e5/74ba61fa9d6aa5ca.jpg', 1628190670, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (840, 'Power pro', '', 'Power pro', '', '', '', 372.82, 'http://www.alikoba.com/upload/21a39b4ad2537f10/7628d76634b2bbf3.jpg', 1628190754, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (841, 'Chanel', '', 'Camellia Hydrating Hydra Beauty-Night Care Camellia Hydrating Micro Serum 30ml/1oz', '', '', '', 582.23, 'http://www.alikoba.com/upload/1a44db7e95e835e3/234c53420557ce20.jpg', 1628191077, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (842, 'CHANEL 香奈儿', '', 'Anti-pollution cleanser 150ml', '', '', '', 506.36, 'http://www.alikoba.com/upload/0dea6f7f2c4c3396/8cfe90887c8ebf78.jpg', 1628191186, 0, 166, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (843, 'CHANEL 香奈儿', '', 'Vitalumiere Aqua Ultra light skin Perfect makeup SPF 15-30 ml, 22 beige rose', '', '', '', 363.36, 'http://www.alikoba.com/upload/96395ba03b66b5fd/b832341b7273c856.jpg', 1628191309, 0, 166, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (844, 'CHANEL 香奈儿', '', 'Eye shadow 1 piece (1 x 2 ml)', '', '', '', 446.59, 'http://www.alikoba.com/upload/2054a3bbe666c8c4/3878f1cded02a6e6.jpg', 1628191441, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (845, 'CHANEL 香奈儿', '', 'Bleu De Pour Homme Blue Shower Gel 200ml', '', '', '', 452.40, 'http://www.alikoba.com/upload/748563363387d708/2b4d7f199f233756.jpg', 1628191624, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (846, 'CHANEL', '', 'Hand cream, 210 grams', '', '', '', 421.07, 'http://www.alikoba.com/upload/69010d353126d027/ccede0bfcf970d3c.jpg', 1628191810, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (847, 'CHANEL', '', 'Blue Essence,1 oz (30ml)', '', '', '', 587.24, 'http://www.alikoba.com/upload/7aa8004bc9866ec4/fd290fe15564f320.jpg', 1628191915, 0, 166, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (848, 'Chanel', '', 'Face Liquid Foundation Kit (X)', '', '', '', 912.79, 'http://www.alikoba.com/upload/b79113c7ee2f6165/d4713e8a90759ed9.jpg', 1628192061, 0, 166, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (849, 'CHANEL', '', 'Eyebrow pencil', '', '', '', 429.40, 'http://www.alikoba.com/upload/85747d49fa002d78/a3f9d14bf4d46552.jpg', 1628192230, 0, 166, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (850, 'CHANEL 香奈儿', '', 'Body milk 1 piece (1 x 150 ml)', '', '', '', 909.88, 'http://www.alikoba.com/upload/45577973b08578b0/202016999acff031.jpg', 1628192367, 0, 166, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (851, 'Fjällräven', '', 'Men\'s Sarek Trekking shirt', '', '', '', 835.00, 'http://www.alikoba.com/upload/35f8b3b8e4b697f9/76e3ceea9e1d44ad.jpg', 1628192497, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (852, 'Polo Ralph Lauren', '', 'Paul Ralph Lauren men\'s button-down shirt', '', '', '', 544.68, 'http://www.alikoba.com/upload/cef7b48d2ee6703e/5cdf8eab76f98dda.jpg', 1628192611, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (853, 'Free People', '', 'Lace stretch jumper for women', '', '', '', 459.26, 'http://www.alikoba.com/upload/cd4321f2f328249f/8b6c010a84f0b1b7.jpg', 1628192699, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (854, '武田公司', '', 'Small storage stool white navy blue 30×30×30 cm M9-CDS30WNV-G', '', '', '', 142.52, 'http://www.alikoba.com/upload/a6c23a6e959bb480/d37bc15f0d5765a8.jpg', 1628193010, 0, 1, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (855, 'Happy House', '', '4496-1 Round leisure living (M) basket, pink', '', '', '', 413.66, 'http://www.alikoba.com/upload/48873b3c3ba93f4d/10c3532fde876fbd.jpg', 1628193105, 0, 1, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (856, 'HOZELOCK', '', 'Bomba para inundaciones Flowmax 7500', '', '', '', 664.36, 'http://www.alikoba.com/upload/b812500030f8a1e3/3c4cd14cf97421e5.jpg', 1628193228, 0, 1, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (857, 'Wedderspoon', '', 'Raw organic manuka honey', '', '', '', 403.19, 'http://www.alikoba.com/upload/c58b5d607d40fec2/cc68f625ef55b33e.jpg', 1628193354, 0, 3, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (858, 'Ultimate Unicorn', '', 'Soap dispenser', '', '', '', 245.87, 'http://www.alikoba.com/upload/489549b4084c27f9/833a83b41aad88be.jpg', 1628193719, 0, 1, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (859, 'Pipishell Store', '', 'Pipishell Floating Shelves Wood Wall Mounted Shelf, Rustic Shelves Set of 3, 18kg Weight Capability, Solid Metal Wall Shelf for Bedroom, Bathroom, Living Room, Kitchen, Home Office, Laundry room, etc', '', '', '', 16.99, 'http://www.alikoba.com/upload/57707288b69fdd05/55c600419da1b927.jpg', 1628193883, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (860, 'SEIKO SEIKO', '', 'Clock, wall clock, desk clock and life waterproof', '', '', '', 230.55, 'http://www.alikoba.com/upload/0aed3a232f946830/f6be3ec9866a4523.jpg', 1628245354, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (861, 'Organain', '', 'Egg white Pancake and Waffle mix, whole wheat and Oats - Made with organic rice flour, 10 g plant-based protein, no dairy or soy, non-GM, 15 oz (6 packs)', '', '', '', 342.47, 'http://www.alikoba.com/upload/128bf17b942e92ed/3f1b12d1fe13ca1f.jpg', 1628245487, 0, 3, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (862, 'Alessi', '', 'Glass jar for dog food with lid thermoplastic resin, black black AMMI21 B', '', '', '', 236.64, 'http://www.alikoba.com/upload/b6fae42c27ec4b63/d9f85b8baa4b6391.jpg', 1628245746, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (863, 'Willow Tree', '', 'Love My Dog - Shallow statue', '', '', '', 329.24, 'http://www.alikoba.com/upload/92b292b88aa2bda7/47c02851cffdb5b5.jpg', 1628245842, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (864, 'Midlee', '', 'Hidden cat litter box Furniture (large)', '', '', '', 1.00, 'http://www.alikoba.com/upload/b457dcaf6d91d3ec/355e6c9b64414065.jpg', 1628246037, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (865, 'Beurer', '', 'Double layer heating blanket 3 stage variable temperature safety system machine washable, 150 x 140cm', '', '', '', 565.85, 'http://www.alikoba.com/upload/17c0ad9f07a20630/a2cd3b20e406dd8f.jpg', 1628248639, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (866, 'Yobiipaw', '', 'Decorative vases in the shape of fishbowl bags', '', '', '', 265.50, 'http://www.alikoba.com/upload/e49948dc0cb6fb38/b6253d4b86dd243a.jpg', 1628248950, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (867, 'Nishikawa', '', 'Height is adjustable with beige height', '', '', '', 607.09, 'http://www.alikoba.com/upload/538435774db45ad5/b62ba43766adcc61.jpg', 1628250048, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (868, 'WHW Whole House Worlds', '', 'Propeller wall clock, analog, quartz movement, black metal and gold numbers, 1 AA battery (not included)', '', '', '', 607.97, 'http://www.alikoba.com/upload/b8a91175fd4dd5ca/2bd3541b352c6184.jpg', 1628253072, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (869, 'Willow Tree', '', '26102 Mother and Child Statue, Natural, 4.9 x 3.9', '', '', '', 205.60, 'http://www.alikoba.com/upload/0e296b29c5a0811d/1a967e437a701afa.jpg', 1628253165, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (870, 'Lyfe Lax', '', 'Men\'s comfortable wool indoor shoes/slippers non-slip outsole', '', '', '', 347.15, 'http://www.alikoba.com/upload/b6bc3f1a76794ea8/7506437e64b64b20.jpg', 1628256131, 0, 1, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (871, 'Happy House', '', '4615-2 Basket Rectangular Dog Living Style (S) Taupe/black, taupe, black', '', '', '', 363.90, 'http://www.alikoba.com/upload/3e77cee36c366579/8f54f433b9277873.jpg', 1628257256, 0, 1, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (872, 'UGHEY', '', 'UGHEY Dehumidifiers 2300ML with Humidity Display, Automatic Defrost Dehumidifier with Double Semiconductor Portable Electric Air Cleaner, Ultra Quiet for Home, Kitchen, Garage, Wardrobe, Basement', '', '', '', 65.99, 'http://www.alikoba.com/upload/f04167f5e2686a1f/e1251f5da04a9477.jpg', 1628266333, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (873, 'Levoit', '', 'Levoit Air Purifier for Home, Quiet H13 HEPA Filter Removes 99.97% of Pollen, Allergy Particles, Dust, Smoke, Portable Air Cleaner for Bedroom with 3 Speeds, Night Light, Filter Change Reminder [Energy Class A+]', '', '', '', 79.99, 'http://www.alikoba.com/upload/1eebffb6925e9c47/5a8ab51138524cdf.jpg', 1628266399, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (874, 'QUARED', '', 'QUARED Evaporative Air Cooler 5L, 4 in 1 Large Mobile Portable Air Conditioner Cooling Fan Humidifier Anion Purification with 3 Speed, 3 Mode, Remote Control, Timer Function, for Home Office (White)', '', '', '', 129.99, 'http://www.alikoba.com/upload/18d9cad87ae2aa09/91c3bdadfab16824.jpg', 1628266446, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (875, 'Leewadee', '', 'Leewadee Tall Big Floor Standing Vase For Home Decor 75 cm, Water Hyacinth, black', '', '', '', 32.99, 'http://www.alikoba.com/upload/30eb3d98440c12e9/fa88ad23d4969ec8.jpg', 1628266500, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (876, 'Pro Breeze Store', '', 'Pro Breeze® 30-inch Tower Fan with Oscillation, Ultra-Powerful 60W Motor, Remote Control, 7.5 Hour Timer and 3 Cooling Fan Modes for Home and Office', '', '', '', 69.99, 'http://www.alikoba.com/upload/2d351afaee5b3c54/1631347af5b8fde6.jpg', 1628266569, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (877, 'COMHOMA', '', 'COMHOMA Office Desk Chair with Armrest Office Computer Chairs Ergonomic Conference Executive Manager Work Chair (Black)', '', '', '', 72.99, 'http://www.alikoba.com/upload/a8fe58b835c04448/8349ac3bec0ea3ac.jpg', 1628266619, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (878, 'Pro Breeze Store', '', 'Pro Breeze 12L/Day Dehumidifier with Digital Humidity Display, Sleep Mode, Continuous Drainage, Laundry Drying and 24 Hour Timer - Ideal for Damp and Condensation, Quiet Mark Certified', '', '', '', 149.99, 'http://www.alikoba.com/upload/75f84aa564c5f860/14409be7cc76e6e7.jpg', 1628266693, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (879, 'Outdoor', '', 'Outdoor Beach Mat Picnic Blanket,Extra Large 210 x 200cm Waterproof Portable Picnic Beach blanket,Sandproof with 4 Fixed Nails,Reinforced Edging for Beach,Park,Camping,Hiking & Family Concerts (Blue)', '', '', '', 3.65, 'http://www.alikoba.com/upload/eb6c336331d06e65/4852abc42e3dd805.jpg', 1628266958, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (880, 'TUOSHIYI', '', 'TUOSHIYI Extra Large Waterproof Picnic Blanket,Outdoor Picnic Blanket with Backing for Family Concerts,Beach,Park (Blue, 150*200)', '', '', '', 16.99, 'http://www.alikoba.com/upload/a07068f0b3b59bb5/a7bf29f68e52f57d.jpg', 1628267064, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (881, 'Generic', '', '50 American Sweets Large Box Candy Gift - Swedish Fish', '', '', '', 5.99, 'http://www.alikoba.com/upload/88cd383869396976/5ed8d930416ebb58.jpg', 1628267195, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (882, 'Jolly Rancher', '', 'Jolly Rancher Assorted Hard Candy 198g', '', '', '', 8.70, 'http://www.alikoba.com/upload/c93b22cecb9944ce/60fa28bc7960979a.jpg', 1628267276, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (883, 'M&M\'s', '', 'M&M\'s Peanut Chocolate More to Share Pouch, Chocolate Gifts & Movie Night Snacks, 268 g', '', '', '', 2.35, 'http://www.alikoba.com/upload/4edc3dfc0b3300d4/7ce55f4a9867aa13.jpg', 1628267330, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (884, 'Seven Trees Farm', '', 'Seven Trees Farm KIT Made of 4 Products, 3X SlimFast High Protein Meal Replacement Shakes (Summer Strawberry 292g, Chocolate 300g, Banana 292g) and 1x STF Nutrition Shaker 700ml', '', '', '', 26.97, 'http://www.alikoba.com/upload/51c69d6e3ce7d95f/32a7a07d62aa7247.jpg', 1628267393, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (885, 'EVELYN LIVING', '', 'EVELYN LIVING 360 Spin Mop Bucket Set Plastic Spin Wringer with 3 Microfibre Mop Head Pad Easy Press Handle Home Cleaning Clean Floor', '', '', '', 11.36, 'http://www.alikoba.com/upload/fd4d8853fba24243/e2d6510cea2590e5.jpg', 1628267535, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (886, 'SAMYANG Store', '', 'Samyang Korean Assorted Top Spicy Ramen Noodle Challenge (Pack of 10)', '', '', '', 6.89, 'http://www.alikoba.com/upload/81dd1b0802583229/3caceba259020247.jpg', 1628267625, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (887, 'Cadbury Store', '', 'Cadbury Dairy Milk Chocolate Bar, 95 g', '', '', '', 2.88, 'http://www.alikoba.com/upload/2f9be7bab081d3ae/df6be0449340a615.jpg', 1628267698, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (888, 'Dolce Gusto Store', '', 'Nescafe Dolce Gusto Flat White Coffee Pods (Pack of 3, Total 48 Capsules)', '', '', '', 14.95, 'http://www.alikoba.com/upload/695f20f052580c8b/8d0299eefba162bc.jpg', 1628267771, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (889, 'Grower\'s Cup Store', '', 'Gourmet Birthday Coffee Gift Set for Men & Women – 5 of The World\'s Finest Single Estate Specialty & Organic Coffees | Brew & Enjoy Anytime, Anywhere | Hamper Style Letterbox Gift Idea for Him & Her', '', '', '', 9.95, 'http://www.alikoba.com/upload/696a6a1d3dde46cb/2a51c4bf09fba1a0.jpg', 1628267823, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (890, 'Baban Store', '', 'Baban Ionic Shower Head, Upgraded 4-Layer Filtration Universal Handheld Showerhead, Higher Pressure Water Saving with 3 Sprays Modes, Extra Filter Bead Replacement Panel & PP Cotton Filter Cartridge', '', '', '', 11.15, 'http://www.alikoba.com/upload/912f601e80d2a6d6/b0776e0fc0531c86.jpg', 1628267928, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (891, 'Amazon Essentials Store', '', 'Amazon Essentials Men’s Chino Trousers', '', '', '', 21.49, 'http://www.alikoba.com/upload/717fcd5a547845e0/6a4c476878ac76aa.jpg', 1628268071, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (892, 'Amazon', '', 'Amazon Essentials Men’s Chino Shorts', '', '', '', 15.99, 'http://www.alikoba.com/upload/992dce101db6ff8a/e9001825a896e2d4.jpg', 1628268208, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (893, 'Coavas Store', '', 'Coavas Simple Computer-Desk Gaming Desk, Small Desk, Home Office Desk with Metal Legs for Students Adult Wooden Study Desk,100x48x74cm,Walnut &Black', '', '', '', 39.99, 'http://www.alikoba.com/upload/6c2e3e146f93494c/896b03e1407d59e1.jpg', 1628268756, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (894, 'Amazon', '', 'Amazon Basics Height-Adjustable Display stand for Laptop and Monitors with non-skid feet', '', '', '', 12.59, 'http://www.alikoba.com/upload/e0307cc0d22547ab/5d8c67feab29af82.jpg', 1628268865, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (895, 'Logitech Store', '', 'Logitech MK270 Wireless Keyboard and Mouse Combo for Windows, 2.4 GHz Wireless, Compact Wireless Mouse, 8 Multimedia & Shortcut Keys, 2-Year Battery Life, PC/Laptop, QWERTY UK Layout - Black', '', '', '', 19.98, 'http://www.alikoba.com/upload/dfb71eb56274b38e/8a982cf841902d94.jpg', 1628268956, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (896, 'Rowntree\'s', '', 'Rowntree\'s Fruit Pastilles Sweets Sharing Pouch, 145g', '', '', '', 3.49, 'http://www.alikoba.com/upload/5ef98af50c3581b3/527bfa2f45b8b16b.jpg', 1628269039, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (897, 'Logitech Store', '', 'Logitech C270 HD Webcam, HD 720p/30fps, Widescreen HD Video Calling, HD Light Correction, Noise-Reducing Mic, For Skype, FaceTime, Hangouts, WebEx, PC/Mac/Laptop/Macbook/Tablet - Black', '', '', '', 24.99, 'http://www.alikoba.com/upload/700ea1b42b6ad94e/5717b9c1008556ff.jpg', 1628269106, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (898, 'Nescafé Dolce Gusto Store', '', 'DeLonghi Nescafé Dolce Gusto Piccolo XS Pod Capsule Coffee Machine, Espresso, Cappuccino and more, EDG210.W, White & Green', '', '', '', 29.00, 'http://www.alikoba.com/upload/ee7180bb786e1ae3/c27cf27636fc32e2.jpg', 1628269338, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (899, 'Amazon', '', 'Amazon Basics 18-Piece Dinnerware Set, Service for 6', '', '', '', 27.77, 'http://www.alikoba.com/upload/cd0bfae1a03f0af1/5b6194313b2d79d9.jpg', 1628269411, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (900, 'Lifewit Store', '', 'Lifewit 15L 24 Cans Insulated Picnic Lunch Bag Large Soft Cooler Bag for Outdoor/Camping/BBQ/Travel, Grey', '', '', '', 14.99, 'http://www.alikoba.com/upload/a981a3145eaa1337/6434ebe70ade1299.jpg', 1628269547, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (901, 'Amazon Brand', '', 'Amazon Brand - Eono Mesh Laundry Bags, Washing Machine Wash Bags, Reusable and Durable Mesh Wash Bags for Delicates Blouse, Hosiery, Underwear, Bra, Lingerie Baby Clothes - 5-Set (1XL+2L+2M)', '', '', '', 9.99, 'http://www.alikoba.com/upload/3e42cc17a8522378/2d9236640c72bc5c.jpg', 1628269611, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (902, 'FineDine Store', '', '10-Piece Stainless Steel Kitchen Utensil Set - Non-Stick, Heat Resistant Cooking Utensils Set and Holder, Spoons, Tongs, Turner, Server, Ladle, Whisk, Masher - Sleek Kitchen Tools Set with Utensil Pot', '', '', '', 15.29, 'http://www.alikoba.com/upload/902d0333fb4f8345/1e43c3504b72568d.jpg', 1628269759, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (903, 'Linkax Store', '', 'Linkax LED Torch LED Flashlight Adjustable Focus Handheld Flashlight Super Bright 800 Lumens Pocket Torch Zoomable and Waterproof Camping Outdoor Torch 3 x AAA Batteries Included', '', '', '', 7.99, 'http://www.alikoba.com/upload/9707a17d44b9d405/d43425d6dae402fb.jpg', 1628269930, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (904, 'Orbit Innovations', '', 'Orbit Innovations Collapsible Washing Up Bowl - Ideal for Camping (Colours may vary)', '', '', '', 8.99, 'http://www.alikoba.com/upload/002bb87c09adc6be/0ab95dc6386e96f1.jpg', 1628270119, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (905, 'Dolce Gusto Store', '', 'DeLonghi Nescafé Dolce Gusto Infinissima Pod Capsule Coffee Machine, Espresso, Cappuccino and more,1.2 Liters, EDG260.R, Red & Black', '', '', '', 57.21, 'http://www.alikoba.com/upload/b4b864556a7b959f/e5047a326d1c496e.jpg', 1628270744, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (906, 'Breville Store', '', 'Breville All-in-One Coffee House, Espresso, Filter and Pods Coffee Machine with Milk Frother, Dolce Gusto Compatible [VCF117]', '', '', '', 37.35, 'http://www.alikoba.com/upload/5a1b4cd2d5693637/5fb722a43002a31b.jpg', 1628270858, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (907, 'New Horrizon Store', '', 'New Horrizon - Mouse Mat BLACK ANTI-SLIP COMFORT MOUSE PAD MAT WITH GEL FOAM REST WRIST SUPPORT FOR PC LAPTOP - Compatible with Laser and Optical Mice', '', '', '', 4.99, 'http://www.alikoba.com/upload/c09fcfdbfa9145e8/5a1348776a0a89f7.jpg', 1628270914, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (908, 'Integral Store', '', 'Integral INFD128GBCOU 128GB USB Memory 2.0 Flash Drive Courier Blue', '', '', '', 9.99, 'http://www.alikoba.com/upload/423ca799e137215f/8b24fb6eb00f983f.jpg', 1628271035, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (909, 'Bic Store', '', 'Bic Cristal Original Ballpoint Pens, Perfect for School and Office Use, Pack of 10, Medium Point (1.0 mm), Smudge-Free', '', '', '', 1.00, 'http://www.alikoba.com/upload/a8c3e4d2b068e12a/431ca2d2359024c3.jpg', 1628271158, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (910, 'HEYOMART', '', 'HEYOMART Fishing Landing Net Telescope Foldable Collapsible Extensible for Bird Fish Catch Release Lightweight Portable Aluminum Alloy Frame Handle', '', '', '', 12.65, 'http://www.alikoba.com/upload/2a299dafd22a3bb2/3dbe10d43e392e11.jpg', 1628272626, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (911, 'Pwsap', '', '282Pcs Carp Fishing Tackle in Box, Fishing Accessories Kit Include Fishing Hook, Safety Clips Hook, Corn Kernel, Tubing, Rolling Swivel, Fishing Bait Screw, Fishing Bead, Boilie Stops with Tackle Box', '', '', '', 13.99, 'http://www.alikoba.com/upload/57bf4ea904808986/3c3eb4356b2a3e7a.jpg', 1628272707, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (912, 'Cadbury Store', '', 'Cadbury Dairy Milk Caramel Chocolate Bar, 120 g', '', '', '', 2.79, 'http://www.alikoba.com/upload/248f400aee350179/dbe14b8dc7a512ef.jpg', 1628272754, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (913, 'Lunar Box Store', '', 'Lunar Box, Large Cantilever Fishing Tackle Box, 3 Trays with Adjustable Divider Compartments', '', '', '', 18.99, 'http://www.alikoba.com/upload/112af662d62fef0c/4c5a697fb1924fad.jpg', 1628272838, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (914, 'Magreel Store', '', 'Magreel Telescopic Fishing Rod and Spinning Reel Combo Set with Fishing Line, Fishing Lures Kit & Accessories and Carrier Bag for Saltwater Freshwater', '', '', '', 24.99, 'http://www.alikoba.com/upload/def013b399272942/06e844bc22a0f230.jpg', 1628272890, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (915, 'Calvin', '', 'Calvin Klein Men`s Microfiber Boxer Briefs Pack of 3', '', '', '', 35.99, 'http://www.alikoba.com/upload/27fa6649ece4eb63/a58f0f67b1631bee.jpg', 1628273063, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (916, 'TaylorMade', '', 'TaylorMade Men\'s Tour Radar Golf Cap', '', '', '', 15.95, 'http://www.alikoba.com/upload/3445feb14b1bf5c0/8ea08e2000032fa0.jpg', 1628273160, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (917, 'NIKE', '', 'NIKE Men\'s Jordan Jumpman Crew Socks (pack Of 3)', '', '', '', 14.99, 'http://www.alikoba.com/upload/22db7d07c61cdcf6/d3e911647a0f4806.jpg', 1628273228, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (918, 'Sienna', '', 'Sienna Kids Oversized Hoodie Blanket Ultra Soft Plush Wearable Sherpa Fleece Warm Throw Blanket Cosy Sweatshirt, Kids - Blush Pink', '', '', '', 14.05, 'http://www.alikoba.com/upload/ee9f4090a51b0e3a/d8f39e71d2a0bbd6.jpg', 1628273271, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (919, 'Sixome', '', 'Sixome Body Tape Strapless Adhesive Sticky Bra Strong Stick On Self Adhesive Bra with Petal Nipple Covers,Breast Lift Cover Bra Invisible Push Up Backless Bra for Sizes A-K Cups Beige', '', '', '', 10.40, 'http://www.alikoba.com/upload/b9cacbe251008bcc/d34d3f3c37d01fcd.jpg', 1628273419, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (920, 'Jaques of London Store', '', 'Quoits - Original Compact Quoits - Luxury Quoits Set', '', '', '', 26.99, 'http://www.alikoba.com/upload/98cfb9b13c0d0463/78932b5b5a8a632b.jpg', 1628273550, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (921, 'ALONG', '', 'ALONG FIT Women Running Shorts Quick Dry Gym Shorts Women Loose Shorts with Pockets Drawstring Sports Shorts Women Breathable Jogger Shorts Summer for Workout Exercise Jogging Casual', '', '', '', 16.99, 'http://www.alikoba.com/upload/97d4b73d92343423/4de16697ddbd8670.jpg', 1628274722, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (922, 'Under', '', 'Under Armour Men‘s Compression Tights UA HeatGear Armour 2.0, Comfortable Gym Leggings for Men, Lightweight Thermal Underwear with Tight Fit Design', '', '', '', 17.00, 'http://www.alikoba.com/upload/3c6ddeda1946045a/bb44e53fe38cdb66.jpg', 1628274851, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (923, 'Jumper', '', 'Jumper Laptop 8GB DDR4 128GB Storage 13.3 Inch Full HD Screen Windows 10 Thin and Light Laptop Computer, Intel Celeron processor, Dual-band WiFi 2.4G/5G Supports 1TB SSD and 256GB TF card Expansion', '', '', '', 226.70, 'http://www.alikoba.com/upload/97cfffad8d867a4c/6da7824200585f89.jpg', 1628276168, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (924, 'Alienware', '', 'Alienware AW2521H 24.5 Inch Full HD (1920x1080) Gaming Monitor, 360Hz, IPS, 1ms, NVIDIA G-SYNC, 99% sRGB, HDR 10, DisplayPort, 2x HDMI, 5x USB, 3 Year Warranty', '', '', '', 599.00, 'http://www.alikoba.com/upload/c0e97a3ca00ef3a4/85f0886a87641c7e.jpg', 1628276218, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (925, 'Cello', '', 'Cello ZBVD0204 40\" inch Full HD LED TV and Freeview HD Made in the UK [Energy Class A]', '', '', '', 2272.90, 'http://www.alikoba.com/upload/bea171623bec1e66/0892181e95ef50a6.jpg', 1628276273, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (926, 'Ferguson', '', 'Ferguson 43\" inch Full HD LED TV With DVD Player, Freeview HD, USB & 3 x HDMI - British Manufacturer - F4320F [Energy Class A]', '', '', '', 3229.99, 'http://www.alikoba.com/upload/ccd89ebd9a7c831d/14f29f2b80730cc1.jpg', 1628276320, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (927, 'EMtronics', '', 'EMtronics EM40FHD 40\" Inch Full HD 1080p TV with Freeview HD, 3x HDMI, 2x USB PVR', '', '', '', 259.95, 'http://www.alikoba.com/upload/ccd89ebd9a7c831d/14f29f2b80730cc1.jpg', 1628276360, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (928, 'Jumper', '', 'Jumper 11.6 inch Full HD Touchscreen Laptop (6GB RAM 128GB eMMC, Ultra-light 360-degree flip Ultrabook, Windows 10 Laptops 2 in 1 Intel Celeron Processor) Support 256GB TF card Expansion', '', '', '', 2249.99, 'http://www.alikoba.com/upload/cfd4818114520e4c/369edb2ef33bd08e.jpg', 1628276420, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (929, 'jumper Store', '', 'Jumper Laptop Microsoft 365, 13.3 inch Full HD Screen with Windows 10, 4GB RAM, 64GB eMMC Laptops Computer, USB 3.0*2, Dual Band Wifi(2.4GHz or 5GHz) PC, Supports 256GB TF Card and 1TB SSD Expansion', '', '', '', 2009.99, 'http://www.alikoba.com/upload/9560eb3061efcd66/48eff00b233ad491.jpg', 1628276496, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (930, 'Amazon', '', 'Echo Sub | Powerful subwoofer for your Echo—requires compatible Echo device and compatible music streaming service', '', '', '', 1119.99, 'http://www.alikoba.com/upload/383a768b5b1da584/f1e0ef21101087c4.jpg', 1628276887, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (931, 'Echo', '', 'Echo (4th generation) | With premium sound, smart home hub and Alexa | Charcoal', '', '', '', 889.99, 'http://www.alikoba.com/upload/ae5dce4ffb2cd01f/aef28eb3d83248f3.jpg', 1628276984, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (932, 'Echo', '', 'Echo Dot (4th generation) | Smart speaker with clock and Alexa | Glacier White', '', '', '', 889.23, 'http://www.alikoba.com/upload/4a08ebd48935b74a/8c5c643458ee285b.jpg', 1628277024, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (933, 'Echo', '', 'Echo Show 10 (3rd generation) | HD smart display with motion and Alexa, Charcoal Fabric', '', '', '', 2239.99, 'http://www.alikoba.com/upload/aeaa32171935a253/4523c9402b472e21.jpg', 1628277072, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (934, 'SANEI', '', 'Universal household faucet threaded pipe interface Yobi13 Y12J-13', '', '', '', 231.19, 'http://www.alikoba.com/upload/5095f2d7292dcfc6/16574db51f37d902.jpg', 1628338937, 0, 1, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (935, 'Russell Hobbs', '', 'PowerSteam Ultra 3100 W Vertical Steam Iron 20630 - Black', '', '', '', 307.59, 'http://www.alikoba.com/upload/e94b559dcfbb286a/057c4709db62c9ef.jpg', 1628339146, 0, 1, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (936, 'Russell Hobbs', '', 'Elegant electric kettle with glass design and stainless steel body/kettle 1.7l and 2200 W', '', '', '', 547.94, 'http://www.alikoba.com/upload/4626b53517af2ec0/8e405530e004bc32.jpg', 1628339569, 0, 1, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (937, 'IRIS OHYAMA', '', 'IH rice Cooker 5.5 and IH type 40 different patterns cooking function extremely thick fire kettle brown rice 2020 black RC-IK50-B requires transformer', '', '', '', 700.25, 'http://www.alikoba.com/upload/6d1ab39bd7c710b6/9187bf4e3272f123.jpg', 1628341783, 0, 1, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (938, 'LAICA', '', 'Apm001 pasta home motor PM2000, plastic, white, 22.8 x 13.1 x 12.3 cm', '', '', '', 413.50, 'http://www.alikoba.com/upload/f0c1a716fa8f824b/e7c9f26c0210f5fb.jpg', 1628343102, 0, 1, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (939, 'ZOJIRUSHI', '', 'Zojirushi IH Rice Cooker Extremely Cooked White One Liter NP-XB18-WA Need a Transformer', '', '', '', 1054.21, 'http://www.alikoba.com/upload/1f9f698393547689/e34368cea9c3cdab.jpg', 1628357524, 0, 1, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (940, 'Tamahashi', '', '\"Flole\" Milky Electric Kettle 1.0L Pink FR-106', '', '', '', 178.18, 'http://www.alikoba.com/upload/c405de74cfd65388/124ad984a447c6e9.jpg', 1628357752, 0, 1, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (941, 'FURMAN', '', 'Electric conditioner PST-6', '', '', '', 884.87, 'http://www.alikoba.com/upload/221f7eb344e26b71/5d92b5a8f49e43eb.jpg', 1628358012, 0, 1, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (942, 'elgato', '', 'Wireless home appliance remote control / Support Apple Homekit', '', '', '', 407.14, 'http://www.alikoba.com/upload/f7caad5847aec9cd/51d1870c3fe982b4.jpg', 1628358111, 0, 1, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (943, 'SteelSeries QcK', '', 'Prism cloth-gaming mouse pad-2 zone RGB lighting-real-time event lighting-XL code', '', '', '', 312.44, 'http://www.alikoba.com/upload/1e290fd7326d71fd/d3ca421e68ac344c.jpg', 1628358924, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (944, 'DDL', '', 'Men\'s business leather 32-speed adjustable ratchet belt large size * within 115 cm corresponding) silver', '', '', '', 241.23, 'http://www.alikoba.com/upload/60f6663021b2ec81/56224aa6cb2d7434.jpg', 1628368975, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (945, 'Conair', '', 'True glow by conair sonic facial brush', '', '', '', 260.82, 'http://www.alikoba.com/upload/3067ab8d8eab0234/54571a10a6cf8aaa.jpg', 1628369065, 0, 1, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (946, 'Nifty', '', 'Home appliance rolling drawer-silver, office or home kitchen counter storage rack, non-slip cushion top, suitable for coffee machine, stand mixer, blender, toaster', '', '', '', 216.41, 'http://www.alikoba.com/upload/f871b4a5d6ac9778/f8b397432db20b9f.jpg', 1628369536, 0, 1, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (947, 'Crutello', '', 'Air fryer lid with storage pocket for 5.5 quart fryer-dust cover for small appliances', '', '', '', 139.94, 'http://www.alikoba.com/upload/fe2e6be2b8acaf72/0336e928196f9270.jpg', 1628369643, 0, 1, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (948, 'Only Fire', '', '25 feet (about 6.4 meters) extension/appliance hose, suitable for propane or natural gas', '', '', '', 348.21, 'http://www.alikoba.com/upload/cd6edb181d546092/dedb47163e6f7608.jpg', 1628369737, 0, 1, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (949, 'Philips Kitchen Appliances', '', 'Kitchen appliance party accessory kit with double shelf and basket divider, Philips Airfryer XXL model, silver', '', '', '', 324.51, 'http://www.alikoba.com/upload/cd6edb181d546092/dedb47163e6f7608.jpg', 1628369892, 0, 1, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (950, 'Dreambaby', '', '微波炉/家电儿童*门锁 - 白色', '', '', '', 306.21, 'http://www.alikoba.com/upload/14ac4caf0feec211/3d02ac6b057ed7ac.jpg', 1628369984, 0, 1, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (951, 'CUTE PRESS บำรุงมือและเล็บ SWEET MUSK HAND AND NAIL CREAM', '', 'CUTE PRESS บำรุงมือและเล็บ SWEET MUSK HAND AND NAIL CREAM', '', '', '', 50.00, '/upload/472064fa501b4c43/ba51f05602de87ea.jpg', 1647003879, 0, 166, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (952, 'ฝากบัว', '', 'ฝากบัว', '', '', '', 100.00, '/upload/5025577c7ba4c790/4593a0fb5229fca4.jpg', 1647003924, 0, 4, NULL);
INSERT INTO `xy_shop_goods_list` VALUES (953, '3D Mask ทรีดี มาส์ก หน้ากากอนามัยสำหรับเด็กผู้ชาย จำนวน 5 ชิ้น', '', '3D Mask ทรีดี มาส์ก หน้ากากอนามัยสำหรับเด็กผู้ชาย จำนวน 5 ชิ้น', '', '', '', 90.00, '/upload/e26db47d54f1baa8/0fe589037b056210.jpg', 1647005886, 0, 4, NULL);

-- ----------------------------
-- Table structure for xy_shop_order
-- ----------------------------
DROP TABLE IF EXISTS `xy_shop_order`;
CREATE TABLE `xy_shop_order`  (
  `uid` int(11) NOT NULL,
  `gid` int(11) NOT NULL COMMENT '商品id',
  `addtime` int(11) NOT NULL COMMENT '添加时间',
  `price` decimal(15, 3) NULL DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '上架状态 0不上架 1上架',
  `num` int(11) NULL DEFAULT NULL,
  `price2` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `id` char(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of xy_shop_order
-- ----------------------------
INSERT INTO `xy_shop_order` VALUES (20, 2, 1583407009, 1.000, 1, 1, '1', 'SP2003052017163927');
INSERT INTO `xy_shop_order` VALUES (19, 1, 1583410636, 1.000, 1, 2, '2', 'SP2003052017163987');
INSERT INTO `xy_shop_order` VALUES (20, 1, 1585453110, 1.000, 1, 1, '1', 'SP2003291138308901');
INSERT INTO `xy_shop_order` VALUES (20, 2, 1585453251, 1.000, 2, 1, '1', 'SP2003291140513132');
INSERT INTO `xy_shop_order` VALUES (20, 2, 1585453282, 1.000, 2, 1, '1', 'SP2003291141221124');
INSERT INTO `xy_shop_order` VALUES (20, 1, 1615296035, 1.000, 2, 1, '1', 'SP2103092120352129');

-- ----------------------------
-- Table structure for xy_signlog
-- ----------------------------
DROP TABLE IF EXISTS `xy_signlog`;
CREATE TABLE `xy_signlog`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `signtime` int(11) NOT NULL,
  `money` float NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1104 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of xy_signlog
-- ----------------------------
INSERT INTO `xy_signlog` VALUES (1, 2773, 1637574316, 0.35);
INSERT INTO `xy_signlog` VALUES (2, 95, 1638121987, 0.35);
INSERT INTO `xy_signlog` VALUES (3, 2779, 1639450277, 0.35);
INSERT INTO `xy_signlog` VALUES (4, 95, 1640076550, 0.35);
INSERT INTO `xy_signlog` VALUES (5, 95, 1640163177, 0.35);
INSERT INTO `xy_signlog` VALUES (6, 95, 1640231444, 0.35);
INSERT INTO `xy_signlog` VALUES (7, 2801, 1641203586, 0.35);
INSERT INTO `xy_signlog` VALUES (8, 2804, 1645700252, 0.35);
INSERT INTO `xy_signlog` VALUES (9, 2805, 1646062779, 0.35);
INSERT INTO `xy_signlog` VALUES (10, 2805, 1646104521, 0.35);
INSERT INTO `xy_signlog` VALUES (11, 2813, 1646124711, 0.35);
INSERT INTO `xy_signlog` VALUES (12, 2815, 1646190265, 0.35);
INSERT INTO `xy_signlog` VALUES (13, 2816, 1646360052, 0.35);
INSERT INTO `xy_signlog` VALUES (14, 2819, 1646393076, 0.35);
INSERT INTO `xy_signlog` VALUES (15, 2820, 1646724240, 0.35);
INSERT INTO `xy_signlog` VALUES (16, 2805, 1646895944, 0.35);
INSERT INTO `xy_signlog` VALUES (17, 2826, 1647503570, 0.35);
INSERT INTO `xy_signlog` VALUES (18, 2830, 1647833916, 0.35);
INSERT INTO `xy_signlog` VALUES (19, 2835, 1647932747, 0.35);
INSERT INTO `xy_signlog` VALUES (20, 2856, 1648039144, 0.35);
INSERT INTO `xy_signlog` VALUES (21, 2863, 1648093011, 0.35);
INSERT INTO `xy_signlog` VALUES (22, 2864, 1648097719, 0.35);
INSERT INTO `xy_signlog` VALUES (23, 2889, 1648101233, 0.35);
INSERT INTO `xy_signlog` VALUES (24, 2889, 1648164999, 0.35);
INSERT INTO `xy_signlog` VALUES (25, 2894, 1648180200, 0.35);
INSERT INTO `xy_signlog` VALUES (26, 2864, 1648182977, 0.35);
INSERT INTO `xy_signlog` VALUES (27, 2903, 1648196044, 0.35);
INSERT INTO `xy_signlog` VALUES (28, 2913, 1648215939, 0.35);
INSERT INTO `xy_signlog` VALUES (29, 2920, 1648269332, 0.35);
INSERT INTO `xy_signlog` VALUES (30, 2913, 1648293324, 0.35);
INSERT INTO `xy_signlog` VALUES (31, 2866, 1648298392, 0.35);
INSERT INTO `xy_signlog` VALUES (32, 2926, 1648303142, 0.35);
INSERT INTO `xy_signlog` VALUES (33, 2889, 1648330633, 0.35);
INSERT INTO `xy_signlog` VALUES (34, 2926, 1648356158, 0.35);
INSERT INTO `xy_signlog` VALUES (35, 2866, 1648364724, 0.35);
INSERT INTO `xy_signlog` VALUES (36, 2864, 1648377204, 0.35);
INSERT INTO `xy_signlog` VALUES (37, 2935, 1648385187, 0.35);
INSERT INTO `xy_signlog` VALUES (38, 2926, 1648423275, 0.35);
INSERT INTO `xy_signlog` VALUES (39, 2942, 1648483661, 0.35);
INSERT INTO `xy_signlog` VALUES (40, 2948, 1648534354, 0.35);
INSERT INTO `xy_signlog` VALUES (41, 2945, 1648542254, 0.35);
INSERT INTO `xy_signlog` VALUES (42, 2942, 1648573194, 0.35);
INSERT INTO `xy_signlog` VALUES (43, 2854, 1648582062, 0.35);
INSERT INTO `xy_signlog` VALUES (44, 2945, 1648618108, 0.35);
INSERT INTO `xy_signlog` VALUES (45, 2913, 1648643228, 0.35);
INSERT INTO `xy_signlog` VALUES (46, 2945, 1648706519, 0.35);
INSERT INTO `xy_signlog` VALUES (47, 2942, 1648830183, 0.35);
INSERT INTO `xy_signlog` VALUES (48, 2913, 1648863117, 0.35);
INSERT INTO `xy_signlog` VALUES (49, 2957, 1648961540, 0.35);
INSERT INTO `xy_signlog` VALUES (50, 2993, 1648968635, 0.35);
INSERT INTO `xy_signlog` VALUES (51, 2864, 1648980099, 0.35);
INSERT INTO `xy_signlog` VALUES (52, 2999, 1648989903, 0.35);
INSERT INTO `xy_signlog` VALUES (53, 2864, 1649041944, 0.35);
INSERT INTO `xy_signlog` VALUES (54, 3009, 1649067495, 0.35);
INSERT INTO `xy_signlog` VALUES (55, 3012, 1649131356, 0.35);
INSERT INTO `xy_signlog` VALUES (56, 2894, 1649134455, 0.35);
INSERT INTO `xy_signlog` VALUES (57, 2926, 1649232328, 0.35);
INSERT INTO `xy_signlog` VALUES (58, 2864, 1649246984, 0.35);
INSERT INTO `xy_signlog` VALUES (59, 3023, 1649296857, 0.35);
INSERT INTO `xy_signlog` VALUES (60, 2863, 1649336557, 0.35);
INSERT INTO `xy_signlog` VALUES (61, 2926, 1649342327, 0.35);
INSERT INTO `xy_signlog` VALUES (62, 3038, 1649394306, 0.35);
INSERT INTO `xy_signlog` VALUES (63, 2957, 1649411894, 0.35);
INSERT INTO `xy_signlog` VALUES (64, 3063, 1649670646, 0.35);
INSERT INTO `xy_signlog` VALUES (65, 3086, 1649753857, 0.35);
INSERT INTO `xy_signlog` VALUES (66, 2926, 1649881674, 0.35);
INSERT INTO `xy_signlog` VALUES (67, 3103, 1650094478, 0.35);
INSERT INTO `xy_signlog` VALUES (68, 3104, 1650094757, 0.35);
INSERT INTO `xy_signlog` VALUES (69, 2863, 1650187191, 0.35);
INSERT INTO `xy_signlog` VALUES (70, 2839, 1650192000, 0.35);
INSERT INTO `xy_signlog` VALUES (71, 3128, 1650252409, 0.35);
INSERT INTO `xy_signlog` VALUES (72, 2866, 1650273318, 0.35);
INSERT INTO `xy_signlog` VALUES (73, 2926, 1650410586, 0.35);
INSERT INTO `xy_signlog` VALUES (74, 3153, 1650431544, 0.35);
INSERT INTO `xy_signlog` VALUES (75, 3163, 1650451681, 0.35);
INSERT INTO `xy_signlog` VALUES (76, 3166, 1650455776, 0.35);
INSERT INTO `xy_signlog` VALUES (77, 3131, 1650605763, 0.35);
INSERT INTO `xy_signlog` VALUES (78, 2870, 1650704774, 0.35);
INSERT INTO `xy_signlog` VALUES (79, 3219, 1650706423, 0.35);
INSERT INTO `xy_signlog` VALUES (80, 3233, 1650720012, 0.35);
INSERT INTO `xy_signlog` VALUES (81, 3235, 1650720522, 0.35);
INSERT INTO `xy_signlog` VALUES (82, 3235, 1650765544, 0.35);
INSERT INTO `xy_signlog` VALUES (83, 3191, 1650875553, 0.35);
INSERT INTO `xy_signlog` VALUES (84, 3274, 1650877249, 0.35);
INSERT INTO `xy_signlog` VALUES (85, 3235, 1650970378, 0.35);
INSERT INTO `xy_signlog` VALUES (86, 3297, 1650985932, 0.35);
INSERT INTO `xy_signlog` VALUES (87, 3288, 1651012937, 0.35);
INSERT INTO `xy_signlog` VALUES (88, 3284, 1651021061, 0.35);
INSERT INTO `xy_signlog` VALUES (89, 3298, 1651027122, 0.35);
INSERT INTO `xy_signlog` VALUES (90, 3235, 1651035280, 0.35);
INSERT INTO `xy_signlog` VALUES (91, 2863, 1651055528, 0.35);
INSERT INTO `xy_signlog` VALUES (92, 3321, 1651063565, 0.35);
INSERT INTO `xy_signlog` VALUES (93, 3326, 1651064198, 0.35);
INSERT INTO `xy_signlog` VALUES (94, 3330, 1651071038, 0.35);
INSERT INTO `xy_signlog` VALUES (95, 3235, 1651150798, 0.35);
INSERT INTO `xy_signlog` VALUES (96, 3235, 1651210224, 0.35);
INSERT INTO `xy_signlog` VALUES (97, 3297, 1651219382, 0.35);
INSERT INTO `xy_signlog` VALUES (98, 2926, 1651274705, 0.35);
INSERT INTO `xy_signlog` VALUES (99, 3383, 1651297318, 0.35);
INSERT INTO `xy_signlog` VALUES (100, 3388, 1651300152, 0.35);
INSERT INTO `xy_signlog` VALUES (101, 3235, 1651308616, 0.35);
INSERT INTO `xy_signlog` VALUES (102, 3416, 1651322056, 0.35);
INSERT INTO `xy_signlog` VALUES (103, 3424, 1651327020, 0.35);
INSERT INTO `xy_signlog` VALUES (104, 3432, 1651383908, 0.35);
INSERT INTO `xy_signlog` VALUES (105, 3235, 1651388078, 0.35);
INSERT INTO `xy_signlog` VALUES (106, 3465, 1651412947, 0.35);
INSERT INTO `xy_signlog` VALUES (107, 3235, 1651479458, 0.35);
INSERT INTO `xy_signlog` VALUES (108, 3489, 1651479970, 0.35);
INSERT INTO `xy_signlog` VALUES (109, 3499, 1651489113, 0.35);
INSERT INTO `xy_signlog` VALUES (110, 2926, 1651536872, 0.35);
INSERT INTO `xy_signlog` VALUES (111, 3514, 1651546032, 0.35);
INSERT INTO `xy_signlog` VALUES (112, 3153, 1651551403, 0.35);
INSERT INTO `xy_signlog` VALUES (113, 3522, 1651552575, 0.35);
INSERT INTO `xy_signlog` VALUES (114, 3529, 1651556514, 0.35);
INSERT INTO `xy_signlog` VALUES (115, 3531, 1651557955, 0.35);
INSERT INTO `xy_signlog` VALUES (116, 3517, 1651561343, 0.35);
INSERT INTO `xy_signlog` VALUES (117, 3534, 1651562959, 0.35);
INSERT INTO `xy_signlog` VALUES (118, 3235, 1651564917, 0.35);
INSERT INTO `xy_signlog` VALUES (119, 3548, 1651637207, 0.35);
INSERT INTO `xy_signlog` VALUES (120, 3592, 1651644368, 0.35);
INSERT INTO `xy_signlog` VALUES (121, 3235, 1651661709, 0.35);
INSERT INTO `xy_signlog` VALUES (122, 3548, 1651689698, 0.35);
INSERT INTO `xy_signlog` VALUES (123, 3649, 1651731653, 0.35);
INSERT INTO `xy_signlog` VALUES (124, 3153, 1651738341, 0.35);
INSERT INTO `xy_signlog` VALUES (125, 3664, 1651741421, 0.35);
INSERT INTO `xy_signlog` VALUES (126, 3235, 1651746452, 0.35);
INSERT INTO `xy_signlog` VALUES (127, 3667, 1651750976, 0.35);
INSERT INTO `xy_signlog` VALUES (128, 3660, 1651755899, 0.35);
INSERT INTO `xy_signlog` VALUES (129, 3685, 1651756100, 0.35);
INSERT INTO `xy_signlog` VALUES (130, 3690, 1651759251, 0.35);
INSERT INTO `xy_signlog` VALUES (131, 3703, 1651806632, 0.35);
INSERT INTO `xy_signlog` VALUES (132, 3709, 1651811428, 0.35);
INSERT INTO `xy_signlog` VALUES (133, 3725, 1651825134, 0.35);
INSERT INTO `xy_signlog` VALUES (134, 3685, 1651829264, 0.35);
INSERT INTO `xy_signlog` VALUES (135, 3235, 1651834091, 0.35);
INSERT INTO `xy_signlog` VALUES (136, 3774, 1651848293, 0.35);
INSERT INTO `xy_signlog` VALUES (137, 3548, 1651848318, 0.35);
INSERT INTO `xy_signlog` VALUES (138, 3764, 1651888821, 0.35);
INSERT INTO `xy_signlog` VALUES (139, 3779, 1651893806, 0.35);
INSERT INTO `xy_signlog` VALUES (140, 3153, 1651896129, 0.35);
INSERT INTO `xy_signlog` VALUES (141, 3789, 1651902218, 0.35);
INSERT INTO `xy_signlog` VALUES (142, 3791, 1651902261, 0.35);
INSERT INTO `xy_signlog` VALUES (143, 3792, 1651903153, 0.35);
INSERT INTO `xy_signlog` VALUES (144, 3517, 1651912724, 0.35);
INSERT INTO `xy_signlog` VALUES (145, 3235, 1651919366, 0.35);
INSERT INTO `xy_signlog` VALUES (146, 3839, 1651933041, 0.35);
INSERT INTO `xy_signlog` VALUES (147, 3844, 1651976511, 0.35);
INSERT INTO `xy_signlog` VALUES (148, 3153, 1651985416, 0.35);
INSERT INTO `xy_signlog` VALUES (149, 3867, 1651989077, 0.35);
INSERT INTO `xy_signlog` VALUES (150, 3869, 1651990950, 0.35);
INSERT INTO `xy_signlog` VALUES (151, 3235, 1651999183, 0.35);
INSERT INTO `xy_signlog` VALUES (152, 3894, 1652006927, 0.35);
INSERT INTO `xy_signlog` VALUES (153, 3899, 1652013914, 0.35);
INSERT INTO `xy_signlog` VALUES (154, 3904, 1652018164, 0.35);
INSERT INTO `xy_signlog` VALUES (155, 3153, 1652057989, 0.35);
INSERT INTO `xy_signlog` VALUES (156, 3915, 1652066442, 0.35);
INSERT INTO `xy_signlog` VALUES (157, 3937, 1652085961, 0.35);
INSERT INTO `xy_signlog` VALUES (158, 3934, 1652087449, 0.35);
INSERT INTO `xy_signlog` VALUES (159, 3235, 1652088411, 0.35);
INSERT INTO `xy_signlog` VALUES (160, 3942, 1652091589, 0.35);
INSERT INTO `xy_signlog` VALUES (161, 3946, 1652094095, 0.35);
INSERT INTO `xy_signlog` VALUES (162, 3956, 1652101911, 0.35);
INSERT INTO `xy_signlog` VALUES (163, 3958, 1652102759, 0.35);
INSERT INTO `xy_signlog` VALUES (164, 3288, 1652106402, 0.35);
INSERT INTO `xy_signlog` VALUES (165, 3959, 1652107441, 0.35);
INSERT INTO `xy_signlog` VALUES (166, 3915, 1652115702, 0.35);
INSERT INTO `xy_signlog` VALUES (167, 3934, 1652120576, 0.35);
INSERT INTO `xy_signlog` VALUES (168, 3959, 1652146583, 0.35);
INSERT INTO `xy_signlog` VALUES (169, 3977, 1652154007, 0.35);
INSERT INTO `xy_signlog` VALUES (170, 3467, 1652157895, 0.35);
INSERT INTO `xy_signlog` VALUES (171, 3976, 1652158777, 0.35);
INSERT INTO `xy_signlog` VALUES (172, 3988, 1652160491, 0.35);
INSERT INTO `xy_signlog` VALUES (173, 3991, 1652164480, 0.35);
INSERT INTO `xy_signlog` VALUES (174, 3153, 1652166149, 0.35);
INSERT INTO `xy_signlog` VALUES (175, 4014, 1652176379, 0.35);
INSERT INTO `xy_signlog` VALUES (176, 3235, 1652181543, 0.35);
INSERT INTO `xy_signlog` VALUES (177, 4027, 1652183880, 0.35);
INSERT INTO `xy_signlog` VALUES (178, 3153, 1652228985, 0.35);
INSERT INTO `xy_signlog` VALUES (179, 4044, 1652240888, 0.35);
INSERT INTO `xy_signlog` VALUES (180, 3988, 1652253168, 0.35);
INSERT INTO `xy_signlog` VALUES (181, 4061, 1652254502, 0.35);
INSERT INTO `xy_signlog` VALUES (182, 3235, 1652271710, 0.35);
INSERT INTO `xy_signlog` VALUES (183, 4086, 1652272857, 0.35);
INSERT INTO `xy_signlog` VALUES (184, 4096, 1652274924, 0.35);
INSERT INTO `xy_signlog` VALUES (185, 3915, 1652289016, 0.35);
INSERT INTO `xy_signlog` VALUES (186, 4086, 1652312959, 0.35);
INSERT INTO `xy_signlog` VALUES (187, 3988, 1652322138, 0.35);
INSERT INTO `xy_signlog` VALUES (188, 3153, 1652329805, 0.35);
INSERT INTO `xy_signlog` VALUES (189, 4125, 1652334787, 0.35);
INSERT INTO `xy_signlog` VALUES (190, 4153, 1652359879, 0.35);
INSERT INTO `xy_signlog` VALUES (191, 4159, 1652361360, 0.35);
INSERT INTO `xy_signlog` VALUES (192, 3235, 1652361807, 0.35);
INSERT INTO `xy_signlog` VALUES (193, 3153, 1652404266, 0.35);
INSERT INTO `xy_signlog` VALUES (194, 4175, 1652409219, 0.35);
INSERT INTO `xy_signlog` VALUES (195, 4176, 1652424687, 0.35);
INSERT INTO `xy_signlog` VALUES (196, 4059, 1652429869, 0.35);
INSERT INTO `xy_signlog` VALUES (197, 4202, 1652433300, 0.35);
INSERT INTO `xy_signlog` VALUES (198, 3235, 1652449821, 0.35);
INSERT INTO `xy_signlog` VALUES (199, 4238, 1652494437, 0.35);
INSERT INTO `xy_signlog` VALUES (200, 3235, 1652529037, 0.35);
INSERT INTO `xy_signlog` VALUES (201, 4306, 1652531878, 0.35);
INSERT INTO `xy_signlog` VALUES (202, 4287, 1652532553, 0.35);
INSERT INTO `xy_signlog` VALUES (203, 4315, 1652536842, 0.35);
INSERT INTO `xy_signlog` VALUES (204, 3153, 1652543377, 0.35);
INSERT INTO `xy_signlog` VALUES (205, 4287, 1652571274, 0.35);
INSERT INTO `xy_signlog` VALUES (206, 4319, 1652583207, 0.35);
INSERT INTO `xy_signlog` VALUES (207, 4353, 1652608586, 0.35);
INSERT INTO `xy_signlog` VALUES (208, 4357, 1652609499, 0.35);
INSERT INTO `xy_signlog` VALUES (209, 3235, 1652617110, 0.35);
INSERT INTO `xy_signlog` VALUES (210, 4375, 1652622555, 0.35);
INSERT INTO `xy_signlog` VALUES (211, 3153, 1652627858, 0.35);
INSERT INTO `xy_signlog` VALUES (212, 3153, 1652657260, 0.35);
INSERT INTO `xy_signlog` VALUES (213, 4287, 1652678473, 0.35);
INSERT INTO `xy_signlog` VALUES (214, 3235, 1652681791, 0.35);
INSERT INTO `xy_signlog` VALUES (215, 4383, 1652684230, 0.35);
INSERT INTO `xy_signlog` VALUES (216, 4400, 1652684570, 0.35);
INSERT INTO `xy_signlog` VALUES (217, 4408, 1652687410, 0.35);
INSERT INTO `xy_signlog` VALUES (218, 4410, 1652692987, 0.35);
INSERT INTO `xy_signlog` VALUES (219, 4416, 1652697015, 0.35);
INSERT INTO `xy_signlog` VALUES (220, 4427, 1652708322, 0.35);
INSERT INTO `xy_signlog` VALUES (221, 4416, 1652745389, 0.35);
INSERT INTO `xy_signlog` VALUES (222, 3153, 1652774754, 0.35);
INSERT INTO `xy_signlog` VALUES (223, 3235, 1652792249, 0.35);
INSERT INTO `xy_signlog` VALUES (224, 3153, 1652840363, 0.35);
INSERT INTO `xy_signlog` VALUES (225, 4534, 1652863809, 0.35);
INSERT INTO `xy_signlog` VALUES (226, 4539, 1652868930, 0.35);
INSERT INTO `xy_signlog` VALUES (227, 3235, 1652876120, 0.35);
INSERT INTO `xy_signlog` VALUES (228, 4663, 1653033522, 0.35);
INSERT INTO `xy_signlog` VALUES (229, 4695, 1653045411, 0.35);
INSERT INTO `xy_signlog` VALUES (230, 4687, 1653054483, 0.35);
INSERT INTO `xy_signlog` VALUES (231, 4710, 1653102291, 0.35);
INSERT INTO `xy_signlog` VALUES (232, 4762, 1653144502, 0.35);
INSERT INTO `xy_signlog` VALUES (233, 4762, 1653186847, 0.35);
INSERT INTO `xy_signlog` VALUES (234, 4785, 1653198663, 0.35);
INSERT INTO `xy_signlog` VALUES (235, 4809, 1653205665, 0.35);
INSERT INTO `xy_signlog` VALUES (236, 4762, 1653272135, 0.35);
INSERT INTO `xy_signlog` VALUES (237, 4877, 1653299912, 0.35);
INSERT INTO `xy_signlog` VALUES (238, 4919, 1653393444, 0.35);
INSERT INTO `xy_signlog` VALUES (239, 4923, 1653399211, 0.35);
INSERT INTO `xy_signlog` VALUES (240, 4889, 1653401904, 0.35);
INSERT INTO `xy_signlog` VALUES (241, 4927, 1653402540, 0.35);
INSERT INTO `xy_signlog` VALUES (242, 4933, 1653407132, 0.35);
INSERT INTO `xy_signlog` VALUES (243, 4929, 1653413309, 0.35);
INSERT INTO `xy_signlog` VALUES (244, 4889, 1653435017, 0.35);
INSERT INTO `xy_signlog` VALUES (245, 4923, 1653445962, 0.35);
INSERT INTO `xy_signlog` VALUES (246, 4920, 1653455942, 0.35);
INSERT INTO `xy_signlog` VALUES (247, 4945, 1653459236, 0.35);
INSERT INTO `xy_signlog` VALUES (248, 4996, 1653546807, 0.35);
INSERT INTO `xy_signlog` VALUES (249, 5041, 1653580685, 0.35);
INSERT INTO `xy_signlog` VALUES (250, 5042, 1653580777, 0.35);
INSERT INTO `xy_signlog` VALUES (251, 5069, 1653646615, 0.35);
INSERT INTO `xy_signlog` VALUES (252, 5070, 1653646733, 0.35);
INSERT INTO `xy_signlog` VALUES (253, 5074, 1653651113, 0.35);
INSERT INTO `xy_signlog` VALUES (254, 5062, 1653666405, 0.35);
INSERT INTO `xy_signlog` VALUES (255, 5069, 1653671725, 0.35);
INSERT INTO `xy_signlog` VALUES (256, 5050, 1653683038, 0.35);
INSERT INTO `xy_signlog` VALUES (257, 5154, 1653750215, 0.35);
INSERT INTO `xy_signlog` VALUES (258, 5050, 1653766678, 0.35);
INSERT INTO `xy_signlog` VALUES (259, 5181, 1653809392, 0.35);
INSERT INTO `xy_signlog` VALUES (260, 5196, 1653816685, 0.35);
INSERT INTO `xy_signlog` VALUES (261, 5195, 1653816821, 0.35);
INSERT INTO `xy_signlog` VALUES (262, 5231, 1653834477, 0.35);
INSERT INTO `xy_signlog` VALUES (263, 5231, 1653872892, 0.35);
INSERT INTO `xy_signlog` VALUES (264, 5196, 1653884078, 0.35);
INSERT INTO `xy_signlog` VALUES (265, 5050, 1653893325, 0.35);
INSERT INTO `xy_signlog` VALUES (266, 5262, 1653893413, 0.35);
INSERT INTO `xy_signlog` VALUES (267, 5277, 1653902736, 0.35);
INSERT INTO `xy_signlog` VALUES (268, 5290, 1653914175, 0.35);
INSERT INTO `xy_signlog` VALUES (269, 5307, 1653917333, 0.35);
INSERT INTO `xy_signlog` VALUES (270, 5050, 1653942318, 0.35);
INSERT INTO `xy_signlog` VALUES (271, 5336, 1653969533, 0.35);
INSERT INTO `xy_signlog` VALUES (272, 5339, 1653970303, 0.35);
INSERT INTO `xy_signlog` VALUES (273, 5243, 1653977607, 0.35);
INSERT INTO `xy_signlog` VALUES (274, 5355, 1653978862, 0.35);
INSERT INTO `xy_signlog` VALUES (275, 5359, 1653982006, 0.35);
INSERT INTO `xy_signlog` VALUES (276, 5360, 1653985118, 0.35);
INSERT INTO `xy_signlog` VALUES (277, 5390, 1653998785, 0.35);
INSERT INTO `xy_signlog` VALUES (278, 5406, 1654002557, 0.35);
INSERT INTO `xy_signlog` VALUES (279, 5417, 1654007192, 0.35);
INSERT INTO `xy_signlog` VALUES (280, 5335, 1654010785, 0.35);
INSERT INTO `xy_signlog` VALUES (281, 5440, 1654016000, 0.35);
INSERT INTO `xy_signlog` VALUES (282, 5378, 1654031678, 0.35);
INSERT INTO `xy_signlog` VALUES (283, 5405, 1654042754, 0.35);
INSERT INTO `xy_signlog` VALUES (284, 5050, 1654049865, 0.35);
INSERT INTO `xy_signlog` VALUES (285, 5382, 1654064381, 0.35);
INSERT INTO `xy_signlog` VALUES (286, 5481, 1654085189, 0.35);
INSERT INTO `xy_signlog` VALUES (287, 5496, 1654089902, 0.35);
INSERT INTO `xy_signlog` VALUES (288, 5509, 1654094164, 0.35);
INSERT INTO `xy_signlog` VALUES (289, 5514, 1654094948, 0.35);
INSERT INTO `xy_signlog` VALUES (290, 5398, 1654109851, 0.35);
INSERT INTO `xy_signlog` VALUES (291, 5440, 1654139037, 0.35);
INSERT INTO `xy_signlog` VALUES (292, 5510, 1654142057, 0.35);
INSERT INTO `xy_signlog` VALUES (293, 5509, 1654142334, 0.35);
INSERT INTO `xy_signlog` VALUES (294, 5538, 1654160645, 0.35);
INSERT INTO `xy_signlog` VALUES (295, 5568, 1654164654, 0.35);
INSERT INTO `xy_signlog` VALUES (296, 5575, 1654167329, 0.35);
INSERT INTO `xy_signlog` VALUES (297, 5572, 1654167756, 0.35);
INSERT INTO `xy_signlog` VALUES (298, 5581, 1654171050, 0.35);
INSERT INTO `xy_signlog` VALUES (299, 5583, 1654172781, 0.35);
INSERT INTO `xy_signlog` VALUES (300, 5596, 1654179497, 0.35);
INSERT INTO `xy_signlog` VALUES (301, 5605, 1654183865, 0.35);
INSERT INTO `xy_signlog` VALUES (302, 5538, 1654189831, 0.35);
INSERT INTO `xy_signlog` VALUES (303, 5050, 1654199743, 0.35);
INSERT INTO `xy_signlog` VALUES (304, 5509, 1654214176, 0.35);
INSERT INTO `xy_signlog` VALUES (305, 5257, 1654245476, 0.35);
INSERT INTO `xy_signlog` VALUES (306, 5656, 1654246324, 0.35);
INSERT INTO `xy_signlog` VALUES (307, 5663, 1654248237, 0.35);
INSERT INTO `xy_signlog` VALUES (308, 5672, 1654253322, 0.35);
INSERT INTO `xy_signlog` VALUES (309, 5677, 1654255526, 0.35);
INSERT INTO `xy_signlog` VALUES (310, 5682, 1654257269, 0.35);
INSERT INTO `xy_signlog` VALUES (311, 5687, 1654261472, 0.35);
INSERT INTO `xy_signlog` VALUES (312, 5698, 1654269690, 0.35);
INSERT INTO `xy_signlog` VALUES (313, 5626, 1654270794, 0.35);
INSERT INTO `xy_signlog` VALUES (314, 5698, 1654309542, 0.35);
INSERT INTO `xy_signlog` VALUES (315, 5538, 1654326160, 0.35);
INSERT INTO `xy_signlog` VALUES (316, 5738, 1654327487, 0.35);
INSERT INTO `xy_signlog` VALUES (317, 5745, 1654328807, 0.35);
INSERT INTO `xy_signlog` VALUES (318, 5154, 1654335103, 0.35);
INSERT INTO `xy_signlog` VALUES (319, 5774, 1654338776, 0.35);
INSERT INTO `xy_signlog` VALUES (320, 5509, 1654339695, 0.35);
INSERT INTO `xy_signlog` VALUES (321, 5795, 1654344872, 0.35);
INSERT INTO `xy_signlog` VALUES (322, 5798, 1654346929, 0.35);
INSERT INTO `xy_signlog` VALUES (323, 5786, 1654347147, 0.35);
INSERT INTO `xy_signlog` VALUES (324, 5799, 1654348080, 0.35);
INSERT INTO `xy_signlog` VALUES (325, 5810, 1654353055, 0.35);
INSERT INTO `xy_signlog` VALUES (326, 5820, 1654357113, 0.35);
INSERT INTO `xy_signlog` VALUES (327, 5154, 1654394649, 0.35);
INSERT INTO `xy_signlog` VALUES (328, 5698, 1654400369, 0.35);
INSERT INTO `xy_signlog` VALUES (329, 5810, 1654405333, 0.35);
INSERT INTO `xy_signlog` VALUES (330, 5858, 1654412573, 0.35);
INSERT INTO `xy_signlog` VALUES (331, 5866, 1654414798, 0.35);
INSERT INTO `xy_signlog` VALUES (332, 5823, 1654415130, 0.35);
INSERT INTO `xy_signlog` VALUES (333, 5863, 1654416420, 0.35);
INSERT INTO `xy_signlog` VALUES (334, 5878, 1654421096, 0.35);
INSERT INTO `xy_signlog` VALUES (335, 5885, 1654430974, 0.35);
INSERT INTO `xy_signlog` VALUES (336, 5906, 1654435838, 0.35);
INSERT INTO `xy_signlog` VALUES (337, 5538, 1654437182, 0.35);
INSERT INTO `xy_signlog` VALUES (338, 5509, 1654473725, 0.35);
INSERT INTO `xy_signlog` VALUES (339, 5538, 1654474798, 0.35);
INSERT INTO `xy_signlog` VALUES (340, 5966, 1654517749, 0.35);
INSERT INTO `xy_signlog` VALUES (341, 5718, 1654518097, 0.35);
INSERT INTO `xy_signlog` VALUES (342, 5698, 1654518193, 0.35);
INSERT INTO `xy_signlog` VALUES (343, 5968, 1654519892, 0.35);
INSERT INTO `xy_signlog` VALUES (344, 5968, 1654559864, 0.35);
INSERT INTO `xy_signlog` VALUES (345, 5718, 1654576537, 0.35);
INSERT INTO `xy_signlog` VALUES (346, 5509, 1654577325, 0.35);
INSERT INTO `xy_signlog` VALUES (347, 6005, 1654579619, 0.35);
INSERT INTO `xy_signlog` VALUES (348, 6029, 1654587921, 0.35);
INSERT INTO `xy_signlog` VALUES (349, 5966, 1654592376, 0.35);
INSERT INTO `xy_signlog` VALUES (350, 6045, 1654593676, 0.35);
INSERT INTO `xy_signlog` VALUES (351, 5538, 1654601490, 0.35);
INSERT INTO `xy_signlog` VALUES (352, 5698, 1654602785, 0.35);
INSERT INTO `xy_signlog` VALUES (353, 6098, 1654608147, 0.35);
INSERT INTO `xy_signlog` VALUES (354, 6109, 1654611653, 0.35);
INSERT INTO `xy_signlog` VALUES (355, 6103, 1654611911, 0.35);
INSERT INTO `xy_signlog` VALUES (356, 6110, 1654613010, 0.35);
INSERT INTO `xy_signlog` VALUES (357, 6114, 1654615309, 0.35);
INSERT INTO `xy_signlog` VALUES (358, 6099, 1654621453, 0.35);
INSERT INTO `xy_signlog` VALUES (359, 6018, 1654630524, 0.35);
INSERT INTO `xy_signlog` VALUES (360, 5968, 1654648297, 0.35);
INSERT INTO `xy_signlog` VALUES (361, 5538, 1654658053, 0.35);
INSERT INTO `xy_signlog` VALUES (362, 6128, 1654662791, 0.35);
INSERT INTO `xy_signlog` VALUES (363, 5509, 1654663542, 0.35);
INSERT INTO `xy_signlog` VALUES (364, 6138, 1654665808, 0.35);
INSERT INTO `xy_signlog` VALUES (365, 6158, 1654676923, 0.35);
INSERT INTO `xy_signlog` VALUES (366, 6161, 1654679265, 0.35);
INSERT INTO `xy_signlog` VALUES (367, 6162, 1654680547, 0.35);
INSERT INTO `xy_signlog` VALUES (368, 5774, 1654681243, 0.35);
INSERT INTO `xy_signlog` VALUES (369, 6171, 1654682078, 0.35);
INSERT INTO `xy_signlog` VALUES (370, 6181, 1654684414, 0.35);
INSERT INTO `xy_signlog` VALUES (371, 5698, 1654689960, 0.35);
INSERT INTO `xy_signlog` VALUES (372, 6219, 1654698343, 0.35);
INSERT INTO `xy_signlog` VALUES (373, 6204, 1654698703, 0.35);
INSERT INTO `xy_signlog` VALUES (374, 6225, 1654701320, 0.35);
INSERT INTO `xy_signlog` VALUES (375, 5398, 1654717629, 0.35);
INSERT INTO `xy_signlog` VALUES (376, 6204, 1654717873, 0.35);
INSERT INTO `xy_signlog` VALUES (377, 6128, 1654731399, 0.35);
INSERT INTO `xy_signlog` VALUES (378, 6219, 1654738037, 0.35);
INSERT INTO `xy_signlog` VALUES (379, 5538, 1654742890, 0.35);
INSERT INTO `xy_signlog` VALUES (380, 5509, 1654750146, 0.35);
INSERT INTO `xy_signlog` VALUES (381, 6266, 1654762400, 0.35);
INSERT INTO `xy_signlog` VALUES (382, 5698, 1654762829, 0.35);
INSERT INTO `xy_signlog` VALUES (383, 6281, 1654769006, 0.35);
INSERT INTO `xy_signlog` VALUES (384, 6292, 1654773481, 0.35);
INSERT INTO `xy_signlog` VALUES (385, 6286, 1654774376, 0.35);
INSERT INTO `xy_signlog` VALUES (386, 6279, 1654783655, 0.35);
INSERT INTO `xy_signlog` VALUES (387, 6321, 1654790229, 0.35);
INSERT INTO `xy_signlog` VALUES (388, 6320, 1654790276, 0.35);
INSERT INTO `xy_signlog` VALUES (389, 5509, 1654823395, 0.35);
INSERT INTO `xy_signlog` VALUES (390, 5538, 1654828488, 0.35);
INSERT INTO `xy_signlog` VALUES (391, 6324, 1654834834, 0.35);
INSERT INTO `xy_signlog` VALUES (392, 6330, 1654838465, 0.35);
INSERT INTO `xy_signlog` VALUES (393, 6339, 1654840123, 0.35);
INSERT INTO `xy_signlog` VALUES (394, 6364, 1654857105, 0.35);
INSERT INTO `xy_signlog` VALUES (395, 5698, 1654862305, 0.35);
INSERT INTO `xy_signlog` VALUES (396, 6373, 1654862870, 0.35);
INSERT INTO `xy_signlog` VALUES (397, 6128, 1654868023, 0.35);
INSERT INTO `xy_signlog` VALUES (398, 6390, 1654872431, 0.35);
INSERT INTO `xy_signlog` VALUES (399, 6289, 1654873524, 0.35);
INSERT INTO `xy_signlog` VALUES (400, 5538, 1654915746, 0.35);
INSERT INTO `xy_signlog` VALUES (401, 6128, 1654921424, 0.35);
INSERT INTO `xy_signlog` VALUES (402, 5509, 1654923269, 0.35);
INSERT INTO `xy_signlog` VALUES (403, 5698, 1654925691, 0.35);
INSERT INTO `xy_signlog` VALUES (404, 6424, 1654927958, 0.35);
INSERT INTO `xy_signlog` VALUES (405, 6437, 1654932360, 0.35);
INSERT INTO `xy_signlog` VALUES (406, 6473, 1654953483, 0.35);
INSERT INTO `xy_signlog` VALUES (407, 6469, 1654954829, 0.35);
INSERT INTO `xy_signlog` VALUES (408, 6470, 1654957742, 0.35);
INSERT INTO `xy_signlog` VALUES (409, 6128, 1655001884, 0.35);
INSERT INTO `xy_signlog` VALUES (410, 6467, 1655010120, 0.35);
INSERT INTO `xy_signlog` VALUES (411, 6474, 1655016975, 0.35);
INSERT INTO `xy_signlog` VALUES (412, 6508, 1655019344, 0.35);
INSERT INTO `xy_signlog` VALUES (413, 6507, 1655020900, 0.35);
INSERT INTO `xy_signlog` VALUES (414, 5509, 1655021490, 0.35);
INSERT INTO `xy_signlog` VALUES (415, 6494, 1655026914, 0.35);
INSERT INTO `xy_signlog` VALUES (416, 5538, 1655029812, 0.35);
INSERT INTO `xy_signlog` VALUES (417, 6481, 1655035546, 0.35);
INSERT INTO `xy_signlog` VALUES (418, 5698, 1655037540, 0.35);
INSERT INTO `xy_signlog` VALUES (419, 6553, 1655044734, 0.35);
INSERT INTO `xy_signlog` VALUES (420, 6440, 1655054888, 0.35);
INSERT INTO `xy_signlog` VALUES (421, 6481, 1655088115, 0.35);
INSERT INTO `xy_signlog` VALUES (422, 6563, 1655091488, 0.35);
INSERT INTO `xy_signlog` VALUES (423, 5509, 1655095763, 0.35);
INSERT INTO `xy_signlog` VALUES (424, 6572, 1655098135, 0.35);
INSERT INTO `xy_signlog` VALUES (425, 6581, 1655100094, 0.35);
INSERT INTO `xy_signlog` VALUES (426, 6582, 1655100837, 0.35);
INSERT INTO `xy_signlog` VALUES (427, 6128, 1655106473, 0.35);
INSERT INTO `xy_signlog` VALUES (428, 6599, 1655111819, 0.35);
INSERT INTO `xy_signlog` VALUES (429, 6401, 1655119092, 0.35);
INSERT INTO `xy_signlog` VALUES (430, 6683, 1657165368, 0.35);
INSERT INTO `xy_signlog` VALUES (431, 6711, 1657182550, 0.35);
INSERT INTO `xy_signlog` VALUES (432, 6718, 1657185324, 0.35);
INSERT INTO `xy_signlog` VALUES (433, 6695, 1657186236, 0.35);
INSERT INTO `xy_signlog` VALUES (434, 6743, 1657196446, 0.35);
INSERT INTO `xy_signlog` VALUES (435, 6754, 1657251788, 0.35);
INSERT INTO `xy_signlog` VALUES (436, 6763, 1657260535, 0.35);
INSERT INTO `xy_signlog` VALUES (437, 6808, 1657268005, 0.35);
INSERT INTO `xy_signlog` VALUES (438, 6828, 1657277198, 0.35);
INSERT INTO `xy_signlog` VALUES (439, 6864, 1657335935, 0.35);
INSERT INTO `xy_signlog` VALUES (440, 6879, 1657342424, 0.35);
INSERT INTO `xy_signlog` VALUES (441, 6881, 1657342559, 0.35);
INSERT INTO `xy_signlog` VALUES (442, 6867, 1657342931, 0.35);
INSERT INTO `xy_signlog` VALUES (443, 6925, 1657359640, 0.35);
INSERT INTO `xy_signlog` VALUES (444, 6929, 1657361326, 0.35);
INSERT INTO `xy_signlog` VALUES (445, 6942, 1657367651, 0.35);
INSERT INTO `xy_signlog` VALUES (446, 6949, 1657369970, 0.35);
INSERT INTO `xy_signlog` VALUES (447, 6950, 1657370557, 0.35);
INSERT INTO `xy_signlog` VALUES (448, 6988, 1657424696, 0.35);
INSERT INTO `xy_signlog` VALUES (449, 6996, 1657428524, 0.35);
INSERT INTO `xy_signlog` VALUES (450, 7002, 1657429421, 0.35);
INSERT INTO `xy_signlog` VALUES (451, 6925, 1657436766, 0.35);
INSERT INTO `xy_signlog` VALUES (452, 7048, 1657448633, 0.35);
INSERT INTO `xy_signlog` VALUES (453, 6979, 1657493906, 0.35);
INSERT INTO `xy_signlog` VALUES (454, 6928, 1657505302, 0.35);
INSERT INTO `xy_signlog` VALUES (455, 7094, 1657511158, 0.35);
INSERT INTO `xy_signlog` VALUES (456, 7102, 1657513278, 0.35);
INSERT INTO `xy_signlog` VALUES (457, 7107, 1657519744, 0.35);
INSERT INTO `xy_signlog` VALUES (458, 6999, 1657520242, 0.35);
INSERT INTO `xy_signlog` VALUES (459, 7120, 1657524725, 0.35);
INSERT INTO `xy_signlog` VALUES (460, 7134, 1657526986, 0.35);
INSERT INTO `xy_signlog` VALUES (461, 7156, 1657535341, 0.35);
INSERT INTO `xy_signlog` VALUES (462, 7157, 1657537414, 0.35);
INSERT INTO `xy_signlog` VALUES (463, 7181, 1657546884, 0.35);
INSERT INTO `xy_signlog` VALUES (464, 7185, 1657548279, 0.35);
INSERT INTO `xy_signlog` VALUES (465, 7156, 1657587954, 0.35);
INSERT INTO `xy_signlog` VALUES (466, 7205, 1657597912, 0.35);
INSERT INTO `xy_signlog` VALUES (467, 7210, 1657601894, 0.35);
INSERT INTO `xy_signlog` VALUES (468, 7185, 1657603185, 0.35);
INSERT INTO `xy_signlog` VALUES (469, 7297, 1657633121, 0.35);
INSERT INTO `xy_signlog` VALUES (470, 7298, 1657633416, 0.35);
INSERT INTO `xy_signlog` VALUES (471, 7284, 1657644612, 0.35);
INSERT INTO `xy_signlog` VALUES (472, 7304, 1657652390, 0.35);
INSERT INTO `xy_signlog` VALUES (473, 6979, 1657669837, 0.35);
INSERT INTO `xy_signlog` VALUES (474, 7337, 1657689216, 0.35);
INSERT INTO `xy_signlog` VALUES (475, 7354, 1657689609, 0.35);
INSERT INTO `xy_signlog` VALUES (476, 7338, 1657691347, 0.35);
INSERT INTO `xy_signlog` VALUES (477, 7363, 1657695995, 0.35);
INSERT INTO `xy_signlog` VALUES (478, 7381, 1657699085, 0.35);
INSERT INTO `xy_signlog` VALUES (479, 7378, 1657699132, 0.35);
INSERT INTO `xy_signlog` VALUES (480, 7261, 1657707807, 0.35);
INSERT INTO `xy_signlog` VALUES (481, 7422, 1657709050, 0.35);
INSERT INTO `xy_signlog` VALUES (482, 7430, 1657713087, 0.35);
INSERT INTO `xy_signlog` VALUES (483, 7290, 1657718479, 0.35);
INSERT INTO `xy_signlog` VALUES (484, 7304, 1657728351, 0.35);
INSERT INTO `xy_signlog` VALUES (485, 7466, 1657766862, 0.35);
INSERT INTO `xy_signlog` VALUES (486, 7474, 1657771046, 0.35);
INSERT INTO `xy_signlog` VALUES (487, 7486, 1657773811, 0.35);
INSERT INTO `xy_signlog` VALUES (488, 7499, 1657773918, 0.35);
INSERT INTO `xy_signlog` VALUES (489, 7511, 1657776176, 0.35);
INSERT INTO `xy_signlog` VALUES (490, 7507, 1657778056, 0.35);
INSERT INTO `xy_signlog` VALUES (491, 7457, 1657778854, 0.35);
INSERT INTO `xy_signlog` VALUES (492, 7520, 1657782455, 0.35);
INSERT INTO `xy_signlog` VALUES (493, 7514, 1657787374, 0.35);
INSERT INTO `xy_signlog` VALUES (494, 7543, 1657792984, 0.35);
INSERT INTO `xy_signlog` VALUES (495, 7465, 1657796461, 0.35);
INSERT INTO `xy_signlog` VALUES (496, 7527, 1657796813, 0.35);
INSERT INTO `xy_signlog` VALUES (497, 7107, 1657800747, 0.35);
INSERT INTO `xy_signlog` VALUES (498, 7587, 1657806461, 0.35);
INSERT INTO `xy_signlog` VALUES (499, 7571, 1657850105, 0.35);
INSERT INTO `xy_signlog` VALUES (500, 7594, 1657852849, 0.35);
INSERT INTO `xy_signlog` VALUES (501, 7465, 1657854038, 0.35);
INSERT INTO `xy_signlog` VALUES (502, 7607, 1657854998, 0.35);
INSERT INTO `xy_signlog` VALUES (503, 7527, 1657859244, 0.35);
INSERT INTO `xy_signlog` VALUES (504, 7639, 1657867176, 0.35);
INSERT INTO `xy_signlog` VALUES (505, 7672, 1657873546, 0.35);
INSERT INTO `xy_signlog` VALUES (506, 7680, 1657876949, 0.35);
INSERT INTO `xy_signlog` VALUES (507, 7699, 1657884752, 0.35);
INSERT INTO `xy_signlog` VALUES (508, 7720, 1657891447, 0.35);
INSERT INTO `xy_signlog` VALUES (509, 7699, 1657912581, 0.35);
INSERT INTO `xy_signlog` VALUES (510, 7571, 1657937923, 0.35);
INSERT INTO `xy_signlog` VALUES (511, 7304, 1657944132, 0.35);
INSERT INTO `xy_signlog` VALUES (512, 7797, 1657964025, 0.35);
INSERT INTO `xy_signlog` VALUES (513, 7800, 1657964330, 0.35);
INSERT INTO `xy_signlog` VALUES (514, 7795, 1657964744, 0.35);
INSERT INTO `xy_signlog` VALUES (515, 7808, 1657966233, 0.35);
INSERT INTO `xy_signlog` VALUES (516, 7817, 1657969290, 0.35);
INSERT INTO `xy_signlog` VALUES (517, 7823, 1657978659, 0.35);
INSERT INTO `xy_signlog` VALUES (518, 7837, 1657979228, 0.35);
INSERT INTO `xy_signlog` VALUES (519, 7839, 1657981402, 0.35);
INSERT INTO `xy_signlog` VALUES (520, 7814, 1657984661, 0.35);
INSERT INTO `xy_signlog` VALUES (521, 7527, 1658016981, 0.35);
INSERT INTO `xy_signlog` VALUES (522, 7571, 1658027292, 0.35);
INSERT INTO `xy_signlog` VALUES (523, 7847, 1658028855, 0.35);
INSERT INTO `xy_signlog` VALUES (524, 7873, 1658032353, 0.35);
INSERT INTO `xy_signlog` VALUES (525, 7892, 1658044150, 0.35);
INSERT INTO `xy_signlog` VALUES (526, 7895, 1658044265, 0.35);
INSERT INTO `xy_signlog` VALUES (527, 7897, 1658045442, 0.35);
INSERT INTO `xy_signlog` VALUES (528, 7901, 1658046113, 0.35);
INSERT INTO `xy_signlog` VALUES (529, 7905, 1658048228, 0.35);
INSERT INTO `xy_signlog` VALUES (530, 7927, 1658053776, 0.35);
INSERT INTO `xy_signlog` VALUES (531, 7571, 1658101153, 0.35);
INSERT INTO `xy_signlog` VALUES (532, 7699, 1658109881, 0.35);
INSERT INTO `xy_signlog` VALUES (533, 8020, 1658132345, 0.35);
INSERT INTO `xy_signlog` VALUES (534, 8025, 1658133359, 0.35);
INSERT INTO `xy_signlog` VALUES (535, 8034, 1658134673, 0.35);
INSERT INTO `xy_signlog` VALUES (536, 8036, 1658135663, 0.35);
INSERT INTO `xy_signlog` VALUES (537, 8047, 1658138593, 0.35);
INSERT INTO `xy_signlog` VALUES (538, 8050, 1658139984, 0.35);
INSERT INTO `xy_signlog` VALUES (539, 8073, 1658147609, 0.35);
INSERT INTO `xy_signlog` VALUES (540, 8081, 1658150274, 0.35);
INSERT INTO `xy_signlog` VALUES (541, 8101, 1658153377, 0.35);
INSERT INTO `xy_signlog` VALUES (542, 8103, 1658154689, 0.35);
INSERT INTO `xy_signlog` VALUES (543, 7686, 1658186865, 0.35);
INSERT INTO `xy_signlog` VALUES (544, 8022, 1658200385, 0.35);
INSERT INTO `xy_signlog` VALUES (545, 8124, 1658203858, 0.35);
INSERT INTO `xy_signlog` VALUES (546, 8156, 1658216589, 0.35);
INSERT INTO `xy_signlog` VALUES (547, 8160, 1658217842, 0.35);
INSERT INTO `xy_signlog` VALUES (548, 8164, 1658219141, 0.35);
INSERT INTO `xy_signlog` VALUES (549, 8167, 1658220819, 0.35);
INSERT INTO `xy_signlog` VALUES (550, 8189, 1658229735, 0.35);
INSERT INTO `xy_signlog` VALUES (551, 8170, 1658240093, 0.35);
INSERT INTO `xy_signlog` VALUES (552, 8022, 1658280853, 0.35);
INSERT INTO `xy_signlog` VALUES (553, 8229, 1658286932, 0.35);
INSERT INTO `xy_signlog` VALUES (554, 8237, 1658292830, 0.35);
INSERT INTO `xy_signlog` VALUES (555, 8170, 1658295206, 0.35);
INSERT INTO `xy_signlog` VALUES (556, 8256, 1658301014, 0.35);
INSERT INTO `xy_signlog` VALUES (557, 8257, 1658301042, 0.35);
INSERT INTO `xy_signlog` VALUES (558, 8189, 1658303226, 0.35);
INSERT INTO `xy_signlog` VALUES (559, 8265, 1658303536, 0.35);
INSERT INTO `xy_signlog` VALUES (560, 8290, 1658313154, 0.35);
INSERT INTO `xy_signlog` VALUES (561, 8121, 1658313205, 0.35);
INSERT INTO `xy_signlog` VALUES (562, 8320, 1658325092, 0.35);
INSERT INTO `xy_signlog` VALUES (563, 8312, 1658334573, 0.35);
INSERT INTO `xy_signlog` VALUES (564, 8290, 1658361843, 0.35);
INSERT INTO `xy_signlog` VALUES (565, 8189, 1658371902, 0.35);
INSERT INTO `xy_signlog` VALUES (566, 8343, 1658384534, 0.35);
INSERT INTO `xy_signlog` VALUES (567, 8375, 1658391080, 0.35);
INSERT INTO `xy_signlog` VALUES (568, 8382, 1658395910, 0.35);
INSERT INTO `xy_signlog` VALUES (569, 8189, 1658422850, 0.35);
INSERT INTO `xy_signlog` VALUES (570, 8417, 1658459533, 0.35);
INSERT INTO `xy_signlog` VALUES (571, 8446, 1658470476, 0.35);
INSERT INTO `xy_signlog` VALUES (572, 8279, 1658475596, 0.35);
INSERT INTO `xy_signlog` VALUES (573, 8475, 1658480660, 0.35);
INSERT INTO `xy_signlog` VALUES (574, 8491, 1658483434, 0.35);
INSERT INTO `xy_signlog` VALUES (575, 8499, 1658485694, 0.35);
INSERT INTO `xy_signlog` VALUES (576, 8504, 1658493692, 0.35);
INSERT INTO `xy_signlog` VALUES (577, 8519, 1658497592, 0.35);
INSERT INTO `xy_signlog` VALUES (578, 8544, 1658544793, 0.35);
INSERT INTO `xy_signlog` VALUES (579, 8475, 1658547650, 0.35);
INSERT INTO `xy_signlog` VALUES (580, 6968, 1658548192, 0.35);
INSERT INTO `xy_signlog` VALUES (581, 8572, 1658550002, 0.35);
INSERT INTO `xy_signlog` VALUES (582, 8570, 1658550168, 0.35);
INSERT INTO `xy_signlog` VALUES (583, 8581, 1658551456, 0.35);
INSERT INTO `xy_signlog` VALUES (584, 8533, 1658551800, 0.35);
INSERT INTO `xy_signlog` VALUES (585, 8573, 1658552739, 0.35);
INSERT INTO `xy_signlog` VALUES (586, 8597, 1658554517, 0.35);
INSERT INTO `xy_signlog` VALUES (587, 8599, 1658555326, 0.35);
INSERT INTO `xy_signlog` VALUES (588, 8625, 1658564676, 0.35);
INSERT INTO `xy_signlog` VALUES (589, 8417, 1658568439, 0.35);
INSERT INTO `xy_signlog` VALUES (590, 8170, 1658593505, 0.35);
INSERT INTO `xy_signlog` VALUES (591, 8680, 1658650108, 0.35);
INSERT INTO `xy_signlog` VALUES (592, 8809, 1658667097, 0.35);
INSERT INTO `xy_signlog` VALUES (593, 8816, 1658670696, 0.35);
INSERT INTO `xy_signlog` VALUES (594, 8836, 1658722372, 0.35);
INSERT INTO `xy_signlog` VALUES (595, 8852, 1658730027, 0.35);
INSERT INTO `xy_signlog` VALUES (596, 8854, 1658732018, 0.35);
INSERT INTO `xy_signlog` VALUES (597, 8869, 1658735091, 0.35);
INSERT INTO `xy_signlog` VALUES (598, 8877, 1658737478, 0.35);
INSERT INTO `xy_signlog` VALUES (599, 8871, 1658740793, 0.35);
INSERT INTO `xy_signlog` VALUES (600, 8885, 1658740868, 0.35);
INSERT INTO `xy_signlog` VALUES (601, 8893, 1658741316, 0.35);
INSERT INTO `xy_signlog` VALUES (602, 8914, 1658745166, 0.35);
INSERT INTO `xy_signlog` VALUES (603, 8928, 1658745965, 0.35);
INSERT INTO `xy_signlog` VALUES (604, 8896, 1658746559, 0.35);
INSERT INTO `xy_signlog` VALUES (605, 8937, 1658747066, 0.35);
INSERT INTO `xy_signlog` VALUES (606, 8942, 1658747233, 0.35);
INSERT INTO `xy_signlog` VALUES (607, 8933, 1658747471, 0.35);
INSERT INTO `xy_signlog` VALUES (608, 8944, 1658747702, 0.35);
INSERT INTO `xy_signlog` VALUES (609, 8924, 1658748134, 0.35);
INSERT INTO `xy_signlog` VALUES (610, 8958, 1658748517, 0.35);
INSERT INTO `xy_signlog` VALUES (611, 8899, 1658748656, 0.35);
INSERT INTO `xy_signlog` VALUES (612, 8948, 1658748721, 0.35);
INSERT INTO `xy_signlog` VALUES (613, 8938, 1658748874, 0.35);
INSERT INTO `xy_signlog` VALUES (614, 8940, 1658749123, 0.35);
INSERT INTO `xy_signlog` VALUES (615, 8910, 1658749178, 0.35);
INSERT INTO `xy_signlog` VALUES (616, 8966, 1658749235, 0.35);
INSERT INTO `xy_signlog` VALUES (617, 8963, 1658749269, 0.35);
INSERT INTO `xy_signlog` VALUES (618, 8906, 1658749569, 0.35);
INSERT INTO `xy_signlog` VALUES (619, 8951, 1658750046, 0.35);
INSERT INTO `xy_signlog` VALUES (620, 8973, 1658750257, 0.35);
INSERT INTO `xy_signlog` VALUES (621, 8980, 1658751922, 0.35);
INSERT INTO `xy_signlog` VALUES (622, 8986, 1658752006, 0.35);
INSERT INTO `xy_signlog` VALUES (623, 8991, 1658752210, 0.35);
INSERT INTO `xy_signlog` VALUES (624, 8969, 1658752344, 0.35);
INSERT INTO `xy_signlog` VALUES (625, 8972, 1658752459, 0.35);
INSERT INTO `xy_signlog` VALUES (626, 8987, 1658752571, 0.35);
INSERT INTO `xy_signlog` VALUES (627, 8992, 1658752796, 0.35);
INSERT INTO `xy_signlog` VALUES (628, 8998, 1658753189, 0.35);
INSERT INTO `xy_signlog` VALUES (629, 9003, 1658753843, 0.35);
INSERT INTO `xy_signlog` VALUES (630, 8916, 1658753928, 0.35);
INSERT INTO `xy_signlog` VALUES (631, 8968, 1658754255, 0.35);
INSERT INTO `xy_signlog` VALUES (632, 8983, 1658755750, 0.35);
INSERT INTO `xy_signlog` VALUES (633, 9020, 1658756437, 0.35);
INSERT INTO `xy_signlog` VALUES (634, 9024, 1658757421, 0.35);
INSERT INTO `xy_signlog` VALUES (635, 9015, 1658757485, 0.35);
INSERT INTO `xy_signlog` VALUES (636, 9026, 1658757680, 0.35);
INSERT INTO `xy_signlog` VALUES (637, 9018, 1658757800, 0.35);
INSERT INTO `xy_signlog` VALUES (638, 9030, 1658757927, 0.35);
INSERT INTO `xy_signlog` VALUES (639, 9029, 1658757940, 0.35);
INSERT INTO `xy_signlog` VALUES (640, 8170, 1658758096, 0.35);
INSERT INTO `xy_signlog` VALUES (641, 9046, 1658759554, 0.35);
INSERT INTO `xy_signlog` VALUES (642, 9038, 1658760111, 0.35);
INSERT INTO `xy_signlog` VALUES (643, 9005, 1658760276, 0.35);
INSERT INTO `xy_signlog` VALUES (644, 9021, 1658760420, 0.35);
INSERT INTO `xy_signlog` VALUES (645, 9037, 1658761474, 0.35);
INSERT INTO `xy_signlog` VALUES (646, 9055, 1658761880, 0.35);
INSERT INTO `xy_signlog` VALUES (647, 9047, 1658762057, 0.35);
INSERT INTO `xy_signlog` VALUES (648, 8949, 1658764494, 0.35);
INSERT INTO `xy_signlog` VALUES (649, 8914, 1658764823, 0.35);
INSERT INTO `xy_signlog` VALUES (650, 9005, 1658766269, 0.35);
INSERT INTO `xy_signlog` VALUES (651, 8950, 1658766688, 0.35);
INSERT INTO `xy_signlog` VALUES (652, 8852, 1658767526, 0.35);
INSERT INTO `xy_signlog` VALUES (653, 8899, 1658770123, 0.35);
INSERT INTO `xy_signlog` VALUES (654, 8972, 1658770681, 0.35);
INSERT INTO `xy_signlog` VALUES (655, 9021, 1658771740, 0.35);
INSERT INTO `xy_signlog` VALUES (656, 8949, 1658778365, 0.35);
INSERT INTO `xy_signlog` VALUES (657, 8960, 1658778699, 0.35);
INSERT INTO `xy_signlog` VALUES (658, 8871, 1658786737, 0.35);
INSERT INTO `xy_signlog` VALUES (659, 8983, 1658786758, 0.35);
INSERT INTO `xy_signlog` VALUES (660, 9055, 1658788043, 0.35);
INSERT INTO `xy_signlog` VALUES (661, 8942, 1658789931, 0.35);
INSERT INTO `xy_signlog` VALUES (662, 9026, 1658791105, 0.35);
INSERT INTO `xy_signlog` VALUES (663, 8968, 1658791134, 0.35);
INSERT INTO `xy_signlog` VALUES (664, 8916, 1658792603, 0.35);
INSERT INTO `xy_signlog` VALUES (665, 8987, 1658792683, 0.35);
INSERT INTO `xy_signlog` VALUES (666, 9047, 1658794108, 0.35);
INSERT INTO `xy_signlog` VALUES (667, 9038, 1658795034, 0.35);
INSERT INTO `xy_signlog` VALUES (668, 8940, 1658795439, 0.35);
INSERT INTO `xy_signlog` VALUES (669, 9024, 1658795713, 0.35);
INSERT INTO `xy_signlog` VALUES (670, 8854, 1658796720, 0.35);
INSERT INTO `xy_signlog` VALUES (671, 9003, 1658801291, 0.35);
INSERT INTO `xy_signlog` VALUES (672, 8998, 1658801295, 0.35);
INSERT INTO `xy_signlog` VALUES (673, 9018, 1658801336, 0.35);
INSERT INTO `xy_signlog` VALUES (674, 8932, 1658801436, 0.35);
INSERT INTO `xy_signlog` VALUES (675, 8906, 1658801500, 0.35);
INSERT INTO `xy_signlog` VALUES (676, 9128, 1658802501, 0.35);
INSERT INTO `xy_signlog` VALUES (677, 9032, 1658802575, 0.35);
INSERT INTO `xy_signlog` VALUES (678, 9015, 1658802959, 0.35);
INSERT INTO `xy_signlog` VALUES (679, 8973, 1658803084, 0.35);
INSERT INTO `xy_signlog` VALUES (680, 9134, 1658803371, 0.35);
INSERT INTO `xy_signlog` VALUES (681, 7719, 1658803445, 0.35);
INSERT INTO `xy_signlog` VALUES (682, 9137, 1658803876, 0.35);
INSERT INTO `xy_signlog` VALUES (683, 9139, 1658804202, 0.35);
INSERT INTO `xy_signlog` VALUES (684, 8982, 1658804297, 0.35);
INSERT INTO `xy_signlog` VALUES (685, 9147, 1658804882, 0.35);
INSERT INTO `xy_signlog` VALUES (686, 9138, 1658805568, 0.35);
INSERT INTO `xy_signlog` VALUES (687, 9079, 1658806546, 0.35);
INSERT INTO `xy_signlog` VALUES (688, 8980, 1658807041, 0.35);
INSERT INTO `xy_signlog` VALUES (689, 9100, 1658807813, 0.35);
INSERT INTO `xy_signlog` VALUES (690, 9162, 1658808891, 0.35);
INSERT INTO `xy_signlog` VALUES (691, 9085, 1658809331, 0.35);
INSERT INTO `xy_signlog` VALUES (692, 8885, 1658809481, 0.35);
INSERT INTO `xy_signlog` VALUES (693, 9046, 1658809627, 0.35);
INSERT INTO `xy_signlog` VALUES (694, 8910, 1658809655, 0.35);
INSERT INTO `xy_signlog` VALUES (695, 9016, 1658809869, 0.35);
INSERT INTO `xy_signlog` VALUES (696, 8937, 1658811235, 0.35);
INSERT INTO `xy_signlog` VALUES (697, 9182, 1658812092, 0.35);
INSERT INTO `xy_signlog` VALUES (698, 9103, 1658812668, 0.35);
INSERT INTO `xy_signlog` VALUES (699, 9011, 1658813929, 0.35);
INSERT INTO `xy_signlog` VALUES (700, 9198, 1658814004, 0.35);
INSERT INTO `xy_signlog` VALUES (701, 8924, 1658814844, 0.35);
INSERT INTO `xy_signlog` VALUES (702, 9178, 1658816248, 0.35);
INSERT INTO `xy_signlog` VALUES (703, 9211, 1658822154, 0.35);
INSERT INTO `xy_signlog` VALUES (704, 9083, 1658822263, 0.35);
INSERT INTO `xy_signlog` VALUES (705, 9142, 1658822909, 0.35);
INSERT INTO `xy_signlog` VALUES (706, 9222, 1658824014, 0.35);
INSERT INTO `xy_signlog` VALUES (707, 9033, 1658828821, 0.35);
INSERT INTO `xy_signlog` VALUES (708, 8836, 1658831564, 0.35);
INSERT INTO `xy_signlog` VALUES (709, 8091, 1658842541, 0.35);
INSERT INTO `xy_signlog` VALUES (710, 9317, 1658846902, 0.35);
INSERT INTO `xy_signlog` VALUES (711, 8972, 1658851465, 0.35);
INSERT INTO `xy_signlog` VALUES (712, 9172, 1658851831, 0.35);
INSERT INTO `xy_signlog` VALUES (713, 9024, 1658851932, 0.35);
INSERT INTO `xy_signlog` VALUES (714, 9038, 1658855068, 0.35);
INSERT INTO `xy_signlog` VALUES (715, 9016, 1658858633, 0.35);
INSERT INTO `xy_signlog` VALUES (716, 8899, 1658862827, 0.35);
INSERT INTO `xy_signlog` VALUES (717, 9137, 1658866139, 0.35);
INSERT INTO `xy_signlog` VALUES (718, 8968, 1658871477, 0.35);
INSERT INTO `xy_signlog` VALUES (719, 8983, 1658874846, 0.35);
INSERT INTO `xy_signlog` VALUES (720, 9134, 1658874885, 0.35);
INSERT INTO `xy_signlog` VALUES (721, 9128, 1658875490, 0.35);
INSERT INTO `xy_signlog` VALUES (722, 9100, 1658876897, 0.35);
INSERT INTO `xy_signlog` VALUES (723, 9079, 1658877807, 0.35);
INSERT INTO `xy_signlog` VALUES (724, 8914, 1658883474, 0.35);
INSERT INTO `xy_signlog` VALUES (725, 8950, 1658885958, 0.35);
INSERT INTO `xy_signlog` VALUES (726, 9339, 1658892630, 0.35);
INSERT INTO `xy_signlog` VALUES (727, 9361, 1658899613, 0.35);
INSERT INTO `xy_signlog` VALUES (728, 9368, 1658902036, 0.35);
INSERT INTO `xy_signlog` VALUES (729, 9011, 1658908157, 0.35);
INSERT INTO `xy_signlog` VALUES (730, 9375, 1658919428, 0.35);
INSERT INTO `xy_signlog` VALUES (731, 9071, 1658922455, 0.35);
INSERT INTO `xy_signlog` VALUES (732, 8570, 1658924065, 0.35);
INSERT INTO `xy_signlog` VALUES (733, 9033, 1658925242, 0.35);
INSERT INTO `xy_signlog` VALUES (734, 9438, 1658928926, 0.35);
INSERT INTO `xy_signlog` VALUES (735, 9442, 1658933100, 0.35);
INSERT INTO `xy_signlog` VALUES (736, 8914, 1658937699, 0.35);
INSERT INTO `xy_signlog` VALUES (737, 9021, 1658940263, 0.35);
INSERT INTO `xy_signlog` VALUES (738, 9080, 1658940417, 0.35);
INSERT INTO `xy_signlog` VALUES (739, 9038, 1658941463, 0.35);
INSERT INTO `xy_signlog` VALUES (740, 9079, 1658942054, 0.35);
INSERT INTO `xy_signlog` VALUES (741, 9032, 1658945067, 0.35);
INSERT INTO `xy_signlog` VALUES (742, 8972, 1658951023, 0.35);
INSERT INTO `xy_signlog` VALUES (743, 8983, 1658959006, 0.35);
INSERT INTO `xy_signlog` VALUES (744, 9100, 1658963334, 0.35);
INSERT INTO `xy_signlog` VALUES (745, 9033, 1658963593, 0.35);
INSERT INTO `xy_signlog` VALUES (746, 9128, 1658964498, 0.35);
INSERT INTO `xy_signlog` VALUES (747, 9430, 1658968499, 0.35);
INSERT INTO `xy_signlog` VALUES (748, 9479, 1658975902, 0.35);
INSERT INTO `xy_signlog` VALUES (749, 9470, 1658976889, 0.35);
INSERT INTO `xy_signlog` VALUES (750, 9483, 1658977444, 0.35);
INSERT INTO `xy_signlog` VALUES (751, 9327, 1658977931, 0.35);
INSERT INTO `xy_signlog` VALUES (752, 9495, 1658982142, 0.35);
INSERT INTO `xy_signlog` VALUES (753, 9524, 1658988527, 0.35);
INSERT INTO `xy_signlog` VALUES (754, 9011, 1658990974, 0.35);
INSERT INTO `xy_signlog` VALUES (755, 9530, 1658991820, 0.35);
INSERT INTO `xy_signlog` VALUES (756, 9550, 1658999000, 0.35);
INSERT INTO `xy_signlog` VALUES (757, 9549, 1658999053, 0.35);
INSERT INTO `xy_signlog` VALUES (758, 9545, 1659000069, 0.35);
INSERT INTO `xy_signlog` VALUES (759, 9060, 1659001350, 0.35);
INSERT INTO `xy_signlog` VALUES (760, 9460, 1659013208, 0.35);
INSERT INTO `xy_signlog` VALUES (761, 8914, 1659029161, 0.35);
INSERT INTO `xy_signlog` VALUES (762, 8972, 1659029575, 0.35);
INSERT INTO `xy_signlog` VALUES (763, 9430, 1659045981, 0.35);
INSERT INTO `xy_signlog` VALUES (764, 9033, 1659048176, 0.35);
INSERT INTO `xy_signlog` VALUES (765, 9128, 1659049313, 0.35);
INSERT INTO `xy_signlog` VALUES (766, 9100, 1659049786, 0.35);
INSERT INTO `xy_signlog` VALUES (767, 9603, 1659050854, 0.35);
INSERT INTO `xy_signlog` VALUES (768, 9079, 1659051850, 0.35);
INSERT INTO `xy_signlog` VALUES (769, 9030, 1659062023, 0.35);
INSERT INTO `xy_signlog` VALUES (770, 9618, 1659063982, 0.35);
INSERT INTO `xy_signlog` VALUES (771, 9038, 1659066849, 0.35);
INSERT INTO `xy_signlog` VALUES (772, 9026, 1659067173, 0.35);
INSERT INTO `xy_signlog` VALUES (773, 8983, 1659068473, 0.35);
INSERT INTO `xy_signlog` VALUES (774, 9060, 1659068836, 0.35);
INSERT INTO `xy_signlog` VALUES (775, 9583, 1659070017, 0.35);
INSERT INTO `xy_signlog` VALUES (776, 9648, 1659072295, 0.35);
INSERT INTO `xy_signlog` VALUES (777, 9650, 1659073469, 0.35);
INSERT INTO `xy_signlog` VALUES (778, 9292, 1659084211, 0.35);
INSERT INTO `xy_signlog` VALUES (779, 9729, 1659096066, 0.35);
INSERT INTO `xy_signlog` VALUES (780, 8914, 1659112305, 0.35);
INSERT INTO `xy_signlog` VALUES (781, 8972, 1659113291, 0.35);
INSERT INTO `xy_signlog` VALUES (782, 9684, 1659119207, 0.35);
INSERT INTO `xy_signlog` VALUES (783, 9460, 1659121365, 0.35);
INSERT INTO `xy_signlog` VALUES (784, 7699, 1659123447, 0.35);
INSERT INTO `xy_signlog` VALUES (785, 9430, 1659131517, 0.35);
INSERT INTO `xy_signlog` VALUES (786, 9128, 1659136752, 0.35);
INSERT INTO `xy_signlog` VALUES (787, 9100, 1659138193, 0.35);
INSERT INTO `xy_signlog` VALUES (788, 9079, 1659139297, 0.35);
INSERT INTO `xy_signlog` VALUES (789, 8986, 1659146917, 0.35);
INSERT INTO `xy_signlog` VALUES (790, 9549, 1659154201, 0.35);
INSERT INTO `xy_signlog` VALUES (791, 9774, 1659154341, 0.35);
INSERT INTO `xy_signlog` VALUES (792, 9791, 1659157714, 0.35);
INSERT INTO `xy_signlog` VALUES (793, 9813, 1659160415, 0.35);
INSERT INTO `xy_signlog` VALUES (794, 9817, 1659163575, 0.35);
INSERT INTO `xy_signlog` VALUES (795, 9823, 1659165280, 0.35);
INSERT INTO `xy_signlog` VALUES (796, 9800, 1659169147, 0.35);
INSERT INTO `xy_signlog` VALUES (797, 8983, 1659169702, 0.35);
INSERT INTO `xy_signlog` VALUES (798, 9838, 1659170429, 0.35);
INSERT INTO `xy_signlog` VALUES (799, 9845, 1659173515, 0.35);
INSERT INTO `xy_signlog` VALUES (800, 9026, 1659174393, 0.35);
INSERT INTO `xy_signlog` VALUES (801, 9859, 1659177902, 0.35);
INSERT INTO `xy_signlog` VALUES (802, 9860, 1659178163, 0.35);
INSERT INTO `xy_signlog` VALUES (803, 9071, 1659183211, 0.35);
INSERT INTO `xy_signlog` VALUES (804, 8972, 1659200495, 0.35);
INSERT INTO `xy_signlog` VALUES (805, 8914, 1659200568, 0.35);
INSERT INTO `xy_signlog` VALUES (806, 8210, 1659212851, 0.35);
INSERT INTO `xy_signlog` VALUES (807, 9430, 1659214405, 0.35);
INSERT INTO `xy_signlog` VALUES (808, 9079, 1659218569, 0.35);
INSERT INTO `xy_signlog` VALUES (809, 9128, 1659223681, 0.35);
INSERT INTO `xy_signlog` VALUES (810, 9100, 1659228654, 0.35);
INSERT INTO `xy_signlog` VALUES (811, 9033, 1659233876, 0.35);
INSERT INTO `xy_signlog` VALUES (812, 9021, 1659234200, 0.35);
INSERT INTO `xy_signlog` VALUES (813, 8983, 1659236096, 0.35);
INSERT INTO `xy_signlog` VALUES (814, 9892, 1659240460, 0.35);
INSERT INTO `xy_signlog` VALUES (815, 9920, 1659242221, 0.35);
INSERT INTO `xy_signlog` VALUES (816, 9921, 1659242523, 0.35);
INSERT INTO `xy_signlog` VALUES (817, 9875, 1659242770, 0.35);
INSERT INTO `xy_signlog` VALUES (818, 9071, 1659244875, 0.35);
INSERT INTO `xy_signlog` VALUES (819, 9038, 1659245277, 0.35);
INSERT INTO `xy_signlog` VALUES (820, 9930, 1659246532, 0.35);
INSERT INTO `xy_signlog` VALUES (821, 9936, 1659247496, 0.35);
INSERT INTO `xy_signlog` VALUES (822, 9060, 1659268357, 0.35);
INSERT INTO `xy_signlog` VALUES (823, 9985, 1659268443, 0.35);
INSERT INTO `xy_signlog` VALUES (824, 10003, 1659270829, 0.35);
INSERT INTO `xy_signlog` VALUES (825, 8972, 1659285648, 0.35);
INSERT INTO `xy_signlog` VALUES (826, 8914, 1659286987, 0.35);
INSERT INTO `xy_signlog` VALUES (827, 9430, 1659300727, 0.35);
INSERT INTO `xy_signlog` VALUES (828, 9079, 1659302344, 0.35);
INSERT INTO `xy_signlog` VALUES (829, 9128, 1659308210, 0.35);
INSERT INTO `xy_signlog` VALUES (830, 9033, 1659308573, 0.35);
INSERT INTO `xy_signlog` VALUES (831, 9100, 1659310707, 0.35);
INSERT INTO `xy_signlog` VALUES (832, 8983, 1659313542, 0.35);
INSERT INTO `xy_signlog` VALUES (833, 8170, 1659321161, 0.35);
INSERT INTO `xy_signlog` VALUES (834, 10003, 1659321909, 0.35);
INSERT INTO `xy_signlog` VALUES (835, 10059, 1659326659, 0.35);
INSERT INTO `xy_signlog` VALUES (836, 9060, 1659328259, 0.35);
INSERT INTO `xy_signlog` VALUES (837, 10014, 1659346694, 0.35);
INSERT INTO `xy_signlog` VALUES (838, 10146, 1659348460, 0.35);
INSERT INTO `xy_signlog` VALUES (839, 10160, 1659355162, 0.35);
INSERT INTO `xy_signlog` VALUES (840, 10166, 1659356701, 0.35);
INSERT INTO `xy_signlog` VALUES (841, 9021, 1659357862, 0.35);
INSERT INTO `xy_signlog` VALUES (842, 9071, 1659358582, 0.35);
INSERT INTO `xy_signlog` VALUES (843, 10179, 1659362740, 0.35);
INSERT INTO `xy_signlog` VALUES (844, 10185, 1659365226, 0.35);
INSERT INTO `xy_signlog` VALUES (845, 10192, 1659365447, 0.35);
INSERT INTO `xy_signlog` VALUES (846, 8914, 1659369776, 0.35);
INSERT INTO `xy_signlog` VALUES (847, 9917, 1659372360, 0.35);
INSERT INTO `xy_signlog` VALUES (848, 8972, 1659373259, 0.35);
INSERT INTO `xy_signlog` VALUES (849, 9079, 1659383168, 0.35);
INSERT INTO `xy_signlog` VALUES (850, 9926, 1659387156, 0.35);
INSERT INTO `xy_signlog` VALUES (851, 9430, 1659392258, 0.35);
INSERT INTO `xy_signlog` VALUES (852, 9134, 1659393911, 0.35);
INSERT INTO `xy_signlog` VALUES (853, 9128, 1659394678, 0.35);
INSERT INTO `xy_signlog` VALUES (854, 9100, 1659394984, 0.35);
INSERT INTO `xy_signlog` VALUES (855, 10179, 1659400274, 0.35);
INSERT INTO `xy_signlog` VALUES (856, 8937, 1659401828, 0.35);
INSERT INTO `xy_signlog` VALUES (857, 9021, 1659408098, 0.35);
INSERT INTO `xy_signlog` VALUES (858, 10211, 1659409504, 0.35);
INSERT INTO `xy_signlog` VALUES (859, 10221, 1659418088, 0.35);
INSERT INTO `xy_signlog` VALUES (860, 10232, 1659419535, 0.35);
INSERT INTO `xy_signlog` VALUES (861, 10237, 1659422321, 0.35);
INSERT INTO `xy_signlog` VALUES (862, 10248, 1659424711, 0.35);
INSERT INTO `xy_signlog` VALUES (863, 10255, 1659426536, 0.35);
INSERT INTO `xy_signlog` VALUES (864, 10252, 1659427324, 0.35);
INSERT INTO `xy_signlog` VALUES (865, 10290, 1659436123, 0.35);
INSERT INTO `xy_signlog` VALUES (866, 10297, 1659437563, 0.35);
INSERT INTO `xy_signlog` VALUES (867, 9071, 1659446538, 0.35);
INSERT INTO `xy_signlog` VALUES (868, 8914, 1659456478, 0.35);
INSERT INTO `xy_signlog` VALUES (869, 8972, 1659456653, 0.35);
INSERT INTO `xy_signlog` VALUES (870, 9430, 1659464430, 0.35);
INSERT INTO `xy_signlog` VALUES (871, 9079, 1659477493, 0.35);
INSERT INTO `xy_signlog` VALUES (872, 9128, 1659479848, 0.35);
INSERT INTO `xy_signlog` VALUES (873, 9134, 1659480508, 0.35);
INSERT INTO `xy_signlog` VALUES (874, 9100, 1659481994, 0.35);
INSERT INTO `xy_signlog` VALUES (875, 10336, 1659494180, 0.35);
INSERT INTO `xy_signlog` VALUES (876, 10344, 1659498332, 0.35);
INSERT INTO `xy_signlog` VALUES (877, 9060, 1659499440, 0.35);
INSERT INTO `xy_signlog` VALUES (878, 10358, 1659499678, 0.35);
INSERT INTO `xy_signlog` VALUES (879, 10366, 1659502844, 0.35);
INSERT INTO `xy_signlog` VALUES (880, 10210, 1659503237, 0.35);
INSERT INTO `xy_signlog` VALUES (881, 10307, 1659505806, 0.35);
INSERT INTO `xy_signlog` VALUES (882, 10297, 1659506893, 0.35);
INSERT INTO `xy_signlog` VALUES (883, 10387, 1659511292, 0.35);
INSERT INTO `xy_signlog` VALUES (884, 10403, 1659518372, 0.35);
INSERT INTO `xy_signlog` VALUES (885, 10414, 1659521383, 0.35);
INSERT INTO `xy_signlog` VALUES (886, 10417, 1659521956, 0.35);
INSERT INTO `xy_signlog` VALUES (887, 10459, 1659532182, 0.35);
INSERT INTO `xy_signlog` VALUES (888, 10179, 1659533465, 0.35);
INSERT INTO `xy_signlog` VALUES (889, 9071, 1659536477, 0.35);
INSERT INTO `xy_signlog` VALUES (890, 10472, 1659537102, 0.35);
INSERT INTO `xy_signlog` VALUES (891, 8972, 1659542726, 0.35);
INSERT INTO `xy_signlog` VALUES (892, 8914, 1659542740, 0.35);
INSERT INTO `xy_signlog` VALUES (893, 9079, 1659557299, 0.35);
INSERT INTO `xy_signlog` VALUES (894, 9430, 1659563447, 0.35);
INSERT INTO `xy_signlog` VALUES (895, 9134, 1659564540, 0.35);
INSERT INTO `xy_signlog` VALUES (896, 9128, 1659566500, 0.35);
INSERT INTO `xy_signlog` VALUES (897, 9100, 1659568023, 0.35);
INSERT INTO `xy_signlog` VALUES (898, 10179, 1659569770, 0.35);
INSERT INTO `xy_signlog` VALUES (899, 10472, 1659575836, 0.35);
INSERT INTO `xy_signlog` VALUES (900, 10459, 1659576067, 0.35);
INSERT INTO `xy_signlog` VALUES (901, 9060, 1659581035, 0.35);
INSERT INTO `xy_signlog` VALUES (902, 10494, 1659583772, 0.35);
INSERT INTO `xy_signlog` VALUES (903, 10481, 1659584323, 0.35);
INSERT INTO `xy_signlog` VALUES (904, 9071, 1659586604, 0.35);
INSERT INTO `xy_signlog` VALUES (905, 10526, 1659598493, 0.35);
INSERT INTO `xy_signlog` VALUES (906, 10552, 1659608005, 0.35);
INSERT INTO `xy_signlog` VALUES (907, 10505, 1659616400, 0.35);
INSERT INTO `xy_signlog` VALUES (908, 10579, 1659621398, 0.35);
INSERT INTO `xy_signlog` VALUES (909, 8914, 1659628985, 0.35);
INSERT INTO `xy_signlog` VALUES (910, 8972, 1659629075, 0.35);
INSERT INTO `xy_signlog` VALUES (911, 9327, 1659634693, 0.35);
INSERT INTO `xy_signlog` VALUES (912, 9128, 1659652070, 0.35);
INSERT INTO `xy_signlog` VALUES (913, 9430, 1659652589, 0.35);
INSERT INTO `xy_signlog` VALUES (914, 9100, 1659654986, 0.35);
INSERT INTO `xy_signlog` VALUES (915, 10579, 1659656757, 0.35);
INSERT INTO `xy_signlog` VALUES (916, 9079, 1659663347, 0.35);
INSERT INTO `xy_signlog` VALUES (917, 9134, 1659665846, 0.35);
INSERT INTO `xy_signlog` VALUES (918, 10459, 1659685654, 0.35);
INSERT INTO `xy_signlog` VALUES (919, 10472, 1659685760, 0.35);
INSERT INTO `xy_signlog` VALUES (920, 10663, 1659690071, 0.35);
INSERT INTO `xy_signlog` VALUES (921, 10680, 1659694477, 0.35);
INSERT INTO `xy_signlog` VALUES (922, 10684, 1659696435, 0.35);
INSERT INTO `xy_signlog` VALUES (923, 10693, 1659699087, 0.35);
INSERT INTO `xy_signlog` VALUES (924, 9060, 1659701806, 0.35);
INSERT INTO `xy_signlog` VALUES (925, 9071, 1659710811, 0.35);
INSERT INTO `xy_signlog` VALUES (926, 8914, 1659715308, 0.35);
INSERT INTO `xy_signlog` VALUES (927, 8972, 1659716682, 0.35);
INSERT INTO `xy_signlog` VALUES (928, 9430, 1659737055, 0.35);
INSERT INTO `xy_signlog` VALUES (929, 9128, 1659743110, 0.35);
INSERT INTO `xy_signlog` VALUES (930, 9100, 1659743161, 0.35);
INSERT INTO `xy_signlog` VALUES (931, 9071, 1659748470, 0.35);
INSERT INTO `xy_signlog` VALUES (932, 9079, 1659750210, 0.35);
INSERT INTO `xy_signlog` VALUES (933, 9060, 1659753770, 0.35);
INSERT INTO `xy_signlog` VALUES (934, 10743, 1659764293, 0.35);
INSERT INTO `xy_signlog` VALUES (935, 10734, 1659765789, 0.35);
INSERT INTO `xy_signlog` VALUES (936, 10772, 1659774810, 0.35);
INSERT INTO `xy_signlog` VALUES (937, 10307, 1659774835, 0.35);
INSERT INTO `xy_signlog` VALUES (938, 10755, 1659775603, 0.35);
INSERT INTO `xy_signlog` VALUES (939, 10779, 1659779334, 0.35);
INSERT INTO `xy_signlog` VALUES (940, 10781, 1659780374, 0.35);
INSERT INTO `xy_signlog` VALUES (941, 10790, 1659785009, 0.35);
INSERT INTO `xy_signlog` VALUES (942, 10774, 1659788122, 0.35);
INSERT INTO `xy_signlog` VALUES (943, 10780, 1659793777, 0.35);
INSERT INTO `xy_signlog` VALUES (944, 8914, 1659801612, 0.35);
INSERT INTO `xy_signlog` VALUES (945, 8972, 1659801802, 0.35);
INSERT INTO `xy_signlog` VALUES (946, 10472, 1659806498, 0.35);
INSERT INTO `xy_signlog` VALUES (947, 10734, 1659806598, 0.35);
INSERT INTO `xy_signlog` VALUES (948, 10459, 1659806702, 0.35);
INSERT INTO `xy_signlog` VALUES (949, 9430, 1659825421, 0.35);
INSERT INTO `xy_signlog` VALUES (950, 9128, 1659827886, 0.35);
INSERT INTO `xy_signlog` VALUES (951, 9134, 1659829664, 0.35);
INSERT INTO `xy_signlog` VALUES (952, 9100, 1659833153, 0.35);
INSERT INTO `xy_signlog` VALUES (953, 8170, 1659834358, 0.35);
INSERT INTO `xy_signlog` VALUES (954, 9079, 1659838516, 0.35);
INSERT INTO `xy_signlog` VALUES (955, 10818, 1659839431, 0.35);
INSERT INTO `xy_signlog` VALUES (956, 10819, 1659839793, 0.35);
INSERT INTO `xy_signlog` VALUES (957, 10826, 1659840657, 0.35);
INSERT INTO `xy_signlog` VALUES (958, 10827, 1659840957, 0.35);
INSERT INTO `xy_signlog` VALUES (959, 10831, 1659841565, 0.35);
INSERT INTO `xy_signlog` VALUES (960, 10836, 1659842488, 0.35);
INSERT INTO `xy_signlog` VALUES (961, 10838, 1659843285, 0.35);
INSERT INTO `xy_signlog` VALUES (962, 10845, 1659845299, 0.35);
INSERT INTO `xy_signlog` VALUES (963, 10852, 1659846429, 0.35);
INSERT INTO `xy_signlog` VALUES (964, 9060, 1659851350, 0.35);
INSERT INTO `xy_signlog` VALUES (965, 10890, 1659859525, 0.35);
INSERT INTO `xy_signlog` VALUES (966, 10179, 1659861540, 0.35);
INSERT INTO `xy_signlog` VALUES (967, 10931, 1659874271, 0.35);
INSERT INTO `xy_signlog` VALUES (968, 10932, 1659876845, 0.35);
INSERT INTO `xy_signlog` VALUES (969, 10755, 1659879237, 0.35);
INSERT INTO `xy_signlog` VALUES (970, 10943, 1659882001, 0.35);
INSERT INTO `xy_signlog` VALUES (971, 8914, 1659888441, 0.35);
INSERT INTO `xy_signlog` VALUES (972, 8972, 1659889656, 0.35);
INSERT INTO `xy_signlog` VALUES (973, 10943, 1659892381, 0.35);
INSERT INTO `xy_signlog` VALUES (974, 9430, 1659895696, 0.35);
INSERT INTO `xy_signlog` VALUES (975, 9100, 1659897560, 0.35);
INSERT INTO `xy_signlog` VALUES (976, 9134, 1659910864, 0.35);
INSERT INTO `xy_signlog` VALUES (977, 9128, 1659913297, 0.35);
INSERT INTO `xy_signlog` VALUES (978, 9079, 1659927983, 0.35);
INSERT INTO `xy_signlog` VALUES (979, 10959, 1659930320, 0.35);
INSERT INTO `xy_signlog` VALUES (980, 10964, 1659932523, 0.35);
INSERT INTO `xy_signlog` VALUES (981, 8170, 1659933890, 0.35);
INSERT INTO `xy_signlog` VALUES (982, 10836, 1659936041, 0.35);
INSERT INTO `xy_signlog` VALUES (983, 9060, 1659939096, 0.35);
INSERT INTO `xy_signlog` VALUES (984, 10975, 1659939230, 0.35);
INSERT INTO `xy_signlog` VALUES (985, 10755, 1659944504, 0.35);
INSERT INTO `xy_signlog` VALUES (986, 10985, 1659946585, 0.35);
INSERT INTO `xy_signlog` VALUES (987, 9071, 1659950388, 0.35);
INSERT INTO `xy_signlog` VALUES (988, 10472, 1659967938, 0.35);
INSERT INTO `xy_signlog` VALUES (989, 10459, 1659968023, 0.35);
INSERT INTO `xy_signlog` VALUES (990, 9134, 1660014421, 0.35);
INSERT INTO `xy_signlog` VALUES (991, 11049, 1660018194, 0.35);
INSERT INTO `xy_signlog` VALUES (992, 11063, 1660021945, 0.35);
INSERT INTO `xy_signlog` VALUES (993, 11076, 1660033499, 0.35);
INSERT INTO `xy_signlog` VALUES (994, 10755, 1660042372, 0.35);
INSERT INTO `xy_signlog` VALUES (995, 8170, 1660044636, 0.35);
INSERT INTO `xy_signlog` VALUES (996, 11110, 1660046872, 0.35);
INSERT INTO `xy_signlog` VALUES (997, 11119, 1660051496, 0.35);
INSERT INTO `xy_signlog` VALUES (998, 11120, 1660052330, 0.35);
INSERT INTO `xy_signlog` VALUES (999, 11120, 1660064739, 0.35);
INSERT INTO `xy_signlog` VALUES (1000, 10755, 1660064901, 0.35);
INSERT INTO `xy_signlog` VALUES (1001, 8170, 1660079762, 0.35);
INSERT INTO `xy_signlog` VALUES (1002, 9134, 1660084583, 0.35);
INSERT INTO `xy_signlog` VALUES (1003, 11145, 1660101677, 0.35);
INSERT INTO `xy_signlog` VALUES (1004, 11138, 1660101846, 0.35);
INSERT INTO `xy_signlog` VALUES (1005, 10984, 1660117409, 0.35);
INSERT INTO `xy_signlog` VALUES (1006, 11189, 1660118775, 0.35);
INSERT INTO `xy_signlog` VALUES (1007, 11214, 1660121464, 0.35);
INSERT INTO `xy_signlog` VALUES (1008, 11212, 1660121658, 0.35);
INSERT INTO `xy_signlog` VALUES (1009, 11216, 1660122006, 0.35);
INSERT INTO `xy_signlog` VALUES (1010, 11247, 1660134969, 0.35);
INSERT INTO `xy_signlog` VALUES (1011, 11057, 1660148083, 0.35);
INSERT INTO `xy_signlog` VALUES (1012, 10984, 1660151755, 0.35);
INSERT INTO `xy_signlog` VALUES (1013, 10494, 1660154038, 0.35);
INSERT INTO `xy_signlog` VALUES (1014, 9134, 1660172568, 0.35);
INSERT INTO `xy_signlog` VALUES (1015, 10755, 1660174456, 0.35);
INSERT INTO `xy_signlog` VALUES (1016, 11281, 1660196888, 0.35);
INSERT INTO `xy_signlog` VALUES (1017, 11120, 1660200309, 0.35);
INSERT INTO `xy_signlog` VALUES (1018, 11294, 1660203448, 0.35);
INSERT INTO `xy_signlog` VALUES (1019, 11320, 1660203742, 0.35);
INSERT INTO `xy_signlog` VALUES (1020, 11326, 1660205150, 0.35);
INSERT INTO `xy_signlog` VALUES (1021, 11329, 1660206622, 0.35);
INSERT INTO `xy_signlog` VALUES (1022, 11354, 1660218676, 0.35);
INSERT INTO `xy_signlog` VALUES (1023, 11370, 1660221818, 0.35);
INSERT INTO `xy_signlog` VALUES (1024, 11331, 1660223008, 0.35);
INSERT INTO `xy_signlog` VALUES (1025, 11387, 1660225511, 0.35);
INSERT INTO `xy_signlog` VALUES (1026, 11396, 1660228887, 0.35);
INSERT INTO `xy_signlog` VALUES (1027, 11401, 1660230499, 0.35);
INSERT INTO `xy_signlog` VALUES (1028, 9134, 1660256253, 0.35);
INSERT INTO `xy_signlog` VALUES (1029, 11401, 1660274801, 0.35);
INSERT INTO `xy_signlog` VALUES (1030, 11440, 1660279521, 0.35);
INSERT INTO `xy_signlog` VALUES (1031, 11473, 1660290262, 0.35);
INSERT INTO `xy_signlog` VALUES (1032, 11478, 1660291126, 0.35);
INSERT INTO `xy_signlog` VALUES (1033, 11515, 1660299475, 0.35);
INSERT INTO `xy_signlog` VALUES (1034, 11516, 1660299491, 0.35);
INSERT INTO `xy_signlog` VALUES (1035, 9838, 1660299791, 0.35);
INSERT INTO `xy_signlog` VALUES (1036, 11523, 1660301637, 0.35);
INSERT INTO `xy_signlog` VALUES (1037, 11537, 1660305148, 0.35);
INSERT INTO `xy_signlog` VALUES (1038, 11566, 1660314140, 0.35);
INSERT INTO `xy_signlog` VALUES (1039, 11574, 1660362590, 0.35);
INSERT INTO `xy_signlog` VALUES (1040, 11523, 1660368834, 0.35);
INSERT INTO `xy_signlog` VALUES (1041, 11632, 1660378915, 0.35);
INSERT INTO `xy_signlog` VALUES (1042, 11387, 1660383741, 0.35);
INSERT INTO `xy_signlog` VALUES (1043, 10845, 1660389949, 0.35);
INSERT INTO `xy_signlog` VALUES (1044, 11697, 1660453110, 0.35);
INSERT INTO `xy_signlog` VALUES (1045, 11708, 1660470898, 0.35);
INSERT INTO `xy_signlog` VALUES (1046, 11735, 1660883581, 0.35);
INSERT INTO `xy_signlog` VALUES (1047, 11737, 1660884674, 0.35);
INSERT INTO `xy_signlog` VALUES (1048, 11734, 1660884970, 0.35);
INSERT INTO `xy_signlog` VALUES (1049, 11730, 1660885591, 0.35);
INSERT INTO `xy_signlog` VALUES (1050, 11771, 1660894308, 0.35);
INSERT INTO `xy_signlog` VALUES (1051, 11788, 1660898116, 0.35);
INSERT INTO `xy_signlog` VALUES (1052, 9838, 1660905330, 0.35);
INSERT INTO `xy_signlog` VALUES (1053, 11837, 1660917057, 0.35);
INSERT INTO `xy_signlog` VALUES (1054, 11812, 1660955069, 0.35);
INSERT INTO `xy_signlog` VALUES (1055, 11865, 1660965220, 0.35);
INSERT INTO `xy_signlog` VALUES (1056, 11880, 1660968070, 0.35);
INSERT INTO `xy_signlog` VALUES (1057, 11890, 1660972620, 0.35);
INSERT INTO `xy_signlog` VALUES (1058, 11891, 1660972986, 0.35);
INSERT INTO `xy_signlog` VALUES (1059, 11899, 1660978741, 0.35);
INSERT INTO `xy_signlog` VALUES (1060, 11901, 1660979633, 0.35);
INSERT INTO `xy_signlog` VALUES (1061, 11918, 1660982214, 0.35);
INSERT INTO `xy_signlog` VALUES (1062, 11919, 1660983630, 0.35);
INSERT INTO `xy_signlog` VALUES (1063, 11924, 1660984361, 0.35);
INSERT INTO `xy_signlog` VALUES (1064, 11937, 1660992348, 0.35);
INSERT INTO `xy_signlog` VALUES (1065, 11945, 1660998902, 0.35);
INSERT INTO `xy_signlog` VALUES (1066, 11924, 1661044147, 0.35);
INSERT INTO `xy_signlog` VALUES (1067, 11875, 1661048544, 0.35);
INSERT INTO `xy_signlog` VALUES (1068, 11964, 1661054049, 0.35);
INSERT INTO `xy_signlog` VALUES (1069, 11966, 1661055872, 0.35);
INSERT INTO `xy_signlog` VALUES (1070, 11907, 1661059882, 0.35);
INSERT INTO `xy_signlog` VALUES (1071, 11967, 1661062322, 0.35);
INSERT INTO `xy_signlog` VALUES (1072, 11972, 1661062657, 0.35);
INSERT INTO `xy_signlog` VALUES (1073, 11945, 1661068598, 0.35);
INSERT INTO `xy_signlog` VALUES (1074, 11985, 1661080896, 0.35);
INSERT INTO `xy_signlog` VALUES (1075, 11899, 1661092053, 0.35);
INSERT INTO `xy_signlog` VALUES (1076, 11985, 1661135398, 0.35);
INSERT INTO `xy_signlog` VALUES (1077, 11907, 1661135522, 0.35);
INSERT INTO `xy_signlog` VALUES (1078, 12006, 1661169177, 0.35);
INSERT INTO `xy_signlog` VALUES (1079, 12005, 1661172514, 0.35);
INSERT INTO `xy_signlog` VALUES (1080, 11758, 1661222589, 0.35);
INSERT INTO `xy_signlog` VALUES (1081, 11919, 1661344209, 0.35);
INSERT INTO `xy_signlog` VALUES (1082, 11919, 1661421453, 0.35);
INSERT INTO `xy_signlog` VALUES (1083, 11892, 1662236099, 0.35);
INSERT INTO `xy_signlog` VALUES (1084, 12077, 1663046764, 0.35);
INSERT INTO `xy_signlog` VALUES (1085, 12079, 1663047777, 0.35);
INSERT INTO `xy_signlog` VALUES (1086, 12080, 1663053759, 0.35);
INSERT INTO `xy_signlog` VALUES (1087, 12083, 1663057906, 0.35);
INSERT INTO `xy_signlog` VALUES (1088, 12101, 1663221740, 0.35);
INSERT INTO `xy_signlog` VALUES (1089, 12113, 1663249706, 0.35);
INSERT INTO `xy_signlog` VALUES (1090, 12117, 1663336257, 0.35);
INSERT INTO `xy_signlog` VALUES (1091, 12126, 1663476296, 0.35);
INSERT INTO `xy_signlog` VALUES (1092, 12129, 1663477948, 0.35);
INSERT INTO `xy_signlog` VALUES (1093, 12137, 1663494371, 0.35);
INSERT INTO `xy_signlog` VALUES (1094, 12139, 1663503194, 0.35);
INSERT INTO `xy_signlog` VALUES (1095, 12139, 1663519318, 0.35);
INSERT INTO `xy_signlog` VALUES (1096, 12165, 1663583791, 0.35);
INSERT INTO `xy_signlog` VALUES (1097, 12170, 1663584115, 0.35);
INSERT INTO `xy_signlog` VALUES (1098, 12186, 1663588281, 0.35);
INSERT INTO `xy_signlog` VALUES (1099, 12205, 1663647878, 0.35);
INSERT INTO `xy_signlog` VALUES (1100, 12186, 1663657878, 0.35);
INSERT INTO `xy_signlog` VALUES (1101, 12229, 1666754954, 0.35);
INSERT INTO `xy_signlog` VALUES (1102, 12229, 1666944023, 0.35);
INSERT INTO `xy_signlog` VALUES (1103, 12229, 1667005947, 0.35);

-- ----------------------------
-- Table structure for xy_user_error
-- ----------------------------
DROP TABLE IF EXISTS `xy_user_error`;
CREATE TABLE `xy_user_error`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL COMMENT '用户ID',
  `addtime` int(11) NOT NULL COMMENT '记录时间',
  `oid` char(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '交易单号',
  `type` int(11) NOT NULL DEFAULT 1 COMMENT '记录类型 1解封 2违规操作 3冻结',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uid`(`uid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 56 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '会员-违规操作记录表' ROW_FORMAT = FIXED;

-- ----------------------------
-- Records of xy_user_error
-- ----------------------------

-- ----------------------------
-- Table structure for xy_users
-- ----------------------------
DROP TABLE IF EXISTS `xy_users`;
CREATE TABLE `xy_users`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tel` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `username` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '用户名',
  `nickname` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '昵称',
  `email` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '邮箱',
  `pwd` char(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '密码',
  `salt` char(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '密码盐',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '上级ID',
  `signiture` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '个性签名',
  `pwd_error_num` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '密码错误次数',
  `allow_login_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '允许登录时间',
  `real_name` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '真实姓名',
  `id_card_num` char(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '身份证号码',
  `top_pic` varchar(96) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '身份证正面图',
  `bot_pic` varchar(96) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '身份证背面图',
  `id_status` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '实名认证状态，0未审核，1审核通过，2审核不通过',
  `invite_code` char(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '邀请码',
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '注册时间',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 2 COMMENT '状态，1启用，2禁用',
  `real_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '实名时间',
  `pwd2` char(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '提现密码',
  `salt2` char(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '提现密码盐',
  `headpic` varchar(3000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '头像',
  `balance` decimal(15, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '账户余额',
  `freeze_balance` decimal(15, 2) NOT NULL DEFAULT 0.00 COMMENT '账号冻结金额',
  `login_status` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否登录状态，1：是，0否',
  `recharge_num` decimal(7, 2) NOT NULL DEFAULT 0.00 COMMENT '日充值金额',
  `deposit_num` decimal(7, 2) NOT NULL DEFAULT 0.00 COMMENT '日提现金额',
  `deal_status` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '交易状态，0交易冻结，1停止交易，2等待交易，3交易中',
  `deal_error` tinyint(1) NOT NULL DEFAULT 0 COMMENT '违规次数',
  `deal_reward_count` int(11) NOT NULL DEFAULT 0 COMMENT '奖励交易次数',
  `deal_count` int(11) NOT NULL DEFAULT 0 COMMENT '当日交易次数',
  `deal_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '最后交易日期(年月日)',
  `active` smallint(5) UNSIGNED NOT NULL DEFAULT 0 COMMENT '激活状态，0未激活(首次充值发放推广奖励)，1已激活',
  `childs` int(11) NOT NULL DEFAULT 0 COMMENT '直推用户数量',
  `kouchu_balance` decimal(15, 2) NULL DEFAULT NULL COMMENT '扣除金额',
  `kouchu_balance_uid` int(11) NULL DEFAULT NULL,
  `show_td` int(11) NULL DEFAULT 1,
  `show_cz` int(11) NULL DEFAULT 1,
  `show_tx` int(11) NULL DEFAULT 1,
  `show_tel` int(11) NULL DEFAULT 1,
  `show_num` int(11) NULL DEFAULT 1,
  `show_tel2` int(11) NULL DEFAULT 1,
  `wx_ewm` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `zfb_ewm` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `level` int(11) NULL DEFAULT NULL,
  `lixibao_balance` decimal(15, 4) NULL DEFAULT 0.0000 COMMENT '利息宝金额',
  `lixibao_dj_balance` decimal(15, 4) NULL DEFAULT 0.0000 COMMENT '利息宝冻结金额',
  `ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `is_jia` int(11) NULL DEFAULT 0,
  `activetime` int(11) NULL DEFAULT NULL,
  `deal_min_num` int(11) NULL DEFAULT NULL,
  `deal_max_num` int(11) NULL DEFAULT NULL,
  `trc20` varchar(34) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `pipei_dan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `pipei_type` int(11) NULL DEFAULT NULL,
  `pipei_grouping` int(11) NULL DEFAULT 0,
  `autoorder` int(11) NULL DEFAULT 0 COMMENT '联单开关',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `invite_code`(`invite_code`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE,
  INDEX `parent_id`(`parent_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12235 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '会员-用户表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of xy_users
-- ----------------------------
INSERT INTO `xy_users` VALUES (12229, '0630065352', 'Thongcha99', '', '', 'b23193f152b948fca337f2d01e0b2d2102e0a288', '96076', 0, '', 0, 0, '', '', '', '', 0, 'BLJ96T', 1663680070, 1, 0, '15d3df418e87d06cea47e62a16125d091c7217f5', '69436', '/static_new6/headimg/0.8612276.png', 127308.77, 0.00, 1, 0.00, 0.00, 3, 0, 0, 3, 1668009600, 0, 1, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, NULL, 0, 0.0000, 0.0000, '178.173.225.132', 0, 1668063974, 0, 0, '', '', 0, 0, 0);
INSERT INTO `xy_users` VALUES (12230, '30065352', 'angel', '', '', 'f587f1a087613ed2a30016ec58f501e8af9b8fcf', '49343', 12229, '', 0, 0, '', '', '', '', 0, 'JAPG4U', 1724677149, 1, 0, 'b59343cee68169616b131766af75cec44f060115', '41561', '', 10250.59, 0.00, 1, 0.00, 0.00, 1, 0, 0, 3, 1724774400, 0, 3, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, NULL, 0, 0.0000, 0.0000, '104.251.123.179', 0, 1724952121, 0, 0, '', '', 0, 0, 0);
INSERT INTO `xy_users` VALUES (12231, '06300653521', 'sniper', '', '', 'a3a341bde584bf3defb6d52fb1b65ba3cc519142', '7265', 12230, '', 0, 0, '', '', '', '', 0, 'QTCH9D', 1724848128, 2, 0, '', '', '', 0.00, 10000.00, 0, 0.00, 0.00, 1, 0, 0, 0, 0, 0, 0, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, NULL, 0, 0.0000, 0.0000, NULL, 0, NULL, 0, 0, NULL, NULL, NULL, 0, 0);
INSERT INTO `xy_users` VALUES (12232, '06300653223', 'suger', '', '', '545f095a1ec85b9d2c5d2e5c4a1b0972b5a44593', '68188', 12230, '', 0, 0, '', '', '', '', 0, 'WZJ7E5', 1724848255, 1, 0, '', '', '', 10136.26, 0.00, 1, 0.00, 0.00, 3, 0, 0, 1, 1724860800, 0, 1, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, NULL, 0, 0.0000, 0.0000, '36.37.245.90', 0, 1725374041, 0, 0, NULL, NULL, NULL, 0, 0);
INSERT INTO `xy_users` VALUES (12233, '+8523695426', 'ermo', '', '', '6e819b21163d51b69fa224eeb8a59739513bb221', '15781', 12230, '', 0, 0, '', '', '', '', 0, 'XAM8Z9', 1724850742, 1, 0, '', '', '', 0.00, 0.00, 1, 0.00, 0.00, 1, 0, 0, 0, 0, 0, 0, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, NULL, NULL, 0.0000, 0.0000, '49.156.46.131', 0, 1724850828, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `xy_users` VALUES (12234, '+8521234678', 'ceshi', '', '', 'ea302fc97ad14c233f525c326b6e97de93e342fc', '75261', 12232, '', 0, 0, '', '', '', '', 0, 'K9V672', 1724852746, 1, 0, '', '', '', 100.49, 0.00, 1, 0.00, 0.00, 1, 0, 0, 1, 1724774400, 0, 0, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, NULL, 0, 0.0000, 0.0000, '49.156.46.131', 0, 1724854085, 0, 0, NULL, NULL, NULL, 0, 0);

-- ----------------------------
-- Table structure for xy_verify_msg
-- ----------------------------
DROP TABLE IF EXISTS `xy_verify_msg`;
CREATE TABLE `xy_verify_msg`  (
  `tel` char(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '用户ID',
  `msg` char(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '验证码',
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '发送时间',
  `type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '类型，1注册,2修改密码，3修改二级密码',
  PRIMARY KEY (`tel`) USING BTREE,
  INDEX `type`(`type`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = FIXED;

-- ----------------------------
-- Records of xy_verify_msg
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
