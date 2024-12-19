-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-12-2024 a las 02:02:46
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `catalogos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `ID` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `precio` decimal(10,0) NOT NULL,
  `link_imagen` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`ID`, `nombre`, `descripcion`, `precio`, `link_imagen`) VALUES
(6, 'NIKE AIR 3100', 'UNA FUSIÓN DEL ADN DEL RUNNING Y EL ADN HUMANO. Nike Air Max 95 Essential, inspirado en el cuerpo humano y el ADN del running, combina una increíble comodidad con un estilo que se lleva todas las miradas. Los icónicos paneles laterales representan los mús', 964950, 'https://nikeco.vtexassets.com/arquivos/ids/533213-1600-auto?v=638463876157870000&width=1600&height=auto&aspect=true'),
(7, 'Nike Quest 6', 'Los Nike Quest 6 están hechos para runners de todos los niveles. Pero no te equivoques, son todo menos básicos. La banda de ajuste supercómoda con soporte en el mediopié mantiene la estabilidad durante las carreras. Además, la espuma supersuave en la entr', 454950, 'https://nikeco.vtexassets.com/arquivos/ids/677909-1200-auto?v=638623623742170000&width=1200&height=auto&aspect=true'),
(8, 'Nike Vaporfly 3 \"Eliud Kipchoge\"', 'Atrápalos, si puedes. Los Nike Vaporfly 3 están hechos para quienes tienen objetivos, los runners, quienes corren a toda velocidad y no pueden rechazar la emoción de la carrera. Rediseñamos a estos líderes supremos de los tenis y les ajustamos el motor pa', 1474950, 'https://nikeco.vtexassets.com/arquivos/ids/712466-1200-auto?v=638651410592400000&width=1200&height=auto&aspect=true'),
(9, 'Nike Zoom Fly 6', 'Los Zoom Fly 6 te acompañan en cada paso de la carrera. Más ligeros que los Zoom Fly 5, su espuma ZoomX Foam responsiva añade retorno de energía en cada pisada, mientras que la placa de fibra de carbono te impulsa hasta la línea de meta.', 964950, 'https://nikeco.vtexassets.com/arquivos/ids/707153-1200-auto?v=638633878558130000&width=1200&height=auto&aspect=true'),
(10, 'Nike Invincible 3', 'La máxima amortiguación proporciona nuestra pisada más cómoda para las carreras del día a día. Disfruta de una parte superior Flyknit transpirable y de la plataforma fuerte de espuma ZoomX Foam ligera que suaviza los impactos. Además, la entresuela de est', 1004950, 'https://nikeco.vtexassets.com/arquivos/ids/676913-1600-auto?v=638623620705300000&width=1600&height=auto&aspect=true'),
(11, 'Nike Juniper Trail 3', 'Disfruta el terreno montañoso con los Nike Juniper Trail 3. La suela Trail ATC te ayuda a mantener una posición erguida en tus carreras. Hicimos la entresuela y la parte superior más suaves y flexibles en comparación con la versión anterior.', 524950, 'https://nikeco.vtexassets.com/arquivos/ids/677251-1200-auto?v=638623621685300000&width=1200&height=auto&aspect=true'),
(12, 'Air Jordan 1 Low \"Game Royal\"', 'El Air Jordan 1 Low OG renueva el calzado clásico con nuevos colores y texturas. Los materiales y los detalles premium aportan una expresión renovada al favorito de siempre.', 914950, 'https://nikeco.vtexassets.com/arquivos/ids/715492-1600-auto?v=638681467219400000&width=1600&height=auto&aspect=true'),
(13, 'Nike Air Monarch IV', 'Las Nike Air Monarch IV te preparan para entrenar con una confección de piel duradera en la parte superior para una mayor sujeción. La espuma ligera se combina con la amortiguación Nike Air para ofrecer comodidad en cada pisada.', 524950, 'https://nikeco.vtexassets.com/arquivos/ids/715945-1200-auto?v=638690961674400000&width=1200&height=auto&aspect=true'),
(14, 'Nike Court Shot', 'Estos tenis de perfil bajo son un básico minimalista. La parte superior de cuero sintético crea un look clásico; las costuras y el logotipo Swoosh texturizado añaden la cantidad exacta de detalles mejorados.', 454950, 'https://nikeco.vtexassets.com/arquivos/ids/678149-1200-auto?v=638623624542070000&width=1200&height=auto&aspect=true'),
(15, 'Nike Air More Uptempo Low', 'Con un estilo de básquetbol de alto nivel y gráficos inspirados en el grafiti, los Air More Uptempo seguro llamarán la atención dentro y fuera de la cancha. Esta versión low combina la amortiguación Air con un cuello acolchado para que te sientas tan bien', 984950, 'https://nikeco.vtexassets.com/arquivos/ids/678315-1200-auto?v=638623624978500000&width=1200&height=auto&aspect=true'),
(16, 'NIKE AIR 2', 'UNA FUSIÓN DEL ADN DEL RUNNING Y EL ADN HUMANO. Nike Air Max 95 Essential, inspirado en el cuerpo humano y el ADN del running, combina una increíble comodidad con un estilo que se lleva todas las miradas. Los icónicos paneles laterales representan los mús', 964950, 'https://nikeco.vtexassets.com/arquivos/ids/533213-1600-auto?v=638463876157870000&width=1600&height=auto&aspect=true'),
(17, 'Nike Superfly 10 Academy Mercurial Dream Spee', '¿Quieres llevar tu velocidad al siguiente nivel? Confeccionamos estos tacos Academy con una unidad Air Zoom mejorada en el talón. Te dan la propulsión necesaria para abrirte paso a través de la línea de fondo. El resultado son los Mercurial más responsivo', 656490, 'https://nikeco.vtexassets.com/arquivos/ids/713602-1200-auto?v=638666973727370000&width=1200&height=auto&aspect=true'),
(18, 'Nike Offcourt', 'COMODIDAD ÚNICA. VERSATILIDAD INFINITA. Estas chanclas están diseñadas para ayudarte a relajarte y recargarte. La espuma innovadora de doble capa en la planta del pie se combina con una correa suave para brindar comodidad, al mismo tiempo que el patrón gr', 219950, 'https://nikeco.vtexassets.com/arquivos/ids/702500-1600-auto?v=638628786461130000&width=1600&height=auto&aspect=true');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
