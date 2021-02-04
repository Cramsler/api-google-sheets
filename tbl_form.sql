-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 04 2021 г., 17:31
-- Версия сервера: 10.3.22-MariaDB
-- Версия PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `form`
--

-- --------------------------------------------------------

--
-- Структура таблицы `tbl_form`
--

CREATE TABLE `tbl_form` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `surname` varchar(255) NOT NULL,
  `age` smallint(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `tbl_form`
--

INSERT INTO `tbl_form` (`id`, `name`, `surname`, `age`) VALUES
(29, 'Мария', 'Петрова', 22),
(30, 'Петр', 'Сидоров', 17),
(31, 'Виктория', 'Ломова', 33),
(32, 'Дмитрий', 'Санников', 25),
(33, 'Михаил', 'Зорин', 15),
(34, 'София', 'Меньшикова', 18),
(35, 'Виктор', 'Димитров', 35),
(36, 'Милана', 'Фадеева', 11),
(37, 'Сергей', 'Вишневский', 19),
(38, 'Андрей', 'Ложкарев', 56),
(39, 'Оксана', 'Соколова', 33),
(40, 'Олег', 'Манченко', 45),
(41, 'Полина', 'Гагарина', 22);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `tbl_form`
--
ALTER TABLE `tbl_form`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `tbl_form`
--
ALTER TABLE `tbl_form`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
