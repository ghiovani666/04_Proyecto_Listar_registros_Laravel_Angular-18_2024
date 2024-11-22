/*
 Navicat Premium Data Transfer

 Source Server         : localHost_Nuevo
 Source Server Type    : MySQL
 Source Server Version : 80035 (8.0.35)
 Source Host           : localhost:3306
 Source Schema         : bdangular

 Target Server Type    : MySQL
 Target Server Version : 80035 (8.0.35)
 File Encoding         : 65001

 Date: 04/11/2024 00:19:56
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `failed_jobs_uuid_unique`(`uuid` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_reset_tokens_table', 1);
INSERT INTO `migrations` VALUES (3, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (4, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (5, '2019_12_14_000001_create_personal_access_tokens_table', 1);
INSERT INTO `migrations` VALUES (6, '2023_10_06_183711_create_product_table', 1);

-- ----------------------------
-- Table structure for password_reset_tokens
-- ----------------------------
DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE `password_reset_tokens`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of password_reset_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for personal_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `personal_access_tokens_token_unique`(`token` ASC) USING BTREE,
  INDEX `personal_access_tokens_tokenable_type_tokenable_id_index`(`tokenable_type` ASC, `tokenable_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of personal_access_tokens
-- ----------------------------
INSERT INTO `personal_access_tokens` VALUES (1, 'App\\Models\\User', 1, 'API TOKEN', '47b32bc6bf0bc5bfc63ee49e94c3f475b9105a5561f70105c63cb7c959817c76', '[\"*\"]', '2024-11-03 22:10:37', NULL, '2024-11-03 22:02:43', '2024-11-03 22:10:37');
INSERT INTO `personal_access_tokens` VALUES (2, 'App\\Models\\User', 1, 'API TOKEN', '0db9531549c6c8dab7e228a67c0197d10efda7171a8a419b743e707dc4524c3c', '[\"*\"]', '2024-11-04 01:38:12', NULL, '2024-11-03 22:12:51', '2024-11-04 01:38:12');
INSERT INTO `personal_access_tokens` VALUES (3, 'App\\Models\\User', 1, 'API TOKEN', '045de95c151689a7c97bfcb3f4308c06ebf6ae348f7c80795e6163fcaaf98281', '[\"*\"]', '2024-11-04 03:29:38', NULL, '2024-11-04 01:38:19', '2024-11-04 03:29:38');
INSERT INTO `personal_access_tokens` VALUES (4, 'App\\Models\\User', 1, 'API TOKEN', '3611009d28c5571fdbb171a75749e40d44750b4013809c4990982f76b90140d7', '[\"*\"]', '2024-11-04 04:10:58', NULL, '2024-11-04 03:30:23', '2024-11-04 04:10:58');
INSERT INTO `personal_access_tokens` VALUES (5, 'App\\Models\\User', 1, 'API TOKEN', '09dd01307cb6f4f1a7cb8457c0b32ef7f16811820c247229e00b4fa611c031cf', '[\"*\"]', NULL, NULL, '2024-11-04 04:18:24', '2024-11-04 04:18:24');
INSERT INTO `personal_access_tokens` VALUES (6, 'App\\Models\\User', 1, 'API TOKEN', 'd0c9d5c6cd51fc7be81f1b98b1e56cdd351a3249e6308e01ce06903f8d1ad5da', '[\"*\"]', '2024-11-04 04:30:05', NULL, '2024-11-04 04:29:42', '2024-11-04 04:30:05');
INSERT INTO `personal_access_tokens` VALUES (7, 'App\\Models\\User', 1, 'API TOKEN', 'ef05fe284e9c82b903188f2c6321f169b6748d8e11a4a3dcf53ba64022669052', '[\"*\"]', NULL, NULL, '2024-11-04 04:32:54', '2024-11-04 04:32:54');
INSERT INTO `personal_access_tokens` VALUES (8, 'App\\Models\\User', 1, 'API TOKEN', '75383431ac0d6dd4b10b49b0c6309f12576dfdb43056e2ffecdd3e92712380a6', '[\"*\"]', NULL, NULL, '2024-11-04 04:34:00', '2024-11-04 04:34:00');
INSERT INTO `personal_access_tokens` VALUES (9, 'App\\Models\\User', 1, 'API TOKEN', '392ae4d6754b815b7f72ce3e8cb5354c561ceeb5d928fd28b0f2cf02df8e3beb', '[\"*\"]', NULL, NULL, '2024-11-04 04:37:16', '2024-11-04 04:37:16');
INSERT INTO `personal_access_tokens` VALUES (10, 'App\\Models\\User', 1, 'API TOKEN', '58e0087ca78b963567ba417ab69e80f0d2319f51c6948b0df7d8c2925d5a0227', '[\"*\"]', NULL, NULL, '2024-11-04 04:38:27', '2024-11-04 04:38:27');
INSERT INTO `personal_access_tokens` VALUES (11, 'App\\Models\\User', 1, 'API TOKEN', 'b5ab339cf22950333a76babf09984568901254aba5277fde8c0469bc7c6a8a76', '[\"*\"]', '2024-11-04 05:07:01', NULL, '2024-11-04 04:41:28', '2024-11-04 05:07:01');

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `product_user_id_foreign`(`user_id` ASC) USING BTREE,
  CONSTRAINT `product_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES (1, 'hola2222', '123456sss789', 1, '2024-11-03 06:34:31', '2024-11-04 04:03:25', '2024-11-03 06:34:33');
INSERT INTO `product` VALUES (2, '777', '234234234', 1, '2024-11-03 06:35:33', '2024-11-03 06:37:55', '2024-11-03 06:37:52');
INSERT INTO `product` VALUES (4, 'hola', '123456sss789', 1, '2024-11-04 02:55:48', '2024-11-04 02:55:48', NULL);
INSERT INTO `product` VALUES (5, 'hola', '123456sss789', 1, '2024-11-04 02:55:51', '2024-11-04 02:55:51', NULL);
INSERT INTO `product` VALUES (6, 'hola', '123456sss789', 1, '2024-11-04 03:29:38', '2024-11-04 03:29:38', NULL);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'jorge', 'admin@gmail.com', NULL, '$2y$12$3lbCd2M4ICY6YoS9wIM0WOjpUnxNEnLCnql3.InV8Gua.PYwxkJ2u', NULL, '2024-11-03 11:35:05', '2024-11-03 11:35:05');

SET FOREIGN_KEY_CHECKS = 1;
