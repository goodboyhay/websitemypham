-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 30, 2020 lúc 10:51 AM
-- Phiên bản máy phục vụ: 10.4.13-MariaDB
-- Phiên bản PHP: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `doantotnghiep_webmypham`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `log_login` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` tinyint(4) NOT NULL DEFAULT 1,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `phone`, `log_login`, `class`, `address`, `level`, `status`, `avatar`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'doantotnghiep@gmail.com', '$2y$10$kNYA/jfQW0d4KS9blR0SOODPwVXB.Mr43sx.GbKGiZj6rlCiilXEm', '0932022097', NULL, 'D16_TH01', '180 Cao Lỗ', 1, 1, '2020-12-16__cv.jpg', NULL, NULL),
(2, 'Trần Thanh Triều', 'nhanvien@gmail.com', '$2y$10$L4al60g.6onokbOdACCmwelJ6Y/LEf6/TDqpcu9ac60vT/NJr9gcW', '0332504185', NULL, 'D16_TH01', '180 Cao Lỗ', 2, 1, '2020-12-16__56ccc8da805b7105284a.jpg', '2020-06-13 06:23:32', '2020-12-28 02:36:03'),
(3, 'Tuyen', 'tuyennguyen@gmail.com', '$2y$10$8ihx.2KnQ1Mvq.fxxK474.fiwHrTIdNQzUQ9qmdlCJoyY6TDgzcIm', '0909742584', NULL, NULL, NULL, 2, 1, NULL, '2020-12-16 04:48:02', '2020-12-28 02:37:03'),
(4, 'Pham Hoang Dien', 'trieumap@gmail.com', '$2y$10$StPNZhEKTxO7EP3hntcbre4iH5MzWdgVN0pZXO4J8SlfZMgecrMZC', '012345678', NULL, NULL, NULL, 2, 1, NULL, '2020-12-16 07:21:04', '2020-12-28 02:37:33');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `attributes`
--

CREATE TABLE `attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `atb_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `atb_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `atb_type` tinyint(4) NOT NULL DEFAULT 0,
  `atb_category_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `attributes`
--

INSERT INTO `attributes` (`id`, `atb_name`, `atb_slug`, `atb_type`, `atb_category_id`, `created_at`, `updated_at`) VALUES
(1, 'Nước Mỹ', 'nuoc-my', 1, 2, '2020-04-25 11:04:25', '2020-04-26 14:56:25'),
(2, 'Nước Anh', 'nuoc-anh', 1, 1, '2020-04-25 11:04:31', NULL),
(3, '300ml', '300ml', 2, 1, '2020-04-25 11:04:39', NULL),
(4, '500ml', '500ml', 2, 1, '2020-04-25 11:04:44', NULL),
(5, 'Người lớn', 'nguoi-lon', 3, 1, '2020-04-29 03:01:29', NULL),
(6, 'Trẻ em', 'tre-em', 3, 1, '2020-04-29 03:01:35', NULL),
(7, 'Da thường', 'da-thuong', 4, 1, '2020-04-29 03:06:56', NULL),
(8, 'Da khô', 'da-kho', 4, 1, '2020-04-29 03:07:02', NULL),
(9, 'Alo', 'alo', 4, 1, '2020-12-16 04:49:36', NULL),
(10, 'Việt Nam', 'viet-nam', 5, 1, '2020-12-16 05:12:14', NULL),
(11, '100ml', '100ml', 1, 1, '2020-12-16 05:14:47', NULL),
(12, '1000ml', '1000ml', 1, 1, '2020-12-16 05:16:13', NULL),
(13, 'Da mặt', 'da-mat', 4, 2, '2020-12-16 05:32:29', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `c_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_banner` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_parent_id` int(11) NOT NULL DEFAULT 0,
  `c_hot` tinyint(4) NOT NULL DEFAULT 0,
  `c_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `c_name`, `c_slug`, `c_avatar`, `c_banner`, `c_description`, `c_parent_id`, `c_hot`, `c_status`, `created_at`, `updated_at`) VALUES
(1, 'Nước hoa', 'nuoc-hoa', '2020-12-11__nuoc-hoa-danh-cho-nam-chanel-bleu-edp-100ml.jpg', NULL, NULL, 0, 0, 1, '2020-04-25 11:03:42', '2020-12-11 03:48:08'),
(2, 'Đồ trang điểm', 'do-trang-diem', '2020-12-28__do-trang-diem.jpg', NULL, NULL, 0, 0, 1, '2020-04-25 11:03:47', '2020-12-28 02:05:43'),
(3, 'Chăm sóc tóc', 'cham-soc-toc', '2020-12-28__cham-soc-toc.jpg', NULL, NULL, 0, 0, 1, '2020-04-25 14:05:25', '2020-12-28 02:09:58'),
(5, 'Chăm sóc da', 'cham-soc-da', '2020-12-28__cham-soc-da.jpg', NULL, NULL, 0, 1, 1, '2020-04-26 14:26:15', '2020-12-28 02:08:32'),
(10, 'Kem', 'kem', '2020-12-28__kem.png', NULL, NULL, 0, 0, 1, '2020-12-16 05:17:22', '2020-12-28 02:11:42');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cmt_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cmt_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cmt_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cmt_parent_id` int(11) NOT NULL,
  `cmt_product_id` int(11) NOT NULL DEFAULT 0,
  `cmt_user_id` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comments`
--

INSERT INTO `comments` (`id`, `cmt_name`, `cmt_email`, `cmt_content`, `cmt_parent_id`, `cmt_product_id`, `cmt_user_id`, `status`, `created_at`, `updated_at`) VALUES
(4, NULL, NULL, 'Tuyen', 0, 50, 8, 0, '2020-12-16 05:45:00', NULL),
(5, NULL, NULL, 'sản phẩm này sài khá là tốt. phù hợp với điều kiện ánh nắng.', 0, 52, 7, 0, '2020-12-18 06:42:30', NULL),
(6, NULL, NULL, 'kem giúp da khỏe mạnh và tươi mới hơn', 0, 15, 7, 0, '2020-12-18 06:43:34', NULL),
(7, NULL, NULL, 'gtgt', 0, 52, 15, 0, '2020-12-30 07:13:17', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `import_histories`
--

CREATE TABLE `import_histories` (
  `id` int(10) UNSIGNED NOT NULL,
  `thanhtoan` int(11) NOT NULL,
  `id_import` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `import_histories`
--

INSERT INTO `import_histories` (`id`, `thanhtoan`, `id_import`, `created_at`, `updated_at`) VALUES
(3, 0, 21, '2020-07-01 12:27:27', '2020-07-01 12:27:27'),
(4, 10000, 22, '2020-07-01 12:41:31', '2020-07-01 12:41:31'),
(5, 20000, 22, '2020-07-01 12:52:10', '2020-07-01 12:52:10'),
(6, 30000, 22, '2020-07-01 12:54:32', '2020-07-01 12:54:32'),
(7, 30000, 22, '2020-07-01 12:54:42', '2020-07-01 12:54:42'),
(8, 20000, 19, '2020-07-01 12:57:33', '2020-07-01 12:57:33'),
(9, 30000, 19, '2020-07-01 12:58:28', '2020-07-01 12:58:28'),
(10, 50000, 19, '2020-07-01 13:01:39', '2020-07-01 13:01:39'),
(11, 150000, 19, '2020-07-01 13:06:19', '2020-07-01 13:06:19'),
(12, 50000, 19, '2020-07-01 13:06:27', '2020-07-01 13:06:27'),
(13, 800000, 20, '2020-07-01 13:26:20', '2020-07-01 13:26:20'),
(14, 300000, 18, '2020-07-01 13:26:48', '2020-07-01 13:26:48'),
(15, 0, 23, '2020-07-01 13:58:38', '2020-07-01 13:58:38'),
(16, 0, 24, '2020-07-01 14:48:40', '2020-07-01 14:48:40'),
(17, 0, 1, '2020-07-01 15:43:25', '2020-07-01 15:43:25'),
(18, 0, 2, '2020-07-01 15:43:25', '2020-07-01 15:43:25'),
(19, 0, 3, '2020-07-01 16:04:00', '2020-07-01 16:04:00'),
(20, 0, 4, '2020-07-01 16:13:43', '2020-07-01 16:13:43'),
(21, 0, 5, '2020-07-01 16:14:49', '2020-07-01 16:14:49'),
(22, 0, 6, '2020-07-01 16:30:50', '2020-07-01 16:30:50'),
(23, 0, 7, '2020-07-01 17:01:00', '2020-07-01 17:01:00'),
(24, 700000, 9, '2020-12-25 04:47:44', '2020-12-25 04:47:44'),
(25, 1000000, 10, '2020-12-30 05:26:06', '2020-12-30 05:26:06');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `invoice_entered`
--

CREATE TABLE `invoice_entered` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `NgaySX` datetime NOT NULL DEFAULT current_timestamp(),
  `Hansudung` datetime NOT NULL,
  `ie_suppliere` int(11) NOT NULL DEFAULT 0,
  `ie_name_product` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ie_total_money` int(11) NOT NULL DEFAULT 0,
  `ie_category` int(11) NOT NULL DEFAULT 0,
  `ie_product_id` int(11) NOT NULL DEFAULT 0,
  `ie_number` int(11) NOT NULL DEFAULT 0,
  `ie_number_sold` int(11) NOT NULL DEFAULT 0,
  `ie_money` int(11) NOT NULL DEFAULT 0,
  `ie_status` tinyint(4) NOT NULL DEFAULT 0,
  `ie_the_advance` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `invoice_entered`
