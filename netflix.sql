-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 20-Nov-2017 às 22:27
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
-- Estrutura da tabela `netflix_history`
--

CREATE TABLE `netflix_history` (
  `id` int(11) NOT NULL,
  `idvideo` varchar(255) NOT NULL,
  `idserie` varchar(255) NOT NULL,
  `idpeople` varchar(255) NOT NULL,
  `progress` text NOT NULL,
  `atualprogress` text NOT NULL,
  `perfil` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `netflix_history`
--

INSERT INTO `netflix_history` (`id`, `idvideo`, `idserie`, `idpeople`, `progress`, `atualprogress`, `perfil`) VALUES
(1, '1', '22', '1', '39.014137457053025%', '212.639351', '1');

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
(1, 0, 'Alexandre', '2017-11-20 18:22:30', '1', '1');

-- --------------------------------------------------------

--
-- Estrutura da tabela `netflix_series`
--

CREATE TABLE `netflix_series` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `desct` text NOT NULL,
  `foto` text NOT NULL,
  `fotoback` text NOT NULL,
  `logo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `netflix_series`
--

INSERT INTO `netflix_series` (`id`, `name`, `desct`, `foto`, `fotoback`, `logo`) VALUES
(22, 'Chou Yuu Sekai: Being The Reality', 'Mundo para com o mistério monstro “disaster” que apareceu ameaçando a paz. A humanidade para combater o disaster, formaram a forças especiais “Saber”. O conglomerado privado também lançou uma organização de defesa independente Chamado “Blade”, que tenha sido envolvido em uma batalha. Noi é um estudante do ensino médio, do tipo muito comum que anseia por entrar nas forças especiais para combater o disaster. Com a aparição da misteriosa estudante transferida Motisu, Noi vai ter sua vida normal virar de cabeça pra baixo. Os jogadores realistas e virtuais, tendo a sua volta NPC’s, tanto seu pai quanto sua mãe… quando sua memória de 10 anos atrás retornou, os segredos desse mundo foram revelados.', '1.jpg', 'ma.png', '1.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `netflix_swit_pro`
--

CREATE TABLE `netflix_swit_pro` (
  `id` int(11) NOT NULL,
  `idpf` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `netflix_swit_pro`
--

INSERT INTO `netflix_swit_pro` (`id`, `idpf`) VALUES
(1, '1'),
(2, '2'),
(3, '3'),
(4, '4');

-- --------------------------------------------------------

--
-- Estrutura da tabela `netflix_user`
--

CREATE TABLE `netflix_user` (
  `id` int(11) NOT NULL,
  `idcry` varchar(2555) NOT NULL,
  `email` text NOT NULL,
  `password` varchar(255) NOT NULL,
  `datec` date NOT NULL,
  `lastlogin` datetime NOT NULL,
  `configurado` int(11) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `banned` int(11) NOT NULL,
  `inisession` datetime NOT NULL,
  `expirado` date NOT NULL,
  `admin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `netflix_user`
--

INSERT INTO `netflix_user` (`id`, `idcry`, `email`, `password`, `datec`, `lastlogin`, `configurado`, `ip`, `banned`, `inisession`, `expirado`, `admin`) VALUES
(1, '645d900939e7702d6ce6a2ba7b109d702f7f2808', 'xande1231231@hotmail.com', 'a0b48bf6735b085374fa984535372a8025210e45', '2017-11-20', '2017-11-20 18:22:27', 1, '187.55.46.112', 0, '2017-11-20 18:22:27', '2017-12-21', 1),
(2, '645d900939e7702d6ce6a2ba7b109d702f7f2808', 'xande1231221@hotmail.com', 'a0b48bf6735b085374fa984535372a8025210e45', '2017-11-20', '2017-11-20 18:22:27', 1, '187.55.46.112', 0, '2017-11-20 18:22:27', '2017-12-21', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `netflix_videos`
--

CREATE TABLE `netflix_videos` (
  `id` int(11) NOT NULL,
  `idserie` varchar(255) NOT NULL,
  `views` varchar(255) NOT NULL,
  `nome` text NOT NULL,
  `ep` text NOT NULL,
  `desct` text NOT NULL,
  `video` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `netflix_videos`
--

INSERT INTO `netflix_videos` (`id`, `idserie`, `views`, `nome`, `ep`, `desct`, `video`) VALUES
(1, '22', '230', '', '01', '', 'https://r10---sn-bg07dnez.googlevideo.com/videoplayback?requiressl=yes&id=32adc2a1b188a740&itag=18&source=blogger&app=blogger&ip=0.0.0.0&ipbits=0&expire=1513242867&sparams=expire,id,ip,ipbits,itag,mip,mm,mn,ms,mv,pl,requiressl,sc,source&signature=5D16A41167588E334D772276BF9307BBEA3AA972.530DF20D1366D067E73D43AF51FCCE9C83819043&key=cms1&cms_redirect=yes&mip=187.55.27.109&mm=30&mn=sn-bg07dnez&ms=nxu&mt=1511095286&mv=m&pl=18&sc=yes'),
(2, '22', '42', '', '02', '', 'https://r6---sn-bg07dnls.googlevideo.com/videoplayback?requiressl=yes&id=4d69e22a5953431d&itag=18&source=blogger&app=blogger&ip=0.0.0.0&ipbits=0&expire=1513247438&sparams=expire,id,ip,ipbits,itag,mip,mm,mn,ms,mv,pl,requiressl,sc,source&signature=0FE4C58EAE738DC4E117FA36C6539225D45C01F1.5C15E1E12C886BDB1653357CB31158D2E3B28716&key=cms1&cms_redirect=yes&mip=187.55.27.109&mm=30&mn=sn-bg07dnls&ms=nxu&mt=1511099873&mv=m&pl=18&sc=yes'),
(3, '22', '241', '', '03', '', 'https://r6---sn-bg07dnls.googlevideo.com/videoplayback?requiressl=yes&id=4d69e22a5953431d&itag=18&source=blogger&app=blogger&ip=0.0.0.0&ipbits=0&expire=1513247438&sparams=expire,id,ip,ipbits,itag,mip,mm,mn,ms,mv,pl,requiressl,sc,source&signature=0FE4C58EAE738DC4E117FA36C6539225D45C01F1.5C15E1E12C886BDB1653357CB31158D2E3B28716&key=cms1&cms_redirect=yes&mip=187.55.27.109&mm=30&mn=sn-bg07dnls&ms=nxu&mt=1511099873&mv=m&pl=18&sc=yes');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `netflix_history`
--
ALTER TABLE `netflix_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `netflix_profiles`
--
ALTER TABLE `netflix_profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `netflix_series`
--
ALTER TABLE `netflix_series`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `netflix_swit_pro`
--
ALTER TABLE `netflix_swit_pro`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `netflix_user`
--
ALTER TABLE `netflix_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `netflix_videos`
--
ALTER TABLE `netflix_videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `netflix_history`
--
ALTER TABLE `netflix_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `netflix_profiles`
--
ALTER TABLE `netflix_profiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `netflix_series`
--
ALTER TABLE `netflix_series`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `netflix_swit_pro`
--
ALTER TABLE `netflix_swit_pro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `netflix_user`
--
ALTER TABLE `netflix_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `netflix_videos`
--
ALTER TABLE `netflix_videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
