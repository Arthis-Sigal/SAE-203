-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : jeu. 29 sep. 2022 à 14:55
-- Version du serveur : 5.7.36
-- Version de PHP : 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `sae203`
--

-- --------------------------------------------------------

--
-- Structure de la table `film`
--

DROP TABLE IF EXISTS `film`;
CREATE TABLE IF NOT EXISTS `film` (
  `idFILM` int(11) NOT NULL,
  `titre_film` varchar(45) DEFAULT NULL,
  `synopsi_film` varchar(45) DEFAULT NULL,
  `date_film` varchar(45) DEFAULT NULL,
  `duree_film` varchar(45) DEFAULT NULL,
  `categorie_film` varchar(45) DEFAULT NULL,
  `acteur_film` varchar(45) DEFAULT NULL,
  `production_film` varchar(45) DEFAULT NULL,
  `image_idimage` int(11) NOT NULL,
  `video_idvideo` int(11) NOT NULL,
  `Realisateur` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idFILM`),
  KEY `fk_FILM_image_idx` (`image_idimage`),
  KEY `fk_FILM_video1_idx` (`video_idvideo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `film`
--

INSERT INTO `film` (`idFILM`, `titre_film`, `synopsi_film`, `date_film`, `duree_film`, `categorie_film`, `acteur_film`, `production_film`, `image_idimage`, `video_idvideo`, `Realisateur`) VALUES
(1, 'RRRrrr', 'on verra', '2004', '1h 36m', 'Comedie, Thriller', 'Jean-Paul Rouve, Marina Fois, PEF', 'Canal+', 11, 11, 'Alain Chabat'),
(12, 'Bullet Train', 'on verra', '2022', '2h 7m', 'Action', 'Brad Pitt', 'Columbia Pictures', 12, 12, 'David Leitch'),
(13, 'Avangers : Endgame', 'on verra', '2019', '181 minutes', 'Super-héros', 'Robert Downey Jr., Chris Evans, Mark Ruffalo,', 'Marvel Studio', 13, 13, 'Anthony et Joe Russo'),
(14, 'Interstellar', 'on verra', '2014', '169 minutes', 'Science fiction, drame', 'Matthew McConaughey, Anne Hathaway,', 'Warners Bros', 14, 14, 'Christopher Nolan'),
(15, 'Kung Pow', 'on verra', '2002', '81 minutes', 'comedie', 'Steve Oedekerk,  Jennifer Tung,  Leo Lee', 'Steve Oedekerk', 15, 15, 'Steve Oedekerk'),
(16, 'Les seigneurs', 'on verra', '2012', '97 min', 'Comédie', 'José Garcia, Franck Dubosc, Omar Sy', 'Warners Bros', 16, 16, 'Olivier Dahan'),
(17, 'Rogue One : A Star Wars Story', 'on verra', '2016', '134 min', 'Science fiction, Aventure, Drame', 'Felicity Jones, Diego Luna', 'Walt Disney Studio', 17, 17, 'Gareth Edwards'),
(18, 'Gravity', 'on verra', '2013', '90 min', 'Thriller, Aventure', 'Sandra Bulock, George Clooney', 'Warners Bros', 18, 18, 'Alfonso Cuaron'),
(19, 'Star Wars I: La menace fantome', 'on verra', '1999', '133 min', 'Science fiction, Aventure, Fantastique', 'Liam Neeson, Ewan McGregor, Natalie Portman', 'Lucasfilm Ltd.', 19, 19, 'George Lucas'),
(110, 'Star Wars II: L\'attaque des clones', 'on verrra', '2002', '142 min', 'Science fiction, Aventure, Fantastique', 'Ewan McGregor, Natalie Portman, Christensen', 'Lucasfilm Ltd.', 110, 110, 'George Lucas'),
(112, 'Star Wars III: La revanche des sith', 'on verra', '2005', '140 min', 'Science fiction, Aventure, Fantastique', 'Ewan McGregor, Natalie Portman, Christensen', 'Lucasfilm Ltd.', 112, 112, 'George Lucas'),
(113, 'Star Wars IV: Un nouvel espoir', 'on verra', '1977', '121 min', 'Science fiction, Aventure, Fantastique', 'Mark Hamill, Harrison Ford, Carrie Fisher', 'Lucasfilm Ltd.', 113, 113, 'George Lucas'),
(114, 'Star Wars V:  L\'empire Contre-Attaque', 'on verra', '1980', '124 min', 'Science fiction, Aventure, Fantastique', 'Mark Hamill, Harrison Ford, Carrie Fisher', 'Lucasfilm Ltd.', 114, 114, 'George Lucas'),
(115, 'Star Wars VI: Le retour du jedi', 'on verra', '1983', '133 min', 'Science fiction, Aventure, Fantastique', 'Mark Hamill, Harrison Ford, Carrie Fisher', 'Lucasfilm Ltd.', 115, 115, 'George Lucas');

-- --------------------------------------------------------

--
-- Structure de la table `image`
--

DROP TABLE IF EXISTS `image`;
CREATE TABLE IF NOT EXISTS `image` (
  `idimage` int(11) NOT NULL,
  `image` varchar(45) DEFAULT NULL,
  `type_image` varchar(45) DEFAULT NULL,
  `taille_image` varchar(45) DEFAULT NULL,
  `poids_image` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idimage`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `image`
--

INSERT INTO `image` (`idimage`, `image`, `type_image`, `taille_image`, `poids_image`) VALUES
(11, 'RRRrrr.jpg', 'film', '200x200', '20Ko'),
(12, 'BulletTrain.jpg', 'film', '200x200', '20Ko'),
(13, 'Endgame.jpg', 'film', '200x200', '20Ko'),
(14, 'Interstellar.jpg', 'film', '200x200', '20Ko'),
(15, 'KungPow.jpg', 'film', '200x200', '20Ko'),
(16, 'LeSeigneurs.jpg', 'film', '200x200', '20Ko'),
(17, 'RogueOne.jpg', 'film', '200x200', '20Ko'),
(18, 'Gravity.jpg', 'film', '200x200', '20Ko'),
(19, 'Starwars1.jpg', 'film', '200x200', '20Ko'),
(21, 'csgo.webp', 'jeux', '200x200', '20Ko'),
(22, 'adibou.webp', 'jeux', '200x200', '20Ko'),
(23, 'botw.webp', 'jeux', '200x200', '20ko'),
(24, 'fifa.webp', 'jeux', '200x200', '20Ko'),
(26, 'gtaV.webp', 'jeux', '200x200', '20Ko'),
(27, 'inside.webp', 'jeux', '200x200', '20Ko'),
(28, 'limbo.webp', 'jeux', '200x200', '20ko'),
(29, 'littlenightmarre.webp', 'jeux', '200x200', '20Ko'),
(31, 'pogba.webp', 'joueur', '139x181', '8ko'),
(32, 'dembele.webp', 'joueur', '139x181', '8ko'),
(33, 'mane.webp', 'joueur', '139x181', '8ko'),
(34, 'benzema.webp', 'joueur', '139x181', '8ko'),
(35, 'Vitinha.webp', 'joueur', '139x181', '8ko'),
(36, 'pedri.webp', 'joueur', '139x181', '8ko'),
(37, 'lloris.webp', 'joueur', '139x181', '8ko'),
(38, 'ramos.webp', 'joueur', '139x181', '8ko'),
(39, 'verrati.webp', 'joueur', '139x181', '8ko'),
(110, 'Starwars2.jpg', 'film', '200x200', '20Ko'),
(112, 'Starwars3.jpg', 'film', '200x200', '20Ko'),
(113, 'Starwars4.jpg', 'film', '200x200', '20Ko'),
(114, 'Starwars5.jpg', 'film', '200x200', '20Ko'),
(115, 'Starwars6.jpg', 'film', '200x200', '20Ko'),
(210, 'minecraft.webp', 'jeux', '200x200', '20Ko'),
(211, 'pokemon.webp', 'jeux', '200x200', '20Ko'),
(212, 'portal1.webp', 'jeux', '200x200', '20Ko'),
(213, 'portal2.webp', 'jeux', '200x200', '20Ko'),
(214, 'reventure.webp', 'jeux', '200x200', '20Ko'),
(215, 'sc.jpg', 'jeux', '200x200', '20Ko'),
(216, 'tlou.webp', 'jeux', '200x200', '20Ko'),
(310, 'zidane.webp', 'joueur', '139x181', '8ko'),
(311, 'ronaldo.webp', 'joueur', '139x181', '8ko'),
(312, 'messi.webp', 'joueur', '139x181', '8ko'),
(313, 'mbappe.webp', 'joueur', '139x181', '8ko'),
(314, 'griezmann.webp', 'joueur', '139x181', '8ko'),
(315, 'ribery.webp', 'joueur', '139x181', '8ko');

-- --------------------------------------------------------

--
-- Structure de la table `jeux`
--

DROP TABLE IF EXISTS `jeux`;
CREATE TABLE IF NOT EXISTS `jeux` (
  `idJEUX` int(11) NOT NULL,
  `titre_jeux` varchar(45) DEFAULT NULL,
  `editeur_jeux` varchar(45) DEFAULT NULL,
  `synopsi_jeux` varchar(45) DEFAULT NULL,
  `date_jeux` varchar(45) DEFAULT NULL,
  `temps_jeux` varchar(45) DEFAULT NULL,
  `categorie_jeux` varchar(45) DEFAULT NULL,
  `developpeur_jeux` varchar(45) DEFAULT NULL,
  `image_idimage` int(11) NOT NULL,
  `video_idvideo` int(11) NOT NULL,
  PRIMARY KEY (`idJEUX`),
  KEY `fk_JEUX_image1_idx` (`image_idimage`),
  KEY `fk_JEUX_video1_idx` (`video_idvideo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `jeux`
--

INSERT INTO `jeux` (`idJEUX`, `titre_jeux`, `editeur_jeux`, `synopsi_jeux`, `date_jeux`, `temps_jeux`, `categorie_jeux`, `developpeur_jeux`, `image_idimage`, `video_idvideo`) VALUES
(21, 'Counter Strike : Global Offensive', 'Valve', 'on verra', '2012', 'infini', 'Competitif, FPS', 'Valve', 21, 21),
(22, 'Adibou et l\'ombre verte', 'SCEE', 'on verra', '2001', '2h30', 'Educatif', 'Coktel Vision', 22, 22),
(23, 'The Legend of Zelda: Breath of the Wild', 'Nintendo', 'on verra', '2017', '189h', 'action, aventure, open world', 'Nintendo', 23, 23),
(24, 'FIFA 22', 'Electronic Arts', 'on verra', '2021', 'infini', 'Simulation, Sport', 'EA Canada', 24, 24),
(26, 'Grand Theft Auto V', 'Rockstar Games', 'on verra', '2013', '80h', 'Open world, shooter, course, ', 'Rockstar North', 26, 26),
(27, 'Inside', 'PlayDead', 'on verra', '2016', '4h30', 'platform, puzzle', 'PlayDead', 27, 27),
(28, 'Limbo', 'Playdead', 'on verra', '2010', '6h30', 'Platform, Puzzle', 'Playdead', 28, 28),
(29, 'Little Nightmares', 'BANDAI NAMCO Entertainment', 'on verra', '2017', '7h30', 'Aventure, Platform, Puzzle', 'Tarsier Studios', 29, 29),
(210, 'Minecraft', 'Mojang studio', 'on verra', '2011', 'infini', 'Action, Aventure, Open World, Bac à sable', 'Mojang Studio', 210, 210),
(211, 'Pokemon Noir', 'Nintendo', 'on verra', '2011', '62h30', 'Role-Play', 'Game Freak', 211, 211),
(212, 'Portal', 'Valve Corporation', 'on verra', '2007', '9h30', 'Platform, Puzzle', 'Valve Corporation', 212, 212),
(213, 'Portal 2', 'Valve Corporation', 'on verra', '2011', '21h', 'Platform, Puzzle', 'Valve Corporation', 213, 213),
(214, 'Reventure', 'Pixelatto', 'on verra', '2019', '11h', 'Platform, Puzzle', 'Pixelatto', 214, 214),
(215, 'Star Citizen', 'Cloud Imperium Games', 'on verra', '2012 (alpha)', 'infini', 'Space Opera, MMO, FPS, Bac à sable', 'Cloud Imperium Games', 215, 215),
(216, 'The Last of Us', 'Sony Computer Entertainment', 'on verra', '2013', '28h30', 'Adventure, Horror, Survival, Shooter', 'Naughty Dog', 216, 216);

-- --------------------------------------------------------

--
-- Structure de la table `joueur`
--

DROP TABLE IF EXISTS `joueur`;
CREATE TABLE IF NOT EXISTS `joueur` (
  `idJOUEUR` int(11) NOT NULL,
  `nom_joueur` varchar(45) DEFAULT NULL,
  `club_joueur` varchar(45) DEFAULT NULL,
  `pass_joueur` varchar(45) DEFAULT NULL,
  `but_joueur` varchar(45) DEFAULT NULL,
  `match_joueur` varchar(45) DEFAULT NULL,
  `age_joueur` varchar(45) DEFAULT NULL,
  `activite_joueur` varchar(45) DEFAULT NULL,
  `image_idimage` int(11) NOT NULL,
  `video_idvideo` int(11) NOT NULL,
  PRIMARY KEY (`idJOUEUR`),
  KEY `fk_JOUEUR_image1_idx` (`image_idimage`),
  KEY `fk_JOUEUR_video1_idx` (`video_idvideo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `joueur`
--

INSERT INTO `joueur` (`idJOUEUR`, `nom_joueur`, `club_joueur`, `pass_joueur`, `but_joueur`, `match_joueur`, `age_joueur`, `activite_joueur`, `image_idimage`, `video_idvideo`) VALUES
(31, 'Paul Pogba', 'Juventus Turin', '76', '101', '434', '29', 'Milieux de terrain', 31, 31),
(32, 'Ousmane Dembélé', 'FC Barcelone', '65', '56', '239', '25', 'Ailier droit', 32, 32),
(33, 'Sadio Mané', 'Bayern München', '95', '197', '465', '30', 'Ailier gauche', 33, 33),
(34, 'Karim Benzema', 'Real Madrid', '187', '393', '759', '34', 'Avant-centre', 34, 34),
(35, 'Vitinha', 'Paris SG', '12', '14', '118', '22', 'Milieux de terrain', 35, 35),
(36, 'Pedri', 'FC Barcelone', '14', '14', '119', '19', 'Milieux de terrain', 36, 36),
(37, 'Hugo Lloris', 'Tottenham', '/', '0', '782', '35', 'Gardien de but', 37, 37),
(38, 'Sergio Ramos', 'Paris SG', '39', '107', '740', '36', 'Défenseur central', 38, 38),
(39, 'Marco Verratti', 'Paris SG', '72', '13', '468', '29', 'Milieux de terrain', 39, 39),
(310, 'Zinédine Zidane', 'Fin de carrière', '137', '125', '665', '50', 'Millieux offensif', 310, 310),
(311, 'Cristiano Ronaldo', 'Manchester Utd.', '221', '699', '941', '37', 'Avant-centre', 311, 311),
(312, 'Lionel Messi', 'Paris SG', '326', '689', '823', '35', 'Ailier droit', 312, 312),
(313, 'Kylian Mbappé', 'Paris SG', '106', '213', '291', '23', 'Avant-centre', 313, 313),
(314, 'Antoine Griezmann', 'Atlético Madrid', '93', '231', '605', '31', 'Attaquant', 314, 314),
(315, 'Franck Ribéry', 'Salernitana', '224', '151', '632', '39', 'Ailier gauche', 315, 315);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `liste_films`
-- (Voir ci-dessous la vue réelle)
--
DROP VIEW IF EXISTS `liste_films`;
CREATE TABLE IF NOT EXISTS `liste_films` (
`idFILM` int(11)
,`titre_film` varchar(45)
,`synopsi_film` varchar(45)
,`date_film` varchar(45)
,`duree_film` varchar(45)
,`categorie_film` varchar(45)
,`acteur_film` varchar(45)
,`production_film` varchar(45)
,`image_idimage` int(11)
,`video_idvideo` int(11)
,`Realisateur` varchar(45)
,`idimage` int(11)
,`image` varchar(45)
,`type_image` varchar(45)
,`taille_image` varchar(45)
,`poids_image` varchar(45)
,`idvideo` int(11)
,`lien_video` varchar(45)
,`type_video` varchar(45)
,`duree_video` varchar(45)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `liste_jeux`
-- (Voir ci-dessous la vue réelle)
--
DROP VIEW IF EXISTS `liste_jeux`;
CREATE TABLE IF NOT EXISTS `liste_jeux` (
`idJEUX` int(11)
,`titre_jeux` varchar(45)
,`editeur_jeux` varchar(45)
,`synopsi_jeux` varchar(45)
,`date_jeux` varchar(45)
,`temps_jeux` varchar(45)
,`categorie_jeux` varchar(45)
,`developpeur_jeux` varchar(45)
,`image_idimage` int(11)
,`video_idvideo` int(11)
,`idimage` int(11)
,`image` varchar(45)
,`type_image` varchar(45)
,`taille_image` varchar(45)
,`poids_image` varchar(45)
,`idvideo` int(11)
,`lien_video` varchar(45)
,`type_video` varchar(45)
,`duree_video` varchar(45)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `liste_joueur`
-- (Voir ci-dessous la vue réelle)
--
DROP VIEW IF EXISTS `liste_joueur`;
CREATE TABLE IF NOT EXISTS `liste_joueur` (
`idJOUEUR` int(11)
,`nom_joueur` varchar(45)
,`club_joueur` varchar(45)
,`pass_joueur` varchar(45)
,`but_joueur` varchar(45)
,`match_joueur` varchar(45)
,`age_joueur` varchar(45)
,`activite_joueur` varchar(45)
,`image_idimage` int(11)
,`video_idvideo` int(11)
,`idimage` int(11)
,`image` varchar(45)
,`type_image` varchar(45)
,`taille_image` varchar(45)
,`poids_image` varchar(45)
,`idvideo` int(11)
,`lien_video` varchar(45)
,`type_video` varchar(45)
,`duree_video` varchar(45)
);

-- --------------------------------------------------------

--
-- Structure de la table `video`
--

DROP TABLE IF EXISTS `video`;
CREATE TABLE IF NOT EXISTS `video` (
  `idvideo` int(11) NOT NULL,
  `lien_video` varchar(45) DEFAULT NULL,
  `type_video` varchar(45) DEFAULT NULL,
  `duree_video` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idvideo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `video`
--

INSERT INTO `video` (`idvideo`, `lien_video`, `type_video`, `duree_video`) VALUES
(11, 'https://www.youtube.com/watch?v=LoJ8LA9e7Yc', 'film', '45s'),
(12, 'https://www.youtube.com/watch?v=LoJ8LA9e7Yc', 'film', '45s'),
(13, 'https://www.youtube.com/watch?v=TcMBFSGVi1c', 'film', '45s'),
(14, 'https://www.youtube.com/watch?v=zSWdZVtXT7E', 'film', '45s'),
(15, 'https://www.youtube.com/watch?v=GXrAYdSeWY8', 'film', '45s'),
(16, 'https://www.youtube.com/watch?v=wyVbuy2Cryo', 'film', '45s'),
(17, 'https://www.youtube.com/watch?v=frdj1zb9sMY', 'film', '45s'),
(18, 'https://www.youtube.com/watch?v=OiTiKOy59o4', 'film', '45s'),
(19, 'https://www.youtube.com/watch?v=bD7bpG-zDJQ', 'film', '45s'),
(21, 'https://www.youtube.com/watch?v=VV-A1zhsFRI', 'jeux', '52:51'),
(22, 'https://www.youtube.com/watch?v=rnu7mVKZU2s', '', '1:53:45'),
(23, 'https://www.youtube.com/watch?v=vumJiWdxQSs', 'jeux', '3:49'),
(24, 'https://www.youtube.com/watch?v=SYsi5QuOJNE', 'jeux', '2:32'),
(26, 'https://www.youtube.com/watch?v=ZCZcqzXj-Ts', 'jeux', '1:02'),
(27, 'https://www.youtube.com/watch?v=9mpdOzS5V8E', 'jeux', '4:09'),
(28, 'https://www.youtube.com/watch?v=Y4HSyVXKYz8', 'jeux', '1:00'),
(29, 'https://www.youtube.com/watch?v=aOadxZBsPiA', 'jeux', '2:04'),
(31, 'https://www.youtube.com/watch?v=2JPS7NDblpA', 'joueur', '6:42'),
(32, 'https://www.youtube.com/watch?v=-sZmXN3d218', 'joueur', '11:53'),
(33, 'https://www.youtube.com/watch?v=UsHoeAjzsnE', 'joueur', '8:22'),
(34, 'https://www.youtube.com/watch?v=uSIEQ-cJq5g', 'joueur', '9:22'),
(35, 'https://www.youtube.com/watch?v=dCOTuF8DRHs', 'joueur', '8:40'),
(36, 'https://www.youtube.com/watch?v=h9QBQJZa-gY', 'joueur', '8:03'),
(37, 'https://www.youtube.com/watch?v=lXGaL1LaI5Y', 'joueur', '8:28'),
(38, 'https://www.youtube.com/watch?v=ZL54xup_WLw', 'joueur', '10:30'),
(39, 'https://www.youtube.com/watch?v=LGeAEw46S38', 'joueur', '8:16'),
(110, 'https://www.youtube.com/watch?v=gYbW1F_c9eM', 'film', '45s'),
(112, 'https://www.youtube.com/watch?v=5UnjrG_N8hU', 'film', '45s'),
(113, 'https://www.youtube.com/watch?v=vZ734NWnAHA', 'film', '45s'),
(114, 'https://www.youtube.com/watch?v=JNwNXF9Y6kY', 'film', '45s'),
(115, 'https://www.youtube.com/watch?v=7L8p7_SLzvU', 'film', '45s'),
(210, 'https://www.youtube.com/watch?v=GXr5glhGkzE', 'jeux', '1:45'),
(211, 'https://www.youtube.com/watch?v=X8RNzotPLOA', 'jeux', '4:36'),
(212, 'https://www.youtube.com/watch?v=zQhCTRHYBZQ', 'jeux', '2:21'),
(213, 'https://www.youtube.com/watch?v=tax4e4hBBZc', 'jeux', '0:58'),
(214, 'https://www.youtube.com/watch?v=aY7EVPVZk2g', 'jeux', '1:36'),
(215, 'https://www.youtube.com/watch?v=swBCCvbRTL4', 'jeux', '4:03'),
(216, 'https://www.youtube.com/watch?v=eaaQ17YY4NA', 'jeux', '1:48'),
(310, 'https://www.youtube.com/watch?v=j4jfxEEbJMY', 'joueur', '16:06'),
(311, 'https://www.youtube.com/watch?v=OUKGsb8CpF8', 'joueur', '12:15'),
(312, 'https://www.youtube.com/watch?v=QE7MAyHTNSY', 'joueur', '12:06'),
(313, 'https://www.youtube.com/watch?v=omlWuLD5SXk', 'joueur', '8:40'),
(314, 'https://www.youtube.com/watch?v=jc5KNrNLI0Q', 'joueur', '4:07'),
(315, 'https://www.youtube.com/watch?v=9YL1Mknogr8', 'joueur', '5:12');

-- --------------------------------------------------------

--
-- Structure de la vue `liste_films`
--
DROP TABLE IF EXISTS `liste_films`;

DROP VIEW IF EXISTS `liste_films`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `liste_films`  AS SELECT `film`.`idFILM` AS `idFILM`, `film`.`titre_film` AS `titre_film`, `film`.`synopsi_film` AS `synopsi_film`, `film`.`date_film` AS `date_film`, `film`.`duree_film` AS `duree_film`, `film`.`categorie_film` AS `categorie_film`, `film`.`acteur_film` AS `acteur_film`, `film`.`production_film` AS `production_film`, `film`.`image_idimage` AS `image_idimage`, `film`.`video_idvideo` AS `video_idvideo`, `film`.`Realisateur` AS `Realisateur`, `image`.`idimage` AS `idimage`, `image`.`image` AS `image`, `image`.`type_image` AS `type_image`, `image`.`taille_image` AS `taille_image`, `image`.`poids_image` AS `poids_image`, `video`.`idvideo` AS `idvideo`, `video`.`lien_video` AS `lien_video`, `video`.`type_video` AS `type_video`, `video`.`duree_video` AS `duree_video` FROM ((`film` join `image` on((`film`.`image_idimage` = `image`.`idimage`))) join `video` on((`film`.`video_idvideo` = `video`.`idvideo`))) ;

-- --------------------------------------------------------

--
-- Structure de la vue `liste_jeux`
--
DROP TABLE IF EXISTS `liste_jeux`;

DROP VIEW IF EXISTS `liste_jeux`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `liste_jeux`  AS SELECT `jeux`.`idJEUX` AS `idJEUX`, `jeux`.`titre_jeux` AS `titre_jeux`, `jeux`.`editeur_jeux` AS `editeur_jeux`, `jeux`.`synopsi_jeux` AS `synopsi_jeux`, `jeux`.`date_jeux` AS `date_jeux`, `jeux`.`temps_jeux` AS `temps_jeux`, `jeux`.`categorie_jeux` AS `categorie_jeux`, `jeux`.`developpeur_jeux` AS `developpeur_jeux`, `jeux`.`image_idimage` AS `image_idimage`, `jeux`.`video_idvideo` AS `video_idvideo`, `image`.`idimage` AS `idimage`, `image`.`image` AS `image`, `image`.`type_image` AS `type_image`, `image`.`taille_image` AS `taille_image`, `image`.`poids_image` AS `poids_image`, `video`.`idvideo` AS `idvideo`, `video`.`lien_video` AS `lien_video`, `video`.`type_video` AS `type_video`, `video`.`duree_video` AS `duree_video` FROM ((`jeux` join `image` on((`jeux`.`image_idimage` = `image`.`idimage`))) join `video` on((`jeux`.`video_idvideo` = `video`.`idvideo`))) ;

-- --------------------------------------------------------

--
-- Structure de la vue `liste_joueur`
--
DROP TABLE IF EXISTS `liste_joueur`;

DROP VIEW IF EXISTS `liste_joueur`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `liste_joueur`  AS SELECT `joueur`.`idJOUEUR` AS `idJOUEUR`, `joueur`.`nom_joueur` AS `nom_joueur`, `joueur`.`club_joueur` AS `club_joueur`, `joueur`.`pass_joueur` AS `pass_joueur`, `joueur`.`but_joueur` AS `but_joueur`, `joueur`.`match_joueur` AS `match_joueur`, `joueur`.`age_joueur` AS `age_joueur`, `joueur`.`activite_joueur` AS `activite_joueur`, `joueur`.`image_idimage` AS `image_idimage`, `joueur`.`video_idvideo` AS `video_idvideo`, `image`.`idimage` AS `idimage`, `image`.`image` AS `image`, `image`.`type_image` AS `type_image`, `image`.`taille_image` AS `taille_image`, `image`.`poids_image` AS `poids_image`, `video`.`idvideo` AS `idvideo`, `video`.`lien_video` AS `lien_video`, `video`.`type_video` AS `type_video`, `video`.`duree_video` AS `duree_video` FROM ((`joueur` join `image` on((`image`.`idimage` = `joueur`.`image_idimage`))) join `video` on((`video`.`idvideo` = `joueur`.`video_idvideo`))) ;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `film`
--
ALTER TABLE `film`
  ADD CONSTRAINT `fk_FILM_image` FOREIGN KEY (`image_idimage`) REFERENCES `image` (`idimage`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_FILM_video1` FOREIGN KEY (`video_idvideo`) REFERENCES `video` (`idvideo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `jeux`
--
ALTER TABLE `jeux`
  ADD CONSTRAINT `fk_JEUX_image1` FOREIGN KEY (`image_idimage`) REFERENCES `image` (`idimage`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_JEUX_video1` FOREIGN KEY (`video_idvideo`) REFERENCES `video` (`idvideo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `joueur`
--
ALTER TABLE `joueur`
  ADD CONSTRAINT `fk_JOUEUR_image1` FOREIGN KEY (`image_idimage`) REFERENCES `image` (`idimage`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_JOUEUR_video1` FOREIGN KEY (`video_idvideo`) REFERENCES `video` (`idvideo`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
