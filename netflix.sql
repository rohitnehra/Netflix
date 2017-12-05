-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 05-Dez-2017 às 18:02
-- Versão do servidor: 5.7.19-0ubuntu0.16.04.1
-- PHP Version: 5.6.32-1+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
(1, '24', '41', '3', '1.0685554905652028%', '894.393184', '6', '01'),
(2, '1', '1', '12', '7.89394903771468%', '197.259844', '37', '01'),
(3, '1', '1', '3', '69.30885711087856%', '1173.974213', '6', '01'),
(4, '3', '1', '3', '40.241864859124874%', '589.698394', '6', '03'),
(5, '2', '1', '3', '94.29136926032302%', '1369.419844', '6', '02'),
(6, '2', '1', '12', '4.958967502831119%', '19.26205', '37', '02'),
(7, '4', '1', '19', '0', '0', '40', '04'),
(8, '4', '1', '3', '0', '0', '6', '04'),
(9, '5', '1', '3', '1.3502664659441332%', '878.166881', '6', '05'),
(10, '6', '1', '3', '0', '0', '6', '06'),
(11, '7', '1', '3', '0', '0', '6', '07'),
(12, '8', '1', '3', '0', '0', '6', '08'),
(13, '9', '1', '3', '0', '0', '6', '09'),
(14, '10', '1', '3', '0', '0', '6', '10'),
(15, '11', '1', '3', '0', '0', '6', '11'),
(16, '12', '1', '3', '0', '0', '6', '12'),
(17, '13', '2', '3', '0', '0', '6', '01'),
(18, '14', '2', '3', '0', '0', '6', '02'),
(19, '13', '2', '12', '0', '0', '37', '01'),
(20, '14', '2', '12', '2.8255647451241326%', '6.35398', '37', '02'),
(21, '15', '2', '12', '3.2087701679632894%', '8.721302', '37', '03'),
(22, '16', '2', '12', '2.7330049307823856%', '5.298383', '37', '04'),
(23, '17', '2', '12', '0', '0', '37', '05'),
(24, '18', '2', '12', '0', '0', '37', '06'),
(25, '1', '1', '20', '23.856746785190296%', '284.800011', '41', '01'),
(26, '12', '1', '20', '0', '0', '41', '12'),
(27, '26', '2', '20', '0', '0', '41', '14'),
(28, '26', '2', '12', '0', '0', '37', '14'),
(29, '1', '1', '22', '0', '0', '43', '01'),
(30, '26', '2', '23', '0', '0', '44', '14'),
(31, '27', '3', '12', '2.81894069531943%', '1254.742207', '37', '01'),
(32, '30', '3', '12', '0', '0', '37', '04'),
(33, '3', '1', '12', '0', '0', '37', '03'),
(34, '40', '3', '12', '35.04118955405131%', '1213.129618', '37', '14'),
(35, '41', '3', '12', '95.37239933708776%', '1336.978626', '37', '15'),
(36, '49', '3', '12', '0', '0', '37', '23'),
(37, '51', '3', '25', '3.4343980256387727%', '8.675624', '46', '25'),
(38, '32', '3', '26', '2.822305615847919%', '6.96502', '47', '06'),
(39, '51', '3', '26', '24.94837759587922%', '1336.73473', '47', '25'),
(40, '27', '3', '3', '39.26420913237276%', '1039.014992', '6', '01'),
(41, '51', '3', '16', '2.7473494221869137%', '480.40088', '30', '25'),
(42, '51', '3', '27', '3.2625126468311483%', '65.198575', '48', '25'),
(43, '51', '3', '7', '6.5698802655182815%', '27.759734', '11', '25'),
(44, '1', '1', '29', '1.6007298049538277%', '15.694908', '49', '01'),
(45, '51', '3', '29', '6.354336986317078%', '76.460767', '49', '25'),
(46, '27', '3', '30', '0', '0', '50', '01'),
(47, '1', '1', '7', '14.88022676275136%', '2.901187', '11', '01'),
(48, '57', '4', '12', '2.9488284994664613%', '154.051773', '37', '06'),
(49, '51', '3', '12', '0', '0', '37', '25'),
(50, '63', '4', '32', '4.894225141096369%', '19.615465', '53', '12'),
(51, '1', '1', '32', '0.16541524175800468%', '29.031792', '53', '01'),
(52, '85', '7', '27', '0', '0', '48', '01'),
(53, '1', '1', '33', '1.3715532493311469%', '10.35906', '54', '01'),
(54, '63', '4', '16', '31.506022499884416%', '885.023844', '30', '12'),
(55, '3', '1', '33', '0.19850117226303446%', '2.593543', '54', '03'),
(56, '86', '8', '16', '5.811501664422645%', '258.876349', '30', 'Ep 1'),
(57, '1', '1', '34', '0.5911797704323812%', '11.184479', '55', '01'),
(58, '1', '1', '16', '34.43156932337965%', '734.292885', '30', '01'),
(59, '88', '', '27', '0', '0', '48', 'Ep 3'),
(60, '89', '9', '16', '58.855143725704586%', '1059.216043', '30', 'Ep 1'),
(61, '89', '9', '27', '7.382356702837638%', '605.451479', '48', 'Ep 1'),
(62, '85', '7', '16', '42.22785796179451%', '896.811077', '30', '01'),
(63, '89', '9', '36', '2.7930084439621328%', '202.054478', '57', '01'),
(64, '90', '10', '16', '1.6741287741194126%', '128.77773', '30', '01'),
(65, '90', '10', '37', '0', '0', '58', '01'),
(66, '89', '9', '12', '0.13956733541738373%', '0', '37', '01'),
(67, '90', '10', '27', '1.6470768726529732%', '142.544234', '48', '01'),
(68, '27', '3', '27', '3.150518647416628%', '4.648479', '48', '01'),
(69, '3', '1', '27', '1.6709429521136279%', '11.106021', '48', '03'),
(70, '90', '10', '38', '0', '0', '59', '01'),
(71, '89', '9', '38', '3.4035802167127254%', '10.70083', '59', '01'),
(72, '91', '11', '27', '0', '0', '48', 'Completo'),
(73, '92', '12', '27', '39.64483211030187%', '2290.507057', '48', 'Completo');