--

INSERT INTO `invoice_entered` (`id`, `NgaySX`, `Hansudung`, `ie_suppliere`, `ie_name_product`, `ie_total_money`, `ie_category`, `ie_product_id`, `ie_number`, `ie_number_sold`, `ie_money`, `ie_status`, `ie_the_advance`, `created_at`, `updated_at`) VALUES
(1, '2020-07-01 00:00:00', '2020-07-31 00:00:00', 1, NULL, 10000000, 0, 3, 1000, 0, 10000, 0, 0, '2020-07-01 15:43:25', '2020-07-01 15:43:25'),
(2, '2020-02-01 00:00:00', '2020-04-01 00:00:00', 1, NULL, 120000000, 0, 2, 1000, 3, 120000, 0, 0, '2020-07-01 15:43:25', '2020-12-23 05:57:50'),
(3, '2020-05-01 00:00:00', '2020-07-01 00:00:00', 1, NULL, 1500000, 0, 3, 150, 0, 10000, 0, 0, '2020-07-01 16:04:00', '2020-07-01 16:04:00'),
(4, '2020-07-14 00:00:00', '2020-07-04 00:00:00', 1, NULL, 10000, 0, 2, 1, 0, 10000, 0, 0, '2020-07-01 16:13:42', '2020-07-01 16:13:42'),
(5, '2020-07-31 00:00:00', '2021-01-30 00:00:00', 1, NULL, 300000000, 0, 2, 1000, 0, 300000, 0, 0, '2020-07-01 16:14:48', '2020-07-01 16:14:48'),
(6, '2020-07-01 00:00:00', '2020-10-30 00:00:00', 1, NULL, 6000000, 0, 6, 15, 0, 400000, 0, 0, '2020-07-01 16:30:49', '2020-07-01 16:30:49'),
(7, '2020-07-01 00:00:00', '2020-07-04 00:00:00', 1, NULL, 100000, 0, 2, 1, 0, 100000, 0, 0, '2020-07-01 17:01:00', '2020-07-01 17:01:00'),
(8, '2020-12-23 00:00:00', '2020-12-18 00:00:00', 1, NULL, 50500, 0, 54, 5, 0, 10100, 0, 50500, '2020-12-16 04:43:14', '2020-12-16 04:43:14'),
(9, '2020-12-25 00:00:00', '2020-12-31 00:00:00', 3, NULL, 700000, 0, 56, 10, 2, 70000, 0, 700000, '2020-12-25 04:47:44', '2020-12-25 06:22:29'),
(10, '2020-12-23 00:00:00', '2022-01-01 00:00:00', 3, NULL, 1000000, 0, 57, 10, 0, 100000, 0, 1000000, '2020-12-30 05:26:06', '2020-12-30 05:26:06');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `keywords`
--

CREATE TABLE `keywords` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `k_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `k_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `k_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `k_hot` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mn_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mn_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mn_avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mn_banner` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mn_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mn_hot` tinyint(4) NOT NULL DEFAULT 0,
  `mn_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menus`
--

INSERT INTO `menus` (`id`, `mn_name`, `mn_slug`, `mn_avatar`, `mn_banner`, `mn_description`, `mn_hot`, `mn_status`, `created_at`, `updated_at`) VALUES
(1, 'Kinh nghiệm mua mỹ phẩm', 'kinh-nghiem-mua-my-pham', NULL, NULL, NULL, 0, 1, '2020-04-24 03:33:34', NULL),
(2, 'Thông báo', 'thong-bao', NULL, NULL, NULL, 0, 1, '2020-04-24 03:33:38', NULL),
(3, 'Tuyển dụng', 'tuyen-dung', NULL, NULL, NULL, 0, 0, '2020-04-24 03:33:42', '2020-04-25 15:34:44');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2020_02_02_041429_create_categories_table', 1),
(4, '2020_02_02_155318_create_keywords_table', 1),
(5, '2020_02_03_145303_create_products_table', 1),
(6, '2020_02_06_165057_create_attributes_table', 1),
(7, '2020_02_06_184708_create_products_attributes_table', 1),
(8, '2020_02_08_005029_add_multiple_column_attribute_in_table_products', 1),
(9, '2020_02_09_073958_create_transactions_table', 1),
(10, '2020_02_09_074025_create_orders_table', 1),
(11, '2020_02_09_133309_create_products_keywords_table', 1),
(12, '2020_02_09_155308_create_admins_table', 1),
(13, '2020_02_09_180519_create_menus_table', 1),
(14, '2020_02_09_180620_create_articles_table', 1),
(15, '2020_02_12_100000_create_password_resets_table', 1),
(16, '2020_02_13_154148_alter_column_pro_number_in_table_product', 1),
(17, '2020_02_13_171036_create_slides_table', 1),
(18, '2020_02_14_121248_alter_column_a_position_in_table_articles', 1),
(19, '2020_02_15_053225_create_user_favourite_table', 1),
(20, '2020_02_15_191555_create_ratings_table', 1),
(21, '2020_02_17_162605_create_events_table', 1),
(22, '2020_02_18_152103_create_product_images_table', 1),
(23, '2020_02_24_222836_create_social_accounts_table', 1),
(24, '2020_03_08_104810_create_statics_table', 1),
(25, '2020_03_08_213403_alter_column_pro_age_review_in_table_product', 1),
(26, '2020_03_12_205704_create_contacts_table', 1),
(27, '2020_03_17_183239_create_comments_table', 1),
(28, '2020_03_22_003200_alter_column_spam_comment_ratings_in_table_users', 1),
(29, '2020_03_23_223714_alter_column_admin_in_table_admin', 1),
(30, '2020_03_24_201555_alter_column_c_parent_id_in_table_categories', 1),
(31, '2020_03_25_214331_create_list_table_system_pay_table', 1),
(32, '2020_03_27_181534_alter_column_type_pay_in_table_transaction', 1),
(33, '2020_04_14_164245_create_supplieres_table', 1),
(34, '2020_04_15_003305_alter_column_pro_supplier_id_in_table_products', 1),
(35, '2020_04_16_234410_after_column_tst_admin_id_in_table_transaction', 1),
(37, '2020_04_29_104806_alter_column_pro_expiration_date_in_table_products', 2),
(38, '2020_04_29_112931_create_invoice_entered_in_tables', 3),
(39, '2020_06_17_192357_create_product_invoice_entered_table', 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `od_transaction_id` int(11) NOT NULL DEFAULT 0,
  `od_product_id` int(11) NOT NULL DEFAULT 0,
  `od_sale` int(11) NOT NULL DEFAULT 0,
  `od_qty` tinyint(4) NOT NULL DEFAULT 0,
  `od_price` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `od_transaction_id`, `od_product_id`, `od_sale`, `od_qty`, `od_price`, `created_at`, `updated_at`) VALUES
(1, 1, 50, 2, 1, 11760, '2020-12-16 02:06:31', NULL),
(2, 1, 52, 12, 1, 220000, '2020-12-16 02:06:31', NULL),
(3, 3, 52, 12, 2, 220000, '2020-06-07 09:42:21', NULL),
(4, 4, 45, 3, 1, 504400, '2020-06-07 09:45:50', NULL),
(5, 5, 47, 1, 1, 237600, '2020-06-08 15:58:19', NULL),
(6, 6, 50, 2, 2, 11760, '2020-06-15 11:48:55', NULL),
(7, 7, 53, 20, 2, 8000, '2020-06-18 12:17:30', NULL),
(8, 8, 50, 2, 1, 11760, '2020-11-06 03:34:37', NULL),
(9, 9, 1, 2, 3, 784000, '2020-11-18 06:14:15', NULL),
(10, 9, 37, 2, 1, 156800, '2020-11-18 06:14:15', NULL),
(11, 10, 49, 1, 1, 940500, '2020-12-16 07:13:51', NULL),
(12, 11, 52, 12, 1, 220000, '2020-12-16 07:34:38', NULL),
(14, 13, 45, 3, 1, 504400, '2020-12-18 06:47:00', NULL),
(15, 13, 52, 12, 1, 220000, '2020-12-18 06:47:00', NULL),
(20, 17, 56, 10, 2, 225000, '2020-12-25 06:20:49', NULL),
(21, 18, 49, 50, 2, 475000, '2020-12-30 07:15:43', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('nguyenhuynh.quynhtuyen@gmail.com', '$2y$10$r70.khUnCXZ6mje4pUl0Ne.5jeXulL9JGu7f5BrT8bD3dWn/fS0dS', '2020-12-30 07:32:28'),
('dienseven9091@gmail.com', '$2y$10$Kmf004CTVLfJ4cML08TBxerzumKeiZGzjdOex/tTuv6TPTmXND49W', '2020-12-30 07:32:58'),
('dienseven9091@gmail.com', '$2y$10$q3aiUcdv9OJNv.8sUhqnwu9aRDukZDoVlFKUKMeBU5kwAZxx5qlHG', '2020-12-30 07:36:50'),
('dienseven9091@gmail.com', '$2y$10$.j/I.N0i6GELgXDRBTZo/ukB/dzFbxfxpdEHbiiwwSU0qtOXlTJ.2', '2020-12-30 07:37:39'),
('dienseven9091@gmail.com', '$2y$10$jN5kk7ewZorhIdy8uV86te2vku8823v6TlZBztbQXKYwl8ZlKTFpO', '2020-12-30 07:40:38');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pro_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pro_price` int(11) NOT NULL DEFAULT 0,
  `pro_price_entry` int(11) NOT NULL DEFAULT 0 COMMENT 'giá nhập',
  `pro_category_id` int(11) NOT NULL DEFAULT 0,
  `pro_supplier_id` int(11) NOT NULL DEFAULT 0,
  `pro_admin_id` int(11) NOT NULL DEFAULT 0,
  `pro_sale` int(11) NOT NULL DEFAULT 0,
  `pro_expiration_date` tinyint(4) DEFAULT NULL,
  `pro_avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_view` int(11) NOT NULL DEFAULT 0,
  `pro_hot` tinyint(4) NOT NULL DEFAULT 0,
  `pro_expiration` datetime DEFAULT NULL,
  `pro_active` tinyint(4) NOT NULL DEFAULT 1,
  `pro_pay` int(11) NOT NULL DEFAULT 0,
  `pro_description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_review_total` int(11) NOT NULL DEFAULT 0,
  `pro_review_star` int(11) NOT NULL DEFAULT 0,
  `pro_age_review` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `pro_number` int(11) NOT NULL DEFAULT 0,
  `pro_import_goods` int(11) NOT NULL DEFAULT 0,
  `pro_number_import` int(11) NOT NULL DEFAULT 0,
  `pro_resistant` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_energy` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_country` tinyint(4) NOT NULL DEFAULT 0,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `pro_name`, `pro_slug`, `pro_price`, `pro_price_entry`, `pro_category_id`, `pro_supplier_id`, `pro_admin_id`, `pro_sale`, `pro_expiration_date`, `pro_avatar`, `pro_view`, `pro_hot`, `pro_expiration`, `pro_active`, `pro_pay`, `pro_description`, `pro_content`, `pro_review_total`, `pro_review_star`, `pro_age_review`, `created_at`, `pro_number`, `pro_import_goods`, `pro_number_import`, `pro_resistant`, `pro_energy`, `pro_country`, `updated_at`) VALUES
