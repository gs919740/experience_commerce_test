/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 100411
 Source Host           : localhost:3306
 Source Schema         : experience_commerce

 Target Server Type    : MySQL
 Target Server Version : 100411
 File Encoding         : 65001

 Date: 07/06/2020 22:57:41
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for employee_timesheet
-- ----------------------------
DROP TABLE IF EXISTS `employee_timesheet`;
CREATE TABLE `employee_timesheet`  (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `employeeid` int(30) NULL DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `date` date NULL DEFAULT NULL,
  `working_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `start` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `end` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `store_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `store_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 149 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of employee_timesheet
-- ----------------------------
INSERT INTO `employee_timesheet` VALUES (1, 1237780, 'kimmy ', '2019-10-15', 'working time', '8:00', '19:00', 'RAJD6000883', 'Junbo Store');
INSERT INTO `employee_timesheet` VALUES (2, 1237780, 'kimmy ', '2019-10-15', 'lunch', '12:00', '13:00', 'RAJD6000883', '');
INSERT INTO `employee_timesheet` VALUES (3, 1237780, 'kimmy ', '2019-10-15', 'training', '16:00', '17:00', 'RAJD6000883', 'Multiplex samsung');
INSERT INTO `employee_timesheet` VALUES (4, 1237780, 'kimmy ', '2019-10-15', 'route', '18:00', '19:00', 'RAJD6000883', 'ABC Mart');
INSERT INTO `employee_timesheet` VALUES (5, 1237780, 'kimmy ', '2019-10-15', 'working time', '8:00', '19:00', 'RAJD6000883', 'Junbo Store');
INSERT INTO `employee_timesheet` VALUES (6, 1237780, 'kimmy ', '2019-10-15', 'lunch', '12:00', '13:00', 'RAJD6000883', '');
INSERT INTO `employee_timesheet` VALUES (7, 1237780, 'kimmy ', '2019-10-15', 'training', '16:00', '17:00', 'RAJD6000883', 'Multiplex samsung');
INSERT INTO `employee_timesheet` VALUES (8, 1237780, 'kimmy ', '2019-10-15', 'route', '18:00', '19:00', 'RAJD6000883', 'ABC Mart');
INSERT INTO `employee_timesheet` VALUES (9, 1237780, 'kimmy ', '2019-10-15', 'working time', '8:00', '19:00', 'RAJD6000883', 'Junbo Store');
INSERT INTO `employee_timesheet` VALUES (10, 1237780, 'kimmy ', '2019-10-15', 'lunch', '12:00', '13:00', 'RAJD6000883', '');
INSERT INTO `employee_timesheet` VALUES (11, 1237780, 'kimmy ', '2019-10-15', 'training', '16:00', '17:00', 'RAJD6000883', 'Multiplex samsung');
INSERT INTO `employee_timesheet` VALUES (12, 1237780, 'kimmy ', '2019-10-15', 'route', '18:00', '19:00', 'RAJD6000883', 'ABC Mart');
INSERT INTO `employee_timesheet` VALUES (13, 1237780, 'kimmy ', '2019-10-15', 'working time', '8:00', '19:00', 'RAJD6000883', 'Junbo Store');
INSERT INTO `employee_timesheet` VALUES (14, 1237780, 'kimmy ', '2019-10-15', 'lunch', '12:00', '13:00', 'RAJD6000883', '');
INSERT INTO `employee_timesheet` VALUES (15, 1237780, 'kimmy ', '2019-10-15', 'training', '16:00', '17:00', 'RAJD6000883', 'Multiplex samsung');
INSERT INTO `employee_timesheet` VALUES (16, 1237780, 'kimmy ', '2019-10-15', 'route', '18:00', '19:00', 'RAJD6000883', 'ABC Mart');
INSERT INTO `employee_timesheet` VALUES (17, 1237780, 'kimmy ', '2019-10-15', 'working time', '8:00', '19:00', 'RAJD6000883', 'Junbo Store');
INSERT INTO `employee_timesheet` VALUES (18, 1237780, 'kimmy ', '2019-10-15', 'lunch', '12:00', '13:00', 'RAJD6000883', '');
INSERT INTO `employee_timesheet` VALUES (19, 1237780, 'kimmy ', '2019-10-15', 'training', '16:00', '17:00', 'RAJD6000883', 'Multiplex samsung');
INSERT INTO `employee_timesheet` VALUES (20, 1237780, 'kimmy ', '2019-10-15', 'route', '18:00', '19:00', 'RAJD6000883', 'ABC Mart');
INSERT INTO `employee_timesheet` VALUES (21, 1237780, 'kimmy ', '2019-10-15', 'working time', '8:00', '19:00', 'RAJD6000883', 'Junbo Store');
INSERT INTO `employee_timesheet` VALUES (22, 1237780, 'kimmy ', '2019-10-15', 'lunch', '12:00', '13:00', 'RAJD6000883', '');
INSERT INTO `employee_timesheet` VALUES (23, 1237780, 'kimmy ', '2019-10-15', 'training', '16:00', '17:00', 'RAJD6000883', 'Multiplex samsung');
INSERT INTO `employee_timesheet` VALUES (24, 1237780, 'kimmy ', '2019-10-15', 'route', '18:00', '19:00', 'RAJD6000883', 'ABC Mart');
INSERT INTO `employee_timesheet` VALUES (25, 1237780, 'kimmy ', '2019-10-15', 'working time', '8:00', '19:00', 'RAJD6000883', 'Junbo Store');
INSERT INTO `employee_timesheet` VALUES (26, 1237780, 'kimmy ', '2019-10-15', 'lunch', '12:00', '13:00', 'RAJD6000883', '');
INSERT INTO `employee_timesheet` VALUES (27, 1237780, 'kimmy ', '2019-10-15', 'training', '16:00', '17:00', 'RAJD6000883', 'Multiplex samsung');
INSERT INTO `employee_timesheet` VALUES (28, 1237780, 'kimmy ', '2019-10-15', 'route', '18:00', '19:00', 'RAJD6000883', 'ABC Mart');
INSERT INTO `employee_timesheet` VALUES (29, 1237780, 'kimmy ', '2019-10-15', 'working time', '8:00', '19:00', 'RAJD6000883', 'Junbo Store');
INSERT INTO `employee_timesheet` VALUES (30, 1237780, 'kimmy ', '2019-10-15', 'lunch', '12:00', '13:00', 'RAJD6000883', '');
INSERT INTO `employee_timesheet` VALUES (31, 1237780, 'kimmy ', '2019-10-15', 'training', '16:00', '17:00', 'RAJD6000883', 'Multiplex samsung');
INSERT INTO `employee_timesheet` VALUES (32, 1237780, 'kimmy ', '2019-10-15', 'route', '18:00', '19:00', 'RAJD6000883', 'ABC Mart');
INSERT INTO `employee_timesheet` VALUES (33, 1237780, 'kimmy ', '2019-10-15', 'working time', '8:00', '19:00', 'RAJD6000883', 'Junbo Store');
INSERT INTO `employee_timesheet` VALUES (34, 1237780, 'kimmy ', '2019-10-15', 'lunch', '12:00', '13:00', 'RAJD6000883', '');
INSERT INTO `employee_timesheet` VALUES (35, 1237780, 'kimmy ', '2019-10-15', 'training', '16:00', '17:00', 'RAJD6000883', 'Multiplex samsung');
INSERT INTO `employee_timesheet` VALUES (36, 1237780, 'kimmy ', '2019-10-15', 'route', '18:00', '19:00', 'RAJD6000883', 'ABC Mart');
INSERT INTO `employee_timesheet` VALUES (37, 1237780, 'kimmy ', '2019-10-15', 'working time', '8:00', '19:00', 'RAJD6000883', 'Junbo Store');
INSERT INTO `employee_timesheet` VALUES (38, 1237780, 'kimmy ', '2019-10-15', 'lunch', '12:00', '13:00', 'RAJD6000883', '');
INSERT INTO `employee_timesheet` VALUES (39, 1237780, 'kimmy ', '2019-10-15', 'training', '16:00', '17:00', 'RAJD6000883', 'Multiplex samsung');
INSERT INTO `employee_timesheet` VALUES (40, 1237780, 'kimmy ', '2019-10-15', 'route', '18:00', '19:00', 'RAJD6000883', 'ABC Mart');
INSERT INTO `employee_timesheet` VALUES (41, 1237780, 'kimmy ', '2019-10-15', 'working time', '8:00', '19:00', 'RAJD6000883', 'Junbo Store');
INSERT INTO `employee_timesheet` VALUES (42, 1237780, 'kimmy ', '2019-10-15', 'lunch', '12:00', '13:00', 'RAJD6000883', '');
INSERT INTO `employee_timesheet` VALUES (43, 1237780, 'kimmy ', '2019-10-15', 'training', '16:00', '17:00', 'RAJD6000883', 'Multiplex samsung');
INSERT INTO `employee_timesheet` VALUES (44, 1237780, 'kimmy ', '2019-10-15', 'route', '18:00', '19:00', 'RAJD6000883', 'ABC Mart');
INSERT INTO `employee_timesheet` VALUES (45, 1237780, 'kimmy ', '2019-10-15', 'working time', '8:00', '19:00', 'RAJD6000883', 'Junbo Store');
INSERT INTO `employee_timesheet` VALUES (46, 1237780, 'kimmy ', '2019-10-15', 'lunch', '12:00', '13:00', 'RAJD6000883', '');
INSERT INTO `employee_timesheet` VALUES (47, 1237780, 'kimmy ', '2019-10-15', 'training', '16:00', '17:00', 'RAJD6000883', 'Multiplex samsung');
INSERT INTO `employee_timesheet` VALUES (48, 1237780, 'kimmy ', '2019-10-15', 'route', '18:00', '19:00', 'RAJD6000883', 'ABC Mart');
INSERT INTO `employee_timesheet` VALUES (49, 1237780, 'kimmy ', '2019-10-15', 'working time', '8:00', '19:00', 'RAJD6000883', 'Junbo Store');
INSERT INTO `employee_timesheet` VALUES (50, 1237780, 'kimmy ', '2019-10-15', 'lunch', '12:00', '13:00', 'RAJD6000883', '');
INSERT INTO `employee_timesheet` VALUES (51, 1237780, 'kimmy ', '2019-10-15', 'training', '16:00', '17:00', 'RAJD6000883', 'Multiplex samsung');
INSERT INTO `employee_timesheet` VALUES (52, 1237780, 'kimmy ', '2019-10-15', 'route', '18:00', '19:00', 'RAJD6000883', 'ABC Mart');
INSERT INTO `employee_timesheet` VALUES (53, 1237780, 'kimmy ', '2019-10-15', 'working time', '8:00', '19:00', 'RAJD6000883', 'Junbo Store');
INSERT INTO `employee_timesheet` VALUES (54, 1237780, 'kimmy ', '2019-10-15', 'lunch', '12:00', '13:00', 'RAJD6000883', '');
INSERT INTO `employee_timesheet` VALUES (55, 1237780, 'kimmy ', '2019-10-15', 'training', '16:00', '17:00', 'RAJD6000883', 'Multiplex samsung');
INSERT INTO `employee_timesheet` VALUES (56, 1237780, 'kimmy ', '2019-10-15', 'route', '18:00', '19:00', 'RAJD6000883', 'ABC Mart');
INSERT INTO `employee_timesheet` VALUES (57, 1237780, 'kimmy ', '2019-10-15', 'working time', '8:00', '19:00', 'RAJD6000883', 'Junbo Store');
INSERT INTO `employee_timesheet` VALUES (58, 1237780, 'kimmy ', '2019-10-15', 'lunch', '12:00', '13:00', 'RAJD6000883', '');
INSERT INTO `employee_timesheet` VALUES (59, 1237780, 'kimmy ', '2019-10-15', 'training', '16:00', '17:00', 'RAJD6000883', 'Multiplex samsung');
INSERT INTO `employee_timesheet` VALUES (60, 1237780, 'kimmy ', '2019-10-15', 'route', '18:00', '19:00', 'RAJD6000883', 'ABC Mart');
INSERT INTO `employee_timesheet` VALUES (61, 1237780, 'kimmy ', '2019-10-15', 'working time', '8:00', '19:00', 'RAJD6000883', 'Junbo Store');
INSERT INTO `employee_timesheet` VALUES (62, 1237780, 'kimmy ', '2019-10-15', 'lunch', '12:00', '13:00', 'RAJD6000883', '');
INSERT INTO `employee_timesheet` VALUES (63, 1237780, 'kimmy ', '2019-10-15', 'training', '16:00', '17:00', 'RAJD6000883', 'Multiplex samsung');
INSERT INTO `employee_timesheet` VALUES (64, 1237780, 'kimmy ', '2019-10-15', 'route', '18:00', '19:00', 'RAJD6000883', 'ABC Mart');
INSERT INTO `employee_timesheet` VALUES (65, 1237780, 'kimmy ', '2019-10-15', 'working time', '8:00', '19:00', 'RAJD6000883', 'Junbo Store');
INSERT INTO `employee_timesheet` VALUES (66, 1237780, 'kimmy ', '2019-10-15', 'lunch', '12:00', '13:00', 'RAJD6000883', '');
INSERT INTO `employee_timesheet` VALUES (67, 1237780, 'kimmy ', '2019-10-15', 'training', '16:00', '17:00', 'RAJD6000883', 'Multiplex samsung');
INSERT INTO `employee_timesheet` VALUES (68, 1237780, 'kimmy ', '2019-10-15', 'route', '18:00', '19:00', 'RAJD6000883', 'ABC Mart');
INSERT INTO `employee_timesheet` VALUES (69, 1237780, 'kimmy ', '2019-10-15', 'working time', '8:00', '19:00', 'RAJD6000883', 'Junbo Store');
INSERT INTO `employee_timesheet` VALUES (70, 1237780, 'kimmy ', '2019-10-15', 'lunch', '12:00', '13:00', 'RAJD6000883', '');
INSERT INTO `employee_timesheet` VALUES (71, 1237780, 'kimmy ', '2019-10-15', 'training', '16:00', '17:00', 'RAJD6000883', 'Multiplex samsung');
INSERT INTO `employee_timesheet` VALUES (72, 1237780, 'kimmy ', '2019-10-15', 'route', '18:00', '19:00', 'RAJD6000883', 'ABC Mart');
INSERT INTO `employee_timesheet` VALUES (73, 1237780, 'kimmy ', '2019-10-15', 'working time', '8:00', '19:00', 'RAJD6000883', 'Junbo Store');
INSERT INTO `employee_timesheet` VALUES (74, 1237780, 'kimmy ', '2019-10-15', 'lunch', '12:00', '13:00', 'RAJD6000883', '');
INSERT INTO `employee_timesheet` VALUES (75, 1237780, 'kimmy ', '2019-10-15', 'training', '16:00', '17:00', 'RAJD6000883', 'Multiplex samsung');
INSERT INTO `employee_timesheet` VALUES (76, 1237780, 'kimmy ', '2019-10-15', 'route', '18:00', '19:00', 'RAJD6000883', 'ABC Mart');
INSERT INTO `employee_timesheet` VALUES (77, 1237780, 'kimmy ', '2019-10-15', 'working time', '8:00', '19:00', 'RAJD6000883', 'Junbo Store');
INSERT INTO `employee_timesheet` VALUES (78, 1237780, 'kimmy ', '2019-10-15', 'lunch', '12:00', '13:00', 'RAJD6000883', '');
INSERT INTO `employee_timesheet` VALUES (79, 1237780, 'kimmy ', '2019-10-15', 'training', '16:00', '17:00', 'RAJD6000883', 'Multiplex samsung');
INSERT INTO `employee_timesheet` VALUES (80, 1237780, 'kimmy ', '2019-10-15', 'route', '18:00', '19:00', 'RAJD6000883', 'ABC Mart');
INSERT INTO `employee_timesheet` VALUES (81, 1237780, 'kimmy ', '2019-10-15', 'working time', '8:00', '19:00', 'RAJD6000883', 'Junbo Store');
INSERT INTO `employee_timesheet` VALUES (82, 1237780, 'kimmy ', '2019-10-15', 'lunch', '12:00', '13:00', 'RAJD6000883', '');
INSERT INTO `employee_timesheet` VALUES (83, 1237780, 'kimmy ', '2019-10-15', 'training', '16:00', '17:00', 'RAJD6000883', 'Multiplex samsung');
INSERT INTO `employee_timesheet` VALUES (84, 1237780, 'kimmy ', '2019-10-15', 'route', '18:00', '19:00', 'RAJD6000883', 'ABC Mart');
INSERT INTO `employee_timesheet` VALUES (85, 1237780, 'kimmy ', '2019-10-15', 'working time', '8:00', '19:00', 'RAJD6000883', 'Junbo Store');
INSERT INTO `employee_timesheet` VALUES (86, 1237780, 'kimmy ', '2019-10-15', 'lunch', '12:00', '13:00', 'RAJD6000883', '');
INSERT INTO `employee_timesheet` VALUES (87, 1237780, 'kimmy ', '2019-10-15', 'training', '16:00', '17:00', 'RAJD6000883', 'Multiplex samsung');
INSERT INTO `employee_timesheet` VALUES (88, 1237780, 'kimmy ', '2019-10-15', 'route', '18:00', '19:00', 'RAJD6000883', 'ABC Mart');
INSERT INTO `employee_timesheet` VALUES (89, 1237780, 'kimmy ', '2019-10-15', 'working time', '8:00', '19:00', 'RAJD6000883', 'Junbo Store');
INSERT INTO `employee_timesheet` VALUES (90, 1237780, 'kimmy ', '2019-10-15', 'lunch', '12:00', '13:00', 'RAJD6000883', '');
INSERT INTO `employee_timesheet` VALUES (91, 1237780, 'kimmy ', '2019-10-15', 'training', '16:00', '17:00', 'RAJD6000883', 'Multiplex samsung');
INSERT INTO `employee_timesheet` VALUES (92, 1237780, 'kimmy ', '2019-10-15', 'route', '18:00', '19:00', 'RAJD6000883', 'ABC Mart');
INSERT INTO `employee_timesheet` VALUES (93, 1237780, 'kimmy ', '2019-10-15', 'working time', '8:00', '19:00', 'RAJD6000883', 'Junbo Store');
INSERT INTO `employee_timesheet` VALUES (94, 1237780, 'kimmy ', '2019-10-15', 'lunch', '12:00', '13:00', 'RAJD6000883', '');
INSERT INTO `employee_timesheet` VALUES (95, 1237780, 'kimmy ', '2019-10-15', 'training', '16:00', '17:00', 'RAJD6000883', 'Multiplex samsung');
INSERT INTO `employee_timesheet` VALUES (96, 1237780, 'kimmy ', '2019-10-15', 'route', '18:00', '19:00', 'RAJD6000883', 'ABC Mart');
INSERT INTO `employee_timesheet` VALUES (97, 1237780, 'kimmy ', '2019-10-15', 'working time', '8:00', '19:00', 'RAJD6000883', 'Junbo Store');
INSERT INTO `employee_timesheet` VALUES (98, 1237780, 'kimmy ', '2019-10-15', 'lunch', '12:00', '13:00', 'RAJD6000883', '');
INSERT INTO `employee_timesheet` VALUES (99, 1237780, 'kimmy ', '2019-10-15', 'training', '16:00', '17:00', 'RAJD6000883', 'Multiplex samsung');
INSERT INTO `employee_timesheet` VALUES (100, 1237780, 'kimmy ', '2019-10-15', 'route', '18:00', '19:00', 'RAJD6000883', 'ABC Mart');
INSERT INTO `employee_timesheet` VALUES (101, 1237780, 'kimmy ', '2019-10-15', 'working time', '8:00', '19:00', 'RAJD6000883', 'Junbo Store');
INSERT INTO `employee_timesheet` VALUES (102, 1237780, 'kimmy ', '2019-10-15', 'lunch', '12:00', '13:00', 'RAJD6000883', '');
INSERT INTO `employee_timesheet` VALUES (103, 1237780, 'kimmy ', '2019-10-15', 'training', '16:00', '17:00', 'RAJD6000883', 'Multiplex samsung');
INSERT INTO `employee_timesheet` VALUES (104, 1237780, 'kimmy ', '2019-10-15', 'route', '18:00', '19:00', 'RAJD6000883', 'ABC Mart');
INSERT INTO `employee_timesheet` VALUES (105, 1237780, 'kimmy ', '2019-10-15', 'working time', '8:00', '19:00', 'RAJD6000883', 'Junbo Store');
INSERT INTO `employee_timesheet` VALUES (106, 1237780, 'kimmy ', '2019-10-15', 'lunch', '12:00', '13:00', 'RAJD6000883', '');
INSERT INTO `employee_timesheet` VALUES (107, 1237780, 'kimmy ', '2019-10-15', 'training', '16:00', '17:00', 'RAJD6000883', 'Multiplex samsung');
INSERT INTO `employee_timesheet` VALUES (108, 1237780, 'kimmy ', '2019-10-15', 'route', '18:00', '19:00', 'RAJD6000883', 'ABC Mart');
INSERT INTO `employee_timesheet` VALUES (109, 1237780, 'kimmy ', '2019-10-15', 'working time', '8:00', '19:00', 'RAJD6000883', 'Junbo Store');
INSERT INTO `employee_timesheet` VALUES (110, 1237780, 'kimmy ', '2019-10-15', 'lunch', '12:00', '13:00', 'RAJD6000883', '');
INSERT INTO `employee_timesheet` VALUES (111, 1237780, 'kimmy ', '2019-10-15', 'training', '16:00', '17:00', 'RAJD6000883', 'Multiplex samsung');
INSERT INTO `employee_timesheet` VALUES (112, 1237780, 'kimmy ', '2019-10-15', 'route', '18:00', '19:00', 'RAJD6000883', 'ABC Mart');
INSERT INTO `employee_timesheet` VALUES (113, 1237780, 'kimmy ', '2019-10-15', 'working time', '8:00', '19:00', 'RAJD6000883', 'Junbo Store');
INSERT INTO `employee_timesheet` VALUES (114, 1237780, 'kimmy ', '2019-10-15', 'lunch', '12:00', '13:00', 'RAJD6000883', '');
INSERT INTO `employee_timesheet` VALUES (115, 1237780, 'kimmy ', '2019-10-15', 'training', '16:00', '17:00', 'RAJD6000883', 'Multiplex samsung');
INSERT INTO `employee_timesheet` VALUES (116, 1237780, 'kimmy ', '2019-10-15', 'route', '18:00', '19:00', 'RAJD6000883', 'ABC Mart');
INSERT INTO `employee_timesheet` VALUES (117, 1237780, 'kimmy ', '2019-10-15', 'working time', '8:00', '19:00', 'RAJD6000883', 'Junbo Store');
INSERT INTO `employee_timesheet` VALUES (118, 1237780, 'kimmy ', '2019-10-15', 'lunch', '12:00', '13:00', 'RAJD6000883', '');
INSERT INTO `employee_timesheet` VALUES (119, 1237780, 'kimmy ', '2019-10-15', 'training', '16:00', '17:00', 'RAJD6000883', 'Multiplex samsung');
INSERT INTO `employee_timesheet` VALUES (120, 1237780, 'kimmy ', '2019-10-15', 'route', '18:00', '19:00', 'RAJD6000883', 'ABC Mart');
INSERT INTO `employee_timesheet` VALUES (121, 1237780, 'kimmy ', '2019-10-15', 'working time', '8:00', '19:00', 'RAJD6000883', 'Junbo Store');
INSERT INTO `employee_timesheet` VALUES (122, 1237780, 'kimmy ', '2019-10-15', 'lunch', '12:00', '13:00', 'RAJD6000883', '');
INSERT INTO `employee_timesheet` VALUES (123, 1237780, 'kimmy ', '2019-10-15', 'training', '16:00', '17:00', 'RAJD6000883', 'Multiplex samsung');
INSERT INTO `employee_timesheet` VALUES (124, 1237780, 'kimmy ', '2019-10-15', 'route', '18:00', '19:00', 'RAJD6000883', 'ABC Mart');
INSERT INTO `employee_timesheet` VALUES (125, 1237780, 'kimmy ', '2019-10-15', 'working time', '8:00', '19:00', 'RAJD6000883', 'Junbo Store');
INSERT INTO `employee_timesheet` VALUES (126, 1237780, 'kimmy ', '2019-10-15', 'lunch', '12:00', '13:00', 'RAJD6000883', '');
INSERT INTO `employee_timesheet` VALUES (127, 1237780, 'kimmy ', '2019-10-15', 'training', '16:00', '17:00', 'RAJD6000883', 'Multiplex samsung');
INSERT INTO `employee_timesheet` VALUES (128, 1237780, 'kimmy ', '2019-10-15', 'route', '18:00', '19:00', 'RAJD6000883', 'ABC Mart');
INSERT INTO `employee_timesheet` VALUES (129, 1237780, 'kimmy ', '2019-10-15', 'working time', '8:00', '19:00', 'RAJD6000883', 'Junbo Store');
INSERT INTO `employee_timesheet` VALUES (130, 1237780, 'kimmy ', '2019-10-15', 'lunch', '12:00', '13:00', 'RAJD6000883', '');
INSERT INTO `employee_timesheet` VALUES (131, 1237780, 'kimmy ', '2019-10-15', 'training', '16:00', '17:00', 'RAJD6000883', 'Multiplex samsung');
INSERT INTO `employee_timesheet` VALUES (132, 1237780, 'kimmy ', '2019-10-15', 'route', '18:00', '19:00', 'RAJD6000883', 'ABC Mart');
INSERT INTO `employee_timesheet` VALUES (133, 1237780, 'kimmy ', '2019-10-15', 'working time', '8:00', '19:00', 'RAJD6000883', 'Junbo Store');
INSERT INTO `employee_timesheet` VALUES (134, 1237780, 'kimmy ', '2019-10-15', 'lunch', '12:00', '13:00', 'RAJD6000883', '');
INSERT INTO `employee_timesheet` VALUES (135, 1237780, 'kimmy ', '2019-10-15', 'training', '16:00', '17:00', 'RAJD6000883', 'Multiplex samsung');
INSERT INTO `employee_timesheet` VALUES (136, 1237780, 'kimmy ', '2019-10-15', 'route', '18:00', '19:00', 'RAJD6000883', 'ABC Mart');
INSERT INTO `employee_timesheet` VALUES (137, 1237780, 'kimmy ', '2019-10-15', 'working time', '8:00', '19:00', 'RAJD6000883', 'Junbo Store');
INSERT INTO `employee_timesheet` VALUES (138, 1237780, 'kimmy ', '2019-10-15', 'lunch', '12:00', '13:00', 'RAJD6000883', '');
INSERT INTO `employee_timesheet` VALUES (139, 1237780, 'kimmy ', '2019-10-15', 'training', '16:00', '17:00', 'RAJD6000883', 'Multiplex samsung');
INSERT INTO `employee_timesheet` VALUES (140, 1237780, 'kimmy ', '2019-10-15', 'route', '18:00', '19:00', 'RAJD6000883', 'ABC Mart');
INSERT INTO `employee_timesheet` VALUES (141, 1237780, 'kimmy ', '2019-10-15', 'working time', '8:00', '19:00', 'RAJD6000883', 'Junbo Store');
INSERT INTO `employee_timesheet` VALUES (142, 1237780, 'kimmy ', '2019-10-15', 'lunch', '12:00', '13:00', 'RAJD6000883', '');
INSERT INTO `employee_timesheet` VALUES (143, 1237780, 'kimmy ', '2019-10-15', 'training', '16:00', '17:00', 'RAJD6000883', 'Multiplex samsung');
INSERT INTO `employee_timesheet` VALUES (144, 1237780, 'kimmy ', '2019-10-15', 'route', '18:00', '19:00', 'RAJD6000883', 'ABC Mart');
INSERT INTO `employee_timesheet` VALUES (145, 1237780, 'kimmy ', '2019-10-15', 'working time', '8:00', '19:00', 'RAJD6000883', 'Junbo Store');
INSERT INTO `employee_timesheet` VALUES (146, 1237780, 'kimmy ', '2019-10-15', 'lunch', '12:00', '13:00', 'RAJD6000883', '');
INSERT INTO `employee_timesheet` VALUES (147, 1237780, 'kimmy ', '2019-10-15', 'training', '16:00', '17:00', 'RAJD6000883', 'Multiplex samsung');
INSERT INTO `employee_timesheet` VALUES (148, 1237780, 'kimmy ', '2019-10-15', 'route', '18:00', '19:00', 'RAJD6000883', 'ABC Mart');

-- ----------------------------
-- Table structure for mode
-- ----------------------------
DROP TABLE IF EXISTS `mode`;
CREATE TABLE `mode`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mode
-- ----------------------------
INSERT INTO `mode` VALUES (1, 'Bike');
INSERT INTO `mode` VALUES (2, 'Bus');
INSERT INTO `mode` VALUES (3, 'Taxi');
INSERT INTO `mode` VALUES (4, 'Train');
INSERT INTO `mode` VALUES (5, 'auto');
INSERT INTO `mode` VALUES (6, 'other');

-- ----------------------------
-- Table structure for purpose
-- ----------------------------
DROP TABLE IF EXISTS `purpose`;
CREATE TABLE `purpose`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of purpose
-- ----------------------------
INSERT INTO `purpose` VALUES (1, 'Market Visit');
INSERT INTO `purpose` VALUES (2, 'Other city travel');
INSERT INTO `purpose` VALUES (3, 'Office visit');
INSERT INTO `purpose` VALUES (4, 'Training');
INSERT INTO `purpose` VALUES (5, 'other');

-- ----------------------------
-- Table structure for reimbursement
-- ----------------------------
DROP TABLE IF EXISTS `reimbursement`;
CREATE TABLE `reimbursement`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `month` date NULL DEFAULT NULL,
  `createddate` datetime(0) NULL DEFAULT current_timestamp() ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of reimbursement
-- ----------------------------
INSERT INTO `reimbursement` VALUES (3, 'conveyance', '2020-05-01', NULL);
INSERT INTO `reimbursement` VALUES (4, 'conveyance', '2020-05-01', NULL);
INSERT INTO `reimbursement` VALUES (5, 'conveyance', '2020-05-01', NULL);
INSERT INTO `reimbursement` VALUES (6, 'conveyance', '2020-05-01', NULL);
INSERT INTO `reimbursement` VALUES (7, 'conveyance', '2020-05-01', NULL);
INSERT INTO `reimbursement` VALUES (8, 'conveyance', '2020-05-01', NULL);
INSERT INTO `reimbursement` VALUES (9, 'conveyance', '2020-05-01', NULL);
INSERT INTO `reimbursement` VALUES (10, 'conveyance', '2020-05-01', NULL);
INSERT INTO `reimbursement` VALUES (11, 'conveyance', '2020-05-01', NULL);
INSERT INTO `reimbursement` VALUES (12, 'hotel', '2020-05-01', '2020-06-07 22:11:30');
INSERT INTO `reimbursement` VALUES (13, 'hotel', '2020-05-01', '2020-06-07 22:22:18');

-- ----------------------------
-- Table structure for reimbursement_rel
-- ----------------------------
DROP TABLE IF EXISTS `reimbursement_rel`;
CREATE TABLE `reimbursement_rel`  (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `reimbursement_id` int(50) NULL DEFAULT NULL,
  `date` date NULL DEFAULT NULL,
  `from` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `to` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `purpose` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `pur_other_desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `mode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `mode_other_desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `distance` double(11, 0) NULL DEFAULT NULL,
  `invoiceno` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `amount` double(14, 0) NULL DEFAULT NULL,
  `attachment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `from_date` date NULL DEFAULT NULL,
  `to_date` date NULL DEFAULT NULL,
  `hotelname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of reimbursement_rel
-- ----------------------------
INSERT INTO `reimbursement_rel` VALUES (1, 10, '2020-05-12', 'abc', 'abc', 'Training', NULL, 'Bike', NULL, 0, '', 2020, 'e63a5cc4833ecd96870efd826904aa49.png', NULL, NULL, NULL);
INSERT INTO `reimbursement_rel` VALUES (2, 10, '2020-05-12', 'pqr', 'abc', 'Training', NULL, 'Bike', NULL, 0, '', 32, 'eac45c559f2f6872bd3c9e4df903c093.png', NULL, NULL, NULL);
INSERT INTO `reimbursement_rel` VALUES (3, 11, '2020-05-12', 'abc', 'abc', 'Training', NULL, 'Bike', NULL, 0, '', 2020, '7c5cc516c5956b5abef3c31af370eee3.png', NULL, NULL, NULL);
INSERT INTO `reimbursement_rel` VALUES (4, 11, '2020-05-12', 'pqr', 'abc', 'Training', NULL, 'Bike', NULL, 0, '', 32, 'f4c74b12a5a3af8fb5ed345521db6ee0.png', NULL, NULL, NULL);
INSERT INTO `reimbursement_rel` VALUES (5, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', 32, '0c15090440e104cd5889f4d3247ddb18.png', '2020-05-01', '2020-05-03', 'avs');
INSERT INTO `reimbursement_rel` VALUES (6, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', 453, 'a7a3b7692807e351630d721e98858053.png', '2020-05-11', '2020-05-13', 'ayer');
INSERT INTO `reimbursement_rel` VALUES (7, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', 32, '173561b42a7ce50dbd335a1a33cad25e.png', '2020-05-01', '2020-05-03', 'avs');
INSERT INTO `reimbursement_rel` VALUES (8, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', 453, '784dce22c511d106b50a02839d31f07b.png', '2020-05-11', '2020-05-13', 'ayer');

SET FOREIGN_KEY_CHECKS = 1;
