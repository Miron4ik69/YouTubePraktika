-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 28, 2020 at 05:16 PM
-- Server version: 5.7.30-0ubuntu0.18.04.1
-- PHP Version: 7.2.24-0ubuntu0.18.04.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `YouTube`
--

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

CREATE TABLE `favorites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `favorites`
--

INSERT INTO `favorites` (`id`, `user_id`, `video_id`, `video_title`, `video_image`) VALUES
(4, '2', 'FiPWOe4M_vw', '√ Minecraft: POP-UP MENU/GUI!', 'https://i.ytimg.com/vi/FiPWOe4M_vw/hqdefault.jpg'),
(5, '2', 'RCyLuJSSCtE', 'Двигаюсь без повода', 'https://i.ytimg.com/vi/RCyLuJSSCtE/hqdefault.jpg'),
(6, '2', 'MSWkdBs0CUI', 'Приколи в тик ток. Сваты,каких кур.2019', 'https://i.ytimg.com/vi/MSWkdBs0CUI/hqdefault.jpg'),
(8, '3', 'YLe9Ut5Addc', 'The Simpsons – Treehouse of Horror X – clip12', 'https://i.ytimg.com/vi/YLe9Ut5Addc/hqdefault.jpg'),
(9, '3', 'nKcnB0KCqQo', 'Os Simpsons 30 temporada Episódio 17+18 - Os Simpsons Episódios Completos', 'https://i.ytimg.com/vi/nKcnB0KCqQo/hqdefault.jpg'),
(10, '3', 'nKcnB0KCqQo', 'Os Simpsons 30 temporada Episódio 17+18 - Os Simpsons Episódios Completos', 'https://i.ytimg.com/vi/nKcnB0KCqQo/hqdefault.jpg'),
(11, '3', 'nKcnB0KCqQo', 'Os Simpsons 30 temporada Episódio 17+18 - Os Simpsons Episódios Completos', 'https://i.ytimg.com/vi/nKcnB0KCqQo/hqdefault.jpg'),
(12, '3', 'nKcnB0KCqQo', 'Os Simpsons 30 temporada Episódio 17+18 - Os Simpsons Episódios Completos', 'https://i.ytimg.com/vi/nKcnB0KCqQo/hqdefault.jpg'),
(13, '3', 'nKcnB0KCqQo', 'Os Simpsons 30 temporada Episódio 17+18 - Os Simpsons Episódios Completos', 'https://i.ytimg.com/vi/nKcnB0KCqQo/hqdefault.jpg'),
(14, '3', 'nKcnB0KCqQo', 'Os Simpsons 30 temporada Episódio 17+18 - Os Simpsons Episódios Completos', 'https://i.ytimg.com/vi/nKcnB0KCqQo/hqdefault.jpg'),
(24, '2', 'xczwrtFHQRE', 'Die Simpsons - 22 für 30 [4/5] Staffel 28 Folge 17', 'https://i.ytimg.com/vi/xczwrtFHQRE/hqdefault.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_05_24_082029_favorite', 2),
(5, '2020_05_25_090007_favorite', 3),
(6, '2020_05_25_093030_search', 4),
(7, '2020_05_25_103257_favotire', 5),
(8, '2020_05_25_112548_create_favorites_table', 6),
(10, '2020_05_26_160505_create_query_searches_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `query_searches`
--

CREATE TABLE `query_searches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `query` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_channel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `query_searches`
--

