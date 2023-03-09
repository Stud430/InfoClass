-- phpMyAdmin SQL Dump
-- version 5.2.0-rc1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 26-Fev-2023 às 15:51
-- Versão do servidor: 8.0.20
-- versão do PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `cursos_online2`
--

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `acesso`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `acesso` (
`Plataforma` varchar(30)
,`Login` varchar(25)
,`Senha` varchar(15)
,`Cursos` bigint
);

-- --------------------------------------------------------

--
-- Estrutura da tabela `cursos`
--

CREATE TABLE `cursos` (
  `id` int UNSIGNED NOT NULL,
  `curso` varchar(50) NOT NULL,
  `plataforma` varchar(30) NOT NULL,
  `duracao` varchar(25) DEFAULT NULL,
  `endereco` varchar(150) NOT NULL,
  `inicio` varchar(10) DEFAULT NULL,
  `termino` varchar(10) DEFAULT NULL,
  `usuario` varchar(25) NOT NULL,
  `senha` varchar(15) NOT NULL,
  `status_curso` varchar(15) NOT NULL,
  `created` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cursos`
--

INSERT INTO `cursos` (`id`, `curso`, `plataforma`, `duracao`, `endereco`, `inicio`, `termino`, `usuario`, `senha`, `status_curso`, `created`) VALUES
(1, 'Curso Completo de PHP 7 PROFISSIONAL', 'Udemy', '', 'https://www.udemy.com/home/my-courses/learning/', '', '', 'estudos.paula08@gmail.com', 'M3usCursOs', 'A Fazer', '18/2/2023'),
(2, ' Desenvolvimento Android usando Java', 'Udemy', '', 'https://www.udemy.com/course/curso-desenvolvedor-java-android/learn/lecture/14808806?start=0#content', '', '', 'estudos.paula08@gmail.com', 'M3usCursOs', 'A Fazer', '18/2/2023'),
(3, 'Data Science: Visuali... de Dados com Python', 'Udemy', '', 'https://www.udemy.com/course/visualizacao-de-dados-com-python/learn/lecture/12615774#overview', '', '', 'estudos.paula08@gmail.com', 'M3usCursOs', 'Em Andamento', '18/2/2023'),
(4, ' JavaScript e jQuery para Iniciantes', 'Udemy', '', 'https://www.udemy.com/course/introducao-ao-jquery/learn/lecture/14394808?start=0#content', '', '', 'estudos.paula08@gmail.com', 'M3usCursOs', 'A Fazer', '18/2/2023'),
(5, 'Understanding Bootstrap Grids and Columns', 'Udemy', '', 'https://www.udemy.com/course/understanding-bootstrap-grids-and-columns/learn/lecture/9072738?start=0#content', '', '', 'estudos.paula08@gmail.com', 'M3usCursOs', 'A Fazer', '18/2/2023'),
(6, 'Javascript Essentials', 'Udemy', '', 'https://www.udemy.com/course/javascript-essentials/learn/lecture/4275886?start=0#content', '', '', 'estudos.paula08@gmail.com', 'M3usCursOs', 'A Fazer', '18/2/2023'),
(7, 'Aprenda Unity 5 (2016) - Jogo 3D', 'Udemy', '', 'https://www.udemy.com/course/como-criar-um-jogo-de-plataforma-3d-aprenda-unity-5/learn/lecture/5524846?start=0#content', '', '', 'estudos.paula08@gmail.com', 'M3usCursOs', 'A Fazer', '18/2/2023'),
(8, ' HTML5, CSS3 e Javascript na prática (3 Projetos)', 'Udemy', '', 'https://www.udemy.com/course/html5-css3-e-javascript-na-pratica-3-projetos/learn/lecture/24338486?start=0#content', '', '', 'estudos.paula08@gmail.com', 'M3usCursOs', 'A Fazer', '18/2/2023'),
(9, 'Mastering CSS 3.0 Selectors', 'Udemy', '', 'https://www.udemy.com/course/css3-selectors/learn/lecture/6543910?start=0#content', '', '', 'estudos.paula08@gmail.com', 'M3usCursOs', 'A Fazer', '18/2/2023'),
(10, 'Modern CSS for Beginners 2023', 'Udemy', '', 'https://www.udemy.com/course/introduction-to-css-web-development-bootcamp/learn/lecture/31872670?start=0#content', '', '', 'estudos.paula08@gmail.com', 'M3usCursOs', 'A Fazer', '18/2/2023'),
(11, 'Advanced CSS Development', 'Udemy', '', 'https://www.udemy.com/course/refactoru-advanced-css-development/learn/lecture/1198952?start=0#content', '', '', 'estudos.paula08@gmail.com', 'M3usCursOs', 'A Fazer', '18/2/2023'),
(12, 'Build a Responsive Site', 'Udemy', '', 'https://www.udemy.com/course/learn-to-code-in-html-and-css/learn/lecture/5170416?start=0#content', '', '', 'estudos.paula08@gmail.com', 'M3usCursOs', 'A Fazer', '18/2/2023'),
(13, 'Amazon RDS (Relational Database Service)', 'Udemy', '', 'https://www.udemy.com/course/draft/3165256/learn/lecture/20039074?start=0#content', '', '', 'estudos.paula08@gmail.com', 'M3usCursOs', 'A Fazer', '18/2/2023'),
(14, 'HTML, CSS, JS for Intermediate - Movie Website', 'Udemy', '', 'https://www.udemy.com/course/draft/3882774/learn/lecture/25208628?start=0#content', '', '', 'estudos.paula08@gmail.com', 'M3usCursOs', 'A Fazer', '18/2/2023'),
(15, 'Javascript: Manipulação da DOM', 'Udemy', '', 'https://www.udemy.com/course/javascript-manipulacao-da-dom/learn/lecture/29811058?start=0#content', '', '', 'estudos.paula08@gmail.com', 'M3usCursOs', 'A Fazer', '18/2/2023'),
(16, 'The Complete Responsive Web Design Course', 'Udemy', '', 'https://www.udemy.com/course/the-complete-responsive-web-design-course/learn/lecture/9950678?start=0#content', '', '', 'estudos.paula08@gmail.com', 'M3usCursOs', 'A Fazer', '18/2/2023'),
(17, 'Build a Quiz App with HTML, CSS, and JavaScript', 'Udemy', '', 'https://www.udemy.com/course/build-a-quiz-app-with-html-css-and-javascript/learn/lecture/13685348?start=0#content', '', '', 'estudos.paula08@gmail.com', 'M3usCursOs', 'A Fazer', '18/2/2023'),
(18, 'Programação para Desktop em JavaScript', 'Udemy', '', 'https://www.udemy.com/course/programacao-para-desktop-em-javascript/learn/lecture/28080632?start=0#content', '', '', 'estudos.paula08@gmail.com', 'M3usCursOs', 'A Fazer', '18/2/2023'),
(19, ' Pinterest na prática: como alavancar seu negócio', 'Udemy', '', 'https://www.udemy.com/course/pinterest-na-pratica-como-alavancar-seu-negocio/learn/lecture/14785672?start=0#content', '', '', 'estudos.paula08@gmail.com', 'M3usCursOs', 'A Fazer', '18/2/2023'),
(20, 'Crie Jogos para Roblox sem Programação!', 'Udemy', '', 'https://www.udemy.com/course/programacao-para-criancas-com-roblox/learn/lecture/24989724?start=0#content', '', '', 'estudos.paula08@gmail.com', 'M3usCursOs', 'A Fazer', '18/2/2023'),
(21, 'Fundamentals of Database Engineering', 'Udemy', '', 'https://www.udemy.com/course/database-engines-crash-course/learn/lecture/22515194?start=0#content', '', '', 'estudos.paula08@gmail.com', 'M3usCursOs', 'A Fazer', '18/2/2023'),
(22, 'https://www.cursoemvideo.com/curso/java-basico/', 'Curso em Vídeo', '40', 'https://www.cursoemvideo.com/curso/java-basico/', '', '', 'estudos.paula08@gmail.com', 'c,Qem7*E-My$Ui9', 'A Fazer', '18/2/2023'),
(23, 'HTML5', 'Curso em Vídeo', '40', 'https://www.cursoemvideo.com/curso/html5/', '', '', 'estudos.paula08@gmail.com', 'c,Qem7*E-My$Ui9', 'A Fazer', '18/2/2023'),
(24, 'PHP [POO]', 'Curso em Vídeo', '40', 'https://www.cursoemvideo.com/curso/php-poo/', '', '', 'estudos.paula08@gmail.com', 'c,Qem7*E-My$Ui9', 'A Fazer', '18/2/2023'),
(25, 'Excel', 'Curso em Vídeo', '40', 'https://www.cursoemvideo.com/curso/excell/', '', '', 'estudos.paula08@gmail.com', 'c,Qem7*E-My$Ui9', 'A Fazer', '18/2/2023'),
(26, 'Bases Numéricas', 'Curso em Vídeo', '20', 'https://www.cursoemvideo.com/curso/bases-numericas/', '', '', 'estudos.paula08@gmail.com', 'c,Qem7*E-My$Ui9', 'A Fazer', '18/2/2023'),
(27, 'Python 3 – Mundo 1 [40 Horas]', 'Curso em Vídeo', '40', 'https://www.cursoemvideo.com/curso/python-3-mundo-1/', '', '', 'estudos.paula08@gmail.com', 'c,Qem7*E-My$Ui9', 'A Fazer', '18/2/2023'),
(28, 'Python 3 – Mundo 2', 'Curso em Vídeo', '40', 'https://www.cursoemvideo.com/curso/python-3-mundo-2/', '', '', 'estudos.paula08@gmail.com', 'c,Qem7*E-My$Ui9', 'A Fazer', '18/2/2023'),
(29, 'Python 3 – Mundo 3', 'Curso em Vídeo', '40', 'https://www.cursoemvideo.com/curso/python-3-mundo-3/', '', '', 'estudos.paula08@gmail.com', 'c,Qem7*E-My$Ui9', 'A Fazer', '18/2/2023'),
(30, 'Javascript ', 'Curso em Vídeo', '40', 'https://www.cursoemvideo.com/curso/javascript/', '', '', 'estudos.paula08@gmail.com', 'c,Qem7*E-My$Ui9', 'A Fazer', '18/2/2023'),
(31, 'Git e GitHub', 'Curso em Vídeo', '20', 'https://www.cursoemvideo.com/curso/curso-de-git-e-github/', '', '', 'estudos.paula08@gmail.com', 'c,Qem7*E-My$Ui9', 'A Fazer', '18/2/2023'),
(32, 'Curso Prático de SEO: Módulo 01', 'Curso em Vídeo', '', 'https://www.cursoemvideo.com/curso/curso-pratico-de-seo-modulo-01/', '', '', 'estudos.paula08@gmail.com', 'c,Qem7*E-My$Ui9', 'A Fazer', '18/2/2023'),
(33, 'Segurança da Informação: Módulo 00', 'Curso em Vídeo', '20', 'https://www.cursoemvideo.com/curso/seguranca-da-informacao-modulo-00/', '', '', 'estudos.paula08@gmail.com', 'c,Qem7*E-My$Ui9', 'A Fazer', '18/2/2023'),
(34, 'Segurança da Informação: Módulo 01', 'Curso em Vídeo', '20', 'https://www.cursoemvideo.com/curso/seguranca-da-informacao-modulo-01-20-horas/', '', '', 'estudos.paula08@gmail.com', 'c,Qem7*E-My$Ui9', 'A Fazer', '18/2/2023'),
(35, 'Segurança da Informação: Módulo 02', 'Curso em Vídeo', '20', 'https://www.cursoemvideo.com/curso/seguranca-da-informacao-modulo-02-20-horas/', '', '', 'estudos.paula08@gmail.com', 'c,Qem7*E-My$Ui9', 'A Fazer', '18/2/2023'),
(36, 'Curso de PHP Moderno: Módulo 01', 'Curso em Vídeo', '', 'https://www.cursoemvideo.com/curso/curso-de-php-moderno-modulo-01/', '', '', 'estudos.paula08@gmail.com', 'c,Qem7*E-My$Ui9', 'A Fazer', '18/2/2023'),
(37, 'Arquivologia', 'Gyn Cursos', '', 'https://gyncursos.com.br/course/curso-de-arquivologia/', '', '', 'paulaco', 'wskQhQHcVA37WP7', 'A Fazer', '18/2/2023'),
(38, 'Curso de Criptografia e Segurança', 'Gyn Cursos', '', 'https://gyncursos.com.br/course/curso-de-criptografia-e-seguranca/', '', '', 'paulaco', 'wskQhQHcVA37WP7', 'A Fazer', '18/2/2023'),
(39, 'Desenvolvimento de Aplicativos Android', 'Curso em Vídeo', '', 'https://gyncursos.com.br/course/curso-de-desenvolvimento-de-aplicativos-android/', '', '', 'paulaco', 'wskQhQHcVA37WP7', 'A Fazer', '18/2/2023'),
(40, 'CURSO DE DESENVOLVIMENTO DE SISTEMAS', 'Gyn Cursos', '', 'https://gyncursos.com.br/course/curso-de-desenvolvimento-de-sistemas-gratis-online-com-certificado/', '', '', 'paulaco', 'wskQhQHcVA37WP7', 'A Fazer', '18/2/2023'),
(41, 'CURSO DE GESTÃO DE ESTOQUES', 'Gyn Cursos', '', 'https://gyncursos.com.br/course/curso-de-gestao-de-estoques/', '', '', 'paulaco', 'wskQhQHcVA37WP7', 'A Fazer', '18/2/2023'),
(42, 'Curso de Google Adsense', 'Gyn Cursos', '', 'https://gyncursos.com.br/course/curso-de-google-adsense/', '', '', 'paulaco', 'wskQhQHcVA37WP7', 'A Fazer', '18/2/2023'),
(43, 'Curso de JavaScript', 'Gyn Cursos', '', 'https://gyncursos.com.br/course/curso-de-javascript/', '', '', 'paulaco', 'wskQhQHcVA37WP7', 'A Fazer', '18/2/2023'),
(44, 'Curso de Premiere Pro CC', 'Gyn Cursos', '', 'https://gyncursos.com.br/course/curso-de-premiere-pro-cc-gratis-online-com-certificado/', '', '', 'estudos.paula08@gmail.com', 'wskQhQHcVA37WP7', 'A Fazer', '18/2/2023'),
(45, 'Curso de Programação Para Arduino', 'Gyn Cursos', '', 'https://gyncursos.com.br/course/curso-de-programacao-para-arduino/', '', '', 'paulaco', 'wskQhQHcVA37WP7', 'A Fazer', '18/2/2023'),
(46, 'Curso de Python', 'Gyn Cursos', '', 'https://gyncursos.com.br/course/curso-de-python-gratis-em-video/', '', '', 'paulaco', 'wskQhQHcVA37WP7', 'A Fazer', '18/2/2023'),
(47, 'Curso de Gestão Escolar', 'Gyn Cursos', '', 'https://gyncursos.com.br/course/curso-de-gestao-escolar/', '', '', 'paulaco', 'wskQhQHcVA37WP7', 'A Fazer', '18/2/2023'),
(48, 'Curso de Secretaria Escolar', 'Gyn Cursos', '', 'https://gyncursos.com.br/course/curso-de-secretaria-escolar/', '', '', 'paulaco', 'wskQhQHcVA37WP7', 'A Fazer', '18/2/2023'),
(49, 'Curso de Design Educacional', 'Gyn Cursos', '', 'https://gyncursos.com.br/course/curso-de-design-educacional/', '', '', 'paulaco', 'wskQhQHcVA37WP7', 'A Fazer', '18/2/2023'),
(50, 'Curso de Projeto e Análise de Algoritmos', 'Gyn Cursos', '', 'https://gyncursos.com.br/course/curso-de-projeto-e-analise-de-algoritmos/', '', '', 'paulaco', 'wskQhQHcVA37WP7', 'A Fazer', '18/2/2023'),
(51, 'Curso de Engenharia de Software Básico', 'Gyn Cursos', '', 'https://gyncursos.com.br/course/curso-de-engenharia-de-software-basico/', '', '', 'paulaco', 'wskQhQHcVA37WP7', 'A Fazer', '18/2/2023'),
(52, 'Curso de Inteligência Artificial Básico', 'Gyn Cursos', '', 'https://gyncursos.com.br/course/curso-de-inteligencia-artificial-basico/', '', '', 'paulaco', 'wskQhQHcVA37WP7', 'A Fazer', '18/2/2023'),
(53, 'Curso de Robótica Básica', 'Gyn Cursos', '', 'https://gyncursos.com.br/course/curso-de-robotica-basica-online-gratis-certificado/', '', '', 'paulaco', 'wskQhQHcVA37WP7', 'A Fazer', '18/2/2023'),
(54, 'Curso de Estatística e Probabilidade', 'Gyn Cursos', '', 'https://gyncursos.com.br/course/curso-de-estatistica-e-probabilidade/', '', '', 'paulaco', 'wskQhQHcVA37WP7', 'A Fazer', '18/2/2023'),
(55, 'Curso de Design Responsivo', 'Gyn Cursos', '', 'https://gyncursos.com.br/course/curso-de-design-responsivo-gratis-online/', '', '', 'paulaco', 'wskQhQHcVA37WP7', 'A Fazer', '18/2/2023'),
(56, 'Curso de CSS3', 'Gyn Cursos', '', 'https://gyncursos.com.br/course/curso-de-css3-gratis-online/', '', '', 'paulaco', 'wskQhQHcVA37WP7', 'A Fazer', '18/2/2023'),
(57, 'Curso Administração de Hotel', 'Gyn Cursos', '', 'https://gyncursos.com.br/course/curso-administracao-de-hotel/', '', '', 'paulaco', 'wskQhQHcVA37WP7', 'A Fazer', '18/2/2023'),
(58, 'Italiano Básico', 'Kultivi', '', 'https://app.kultivi.com/dashboard/course/italiano-basico', '', '', 'estudos.paula08@gmail.com', 'MetA2020', 'Concluído', '18/2/2023'),
(59, 'Italiano do básico ao Avançado', 'Kultivi', '', 'https://app.kultivi.com/dashboard/course/italiano-da-base-ad-avanzato', '', '', 'estudos.paula08@gmail.com', 'MetA2020', 'Em Andamento', '18/2/2023'),
(60, 'Inglês', 'Kultivi', '', 'https://app.kultivi.com/dashboard/course/ingles', '', '', 'estudos.paula08@gmail.com', 'MetA2020', 'Em Andamento', '18/2/2023'),
(61, 'Inglês com Mairo Vergara', 'Mairo Vergara', '', 'https://curso.mairovergara.com/dashboard', '', '', 'estudos.paula08@gmail.com', 'M3t4.2024', 'Em Andamento', '18/2/2023');

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `cursos_registrados`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `cursos_registrados` (
`Quantidade` bigint
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `plataformas`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `plataformas` (
`Plataforma` varchar(30)
,`Cursos` bigint
);

-- --------------------------------------------------------

--
-- Estrutura para vista `acesso`
--
DROP TABLE IF EXISTS `acesso`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `acesso`  AS SELECT `cursos`.`plataforma` AS `Plataforma`, `cursos`.`usuario` AS `Login`, `cursos`.`senha` AS `Senha`, count(0) AS `Cursos` FROM `cursos` GROUP BY `cursos`.`plataforma``plataforma`  ;

-- --------------------------------------------------------

--
-- Estrutura para vista `cursos_registrados`
--
DROP TABLE IF EXISTS `cursos_registrados`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `cursos_registrados`  AS SELECT count(0) AS `Quantidade` FROM `cursos``cursos`  ;

-- --------------------------------------------------------

--
-- Estrutura para vista `plataformas`
--
DROP TABLE IF EXISTS `plataformas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `plataformas`  AS SELECT `cursos`.`plataforma` AS `Plataforma`, count(`cursos`.`id`) AS `Cursos` FROM `cursos` GROUP BY `cursos`.`plataforma``plataforma`  ;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