(2, 'Kem Dưỡng Đêm Elf Nourishing Night Cream', 'kem-duong-dem-elf-nourishing-night-cream', 330000, 0, 2, 1, 0, 1, NULL, '2020-04-25__1.jpg', 5, 0, NULL, 1, 1, 'Kem Dưỡng Đêm Elf Nourishing Night Cream', 'Kem Dưỡng Đêm Elf Nourishing Night Cream', 0, 0, 0, '2020-12-02 14:37:12', 37, 0, 40, NULL, NULL, 0, NULL),
(3, 'Sữa Dưỡng Muji Moisturising Milk', 'sua-duong-muji-moisturising-milk', 210000, 0, 2, 1, 0, 5, NULL, '2020-04-25__2.jpg', 1, 0, NULL, 1, 0, 'Sữa Dưỡng Muji Moisturising Milk', 'Sữa Dưỡng Muji Moisturising Milk', 0, 0, 0, '2020-12-01 14:37:49', 8, 0, 8, NULL, NULL, 0, NULL),
(4, 'Set Dưỡng Da Innisfree Jeju Pomegranate', 'set-duong-da-innisfree-jeju-pomegranate', 250000, 0, 2, 1, 0, 1, NULL, '2020-04-25__3.jpg', 1, 0, NULL, 1, 0, 'Set Dưỡng Da Innisfree Jeju Pomegranate', 'Set Dưỡng Da Innisfree Jeju Pomegranate', 0, 0, 0, '2020-12-02 14:39:00', 3, 0, 3, NULL, NULL, 0, '2020-04-25 14:39:37'),
(5, 'Gel Dưỡng Da La Roche Posay Posthelios', 'gel-duong-da-la-roche-posay-posthelios', 450000, 0, 2, 1, 0, 2, NULL, '2020-04-25__4.jpg', 0, 0, NULL, 1, 0, 'Gel Dưỡng Da La Roche Posay Posthelios', 'Gel Dưỡng Da La Roche Posay Posthelios', 0, 0, 0, '2020-12-01 14:40:39', 6, 0, 6, NULL, NULL, 0, NULL),
(6, 'Bộ Kit Dưỡng Cho Da Mụn Some By Mi AC-SOS', 'bo-kit-duong-cho-da-mun-some-by-mi-ac-sos', 360000, 0, 2, 1, 0, 1, NULL, '2020-04-25__5.jpg', 1, 0, NULL, 1, 0, 'Bộ Kit Dưỡng Cho Da Mụn Some By Mi AC-SOS', 'Bộ Kit Dưỡng Cho Da Mụn Some By Mi AC-SOS', 0, 0, 0, '2020-12-01 14:41:37', 3, 0, 3, NULL, NULL, 0, NULL),
(7, 'Dung Dịch Trị Mụn Mario Badescu Drying Lotion', 'dung-dich-tri-mun-mario-badescu-drying-lotion', 234600, 0, 2, 1, 0, 6, NULL, '2020-04-25__6.jpg', 0, 0, NULL, 1, 0, 'Dung Dịch Trị Mụn Mario Badescu Drying Lotion', 'Dung Dịch Trị Mụn Mario Badescu Drying Lotion', 0, 0, 0, '2020-04-25 14:42:30', 25, 0, 25, NULL, NULL, 0, NULL),
(8, 'Some By Mi Snail Truecica Miracle Repair Starte', 'some-by-mi-snail-truecica-miracle-repair-starte', 500000, 0, 2, 1, 0, 2, NULL, '2020-04-25__7.jpg', 1, 0, NULL, 1, 0, 'Some By Mi Snail Truecica Miracle Repair Starte', 'Some By Mi Snail Truecica Miracle Repair Starte', 0, 0, 0, '2020-04-25 14:43:13', 6, 0, 6, NULL, NULL, 0, NULL),
(9, 'Kem Dưỡng Nâng Tông A\'Pieu BABY Tone Up Cream', 'kem-duong-nang-tong-apieu-baby-tone-up-cream', 170000, 0, 2, 1, 0, 1, NULL, '2020-04-25__8.jpg', 1, 0, NULL, 1, 0, 'Kem Dưỡng Nâng Tông A\'Pieu BABY Tone Up Cream', 'Kem Dưỡng Nâng Tông A\'Pieu BABY Tone Up Cream', 0, 0, 0, '2020-04-25 14:43:47', 6, 0, 6, NULL, NULL, 0, NULL),
(10, 'Tinh Chất Dưỡng Da AHC Capture Solution', 'tinh-chat-duong-da-ahc-capture-solution', 260000, 0, 2, 1, 0, 2, NULL, '2020-04-25__9.jpg', 0, 0, NULL, 1, 0, 'Tinh Chất Dưỡng Da AHC Capture Solution', 'Tinh Chất Dưỡng Da AHC Capture Solution', 0, 0, 0, '2020-04-25 14:44:25', 3, 0, 3, NULL, NULL, 0, NULL),
(11, 'Set Dưỡng Da Nam Innisfree Forest For Men', 'set-duong-da-nam-innisfree-forest-for-men', 100000, 0, 2, 1, 0, 3, NULL, '2020-04-25__10.jpg', 2, 0, NULL, 1, 0, 'Set Dưỡng Da Nam Innisfree Forest For Men', 'Set Dưỡng Da Nam Innisfree Forest For Men', 0, 0, 0, '2020-04-25 14:45:05', 2, 0, 2, NULL, NULL, 0, NULL),
(12, 'Tinh Chất Dưỡng Da Lebelage Hee Yul Premium', 'tinh-chat-duong-da-lebelage-hee-yul-premium', 150000, 0, 2, 1, 0, 1, NULL, '2020-04-25__11.jpg', 1, 0, NULL, 1, 0, 'Tinh Chất Dưỡng Da Lebelage Hee Yul Premium', 'Tinh Chất Dưỡng Da Lebelage Hee Yul Premium', 0, 0, 0, '2020-04-25 14:45:42', 3, 0, 3, NULL, NULL, 0, NULL),
(13, 'Gel Dưỡng Lô Hội Ra&Gowoori Soothing Gel', 'gel-duong-lo-hoi-ragowoori-soothing-gel', 234600, 0, 2, 1, 0, 3, NULL, '2020-04-25__12.jpeg', 0, 0, NULL, 1, 0, 'Gel Dưỡng Lô Hội Ra&Gowoori Soothing Gel', 'Gel Dưỡng Lô Hội Ra&Gowoori Soothing Gel', 0, 0, 0, '2020-04-25 14:46:27', 5, 0, 5, NULL, NULL, 0, NULL),
(14, 'Kem Dưỡng Ẩm Laneige Water Bank Moisture Cream', 'kem-duong-am-laneige-water-bank-moisture-cream', 150000, 0, 2, 1, 0, 1, NULL, '2020-04-25__13.jpg', 3, 0, NULL, 1, 0, 'Kem Dưỡng Ẩm Laneige Water Bank Moisture Cream', 'Kem Dưỡng Ẩm Laneige Water Bank Moisture Cream', 0, 0, 0, '2020-04-25 14:47:08', 6, 0, 6, NULL, NULL, 0, NULL),
(15, 'Gel Dưỡng Ẩm Sáng Da Momotani White Moisture', 'gel-duong-am-sang-da-momotani-white-moisture', 260000, 0, 2, 1, 0, 6, NULL, '2020-04-25__14.jpg', 2, 0, NULL, 1, 0, 'Gel Dưỡng Ẩm Sáng Da Momotani White Moisture', 'Gel Dưỡng Ẩm Sáng Da Momotani White Moisture', 0, 0, 0, '2020-04-25 14:47:51', 2, 0, 2, NULL, NULL, 0, NULL),
(16, 'Set Gội Xả Shiseido Tsubaki Hair Care Set', 'set-goi-xa-shiseido-tsubaki-hair-care-set', 250000, 0, 3, 1, 0, 1, NULL, '2020-04-25__16.jpg', 3, 0, NULL, 1, 0, 'Set Gội Xả Shiseido Tsubaki Hair Care Set', 'Set Gội Xả Shiseido Tsubaki Hair Care Set', 0, 0, 0, '2020-04-25 14:48:52', 3, 0, 3, NULL, NULL, 0, NULL),
(17, 'Bộ Gội Xả Shiseido Tsubaki', 'bo-goi-xa-shiseido-tsubaki', 360000, 0, 3, 1, 0, 3, NULL, '2020-04-25__17.jpg', 1, 0, NULL, 1, 0, 'Bộ Gội Xả Shiseido Tsubaki', 'Bộ Gội Xả Shiseido Tsubaki', 0, 0, 0, '2020-04-25 14:49:24', 6, 0, 6, NULL, NULL, 0, NULL),
(18, 'Dầu gội Avalon Organics có chứa Biotin 414ml', 'dau-goi-avalon-organics-co-chua-biotin-414ml', 270000, 0, 3, 1, 0, 0, NULL, '2020-04-25__18.jpg', 0, 1, NULL, 1, 0, 'Dầu gội Avalon Organics có chứa Biotin 414ml', 'Dầu gội Avalon Organics có chứa Biotin 414ml', 0, 0, 0, '2020-04-25 14:50:06', 3, 0, 3, NULL, NULL, 0, '2020-04-25 15:13:43'),
(19, 'Bộ gội - xả Kerasys Scalp Clinic 600ml', 'bo-goi-xa-kerasys-scalp-clinic-600ml', 230000, 0, 3, 1, 0, 0, NULL, '2020-04-25__19.jpg', 0, 0, NULL, 1, 0, 'Bộ gội - xả Kerasys Scalp Clinic 600ml', 'Bộ gội - xả Kerasys Scalp Clinic 600ml', 0, 0, 0, '2020-04-25 14:50:36', 5, 0, 5, NULL, NULL, 0, NULL),
(20, 'Bộ gội - xả Missha Natural Lotus Vinegar', 'bo-goi-xa-missha-natural-lotus-vinegar', 350000, 0, 3, 1, 0, 2, NULL, '2020-04-25__20.jpg', 3, 1, NULL, 1, 0, 'Bộ gội - xả Missha Natural Lotus Vinegar', 'Bộ gội - xả Missha Natural Lotus Vinegar', 0, 0, 0, '2020-04-25 14:51:06', 3, 0, 3, NULL, NULL, 0, '2020-04-25 15:13:40'),
(21, 'Bộ Dầu Gội & Dầu Xả Kracie Ichikami 480ml', 'bo-dau-goi-dau-xa-kracie-ichikami-480ml', 250000, 0, 3, 1, 0, 0, NULL, '2020-04-25__21.jpg', 0, 0, NULL, 1, 0, 'Bộ Dầu Gội & Dầu Xả Kracie Ichikami 480ml', 'Bộ Dầu Gội & Dầu Xả Kracie Ichikami 480ml', 0, 0, 0, '2020-04-25 14:51:38', 6, 0, 6, NULL, NULL, 0, NULL),
(22, 'Bộ Dầu Gội & Dầu Xả Kracie Ichikami 550ml', 'bo-dau-goi-dau-xa-kracie-ichikami-550ml', 560000, 0, 3, 1, 0, 1, NULL, '2020-04-25__22.jpg', 0, 0, NULL, 1, 0, 'Bộ Dầu Gội & Dầu Xả Kracie Ichikami 550ml', 'Bộ Dầu Gội & Dầu Xả Kracie Ichikami 550ml', 0, 0, 0, '2020-04-25 14:52:25', 4, 0, 4, NULL, NULL, 0, NULL),
(23, 'Bộ Chăm Sóc Tóc Pantene Pro-V Winter Rescue Set', 'bo-cham-soc-toc-pantene-pro-v-winter-rescue-set', 260000, 0, 3, 1, 0, 1, NULL, '2020-04-25__23.jpg', 1, 0, NULL, 1, 0, 'Bộ Chăm Sóc Tóc Pantene Pro-V Winter Rescue Set', 'Bộ Chăm Sóc Tóc Pantene Pro-V Winter Rescue Set', 0, 0, 0, '2020-04-25 14:53:01', 5, 0, 5, NULL, NULL, 0, NULL),
(24, 'Bộ gội xả Shiseido Tsubaki Extra Moist', 'bo-goi-xa-shiseido-tsubaki-extra-moist', 250000, 0, 3, 1, 0, 5, NULL, '2020-04-25__25.jpg', 1, 0, NULL, 1, 0, 'Bộ gội xả Shiseido Tsubaki Extra Moist', 'Bộ gội xả Shiseido Tsubaki Extra Moist', 0, 0, 0, '2020-04-25 14:54:32', 3, 0, 3, NULL, NULL, 0, NULL),
(25, 'Bộ Dầu Gôi & Dầu Xả Kerasys Damage Clinic', 'bo-dau-goi-dau-xa-kerasys-damage-clinic', 450000, 0, 3, 1, 0, 1, NULL, '2020-04-25__26.jpg', 0, 0, NULL, 1, 0, 'Bộ Dầu Gôi & Dầu Xả Kerasys Damage Clinic', 'Bộ Dầu Gôi & Dầu Xả Kerasys Damage Clinic', 0, 0, 0, '2020-04-25 14:55:14', 25, 0, 25, NULL, NULL, 0, NULL),
(26, 'Bộ Dầu Gôi & Dầu Xả Kerasys Volume Clinic 600ml*3', 'bo-dau-goi-dau-xa-kerasys-volume-clinic-600ml3', 330000, 0, 3, 1, 0, 0, NULL, '2020-04-25__27.jpg', 0, 0, NULL, 1, 0, 'Bộ Dầu Gôi & Dầu Xả Kerasys Volume Clinic 600ml*3', 'Bộ Dầu Gôi & Dầu Xả Kerasys Volume Clinic 600ml*3', 0, 0, 0, '2020-04-25 14:56:03', 6, 0, 6, NULL, NULL, 0, NULL),
(27, 'Dầu Gội Khô Shiseido Tsubaki Dry Shampoo', 'dau-goi-kho-shiseido-tsubaki-dry-shampoo', 350000, 0, 3, 1, 0, 1, NULL, '2020-04-25__28.jpg', 0, 0, NULL, 1, 0, 'Dầu Gội Khô Shiseido Tsubaki Dry Shampoo', 'Dầu Gội Khô Shiseido Tsubaki Dry Shampoo', 0, 0, 0, '2020-04-25 14:56:47', 2, 0, 2, NULL, NULL, 0, NULL),
(28, 'Dầu Gội Khô Girlz Only', 'dau-goi-kho-girlz-only', 560000, 0, 3, 1, 0, 3, NULL, '2020-04-25__29.jpg', 0, 0, NULL, 1, 0, 'Dầu Gội Khô Girlz Only', 'Dầu Gội Khô Girlz Only', 0, 0, 0, '2020-04-25 14:57:20', 8, 0, 8, NULL, NULL, 0, NULL),
(29, 'Dầu Gội Khô Dove Refresh Dry Shampoo', 'dau-goi-kho-dove-refresh-dry-shampoo', 56000, 0, 3, 1, 0, 2, NULL, '2020-04-25__30.png', 0, 0, NULL, 1, 0, 'Dầu Gội Khô Dove Refresh Dry Shampoo', 'Dầu Gội Khô Dove Refresh Dry Shampoo', 0, 0, 0, '2020-04-25 14:58:03', 6, 0, 6, NULL, NULL, 0, NULL),
(30, 'Tinh Dầu Dưỡng Tóc Raip R3 Argan Hair Oil', 'tinh-dau-duong-toc-raip-r3-argan-hair-oil', 140000, 0, 3, 1, 0, 0, NULL, '2020-04-25__31.jpg', 0, 0, NULL, 1, 0, 'Tinh Dầu Dưỡng Tóc Raip R3 Argan Hair Oil', 'Tinh Dầu Dưỡng Tóc Raip R3 Argan Hair Oil', 0, 0, 0, '2020-04-25 14:58:43', 3, 0, 3, NULL, NULL, 0, NULL),
(31, 'Tinh Dầu Dưỡng Tóc Miseen Scène Perfect Repair', 'tinh-dau-duong-toc-miseen-scene-perfect-repair', 210000, 0, 3, 1, 0, 2, NULL, '2020-04-25__32.jpg', 0, 0, NULL, 1, 0, 'Tinh Dầu Dưỡng Tóc Miseen Scène Perfect Repair', 'Tinh Dầu Dưỡng Tóc Miseen Scène Perfect Repair', 0, 0, 0, '2020-04-25 14:59:17', 3, 0, 3, NULL, NULL, 0, NULL),
(32, 'Miseen Scène Perfect Repair #Styling', 'miseen-scene-perfect-repair-styling', 320000, 0, 3, 1, 0, 3, NULL, '2020-04-25__33.jpg', 0, 0, NULL, 1, 0, 'Miseen Scène Perfect Repair #Styling', 'Miseen Scène Perfect Repair #Styling', 0, 0, 0, '2020-04-25 15:00:02', 6, 0, 6, NULL, NULL, 0, NULL),
(33, 'Serum Dưỡng Tóc Vacosi Hair Care Tonic', 'serum-duong-toc-vacosi-hair-care-tonic', 270000, 0, 3, 1, 0, 3, NULL, '2020-04-25__34.jpg', 2, 0, NULL, 1, 0, 'Serum Dưỡng Tóc Vacosi Hair Care Tonic', 'Serum Dưỡng Tóc Vacosi Hair Care Tonic', 0, 0, 0, '2020-04-25 15:00:41', 5, 0, 5, NULL, NULL, 0, NULL),
(34, 'Dưỡng Tóc Ogx Renewing-Argan Oil Of Morocco', 'duong-toc-ogx-renewing-argan-oil-of-morocco', 220000, 0, 3, 1, 0, 3, NULL, '2020-04-25__35.jpg', 3, 0, NULL, 1, 0, 'Dưỡng Tóc Ogx Renewing-Argan Oil Of Morocco', 'Dưỡng Tóc Ogx Renewing-Argan Oil Of Morocco', 0, 0, 0, '2020-04-25 15:01:26', 5, 0, 5, NULL, NULL, 0, NULL),
(35, 'Serum Phục Hồi Tóc Pink Grapefruit Cocoon', 'serum-phuc-hoi-toc-pink-grapefruit-cocoon', 195000, 0, 3, 1, 0, 3, NULL, '2020-04-25__36.jpg', 0, 0, NULL, 1, 0, 'Serum Phục Hồi Tóc Pink Grapefruit Cocoon', 'Serum Phục Hồi Tóc Pink Grapefruit Cocoon', 0, 0, 0, '2020-04-25 15:02:15', 25, 0, 25, NULL, NULL, 0, NULL),
(37, 'Xịt Thơm Khử Mùi Quần Áo Fabric Perfume Spray', 'xit-thom-khu-mui-quan-ao-fabric-perfume-spray', 160000, 0, 1, 1, 0, 2, NULL, '2020-04-25__37.jpg', 4, 0, NULL, 1, 1, 'Xịt Thơm Khử Mùi Quần Áo Fabric Perfume Spray', 'Xịt Thơm Khử Mùi Quần Áo Fabric Perfume Spray', 0, 0, 0, '2020-04-25 15:03:10', 3, 0, 3, NULL, NULL, 0, NULL),
(38, 'Xịt Thơm Nước Hoa 1902 Melle Fleurs L\'Eau Eau', 'xit-thom-nuoc-hoa-1902-melle-fleurs-leau-eau', 450000, 0, 1, 1, 0, 1, NULL, '2020-04-25__38.jpg', 0, 0, NULL, 1, 0, 'Xịt Thơm Nước Hoa 1902 Melle Fleurs L\'Eau Eau', 'Xịt Thơm Nước Hoa 1902 Melle Fleurs L\'Eau Eau', 0, 0, 0, '2020-04-25 15:03:41', 6, 0, 6, NULL, NULL, 0, NULL),
(39, 'Xịt Thơm Body Victoria\'s Secret Fragrance Body', 'xit-thom-body-victorias-secret-fragrance-body', 270000, 0, 1, 1, 0, 0, NULL, '2020-04-25__39.jpg', 1, 0, NULL, 1, 0, 'Xịt Thơm Body Victoria\'s Secret Fragrance Body', 'Xịt Thơm Body Victoria\'s Secret Fragrance Body', 0, 0, 0, '2020-04-25 15:04:12', 5, 0, 5, NULL, NULL, 0, NULL),
(40, 'Bộ Victoria\'s Secret Fragrance Mist & Lotion', 'bo-victorias-secret-fragrance-mist-lotion', 350000, 0, 1, 1, 0, 80, NULL, '2020-04-25__40.jpg', 0, 0, NULL, 1, 0, 'Bộ Victoria\'s Secret Fragrance Mist & Lotion', 'Bộ Victoria\'s Secret Fragrance Mist & Lotion', 0, 0, 0, '2020-04-25 15:04:48', 3, 0, 3, NULL, NULL, 0, '2020-12-16 05:36:52'),
(41, 'Nước Hoa Nữ Venus Global Beauty Laura Anné', 'nuoc-hoa-nu-venus-global-beauty-laura-anne', 410000, 0, 1, 1, 0, 2, NULL, '2020-04-25__41.jpg', 0, 0, NULL, 1, 0, 'Nước Hoa Nữ Venus Global Beauty Laura Anné', 'Nước Hoa Nữ Venus Global Beauty Laura Anné', 0, 0, 0, '2020-04-25 15:05:33', 3, 0, 3, NULL, NULL, 0, NULL),
(42, 'Nước Hoa Nữ Venus Global Beauty Laura Anné 1', 'nuoc-hoa-nu-venus-global-beauty-laura-anne-1', 420000, 0, 1, 1, 0, 3, NULL, '2020-04-25__42.jpg', 3, 0, NULL, 1, 0, 'Nước Hoa Nữ Venus Global Beauty Laura Anné', 'Nước Hoa Lancôme Miracle L\'Eau de Parfum', 0, 0, 0, '2020-04-25 15:06:43', -1, 0, -1, NULL, NULL, 0, '2020-06-12 11:05:05'),
(43, 'Nước Hoa Lancôme Miracle L\'Eau de Parfum', 'nuoc-hoa-lancome-miracle-leau-de-parfum', 250000, 0, 1, 1, 0, 3, NULL, '2020-04-25__43.jpg', 1, 0, NULL, 1, 0, 'Nước Hoa Lancôme Miracle L\'Eau de Parfum', 'Nước Hoa Lancôme Miracle L\'Eau de Parfum', 0, 0, 0, '2020-04-25 15:07:12', 3, 0, 3, NULL, NULL, 0, NULL),
(44, 'Nước Hoa Gucci Bloom Eau de Parfum 2017', 'nuoc-hoa-gucci-bloom-eau-de-parfum-2017', 380000, 0, 1, 1, 0, 2, NULL, '2020-04-25__44.jpg', 1, 0, NULL, 0, 0, 'Nước Hoa Gucci Bloom Eau de Parfum 2017', 'Nước Hoa Gucci Bloom Eau de Parfum 2017', 0, 0, 0, '2020-04-25 15:07:45', 5, 0, 5, NULL, NULL, 0, '2020-12-16 05:35:20'),
(45, 'Nước Hoa Berdoues 1902 Eau de Toilette', 'nuoc-hoa-berdoues-1902-eau-de-toilette', 520000, 0, 1, 1, 0, 3, NULL, '2020-04-25__45.jpg', 10, 1, NULL, 1, 2, 'Nước Hoa Berdoues 1902 Eau de Toilette', 'Nước Hoa Berdoues 1902 Eau de Toilette', 0, 0, 0, '2020-04-25 15:08:22', 5, 0, 6, NULL, NULL, 0, '2020-04-25 15:13:17'),
(46, 'Nước Hoa Nam Venus Global Beauty Gota Perfume', 'nuoc-hoa-nam-venus-global-beauty-gota-perfume', 290000, 0, 1, 1, 0, 2, NULL, '2020-04-25__46.jpg', 0, 0, NULL, 1, 0, 'Nước Hoa Nam Venus Global Beauty Gota Perfume', 'Nước Hoa Nam Venus Global Beauty Gota Perfume', 0, 0, 0, '2020-04-25 15:09:12', 3, 0, 3, NULL, NULL, 0, NULL),
(47, 'Nước Hoa Versace Pour Homme Dylan Blue 5ml', 'nuoc-hoa-versace-pour-homme-dylan-blue-5ml', 240000, 0, 1, 1, 0, 20, NULL, '2020-04-25__47.jpg', 9, 1, NULL, 1, 1, 'Nước Hoa Versace Pour Homme Dylan Blue 5ml', 'Nước Hoa Versace Pour Homme Dylan Blue 5ml', 0, 0, 0, '2020-04-25 15:10:05', 5, 0, 5, NULL, NULL, 0, '2020-12-25 06:08:59'),
(48, 'Lăn Khử Mùi Cho Nam Old Spice Timber', 'lan-khu-mui-cho-nam-old-spice-timber', 650000, 0, 1, 1, 0, 1, NULL, '2020-04-25__48.jpg', 2, 0, NULL, 1, 0, 'Lăn Khử Mùi Cho Nam Old Spice Timber', 'Lăn Khử Mùi Cho Nam Old Spice Timber', 0, 0, 0, '2020-04-25 15:10:36', 3, 0, 3, NULL, NULL, 0, NULL),
(49, 'Nước Hoa Nam Victoria’s Secret', 'nuoc-hoa-nam-victorias-secret', 950000, 0, 1, 1, 0, 50, NULL, '2020-04-25__49.jpg', 10, 1, NULL, 1, 4, 'Nước Hoa Nam Victoria’s Secret', 'Nước Hoa Nam Victoria’s Secret', 0, 0, 0, '2020-04-25 15:11:10', 4, 0, 4, NULL, NULL, 0, '2020-12-25 06:19:33'),
(50, 'Nước hoa mini Versace Pour Homme - Eau De Toilette', 'nuoc-hoa-mini-versace-pour-homme-eau-de-toilette', 12000, 0, 1, 1, 0, 10, 10, '2020-04-25__50.jpg', 15, 0, NULL, 1, 3, 'Nước hoa mini Versace Pour Homme - Eau De Toilette', 'Nước hoa mini Versace Pour Homme - Eau De Toilette', 0, 0, 0, '2020-04-25 15:11:49', -1, 2, 3, NULL, NULL, 0, '2020-12-25 06:10:24'),
(52, 'Kem Chống Nắng Neutrogena Ultra Sheer Dry-Touch Sunscreen SPF70', 'kem-chong-nang-neutrogena-ultra-sheer-dry-touch-sunscreen-spf70', 250000, 0, 2, 1, 0, 12, NULL, '2020-04-25__15805425160532.jpg', 32, 0, '2020-06-17 00:00:00', 1, 4, 'Kem chống nắng neutrogena Ultra Sheer Sunscreen với công thức đặc biệt bảo vệ da tránh tia UV tối đa dưới ánh nắng gắt của mùa hè.\r\n- Da bạn sẽ không bị bóng nhờn, ngược lại, sẽ có cảm giác khô ráo và nhẹ nhàng.\r\n- Sản phẩm còn tích hợp Butylene Glycol dưỡng ẩm và làm đẹp da, Vitamin A, C, E nuôi dưỡng làn da.\r\n- Công thức Heliopex này tăng độ bền vững trước ánh nắng, giúp chống nắng được lâu hơn.', 'test', 1, 3, 3, '2020-04-25 15:17:22', 7, 1, 10, NULL, NULL, 0, '2020-06-18 11:49:46'),
(57, 'be thui', 'be-thui', 120000, 0, 1, 0, 0, 5, NULL, NULL, 1, 0, NULL, 1, 0, 'ngon', 'ngon. nhan vien dep trai', 0, 0, 0, '2020-12-30 05:24:18', 10, 0, 10, NULL, NULL, 0, '2020-12-30 05:26:06');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products_attributes`
--

CREATE TABLE `products_attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pa_product_id` int(11) NOT NULL DEFAULT 0,
  `pa_attribute_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products_attributes`
--

INSERT INTO `products_attributes` (`id`, `pa_product_id`, `pa_attribute_id`) VALUES
(14, 7, 2),
(15, 7, 3),
(16, 8, 1),
(17, 8, 4),
(18, 9, 1),
(19, 9, 3),
(20, 10, 1),
(21, 10, 4),
(22, 11, 1),
(23, 11, 3),
(24, 12, 1),
(25, 12, 4),
(26, 13, 1),
(27, 13, 4),
(28, 14, 1),
(29, 14, 4),
(30, 15, 1),
(31, 15, 4),
(32, 16, 1),
(33, 16, 4),
(34, 17, 1),
(35, 17, 3),
(36, 18, 1),
(37, 18, 4),
(38, 19, 1),
(39, 19, 4),
(40, 20, 2),
(41, 20, 3),
(42, 21, 1),
(43, 21, 4),
(44, 22, 1),
(45, 22, 3),
(46, 23, 1),
(47, 23, 4),
(48, 24, 2),
(49, 24, 3),
(50, 25, 1),
(51, 25, 3),
(52, 26, 1),
(53, 26, 4),
(54, 27, 2),
(55, 27, 3),
(56, 28, 1),
(57, 28, 3),
(58, 29, 2),
(59, 29, 3),
(60, 30, 1),
(61, 30, 4),
(62, 31, 1),
(63, 31, 3),
(64, 32, 1),
(65, 32, 4),
(66, 33, 1),
(67, 33, 3),
(68, 34, 2),
(69, 34, 3),
(70, 34, 4),
(71, 35, 2),
(72, 35, 3),
(73, 36, 1),
(74, 36, 4),
(75, 37, 1),
(76, 37, 3),
(77, 38, 2),
(78, 38, 3),
(79, 39, 1),
(80, 39, 4),
(83, 41, 1),
(84, 41, 3),
(87, 43, 1),
(88, 43, 3),
(89, 44, 1),
(90, 44, 3),
(91, 45, 1),
(92, 45, 3),
(93, 46, 1),
(94, 46, 3),
(97, 48, 1),
(98, 48, 4),
(103, 51, 1),
(104, 51, 4),
(121, 42, 1),
(122, 42, 4),
(133, 52, 1),
(134, 52, 3),
(141, 53, 1),
(142, 53, 5),
(169, 58, 1),
(170, 58, 3),
(171, 58, 5),
(172, 59, 1),
(177, 60, 1),
(178, 60, 3),
(179, 60, 5),
(180, 60, 8),
(181, 1, 1),
(182, 1, 4),
(183, 1, 6),
(184, 1, 8),
(185, 2, 1),
(186, 2, 4),
(187, 2, 5),
(188, 2, 8),
(189, 3, 1),
(190, 3, 4),
(191, 3, 6),
(192, 3, 8),
(193, 4, 1),
(194, 4, 4),
(195, 4, 6),
(196, 4, 8),
(197, 5, 1),
(198, 5, 3),
(199, 5, 5),
(200, 5, 7),
(201, 6, 1),
(202, 6, 4),
(203, 6, 6),
(204, 6, 7),
(209, 55, 12),
(210, 55, 6),
(211, 55, 8),
(212, 55, 10),
(217, 40, 2),
(218, 40, 3),
(236, 56, 2),
(237, 56, 5),
(238, 56, 7),
(239, 54, 1),
(240, 54, 4),
(241, 54, 5),
(242, 54, 8),
(245, 47, 1),
(246, 47, 3),
(247, 50, 1),
(248, 50, 3),
(249, 49, 1),
(250, 49, 3),
(251, 57, 1),
(252, 57, 3),
(253, 57, 4),
(254, 57, 5),
(255, 57, 7),
(256, 57, 13),
(257, 57, 10);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products_keywords`
--

