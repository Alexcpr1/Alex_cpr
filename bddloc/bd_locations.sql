-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Serveur: 127.0.0.1
-- Généré le : Lun 18 Décembre 2023 à 20:57
-- Version du serveur: 5.5.10
-- Version de PHP: 5.3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `bd_locations`
--

-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

CREATE TABLE IF NOT EXISTS `clients` (
  `ncin` varchar(25) NOT NULL,
  `nom` varchar(25) NOT NULL,
  `prenom` varchar(25) NOT NULL,
  `date_naissance` date NOT NULL,
  `num_permis` int(11) NOT NULL,
  `adresse` varchar(25) NOT NULL,
  `tel` varchar(25) NOT NULL,
  `email` varchar(25) NOT NULL,
  PRIMARY KEY (`ncin`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `clients`
--

INSERT INTO `clients` (`ncin`, `nom`, `prenom`, `date_naissance`, `num_permis`, `adresse`, `tel`, `email`) VALUES
('4685312986451348651', 'cailloux', 'christine', '0000-00-00', 978, '15 rue de la fenetre', ' 06 54 58 78 25', 'christine@yahoo.fr'),
('9784657946879486', 'dubois', 'bruno', '0000-00-00', 2147483647, '2 rue de la rue ', '06 54 87 89 52', 'bruno@gmail.com');

-- --------------------------------------------------------

--
-- Structure de la table `locations`
--

CREATE TABLE IF NOT EXISTS `locations` (
  `num_location` int(11) NOT NULL AUTO_INCREMENT,
  `date_location` date NOT NULL,
  `immatriculation` varchar(9) NOT NULL,
  `ncin` varchar(25) NOT NULL,
  `duree` int(11) NOT NULL,
  `prix_location` float NOT NULL,
  `caution` float NOT NULL,
  PRIMARY KEY (`num_location`),
  KEY `immatriculation` (`immatriculation`,`ncin`),
  KEY `ncin` (`ncin`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Contenu de la table `locations`
--


-- --------------------------------------------------------

--
-- Structure de la table `voitures`
--

CREATE TABLE IF NOT EXISTS `voitures` (
  `immatriculation` varchar(9) NOT NULL,
  `modele` varchar(25) NOT NULL,
  `prix_achat` float NOT NULL,
  `date_achat` date NOT NULL,
  `marque` varchar(25) NOT NULL,
  `num_assurance` int(20) NOT NULL,
  `kilometrage` int(20) NOT NULL,
  `carburant` varchar(20) NOT NULL,
  `boite_vitesse` varchar(20) NOT NULL,
  `nbre_porte` int(20) NOT NULL,
  PRIMARY KEY (`immatriculation`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `voitures`
--

INSERT INTO `voitures` (`immatriculation`, `modele`, `prix_achat`, `date_achat`, `marque`, `num_assurance`, `kilometrage`, `carburant`, `boite_vitesse`, `nbre_porte`) VALUES
('cv-621-zj', 'Clio', 16000, '0000-00-00', 'renault', 2147483647, 4, 'essence', 'automatique', 5),
('ey-536-yg', 'panda', 40, '0000-00-00', 'fiat', 2147483647, 4256256, 'diesel', 'manuel', 7);

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `locations`
--
ALTER TABLE `locations`
  ADD CONSTRAINT `locations_ibfk_1` FOREIGN KEY (`immatriculation`) REFERENCES `voitures` (`immatriculation`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `locations_ibfk_2` FOREIGN KEY (`ncin`) REFERENCES `clients` (`ncin`) ON DELETE CASCADE ON UPDATE CASCADE;
