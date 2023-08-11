-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : db
-- Généré le : ven. 11 août 2023 à 15:20
-- Version du serveur : 8.0.33
-- Version de PHP : 8.1.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `association`
--

-- --------------------------------------------------------

--
-- Structure de la table `donors`
--

CREATE TABLE `donors` (
  `id` int NOT NULL,
  `surname` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `address` varchar(70) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `e_mail` varchar(100) NOT NULL,
  `amount` int NOT NULL,
  `date` timestamp(6) NOT NULL,
  `comment` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `donors`
--

INSERT INTO `donors` (`id`, `surname`, `name`, `address`, `e_mail`, `amount`, `date`, `comment`) VALUES
(1, 'Mikelson', 'Hal', 'ville des vikings', 'hal.mik@vikingsenfolie.com', 10, '2023-07-28 15:01:12.000000', 'I don\'t know what to write...'),
(13, 'Zal', 'Har', '4 rue des vaches', 'zal.har@vaches.com', 13, '2023-08-06 18:54:01.000000', 'Hem... What could I say ?'),
(14, 'Sage', 'Raine', 'rue de Symphonia', 'raine.sage@tos.com', 13, '2023-08-06 19:12:35.000000', ''),
(15, 'Zaph', 'Yra', '13 rue du Chêne violet', 'zaph.yra@itsworking.com', 31, '2023-08-07 15:59:57.000000', 'Haha! It\'s a success!'),
(16, 'Lebeauheaume', 'Rodrick', 'avenue des douves, Le Grand Château', 'rod.lbh@medieval-dynasty.com', 16, '2023-08-08 17:55:38.000000', 'Quand j\'étais jeune, ça n\'existait pas tous ces problèmes! On réglait tout à l\'épée ou avec une bonne masse d\'armes... tout se perd aujourd\'hui...'),
(17, 'Kenobi', 'Obi-Wan', 'Tatooine', 'imamasternotyou@masterjedi.com', 107, '2023-08-08 18:07:21.000000', 'Hello there!');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `donors`
--
ALTER TABLE `donors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `donors`
--
ALTER TABLE `donors`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
