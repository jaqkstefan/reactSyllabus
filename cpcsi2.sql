-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  Dim 19 mai 2019 à 23:06
-- Version du serveur :  10.1.38-MariaDB
-- Version de PHP :  7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `cpcsi2`
--

-- --------------------------------------------------------

--
-- Structure de la table `tokens`
--

CREATE TABLE `tokens` (
  `id` bigint(20) NOT NULL,
  `token` varchar(70) NOT NULL,
  `refresh_token` datetime NOT NULL,
  `revoquer` tinyint(1) DEFAULT '0',
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `tokens`
--

INSERT INTO `tokens` (`id`, `token`, `refresh_token`, `revoquer`, `createdAt`) VALUES
(1, 'u7qs7t86v9', '0000-00-00 00:00:00', 0, '2019-05-13 23:16:35'),
(4, 'e5jstqx8wtu', '0000-00-00 00:00:00', 0, '2019-05-13 23:17:27'),
(5, 'ui7jqslpwe', '0000-00-00 00:00:00', 0, '2019-05-15 00:35:52'),
(6, '93ob3ee262s', '0000-00-00 00:00:00', 0, '2019-05-15 00:40:56'),
(7, '7b9wqsaa1by', '0000-00-00 00:00:00', 0, '2019-05-15 00:43:09'),
(8, 'jqhvyz0q0ar', '0000-00-00 00:00:00', 0, '2019-05-15 00:48:24'),
(9, 'ujh3z7fn6vj', '0000-00-00 00:00:00', 0, '2019-05-15 00:52:01'),
(10, '7ab9p3jxz6l', '0000-00-00 00:00:00', 0, '2019-05-15 00:53:36'),
(11, 'oa8ox3ksbi', '0000-00-00 00:00:00', 0, '2019-05-15 00:56:34'),
(12, 'todz0ycrpoj', '0000-00-00 00:00:00', 0, '2019-05-15 01:00:06'),
(13, 'i8wb12i057', '0000-00-00 00:00:00', 0, '2019-05-15 01:03:38'),
(14, '8xtbdkwbjer', '0000-00-00 00:00:00', 0, '2019-05-15 01:07:13'),
(15, 'uir6ytpkru', '0000-00-00 00:00:00', 0, '2019-05-16 14:01:27'),
(16, 'i6nz255gj7', '0000-00-00 00:00:00', 0, '2019-05-16 14:04:08'),
(17, 'qnl5pvurysb', '0000-00-00 00:00:00', 0, '2019-05-16 14:06:43'),
(18, 'pr3hfz0e0s', '0000-00-00 00:00:00', 0, '2019-05-16 14:07:34'),
(19, 'r4yxtwxdei', '0000-00-00 00:00:00', 0, '2019-05-16 14:07:54'),
(20, '97woe08hlt7', '0000-00-00 00:00:00', 0, '2019-05-16 14:10:04'),
(21, '6zpfhhwx1s', '0000-00-00 00:00:00', 0, '2019-05-16 14:11:38'),
(22, 'bkodr22jlff', '0000-00-00 00:00:00', 0, '2019-05-16 14:13:13'),
(23, 'ow4rcromifl', '0000-00-00 00:00:00', 0, '2019-05-16 14:14:03'),
(24, 'n8aijjd5jic', '0000-00-00 00:00:00', 0, '2019-05-16 14:15:53'),
(25, 'f1o5qv6iisu', '0000-00-00 00:00:00', 0, '2019-05-16 23:40:53'),
(26, 'azszqbkcb98', '0000-00-00 00:00:00', 0, '2019-05-17 00:10:19'),
(27, '2nfarzng13e', '0000-00-00 00:00:00', 0, '2019-05-17 00:11:36'),
(28, '8ec7a3sh9o', '0000-00-00 00:00:00', 0, '2019-05-17 00:34:43'),
(29, 'g6bv2gczgwe', '0000-00-00 00:00:00', 0, '2019-05-17 00:49:39'),
(30, 's5c33jzpy38', '0000-00-00 00:00:00', 0, '2019-05-17 01:12:09'),
(31, 'fs4lv2f3s2v', '0000-00-00 00:00:00', 0, '2019-05-17 01:17:36'),
(32, 'dz9u9luwb45', '0000-00-00 00:00:00', 0, '2019-05-17 01:19:00'),
(33, 'yaihwp3n6i', '0000-00-00 00:00:00', 0, '2019-05-17 01:19:20');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `firstname` varchar(25) NOT NULL,
  `lastname` varchar(25) NOT NULL,
  `Email` varchar(150) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `date_naissance` date NOT NULL,
  `sexe` varchar(1) NOT NULL DEFAULT '0',
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `Email`, `Password`, `date_naissance`, `sexe`, `createdAt`) VALUES
(1, 'stefan', 'prince', 'stef@mail.com', '$2a$10$wk.REShaZrEhy', '1998-02-12', 'M', '2019-05-13 23:16:35'),
(11, 'test', 'test_surname', 'tst@mail.com', '$2a$10$gfH1D3LXQZH/z', '1998-02-12', 'M', '2019-05-13 23:17:27'),
(12, 'toto', 'toto_surn', 'toto@mail.com', '$2a$10$9iiO4DPn.7W4T', '1998-02-12', 'M', '2019-05-15 00:35:52'),
(13, 'tata', 'tat_surn', 'tata@mail.com', '$2a$10$PoHugofky/Hzf', '1998-02-12', 'f', '2019-05-15 00:40:56'),
(14, 'tout', 'tout_surn', 'tout@mail.com', '$2a$10$dBc64nii.WFp0', '1998-02-12', 'm', '2019-05-15 00:43:08'),
(15, 'timp', 'ttimpt_surn', 'timp@mail.com', '$2a$10$vxKuWFyF32p/S', '1998-02-12', 'm', '2019-05-15 00:48:23'),
(16, 'tyuio', 'tyuio_surn', 'tyuio@mail.com', '$2a$10$UzExxahUj4DaO', '1998-02-12', 'f', '2019-05-15 00:52:00'),
(17, 'poiu', 'poiu_s', 'poiu@mail.com', '$2a$10$675H.LPr3Sdvf', '1998-02-12', 'm', '2019-05-15 00:53:36'),
(18, 'poiumoiu', 'poiumoiu_s', 'popoiumoiuu@mail.com', '$2a$10$v6CFBNupkkFSC', '1998-02-12', 'm', '2019-05-15 00:56:33'),
(19, 'mout', 'mout_sur', 'mout@mail.com', '$2a$10$09WZXa/gNpF8p', '1998-02-12', 'f', '2019-05-15 01:00:06'),
(20, 'pote', 'pote_sur', 'pote@mail.com', '$2a$10$PRUgua5EoDppr', '1998-02-12', 'm', '2019-05-15 01:03:38'),
(21, 'tworoads', 'tworoads_surname', 'tworoads@mail.com', '$2a$10$Zt.kQXYa1xc6P', '1998-02-13', 'f', '2019-05-15 01:07:13'),
(22, 'benie', 'benie_surname', 'bene@mail.com', '$2a$10$M4tDMvS3GYREA', '1998-02-17', 'm', '2019-05-16 23:40:52');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `tokens`
--
ALTER TABLE `tokens`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `tokens`
--
ALTER TABLE `tokens`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
