-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-12-2024 a las 14:17:32
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_colombia_soccer`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `idcategoria` bigint(20) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `descripcion` text NOT NULL,
  `portada` varchar(100) NOT NULL,
  `datecreated` datetime NOT NULL DEFAULT current_timestamp(),
  `ruta` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`idcategoria`, `nombre`, `descripcion`, `portada`, `datecreated`, `ruta`, `status`) VALUES
(1, 'UNIFORMES', 'Dinámico, Auténtico, Resistente, Profesional', 'img_f919732d1bfa05ab776ca758c073603e.jpg', '2024-11-08 21:34:48', 'uniformes', 1),
(2, 'CAMISETAS', 'Clásicas, Cómodas, Frescas, Deportivas', 'img_9974b9fda2738af5bdb02e5e563b7d25.jpg', '2021-08-20 03:04:04', 'camisetas', 1),
(3, 'PANTALONETAS', 'Ligeras, Resistentes, Flexibles, Deportivas', 'img_330aa0b7fcb0fefc1af7eacbec62c937.jpg', '2021-08-21 00:47:10', 'pantalonetas', 1),
(4, 'GUAYOS', 'Ligeros, Resistentes, Cómodos, Dinámicos.', 'img_f66d52e990fc9e0f5894146226b51e49.jpg', '2024-08-21 17:05:50', 'guayos', 1),
(5, 'MEDIAS', 'Cómodas, Elásticas, Deportivas, Transpirables', 'img_2f6c0ffde24b08a894a964e8f6126f4d.jpg', '2024-08-21 17:06:49', 'medias', 1),
(6, 'ESPINILLERAS', 'Protección, Comodidad, Ligereza, Resistencia', 'img_699631687b3d34a38cff5b5277432347.jpg', '2024-11-08 13:35:41', 'espinilleras', 1),
(7, 'GUANTES PARA ARQUERO', 'Resistentes, Seguros, Ajustados, Protectores', 'img_3cfcc1b96cc48766448fa472f2db9702.jpg', '2024-11-08 21:20:18', 'guantes-para-arquero', 1),
(8, 'GUANTES PARA JUGADOR', 'Ajustados, Resistentes, Cómodos, Seguros', 'img_7a0cd2f4f551f07e7f70751b6b6441a8.jpg', '2024-11-08 21:28:51', 'guantes-para-jugador', 1),
(9, 'UNIFORME PARA JUEZ', 'Formal, Neutro, Elegante, Profesional', 'img_c32d3f89bbc116d79ff3aafca140522d.jpg', '2024-11-08 22:14:47', 'uniforme-para-juez', 1),
(10, 'CAMISETAS PARA JUEZ', 'Sencillas, Elegantes, Neutrales, Oficiales', 'img_c77037c93baf4fe34b96bf8e5d36b174.jpg', '2024-11-08 22:16:17', 'camisetas-para-juez', 1),
(11, 'PANTALONETAS PARA JUEZ', 'Elegantes, Ligeras, Flexibles, Profesionales', 'img_744ba4f2a15386ac7c42b972da47109f.jpg', '2024-11-08 22:17:14', 'pantalonetas-para-juez', 1),
(12, 'GUAYOS PARA JUEZ', 'Elegantes, Resistentes, Cómodos, Seguros', 'img_48285ffc99ae2bc9d1d34427d50fddf0.jpg', '2024-11-08 22:24:55', 'guayos-para-juez', 1),
(13, 'MEDIAS PARA JUEZ', 'Elegantes, Formales, Discretas, Profesionales', 'img_ec49ed1ee2de28ae3df02cb57266722d.jpg', '2024-11-08 22:25:55', 'medias-para-juez', 1),
(14, 'SILBATO', 'Sonido Fuerte, Durable, Compacto', 'img_4b70931395e277d0cd0604dc360ab1ab.jpg', '2024-11-08 22:28:08', 'silbato', 1),
(15, 'RELOJ CRONÓMETRO', 'Preciso, Fácil de Usar, Resistente al Agua', 'img_81a42bef82fa778013f60e1217cba4a6.jpg', '2024-11-08 22:43:19', 'reloj-cronometro', 1),
(16, 'TARJETAS (AMARILLA Y ROJA)', 'Visibles, Resistentes, Fáciles de Acceder', 'img_ab5dea943b1c1f62b0bd0f86b5d8de6e.jpg', '2024-11-08 22:57:37', 'tarjetas-(amarilla-y-roja)', 1),
(17, 'BANDERINES DE ASISTENTE', 'Ligero, Resistente, Visibilidad Alta', 'img_b8a397de35dad2906a7ca559589f0c4f.jpg', '2024-11-08 23:01:26', 'banderines-de-asistente', 1),
(18, 'LIBRETA DE NOTAS', 'Compacta, Práctica, Espacio para Escribir', 'img_f51e5ae2af4679bce750f8bed0ea823a.jpg', '2024-11-08 23:09:31', 'libreta-de-notas', 1),
(19, 'MONEDA PARA SORTEO', 'Compacta, Fácil de Manipular', 'img_49c9686900523dd76055cd02f9152252.jpg', '2024-11-08 23:13:10', 'moneda-para-sorteo', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacto`
--

CREATE TABLE `contacto` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `mensaje` text NOT NULL,
  `ip` varchar(15) NOT NULL,
  `dispositivo` varchar(25) NOT NULL,
  `useragent` text NOT NULL,
  `datecreated` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_pedido`
--

CREATE TABLE `detalle_pedido` (
  `id` bigint(20) NOT NULL,
  `pedidoid` bigint(20) NOT NULL,
  `productoid` bigint(20) NOT NULL,
  `precio` decimal(11,2) NOT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `detalle_pedido`
--

INSERT INTO `detalle_pedido` (`id`, `pedidoid`, `productoid`, `precio`, `cantidad`) VALUES
(4, 3, 8, 100000.00, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_temp`
--

