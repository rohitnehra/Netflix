-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 08-Dez-2017 às 21:17
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
(1, '162', '19', '60', '0', '0', '94', '01'),
(2, '163', '19', '60', '0', '0', '94', '02'),
(3, '162', '19', '16', '0', '0', '30', '01'),
(4, '124', '16', '16', '0', '0', '30', '01');

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
(59, 0, 'Sobrevivencia', '2017-12-05 17:22:02', '38', '1'),
(60, 0, '[PSD]Nacta', '2017-12-05 18:09:46', '39', '1'),
(61, 0, 'Liped', '2017-12-05 18:11:48', '40', '1'),
(62, 0, 'Ruben', '2017-12-05 18:14:21', '41', '1'),
(64, 0, 'Nepp Otaku', '2017-12-05 18:15:23', '42', '1'),
(65, 0, 'Rai-chan', '2017-12-05 18:22:36', '43', '1'),
(66, 0, 'Rai-chan', '2017-12-05 18:26:17', '43', '2'),
(67, 0, 'RAzrr', '2017-12-05 18:27:02', '44', '1'),
(69, 0, 'Bruno Alves', '2017-12-05 18:35:29', '46', '1'),
(70, 0, 'Lelouch Ononoki', '2017-12-05 19:09:07', '47', '1'),
(71, 0, 'iberzin', '2017-12-05 19:20:06', '48', '1'),
(72, 0, 'RyanSama', '2017-12-05 19:23:56', '49', '1'),
(73, 0, 'Cristian', '2017-12-05 19:45:09', '50', '1'),
(74, 0, 'Garth', '2017-12-05 20:30:03', '51', '1'),
(75, 0, 'Gratis', '2017-12-05 20:34:58', '52', '1'),
(81, 0, 'lucas ', '2017-12-05 21:10:43', '54', '1'),
(83, 0, 'Gabriel Silva', '2017-12-05 21:24:28', '45', '1'),
(84, 0, 'Aisaka ', '2017-12-05 21:25:06', '53', '1'),
(85, 0, 'Lucas', '2017-12-05 21:28:20', '56', '1'),
(86, 0, 'Leo o designer que vc conhece ', '2017-12-06 08:44:43', '57', '1'),
(87, 0, 'João', '2017-12-06 11:04:18', '58', '1'),
(89, 0, 'teste', '2017-12-06 14:41:47', '59', '1'),
(94, 0, 'anelise', '2017-12-06 19:10:29', '60', '1'),
(95, 0, 'teste', '2017-12-06 19:24:06', '61', '1'),
(96, 0, 'Alexandre', '2017-12-08 12:42:07', '62', '1');

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
(1, 'One Punch Man', 'A história passa-se numa cidade japonesa fictícia chamada de Cidade Z, onde aparecem vários monstros estranhos que causam vários desastres, geralmente esses monstros são resultados de uma experiência maluca ou de uma mutação genética. Saitama, o protagonista, é um herói incrivelmente forte que derrota facilmente esses monstros ou outros vilões com um único soco. No entanto, devido à sua força esmagadora, Saitama tornou-se entediado e está constantemente tentando encontrar adversários mais fortes que podem lutar de igual contra ele.', 'http://gamehall.uol.com.br/v10/wp-content/uploads/2016/01/One-Punch-Man-Capa-Anime.jpg', 'http://videos.woobyanimes.com/animes/onepunchman/background.jpg', 'http://videos.woobyanimes.com/animes/onepunchman/logo.png', '3', '59', '0', '0', '0'),
(2, 'Dungeon Ni Deai', 'Conhecido como o \"Dungeon\", a cidade de Orario possui um enorme labir no subsolo. Seu nome estranho atrai excitação, ilusões de honra, e as esperanças de romance com uma garota bonita. Nesta cidade de sonhos e desejos, novo aventureiro Sino Cranel tem o fatídico encontro com a pequena deusa Hestia. Assim começa a história de um menino que se esforça para se tornar o melhor aventureiro e uma deusa solitária em busca de seguidores tanto na esperança de alcançar seus objetivos e, talvez, ter algum romance ao lado.', 'https://img.fstatic.com/LZwJwG8d6fKu27CC00WaCvcmTiI=/fit-in/290x478/smart/https://cdn.fstatic.com/media/movies/covers/2015/04/dungeon-ni-deai-wo-motomeru-no-wa-machigatteiru-darou-ka_t120169.jpg', 'https://wallpapers.wallhaven.cc/wallpapers/full/wallhaven-196898.jpg', 'https://fanart.tv/fanart/tv/289882/hdtvlogo/dungeon-ni-deai-wo-motomeru-no-wa-machigatteiru-darou-ka-552b9465bd602.png', '3', '17', '0', '0', '0'),
(3, 'Sword Art Online', 'No ano de 2022, a Realidade Virtual Massive Multiplayer RPG Online (VRMMORPG), Sword Art Online (SAO), é lançado. Com o equipamento Nerve Gear, um capacete de realidade virtual que estimula no usuário cinco sentidos através de seu cérebro, os jogadores podem experimentar e controlar seus personagens no jogo com suas mentes. Em 6 de novembro de 2022, todos os jogadores ao entrar pela primeira vez, descobrem que eles são incapazes de sair. Eles são então informados por Kayaba Akihiko, o criador do SAO, que se eles desejam ser livres, eles devem chegar ao 100 º andar da torre do jogo e derrotar o chefe final. No entanto, se os seus avatares morrerem no jogo, seus corpos também morrerão no mundo real. A história segue com Kirito, um jogador habilidoso, que está determinado a vencer o jogo.', 'http://www.animexis.com.br/wp-content/uploads/2014/07/Sword-Art-Online1-450x281.jpg?x24007', 'https://images4.alphacoders.com/640/640956.jpg', 'https://img00.deviantart.net/567c/i/2013/280/4/b/sword_art_online_logo___render_by_caster00-d6pka6q.png', '3', '28', '0', '0', '0'),
(4, 'No Game No Life', 'A história de “No Game, No Life” se passa ao redor de Sora e Shiro, irmãos cuja a reputação como NEETs brilhantes, gamers reclusos, espalhou várias lendas urbanas pela internet, Esses dois gamers até mesmo consideram o mundo real como um “jogo com péssimos gráficos”. Certo dia, eles são evocados por um garoto chamado “Deus” para um mundo alternativo. Lá, Deus proibiu a guerra e declarou este um mundo onde “tudo é decidido com jogos”, até fronteiras de países. A humanidade foi conduzida de volta à única cidade restante pelas outras raças. Sora e Shiro, os irmãos inúteis se tornarão os “Salvadores da Humanidade” neste mundo alternativo? “Que os jogos comecem!”', 'https://orig00.deviantart.net/8a3b/f/2014/153/7/5/no_game_no_life__anime__by_pain4-d7ktk6f.png', 'http://images6.fanpop.com/image/photos/40500000/no-game-no-life3-no-game-no-life-40535949-1550-955.jpg', 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/5a/No-Game-No-Life-anime-logo.svg/1200px-No-Game-No-Life-anime-logo.svg.png', '3', '24', '0', '0', '0'),
(5, 'Boku Dake Ga Inai Machi', 'Esforçado autor de mangá, Satoru Fujinuma é assolado por seu medo de se expressar. Entretanto, ele tem a habilidade sobrenatural de ser forçado a prevenir mortes e catástrofes sendo enviado de volta no tempo antes dos incidentes acontecerem, repetindo até que o incidente seja prevenido. Um dia se envolve em um acidente em que é considerado assassino. Desesperado para salvar a vítima, ele volta no tempo e se vê como um aluno da pré-escola um mês…', 'https://theprocrastinadores.files.wordpress.com/2016/03/boku-dake-ga-inai-machi-full-1961958.jpg', 'https://images8.alphacoders.com/697/thumb-1920-697276.png', 'https://upload.wikimedia.org/wikipedia/commons/a/a4/Boku_Dake_ga_Inai_Machi_logo.png', '3', '2', '0', '0', '0'),
(6, 'Nyanko Days', 'O anime conta a história de Tomoko, uma garota tímida que ao chegar em casa da escola é saudada pelos seus três gatos, Ma, Ro e Shi.', 'https://static.comicvine.com/uploads/scale_small/6/67663/5639781-nyanko.jpg', 'https://wallscover.com/images/nyanko-days-7.jpg', 'https://upload.wikimedia.org/wikipedia/commons/e/e9/Nyanko_Days_logo.png', '3', '0', '0', '0', '0'),
(7, 'Torodora', 'É um novo ano escolar e Ryuuji Takasu descobre que não só ele é da mesma classe como seu melhor amigo, Yuusaku Kitamura, mas também Minori Kushieda quem ele teve uma paixão não revelada por algum tempo. Junto com os dois vem o “Palmtop Tiger”, minúsculo Taiga Aisaka e melhor amiga de Minori. Apesar de sua pequena estatura, Taiga não tira nada de ninguém e é secretamente apaixonado por Kitamura. Ryuuji e Taiga, apesar de sua relação óleo e água, concordam em apoiar-se mutuamente em suas missões para o desejo dos seus corações.', 'https://simg.minhateca.com.br/74f1fa780d93a1f66ddf572dd931067b96319cc5?url=https%3A%2F%2F2.bp.blogspot.com%2F-YB-zeSzqtrQ%2FVduEIc06WjI%2FAAAAAAAAAbM%2Fc3c6BOhnf6c%2Fs1600%2Fbanner.jpg', 'https://images7.alphacoders.com/332/332270.jpg', 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4c/Toradora-Logo-Vector.svg/2000px-Toradora-Logo-Vector.svg.png', '3', '6', '0', '0', '0'),
(9, 'Black Clover', 'Neste mundo, magia é tudo... A algum tempo atrás, a humanidade foi quase aniquilada pelos demônios... Em seu resgate surgiu aquele que futuramente ficaria conhecido como Mago Imperador, o mais poderoso mago do Reino Clover. Anos depois, sonhando em se tornarem o Mago Imperador, dois órfãos pobres Yuno e Asta fazem uma promessa que um deles alcançaria esse sonho. Yuno é o gênio dentre os dois, reverenciado por todos a sua volta com uma poderosa magia de vento. Asta mesmo se esforçando todos os dias, não possui qualquer magia... Mas tudo muda no dia em que ambos receberiam a prova de que são verdadeiros magos... O dia de receberem seus grimórios!', 'https://ptanime.com/wp-content/uploads/2015/10/Black-Clover-Volume-2.jpg', 'https://i2.wp.com/www.icrewplay.com/wp-content/uploads/2017/09/02.jpg?fit=1918%2C1400', 'http://vignette4.wikia.nocookie.net/blackclover/images/a/a2/Black_Clover_title_art.png/revision/latest?cb=20150903080636', '3', '25', '0', '0', '0'),
(10, 'Boruto', 'Boruto é o filho de Naruto, o Sétimo Hokage, e rejeita completamente seu pai. Por trás disso, ele quer superar seu pai que é respeitado como um herói. Ele acaba conhecendo um dos amigos de seu pai, Sasuke, e pede para se tornar o seu… aprendiz! As cortinas subirão para a história da nova geração criada por Masashi Kishimoto.', 'https://1.bp.blogspot.com/-lez5BK4Vupw/V5erZNdT57I/AAAAAAAAn74/WRBU79wWkh4ylDqH1nN9_zXPiuBCQ9I1wCLcB/s1600/boruto01-thumb-400x635-3548.jpg', 'https://i0.wp.com/collectible506.com/wp-content/uploads/2017/06/boruto1.jpg?fit=1200%2C675&ssl=1', 'https://upload.wikimedia.org/wikipedia/commons/a/aa/Boruto_logo.png', '3', '28', '0', '0', '0'),
(11, 'Koe no Katachi', 'Como uma juventude selvagem, a estudante da escola primária, Shouya Ishida, procurou vencer o tédio das maneiras mais cruéis. Quando o surdo Shouko Nishimiya se transfere para a classe dele, Shouya e o resto da turma a amassam por distração. No entanto, quando sua mãe notifica a escola, ele é identificado e culpado por tudo feito para ela. Com Shouko se transferindo da escola, Shouya fica à mercê de seus colegas de classe. Ele é completamente condenado ao ostracismo durante todo o ensino fundamental e médio, enquanto professores fecham a visão.\\n\\nAgora, em seu terceiro ano de ensino médio, Shouya ainda está atormentado por seus erros quando jovem. Sinceramente arrependendo de suas ações passadas, ele expõe uma jornada de redenção: conhecer Shouko mais uma vez e corrigir.\\n\\nKoe no Katachi conta o recôndito conto da reunião de Shouya com Shouko e suas honestias tentativas de redimir-se, ao mesmo tempo em que continuam assombradas pelas sombras de seu passado.', 'https://myanimelist.cdn-dena.com/images/anime/6/79634l.jpg', 'http://images6.fanpop.com/image/photos/40600000/Koe-no-Katachi-koe-no-katachi-40617953-1920-1440.jpg', 'https://upload.wikimedia.org/wikipedia/commons/c/c9/Koe_no_katachi_logo.png', '1', '9', '0', '0', '0'),
(12, 'Boruto: Naruto the Movie', 'Boruto é o filho do sétimo Hokage e o rejeita completamente como pai. Além disso, ele espera superar Naruto, que é respeitado como um herói. Ele acaba por encontrar o amigo do seu pai, Sasuke, e pede para se tornar seu… aprendiz?!?', 'https://myanimelist.cdn-dena.com/images/anime/4/78280.jpg', 'https://images6.alphacoders.com/630/thumb-1920-630925.jpg', 'https://upload.wikimedia.org/wikipedia/commons/b/bf/Boruto_Naruto_the_Movie_logo.png', '1', '5', '0', '0', '0'),
(13, 'Dragon Ball Z: O Renascimento de Freeza', 'Sorbet e Tagoma, dois remanescentes do exército de Freeza, chegam à Terra em busca das Esferas do Dragão. A ideia é reuní-las para ressuscitar seu antigo líder, que foi vencido após uma batalha contra Goku. O plano é bem-sucedido e, com isso, Freeza retorna disposto a se vingar. Para tanto, ele se prepara durante meses, de forma que possa reencontrar Goku no auge do seu poder.', 'http://br.web.img3.acsta.net/pictures/15/03/20/20/24/021239.jpg', 'http://animewp.com/wallpaper/2015/09/dragon-ball-z-movie-12-desktop-wallpaper.jpg', 'http://www.kamisama.com.br/wp-content/uploads/2014/11/logo.png', '1', '5', '0', '0', '0'),
(14, 'Another', '26 anos atrás, em uma classe de terceiro colegial, uma estudante chamada Misaki era a mais popular e adorada do colégio por causa de sua beleza e sua qualidade nos esportes. Porém um dia Misaki acaba por vir falecer e como homenagem seus amigos decidem “fingir” que ela está viva com eles até o dia da formatura. Anos depois, em uma primavera de 1998, um garoto chamado Kouichi Sakakibara se muda para a cidade e começa a estudar na mesma escola do ocorrido. Lá ele encontra todos os alunos rodeados por uma estranha atmosfera, principalmente uma bela estudante chamada Misaki Mei. Porém o que Kouichi não esperava é que a Misaki de sua sala tivesse mais relações do que o esperado com a história do passado do colégio.', 'https://img.fstatic.com/j_JJpTnA5gbsFb0PghJThVyEDMw=/fit-in/290x478/smart/https://cdn.fstatic.com/media/movies/covers/2014/07/another_t51362.jpg', 'https://images6.alphacoders.com/639/thumb-1920-639813.jpg', 'https://vignette.wikia.nocookie.net/another/images/9/96/Another_Logo.png/revision/latest?cb=20130514172916', '3', '9', '0', '0', '0'),
(15, 'Ano Hana', 'Jinta Yadomi e seu grupo de amigos de infância se tornaram estranhos depois de um trágico acidente separá-los. Agora em seus anos de ensino médio, uma súbita surpresa obriga cada um deles a enfrentar a sua culpa sobre o que aconteceu naquele dia e entrar em acordo com os fantasmas de seu passado.', 'https://chuvadenanquim.files.wordpress.com/2013/03/anohanamovie.jpg', 'https://www.animeunited.com.br/wp-content/uploads/2017/05/ano_hana___the_gang_by_saber_cow-d4yytmd.png', 'https://www.animeclick.it/prove/upload/img/News27880.png', '3', '10', '0', '0', '0'),
(16, 'Boku no Hero Academia 1º', 'O que é um herói? Para Midoriya Izuku, a resposta dessa pergunta sempre foi simples: “Tudo que eu quero ser!” E quem é o maior herói? Bem, o lendário All Might (Todo Poderoso), é claro. All Might é o herói número um e também o “Símbolo da Paz” mundial. Nem mesmo em seus sonhos mais loucos Izuku poderia imaginar que logo seu caminho cruzaria o de seu herói de infância. Em Boku no Hero Academia o status é governado pelas “Individualidades”, superpoderes singulares que se desenvolvem na infância. Mas infelizmente, o viciado em heróis, Midoriya “Deku” Izuku nunca teve uma Individualidade. Isto é, até conhecer All Might, o maior herói de todos. A transformação de sonhador em herói de Izuku começa na Academia U.A., a melhor escola de treinamento de heróis do Japão. Izuku fica eufórico quando é aceito para essa academia de prestígio, especialmente quando descobre que All Might é um dos professores. Que surpresas essa academia poderosa aguarda? Izuku será capaz de acompanhar os colegas de classe de elite?', 'https://1.bp.blogspot.com/-WvJWftYmvTY/VwEa_ggLTNI/AAAAAAAAHtc/rI30fCEPzNkJENyjNAZujHWuxTDyMh1Gg/s1600/Boku-no-Hero-poster-promo-v2.jpg', 'https://images4.alphacoders.com/698/698782.jpg', 'https://upload.wikimedia.org/wikipedia/commons/c/cf/Boku_no_Hero_Academia_Logo.png', '2', '12', '0', '0', '0'),
(17, 'Boku no Hero Academia 2ªT', 'Segunda Temporada , O que é um herói? Para Midoriya Izuku, a resposta dessa pergunta sempre foi simples: “Tudo que eu quero ser!” E quem é o maior herói? Bem, o lendário All Might (Todo Poderoso), é claro. All Might é o herói número um e também o “Símbolo da Paz” mundial. Nem mesmo em seus sonhos mais loucos Izuku poderia imaginar que logo seu caminho cruzaria o de seu herói de infância. Em Boku no Hero Academia o status é governado pelas “Individualidades”, superpoderes singulares que se desenvolvem na infância. Mas infelizmente, o viciado em heróis, Midoriya “Deku” Izuku nunca teve uma Individualidade. Isto é, até conhecer All Might, o maior herói de todos. A transformação de sonhador em herói de Izuku começa na Academia U.A., a melhor escola de treinamento de heróis do Japão. Izuku fica eufórico quando é aceito para essa academia de prestígio, especialmente quando descobre que All Might é um dos professores. Que surpresas essa academia poderosa aguarda? Izuku será capaz de acompanhar os colegas de classe de elite?', 'http://www.animesonlinebr.com.br/thumbs/14995248835960ef132d738.jpg', 'https://images4.alphacoders.com/698/thumb-1920-698782.jpg', 'https://upload.wikimedia.org/wikipedia/commons/c/cf/Boku_no_Hero_Academia_Logo.png', '2', '19', '0', '0', '0'),
(18, 'Deadman Wonderland', 'Num dia normal de aula Ganta e seus melhores amigos estavam combinando o lugar da viagem do colégio e ao a aula começar Ganta começa a escutar uma música familiar para ele. Um homem de vermelho aparece voando do lado de fora da sala e dá um golpe que quando Ganta levanta sua sala inteira foi morta, ele tenta bater no homem de vermelho, mas é empurrado para a parede e ao invés de mata-lo o homem de vermelho implanta uma pedra vermelha em Ganta que desmaia. Ganta acorda no hospital e mesmo tendo acordado a pouco tempo policiais invadem seu quarto dizendo que ele está preso por assassinar todos os alunos de uma sala de aula e um advogado lhe dá um cartão. Ganta entra em choque pois não foi ele quem assassinou seus amigos e se defende dizendo que o homem de vermelho feriu seu peito, Ganta abre a camisa tentando mostrar o ferimento, mas ele não está lá. Ganta é levado ao tribunal e condenado à pena de morte, Ganta se revolta e começa a dizer que não foi ele e na mesma hora os pais dos alunos mortos saem dos seus lugares e começam a bater em Ganta. Os pais são retirados e Ganta é levado à única prisão privada do Japão, a prisão que é também um parque de diversões pois faz seus prisioneiros fazerem shows para o lucro da mesma. Ganta é recepcionado com outros prisoneiros pela Chefe dos guardas da prisão que dá uma bolsa com coisas que eles precisarão para sua estadia na prisão Deadman Wonderland.', 'http://2.bp.blogspot.com/-ylcoi8AGCsg/TbIQxSxMi_I/AAAAAAAAAEQ/JsuiHFG8QtI/s1600/DeadManWonderland.jpg', 'https://i1.wp.com/recommendmeanime.com/wp-content/uploads/2017/09/anime-like-deadman-wonderland.png?fit=1191%2C670&ssl=1', 'https://vignette4.wikia.nocookie.net/deadmanwonderland/images/2/20/Logo_transparent.png/revision/latest?cb=20110723224718', '2', '0', '0', '0', '0'),
(19, 'Elfen Lied', 'Diclonius são uma espécie de humanos mutantes, que dizem, são os escolhidos de Deus. Graças aos seus grandes poderes, eles se tornariam uma ameaça para a humanidade, e por isso foram aprisionados pelo governo num laboratório. Lucy, uma jovem e psicótica Diclonius, consegue escapar da confinamento e brutalmente mata a maioria dos guardas do laboratório. Ela sobrevive e vai parar em uma praia onde dois adolescentes chamados Kouta e Yuka a descobrem. Lucy é nomeada com a única coisa que ela consegue dizer após ter perdido a memória: ‘Nyuu’, e os dois deixam que ela viva na casa de Kouta. Porém, parece que a “Lucy demoníaca” ainda não está morta… .', 'https://img.fstatic.com/ye7354hVPIWKt6PVdVUb7K_E010=/fit-in/290x478/smart/https://cdn.fstatic.com/media/movies/covers/2014/08/elfen-lied_t31188_26.jpg', 'https://images.alphacoders.com/150/150063.jpg', 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/45/Elfen_Lied_Logo.svg/1200px-Elfen_Lied_Logo.svg.png', '2', '39', '0', '0', '0');

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
  `admin` int(11) NOT NULL,
  `username` text NOT NULL,
  `nome` text NOT NULL,
  `sobname` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(1, '1', '29', '', '01', '', 'http://videos.woobyanimes.com/animes/onepunchman/One%20Punch-Man%2001.mp4'),
(2, '1', '7', '', '02', '', 'http://videos.woobyanimes.com/animes/onepunchman/One%20Punch-Man%2002.mp4'),
(3, '1', '7', '', '03', '', 'http://videos.woobyanimes.com/animes/onepunchman/One%20Punch-Man%2003.mp4'),
(4, '1', '2', '', '04', '', 'http://videos.woobyanimes.com/animes/onepunchman/One%20Punch-Man%2004.mp4'),
(5, '1', '1', '', '05', '', 'http://videos.woobyanimes.com/animes/onepunchman/One%20Punch-Man%2005.mp4'),
(6, '1', '5', '', '06', '', 'http://videos.woobyanimes.com/animes/onepunchman/One%20Punch-Man%2006.mp4'),
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
(19, '2', '4', '', '07', '', 'http://www.animekai.info/anime/dungeon-ni-deai-wo-motomeru-no-wa-machigatteiru-no-darou-ka/episodio-7'),
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
(52, '4', '3', '', '01', '', 'http://www.blogger.com/video-play.mp4?contentId=d8ebe79cc0564948&autoplay=true'),
(53, '4', '1', '', '02', '', 'http://www.blogger.com/video-play.mp4?contentId=9e80a20fa40e978d&autoplay=true'),
(54, '4', '1', '', '03', '', 'http://www.blogger.com/video-play.mp4?contentId=42881380039458bb&autoplay=true'),
(55, '4', '2', '', '04', '', 'http://www.blogger.com/video-play.mp4?contentId=2157a3f96d697617&autoplay=true'),
(56, '4', '2', '', '05', '', 'http://www.blogger.com/video-play.mp4?contentId=a7919fbcb4e6f552&autoplay=true'),
(57, '4', '3', '', '06', '', 'http://www.blogger.com/video-play.mp4?contentId=edf751162552a47e&autoplay=true'),
(58, '4', '2', '', '07', '', 'http://www.blogger.com/video-play.mp4?contentId=24cd87de6973ab18&autoplay=true'),
(59, '4', '2', '', '08', '', 'http://www.blogger.com/video-play.mp4?contentId=c848dace07e1024a&autoplay=true'),
(60, '4', '1', '', '09', '', 'http://www.blogger.com/video-play.mp4?contentId=31eb95232896fbbc&autoplay=true'),
(61, '4', '1', '', '10', '', 'http://www.blogger.com/video-play.mp4?contentId=1297d1066e7b44c8&autoplay=true'),
(62, '4', '1', '', '11', '', 'http://www.blogger.com/video-play.mp4?contentId=c092eeff38853c23&autoplay=true'),
(63, '4', '5', '', '12', '', 'http://www.blogger.com/video-play.mp4?contentId=2fb45e797bc23c3f&autoplay=true'),
(64, '5', '2', '', '01', '', 'https://www.blogger.com/video-play.mp4?contentId=f54f807c54e7f228'),
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
(85, '7', '6', '', '01', '', 'https://www.blogger.com/video-play.mp4?contentId=78579501adc66276'),
(89, '9', '21', '', '01', '', 'http://s.vstreaming.net/animes/blackclover/01-leg-720p.mp4'),
(90, '10', '20', '', '01', '', 'http://s.vstreaming.net/animes/boruto/01-leg-720p.mp4'),
(91, '11', '9', '', 'Completo', '', 'http://s.vstreaming.net/movies/koenokatachi-leg-720p.mp4'),
(92, '12', '5', '', 'Completo', '', 'http://s.vstreaming.net/movies/boruto-leg-720p.mp4'),
(93, '13', '5', '', 'Completo', '', 'http://s.vstreaming.net/movies/freeza-dub-720p.mp4'),
(94, '9', '2', '', '02', '', 'https://video-lax3-1.xx.fbcdn.net/v/t42.9040-2/10000000_283929082099043_8747271604968357888_n.mp4?efg=eyJ2ZW5jb2RlX3RhZyI6InN2ZV9oZCJ9&oh=93195a05451d40667e1e3783638ae0d5&oe=5A273C24'),
(95, '9', '0', '', '03', '', 'https://video-hkg3-1.xx.fbcdn.net/v/t42.9040-2/10000000_517476665311548_2979386287447867392_n.mp4?efg=eyJ2ZW5jb2RlX3RhZyI6InN2ZV9oZCJ9&oh=1ea4759b93d527f1e1ec40ca7ebe78c7&oe=5A272D01'),
(96, '9', '1', '', '04', '', 'https://video-lax3-1.xx.fbcdn.net/v/t42.9040-2/10000000_153771988692976_1454895217760010240_n.mp4?efg=eyJ2ZW5jb2RlX3RhZyI6InN2ZV9oZCJ9&oh=684ce78c6f9f093f3bb42bf452b5a76f&oe=5A27193F'),
(97, '9', '0', '', '05', '', 'https://video-lax3-1.xx.fbcdn.net/v/t42.9040-2/10000000_495497300825350_84972479092621312_n.mp4?efg=eyJ2ZW5jb2RlX3RhZyI6InN2ZV9oZCJ9&oh=7c16f9d8a9a5bf1b2656aaf2ff2ef3b2&oe=5A2749C8'),
(98, '9', '0', '', '06', '', 'https://video-hkg3-1.xx.fbcdn.net/v/t42.9040-2/10000000_1681026641965017_2799625817162776576_n.mp4?efg=eyJ2ZW5jb2RlX3RhZyI6InN2ZV9oZCJ9&oh=9ce95978e6cd614b9c70c207a0ccf0f8&oe=5A271760'),
(99, '9', '1', '', '07', '', 'https://video-lax3-1.xx.fbcdn.net/v/t42.9040-2/10000000_374109553045363_5158432550594543616_n.mp4?efg=eyJ2ZW5jb2RlX3RhZyI6InN2ZV9oZCJ9&oh=9120b6a6713e0fd4275113da9e3df627&oe=5A274DD8'),
(100, '9', '0', '', '08', '', 'https://video-lax3-1.xx.fbcdn.net/v/t42.9040-2/10000000_139915146660922_3828776947098320896_n.mp4?efg=eyJ2ZW5jb2RlX3RhZyI6InN2ZV9oZCJ9&oh=378efe6e64b30e86334699b4f1912dd3&oe=5A272AB0'),
(101, '14', '6', '', '01', '', 'http://www.blogger.com/video-play.mp4?contentId=d2834ce31f7a6f4&autoplay=true'),
(102, '14', '1', '', '02', '', 'http://www.blogger.com/video-play.mp4?contentId=db098c72f99fe9cb&autoplay=true'),
(103, '14', '0', '', '03', '', 'http://www.blogger.com/video-play.mp4?contentId=81b63e5ffbf01462&autoplay=true'),
(104, '14', '0', '', '04', '', 'http://www.blogger.com/video-play.mp4?contentId=3c006e9a3ae5f645&autoplay=true'),
(105, '14', '0', '', '05', '', 'http://www.blogger.com/video-play.mp4?contentId=ff385b5c437ea3e0&autoplay=true'),
(106, '14', '0', '', '06', '', 'http://www.blogger.com/video-play.mp4?contentId=8beaaa8c41be9f3&autoplay=true'),
(107, '14', '0', '', '07', '', 'http://www.blogger.com/video-play.mp4?contentId=3232602a480103d9&autoplay=true'),
(108, '14', '0', '', '08', '', 'http://www.blogger.com/video-play.mp4?contentId=4923380d73bd615a&autoplay=true'),
(109, '14', '0', '', '09', '', 'http://www.blogger.com/video-play.mp4?contentId=cc1d71e4c84fb88f&autoplay=true'),
(110, '14', '0', '', '10', '', 'http://www.blogger.com/video-play.mp4?contentId=24e13bf3bb96082b&autoplay=true'),
(111, '14', '0', '', '11', '', 'http://www.blogger.com/video-play.mp4?contentId=f8a9128ebf50ec60&autoplay=true'),
(112, '14', '2', '', '12', '', 'http://www.blogger.com/video-play.mp4?contentId=1ade82ffeccbab4c&autoplay=true'),
(113, '15', '26', '', '01', '', 'http://s.vstreaming.net/animes/anohana/01-leg-480p.mp4'),
(114, '15', '23', '', '02', '', 'http://s.vstreaming.net/animes/anohana/02-leg-480p.mp4'),
(115, '15', '20', '', '03', '', 'http://s.vstreaming.net/animes/anohana/03-leg-480p.mp4'),
(116, '15', '20', '', '04', '', 'http://s.vstreaming.net/animes/anohana/04-leg-480p.mp4'),
(117, '15', '20', '', '05', '', 'http://s.vstreaming.net/animes/anohana/05-leg-480p.mp4'),
(118, '15', '20', '', '06', '', 'http://s.vstreaming.net/animes/anohana/06-leg-480p.mp4'),
(119, '15', '20', '', '07', '', 'http://s.vstreaming.net/animes/anohana/07-leg-480p.mp4'),
(120, '15', '20', '', '08', '', 'http://s.vstreaming.net/animes/anohana/08-leg-480p.mp4'),
(121, '15', '20', '', '09', '', 'http://s.vstreaming.net/animes/anohana/09-leg-480p.mp4'),
(122, '15', '20', '', '10', '', 'http://s.vstreaming.net/animes/anohana/10-leg-480p.mp4'),
(123, '15', '20', '', '11', '', 'http://s.vstreaming.net/animes/anohana/11-leg-480p.mp4'),
(124, '16', '28', '', '01', '', 'http://s.vstreaming.net/animes/bokunohero/01-leg-720p.mp4'),
(125, '16', '23', '', '02', '', 'http://s.vstreaming.net/animes/bokunohero/02-leg-720p.mp4'),
(126, '16', '20', '', '03', '', 'http://s.vstreaming.net/animes/bokunohero/03-leg-720p.mp4'),
(127, '16', '20', '', '04', '', 'http://s.vstreaming.net/animes/bokunohero/04-leg-720p.mp4'),
(128, '16', '20', '', '05', '', 'http://s.vstreaming.net/animes/bokunohero/05-leg-720p.mp4'),
(129, '16', '20', '', '06', '', 'http://s.vstreaming.net/animes/bokunohero/06-leg-720p.mp4'),
(130, '16', '20', '', '07', '', 'http://s.vstreaming.net/animes/bokunohero/07-leg-720p.mp4'),
(131, '16', '20', '', '08', '', 'http://s.vstreaming.net/animes/bokunohero/08-leg-720p.mp4'),
(132, '16', '20', '', '09', '', 'http://s.vstreaming.net/animes/bokunohero/09-leg-720p.mp4'),
(133, '16', '20', '', '10', '', 'http://s.vstreaming.net/animes/bokunohero/10-leg-720p.mp4'),
(134, '16', '20', '', '11', '', 'http://s.vstreaming.net/animes/bokunohero/11-leg-720p.mp4'),
(135, '16', '20', '', '12', '', 'http://s.vstreaming.net/animes/bokunohero/12-leg-720p.mp4'),
(136, '16', '20', '', '13', '', 'http://s.vstreaming.net/animes/bokunohero/13-leg-720p.mp4'),
(137, '17', '35', '', '01', '', 'http://s.vstreaming.net/animes/bokunohero/2temp/01-leg-720p.mp4'),
(138, '17', '24', '', '02', '', 'http://s.vstreaming.net/animes/bokunohero/2temp/02-leg-720p.mp4'),
(139, '17', '20', '', '03', '', 'http://s.vstreaming.net/animes/bokunohero/2temp/03-leg-720p.mp4'),
(140, '17', '20', '', '04', '', 'http://s.vstreaming.net/animes/bokunohero/2temp/04-leg-720p.mp4'),
(141, '17', '20', '', '05', '', 'http://s.vstreaming.net/animes/bokunohero/2temp/05-leg-720p.mp4'),
(142, '17', '20', '', '06', '', 'http://s.vstreaming.net/animes/bokunohero/2temp/06-leg-720p.mp4'),
(143, '17', '20', '', '07', '', 'http://s.vstreaming.net/animes/bokunohero/2temp/07-leg-720p.mp4'),
(144, '17', '20', '', '08', '', 'http://s.vstreaming.net/animes/bokunohero/2temp/08-leg-720p.mp4'),
(145, '17', '20', '', '09', '', 'http://s.vstreaming.net/animes/bokunohero/2temp/09-leg-720p.mp4'),
(146, '17', '20', '', '10', '', 'http://s.vstreaming.net/animes/bokunohero/2temp/10-leg-720p.mp4'),
(147, '17', '20', '', '11', '', 'http://s.vstreaming.net/animes/bokunohero/2temp/11-leg-720p.mp4'),
(148, '17', '20', '', '12', '', 'http://s.vstreaming.net/animes/bokunohero/2temp/12-leg-720p.mp4'),
(149, '17', '20', '', '13', '', 'http://s.vstreaming.net/animes/bokunohero/2temp/13-leg-720p.mp4'),
(150, '17', '20', '', '14', '', 'http://s.vstreaming.net/animes/bokunohero/2temp/14-leg-720p.mp4'),
(151, '17', '20', '', '15', '', 'http://s.vstreaming.net/animes/bokunohero/2temp/15-leg-720p.mp4'),
(152, '17', '20', '', '16', '', 'http://s.vstreaming.net/animes/bokunohero/2temp/16-leg-720p.mp4'),
(153, '17', '20', '', '17', '', 'http://s.vstreaming.net/animes/bokunohero/2temp/17-leg-720p.mp4'),
(154, '17', '20', '', '18', '', 'http://s.vstreaming.net/animes/bokunohero/2temp/18-leg-720p.mp4'),
(155, '17', '20', '', '19', '', 'http://s.vstreaming.net/animes/bokunohero/2temp/19-leg-720p.mp4'),
(156, '17', '20', '', '20', '', 'http://s.vstreaming.net/animes/bokunohero/2temp/20-leg-720p.mp4'),
(157, '17', '20', '', '21', '', 'http://s.vstreaming.net/animes/bokunohero/2temp/21-leg-720p.mp4'),
(158, '17', '20', '', '22', '', 'http://s.vstreaming.net/animes/bokunohero/2temp/22-leg-720p.mp4'),
(159, '17', '20', '', '23', '', 'http://s.vstreaming.net/animes/bokunohero/2temp/23-leg-720p.mp4'),
(160, '17', '20', '', '24', '', 'http://s.vstreaming.net/animes/bokunohero/2temp/24-leg-720p.mp4'),
(161, '17', '20', '', '25', '', 'http://s.vstreaming.net/animes/bokunohero/2temp/25-leg-720p.mp4'),
(162, '19', '18', '', '01', '', 'https://www.googleapis.com/drive/v3/files/1QSmcZMn9WO_REyQCwg4trlTB0lLTeJD1uw?alt=media&key=AIzaSyDVTBN7z6TJGRPHY4pjfI35HyPXYj1BI_4'),
(163, '19', '8', '', '02', '', 'https://www.googleapis.com/drive/v3/files/1nycVFE9GjM4HFCUi6BkkTZYEKleL0pTcgw?alt=media&key=AIzaSyDVTBN7z6TJGRPHY4pjfI35HyPXYj1BI_4'),
(164, '19', '1', '', '03', '', 'https://www.googleapis.com/drive/v3/files/1WejF_MyJFVAOyqGYFaBfhYUhdWLbPvfEkg?alt=media&key=AIzaSyDVTBN7z6TJGRPHY4pjfI35HyPXYj1BI_4'),
(165, '19', '1', '', '04', '', 'https://www.googleapis.com/drive/v3/files/1iGuuvk1R1FRRa4YCoh0-fyTQJZGBDvsJdw?alt=media&key=AIzaSyDVTBN7z6TJGRPHY4pjfI35HyPXYj1BI_4'),
(166, '19', '1', '', '05', '', 'https://www.googleapis.com/drive/v3/files/1MNr-a5hiXZiTmO_9uMdQd4BDxwHMYP5Q3w?alt=media&key=AIzaSyDVTBN7z6TJGRPHY4pjfI35HyPXYj1BI_4'),
(167, '19', '3', '', '06', '', 'https://www.googleapis.com/drive/v3/files/1r3iV7Ncb4pNVOUOiN5z4sL2k3ITp5s57PQ?alt=media&key=AIzaSyDVTBN7z6TJGRPHY4pjfI35HyPXYj1BI_4'),
(168, '19', '1', '', '07', '', 'https://www.googleapis.com/drive/v3/files/1K22n5VDT_k0-YmomaQ864e6FmGBgQCr4fA?alt=media&key=AIzaSyDVTBN7z6TJGRPHY4pjfI35HyPXYj1BI_4'),
(169, '19', '1', '', '08', '', 'https://www.googleapis.com/drive/v3/files/1MLKX9dtZitnoEfcmvXaxz3bZtnJVwP7knQ?alt=media&key=AIzaSyDVTBN7z6TJGRPHY4pjfI35HyPXYj1BI_4'),
(170, '19', '1', '', '09', '', 'https://www.googleapis.com/drive/v3/files/1m3XAg8qHytBW-BBURYSV3q95z9G1LNsoEg?alt=media&key=AIzaSyDVTBN7z6TJGRPHY4pjfI35HyPXYj1BI_4'),
(171, '19', '1', '', '10', '', 'https://www.googleapis.com/drive/v3/files/13oCCB9KDU8UqEk4BFZJLjeU7a3eKlCqpMQ?alt=media&key=AIzaSyDVTBN7z6TJGRPHY4pjfI35HyPXYj1BI_4'),
(172, '19', '3', '', '11', '', 'https://www.googleapis.com/drive/v3/files/1MDnfECmMsC3YODj3prbrtKTizR2clKdiOQ?alt=media&key=AIzaSyDVTBN7z6TJGRPHY4pjfI35HyPXYj1BI_4');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `netflix_payments`
--
ALTER TABLE `netflix_payments`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `netflix_profiles`
--
ALTER TABLE `netflix_profiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;
--
-- AUTO_INCREMENT for table `netflix_series`
--
ALTER TABLE `netflix_series`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `netflix_swit_pro`
--
ALTER TABLE `netflix_swit_pro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `netflix_user`
--
ALTER TABLE `netflix_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `netflix_videos`
--
ALTER TABLE `netflix_videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=173;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
