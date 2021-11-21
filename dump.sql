-- Adminer 4.8.1 MySQL 5.7.36 dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

CREATE DATABASE `superTeste` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `superTeste`;

CREATE TABLE `Pessoa` (
  `Nome` varchar(255) DEFAULT NULL,
  `Idade` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `Pessoa` (`Nome`, `Idade`) VALUES
('Pedro Rocha',	23),
('Carlos Eduardo',	23),
('Christopher Skibbe',	22),
('Matheus Chitan',	21),
('Lucas Romani',	23),
('Ana Paula',	49),
('Irene de Oliveira',	80),
('Pedro Rocha',	23);

-- 2021-11-21 19:37:35
