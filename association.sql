-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : db
-- Généré le : mer. 23 août 2023 à 19:21
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
  `surname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `address` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `e_mail` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
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
(17, 'Kenobi', 'Obi-Wan', 'Tatooine', 'imamasternotyou@masterjedi.com', 107, '2023-08-08 18:07:21.000000', 'Hello there!'),
(18, 'Le Nain', 'Puisque je vous dis que j\'ai pas de prénom', 'Dans les mines, là où on est seuls et tranquilles loin de toutes les créatures qui boivent de l\'eau', 'questcequonestbiensansleselfes@soifards.com', 0, '2023-08-23 18:52:57.000000', 'Faudrait pas abuser sur le montant du don non plus. Il n\'y a même pas d\'histoire d\'elfes et d\'orcs qui se massacrent dans une taverne. Je vais retourner manger des chiantos'),
(19, 'Mermnades', 'Crésus', 'Sardes, Lydie', 'richecomme@moimeme.com', 1000000000, '2023-08-23 18:57:33.000000', 'Je possède des thunes, je suis à l\'aise financièrement, je ne me plains pas, les affaires marchent en ce moment.'),
(20, 'McDohl', 'Théo', 'Chateau en ruine près du lac', 'forthepeaceofthekingdom@suikodenI.com', 108, '2023-08-23 19:02:46.000000', 'Parce que chaque étoile a donné de sa poche'),
(21, 'Thechild', 'Niko', 'Entre 2 mondes', 'oneshot@solstice.com', 35, '2023-08-23 19:07:58.000000', 'Peut être que ces IA sont tristes d\'êtres bloquées dans des ordinateurs. Elles mériteraient aussi de vivre une vie tranquille avec leur famille.'),
(22, 'L\'elfe', 'C\'est trop compliqué on dirait de la stratélique', 'Dans les bois, parce que j\'aime la nature et coiffer des poneys', 'loreliane@nhbk.com', 42000, '2023-08-23 19:17:49.000000', 'Avec Loréliane mes cheveux volent dans la brise comme des plumes de papillons');

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
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