CREATE TABLE `products_keywords` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pk_product_id` int(11) NOT NULL DEFAULT 0,
  `pk_keyword_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pi_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pi_slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pi_product_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ratings`
--

CREATE TABLE `ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `r_user_id` int(11) NOT NULL DEFAULT 0,
  `r_product_id` int(11) NOT NULL DEFAULT 0,
  `r_number` tinyint(4) NOT NULL DEFAULT 0,
  `r_status` tinyint(4) NOT NULL DEFAULT 0,
  `r_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `ratings`
--

INSERT INTO `ratings` (`id`, `r_user_id`, `r_product_id`, `r_number`, `r_status`, `r_content`, `created_at`, `updated_at`) VALUES
(1, 1, 52, 3, 0, 'ew', '2020-04-27 21:06:13', '2020-04-27 21:06:13');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slides`
--

CREATE TABLE `slides` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sd_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sd_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sd_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sd_target` tinyint(4) NOT NULL DEFAULT 1,
  `sd_active` tinyint(4) NOT NULL DEFAULT 1,
  `sd_sort` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `slides`
--

INSERT INTO `slides` (`id`, `sd_title`, `sd_link`, `sd_image`, `sd_target`, `sd_active`, `sd_sort`, `created_at`, `updated_at`) VALUES
(1, 'Mua nhiều giảm nhiều nhanh tay số lượng có hạn', 'https://beautygarden.vn/', '2020-04-25__banner-tgnh-thang3.jpg', 3, 1, 0, '2020-04-25 14:27:33', '2020-04-25 15:24:13'),
(2, 'Test', 'https://beautygarden.vn/', '2020-04-25__banner-tgnh-thang3.jpg', 1, 1, 1, '2020-04-25 14:30:24', NULL),
(3, 'Test', 'https://beautygarden.vn/', '2020-04-25__banner-web-bgxshopee.png', 2, 1, 0, '2020-04-25 15:10:01', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `supplieres`
--

CREATE TABLE `supplieres` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sl_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sl_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sl_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sl_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `supplieres`
--

INSERT INTO `supplieres` (`id`, `sl_name`, `sl_phone`, `sl_email`, `sl_address`, `created_at`, `updated_at`) VALUES
(1, 'Nhà CC A', '0986420994', 'phupt.humg.94@gmail.com', 'Ngách 138, Số nhà 62', '2020-04-24 03:37:05', NULL),
(2, 'Nhà cc B', '0988232123', 'nhaccb@gmail.com', 'Nghe an', '2020-06-18 11:59:25', NULL),
(3, 'Bê Thui Cầu Mống', '0912312312', 'ugh@g', 'Dình DƯơng', '2020-12-25 04:45:32', NULL),
(4, 'bo ne', '0332504185', 'ugh@g', 'binh duong', '2020-12-30 05:29:40', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tst_user_id` int(11) NOT NULL DEFAULT 0,
  `tst_admin_id` int(11) NOT NULL DEFAULT 0,
  `tst_total_money` int(11) NOT NULL DEFAULT 0,
  `tst_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_status` tinyint(4) NOT NULL DEFAULT 1,
  `tst_type` tinyint(4) NOT NULL DEFAULT 1 COMMENT ' 1 thanh toan thuong, 2 la thanh toan online',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `transactions`
