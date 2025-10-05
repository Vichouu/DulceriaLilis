-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 05-10-2025 a las 20:40:13
-- Versión del servidor: 9.1.0
-- Versión de PHP: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `dulcerialilis`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_group_id_b120cbf9` (`group_id`),
  KEY `auth_group_permissions_permission_id_84c5c92e` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  KEY `auth_permission_content_type_id_2f476e4b` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add Producto', 7, 'add_producto'),
(26, 'Can change Producto', 7, 'change_producto'),
(27, 'Can delete Producto', 7, 'delete_producto'),
(28, 'Can view Producto', 7, 'view_producto'),
(29, 'Can add Lote', 8, 'add_lote'),
(30, 'Can change Lote', 8, 'change_lote'),
(31, 'Can delete Lote', 8, 'delete_lote'),
(32, 'Can view Lote', 8, 'view_lote'),
(33, 'Can add Categoría', 9, 'add_categoria'),
(34, 'Can change Categoría', 9, 'change_categoria'),
(35, 'Can delete Categoría', 9, 'delete_categoria'),
(36, 'Can view Categoría', 9, 'view_categoria'),
(37, 'Can add Cargo', 10, 'add_cargo'),
(38, 'Can change Cargo', 10, 'change_cargo'),
(39, 'Can delete Cargo', 10, 'delete_cargo'),
(40, 'Can view Cargo', 10, 'view_cargo'),
(41, 'Can add Empleado', 11, 'add_empleado'),
(42, 'Can change Empleado', 11, 'change_empleado'),
(43, 'Can delete Empleado', 11, 'delete_empleado'),
(44, 'Can view Empleado', 11, 'view_empleado'),
(45, 'Can add Departamento', 12, 'add_departamento'),
(46, 'Can change Departamento', 12, 'change_departamento'),
(47, 'Can delete Departamento', 12, 'delete_departamento'),
(48, 'Can view Departamento', 12, 'view_departamento');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$1000000$zlxe7ZK6aKalqQrpSLfyK0$E1/usWdAU4YeLX8tglkUWiMrJE5/XfLGtiPdNbch5hw=', '2025-10-03 23:32:25.007577', 1, 'Admin', '', '', 'admin.trabajito123@gmail.com', 1, 1, '2025-10-03 20:29:36.905131');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_user_id_6a12ed8b` (`user_id`),
  KEY `auth_user_groups_group_id_97559544` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_user_id_a95ead1b` (`user_id`),
  KEY `auth_user_user_permissions_permission_id_1fbb5f2c` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargo`
--