CREATE TABLE `detalle_temp` (
  `id` bigint(20) NOT NULL,
  `personaid` bigint(20) NOT NULL,
  `productoid` bigint(20) NOT NULL,
  `precio` decimal(11,2) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `transaccionid` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagen`
--

CREATE TABLE `imagen` (
  `id` bigint(20) NOT NULL,
  `productoid` bigint(20) NOT NULL,
  `img` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `imagen`
--

INSERT INTO `imagen` (`id`, `productoid`, `img`) VALUES
(93, 1, 'pro_ab6719108fc430b3dc1c8d467d45823c.jpg'),
(94, 1, 'pro_810e817484eaef37a215ef5d004a2d3c.jpg'),
(95, 2, 'pro_2a1676084909f06faa29135895fb2444.jpg'),
(96, 2, 'pro_49fce576fcdb61c2c90b43ad4beffff7.jpg'),
(98, 3, 'pro_e0c421e5c1cbe4d1eeeccd4ad37325ad.jpg'),
(99, 4, 'pro_c041433f046bb65ef143393752729fcd.jpg'),
(100, 5, 'pro_14910555fa356e731ffca152c97df6eb.jpg'),
(101, 6, 'pro_a9701770487e4a69eaaed78f5053bc2f.jpg'),
(102, 7, 'pro_dcf9ca978f77a162518dfb4985f9f5f0.jpg'),
(103, 8, 'pro_f6f99d0200d8a94d48b96482b3e620e8.jpg'),
(104, 9, 'pro_71dc79c6d20b278695dc6aeb8a46faea.jpg'),
(105, 10, 'pro_fd65116c1925a46177355305ca050eeb.jpg'),
(106, 11, 'pro_60cc4295071b759f5c1486c9aa698665.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modulo`
--

CREATE TABLE `modulo` (
  `idmodulo` bigint(20) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `descripcion` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `modulo`
--

INSERT INTO `modulo` (`idmodulo`, `titulo`, `descripcion`, `status`) VALUES
(1, 'Dashboard', 'Dashboard', 1),
(2, 'Usuarios', 'Usuarios del sistema', 1),
(3, 'Clientes', 'Clientes de tienda', 1),
(4, 'Productos', 'Todos los productos', 1),
(5, 'Pedidos', 'Pedidos', 1),
(6, 'Caterogías', 'Caterogías Productos', 1),
(7, 'Suscriptores', 'Suscriptores del sitio web', 1),
(8, 'Contactos', 'Mensajes del formulario contacto', 1),
(9, 'Páginas', 'Páginas del sitio web', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

CREATE TABLE `pedido` (
  `idpedido` bigint(20) NOT NULL,
  `referenciacobro` varchar(255) DEFAULT NULL,
  `idtransaccionpaypal` varchar(255) DEFAULT NULL,
  `datospaypal` text DEFAULT NULL,
  `personaid` bigint(20) NOT NULL,
  `fecha` datetime NOT NULL DEFAULT current_timestamp(),
  `costo_envio` decimal(10,2) NOT NULL DEFAULT 0.00,
  `monto` decimal(11,2) NOT NULL,
  `tipopagoid` bigint(20) NOT NULL,
  `direccion_envio` text NOT NULL,
  `status` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `pedido`
--

INSERT INTO `pedido` (`idpedido`, `referenciacobro`, `idtransaccionpaypal`, `datospaypal`, `personaid`, `fecha`, `costo_envio`, `monto`, `tipopagoid`, `direccion_envio`, `status`) VALUES
(3, '65621', NULL, NULL, 1, '2024-11-13 23:01:24', 5.00, 100005.00, 2, 'HHG, GD', 'Aprobado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permisos`
--

CREATE TABLE `permisos` (
  `idpermiso` bigint(20) NOT NULL,
  `rolid` bigint(20) NOT NULL,
  `moduloid` bigint(20) NOT NULL,
  `r` int(11) NOT NULL DEFAULT 0,
  `w` int(11) NOT NULL DEFAULT 0,
  `u` int(11) NOT NULL DEFAULT 0,
  `d` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `permisos`
--

INSERT INTO `permisos` (`idpermiso`, `rolid`, `moduloid`, `r`, `w`, `u`, `d`) VALUES
(3, 1, 1, 1, 1, 1, 1),
(4, 1, 2, 1, 1, 1, 1),
(5, 1, 3, 1, 1, 1, 1),
(6, 1, 4, 1, 1, 1, 1),
(7, 1, 5, 1, 1, 1, 1),
(8, 1, 6, 1, 1, 1, 1),
(9, 1, 7, 1, 1, 1, 1),
(10, 1, 8, 1, 1, 1, 1),
(11, 1, 9, 1, 1, 1, 1),
(12, 2, 1, 1, 1, 1, 1),
(13, 2, 2, 0, 0, 0, 0),
(14, 2, 3, 1, 1, 1, 0),
(15, 2, 4, 1, 1, 1, 0),
(16, 2, 5, 1, 1, 1, 0),
(17, 2, 6, 1, 1, 1, 0),
(18, 2, 7, 1, 0, 0, 0),
(19, 2, 8, 1, 0, 0, 0),
(20, 2, 9, 1, 1, 1, 1),
(21, 3, 1, 0, 0, 0, 0),
(22, 3, 2, 0, 0, 0, 0),
(23, 3, 3, 0, 0, 0, 0),
(24, 3, 4, 0, 0, 0, 0),
(25, 3, 5, 1, 0, 0, 0),
(26, 3, 6, 0, 0, 0, 0),
(27, 3, 7, 0, 0, 0, 0),
(28, 3, 8, 0, 0, 0, 0),
(29, 3, 9, 0, 0, 0, 0),
(48, 4, 1, 1, 0, 0, 0),
(49, 4, 2, 0, 0, 0, 0),
(50, 4, 3, 0, 0, 0, 0),
(51, 4, 4, 0, 0, 0, 0),
(52, 4, 5, 1, 0, 0, 0),
(53, 4, 6, 0, 0, 0, 0),
(54, 4, 7, 1, 0, 0, 0),
(55, 4, 8, 1, 0, 0, 0),
(56, 4, 9, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `idpersona` bigint(20) NOT NULL,
  `identificacion` varchar(30) DEFAULT NULL,
  `nombres` varchar(80) NOT NULL,
  `apellidos` varchar(100) NOT NULL,
  `telefono` bigint(20) NOT NULL,
  `email_user` varchar(100) NOT NULL,
  `password` varchar(75) NOT NULL,
  `nit` varchar(20) DEFAULT NULL,
  `nombrefiscal` varchar(80) DEFAULT NULL,
  `direccionfiscal` varchar(100) DEFAULT NULL,
  `token` varchar(100) DEFAULT NULL,
  `rolid` bigint(20) NOT NULL,
  `datecreated` datetime NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`idpersona`, `identificacion`, `nombres`, `apellidos`, `telefono`, `email_user`, `password`, `nit`, `nombrefiscal`, `direccionfiscal`, `token`, `rolid`, `datecreated`, `status`) VALUES
(1, '1004869999', 'Juan José', 'Pacheco Prado', 3182410888, 'nauj8pacheco@gmail.com', '070b0313515610fa7636ff71f6579df6e2dc5069c28ca5815c61915bab5e1cab', '120112', 'juan jose', 'Ocaña', '0b280594bcf8ddeb21ee-0691db7c13163445a1b9-4ea6c6f4a47d5b883dd3-7821b515a342ceb1d632', 1, '2021-08-20 01:34:15', 1),
(2, '1004860899', 'Juan Felipe', 'Prado Neira', 456878977, 'pradoneira77@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', NULL, NULL, NULL, NULL, 2, '2021-08-20 02:58:47', 1),
(3, '1004860777', 'Ricardo', 'Hernández Pérez', 3158909966, 'ricardohernandez45@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '468798', 'Ricardo HP', 'Ciudad de Guatemala', NULL, 3, '2021-08-20 03:41:28', 1),
(4, '10914557010', 'Fernando', 'Guerra Lopez', 3218635255, 'fernadolopez_@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', NULL, NULL, NULL, NULL, 4, '2021-08-21 18:07:00', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `post`
--

CREATE TABLE `post` (
  `idpost` bigint(20) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `contenido` text NOT NULL,
  `portada` varchar(100) DEFAULT NULL,
  `datecreate` datetime NOT NULL DEFAULT current_timestamp(),
  `ruta` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `post`
--

INSERT INTO `post` (`idpost`, `titulo`, `contenido`, `portada`, `datecreate`, `ruta`, `status`) VALUES
(1, 'Inicio', '<div class=\"p-t-80\"> <h3 class=\"ltext-103 cl5\">Nuestras marcas</h3> </div> <div> <p>Trabajamos con las mejores marcas del mundo ...</p> </div> <div class=\"row\"> <div class=\"col-md-3\"><img src=\"Assets/images/m1.png\" alt=\"Marca 1\" width=\"110\" height=\"110\" /></div> <div class=\"col-md-3\"><img src=\"Assets/images/m2.png\" alt=\"Marca 2\" /></div> <div class=\"col-md-3\"><img src=\"Assets/images/m3.png\" alt=\"Marca 3\" /></div> <div class=\"col-md-3\"><img src=\"Assets/images/m4.png\" alt=\"Marca 4\" /></div> </div>', '', '2021-07-20 02:40:15', 'inicio', 1),
(2, 'Tienda', '<p>Contenido p&aacute;gina!</p>', '', '2021-08-06 01:21:27', 'tienda', 1),
(3, 'Carrito', '<p>Contenido p&aacute;gina!</p>', '', '2021-08-06 01:21:52', 'carrito', 1),
(4, 'Nosotros', '<section class=\"bg0 p-t-75 p-b-120\"> <div class=\"container\"> <div class=\"row p-b-148\"> <div class=\"col-md-7 col-lg-8\"> <div class=\"p-t-7 p-r-85 p-r-15-lg p-r-0-md\"> <h3 class=\"mtext-111 cl2 p-b-16\">Historia</h3> <p class=\"stext-113 cl6 p-b-26\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris consequat consequat enim, non auctor massa ultrices non. Morbi sed odio massa. Quisque at vehicula tellus, sed tincidunt augue. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas varius egestas diam, eu sodales metus scelerisque congue. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Maecenas gravida justo eu arcu egestas convallis. Nullam eu erat bibendum, tempus ipsum eget, dictum enim. Donec non neque ut enim dapibus tincidunt vitae nec augue. Suspendisse potenti. Proin ut est diam. Donec condimentum euismod tortor, eget facilisis diam faucibus et. Morbi a tempor elit.</p> <p class=\"stext-113 cl6 p-b-26\">Donec gravida lorem elit, quis condimentum ex semper sit amet. Fusce eget ligula magna. Aliquam aliquam imperdiet sodales. Ut fringilla turpis in vehicula vehicula. Pellentesque congue ac orci ut gravida. Aliquam erat volutpat. Donec iaculis lectus a arcu facilisis, eu sodales lectus sagittis. Etiam pellentesque, magna vel dictum rutrum, neque justo eleifend elit, vel tincidunt erat arcu ut sem. Sed rutrum, turpis ut commodo efficitur, quam velit convallis ipsum, et maximus enim ligula ac ligula.</p> <p class=\"stext-113 cl6 p-b-26\">Any questions? Let us know in store at 8th floor, 379 Hudson St, New York, NY 10018 or call us on (+1) 96 716 6879</p> </div> </div> <div class=\"col-11 col-md-5 col-lg-4 m-lr-auto\"> <div class=\"how-bor1 \"> <div class=\"hov-img0\"><img src=\"https://cdn.pixabay.com/photo/2015/07/17/22/43/student-849825_1280.jpg\" alt=\"IMG\" width=\"500\" height=\"333\" /></div> </div> </div> </div> <div class=\"row\"> <div class=\"order-md-2 col-md-7 col-lg-8 p-b-30\"> <div class=\"p-t-7 p-l-85 p-l-15-lg p-l-0-md\"> <h2 class=\"mtext-111 cl2 p-b-16\"><span style=\"color: #236fa1;\">Nuestra Misi&oacute;n</span></h2> <p class=\"stext-113 cl6 p-b-26\">Mauris non lacinia magna. Sed nec lobortis dolor. Vestibulum rhoncus dignissim risus, sed consectetur erat. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nullam maximus mauris sit amet odio convallis, in pharetra magna gravida. Praesent sed nunc fermentum mi molestie tempor. Morbi vitae viverra odio. Pellentesque ac velit egestas, luctus arcu non, laoreet mauris. Sed in ipsum tempor, consequat odio in, porttitor ante. Ut mauris ligula, volutpat in sodales in, porta non odio. Pellentesque tempor urna vitae mi vestibulum, nec venenatis nulla lobortis. Proin at gravida ante. Mauris auctor purus at lacus maximus euismod. Pellentesque vulputate massa ut nisl hendrerit, eget elementum libero iaculis.</p> <div class=\"bor16 p-l-29 p-b-9 m-t-22\"> <p class=\"stext-114 cl6 p-r-40 p-b-11\">Creativity is just connecting things. When you ask creative people how they did something, they feel a little guilty because they didn\'t really do it, they just saw something. It seemed obvious to them after a while.</p> <span class=\"stext-111 cl8\"> - Steve Job&rsquo;s </span></div> </div> </div> <div class=\"order-md-1 col-11 col-md-5 col-lg-4 m-lr-auto p-b-30\"> <div class=\"how-bor2\"> <div class=\"hov-img0\"><img src=\"https://cdn.pixabay.com/photo/2015/07/17/22/43/student-849822_1280.jpg\" alt=\"IMG\" width=\"500\" height=\"333\" /></div> </div> </div> </div> </div> </section>', 'img_2f644b056a9fd3624c7595d24b1d9273.jpg', '2021-08-09 03:09:44', 'nosotros', 1),
(5, 'Contacto', '<div class=\"map\"><iframe style=\"border: 0;\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3861.685802352331!2d-90.73646108521129!3d14.559951589828378!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x85890e74b3771e19%3A0x68ec9eeea79fd9a7!2sEl%20Arco%20de%20Santa%20Catalina!5e0!3m2!1ses!2sgt!4v1624005005655!5m2!1ses!2sgt\" width=\"100%\" height=\"600\" allowfullscreen=\"allowfullscreen\" loading=\"lazy\"></iframe></div>', 'img_3024f13dc010ffab8c22da05ac6a32b9.jpg', '2021-08-09 03:11:08', 'contacto', 1),
(6, 'Preguntas frecuentes', '<ol> <li><strong>&iquest;Cu&aacute;l es el tiempo de entrega de los producto? </strong>Lorem ipsum dolor sit amet consectetur adipisicing elit. Nobis sunt, corrupti hic aspernatur cumque alias, ipsam omnis iure ipsum, nostrum labore obcaecati natus repellendus consequatur est nemo sapiente dolorem dicta. Lorem, ipsum dolor sit amet consectetur adipisicing elit. Commodi, voluptas, consectetur iusto delectus quaerat ullam nesciunt! Quae doloribus deserunt qui fugit illo nobis ipsum, accusamus eius perferendis beatae culpa molestias!</li> <li><strong>&iquest;C&oacute;mo es la forma de env&iacute;o de los productos?</strong> Lorem ipsum dolor sit amet consectetur adipisicing elit. Nobis sunt, corrupti hic aspernatur cumque alias, ipsam omnis iure ipsum, nostrum labore obcaecati natus repellendus consequatur est nemo sapiente dolorem dicta. Lorem, ipsum dolor sit amet consectetur adipisicing elit. Commodi, voluptas, consectetur.</li> <li><strong>&iquest;Cu&aacute;l es el tiempo m&aacute;ximo para solicitar un reembolso?</strong> Lorem ipsum dolor sit amet consectetur adipisicing elit. Nobis sunt, corrupti hic aspernatur cumque alias, ipsam omnis iure ipsum, nostrum labore obcaecati natus repellendus consequatur est nemo sapiente dolorem dicta. Lorem, ipsum dolor sit amet consectetur adipisicing elit. Commodi, voluptas, consectetur iusto delectus quaerat ullam nesciunt!</li> </ol> <p>&nbsp;</p> <p>Otras preguntas</p> <ul> <li><strong>&iquest;Qu&eacute; formas de pago aceptan? </strong><span style=\"color: #666666; font-family: Arial, sans-serif; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">Corrupti hic aspernatur cumque alias, ipsam omnis iure ipsum, nostrum labore obcaecati natus repellendus consequatur est nemo sapiente dolorem dicta. Lorem, ipsum dolor sit amet consectetur adipisicing elit. Commodi, voluptas, consectetur iusto delectus quaerat ullam nesciunt! Quae doloribus deserunt qui fugit illo nobis ipsum, accusamus eius perferendis beatae culpa molestias!</span></li> </ul>', '', '2021-08-11 01:24:19', 'preguntas-frecuentes', 1),
(7, 'Términos y Condiciones', '<p>A continuaci&oacute;n se describen los t&eacute;rmino y condiciones de la Tienda Virtual!</p> <ol> <li>Pol&iacute;tica uno</li> <li>Termino dos</li> <li>Condici&oacute;n tres</li> </ol> <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Nobis sunt, corrupti hic aspernatur cumque alias, ipsam omnis iure ipsum, nostrum labore obcaecati natus repellendus consequatur est nemo sapiente dolorem dicta. Lorem, ipsum dolor sit amet consectetur adipisicing elit. Commodi, voluptas, consectetur iusto delectus quaerat ullam nesciunt! Quae doloribus deserunt qui fugit illo nobis ipsum, accusamus eius perferendis beatae culpa molestias!</p>', '', '2021-08-11 01:51:06', 'terminos-y-condiciones', 1),
(8, 'Sucursales', '<section class=\"py-5 text-center\"> <div class=\"container\"> <p>Visitanos y obten los mejores precios del mercado, cualquier art&iacute;culo que necestas para vivir mejor</p> <a class=\"btn btn-info\" href=\"../../tienda_virtual/tienda\">VER PRODUCTOS</a></div> </section> <div class=\"py-5 bg-light\"> <div class=\"container\"> <div class=\"row\"> <div class=\"col-md-4\"> <div class=\"card mb-4 box-shadow hov-img0\"><img src=\"https://abelosh.com/tienda_virtual/Assets/images/s1.jpg\" alt=\"Tienda Uno\" width=\"100%\" height=\"100%\" /> <div class=\"card-body\"> <p class=\"card-text\">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Quaerat necessitatibus eligendi, soluta ipsa natus, at earum qui enim, illum doloremque, accusantium autem nemo est esse nulla neque eaque repellendus amet.</p> <p>Direcci&oacute;n: Antigua Gautemala <br />Tel&eacute;fono: 4654645 <br />Correo: info@abelosh.com</p> </div> </div> </div> <div class=\"col-md-4\"> <div class=\"card mb-4 box-shadow hov-img0\"><img src=\"https://abelosh.com/tienda_virtual/Assets/images/s2.jpg\" alt=\"Sucural dos\" width=\"100%\" height=\"100%\" /> <div class=\"card-body\"> <p class=\"card-text\">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Quaerat necessitatibus eligendi, soluta ipsa natus, at earum qui enim, illum doloremque, accusantium autem nemo est esse nulla neque eaque repellendus amet.</p> <p>Direcci&oacute;n: Antigua Gautemala <br />Tel&eacute;fono: 4654645 <br />Correo: info@abelosh.com</p> </div> </div> </div> <div class=\"col-md-4\"> <div class=\"card mb-4 box-shadow hov-img0\"><img src=\"https://abelosh.com/tienda_virtual/Assets/images/s3.jpg\" alt=\"Sucural tres\" width=\"100%\" height=\"100%\" /> <div class=\"card-body\"> <p class=\"card-text\">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Quaerat necessitatibus eligendi, soluta ipsa natus, at earum qui enim, illum doloremque, accusantium autem nemo est esse nulla neque eaque repellendus amet.</p> <p>Direcci&oacute;n: Antigua Gautemala <br />Tel&eacute;fono: 4654645 <br />Correo: info@abelosh.com</p> </div> </div> </div> </div> </div> </div>', 'img_d72cb5712933863e051dc9c7fac5e253.jpg', '2021-08-11 02:26:45', 'sucursales', 1),
(9, 'Not Found', '<h1>Error 404: P&aacute;gina no encontrada</h1> <p>No se encuentra la p&aacute;gina que ha solicitado.</p>', '', '2021-08-12 02:30:49', 'not-found', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `idproducto` bigint(20) NOT NULL,
  `categoriaid` bigint(20) NOT NULL,
  `codigo` varchar(30) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `descripcion` text NOT NULL,
  `precio` decimal(11,2) NOT NULL,
  `stock` int(11) NOT NULL,
  `imagen` varchar(100) DEFAULT NULL,
  `datecreated` datetime NOT NULL DEFAULT current_timestamp(),
  `ruta` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`idproducto`, `categoriaid`, `codigo`, `nombre`, `descripcion`, `precio`, `stock`, `imagen`, `datecreated`, `ruta`, `status`) VALUES
(1, 1, '2417984565', 'Uniforme de Fútbol Equipo de Ensueño', '<div class=\"flex-shrink-0 flex flex-col relative items-end\"> <div> <div class=\"pt-0\"> <div class=\"gizmo-bot-avatar flex h-8 w-8 items-center justify-center overflow-hidden rounded-full\"> <div class=\"relative p-1 rounded-sm flex items-center justify-center bg-token-main-surface-primary text-token-text-primary h-8 w-8\" style=\"text-align: justify;\"> <p>Este uniforme de f&uacute;tbol est&aacute; dise&ntilde;ado para brindar comodidad y estilo en el campo de juego. El material es ligero, transpirable y resistente, ideal para la actividad intensa. Con detalles modernos y colores vibrantes que representan la esencia del equipo, este uniforme resalta tanto en partidos amistosos como en competiciones oficiales. El logo del equipo se encuentra en el pecho, mientras que las mangas tienen un sutil patr&oacute;n que a&ntilde;ade dinamismo al dise&ntilde;o.</p> <hr /> <p><strong>Tabla de Tallas</strong></p> <table> <thead> <tr> <th>Talla</th> <th>Pecho (cm)</th> <th>Cintura (cm)</th> <th>Largo (cm)</th> </tr> </thead> <tbody> <tr> <td>XS</td> <td>84-88</td> <td>74-78</td> <td>64</td> </tr> <tr> <td>S</td> <td>88-92</td> <td>78-82</td> <td>66</td> </tr> <tr> <td>M</td> <td>92-96</td> <td>82-86</td> <td>68</td> </tr> <tr> <td>L</td> <td>96-100</td> <td>86-90</td> <td>70</td> </tr> <tr> <td>XL</td> <td>100-104</td> <td>90-94</td> <td>72</td> </tr> <tr> <td>XXL</td> <td>104-108</td> <td>94-98</td> <td>74</td> </tr> </tbody> </table> <p>Este uniforme est&aacute; disponible en todas las tallas, desde XS hasta XXL, para adaptarse a cualquier jugador.</p> da y tonificada con una recuperaci&oacute;n efectiva y saludable.</div> </div> </div> </div> </div>', 300000.00, 50, NULL, '2021-08-20 03:12:14', 'uniforme-de-futbol-equipo-de-ensueno', 1),
(2, 1, '456879878', 'Uniforme de Fútbol Fuerza y Pasión', '<p style=\"text-align: justify;\">Este uniforme es la combinaci&oacute;n perfecta de estilo audaz y rendimiento. Dise&ntilde;ado para destacar en el campo, cuenta con un tejido de alta tecnolog&iacute;a que mantiene al jugador fresco y seco, incluso en los momentos m&aacute;s intensos del partido. Con colores s&oacute;lidos y un dise&ntilde;o elegante, las franjas laterales y detalles en contraste a&ntilde;aden un toque de energ&iacute;a y movimiento al conjunto. El escudo del equipo est&aacute; bordado en el pecho y un gr&aacute;fico moderno recorre la espalda, representando la pasi&oacute;n y la fuerza del equipo en cada jugada.</p> <p style=\"text-align: justify;\">&nbsp;</p> <hr /> <p style=\"text-align: justify;\"><strong>Tabla de Tallas</strong></p> <table> <thead> <tr> <th>Talla</th> <th>Pecho (cm)</th> <th>Cintura (cm)</th> <th>Largo (cm)</th> </tr> </thead> <tbody> <tr> <td>XS</td> <td>84-88</td> <td>74-78</td> <td>64</td> </tr> <tr> <td>S</td> <td>88-92</td> <td>78-82</td> <td>66</td> </tr> <tr> <td>M</td> <td>92-96</td> <td>82-86</td> <td>68</td> </tr> <tr> <td>L</td> <td>96-100</td> <td>86-90</td> <td>70</td> </tr> <tr> <td>XL</td> <td>100-104</td> <td>90-94</td> <td>72</td> </tr> <tr> <td>XXL</td> <td>104-108</td> <td>94-98</td> <td>74</td> </tr> </tbody> </table> <p style=\"text-align: justify;\">Este uniforme est&aacute; disponible en todas las tallas, desde XS hasta XXL, para adaptarse a cualquier jugador.</p>', 250000.00, 100, NULL, '2021-08-20 03:14:10', 'uniforme-de-futbol-fuerza-y-pasion', 1),
(3, 2, '4658798787', 'Camiseta de Fútbol Espíritu de Campeones', '<p style=\"text-align: justify;\">Esta camiseta de f&uacute;tbol est&aacute; dise&ntilde;ada para los fan&aacute;ticos y jugadores que desean expresar su pasi&oacute;n por el equipo en todo momento. Confeccionada en un tejido ligero y de secado r&aacute;pido, proporciona m&aacute;xima comodidad y frescura dentro y fuera del campo. Los colores vibrantes y detalles modernos en las mangas y el cuello a&ntilde;aden un toque elegante y distintivo. El escudo del equipo est&aacute; impreso en el pecho, mientras que un patr&oacute;n sutil recorre la parte frontal, simbolizando la energ&iacute;a y la determinaci&oacute;n que impulsa al equipo a la victoria.</p> <hr /> <p style=\"text-align: justify;\"><strong>Tabla de Tallas</strong></p> <table> <thead> <tr> <th>Talla</th> <th>Pecho (cm)</th> <th>Cintura (cm)</th> <th>Largo (cm)</th> </tr> </thead> <tbody> <tr> <td>XS</td> <td>84-88</td> <td>74-78</td> <td>64</td> </tr> <tr> <td>S</td> <td>88-92</td> <td>78-82</td> <td>66</td> </tr> <tr> <td>M</td> <td>92-96</td> <td>82-86</td> <td>68</td> </tr> <tr> <td>L</td> <td>96-100</td> <td>86-90</td> <td>70</td> </tr> <tr> <td>XL</td> <td>100-104</td> <td>90-94</td> <td>72</td> </tr> <tr> <td>XXL</td> <td>104-108</td> <td>94-98</td> <td>74</td> </tr> </tbody> </table> <p style=\"text-align: justify;\">Esta camiseta est&aacute; disponible en todas las tallas, desde extra peque&ntilde;a (XS) hasta doble extra grande (XXL), para adaptarse a cada fan&aacute;tico y jugador que desee llevar el esp&iacute;ritu de su equipo con orgullo.</p>', 150000.00, 100, NULL, '2021-08-21 00:48:21', 'camiseta-de-futbol-espiritu-de-campeones', 1),
(4, 2, '123456', 'Camiseta de Fútbol Orgullo y Determinación', '<p style=\"text-align: justify;\">Esta camiseta de f&uacute;tbol combina un dise&ntilde;o llamativo con materiales de alto rendimiento, ideal para los aficionados y jugadores que buscan destacar. Confeccionada en tejido ultraligero y respirable, permite una m&aacute;xima libertad de movimiento y una sensaci&oacute;n de frescura en todo momento. Los colores intensos y l&iacute;neas modernas en el pecho reflejan la pasi&oacute;n del equipo, mientras que el escudo est&aacute; cuidadosamente bordado en la parte superior izquierda. Los detalles en las mangas a&ntilde;aden un toque de estilo &uacute;nico que hace de esta camiseta una prenda imprescindible.</p> <hr /> <p style=\"text-align: justify;\"><strong>Tabla de Tallas</strong></p> <table> <thead> <tr> <th>Talla</th> <th>Pecho (cm)</th> <th>Cintura (cm)</th> <th>Largo (cm)</th> </tr> </thead> <tbody> <tr> <td>XS</td> <td>84-88</td> <td>74-78</td> <td>64</td> </tr> <tr> <td>S</td> <td>88-92</td> <td>78-82</td> <td>66</td> </tr> <tr> <td>M</td> <td>92-96</td> <td>82-86</td> <td>68</td> </tr> <tr> <td>L</td> <td>96-100</td> <td>86-90</td> <td>70</td> </tr> <tr> <td>XL</td> <td>100-104</td> <td>90-94</td> <td>72</td> </tr> <tr> <td>XXL</td> <td>104-108</td> <td>94-98</td> <td>74</td> </tr> </tbody> </table> <p style=\"text-align: justify;\">La camiseta est&aacute; disponible en todas las tallas, desde extra peque&ntilde;a (XS) hasta doble extra grande (XXL), para que cada jugador y aficionado encuentre el ajuste perfecto y muestre su orgullo y determinaci&oacute;n junto al equipo.</p>', 180000.00, 80, NULL, '2024-08-23 09:41:21', 'camiseta-de-futbol-orgullo-y-determinacion', 1),
(5, 3, '543213', 'Pantalonetas de Fútbol Agilidad y Confort', '<p style=\"text-align: justify;\">Estas pantalonetas de f&uacute;tbol est&aacute;n dise&ntilde;adas para ofrecer la m&aacute;xima comodidad y libertad de movimiento en el campo. Fabricadas con materiales ligeros y transpirables, permiten mantener una sensaci&oacute;n de frescura en los momentos m&aacute;s intensos del juego. Su corte ergon&oacute;mico asegura un ajuste perfecto, mientras que la cintura el&aacute;stica con cord&oacute;n ajustable proporciona soporte sin sacrificar comodidad. Disponibles en varios colores que combinan con el uniforme, estas pantalonetas son ideales para entrenamientos y partidos.</p> <hr /> <p style=\"text-align: justify;\"><strong>Tabla de Tallas</strong></p> <table> <thead> <tr> <th>Talla</th> <th>Cintura (cm)</th> <th>Cadera (cm)</th> <th>Largo (cm)</th> </tr> </thead> <tbody> <tr> <td>XS</td> <td>68-72</td> <td>84-88</td> <td>42</td> </tr> <tr> <td>S</td> <td>72-76</td> <td>88-92</td> <td>44</td> </tr> <tr> <td>M</td> <td>76-80</td> <td>92-96</td> <td>46</td> </tr> <tr> <td>L</td> <td>80-84</td> <td>96-100</td> <td>48</td> </tr> <tr> <td>XL</td> <td>84-88</td> <td>100-104</td> <td>50</td> </tr> <tr> <td>XXL</td> <td>88-92</td> <td>104-108</td> <td>52</td> </tr> </tbody> </table> <p style=\"text-align: justify;\">Estas pantalonetas est&aacute;n disponibles en todas las tallas, desde extra peque&ntilde;a (XS) hasta doble extra grande (XXL), para adaptarse a cada jugador, asegurando agilidad y confort en cada partido.</p>', 50000.00, 30, NULL, '2024-08-23 09:54:31', 'pantalonetas-de-futbol-agilidad-y-confort', 1),
(6, 3, '543244', 'Pantalonetas de Fútbol Rendimiento y Estilo', '<p style=\"text-align: justify;\">Estas pantalonetas est&aacute;n dise&ntilde;adas para combinar estilo y funcionalidad en el campo. Confeccionadas en tejido de alto rendimiento que absorbe el sudor, permiten una frescura y comodidad duraderas durante todo el partido. El dise&ntilde;o presenta un corte moderno y c&oacute;modo, con una cintura el&aacute;stica de ajuste suave que incluye un cord&oacute;n interno para una mayor seguridad. Detalles en los laterales le dan un toque &uacute;nico, haciendo que estas pantalonetas destaquen tanto en los entrenamientos como en los partidos.</p> <hr /> <p style=\"text-align: justify;\"><strong>Tabla de Tallas</strong></p> <table> <thead> <tr> <th>Talla</th> <th>Cintura (cm)</th> <th>Cadera (cm)</th> <th>Largo (cm)</th> </tr> </thead> <tbody> <tr> <td>XS</td> <td>68-72</td> <td>86-90</td> <td>40</td> </tr> <tr> <td>S</td> <td>72-76</td> <td>90-94</td> <td>42</td> </tr> <tr> <td>M</td> <td>76-80</td> <td>94-98</td> <td>44</td> </tr> <tr> <td>L</td> <td>80-84</td> <td>98-102</td> <td>46</td> </tr> <tr> <td>XL</td> <td>84-88</td> <td>102-106</td> <td>48</td> </tr> <tr> <td>XXL</td> <td>88-92</td> <td>106-110</td> <td>50</td> </tr> </tbody> </table> <p style=\"text-align: justify;\">Disponibles en todas las tallas, desde extra peque&ntilde;a (XS) hasta doble extra grande (XXL), estas pantalonetas garantizan el ajuste perfecto para cada jugador que busca mejorar su rendimiento sin sacrificar el estilo.</p>', 80000.00, 60, NULL, '2024-08-23 10:45:02', 'pantalonetas-de-futbol-rendimiento-y-estilo', 1),
(7, 3, '64312', 'Pantalonetas de Fútbol Velocidad y Control', '<p style=\"text-align: justify;\">Estas pantalonetas est&aacute;n dise&ntilde;adas para jugadores que buscan rendimiento y comodidad en cada partido. Confeccionadas en un tejido de malla ligera y de secado r&aacute;pido, permiten una ventilaci&oacute;n &oacute;ptima y mantienen frescura durante el juego. La cintura el&aacute;stica cuenta con un cord&oacute;n interno para un ajuste seguro y personalizado. Los detalles reflectantes en los laterales a&ntilde;aden un toque moderno y aseguran visibilidad en condiciones de poca luz, lo que las hace ideales tanto para entrenamientos como para competiciones.</p> <hr /> <p style=\"text-align: justify;\"><strong>Tabla de Tallas</strong></p> <table> <thead> <tr> <th>Talla</th> <th>Cintura (cm)</th> <th>Cadera (cm)</th> <th>Largo (cm)</th> </tr> </thead> <tbody> <tr> <td>XS</td> <td>66-70</td> <td>82-86</td> <td>39</td> </tr> <tr> <td>S</td> <td>70-74</td> <td>86-90</td> <td>41</td> </tr> <tr> <td>M</td> <td>74-78</td> <td>90-94</td> <td>43</td> </tr> <tr> <td>L</td> <td>78-82</td> <td>94-98</td> <td>45</td> </tr> <tr> <td>XL</td> <td>82-86</td> <td>98-102</td> <td>47</td> </tr> <tr> <td>XXL</td> <td>86-90</td> <td>102-106</td> <td>49</td> </tr> </tbody> </table> <p style=\"text-align: justify;\">Disponibles en una gama de tallas, desde extra peque&ntilde;a (XS) hasta doble extra grande (XXL), estas pantalonetas ofrecen el ajuste perfecto y una sensaci&oacute;n de ligereza para quienes desean maximizar su velocidad y control en el campo.</p>', 40000.00, 30, NULL, '2024-08-23 10:56:05', 'pantalonetas-de-futbol-velocidad-y-control', 1),
(8, 4, '895248', 'Guayos de Fútbol Dominio Total', '<p style=\"text-align: justify;\">Estos guayos de f&uacute;tbol est&aacute;n dise&ntilde;ados para ofrecer una combinaci&oacute;n &oacute;ptima de tracci&oacute;n, control y comodidad en cada jugada. Con una parte superior texturizada que proporciona un mejor toque de bal&oacute;n, estos guayos son ideales para jugadores que buscan precisi&oacute;n en el campo. La suela cuenta con tacos estrat&eacute;gicamente ubicados para una tracci&oacute;n superior en superficies de c&eacute;sped natural y sint&eacute;tico, mientras que la plantilla acolchada reduce la presi&oacute;n y mejora el confort durante todo el partido. Su dise&ntilde;o ligero permite movimientos r&aacute;pidos, asegurando el m&aacute;ximo rendimiento.</p> <hr /> <p style=\"text-align: justify;\"><strong>Tabla de Tallas</strong></p> <table> <thead> <tr> <th>Talla</th> <th>Longitud del Pie (cm)</th> </tr> </thead> <tbody> <tr> <td>38</td> <td>24.0</td> </tr> <tr> <td>39</td> <td>24.5</td> </tr> <tr> <td>40</td> <td>25.0</td> </tr> <tr> <td>41</td> <td>25.5</td> </tr> <tr> <td>42</td> <td>26.0</td> </tr> <tr> <td>43</td> <td>26.5</td> </tr> <tr> <td>44</td> <td>27.0</td> </tr> <tr> <td>45</td> <td>27.5</td> </tr> <tr> <td>46</td> <td>28.0</td> </tr> </tbody> </table> <p style=\"text-align: justify;\">Disponibles en tallas desde la 38 hasta la 46, estos guayos garantizan un ajuste perfecto para todos los jugadores que buscan elevar su dominio y precisi&oacute;n en el juego</p>', 100000.00, 50, NULL, '2024-08-23 11:21:07', 'guayos-de-futbol-dominio-total', 1),
(9, 4, '8952456', 'Guayos de Fútbol Agarre y Velocidad', '<div class=\"flex items-center gap-0 overflow-hidden\" aria-haspopup=\"dialog\" aria-expanded=\"true\" aria-controls=\"radix-:r1l:\" data-state=\"open\"> <p style=\"text-align: justify;\">Estos guayos est&aacute;n dise&ntilde;ados para jugadores que priorizan la velocidad y el agarre en el campo. Con una parte superior de material sint&eacute;tico ligero, estos guayos se adaptan al pie como una segunda piel, proporcionando comodidad y estabilidad. La suela incorpora tacos multidireccionales que ofrecen un agarre superior en giros y cambios de direcci&oacute;n r&aacute;pidos. Adem&aacute;s, el dise&ntilde;o aerodin&aacute;mico reduce la resistencia al viento, maximizando la velocidad. Un interior acolchado asegura el confort y protecci&oacute;n para mantenerte en tu mejor nivel durante todo el partido.</p> <hr /> <p style=\"text-align: justify;\"><strong>Tabla de Tallas</strong></p> <table> <thead> <tr> <th>Talla</th> <th>Longitud del Pie (cm)</th> </tr> </thead> <tbody> <tr> <td>38</td> <td>24.0</td> </tr> <tr> <td>39</td> <td>24.7</td> </tr> <tr> <td>40</td> <td>25.3</td> </tr> <tr> <td>41</td> <td>26.0</td> </tr> <tr> <td>42</td> <td>26.7</td> </tr> <tr> <td>43</td> <td>27.3</td> </tr> <tr> <td>44</td> <td>28.0</td> </tr> <tr> <td>45</td> <td>28.7</td> </tr> <tr> <td>46</td> <td>29.3</td> </tr> </tbody> </table> <p style=\"text-align: justify;\">Disponibles en tallas desde la 38 hasta la 46, estos guayos ofrecen el ajuste perfecto para cada jugador que busque combinar velocidad con un excelente agarre, superando los desaf&iacute;os de cada juego con agilidad y control.</p> </div> <div class=\"flex items-center gap-2 pr-1 leading-0\" style=\"text-align: justify;\">&nbsp;</div>', 130000.00, 40, NULL, '2024-08-23 11:38:33', 'guayos-de-futbol-agarre-y-velocidad', 1),
(10, 5, '9255458', 'Medias de Fútbol Sujeción y Comodidad', '<p style=\"text-align: justify;\">Estas medias de f&uacute;tbol est&aacute;n dise&ntilde;adas para ofrecer soporte y confort durante todo el partido. Fabricadas con una mezcla de materiales el&aacute;sticos y transpirables, mantienen los pies secos y frescos en todo momento. El dise&ntilde;o anat&oacute;mico se adapta perfectamente a la forma del pie, mientras que las zonas acolchadas en el tal&oacute;n y la planta brindan amortiguaci&oacute;n adicional para reducir el impacto. La banda de sujeci&oacute;n en el arco del pie proporciona un ajuste firme y c&oacute;modo, asegurando que las medias se mantengan en su lugar incluso durante los movimientos m&aacute;s intensos.</p> <hr /> <p style=\"text-align: justify;\"><strong>Tabla de Tallas</strong></p> <table> <thead> <tr> <th>Talla</th> <th>Longitud del Pie (cm)</th> </tr> </thead> <tbody> <tr> <td>S</td> <td>22-24</td> </tr> <tr> <td>M</td> <td>24-26</td> </tr> <tr> <td>L</td> <td>26-28</td> </tr> <tr> <td>XL</td> <td>28-30</td> </tr> </tbody> </table> <p style=\"text-align: justify;\">Disponibles en tallas desde S hasta XL, estas medias son ideales para jugadores de todos los niveles, proporcionando sujeci&oacute;n y comodidad para que puedas concentrarte solo en el juego.</p>', 80000.00, 26, NULL, '2024-08-23 11:59:18', 'medias-de-futbol-sujecion-y-comodidad', 1),
(11, 5, '58234646', 'Medias de Fútbol Resistencia y Ventilación', '<p style=\"text-align: justify;\">Estas medias de f&uacute;tbol han sido creadas para brindar durabilidad y frescura durante los partidos m&aacute;s exigentes. Su tejido de alta resistencia ofrece un ajuste ce&ntilde;ido que evita deslizamientos, mientras que las zonas de ventilaci&oacute;n estrat&eacute;gicamente ubicadas permiten una &oacute;ptima transpirabilidad, manteniendo los pies secos y frescos. Con refuerzos en la puntera y el tal&oacute;n, estas medias garantizan una mayor durabilidad y protecci&oacute;n en cada paso. La banda de compresi&oacute;n en el arco ayuda a mejorar la circulaci&oacute;n y proporciona un ajuste c&oacute;modo y seguro.</p> <hr /> <p style=\"text-align: justify;\"><strong>Tabla de Tallas</strong></p> <table> <thead> <tr> <th>Talla</th> <th>Longitud del Pie (cm)</th> </tr> </thead> <tbody> <tr> <td>S</td> <td>22-24</td> </tr> <tr> <td>M</td> <td>24-26</td> </tr> <tr> <td>L</td> <td>26-28</td> </tr> <tr> <td>XL</td> <td>28-30</td> </tr> </tbody> </table> <p style=\"text-align: justify;\">Disponibles en tallas de S a XL, estas medias ofrecen el soporte y la durabilidad necesarios para cualquier nivel de juego, ayud&aacute;ndote a mantenerte c&oacute;modo y preparado para cada desaf&iacute;o en el campo.</p>', 50000.00, 20, NULL, '2024-11-12 22:29:55', 'medias-de-futbol-resistencia-y-ventilacion', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reembolso`
--

CREATE TABLE `reembolso` (
  `id` bigint(20) NOT NULL,
  `pedidoid` bigint(20) NOT NULL,
  `idtransaccion` varchar(255) NOT NULL,
  `datosreembolso` text NOT NULL,
  `observacion` text NOT NULL,
  `status` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `idrol` bigint(20) NOT NULL,
  `nombrerol` varchar(50) NOT NULL,
  `descripcion` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`idrol`, `nombrerol`, `descripcion`, `status`) VALUES
(1, 'Administrador', 'Acceso a todo el sistema', 1),
(2, 'Supervisor', 'Supervisor de tiendas', 1),
(3, 'Cliente', 'Clientes en general', 1),
(4, 'Arbitro', 'Trasparecía & Neutralidad', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `suscripciones`
--

CREATE TABLE `suscripciones` (
  `idsuscripcion` bigint(20) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `datecreated` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `suscripciones`
--

INSERT INTO `suscripciones` (`idsuscripcion`, `nombre`, `email`, `datecreated`) VALUES
(3, 'Oscar', 'oscar23@gmail.com', '2024-11-19 09:12:56');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipopago`
--

CREATE TABLE `tipopago` (
  `idtipopago` bigint(20) NOT NULL,
  `tipopago` varchar(100) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `tipopago`
--

INSERT INTO `tipopago` (`idtipopago`, `tipopago`, `status`) VALUES
(1, 'PayPal', 1),
(2, 'Efectivo', 1),
(3, 'Tarjeta', 1),
(4, 'Cheque', 1),
(5, 'Despósito Bancario', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`idcategoria`);

--
-- Indices de la tabla `contacto`
--
ALTER TABLE `contacto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `detalle_pedido`
--
ALTER TABLE `detalle_pedido`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pedidoid` (`pedidoid`),
  ADD KEY `productoid` (`productoid`);

--
-- Indices de la tabla `detalle_temp`
--
ALTER TABLE `detalle_temp`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productoid` (`productoid`),
  ADD KEY `personaid` (`personaid`);

--
-- Indices de la tabla `imagen`
--
ALTER TABLE `imagen`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productoid` (`productoid`);

--
-- Indices de la tabla `modulo`
--
ALTER TABLE `modulo`
  ADD PRIMARY KEY (`idmodulo`);

--
-- Indices de la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`idpedido`),
  ADD KEY `personaid` (`personaid`),
  ADD KEY `tipopagoid` (`tipopagoid`);

--
-- Indices de la tabla `permisos`
--
ALTER TABLE `permisos`
  ADD PRIMARY KEY (`idpermiso`),
  ADD KEY `rolid` (`rolid`),
  ADD KEY `moduloid` (`moduloid`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`idpersona`),
  ADD KEY `rolid` (`rolid`);

--
-- Indices de la tabla `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`idpost`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`idproducto`),
  ADD KEY `categoriaid` (`categoriaid`);

--
-- Indices de la tabla `reembolso`
--
ALTER TABLE `reembolso`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pedidoid` (`pedidoid`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`idrol`);

--
-- Indices de la tabla `suscripciones`
--
ALTER TABLE `suscripciones`
  ADD PRIMARY KEY (`idsuscripcion`);

--
-- Indices de la tabla `tipopago`
--
ALTER TABLE `tipopago`
  ADD PRIMARY KEY (`idtipopago`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `idcategoria` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `contacto`
--
ALTER TABLE `contacto`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `detalle_pedido`
--
ALTER TABLE `detalle_pedido`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `detalle_temp`
--
ALTER TABLE `detalle_temp`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `imagen`
--
ALTER TABLE `imagen`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT de la tabla `modulo`
--
ALTER TABLE `modulo`
  MODIFY `idmodulo` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `pedido`
--
ALTER TABLE `pedido`
  MODIFY `idpedido` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `permisos`
--
ALTER TABLE `permisos`
  MODIFY `idpermiso` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT de la tabla `persona`
--
ALTER TABLE `persona`
  MODIFY `idpersona` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `post`
--
ALTER TABLE `post`
  MODIFY `idpost` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `idproducto` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `reembolso`
--
ALTER TABLE `reembolso`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `idrol` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `suscripciones`
--
ALTER TABLE `suscripciones`
  MODIFY `idsuscripcion` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tipopago`
--
ALTER TABLE `tipopago`
  MODIFY `idtipopago` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalle_pedido`
--
ALTER TABLE `detalle_pedido`
  ADD CONSTRAINT `detalle_pedido_ibfk_1` FOREIGN KEY (`pedidoid`) REFERENCES `pedido` (`idpedido`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detalle_pedido_ibfk_2` FOREIGN KEY (`productoid`) REFERENCES `producto` (`idproducto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `detalle_temp`
--
ALTER TABLE `detalle_temp`
  ADD CONSTRAINT `detalle_temp_ibfk_1` FOREIGN KEY (`productoid`) REFERENCES `producto` (`idproducto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `imagen`
--
ALTER TABLE `imagen`
  ADD CONSTRAINT `imagen_ibfk_1` FOREIGN KEY (`productoid`) REFERENCES `producto` (`idproducto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`personaid`) REFERENCES `persona` (`idpersona`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pedido_ibfk_2` FOREIGN KEY (`tipopagoid`) REFERENCES `tipopago` (`idtipopago`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `permisos`
--
ALTER TABLE `permisos`
  ADD CONSTRAINT `permisos_ibfk_1` FOREIGN KEY (`rolid`) REFERENCES `rol` (`idrol`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permisos_ibfk_2` FOREIGN KEY (`moduloid`) REFERENCES `modulo` (`idmodulo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `persona`
--
ALTER TABLE `persona`
  ADD CONSTRAINT `persona_ibfk_1` FOREIGN KEY (`rolid`) REFERENCES `rol` (`idrol`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`categoriaid`) REFERENCES `categoria` (`idcategoria`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `reembolso`
--
ALTER TABLE `reembolso`
  ADD CONSTRAINT `reembolso_ibfk_1` FOREIGN KEY (`pedidoid`) REFERENCES `pedido` (`idpedido`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