--

INSERT INTO `transactions` (`id`, `tst_user_id`, `tst_admin_id`, `tst_total_money`, `tst_name`, `tst_email`, `tst_phone`, `tst_address`, `tst_note`, `tst_status`, `tst_type`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 231760, 'TrungPhuNa', 'phupt.humg.94@gmail.com', '0986420994', 'Nghệ AN', NULL, 3, 1, '2020-12-16 02:06:31', '2020-12-16 05:51:17'),
(2, 2, 0, 0, 'TrungPhuNa', 'phupt.humg.94@gmail.com', '0986420994', 'Nghệ AN', NULL, 1, 2, '2020-06-07 08:03:48', NULL),
(3, 2, 0, 440000, 'TrungPhuNa', 'phupt.humg.94@gmail.com', '0986420994', 'Nghệ AN', NULL, 1, 2, '2020-06-07 09:42:21', NULL),
(4, 2, 0, 504400, 'TrungPhuNa', 'phupt.humg.94@gmail.com', '0986420994', 'Nghệ AN', NULL, 1, 2, '2020-06-07 09:45:50', NULL),
(5, 2, 1, 237600, 'TrungPhuNa', 'phupt.humg.94@gmail.com', '0986420994', 'Nghệ AN', NULL, 3, 1, '2020-06-08 15:58:19', '2020-06-08 15:58:35'),
(6, 2, 1, 23520, 'TrungPhuNa', 'phupt.humg.94@gmail.com', '0986420994', 'Hai Bà Trưng Hà Nội', NULL, 3, 1, '2020-06-15 11:48:55', '2020-06-15 11:49:04'),
(7, 2, 1, 16000, 'TrungPhuNa', 'phupt.humg.94@gmail.com', '0986420994', 'Hai Bà Trưng Hà Nội', NULL, 3, 1, '2020-06-18 12:17:30', '2020-06-18 12:26:50'),
(8, 3, 1, 11760, 'Yiu', 'tuyenhi2@gmail.com', '093351', 'phu yen', NULL, 2, 1, '2020-11-06 03:34:37', '2020-11-06 03:37:33'),
(9, 4, 0, 2508800, 'tuyen', 'uyen@Gmail.com', '1723124', 'ghghgh', NULL, 1, 1, '2020-11-18 06:14:15', NULL),
(10, 13, 1, 940500, 'Tuyen', 'tuyen@Gm', '5545454', 'phu yen', NULL, 2, 1, '2020-12-16 07:13:51', '2020-12-28 02:27:22'),
(11, 13, 1, 220000, 'Tuyen', 'tuyen@Gm', '5545454', 'phu yen,hgjjhgjh', 'jgfjgfhg', 3, 1, '2020-12-16 07:34:38', '2020-12-16 07:35:26'),
(13, 14, 4, 724400, 'Trieu', 'trantrieu26011998@gmail.com', '0332504185', '180 cao lo', NULL, -1, 1, '2020-12-18 06:47:00', '2020-12-23 05:54:38'),
(17, 7, 4, 450000, 'Diển Phạm', 'dienseven9091@gmail.com', '0932022097', '180 cao lo', NULL, 3, 1, '2020-12-25 06:20:49', '2020-12-25 06:22:29'),
(18, 15, 0, 950000, 'Trần Thanh Triều Culi', 'kdii@gmail.com', '1226324646', 'uhu', NULL, 1, 1, '2020-12-30 07:15:43', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `balance` int(11) NOT NULL DEFAULT 0,
  `log_login` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count_comment` tinyint(4) NOT NULL DEFAULT 0,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `phone`, `balance`, `log_login`, `count_comment`, `address`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(5, 'Yiuk k', 'hoangdien9a7@gmail.com', NULL, '$2y$10$tq3a73/ZsDLP3R5idLGADu.hF34XPj2PYgMR3EoC097aLqoJGF45K', '0154658961', 0, NULL, 0, NULL, NULL, NULL, '2020-11-27 04:54:15', NULL),
(7, 'Diển Phạm', 'dienseven9091@gmail.com', NULL, '$2y$10$iVkGQQvGiHK9EoxogiqG9OoEMVgs4bD0T1RZQvz4sIq/yY2OAc5.W', '0932022097', 0, '[{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"87.0.4280.88\",\"time\":\"2020-12-18T04:41:16.186261Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"87.0.4280.88\",\"time\":\"2020-12-23T05:56:49.086781Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"79.0.3945.132\",\"time\":\"2020-12-25T03:43:48.310468Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"87.0.4280.88\",\"time\":\"2020-12-28T02:22:15.109948Z\"}]', 2, '180 cao lo', NULL, NULL, '2020-12-11 03:55:13', '2020-12-23 05:59:41'),
(8, 'Tuyen', 'fw@g.com', NULL, '$2y$10$Rgxcippb5S1G3a7B2Sb7duvSdj6FhcBssNXbck4xLJ2jiMzHOwpv2', '09875123', 0, NULL, 1, NULL, NULL, NULL, '2020-12-16 05:44:37', NULL),
(9, 'fokrf', 'tu@g', NULL, '$2y$10$xmjSbxl.laUz4Ftq.2LLH..bsw.hgtZImp/Ib5XoQ9EYAah9xlYAO', '123123', 0, NULL, 0, NULL, NULL, NULL, '2020-12-16 06:17:59', NULL),
(10, 'Trần Thanh Triều Culi', 'tttt@gmail.com', NULL, '$2y$10$f3mUXog7q3uL1UzC6oQPYuOHhY.423VxY1uxmIu7euqHB8RK81S9y', '123123123', 0, NULL, 0, NULL, NULL, NULL, '2020-12-16 06:21:01', NULL),
(11, 'Trần Thanh Triều Culi', 'kk@h', NULL, '$2y$10$nq4TbviYSfQHmOZXTlANce3AIjkfZHU3dT/ZQCSROrBfbXv9kdggi', '123467', 0, NULL, 0, NULL, NULL, NULL, '2020-12-16 06:47:25', NULL),
(12, 'Trần Thanh Triều Culi', 'wwww@g', NULL, '$2y$10$VVbFWibWqF.FVO1NJFVwru3HhqsLCtdO0S2t7KagqnqHJMXdBAyuy', '433123', 0, NULL, 0, NULL, NULL, NULL, '2020-12-16 07:00:52', NULL),
(13, 'Tuyen', 'tuyen@Gm', NULL, '$2y$10$XOWzRLdeIxvdFGqTpQS.DucMO7iToLTVRsWamLgv0KNmLIY8mODNS', '5545454', 0, NULL, 0, NULL, NULL, NULL, '2020-12-16 07:06:20', NULL),
(14, 'Trieu', 'trantrieu26011998@gmail.com', NULL, '$2y$10$Yn8wmpGXvnk7oGfDo4x.YO23EsmbE93qvzU601UnAxtSR7h57S5AW', '0332504185', 0, NULL, 0, NULL, NULL, NULL, '2020-12-18 06:44:19', NULL),
(15, 'Trần Thanh Triều Culi', 'kdii@gmail.com', NULL, '$2y$10$LK/3U3As9W7pWyVGcD01j.VMhTqSt.HVeQRVXWIpEgEsIHk9kkimC', '1226324646', 0, NULL, 1, NULL, NULL, NULL, '2020-12-30 07:12:27', NULL),
(16, 'Trần Thanh Triều Culi', 'nguyenhuynh.quynhtuyen@gmail.com', NULL, '$2y$10$kNOm76BNed73HZ57q/ebsOV4nlB5e3pe/b5LwndhHZDpH3S6FHXUG', '24353523', 0, NULL, 0, NULL, NULL, NULL, '2020-12-30 07:29:09', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_favourite`
--

CREATE TABLE `user_favourite` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uf_product_id` int(11) NOT NULL DEFAULT 0,
  `uf_user_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user_favourite`
--

INSERT INTO `user_favourite` (`id`, `uf_product_id`, `uf_user_id`) VALUES
(2, 1, 4),
(6, 37, 7),
(4, 45, 4),
(1, 50, 3);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`),
  ADD UNIQUE KEY `admins_phone_unique` (`phone`);

