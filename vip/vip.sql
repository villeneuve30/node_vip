-- MySQL dump 10.13  Distrib 5.7.25, for Linux (x86_64)
--
-- Host: localhost    Database: vip
-- ------------------------------------------------------
-- Server version	5.7.25-0ubuntu0.18.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `acteur`
--

DROP TABLE IF EXISTS `acteur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acteur` (
  `VIP_NUMERO` int(11) NOT NULL,
  `ACTEUR_DATEDEBUT` datetime DEFAULT NULL,
  PRIMARY KEY (`VIP_NUMERO`),
  CONSTRAINT `FK_ACTEUR_EST4_VIP` FOREIGN KEY (`VIP_NUMERO`) REFERENCES `vip` (`VIP_NUMERO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acteur`
--

LOCK TABLES `acteur` WRITE;
/*!40000 ALTER TABLE `acteur` DISABLE KEYS */;
INSERT INTO `acteur` VALUES (1,'1992-07-16 00:00:00'),(2,'1989-04-23 00:00:00'),(3,'1965-01-30 00:00:00'),(4,'1984-12-15 00:00:00'),(5,'1974-05-12 00:00:00'),(6,'1980-01-01 00:00:00'),(7,'1990-01-02 00:00:00'),(8,'1995-05-06 00:00:00'),(9,'1996-04-05 00:00:00'),(11,NULL),(12,'1978-01-01 00:00:00'),(14,NULL),(15,'1983-01-02 00:00:00'),(16,'1986-01-01 00:00:00'),(17,'1969-01-01 00:00:00'),(18,'1973-01-01 00:00:00'),(19,'1998-01-01 00:00:00'),(20,'0000-00-00 00:00:00'),(21,'0000-00-00 00:00:00'),(22,'0000-00-00 00:00:00'),(23,'0000-00-00 00:00:00'),(24,'0000-00-00 00:00:00'),(25,'0000-00-00 00:00:00'),(26,'0000-00-00 00:00:00'),(34,'0000-00-00 00:00:00'),(39,NULL),(40,'2017-12-25 00:00:00');
/*!40000 ALTER TABLE `acteur` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `agence`
--

DROP TABLE IF EXISTS `agence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `agence` (
  `AGENCE_NUMERO` int(11) NOT NULL AUTO_INCREMENT,
  `AGENCE_NOM` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`AGENCE_NUMERO`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agence`
--

LOCK TABLES `agence` WRITE;
/*!40000 ALTER TABLE `agence` DISABLE KEYS */;
INSERT INTO `agence` VALUES (1,'Ellamarianne'),(2,'Quellebella'),(3,'Griffithia'),(4,'City Models'),(5,'MADISON MODEL');
/*!40000 ALTER TABLE `agence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `album`
--

DROP TABLE IF EXISTS `album`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `album` (
  `ALBUM_NUMERO` int(11) NOT NULL AUTO_INCREMENT,
  `MAISONDISQUE_NUMERO` int(11) NOT NULL,
  `ALBUM_TITRE` varchar(20) DEFAULT NULL,
  `ALBUM_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`ALBUM_NUMERO`),
  KEY `CIF1_FK` (`MAISONDISQUE_NUMERO`),
  CONSTRAINT `FK_ALBUM_CIF1_MAISONDI` FOREIGN KEY (`MAISONDISQUE_NUMERO`) REFERENCES `maisondisque` (`MAISONDISQUE_NUMERO`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `album`
--

LOCK TABLES `album` WRITE;
/*!40000 ALTER TABLE `album` DISABLE KEYS */;
INSERT INTO `album` VALUES (1,5,'Quelqu\'un m\'a dit','2002-01-17 00:00:00'),(2,6,'Alors Regarde','2006-01-23 00:00:00'),(3,6,'Entre deux','2006-01-23 00:00:00'),(4,6,'Au café des délices','2000-01-24 00:00:00');
/*!40000 ALTER TABLE `album` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `apouragence`
--

DROP TABLE IF EXISTS `apouragence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `apouragence` (
  `AGENCE_NUMERO` int(11) NOT NULL,
  `VIP_NUMERO` int(11) NOT NULL,
  PRIMARY KEY (`AGENCE_NUMERO`,`VIP_NUMERO`),
  KEY `LIEN_136_FK` (`VIP_NUMERO`),
  CONSTRAINT `FK_APOURAGE_LIEN_125_AGENCE` FOREIGN KEY (`AGENCE_NUMERO`) REFERENCES `agence` (`AGENCE_NUMERO`),
  CONSTRAINT `FK_APOURAGE_LIEN_136_MANNEQUI` FOREIGN KEY (`VIP_NUMERO`) REFERENCES `mannequin` (`VIP_NUMERO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apouragence`
--

LOCK TABLES `apouragence` WRITE;
/*!40000 ALTER TABLE `apouragence` DISABLE KEYS */;
INSERT INTO `apouragence` VALUES (5,19),(4,29);
/*!40000 ALTER TABLE `apouragence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `apoursujet`
--

DROP TABLE IF EXISTS `apoursujet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `apoursujet` (
  `ARTICLE_NUMERO` int(11) NOT NULL,
  `VIP_NUMERO` int(11) NOT NULL,
  PRIMARY KEY (`ARTICLE_NUMERO`,`VIP_NUMERO`),
  KEY `LIEN_153_FK` (`VIP_NUMERO`),
  CONSTRAINT `FK_APOURSUJ_LIEN_126_ARTICLE` FOREIGN KEY (`ARTICLE_NUMERO`) REFERENCES `article` (`ARTICLE_NUMERO`),
  CONSTRAINT `FK_APOURSUJ_LIEN_153_VIP` FOREIGN KEY (`VIP_NUMERO`) REFERENCES `vip` (`VIP_NUMERO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apoursujet`
--

LOCK TABLES `apoursujet` WRITE;
/*!40000 ALTER TABLE `apoursujet` DISABLE KEYS */;
INSERT INTO `apoursujet` VALUES (5,6),(9,9),(11,11),(10,12),(6,18),(3,19),(12,19),(4,21),(8,25),(7,26),(1,34),(2,40),(12,40);
/*!40000 ALTER TABLE `apoursujet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `article` (
  `ARTICLE_NUMERO` int(11) NOT NULL AUTO_INCREMENT,
  `EXEMPLAIRE_NUMERO` int(11) DEFAULT NULL,
  `ARTICLE_TITRE` varchar(100) DEFAULT NULL,
  `ARTICLE_NUMEROPAGEDEBUT` int(11) DEFAULT NULL,
  `ARTICLE_RESUME` varchar(5500) DEFAULT NULL,
  `ARTICLE_DATE_INSERT` date NOT NULL,
  PRIMARY KEY (`ARTICLE_NUMERO`),
  KEY `CIF2_FK` (`EXEMPLAIRE_NUMERO`),
  CONSTRAINT `FK_ARTICLE_CIF2_EXEMPLAI` FOREIGN KEY (`EXEMPLAIRE_NUMERO`) REFERENCES `exemplaire` (`EXEMPLAIRE_NUMERO`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article`
--

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` VALUES (1,1,'A la sauce Tarantino!',12,'La jolie Mélanie Laurent, rendue célèbre par le film \" Je vais bien ne t\'en fais pas\" - pour lequel elle a remporté le César du meilleur espoir féminin - entre définitivement dans la cour des grandes. Après l\'évocation de plusieurs noms, parmi lesquels celui de Louise Bourgoin, c\'est finalement la petite blonde qui a en effet été choisie par le génial Quentin Tarantino ( Reservoir Dogs, Pulp Fiction, Kill Bill), pour rejoindre l\'équipe de son prochain long métrage Inglorious Bastards. Mélanie Laurent héritera du rôle féminin principal, et donnera ainsi la réplique à  Brad Pitt en personne, dans ce film dont l\'intrigue se situe en Europe pendant la seconde guerre mondiale.','2010-01-13'),(2,3,'L\'homme fidèle',1,'Fils de Philippe Garrel et de Brigitte Sy.\r\n\r\nCinéaste de l\'intime, Philippe Garrel filme volontiers les membres de son entourage. C\'est ainsi que le jeune Louis apparaît à l\'écran à 6 ans dans Les Baisers de secours, aux côtés notamment de sa mère Brigitte Sy et de son grand-père Maurice Garrel. Adolescent, cet admirateur de Jean-Pierre Léaud joue la comédie dans la cadre de son collège et du conservatoire d\'arrondissement. Elève au Conservatoire National d\'Art Dramatique, dont il sort diplômé en 2004, Louis Garrel fait ses vrais débuts au cinéma en 2001, incarnant un garçon brillant et tourmenté dans Ceci est mon corps de Rodolphe Marconi.\r\n\r\nJeune premier au regard farouche, il est bientôt le héros de deux évocations de Mai 68 : il forme avec Michael Pitt et Eva Green (autre \"fille de\") le trio de The Dreamers (2003), récit d\'une initiation sexuelle signé Bertolucci, puis campe, devant la caméra de son père, un insurgé amoureux dans Les Amants réguliers, une prestation qui lui vaut le César du Meilleur espoir masculin en 2005. L\'année suivante, le jeune homme joue l\'amant passionné de Valeria Bruni Tedeschi dans Actrices. C\'est sur ce tournage que les deux acteurs se rencontrent et partagent leur vie jusqu\'en 2012.\r\n\r\nNe craignant pas les personnages sulfureux, Louis Garrel interprète le fils - et compagnon de débauche - d\'Isabelle Huppert dans Ma mère (2004), adaptation du livre de Bataille par Christophe Honoré. Il retrouve le cinéaste en 2006 pour une autre affaire de famille, Dans Paris avec Romain Duris, étude des rapports entre deux frères, très remarquée au Festival de Cannes.\r\n\r\nLa complicité entre Louis et Christophe Honoré ne tarit pas puisque, l\'année suivante, ils se retrouvent pour Les Chansons d\'amour, comédie musicale où Garrel chante et incarne un amant torturé par la mort de sa compagne (jouée par Ludivine Sagnier) et qui va chercher consolation dans des bras inattendus. Les deux hommes se retrouveront encore en 2007 pour tourner La Belle personne, où Louis Garrel est un professeur d\'italien ayant une liaison avec une de ses jeunes élèves. La même année, il retrouve également son père Philippe Garrel, qui le dirige pour La Frontière de l\'aube.\r\n\r\nEn 2008, Louis Garrel passe pour la première fois derrière la caméra en scénarisant et réalisant Mes copains, un court métrage intimiste de 26 minutes où il filme ses propres amis, se débattant avec le temps qui passe, leurs échecs, leurs espoirs et leur besoin de créer. Lauréat du Prix Patrick Dewaere en 2009, il apparaît dans le dernier film de son cinéaste fétiche Christophe Honoré (Non ma fille, tu n\'iras pas danser), avant de s\'afficher aux côtés de Julie Depardieu et de Pascal Greggory dans Le Mariage à trois de Jacques Doillon.\r\n\r\nGarrel est ensuite honoré d\'une sélection à la Quinzaine des Réalisateurs cannoise en 2010, avec son moyen métrage Petit tailleur, qui met en scène une romance mélancolique entre Léa Seydoux et Arthur Igual. L\'année suivante, il interprète Clément dans la nouvelle comédie musicale de Christophe Honoré, Les Bien-aimés, et joue le compagnon de Monica Bellucci dans Un été brûlant réalisé par Philippe Garrel.\r\n\r\nAprès une courte apparition dans son propre rôle dans la comédie Les coquillettes de Sophie Letourneur, Louis Garrel s\'illustre l\'année suivante dans deux films réalisés par des personnes dont il est proche. Tout d\'abord, sa compagne, Valeria Bruni-Tedeschi pour Un Château en Italie, présenté en sélection officielle au Festival de Cannes suivi de La Jalousie dans lequel il forme un couple avec Anna Mouglalis devant la caméra de son père, Philippe Garrel.\r\n\r\nActeur emblématique du cinéma d\'auteur français, Louis Garrel est dirigé l\'année suivante par Bertrand Bonello dans Saint-Laurent, le biopic sulfureux consacré au célèbre couturier. Le comédien interprète Jacques De Bascher, l\'amant d\'Yves Saint-Laurent dans les années 1970. Son interprétation est saluée par la critique et lui permet de décrocher une nomination au César du meilleur acteur dans un second rôle.\r\n\r\nEn 2015, le comédien collabore de nouveau avec ses parents. Dans L\'Astragale réalisé par sa mère, Louis Garrel campe un photographe et prête sa voix en incarnant le narrateur dans le nouveau film de son père L\'Ombre des femmes. Il est en outre présent au Festival de Cannes pour deux occasions. D\'une part, il figure au casting du nouveau film de Maïwenn, Mon Roi aux côtés d\'Emmanuelle Bercot et Vincent Cassel mais surtout, il vient défendre son premier long métrage en tant que réalisateur, Les Deux amis dans lequel il joue face à Vincent Macaigne et sa compagne Golshifteh Farahani.\r\n\r\nLouis donne ensuite la réplique à Marion Cotillard dans Mal de pierres, sorti en octobre 2016. Il tourne l\'année suivante sous la direction d\'Arnaud Desplechin dans Les Fantômes d\'Ismaël avant de se glisser dans la peau de Robespierre dans la freque historique Un Peuple et son roi. Il s\'illustre également dans le costume d\'une autre grande figure, celle de Jean-Luc Godard, dans la comédie Le Redoutable de Michel Hazanavicius. En 2018, il retourne derrière la caméra avec L\'Homme fidèle, dirigeant Lily-Rose Depp et Laetitia Casta.','2019-01-16'),(3,4,'l\'homme fidèle',5,'Née en Normandie et découverte à 15 ans sur une plage corse, Laetitia Casta débute une carrière de mannequin qui la rend d\'emblée très populaire auprès du grand public. En 1998, elle fait ses premiers pas au cinéma avec le rôle de Falbala, dont est amoureux Obélix/Gérard Depardieu, dans Astérix et Obélix contre César.\r\n\r\nAprès le succès de la série télévisée La Bicyclette bleue, elle joue Les Ames fortes sous la direction de Raoul Ruiz, puis incarne Marion, une prostituée du Palais Oriental dans Rue des plaisirs de Patrice Leconte, en 2002. A l\'affiche du drame Gitano (2002), Laetitia Casta donne également la réplique à Benoît Magimel dans le remarqué Errance (2003) de Damien Odoul.\r\n\r\nAbsente des écrans pendant trois ans, Laetitia Casta s\'invite en 2006, aux côtés de Mathieu Amalric et Pierre Arditi, dans Le Grand appartement de Pascal Thomas. Après s\'être illustrée au générique de La Jeune fille et les loups, elle connaît une année 2009 faste : elle joue dans Visage de Tsai Ming-liang, puis incarne l\'icône Brigitte Bardot dans Gainsbourg - (vie héroïque), biopic sur le célèbre chanteur. Ce rôle lui permet de décrocher une nomination pour la Meilleure Actrice dans un Second Rôle aux Césars. Toujours aussi présente sur les écrans en 2011, l\'actrice prête sa voix au perroquet Perla dans le film d\'animation Rio, apparaît dans un clip de la chanteuse Rihanna, puis tient le rôle-titre de Derrière les murs, le premier film français en 3D relief hors film d\'animation. Elle y joue une romancière dans les années 1920 confrontée à d\'étranges visions. ','2019-01-02'),(4,4,'Tout sur Binoche',5,'\r\nFille cadette de parents divorcés, la jeune Juliette prend ses premiers cours de théâtre avec sa mère, puis s\'installe à Paris où, parallèlement à sa scolarité, elle s\'adonne à ses deux passions : la peinture et le théâtre. Elle monte Le Roi se meurt dans son lycée, et s\'inscrit à 17 ans au Conservatoire du Xe arrondissement, avant de poursuivre sa formation auprès de Véra Gregh.\r\n\r\n\r\nJuliette Binoche, qui a déjà joué Tchekhov ou Pirandello sur les planches, fait sa première apparition au cinéma en 1983 dans Liberty Belle, et obtient rapidement des petits rôles chez Godard (Je vous salue Marie) et Doillon (La Vie de famille). En 1985, Rendez-vous de Téchiné, dans lequel elle incarne une comédienne en herbe, l\'impose comme l\'une des actrices les plus prometteuses de sa génération. Récompensée par le Prix Romy-Schneider en 1986, elle donne deux ans plus tard la réplique à Daniel Day-Lewis dans L\'Insoutenable légèreté de l\'être, sa première expérience hors de nos frontières. Egérie de Leos Carax, qui l\'initie à la cinéphilie, elle tourne Mauvais sang puis Les Amants du Pont-Neuf (1991), une œuvre ambitieuse, qui la mobilisera durant trois ans.\r\n\r\n\r\nAprès deux films en anglais (Fatale, Les Hauts de Hurlevent), Bleu de Kieslowski marque, en 1993, une nouvelle étape dans la carrière de Binoche, qui voit sa prestation saluée par un César et un Prix d\'interprétation à Venise. Grâce à sa composition d\'infirmière dévouée dans Le Patient anglais de Minghella, elle décroche en 1997 un Ours d\'argent à Berlin et devient, 37 ans après Simone Signoret, la deuxième Française récompensée par un Oscar. En quête de personnages forts et d\'univers romanesques, elle multiplie les films d\'époque, du Hussard sur le toit (1996) au Chocolat (2001) en passant par La Veuve de Saint-Pierre (2000).\r\n\r\n\r\nAussi crédible en George Sand (Les Enfants du siècle, 1999) qu\'en esthéticienne gouailleuse (Décalage horaire, 2002), Juliette Binoche ne délaisse pas le cinéma d\'auteur : après des retrouvailles avec Téchiné (Alice et Martin), elle éclaire les œuvres dérangeantes de Haneke (Code inconnu en 2000, puis Caché en 2005) et Ferrara (Mary en 2005). Curieuse et passionnée, elle prend part à des films qui abordent des questions politiques : les crimes de l\'Apartheid (In my country), le sort des réfugiés (Par effraction) ou le conflit israélo-palestinien (Désengagement).\r\n\r\n\r\nSa stature internationale lui permet d\'apparaître dans des blockbusters (Godzilla, Ghost in the Shell) ou de travailler avec des maîtres du cinéma mondial tels que Hou Hsiao Hsien (Le Voyage du ballon rouge, 2008), Abbas Kiarostami (Shirin, Copie conforme pour lequel elle obtient le Prix d’interprétation féminine à Cannes), David Cronenberg (Cosmopolis, 2012) et les Japonais Naomi Kawase (Voyage à Yoshino, 2018) et Hirokazu Kore-eda (La Vérité (…), 2019).\r\n\r\n\r\nToujours là où on ne l\'attend pas, elle s’offre en 2017 une parenthèse télévisée et joue avec son image le temps d’un épisode de Dix pour Cent aux côtés de Camille Cottin, qu’elle retrouve la même année dans Telle Mère, telle fille. Malgré sa popularité hors de nos frontières, elle démontre sa fidélité à des cinéastes français tels que Claire Denis (la comédie Un beau soleil intérieur et le controversé film de SF High Life), Bruno Dumont (l’austère biopic Camille Claudel, 1915 et l’extravagant Ma Loute) et Olivier Assayas (L’Heure d’été, Sils Maria, Doubles vies). ','2019-01-31'),(5,3,'Tout sur Bonnaire',2,'Septième d\'une famille de onze enfants, Sandrine Bonnaire débute en 1982 comme figurante dans La Boum et Les Sous-doués en vacances. Alors qu\'elle accompagne sa soeur à un casting, elle est choisie par Maurice Pialat pour un projet qui n\'aboutira pas, Les Meurtrières. Mais le cinéaste en fait l\'héroïne du film auquel il songe depuis dix ans, A nos amours, portrait d\'une ado éprise de liberté. Par l\'intensité qui se dégage de son jeu spontané, Sandrine Bonnaire fait, à 16 ans, une irruption spectaculaire dans le cinéma français, saluée par un César du Meilleur jeune espoir en 1984.\r\n\r\n\r\nLa comédienne entretiendra avec Pialat des rapports passionnels, refusant le rôle principal de Police, dans lequel elle apparaît néanmoins, puis incarnant en 1987 Mouchette dans Sous le soleil de Satan, le film dont elle se dit le plus fière. La jeune actrice trouve d\'autres rôles très forts auprès de cinéastes exigeants : clocharde dans Sans toit ni loi de Varda -composition qui lui vaut un César de la Meilleure actrice en 1986-, Captive du desert en 1989 pour Depardon, Jeanne d\'Arc en 1992 chez Rivette (qu\'elle retrouvera plus tard dans Secret défense), elle tourne également avec Sautet (Quelques jours avec moi), Doillon, Techiné et Leconte.\r\n\r\n\r\nLe Prix d\'interprétation qu\'elle reçoit à Venise en 1995 pour sa stupéfiante composition de domestique analphabète dans La Cérémonie de Chabrol (avec qui elle tournera aussi Au coeur du mensonge) est un nouveau témoignage de reconnaissance de la profession, mais Sandrine Bonnaire est toujours perçue par le grand public comme une égérie du cinéma d\'auteur. Elle s\'oriente donc à la fin des années 90 vers un cinéma plus accessible, avec la fresque Est-Ouest (1999), le mélo C\'est la vie et Mademoiselle, la pétillante comédie de Philippe Lioret (qu\'elle retrouvera sur L\'Equipier) qui permet aux spectateurs de découvrir son lumineux sourire. A la même période, son personnage de chirurgien dans la série à succès Une femme en blanc conforte sa popularité.\r\n\r\n\r\nStar en tandem avec Luchini (Confidences trop intimes, 2004), Lindon (Je crois que je l\'aime, 2006) ou Catherine Frot (L\'Empreinte de l\'ange, 2008), elle continue pourtant de tourner dans des oeuvres moins évidentes (Un coeur simple d\'après Flaubert). En 2007, la comédienne crée la surprise en passant derrière la caméra avec Elle s\'appelle Sabine, un documentaire consacré à sa soeur autiste, chaleureusement accueilli lors de sa présentation à Cannes dans le cadre de la Quinzaine des Réalisateurs. Loin d\'avoir abandonné sa carrière d\'actrice, elle incarne en 2009 une joueuse d\'échecs passionnée, dans Joueuse de Caroline Bottaro aux côtés de l\'acteur américain Kevin Kline.\r\n\r\n\r\nSe faisant plus rare sur les écrans, Sandrine Bonnaire est séduite par Johnny Hallyday dans la comédie dramatique Salaud, on t\'aime de Claude Lelouch qui sort en salles en 2014. L\'année suivante, on peut la voir au haut de l\'affiche La Dernière leçon, qui traite de la difficile question de l\'euthanasie.','2019-01-30'),(6,3,'Jack Sparrow',1,'\r\nFils d\'un ingénieur et d\'une femme de ménage, Johnny Depp se passionne pour la musique en assistant à un spectacle de gospel. Il rejoint alors le groupe The Flame, qui devient The Kids, et fait la première partie de la tournée d\'Iggy Pop. Deux ans plus tard, les musiciens se rendent à Los Angeles, mais la formation ne remporte pas le succès escompté. C\'est à cette période que Depp fait la connaissance de Nicolas Cage, qui lui fait rencontrer son agent. Il obtient ainsi un petit rôle dans Les Griffes de la nuit (1984) de Wes Craven.\r\n\r\nJohnny Depp s\'inscrit ensuite au Loft Studio de Los Angeles pour suivre des cours de comédie. Une fois sorti de l\'école, il est enrôlé chez les marines de Platoon, puis connaît la célébrité avec le lancement, en 1987, de la série 21 jump street. Sa carrière lancée, il choisit de rompre avec l\'image véhiculée par la télévision, celle d\'un jeune acteur pour midinettes, en jouant sous la direction de John Waters dans le satirique Cry-baby (1990). A partir de ce film, l\'acteur ne cessera d\'être en marge, incarnant régulièrement des personnages décalés et hors-normes. Toujours en 1990, en interprétant Edward aux mains d\'argent, il entame avec le réalisateur Tim Burton une fructueuse collaboration qui se poursuivra avec Ed Wood (1994), Sleepy hollow, la légende du cavalier sans tête (1999), Charlie et la chocolaterie (2004), Les Noces funèbres (2005), film d\'animation pour lequel il prête sa voix, et la comédie musicale Sweeney Todd (2008).\r\n\r\nPrenant quelque peu ses distances vis-à-vis de l\'industrie hollywoodienne, Johnny Depp collabore avec des cinéastes aussi talentueux que Emir Kusturica (Arizona dream, 1992), Lasse Hallström (Gilbert Grape, 1993 ; Le Chocolat, 2001) ou encore Jim Jarmusch (Dead man, 1995). Fort de cette expérience, il passe à la réalisation en 1997 avec The Brave, qui ne remportera pas le succès escompté, et ce malgré la présence au générique de son ami Marlon Brando. De retour devant la caméra, il s\'éloigne des personnages romantiques et poétiques pour jouer les flics infiltrés dans la mafia dans Donnie Brasco (1997), les journalistes déjantés dans Las Vegas parano (1998), les chercheurs de livres rares en proie au fantastique dans La Neuvième porte (1999) ou les trafiquants de drogue dans Blow (2001).\r\n\r\nMalgré l\'échec du thriller Intrusion (1999) et l\'abandon du tournage chaotique de L\'Homme qui tua Don Quichotte, film inachevé de Terry Gilliam qui donnera naissance au documentaire Lost in la Mancha (2003), le charismatique Johnny Depp garde la confiance des studios. Prédisposé à interpréter des films à costumes comme From Hell (2002), Neverland (2004) et Rochester, le dernier des libertins (2006), il renoue avec le succès grâce à l\'ultra rentable quadrilogie Pirates des Caraïbes (2003-2011), faisant de l\'incontournable pirate Jack Sparrow l\'un des personnages les plus marquants du cinéma grand public. Malgré ce succès colossal, l\'acteur n\'oublie pas ses amis et joue ainsi les chapeliers fous pour Tim Burton dans Alice au Pays des Merveilles ainsi que l\'une des incarnations de Tony dans L\'Imaginarium du Docteur Parnassus de Terry Gilliam.\r\n\r\nActeur caméléon, il aime changer de registre et apparaît dans le polar Public Enemies de Michael Mann (dans lequel il incarne le célèbre gangster John Dillinger). En 2010, il est manipulé par Angelina Jolie dans le thriller The Tourist, puis prête sa voix, l\'année suivante, au caméléon Rango dans le film de Gore Verbinski, avant de retrouver, toujours en 2011 et treize ans après Las Vegas parano, l\'univers de l\'écrivain Hunter S. Thompson pour le déjanté Rhum Express. Avec le vampire Barnabas de Dark Shadows (2012), Johnny Depp ajoute encore un personnage loufoque et décalé à sa filmographie. Dans ce long métrage, tandis que son personnage découvre le monde des vivants, l\'acteur retrouve son ami Tim Burton pour leur huitième collaboration.\r\n\r\nEn 2013, l\'année de ses 50 ans, le comédien retrouve une fois de plus Gore Verbinski pour les besoins de l\'atypique western Lone Ranger, une grosse production dont le budget avoisine les 250 millions de dollars mais qui se solde par un gros échec financier. Ses films suivants, Transcendance, Charlie Mortdecai et Strictly Criminal peinent eux aussi à trouver leur public. Depp retrouve ensuite deux personnages qui ont fait des merveilles au box office : Le Chapelier Fou (Alice de l\'autre côté du miroir, 2016) et Jack Sparrow (Pirates des Caraïbes 5, 2017).\r\n','2019-01-31'),(7,4,'Jolie',7,'Angelina Jolie Voight naît le 4 juin 1975 à Los Angeles. Elle est élevée par sa mère, Marcheline Bertrand, qui se sépare de son père, l’acteur Jon Voight, en 1976. A l’âge de 11 ans, lorsque sa famille déménage à Los Angeles, la jeune Angelina décide de devenir actrice et prend ses premiers cours de comédie. Mais l’adolescence de la jeune fille est difficile. Elle s’auto-mutile et, raillée par ses camarades de classe pour son look, elle finit par abandonner ses cours de théâtre. Elle décide alors de se lancer alors dans le mannequinat et apparaît également dans de nombreux clips. A 16 ans, elle se ravise et reprend ses cours de comédie, puis débute à l’écran aux côtés de son père, avec qui elle entretient une relation compliquée.\r\n\r\nAprès plusieurs apparitions dans des films de son frère, le réalisateur James Haven, c’est avec un film à petit budget, Glass Shadow, en 1993, que la carrière de l’actrice démarre réellement. En 1995, elle obtient son premier rôle principaldans le film Hackers. Puis avec George Wallace en 1997 et Femme de rêve en 1998, deux films biographiques acclamés par la critique, la carrière d’Angelina Jolie prend un nouvel élan. L\'actrice, connue pour ses nombreux tatouages qui contraignent les cinéastes à faire preuve de créativité lors des scènes d’amour, atteint le sommet de sa célébrité avec 60 secondes chrono (2000) et son interprétation de l\'héroïne de jeu vidéoLara Croft dans Lara Croft: Tomb Raider(2001). Propulsée au rang de star internationale, la sulfureuse Angie s\'impose depuis comme l\'une des actrices les plus célèbres et les mieux payées d\'Hollywood. En 2000, elle remporte un Golden Globe et un Oscar de la meilleureactricedans un second rôle avec Une Vie Volée de James Mangold.\r\n\r\nL’actrice entreprend alors un changement d\'image radical. Le tournage de Tomb Raider, au Cambodge, la sensibilise aux causes humanitaires. En 2001, elle devient ambassadrice du HCR (Haut Commissariat de l\'ONU pour les Réfugiés) et mène plus de 40 missions sur le terrain. Elle se distingue en se rendant à plusieurs reprises dans des zones de conflits, notamment en Irak, dans la province du Darfour au Soudan et en Libye pendant les révolutions arabes de 2011. Sa fidélité à la cause des réfugiés pendant plus de dix ans lui vaudra d’être nommée, enavril 2012, Envoyée Spéciale du HCR. Un poste exceptionnel qui lui permet notamment de représenter le HCR au niveau diplomatique.\r\n\r\nAngelina Jolie connaît ses plus grands succès commerciaux avec la comédie Mr. et Mrs. Smith (2005) et le film d\'animation Kung Fu Panda (2008). En 2008, elle décroche unGolden Globe de meilleureactrice dans un rôle dramatique pour Un Cœur invaincu de Michael Winterbottom. Elle incarne ensuite Christine Collins, le premier rôle du film de Clint Eastwood, L’Echange, dont la première est donnée au Festival de Cannes. En 2010, l’actrice passe de l’autre côté de la caméra et réalise le film Au pays du sang et du miel, fresque lucide sur les abus sexuels comme arme de guerre et sur la purification raciale. En 2015, elle récidive l\'expérience et dirige Brad Pitt dans le long-métrage Vue sur mer.\r\n\r\nCôté vie privée, Angelina Jolie se marie avec l\'acteur Jonny Lee Miller le 28 mars 1996. Mais leur histoire tourne court et leur divorce est prononcé en février 1999. Angelina Jolie rencontre l\'acteur Billy Bob Thornton sur le tournage du film Les Aiguilleurs (1999), et l\'épouse en secondes noces le 5 mai 2000. Le couple divorce trois ans plus tard. En 2004, sur le tournage de Mr & Mrs Smith, Angelina Jolie rencontre Brad Pitt. L\'acteur a un coup de foudre immédiat. Pour elle, il divorce de l\'actrice Jennifer Aniston en octobre 2005, et adopte Maddox (né en août 2001) et Zahara (née en janvier 2005), enfants que la comédienne avait elle-même adoptés. Le monde entier les surnomme les Brangelina. Le couple agrandit la tribu avec naissance de leur fille, Shiloh Nouvel, le 27 mai 2006, en Namibie et l\'adoption d\'un garçon originaire du Vietnam, Pax Thien (né en novembre 2003), en mars 2007. Le 12 juillet 2008, l\'actrice accouche des jumeaux Knox et Vivienne, à Nice. Deux ans après leurs fiançailles, Brad Pitt et Angelina Jolie se marient dans leur propriété du domaine de Miraval dans le sud de la France, le 23 août 2014. En septembre 2016, Angelina Jolie demande le divorce. ','2019-01-29'),(8,2,'Aucun',6,'Baladée entre la Grèce (le nom de son père est Anastassakis) et les Etats-Unis jusqu\'à ce que ses parents divorcent, la petite Jennifer Aniston s\'établit à New York avec sa mère à l\'âge de neuf ans. Deux ans plus tard, elle s\'inscrit à la Rudolf Steiner School et entreprend dès lors de devenir actrice. Etudiante sérieuse de la New York\'s High School of the Performing Arts (rendue célèbre par la série Fame) dont elle ressort diplômée en 1987, l\'apprentie comédienne trouve de petits rôles dans des productions off-Broadway telles que For Dear Life ou Dancing on Checker\'s Grave. La jeune femme enchaîne alors les prestations télévisuelles de moindre importance et entre au cinéma par la petite porte avec un rôle dans la série Z horrifique Leprechaun en 1993.\r\n\r\n\r\nMais la chance tourne rapidement pour l\'actrice, enrôlée en 1994 pour incarner dans Friends le personnage de la gentiment capricieuse Rachel Green, qui lui rapportera l\'Emmy de la Meilleure comédienne dans une série comique en 2002 et le Golden Globe dans la même catégorie l\'année suivante. La notoriété est immédiate. Tout comme ses collègues qui font leur passage sur grand écran avec plus ou moins de réussite (Courteney Cox dans Scream, Lisa Kudrow dans Mafia blues), Jennifer Aniston retente l\'aventure cinématographique avec la romance L\'Objet de mon affection (1998), qui rencontre un succès timide.\r\n\r\n\r\nProfitant des pauses estivales entre les tournages des saisons de Friends, l\'actrice trouve ainsi le temps de donner la réplique à Mark Wahlberg dans Rock Star en 2001, avant que la critique n\'encense son rôle de femme mariée désenchantée dans le film indépendant The Good girl (2002). Privilégiant les comédies, genre où elle excelle, Jennifer Aniston se retrouve à l\'affiche en 2003 de Bruce tout-puissant face à Jim Carrey, puis en 2004 en petite amie fantasque de Ben Stiller dans Polly et moi avant d\'incarner la fille du Lauréat dans La Rumeur court.... Depuis l\'arrêt de la série Friends en mai 2004, la jeune femme se consacre entièrement au cinéma et a même fondé sa propre société de production, Plan B. En 2005, elle aborde un rôle plus sombre avec le thriller Dérapage dans lequel elle côtoie Vincent Cassel et Clive Owen.\r\n\r\n\r\nPar la suite, l’actrice revient très vite vers la comédie, genre qui lui est familier, en décrochant les premiers rôles dans des films qui, comme La Rupture avec Vince Vaughn (2006), Marley & moi avec Owen Wilson (2009) ou Ce que pensent les hommes avec Ben Affleck (id.), rencontrent un très grand succès au box-office. En 2010, aux côtés de Gerard Butler, elle partage l\'affiche du Chasseur de primes, mélange entre comédie romantique et film policier réalisé par Andy Tennant. L\'année suivante, Jennifer Aniston est à l\'affiche de deux films, Le Mytho - Just Go With It où elle joue la fausse femme d\'Adam Sandler et Comment tuer son Boss ? dans lequel elle campe l\'un des boss du titre, une dentiste nymphomane qui rend la vie impossible à Dale (Charlie Day), son assistant. Lucratif, le film bénéficie d\'une suite en 2014.\r\n\r\n\r\nToujours au rayon comédie, elle tient le premier rôle féminin de Peace, Love et plus si affinités et retrouve, pour l\'occasion, Paul Rudd, son partenaire de L\'Objet de mon affection et Friends. Après un rôle remarqué dans la comédie déjantée Les Miller, une famille en herbe, Jennifer Aniston relève le défi en 2015 de jouer une femme dépressive et suicidaire qui tente de reprendre goût à la vie dans Cake. La même année, l\'actrice est dirigée par l\'ancienne gloire du Nouvel Hollywood Peter Bogdanovich dans Broadway Therapy, comédie dramatique où elle retrouve Owen Wilson. ','2019-01-31'),(9,1,'Guillaume',3,'\r\n\r\nPassionné d\'équitation, Guillaume Canet, né le 10 avril 1973 à Boulogne-Billancourt, voit une prometteuse carrière de jockey interrompue par un accident. Se tournant vers l\'art dramatique, il suit une formation au Cours Florent et se fait remarquer au théâtre dans la pièce La Ville dont le Prince est un enfant d\'Henry de Montherlant, qu\'il interprète aux côtés de Christophe Malavoy.\r\n\r\nAprès une première apparition au cinéma dans le court-métrage Le Fils unique, en 1995, Guillaume Canet se retrouve face à Jean Rochefort pour les besoins du thriller Barracuda (1997). Mais ce sont ses prestations dans En plein coeur (1998) de Pierre Jolivet et Je règle mon pas sur le pas de mon père (id.) de Rémi Waterhouse qui lui assurent une belle notoriété naissante. Il retrouvera ces cinéastes qui lui ont donné sa chance en 2002 avec le moyenâgeux Frère du guerrier et la comédie Mille millièmes, fantaisie immobilière.\r\n\r\nEn 2000, Guillaume Canet devient un acteur de tout premier plan, donnant la réplique à Leonardo DiCaprio sur La Plage, testant La Fidélité de Sophie Marceau, goûtant aux Morsures de l\'aube d\'Antoine de Caunes et composant le biographe autoproclamé de Vidocq. Après avoir réalisé quelques spots publicitaires et courts-métrages (Sans regrets, Je taim), il se met en scène en 2002 dans un premier long-métrage, Mon idole, fable amorale sur le milieu du show business. Après ce galop d\'essai réussi, Guillaume Canet aborde des genres différents : il flirte avec Marion Cotillard dans Jeux d\'enfants, rêve d\'aventures dans le déjanté Narco et combat dans les tranchées de l\'émouvant Joyeux Noël.\r\n\r\nAprès le drame L\'Enfer et la comédie Un ticket pour l\'espace, le comédien prête sa voix au film d\'animation Pixar, Cars. Puis il franchit un nouveau palier en 2006 en réalisant Ne le dis à personne, adaptation du roman d\'Harlan Coben où il dirige un casting de luxe réunissant François Cluzet, Kristin Scott Thomas ou encore Jean Rochefort. Le long-métrage remporte quatre César, dont celui du Meilleur acteur pour François Cluzet et du Meilleur réalisateur pour Canet, qui devient le cinéaste le plus jeune de l\'histoire des César à être récompensé dans cette catégorie.\r\n\r\nDésormais figure majeure du cinéma hexagonal, Guillaume Canet côtoie en 2007 Audrey Tautou dans la comédie romantique Ensemble, c\'est tout, adaptation littéraire du best-seller d\'Anna Gavalda. La même année, il est très antipathique dans Darling puis tient la vedette de La Clef, thriller de Guillaume Nicloux où il partage notamment l\'affiche avec Marie Gillain, Jean Rochefort et Vanessa Paradis.\r\n\r\nAprès avoir dirigé François Cluzet dans Ne le dis à personne, c\'est désormais de l\'autre côté de la caméra que les deux acteurs se retrouvent dans Les Liens du sang de Jacques Maillot. Ils y interprètent deux frères bien différents (l\'un est policier, l\'autre criminel) ayant des difficultés à tirer un trait sur leur passé. C\'est sur un ton plus léger que Guillaume Canet choisit de finir l\'année 2008 en prêtant sa voix au narrateur de La Famille Suricate.\r\n\r\n2009 plonge l\'acteur malgré lui dans le monde dangereux des services secrets. Il enfile le costume d\'un bagagiste qui va devoir s\'improviser agent secret dans Espion(s) de Nicolas Saada. Puis, en pleine guerre froide, Emir Kusturica l\'implique de nouveau devant la caméra de Christian Carion, cinq ans après Joyeux Noël. Après avoir partagé l\'affiche avec Marion Cotillard dans Le Dernier vol (2009), il la dirige sur son troisième long métrage Les Petits mouchoirs (2010), un film de \"potes\" très personnel pour lequel il retrouve aussi, entre autres, les acteurs François Cluzet et Gilles Lellouche. Dix ans après La Plage, l\'acteur tourne à nouveau de l’autre côté de l’Atlantique dans le drame amoureux Last Night, entouré d’un casting international : Keira Knightley, Eva Mendes et Sam Worthington.\r\n\r\nDe retour en France, il tourne dans le nouveau film d\'époque de Christophe Barratier, La Nouvelle guerre des boutons, avec Laetitia Casta et une panoplie d\'\"enfants guerriers\", avant de se retrouver sous la direction de Cédric Kahn pour le dramatique Une vie meilleure, aux côtés de Leïla Bekhti, avec qui il forme un jeune couple plein d\'illusions qui se voit brutalement malmené par de gros problèmes d\'endettement. La même année, il prête sa voix à la version française de Lightning McQueen pour Cars 2.\r\n\r\nGuillaume Canet scénarise et tourne ensuite dans Jappeloup de Christian Duguay, un biopic sur un cheval, champion de saut d’obstacle, et son jockey. Un an plus tard, il retourne aux États-Unis mais cette fois pour réaliser, produire et coscénariser avec James Gray son premier film américain, Blood Ties, un remake des Liens du sang, porté par Clive Owen et Billy Crudup. L\'expérience internationale se poursuit avec The Program de Stephen Frears, aux côtés de Ben Foster et Chris O\'Dowd et The Siege of Jadotville, avec Jamie Dornan et Mark Strong, qui ne connaît qu\'une sortie en VOD.\r\n\r\nL\'acteur n\'en oublie pas pour autant le cinéma hexagonal, au sein duquel il fait toujours preuve d\'éclectisme : inquiétant et glaçant dans La prochaine fois je viserai le coeur et L\'homme qu\'on aimait trop, poétique dans Le secret des banquises, historique dans Cézanne et moi avec Guillaume Gallienne... Il opère finalement un retour aux sources déjanté avec Rock\'n\'Roll, dans lequel il se met en scène avec Marion Cotillard dans une version inattendue et pleine d\'auto-dérision de leur couple.\r\n','2019-01-31'),(10,2,'Le joueur de poker',1,'\r\n\r\nPatrick Bruel, né Maurice Benguigui le 14 mai 1959 à Tlemcen en Algérie.\r\n\r\nEn 1962, Patrick et sa mère, Augusta, tout juste divorcée, quittent l\'Algérie pour la France. Installé à Argenteuil, ou sa mère est professeur de français, Patrick Bruel passe une adolescence paisible, entre copains du lycée François Villon, matchs de football et musique.\r\n\r\nAprès des vacances comme GO au club Med, les premiers pas professionnel de Patrick Bruel se font au cinéma.\r\nEn 1978, Alexandre Arcady recherche pour son film \"Le coup de Sirocco\", un garçon de 18 ans avec l\'accent pied noir, et Bruel décroche le rôle. L\'année suivante il part pour New York, un voyage de deux semaines qui se prolonge neuf mois, le temps, entre autre de rencontrer Gérard Presgurvic.\r\n\r\nEn 1982, la sortie d\'un premier disque, Vide, est plus que confidentielle, mais au cinéma, Arcady propose à Patrick Bruel un rôle dans le film \"Le grand carnaval\".\r\n\r\nParallèlement à sa naissante carrière d\'acteur Patrick Bruel continue de travailler ses chansons, et en 1984, il fait sa première télévision en tant que chanteur dans l\'émission de Pascal Sevran, \"La chance aux chansons\".\r\n\r\nLe 45 tours Marre de cette nana-là sort, puis l\'année suivante Non, j\'veux pas.\r\nLoin d\'être un énorme succès ces chansons contribuent cependant à imposer le nom de Bruel dans la chanson.\r\n\r\nPendant les années qui suivent, excepté le 45 tours Non, j\'veux pas, c\'est vers le cinéma que Bruel se tourne : \"La tête dans le sac\" de Gérard Lauzier, \"Profs\" de Schulman, \"Attention Bandits\" de Claude Lelouch.\r\n\r\nEn 1986, De Face le premier album de Patrick Bruel est dans les bacs suivit d\'un rendez vous sur la scène de l\'Olympia en 1987.\r\nLe cinéma fait de nouveau appel à lui, et Patrick Bruel tourne \"La maison assassinée\" de Georges Lautner, \"L\'union Sacrée\" d\'Alexandre Arcady, et \"Force Majeure\" de Pierre Jolivet.\r\n\r\nEn octobre 1989, Alors Regarde, nouvel album produit par Mick Lanaro marque le début de la gloire pour Bruel.\r\nLe premier extrait Casser La Voix atteint le sommet du top 50, et l\'album est vendu à près de deux millions d\'exemplaires.\r\nLes tubes s\'enchaînent, J\'te l\'dis Quand Même, Alors Regarde, puis Place Des Grands Hommes.\r\nPatrick Bruel bat le record de couvertures de magazines de l\'année.\r\n\r\nEntre le 05 octobre 1990 et le 17 août 1991, il part en tournée, effectuant 130 concerts pour plus de 700 000 personnes.\r\n\r\nAprès ces années de folie, la carrière de Bruel se calme, il tourne \"Toutes Peines Confondues\", de Michel Deville, et \"Profil Bas\" de Claude Zidi en 1993, puis sort en avril 1994 un nouvel album : Bruel.\r\n\r\nFace à l\'album Alors Regarde, ce dernier disque fait pale figure même si les ventes ont dépassées le millions d\'exemplaires. Bouge, Combien de Murs et J\'suis Quand Même Là sont extrait de l\'album et connaissent un relatif succès.\r\n\r\nAprès la tournée de l\'album, Bruel, le chanteur, endosse à nouveau le costume d\'acteur et tourne \"Sabrina\" de Sydney Pollack, \"Le Jaguar\" de Francis Weber, \"K\" de Alexandre Arcady, \"Les Mésaventures de Margaret\" de Brian Skeet, \"Hors Jeu\" de Karim Dridi et \"Lost and Found\" de Jeff Pollack.\r\n\r\nEn septembre 1999, il sort un nouveau single J\'te Mentirais et en octobre, un nouvel album Juste Avant, album fruit de la collaboration de Patrick Bruel avec ses deux frères.\r\n\r\n2002, Bruel concrétise une envie qu\'il avait déjà amené sur scène au travers d\'un Medley rétro sur la tournée 2000, faire un disque de chanson des années 30.\r\nEn juin l\'album (Entre Deux) est dans les bacs. Il se vendra à deux millions d\'exemplaires.\r\n\r\nEn 2003, naissance de Oscar, fils qu\'il a avec Amanda Maruani qu\'il épousera l\'année suivante. Le couple aura un second garçon, Léon, en 2006 avant de se séparer en 2007. Côté état civil justement, depuis 2003, après un décret parut au journal officiel, Maurice Benguigui est autorisé à s\'appeler officiellement Patrick Bruel.\r\n\r\nEn 2006 sort l\'album Des souvenirs devant. Suit une tournée immortalisée sur le CD Live, des souvenirs... ensemble en 2007.\r\n','2019-01-31'),(11,2,'GéGé',7,' Issu d\'un milieu modeste (son père est tôlier-formeur), Gérard Depardieu grandit au milieu de cinq frères et soeurs. Après une adolescence difficile, qui le voit flirter avec la délinquance, il se découvre une passion pour le théatre lors d\'un voyage à Paris. Elève de Jean-Laurent Cochet, il fait ses premiers pas au cinéma en 1970 dans Le Cri du cormoran le soir au-dessus des jonques de Michel Audiard.\r\n\r\nGérard Depardieu est révélé en 1974 par son rôle de gentil voyou en cavale dans Les Valseuses, fable libertaire de Blier avec Patrick Dewaere et Miou-Miou. L\'année suivante, le succès du thriller médical Sept morts sur ordonnance permet au comédien, jusqu\'alors abonné aux rôles de loubards, de montrer l\'étendue de son répertoire. Tournant avec de grands réalisateurs italiens (1900 de Bertolucci en 1976, La Dernière Femme du provocateur Ferreri), Depardieu passe avec aisance de l\'univers de Marguerite Duras (Le Camion en 1977) à celui de Zidi (Inspecteur la Bavure en 1980). En 1984, il s\'essaye à la réalisation en adaptant Le Tartuffe de Molière, en faisant du personnage principal (qu\'il interprète), un personnage austère, très différent de l\'original.\r\n\r\nTout en poursuivant sa collaboration avec Blier, du grinçant Tenue de soirée à l\'émouvant Trop belle pour toi en 1989, Gérard Depardieu devient le compagnon de route de plusieurs grands noms du cinéma d\'auteur français : alter ego de Pialat, qui le fait tourner quatre fois, il obtient le Prix d\'interprétation à Venise pour Police en 1985, et campe un abbé rongé par le doute dans Sous le soleil de Satan. Cobaye de l\'expérimentateur Resnais dans Mon oncle d\'Amérique, il trouve à la même époque des rôles d\'amant passionné chez Truffaut, dans Le Dernier Métro -un succès commercial qui lui vaut un César en 1981- puis La Femme d\'à côté. Il s\'illustre parallèlement dans la comédie en formant un tandem gagnant avec Pierre Richard dans les buddy movie à la française de Francis Veber (La Chèvre en 1981, Les Compères en 1983, et Les Fugitifs en 1986).\r\n\r\nAprès le succès du Retour de Martin Guerre en 1982, Gérard Depardieu incarnera plusieurs personnages historiques ou issus de classiques de la littérature française tels que Jean de Florette pour Berri ou Rodin dans Camille Claudel. Il accomplit l\'une de ses compositions les plus mémorables dans Cyrano de Bergerac (1990) de Rappeneau, rôle pour lequel il décroche un César, un prix à Cannes et une nomination à l\'Oscar. S\'autorisant quelques escapades américaines (Christophe Colomb de Ridley Scott) et s\'offrant le luxe de tourner avec Godard (Hélas pour moi), il est également producteur à l\'occasion (Décroche les étoiles) et participe à la réalisation en 1999 avec Un pont entre deux rives.\r\n\r\nDans les années 2000, l\'insatiable Gérard Depardieu reste plus que jamais une figure centrale du 7ème art, à qui aucun territoire ne semble étranger : la comédie grand public (Le Placard et Tais-toi ! de Veber, la série des Astérix), le polar (36 Quai des Orfèvres en 2004, L\'Instinct de mort en 2008), le drame intimiste (Aime ton père avec son fils Guillaume), la fresque à gros budget (Bon voyage, La Môme) ou même le cinéma d\'animation (il prête sa voix au coq de Chicken Run).\r\n\r\nEn dépit de la longévité de sa carrière, il parvient encore à surprendre critique et spectateurs, comme lorsqu\'il joue un amoureux transi dans Les Temps qui changent de Téchiné, un humble artiste de baloche dans Quand J\'étais chanteur (2006) ou un commissaire vulnérable (Bellamy, 2009). Après avoir incarné différents seconds rôles dans des genres cinématographiques variés (truand de seconde zone aux côtés de François Cluzet dans A l\'origine, mafieux dans le Blockbuster de science fiction Babylon A. D., etc.), Gérard Depardieu revient au film historique, en interprétant Alexandre Dumas dans en 2010, où il donne la réplique à Benoît Poelvoorde.\r\n\r\nLa même année, les deux acteurs se retrouvent à nouveau dans Mammuth, un road movie mis en scène par Benoît Delépine et Gustave Kervern, dans lequel Gérard Depardieu joue un retraité entamant un périple avec sa moto pour récupérer l\'intégralité de ses points retraite. Année faste et variée pour l\'acteur, qui tourne pour la deuxième fois sous la direction de Jean Becker (après Elisa en 1995) dans La Tête en friche, drame dans lequel il interprète un campagnard un peu simplet qui va se lier d\'amitié avec une vieille dame (Gisèle Casadesus). Il joue ensuite pour François Ozon dans le film Potiche, puis enfile deux ans plus tard pour la quatrième fois le costume du personnage d’Obélix avec Astérix et Obélix : au service de Sa Majesté. Toujours en 2012, il devient Ursus, un forain haut en couleurs recueillant Marc-André Grondin et Christa Theret pour les besoins de L\'Homme qui rit.\r\n\r\n\r\nTournant beaucoup, Gérard Depardieu alterne projets originaux indépendants (Valley Of Love, The End, Tour De France) avec des films plus grand public (Les Invincibles, La Dream Team). L\'acteur incarne même un personnage fortement inspiré de Dominique Strauss-Kahn dans Welcome to New York d\'Abel Ferrara et goûte aux joies du petit écran en se glissant dans la peau du maire de Marseille dans la série Netflix du même nom. Il se tourne ensuite vers un exercice qu\'il connaît bien, l\'interprétation d\'une personnalité ayant réellement existé, en prêtant sa carrure à Staline dans le biopic Le Divan de Staline de Fanny Ardant.\r\n','2019-01-31'),(12,5,'L\'homme fidèle',1,'L\'argument : Abel et Marianne sont séparés depuis 10 ans. Alors qu’ils se retrouvent, Abel décide de reconquérir Marianne. Mais les choses ont changé : Marianne a un fils, Joseph, et sa tante, la jeune Ève, a grandi. Et ils ont des secrets à révéler...\r\nNotre avis : Louis Garrel en tant que cinéaste reprend une trame similaire à celle de son premier film, Les Deux amis, à savoir un marivaudage axé sur le triangle amoureux. Mais alors que la précédente œuvre se voulait une adaptation (certes libre) des Caprices de Marianne, le présent opus est basé sur un matériau originel, coécrit avec Jean-Claude Carrière. Le ton demeure toutefois identique et Garrel reste manifestement marqué par un argument qui était aussi celui de François Truffaut dans Jules et Jim ou Claude Sautet avec César et Rosalie. On a même droit à deux triangles sentimentaux qui constituent le prétexte narratif, à dix ans d’intervalle. En premier lieu, Marianne (Lætitia Casta) est partagée entre son amour pour Abel (Louis Garrel) et celui qu’elle découvre pour Paul (que l’on ne verra jamais).\r\nAprès la mort de ce dernier, nous découvrons qu’Ève (Lily-Rose Depp), la jeune sœur de Paul, a toujours été éprise d’Abel qu’elle essaiera d’arracher à Marianne, de nouveau en couple avec lui. Ce canevas minimaliste est greffé à une vague trame policière lorsqu’une des deux femmes est soupçonnée par Adam d’être une criminelle. Ayant conscience que ce scénario peine à remplir le cahier des charges d’un long métrage (on leur sera reconnaissant d’avoir limité sa durée à 1h24), les auteurs misent sur un ton décalé, des dialogues sophistiqués et un mélange des genres, établissant des glissements insolites entre le vaudeville romanesque et le drame mélancolique, le leitmotiv de la mort imprégnant avec audace une histoire guère originale sur le papier. Le meilleur réside dans son humour pince-sans-rire : lorsqu’Adam apprend sans sourciller que la femme qu’il aime le quitte pour son meilleur ami dans la séquence d’ouverture, il reste imperméable et ne manifeste ni colère ni douleur, tel un Buster Keaton stoïque et serein.\r\nSans coquetteries de style ni effets de montage, l’art de Louis Garrel mise sur une belle épure qui contraste avec l’agitation intérieure des personnages : « Il n’y a quasiment pas de plan à l’épaule, je voulais qu’il n’y ait pas de démonstration de la part de la caméra, que ce soit très simple, comme le scénario est très simple, je voulais ça pour le rythme du film », a déclaré le réalisateur. Ce cinéma est nimbé de légèreté et de grâce, dans la lignée balisée de la Nouvelle Vague, ce qui n’est pas surprenant de la part de l’interprète de Doillon, Bonello, Honoré, et bien sûr Philippe Garrel… C’est la qualité mais en même temps la limite d’une œuvre qui peine à franchir la zone de confort de la comédie d’auteur made in France, un problème qui était aussi celui du récent En liberté ! de Pierre Salvadori. Malgré ces réserves, L’Homme fidèle reste attachant et ses qualités d’écriture comme le jeu des interprètes (dont les charmantes Lætitia Casta et Lily-Rose Depp) compensent le caractère un brin artificiel du dispositif.\r\n','2019-01-31');
/*!40000 ALTER TABLE `article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chanteur`
--

DROP TABLE IF EXISTS `chanteur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chanteur` (
  `VIP_NUMERO` int(11) NOT NULL,
  `CHANTEUR_SPECIALITE` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`VIP_NUMERO`),
  CONSTRAINT `FK_CHANTEUR_EST2_VIP` FOREIGN KEY (`VIP_NUMERO`) REFERENCES `vip` (`VIP_NUMERO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chanteur`
--

LOCK TABLES `chanteur` WRITE;
/*!40000 ALTER TABLE `chanteur` DISABLE KEYS */;
INSERT INTO `chanteur` VALUES (12,'Romantique'),(29,'Sans voix');
/*!40000 ALTER TABLE `chanteur` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comporte`
--

DROP TABLE IF EXISTS `comporte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comporte` (
  `ARTICLE_NUMERO` int(11) NOT NULL,
  `PHOTO_NUMERO` int(11) NOT NULL,
  `VIP_NUMERO` int(11) NOT NULL,
  PRIMARY KEY (`ARTICLE_NUMERO`,`PHOTO_NUMERO`,`VIP_NUMERO`),
  KEY `LIEN_141_FK` (`PHOTO_NUMERO`),
  KEY `VIP_NUMERO` (`VIP_NUMERO`),
  CONSTRAINT `FK_COMPORTE_LIEN_127_ARTICLE` FOREIGN KEY (`ARTICLE_NUMERO`) REFERENCES `article` (`ARTICLE_NUMERO`),
  CONSTRAINT `FK_COMPORTE_LIEN_141_PHOTO` FOREIGN KEY (`PHOTO_NUMERO`) REFERENCES `photo` (`PHOTO_NUMERO`),
  CONSTRAINT `comporte_ibfk_1` FOREIGN KEY (`VIP_NUMERO`) REFERENCES `vip` (`VIP_NUMERO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comporte`
--

LOCK TABLES `comporte` WRITE;
/*!40000 ALTER TABLE `comporte` DISABLE KEYS */;
INSERT INTO `comporte` VALUES (1,1,34);
/*!40000 ALTER TABLE `comporte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `composer`
--

DROP TABLE IF EXISTS `composer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `composer` (
  `ALBUM_NUMERO` int(11) NOT NULL,
  `VIP_NUMERO` int(11) NOT NULL,
  PRIMARY KEY (`ALBUM_NUMERO`,`VIP_NUMERO`),
  KEY `LIEN_185_FK` (`VIP_NUMERO`),
  CONSTRAINT `FK_COMPOSER_LIEN_151_ALBUM` FOREIGN KEY (`ALBUM_NUMERO`) REFERENCES `album` (`ALBUM_NUMERO`),
  CONSTRAINT `FK_COMPOSER_LIEN_185_CHANTEUR` FOREIGN KEY (`VIP_NUMERO`) REFERENCES `chanteur` (`VIP_NUMERO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `composer`
--

LOCK TABLES `composer` WRITE;
/*!40000 ALTER TABLE `composer` DISABLE KEYS */;
INSERT INTO `composer` VALUES (2,12),(3,12),(4,12),(1,29);
/*!40000 ALTER TABLE `composer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `couturier`
--

DROP TABLE IF EXISTS `couturier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `couturier` (
  `VIP_NUMERO` int(11) NOT NULL,
  PRIMARY KEY (`VIP_NUMERO`),
  CONSTRAINT `FK_COUTURIE_EST3_VIP` FOREIGN KEY (`VIP_NUMERO`) REFERENCES `vip` (`VIP_NUMERO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `couturier`
--

LOCK TABLES `couturier` WRITE;
/*!40000 ALTER TABLE `couturier` DISABLE KEYS */;
INSERT INTO `couturier` VALUES (35);
/*!40000 ALTER TABLE `couturier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `defile`
--

DROP TABLE IF EXISTS `defile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `defile` (
  `DEFILE_NUMERO` int(11) NOT NULL AUTO_INCREMENT,
  `VIP_NUMERO` int(11) NOT NULL,
  `DEFILE_LIEU` varchar(20) DEFAULT NULL,
  `DEFILE_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`DEFILE_NUMERO`),
  KEY `CIF4_FK` (`VIP_NUMERO`),
  CONSTRAINT `FK_DEFILE_CIF4_COUTURIE` FOREIGN KEY (`VIP_NUMERO`) REFERENCES `couturier` (`VIP_NUMERO`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `defile`
--

LOCK TABLES `defile` WRITE;
/*!40000 ALTER TABLE `defile` DISABLE KEYS */;
INSERT INTO `defile` VALUES (1,35,'PARIS','2000-01-20 00:00:00');
/*!40000 ALTER TABLE `defile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `defiledans`
--

DROP TABLE IF EXISTS `defiledans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `defiledans` (
  `DEFILE_NUMERO` int(11) NOT NULL,
  `VIP_NUMERO` int(11) NOT NULL,
  PRIMARY KEY (`DEFILE_NUMERO`,`VIP_NUMERO`),
  KEY `LIEN_137_FK` (`VIP_NUMERO`),
  CONSTRAINT `FK_DEFILEDA_LIEN_128_DEFILE` FOREIGN KEY (`DEFILE_NUMERO`) REFERENCES `defile` (`DEFILE_NUMERO`),
  CONSTRAINT `FK_DEFILEDA_LIEN_137_MANNEQUI` FOREIGN KEY (`VIP_NUMERO`) REFERENCES `mannequin` (`VIP_NUMERO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `defiledans`
--

LOCK TABLES `defiledans` WRITE;
/*!40000 ALTER TABLE `defiledans` DISABLE KEYS */;
INSERT INTO `defiledans` VALUES (1,19),(1,29);
/*!40000 ALTER TABLE `defiledans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exemplaire`
--

DROP TABLE IF EXISTS `exemplaire`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exemplaire` (
  `EXEMPLAIRE_NUMERO` int(11) NOT NULL AUTO_INCREMENT,
  `EXEMPLAIRE_DATEPUBLICATION` datetime DEFAULT NULL,
  PRIMARY KEY (`EXEMPLAIRE_NUMERO`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exemplaire`
--

LOCK TABLES `exemplaire` WRITE;
/*!40000 ALTER TABLE `exemplaire` DISABLE KEYS */;
INSERT INTO `exemplaire` VALUES (1,'2018-01-05 00:00:00'),(2,'2019-02-06 00:00:00'),(3,'2019-03-05 00:00:00'),(4,'2019-04-05 00:00:00'),(5,'2018-05-04 00:00:00');
/*!40000 ALTER TABLE `exemplaire` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `film`
--

DROP TABLE IF EXISTS `film`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `film` (
  `film_NUMERO` int(11) NOT NULL AUTO_INCREMENT,
  `VIP_NUMERO` int(11) DEFAULT NULL,
  `FILM_TITRE` varchar(80) DEFAULT NULL,
  `FILM_DATEREALISATION` datetime DEFAULT NULL,
  PRIMARY KEY (`film_NUMERO`),
  KEY `CIF3_FK` (`VIP_NUMERO`),
  CONSTRAINT `FK_FILM_CIF3_REALISAT` FOREIGN KEY (`VIP_NUMERO`) REFERENCES `realisateur` (`VIP_NUMERO`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `film`
--

LOCK TABLES `film` WRITE;
/*!40000 ALTER TABLE `film` DISABLE KEYS */;
INSERT INTO `film` VALUES (1,NULL,'Babel','2006-05-01 00:00:00'),(2,NULL,'Chad Schmidt','2006-07-01 00:00:00'),(3,28,'Mr. and Mrs. Smith','2005-07-01 00:00:00'),(4,NULL,'Ocean\'s Twelve','2004-03-12 00:00:00'),(5,NULL,'Troy','2004-10-30 00:00:00'),(6,NULL,'Confessions of a Dangerous Mind','2002-09-29 00:00:00'),(7,NULL,'Et au milieu coule une rivière','1992-06-20 00:00:00'),(8,13,'Astérix et Obélix contre César','1999-02-03 00:00:00'),(9,30,'Les Ames fortes','2001-01-20 00:00:00'),(10,31,'Rue des plaisirs','2002-02-13 00:00:00'),(11,33,'Le Coup de sirocco','1979-04-18 00:00:00'),(12,40,'L\'Homme fidèle','2018-10-17 00:00:00');
/*!40000 ALTER TABLE `film` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `joue`
--

DROP TABLE IF EXISTS `joue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joue` (
  `FILM_NUMERO` int(11) NOT NULL,
  `VIP_NUMERO` int(11) NOT NULL,
  `ROLE_NOM` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`FILM_NUMERO`,`VIP_NUMERO`),
  KEY `LIEN_330_FK` (`VIP_NUMERO`),
  CONSTRAINT `FK_JOUE_LIEN_132_FILM` FOREIGN KEY (`FILM_NUMERO`) REFERENCES `film` (`film_NUMERO`),
  CONSTRAINT `FK_JOUE_LIEN_330_ACTEUR` FOREIGN KEY (`VIP_NUMERO`) REFERENCES `acteur` (`VIP_NUMERO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `joue`
--

LOCK TABLES `joue` WRITE;
/*!40000 ALTER TABLE `joue` DISABLE KEYS */;
INSERT INTO `joue` VALUES (1,24,NULL),(2,24,NULL),(3,24,NULL),(3,26,NULL),(4,24,NULL),(5,24,NULL),(6,24,NULL),(7,24,NULL),(8,11,'Obélix'),(8,19,'Falbala'),(9,19,'rôle principal'),(10,19,'Marion, une prostituée'),(11,12,'Le plus beau'),(12,19,'Marianne'),(12,40,'Abel');
/*!40000 ALTER TABLE `joue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `liaison`
--

DROP TABLE IF EXISTS `liaison`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `liaison` (
  `VIP_NUMERO` int(11) NOT NULL,
  `VIP_VIP_NUMERO` int(11) NOT NULL,
  `DATE_EVENEMENT` datetime NOT NULL,
  `LIAISON_MOTIFFIN` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`VIP_NUMERO`,`VIP_VIP_NUMERO`,`DATE_EVENEMENT`),
  KEY `LIEN_195_FK` (`VIP_VIP_NUMERO`),
  CONSTRAINT `FK_LIAISON_LIEN_194_VIP` FOREIGN KEY (`VIP_NUMERO`) REFERENCES `vip` (`VIP_NUMERO`),
  CONSTRAINT `FK_LIAISON_LIEN_195_VIP` FOREIGN KEY (`VIP_VIP_NUMERO`) REFERENCES `vip` (`VIP_NUMERO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `liaison`
--

LOCK TABLES `liaison` WRITE;
/*!40000 ALTER TABLE `liaison` DISABLE KEYS */;
INSERT INTO `liaison` VALUES (19,34,'2002-01-04 00:00:00','Tromperie'),(24,26,'2006-02-01 00:00:00','aucune raison'),(24,26,'2009-12-25 00:00:00','Ne passe pas au S4'),(26,27,'2006-02-01 00:00:00','Trop beau'),(26,27,'2009-12-29 00:00:00','A trouvé mieux'),(34,11,'2010-01-03 00:00:00','Ne se suportaient plus');
/*!40000 ALTER TABLE `liaison` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `maisondisque`
--

DROP TABLE IF EXISTS `maisondisque`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `maisondisque` (
  `MAISONDISQUE_NUMERO` int(11) NOT NULL AUTO_INCREMENT,
  `MAISONDISQUE_NOM` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`MAISONDISQUE_NUMERO`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maisondisque`
--

LOCK TABLES `maisondisque` WRITE;
/*!40000 ALTER TABLE `maisondisque` DISABLE KEYS */;
INSERT INTO `maisondisque` VALUES (1,'Pomme Music'),(2,'Sony France'),(3,'Virgin'),(4,'Sony France'),(5,'Naïve'),(6,'Bmg France');
/*!40000 ALTER TABLE `maisondisque` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mannequin`
--

DROP TABLE IF EXISTS `mannequin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mannequin` (
  `VIP_NUMERO` int(11) NOT NULL,
  `MANNEQUIN_TAILLE` int(11) DEFAULT NULL,
  PRIMARY KEY (`VIP_NUMERO`),
  CONSTRAINT `FK_MANNEQUI_EST1_VIP` FOREIGN KEY (`VIP_NUMERO`) REFERENCES `vip` (`VIP_NUMERO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mannequin`
--

LOCK TABLES `mannequin` WRITE;
/*!40000 ALTER TABLE `mannequin` DISABLE KEYS */;
INSERT INTO `mannequin` VALUES (19,80),(29,2);
/*!40000 ALTER TABLE `mannequin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mariage`
--

DROP TABLE IF EXISTS `mariage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mariage` (
  `VIP_NUMERO` int(11) NOT NULL,
  `VIP_VIP_NUMERO` int(11) NOT NULL,
  `DATE_EVENEMENT` datetime NOT NULL,
  `MARIAGE_LIEU` varchar(20) DEFAULT NULL,
  `MARIAGE_FIN` datetime DEFAULT NULL,
  `MARIAGE_MOTIFFIN` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`VIP_NUMERO`,`VIP_VIP_NUMERO`,`DATE_EVENEMENT`),
  KEY `LIEN_191_FK` (`VIP_VIP_NUMERO`),
  CONSTRAINT `FK_MARIAGE_LIEN_190_VIP` FOREIGN KEY (`VIP_NUMERO`) REFERENCES `vip` (`VIP_NUMERO`),
  CONSTRAINT `FK_MARIAGE_LIEN_191_VIP` FOREIGN KEY (`VIP_VIP_NUMERO`) REFERENCES `vip` (`VIP_NUMERO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mariage`
--

LOCK TABLES `mariage` WRITE;
/*!40000 ALTER TABLE `mariage` DISABLE KEYS */;
INSERT INTO `mariage` VALUES (1,2,'2008-12-30 00:00:00','Brive La Gaillarde','2016-11-11 00:00:00','Non admis en LP DWBD'),(3,34,'2010-01-01 00:00:00','IUT du LIMOUSIN','2010-01-02 00:00:00','Toujours ivre'),(19,36,'2001-01-27 00:00:00','Paris','2005-01-27 00:00:00','Séparation'),(19,40,'2016-12-05 00:00:00','Bordeaux',NULL,NULL),(24,25,'2001-01-02 00:00:00','Las Vegas','2002-01-02 00:00:00','Trop beau'),(24,25,'2009-12-01 00:00:00','Las Vegas','2009-12-23 00:00:00','Trop beau');
/*!40000 ALTER TABLE `mariage` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `verifvip` BEFORE INSERT ON `mariage` FOR EACH ROW begin
      DECLARE nb SMALLINT;
        if (new.vip_numero=new.vip_vip_numero)then
          begin
              select * into nb from t1;
            end;
        end if;
      end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `nationalite`
--

DROP TABLE IF EXISTS `nationalite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nationalite` (
  `NATIONALITE_NUMERO` int(11) NOT NULL AUTO_INCREMENT,
  `NATIONALITE_NOM` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`NATIONALITE_NUMERO`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nationalite`
--

LOCK TABLES `nationalite` WRITE;
/*!40000 ALTER TABLE `nationalite` DISABLE KEYS */;
INSERT INTO `nationalite` VALUES (1,'Américaine'),(2,'Française'),(3,'Allemande'),(4,'Italienne'),(5,'Algérienne'),(6,'Irlandaise'),(7,'Chilienne'),(8,'Sud Africaine');
/*!40000 ALTER TABLE `nationalite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parametres`
--

DROP TABLE IF EXISTS `parametres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `parametres` (
  `LOGIN` varchar(20) NOT NULL,
  `PASSWD` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parametres`
--

LOCK TABLES `parametres` WRITE;
/*!40000 ALTER TABLE `parametres` DISABLE KEYS */;
INSERT INTO `parametres` VALUES ('admin','fcdda9d67ad2ffd96a0ed44ccb967e7b31747d54');
/*!40000 ALTER TABLE `parametres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photo`
--

DROP TABLE IF EXISTS `photo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `photo` (
  `PHOTO_NUMERO` int(11) NOT NULL,
  `VIP_NUMERO` int(11) NOT NULL DEFAULT '0',
  `PHOTO_SUJET` varchar(220) DEFAULT NULL,
  `PHOTO_COMMENTAIRE` varchar(250) DEFAULT NULL,
  `PHOTO_ADRESSE` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`PHOTO_NUMERO`,`VIP_NUMERO`),
  KEY `POSSEDE_FK` (`VIP_NUMERO`),
  CONSTRAINT `FK_PHOTO_POSSEDE_VIP` FOREIGN KEY (`VIP_NUMERO`) REFERENCES `vip` (`VIP_NUMERO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photo`
--

LOCK TABLES `photo` WRITE;
/*!40000 ALTER TABLE `photo` DISABLE KEYS */;
INSERT INTO `photo` VALUES (1,1,'30/01/10','Cinevile Studios','smith.jpg'),(1,2,'14/03/10','Tournage de Cannes 9','caunes.jpg'),(1,3,'14/02/12','Dernier Film de Wood','allen.jpg'),(1,4,'20/06/16','Maison d\'Ophélie','barr.jpg'),(1,5,'10/05/15','Fête des fous','berry2.jpg'),(1,6,'Juste avant de rendre le projet tut','grande solitude en fin de S3','bonnaire.jpg'),(1,7,'Vient de rentrer au S4','Pendant le S4 en cours de NODE.JS','bouchez.jpg'),(1,8,'Essaye de compiler un programme en C','Premier cours du S1 avec TM','branagh.jpg'),(1,9,'Devant la machine à café','Récupère un jeton jaune ','canet.jpg'),(1,10,'Première promo du département info','En Cobol','chabrol.jpg'),(1,11,'A démissionné après le premier cours de math','A jeun, il était 8 heures du mat','depardieux.jpg'),(1,12,'Photo type identite','Son plus beau profil','bruel.jpg'),(1,13,'Semaine des partiels','Sort du partiel de Java','zidi.jpg'),(1,14,'Vient de découvrir la méthode à Gilles','Il vient d\'accéder à la zone libre pour la première fois','caprio.jpg'),(1,15,'Pendant la nuit de l\'info','Chef de projet','boyle.jpg'),(1,16,'Avec AB au S1','Découvre SQL au S1','ledoyen.jpg'),(1,17,'Au secrétariat du département','Essaye de justifier une absence','burton.jpg'),(1,18,'découvre l\'emploi du temps de la semaine 23','Réalise qu\'il sort tout les soirs à 19h30','depp.jpg'),(1,19,'La plus belle étudiante de la promo','♥','casta.jpg'),(1,20,'☺','Toute la promo était à ses pieds','bellucci.jpg'),(1,21,'Juste avant d\'être admise en LP ARBD','Le réseau a toujours était son \"truc\"','binoche.jpg'),(1,22,'Découvre les feutres à tableau blanc de l\'IUT','Ne supporte pas les cours de Math','berry.jpg'),(1,23,'Sort d\'un cours de PHP','Trouve que le cours est beaucoup trop rapide','barrymore.jpg'),(1,24,'Le seul garçon de la promo','La seule promo composée d\'un seul garçon','brad.jpg'),(1,25,'En cours','de BD','aniston.jpg'),(1,26,'En cours avec LB','Au labo d\'Anglais de l\'IUT','jolie.jpg'),(1,27,'Envisage de démissionner du département info','A la nouvelle cafet','farrell.jpg'),(1,28,'Au tout début du S1 au département info','Sort du cours de math de TB','liman.jpg'),(1,29,'Photo type identite','En retard à un cours de comm','bruni.jpg'),(1,30,'Son plus beau profil','Son plus beau profil','ruiz.jpg'),(1,31,'Son plus beau profil','Son plus beau profil','leconte.jpg'),(1,32,'Avec SR','Pendant un TD de gestion','ford.jpg'),(1,33,'Pendant le tournage coup de sirocco','photo ancienne','arcady.jpg'),(1,34,'Photo identité','Devant le bureau du chef','laurent.jpg'),(1,35,'Photo type identite','Convoqué dans le bureau du chef','saintlaurent.jpg'),(1,36,'Photo type identite','Son plus beau profil','sednaoui.jpg'),(1,39,'Devant l\'IUT du LIMOUSIN','Viens de garer sa voiture sur le trottoir','04.jpg'),(1,40,'Photo d\'identité','Photo officielle','Garrel1.jpg'),(2,1,'A l\'IUT du Limousin','Dans le couloir','will_smith.jpg'),(2,19,'Dans le Film ERRANCE','Dans le rôle de LOU','casta2.jpg'),(2,34,'Pendant le tournage du concert','Espère être admis en LP DWBD ','laurent2.jpg'),(2,40,'Abel','Abel','Garrel2.jpg'),(3,1,'A l\'IUT du LIMOUSIN','Convoqué dans le bureau du chef','will_smith2.jpg'),(3,19,' En conmemoracion al Dia de la Bastilla les traemos a la hermosa francesita Laetitia Casta, modelo de Victoriaa€™s Secret.','Las curvas de Laetitia rompia el estereotipo de las modelos flacas y huesudas.','casta3.jpg'),(4,1,'A l\'iut du LIMOUSIN','Pendant un cours de BD','will_smith3.jpg'),(4,19,'Caricature','Son plus beau sourire','casta4.jpg'),(5,19,'A l\'IUT du LIMOUSIN','Elle découvre l\'emploi du temps de la semaine 20','casta5.jpg'),(6,19,'A l\'IUT du LIMOUSIN','Juste avant de partir en stage de seconde année','casta6.jpg'),(7,19,'Marianne','Marianne','casta7.jpg');
/*!40000 ALTER TABLE `photo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `realisateur`
--

DROP TABLE IF EXISTS `realisateur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `realisateur` (
  `VIP_NUMERO` int(11) NOT NULL,
  PRIMARY KEY (`VIP_NUMERO`),
  CONSTRAINT `FK_REALISAT_EST5_VIP` FOREIGN KEY (`VIP_NUMERO`) REFERENCES `vip` (`VIP_NUMERO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `realisateur`
--

LOCK TABLES `realisateur` WRITE;
/*!40000 ALTER TABLE `realisateur` DISABLE KEYS */;
INSERT INTO `realisateur` VALUES (3),(10),(13),(28),(30),(31),(33),(34),(40);
/*!40000 ALTER TABLE `realisateur` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vip`
--

DROP TABLE IF EXISTS `vip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vip` (
  `VIP_NUMERO` int(11) NOT NULL AUTO_INCREMENT,
  `NATIONALITE_NUMERO` int(11) NOT NULL,
  `VIP_NOM` varchar(20) DEFAULT NULL,
  `VIP_PRENOM` varchar(20) DEFAULT NULL,
  `VIP_SEXE` varchar(20) DEFAULT NULL,
  `VIP_NAISSANCE` datetime DEFAULT NULL,
  `VIP_TEXTE` varchar(2500) DEFAULT NULL,
  `VIP_DATE_INSERTION` datetime NOT NULL,
  PRIMARY KEY (`VIP_NUMERO`),
  KEY `A1_FK` (`NATIONALITE_NUMERO`),
  CONSTRAINT `FK_VIP_A1_NATIONAL` FOREIGN KEY (`NATIONALITE_NUMERO`) REFERENCES `nationalite` (`NATIONALITE_NUMERO`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vip`
--

LOCK TABLES `vip` WRITE;
/*!40000 ALTER TABLE `vip` DISABLE KEYS */;
INSERT INTO `vip` VALUES (1,1,'SMITH','Will','M','1968-09-25 00:00:00','Will Smith se destine à  une carrière musicale lorsque, en 1989, il fait la rencontre de Benny Medina, productrice exécutive pour la Warner, qui lui confie le rôle principal de la série télévisée Le Prince de Bel-Air. Un feuilleton qui le rend extrêmement populaire et qui lui permet de débuter une carrière cinématographique. En 1992, il joue dans la comédie Made in America puis se distingue dans le drame Six degrés de séparation.','2009-12-29 14:30:54'),(2,2,'DE CAUNES','Antoine','M','1953-09-14 00:00:00','Fils de Georges de Caunes et de Jaqueline Jouber, père de l\'actrice Emma de Caunes. ','2009-12-29 14:30:54'),(3,1,'ALLEN','Woody','M','1935-03-24 00:00:00',' A l\'âge de seize ans, Woody Allen envoie des histoires drôles à  différents chroniqueurs de journaux. Après avoir écrit des sketches pour la télévision et d\'innombrables chroniques pour des magazines comme Playboy, il décide en 1961 de monter sur les planches. Il arpente ainsi les cabarets et les plateaux de télévision.','2009-12-29 14:30:54'),(4,3,'BARR','Jean Marc','M','1960-09-27 00:00:00',' Fils d\'un père américain, héros de l\'US Air Force, et d\'une mère francaise, Jean-Marc Barr passe une partie de son enfance en Allemagne, puis aux Etats-Unis, avant de rejoindre la France en 1968. En 1974, la famille s\'installe à  San Diego, Jean-Marc Barr y reçoit une éducation stricte en vue de son incorporation dans l\'US Air Force. Refusant d\'emprunter la même voie que son père, il part pour Londres en 1982 étudier le théâtre. Il y fait la connaissance de sa future femme, une pianiste d\'origine yougoslave. De retour en France, il fait ses débuts à  l\'écran dans The Frog prince (1984) et joue sous la direction de John Boorman dans La Guerre à  sept ans (1987).','2009-12-29 14:30:54'),(5,2,'BERRY','Richard','M','1950-07-31 00:00:00',' Dès l\'âge de 16 ans, Richard Berry développe un intérêt particulier pour le théâtre. Il rejoint une troupe de comédiens amateurs, et se passionne pour les classiques de Racine, Corneille, Molière et Beaumarchais. Après un premier échec au concours d\'entrée du Conservatoire, il y est finalement admis en 1969. A sa sortie, il intègre la Comédie-Française et y restera sept ans. ','2009-12-29 14:30:54'),(6,2,'BONNAIRE','Sandrine','F','1967-03-31 00:00:00',' Septième d\'une famille de dix enfants, Sandrine Bonnaire débute en 1982 comme figurante dans La Boum 2 et Les Sous-doués en vacances. Alors qu\'elle accompagne sa soeur à  un casting, elle est choisie par Maurice Pialat, pour un projet qui n\'aboutira pas, Les Meurtrières. Mais le cinéaste en fait l\'héroïne du film auquel il songe depuis dix ans, A nos amours, pour lequel l\'actrice obtient le César du Meilleur jeune espoir féminin. Par l\'intensité qui se dégage de son jeu spontané, Sandrine Bonnaire fait, à  16 ans, une irruption spectaculaire dans le cinéma français.','2009-12-29 14:30:54'),(7,2,'BOUCHEZ','Elodie','F','1973-04-05 00:00:00',' Elodie Bouchez étudie le théâtre à  l\'Université. D\'abord danseuse, elle commence sa carrière cinématographique par des rôles sulfureux dans Stan the Flasher de Serge Gainsbourg et Le Cahier volé de Christine Lipinska, dans lequel elle joue son premier grand rôle.','2009-12-29 14:30:54'),(8,6,'BRANAGH','Kenneth','M','1960-12-10 00:00:00',' Kenneth Branagh est né le 10 décembre 1960 à  Belfast, en Irlande du Nord, le deuxième de trois enfants (entre son frère Bill et sa soeur Joyce) dans une famille modeste protestante (son père est charpentier). Pour éviter les conflits engendrés par la guerre civile, ils déménagent à  Reading, en Angleterre, alors qu\'il est à  peine âgé de 9 ans. Dans sa jeunesse, il montre d\'abord des talents de sportif, dirigeant même l\'équipe de football et de rugby de son école. Il s\'intéresse aussi au journalisme, écrivant des critiques de livres pour enfants pour le journal local. Mais, dès son adolescence, il se tourne vers le théâtre et prend conscience de sa vocation d\'acteur en voyant, à  15 ans, Derek Jacobi jouer Hamlet.','2009-12-29 14:30:54'),(9,2,'CANET','Guillaume','M','1973-04-10 00:00:00',' Passionné d\'équitation, Guillaume Canet voit sa carrière de jockey interrompue par un accident. Se tournant vers l\'art dramatique, il suit une formation au Cours Florent et se fait remarquer au théâtre dans la pièce La Ville dont le Prince est un enfant d\'Henry de Montherlant, qu\'il interprète aux côtés de Christophe Malavoy.','2009-12-29 14:30:54'),(10,2,'CHABROL','Claude','M','1930-06-24 00:00:00',' Après avoir tenu un ciné-club dans la Creuse pendant la guerre, Claude Chabrol, de retour à  Paris, suit des études de lettres puis de pharmacie, mais fréquente surtout les cinémas de la ville à  raison de plusieurs séances par jour. Il y rencontre de jeunes cinéphiles passionnés avec qui il participe à  l\'aventure des Cahiers du cinéma de 1952 à  1957, et fait bientôt la connaissance du romancier Paul Gégauff, dont l\'influence le détourne de son éducation bourgeoise. Marié très tôt, il est attaché de presse à  la Fox avant de profiter d\'un héritage de son épouse pour produire Le Coup du berger (1957) de  Rivette et réaliser Le Beau Serge (1958), son premier long métrage. En grande partie autobiographique, ce film-clé de la Nouvelle vague est un beau succès public et critique et remporte le prix Jean Vigo.','2009-12-29 14:30:54'),(11,2,'DEPARDIEU','Gérard','M','1948-11-27 00:00:00','Qu\'il est loin le temps où Gérard Depardieu, adolescent, flirtait avec la délinquance. Aujourd\'hui, \"Depardiou\", comme disent les Américains, fait figure de poids lourds du cinéma, de boulimique de la pellicule. Depuis Les Valseuses en 1974, le public a adopté ce personnage hors du commun, vivant dans les excès. Propriétaire d\'un vignoble, il n\'oublie pas de goà»ter sa production; ses chutes en moto sont régulièrement à  la une, bref ses moindres faits et gestes sont repris parce que Depardieu est tout simplement une STAR ! Un rang qu\'il a obtenu en tournant avec les plus grands cinéastes et en jouant aussi bien des rôles comiques que tragiques. Au cours de ses trente ans de carrière, on ne compte plus ses succès, Le Dernier Métro, Cyrano de Bergerac, La Chèvre... Seules ses apparitions aux Etats-Unis n\'ont pas été aussi flamboyantes avec notamment l\'échec du film 1492 de Ridley Scott. Son couple avec Carole Bouquet finit d\'entretenir cette légende vivante.','2009-12-29 14:30:54'),(12,2,'Bruel','Patrick','M','1959-05-14 00:00:00','C\'est à Tlemcen, en Algérie, près d\'Oran, que Patrick Benguigui naît le 14 mai 1959. Sa mère Augusta, professeur de français, est divorcée de son mari. Patrick grandira sans père, et cette absence le marquera à vie. En 1962, les Benguigui rejoignent la France et s\'installent en banlieue parisienne, à Argenteuil dans le val d\'Oise. Puis ils s\'installent à Paris dans le 13 ème arrondissement. Deux demi/frères naîtront : David (qui vivra plus tard au côté d\'Emmanuelle Béart), et Fabrice Moreau. Le petit Patrick est un enfant sportif. Il adore le football et rêve de devenir footballeur professionnel. Encore aujourd\'hui, il ne manque pas un match gala avec le Variétés Club de France ou en spectateur avec ses amis. Outre le football, l\'adolescence de Patrick est occupée par la musique, avec une double passion pour la chanson française (Brel, Brassens,...) et le rock anglo/saxon (Eric Clapton, Hendrix, Jeff Beck,...).','2008-01-05 00:00:00'),(13,2,'ZIDI','Claude','M','1934-07-25 00:00:00',' Après des études à  L\'Ecole Louis-Lumière, Claude Zidi débute sa carrière en tant que chef-opérateur (sur La Baie des anges de Jacques Demy ou La Ligne de démarcation de Claude Chabrol) puis se lance dans la réalisation en 1971. Il se spécialise d\'emblée dans la comédie, ses quatre premiers films donnant la vedette à  la troupe comique des Charlots (Les Bidasses en folie, Les Fous du stade, Le Grand bazar et Les Bidasses s\'en vont en guerre).','2009-12-29 14:30:54'),(14,1,'DI CAPRIO','Léonardo','M','1974-11-11 00:00:00',' Né d\'un père italien et d\'une mère allemande favorisant au mieux ses aptitudes artistiques, Leonardo DiCaprio suit des cours de comédie dès l\'école primaire. Auditionnant pour la première fois en 1988, il commence par tourner des spots publicitaires puis obtient très vite quelques petits rôles à  la télévision (Les Nouvelles aventures de Lassie, Santa Barbara) avant de se faire remarquer dans la série Quoi de neuf, docteur ? en 1991. Mais il est surtout intéressé par le cinéma, et après un premier film d\'horreur (Critters 3), Leonardo DiCaprio est choisi parmi quatre cents candidats pour jouer le beau-fils maltraité de Robert De Niro dans Blessures secrètes (1993).','2009-12-29 14:30:54'),(15,1,'BOYLE','Danny','M','1956-10-20 00:00:00',' Danny Boyle commence sa carrière au théâtre, à  la \"Join Stock Theatre Compagny\" jusqu\'en 1982. Après être devenu directeur adjoint du \"Royal Court Theatre Compagny\" en 1985, il met en scène parallèlement cinq pièces de théâtre pour la Royal Shakspeare Compagny, et se voit récompenser par de nombreux prix.','2009-12-29 14:30:54'),(16,2,'LEDOYEN','Virginie','F','1976-11-15 00:00:00',' Enfant, Virginie Ledoyen apparaît dans des spots publicitaires, notamment pour les marques Buitoni et Air Inter, et dans le vidéo clip L\'Aziza de Daniel Balavoine. A dix ans, elle débute au cinéma dans un film italien intitulé Les Exploits d\'un jeune Don Juan (1987). C\'est Philomene Esposito qui lui offre son premier grand rôle en 1991 avec Mima.','2009-12-29 14:30:54'),(17,1,'BURTON','Tim','M','1958-08-25 00:00:00',' Après des études à  la California Institute of the Arts, Tim Burton débute chez Disney dans les années 70, collaborant à  l\'animation de plusieurs dessins animés, dont Rox et Rouky. Après cette expérience, il débute dans la réalisation avec deux courts métrages, l\'un d\'animation (Vincent; 1982), l\'autre de facture classique, Frankenweenie (1984), parodie revendiquée de Frankenstein et des films de la firme Hammer.','2009-12-29 14:30:54'),(18,1,'DEPP','Johny','M','1963-06-09 00:00:00',' Fils d\'un ingénieur et d\'une femme de ménage, Johnny Depp se passionne pour la musique en assistant à  un spectacle de gospel. Il rejoint alors le groupe The Flame, qui devient The Kids, et fait la première partie de la tournée d\'Iggy Pop. Deux ans plus tard, les musiciens se rendent à  Los Angeles, mais la formation ne remporte pas le succès escompté. C\'est à  cette période que Johnny Depp fait la connaissance de Nicolas Cage grâce à  la maquilleuse Lori Allison. Ce dernier organise une rencontre avec son agent, une rencontre qui débouchera sur un petit rôle dans Les Griffes de la nuit (1984) de Wes Craven.','2009-12-29 14:30:54'),(19,2,'CASTA','Laetitia','F','1978-05-11 00:00:00',' Née en Normandie et découverte à  15 ans sur une plage Corse, Laetitia Casta débute une carrière de mannequin. En 1998, elle fait ses premiers pas au cinéma avec le rôle de Falbala dont est amoureux Obélix alias Gérard Depardieu dans Astérix et Obélix contre César.','2009-12-29 14:30:54'),(20,4,'BELLUCCI','Monica','F','1968-09-30 00:00:00','Mannequin et star de cinéma, Monica Bellucci monopolise les unes de magazines. Un destin fantastique pour cette magnifique Italienne, née dans le petit village de Citta di Castello. Uniquement envisagée pour financer ses études de droit, sa carrière de mannequin s\'envole quand elle signe avec l\'agence mondiale Elite. Avec l\'argent gagné, elle prend des cours de théâtre et apparaît dans plusieurs films italiens, dès 1990. Rapidement,  elle sort des frontières de l\'Italie en intégrant le casting de Dracula, réalisé par Coppola.','2009-12-29 14:30:54'),(21,2,'BINOCHE','Juliette','F','1964-03-09 00:00:00','Contrairement à  d\'autres stars, Juliette Binoche n\'apparaît que très peu à  la une des magazines people. Pour faire parler d\'elle, l\'actrice n\'utilise que son métier. Juliette Binoche a débuté au théâtre à  16 ans avec des classiques comme Le Malade imaginaire. Encouragée par cette expérience, elle décide de suivre une formation au Conservatoire. Après quelques rôles secondaires au cinéma, elle obtient enfin sa chance dans Rendez-vous, de Téchiné (1985). A partir de ce moment, Juliette se concentre sur des personnages difficiles à  jouer dans des films d\'auteur (Les amants du Pont-Neuf). Trois couleur : Bleu marque sa reconnaissance, avec le César de la meilleure actrice. Juliette se tourne alors vers des films plus grand public comme Le Hussard sur le toit et vers l\'étranger avec Le Patient Anglais','2009-12-29 14:30:54'),(22,1,'BERRY ','Halle','F','1966-08-14 00:00:00','Les flashs commencent à  crépiter pour Halle Berry dès ses 17 ans. Elle remporte le prix de Miss Teen All-American et participe aux finales de Miss USA et Miss Monde ! Avec ses titres, elle commence une carrière de mannequin tout en prenant des cours de comédie. Ses premiers pas d\'actrice, Halle les effectue par le biais de la télévision dans Côte Ouest en 1991. La même année, Spike Lee lui propose de jouer un petit rôle dans Jungle Fever. Fort de ce début, Halle Berry continue tranquillement sa conquête d\'Hollywood en faisant des apparitions dans Le dernier Samaritain ou Ultime Décision, sa consécration médiatique intervient avec X-Men. Grâce à  ce film, sa carrière prend une autre dimension. Elle recevra même l\'Oscar de la meilleure actrice pour son rôle dans A l\'ombre de la haine. Sensuelle, Halle, en plus de son talent, sait aussi jouer de ses formes généreuses pour \"reprendre\" avec brio le rôle mythique d\'Ursula Andress en maillot de bain dans le James Bond Meurs un autre jour.','2009-12-29 14:30:54'),(23,1,'BARRYMORE','Drew','F','1975-02-22 00:00:00','Dans la famille \"je demande l\'apparition la plus précoce devant des caméras\", je trouve Drew Barrymore avec une publicité TV à  moins d\'un an ! Née d\'un père acteur, elle enchaîne quelques rôles jusqu\'à  ce que son parrain Steven Spielberg lui offre, pour ses 7 ans, le personnage féminin dans E.T. Pour cette toute jeune fille, ce sera un cadeau empoisonné ! Enfant star, Drew ne gère pas sa célébrité et tombe dans l\'alcool et la drogue dès 12 ans. Sa réputation d\'instabilité aigue fait fuir les réalisateurs. Après une traversée du désert de treize ans, ponctuée de cures de désintoxication et de rôles très mineurs, Drew reprend espoir avec des apparitions remarquées dans Batman Forever et Tout le monde dit I love you. Aujourd\'hui, elle est redevenue une actrice demandée et une femme d\'affaires avisée en produisant le très rentable Drôles de dames. Sur le plan personnel, après deux mariages express dans sa période fragile, Drew coule enfin des jours heureux avec Fabrizio Moretti.s Dans la f','2009-12-29 14:30:54'),(24,1,'PITT','Brad','M','1963-12-18 00:00:00','Brad Pitt... Un p\'tit gars de l\'Oklahoma, élevé dans le Missouri et devenu le sex-symbol absolu du 7e art ! Pourtant, rien ne le prédestinait à  une telle carrière. Car Brad, c\'est d\'abord le journalisme et l\'architecture qui l\'intéressent. Et puis, sur un coup de tête, il décide de tenter sa chance à  Hollywood. Avec sa belle gueule, il enchaîne les pubs et les apparitions dans les séries télé, de Quoi de neuf docteur ? à  Dallas en passant par 21 Jump Street où il croisera un certain Johnny Depp. Repéré par Ridley Scott, il séduit Geena Davis dans Thelma et Louise... et le public féminin. Le phénomène Pitt peut commencer ! Capable de casser son image de séducteur avec des films plus osés (Kalifornia, L\'armée des douze singes ou Fight Club), Brad n\'est pourtant pas le roi du box-office. C\'est côté coeur qu\'il fait des ravages... Et après six ans d\'amour avec Jennifer Friends Aniston, il est aujourd\'hui, à  42 ans, le plus beau parti de Hollywood. Qui fera de lui le papa qu\'il rêve tant de devenir ?','2009-12-29 14:30:54'),(25,1,'ANISTON','Jennifer','F','1969-02-11 00:00:00','Jennifer Aniston, fille de John, acteur dans le soap Days of our lives et nièce de Telly Savalas, alias Kojak, ne pouvait pas échapper à  une carrière télévisée. Avec son personnage de Rachel dans la série Friends, sa renommée a dépassé celle de ses aînés ! Formée au Manhattan High School of the Performing Arts, cadre de la célèbre série Fame, Jennifer débute en 1987 au théâtre et à  la télévision (The Edge, Molloy...). Le succès arrive en 1994 après qu\'elle soit parvenue à  convaincre les producteurs de Friends qu\'elle serait plus apte à  incarner le rôle de Rachel plutôt que celui de Monica. Bonne pioche car depuis elle peut s\'attaquer au cinéma. Pour couronner cette réussite professionnelle, Jennifer a réussi à  passer la bague au doigt du très convoité Brad Pitt en 2000. Malheureusement pour elle, le rêve s\'est quelque peu assombri depuis que Brad est parti après quatre ans de mariage. Les dernières rumeurs annonçaient pourtant qu\'ils pourraient se retrouver bientôt...','2009-12-29 14:30:54'),(26,1,'JOLIE','Angelina','F','1975-06-04 00:00:00','Ses parents la font tourner dès ses sept ans dans un de leurs films, la comédie Lookin\' to get out, en 1982. Son enfance est marquée par une fascination de la mort : la jeune fille collectionne les dagues et dévore la littérature consacrée à  l\'empereur Vlad. Elle suit également des cours de comédie dès l\'âge de douze ans à  l\'école Lee Strasberg Theatre Institute. Désireuse de réussir par son seul talent, l\'actrice abandonne son patronyme afin de revendiquer une personnalité fougueuse qui lui est propre. Entamant au début des années 90 une carrière de mannequin, elle défile régulièrement sous les objectifs à  Londres, New York et Los Angeles. Après être apparue dans quelques clips (Has anybody seen my baby des  Rolling Stones, Rock\'n roll dreams come through de Meat Loaf et Stand by my woman de Lenny Kravitz), elle devient en 1993 le personnage féminin principal du film d\'action Glass shadow.','2009-12-29 14:30:54'),(27,6,'FARRELL','Colin','M','1976-03-31 00:00:00','Colin Farrell a longtemps hésité entre une carrière de joueur de football et d\'acteur à  cause de son père et de son oncle, joueurs de football eux-mêmes. Finalement, il se tourne vers la comédie et suit les cours à  Dublin. Durant cette période, il faillit même intégrer le groupe Boyzone ! Loin de s\'égarer et surtout très impatient, Colin abandonne ses études et trouve son premier rôle dans The War zone (1999). Considéré comme talentueux, il apparaît dans Ordinary decent criminal et surtout Tigerland qui le propulse sur le devant de la scène. Devenu star avec les excès qui peuvent en découler (sexe, drogue, alcool), Colin prend rapidement du galon à  Hollywood. Il tient le premier rôle dans Phone Game, côtoie Tom Cruise dans Minority Report et son idole Al Pacino dans La Recrue. Volant de succès en succès, Colin Farrell, malgré des écarts de plus en plus nombreux, obtient, en 2004, la consécration en décrochant le personnage titre d\'Alexandre, réalisé par Oliver Stone.','2009-12-29 14:30:54'),(28,1,'LIMAN','Doug','M','1965-07-24 00:00:00',' Parallèlement à  ses études secondaires, Doug Liman suit les cours de l\'International Center of Photography, puis entre à  la Brown University de Providence (Rhode Island), où il collabore à  la création d\'une station de télévision à  péage gérée par ses condisciples.','2009-12-29 14:30:54'),(29,4,'BRUNI','Carla','F','1967-12-12 00:00:00','Avant Carla Bruni, aucun mannequin n\'avait réussi une aussi jolie reconversion. Aujourd\'hui, les longs défilés ont laissé leur place aux studios dans lesquels elle enregistre la musique qu\'elle aime. Loin d\'être simplement une superbe femme, Carla Bruni, pendant ses années de mannequinat, composait secrètement ses premières mélodies. Elle décide d\'entrouvrir les portes de la musique en présentant quelques unes de ses créations à  Julien Clerc qui en intègre six dans son album Si j\'étais elle (1999). Sa retraite de mannequin officialisée, l\'Italienne, âgée de 32 ans, se jette à  l\'eau pour réussir ce nouveau défi. En collaboration avec Louis Bertignac (ancien du groupe Téléphone), elle sort son premier album solo Quelqu\'un m\'a dit en 2002. Le succès est immédiat avec des milliers d\'exemplaires vendus. Reconnaissance ultime pour cette néo-chanteuse, les professionnels lui décernent une Victoire de la musique en tant qu\'Artiste interprète féminine de l\'année, en 2004.','2009-12-29 14:30:54'),(30,7,'Ruiz','Raoul','M','1941-07-25 00:00:00',' A 5 ans, Raoul Ruiz est atteint d\'un début de tuberculose, ce qui conduit sa famille à quitter Santiago pour vivre à la campagne. Son père est un capitaine dans la marine marchande, autoritaire et farfelu / il lui offrit, en même temps, une carabine 22 long rifle et un projecteur de cinéma. Nourri de littérature (Kafka, Poe), Ruiz suit des études de droit et de théologie /l\'occasion pour lui de diriger le ciné/club de l\'université/ et écrit des dizaines de pièces de théatre d\'avant/garde. Son premier long/métrage Tres tristes tigres, qui retrace le destin croisé de trois habitants de Santiago, décroche le Léopard d\'Or à Locarno en 1969, année de son mariage avec sa collaboratrice Valeria Sarmiento. Militant socialiste, l\'apprenti cinéaste devient à cette même époque conseiller cinématographique pour le parti d\'Allende. Mais il quitte le Chili au lendemain du coup d\'état de Pinochet.','2008-01-05 00:00:00'),(31,2,'Leconte','Patrice','M','1947-11-12 00:00:00','En intégrant l\'IDHEC en 1967, Patrice Leconte débute dans la réalisation en concevant de nombreux courts métrages, dont Le Laboratoire de l\'angoisse (1971) et La Famille heureuse (1973). Eclectique, il s\'intéresse également à la bande dessinée et collabore au journal Pilote en tant qu\'auteur et dessinateur de 1970 à 1975. C\'est cette année/là qu\'il met en scène son premier long : Les Vécés étaient fermés de l\'intérieur avec  Coluche et Jean Rochefort dans les rôles principaux. Le tournage est difficile et émaillé de fréquents conflits.','2008-01-05 00:00:00'),(32,1,'FORD','Harrison','M','1942-07-13 00:00:00','Quand Harrison commence des cours de comédie, le but premier n\'est pas de devenir acteur mais de vaincre sa timidité. Cette initiative l\'emmènera vers les sommets de Hollywood. Comme bon nombre d\'acteur, les débuts furent pourtant laborieux. Après quelques rôles, Harrison trouve même que sa carrière ne décolle pas et il abandonne tout pour devenir menuisier ! Sa rencontre avec George Lucas (au cours d\'un chantier) lui fera embrasser à  nouveau sa carrière d\'acteur avec American Graffiti (1973). Sa filmographie peut faire envier pas mal de ses collègues en comptant d\'innombrables succès comme Star Wars, Indiana Jones (dévolu normalement à  Tom Selleck), Le Fugitif... Malgré quelques tentatives pour changer d\'image, l\'acteur Harrison Ford est perçu comme un homme honnête et prêt à  se sacrifier pour sa famille et sa patrie.','2009-12-29 14:30:54'),(33,2,'ARCADY','Alexandre','M','1947-12-02 00:00:00','Alexandre Arcady a 15 ans lorsqu\'il quitte l\'Algérie devenue indépendante pour la France. En tant que cinéaste, il s\'attachera à  dépeindre cet exil et la communauté juive dont il est issu dans Le Grand carnaval (1983) et La -bas, mon pays (1999). A 22 ans, Alexandre Arcady débute une carrière de comédien en apparaissant dans une série télé intitulée La Cravache d\'or pour devenir par la suite directeur du théâtre de Suresnes. Il aborde le cinéma en 1977 en produisant le premier film de sa compagne Diane Kurys, Diabolo menthe. L\'année suivante, il passe à  la réalisation avec Le Coup de sirocco - les premiers pas des \"Pieds-noirs\" en France - qui donne le ton de nombre de ses films','2009-12-29 14:30:54'),(34,2,'Laurent','Mélanie','F','1983-02-23 00:00:00','C\'est en 1999 que Mélanie Laurent débute sur grand écran, avec un rôle dans le drame Un Pont entre deux rives, porté par Gérard Depardieu et Carole Bouquet. Deux ans plus tard, elle s\'illustre au générique de Ceci est mon corps, mais c\'est en 2002 que la jeune actrice française se révèle en incarnant la petite amie de Gaspard Ulliel dans le Embrassez qui vous voudrez de Michel Blanc.\r\n\r\nMélanie Laurent emprunte alors un parcours plutôt atypique. Après avoir accompagné le Snowboarder Nicolas Duvauchelle, elle est au générique du film hong-kongais Rice Rhapsody puis redevient compagne de Gaspard Ulliel dans Le Dernier jour (2004), qui la voit travailler à  nouveau pour Rodolphe Marconi deux ans après Ceci est mon corps.\r\n\r\nA partir de 2005, les choses s\'accélèrent pour cette jeune femme au visage à  la fois sévère et fragile : une apparition dans De battre, mon cœur s\'est arrêté et un petit rôle dans Indigènes précèdent le délire belge Dikkenek et, surtout, le drame Je vais bien, ne t\'en fais pas de Philippe Lioret. L\'actrice, César du Meilleur espoir féminin pour son rôle de jeune femme déboussolée par la disparition de son frère, y fait preuve d\'une présence et d\'une intensité qui l\'imposent comme l\'un des plus sûrs espoirs du cinéma hexagonal.\r\n\r\nDès lors très demandée, Mélanie Laurent tient la vedette du film policier La Chambre des morts et du thriller Le Tueur avant, en 2008, de parcourir le Paris de Cédric Klapisch. Après avoir réalisé l\'un des courts métrages pornographiques du projet X-Femmes, elle est à  l\'affiche, en 2009, de la comédie Jusqu\'à  toi, puis franchit un nouveau cap -hollywoodien cette fois- en tenant l\'un des rôles principaux du Inglourious Basterds de Quentin Tarantino. Un rôle comme la preuve définitive d\'une ascension fulgurante, et qui a donné à  la comédienne l\'occasion d\'esquisser quelques pas de danse avec Tarantino himself sur le tapis rouge du Festival de Cannes, où le film était présenté en compétition. ','2009-12-29 20:45:01'),(35,2,'Saint Laurent','Yves','M','1936-01-20 00:00:00','Après une jeunesse passée en Algérie, Yves Saint Laurent vient suivre à Paris des cours de dessins à la Chambre Syndicale de la haute/Couture. En 1955, Christian Dior le remarque et l\'emploie comme assistant modéliste. Il lui succédera deux ans plus tard et connaîtra son premier grand succès avec sa fameuse robe trapèze. Malgré cela, il sera remplacé à la tête de la maison Dior en 1961. Ce qui le poussera à fonder sa propre ligne de haute couture. Sa première collection en 1962 est un véritable succès, que ne démentiront pas les décennies suivantes : Yves Saint Laurent lancant la mode du caban, du smocking féminin, des sahariennes. En 1966, il ouvre son magasin Saint Laurent Rive Gauche, spécialisé dans le prêt à porter féminin, et trois ans plus tard il s\'ouvre aux collections masculines. Yves Saint Laurent réalisera également de nombreux costumes et décors pour le théatre et le cinéma (\'Arabesque\', \'Belle de jour\'). A partir de 1983, plusieurs musées lui consacreront des rétrospectives. Il est nommé en 2001 commandeur de la Légion d\'honneur, et fait ses adieux à la haute couture le 7 janvier 2002.','2008-01-05 00:00:00'),(36,2,'Sednaoui','Stéphane','M','1959-05-14 00:00:00','Il habite New York depuis le début des années 1990. Ex petit ami de Bjork, il a une fille avec Laetitia Casta. Il faut voir comment les plus grandes rock stars de la planète parlent de Stéphane Sednaoui, réalisateur de plusieurs des clips les plus percutants de la décennie 90: Mysterious Ways de U2, Give It Away des Red Hot Chili Peppers, Big Time Sensuality de Bjork. Il faut voir Bono s\'incliner devant le charme dévastateur du vidéaste, raconter en entrevue à quel point, sur le plateau de tournage, le plus cool, celui qui fait fondre les demoiselles, c\'est toujours Sednaoui, charismatique beauté male grevé d\'un accent francais plus gros que le bras.','2008-01-05 00:00:00'),(39,8,'THERON','Charlize','F','1975-08-07 00:00:00','Son adolescence a été endeuillée par la mort de son père, tué sous ses yeux par sa mère, en état de légitime défense, alors qu\'il était sous l\'emprise de l\'alcool.\r\n\r\nCe qui n\'empêcha nullement la jeune fille de tout mettre en œuvre, activement soutenue par sa mère, pour parvenir à un certain accomplissement, d\'abord via des cours de danse et un travail de mannequin, puis par des cours de théâtre.\r\n\r\nLa consécration est venue avec l\'Oscar de la meilleure actrice en 2003, récompense décernée le 29 février 2004, pour son rôle de la tueuse en série Aileen Wuornos dans Monster de Patty Jenkins.\r\n\r\nCe rôle, pour lequel l\'actrice n\'a pas hésité à prendre quinze kilogrammes et supporter de longues heures durant le port d\'un dentier et de lentilles de contact pour masquer son regard couleur d\'azur, a été apprécié outre-Atlantique.\r\n\r\nCharlize Theron est partie séjourner dans son pays natal aussitôt après l\'obtention de cette récompense, et y a été accueillie comme une héroïne nationale, d\'autant plus facilement qu\'aucun Sud-Africain n\'avait jamais été distingué, depuis 75 ans, par un Oscar. L\'effet de l\'obtention de cet oscar fut si retentissant,que Charlize Theron fut recu par l\'ancien président sud africain Nelson Mandela et par l\'actuel président Thabo Mbeki. De plus, beaucoup de nombreux parents en Afrique du Sud ont prénonmé leurs filles Charlize,suite à la consécration de leur compatriote.','2008-01-05 00:00:00'),(40,2,'Garrel','Louis','M','1983-06-14 00:00:00','Louis Garrel est le fils du réalisateur Philippe Garrel et de l\'actrice et réalisatrice Brigitte Sy, ainsi que le petit-fils de l’acteur Maurice Garrel. Il a une sœur cadette, l\'actrice Esther Garrel et une demi-sœur également actrice Lena Garrel.\r\nFilmant les gens qui lui sont proches et sa propre famille, Philippe Garrel emploie très tôt son fils devant la caméra. Le jeune Louis joue alors en compagnie de sa mère et de son grand-père dans les films de son père, et tout spécialement dans Les Baisers de secours (1989) à l\'âge de six ans.\r\nAdmirateur de Jean-Pierre Léaud, son parrain, l\'adolescent Louis Garrel s\'emploie à travailler ses capacités de comédien dans les cours de théâtre de son collège ainsi qu\'au conservatoire du Xe arrondissement de Paris1. Après des études littéraires passées au lycée Fénelon à Paris, il se détourne de la voie classique et renonce au baccalauréat afin de poursuivre ses études au Conservatoire national supérieur d\'art dramatique de Paris, dont il sort diplômé en 2004. Il multiplie parallèlement les expériences et les stages, dont celui qu\'il réalise à la Fémis, avec Philippe Garrel comme maître de stage, puis décroche son premier véritable rôle au cinéma en 2001, dans Ceci est mon corps de Rodolphe Marconi, avec Jane Birkin.\r\nLouis Garrel poursuit sa carrière au cinéma en tournant notamment dans deux évocations de mai 68 : Innocents - The Dreamers de Bernardo Bertolucci en 2003 avec Eva Green et Les Amants réguliers de Philippe Garrel en 2005. C\'est pour ce dernier film qu\'il obtient en 2006 deux récompenses : l\'Étoile d\'or de la révélation masculine décernée par l’Académie de la presse du cinéma français et le César du meilleur espoir masculin.\r\nIl devient l\'acteur fétiche du cinéaste Christophe Honoré, avec lequel il collabore à cinq reprises dans les longs-métrages Ma mère (2004), adaptation du roman éponyme de Georges Bataille avec Isabelle Huppert, Dans Paris (2006), aux côtés de Romain Duris, Les Chansons d\'amour (2007), film pour lequel il dévoile aussi des talents de chanteur, La Belle Personne (2008), Non ma fille tu n\'iras pas danser (2009) et enfin, Les Bien-aimés (2011). En 2007, il est également à l\'affiche d’Actrices, le second film de Valeria Bruni-Tedeschi.','2019-01-14 00:00:00');
/*!40000 ALTER TABLE `vip` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-27 15:25:37
