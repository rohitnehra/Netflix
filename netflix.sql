-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 17-Nov-2017 às 21:18
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
(2, 0, 'XandeCo', '2017-11-14 11:59:18', '2', '2'),
(15, 0, 'Lucas', '2017-11-14 15:26:36', '3', '1'),
(16, 0, 'BoxSeries', '2017-11-14 15:27:01', '4', '1'),
(21, 0, 'teste', '2017-11-14 15:30:20', '6', '1'),
(26, 0, 'TESTEXX', '2017-11-14 15:42:06', '8', '1'),
(27, 0, 'KAKAKA', '2017-11-14 16:25:08', '9', '1'),
(28, 0, 'mister 9nha', '2017-11-14 18:08:37', '10', '1'),
(29, 0, 'luis felipe', '2017-11-14 18:41:27', '11', '1'),
(30, 0, 'Alexandre', '2017-11-17 16:05:42', '12', '1');

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
(1, 'The Walking Dead', 'Casal aproveita férias hospedado em uma casa afastada, até que três invasores mascarados mostram como esse isolamento pode ser perigoso.The Walking Dead é baseada na série de quadrinhos homônima criada por Robert Kirkman. No seriado, descobriremos como é a vida na Terra após um apocalipse zumbi, em que a enorme maioria da população da terra foi infectada por um vírus misterioso que os transforma em mortos-vivos. Os poucos humanos que sobreviveram à epidemia agora devem se unir para encontrar um novo lar, longe dos zumbis. O grupo é liderado por Rick Grimes (Andrew Lincoln), um policial que acordou sozinho em um hospital cercado por mortos-vivos e agora procura sua esposa, Lori (Sarah Wayne Callies), e seu filho. Ele se junta a Shane (Jon Bernthal), seu ex-parceiro na polícia; Andrea (Lauren Holden), uma das duas irmãs que escapou da praga; Glenn (Steven Yeun), um varredor de ruas experiente; entre outros humanos igualmente assustados que lutam para escapar do vírus.', 'https://www.whats-on-netflix.com/wp-content/uploads/2014/08/the-walking-dead-s4.jpg', 'https://avante.biz/wp-content/uploads/Walking-Dead-Desktop-Backgrounds/Walking-Dead-Desktop-Backgrounds-002.jpg', 'https://vignette.wikia.nocookie.net/fictionalcrossover/images/a/a0/A_walking_dead_logo.png/revision/latest?cb=20141207034016');

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
(12, '2d292a110c253fa39290c912886819ea56dc86fd', 'xande1231231@hotmail.com', 'a0b48bf6735b085374fa984535372a8025210e45', '2017-12-18', '2017-11-17 16:05:27', 1, '::1', 0, '2017-12-18 02:06:27', '2017-12-18');

--
-- Indexes for dumped tables
--

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `netflix_series`
--
ALTER TABLE `netflix_series`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `netflix_user`
--
ALTER TABLE `netflix_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
