-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : ven. 16 déc. 2022 à 08:01
-- Version du serveur : 5.7.36
-- Version de PHP : 8.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `portfolio`
--

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

CREATE TABLE `article` (
  `idArticle` int(11) NOT NULL,
  `titreArticle` varchar(50) NOT NULL,
  `imgArticle` varchar(255) NOT NULL,
  `descArticle` varchar(255) NOT NULL,
  `dateArticle` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`idArticle`, `titreArticle`, `imgArticle`, `descArticle`, `dateArticle`) VALUES
(1, 'TEN THE BEST APP IN 2017', '..\\assets\\images\\blog\\airbnb-2384737_1920.jpg', 'Lorem ipsum dolor sit amet, consectetur\r\nadipiscing elit. Maecenas pellentesque eu enim\r\neget luctus. Sed augue felis, facilisis et\r\nelementum vitae, aliquam sit amet ante. Sed\r\niaculis eros sem, elementum consequat.\r\n', '2022-01-20'),
(2, 'WEBSITE INSPIRATION', '..\\assets\\images\\blog\\office-820390_1920.jpg', 'Lorem ipsum dolor sit amet, consectetur\r\nadipiscing elit. Maecenas pellentesque eu enim\r\neget luctus. Sed augue felis, facilisis et\r\nelementum vitae, aliquam sit amet ante. Sed\r\niaculis eros sem, elementum consequat.\r\n', '2022-01-15'),
(3, 'CHANGES IN SOCIAL MEDIA', '..\\assets\\images\\blog\\technology-3164715_1920.jpg', 'Lorem ipsum dolor sit amet, consectetur\r\nadipiscing elit. Maecenas pellentesque eu enim\r\neget luctus. Sed augue felis, facilisis et\r\nelementum vitae, aliquam sit amet ante. Sed\r\niaculis eros sem, elementum consequat.\r\n', '2022-01-10');

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE `categorie` (
  `idCateg` int(11) NOT NULL,
  `nomCateg` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `categorie`
--

INSERT INTO `categorie` (`idCateg`, `nomCateg`) VALUES
(1, 'Tous'),
(2, 'Mobile'),
(3, 'Web'),
(4, 'Interaction');

-- --------------------------------------------------------

--
-- Structure de la table `contient`
--

CREATE TABLE `contient` (
  `idCateg` int(11) NOT NULL,
  `idProjet` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `contient`
--

INSERT INTO `contient` (`idCateg`, `idProjet`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(2, 1),
(2, 5),
(2, 7),
(2, 8),
(3, 1),
(3, 3),
(3, 4),
(3, 8),
(4, 2),
(4, 5),
(4, 6),
(4, 8),
(4, 9);

-- --------------------------------------------------------

--
-- Structure de la table `projet`
--

CREATE TABLE `projet` (
  `idProjet` int(11) NOT NULL,
  `nomProjet` varchar(50) NOT NULL,
  `dateProjet` date NOT NULL,
  `imgProjet` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `projet`
--

INSERT INTO `projet` (`idProjet`, `nomProjet`, `dateProjet`, `imgProjet`) VALUES
(1, 'PROJECT TITLE ', '2018-02-02', '..\\assets\\images\\projects\\App-Screens-Perspective-MockUp-full.jpg'),
(2, 'PROJECT TITLE ', '2018-02-02', '..\\assets\\images\\projects\\sample_2.jpg'),
(3, 'PROJECT TITLE', '2018-02-02', '..\\assets\\images\\projects\\sample_6.jpg'),
(4, 'PROJECT TITLE', '2018-02-02', '..\\assets\\images\\projects\\sample_4.jpg'),
(5, 'PROJECT TITLE', '2018-02-02', '..\\assets\\images\\projects\\sample_7.jpg'),
(6, 'PROJECT TITLE', '2018-02-02', '..\\assets\\images\\projects\\sample_1.jpg'),
(7, 'PROJECT TITLE', '2018-02-02', '..\\assets\\images\\projects\\sample_5.jpg'),
(8, 'PROJECT TITLE', '2018-02-02', '..\\assets\\images\\projects\\Rectangle 405.jpg'),
(9, 'PROJECT TITLE', '2018-02-02', '..\\assets\\images\\projects\\cover_photo.jpg');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`idArticle`);

--
-- Index pour la table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`idCateg`);

--
-- Index pour la table `contient`
--
ALTER TABLE `contient`
  ADD PRIMARY KEY (`idCateg`,`idProjet`),
  ADD KEY `idProjet` (`idProjet`);

--
-- Index pour la table `projet`
--
ALTER TABLE `projet`
  ADD PRIMARY KEY (`idProjet`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `article`
--
ALTER TABLE `article`
  MODIFY `idArticle` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `categorie`
--
ALTER TABLE `categorie`
  MODIFY `idCateg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `projet`
--
ALTER TABLE `projet`
  MODIFY `idProjet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
