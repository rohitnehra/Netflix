-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 19-Nov-2017 às 20:21
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
  `progress` varchar(255) NOT NULL,
  `atualprogress` varchar(255) NOT NULL,
  `perfil` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `netflix_history`
--

INSERT INTO `netflix_history` (`id`, `idvideo`, `idserie`, `idpeople`, `progress`, `atualprogress`, `perfil`) VALUES
(7, '1', '22', '12', '', '', '64');

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
(59, 0, 'Alexandre', '2017-11-18 22:12:30', '18', '1'),
(60, 0, 'João', '2017-11-18 22:12:33', '18', '2'),
(61, 0, 'Usuario padrão', '2017-11-18 22:21:56', '18', '3'),
(62, 0, 'Ah tirei', '2017-11-18 22:22:31', '18', '4'),
(63, 0, 'LoL', '2017-11-18 22:23:17', '18', '2'),
(64, 0, 'Alexandre', '2017-11-19 10:40:14', '12', '1'),
(65, 0, '0000', '2017-11-19 11:39:05', '19', '1'),
(66, 0, 'Before123', '2017-11-19 12:49:27', '20', '1'),
(67, 0, 'Kaway', '2017-11-19 12:52:10', '20', '2'),
(68, 0, 'Familia', '2017-11-19 12:52:21', '20', '3'),
(69, 0, 'Animes', '2017-11-19 12:52:30', '20', '4'),
(70, 0, 'Filmes', '2017-11-19 12:52:43', '20', '2');

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
  `expirado` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `netflix_user`
--

INSERT INTO `netflix_user` (`id`, `idcry`, `email`, `password`, `datec`, `lastlogin`, `configurado`, `ip`, `banned`, `inisession`, `expirado`) VALUES
(12, '2d292a110c253fa39290c912886819ea56dc86fd', 'xande1231231@hotmail.com', 'a0b48bf6735b085374fa984535372a8025210e45', '2017-12-18', '2017-11-19 10:40:08', 1, '::1', 0, '2017-12-18 02:06:27', '2017-12-18'),
(13, '2690fc43660f30235cfe3054f55d61e259c9bd0e', 'teste001@hotmail.com', 'a0b48bf6735b085374fa984535372a8025210e45', '2017-11-17', '2017-11-17 18:47:11', 1, '187.55.39.59', 0, '2017-11-17 18:47:11', '2017-12-18'),
(14, 'dc4698d0eefcf2eccc0b19c6c371bcfe8385d18d', 'vandilsombarbosa1999@hotmail.com', '4557b921cca88f57476a7102c9860fdc11686683', '2017-12-18', '2017-11-17 19:00:13', 1, '89.114.245.202', 0, '2017-11-17 19:00:13', '2017-12-18'),
(15, '7c0218c945141f4ba9b3423aa6cabca8067a0c60', 'lucasdasilvaoliveira2016@gmail.com', '79028d4542e9538702b5b4375cba73cc984467da', '2017-12-18', '2017-11-17 19:08:05', 1, '168.90.64.2', 0, '2017-11-17 19:08:05', '2017-12-18'),
(16, 'a0497f99570be336943238b332f3ab019c0dfc0f', 'anelisenaiara2006@hotmail.com', 'a873d476f684dd7a02e0ff310c060f547e3b1459', '2017-11-18', '2017-11-18 17:39:24', 1, '187.7.20.215', 0, '2017-11-18 17:39:24', '2017-12-19'),
(17, '02cc5749e091f48f87a57653e009e5e42b59d3da', 'anelisenaiara2006@hotmail.com', 'a873d476f684dd7a02e0ff310c060f547e3b1459', '2017-11-18', '2017-11-18 17:39:25', 0, '187.7.20.215', 0, '2017-11-18 17:39:25', '2017-12-19'),
(18, '37f43b43179ff6aeedb8fd62d6d713d034a0b84c', 'kaway51@hotmail.com', 'a0b48bf6735b085374fa984535372a8025210e45', '2017-12-19', '2017-11-18 21:55:21', 1, '187.7.20.215', 0, '2017-11-18 21:55:21', '2017-12-19'),
(19, 'dda3fa655bcf194564d4b615d7a29e9c0431620a', 'lucasdasilvaoliveira9999@gmail.com', '79028d4542e9538702b5b4375cba73cc984467da', '2017-11-19', '2017-11-19 11:39:01', 1, '168.90.64.2', 0, '2017-11-19 11:39:01', '2017-12-19'),
(20, 'd6ad42d47d28f4ee75f7f3347e77daab10a88da4', 'igoroliveira270@outlook.com', 'b8a5beb64307f7726bf50077e556ae0e6492f76c', '2017-12-19', '2017-11-19 12:51:40', 1, '186.244.97.158', 0, '2017-11-19 12:49:21', '2017-12-19');

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
(1, '22', '202', '', '01', '', 'https://r10---sn-bg07dnez.googlevideo.com/videoplayback?requiressl=yes&id=32adc2a1b188a740&itag=18&source=blogger&app=blogger&ip=0.0.0.0&ipbits=0&expire=1513242867&sparams=expire,id,ip,ipbits,itag,mip,mm,mn,ms,mv,pl,requiressl,sc,source&signature=5D16A41167588E334D772276BF9307BBEA3AA972.530DF20D1366D067E73D43AF51FCCE9C83819043&key=cms1&cms_redirect=yes&mip=187.55.27.109&mm=30&mn=sn-bg07dnez&ms=nxu&mt=1511095286&mv=m&pl=18&sc=yes'),
(2, '22', '34', '', '02', '', 'https://r6---sn-bg07dnls.googlevideo.com/videoplayback?requiressl=yes&id=4d69e22a5953431d&itag=18&source=blogger&app=blogger&ip=0.0.0.0&ipbits=0&expire=1513247438&sparams=expire,id,ip,ipbits,itag,mip,mm,mn,ms,mv,pl,requiressl,sc,source&signature=0FE4C58EAE738DC4E117FA36C6539225D45C01F1.5C15E1E12C886BDB1653357CB31158D2E3B28716&key=cms1&cms_redirect=yes&mip=187.55.27.109&mm=30&mn=sn-bg07dnls&ms=nxu&mt=1511099873&mv=m&pl=18&sc=yes'),
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `netflix_profiles`
--
ALTER TABLE `netflix_profiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `netflix_videos`
--
ALTER TABLE `netflix_videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
