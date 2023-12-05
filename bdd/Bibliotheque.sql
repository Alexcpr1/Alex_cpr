-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Serveur: 127.0.0.1
-- Généré le : Mar 05 Décembre 2023 à 14:34
-- Version du serveur: 5.5.10
-- Version de PHP: 5.3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `Bibliotheque`
--

-- --------------------------------------------------------

--
-- Structure de la table `adherents`
--

CREATE TABLE IF NOT EXISTS `adherents` (
  `ID_Adherent` int(11) NOT NULL AUTO_INCREMENT,
  `Nom` varchar(25) NOT NULL,
  `Prenom` varchar(25) NOT NULL,
  `Date_naissance` date NOT NULL,
  `Date_adhesion` date NOT NULL,
  `Adresse` varchar(25) NOT NULL,
  `Num_tel` varchar(25) NOT NULL,
  `Mail` varchar(25) NOT NULL,
  PRIMARY KEY (`ID_Adherent`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `adherents`
--

INSERT INTO `adherents` (`ID_Adherent`, `Nom`, `Prenom`, `Date_naissance`, `Date_adhesion`, `Adresse`, `Num_tel`, `Mail`) VALUES
(1, 'Sin', 'Cristina', '1980-12-16', '2023-12-03', '2 rue de la paix', '0615489855', 'cristina.sin@gmail.com'),
(2, 'Core', 'Stefan', '1974-01-31', '2023-11-15', '1 place de l''horloge', '0718958415', 'stefan.core@gmail.com'),
(3, 'Volt', 'Bob', '2000-07-25', '2023-12-01', '17 rue des rosiers', '0658789532', 'bob.volt@gmail.com');

-- --------------------------------------------------------

--
-- Structure de la table `auteurs`
--

CREATE TABLE IF NOT EXISTS `auteurs` (
  `ID_Auteur` varchar(25) NOT NULL,
  `Nom` varchar(25) NOT NULL,
  `Prenom` varchar(25) NOT NULL,
  `Date_naissance` date NOT NULL,
  PRIMARY KEY (`ID_Auteur`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `auteurs`
--

INSERT INTO `auteurs` (`ID_Auteur`, `Nom`, `Prenom`, `Date_naissance`) VALUES
('A1', 'Cailloux', 'Pierre', '1980-12-16'),
('A2', 'Dubois', 'Paul', '1998-05-18'),
('A3', 'Vague', 'Chris', '1974-01-31');

-- --------------------------------------------------------

--
-- Structure de la table `emprunts`
--

CREATE TABLE IF NOT EXISTS `emprunts` (
  `ID_Emprunt` int(11) NOT NULL AUTO_INCREMENT,
  `Date_emprunt` date NOT NULL,
  `Duree` int(11) NOT NULL,
  `ID_Adherent` int(11) NOT NULL,
  `Reference_livre` varchar(25) NOT NULL,
  PRIMARY KEY (`ID_Emprunt`),
  KEY `Reference_livre` (`Reference_livre`),
  KEY `ID_Adherent` (`ID_Adherent`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `emprunts`
--

INSERT INTO `emprunts` (`ID_Emprunt`, `Date_emprunt`, `Duree`, `ID_Adherent`, `Reference_livre`) VALUES
(1, '2023-12-06', 4, 1, 'L1'),
(2, '2023-12-04', 14, 2, 'L3'),
(3, '2023-12-04', 5, 3, 'L2');

-- --------------------------------------------------------

--
-- Structure de la table `livres`
--

CREATE TABLE IF NOT EXISTS `livres` (
  `Reference_livre` varchar(25) NOT NULL,
  `Nbre_pages` int(11) NOT NULL,
  `ID_Auteur` varchar(25) NOT NULL,
  `Date_publication` date NOT NULL,
  `Genre` varchar(25) NOT NULL,
  `Disponibilité` tinyint(1) NOT NULL,
  `Nbre_emprunts` int(11) NOT NULL,
  `Etat` varchar(25) NOT NULL,
  `Nbre_exemplaire` int(11) NOT NULL,
  PRIMARY KEY (`Reference_livre`),
  KEY `ID_Auteur` (`ID_Auteur`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `livres`
--

INSERT INTO `livres` (`Reference_livre`, `Nbre_pages`, `ID_Auteur`, `Date_publication`, `Genre`, `Disponibilité`, `Nbre_emprunts`, `Etat`, `Nbre_exemplaire`) VALUES
('L1', 265, 'A1', '2005-12-22', 'Policier', 1, 15, 'Bon etat', 3),
('L2', 405, 'A2', '2012-09-10', 'Action', 0, 1, 'Tres bon etat', 10),
('L3', 168, 'A3', '2019-06-10', 'Policier', 1, 19, 'Bon etat', 5);

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `emprunts`
--
ALTER TABLE `emprunts`
  ADD CONSTRAINT `emprunts_ibfk_2` FOREIGN KEY (`Reference_livre`) REFERENCES `livres` (`Reference_livre`),
  ADD CONSTRAINT `emprunts_ibfk_1` FOREIGN KEY (`ID_Adherent`) REFERENCES `adherents` (`ID_Adherent`);

--
-- Contraintes pour la table `livres`
--
ALTER TABLE `livres`
  ADD CONSTRAINT `livres_ibfk_1` FOREIGN KEY (`ID_Auteur`) REFERENCES `auteurs` (`ID_Auteur`);
