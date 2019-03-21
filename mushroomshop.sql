-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Мар 22 2019 г., 01:54
-- Версия сервера: 10.3.13-MariaDB
-- Версия PHP: 7.1.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `mushroomshop`
--

-- --------------------------------------------------------

--
-- Структура таблицы `cats`
--

CREATE TABLE `cats` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `rus_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `cats`
--

INSERT INTO `cats` (`id`, `name`, `rus_name`) VALUES
(1, 'edible', 'Съедобные грибы'),
(2, 'poisonous', 'Ядовитые грибы'),
(3, 'Conditionally edible', 'Условно съедобные');

-- --------------------------------------------------------

--
-- Структура таблицы `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `order`
--

INSERT INTO `order` (`id`, `user_name`, `phone`, `email`) VALUES
(7, '22', '22', '22@mail.ru'),
(17, '', '', ''),
(18, '', '22', 'wolf.wolf1922.wolf@mail.ru'),
(19, '', '213123', 'tankist.tk@mail.ru'),
(20, '', '22', 'tankist.tk@mail.ru'),
(21, '', '213123', 'wolf.wolf1922.wolf@mail.ru'),
(22, '', '213123', 'wolf.wolf1922.wolf@mail.ru'),
(23, 'No', '22', 'wolf.wolf1922.wolf@mail.ru'),
(24, 'No', '213123', 'wolf.wolf1922.wolf@mail.ru'),
(25, 'wolf5673', '9053282533', 'tankist.tk@mail.ru'),
(26, 'wolf5673', '9053282533', 'tankist.tk@mail.ru');

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `cat` varchar(50) NOT NULL,
  `price` int(11) NOT NULL,
  `rus_name` varchar(50) NOT NULL,
  `img` varchar(50) NOT NULL,
  `descr` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `title`, `cat`, `price`, `rus_name`, `img`, `descr`) VALUES
(1, 'amanita', 'poisonous', 100, 'Мухомор красный', 'amanita.jpg', 'Плодовое тело гриба содержит ряд токсичных соединений, некоторые из которых обладают психотропным эффектом. Токсические и психоактивные вещества хорошо растворяются в горячей воде, и употребление грибов, отваренных в нескольких водах, приводит к менее сильному отравлению. Однако, содержание ядов в плодовых телах может сильно варьировать, что делает употребление мухоморов в пищу опасным'),
(2, 'panther', 'poisonous', 200, 'Мухомор пантерный', 'panther.jpg', 'Сильно ядовит. Образует микоризу со многими деревьями, встречается в хвойных, смешанных и широколиственных лесах, часто под сосной, дубом, буком, предпочитает щелочные почвы. Широко распространён в умеренном климате Северного полушария'),
(3, 'kingbolete', 'edible', 300, 'Белый гриб', 'kingbolete.jpg', 'Классический вид, который в народе прозвали «полковником» – чествуя самым главным и лучшим из сородичей. Каштаново-коричневая шляпка выпуклая, затем плоско-выпуклая, подушковидная, редко распростертая, достигает диаметра 25–30 см. Известны гигантские представители – с диаметром шляпки до 45 см и весом до 2–3 кг. Поверхность гладкая, иногда неровная, бороздчатая ил'),
(4, 'leccinum', 'edible', 400, 'Подосиновик', 'leccinum.jpg', 'Плодоносит чаще поодиночке. Обычный гриб в северной умеренной зоне, в России наиболее известен в Европейской части и на Дальнем Востоке, где встречается под берёзой маньчжурской и каменной. Сезон июнь — сентябрь, иногда до поздней осени. Съедобен'),
(5, 'chanterelle', 'edible', 500, 'Лисичка', 'chanterelle.jpg', 'Хорошо известный съедобный гриб, высоко ценится, годится для употребления в любом виде. Образует микоризу с различными деревьями, наиболее часто с елью, сосной, дубом, буком'),
(6, 'pax', 'poisonous', 600, 'Свинушка', 'pax.jpg', 'До 1981 года этот гриб считался условно съедобным и относился к 4-й категории по пищевым качествам. В настоящее время отнесён к ядовитым, хотя симптомы отравления проявляются не всегда и/или не сразу. Содержит токсины (лектины), не разрушающиеся даже при многократном отваривании'),
(11, 'Lactarius resimus', 'Conditionally edible', 150, 'Груздь настоящий', 'gruzd-nastoyashhi.jpg', 'Груздь встречается в лиственных и смешанных лесах (берёзовых, сосново-берёзовых, с липовым подлеском). Распространён в северных областях России, в Белоруссии, в Верхнем и Среднем Поволжье, на Урале, в Западной Сибири. Встречается нечасто, но обильно, растёт обычно большими группами. Оптимальная среднесуточная температура плодоношения 8—10°C на поверхности почвы. Грузди образуют микоризу с березой.Сезон июль — сентябрь, в южных частях ареала (Белоруссия, Среднее Поволжье) август — сентябрь\r\n'),
(12, 'Amanita rubescens', 'Conditionally edible', 50, 'Мухомор серо-розовый', 'Amanita-rubescens.jpg', 'Мухомор серо-розовый — Условно-съедобный гриб, знающие грибники считают его очень хорошим на вкус, и любят за то, что он появляется уже в начале лета. В свежем виде в пищу непригоден, обычно употребляется жареным после предварительного отваривания. Сырой гриб содержит не термостойкие ядовитые вещества, перед приготовлением его рекомендуется хорошо отваривать и сливать воду.\r\n\r\n'),
(13, 'Tricholoma equestre', 'Conditionally edible', 80, 'Рядовка зелёная', 'Tricholoma-equestre.jpg', 'ядовка зелёная относится к условно-съедобным грибам, заготавливается и употребляется в пищу в любом виде. Перед употреблением и обработкой необходимо тщательно промыть. После кулинарной обработки гриб сохраняет свой зеленый цвет, за что и произошло его название зеленушка.\r\nСлучаются отравления, если зеленушку употреблять в больших количествах. Токсины гриба поражают скелетную мускулатуру. Симптомы отравления — это мышечная слабость, судороги, боли, темный цвет мочи\r\n\r\n');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `cats`
--
ALTER TABLE `cats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Индексы таблицы `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cat` (`cat`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `cats`
--
ALTER TABLE `cats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`cat`) REFERENCES `cats` (`name`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