--
-- Chỉ mục cho bảng `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attributes_atb_name_unique` (`atb_name`),
  ADD KEY `attributes_atb_category_id_index` (`atb_category_id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_c_slug_unique` (`c_slug`),
  ADD KEY `categories_c_parent_id_index` (`c_parent_id`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_cmt_product_id_index` (`cmt_product_id`),
  ADD KEY `comments_cmt_user_id_index` (`cmt_user_id`);

--
-- Chỉ mục cho bảng `import_histories`
--
ALTER TABLE `import_histories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `invoice_entered`
--
ALTER TABLE `invoice_entered`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice_entered_ie_suppliere_index` (`ie_suppliere`);

--
-- Chỉ mục cho bảng `keywords`
--
ALTER TABLE `keywords`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `keywords_k_slug_unique` (`k_slug`);

--
-- Chỉ mục cho bảng `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_mn_slug_unique` (`mn_slug`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_pro_slug_unique` (`pro_slug`),
  ADD KEY `products_pro_hot_index` (`pro_hot`),
  ADD KEY `products_pro_active_index` (`pro_active`),
  ADD KEY `products_pro_supplier_id_index` (`pro_supplier_id`);

--
-- Chỉ mục cho bảng `products_attributes`
--
ALTER TABLE `products_attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_attributes_pa_product_id_index` (`pa_product_id`),
  ADD KEY `products_attributes_pa_attribute_id_index` (`pa_attribute_id`);

--
-- Chỉ mục cho bảng `products_keywords`
--
ALTER TABLE `products_keywords`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_keywords_pk_product_id_index` (`pk_product_id`),
  ADD KEY `products_keywords_pk_keyword_id_index` (`pk_keyword_id`);

--
-- Chỉ mục cho bảng `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `supplieres`
--
ALTER TABLE `supplieres`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_tst_user_id_index` (`tst_user_id`),
  ADD KEY `transactions_tst_admin_id_index` (`tst_admin_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`),
  ADD KEY `users_balance_index` (`balance`);

--
-- Chỉ mục cho bảng `user_favourite`
--
ALTER TABLE `user_favourite`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_favourite_uf_product_id_uf_user_id_unique` (`uf_product_id`,`uf_user_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `import_histories`
--
ALTER TABLE `import_histories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `invoice_entered`
--
ALTER TABLE `invoice_entered`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `keywords`
--
ALTER TABLE `keywords`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT cho bảng `products_attributes`
--
ALTER TABLE `products_attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=258;

--
-- AUTO_INCREMENT cho bảng `products_keywords`
--
ALTER TABLE `products_keywords`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `slides`
--
ALTER TABLE `slides`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `supplieres`
--
ALTER TABLE `supplieres`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `user_favourite`
--
ALTER TABLE `user_favourite`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
