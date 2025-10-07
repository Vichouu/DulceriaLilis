-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 07-10-2025 a las 18:16:15
-- Versión del servidor: 8.3.0
-- Versión de PHP: 8.2.18

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
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  KEY `auth_permission_content_type_id_2f476e4b` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

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
(41, 'Can add Departamento', 11, 'add_departamento'),
(42, 'Can change Departamento', 11, 'change_departamento'),
(43, 'Can delete Departamento', 11, 'delete_departamento'),
(44, 'Can view Departamento', 11, 'view_departamento'),
(45, 'Can add Empleado', 12, 'add_empleado'),
(46, 'Can change Empleado', 12, 'change_empleado'),
(47, 'Can delete Empleado', 12, 'delete_empleado'),
(48, 'Can view Empleado', 12, 'view_empleado'),
(49, 'Can add Proveedor', 13, 'add_proveedor'),
(50, 'Can change Proveedor', 13, 'change_proveedor'),
(51, 'Can delete Proveedor', 13, 'delete_proveedor'),
(52, 'Can view Proveedor', 13, 'view_proveedor'),
(53, 'Can add Rubro', 14, 'add_rubro'),
(54, 'Can change Rubro', 14, 'change_rubro'),
(55, 'Can delete Rubro', 14, 'delete_rubro'),
(56, 'Can view Rubro', 14, 'view_rubro'),
(57, 'Can add Contacto', 15, 'add_contacto'),
(58, 'Can change Contacto', 15, 'change_contacto'),
(59, 'Can delete Contacto', 15, 'delete_contacto'),
(60, 'Can view Contacto', 15, 'view_contacto'),
(61, 'Can add Auditoría de Proveedor', 16, 'add_auditoriaproveedor'),
(62, 'Can change Auditoría de Proveedor', 16, 'change_auditoriaproveedor'),
(63, 'Can delete Auditoría de Proveedor', 16, 'delete_auditoriaproveedor'),
(64, 'Can view Auditoría de Proveedor', 16, 'view_auditoriaproveedor');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci NOT NULL,
  `first_name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$1000000$HQI2fGUcTDK6qWGxR62yfM$bHklRQjJN3+T/p9L5g5sGBcJh4lXUxklS6JG1pusf8E=', '2025-10-07 18:13:40.093689', 1, 'Admin', '', '', 'admin.trabajito123@gmail.com', 1, 1, '2025-10-07 17:06:49.945353');

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargo`
--

DROP TABLE IF EXISTS `cargo`;
CREATE TABLE IF NOT EXISTS `cargo` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci NOT NULL,
  `creado` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `cargo`
--

INSERT INTO `cargo` (`id`, `nombre`, `creado`) VALUES
(4, 'Operario(a) de Producción', '2025-10-05 21:54:38.661622'),
(3, 'Jefe(a) de Planta', '2025-10-05 21:54:13.408315'),
(5, 'Encargado(a) de Control de Calidad', '2025-10-05 21:54:57.729813'),
(6, 'Maestro(a) Pastelero(a)', '2025-10-05 21:56:13.420591'),
(7, 'Auxiliar de Empaque', '2025-10-05 21:56:25.498062'),
(8, 'Técnico(a) de Mantenimiento de Línea', '2025-10-05 21:56:48.284584'),
(9, 'Ejecutivo(a) de Ventas Retail', '2025-10-05 21:57:31.876974'),
(10, 'Coordinador(a) de Exportaciones', '2025-10-05 21:57:45.051841'),
(11, 'Vendedor(a) Tienda Física / Sala de Ventas', '2025-10-05 21:58:26.839822'),
(12, 'Representante Comercial', '2025-10-05 21:58:47.386383'),
(13, 'Coordinador(a) Logístico(a) / Despacho', '2025-10-05 22:00:00.023946'),
(14, 'Bodeguero(a) / Inventario', '2025-10-05 22:00:17.007489'),
(15, 'Conductor(a) de Reparto', '2025-10-05 22:00:31.834643'),
(16, 'Encargado(a) de Marketing', '2025-10-05 22:01:25.630235'),
(17, 'Diseñador(a) de Packaging', '2025-10-05 22:02:05.453114'),
(18, 'Desarrollador(a) de Producto / I+D (sabores/formatos)', '2025-10-05 22:02:23.080044'),
(19, 'Analista de Costos / Precios', '2025-10-05 22:02:59.433973'),
(20, 'Asistente Contable / Tesorería', '2025-10-05 22:03:07.511327'),
(21, 'Encargado(a) de RR.HH', '2025-10-05 22:04:33.527896'),
(22, 'Asistente de RR.HH. (turnos, 40h, licencias)', '2025-10-05 22:04:58.921360');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

