/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50723
 Source Host           : localhost:3306
 Source Schema         : sell

 Target Server Type    : MySQL
 Target Server Version : 50723
 File Encoding         : 65001

 Date: 04/01/2020 20:27:47
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for order_detail
-- ----------------------------
DROP TABLE IF EXISTS `order_detail`;
CREATE TABLE `order_detail`  (
  `detail_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `order_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `product_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `product_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品名称',
  `product_price` decimal(8, 2) NOT NULL COMMENT '当前价格,单位分',
  `product_quantity` int(11) NOT NULL COMMENT '数量',
  `product_icon` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '小图',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  PRIMARY KEY (`detail_id`) USING BTREE,
  INDEX `idx_order_id`(`order_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_detail
-- ----------------------------
INSERT INTO `order_detail` VALUES ('1234567810', '1578114604894631871', '123456', '皮蛋粥', 2.20, 3, 'http://xxxx.jpg', '2020-01-04 12:23:36', '2020-01-04 15:44:40');
INSERT INTO `order_detail` VALUES ('1234567811', '1578114605422891493', '123456', '皮蛋粥', 2.20, 3, 'http://xxxx.jpg', '2020-01-04 15:44:08', '2020-01-04 15:44:42');
INSERT INTO `order_detail` VALUES ('1234567812', '1578114605422891493', '123456', '皮蛋粥', 2.20, 3, 'http://xxxx.jpg', '2020-01-04 16:07:09', '2020-01-04 16:08:16');
INSERT INTO `order_detail` VALUES ('1234567813', '1578114605435558784', '123456', '皮蛋粥', 2.20, 3, 'http://xxxx.jpg', '2020-01-04 16:21:41', '2020-01-04 16:22:15');

-- ----------------------------
-- Table structure for order_master
-- ----------------------------
DROP TABLE IF EXISTS `order_master`;
CREATE TABLE `order_master`  (
  `order_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `buyer_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '买家名字',
  `buyer_phone` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '买家电话',
  `buyer_address` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '买家地址',
  `buyer_openid` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '买家微信openid',
  `order_amount` decimal(8, 2) NOT NULL COMMENT '订单总金额',
  `order_status` tinyint(3) NOT NULL DEFAULT 0 COMMENT '订单状态, 默认为新下单',
  `pay_status` tinyint(3) NOT NULL DEFAULT 0 COMMENT '支付状态, 默认未支付',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  PRIMARY KEY (`order_id`) USING BTREE,
  INDEX `idx_buyer_openid`(`buyer_openid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_master
-- ----------------------------
INSERT INTO `order_master` VALUES ('1234567', '师兄', '123456789123', '幕课网', '110110', 0.01, 2, 0, '2020-01-04 12:21:56', '2020-01-04 15:36:59');
INSERT INTO `order_master` VALUES ('1578114604894631871', '师兄', '13653647635', '幕课网', '110110', 0.01, 2, 0, '2020-01-04 13:10:05', '2020-01-04 15:45:01');
INSERT INTO `order_master` VALUES ('1578114605422891493', '师兄', '13653647635', '幕课网', '110110', 0.01, 2, 0, '2020-01-04 13:10:05', '2020-01-04 16:10:04');
INSERT INTO `order_master` VALUES ('1578114605435558784', '师兄', '13653647635', '幕课网', '110110', 0.01, 1, 0, '2020-01-04 13:10:05', '2020-01-04 16:21:54');
INSERT INTO `order_master` VALUES ('1578114605451189456', '师兄', '13653647635', '幕课网', '110110', 0.01, 0, 0, '2020-01-04 13:10:05', '2020-01-04 13:10:05');
INSERT INTO `order_master` VALUES ('1578114605462741326', '师兄', '13653647635', '幕课网', '110110', 0.01, 0, 0, '2020-01-04 13:10:05', '2020-01-04 13:10:05');
INSERT INTO `order_master` VALUES ('1578114605472531157', '师兄', '13653647635', '幕课网', '110110', 0.01, 0, 0, '2020-01-04 13:10:05', '2020-01-04 13:10:05');
INSERT INTO `order_master` VALUES ('1578114605481935218', '师兄', '13653647635', '幕课网', '110110', 0.01, 0, 0, '2020-01-04 13:10:05', '2020-01-04 13:10:05');
INSERT INTO `order_master` VALUES ('1578114605490194856', '师兄', '13653647635', '幕课网', '110110', 0.01, 0, 0, '2020-01-04 13:10:05', '2020-01-04 13:10:05');
INSERT INTO `order_master` VALUES ('1578114605503359340', '师兄', '13653647635', '幕课网', '110110', 0.01, 0, 0, '2020-01-04 13:10:05', '2020-01-04 13:10:05');
INSERT INTO `order_master` VALUES ('1578114605512866573', '师兄', '13653647635', '幕课网', '110110', 0.01, 0, 0, '2020-01-04 13:10:05', '2020-01-04 13:10:05');
INSERT INTO `order_master` VALUES ('1578114605523600795', '师兄', '13653647635', '幕课网', '110110', 0.01, 0, 0, '2020-01-04 13:10:05', '2020-01-04 13:10:05');
INSERT INTO `order_master` VALUES ('1578114605541952918', '师兄', '13653647635', '幕课网', '110110', 0.01, 0, 0, '2020-01-04 13:10:05', '2020-01-04 13:10:05');
INSERT INTO `order_master` VALUES ('1578114605576228025', '师兄', '13653647635', '幕课网', '110110', 0.01, 0, 0, '2020-01-04 13:10:05', '2020-01-04 13:10:05');
INSERT INTO `order_master` VALUES ('1578114605631743084', '师兄', '13653647635', '幕课网', '110110', 0.01, 0, 0, '2020-01-04 13:10:05', '2020-01-04 13:10:05');
INSERT INTO `order_master` VALUES ('1578114605653866788', '师兄', '13653647635', '幕课网', '110110', 0.01, 0, 0, '2020-01-04 13:10:05', '2020-01-04 13:10:05');
INSERT INTO `order_master` VALUES ('1578114605671491254', '师兄', '13653647635', '幕课网', '110110', 0.01, 0, 0, '2020-01-04 13:10:05', '2020-01-04 13:10:05');
INSERT INTO `order_master` VALUES ('1578114605697774288', '师兄', '13653647635', '幕课网', '110110', 0.01, 0, 0, '2020-01-04 13:10:05', '2020-01-04 13:10:05');
INSERT INTO `order_master` VALUES ('1578114605711260477', '师兄', '13653647635', '幕课网', '110110', 0.01, 0, 0, '2020-01-04 13:10:05', '2020-01-04 13:10:05');
INSERT INTO `order_master` VALUES ('1578114605727495846', '师兄', '13653647635', '幕课网', '110110', 0.01, 0, 0, '2020-01-04 13:10:05', '2020-01-04 13:10:05');
INSERT INTO `order_master` VALUES ('1578114605806902579', '师兄', '13653647635', '幕课网', '110110', 0.01, 0, 0, '2020-01-04 13:10:05', '2020-01-04 13:10:05');
INSERT INTO `order_master` VALUES ('1578114605821636399', '师兄', '13653647635', '幕课网', '110110', 0.01, 0, 0, '2020-01-04 13:10:05', '2020-01-04 13:10:05');
INSERT INTO `order_master` VALUES ('1578114605846521985', '师兄', '13653647635', '幕课网', '110110', 0.01, 0, 0, '2020-01-04 13:10:05', '2020-01-04 13:10:05');
INSERT INTO `order_master` VALUES ('1578114605869721804', '师兄', '13653647635', '幕课网', '110110', 0.01, 0, 0, '2020-01-04 13:10:05', '2020-01-04 13:10:05');
INSERT INTO `order_master` VALUES ('1578114605883372164', '师兄', '13653647635', '幕课网', '110110', 0.01, 0, 0, '2020-01-04 13:10:05', '2020-01-04 13:10:05');
INSERT INTO `order_master` VALUES ('1578114605911349268', '师兄', '13653647635', '幕课网', '110110', 0.01, 0, 0, '2020-01-04 13:10:05', '2020-01-04 13:10:05');
INSERT INTO `order_master` VALUES ('3726573321', '二师兄', '13567654321', '福田区', 'pHGyZzNWDv3pPMQO', 5.00, 0, 0, '2020-01-04 12:28:15', '2020-01-04 12:28:15');
INSERT INTO `order_master` VALUES ('97881447898', '大师兄', '13676516354', '宝安区', 'EnoflrZItaclvICV', 21.00, 0, 0, '2020-01-04 12:27:12', '2020-01-04 12:27:12');

-- ----------------------------
-- Table structure for product_category
-- ----------------------------
DROP TABLE IF EXISTS `product_category`;
CREATE TABLE `product_category`  (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '类目名字',
  `category_type` int(11) NOT NULL COMMENT '类目编号',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  PRIMARY KEY (`category_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_category
-- ----------------------------
INSERT INTO `product_category` VALUES (1, '热销榜', 1, '2020-01-04 19:27:28', '2020-01-04 20:22:40');
INSERT INTO `product_category` VALUES (2, '男生最爱', 2, '2020-01-04 19:27:40', '2020-01-04 19:27:40');
INSERT INTO `product_category` VALUES (3, '女生最爱', 3, '2020-01-04 19:27:54', '2020-01-04 19:27:54');
INSERT INTO `product_category` VALUES (4, '今日优惠', 4, '2020-01-04 20:23:07', '2020-01-04 20:23:07');

-- ----------------------------
-- Table structure for product_info
-- ----------------------------
DROP TABLE IF EXISTS `product_info`;
CREATE TABLE `product_info`  (
  `product_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `product_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品名称',
  `product_price` decimal(8, 2) NOT NULL COMMENT '单价',
  `product_stock` int(11) NOT NULL COMMENT '库存',
  `product_description` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `product_icon` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '小图',
  `product_status` tinyint(3) NULL DEFAULT 0 COMMENT '商品状态,0正常1下架',
  `category_type` int(11) NOT NULL COMMENT '类目编号',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  PRIMARY KEY (`product_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_info
-- ----------------------------
INSERT INTO `product_info` VALUES ('123456', '皮蛋粥', 0.02, 112, '很好喝的粥', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1578147578928&di=0bc1547530bc1818a3a87efbbe7a9397&imgtype=0&src=http%3A%2F%2Fdn-kdt-img.qbox.me%2Fupload_files%2F2015%2F11%2F14%2FFnfAiOZGSYGHi0kCLiplD2Nfdu3m.jpg%2521730x0.jpg', 1, 1, '2020-01-04 15:31:56', '2020-01-04 20:03:59');
INSERT INTO `product_info` VALUES ('123457', '煲仔饭', 0.12, 100, '25分钟煲仔饭', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1578740617&di=3729034acfe24b328c246507fbce7623&imgtype=jpg&er=1&src=http%3A%2F%2Fe.hiphotos.baidu.com%2Fbainuo%2Fwh%3D720%2C436%2Fsign%3D0feb140da744ad342eea8f80e29220c0%2F0bd162d9f2d3572c8f172a3c8c13632763d0c35d.jpg', 1, 2, '2020-01-04 18:50:23', '2020-01-04 19:04:04');
INSERT INTO `product_info` VALUES ('123458', '炒米饭', 0.32, 100, '25分钟炒米饭', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1578147619702&di=4c195a108958d5f02aaedee1e55a5fae&imgtype=0&src=http%3A%2F%2Fcp1.douguo.net%2Fupload%2Fcaiku%2Fb%2F6%2F9%2Fyuan_b626cc607550aad892cae6befde85e19.jpg', 1, 3, '2020-01-04 18:50:23', '2020-01-04 19:32:38');
INSERT INTO `product_info` VALUES ('123459', '酸菜鱼', 0.02, 100, '25分钟酸菜鱼', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1578742381&di=6db777f1248857ba0d4b0f5cc476bfa5&imgtype=jpg&er=1&src=http%3A%2F%2Fwww.canzdao.com%2Ffile%2Fupload%2F201812%2F26%2F152213681534.jpg', 0, 2, '2020-01-04 18:50:23', '2020-01-04 19:33:15');

-- ----------------------------
-- Table structure for seller_info
-- ----------------------------
DROP TABLE IF EXISTS `seller_info`;
CREATE TABLE `seller_info`  (
  `seller_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `openid` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '微信openid',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  PRIMARY KEY (`seller_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '卖家信息表' ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
