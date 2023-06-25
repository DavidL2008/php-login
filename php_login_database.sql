-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-10-2022 a las 05:12:28
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `php_login_database`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(250) COLLATE utf8_spanish_ci NOT NULL,
  `password` varchar(250) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `email`, `password`) VALUES
(1, 'loki@email.com', '$2y$10$tUAi6T4jxcjQFQVpDc3W6O4oZCmASP5NPxNWrl3zj5Rs2n3Ohr2Zy'),
(2, 'diego@email.com', '$2y$10$b750eSuZSfLPeJNmikabK.qfzn5O3ci4HHPun3DzePBsDJtl20aaq'),
(3, 'david@email.com', '$2y$10$XCdnrFDHtaLBUEGkFt/9FecvDN8VQabkX9bQHmnMufRvkWisJCSGK'),
(4, 'diego@email.com', '$2y$10$h7rR.XXUBPTGYi9w2np/xukVgolRBe45isImfLKF.nx7eTp5gCMeG'),
(5, 'thiago@emial.com', '$2y$10$CK9R//Jt.aSNbR9F4JYvru6AT3BGtCVXiZ611y3M5c4Zmh04gvpRa'),
(6, 'luke@gmail.com', '$2y$10$UhBsEmsi5U8cOkyR9BsugOsehl1TQWntFUQwbRxdUWUtfoOYRyN7i'),
(7, 'obiwan@gmail.com', '$2y$10$NmHvAzEHVXJztLplT2c97eJgG9VHeueWlahSrbeo5u.RcvU6LO5OK'),
(8, 'obi@gmail.com', '$2y$10$3AHGS.GmA6oYybxXO7DLC.AoHHNxgu6.mkA8NWP40oGsHxawdKF3m'),
(9, 'diego@email.com', '$2y$10$Xja/OKranDEXJDDwfDHy5O8zyYOnx587j.H3ZUpJr5P0/FLLn2Zre'),
(10, 'thanos@gmail.com', '$2y$10$PN/178WenWdoC5ayxYB99.cwOOYPL6Dp3C.mTDLStB/Q6IKw5yqiK'),
(11, 'david@gmail.com', '$2y$10$jsxBKRDSdJxWWg/zce4DU.kF0COc4PeNEDkYFk1KL38rMIYuYeEzK');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