DROP TABLE IF EXISTS `cargo`;
CREATE TABLE IF NOT EXISTS `cargo` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creado` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

DROP TABLE IF EXISTS `categoria`;
CREATE TABLE IF NOT EXISTS `categoria` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(90) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombre` (`nombre`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id`, `nombre`, `slug`, `descripcion`) VALUES
(1, 'bombonería', 'bomboneria', 'Categoría de bombonería'),
(2, 'Confitería', 'confiteria', 'Categoría de confitería'),
(3, 'Alfajores', 'alfajores', 'Categoría de alfajores'),
(4, 'Galletas', 'galletas', 'Categoría de galletas'),
(5, 'Chocolates', 'chocolates', 'Categoría de chocolates');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamento`
--

DROP TABLE IF EXISTS `departamento`;
CREATE TABLE IF NOT EXISTS `departamento` (
  `codigo` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creado` datetime(6) NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `departamento`
--

INSERT INTO `departamento` (`codigo`, `nombre`, `creado`) VALUES
(1, 'Produccion', '2025-10-05 19:43:08.356907');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `object_repr` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_flag` smallint UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2025-10-03 21:23:50.994039', '6', 'Jugos Artesanales', 1, '[{\"added\": {}}]', 9, 1),
(2, '2025-10-05 19:43:08.359870', '1', 'Produccion', 1, '[{\"added\": {}}]', 12, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(2, 'auth', 'permission'),
(3, 'auth', 'group'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(7, 'inventario', 'producto'),
(8, 'inventario', 'lote'),
(9, 'inventario', 'categoria'),
(10, 'usuarios', 'cargo'),
(11, 'usuarios', 'empleado'),
(12, 'usuarios', 'departamento');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2025-10-03 20:25:13.528258'),
(2, 'auth', '0001_initial', '2025-10-03 20:25:14.089837'),
(3, 'admin', '0001_initial', '2025-10-03 20:25:14.429207'),
(4, 'admin', '0002_logentry_remove_auto_add', '2025-10-03 20:25:14.443755'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2025-10-03 20:25:14.473325'),
(6, 'contenttypes', '0002_remove_content_type_name', '2025-10-03 20:25:14.560655'),
(7, 'auth', '0002_alter_permission_name_max_length', '2025-10-03 20:25:14.613087'),
(8, 'auth', '0003_alter_user_email_max_length', '2025-10-03 20:25:14.693696'),
(9, 'auth', '0004_alter_user_username_opts', '2025-10-03 20:25:14.699999'),
(10, 'auth', '0005_alter_user_last_login_null', '2025-10-03 20:25:14.737148'),
(11, 'auth', '0006_require_contenttypes_0002', '2025-10-03 20:25:14.738163'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2025-10-03 20:25:14.745166'),
(13, 'auth', '0008_alter_user_username_max_length', '2025-10-03 20:25:14.792029'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2025-10-03 20:25:14.853972'),
(15, 'auth', '0010_alter_group_name_max_length', '2025-10-03 20:25:14.908250'),
(16, 'auth', '0011_update_proxy_permissions', '2025-10-03 20:25:14.918651'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2025-10-03 20:25:14.979361'),
(18, 'inventario', '0001_initial', '2025-10-03 20:25:15.236583'),
(19, 'inventario', '0002_categoria_producto_categoria', '2025-10-03 20:25:15.424817'),
(20, 'sessions', '0001_initial', '2025-10-03 20:25:15.505979'),
(21, 'inventario', '0003_alter_categoria_slug', '2025-10-03 21:36:19.391285'),
(22, 'usuarios', '0001_initial', '2025-10-05 00:27:00.346790');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

DROP TABLE IF EXISTS `django_session`;
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('ozc8soxeqa5862tufu2egjnvlgp38pqs', '.eJxVjMEOwiAQRP-FsyELLSx49O43kAVWqRpISnsy_rtt0oMeZ96beYtA61LC2nkOUxZnocTpt4uUnlx3kB9U702mVpd5inJX5EG7vLbMr8vh_h0U6mVbD2iYdYw2s9ZeDWxgBErebtGhyo6AnXU-YSILkLwBvDlG9MqOg0bx-QLUCTb0:1v4mPb:gjj8X4r36oioPK3O6ezuygafEc76eVUQMlzVYhbvWWA', '2025-10-17 20:29:55.324000'),
('vgmktitzurtaq8fivvouvetzjdcaqlnu', '.eJxVjMEOwiAQRP-FsyELLSx49O43kAVWqRpISnsy_rtt0oMeZ96beYtA61LC2nkOUxZnocTpt4uUnlx3kB9U702mVpd5inJX5EG7vLbMr8vh_h0U6mVbD2iYdYw2s9ZeDWxgBErebtGhyo6AnXU-YSILkLwBvDlG9MqOg0bx-QLUCTb0:1v4pGD:k15pzjFK0ObBwQZeX-x3hGAKcakiMxd9LEUjFd_JYNY', '2025-10-17 23:32:25.008306');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

DROP TABLE IF EXISTS `empleado`;
CREATE TABLE IF NOT EXISTS `empleado` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `run` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paterno` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `materno` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sexo` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codigoEmpleado` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sueldo` int UNSIGNED NOT NULL,
  `fechNac` date DEFAULT NULL,
  `creado` datetime(6) NOT NULL,
  `cargo_id` bigint NOT NULL,
  `departamento_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `empleado_cargo_id_bb5f1a73` (`cargo_id`),
  KEY `empleado_departamento_id_bf397cb9` (`departamento_id`)
) ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lote`
--

DROP TABLE IF EXISTS `lote`;
CREATE TABLE IF NOT EXISTS `lote` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `codigo` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `cantidad` int UNSIGNED NOT NULL,
  `fecha_vencimiento` date DEFAULT NULL,
  `ubicacion` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `creado` datetime(6) NOT NULL,
  `producto_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uq_lote_producto_codigo` (`producto_id`,`codigo`),
  KEY `lote_fecha_vencimiento_1929c7d1` (`fecha_vencimiento`),
  KEY `lote_producto_id_e4e4089f` (`producto_id`)
) ENGINE=MyISAM AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `lote`
--

INSERT INTO `lote` (`id`, `codigo`, `cantidad`, `fecha_vencimiento`, `ubicacion`, `creado`, `producto_id`) VALUES
(1, 'LOTE-P1-001', 50, '2026-04-01', 'Bodega Central', '2025-10-03 17:28:04.000000', 1),
(2, 'LOTE-P2-001', 50, '2026-04-01', 'Bodega Central', '2025-10-03 17:28:04.000000', 2),
(3, 'LOTE-P3-001', 50, '2026-04-01', 'Bodega Central', '2025-10-03 17:28:04.000000', 3),
(4, 'LOTE-P4-001', 50, '2026-04-01', 'Bodega Central', '2025-10-03 17:28:04.000000', 4),
(5, 'LOTE-P5-001', 50, '2026-04-01', 'Bodega Central', '2025-10-03 17:28:04.000000', 5),
(6, 'LOTE-P6-001', 50, '2026-04-01', 'Bodega Central', '2025-10-03 17:28:04.000000', 6),
(7, 'LOTE-P7-001', 50, '2026-04-01', 'Bodega Central', '2025-10-03 17:28:04.000000', 7),
(8, 'LOTE-P8-001', 50, '2026-04-01', 'Bodega Central', '2025-10-03 17:28:04.000000', 8),
(9, 'LOTE-P9-001', 50, '2026-04-01', 'Bodega Central', '2025-10-03 17:28:04.000000', 9),
(10, 'LOTE-P10-001', 50, '2026-04-01', 'Bodega Central', '2025-10-03 17:28:04.000000', 10),
(11, 'LOTE-P11-001', 50, '2026-04-01', 'Bodega Central', '2025-10-03 17:28:04.000000', 11),
(12, 'LOTE-P12-001', 50, '2026-04-01', 'Bodega Central', '2025-10-03 17:28:04.000000', 12),
(13, 'LOTE-P13-001', 50, '2026-04-01', 'Bodega Central', '2025-10-03 17:28:04.000000', 13),
(14, 'LOTE-P14-001', 50, '2026-04-01', 'Bodega Central', '2025-10-03 17:28:04.000000', 14),
(15, 'LOTE-P15-001', 50, '2026-04-01', 'Bodega Central', '2025-10-03 17:28:04.000000', 15),
(16, 'LOTE-P16-001', 50, '2026-04-01', 'Bodega Central', '2025-10-03 17:28:04.000000', 16),
(17, 'LOTE-P17-001', 50, '2026-04-01', 'Bodega Central', '2025-10-03 17:28:04.000000', 17),
(18, 'LOTE-P18-001', 50, '2026-04-01', 'Bodega Central', '2025-10-03 17:28:04.000000', 18),
(19, 'LOTE-P19-001', 50, '2026-04-01', 'Bodega Central', '2025-10-03 17:28:04.000000', 19),
(20, 'LOTE-P20-001', 50, '2026-04-01', 'Bodega Central', '2025-10-03 17:28:04.000000', 20),
(21, 'LOTE-P21-001', 50, '2026-04-01', 'Bodega Central', '2025-10-03 17:28:04.000000', 21),
(22, 'LOTE-P22-001', 50, '2026-04-01', 'Bodega Central', '2025-10-03 17:28:04.000000', 22),
(23, 'LOTE-P23-001', 50, '2026-04-01', 'Bodega Central', '2025-10-03 17:28:04.000000', 23),
(24, 'LOTE-P24-001', 50, '2026-04-01', 'Bodega Central', '2025-10-03 17:28:04.000000', 24),
(25, 'LOTE-P25-001', 50, '2026-04-01', 'Bodega Central', '2025-10-03 17:28:04.000000', 25),
(26, 'LOTE-P26-001', 50, '2026-04-01', 'Bodega Central', '2025-10-03 17:28:04.000000', 26),
(27, 'LOTE-P27-001', 50, '2026-04-01', 'Bodega Central', '2025-10-03 17:28:04.000000', 27),
(28, 'LOTE-P28-001', 50, '2026-04-01', 'Bodega Central', '2025-10-03 17:28:04.000000', 28),
(29, 'LOTE-P29-001', 50, '2026-04-01', 'Bodega Central', '2025-10-03 17:28:04.000000', 29),
(30, 'LOTE-P30-001', 50, '2026-04-01', 'Bodega Central', '2025-10-03 17:28:04.000000', 30),
(31, 'LOTE-P31-001', 50, '2026-04-01', 'Bodega Central', '2025-10-03 17:28:04.000000', 31),
(32, 'LOTE-P32-001', 50, '2026-04-01', 'Bodega Central', '2025-10-03 17:28:04.000000', 32),
(33, 'LOTE-P33-001', 50, '2026-04-01', 'Bodega Central', '2025-10-03 17:28:04.000000', 33),
(34, 'LOTE-P34-001', 50, '2026-04-01', 'Bodega Central', '2025-10-03 17:28:04.000000', 34),
(35, 'LOTE-P35-001', 50, '2026-04-01', 'Bodega Central', '2025-10-03 17:28:04.000000', 35),
(36, 'LOTE-P36-001', 50, '2026-04-01', 'Bodega Central', '2025-10-03 17:28:04.000000', 36),
(37, 'LOTE-P37-001', 50, '2026-04-01', 'Bodega Central', '2025-10-03 17:28:04.000000', 37),
(38, 'LOTE-P38-001', 50, '2026-04-01', 'Bodega Central', '2025-10-03 17:28:04.000000', 38),
(39, 'LOTE-P39-001', 50, '2026-04-01', 'Bodega Central', '2025-10-03 17:28:04.000000', 39),
(40, 'LOTE-P1-002', 100, '2026-09-28', 'Vitrina Local', '2025-10-03 17:28:04.000000', 1),
(41, 'LOTE-P2-002', 100, '2026-09-28', 'Vitrina Local', '2025-10-03 17:28:04.000000', 2),
(42, 'LOTE-P3-002', 100, '2026-09-28', 'Vitrina Local', '2025-10-03 17:28:04.000000', 3),
(43, 'LOTE-P4-002', 100, '2026-09-28', 'Vitrina Local', '2025-10-03 17:28:04.000000', 4),
(44, 'LOTE-P5-002', 100, '2026-09-28', 'Vitrina Local', '2025-10-03 17:28:04.000000', 5),
(45, 'LOTE-P6-002', 100, '2026-09-28', 'Vitrina Local', '2025-10-03 17:28:04.000000', 6),
(46, 'LOTE-P7-002', 100, '2026-09-28', 'Vitrina Local', '2025-10-03 17:28:04.000000', 7),
(47, 'LOTE-P8-002', 100, '2026-09-28', 'Vitrina Local', '2025-10-03 17:28:04.000000', 8),
(48, 'LOTE-P9-002', 100, '2026-09-28', 'Vitrina Local', '2025-10-03 17:28:04.000000', 9),
(49, 'LOTE-P10-002', 100, '2026-09-28', 'Vitrina Local', '2025-10-03 17:28:04.000000', 10),
(50, 'LOTE-P11-002', 100, '2026-09-28', 'Vitrina Local', '2025-10-03 17:28:04.000000', 11),
(51, 'LOTE-P12-002', 100, '2026-09-28', 'Vitrina Local', '2025-10-03 17:28:04.000000', 12),
(52, 'LOTE-P13-002', 100, '2026-09-28', 'Vitrina Local', '2025-10-03 17:28:04.000000', 13),
(53, 'LOTE-P14-002', 100, '2026-09-28', 'Vitrina Local', '2025-10-03 17:28:04.000000', 14),
(54, 'LOTE-P15-002', 100, '2026-09-28', 'Vitrina Local', '2025-10-03 17:28:04.000000', 15),
(55, 'LOTE-P16-002', 100, '2026-09-28', 'Vitrina Local', '2025-10-03 17:28:04.000000', 16),
(56, 'LOTE-P17-002', 100, '2026-09-28', 'Vitrina Local', '2025-10-03 17:28:04.000000', 17),
(57, 'LOTE-P18-002', 100, '2026-09-28', 'Vitrina Local', '2025-10-03 17:28:04.000000', 18),
(58, 'LOTE-P19-002', 100, '2026-09-28', 'Vitrina Local', '2025-10-03 17:28:04.000000', 19),
(59, 'LOTE-P20-002', 100, '2026-09-28', 'Vitrina Local', '2025-10-03 17:28:04.000000', 20),
(60, 'LOTE-P21-002', 100, '2026-09-28', 'Vitrina Local', '2025-10-03 17:28:04.000000', 21),
(61, 'LOTE-P22-002', 100, '2026-09-28', 'Vitrina Local', '2025-10-03 17:28:04.000000', 22),
(62, 'LOTE-P23-002', 100, '2026-09-28', 'Vitrina Local', '2025-10-03 17:28:04.000000', 23),
(63, 'LOTE-P24-002', 100, '2026-09-28', 'Vitrina Local', '2025-10-03 17:28:04.000000', 24),
(64, 'LOTE-P25-002', 100, '2026-09-28', 'Vitrina Local', '2025-10-03 17:28:04.000000', 25),
(65, 'LOTE-P26-002', 100, '2026-09-28', 'Vitrina Local', '2025-10-03 17:28:04.000000', 26),
(66, 'LOTE-P27-002', 100, '2026-09-28', 'Vitrina Local', '2025-10-03 17:28:04.000000', 27),
(67, 'LOTE-P28-002', 100, '2026-09-28', 'Vitrina Local', '2025-10-03 17:28:04.000000', 28),
(68, 'LOTE-P29-002', 100, '2026-09-28', 'Vitrina Local', '2025-10-03 17:28:04.000000', 29),
(69, 'LOTE-P30-002', 100, '2026-09-28', 'Vitrina Local', '2025-10-03 17:28:04.000000', 30),
(70, 'LOTE-P31-002', 100, '2026-09-28', 'Vitrina Local', '2025-10-03 17:28:04.000000', 31),
(71, 'LOTE-P32-002', 100, '2026-09-28', 'Vitrina Local', '2025-10-03 17:28:04.000000', 32),
(72, 'LOTE-P33-002', 100, '2026-09-28', 'Vitrina Local', '2025-10-03 17:28:04.000000', 33),
(73, 'LOTE-P34-002', 100, '2026-09-28', 'Vitrina Local', '2025-10-03 17:28:04.000000', 34),
(74, 'LOTE-P35-002', 100, '2026-09-28', 'Vitrina Local', '2025-10-03 17:28:04.000000', 35),
(75, 'LOTE-P36-002', 100, '2026-09-28', 'Vitrina Local', '2025-10-03 17:28:04.000000', 36),
(76, 'LOTE-P37-002', 100, '2026-09-28', 'Vitrina Local', '2025-10-03 17:28:04.000000', 37),
(77, 'LOTE-P38-002', 100, '2026-09-28', 'Vitrina Local', '2025-10-03 17:28:04.000000', 38),
(78, 'LOTE-P39-002', 100, '2026-09-28', 'Vitrina Local', '2025-10-03 17:28:04.000000', 39);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

DROP TABLE IF EXISTS `producto`;
CREATE TABLE IF NOT EXISTS `producto` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `unidad` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `precio` decimal(12,2) NOT NULL,
  `stock_minimo` int UNSIGNED NOT NULL,
  `creado` datetime(6) NOT NULL,
  `categoria_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `producto_categoria_id_67131168` (`categoria_id`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id`, `nombre`, `unidad`, `precio`, `stock_minimo`, `creado`, `categoria_id`) VALUES
(1, 'Higos Chocolate', 'UN', 4500.00, 5, '2025-10-03 17:27:30.000000', 5),
(2, 'Limones Chocolate', 'UN', 4500.00, 5, '2025-10-03 17:27:30.000000', 5),
(3, 'Naranjitas Chocolate', 'UN', 4500.00, 5, '2025-10-03 17:27:30.000000', 5),
(4, 'Papayitas Chocolate', 'UN', 4500.00, 5, '2025-10-03 17:27:30.000000', 5),
(5, 'Almendras Chocolate', 'KG', 4500.00, 5, '2025-10-03 17:27:30.000000', 5),
(6, 'Maní Chocolate', 'KG', 4500.00, 5, '2025-10-03 17:27:30.000000', 5),
(7, 'Huevos Almendras', 'UN', 4500.00, 5, '2025-10-03 17:27:30.000000', 5),
(8, 'Pasas al Ron', 'KG', 4500.00, 5, '2025-10-03 17:27:30.000000', 5),
(9, 'Barras de Chocolate', 'UN', 5500.00, 5, '2025-10-03 17:27:30.000000', 5),
(10, 'Galletón de Papaya sin azúcar', 'UN', 3850.00, 5, '2025-10-03 17:27:30.000000', 4),
(11, 'Caja Galletas Trío', 'UN', 4300.00, 5, '2025-10-03 17:27:30.000000', 4),
(12, 'Hojarascas', 'UN', 2171.00, 5, '2025-10-03 17:27:30.000000', 4),
(13, 'Maicenos', 'UN', 2639.00, 5, '2025-10-03 17:27:30.000000', 4),
(14, 'Lengüita de Gato', 'UN', 1599.00, 5, '2025-10-03 17:27:30.000000', 4),
(15, 'Galleta de Avena y Nuez', 'UN', 1599.00, 5, '2025-10-03 17:27:30.000000', 4),
(16, 'Cachitos Chocolate Nuez', 'UN', 2639.00, 5, '2025-10-03 17:27:30.000000', 4),
(17, 'Bolsa de género con galletas', 'UN', 4500.00, 5, '2025-10-03 17:27:30.000000', 4),
(18, 'Alfajores 1un', 'UN', 2200.00, 5, '2025-10-03 17:27:30.000000', 3),
(19, 'Alfajores 2un', 'UN', 2850.00, 5, '2025-10-03 17:27:30.000000', 3),
(20, 'Alfajores Lili’s Flow Pack', 'UN', 1200.00, 5, '2025-10-03 17:27:30.000000', 3),
(21, 'Alfajores Regionales Lugares Que Hablan 2un', 'UN', 3500.00, 5, '2025-10-03 17:27:30.000000', 3),
(22, 'Alfajores Regionales Lugares Que Hablan 4un', 'UN', 6200.00, 5, '2025-10-03 17:27:30.000000', 3),
(23, 'Caja de Alfajores 12un', 'UN', 11200.00, 5, '2025-10-03 17:27:30.000000', 3),
(24, 'Caja de Alfajores 6un', 'UN', 7090.00, 5, '2025-10-03 17:27:30.000000', 3),
(25, 'Caja de Alfajores 3un', 'UN', 3500.00, 5, '2025-10-03 17:27:30.000000', 3),
(26, 'Caja de Alfajores temáticos', 'UN', 8200.00, 5, '2025-10-03 17:27:30.000000', 3),
(27, 'Gomitas de Papaya', 'UN', 4500.00, 5, '2025-10-03 17:27:30.000000', 2),
(28, 'Gomón de papaya', 'UN', 3850.00, 5, '2025-10-03 17:27:30.000000', 2),
(29, 'Gomitas de Fruta', 'UN', 4500.00, 5, '2025-10-03 17:27:30.000000', 2),
(30, 'Guagüitas', 'UN', 3850.00, 5, '2025-10-03 17:27:30.000000', 2),
(31, 'Cuchuflí Chocolate Negro 8un', 'UN', 1824.00, 5, '2025-10-03 17:27:30.000000', 2),
(32, 'Cuchuflí Chocolate Blanco 8un', 'UN', 1919.00, 5, '2025-10-03 17:27:30.000000', 2),
(33, 'Cuchuflí Chocolate 4un', 'UN', 2500.00, 5, '2025-10-03 17:27:30.000000', 2),
(34, 'Delicias Manjar (2 un)', 'UN', 1428.00, 5, '2025-10-03 17:27:30.000000', 2),
(35, 'Bombones 4un', 'UN', 3500.00, 5, '2025-10-03 17:27:30.000000', 1),
(36, 'Bombones 6un', 'UN', 4800.00, 5, '2025-10-03 17:27:30.000000', 1),
(37, 'Bombones 12un', 'UN', 9600.00, 5, '2025-10-03 17:27:30.000000', 1),
(38, 'Conito de Higo', 'UN', 3300.00, 5, '2025-10-03 17:27:30.000000', 1),
(39, 'Torta de Higos', 'UN', 3500.00, 5, '2025-10-03 17:27:30.000000', 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
