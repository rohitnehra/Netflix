-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 14-Nov-2017 às 18:22
-- Versão do servidor: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `netflix`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `netflix_profiles`
--

CREATE TABLE `netflix_profiles` (
  `id` int(11) NOT NULL,
  `idcry` int(11) NOT NULL,
  `nome` text NOT NULL,
  `datec` datetime NOT NULL,
  `iduser` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `netflix_profiles`
--

INSERT INTO `netflix_profiles` (`id`, `idcry`, `nome`, `datec`, `iduser`, `foto`) VALUES
(2, 0, 'XandeCo', '2017-11-14 11:59:18', '2', '2');

-- --------------------------------------------------------

--
-- Estrutura da tabela `netflix_user`
--

CREATE TABLE `netflix_user` (
  `id` int(11) NOT NULL,
  `idcry` varchar(2555) NOT NULL,
  `email` text NOT NULL,
  `password` varchar(255) NOT NULL,
  `datec` datetime NOT NULL,
  `lastlogin` datetime NOT NULL,
  `configurado` int(11) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `banned` int(11) NOT NULL,
  `inisession` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `netflix_user`
--

INSERT INTO `netflix_user` (`id`, `idcry`, `email`, `password`, `datec`, `lastlogin`, `configurado`, `ip`, `banned`, `inisession`) VALUES
(2, 'c9c587778d0e7be3e591c0560410121ff8c710c3', 'kaway@hotmail.com', 'a0b48bf6735b085374fa984535372a8025210e45', '2017-11-14 11:59:13', '2017-11-14 12:24:40', 1, '187.55.19.18', 0, '2017-11-14 11:59:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `netflix_profiles`
--
ALTER TABLE `netflix_profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `netflix_user`
--
ALTER TABLE `netflix_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `netflix_profiles`
--
ALTER TABLE `netflix_profiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `netflix_user`
--
ALTER TABLE `netflix_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
