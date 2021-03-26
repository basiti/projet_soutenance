-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 26 mars 2021 à 20:05
-- Version du serveur :  10.4.16-MariaDB
-- Version de PHP : 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `loginsystem`
--

-- --------------------------------------------------------

--
-- Structure de la table `reservation`
--

CREATE TABLE `reservation` (
  `reserv_id` int(11) NOT NULL,
  `f_name` text NOT NULL,
  `l_name` text NOT NULL,
  `num_guests` int(11) NOT NULL,
  `num_tables` int(11) NOT NULL,
  `rdate` date NOT NULL,
  `time_zone` text NOT NULL,
  `telephone` text NOT NULL,
  `comment` mediumtext NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_fk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `reservation`
--

INSERT INTO `reservation` (`reserv_id`, `f_name`, `l_name`, `num_guests`, `num_tables`, `rdate`, `time_zone`, `telephone`, `comment`, `reg_date`, `user_fk`) VALUES
(62, 'Bill', 'Fotos', 10, 4, '2019-05-30', '12:00 - 16:00', '21096321232', 'fsdfsd', '2019-05-04 23:38:47', 28),
(64, 'Bill', 'Foto', 6, 2, '2019-05-20', '12:00 - 16:00', '1321312', 'fdsfsd', '2019-05-04 23:43:58', 28),
(71, 'Bill', 'Fotos', 10, 4, '2019-05-14', '12:00 - 16:00', '2129632123', 'fsfsd', '2019-05-05 00:51:50', 28),
(72, 'Bill', 'Foto', 10, 4, '2019-05-15', '16:00 - 20:00', '2109632123', 'fsfsfsd', '2019-05-05 00:52:09', 28),
(73, 'Bill', 'dsadsadas', 30, 14, '2019-05-22', '12:00 - 16:00', '2109632123', 'dsadsadas', '2019-05-05 00:52:39', 28),
(74, 'Bill', 'Fotos', 6, 2, '2019-05-10', '12:00 - 16:00', '2129632123', '312312312', '2019-05-05 00:54:08', 28),
(75, 'Bill', 'Fotos', 6, 2, '2019-05-10', '16:00 - 20:00', '2109632123', '', '2019-05-05 00:54:40', 28),
(76, 'Bill', 'Fotos', 1, 1, '2019-05-24', '12:00 - 16:00', '2109632123', 'sfsdfsd', '2019-05-06 23:28:11', 28),
(77, 'abdul', 'yussuf', 3, 1, '2021-03-26', '12h00 - 16h00', '1111111111', 'placali', '2021-03-26 00:51:42', 35),
(78, 'kader', 'diarra', 5, 2, '2021-03-27', '16h00 - 20h00', '4455667788', 'garba', '2021-03-26 15:20:25', 37);

-- --------------------------------------------------------

--
-- Structure de la table `role`
--

CREATE TABLE `role` (
  `role_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `role`
--

INSERT INTO `role` (`role_id`) VALUES
(1),
(2),
(3);

-- --------------------------------------------------------

--
-- Structure de la table `schedule`
--

CREATE TABLE `schedule` (
  `schedule_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `open_time` time NOT NULL DEFAULT '12:00:00',
  `close_time` time NOT NULL DEFAULT '00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `schedule`
--

INSERT INTO `schedule` (`schedule_id`, `date`, `open_time`, `close_time`) VALUES
(6, '2019-05-15', '03:11:00', '11:11:00'),
(7, '2019-05-16', '01:00:00', '01:00:00'),
(8, '2019-05-18', '02:01:00', '15:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `tables`
--

CREATE TABLE `tables` (
  `tables_id` int(11) NOT NULL,
  `t_date` date NOT NULL,
  `t_tables` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `tables`
--

INSERT INTO `tables` (`tables_id`, `t_date`, `t_tables`) VALUES
(6, '2019-05-17', 5),
(7, '2019-05-15', 10),
(8, '2019-05-10', 2);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `uidUsers` tinytext NOT NULL,
  `emailUsers` tinytext NOT NULL,
  `pwdUsers` longtext NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `role_id` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`user_id`, `uidUsers`, `emailUsers`, `pwdUsers`, `reg_date`, `role_id`) VALUES
(26, 'kappa', 'kapa@in.com', '$2y$10$AXUubKPLqRUX1DeorQ3AGOsBey7oaSNPF892EUR96unf..h25rsYq', '2019-04-30 19:51:07', 1),
(27, 'kappa1', 'ka11pa@in.com', '$2y$10$/VK5CmjZavvC4gdv3WFk5u.Th5luQTfpzigiYPSryoVdULSE57A.a', '2019-04-30 20:18:57', 1),
(28, 'kappa2', 'kappa2@hotmail.com', '$2y$10$jfiG7gFvyQo..Cx1ZwktaOcs.83Zhsn0fkvq.9CvQCRA4Ognb/cBK', '2019-04-30 20:46:20', 2),
(29, 'ddsa', 'kapa@in.comq', '$2y$10$sH8sr2sI//qD5bg/D/sGeuDYb3COyUEwvNCKTLBfWUitVi2s/Z0ZG', '2019-05-01 00:25:37', 1),
(30, 'kappakeepo', '1kapa@in.com', '$2y$10$ONn5KIyEJ.iyFKQIZVHjiurhibs/udkh6W8BLqz1Anj/z9j2VbL6y', '2019-05-01 00:37:43', 1),
(31, 'kappakeepo12', 'kap11a@in.com', '$2y$10$WZjlyFoTvyAy/loojjLiE.0Ekka5nwcfAUnwIGM2FaR0g11ieVjeq', '2019-05-02 21:54:09', 1),
(32, 'fwtis', 'kappa1@in.gr', '$2y$10$3rZoKKI5idzOeRK.YUfcwe/7bL66dkU0o54w2uQ/PWpFPYR7T/Zk2', '2019-05-03 01:11:03', 1),
(33, 'kopelitsoua', 'effgfdgfdg@hotmail.com', '$2y$10$Ha0vNgl399uQveyAsp.MyuKteq9ZXZRH1yZ7XY2KZXU1O0HiQ0.CK', '2019-05-03 18:05:05', 1),
(34, 'lolas', 'lolas@in.gr', '$2y$10$Fgzedyphz9nYpLkXaGOc2u.K2SZby5m5t23Uo/3u/4kC8a6Uf9xTe', '2019-05-05 00:59:10', 1),
(35, 'abdul', 'abdul@gmail.com', '$2y$10$A5yTNAVykBKLNnF66V8h4e579X9W1hTsJyOKkXLQ5n8tDmX1fu9S.', '2021-03-26 00:50:25', 1),
(36, 'korotoum', 'korotoum@gmail.com', '$2y$10$/zjTaetr4TjO2WTfZ8oaU.G67ZflydEMUR6HLHKCy77kwE/raSvh.', '2021-03-26 15:05:13', 1),
(37, 'kader', 'kader@gmail.com', '$2y$10$cwpFjuvxN5yWFm.kufnR.uQSdn051TQa3YP91gWV4/hrznRL5t.9K', '2021-03-26 15:18:19', 1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`reserv_id`),
  ADD KEY `users_fk` (`user_fk`);

--
-- Index pour la table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`role_id`),
  ADD KEY `role_id` (`role_id`);

--
-- Index pour la table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`schedule_id`);

--
-- Index pour la table `tables`
--
ALTER TABLE `tables`
  ADD PRIMARY KEY (`tables_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `role_id` (`role_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `reserv_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT pour la table `role`
--
ALTER TABLE `role`
  MODIFY `role_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `schedule`
--
ALTER TABLE `schedule`
  MODIFY `schedule_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `tables`
--
ALTER TABLE `tables`
  MODIFY `tables_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `idusers` FOREIGN KEY (`user_fk`) REFERENCES `users` (`user_id`);

--
-- Contraintes pour la table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`) ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
