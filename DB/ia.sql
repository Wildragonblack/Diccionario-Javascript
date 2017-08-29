-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-08-2017 a las 04:51:07
-- Versión del servidor: 10.1.25-MariaDB
-- Versión de PHP: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ia`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos`
--

CREATE TABLE `datos` (
  `ID` int(11) NOT NULL,
  `PALABRA` varchar(30) DEFAULT NULL,
  `CONTENIDO` varchar(150) DEFAULT NULL,
  `TIPO` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `datos`
--

INSERT INTO `datos` (`ID`, `PALABRA`, `CONTENIDO`, `TIPO`) VALUES
(1, 'jugador', '¿Y qué le parecio mi chico?, es un jugador muy prometedor,¿Es bueno?, no, pero desde hace cinco años que está prometiendo jugar mejor', 0),
(2, 'cientifico', '¿Qué son 50 físicos y 50 químicos juntos?,  ¡100tíficos!', 0),
(3, 'idioma', 'segun su curriculum, conoce 20 idiomas, asi es señor, ¿y cual habla mejor?, hablar, hablar, ninguno. pero sé que existen', 0),
(4, 'despedida', '¿cómo se despiden los quimicos?, acido un placer', 0),
(5, 'nombre', '¿como se llama el chino mas alto del mundo?, Chinfin', 0),
(6, 'pistola', '¿como se dice pistola en arabe, ahivalabala', 0),
(7, 'suegra', 'oye tio mi suegra es un ángel, ¡Qué morro...! ¡la mía todavía no ha muerto', 0),
(8, 'esposo', 'amor, estas preciosa, Dime algo que no sepa, Aparcar', 0),
(9, 'mago', '¿como se queda un mago despues de comer?, magordito...', 0),
(10, 'pocoyo', '¿tu sabes el chiste de pocoyo?, ¡No!, Pues TAMPOCOYO.', 0),
(11, 'caja', '¿para que va una caja al gimnasio?, ¡Para hacerse caja fuerte!', 0),
(12, 'impresora', '¿porque se paro la impresora?, parece que tuvo una impresion muy furte', 0),
(13, 'tiempo', '¿porque despidieron al reloj?, porque se atraso', 0),
(14, 'soldado', '¡¡Soldado, FIIRME!,¿donde firmo mi capitan', 0),
(15, 'chino', '¿cual es el chino mas veloz?, ¡¡Chiiiiuuuuunnnnn!!', 0),
(16, 'capitan', 'dice el capitan del barco:, ¡subid las velas!, y abajo se quedaron a oscuras', 0),
(17, 'universidad', '¿que hace un universitario en la universidad?, su carrera universitaria', 0),
(18, 'pelicula', '¿como se llama el padre de Ete?, donete', 0),
(19, 'flor', '¿que es una losa?, ¡una flol muy hermosa!', 0),
(20, 'ingles', '¿habla usted ingles?, no pero escucho muy bien', 0),
(21, 'letra', '¿Qué se dice una vez en un minuto y dos veces en un momento?... La M', 1),
(22, 'hijo', 'Mi padre tiene cuatro hijos, MARÍA, RAQUEL, MANUEL, ¿quién es el cuarto? Yo', 1),
(23, 'tia', 'mi tia cuca tiene una mala recha, ¿quien sera esta muchacha?, la cucaracha', 1),
(24, 'casa', 'soy pequeño y blandito y mi casa llevo sobre el lomito, el caracol', 1),
(25, 'vocales', '¿que animal tiene las 5 vocales?, el murcielago', 1),
(26, 'vive', 'en lo alto vive, en lo alto mora, en lo alto teje la tejedora.., la araña', 1),
(27, 'blanca', 'blanca por dentro, verde por fuera. si quieres que te lo diga, espera ..., la pera', 1),
(28, 'fruta', 'la A, anda. la B, besa. la C, reza ¿que fruta es esa?, la cereza', 1),
(29, 'loca', 'soy una loca amarrada que solo sirvo para la ensalasa, la lechuga', 1),
(30, 'mercado', 'una señoritava por el mercado con su cola verde y su traje morado, la berenjena', 1),
(31, 'viejo', 'soy un viejo arrugadito que si me echan al agua salgo mas gordito, el garbanzo', 1),
(32, 'arroz', '¿cual es la palabra mas grande del mundo?, arroz... poque empieza con A y termina con Z', 1),
(33, 'napoleon', '¿de que color era el caballo de napoleon?, blanco', 1),
(34, 'tren', 'un tren electrico viaja hacia el norte. ¿hacia donde va el humo?, no desprende homo porque es electrico', 1),
(35, 'hoja', 'en cuatro hojitas me has de buscar si buena suerte quieres encontrar, el trebol', 1),
(36, 'familia', 'de tus tios es hermana, es hija de tus abuelos y quien mas a ti te ama, tu madre', 1),
(37, 'papa', 'nieto de su bisabuelo, padre de tus hermanos, de tus primos es el tio y de tus tios es hermano, tu padre', 1),
(38, 'redonda', 'es redonda como un queso y nadie puede darle un beso, la luna', 1),
(39, 'tomar', 'lo tomas pero no lo puedes llevar. ¿que es?, el sol', 1),
(40, 'rubio', 'soy rubio y no tengo pelo. soy alto y no tengo cuerpo, el sol', 1),
(41, 'arbol', 'sus ramas de oro. Un viento envidiosorobó mi tesoro. Hoy no tiene ramas. Hoy no tiene sueños mi árbol callado, mi árbol pequeño.', 2),
(42, 'amor', '¿Que es el amor? Si no es lo que siento por ti, ¿Que es el dolor? Si no es lo que siento cuando estas lejos de mi, ¿Quien soy yo? Sin ti', 2),
(43, 'dedicatoria', 'Si alguna vez la vida te maltrata,	acuérdate de mí, que no puede cansarse de esperar, aquel que no se cansa de mirarte.', 2),
(44, 'limpio', '¡Qué limpio ha dejado el aire, la pureza de ese ser, que existió para negarse!', 2),
(45, 'museo', 'Todo existe para que tú seas. Tú eres para que todo exista. Y tú estabas allí absoluta y soberanamente existiendo.', 2),
(46, 'sueave', 'con suavidad en mares de narciso; marineros fantásticos se esfuman y queda el muelle en la quietud sumido.', 2),
(47, 'existe', 'existe quizás lo que nunca vistes.. perdiste quizás .. lo que no SUPISTE.. valorar ....', 2),
(48, 'olvido', 'Tras el asalto a tu corazón,  me tomé un respiro, el tiempo justo para perderte.', 2),
(49, 'viaje', 'y no donde vamos, y nunca llegar más lejos, que antes de partir.', 2),
(50, 'lluvia', 'Toda la noche estaba en esa humedad sombría, que de repente, iluminó la luna.', 2),
(51, 'decision', 'No decidí quererte, con la mente o con el corazón, fue el frío del invierno.', 2),
(52, 'amigo', 'tú que estás siempre conmigo, quiero decirte que te quiero y que tu amistad no se compra con dinero', 2),
(53, 'reloj', 'De la torre mojada, el vetusto reloj, deja caer las horas como lágrimas.', 2),
(54, 'amante', 'Cuando te vi me enamore, cuando te fuistes llore , cuando te queria me mentistes, cuando te volvistes era muy tarde', 2),
(55, 'girasol', 'quisiera ser jirasol para qe un dia de estos te jale tu calson', 2),
(56, 'corazon', 'Unos quieren el mundo, otros quieren el sol, pero yo sólo quiero un pedazo de tu corazón', 2),
(57, 'estrella', 'Una estrella se estrello dime si tienes novio para no estrellarme yo', 2),
(58, 'sad', '¿Por Que llorar y gritar como loca?, Si yo muero por ti y tú mueres por otra.', 2),
(59, 'lapiz', 'Un lápiz sin punta no puede escribir, pero yo sin ti no puedo vivir', 2),
(60, 'error', 'error tras error, complican tu encuentro, los años pasan y yo sigo solo, aunque sé que al fin llegará el día de nuestro reencuentro.', 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `datos`
--
ALTER TABLE `datos`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `datos`
--
ALTER TABLE `datos`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