DROP TABLE IF EXISTS `categoria`;
CREATE TABLE IF NOT EXISTS `categoria` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci NOT NULL,
  `descripcion` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombre` (`nombre`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id`, `nombre`, `descripcion`) VALUES
(1, 'bombonería', 'Categoría de bombonería'),
(2, 'Confitería', 'Categoría de confitería'),
(3, 'Alfajores', 'Categoría de alfajores'),
(4, 'Galletas', 'Categoría de galletas'),
(5, 'Chocolates', 'Categoría de chocolates');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamento`
--

DROP TABLE IF EXISTS `departamento`;
CREATE TABLE IF NOT EXISTS `departamento` (
  `codigo` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci NOT NULL,
  `creado` datetime(6) NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `departamento`
--

INSERT INTO `departamento` (`codigo`, `nombre`, `creado`) VALUES
(1, 'Produccion', '2025-10-05 19:43:08.356907'),
(2, 'Ventas/Distribución', '2025-10-05 21:43:06.326905'),
(3, 'Marketing', '2025-10-05 21:43:37.609946'),
(4, 'Finanzas', '2025-10-05 21:43:56.962409'),
(5, 'Recursos Humanos', '2025-10-05 21:46:48.437690'),
(6, 'Logística / Operaciones', '2025-10-05 21:59:43.793823'),
(7, 'Control de Calidad', '2025-10-05 22:34:16.572902');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci,
  `object_repr` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci NOT NULL,
  `action_flag` smallint UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2025-10-03 21:23:50.994039', '6', 'Jugos Artesanales', 1, '[{\"added\": {}}]', 9, 1),
(2, '2025-10-05 19:43:08.359870', '1', 'Produccion', 1, '[{\"added\": {}}]', 12, 1),
(3, '2025-10-05 21:43:06.329193', '2', 'Ventas/Distribución', 1, '[{\"added\": {}}]', 12, 1),
(4, '2025-10-05 21:43:37.611109', '3', 'Marketing', 1, '[{\"added\": {}}]', 12, 1),
(5, '2025-10-05 21:43:56.963507', '4', 'Finanzas', 1, '[{\"added\": {}}]', 12, 1),
(6, '2025-10-05 21:46:48.439258', '5', 'Recursos Humanos', 1, '[{\"added\": {}}]', 12, 1),
(7, '2025-10-05 21:51:53.855345', '1', 'Jefe/a de Planta', 1, '[{\"added\": {}}]', 10, 1),
(8, '2025-10-05 21:52:20.332215', '2', 'Operario/a de Producción', 1, '[{\"added\": {}}]', 10, 1),
(9, '2025-10-05 21:52:52.135804', '2', 'Operario/a de Producción', 3, '', 10, 1),
(10, '2025-10-05 21:52:52.135832', '1', 'Jefe/a de Planta', 3, '', 10, 1),
(11, '2025-10-05 21:54:13.409893', '3', 'Jefe(a) de Planta', 1, '[{\"added\": {}}]', 10, 1),
(12, '2025-10-05 21:54:38.662737', '4', 'Operario(a) de Producción', 1, '[{\"added\": {}}]', 10, 1),
(13, '2025-10-05 21:54:57.730922', '5', 'Encargado(a) de Control de Calidad', 1, '[{\"added\": {}}]', 10, 1),
(14, '2025-10-05 21:56:13.422130', '6', 'Maestro(a) Pastelero(a)', 1, '[{\"added\": {}}]', 10, 1),
(15, '2025-10-05 21:56:25.499307', '7', 'Auxiliar de Empaque', 1, '[{\"added\": {}}]', 10, 1),
(16, '2025-10-05 21:56:48.285707', '8', 'Técnico(a) de Mantenimiento de Línea', 1, '[{\"added\": {}}]', 10, 1),
(17, '2025-10-05 21:57:31.878529', '9', 'Ejecutivo(a) de Ventas Retail', 1, '[{\"added\": {}}]', 10, 1),
(18, '2025-10-05 21:57:45.053508', '10', 'Coordinador(a) de Exportaciones', 1, '[{\"added\": {}}]', 10, 1),
(19, '2025-10-05 21:58:26.840967', '11', 'Vendedor(a) Tienda Física / Sala de Ventas', 1, '[{\"added\": {}}]', 10, 1),
(20, '2025-10-05 21:58:47.387520', '12', 'Representante Comercial', 1, '[{\"added\": {}}]', 10, 1),
(21, '2025-10-05 21:59:43.796225', '6', 'Logística / Operaciones', 1, '[{\"added\": {}}]', 12, 1),
(22, '2025-10-05 22:00:00.025132', '13', 'Coordinador(a) Logístico(a) / Despacho', 1, '[{\"added\": {}}]', 10, 1),
(23, '2025-10-05 22:00:17.008620', '14', 'Bodeguero(a) / Inventario', 1, '[{\"added\": {}}]', 10, 1),
(24, '2025-10-05 22:00:31.835872', '15', 'Conductor(a) de Reparto', 1, '[{\"added\": {}}]', 10, 1),
(25, '2025-10-05 22:01:25.631322', '16', 'Encargado(a) de Marketing', 1, '[{\"added\": {}}]', 10, 1),
(26, '2025-10-05 22:02:05.454644', '17', 'Diseñador(a) de Packaging', 1, '[{\"added\": {}}]', 10, 1),
(27, '2025-10-05 22:02:23.081115', '18', 'Desarrollador(a) de Producto / I+D (sabores/formatos)', 1, '[{\"added\": {}}]', 10, 1),
(28, '2025-10-05 22:02:59.435112', '19', 'Analista de Costos / Precios', 1, '[{\"added\": {}}]', 10, 1),
(29, '2025-10-05 22:03:07.512457', '20', 'Asistente Contable / Tesorería', 1, '[{\"added\": {}}]', 10, 1),
(30, '2025-10-05 22:04:33.529012', '21', 'Encargado(a) de RR.HH', 1, '[{\"added\": {}}]', 10, 1),
(31, '2025-10-05 22:04:58.922487', '22', 'Asistente de RR.HH. (turnos, 40h, licencias)', 1, '[{\"added\": {}}]', 10, 1),
(32, '2025-10-05 22:13:35.310352', '1', 'Camila Muñoz Reyes', 1, '[{\"added\": {}}]', 11, 1),
(33, '2025-10-05 22:19:26.583100', '2', 'Diego Pérez Soto', 1, '[{\"added\": {}}]', 11, 1),
(34, '2025-10-05 22:22:39.065044', '3', 'Valentina González Araya', 1, '[{\"added\": {}}]', 11, 1),
(35, '2025-10-05 22:23:55.468399', '4', 'Matías Rojas Cortés', 1, '[{\"added\": {}}]', 11, 1),
(36, '2025-10-05 22:28:29.422403', '5', 'Isidora López Mella', 1, '[{\"added\": {}}]', 11, 1),
(37, '2025-10-05 22:31:41.537717', '6', 'Felipe Vargas Ibarra', 1, '[{\"added\": {}}]', 11, 1),
(38, '2025-10-05 22:34:16.574606', '7', 'Control de Calidad', 1, '[{\"added\": {}}]', 12, 1),
(39, '2025-10-05 22:35:36.610339', '7', 'Antonia Saavedra Castro', 1, '[{\"added\": {}}]', 11, 1),
(40, '2025-10-05 22:38:07.425824', '8', 'Ignacio Navarro Pizarro', 1, '[{\"added\": {}}]', 11, 1),
(41, '2025-10-05 22:41:31.493388', '9', 'Trinidad Herrera Fuentes', 1, '[{\"added\": {}}]', 11, 1),
(42, '2025-10-05 22:43:07.553270', '10', 'Francisco Ortega Carrasco', 1, '[{\"added\": {}}]', 11, 1),
(43, '2025-10-06 23:40:50.540526', '1', 'Importadora de Dulces', 1, '[{\"added\": {}}]', 13, 1),
(44, '2025-10-06 23:41:38.323728', '2', 'Venta de Dulce al por Mayor', 1, '[{\"added\": {}}]', 13, 1),
(45, '2025-10-06 23:41:55.520287', '3', 'Chocolateria Artesanal', 1, '[{\"added\": {}}]', 13, 1),
(46, '2025-10-07 17:45:01.618048', '3', 'Chocolateria Artesanal', 3, '', 14, 1),
(47, '2025-10-07 17:45:01.618048', '1', 'Importadora de Dulces', 3, '', 14, 1),
(48, '2025-10-07 17:45:01.618048', '2', 'Venta de Dulce al por Mayor', 3, '', 14, 1),
(49, '2025-10-07 17:46:36.088048', '4', 'Dulces del Valle Ltda.', 1, '[{\"added\": {}}]', 14, 1),
(50, '2025-10-07 17:46:44.956046', '4', 'Dulces del Valle Ltda.', 3, '', 14, 1),
(51, '2025-10-07 17:48:09.511718', '5', 'Golosinas importadas y confites', 1, '[{\"added\": {}}]', 14, 1),
(52, '2025-10-07 17:48:11.304923', '6', 'Venta de dulces al por mayor', 1, '[{\"added\": {}}]', 14, 1),
(53, '2025-10-07 17:48:16.506291', '7', 'Proveedor de harina y derivados', 1, '[{\"added\": {}}]', 14, 1),
(54, '2025-10-07 17:48:21.044319', '8', 'Distribución de huevos frescos', 1, '[{\"added\": {}}]', 14, 1),
(55, '2025-10-07 17:48:25.186544', '9', 'Azúcar, endulzantes y cacao', 1, '[{\"added\": {}}]', 14, 1),
(56, '2025-10-07 17:48:29.484787', '10', 'Frutos secos y semillas', 1, '[{\"added\": {}}]', 14, 1),
(57, '2025-10-07 17:48:34.591190', '11', 'Envases plásticos, frascos y etiquetas', 1, '[{\"added\": {}}]', 14, 1),
(58, '2025-10-07 17:48:39.909503', '12', 'Margarinas, mantequillas y aceites', 1, '[{\"added\": {}}]', 14, 1),
(59, '2025-10-07 17:48:45.090400', '13', 'Productos artesanales', 1, '[{\"added\": {}}]', 14, 1),
(60, '2025-10-07 17:48:51.965911', '14', 'Cajas y envoltorios para dulces', 1, '[{\"added\": {}}]', 14, 1),
(61, '2025-10-07 17:51:55.790310', '1', 'Dulces del Valle Ltda. (70.123.456-7)', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"Contacto\", \"object\": \"Juan P\\u00e9rez \\u2014 Dulces del Valle Ltda.\"}}]', 13, 1),
(62, '2025-10-07 17:53:57.119294', '2', 'Caramelos y Confites S.A. (70.234.567-8)', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"Contacto\", \"object\": \"Mar\\u00eda Gonz\\u00e1lez \\u2014 Caramelos y Confites S.A.\"}}]', 13, 1),
(63, '2025-10-07 17:55:01.195954', '3', 'Harinas La Trigueña Ltda. (70.345.678-5)', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"Contacto\", \"object\": \"Roberto Torres \\u2014 Harinas La Trigue\\u00f1a Ltda.\"}}]', 13, 1),
(64, '2025-10-07 17:57:06.306529', '4', 'Huevos San Pedro (70.456.789-0)', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"Contacto\", \"object\": \"Laura D\\u00edaz \\u2014 Huevos San Pedro\"}}]', 13, 1),
(65, '2025-10-07 17:58:06.156863', '5', 'Azúcar y Dulzura SpA (70.567.890-1)', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"Contacto\", \"object\": \"Carlos Soto \\u2014 Az\\u00facar y Dulzura SpA\"}}]', 13, 1),
(66, '2025-10-07 18:00:17.951857', '6', 'Frutos Secos El Trébol (70.678.901-2)', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"Contacto\", \"object\": \"Valentina Ram\\u00edrez \\u2014 Frutos Secos El Tr\\u00e9bol\"}}]', 13, 1),
(67, '2025-10-07 18:01:17.877182', '7', 'Envases y Etiquetas del Norte (70.789.012-3)', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"Contacto\", \"object\": \"Pablo Fern\\u00e1ndez \\u2014 Envases y Etiquetas del Norte\"}}]', 13, 1),
(68, '2025-10-07 18:02:15.200197', '8', 'Distribuidora PanSur Ltda. (70.890.123-4)', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"Contacto\", \"object\": \"Andr\\u00e9s Herrera \\u2014 Distribuidora PanSur Ltda.\"}}]', 13, 1),
(69, '2025-10-07 18:03:10.030992', '9', 'La Dulcería Familiar (70.901.234-5)', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"Contacto\", \"object\": \"Teresa Mart\\u00ednez \\u2014 La Dulcer\\u00eda Familiar\"}}]', 13, 1),
(70, '2025-10-07 18:03:55.454452', '10', 'Cartonajes San Andrés (70.012.345-6)', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"Contacto\", \"object\": \"Felipe Gonz\\u00e1lez \\u2014 Cartonajes San Andr\\u00e9s\"}}]', 13, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

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
(11, 'usuarios', 'departamento'),
(12, 'usuarios', 'empleado'),
(13, 'proveedores', 'proveedor'),
(14, 'proveedores', 'rubro'),
(15, 'proveedores', 'contacto'),
(16, 'proveedores', 'auditoriaproveedor');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2025-10-07 17:05:07.973089'),
(2, 'auth', '0001_initial', '2025-10-07 17:05:08.532627'),
(3, 'admin', '0001_initial', '2025-10-07 17:05:08.753413'),
(4, 'admin', '0002_logentry_remove_auto_add', '2025-10-07 17:05:08.753413'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2025-10-07 17:05:08.771196'),
(6, 'contenttypes', '0002_remove_content_type_name', '2025-10-07 17:05:08.839850'),
(7, 'auth', '0002_alter_permission_name_max_length', '2025-10-07 17:05:08.877305'),
(8, 'auth', '0003_alter_user_email_max_length', '2025-10-07 17:05:08.916982'),
(9, 'auth', '0004_alter_user_username_opts', '2025-10-07 17:05:08.926313'),
(10, 'auth', '0005_alter_user_last_login_null', '2025-10-07 17:05:08.962193'),
(11, 'auth', '0006_require_contenttypes_0002', '2025-10-07 17:05:08.962193'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2025-10-07 17:05:08.970854'),
(13, 'auth', '0008_alter_user_username_max_length', '2025-10-07 17:05:09.003420'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2025-10-07 17:05:09.049940'),
(15, 'auth', '0010_alter_group_name_max_length', '2025-10-07 17:05:09.087729'),
(16, 'auth', '0011_update_proxy_permissions', '2025-10-07 17:05:09.097175'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2025-10-07 17:05:09.135505'),
(18, 'inventario', '0001_initial', '2025-10-07 17:05:09.283319'),
(19, 'inventario', '0002_categoria_producto_categoria', '2025-10-07 17:05:09.388262'),
(20, 'inventario', '0003_alter_categoria_slug', '2025-10-07 17:05:09.390270'),
(21, 'proveedores', '0001_initial', '2025-10-07 17:05:09.616274'),
(22, 'proveedores', '0002_remove_contacto_email_remove_contacto_nombre_and_more', '2025-10-07 17:05:09.783066'),
(23, 'proveedores', '0003_remove_contacto_usuario_contacto_email_and_more', '2025-10-07 17:05:10.033103'),
(24, 'sessions', '0001_initial', '2025-10-07 17:05:10.075191'),
(25, 'usuarios', '0001_initial', '2025-10-07 17:05:10.270810'),
(26, 'inventario', '0004_remove_categoria_slug', '2025-10-07 18:12:18.387548');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

DROP TABLE IF EXISTS `django_session`;
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('m65dtg8b5hyohzglgnl4ubw612ujfc7a', '.eJxVjDsOwjAQBe_iGlnZ-ENCSZ8zWLvrNQ4gW4qTCnF3iJQC2jcz76UCbmsOW5MlzFFdFKjT70bIDyk7iHcst6q5lnWZSe-KPmjTU43yvB7u30HGlr8185DYeofsk-udDJAMEyZvRuMxnrueBTsCEg-WPEXrQEawglZYTFTvDwwmORI:1v6B9S:wWpRZcE7Sod5JOXXS_tYYL-XlFUyPlz8Axnby5PuW8A', '2025-10-21 17:07:02.765378'),
('ozc8soxeqa5862tufu2egjnvlgp38pqs', '.eJxVjMEOwiAQRP-FsyELLSx49O43kAVWqRpISnsy_rtt0oMeZ96beYtA61LC2nkOUxZnocTpt4uUnlx3kB9U702mVpd5inJX5EG7vLbMr8vh_h0U6mVbD2iYdYw2s9ZeDWxgBErebtGhyo6AnXU-YSILkLwBvDlG9MqOg0bx-QLUCTb0:1v4mPb:gjj8X4r36oioPK3O6ezuygafEc76eVUQMlzVYhbvWWA', '2025-10-17 20:29:55.324000'),
('vgmktitzurtaq8fivvouvetzjdcaqlnu', '.eJxVjMEOwiAQRP-FsyELLSx49O43kAVWqRpISnsy_rtt0oMeZ96beYtA61LC2nkOUxZnocTpt4uUnlx3kB9U702mVpd5inJX5EG7vLbMr8vh_h0U6mVbD2iYdYw2s9ZeDWxgBErebtGhyo6AnXU-YSILkLwBvDlG9MqOg0bx-QLUCTb0:1v4pGD:k15pzjFK0ObBwQZeX-x3hGAKcakiMxd9LEUjFd_JYNY', '2025-10-17 23:32:25.008306'),
('g4w5jblc4p848ga837xfuph5v9ivz0xe', '.eJxVjMEOwiAQRP-FsyELLSx49O43kAVWqRpISnsy_rtt0oMeZ96beYtA61LC2nkOUxZnocTpt4uUnlx3kB9U702mVpd5inJX5EG7vLbMr8vh_h0U6mVbD2iYdYw2s9ZeDWxgBErebtGhyo6AnXU-YSILkLwBvDlG9MqOg0bx-QLUCTb0:1v5uh8:PKfI-X5o5nCtLkHrqSm_0oAZsm4psWILwYgcII3oUqc', '2025-10-20 23:32:42.437424');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

DROP TABLE IF EXISTS `empleado`;
CREATE TABLE IF NOT EXISTS `empleado` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `run` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci NOT NULL,
  `nombre` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci NOT NULL,
  `paterno` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci NOT NULL,
  `materno` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci NOT NULL,
  `sexo` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci NOT NULL,
  `codigoEmpleado` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci NOT NULL,
  `sueldo` int UNSIGNED NOT NULL,
  `fechNac` date DEFAULT NULL,
  `creado` datetime(6) NOT NULL,
  `cargo_id` bigint NOT NULL,
  `departamento_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `empleado_cargo_id_bb5f1a73` (`cargo_id`),
  KEY `empleado_departamento_id_bf397cb9` (`departamento_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `empleado`
--

INSERT INTO `empleado` (`id`, `run`, `nombre`, `paterno`, `materno`, `sexo`, `codigoEmpleado`, `sueldo`, `fechNac`, `creado`, `cargo_id`, `departamento_id`) VALUES
(1, '12345678-5', 'Camila', 'Muñoz', 'Reyes', 'f', 'E-0001', 650000, '1994-09-12', '2025-10-05 22:13:35.307709', 3, 1),
(2, '1345th9-9', 'Diego', 'Pérez', 'Soto', 'm', 'E-0002', 520000, '1994-11-02', '2025-10-05 22:19:26.580129', 12, 2),
(3, '14567890-0', 'Valentina', 'González', 'Araya', 'f', 'E-0003', 580000, '1996-04-21', '2025-10-05 22:22:39.062223', 16, 3),
(4, '15678901-1', 'Matías', 'Rojas', 'Cortés', 'm', 'E-0004', 600000, '1991-01-14', '2025-10-05 22:23:55.465099', 19, 4),
(5, '16789012-1', 'Isidora', 'López', 'Mella', 'f', 'E-0005', 600000, '1998-09-28', '2025-10-05 22:28:29.420113', 21, 5),
(6, '17890123-0', 'Felipe', 'Vargas', 'Ibarra', 'm', 'E-0006', 590000, '1992-12-02', '2025-10-05 22:31:41.535393', 13, 6),
(7, '18901234-9', 'Antonia', 'Saavedra', 'Castro', 'f', 'E-0007', 550000, '1998-06-17', '2025-10-05 22:35:36.607904', 5, 7),
(8, '19012345-6', 'Ignacio', 'Navarro', 'Pizarro', 'm', 'E-0008', 650000, '1990-04-19', '2025-10-05 22:38:07.423648', 18, 3),
(9, '20123456-5', 'Trinidad', 'Herrera', 'Fuentes', 'f', 'E-0009', 620000, '1997-06-18', '2025-10-05 22:41:31.490777', 6, 1),
(10, '21234567-9', 'Francisco', 'Ortega', 'Carrasco', 'm', 'E-0010', 550000, '1999-11-05', '2025-10-05 22:43:07.550624', 9, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lote`
--

DROP TABLE IF EXISTS `lote`;
CREATE TABLE IF NOT EXISTS `lote` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `codigo` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci NOT NULL,
  `cantidad` int UNSIGNED NOT NULL,
  `fecha_vencimiento` date DEFAULT NULL,
  `ubicacion` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci NOT NULL,
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
  `nombre` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci NOT NULL,
  `unidad` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci NOT NULL,
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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores_auditoriaproveedor`
--

DROP TABLE IF EXISTS `proveedores_auditoriaproveedor`;
CREATE TABLE IF NOT EXISTS `proveedores_auditoriaproveedor` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `accion` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci NOT NULL,
  `fecha` datetime(6) NOT NULL,
  `usuario` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci NOT NULL,
  `proveedor_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `proveedores_auditoriaproveedor_proveedor_id_f09fcafb` (`proveedor_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `proveedores_auditoriaproveedor`
--

INSERT INTO `proveedores_auditoriaproveedor` (`id`, `accion`, `fecha`, `usuario`, `proveedor_id`) VALUES
(1, 'Creación', '2025-10-07 17:51:55.790310', '', 1),
(2, 'Creación', '2025-10-07 17:53:57.106376', '', 2),
(3, 'Creación', '2025-10-07 17:55:01.193128', '', 3),
(4, 'Creación', '2025-10-07 17:57:06.300080', '', 4),
(5, 'Creación', '2025-10-07 17:58:06.147985', '', 5),
(6, 'Creación', '2025-10-07 18:00:17.951857', '', 6),
(7, 'Creación', '2025-10-07 18:01:17.720517', '', 7),
(8, 'Creación', '2025-10-07 18:02:15.192915', '', 8),
(9, 'Creación', '2025-10-07 18:03:10.030992', '', 9),
(10, 'Creación', '2025-10-07 18:03:55.446342', '', 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores_contacto`
--

DROP TABLE IF EXISTS `proveedores_contacto`;
CREATE TABLE IF NOT EXISTS `proveedores_contacto` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `cargo` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci NOT NULL,
  `proveedor_id` bigint NOT NULL,
  `email` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci NOT NULL,
  `nombre` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci NOT NULL,
  `telefono` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `proveedores_contacto_proveedor_id_5d3b8aa7` (`proveedor_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `proveedores_contacto`
--

INSERT INTO `proveedores_contacto` (`id`, `cargo`, `proveedor_id`, `email`, `nombre`, `telefono`) VALUES
(1, 'Gerente de Ventas', 1, 'juan.perez@dulcesdelvalle.cl', 'Juan Pérez', '+56 9 1234 5678'),
(2, 'Coordinadora de Marketing', 2, 'maria.gonzalez@caramelosyconfites.cl', 'María González', '+56 9 2345 6789'),
(3, 'Director de Operaciones', 3, 'roberto.torres@bomboneschile.cl', 'Roberto Torres', '+56 9 3456 7890'),
(4, 'Ejecutiva de Cuentas', 4, 'laura.diaz@frutossecostrebol.cl', 'Laura Díaz', '+56 9 4567 8901'),
(5, 'Jefe de Logística', 5, 'carlos.soto@azucarydulzura.cl', 'Carlos Soto', '+56 9 5678 9012'),
(6, 'Responsable de Compras', 6, 'valentina.ramirez@casadelregaliz.cl', 'Valentina Ramírez', '+56 9 6789 0123'),
(7, 'Director Financiero', 7, 'pablo.fernandez@golosinascoloridas.cl', 'Pablo Fernández', '+56 9 7890 1234'),
(8, 'Asesor Comercial', 8, 'andres.herrera@confiteriareal.cl', 'Andrés Herrera', '+56 9 8901 2345'),
(9, 'Encargada de Clientes', 9, 'teresa.martinez@ladulceriafamiliar.cl', 'Teresa Martínez', '+56 9 9012 3456'),
(10, 'Director General', 10, 'felipe.gonzalez@sweetsgalletas.cl', 'Felipe González', '+56 9 1023 4567');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores_proveedor`
--

DROP TABLE IF EXISTS `proveedores_proveedor`;
CREATE TABLE IF NOT EXISTS `proveedores_proveedor` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `rut` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci NOT NULL,
  `nombre` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci NOT NULL,
  `telefono` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci NOT NULL,
  `direccion` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci NOT NULL,
  `ciudad` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci NOT NULL,
  `activo` tinyint(1) NOT NULL,
  `fecha_creacion` datetime(6) NOT NULL,
  `fecha_modificacion` datetime(6) NOT NULL,
  `rubro_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `rut` (`rut`),
  KEY `proveedores_proveedor_rubro_id_c0dd5b10` (`rubro_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `proveedores_proveedor`
--

INSERT INTO `proveedores_proveedor` (`id`, `rut`, `nombre`, `email`, `telefono`, `direccion`, `ciudad`, `activo`, `fecha_creacion`, `fecha_modificacion`, `rubro_id`) VALUES
(1, '70.123.456-7', 'Dulces del Valle Ltda.', 'contacto@dulcesdelvalle.cl', '+56 9 8123 4567', 'Av. Balmaceda 1345', 'La Serena', 1, '2025-10-07 17:51:55.790310', '2025-10-07 17:51:55.790310', 5),
(2, '70.234.567-8', 'Caramelos y Confites S.A.', 'ventas@caramelosyconfites.cl', '+56 9 8234 5678', 'Av. España 2450', 'Coquimbo', 1, '2025-10-07 17:53:57.106376', '2025-10-07 17:53:57.106376', 6),
(3, '70.345.678-5', 'Harinas La Trigueña Ltda.', 'contacto@latriguena.cl', '+56 9 8345 6789', 'Ruta D-43 km 12', 'Ovalle', 1, '2025-10-07 17:55:01.193128', '2025-10-07 17:55:01.193128', 7),
(4, '70.456.789-0', 'Huevos San Pedro', 'pedidos@huevossanpedro.cl', '+56 9 8456 7890', 'Av. Colón 4500', 'Santiago', 1, '2025-10-07 17:57:06.300080', '2025-10-07 17:57:06.300080', 8),
(5, '70.567.890-1', 'Azúcar y Dulzura SpA', 'insumos@azucarydulzura.cl', '+56 9 8567 8901', 'Av. Francisco de Aguirre 120', 'La Serena', 1, '2025-10-07 17:58:05.998617', '2025-10-07 17:58:05.998617', 9),
(6, '70.678.901-2', 'Frutos Secos El Trébol', 'ventas@eltrrebol.cl', '+56 9 8678 9012', 'Av. O’Higgins 980', 'Rancagua', 1, '2025-10-07 18:00:17.949718', '2025-10-07 18:00:17.949718', 10),
(7, '70.789.012-3', 'Envases y Etiquetas del Norte', 'contacto@envasesnorte.cl', '+56 9 8789 0123', 'Av. Varela 2345', 'Copiapó', 1, '2025-10-07 18:01:17.720517', '2025-10-07 18:01:17.720517', 11),
(8, '70.890.123-4', 'Distribuidora PanSur Ltda.', 'ventas@pansur.cl', '+56 9 8890 1234', 'Los Carrera 1780', 'Talca', 1, '2025-10-07 18:02:15.192915', '2025-10-07 18:02:15.192915', 12),
(9, '70.901.234-5', 'La Dulcería Familiar', 'ventas@ladulceriafamiliar.cl', '+56 9 8901 2345', 'Av. Independencia 870', 'Temuco', 1, '2025-10-07 18:03:10.022897', '2025-10-07 18:03:10.022897', 13),
(10, '70.012.345-6', 'Cartonajes San Andrés', 'contacto@cartonajessanandres.cl', '+56 9 9012 3456', 'Camino Real 1456', 'Viña del Mar', 1, '2025-10-07 18:03:55.446342', '2025-10-07 18:03:55.446342', 14);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores_rubro`
--

DROP TABLE IF EXISTS `proveedores_rubro`;
CREATE TABLE IF NOT EXISTS `proveedores_rubro` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci NOT NULL,
  `descripcion` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombre` (`nombre`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `proveedores_rubro`
--

INSERT INTO `proveedores_rubro` (`id`, `nombre`, `descripcion`) VALUES
(6, 'Venta de dulces al por mayor', ''),
(5, 'Golosinas importadas y confites', ''),
(7, 'Proveedor de harina y derivados', ''),
(8, 'Distribución de huevos frescos', ''),
(9, 'Azúcar, endulzantes y cacao', ''),
(10, 'Frutos secos y semillas', ''),
(11, 'Envases plásticos, frascos y etiquetas', ''),
(12, 'Margarinas, mantequillas y aceites', ''),
(13, 'Productos artesanales', ''),
(14, 'Cajas y envoltorios para dulces', '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