-- --------------------------------------------------------

--
-- Estrutura da tabela `netflix_payments`
--

CREATE TABLE `netflix_payments` (
  `id` int(6) NOT NULL,
  `txnid` varchar(20) NOT NULL,
  `payment_amount` decimal(7,2) NOT NULL,
  `payment_status` varchar(25) NOT NULL,
  `itemid` varchar(25) NOT NULL,
  `createdtime` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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
(6, 0, 'Alexandre', '2017-12-02 10:16:15', '3', '1'),
(7, 0, 'Lucad', '2017-12-02 10:26:41', '4', '1'),
(9, 0, 'João Vitor Anselmo', '2017-12-02 10:42:01', '5', '1'),
(10, 0, 'Felipe', '2017-12-02 11:13:05', '6', '1'),
(11, 0, 'demo', '2017-12-02 11:31:32', '7', '1'),
(12, 0, 'Poring', '2017-12-02 12:05:44', '8', '1'),
(13, 0, 'Johny Soares', '2017-12-02 12:20:27', '9', '1'),
(16, 0, 'Jurema', '2017-12-02 13:33:00', '10', '1'),
(17, 0, 'Tiago', '2017-12-02 13:35:56', '11', '1'),
(23, 0, 'Bruno', '2017-12-02 14:59:12', '13', '1'),
(24, 0, 'Dysck', '2017-12-02 15:37:50', '14', '1'),
(25, 0, 'Joao', '2017-12-02 15:59:09', '15', '1'),
(30, 0, 'Sshineyuu', '2017-12-02 16:45:34', '16', '1'),
(31, 0, 'Loscar', '2017-12-02 17:26:43', '17', '1'),
(37, 0, 'Wooby', '2017-12-02 18:09:19', '12', '1'),
(38, 0, 'oi', '2017-12-02 18:15:01', '18', '1'),
(40, 0, 'lucas geromel', '2017-12-02 21:52:41', '19', '1'),
(41, 0, 'teste', '2017-12-02 22:55:44', '20', '1'),
(42, 0, 'renan ramos', '2017-12-03 00:19:00', '21', '1'),
(43, 0, 'loza', '2017-12-03 00:35:00', '22', '1'),
(44, 0, 'iiiiiiiiiiiii', '2017-12-03 03:17:16', '23', '1'),
(45, 0, 'Vulgaar', '2017-12-03 12:04:14', '24', '1'),
(46, 0, 'oioi', '2017-12-03 15:01:00', '25', '1'),
(47, 0, 'ZUBUMAFOO', '2017-12-03 16:34:46', '26', '1'),
(48, 0, 'Alexandre', '2017-12-04 16:10:40', '27', '1'),
(49, 0, 'Gabriel Henrique', '2017-12-04 17:11:08', '29', '1'),
(50, 0, 'Healer', '2017-12-04 17:21:04', '30', '1'),
(51, 0, 'asd', '2017-12-04 18:12:10', '31', '1'),
(52, 0, 'Drakie', '2017-12-04 19:28:39', '32', '1'),
(54, 0, 'Norman Reedus', '2017-12-04 20:40:26', '33', '1'),
(55, 0, 'Felipe', '2017-12-04 21:04:01', '34', '1'),
(56, 0, 'Zoming', '2017-12-04 21:09:41', '35', '1'),
(57, 0, 'Truize', '2017-12-04 21:55:12', '36', '1'),
(58, 0, 'IZ44KPvP', '2017-12-05 00:28:34', '37', '1'),
(59, 0, 'Sobrevivencia', '2017-12-05 17:22:02', '38', '1');

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
(1, 'One Punch Man', 'A história passa-se numa cidade japonesa fictícia chamada de Cidade Z, onde aparecem vários monstros estranhos que causam vários desastres, geralmente esses monstros são resultados de uma experiência maluca ou de uma mutação genética. Saitama, o protagonista, é um herói incrivelmente forte que derrota facilmente esses monstros ou outros vilões com um único soco. No entanto, devido à sua força esmagadora, Saitama tornou-se entediado e está constantemente tentando encontrar adversários mais fortes que podem lutar de igual contra ele.', 'http://gamehall.uol.com.br/v10/wp-content/uploads/2016/01/One-Punch-Man-Capa-Anime.jpg', 'http://videos.woobyanimes.com/animes/onepunchman/background.jpg', 'http://videos.woobyanimes.com/animes/onepunchman/logo.png', '3', '50', '0', '0', '0'),
(2, 'Dungeon Ni Deai', 'Conhecido como o "Dungeon", a cidade de Orario possui um enorme labir no subsolo. Seu nome estranho atrai excitação, ilusões de honra, e as esperanças de romance com uma garota bonita. Nesta cidade de sonhos e desejos, novo aventureiro Sino Cranel tem o fatídico encontro com a pequena deusa Hestia. Assim começa a história de um menino que se esforça para se tornar o melhor aventureiro e uma deusa solitária em busca de seguidores tanto na esperança de alcançar seus objetivos e, talvez, ter algum romance ao lado.', 'https://img.fstatic.com/LZwJwG8d6fKu27CC00WaCvcmTiI=/fit-in/290x478/smart/https://cdn.fstatic.com/media/movies/covers/2015/04/dungeon-ni-deai-wo-motomeru-no-wa-machigatteiru-darou-ka_t120169.jpg', 'https://wallpapers.wallhaven.cc/wallpapers/full/wallhaven-196898.jpg', 'https://fanart.tv/fanart/tv/289882/hdtvlogo/dungeon-ni-deai-wo-motomeru-no-wa-machigatteiru-darou-ka-552b9465bd602.png', '3', '13', '0', '0', '0'),
(3, 'Sword Art Online', 'No ano de 2022, a Realidade Virtual Massive Multiplayer RPG Online (VRMMORPG), Sword Art Online (SAO), é lançado. Com o equipamento Nerve Gear, um capacete de realidade virtual que estimula no usuário cinco sentidos através de seu cérebro, os jogadores podem experimentar e controlar seus personagens no jogo com suas mentes. Em 6 de novembro de 2022, todos os jogadores ao entrar pela primeira vez, descobrem que eles são incapazes de sair. Eles são então informados por Kayaba Akihiko, o criador do SAO, que se eles desejam ser livres, eles devem chegar ao 100 º andar da torre do jogo e derrotar o chefe final. No entanto, se os seus avatares morrerem no jogo, seus corpos também morrerão no mundo real. A história segue com Kirito, um jogador habilidoso, que está determinado a vencer o jogo.', 'http://www.animexis.com.br/wp-content/uploads/2014/07/Sword-Art-Online1-450x281.jpg?x24007', 'https://images4.alphacoders.com/640/640956.jpg', 'https://img00.deviantart.net/567c/i/2013/280/4/b/sword_art_online_logo___render_by_caster00-d6pka6q.png', '3', '28', '0', '0', '0'),
(4, 'No Game No Life', 'A história de “No Game, No Life” se passa ao redor de Sora e Shiro, irmãos cuja a reputação como NEETs brilhantes, gamers reclusos, espalhou várias lendas urbanas pela internet, Esses dois gamers até mesmo consideram o mundo real como um “jogo com péssimos gráficos”. Certo dia, eles são evocados por um garoto chamado “Deus” para um mundo alternativo. Lá, Deus proibiu a guerra e declarou este um mundo onde “tudo é decidido com jogos”, até fronteiras de países. A humanidade foi conduzida de volta à única cidade restante pelas outras raças. Sora e Shiro, os irmãos inúteis se tornarão os “Salvadores da Humanidade” neste mundo alternativo? “Que os jogos comecem!”', 'https://orig00.deviantart.net/8a3b/f/2014/153/7/5/no_game_no_life__anime__by_pain4-d7ktk6f.png', 'http://images6.fanpop.com/image/photos/40500000/no-game-no-life3-no-game-no-life-40535949-1550-955.jpg', 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/5a/No-Game-No-Life-anime-logo.svg/1200px-No-Game-No-Life-anime-logo.svg.png', '3', '4', '0', '0', '0'),
(5, 'Boku Dake Ga Inai Machi', 'Esforçado autor de mangá, Satoru Fujinuma é assolado por seu medo de se expressar. Entretanto, ele tem a habilidade sobrenatural de ser forçado a prevenir mortes e catástrofes sendo enviado de volta no tempo antes dos incidentes acontecerem, repetindo até que o incidente seja prevenido. Um dia se envolve em um acidente em que é considerado assassino. Desesperado para salvar a vítima, ele volta no tempo e se vê como um aluno da pré-escola um mês…', 'https://theprocrastinadores.files.wordpress.com/2016/03/boku-dake-ga-inai-machi-full-1961958.jpg', 'https://images8.alphacoders.com/697/thumb-1920-697276.png', 'https://upload.wikimedia.org/wikipedia/commons/a/a4/Boku_Dake_ga_Inai_Machi_logo.png', '3', '0', '0', '0', '0'),
(6, 'Nyanko Days', 'O anime conta a história de Tomoko, uma garota tímida que ao chegar em casa da escola é saudada pelos seus três gatos, Ma, Ro e Shi.', 'https://static.comicvine.com/uploads/scale_small/6/67663/5639781-nyanko.jpg', 'https://wallscover.com/images/nyanko-days-7.jpg', 'https://upload.wikimedia.org/wikipedia/commons/e/e9/Nyanko_Days_logo.png', '3', '0', '0', '0', '0'),
(7, 'Torodora', 'É um novo ano escolar e Ryuuji Takasu descobre que não só ele é da mesma classe como seu melhor amigo, Yuusaku Kitamura, mas também Minori Kushieda quem ele teve uma paixão não revelada por algum tempo. Junto com os dois vem o “Palmtop Tiger”, minúsculo Taiga Aisaka e melhor amiga de Minori. Apesar de sua pequena estatura, Taiga não tira nada de ninguém e é secretamente apaixonado por Kitamura. Ryuuji e Taiga, apesar de sua relação óleo e água, concordam em apoiar-se mutuamente em suas missões para o desejo dos seus corações.', 'https://simg.minhateca.com.br/74f1fa780d93a1f66ddf572dd931067b96319cc5?url=https%3A%2F%2F2.bp.blogspot.com%2F-YB-zeSzqtrQ%2FVduEIc06WjI%2FAAAAAAAAAbM%2Fc3c6BOhnf6c%2Fs1600%2Fbanner.jpg', 'https://images7.alphacoders.com/332/332270.jpg', 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4c/Toradora-Logo-Vector.svg/2000px-Toradora-Logo-Vector.svg.png', '3', '4', '0', '0', '0'),
(9, 'Black Clover', 'Neste mundo, magia é tudo... A algum tempo atrás, a humanidade foi quase aniquilada pelos demônios... Em seu resgate surgiu aquele que futuramente ficaria conhecido como Mago Imperador, o mais poderoso mago do Reino Clover. Anos depois, sonhando em se tornarem o Mago Imperador, dois órfãos pobres Yuno e Asta fazem uma promessa que um deles alcançaria esse sonho. Yuno é o gênio dentre os dois, reverenciado por todos a sua volta com uma poderosa magia de vento. Asta mesmo se esforçando todos os dias, não possui qualquer magia... Mas tudo muda no dia em que ambos receberiam a prova de que são verdadeiros magos... O dia de receberem seus grimórios!', 'https://ptanime.com/wp-content/uploads/2015/10/Black-Clover-Volume-2.jpg', 'https://i2.wp.com/www.icrewplay.com/wp-content/uploads/2017/09/02.jpg?fit=1918%2C1400', 'http://vignette4.wikia.nocookie.net/blackclover/images/a/a2/Black_Clover_title_art.png/revision/latest?cb=20150903080636', '3', '16', '0', '0', '0'),
(10, 'Boruto', 'Boruto é o filho de Naruto, o Sétimo Hokage, e rejeita completamente seu pai. Por trás disso, ele quer superar seu pai que é respeitado como um herói. Ele acaba conhecendo um dos amigos de seu pai, Sasuke, e pede para se tornar o seu… aprendiz! As cortinas subirão para a história da nova geração criada por Masashi Kishimoto.', 'https://1.bp.blogspot.com/-lez5BK4Vupw/V5erZNdT57I/AAAAAAAAn74/WRBU79wWkh4ylDqH1nN9_zXPiuBCQ9I1wCLcB/s1600/boruto01-thumb-400x635-3548.jpg', 'https://i0.wp.com/collectible506.com/wp-content/uploads/2017/06/boruto1.jpg?fit=1200%2C675&ssl=1', 'https://upload.wikimedia.org/wikipedia/commons/a/aa/Boruto_logo.png', '3', '13', '0', '0', '0'),
(11, 'Koe no Katachi', 'Como uma juventude selvagem, a estudante da escola primária, Shouya Ishida, procurou vencer o tédio das maneiras mais cruéis. Quando o surdo Shouko Nishimiya se transfere para a classe dele, Shouya e o resto da turma a amassam por distração. No entanto, quando sua mãe notifica a escola, ele é identificado e culpado por tudo feito para ela. Com Shouko se transferindo da escola, Shouya fica à mercê de seus colegas de classe. Ele é completamente condenado ao ostracismo durante todo o ensino fundamental e médio, enquanto professores fecham a visão.\\n\\nAgora, em seu terceiro ano de ensino médio, Shouya ainda está atormentado por seus erros quando jovem. Sinceramente arrependendo de suas ações passadas, ele expõe uma jornada de redenção: conhecer Shouko mais uma vez e corrigir.\\n\\nKoe no Katachi conta o recôndito conto da reunião de Shouya com Shouko e suas honestias tentativas de redimir-se, ao mesmo tempo em que continuam assombradas pelas sombras de seu passado.', 'https://myanimelist.cdn-dena.com/images/anime/6/79634l.jpg', 'http://images6.fanpop.com/image/photos/40600000/Koe-no-Katachi-koe-no-katachi-40617953-1920-1440.jpg', 'https://upload.wikimedia.org/wikipedia/commons/c/c9/Koe_no_katachi_logo.png', '1', '2', '0', '0', '0'),
(12, 'Boruto: Naruto the Movie', 'Boruto é o filho do sétimo Hokage e o rejeita completamente como pai. Além disso, ele espera superar Naruto, que é respeitado como um herói. Ele acaba por encontrar o amigo do seu pai, Sasuke, e pede para se tornar seu… aprendiz?!?', 'https://myanimelist.cdn-dena.com/images/anime/4/78280.jpg', 'https://images6.alphacoders.com/630/thumb-1920-630925.jpg', 'https://upload.wikimedia.org/wikipedia/commons/b/bf/Boruto_Naruto_the_Movie_logo.png', '1', '2', '0', '0', '0'),
(13, 'Dragon Ball Z: O Renascimento de Freeza', 'Sorbet e Tagoma, dois remanescentes do exército de Freeza, chegam à Terra em busca das Esferas do Dragão. A ideia é reuní-las para ressuscitar seu antigo líder, que foi vencido após uma batalha contra Goku. O plano é bem-sucedido e, com isso, Freeza retorna disposto a se vingar. Para tanto, ele se prepara durante meses, de forma que possa reencontrar Goku no auge do seu poder.', 'http://br.web.img3.acsta.net/pictures/15/03/20/20/24/021239.jpg', 'http://animewp.com/wallpaper/2015/09/dragon-ball-z-movie-12-desktop-wallpaper.jpg', 'http://www.kamisama.com.br/wp-content/uploads/2014/11/logo.png', '1', '0', '0', '0', '0');

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
(4, '2f146b2c6f2ae63b6edb738be2f5d9f8b1c61afe', 'lucas-hartmann@outlook.com.br', '6b6f8a72af25766d73210394f729cccebe52ccd6', '2017-12-02', '2017-12-02 10:26:32', 1, '189.30.229.255', 0, '2017-12-02 00:00:00', '2018-01-01', 0),
(5, 'e9d50b093aa09ba3f1b3f247058a7235291c5702', 'joaovitoranselmo14@gmail.com', '78b2a4f08d67a93b7c51868dd9f41c7c6ec2d4dd', '2017-12-02', '2017-12-02 10:39:19', 1, '187.1.62.232', 0, '2017-12-02 00:00:00', '2018-01-01', 0),
(6, 'c8f6f8a2b296dd70e0023a7f056e80c7fcf8b39e', 'felipe@gmail.com', 'd77c1e457d6af24fa0bf31f0c08c331aaa15fd44', '2017-12-02', '2017-12-02 11:12:46', 1, '168.227.88.135', 0, '2017-12-02 00:00:00', '2018-01-01', 0),
(7, 'dbb0709d4e19423a3c9e736b2ee5b8b20da663a4', 'demo@demo.com', '33f83e5857345f1ea502ba26bd4ec1c88b2259be', '2017-12-02', '2017-12-04 17:04:13', 1, '168.235.194.198', 0, '2017-12-02 00:00:00', '2018-01-01', 0),
(8, 'b8a0e31c91136b7d55c1dd376e8968cb1ebf784f', 'igoroliveira270@outlook.com', 'b8a5beb64307f7726bf50077e556ae0e6492f76c', '2017-12-02', '2017-12-02 12:05:36', 1, '186.244.57.198', 0, '2017-12-02 00:00:00', '2018-01-01', 0),
(9, '06e864366334a88b742723b5f9c305d38be63113', 'Johny.soares55@gmail.com', '7dffa6929a9132ae8579436ff0d9ab0794f02fda', '2017-12-02', '2017-12-02 17:44:40', 1, '131.72.49.93', 0, '2017-12-02 00:00:00', '2018-01-01', 0),
(10, 'ae6bd3c8e839836d8734a497e6cce963b884d80e', 'ju123@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '2017-12-02', '2017-12-02 13:32:46', 1, '186.206.255.197', 0, '2017-12-02 00:00:00', '2018-01-01', 0),
(11, '1d518edfe3f56cd963f63c814cdc4431a6587f9e', 'tiagoxavierr@gmail.com', 'f08740dfaa5a2a3ecfb86df4c4e8ace4b2274af5', '2017-12-02', '2017-12-02 13:35:49', 1, '179.179.36.170', 0, '2017-12-02 00:00:00', '2018-01-01', 0),
(12, 'ab8811c9af6228b3c0e4780310e194cbe7ef38df', 'wooby.contato@gmail.com', 'e41aa374a6058fd1db65c1aec82e24014a1edc92', '2017-12-02', '2017-12-05 01:41:35', 1, '201.69.191.203', 0, '2017-12-02 00:00:00', '2018-01-02', 1),
(13, 'ef28075d004ed1ee6f27f4911fc078bc17fdbf1f', 'brunofrancadasilva@gmail.com', '86f7e437faa5a7fce15d1ddcb9eaeaea377667b8', '2017-12-02', '2017-12-02 14:59:08', 1, '177.4.62.151', 0, '2017-12-02 00:00:00', '2018-01-02', 0),
(14, 'ebb39ea3a8da949f0e2aacd06f8abc4ffbbcda47', 'ksimportsoficial@gmail.com', 'a0efc254964fcdfff6e76699ed6cc67df68121b3', '2017-12-02', '2017-12-02 15:37:40', 1, '187.40.220.54', 0, '2017-12-02 00:00:00', '2018-01-02', 0),
(15, '90454996bec54e0e975f5b74c74cfa21e569d143', 'joaoalfredotop@gmail.com', '5451459721ba64e4e0f2c589e6c1dd9e37219ba5', '2017-12-02', '2017-12-02 15:58:58', 1, '191.54.39.103', 0, '2017-12-02 00:00:00', '2018-01-02', 0),
(16, 'b48fd1bb60a79c60063399a225fb7eb7ebe97c5f', 'vandilsombarbosa1999@hotmail.com', '4557b921cca88f57476a7102c9860fdc11686683', '2017-12-02', '2017-12-04 20:43:03', 1, '89.114.245.202', 0, '2017-12-02 00:00:00', '2018-01-02', 1),
(17, '50a019a4a04f958fc9240a679b9e401324bdd9d9', 'arthurspectro8@gmail.com', 'cf361c6b916d69e14731a6f351d9d673e98b3bee', '2017-12-02', '2017-12-02 17:26:37', 1, '201.8.251.120', 0, '2017-12-02 00:00:00', '2018-01-02', 0),
(18, '291ef4d65aff6acf50bf056232aa381e2d8f113f', 'UHJUH@fjnjk.me', '00b781574da9bada2024179ca806fb300a727e47', '2017-12-02', '2017-12-02 18:14:37', 1, '181.221.149.30', 0, '2017-12-02 00:00:00', '2018-01-02', 0),
(19, '6ae86a6c52eff4c053cb4f3a9005b8ab0e5e1c14', 'Obrigado@bol.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '2017-12-02', '2017-12-02 21:52:22', 1, '186.226.99.12', 0, '2017-12-02 00:00:00', '2018-01-02', 0),
(20, 'a98c9360d8ca13385013793f992243a130a0e0d5', 'lucasdasilvaoliveira261@gmail.com', 'da0d9d007ab636e54fe6c6f40ccbdce56c604c74', '2017-12-02', '2017-12-02 22:55:42', 1, '168.90.64.2', 0, '2017-12-02 00:00:00', '2018-01-02', 0),
(21, 'c16bc77ade452e069bf0a39233c6b57bb09f14b4', 'renanramos.111@hotmail.com', 'c1aa6110acc1bef9e9c3c674da680d08aa141ea4', '2017-12-03', '2017-12-03 00:18:54', 1, '186.232.87.164', 0, '2017-12-03 00:00:00', '2018-01-02', 0),
(22, '948a74077d8cb97a529284f5cbd7708f30b7f307', 'loza@crymail2.com', '39a7c1448d8db3de917c2652b8565feb9d263aec', '2017-12-03', '2017-12-03 00:34:50', 1, '82.102.26.102', 0, '2017-12-03 00:00:00', '2018-01-02', 0),
(23, '3f401bbcb2ebddbd8a6bc8b38fd750c59566acee', 'zendayas2guilherme@gmail.com', 'd7c586ea09092e51debfb9d66d22e2afcd47b765', '2017-12-03', '2017-12-03 03:17:11', 1, '187.99.241.123', 0, '2017-12-03 00:00:00', '2018-01-02', 0),
(24, 'c2e59bc506b1524115fae4b905fb602140723a55', 'luizgustavo_pdn@hotmail.com', 'b0a4b569ce46f01923cee9975aa45cf4740bcc39', '2017-12-03', '2017-12-03 12:04:08', 1, '201.17.158.137', 0, '2017-12-03 00:00:00', '2018-01-02', 0),
(25, 'e3b1eb2f35e736b1f7a08209573b05e9d3f3019e', 'fim@gmail.com', 'd44b50dcb8336c675beed36487018d2839515932', '2017-12-03', '2017-12-03 15:00:56', 1, '181.221.149.30', 0, '2017-12-03 00:00:00', '2018-01-03', 0),
(26, 'bff5692bd62be8ef7c09970b295574e03f407e41', 'cuzinsalgado@hotmail.com', '6527492b0fde8699b5ffc00f150bc2cf7758d821', '2017-12-03', '2017-12-04 00:18:29', 1, '200.159.129.64', 0, '2017-12-03 00:00:00', '2018-01-03', 0),
(27, '7bf9c2c27f39d7deaef89751416009b676b7b4cd', 'kaway@hotmail.com', 'bf235653dbd21fbe510e6bd8ce0535fead76131b', '2017-01-04', '2017-12-04 20:52:43', 1, '179.252.241.140', 0, '2017-12-04 00:00:00', '3000-01-04', 1),
(29, 'b8c2c39c2137bd1580d43460f9117226a428909b', 'ghrsmedu@gmail.com', '7f3397bf7fc8d3affc78728fa7088f557e834bc9', '2018-12-04', '2017-12-04 17:11:02', 1, '138.122.42.228', 0, '2017-12-04 00:00:00', '2018-01-04', 0),
(30, '694d7ac7dccdb19adced8b11acf94d967842480d', 'brunomiguel_caetano@hotmail.com', '093ff25d4dc19745a1ecd5091a66c6a1bf6c35d2', '2018-01-04', '2017-12-04 17:23:05', 1, '94.133.119.139', 0, '2017-12-04 00:00:00', '2018-01-04', 0),
(31, 'b4d538a7e4bed4f05893f6881dd911dea42fd5f3', 'asdasd@gmail.com', 'e2885411fc6acd7b0543f71153fd3a6deca308f6', '2017-12-04', '2017-12-04 18:11:57', 1, '187.101.253.76', 0, '2017-12-04 00:00:00', '2018-01-04', 0),
(32, 'a09cd1f72e0184ebd5cedc9b19835567c88fd7a7', 'drakiedevilgames29@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2017-12-04', '2017-12-04 19:27:17', 1, '160.238.249.111', 0, '2017-12-04 00:00:00', '2018-01-04', 0),
(33, '159072144bcfe2a612d57f59df5969923a81ab9b', 'admin@admin.com', '58ff1fccbeb11f9b90ce551b3bcd25c2afc2af1f', '2017-12-04', '2017-12-04 20:40:22', 1, '138.122.42.228', 0, '2017-12-04 00:00:00', '2018-01-04', 0),
(34, 'f701e8d47acbcb0c5e51443c8621070b4b2599d5', 'luisfelipepoint@gmail.com', 'a7785fb147423f4dd3e07e01a590ae7964873281', '2017-12-04', '2017-12-04 21:03:54', 1, '138.0.204.66', 0, '2017-12-04 00:00:00', '2018-01-04', 0),
(35, 'a94c3cdbfd0a3fdab6f1156193c359a10552406e', 'das_e10@hotmail.com', '07f28c60219266b46a04b61382e4aff1b8e4fb45', '2017-12-04', '2017-12-04 21:09:29', 1, '189.74.38.111', 0, '2017-12-04 00:00:00', '2018-01-04', 0),
(36, '8c4c3a7c3a5c6f362eb5a3224c22c00528b798f2', 'batmanbsu@hotmail.com', '82386c715991473c944ab845a20b9b0ac2a39b31', '2017-12-04', '2017-12-04 21:55:04', 1, '168.194.161.254', 0, '2017-12-04 00:00:00', '2018-01-04', 0),
(37, 'b8609efc4ba865f177d78e35afb8e689cfc9e2f9', 'izacraft.lg01@gmail.com', '8e1dac1a61401b06d862b4443306dd94efa50da6', '2017-12-05', '2017-12-05 00:28:31', 1, '186.224.94.6', 0, '2017-12-05 00:00:00', '2018-01-04', 0),
(38, '2468144fbea9cc2551552f212da59de40aae9694', 'themice@gmail.com', '58ff1fccbeb11f9b90ce551b3bcd25c2afc2af1f', '2017-12-05', '2017-12-05 17:21:59', 1, '138.122.42.228', 0, '2017-12-05 00:00:00', '2018-01-05', 0);

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
(1, '1', '24', '', '01', '', 'http://videos.woobyanimes.com/animes/onepunchman/One%20Punch-Man%2001.mp4'),
(2, '1', '7', '', '02', '', 'http://videos.woobyanimes.com/animes/onepunchman/One%20Punch-Man%2002.mp4'),
(3, '1', '7', '', '03', '', 'http://videos.woobyanimes.com/animes/onepunchman/One%20Punch-Man%2003.mp4'),
(4, '1', '2', '', '04', '', 'http://videos.woobyanimes.com/animes/onepunchman/One%20Punch-Man%2004.mp4'),
(5, '1', '1', '', '05', '', 'http://videos.woobyanimes.com/animes/onepunchman/One%20Punch-Man%2005.mp4'),
(6, '1', '1', '', '06', '', 'http://videos.woobyanimes.com/animes/onepunchman/One%20Punch-Man%2006.mp4'),
(7, '1', '1', '', '07', '', 'http://videos.woobyanimes.com/animes/onepunchman/One%20Punch-Man%2007.mp4'),
(8, '1', '1', '', '08', '', 'http://videos.woobyanimes.com/animes/onepunchman/One%20Punch-Man%2008.mp4'),
(9, '1', '1', '', '09', '', 'http://videos.woobyanimes.com/animes/onepunchman/One%20Punch-Man%2009.mp4'),
(10, '1', '1', '', '10', '', 'http://videos.woobyanimes.com/animes/onepunchman/One%20Punch-Man%2010.mp4'),
(11, '1', '1', '', '11', '', 'http://videos.woobyanimes.com/animes/onepunchman/One%20Punch-Man%2011.mp4'),
(12, '1', '3', '', '12', '', 'http://videos.woobyanimes.com/animes/onepunchman/One%20Punch-Man%2012.mp4'),
(13, '2', '3', '', '01', '', 'http://www.blogger.com/video-play.mp4?contentId=c5c14134cf6da894&autoplay=true'),
(14, '2', '2', '', '02', '', 'http://www.blogger.com/video-play.mp4?contentId=d0cc882fb4642add'),
(15, '2', '1', '', '03', '', 'http://www.blogger.com/video-play.mp4?contentId=11eafa6993a673d8'),
(16, '2', '1', '', '04', '', 'http://www.blogger.com/video-play.mp4?contentId=8327362d0cc55af7'),
(17, '2', '1', '', '05', '', 'http://www.animekai.info/anime/dungeon-ni-deai-wo-motomeru-no-wa-machigatteiru-no-darou-ka/episodio-5'),
(18, '2', '1', '', '06', '', 'http://www.animekai.info/anime/dungeon-ni-deai-wo-motomeru-no-wa-machigatteiru-no-darou-ka/episodio-6'),
(19, '2', '0', '', '07', '', 'http://www.animekai.info/anime/dungeon-ni-deai-wo-motomeru-no-wa-machigatteiru-no-darou-ka/episodio-7'),
(20, '2', '0', '', '08', '', 'http://www.animekai.info/anime/dungeon-ni-deai-wo-motomeru-no-wa-machigatteiru-no-darou-ka/episodio-8'),
(21, '2', '0', '', '09', '', 'http://www.animekai.info/anime/dungeon-ni-deai-wo-motomeru-no-wa-machigatteiru-no-darou-ka/episodio-9'),
(22, '2', '0', '', '10', '', 'http://www.animekai.info/anime/dungeon-ni-deai-wo-motomeru-no-wa-machigatteiru-no-darou-ka/episodio-10'),
(23, '2', '0', '', '11', '', 'http://www.animekai.info/anime/dungeon-ni-deai-wo-motomeru-no-wa-machigatteiru-no-darou-ka/episodio-11'),
(24, '2', '0', '', '12', '', 'http://www.animekai.info/anime/dungeon-ni-deai-wo-motomeru-no-wa-machigatteiru-no-darou-ka/episodio-12'),
(25, '2', '0', '', '13', '', 'http://www.animekai.info/anime/dungeon-ni-deai-wo-motomeru-no-wa-machigatteiru-no-darou-ka/episodio-13'),
(26, '2', '4', '', '14', '', 'http://www.animekai.info/anime/dungeon-ni-deai-wo-motomeru-no-wa-machigatteiru-no-darou-ka/episodio-01'),
(27, '3', '5', '', '01', '', 'https://www.blogger.com/video-play.mp4?contentId=63e92a9ed41dd87f'),
(28, '3', '0', '', '02', '', 'https://www.blogger.com/video-play.mp4?contentId=d359b90c35bd2a4'),
(29, '3', '0', '', '03', '', 'https://www.blogger.com/video-play.mp4?contentId=1ff0e3db29119575'),
(30, '3', '2', '', '04', '', 'https://www.blogger.com/video-play.mp4?contentId=993c954ed01c702a'),
(31, '3', '0', '', '05', '', 'https://www.blogger.com/video-play.mp4?contentId=2265be426d0f7f74'),
(32, '3', '2', '', '06', '', 'https://www.blogger.com/video-play.mp4?contentId=58e8fbd9138889ef'),
(33, '3', '0', '', '07', '', 'https://www.blogger.com/video-play.mp4?contentId=f9a2c587925cdd3d'),
(34, '3', '0', '', '08', '', 'https://www.blogger.com/video-play.mp4?contentId=a548717201069788'),
(35, '3', '0', '', '09', '', 'https://www.blogger.com/video-play.mp4?contentId=522627933acc6fef'),
(36, '3', '0', '', '10', '', 'https://www.blogger.com/video-play.mp4?contentId=a485cf66cd41a314'),
(37, '3', '0', '', '11', '', 'https://www.blogger.com/video-play.mp4?contentId=3c0444dc58b315f8'),
(38, '3', '0', '', '12', '', 'https://www.blogger.com/video-play.mp4?contentId=2f949e3079a45fa6'),
(39, '3', '0', '', '13', '', 'https://www.blogger.com/video-play.mp4?contentId=863a2d96a8a52525'),
(40, '3', '2', '', '14', '', 'https://www.blogger.com/video-play.mp4?contentId=ae37c730ebb7a98f'),
(41, '3', '2', '', '15', '', 'https://www.blogger.com/video-play.mp4?contentId=1b8cb5952a1b922c'),
(42, '3', '0', '', '16', '', 'https://www.blogger.com/video-play.mp4?contentId=492962958066ca3'),
(43, '3', '0', '', '17', '', 'https://www.blogger.com/video-play.mp4?contentId=7f942452d8cd5ed3'),
(44, '3', '0', '', '18', '', 'https://www.blogger.com/video-play.mp4?contentId=3d634b8ccaefe520'),
(45, '3', '0', '', '19', '', 'https://www.blogger.com/video-play.mp4?contentId=2f7026a8e1fc8253'),
(46, '3', '0', '', '20', '', 'https://www.blogger.com/video-play.mp4?contentId=4fd0bd04139528a3'),
(47, '3', '0', '', '21', '', 'https://www.blogger.com/video-play.mp4?contentId=817c2b4fce33d899'),
(48, '3', '0', '', '22', '', 'https://www.blogger.com/video-play.mp4?contentId=3f10fbdced221c7f'),
(49, '3', '1', '', '23', '', 'https://www.blogger.com/video-play.mp4?contentId=81321dc72de8f3f'),
(50, '3', '0', '', '24', '', 'https://www.blogger.com/video-play.mp4?contentId=43d96d0aa2c2d7f4'),
(51, '3', '14', '', '25', '', 'https://www.blogger.com/video-play.mp4?contentId=e4414756f21533ed'),
(52, '4', '0', '', '01', '', 'http://www.blogger.com/video-play.mp4?contentId=d8ebe79cc0564948&autoplay=true'),
(53, '4', '0', '', '02', '', 'http://www.blogger.com/video-play.mp4?contentId=9e80a20fa40e978d&autoplay=true'),
(54, '4', '0', '', '03', '', 'http://www.blogger.com/video-play.mp4?contentId=42881380039458bb&autoplay=true'),
(55, '4', '0', '', '04', '', 'http://www.blogger.com/video-play.mp4?contentId=2157a3f96d697617&autoplay=true'),
(56, '4', '0', '', '05', '', 'http://www.blogger.com/video-play.mp4?contentId=a7919fbcb4e6f552&autoplay=true'),
(57, '4', '1', '', '06', '', 'http://www.blogger.com/video-play.mp4?contentId=edf751162552a47e&autoplay=true'),
(58, '4', '0', '', '07', '', 'http://www.blogger.com/video-play.mp4?contentId=24cd87de6973ab18&autoplay=true'),
(59, '4', '0', '', '08', '', 'http://www.blogger.com/video-play.mp4?contentId=c848dace07e1024a&autoplay=true'),
(60, '4', '0', '', '09', '', 'http://www.blogger.com/video-play.mp4?contentId=31eb95232896fbbc&autoplay=true'),
(61, '4', '0', '', '10', '', 'http://www.blogger.com/video-play.mp4?contentId=1297d1066e7b44c8&autoplay=true'),
(62, '4', '0', '', '11', '', 'http://www.blogger.com/video-play.mp4?contentId=c092eeff38853c23&autoplay=true'),
(63, '4', '3', '', '12', '', 'http://www.blogger.com/video-play.mp4?contentId=2fb45e797bc23c3f&autoplay=true'),
(64, '5', '0', '', '01', '', 'https://www.blogger.com/video-play.mp4?contentId=f54f807c54e7f228'),
(65, '5', '0', '', '02', '', 'https://www.blogger.com/video-play.mp4?contentId=ec7aac57cd0159dd'),
(66, '5', '0', '', '03', '', 'https://www.blogger.com/video-play.mp4?contentId=c5bafddbe538688e'),
(67, '5', '0', '', '04', '', 'https://www.blogger.com/video-play.mp4?contentId=ba77b241e3e07b87'),
(68, '5', '0', '', '05', '', 'https://www.blogger.com/video-play.mp4?contentId=a41809c466e7eb00'),
(69, '5', '0', '', '06', '', 'https://www.blogger.com/video-play.mp4?contentId=3cc4abab49e2575c'),
(70, '5', '0', '', '07', '', 'https://www.blogger.com/video-play.mp4?contentId=4af3c827c061d79d'),
(71, '5', '0', '', '08', '', 'https://www.blogger.com/video-play.mp4?contentId=658e06578fc771ae'),
(72, '5', '0', '', '09', '', 'https://www.blogger.com/video-play.mp4?contentId=495483eda9e113fc'),
(73, '5', '0', '', '10', '', 'https://www.blogger.com/video-play.mp4?contentId=e25107515814d07f'),
(74, '5', '0', '', '11', '', 'https://www.blogger.com/video-play.mp4?contentId=43ec562fbec31cf5'),
(75, '5', '0', '', '12', '', 'https://www.blogger.com/video-play.mp4?contentId=51d6ae3ffe566ea2'),
(76, '6', '0', '', '01', '', 'http://www.blogger.com/video-play.mp4?contentId=3c384966caf6d862&autoplay=true'),
(77, '6', '0', '', '02', '', 'http://www.blogger.com/video-play.mp4?contentId=275e354f3ff27dd4&autoplay=true'),
(78, '6', '0', '', '03', '', 'http://www.blogger.com/video-play.mp4?contentId=13c1009ca9781298&autoplay=true'),
(79, '6', '0', '', '04', '', 'http://www.blogger.com/video-play.mp4?contentId=c77a6ac85087213d&autoplay=true'),
(80, '6', '0', '', '05', '', 'http://www.blogger.com/video-play.mp4?contentId=41a615db15e335d0&autoplay=true'),
(81, '6', '0', '', '06', '', 'http://www.blogger.com/video-play.mp4?contentId=b55a2c225f6b6bf2&autoplay=true'),
(82, '6', '0', '', '07', '', 'http://www.blogger.com/video-play.mp4?contentId=2f3003bd5c6846c6&autoplay=true'),
(83, '6', '0', '', '08', '', 'http://www.blogger.com/video-play.mp4?contentId=bec0753a37f1ed7&autoplay=true'),
(84, '6', '0', '', '09', '', 'http://www.blogger.com/video-play.mp4?contentId=067f54921ba12ab9&autoplay=true'),
(85, '7', '4', '', '01', '', 'https://www.blogger.com/video-play.mp4?contentId=78579501adc66276'),
(89, '9', '16', '', '01', '', 'https://r4---sn-bg07dnss.googlevideo.com/videoplayback?requiressl=yes&id=fb67a8a890318b22&itag=18&source=blogger&app=blogger&ip=0.0.0.0&ipbits=0&expire=1514578684&sparams=expire,id,ip,ipbits,itag,mip,mm,mn,ms,mv,pl,requiressl,sc,source&signature=198A97A8A5FAC000138FB2553D6E9896753CDB73.684006D55FFBD13D31B83BFF3229B5908C959526&key=cms1&cms_redirect=yes&mip=179.252.241.140&mm=30&mn=sn-bg07dnss&ms=nxu&mt=1512431120&mv=m&pl=18&sc=yes'),
(90, '10', '13', '', '01', '', 'http://cdn.animalog.co/b/borutohd/1.mp4'),
(91, '11', '2', '', 'Completo', '', 'http://s.vstreaming.net/movies/koenokatachi-leg-720p.mp4'),
(92, '12', '2', '', 'Completo', '', 'http://s.vstreaming.net/movies/boruto-leg-720p.mp4'),
(93, '13', '0', '', 'Completo', '', 'http://s.vstreaming.net/movies/freeza-dub-720p.mp4');

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
-- Indexes for table `netflix_payments`
--
ALTER TABLE `netflix_payments`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `netflix_history`
--
ALTER TABLE `netflix_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;
--
-- AUTO_INCREMENT for table `netflix_payments`
--
ALTER TABLE `netflix_payments`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `netflix_profiles`
--
ALTER TABLE `netflix_profiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
--
-- AUTO_INCREMENT for table `netflix_series`
--
ALTER TABLE `netflix_series`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `netflix_swit_pro`
--
ALTER TABLE `netflix_swit_pro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `netflix_user`
--
ALTER TABLE `netflix_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `netflix_videos`
--
ALTER TABLE `netflix_videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
