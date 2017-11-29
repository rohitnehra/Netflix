-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 29-Nov-2017 às 13:39
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
  `perfil` varchar(255) NOT NULL,
  `ep` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `netflix_history`
--

INSERT INTO `netflix_history` (`id`, `idvideo`, `idserie`, `idpeople`, `progress`, `atualprogress`, `perfil`, `ep`) VALUES
(16, '1', '22', '1', '37.199463384576845%', '289.107203', '8', '01'),
(17, '2', '22', '1', '50.70167361598712%', '290.517109', '8', '02'),
(18, 'assets/css/style.css', '', '1', '', '', '8', ''),
(19, 'img/voltar.png', '', '1', '', '', '8', ''),
(20, 'img/play.png', '', '1', '', '', '8', ''),
(21, 'img/pause.png', '', '1', '', '', '8', ''),
(22, 'img/voltar_ativo.png', '', '1', '', '', '8', ''),
(23, 'img/v.png', '', '1', '', '', '8', ''),
(24, 'assets/js/mod_xhr.js', '', '1', '', '', '8', ''),
(25, 'img/volume.png', '', '1', '', '', '8', ''),
(26, 'img/ajuda.png', '', '1', '', '', '8', ''),
(27, 'static/videos/1.jpg', '', '1', '', '', '8', ''),
(28, 'img/baixo.png', '', '1', '', '', '8', ''),
(29, 'img/ep.png', '', '1', '', '', '8', ''),
(30, 'img/eps.png', '', '1', '', '', '8', ''),
(31, 'img/sub.png', '', '1', '', '', '8', ''),
(32, 'img/full.png', '', '1', '', '', '8', ''),
(33, 'img/mute.png', '', '1', '', '', '8', ''),
(34, 'img/desfull.png', '', '1', '', '', '8', ''),
(35, 'assets/css/assets/js/mod_xhr.js', '', '1', '', '', '8', ''),
(36, 'assets/css/assets/css/style.css', '', '1', '', '', '8', ''),
(37, 'dashboard.php', '', '1', '', '', '8', ''),
(38, '1', '22', '1', '58.48319882377424%', '436.3407', '12', '01'),
(39, '1', '22', '6', '3.952515440205509%', '2.139125', '13', '01'),
(40, '2', '22', '6', '4.653635634684006%', '1.544021', '13', '02'),
(41, '1', '22', '1', '43.977034225211156%', '255.156691', '18', '01'),
(42, '1', '22', '9', '7.168614325422235%', '330.941361', '32', '01'),
(43, '1', '22', '1', '42.59431478758155%', '293.63165', '26', '01');

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
(3, 0, 'anelise naiara', '2017-11-20 21:42:39', '3', '1'),
(4, 0, 'silvio da silva', '2017-11-20 21:44:30', '3', '2'),
(9, 0, 'Lucas Hartmann', '2017-11-28 11:26:53', '4', '1'),
(10, 0, 'Alexandre', '2017-11-28 16:08:53', '5', '1'),
(13, 0, 'Before123', '2017-11-28 16:58:20', '6', '1'),
(15, 0, 'Perfil 1', '2017-11-28 17:06:02', '7', '1'),
(26, 0, 'Alexandre', '2017-11-28 21:34:26', '1', '1'),
(27, 0, 'Parasita', '2017-11-28 21:34:29', '1', '2'),
(28, 0, 'Parasita 2', '2017-11-28 21:34:33', '1', '3'),
(29, 0, 'Parasita 3', '2017-11-28 21:34:36', '1', '4'),
(30, 0, 'Parasita 4', '2017-11-28 21:34:40', '1', '2'),
(31, 0, 'Bruno', '2017-11-28 21:50:44', '8', '1'),
(32, 0, 'Ericlys Syllas', '2017-11-28 21:51:23', '9', '1');

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
  `logo` text NOT NULL,
  `tipo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `netflix_series`
--

INSERT INTO `netflix_series` (`id`, `name`, `desct`, `foto`, `fotoback`, `logo`, `tipo`) VALUES
(22, 'Boku no Hero Academy', 'Mundo para com o mistério monstro “disaster” que apareceu ameaçando a paz. A humanidade para combater o disaster, formaram a forças especiais “Saber”. O conglomerado privado também lançou uma organização de defesa independente Chamado “Blade”, que tenha sido envolvido em uma batalha. Noi é um estudante do ensino médio, do tipo muito comum que anseia por entrar nas forças especiais para combater o disaster. Com a aparição da misteriosa estudante transferida Motisu, Noi vai ter sua vida normal virar de cabeça pra baixo. Os jogadores realistas e virtuais, tendo a sua volta NPC’s, tanto seu pai quanto sua mãe… quando sua memória de 10 anos atrás retornou, os segredos desse mundo foram revelados.', 'http://oi57.tinypic.com/s4ma8z.jpg?w=240', 'http://lostinanime.com/wp-content/uploads/2017/04/Boku-no-Hero-Academia-2-02-30.jpg', 'https://upload.wikimedia.org/wikipedia/commons/c/cf/Boku_no_Hero_Academia_Logo.png', '3'),
(24, 'Mr Robot', 'Descrição sobre Mr Robot', 'http://is5.mzstatic.com/image/thumb/Music49/v4/35/c4/ea/35c4eac7-fef3-bacc-0525-a941187cc03e/source/1200x630bb.jpg', 'https://d1srlirzdlmpew.cloudfront.net/wp-content/uploads/sites/92/2017/10/11055507/mr-robot-safety-tips-featured.jpg', 'https://wiki.gamedetectives.net/images/f/f9/Mr-robot.png', '2');

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
(1, '645d900939e7702d6ce6a2ba7b109d702f7f2808', 'xande1231231@hotmail.com', 'a0b48bf6735b085374fa984535372a8025210e45', '2017-12-21', '2017-11-28 21:49:45', 1, '187.55.46.112', 0, '2017-11-20 18:22:27', '2017-12-21', 1),
(2, '645d900939e7702d6ce6a2ba7b109d702f7f2808', 'xande1231221@hotmail.com', 'a0b48bf6735b085374fa984535372a8025210e45', '2017-11-20', '2017-11-20 18:22:27', 1, '187.55.46.112', 0, '2017-11-20 18:22:27', '2017-12-21', 0),
(3, '85e3ab197e46051afabbe3d6ee48cd37c7fc7bbd', 'anelisenaiara2006@hotmail.com', 'a873d476f684dd7a02e0ff310c060f547e3b1459', '2017-11-20', '2017-11-20 21:42:29', 1, '187.55.46.112', 0, '2017-11-20 21:42:29', '2017-12-21', 0),
(4, '2e6389ee3b04ed50c65c8eaface6cd6735a4b94f', 'lucas-hartmann@outlook.com.br', '6b6f8a72af25766d73210394f729cccebe52ccd6', '2017-11-28', '2017-11-28 11:26:48', 1, '177.203.93.66', 0, '2017-11-28 11:26:48', '2017-12-28', 0),
(5, 'a0b24a745a537969ed102de14af9fcdd2020dac2', 'koe@hotmail.com', 'a0b48bf6735b085374fa984535372a8025210e45', '2017-11-28', '2017-11-28 16:04:08', 1, '::1', 0, '2017-11-28 16:04:08', '2017-12-29', 0),
(6, '8e648092a0f897036304b480b3c05411cf374dfe', 'igoroliveira270@outlook.com', 'b8a5beb64307f7726bf50077e556ae0e6492f76c', '2017-11-28', '2017-11-28 16:58:14', 1, '186.244.97.116', 0, '2017-11-28 16:58:14', '2017-12-29', 0),
(7, '83f92d5b8a874984ed924081cb4c06d11f924be0', 'killerfell15@gmail.com', '8a49932c7d421d1a30c1e10a60fc1e3c75ffbe00', '2017-11-28', '2017-11-28 17:04:48', 1, '201.6.132.24', 0, '2017-11-28 17:04:48', '2017-12-29', 0),
(8, 'd83d83e98896a00cd2084f42ed45d14fe5c9229a', 'dejavu@cuvox.de', 'a800c766b67c2363bf72f26f78aa1a312ee3de97', '2017-11-28', '2017-11-28 21:52:35', 1, '187.126.226.230', 0, '2017-11-28 21:50:40', '2017-12-29', 0),
(9, '5b31cca7d85947da218e2b9464510b3d878b9fa0', 'ericlyssyllas@gmail.com', 'e81ea2873c1effaa2126fb89f5454f7248192a43', '2017-11-28', '2017-11-28 21:51:13', 1, '186.208.68.226', 0, '2017-11-28 21:51:13', '2017-12-29', 0);

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
(1, '22', '293', '', '01', '', 'https://r10---sn-bg07dnez.googlevideo.com/videoplayback?requiressl=yes&id=32adc2a1b188a740&itag=18&source=blogger&app=blogger&ip=0.0.0.0&ipbits=0&expire=1513242867&sparams=expire,id,ip,ipbits,itag,mip,mm,mn,ms,mv,pl,requiressl,sc,source&signature=5D16A41167588E334D772276BF9307BBEA3AA972.530DF20D1366D067E73D43AF51FCCE9C83819043&key=cms1&cms_redirect=yes&mip=187.55.27.109&mm=30&mn=sn-bg07dnez&ms=nxu&mt=1511095286&mv=m&pl=18&sc=yes'),
(2, '22', '53', '', '02', '', 'https://r6---sn-bg07dnls.googlevideo.com/videoplayback?requiressl=yes&id=4d69e22a5953431d&itag=18&source=blogger&app=blogger&ip=0.0.0.0&ipbits=0&expire=1513247438&sparams=expire,id,ip,ipbits,itag,mip,mm,mn,ms,mv,pl,requiressl,sc,source&signature=0FE4C58EAE738DC4E117FA36C6539225D45C01F1.5C15E1E12C886BDB1653357CB31158D2E3B28716&key=cms1&cms_redirect=yes&mip=187.55.27.109&mm=30&mn=sn-bg07dnls&ms=nxu&mt=1511099873&mv=m&pl=18&sc=yes'),
(3, '22', '253', '', '03', '', 'https://r6---sn-bg07dnls.googlevideo.com/videoplayback?requiressl=yes&id=4d69e22a5953431d&itag=18&source=blogger&app=blogger&ip=0.0.0.0&ipbits=0&expire=1513247438&sparams=expire,id,ip,ipbits,itag,mip,mm,mn,ms,mv,pl,requiressl,sc,source&signature=0FE4C58EAE738DC4E117FA36C6539225D45C01F1.5C15E1E12C886BDB1653357CB31158D2E3B28716&key=cms1&cms_redirect=yes&mip=187.55.27.109&mm=30&mn=sn-bg07dnls&ms=nxu&mt=1511099873&mv=m&pl=18&sc=yes'),
(4, '24', '', '', '01', '', 'https://r6---sn-bg07dnlz.googlevideo.com/videoplayback?requiressl=yes&id=e8d16780fecc983d&itag=18&source=blogger&app=blogger&ip=0.0.0.0&ipbits=0&expire=1514106148&sparams=expire,id,ip,ipbits,itag,mip,mm,mn,ms,mv,pl,requiressl,sc,source&signature=47C3F1E1A33E150548A9767E6EB4AD53DA58ED9E.7BA42050A1C05C7B89C461B02CFE48EA7C0F04&key=cms1&cms_redirect=yes&mip=187.55.10.228&mm=30&mn=sn-bg07dnlz&ms=nxu&mt=1511958014&mv=u&pl=18&sc=yes');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `netflix_profiles`
--
ALTER TABLE `netflix_profiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `netflix_series`
--
ALTER TABLE `netflix_series`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `netflix_swit_pro`
--
ALTER TABLE `netflix_swit_pro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `netflix_user`
--
ALTER TABLE `netflix_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `netflix_videos`
--
ALTER TABLE `netflix_videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
