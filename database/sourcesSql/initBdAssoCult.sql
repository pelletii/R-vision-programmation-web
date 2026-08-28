-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mar. 11 nov. 2025 à 17:38
-- Version du serveur : 9.1.0
-- Version de PHP : 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


--
-- Base de données : `bdAssoCult`
--

use `bdAssoCult`;
-- --------------------------------------------------------

-- --------------------------------------------------------

--
-- Structure de la table `section`
--

DROP TABLE IF EXISTS `section`;
CREATE TABLE section(
   id  INT NOT NULL AUTO_INCREMENT,
   libelleSection VARCHAR(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
   debutSection DATE,
   idReferent INT NOT NULL,
   PRIMARY KEY(id))
   ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `section`
--
INSERT INTO `section` (`id`, `libelleSection`, `debutSection`, `idReferent`) VALUES
(1, 'Musique', '2023-01-01', 1),
(2, 'Théâtre', '2023-02-01', 2);  


-- --------------------------------------------------------

--
-- Structure de la table `activite`
--

DROP TABLE IF EXISTS `activite`;
CREATE TABLE activite (
   idSection  INT NOT NULL ,
   numActivite INT NOT NULL,
   libelleAct VARCHAR(50),
   descAct VARCHAR(50),
   jourAct VARCHAR(50),
   horaireAct VARCHAR(50),
   dureeAct INT,
   tarifAnAct int,
   idLieu INT NOT NULL,
   PRIMARY KEY(idSection, numActivite)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `activite`
--
insert into `activite` (`idSection`, `numActivite`, `libelleAct`, `descAct`, `jourAct`, `horaireAct`, `dureeAct`, `tarifAnAct`, `idLieu`) values
(1, 1, 'Atelier Musique', 'Apprentissage de la musique', 'Lundi', '18:00', 2, 50, 1),
(2, 1, 'Cours de Théâtre', 'Initiation au théâtre', 'Mercredi', '19:00', 2, 60, 2),
(1, 2, 'Trompette Débiutant', 'Atelier de trompette pour débutants', 'Samedi', '10:00', 1, 30, 3);




-- --------------------------------------------------------
--
-- Structure de la table `participerBureau`
--

DROP TABLE IF EXISTS `participerBureau`;
CREATE TABLE participerBureau(
   idBenevole INT NOT NULL,
   idSection INT NOT NULL,
   idFonction int NOT NULL,
   PRIMARY KEY(idBenevole, idSection)
);
--
-- Déchargement des données de la table `participerBureau`
--

insert into `participerBureau` (`idBenevole`, `idSection`, `idFonction`) values
(1, 1, 1),
(2, 2, 2);  

-- --------------------------------------------------------
--
-- Structure de la table `adherer`
--

DROP TABLE IF EXISTS `adherer`;

CREATE TABLE adherer(
  id  INT NOT NULL AUTO_INCREMENT,
  idAdh INT NOT NULL,
  idSection INT NOT NULL,
  idActivite INT NOT NULL,
  dateAdhesion DATE,
  reglement boolean DEFAULT false,
  PRIMARY KEY(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `adherer`
--

insert into `adherer` (`idAdh`, `idSection`, `idActivite`, `dateAdhesion`, `reglement`) values
(1, 1, 1, '2023-01-15', true),
(2, 2, 1, '2023-02-20', true),
(3, 1, 2, '2023-03-10', false);

-- --------------------------------------------------------
--
-- Structure de la table `estEnfant`
--

DROP TABLE IF EXISTS `estEnfant`;


CREATE TABLE estEnfant(
   idAdhParent INT NOT NULL,
   idAdhEnfant INT NOT NULL,
   PRIMARY KEY(idAdhParent, idAdhEnfant)
)  ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `estEnfant`
--

insert into `estEnfant` (`idAdhParent`, `idAdhEnfant`) values
(1, 3);

--
-- Structure de la table `benevole`
--

DROP TABLE IF EXISTS `benevole`;
CREATE TABLE benevole(
   id INT NOT NULL AUTO_INCREMENT,
   nomBenevole VARCHAR(50),
   prenomBenevole VARCHAR(50),
   telBenevole VARCHAR(50),
   melBenevole VARCHAR(50),
   PRIMARY KEY(id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `benevole`
--

INSERT INTO `benevole` (`id`, `nomBenevole`, `prenomBenevole`, `telBenevole`, `melBenevole`) VALUES
(1, 'Dupont', 'Marie', '0123456789', 'marie.dupont@email.com'),
(2, 'Martin', 'Paul', '0987654321', 'paul.martin@email.com');

-- --------------------------------------------------------

--
-- Structure de la table `adherent`
--

DROP TABLE IF EXISTS `adherent`;
CREATE TABLE adherent(
   id  INT NOT NULL AUTO_INCREMENT,
   nomAdh VARCHAR(50)COLLATE utf8mb4_general_ci DEFAULT NULL,
   prenomAdh VARCHAR(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
   adrAdh VARCHAR(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
   cpAdh VARCHAR(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
   villeAdh VARCHAR(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
   telAdh VARCHAR(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
   melAdh VARCHAR(50),
   dateNaiAdh DATE,
   PRIMARY KEY(id )
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `adherent`
--
insert into `adherent` (`id`, `nomAdh`, `prenomAdh`, `adrAdh`, `cpAdh`, `villeAdh`, `telAdh`, `melAdh`, `dateNaiAdh`) values
(1, 'Dupont', 'Marie', '12 rue des Lilas', '75015', 'Paris', '0123456789', 'marie.dupont@email.com', '1985-06-12'),
(2, 'Martin', 'Paul', '5 avenue Victor Hugo', '69002', 'Lyon', '0987654321', 'paul.martin@email.com', '1990-02-23'),
(3, 'Bernard', 'Lucie', '10 rue du Soleil', '31000', 'Toulouse', '0123456789', 'lucie.bernard@email.com', '1988-11-04');

-- --------------------------------------------------------

--
-- Structure de la table `lieu`
--

DROP TABLE IF EXISTS `lieu`;
CREATE TABLE IF NOT EXISTS `lieu` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nomLieu` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `capaciteLieu` int DEFAULT NULL,
  `rueLieu` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `lieu`
--

INSERT INTO `lieu` (`id`, `nomLieu`, `capaciteLieu`, `rueLieu`) VALUES
(1, 'Salle des Fêtes', 100, '12 rue des Lilas'),
(2, 'Théâtre de la Ville', 200, '5 avenue Victor Hugo'),
(3, 'Centre Culturel', 150, '10 rue du Soleil'),
(4, 'Salle Polyvalente', 80, '20 rue des Fleurs'),
(5, 'Espace Culturel', 120, '15 avenue des Arts');


-- --------------------------------------------------------
--
-- Structure de la table `fonction`
--

DROP TABLE IF EXISTS `fonction`;
CREATE TABLE fonction( 
    `id` int NOT NULL AUTO_INCREMENT,
    `libelleFonction` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,  
   PRIMARY KEY(id)
);
--
-- Déchargement des données de la table `fonction`
insert into `fonction` (`id`, `libelleFonction`) values
(1, 'Président'),
(2, 'Trésorier'),
(3, 'Secrétaire'),
(4, 'Membre du bureau');


--
-- Contraintes pour les tables déchargées
--

--

--
-- Contraintes pour la table `activite`
--
ALTER TABLE `activite`
  ADD CONSTRAINT `activite_ibfk_1` FOREIGN KEY (`idLieu`) REFERENCES `lieu` (`id`),
  ADD CONSTRAINT `activite_ibfk_2` FOREIGN KEY (`idSection`) REFERENCES `section` (`id`);

--
-- Contraintes pour la table `adherer`
--

CREATE UNIQUE INDEX idx_unique_adherer
ON adherer (idSection, idActivite, idAdh);

ALTER TABLE `adherer`
  ADD CONSTRAINT `adherer_ibfk_1` FOREIGN KEY (`idSection`, `idActivite`) REFERENCES `activite` (`idSection`, `numActivite`);

  ALTER TABLE `adherer` 
  ADD CONSTRAINT `adherer_ibfk_2` FOREIGN KEY (`idAdh`) REFERENCES `adherent` (`id`);

--
-- Contraintes pour la table `section` 
--
ALTER TABLE `section`
  ADD CONSTRAINT `section_ibfk_1` FOREIGN KEY (`idReferent`) REFERENCES `benevole` (`id`);


--
-- Contraintes pour la table `participerBureau` 
--
ALTER TABLE `participerBureau`
  ADD CONSTRAINT `participerBureau_ibfk_1` FOREIGN KEY (`idBenevole`) REFERENCES `benevole` (`id`),
  ADD CONSTRAINT `participerBureau_ibfk_2` FOREIGN KEY (`idSection`) REFERENCES `section` (`id`),
  ADD CONSTRAINT `participerBureau_ibfk_3` FOREIGN KEY (`idFonction`) REFERENCES `fonction` (`id`);

--
-- Contraintes pour la table `estEnfant` 
--
ALTER TABLE `estEnfant`
  ADD CONSTRAINT `estEnfant_ibfk_1` FOREIGN KEY (`idAdhParent`) REFERENCES `adherent` (`id`),
  ADD CONSTRAINT `estEnfant_ibfk_2` FOREIGN KEY (`idAdhEnfant`) REFERENCES `adherent` (id);
  
  COMMIT;






/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
