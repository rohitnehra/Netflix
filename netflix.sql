-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 01-Dez-2017 às 21:07
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
-- Estrutura da tabela `netflix_back`
--

CREATE TABLE `netflix_back` (
  `id` int(11) NOT NULL,
  `img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `netflix_back`
--

INSERT INTO `netflix_back` (`id`, `img`) VALUES
(1, '1.png'),
(2, '2.png'),
(3, '3.png'),
(4, '4.png'),
(5, '5.png'),
(6, '6.png');

-- --------------------------------------------------------

--
-- Estrutura da tabela `netflix_comment`
--

CREATE TABLE `netflix_comment` (
  `id` int(11) NOT NULL,
  `iduser` varchar(255) NOT NULL,
  `idprofile` varchar(255) NOT NULL,
  `episodio` varchar(255) NOT NULL,
  `texto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `netflix_comment`
--

INSERT INTO `netflix_comment` (`id`, `iduser`, `idprofile`, `episodio`, `texto`) VALUES
(3, '1', '44', '12', 'Teste'),
(4, '10', '34', '12', 'Muito legal'),
(5, '1', '44', '', 'ue'),
(6, '1', '44', '', 'ue');

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
(16, '1', '22', '1', '57.899601913473596%', '399.540612', '44', '01'),
(17, '12', '26', '1', '67.0758784909572%', '954.433659', '53', '01'),
(18, '1', '22', '1', '0.11687141150734917%', '1.13461', '53', '01'),
(19, '12', '26', '12', '0.26984045464336087%', '3.707494', '54', '01'),
(20, '1', '22', '13', '1.6462543537803989%', '2.903093', '56', '01'),
(21, '12', '26', '13', '1.277414263855769%', '2.1571', '56', '01'),
(22, '13', '27', '1', '68.15233961644947%', '943.991756', '53', '01');

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
(31, 0, 'Bruno', '2017-11-28 21:50:44', '8', '1'),
(32, 0, 'Ericlys Syllas', '2017-11-28 21:51:23', '9', '1'),
(34, 0, 'Wooby-Admin', '2017-11-30 15:25:48', '10', '1'),
(49, 0, 'Locked', '2017-11-30 18:05:52', '11', '1'),
(53, 0, 'Alexandre', '2017-12-01 09:22:57', '1', '5'),
(54, 0, 'misterteste', '2017-12-01 12:20:32', '12', '1'),
(55, 0, 'luisfeliperm', '2017-12-01 13:07:27', '13', '1'),
(56, 0, 'luisfeliperm', '2017-12-01 13:07:27', '13', '2');

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
  `tipo` varchar(255) NOT NULL,
  `views` varchar(255) NOT NULL,
  `gen1` text NOT NULL,
  `gen2` text NOT NULL,
  `gen3` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `netflix_series`
--

INSERT INTO `netflix_series` (`id`, `name`, `desct`, `foto`, `fotoback`, `logo`, `tipo`, `views`, `gen1`, `gen2`, `gen3`) VALUES
(22, 'Boku no Hero Academy', 'O que é um herói? Para Midoriya Izuku, a resposta dessa pergunta sempre foi simples: “Tudo que eu quero ser!” E quem é o maior herói? Bem, o lendário All Might (Todo Poderoso), é claro. All Might é o herói número um e também o “Símbolo da Paz” mundial. Nem mesmo em seus sonhos mais loucos Izuku poderia imaginar que logo seu caminho cruzaria o de seu herói de infância. Em Boku no Hero Academia o status é governado pelas “Individualidades”, superpoderes singulares que se desenvolvem na infância. Mas infelizmente, o viciado em heróis, Midoriya “Deku” Izuku nunca teve uma Individualidade. Isto é, até conhecer All Might, o maior herói de todos. A transformação de sonhador em herói de Izuku começa na Academia U.A., a melhor escola de treinamento de heróis do Japão. Izuku fica eufórico quando é aceito para essa academia de prestígio, especialmente quando descobre que All Might é um dos professores. Que surpresas essa academia poderosa aguarda? Izuku será capaz de acompanhar os colegas de classe de elite?', 'https://static.tumblr.com/a401d168e0ff7acf997726558e2e3725/h58van7/3a8nhof20/tumblr_static_tumblr_static_4lqsmcqwsjggcwwcs0gw4k84w_640.png', 'http://www.animalog.biz/wp-content/uploads/2017/09/maxresdefault-4-1.jpg?x26225', 'https://upload.wikimedia.org/wikipedia/commons/c/cf/Boku_no_Hero_Academia_Logo.png', '3', '2', '', '', ''),
(26, 'Dungeon Ni Deai', 'Sinopse: honra, e as esperanças de romance com uma garota bonita. Nesta cidade de sonhos e desejos, novo aventureiro Sino Cranel tem o fatídico encontro com a pequena deusa Hestia.', 'https://honeysanime.com/wp-content/uploads/2017/08/DanMachi-capture-3-Sentai-560x335.png', 'https://images.alphacoders.com/638/thumb-1920-638271.jpg', 'https://img00.deviantart.net/d335/i/2015/103/c/a/logo_danmachi_by_nesmeth-d8plmp9.png', '3', '30', '', '', ''),
(27, 'Mahoutsukai no Yome', 'Chise Hatori viveu uma vida repleta de maltratos e abusos, negada de todo tipo de amor. Longe do acalanto da família, ela passou por uma boa dose de problemas e obstáculos. Mas quando tudo parecia perdido, um encontro fatídico a esperava. Um homem com cabeça de fera, dotado de poderes mágicos, a compra em um leilão de escravos, e a vida de Chise nunca mais será a mesma. Esse homem é um Magus, um feiticeiro de grande poder, que decide libertar Chise de seu cativeiro e faz uma corajosa afirmação: Chise se tornará sua aprendiz… e sua noiva!\nCriado e dirigido por Yamazaki Kore e Naganuma Norihiro, Mahoutsukai no Yome (??????) foi ao ar em 2017 com animação do estúdio Wit Studio.', 'https://myanimeost.net/wp-content/uploads/2017/10/ancient-magus-bride-750x426.jpg', 'https://i.imgur.com/utkBlGY.png', 'http://www.anieclipse.net/animes/mahoutsukai-no-yome/Imagens/logo.png', '3', '3', '', '', '');

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
(1, '645d900939e7702d6ce6a2ba7b109d702f7f2808', 'xande1231231@hotmail.com', 'a0b48bf6735b085374fa984535372a8025210e45', '2017-12-30', '2017-12-01 14:52:59', 1, '187.55.46.112', 0, '2017-11-20 18:22:27', '2017-12-31', 1),
(2, '645d900939e7702d6ce6a2ba7b109d702f7f2808', 'xande1231221@hotmail.com', 'a0b48bf6735b085374fa984535372a8025210e45', '2017-11-20', '2017-11-20 18:22:27', 1, '187.55.46.112', 0, '2017-11-20 18:22:27', '2017-12-21', 0),
(3, '85e3ab197e46051afabbe3d6ee48cd37c7fc7bbd', 'anelisenaiara2006@hotmail.com', 'a873d476f684dd7a02e0ff310c060f547e3b1459', '2017-11-20', '2017-11-20 21:42:29', 1, '187.55.46.112', 0, '2017-11-20 21:42:29', '2017-12-21', 0),
(4, '2e6389ee3b04ed50c65c8eaface6cd6735a4b94f', 'lucas-hartmann@outlook.com.br', '6b6f8a72af25766d73210394f729cccebe52ccd6', '2017-11-28', '2017-11-28 11:26:48', 1, '177.203.93.66', 0, '2017-11-28 11:26:48', '2017-12-28', 0),
(5, 'a0b24a745a537969ed102de14af9fcdd2020dac2', 'koe@hotmail.com', 'a0b48bf6735b085374fa984535372a8025210e45', '2017-11-28', '2017-11-28 16:04:08', 1, '::1', 0, '2017-11-28 16:04:08', '2017-12-29', 0),
(6, '8e648092a0f897036304b480b3c05411cf374dfe', 'igoroliveira270@outlook.com', 'b8a5beb64307f7726bf50077e556ae0e6492f76c', '2017-11-28', '2017-11-28 16:58:14', 1, '186.244.97.116', 0, '2017-11-28 16:58:14', '2017-12-29', 0),
(7, '83f92d5b8a874984ed924081cb4c06d11f924be0', 'killerfell15@gmail.com', '8a49932c7d421d1a30c1e10a60fc1e3c75ffbe00', '2017-11-28', '2017-11-28 17:04:48', 1, '201.6.132.24', 0, '2017-11-28 17:04:48', '2017-12-29', 0),
(8, 'd83d83e98896a00cd2084f42ed45d14fe5c9229a', 'dejavu@cuvox.de', 'a800c766b67c2363bf72f26f78aa1a312ee3de97', '2017-11-28', '2017-11-28 21:52:35', 1, '187.126.226.230', 0, '2017-11-28 21:50:40', '2017-12-29', 0),
(9, '5b31cca7d85947da218e2b9464510b3d878b9fa0', 'ericlyssyllas@gmail.com', 'e81ea2873c1effaa2126fb89f5454f7248192a43', '2017-11-28', '2017-11-28 21:51:13', 1, '186.208.68.226', 0, '2017-11-28 21:51:13', '2017-12-29', 0),
(10, '7d54455f1f39a20c253f975334260e7cc2f5437d', 'wooby.contato@gmail.com', 'e41aa374a6058fd1db65c1aec82e24014a1edc92', '2017-11-30', '2017-11-30 18:03:43', 1, '191.17.186.17', 0, '2017-11-30 15:25:37', '2017-12-31', 1),
(11, '086be694f4d2a64e50003d5e069d1070aac5fbc6', 'enzomendes25@outlook.com', 'cd02bcdbb1fe762e7cadd346c7452fe04138bb1f', '2017-11-30', '2017-11-30 18:05:47', 1, '200.159.129.64', 0, '2017-11-30 18:05:47', '2017-12-31', 0),
(12, '4f983abb2bb4efe924af525698564389a3d62751', 'gui2325_@hotmail.com', '20eabe5d64b0e216796e834f52d61fd0b70332fc', '2017-12-01', '2017-12-01 12:20:22', 1, '45.4.220.2', 0, '2017-12-01 12:20:22', '2017-12-31', 0),
(13, 'e2ee5f4289f674543fcd36697afbd6f75adf308f', 'luisfelipepoint@gmail.com', 'a7785fb147423f4dd3e07e01a590ae7964873281', '2017-12-01', '2017-12-01 13:07:18', 1, '168.227.88.135', 0, '2017-12-01 13:07:18', '2017-12-31', 0);

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
(1, '22', '345', '', '01', '', 'https://r10---sn-bg07dnez.googlevideo.com/videoplayback?requiressl=yes&id=32adc2a1b188a740&itag=18&source=blogger&app=blogger&ip=0.0.0.0&ipbits=0&expire=1513242867&sparams=expire,id,ip,ipbits,itag,mip,mm,mn,ms,mv,pl,requiressl,sc,source&signature=5D16A41167588E334D772276BF9307BBEA3AA972.530DF20D1366D067E73D43AF51FCCE9C83819043&key=cms1&cms_redirect=yes&mip=187.55.27.109&mm=30&mn=sn-bg07dnez&ms=nxu&mt=1511095286&mv=m&pl=18&sc=yes'),
(2, '22', '54', '', '02', '', 'https://r6---sn-bg07dnls.googlevideo.com/videoplayback?requiressl=yes&id=4d69e22a5953431d&itag=18&source=blogger&app=blogger&ip=0.0.0.0&ipbits=0&expire=1513247438&sparams=expire,id,ip,ipbits,itag,mip,mm,mn,ms,mv,pl,requiressl,sc,source&signature=0FE4C58EAE738DC4E117FA36C6539225D45C01F1.5C15E1E12C886BDB1653357CB31158D2E3B28716&key=cms1&cms_redirect=yes&mip=187.55.27.109&mm=30&mn=sn-bg07dnls&ms=nxu&mt=1511099873&mv=m&pl=18&sc=yes'),
(3, '22', '254', '', '03', '', 'https://r6---sn-bg07dnls.googlevideo.com/videoplayback?requiressl=yes&id=4d69e22a5953431d&itag=18&source=blogger&app=blogger&ip=0.0.0.0&ipbits=0&expire=1513247438&sparams=expire,id,ip,ipbits,itag,mip,mm,mn,ms,mv,pl,requiressl,sc,source&signature=0FE4C58EAE738DC4E117FA36C6539225D45C01F1.5C15E1E12C886BDB1653357CB31158D2E3B28716&key=cms1&cms_redirect=yes&mip=187.55.27.109&mm=30&mn=sn-bg07dnls&ms=nxu&mt=1511099873&mv=m&pl=18&sc=yes'),
(4, '24', '12', '', '01', '', 'https://r6---sn-bg07dnlz.googlevideo.com/videoplayback?requiressl=yes&id=e8d16780fecc983d&itag=18&source=blogger&app=blogger&ip=0.0.0.0&ipbits=0&expire=1514106148&sparams=expire,id,ip,ipbits,itag,mip,mm,mn,ms,mv,pl,requiressl,sc,source&signature=47C3F1E1A33E150548A9767E6EB4AD53DA58ED9E.7BA42050A1C05C7B89C461B02CFE48EA7C0F04&key=cms1&cms_redirect=yes&mip=187.55.10.228&mm=30&mn=sn-bg07dnlz&ms=nxu&mt=1511958014&mv=u&pl=18&sc=yes'),
(12, '26', '252', '', '01', '', 'http://www.blogger.com/video-play.mp4?contentId=c5c14134cf6da894&autoplay=true'),
(13, '27', '3', '', '01', '', 'http://www.blogger.com/video-play.mp4?contentId=92dd46a0e9d0d27c'),
(14, '27', '', '', '02', '', 'https://www.blogger.com/video-play.mp4?contentId=63cf1c97031a0b39'),
(16, '27', '', '', '03', '', 'https://www.blogger.com/video-play.mp4?contentId=f9ea79f9b2a49227');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `netflix_back`
--
ALTER TABLE `netflix_back`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `netflix_comment`
--
ALTER TABLE `netflix_comment`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `netflix_back`
--
ALTER TABLE `netflix_back`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `netflix_comment`
--
ALTER TABLE `netflix_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `netflix_history`
--
ALTER TABLE `netflix_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `netflix_profiles`
--
ALTER TABLE `netflix_profiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT for table `netflix_series`
--
ALTER TABLE `netflix_series`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `netflix_swit_pro`
--
ALTER TABLE `netflix_swit_pro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `netflix_user`
--
ALTER TABLE `netflix_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `netflix_videos`
--
ALTER TABLE `netflix_videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