INSERT INTO `query_searches` (`id`, `query`, `video_id`, `video_title`, `video_description`, `video_image`, `video_date`, `video_channel`) VALUES
(2641, 'Симпсоны', '8b8ZsTGO0mE', 'Die Simpsons Deutsch-Homergeddon 1/5', 'Viel Vergnugen. Vergessen Sie nicht, sich anzumelden!', 'https://i.ytimg.com/vi/8b8ZsTGO0mE/hqdefault.jpg', '2020-05-28T06:00:01Z', 'Lisa Simpson Deutsch'),
(2642, 'Симпсоны', 'xczwrtFHQRE', 'Die Simpsons - 22 für 30 [4/5] Staffel 28 Folge 17', 'Die Simpsons deutsch ganze Folgen Staffel 28 Folge 17. Teil 5: https://youtu.be/-IeS_MxP8HU Playlist: ...', 'https://i.ytimg.com/vi/xczwrtFHQRE/hqdefault.jpg', '2020-05-25T12:03:00Z', 'Die Simpsons Stream'),
(2643, 'Симпсоны', 'YLe9Ut5Addc', 'The Simpsons – Treehouse of Horror X – clip12', 'The Simpsons.', 'https://i.ytimg.com/vi/YLe9Ut5Addc/hqdefault.jpg', '2018-12-27T02:34:43Z', 'Austin Reid'),
(2644, 'Симпсоны', 'y07pGHvIQxo', 'Die Simpsons - Auf der Suche nach Mr. Goodbart [1/5] Staffel 28 Folge 20', 'Die Simpsons deutsch ganze Folgen Staffel 28 Folge 20. Teil 2: https://youtu.be/3E1preSQbrg Playlist: ...', 'https://i.ytimg.com/vi/y07pGHvIQxo/hqdefault.jpg', '2020-05-28T12:00:24Z', 'Die Simpsons Stream'),
(2645, 'Симпсоны', 'aV_QIAgSQrI', 'Os Simpsons em Português - A Cor Amarela - PARTE 2/5', 'Novo episódio todos os dias - Subscribe NOW (Inscreva-se no canal) Temporada 21 Episódio 13 - A Cor Amarela Assistir Os Simpsons: 21×13 Dublado Nome ...', 'https://i.ytimg.com/vi/aV_QIAgSQrI/hqdefault.jpg', '2020-05-26T09:06:03Z', 'Ai Simpsons em Português'),
(2646, 'Симпсоны', 'tyjZgpkMPIc', 'Die Simpsons Deutsch-Homergeddon 4/5', 'Viel Vergnugen. Vergessen Sie nicht, sich anzumelden!', 'https://i.ytimg.com/vi/tyjZgpkMPIc/hqdefault.jpg', '2020-05-28T06:45:01Z', 'Lisa Simpson Deutsch'),
(2647, 'Симпсоны', '-puWue-BBiI', 'LOS SIMPSONS • BART NO ESTÁ MUERTO • LOS SIMPSONS EN ESPANÕL CAPITULO COMPLETOS', 'LOS SIMPSONS • BART NO ESTÁ MUERTO • LOS SIMPSONS EN ESPANÕL CAPITULO COMPLETOS Bart acepta un reto y acaba en el hospital. Para cubrir a ...', 'https://i.ytimg.com/vi/-puWue-BBiI/hqdefault.jpg', '2020-05-27T13:00:13Z', 'MINECRAFT ANIMATION STUDIOS'),
(2648, 'Симпсоны', 'MuzkfxzJDKc', 'Os Simpsons – Krusty se machuca clip3', 'os simpsons.', 'https://i.ytimg.com/vi/MuzkfxzJDKc/hqdefault.jpg', '2019-01-28T07:59:38Z', 'Denis Pimenov'),
(2649, 'Симпсоны', 'oeIFFWgTJOQ', 'The Simpsons – Today I am A Clown – clip1', 'The Simpsons.', 'https://i.ytimg.com/vi/oeIFFWgTJOQ/hqdefault.jpg', '2018-12-27T09:23:37Z', 'daecthor copca'),
(2650, 'Симпсоны', 'CCFTPT13LGM', 'OS SIMPSONS AO VIVO 24 HORAS FULL HD', 'OS SIMPSONS - AO VIVO 24 HORAS HD! OS SIMPSONS - AO VIVO 24 HORAS HD! OS SIMPSONS - AO VIVO 24 HORAS HD! OS SIMPSONS - AO VIVO 24 ...', 'https://i.ytimg.com/vi/CCFTPT13LGM/hqdefault.jpg', '2020-05-28T02:41:20Z', 'Lucas Daniel'),
(2651, 'Симпсоны', 'D4XdsQehTSI', 'The Simpsons Movie (Soundtrack) - Alaska', 'The Simpsons Movie (Soundtrack) - Alaska composed by Hans Zimmer (2007)', 'https://i.ytimg.com/vi/D4XdsQehTSI/hqdefault.jpg', '2016-06-30T14:23:50Z', 'MusicAndPlay Soundtracks Channel'),
(2652, 'Симпсоны', 'FMjT1ep6OxQ', 'The Simpsons Movie (Soundtrack) - Lisa Saxophone Source', 'The Simpsons Movie (Soundtrack) - Lisa Saxophone Source composed by Hans Zimmer (2007)', 'https://i.ytimg.com/vi/FMjT1ep6OxQ/hqdefault.jpg', '2016-06-30T14:52:26Z', 'MusicAndPlay Soundtracks Channel'),
(2653, 'Симпсоны', '5kZdAd6ewOs', '[HD] The Simpsons Season 30 Episode 02 - The Simpsons Full Episodes Nocuts', '[HD] The Simpsons Season 30 Episode 02 - The Simpsons Full Episodes Nocuts #thesimpsons, #simpsons.', 'https://i.ytimg.com/vi/5kZdAd6ewOs/hqdefault.jpg', '2020-05-28T00:44:51Z', 'Tunya Shop'),
(2654, 'Симпсоны', 'LRiXwWQpIUE', 'Os Simpsons em Português - Roubando em Primeira Base - PARTE 2/5', 'Novo episódio todos os dias - Subscribe NOW (Inscreva-se no canal) Temporada 21 Episódio 15 - Roubando em Primeira Base Assistir Os Simpsons: 21×15 ...', 'https://i.ytimg.com/vi/LRiXwWQpIUE/hqdefault.jpg', '2020-05-28T06:40:24Z', 'Ai Simpsons em Português'),
(2655, 'Симпсоны', '0RkbYxG3BUM', 'The Simpsons Movie (Soundtrack) - Source Cue', 'The Simpsons Movie (Soundtrack) - Source Cue composed by Hans Zimmer (2007)', 'https://i.ytimg.com/vi/0RkbYxG3BUM/hqdefault.jpg', '2016-06-30T13:11:15Z', 'MusicAndPlay Soundtracks Channel'),
(2656, 'Симпсоны', 'kplwVY81hiI', 'SKINNERRRRR! | The Simpsons', 'Superintendent Chalmers\' famous catchphrase.', 'https://i.ytimg.com/vi/kplwVY81hiI/hqdefault.jpg', '2015-07-09T05:06:11Z', 'thecomputerdude24 TV & Movie Clips'),
(2657, 'Симпсоны', 'jdlOrg12kIc', 'Os Simpsons em Português - Roubando em Primeira Base - PARTE 1/5', 'Novo episódio todos os dias - Subscribe NOW (Inscreva-se no canal) Temporada 21 Episódio 15 - Roubando em Primeira Base Assistir Os Simpsons: 21×15 ...', 'https://i.ytimg.com/vi/jdlOrg12kIc/hqdefault.jpg', '2020-05-28T05:04:11Z', 'Ai Simpsons em Português'),
(2658, 'Симпсоны', '5wE1DdxjvZE', 'The Simpsons - Jasper - You shot who in the what now?', 'S07E01 · Instagram: https://www.instagram.com/simpbest/ Facebook: https://www.facebook.com/SimpsonsBestMoments/ . Twitter: https://twitter.com/Simpsbest.', 'https://i.ytimg.com/vi/5wE1DdxjvZE/hqdefault.jpg', '2016-08-17T11:09:01Z', 'Simpsons Best Moments'),
(2659, 'Симпсоны', 'WyWcG6TPO6k', 'The Simpsons - S25E16 - You Don&#39;t Have to Live Like a Referee [Couch Gag]', 'The Simpsons: Season 25 https://vk.cc/9mWEP0 #simpsons #심슨 #симпсоны #gag #cartoon #fox #homer #online #free #bart #lisa #marge...', 'https://i.ytimg.com/vi/WyWcG6TPO6k/hqdefault.jpg', '2019-05-08T14:49:56Z', 'The Simpsons'),
(2660, 'Симпсоны', 'tVYsb3YnesA', 'Os Simpsons em português - Adolescente-mutante e problemas devido leite [4/5]', 'Os Simpsons em português - Adolescente-mutante e problemas devido leite [4/5]', 'https://i.ytimg.com/vi/tVYsb3YnesA/hqdefault.jpg', '2020-05-27T22:28:24Z', 'Bart Simpsons'),
(2661, 'Симпсоны', 'lEgk3SEKvK8', 'Os Simpsons em Português - Mãe operação (Werking Mom) - PARTE 3/5', 'Novo episódio todos os dias - Subscribe NOW (Inscreva-se no canal) Episódio 07 – Mãe operação Assistir Os Simpsons 30ª Temporada Dublado __ Os ...', 'https://i.ytimg.com/vi/lEgk3SEKvK8/hqdefault.jpg', '2020-05-28T09:56:05Z', 'MORDA MEDIA'),
(2662, 'Симпсоны', 'gPXNzAhSjR4', 'Os Simpsons em Português - My Way or the Highway to Heaven - PARTE 5/5', 'Novo episódio todos os dias - Subscribe NOW (Inscreva-se no canal) Deus e São Pedro contemplam o que merece uma alma entrar no céu, enquanto os ...', 'https://i.ytimg.com/vi/gPXNzAhSjR4/hqdefault.jpg', '2020-05-24T11:44:53Z', 'MORDA MEDIA'),
(2663, 'Симпсоны', 'E6-JZoCuW1g', 'The SIMPsons By Flash Gitz Reaction!', 'Flash Gitz dropping another animation gem for the world and this time it involves that classic cartoon the Simpsons. Check out my reaction! Support My Comic!', 'https://i.ytimg.com/vi/E6-JZoCuW1g/hqdefault.jpg', '2020-05-25T21:19:28Z', 'JuiceREACTS!'),
(2664, 'Симпсоны', 'kMncpUh7emY', 'The Simpsons - Homer&#39;s head stuck in the sliding door (S3Ep08)', '', 'https://i.ytimg.com/vi/kMncpUh7emY/hqdefault.jpg', '2015-11-17T00:09:40Z', 'DrRockso1987'),
(2665, 'Симпсоны', 'J7LZjfdoHoU', 'Die Simpsons - Krise nach Kamp Krusty [1/5] Staffel 28 Folge 16', 'Die Simpsons deutsch ganze Folgen Staffel 28 Folge 16. Teil 2: https://youtu.be/XS6GeF651eQ Playlist: ...', 'https://i.ytimg.com/vi/J7LZjfdoHoU/hqdefault.jpg', '2020-05-24T12:00:08Z', 'Die Simpsons Stream'),
(2666, 'Симпсоны', '9gsuk-k4upM', 'The Simpsons - S19E02 - The Homer of Seville [Couch Gag]', 'The Simpsons: Season 19 https://vk.cc/9miMoz #simpsons #심슨 #симпсоны #gag #cartoon #fox #homer #online #free #bart #lisa #marge...', 'https://i.ytimg.com/vi/9gsuk-k4upM/hqdefault.jpg', '2019-05-08T14:49:33Z', 'The Simpsons'),
(2667, 'Симпсоны', 'ylPNXTy2uCQ', 'Die Simpsons - Homer Academy [1/5] Staffel 28 Folge 19', 'Die Simpsons deutsch ganze Folgen Staffel 28 Folge 19. Teil 2: https://youtu.be/-gJ_HAedmrs Playlist: ...', 'https://i.ytimg.com/vi/ylPNXTy2uCQ/hqdefault.jpg', '2020-05-27T12:00:36Z', 'Die Simpsons Stream'),
(2668, 'Симпсоны', 'oXH2FMJhjFU', 'Os Simpsons 30 temporada Episódio 21+22 - Os Simpsons Episódios Completos', 'OsSimpsons #OsSimpsons30temporada Lista de reprodução: https://rb.gy/yvppjy Obrigado Por Assistir.', 'https://i.ytimg.com/vi/oXH2FMJhjFU/hqdefault.jpg', '2020-05-26T12:30:14Z', 'jschlaman'),
(2669, 'Симпсоны', 'etvIBxb-wJU', 'The Simpsons Season 30 Episode 04 - The Simpsons Full Episodes Nocuts', 'The Simpsons Season 30 Episode 04 - The Simpsons Full Episodes Nocuts #thesimspons #simpsons.', 'https://i.ytimg.com/vi/etvIBxb-wJU/hqdefault.jpg', '2020-05-28T03:03:31Z', 'Tunya Shop'),
(2670, 'Симпсоны', 'OGBKo4YRNbs', 'Os Simpsons 24 Horas  - AO VIVO - [NOVOS EPISÓDIOS]', 'Simpsons #TelaCheia #24Horas OS SIMPSONS EM PORTUGUÊS- AO VIVO - 24 HORAS - HD [4 Horas de OS SIMPSONS] ...', 'https://i.ytimg.com/vi/OGBKo4YRNbs/hqdefault.jpg', '2020-05-25T17:07:41Z', 'K s u l l a 13 ム'),
(2671, 'Симпсоны', 'FOsX1lfBdh0', 'Die Simpsons Deutsch_How I Wet Your Mother 4/5', 'Viel Vergnugen. Vergessen Sie nicht, sich anzumelden!', 'https://i.ytimg.com/vi/FOsX1lfBdh0/hqdefault.jpg', '2020-05-27T13:09:46Z', 'German Burt'),
(2672, 'Симпсоны', 'ETs5EIjPEHc', 'Start of Channel 4 (UK)&#39;s &quot;Simpsons Night&quot;, 5th November 2004', 'Well...ish. Next upload\'s more of a proper upload, here it is!: https://www.youtube.com/watch?v=HnF1u_b8kfw FOR NOW...gosh...been wanting to upload this ...', 'https://i.ytimg.com/vi/ETs5EIjPEHc/hqdefault.jpg', '2015-01-24T21:38:36Z', 'thingsandtings'),
(2673, 'Симпсоны', 'qx6fXigxx28', 'Os Simpsons em Português - Postais de Cunha - PARTE 5/5', 'Novo episódio todos os dias - Subscribe NOW (Inscreva-se no canal) Temporada 21 Episódio 14 - Postais de Cunha Assistir Os Simpsons: 21×14 Dublado ...', 'https://i.ytimg.com/vi/qx6fXigxx28/hqdefault.jpg', '2020-05-27T13:02:36Z', 'Ai Simpsons em Português'),
(2674, 'Симпсоны', 'cMMVOANT2Ww', 'He&#39;s Pure Gold / (The Simpsons Movie) Animation', 'I had to reanimate this scene, it was my favorite. Audio: https://www.youtube.com/watch?v=2tNNdzalLVY.', 'https://i.ytimg.com/vi/cMMVOANT2Ww/hqdefault.jpg', '2020-05-27T12:49:21Z', 'Edwin R'),
(2675, 'Симпсоны', 'QlNtJ9acWCY', 'The SIMPsons (parody) REACTION | @Flashgitz', 'I\'m Actually Really Happy For Homer... HELP ME REACH 10000 SUBSCRIBERS! Click Below To Subscribe! Subscribe ➔ https://goo.gl/SufXAU Previous Video ...', 'https://i.ytimg.com/vi/QlNtJ9acWCY/hqdefault.jpg', '2020-05-26T13:21:37Z', 'DJB'),
(2676, 'Симпсоны', 'feWD68G9wS4', 'Os Simpsons em Português - A Cor Amarela - PARTE 4/5', 'Novo episódio todos os dias - Subscribe NOW (Inscreva-se no canal) Temporada 21 Episódio 13 - A Cor Amarela Assistir Os Simpsons: 21×13 Dublado Nome ...', 'https://i.ytimg.com/vi/feWD68G9wS4/hqdefault.jpg', '2020-05-26T12:14:45Z', 'Ai Simpsons em Português'),
(2677, 'Симпсоны', 'mQRW_lal_2U', 'Os Simpsons em Português - A Cor Amarela - PARTE 3/5', 'Novo episódio todos os dias - Subscribe NOW (Inscreva-se no canal) Temporada 21 Episódio 13 - A Cor Amarela Assistir Os Simpsons: 21×13 Dublado Nome ...', 'https://i.ytimg.com/vi/mQRW_lal_2U/hqdefault.jpg', '2020-05-26T10:12:15Z', 'Ai Simpsons em Português'),
(2678, 'Симпсоны', 'nMDOfgDotd4', 'The Simpsons - King of the Hill cameo (S9Ep06)', '\'The Simpsons\' is property of Fox Entertainment. I do not own the rights to this video.', 'https://i.ytimg.com/vi/nMDOfgDotd4/hqdefault.jpg', '2016-01-10T16:07:15Z', 'DrRockso1987'),
(2679, 'Симпсоны', 'KD6XzNSSmr0', 'Os Simpsons em Português - Postais de Cunha - PARTE 1/5', 'Novo episódio todos os dias - Subscribe NOW (Inscreva-se no canal) Temporada 21 Episódio 14 - Postais de Cunha Assistir Os Simpsons: 21×14 Dublado ...', 'https://i.ytimg.com/vi/KD6XzNSSmr0/hqdefault.jpg', '2020-05-27T06:52:39Z', 'Ai Simpsons em Português'),
(2680, 'Симпсоны', 'qRrtn9tLpnU', 'Os Simpsons em Português - Caipiras e cabos de Vassoura - PARTE 2/5', 'Novo episódio todos os dias - Subscribe NOW (Inscreva-se no canal) Temporada 21 Episódio 07 - Caipiras e cabos de Vassoura Assistir Os Simpsons: 21×07 ...', 'https://i.ytimg.com/vi/qRrtn9tLpnU/hqdefault.jpg', '2020-05-20T06:40:40Z', 'Ai Simpsons em Português'),
(2681, 'Симпсоны', 'gsCTpREM48M', 'Vote Sideshow Bob For Mayor (The Simpsons)', '', 'https://i.ytimg.com/vi/gsCTpREM48M/hqdefault.jpg', '2015-10-11T10:36:43Z', 'ThingsICantFindOtherwise'),
(2682, 'Симпсоны', 'R24MUt9KaXk', 'They begged me, BEGGED Me To Join Their Team! (The Simpsons)', 'From season 7 episode 12: Team Homer.', 'https://i.ytimg.com/vi/R24MUt9KaXk/hqdefault.jpg', '2016-01-31T04:18:22Z', 'ThingsICantFindOtherwise'),
(2683, 'Симпсоны', 'ARFQ6qwEFTE', 'Os Simpsons em Português - A Cor Amarela - PARTE 1/5', 'Novo episódio todos os dias - Subscribe NOW (Inscreva-se no canal) Temporada 21 Episódio 13 - A Cor Amarela Assistir Os Simpsons: 21×13 Dublado Nome ...', 'https://i.ytimg.com/vi/ARFQ6qwEFTE/hqdefault.jpg', '2020-05-26T07:47:03Z', 'Ai Simpsons em Português'),
(2684, 'Симпсоны', 'FQEccRJW_J8', 'Balonazo en la entrepierna - Simpsons', 'los simpsons. balonazo en la entrepierna. homer. hans topo.', 'https://i.ytimg.com/vi/FQEccRJW_J8/hqdefault.jpg', '2010-07-03T16:07:41Z', 'jaime cabrerizo'),
(2685, 'Симпсоны', 'G9CUXN82e8o', 'Die Simpsons Deutsch-Grampa auf Abwegen 1/5', 'Viel Vergnugen. Vergessen Sie nicht, sich anzumelden!', 'https://i.ytimg.com/vi/G9CUXN82e8o/hqdefault.jpg', '2020-05-25T11:25:06Z', 'Lisa Simpson Deutsch'),
(2686, 'Симпсоны', '7k3f2KKS4jE', 'I Make A Lot Of Graphs (The Simpsons)', '', 'https://i.ytimg.com/vi/7k3f2KKS4jE/hqdefault.jpg', '2015-10-26T09:18:40Z', 'ThingsICantFindOtherwise'),
(2687, 'Симпсоны', '_ZS5ccAGBcg', 'OS SIMPSONS PREVIRAM O FUTURO MAIS UMA VEZ', 'Leon e Nilce reagem a mais MEMES DA QUARENTENA! Inscreva-se! Vai ter bolo! Coisa de Nerd: https://www.youtube.com/user/coisadenerd Cadê a Chave: ...', 'https://i.ytimg.com/vi/_ZS5ccAGBcg/hqdefault.jpg', '2020-05-17T17:00:26Z', 'República Coisa de Nerd'),
(2688, 'Симпсоны', 'IIxCFsGW4io', 'The Simpsons Movie Without Context', 'https://discord.gg/rc7QM2r Follow the Mangohead Socials https://twitter.com/RealMangoHead?lang=en https://www.instagram.com/realmangohead/ ...', 'https://i.ytimg.com/vi/IIxCFsGW4io/hqdefault.jpg', '2020-05-27T23:31:11Z', 'MrMrMANGOHEAD'),
(2689, 'Симпсоны', 'sF0spcz6OL4', 'Road Rage Returns: Springfield Dam and Power Plant Trailer (The Simpsons: Hit &amp; Run Mod)', 'Event Page: https://donutteam.com/events/trickortreat2017 Download Road Rage Returns: https://donutteam.com/downloads/40/ -- Website: ...', 'https://i.ytimg.com/vi/sF0spcz6OL4/hqdefault.jpg', '2017-10-30T09:53:03Z', 'Donut Team'),
(2690, 'Симпсоны', '3eCaYzAhxow', 'Os Simpsons em Português - Um Milhão de Dolares Talvez - PARTE 1/5', 'Novo episódio todos os dias - Subscribe NOW (Inscreva-se no canal) Temporada 21 Episódio 11 - Um Milhão de Dolares Talvez Assistir Os Simpsons: 21×11 ...', 'https://i.ytimg.com/vi/3eCaYzAhxow/hqdefault.jpg', '2020-05-24T05:06:00Z', 'Ai Simpsons em Português'),
(2691, 'Футурама', '54RcEXEl8jM', 'Futurama ITA - Beh, prova a impedirmi di fare questo trasferimento....', 'AndryDX✓#Lofacciopervoi Lasciate un LIKE e ISCRIVETEVI (SUBSCRIBE) e che devo dire di più hahahah Futurama - Stagione 5 Ep.1 \"Il colpo grosso di ...', 'https://i.ytimg.com/vi/54RcEXEl8jM/hqdefault.jpg', '2019-07-11T19:09:11Z', 'Andry DX'),
(2692, 'Футурама', 'JiGsbMVdUh4', 'Futurama - Anthology of Interest II', 'Futurama - Anthology of Interest II.', 'https://i.ytimg.com/vi/JiGsbMVdUh4/hqdefault.jpg', '2020-05-26T00:13:10Z', 'Fry'),
(2693, 'Футурама', 'lQF5T13rkig', 'Futurama Ceská – Honba za svobodnou vůlí clip2', 'Česká futurama,Futurama CZ,Futurama cz epizody,Futurama cz cele epizody,Futurama cele epizody,čeké seriály,fry futurama,futurama celé díly,futurama česky ...', 'https://i.ytimg.com/vi/lQF5T13rkig/hqdefault.jpg', '2020-04-23T14:09:13Z', 'Anthony Cunningham'),
(2694, 'Футурама', '7HMvCprdtio', 'FUTURAMA - Kalte Krieger- Teil (2/2)', 'FUTURAMA - Kalte Krieger- Teil (2/2)', 'https://i.ytimg.com/vi/7HMvCprdtio/hqdefault.jpg', '2020-05-26T07:15:11Z', 'Sam zozo'),
(2695, 'Футурама', '4It6pmWScpM', 'Futurama - The Beast with a Billion Backs', 'Futurama - The Beast with a Billion Backs.', 'https://i.ytimg.com/vi/4It6pmWScpM/hqdefault.jpg', '2020-05-28T08:30:11Z', 'Fry'),
(2696, 'Футурама', 'baRoAqVKtKc', 'Futurama Ceská – Krotitelé roboduchů clip2', 'Česká futurama,Futurama CZ,Futurama cz epizody,Futurama cz cele epizody,Futurama cele epizody,čeké seriály,fry futurama,futurama celé díly,futurama česky ...', 'https://i.ytimg.com/vi/baRoAqVKtKc/hqdefault.jpg', '2020-02-05T15:26:16Z', 'JodyMMoss1'),
(2697, 'Футурама', 'U8NTDbM7u5U', 'Futurama ITA - Leela firma anche la Petizione....', 'AndryDX✓#Lofacciopervoi Lasciate un LIKE e ISCRIVETEVI (SUBSCRIBE) e che devo dire di più hahahah Futurama - Stagione 5 Ep.1 \"Il colpo grosso di ...', 'https://i.ytimg.com/vi/U8NTDbM7u5U/hqdefault.jpg', '2019-07-11T18:35:47Z', 'Andry DX'),
(2698, 'Футурама', '4rtTpRMTimY', 'FUTURAMA - Die unmenschliche Fackel - Teil (1/2)', 'FUTURAMA - Die unmenschliche Fackel - Teil (1/2)', 'https://i.ytimg.com/vi/4rtTpRMTimY/hqdefault.jpg', '2020-05-26T14:54:14Z', 'Sam zozo'),
(2699, 'Футурама', 'Jrh0B41YE0g', 'Futurama Auf Deutsch - Übertaktlos - Teil [2/2]', 'Futurama Auf Deutsch - Übertaktlos - Teil [2/2]', 'https://i.ytimg.com/vi/Jrh0B41YE0g/hqdefault.jpg', '2020-05-26T15:15:26Z', 'Huong Tram'),
(2700, 'Футурама', 'cIGDp1RvDJQ', 'Futurama - Benderama', 'Futurama - Benderama.', 'https://i.ytimg.com/vi/cIGDp1RvDJQ/hqdefault.jpg', '2020-05-28T00:41:41Z', 'ZXB'),
(2701, 'Футурама', 'YuegBpuy188', 'Futurama Ceská – Čest rodiny Farnsworthů clip6', 'Česká futurama,Futurama CZ,Futurama cz epizody,Futurama cz cele epizody,Futurama cele epizody,čeké seriály,fry futurama,futurama celé díly,futurama česky ...', 'https://i.ytimg.com/vi/YuegBpuy188/hqdefault.jpg', '2020-03-20T13:43:51Z', 'Anthony Cunningham'),
(2702, 'Футурама', 'ZOi-lZgl0UM', 'Futurama - O atraso de Fry', 'Futurama - O atraso de Fry.', 'https://i.ytimg.com/vi/ZOi-lZgl0UM/hqdefault.jpg', '2020-05-27T01:00:11Z', 'Futurama Fry'),
(2703, 'Футурама', 'F2H5R0vuSR8', 'Futurama - S06E06 - Číslo pět nežije [5/5] CZ (HD) | 6 Série', 'Další epizoda S06E07 [1/5]: https://www.youtube.com/watch?v=-BEP0lLt4pY&ab_channel=Vtipn%C3%A1Videa První část [1/5]: ...', 'https://i.ytimg.com/vi/F2H5R0vuSR8/hqdefault.jpg', '2020-04-20T18:52:35Z', 'Vtipná Videa'),
(2704, 'Футурама', 'IOznNshERso', 'Futurama ITA - Prendi la borsa!', 'Lasciate un LIKE e ISCRIVETEVI (SUBSCRIBE) e che devo dire di più hahahah Futurama - Stagione 2 Ep.4 \"Babbo Nasale\" Seguitemi per altri Video che ...', 'https://i.ytimg.com/vi/IOznNshERso/hqdefault.jpg', '2018-06-10T18:25:12Z', 'Andry DX'),
(2705, 'Футурама', 'Wn84x_yEeeg', 'Futurama - Maldito Katz!', 'Futurama - Maldito Katz!', 'https://i.ytimg.com/vi/Wn84x_yEeeg/hqdefault.jpg', '2020-05-27T01:00:12Z', 'Hazzooo Al-zurari'),
(2706, 'Футурама', '3xTS5nW-1i4', 'Futurama ITA - Siamo troppo pesanti, dovete perdere un po&#39; di peso....', 'Lasciate un LIKE e ISCRIVETEVI (SUBSCRIBE) e che devo dire di più hahahah Futurama - Stagione 4 Ep.3 \"Così fan tutti\" Seguitemi per altri Video che posterò ...', 'https://i.ytimg.com/vi/3xTS5nW-1i4/hqdefault.jpg', '2018-08-28T18:05:37Z', 'Andry DX'),
(2707, 'Футурама', 'gRsK0MudbvQ', 'Futurama - Bender Should Not Be Allowed on TV Part [2/2]', 'Futurama - Bender Should Not Be Allowed on TV Part [2/2]', 'https://i.ytimg.com/vi/gRsK0MudbvQ/hqdefault.jpg', '2020-05-27T04:15:11Z', 'Fry'),
(2708, 'Футурама', 'FGShNAt3ero', 'Futurama VF  -  7x11  - 2/5', 'Part1: https://youtu.be/7KedKJgXzbM Part2: https://youtu.be/FGShNAt3ero Part3: https://youtu.be/7O4JJR-DlcM Part4: https://youtu.be/mF5YgKOJoBk Part5: ...', 'https://i.ytimg.com/vi/FGShNAt3ero/hqdefault.jpg', '2020-05-27T19:14:41Z', 'Futurama FR'),
(2709, 'Футурама', 'UBrrbD0kwk4', 'FUTURAMA - Neutopia- Teil (2/2)', 'FUTURAMA - Neutopia- Teil (2/2)', 'https://i.ytimg.com/vi/UBrrbD0kwk4/hqdefault.jpg', '2020-05-23T14:45:10Z', 'Sam zozo'),
(2710, 'Футурама', '6ne69cN4bQ8', 'FUTURAMA español - Un faraón para recordar', 'FUTURAMA español - Un faraón para recordar.', 'https://i.ytimg.com/vi/6ne69cN4bQ8/hqdefault.jpg', '2020-05-26T00:22:40Z', 'Futurama'),
(2711, 'Футурама', 'NEyiLdkwaNo', 'Futurama - El dulce despertar de Amy (CASTELLANO)', '(T.6 E.8) ¡Síguenos en nuestro twitter! :D https://twitter.com/PlanetExpressSA ¡Canal de memes!', 'https://i.ytimg.com/vi/NEyiLdkwaNo/hqdefault.jpg', '2020-04-19T16:12:33Z', 'Planet Express'),
(2712, 'Футурама', 'ZcxVvlXl-K0', 'Futurama Ceská – Čest rodiny Farnsworthů clip3', 'Česká futurama,Futurama CZ,Futurama cz epizody,Futurama cz cele epizody,Futurama cele epizody,čeké seriály,fry futurama,futurama celé díly,futurama česky ...', 'https://i.ytimg.com/vi/ZcxVvlXl-K0/hqdefault.jpg', '2020-03-20T13:42:21Z', 'Anthony Cunningham'),
(2713, 'Футурама', 'mF5YgKOJoBk', 'Futurama VF  -  7x11  - 4/5', 'Part1: https://youtu.be/7KedKJgXzbM Part2: https://youtu.be/FGShNAt3ero Part3: https://youtu.be/7O4JJR-DlcM Part4: https://youtu.be/mF5YgKOJoBk Part5: ...', 'https://i.ytimg.com/vi/mF5YgKOJoBk/hqdefault.jpg', '2020-05-27T19:14:49Z', 'Futurama FR'),
(2714, 'Футурама', 'aX1x_UDkSow', 'Futurama ITA - Fry trascorre del tempo con Bender', 'Lasciate un LIKE e ISCRIVETEVI (SUBSCRIBE) e che devo dire di più hahahah Futurama - Stagione 2 Ep.16 \"Il gioco del Se Fossi...\" Seguitemi per altri Video ...', 'https://i.ytimg.com/vi/aX1x_UDkSow/hqdefault.jpg', '2018-07-02T17:44:26Z', 'Andry DX'),
(2715, 'Футурама', 'NevA5_jK538', 'Futurama  ITA  -  Desiderio di un quasi morto   -  3/5', 'Part1: https://youtu.be/QOm2qxhfwgQ Part2: https://youtu.be/wGidjXvlrkI Part3: https://youtu.be/NevA5_jK538 Part4: https://youtu.be/4B_owUTXo34 Part5: ...', 'https://i.ytimg.com/vi/NevA5_jK538/hqdefault.jpg', '2020-05-25T16:58:39Z', 'Futurama ITA'),
(2716, 'Футурама', 'JVL2CV1KOfQ', 'Futurama - Bender - I&#39;ll Get My Kit', 'Bender being amazing.', 'https://i.ytimg.com/vi/JVL2CV1KOfQ/hqdefault.jpg', '2012-08-25T00:07:30Z', 'Seanothan O\'Neill'),
(2717, 'Футурама', 'hpY--L9xphE', 'Futurama ITA  -   Oktoberfest   -  5/5', 'Part1: https://youtu.be/wXaKyNpd2EY Part2: https://youtu.be/NiyT7TNALH8 Part3: https://youtu.be/RLlXnyFQHVA Part4: https://youtu.be/WdnqssFgUzE Part5: ...', 'https://i.ytimg.com/vi/hpY--L9xphE/hqdefault.jpg', '2020-05-23T13:23:12Z', 'Futurama ITA'),
(2718, 'Футурама', 'j_ObJSTRn9Y', 'Futurama ITA  -  Alla ricerca del libero arbitrio  -  1/5', 'Part1: https://youtu.be/j_ObJSTRn9Y Part2: https://youtu.be/IIkhGAAkAmg Part3: https://youtu.be/UImyEVT40jo Part4: https://youtu.be/6UKENvu0Ci4 Part5: ...', 'https://i.ytimg.com/vi/j_ObJSTRn9Y/hqdefault.jpg', '2020-05-24T17:05:25Z', 'Futurama ITA'),
(2719, 'Футурама', 'orWMCYxL2Co', 'Futurama VF - 7x9 - 5/5', 'Part1: https://youtu.be/I231d0001js Part2: https://youtu.be/DgzLK9u_Fkg Part3: https://youtu.be/FFIurTVNgmc Part4: https://youtu.be/QPauLH_WYL8 Part5: ...', 'https://i.ytimg.com/vi/orWMCYxL2Co/hqdefault.jpg', '2020-05-24T19:18:28Z', 'Futurama FR'),
(2720, 'Футурама', 'L0iE7OrZk2c', 'Futurama Ceská – Zloděj na pytel clip2', 'Česká futurama,Futurama CZ,Futurama cz epizody,Futurama cz cele epizody,Futurama cele epizody,čeké seriály,fry futurama,futurama celé díly,futurama česky ...', 'https://i.ytimg.com/vi/L0iE7OrZk2c/hqdefault.jpg', '2020-04-23T14:21:30Z', 'JodyMMoss1'),
(2721, 'Футурама', '33TeefDR1g8', 'Futurama - The Miracle of Science', '', 'https://i.ytimg.com/vi/33TeefDR1g8/hqdefault.jpg', '2011-09-03T16:58:43Z', 'Torbjørn Marstein Kruke'),
(2722, 'Футурама', 'kpc4dF-0jnc', 'Футурама 2 сезон 5-6 серия.Лучшие моменты', 'Футурама 2 сезон 5-6 серия.Лучшие моменты Правообладатель - FOX.', 'https://i.ytimg.com/vi/kpc4dF-0jnc/hqdefault.jpg', '2020-05-28T04:26:08Z', 'Fun Mult'),
(2723, 'Футурама', '8sevXwz6D-M', 'Futurama ITA - Noi lo chiamiamo &quot;Videogame&quot;', 'Lasciate un LIKE e ISCRIVETEVI (SUBSCRIBE) e che devo dire di più hahahah Futurama - Stagione 2 Ep.9 \"Hai voluto il biciclope?\" Seguitemi per altri Video ...', 'https://i.ytimg.com/vi/8sevXwz6D-M/hqdefault.jpg', '2018-06-10T19:49:34Z', 'Andry DX'),
(2724, 'Футурама', '6Jd2pys9ZL4', 'Футурама ~ Пригоршня долларов #2', 'Футурама ~ Пригоршня долларов #2.', 'https://i.ytimg.com/vi/6Jd2pys9ZL4/hqdefault.jpg', '2020-05-27T20:00:03Z', 'Super Hero'),
(2725, 'Футурама', 'gAVEkvjduoI', 'Futurama Ceská – Sexuální praktiky robotů clip1', 'Česká futurama,Futurama CZ,Futurama cz epizody,Futurama cz cele epizody,Futurama cele epizody,čeké seriály,fry futurama,futurama celé díly,futurama česky ...', 'https://i.ytimg.com/vi/gAVEkvjduoI/hqdefault.jpg', '2020-03-20T13:55:19Z', 'JodyMMoss1'),
(2726, 'Футурама', '722h3-JuDEk', 'Futurama Ceská – Narodím se zítra clip3', 'Česká futurama,Futurama CZ,Futurama cz epizody,Futurama cz cele epizody,Futurama cele epizody,čeké seriály,fry futurama,futurama celé díly,futurama česky ...', 'https://i.ytimg.com/vi/722h3-JuDEk/hqdefault.jpg', '2020-04-23T14:12:00Z', 'Anthony Cunningham'),
(2727, 'Футурама', 'bZgK9vvZq7Y', 'Futurama ITA - La Cabina telefonica', 'Lasciate un LIKE e ISCRIVETEVI (SUBSCRIBE) e che devo dire di più hahahah Futurama - Stagione 2 Ep.7 \"Il male minore\" Seguitemi per altri Video che ...', 'https://i.ytimg.com/vi/bZgK9vvZq7Y/hqdefault.jpg', '2018-06-10T19:19:22Z', 'Andry DX'),
(2728, 'Футурама', 'BDAIC0CZ8wQ', 'Futurama ITA - Ci sono un sacco di Posti dove incontrare gente....', 'Lasciate un LIKE e ISCRIVETEVI (SUBSCRIBE) e che devo dire di più hahahah Futurama - Stagione 1 Ep.4 \"L\'amore perduto nello spazio\" Seguitemi per altri ...', 'https://i.ytimg.com/vi/BDAIC0CZ8wQ/hqdefault.jpg', '2019-07-17T16:30:01Z', 'Andry DX'),
(2729, 'Футурама', 'sVHV1MmHcxs', 'Futurama ITA - Welshy è stato polverizzato!', 'Lasciate un LIKE e ISCRIVETEVI (SUBSCRIBE) e che devo dire di più hahahah Futurama - Stagione 4 Ep.3 \"Così fan tutti\" Seguitemi per altri Video che posterò ...', 'https://i.ytimg.com/vi/sVHV1MmHcxs/hqdefault.jpg', '2018-08-28T17:35:14Z', 'Andry DX'),
(2730, 'Футурама', 'GrwGP8GrEK8', 'Futurama - O Silêncio dos Grampos  - Parte 2/2', 'Futurama - O Silêncio dos Grampos - Parte 2/2.', 'https://i.ytimg.com/vi/GrwGP8GrEK8/hqdefault.jpg', '2020-05-28T00:45:19Z', 'VBZXCB'),
(2731, 'Футурама', 'qZGY8TsyQSA', 'Futurama - La Última Cena (CASTELLANO)', '(T.6 E.5) ¡Síguenos en nuestro twitter! :D https://twitter.com/PlanetExpressSA ¡Canal de memes!', 'https://i.ytimg.com/vi/qZGY8TsyQSA/hqdefault.jpg', '2020-03-29T10:26:31Z', 'Planet Express'),
(2732, 'Футурама', 'YRjB06f-3U4', 'Futurama ITA - Il Codice di Bender per l&#39;Autodistruzione', 'Lasciate un LIKE e ISCRIVETEVI (SUBSCRIBE) e che devo dire di più hahahah Futurama - Stagione 4 Ep.3 \"Così fan tutti\" Seguitemi per altri Video che posterò ...', 'https://i.ytimg.com/vi/YRjB06f-3U4/hqdefault.jpg', '2018-08-28T18:08:33Z', 'Andry DX'),
(2733, 'Футурама', 'TjJEUZ5hEeg', 'Futurama ITA - Leela fammi una foto mentre vengo derubato', 'Lasciate un LIKE e ISCRIVETEVI (SUBSCRIBE) e che devo dire di più hahahah Futurama - Stagione 2 Ep.7 \"Il male minore\" Seguitemi per altri Video che ...', 'https://i.ytimg.com/vi/TjJEUZ5hEeg/hqdefault.jpg', '2018-06-10T19:17:03Z', 'Andry DX'),
(2734, 'Футурама', 'DswGmU-EWDQ', 'Futurama ITA - Bender parla con Dio', 'Lasciate un LIKE e ISCRIVETEVI (SUBSCRIBE) e che devo dire di più hahahah Futurama - Stagione 3 Ep.20 \"Il mestiere di Dio\" Seguitemi per altri Video che ...', 'https://i.ytimg.com/vi/DswGmU-EWDQ/hqdefault.jpg', '2018-08-20T18:53:39Z', 'Andry DX'),
(2735, 'Футурама', '3r7tC62vbVc', 'Futurama  ITA  -  Desiderio di un quasi morto   -  5/5', 'Part1: https://youtu.be/QOm2qxhfwgQ Part2: https://youtu.be/wGidjXvlrkI Part3: https://youtu.be/NevA5_jK538 Part4: https://youtu.be/4B_owUTXo34 Part5: ...', 'https://i.ytimg.com/vi/3r7tC62vbVc/hqdefault.jpg', '2020-05-25T16:58:48Z', 'Futurama ITA'),
(2736, 'Футурама', 'sxqVcC03Pdg', 'Futurama ITA - L&#39;Universo è Condannato....', 'AndryDX✓#Lofacciopervoi Lasciate un LIKE e ISCRIVETEVI (SUBSCRIBE) e che devo dire di più hahahah Futurama - Stagione 5 Ep.1 \"Il colpo grosso di ...', 'https://i.ytimg.com/vi/sxqVcC03Pdg/hqdefault.jpg', '2019-07-11T20:50:47Z', 'Andry DX'),
(2737, 'Футурама', '5vqn-mciyo4', 'Futurama Ceská – Honba za svobodnou vůlí clip3', 'Česká futurama,Futurama CZ,Futurama cz epizody,Futurama cz cele epizody,Futurama cele epizody,čeké seriály,fry futurama,futurama celé díly,futurama česky ...', 'https://i.ytimg.com/vi/5vqn-mciyo4/hqdefault.jpg', '2020-04-23T14:09:34Z', 'Anthony Cunningham'),
(2738, 'Футурама', '5LpU08gF0Pk', 'Futurama ITA - Wow... una specie di droga per Superpoteri da spalmare sulla pelle!', 'Lofacciopervoi Lasciate un LIKE e ISCRIVETEVI (SUBSCRIBE) e che devo dire di più hahahah Futurama - Stagione 4 Ep.8 \"Meno di eroe\" Seguitemi per altri ...', 'https://i.ytimg.com/vi/5LpU08gF0Pk/hqdefault.jpg', '2018-11-17T18:46:29Z', 'Andry DX'),
(2739, 'Футурама', 'B-tB9LAO6ho', 'Футурама ~ (Антология Интересов II) #1', 'Футурама ~ (Антология Интересов II) #1.', 'https://i.ytimg.com/vi/B-tB9LAO6ho/hqdefault.jpg', '2020-05-26T01:57:00Z', 'Super Hero'),
(2740, 'Футурама', '8lLID2_40Vk', 'VHS Companies from the 80&#39;s #407 FUTURAMA HOME VIDEO', 'Take trip down memory lane with a look at old vhs companies from the 80\'s video logos. Check out my channel for HUNDREDS more as I will keep on posting ...', 'https://i.ytimg.com/vi/8lLID2_40Vk/hqdefault.jpg', '2020-03-08T14:31:57Z', 'Little Whore Records'),
(2741, 'Моргенштарн', '59aihbzitSQ', 'FragMuvie Standoff 2! РАТАТАТАТА  МОРГЕНШТАРН!', 'Это мой первый фраг мувик в Стандофф 2! Сорри за то что не очень качество и лагает. Пожалуйста поставь ЛАЙК...', 'https://i.ytimg.com/vi/59aihbzitSQ/hqdefault.jpg', '2020-02-16T08:11:23Z', 'Gamer G'),
(2742, 'Моргенштарн', 'TWzJpwSTIz4', 'Моргенштарн компьютер', '', 'https://i.ytimg.com/vi/TWzJpwSTIz4/hqdefault.jpg', '2020-02-28T17:49:11Z', 'Micter Gamali'),
(2743, 'Моргенштарн', 'SYW2VBavq9o', 'Дима фоне чикачтча моргенштарн', '', 'https://i.ytimg.com/vi/SYW2VBavq9o/hqdefault.jpg', '2020-04-26T06:13:35Z', 'kuki BASS BUST'),
(2744, 'Моргенштарн', 'QT1CA96sybc', 'Моргенштарн песня:اینزازخبن', 'هزکزحکیخرترهرابتیتیکبنبخدخک۶گعگحل۸ل۸ل۷و؟پ.', 'https://i.ytimg.com/vi/QT1CA96sybc/hqdefault.jpg', '2020-02-18T12:47:01Z', 'megaFlicker めがfぃcけr'),
(2745, 'Моргенштарн', 'rtckvMbmSRI', 'Реакцыя на все клипы моргенштарн', 'https://www.youtube.com/user/BazhenovChannel.', 'https://i.ytimg.com/vi/rtckvMbmSRI/hqdefault.jpg', '2020-04-17T10:58:45Z', 'Just Doing'),
(2746, 'ирман', 'Qb-tVd8BlGE', 'Overwatch | Овервотч | Пока Ирман не пришел :D', 'Multistreaming with https://restream.io/ http://www.donationalerts.ru/r/akio2d.', 'https://i.ytimg.com/vi/Qb-tVd8BlGE/hqdefault.jpg', '2019-02-19T17:15:49Z', 'Akio 2D'),
(2747, 'ирман', 'mQ2PBnpVyuQ', 'Overwatch | Овервотч | Пока Ирман не пришел :D', 'Multistreaming with https://restream.io/ http://www.donationalerts.ru/r/akio2d.', 'https://i.ytimg.com/vi/mQ2PBnpVyuQ/hqdefault.jpg', '2019-02-18T19:57:32Z', 'Akio 2D'),
(2748, 'ирман', 'EupEISaOAKI', 'Ирман начало 16 сезона', '', 'https://i.ytimg.com/vi/EupEISaOAKI/hqdefault.jpg', '2016-12-03T17:45:19Z', 'Irina Maximova'),
(2749, 'ирман', 'neT2RcncyiY', 'ирман алабай спасенный с улицы', '', 'https://i.ytimg.com/vi/neT2RcncyiY/hqdefault.jpg', '2016-05-14T22:04:26Z', 'Ali Alien'),
(2750, 'ирман', '4EnlOO8Nsao', 'Магазин детской одежды «Ирман»', 'Магазин детской одежды «Ирман» https://irman.com.ua/ https://www.instagram.com/irman_company/ предлагает вниманию маленьких модниц...', 'https://i.ytimg.com/vi/4EnlOO8Nsao/hqdefault.jpg', '2020-01-09T14:25:53Z', 'Виктория Суходольская Sport and Health city'),
(2751, 'ирман', 'H3FzJR1UlUI', 'Overwatch | Овервотч | Пока Ирман не пришел :D', 'Multistreaming with https://restream.io/ http://www.donationalerts.ru/r/akio2d.', 'https://i.ytimg.com/vi/H3FzJR1UlUI/hqdefault.jpg', '2019-03-03T14:33:20Z', 'Akio 2D'),
(2752, 'ирман', 'cNj9ME_FQdo', 'Vizer560 VS ИРМАН (Случайный Герой + интерактив) Отрывок со стрима ирмана', 'Здравствуйте я Vizer560 на этом канал я записую моменты з игры overwatch В етом видео я сразился против Ирмана https://ww...', 'https://i.ytimg.com/vi/cNj9ME_FQdo/hqdefault.jpg', '2020-03-30T11:30:12Z', 'Vizer560'),
(2753, 'ирман', '4sDJQjQX2Qk', 'Ирман Германович любит танцевать ( Морево )', 'Танцы,танцы шманцы.', 'https://i.ytimg.com/vi/4sDJQjQX2Qk/hqdefault.jpg', '2009-11-29T20:44:08Z', 'TheRoboclean'),
(2754, 'ирман', 'mzkyxDjx3D4', 'Прохождение Call of Duty 4: Modern Warfare - Часть: 9 - Ирман Захаев.', 'Подписываемся на канал и обязательно ставим лайк под видео. Вам не трудно, а мне приятно. Мультиплатформенн...', 'https://i.ytimg.com/vi/mzkyxDjx3D4/hqdefault.jpg', '2017-03-03T12:13:18Z', 'RussianGamePlayer'),
(2755, 'ирман', '91EJ9k2qcJs', 'Ирман -для статуса', '', 'https://i.ytimg.com/vi/91EJ9k2qcJs/hqdefault.jpg', '2020-05-06T22:09:37Z', 'ЗИКР, ХЬЕХАМ,НАЗАМ ХЬАЖИ МЮРИДЫ'),
(2756, 'ирман', 'etxRAZecj8A', 'Бернский зенненхунд. Ирман Из Большого Дома (серый), 9 недель.', 'Бернский зенненхунд. Питомник Из Большого Дома. Помет 51. http://www.bernerhouse.ru/node/5009.', 'https://i.ytimg.com/vi/etxRAZecj8A/hqdefault.jpg', '2015-03-27T20:27:56Z', 'Bernerhouse1'),
(2757, 'ирман', 'Su13sq_6LVo', 'Ирман и Дашулька', '', 'https://i.ytimg.com/vi/Su13sq_6LVo/hqdefault.jpg', '2017-05-17T15:28:54Z', 'Дарья Мещерякова'),
(2758, 'ирман', '3BUJsZ0AZxY', 'Ирман 2019 ,💞👍👍👍', '', 'https://i.ytimg.com/vi/3BUJsZ0AZxY/hqdefault.jpg', '2019-04-26T15:03:54Z', 'Вахдат DJ 08'),
(2759, 'ирман', 'R-thIFPOkCA', 'Киса и Ирман', '', 'https://i.ytimg.com/vi/R-thIFPOkCA/hqdefault.jpg', '2016-10-15T08:00:41Z', 'Дарья Мещерякова'),
(2760, 'ирман', '-nnk21WQ5wg', 'Профайл Ирман', 'Первые скольжения по слайд-боксу.', 'https://i.ytimg.com/vi/-nnk21WQ5wg/hqdefault.jpg', '2016-02-18T04:26:04Z', 'Irina Maximova'),
(2761, 'ирман', 'xPRggohD2z8', 'Ирман vs demaster OVERVOTCH', '', 'https://i.ytimg.com/vi/xPRggohD2z8/hqdefault.jpg', '2020-04-06T14:47:57Z', 'Дани LOVE'),
(2762, 'ирман', 'Z8S9g5YiY2M', 'Бернский зенненхунд. Ирман Из Большого Дома (серый), 9 недель.', 'Бернский зенненхунд. Питомник Из Большого Дома. Помет 51. http://www.bernerhouse.ru/node/5009.', 'https://i.ytimg.com/vi/Z8S9g5YiY2M/hqdefault.jpg', '2015-03-27T20:29:09Z', 'Bernerhouse1'),
(2763, 'ирман', '3XuLi7_sdzQ', 'Спасибо Ирман за подписку !!!', 'Я фортнайтер !Саня меня зовут. https://discord.gg/WKJjYV https://www.instagram.com/invites/contact/?i=166kvf86k9wc8&utm_content=4n92p8d.', 'https://i.ytimg.com/vi/3XuLi7_sdzQ/hqdefault.jpg', '2019-10-08T18:51:31Z', 'D3Nnn фортнайт'),
(2764, 'ирман', 'fj_7iWjCN5Q', 'Анак и Ирман в турнире по  Overwatch - Комментирую', 'Хочешь смотреть мои стримы в хорошем качестве и в реальном времени? Подписывайся на Мой ТВИЧ   https://www.twitch...', 'https://i.ytimg.com/vi/fj_7iWjCN5Q/hqdefault.jpg', '2020-04-03T12:00:31Z', 'DemonHost'),
(2765, 'ирман', 'IeUPPCg8v24', 'Спасибо Ирман за подписку !!!', 'Я фортнайтер !Саня меня зовут. https://discord.gg/WKJjYV https://www.instagram.com/invites/contact/?i=166kvf86k9wc8&utm_content=4n92p8d.', 'https://i.ytimg.com/vi/IeUPPCg8v24/hqdefault.jpg', '2019-10-06T17:51:45Z', 'D3Nnn фортнайт'),
(2766, 'ирман', 'CZny-vfEeZY', 'Сказочная тайга. Исполняет Ирман.', '', 'https://i.ytimg.com/vi/CZny-vfEeZY/hqdefault.jpg', '2015-09-24T05:32:06Z', 'Tatiana Klochkova'),
(2767, 'ирман', '-WWP0LbBmgY', '&quot;ROCKET LEAGUE&quot; Фортнайт, Новая мини-игра [Творческий режим] Гал, Ял, Лит, Ирман', 'Если понравилось видео - ставь и жми Мой тег поддержки автора: Galandski \"ROCKET LEAGUE\" ФОРТНАЙТ НОВАЯ МИНИ-ИГРА...', 'https://i.ytimg.com/vi/-WWP0LbBmgY/hqdefault.jpg', '2019-03-23T13:05:38Z', 'Остров Гала [Galandski]'),
(2768, 'ирман', '2bI9hYzx05Y', 'ИРМАН - НАРЕЗКА ЗА ОКТЯБРЬ по OVERWATCH', 'Стримы каждый день в 18:00 на ютубе, не пропускай! #overwatch #нарезка #октябрь #ирман.', 'https://i.ytimg.com/vi/2bI9hYzx05Y/hqdefault.jpg', '2019-11-11T11:30:01Z', 'Irman'),
(2769, 'ирман', 'E3tpnEN41Fs', 'Sprite пиарит Overwatch в России и СНГ | Ирман на Игромир 2019', 'Стрим в пятницу в 16:00 по МСК по этой ссылке: https://www.youtube.com/watch?v=fjfWnEZKigA Сходка в субботу в 13:00 по МСК возле стенда...', 'https://i.ytimg.com/vi/E3tpnEN41Fs/hqdefault.jpg', '2019-10-01T15:03:40Z', 'Irman'),
(2770, 'ирман', 'FCY0JlQJbFA', 'Кто выбьет больше лег Ирман или ZIDKEY ?', 'Играть в Overwatch: https://playoverwatch.com/ru-ru/ Ютуб Канал Зидкея: https://www.youtube.com/user/ZIDKEY Твич Зидкей: https://www.twitch.tv/zidkey ...', 'https://i.ytimg.com/vi/FCY0JlQJbFA/hqdefault.jpg', '2019-12-16T03:15:00Z', 'Irman'),
(2771, 'ирман', 'EXb4j4E5NYY', 'Ирман - Планы на 2020 и что было в 2019 в Overwatch | С каналом | Про Overwatch 2', 'Твич: https://www.twitch.tv/irmanplay Стримы каждый день после 18:00 Мои ссылки: - Вк: https://vk.com/id6098838 - Инста: https://www.instagram.com/i_r_m_ ...', 'https://i.ytimg.com/vi/EXb4j4E5NYY/hqdefault.jpg', '2019-12-31T16:06:59Z', 'Irman'),
(2772, 'ирман', 'IIiBbza0OM0', 'Рипер курильщика [ Overwatch Ирман ]', 'Поддержать стримера: https://www.donationalerts.ru/r/irmanplay Спонсорская подписка на канал: ...', 'https://i.ytimg.com/vi/IIiBbza0OM0/hqdefault.jpg', '2019-09-23T17:51:53Z', 'Irman'),
(2773, 'ирман', 'OuJ3Cjb1DWw', '*ЭПИК* ГОНКИ В ФОРТНАЙТ! (ft. Ирман &amp; Ял) — Fortnite Battle Royale', 'Регистрируйся и играй в Fortnite ➔ http://bit.ly/goplayfortnite Если вам понравился видос - лайк , подписка, колокольчик...', 'https://i.ytimg.com/vi/OuJ3Cjb1DWw/hqdefault.jpg', '2018-08-28T11:11:43Z', 'Доми'),
(2774, 'ирман', '_W5opeK00_Y', 'ИРМАН vs ZIDKEY [Overwatch Случайная Дуэль]', 'Канал Zidkey: https://www.youtube.com/user/ZIDKEY Твич Зидкея: https://www.twitch.tv/zidkey Мой Твич: https://www.twitch.tv/irmanplay Стримы каждый день.', 'https://i.ytimg.com/vi/_W5opeK00_Y/hqdefault.jpg', '2019-12-25T15:00:13Z', 'Irman'),
(2775, 'ирман', 'b8SKr78dCxo', 'Ирман смотрит Моменты Overwatch #287 от Rapida', 'Твич: https://www.twitch.tv/irmanplay Стримы каждый день после 18:00 Оригинал Overwatch Moments #287 ...', 'https://i.ytimg.com/vi/b8SKr78dCxo/hqdefault.jpg', '2019-12-24T15:30:10Z', 'Irman'),
(2776, 'ирман', 'DAX-pTGIoh4', 'Ирман смотрит 300 выпуск Рапиды - Концовка огонь!', 'Твич: https://www.twitch.tv/irmanplay Оригинал Overwatch Moments #300 от Rapida: https://www.youtube.com/watch?v=TTFdwoZY6ts Мои ссылки: - Вк: ...', 'https://i.ytimg.com/vi/DAX-pTGIoh4/hqdefault.jpg', '2020-02-24T17:42:36Z', 'Irman'),
(2777, 'ирман', 'lGBtWbXm0x4', '&quot;ПРЯТКИ&quot; РАЗ, ДВА, ТРИ - ГАЛА НЕ НАЙТИ! Ял, Ирман, Доми, Лит, Рав [Творческий Режим]', 'Если понравилось видео - ставь и жми Мой тег поддержки автора: Galandski Название карты Frosty Hides, а строила...', 'https://i.ytimg.com/vi/lGBtWbXm0x4/hqdefault.jpg', '2019-01-28T11:00:08Z', 'Остров Гала [Galandski]'),
(2778, 'ирман', 'Qb1xSLbyA8A', 'Overwatch vs Blackwatch! Ирман VS Дарки', 'В этом видео мы вместе с Ирманом поиграем в кастомку Overwatch vs Blackwatch! Irman будет играть за команду Овервотч,...', 'https://i.ytimg.com/vi/Qb1xSLbyA8A/hqdefault.jpg', '2019-02-15T13:15:01Z', 'Дарки'),
(2779, 'ирман', '6_bJdw4Fl44', 'Кто выбьет больше лег Litput Ирман или Дарки?', 'канал Литпут: https://www.youtube.com/user/Litput канал Darky: https://www.youtube.com/channel/UCTAXbzIIQ_EtjHogfL7vHSQ Битва контейнеров в игре ...', 'https://i.ytimg.com/vi/6_bJdw4Fl44/hqdefault.jpg', '2018-08-29T17:48:33Z', 'Irman'),
(2780, 'ирман', 'chmguMhq_lg', 'БЕСКОНЕЧНЫЕ УЛЬТИМЕЙТЫ OVERWATCH [Схватка: Ирман VS Дарки]', 'Играем схватку с бесконечными ультимейтами вместе с ютубером Darky - кто победит? ╔═══════════════...', 'https://i.ytimg.com/vi/chmguMhq_lg/hqdefault.jpg', '2019-02-15T14:52:41Z', 'Irman'),
(2781, 'ирман', 'VXLVRJjRcyM', 'BATTLEFIELD 1 Ирман, это тебе не OverWatch', 'ДЛЯ СПОНСОРОВ КАНАЛА http://www.donationalerts.ru/r/xepcon. мы в контакте http://vk.com/club72831868 ГОЛОСОВАЯ...', 'https://i.ytimg.com/vi/VXLVRJjRcyM/hqdefault.jpg', '2017-01-18T17:53:23Z', 'Жека Херсон'),
(2782, 'ирман', 'cUMoJt27eoE', 'Ирман на Игромире 2017', 'Мой \"Влог\" с игромира 2017 Мой паблик VK: https://vk.com/irman_play Сотрудничество: irmanmain@gmail.com Первая фоновая музыка: https://w...', 'https://i.ytimg.com/vi/cUMoJt27eoE/hqdefault.jpg', '2017-10-10T14:45:20Z', 'Irman'),
(2783, 'ирман', 'BOJZtPE7Ya8', 'Ирман смотрит Моменты Overwatch #286 от Rapida', 'Твич: https://www.twitch.tv/irmanplay Стримы каждый день после 18:00 Оригинал: https://www.youtube.com/watch?v=St_Hst3FsS8 Мои ссылки: - Вк: https://vk ...', 'https://i.ytimg.com/vi/BOJZtPE7Ya8/hqdefault.jpg', '2019-12-20T16:14:46Z', 'Irman'),
(2784, 'ирман', 'V0kw28w6b8w', 'Overwatch - Ирман против Сфори [Новый пейнтбол за ЭШ]', 'Соревнуюсь в схватке против Сфори Его канал: https://www.youtube.com/channel/UCgVllsQ1ave-YgxX-Jm4dIw - Мой инстаграм: ...', 'https://i.ytimg.com/vi/V0kw28w6b8w/hqdefault.jpg', '2018-12-22T07:00:08Z', 'Irman'),
(2785, 'ирман', 'd3u4_MsAkpw', 'Трейлер Overwatch 2 | «Точка отсчета» - Реакция Ирмана', 'Смотрю трейлер Overwatch 2 прямо в прямом эфире с Blizzcon.', 'https://i.ytimg.com/vi/d3u4_MsAkpw/hqdefault.jpg', '2019-11-01T19:40:49Z', 'Irman'),
(2786, 'ирман', 'L3X5ZvQXCIk', 'КТО ПОБЕДИТ? СФОРИ ИЛИ ИРМАН В СЛУЧАЙНОЙ ДУЭЛИ OVERWATCH', 'Против меня дуэлился Sfory, вот его канал: https://www.youtube.com/channel/UCgVllsQ1ave-YgxX-Jm4dIw Каждый день стримлю на http://streamcraft.com/u ...', 'https://i.ytimg.com/vi/L3X5ZvQXCIk/hqdefault.jpg', '2018-10-23T08:58:39Z', 'Irman'),
(2787, 'ирман', 'jmPmFGinSlo', 'Ирман смотрит Короткометражка «Встреча старых друзей» | Overwatch', 'Смотрел на Blizzcon 2018, сейчас решил посмотреть на русском вместе с вами! ╔══════════════════════...', 'https://i.ytimg.com/vi/jmPmFGinSlo/hqdefault.jpg', '2018-11-08T15:26:46Z', 'Irman'),
(2788, 'ирман', 'RspozRauYoQ', 'BATTLEFIELD 1 Ирман, это тебе не OverWatch ЧАСТЬ 2', 'ДЛЯ СПОНСОРОВ КАНАЛА http://www.donationalerts.ru/r/xepcon. мы в контакте http://vk.com/club72831868 ГОЛОСОВАЯ...', 'https://i.ytimg.com/vi/RspozRauYoQ/hqdefault.jpg', '2017-01-20T03:27:36Z', 'Жека Херсон'),
(2789, 'ирман', 'K3tKNJ7aGiQ', '4 ключа BATTLEFIELD 4 РОЗЫГРЫШ petrento ИРМАН', 'Для участия в розыгрыше нужно: 1. Поставить лайк под этим роликом 2. Подписаться на мой канал https://www.youtube.com/user/p...', 'https://i.ytimg.com/vi/K3tKNJ7aGiQ/hqdefault.jpg', '2016-05-13T15:08:38Z', 'Petrento Games'),
(2790, 'ирман', 't8RIBYuTmHE', 'Сомбра хакнула POTG в Overwatch', 'Сотрудничество: irmanmain@gmail.com Likecoin – Coins for Likes: https://likecoin.pro/@irman/ayu8/gaw2.', 'https://i.ytimg.com/vi/t8RIBYuTmHE/hqdefault.jpg', '2018-03-19T18:59:45Z', 'Irman'),
(2791, 'ирман', 'fgFtuHPl8po', 'Ирман смотрит Лучшие Моменты Rapida за 2019 год', 'Твич: https://www.twitch.tv/irmanplay Стримы каждый день после 18:00 Оригинал Overwatch Best WTF Moments 2019 ...', 'https://i.ytimg.com/vi/fgFtuHPl8po/hqdefault.jpg', '2019-12-30T16:00:10Z', 'Irman'),
(2792, 'ирман', 'BizvSGQvSGg', 'АНРИАЛ ИГРЫ VS ИРМАН [Учу ютубера играть в Overwatch]', 'Со мной играл Анриал Игры: https://www.youtube.com/user/AnrialGame Так же вот еще его другие каналы, кому интересно: 1+ Анриал...', 'https://i.ytimg.com/vi/BizvSGQvSGg/hqdefault.jpg', '2018-11-08T05:58:28Z', 'Irman'),
(2793, 'ирман', 'EqvlsqKaxTI', 'Реакция Ирмана на Сигму - Нового героя Overwatch', 'Купить Overwatch: https://eu.shop.battle.net/ru-ru/product/overwatch?p=20991 Смотрим наверное самоую эпичную историю персонажа... У меня...', 'https://i.ytimg.com/vi/EqvlsqKaxTI/hqdefault.jpg', '2019-07-22T18:42:22Z', 'Irman'),
(2794, 'ирман', 'o6cqUoYwDqE', 'ИРМАН VS ДЕМАСТЕР [Overwatch Случайная Дуэль]', 'Канал Demaster: https://www.youtube.com/user/demaster59ru Второй канал Дема: https://www.youtube.com/user/demasterFeed В основном Демастер ...', 'https://i.ytimg.com/vi/o6cqUoYwDqE/hqdefault.jpg', '2018-10-29T08:15:24Z', 'Irman'),
(2795, 'ирман', '-W5KDs5h4fA', 'Дичайший комбэк. Когда Ориса с Бастионом начинают фланговать. дуо с Ирман — Overwatch', 'Кусочек стрима по Overwatch в компании Ирмана, довольно забавный матч с вообще не стандартным сетапом из Орисы,...', 'https://i.ytimg.com/vi/-W5KDs5h4fA/hqdefault.jpg', '2019-01-03T15:01:42Z', 'HFA');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Mir', 'pr@mail.ru', NULL, '$2y$10$SDLB5tRoyAClpHBaUYkCjuoKljtVgzfuK9YdSaW8tgpGYZ0OYj6eq', NULL, '2020-05-18 08:26:19', '2020-05-18 08:26:19'),
(2, 'vlad', 'vlad@vlad', NULL, '$2y$10$w1x6Z2bE.qEnuQBWAnJRr.c5jkAvcQV8Oi8GRN7mLYmvIYgGUlRvK', NULL, '2020-05-18 10:15:21', '2020-05-18 10:15:21'),
(3, 'Vlad', 'vladik@vladik', NULL, '$2y$10$Fpq1uqCe3cSIktMGBra9.eVa2yQqX9dnbZDumZzmTt8AdjKd/yWm.', NULL, '2020-05-25 09:55:07', '2020-05-25 09:55:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `query_searches`
--
ALTER TABLE `query_searches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `query_searches`
--
ALTER TABLE `query_searches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2796;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
