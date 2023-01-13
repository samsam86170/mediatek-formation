-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : lun. 19 sep. 2022 à 12:26
-- Version du serveur :  5.7.31
-- Version de PHP : 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : mediatekformation
--

-- --------------------------------------------------------

--
-- Structure de la table categorie
--

DROP TABLE IF EXISTS categorie;
CREATE TABLE categorie (
  id int(11) NOT NULL,
  name varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table categorie
--

INSERT INTO categorie (id, `name`) VALUES
(1, 'Java'),
(2, 'UML'),
(3, 'C#'),
(4, 'Python'),
(5, 'MCD'),
(6, 'Android'),
(7, 'POO'),
(8, 'SQL'),
(9, 'Cours');

-- --------------------------------------------------------

--
-- Structure de la table doctrine_migration_versions
--

DROP TABLE IF EXISTS doctrine_migration_versions;
CREATE TABLE doctrine_migration_versions (
  version varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  executed_at datetime DEFAULT NULL,
  execution_time int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table doctrine_migration_versions
--

INSERT INTO doctrine_migration_versions (`version`, executed_at, execution_time) VALUES
('DoctrineMigrations\\Version20220831122705', '2022-08-31 12:29:46', 298),
('DoctrineMigrations\\Version20220901133418', '2022-09-01 13:35:11', 75),
('DoctrineMigrations\\Version20220901142041', '2022-09-01 14:23:58', 447),
('DoctrineMigrations\\Version20220902060409', '2022-09-02 06:04:28', 72),
('DoctrineMigrations\\Version20220902061351', '2022-09-02 06:14:16', 303),
('DoctrineMigrations\\Version20220904053453', '2022-09-04 05:36:24', 237);

-- --------------------------------------------------------

--
-- Structure de la table formation
--

DROP TABLE IF EXISTS formation;
CREATE TABLE formation (
  id int(11) NOT NULL,
  published_at datetime DEFAULT NULL,
  title varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  description longtext COLLATE utf8mb4_unicode_ci,
  video_id varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  playlist_id int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table formation
--

INSERT INTO formation (id, published_at, title, description, video_id, playlist_id) VALUES
(1, '2021-01-04 17:00:12', 'Eclipse n°8 : Déploiement', 'Exécution de l\'application en dehors de l\'IDE, en invite de commande.\nCréation d\'un ficher jar pour le déploiement de l\'application.\n00:20 : exécuter l\'application à partir d\'un invite de commandes\n04:41 : créer un fichier jar auto exécutable\n06:42 : exécuter un fichier jar directement\n07:09 : exécuter un fichier jar dans l\'invite de commande pour avoir les retours console', 'Z4yTTXka958', 1),
(2, '2021-01-02 17:00:01', 'Eclipse n°7 : Tests unitaires', 'Intégration de JUnit dans l\'application et création de tests unitaires.\n00:07 : rappel sur le principe du test unitaire\n01:01 : intégrer JUnit au projet (une seule fois)\n01:52 : créer une classe de test\n03:49 : créer une méthode de test\n08:35 : lancer le test\n09:11 : créer une autre méthode de test pour tester la même méthode\n11:02 : relancer le test', '-nw42Xq6cYE', 1),
(3, '2020-12-30 17:00:07', 'Eclipse n°6 : Documentation technique', 'Intégration des commentaires normalisés et génération automatique de la documentation technique\n00:08 : insérer des commentaires normalisés\n02:14 : générer documentation technique\n04:35 : repérer et corriger les erreurs et warnings\n06:58 : afficher la documentation technique', 'PrK_P3TKc00', 1),
(4, '2020-12-29 17:00:00', 'Eclipse n°5 : Refactoring', 'Utilisation des outils de refactoring et de génération automatique de code.\n01:00 : refaire automatiquement les indentations\n01:25 : changer un nom (classe, méhode, propriété)\n04:04 : extraire une méthode\n06:19 : modifier la signature d\'une méthode\n09:23 : générer du code (constructeur, getter/setter)\n12:34 : encapsuler une propriété\n15:30 : extraire une interface', '1p_mKDDSMnQ', 1),
(5, '2020-11-09 17:00:25', 'Eclipse n°4 : WindowBuilder', 'Intégration de l\'outil WindowBuilder dans Eclipse pour pouvoir construire de façon visuelle, une interface graphique.\n00:00 : téléchargement et configuration de WindowBuilder\n03:00 : création d\'une JFrame avec WindowBuilder\n05:56 : construction de l\'interface graphique\n\n10:43 : gestion des événements\n16:15 : gestion des ressources graphiques (images...)', 'pQfbr3hpw04', 1),
(6, '2020-11-07 17:00:09', 'Eclipse n°3 : GitHub et Eclipse', 'Créer un compte sur le site GitHub (site offrant un serveur de gestion de versions pour mémoriser les différentes étapes d\'un projet et pour le travail collaboratif).\nLier ce compte à un projet sous Eclipse.\nUtiliser ce lien pour enregistrer à distance (commit and push), annuler un commit (revert commit) ou récupérer un projet distant (clone).\n\n\nSommaire :\n\n00:00 : création d\'un compte GitHub\n01:17 : création d\'un repository sur GitHub\n\n02:35 : création d\'un projet sous Eclipse\n\n05:07 : création d\"un dépôt local dans Eclipse\n07:17 : lien avec le dépôt distant (premier enregistrement : commit and push)\n13:00 : annulation d\'un commit (revert commit)\n15:28 : récupération d\'un projet distant (clone)\n\n\nERRATUM :\n1:48 : je dis que qu\'un repository privé est payant. En fait, il semblerait que depuis janvier 2019, il soit gratuit avec une limite de 3 collaborateurs par repository (merci à Kassim Acacia pour le signalement)', 'mlN7VvZkXtM', 1),
(7, '2020-11-05 17:00:02', 'Eclipse n°2 : rétroconception avec ObjectAid', 'Utilisation de l\'outil ObjectAid sous Eclipse pour faire de la rétroconception sur les classes, c\'est-à-dire obtenir le diagramme de classes à partir de classes existantes.\n\nATTENTION, contrairement à ce qui est présenté dans la vidéo, ObjectAid n\'est plus accessible via le site. Il faut aller ici :\nhttps://github.com/AbbaouiAmine/objectAidArchive/blob/main/objectaid-1.2.4.zip\nTélécharger le zip. Dans la vidéo, à 0:48, quand je dis de donner l\'adresse Internet, à la place, il faut cliquer sur \"archive\", aller sélectionner le fichier zip téléchargé puis continuer les autres étapes de la vidéo.', '9UBtVxHsnNk', 1),
(8, '2020-11-03 17:08:22', 'Eclipse n°1 : installation de l\'IDE', 'Première vidéo d\'une série sur Eclipse et le développement Java.\nInstallation du JDK et d\'Eclipse 2020-09.', 'EBzTRPgbqdc', 1),
(9, '2020-11-01 17:00:13', 'UML : Diagramme de paquetages', 'Présentation des éléments qui constituent un diagramme de paquetages.', 'Wkbwzfybk1E', 24),
(10, '2020-10-30 17:00:09', 'UML : Diagramme de classes', 'Présentation des éléments qui constituent un diagramme de classes', 'odKgwPftibM', 24),
(12, '2020-09-26 16:30:01', 'UML : Diagramme d\'activité', 'Présentation du tableau descriptif d\'un cas d\'utilisation et la représentation graphique de son scénario avec un diagramme d\'activité.', 'D4tnhIpYYSM', 24),
(13, '2020-09-24 16:30:01', 'UML : Diagramme de cas d\'utilisation', 'Présentation du diagramme de cas d\'utilisation à travers la construction d\'un exemple.', 'LDTDlXMV1xY', 24),
(14, '2020-08-07 16:15:01', 'C# : ListBox en couleur', 'Comment mettre les lignes d\'une ListBox en couleur, en fonction de certains critères.\n\n00:00 : affichage simple\n00:39 : couleurs sur les boutons radios\n01:12 : DrawMode et DrawItem sur ListBox\n02:20 : documentation officielle sur Internet\n06:00 : code de DrawItem\n10:22 : tests', 'Ce3nT4g5SKk', 2),
(15, '2020-08-04 16:15:01', 'C# : Documentation technique', 'Comment générer automatiquement une documentation technique sous Visual Studio.\nLe fichier généré étant au format XML, il est plus pratique d\'utiliser un outil pour obtenir un autre format plus lisible, comme un site HTML.\nL\'outil utilisé dans cette vidéo est Sandcastle, téléchargeable ici :\nhttps://github.com/EWSoftware/SHFB/releases\n\n00:00 : configuration du projet pour créer la doc technique\n00:48 : ajout des commentaires normalisés\n03:53 : génération de la doc au format xml\n04:45 : téléchargement et installation de SandCastle\n09:37 : création du projet sous SandCastle\n11:58 : obtention du site de la doc technique', 'GH5FgAUanhw', 2),
(16, '2020-08-02 16:26:13', 'C# : Lier List et ListBox', 'Comment lier une List à une ListBox, afin de pouvoir récupérer le bon objet dans la List, lors d\'une sélection d\'une ligne dans la ListBox.\n\nNotions abordées : \nRécupération de l\'indice de ligne de la ListBox, qui est aussi l\'indice de l\'objet dans la List.\n\nPossibilité de lier les 2 avec DataSource. \n\nUtilisation de BindingList pour le lien.\n\n\n00:00 : rappel sur le remplissage du ListBox\n00:58 : gérer la suppression\n06:03 : lien avec DataSource\n08:39 : BindingList', '-Zt1vbdUdnQ', 2),
(17, '2020-07-31 15:55:54', 'C# : Tri avec ToString et CompareTo', 'Comment gérer le tri sur le titre, dans la liste, alors que la première information affichée est l\'année de sortie.\n\nNotions abordées : \nToString : méthode existante dans la classe Object (mère de toutes les classes) qui permet de transformer une variable (quel que soit son type) en chaîne. Cette méthode peut être redéfinie  (override) dans n\'importe quelle classe, afin de définir notre propre formatage de la transformation en chaîne.\nCompareTo : méthode présente dans l\'interface IComparable (il faut donc que la classe implémente IComparable) et qui permet de comparer 2 informations. Cette méthode sert à la gestion de tris (en gérant une comparaison personnalisée).\n\n00:49 : méthode ToString\n03:32 : méthode CompareTo\n06:19 : méthode Sort qui utilise CompareTo\n07:45 : tests', 'LwkGsXCUdeg', 2),
(18, '2020-07-29 16:00:07', 'C# : Sérialisation d\'objets', 'Enregistrement de la liste d\'objets dans un fichier binaire, pour pouvoir récupérer les informations après avoir fermé et réouvert l\'application. C\'est une méthode simple et légère pour sauvegarder des données provenant d\'objets métiers. Cette méthode de sauvegarde, intéressante dans certains cas, reste limitée.\nNotions abordées : sérialisation, classe sérialisable.\n\nClasse Serialise à récupérer :\nhttps://bit.ly/EmdsClasseSerialise\n(j\'ai mis comme namespace TestHeritage, comme celui de l\'application)\n\n00:00 : présentation de la classe Serialise\n02:25 : besoin d\'un nom de fichier\n02:59 : sauvegarde de l\'objet\n03:43 : récupération de l\'objet\n05:27 : classes sérialisables\n06:00 : test (les informations sont récupérées après fermeture)\n07:00 : intérêt et limite de la sérialisation \n\nErreur : 1min36 je dis que \"les méthodes sont accessibles directement par le nom de la classe car la classe est abstraite\". J\'ai oublié de compléter par le fait que ses méthodes sont statiques car le but de cette classe n\'est pas d\'être mère d\'autres classes mais juste de proposer des méthodes. Du coup, sachant qu\'elle est abstraite, donc qu\'il ne sera pas possible de créer des objets du type de cette classe et que ses méthodes ne seront pas accessibles à partir de classes filles, alors ses méthodes doivent être statiques. Et c\'est justement parce qu\'elles sont statiques qu\'elles sont accessibles directement par le nom de la classe, et pas par un objet.\n\nRemarque : Vous remarquerez que j\'insiste dans mon erreur scandaleuse de date pour la sortie de Star Wars 4...', 'OL_qY2ennMo', 2),
(19, '2020-07-27 16:00:01', 'C# : Classes et héritage', 'Utilisation de classes métiers pour mémoriser des informations et les utiliser pour remplir une ListBox.\nNotions abordées : classe, constructeur, getter, héritage, this, classes abstraite, méthode abstraite redéfinie dans les classes filles (override), polymorphisme, transtypage.\n\n00:00 : présentation de l\'interface\n01:34 : notion de classe au niveau des objets graphiques\n02:20 : création d\'une classe métier\n03:35 : constructeur\n05:25 : getters\n07:17 : héritage\n11:32 : notion de this\n13:10 : rendre un objet graphique visible ou non\n18:02 : utilisation de la classe List\n20:19 : déclaration d\'un objet métier\n21:20 : classe abstraite\n22:08 : création d\'objets de classes héritées\n25:58 : remplir la listBox à partir de l\'objet List\n33:00 : test du type de l\'objet \n33:50 : remplir la ListBox à partir d\'une seule méthode override\n39:44 : test\n\nRemarque n°1 : désolée pour l\'énorme erreur sur la date de sortie de Star Wars 4. Ce n\'est bien sûr pas en 87 mais en 78. Honte à moi qui en plus ai eu la chance de le voir au cinéma à sa sortie.\n\nRemarque n°2 : Désolée de l\'absence de commentaires. J\'ai dit que c\'était pour réduire la durée de la vidéo, déjà bien longue. Mais j\'aurais pu le faire en off (en faisant une pause sur la vidéo).', '0VDbDYREVcU', 2),
(20, '2020-07-25 16:00:17', 'C# : lier Github à Visual Studio', 'Pour un travail professionnel sur des projets en commun, il est possible de configurer Visual Studio pour qu\'il communique avec GitHub. \nCette vidéo montre comment réaliser cette configuration mais aussi comment publier un projet, récupérer le clone pour travailler sur une branche indépendante puis envoyer des propositions de modifications de code au développeur principal qui peut valider ou refuser les modifications.\nNotions abordées : commit, push, pull request, merge.\n\n00:00 : téléchargement et installation Github\n01:32 : configuration de Github dans Visual Studio\n02:47 : publication sur GitHub\n03:30 : création compte sous Github\n04:51 : connexion au compte Github à partir de Visual Studio\n05:11 : publication du projet sur Github\n07:02 : création d\'un nouveau projet à partir du clône\n09:12 : création d\'une branche\n10:18 : modifications sur le code\n11:25 : enregistrement des modifications sur Github (commit and push)\n12:53 : envoi d\'une requête de tirage (pull request)\n14:30 : possibilités du développeur sous GitHub\n15:00 : gestion des messages entre Github et Visual Studio\n16:20 : affichage des modifications proposées\n17:12 : validation des modifications (merge pull request)\n18:29 : autre modification sur le code avec toute la démarche\n20:06 : refus de la demande (close pull request)\n\n\nIMPORTANT :\nA 02:47 \"publication sur GitHub, si le bouton \"prise en main\" n\'a aucune action, voici le mode opératoire à suivre :\n1. Allez vous même dans la fenêtre \"Team Explorer\" et sélectionnez \"Synchroniser\" : vous pourrez alors continuer le guide.\n2. Si à 5:45, au niveau de GitHub, vous n\'avez qu\'un commit au lieu de 2 et, dans la liste des fichiers, vous ne voyez pas le fichier \"Calculs.sln\", alors vous devez gérer vous-même le commit. Pour cela, allez dans \"Team Explorer\" puis \"Accueil\" (la maison) et sélectionnez \"Modifications\". Mettez un commentaire puis sélectionnez \"Valider tout et pousser\" (surtout, prenez bien \"et pousser\" et non pas juste \"valider tout\"). Vérifiez sur GitHub que le commit a bien été enregistré.\n\n\n\nERREUR : \nA 08:00, je dis qu\'il faut donner un nom de dossier qui correspond au nom du projet, ce qui est faux car le dossier va se créer automatiquement.', 'p4Y0WvpEGgU', 2),
(21, '2020-07-23 16:00:01', 'C# : création d\'objets graphiques dans le code', 'Allons plus loin dans le code des applications de bureau en C# (sous Visual Studio 2019) :\nApprendre à créer des objets graphiques directement dans le code (objets simples et aussi groupes d\'objets).\n00:00 : intérêt\n00:46 : présentation de l\'interface\n01:06 : création d\'un objet simple dans le code (bouton)\n02:59 : affectation de l\'objet à un conteneur d\'affichage\n06:15 : taille et position\n08:37 : TabIndex\n09:10 : Text\n09:43 : création de la capture de l\'événement liée à l\'objet\n11:08 : création de la procédure événementielle correspondante\n13:07 : création d\'un conteneur pour insérer plusieurs objets graphiques\n15:04 : création d\'une boucle pour générer plusieurs objets\n15:30 : déclaration et création de l\'objet\n16:34 : ajout dans le groupe \n17:06 : calcul de la position\n18:26 : construction du texte par calcul (lettre de l\'alphabet)\n21:14 : création de la capture de l\'événement liée à tous les objets\n22:20 : création de la procédure événementielle unique pour tous les objets\n23:01 : utilisation du paramètre sender\n25:29 : exécution pour tester', '3RayCDFo_pI', 2),
(22, '2020-07-21 16:00:25', 'C# : utilisation des objets graphiques', 'Pour les débutants en application de bureau sous C# (sous Visual Studio 2019) :\nComprendre les événements, gérer les objets graphiques dans le code, sécuriser l\'interface.\n00:00 : création de l\'application de bureau\n00:34 : création de l\'interface\n05:25 : 1e méthode de création d\'une procédure événementielle\n05:43 : 2e méthode de création d\'une procédure événementielle\n06:46 : 3e méthode de création d\'une procédure événementielle\n08:01 : présentation du code généré automatiquement dans Designer\n12:05 : lien entre capture d\'événement et procédure événementielle\n13:26 : supprimer proprement une procédure événementielle\n17:22 : erreur lors d\'une mauvaise suppression d\'une procédure événementielle\n19:14 : gestion du focus\n20:58 : ajout dans une liste, passage en majuscule, utilisation de variables locales\n24:14 : événement KeyPress et utilisation du paramètre de type KeyPressEventArgs\n27:08 : appel volontaire d\'une procédure événementielle\n27:40 : suppression d\'une ligne d\'une liste si une ligne est sélectionnée\n29:57 : MessageBox (boite de dialogue) simple\n31:16 : MessageBox pour une demande de confirmation\n33:57 : événement SelectedIndexChanged sur une liste\n35:52 : exécution pour tester\n38:29 : création d\'un module non événementiel avec la refactorisation\n41:42 : optimisation d\'un module non événementiel\n42:24 : exécution pour tester\n43:18 : propriété Enabled\n45:27 : exécution pour tester\n\nAutres remarques :\nVous avez dû remarquer un flottement à 40mn25s : Visual Studio avait planté...\nJ\'ai aussi fait une bêtise à 42mn13s en supprimant une ligne où le label était remis à vide alors que je devais supprimé le texte remis à vide.', 'wkzXQGQiZHA', 2),
(23, '2020-07-19 16:04:14', 'C# : événementiel contre séquentiel', 'Pour les débutants en application de bureau sous C# (sous Visual Studio 2019) :\nDifférence d\'approche entre une application séquentielle en mode console et une application événementielle en mode graphique.\nUne même application est présentée sous les deux modes de programmation.\n00:00 : présentation de la version séquentielle en mode console\n01:56 : présentation de la version événementielle en mode graphique\n03:55 : création d\'une procédure événementielle sur le clic\n11:00 : appel volontaire d\'une procédure événementielle\n12:07 : création d\'une procédure événementielle sur le changement d\'un texte\n13:24 : création d\'un module non événementiel', 'euZqLEU2F_E', 2),
(24, '2020-07-13 17:48:29', 'C# : présentation des objets graphiques', 'Pour les débutants en application de bureau sous C# (sous Visual Studio 2019) :\nPrésentation des objets graphiques les plus courants.\n00:00 Création d\'un projet de type \"application de bureau\"\n00:40 Présentation de l\'interface graphique\n01:29 Catégories d\'objets graphiques\n03:01 Placer un objet, gérer les alignements et modifier ses propriétés (exemple avec un bouton)\n05:51 Nommer un objet\n07:02 Sauvegarder\n07:13 Supprimer des objets\n07:25 ChexBox (case à cocher)\n08:38 CheckedListBox (liste de cases à cocher)\n10:10 ComboBox (liste déroulante)\n10:43 DateTimePicker (sélectionneur de date)\n11:17 Label (étiquette informative)\n12:27 LinkLabel (lien hyptertexte)\n12:39 ListBox (Liste d\'informations)\n13:23 NumericUpDown (sélectionneur numérique)\n14:00 PictureBox (image)\n15:50 RadioButton (bouton radio)\n17:19 TextBox (zone de saisie de texte)\n18:12 Exécution\n19:38 ListBox sélection multiple\n20:00 GroupBox (Boite de regroupement) par exemple pour regrouper les boutons radios\n21:22 Exécution\n21:48 MenuTrip (menu)', 'xBmwCrtqazU', 2),
(25, '2019-12-10 17:00:04', 'Python n°18 : Décorateur singleton', 'Nouvel exemple de décorateur qui cette fois, décore une classe et non une fonction. Ce décorateur permet de faire en sorte qu\'une classe soit un singleton.\nUne classe singleton est une classe qui ne peut être instanciée qu\'une seule fois.', 'BLPIdhAHQmQ', 3),
(26, '2019-12-02 10:46:38', 'Python n°17 : Décorateur exemple simple', 'Décorateur pour calculer le temps d\'exécution de fonctions. Exemple montrant la différence de performance entre 2 types de boucles.', '24_M88Ebyp0', 3),
(27, '2019-11-22 11:03:07', 'Python n°16 : Décorateurs', 'Présentation théorique de la notion de décorateurs.', '0bMI9Z1XgIE', 3),
(28, '2019-11-20 15:18:21', 'Python n°15 : Paramètres des fonctions', 'Présentation des différentes possibilités de paramètres d\'une fonction : \n- paramètres simples\n- paramètres initialisés\n- paramètres non nommés de nombre variable (liste)\n- paramètres nommés de nombre variable (dictionnaire)', 'EsXg1o3u-g4', 3),
(29, '2019-10-28 13:21:15', 'Python n°14 : Héritage', 'Notion d\'héritage, appel du constructeur de la classe mère pour valoriser les propriétés de la classe mère, test du type d\'un objet.\nPour voir ces notions, reprise de l\'exercice de la vidéo 12 sur la création de la classe Personnage :\nhttps://youtu.be/KHsEAuZdS5w\navec ajout des classes filles Mortel et Immortel.', 'hWtHkP9uwR8', 3),
(30, '2019-10-25 13:56:29', 'Python n°13 : Encapsulation', 'Technique pour gérer les getter et setter sous Python pour éviter l\'accès direct aux propriétés.\nLa vidéo repart de l\'exercice précédent (12) :\nhttps://youtu.be/KHsEAuZdS5w', 'pLnMkC79i4U', 3),
(31, '2019-10-24 10:13:43', 'Python n°12 : Classe et liste d\'objets', 'Initiation à la programmation objet sous Python.\nDécouverte de la création d\'une classe et de la gestion d\'une liste d\'objets de cette classe. Le programme permet de saisir des noms de personnages puis de gérer des attaques entre les personnages, avec la gestion de la vie de chaque personnage.', 'KHsEAuZdS5w', 3),
(32, '2019-10-22 11:10:36', 'Python n°11 : dictionnaire et IDE PyCharm', 'Découverte du dictionnaire avec un exercice qui mémorise des villes et la population pour chaque ville.\nUtilisation d\'un nouvel éditeur, un IDE professionnel adapté à Python, PyCharm, récupérable ici :\nhttps://www.jetbrains.com/pycharm/', 'P1iFvYY82i0', 3),
(33, '2019-10-18 09:38:34', 'Python n°10 : gestion des exceptions et utilisation de l\'aide', 'Le programme permet de calculer l\'année de naissance par rapport à un âge en évitant les erreurs de saisie. \nC\'est l\'occasion de voir comment accéder à l\'aide des imports et aussi à gérer les exceptions (avec try).', 'hYyFDoFHRWY', 3),
(34, '2019-10-16 09:47:45', 'Python n°9 : Listes', 'Recherche des 50 premiers nombres premiers avec optimisation de la recherche en mémorisant les nombres premiers dans une liste afin de n\'utiliser que les nombres premiers comme diviseurs.', '1WtVyo6av7s', 3),
(35, '2019-10-15 12:14:22', 'Python n°8 : Fonctions et bibliothèques', 'A travers un exercice d\'opération binaire, découverte de la création des fonctions et des bibliothèques.\n\nERRATUM : 7:57 de dit qu\'on doit convertir le résultat en base 10, alors qu\'en réalité, on doit convertir en binaire (ce que je fais juste après).', 'Hnz3d313f7M', 3),
(36, '2019-10-14 10:09:06', 'Python n°7 : Conversion binaire et menu', 'Le programme permet de convertir un nombre binaire en entier et vice versa. Affichage d\'un menu pour permettre plusieurs conversions.\nCet exemple est aussi l\'occasion de découvrir rapidement un nouvel éditeur plus adapté pour Python et installé par défaut : IDLE.', '_OdRF06GuwU', 3),
(37, '2019-10-08 10:09:41', 'Python n°6 : Nombre premier, test et booléen', 'Ecrire un programme qui permet de vérifier si un nombre est premier ou non. Réutilisation des notions déjà abordées (choix des boucles, math), et de nouvelles notions (test, booléen).', 'NiFBLZqy8PU', 3),
(38, '2019-10-07 08:42:19', 'Python n°5 : Produit de valeurs', 'Reprise de l\'exercice précédent (somme des puissances de 2) mais cette fois, en le transformant en produit. Le but est juste de montrer l\'erreur classique d\'initialisation d\'une variable pour réaliser un produit.', 'qytbwk4zAtk', 3),
(39, '2019-10-06 10:01:30', 'Python n°4 : bibliothèque math', 'Calcul de la somme des n premières puissances de 2. Utilisation de la bibliothèque math pour obtenir la puissance d\'une valeur.', '2U63_NtOP-M', 3),
(40, '2019-10-04 08:47:29', 'Python n°3 : Somme entre 2 bornes', 'Calculer la somme entre 2 bornes. L\'exercice permet de reprendre les notions précédentes en réfléchissant sur la boucle la plus adaptée.', 'GsCWIUFE8CE', 3),
(41, '2019-10-03 08:35:56', 'Python n°2 : boucle for', 'Reprise de l\'exercice 1 en ajoutant le test de saisie et en utilisant la boucle \"for\" pour l\'affichage. Cela permet de voir la différence entre la boucle déterministe (for) et la boucle indéterministe (while).', 'elrR4GUpKEo', 3),
(42, '2019-10-02 09:19:32', 'Python n°1 : boucle simple, saisie, affichage', 'Découverte des commentaires, de la saisie, de l\'affichage et de la boucle universelle (while) à travers un exemple qui permet d\'afficher une table de multiplication.', '4BFWagDB5aE', 3),
(43, '2019-09-30 14:55:31', 'Python n°0 : installation de Python', 'Cette vidéo permet juste de montrer comment installer Python et faire un premier test de programme.\nLes vidéos qui vont suivre porteront sur la découverte de Python à travers des exercices progressifs.', 'ilx0fJ72Re4', 3),
(44, '2019-09-29 13:06:14', 'Android Studio (complément n°13) : Permissions', 'Permettre de gérer les permissions directement dans l\'application. \nOn repart ici de l\'application de l\'envoi de sms (complément 4) pour ajouter la permission.\n\nPrérequis : avoir installé et configuré Android Studio (https://youtu.be/M6pi6jXpRrs).\n\nLien vers la vidéo \"Android complément 4 : envoi sms\" :\nhttps://youtu.be/UNBTFdbKymU\n\nRemarque :\n11:22 mon explication n\'est pas du tout claire. Ce numéro peut ensuite être utilisé pour distinguer les différentes permissions dans le cas où il y en a plusieurs. Ici ce n\'est pas utile, mais ça peut l\'être si on voulait gérer les informations retournées par la gestion de la permission (pour savoir quelle permission retourne une information).', 'mkI2yKiTS-4', 8),
(45, '2019-09-17 13:49:02', 'Android Studio (complément n°12) : Positionner texte sur photo', 'A partir d\'une application Android, positionner un texte sur une image et l\'enregistrer dans l\'image.\nMême si cette vidéo est indépendante, elle suit la logique de la vidéo \"Android Studio (complément n°9) : Ajout texte sur photo\". Dans cette vidéo précédente, l\'ajout se faisait avec une position fixe : https://youtu.be/kanbIK-Jf3A\n\nPrérequis : avoir installé et configuré Android Studio (https://youtu.be/M6pi6jXpRrs).\n\nLien vers les vidéos qui permettent de gérer les photos :\n\"Android Studio (complément n°5) : Récupérer les photos du mobile\" : https://youtu.be/M9JUdmx5OW4\n\"Android Studio (complément n°6) : Redimensionner des photos\" : https://youtu.be/ChqpJJKcaZU\n\"Android Studio (complément n°7) : Prendre une photo\" : https://youtu.be/8890GpBwn9w\n\"Android Studio (complément n°8) : Enregistrer une photo\" : https://youtu.be/YCnHHrR1luA\n\"Android Studio (complément n°9) : Ajout texte sur photo\" : https://youtu.be/kanbIK-Jf3A\n\"Android Studio (complément n°11) : Transformer une image en texte\" : https://youtu.be/7Xm8GROWpX0', '3IyrvQJCxVo', 8),
(46, '2019-05-22 15:41:47', 'Sujet E5 SLAM 2019 : cas RESTILOC mission4 (calcul et comparatif)', 'Correction commentée de la mission 4 du sujet SLAM RESTILOC tombé en métropole en mai 2019 (partie SI7 : calcul et comparatif).\r\nERRATUM :\r\nAu temps 19:22, j\'ai écrit un très moche \"majorativement \" ua lieu de \"majoritairement\". Désolée !', 'mBeZLsIwzkQ', 4),
(47, '2019-05-22 11:00:36', 'Sujet E5 SLAM 2019 : cas RESTILOC mission3 (SQL et Android)', 'Correction commentée de la mission 3 du sujet SLAM RESTILOC tombé en métropole en mai 2019 (partie SQL et programmation mobile).', 'VCFkJRfVyYo', 4),
(48, '2019-05-21 10:31:56', 'Sujet E5 SLAM 2019 : cas RESTILOC mission2 (programmation objet)', 'Correction commentée de la mission 2 du sujet SLAM RESTILOC tombé en métropole en mai 2019 (partie SLAM2 : programmation objet).', 'pc6A6E7Lm0I', 4),
(49, '2019-05-21 08:57:28', 'Sujet E5 SLAM 2019 : cas RESTILOC mission1 (conception de données)', 'Correction commentée de la mission 1 du sujet SLAM RESTILOC tombé en métropole en mai 2019 (partie SLAM3 : conception de données).', 'sDXBL5Ohdok', 4),
(50, '2019-05-07 11:18:22', 'Sujet E5 SLAM 2018 : cas LOCALUX mission3 (SI7)', 'Correction commentée de la mission 3 du sujet SLAM LOCALUX tombé à Noumea en novembre 2018 (partie SI7 : comparatifs et calculs).', 'X9_fMYdzDog', 5),
(51, '2019-05-06 11:56:38', 'Sujet E5 SLAM 2018 : cas LOCALUX mission2 (objet)', 'Correction commentée de la mission 2 du sujet SLAM LOCALUX tombé à Noumea en novembre 2018 (partie SLAM2 : objet et diagramme de classes).\r\nERRATUM : à 13:03 et 15:40, je parle de soustraction et j\'ai par erreur écrit le signe \"=\" au lieu du signe \"-\".', 'ihegtV45yTg', 5),
(52, '2019-05-05 15:40:23', 'Sujet E5 SLAM 2018 : cas LOCALUX mission1 (SQL et conception)', 'Correction commentée de la mission 1 du sujet SLAM LOCALUX tombé à Noumea en novembre 2018 (partie SLAM3 : SQL et conception).', 'gRxIv2O3xVQ', 5),
(53, '2019-05-03 11:00:53', 'Sujet E5 SLAM 2018 : cas WEBCAISSE mission4 (SI7)', 'Correction commentée de la mission 4 du sujet SLAM 2018 WEBCAISSE tombé en métropole en juin 2018 (partie SI7 : seuil de rentabilité, point mort, comparatif).\r\nOUBLI: \r\nà 11:40, j\'ai oublié de répondre à la 2e partie de la question 4.2 qui demande de commenter le résultat obtenu. Je l\'ai rapidement fait à l\'oral quelques instants plus tôt, mais il fallait répondre :\r\n\"Le seuil de rentabilité est atteint le 336e jour de l\'année sur 360 ce qui est tard, le projet est donc peu rentable\".', 'UdW4xP0aHsI', 6),
(54, '2019-05-02 10:54:44', 'Sujet E5 SLAM 2018 : cas WEBCAISSE mission3 (objet)', 'Correction commentée de la mission 3 du sujet SLAM 2018 WEBCAISSE tombé en métropole en juin 2018 (partie objet)', 'NtkfDd8OdZs', 6),
(55, '2019-05-01 14:35:40', 'Sujet E5 SLAM 2018 : cas WEBCAISSE mission2 (sql et tests unitaires)', 'Correction commentée de la mission 2 du sujet SLAM 2018 WEBCAISSE tombé en métropole en juin 2018 (partie SQL et tests unitaires)', 'Mgmim27uOHA', 6),
(56, '2019-04-30 15:32:23', 'Sujet E5 SLAM 2018 : cas WEBCAISSE mission1 (conception)', 'Correction commentée de la mission 1 du sujet SLAM 2018 WEBCAISSE tombé en métropole en juin 2018 (partie conception)', '4WnrIKhVYig', 6),
(57, '2019-03-14 11:56:43', 'MCD exercice 18 : sujet 2006 (cas Credauto)', 'Sujet officiel de l\'ancien BTS Informatique (mais la logique de conception est la même et représente un bon entrainement pour l\'examen).\r\nPrérequis : avoir suivi le cours \"Modèle relationnel et MCD\"\r\nhttps://youtu.be/VFHVNA8xgK0', 'EH2vqOPQTkI', 7),
(58, '2019-03-08 12:33:37', 'MCD exercice 17 : sujet 2007 (cas Synapsinfo)', 'Sujet officiel de l\'ancien BTS Informatique (mais la logique de conception est la même et représente un bon entrainement pour l\'examen).\r\nPrérequis : avoir suivi le cours \"Modèle relationnel et MCD\"\r\nhttps://youtu.be/VFHVNA8xgK0', 'TWryppItdCo', 7),
(59, '2019-02-28 11:02:21', 'MCD exercice 16 : sujet 2008 (cas CAPDC)', 'Remarque : j\'ai oublié d\'enlever la contrainte XT sur l\'un des héritages. Il n\'y a pas de contrainte à mettre puisqu\'il n\'y a qu\'une entité fille.\r\n\r\nSujet officiel de l\'ancien BTS Informatique (mais la logique de conception est la même et représente un bon entrainement pour l\'examen).\r\nPrérequis : avoir suivi le cours \"Modèle relationnel et MCD\"\r\nhttps://youtu.be/VFHVNA8xgK0', '9wws2L6bx4E', 7),
(60, '2019-02-24 18:02:05', 'MCD exercice 15 : sujet 2009 (cas Ergosum)', 'Sujet officiel de l\'ancien BTS Informatique (mais la logique de conception est la même et représente un bon entrainement pour l\'examen).\r\nPrérequis : avoir suivi le cours \"Modèle relationnel et MCD\"\r\nhttps://youtu.be/VFHVNA8xgK0', 'a8s6Mrm6qls', 7),
(61, '2019-02-21 10:10:35', 'MCD exercice 14 : sujet 2009 (cas SEG)', 'Sujet officiel de l\'ancien BTS Informatique (mais la logique de conception est la même et représente un bon entrainement pour l\'examen).\r\nPrérequis : avoir suivi le cours \"Modèle relationnel et MCD\"\r\nhttps://youtu.be/VFHVNA8xgK0', 'ZDCDeLRh6N8', 7),
(62, '2019-02-17 13:49:32', 'MCD exercice 13 : sujet 2010 (cas Noixcoop)', 'Sujet officiel de l\'ancien BTS Informatique (mais la logique de conception est la même et représente un bon entrainement pour l\'examen).\r\nPrérequis : avoir suivi le cours \"Modèle relationnel et MCD\"\r\nhttps://youtu.be/VFHVNA8xgK0', 'IFo3phNo9ak', 7),
(63, '2019-02-14 10:14:59', 'MCD exercice 12 : sujet 2008 (cas Thali)', 'Sujet officiel de l\'ancien BTS Informatique (mais la logique de conception est la même et représente un bon entrainement pour l\'examen).\r\nPrérequis : avoir suivi le cours \"Modèle relationnel et MCD\"\r\nhttps://youtu.be/VFHVNA8xgK0', 'nLEJY37gAw0', 7),
(64, '2019-02-07 10:44:44', 'MCD exercice 11 : sujet 2000 (cas Triathlète)', 'Sujet officiel de l\'ancien BTS Informatique (mais la logique de conception est la même et représente un bon entrainement pour l\'examen).\r\nPrérequis : avoir suivi le cours \"Modèle relationnel et MCD\"\r\nhttps://youtu.be/VFHVNA8xgK0', '62UfQRSUMpk', 7),
(65, '2019-01-31 11:26:40', 'MCD exercice 10 : sujet 2005 (cas Ment)', 'Sujet officiel de l\'ancien BTS Informatique (mais la logique de conception est la même et représente un bon entrainement pour l\'examen).\r\nPrérequis : avoir suivi le cours \"Modèle relationnel et MCD\"\r\nhttps://youtu.be/VFHVNA8xgK0', 'Bzml58Oe8PQ', 7),
(66, '2019-01-25 15:45:21', 'MCD exercice 9 : Double DF, lien relatif, association porteuse', 'Exercice plus long, avec annexes et présentant plusieurs difficultés : savoir repérer ce qu\'il faut modéliser (beaucoup d\'informations inutiles) et savoir traiter les informations dans le bon ordre.\r\nPrérequis : avoir suivi le cours \"Modèle relationnel et MCD\"\r\nhttps://youtu.be/VFHVNA8xgK0', '7iw08ykcOzw', 7),
(67, '2019-01-23 15:22:40', 'MCD exercice 8 : association ternaire', 'Exercice présentant 2 difficultés : repérage des informations à modéliser et association ternaire.\r\nPrérequis : avoir suivi le cours \"Modèle relationnel et MCD\"\r\nhttps://youtu.be/VFHVNA8xgK0', 'Y0Sp50n9OIg', 7),
(68, '2019-01-21 09:06:41', 'MCD exercice 7 : associations porteuses', 'Exercice un peu plus long, reprenant la notion de lien relatif, et présentant des associations porteuses.\r\nPrérequis : avoir suivi le cours \"Modèle relationnel et MCD\"\r\nhttps://youtu.be/VFHVNA8xgK0', '-vjZQpG16EY', 7),
(69, '2019-01-17 09:37:33', 'MCD exercice 6 : héritage', 'Comprendre l\'héritage.\r\nPrérequis : avoir suivi le cours \"Modèle relationnel et MCD\"\r\nhttps://youtu.be/VFHVNA8xgK0', 'dnZGdW4SBxw', 7),
(70, '2019-01-15 10:02:13', 'MCD exercice 5 : double DF entre entités et association réflexive', 'Comprendre la double DF entre entités et l\'association réflexive.\r\nPrérequis : avoir suivi le cours \"Modèle relationnel et MCD\"\r\nhttps://youtu.be/VFHVNA8xgK0', '_Bs93E0hhJc', 7),
(71, '2019-01-13 14:11:31', 'MCD exercice 4 : lien relatif', 'Comprendre la notion de lien relatif.\r\nPrérequis : avoir suivi le cours \"Modèle relationnel et MCD\"\r\nhttps://youtu.be/VFHVNA8xgK0', 'a0ReDXuQNLs', 7),
(72, '2019-01-11 16:02:32', 'MCD exercice 3 : MCD simple entités/DF/Association', 'Construire un MCD simple à partir d\'un sujet. Le MCD ne contient que des entités, DF entre entités et association binaire simple.\r\nPrérequis : avoir suivi le cours \"Modèle relationnel et MCD\"\r\nhttps://youtu.be/VFHVNA8xgK0', 'QjUI5bc_DgI', 7),
(73, '2019-01-09 10:19:07', 'MCD exercice 2 : MCD à partir de relations avec héritage', 'Construire un MCD à partir de relations avec héritage.\r\nPrérequis : avoir suivi le cours \"Modèle relationnel et MCD\"\r\nhttps://youtu.be/VFHVNA8xgK0', 'P5c3GOiFsr8', 7),
(74, '2019-01-07 15:48:07', 'MCD exercice 1 : MCD à partir de relations', 'Construire un MCD à partir de relations.\r\nPrérequis : avoir suivi le cours \"Modèle relationnel et MCD\"\r\nhttps://youtu.be/VFHVNA8xgK0', 'zhNNkDf9SrE', 7),
(75, '2018-12-18 15:47:11', 'Android Studio (complément n°11) : Transformer une image en texte', 'Cette vidéo montre comment transformer une image en texte et vice-versa. Ceci est utile si vous voulez envoyer une image, via le réseau, sur un serveur distant (par exemple pour l\'enregistrer sur un serveur et l\'indicer dans une BDD). De même, vous pouvez récupérer une image du serveur (après transformation sous forme de texte) et la retransformer en image pour l\'afficher sur le mobile.\r\n\r\nCode de l\'application :\r\nhttp://bit.ly/EmdsAndroidComplement11', '7Xm8GROWpX0', 8),
(76, '2018-11-18 18:29:53', 'Cours Merise/2 extensions', 'Liens rapides plus bas, pour accéder aux différentes parties du cours.\r\n\r\n(Cette vidéo vient en remplacement des anciennes vidéos créées au début de la vie de la chaîne et dont le son était de très mauvaise qualité)\r\n\r\nPrésentation des extensions de Merise au niveau du MCD.\r\n\r\nPrérequis : avoir suivi le cours \"Modèle relationnel et MCD\" :\r\nhttps://youtu.be/VFHVNA8xgK0\r\n\r\nDétail du cours et liens : \r\nExtensions : 0:39\r\nSous-type : 3:00\r\nLien relatif : 5:02\r\nAgrégation : 7:25\r\nContraintes : 10:42\r\nContrainte d\'exclusion : 18:21\r\nContrainte sur association et pivot : 20:23\r\nContrainte de partition : 26:55\r\nContrainte de totalité : 30:53\r\nContrainte de simultanéité : 33:27\r\nContrainte d\'inclusion : 34:46\r\nInclusion à portée multiples : 36:30\r\nContrainte d\'unicité : 39:49\r\nExercices : 42:03\r\n\r\nLien vers le pdf du cours :\r\nhttp://bit.ly/EmdsMerise2\r\n\r\nExercices de mise en pratique (modélisations dans les sujets d\'EDC) :\r\nhttps://www.youtube.com/playlist?list=PLRR7wjtXb1cAivDuEUEw24iuwTTVXfN7j\r\n\r\nCours triggers (pour programmer les contraintes dans la base de données) :\r\nhttps://www.youtube.com/playlist?list=PLRR7wjtXb1cAwWrZwg04QsTVY_PRERfgu', 'smTFM4GCEgc', 25),
(77, '2018-11-13 16:36:52', 'Cours Programmation Objet', 'Liens rapides plus bas, pour accéder aux différentes parties du cours.\r\n\r\n(Cette vidéo vient en remplacement des anciennes vidéos créées au début de la vie de la chaîne et dont le son était de mauvaise qualité)\r\n\r\nPrésentation des notions fondamentales de la programmation objet (correspond au cours SLAM2 du BTS SIO).\r\n\r\nDétail du cours et liens :\r\nintroduction, classe / objet : 0:42 \r\nencapsulation : 17:23\r\nsetter / getter : 23:09\r\nconstructeur / destructeur : 31:35\r\nstatique : 43:31\r\npropriété objet : 46:00\r\nréférence d\'un objet: 50:18\r\nhéritage : 54:37\r\nsurcharge : 1:09:46\r\npolymorphisme : 1:11:28\r\nthis / super : 1:17:25\r\ncatégories de classes et classes particulières (métiers, techniques, génériques, collections)  : 1:21:08\r\nabstraite (classe, méthode) : 1:29:03\r\nfinale (classe, méthode, propriété) : 1:34:06\r\ninterface (classe) : 1:35:18\r\norigine d\'un objet : 1:43:05\r\ntranstypage / casting : 1:45:05\r\npackage / MVC : 1:48:34\r\npersistance : 1:52:44\r\nquoi d\'autre ? conclusion et liens vers les mises en pratique : 1:55:55\r\n\r\nLien vers le pdf du cours :\r\nhttp://bit.ly/EmdsObjet\r\n\r\nERRATUM :\r\n39:04 méthode getPseudo, il y a marqué 2 fois String au lieu de public String.\r\n\r\nPensez aussi à mettre en pratique :\r\nPOO TP Java (tp d\'application directe du cours) : https://www.youtube.com/playlist?list=PLRR7wjtXb1cC-4OLKMYJcnaRDhzM6GxcX\r\nExercices objet (issus des sujets EDC du BTS SIO) : https://www.youtube.com/playlist?list=PLRR7wjtXb1cB3PAYJZqQKDJICsSRmSdr8\r\nTP Android (programmation mobile en java) : https://www.youtube.com/playlist?list=PLRR7wjtXb1cB-jibndUw-qv79O2KQkG6U', 'fKPK2VhsA4o', 27),
(78, '2018-11-02 18:21:55', 'Cours Modèle Relationnel et MCD', 'Liens rapides plus bas, pour accéder aux différentes parties du cours.\r\n\r\n(Cette vidéo vient en remplacement des anciennes vidéos créées au début de la vie de la chaîne et dont le son était de très mauvaise qualité)\r\n\r\nPrésentation des règles du Modèle Relationnel pour créer une base de données optimisée. Présentation du MCD de la méthode Merise pour faciliter la création de la base de données en respectant les règles du Modèle Relationnel.\r\n\r\nDétail du cours et liens :\r\nintroduction : 0:38\r\nbase de données relationnelle : 2:13\r\nexemple de MCD : 4:47\r\nModèle Relationnel (MLD) : \r\n- dépendance fonctionnelle (DF) : 13:10\r\n- relation, clés et formes normales : 23:19\r\nModèle Conceptuel de Données (MCD) :\r\n- introduction, entité, association : 32:05\r\n- DF entre entités (CIF) : 35:17\r\n- cardinalités : 36:58\r\n- associations vides : 38:23\r\n- CIF sur association : 39:23\r\n- intégrité fonctionnelle : 41:16\r\n- exercice : 42:49\r\n- historiques et numérotations ancienne version : 44:44\r\n- liens identifiants (liens relatifs) : 47:44\r\n- exercice : 51:39\r\n- double CIF : 55:17\r\n- CIF + association : 56:56\r\n- association réflexive : 58:25\r\n- exercice : 59:50\r\n- héritage : 1:02:15\r\n\r\nLien vers le pdf du cours :\r\nhttp://bit.ly/EmdsMCD\r\n\r\n\r\nExercices de mise en pratique :\r\nhttps://www.youtube.com/playlist?list=PLRR7wjtXb1cAivDuEUEw24iuwTTVXfN7j\r\n\r\nCours Merise/2 extensions :\r\nhttps://youtu.be/smTFM4GCEgc', 'VFHVNA8xgK0', 26),
(79, '2018-10-18 09:50:41', 'Android Studio (complément n°10) : Ajout icone dans menu', 'A partir d\'une application Android, ajouter des icônes utilisables par exemple dans les menus drawer.', 'VDGScSfKP_4', 8),
(80, '2018-10-10 19:33:05', 'Android Studio (complément n°9) : Ajout texte sur photo', 'A partir d\'une application Android, ajouter du texte sur une photo (en choisissant la taille, la couleur, la position). Une nouvelle image est créée.\r\nPrérequis : avoir installé et configuré Android Studio (https://youtu.be/M6pi6jXpRrs).', 'kanbIK-Jf3A', 8),
(81, '2018-10-04 10:35:09', 'Android Studio (complément n°8) : Enregistrer une photo', 'A partir d\'une application Android, enregistrer une photo dans la galerie..\r\nPrérequis : avoir fait l\'application \"Android Studio (complément n°7) : Prendre une photo\" car l\'application actuelle part de cette application :\r\nhttps://youtu.be/8890GpBwn9w', 'YCnHHrR1luA', 8),
(82, '2018-09-16 09:48:25', 'Android Studio (complément n°7) : Prendre une photo', 'A partir d\'une application Android, accéder à l\'appareil photo pour prendre une photo, et l\'enregistrer dans un fichier temporaire pour l\'afficher dans l\'application.\r\nPrérequis : avoir installé  et configuré Android Studio (https://youtu.be/M6pi6jXpRrs).', '8890GpBwn9w', 8),
(83, '2018-09-12 20:00:08', 'Android Studio (complément n°6) : Redimensionner des photos', 'A partir d\'une application Android, redimensionner une photo proportionnellement à la taille de la zone d\'affichage, découper une photo (par exemple pour qu\'elle soit carrée).\r\nPrérequis : avoir une application qui manipule des photos ou avoir suivi la vidéo \"Android Studio complément n°5\" : \r\nhttps://youtu.be/M9JUdmx5OW4', 'ChqpJJKcaZU', 8),
(84, '2018-09-10 19:48:15', 'Android Studio (complément n°5) : Récupérer les photos du mobile', 'A partir d\'une application Android, accéder aux photos enregistrées dans le mobile et les afficher.\r\nPrérequis : avoir installé et configuré Android Studio (sinon, visionner la vidéo du TP1 Android : https://youtu.be/M6pi6jXpRrs).', 'M9JUdmx5OW4', 8),
(85, '2018-08-17 07:19:08', 'Android Studio (complément n°4) : Envoyer un SMS', 'Coder l\'envoi d\'un SMS vers n\'importe quel smartphone, à partir d\'une application Android.\r\nPrérequis : avoir installé et configuré Android Studio (sinon, visionner la vidéo du TP1 Android : https://youtu.be/M6pi6jXpRrs).\r\n(petite erreur : le numéro de mobile fictif saisi à la fin est un peu trop long... ceci dit, ça ne change rien aux explications)', 'UNBTFdbKymU', 8),
(86, '2018-08-06 21:43:36', 'Android Studio (complément n°3) : Activity dépendante', 'Apprendre à créer des activity dépendantes (revenir à l\'activity parent par la flèche du haut).\r\nPrérequis : avoir installé et configuré Android Studio.', '2n3bGqiaWMs', 8),
(88, '2018-07-26 19:10:11', 'Android Studio (complément n°2) : Récupérer les contacts du mobile', 'Apprendre à récupérer les contacts présents dans le mobile.\r\nPrérequis : avoir installé et configuré Android Studio (voir 1e vidéo du TP Android : https://youtu.be/M6pi6jXpRrs)', '4lT0pnyzkSA', 8),
(89, '2018-07-09 19:56:31', 'Android Studio (complément n°1) : Navigation Drawer et Fragment', 'Apprendre à créer une navigation type drawer (menu qui apparaît à gauche) et y intégrer des fragments (pour l\'affichage des différentes pages). Apprendre à insérer une Activity existante dans un fragment.\r\nPrérequis : avoir installé et configuré Android Studio (voir 1e vidéo du TP Android : https://youtu.be/M6pi6jXpRrs)', 'rUnuYTjaBoU', 8),
(90, '2018-05-13 20:52:36', 'Sujet E5 SLAM 2017 : cas DANE mission4 (et quelques annonces)', 'Correction commentée de la mission 4 du sujet SLAM 2017 DANE tombé à Nouméa en novembre 2017 (partie analyse).\r\nPlusieurs questions de \"bon sens\" puis un schéma assez classique.', 'gmZYXP3hPts', 9),
(91, '2018-05-11 16:58:14', 'Sujet E5 SLAM 2017 : cas DANE mission3', 'Correction commentée de la mission 3 du sujet SLAM 2017 DANE tombé à Nouméa en novembre 2017 (partie objet).\r\n1e question très simple.\r\n2e question nettement plus complexe car il fallait bien comprendre le fonctionnement des classes et l\'utilisation des dictionnaires.\r\n3e question (une erreur à trouver), dont le résultat est très simple mais pas forcément évident à trouver.', 'cZ1WR3f39xY', 9),
(92, '2018-05-11 09:20:20', 'Sujet E5 SLAM 2017 : cas DANE mission2', 'Correction commentée de la mission 2 du sujet SLAM 2017 DANE tombé à Nouméa en novembre 2017 (partie web : PHP, Javascript, MySQL...).\r\nUn dossier déstabilisant car donnant l\'impression qu\'il faut certaines connaissances techniques (jquery, json...) alors que ce n\'est pas du tout le cas. Les réponses au final sont très simples. Vous allez voir comment aborder ce genre de mission.', 'OOaMlhFca6o', 9),
(93, '2018-05-10 10:09:43', 'Sujet E5 SLAM 2017 : cas DANE mission1', 'Correction commentée de la mission 1 du sujet SLAM 2017 DANE tombé à Nouméa en novembre 2017 (partie SQL)', '4mRyckm5kyI', 9),
(94, '2018-05-06 16:14:46', 'Sujet E5 SLAM 2017 : cas AHM-23 mission4', 'Correction commentée de la mission 4 du sujet SLAM 2017 AHM-23 tombé en métropole en juin 2017 (programmation objet)', 'GfmxfueZcAI', 10),
(95, '2018-05-04 10:21:43', 'Sujet E5 SLAM 2017 : cas AHM-23 mission3', 'Correction commentée de la mission 3 du sujet SLAM 2017 AHM-23 tombé en métropole en juin 2017 (programmation mobile)', 'mZ1lNDBCiWw', 10),
(96, '2018-05-03 09:27:14', 'Sujet E5 SLAM 2017 : cas AHM-23 mission2', 'Correction commentée de la mission 2 du sujet SLAM 2017 AHM-23 tombé en métropole en juin 2017 (partie SQL et conception de données)', 'vkRTECTijZo', 10),
(97, '2018-05-02 15:37:16', 'Sujet E5 SLAM 2017 : cas AHM-23 mission1', 'Correction commentée de la mission 1 du sujet SLAM 2017 AHM-23 tombé en métropole en juin 2017.', '5cGFejz7gYQ', 10),
(98, '2018-02-14 14:33:08', 'TP Android n°18 : liste adapter interactive (4)', 'Prérequis : avoir des connaissance en programmation objet (et avoir vu les vidéos précédentes de la construction de l\'application Android)\r\nBut : Quatrième étape : événement sur le reste de la ligne dans la liste, pour ouvrir une autre Activity pour afficher le profil.', 'HWL3yy3ZtNE', 11),
(99, '2018-02-13 16:47:33', 'TP Android n°17 : liste adapter interactive (3)', 'Prérequis : avoir des connaissance en programmation objet, PHP et MySQL (et avoir vu les vidéos précédentes de la construction de l\'application Android)\r\nBut : Troisième étape : tri d\'une liste, chargement à temps des profils du serveur et gestion de l\'événement sur la croix de la liste (pour supprimer un profil en local et dans la base distante)\r\n\r\nERRATUM : pour une raison obscure, je dis \"parser\" au lieu de \"caster\" ou \"transtyper\"... (évidemment, c\'est faux)', 'oojJR_x04vI', 11),
(100, '2018-02-12 16:57:08', 'TP Android n°16 : liste adapter interactive (2)', 'Prérequis : avoir des connaissance en programmation objet (et avoir vu les vidéos précédentes de la construction de l\'application Android)\r\nBut : Deuxième étape, Création et affichage de la liste adapter.', 'rpaZQhxbbKE', 11),
(101, '2018-02-11 14:19:58', 'TP Android n°15 : liste adapter interactive (1)', 'Prérequis : avoir des connaissance en programmation objet, php et MySQL (et avoir vu les vidéos précédentes de la construction de l\'application Android)\r\nBut : Première étape, récupération de tous les profils de la base MySQL dans l\'application Android.', 'QOmfFuAgnFY', 11),
(102, '2018-02-07 17:39:21', 'TP Android n°14 : plusieurs interfaces', 'Prérequis : avoir des connaissance en programmation objet (et avoir vu les vidéos précédentes de la construction de l\'application Android)\r\nBut : montrer comment créer plusieurs interfaces et comment passer d\'une interface à une autre.', '0LedL1ufiAs', 11),
(103, '2018-02-06 10:30:31', 'TP Android n°13 : formatage de la date', 'Prérequis : avoir des connaissance en programmation objet (et avoir vu les vidéos précédentes de la construction de l\'application Android)\r\nBut : montrer comment transformer une chaîne en date et vice versa.', 'NwvHF4BcMck', 11),
(104, '2018-02-04 18:03:43', 'TP Android n°12 : base de données distante MySQL (4)', 'Prérequis : avoir des connaissance en programmation objet (et avoir vu les vidéos précédentes de la construction de l\'application Android)\r\nBut : sous Android Studio, récupération du dernier profil distant dans le thread et affichage des informations dans l\'interface.', 'uNP706aKIRs', 11),
(105, '2018-02-02 13:30:29', 'TP Android n°11 : base de données distante MySQL (3)', 'Prérequis : avoir des connaissance en programmation objet, en PHP et MySQL (et avoir vu les vidéos précédentes de la construction de l\'application Android)\r\nBut : sous Android Studio, création la classe AccesDistant qui est en lien avec AccesHTTP pour communiquer avec le serveur distant. Contrôle, dans la console, que la communication marche. Contrôle, dans MySQL, que le profil s\'enregistre.\r\n\r\nERRATUM : 30:10 je dis qu\'il envoie vers le serveur la requête. Ce n\'est pas la requête qui est envoyée mais juste les valeurs du profil. La requête est construite dans la page PHP.', '8Kyq69u9iqU', 11);
INSERT INTO formation (id, published_at, title, description, video_id, playlist_id) VALUES
(106, '2018-02-01 12:18:38', 'TP Android n°10 : base de données distante MySQL (2)', 'IMPORTANT n°1 : nouvelle classe AccesHTTP à télécharger (voir plus bas) \r\n\r\nIMPORTANT n°2 : si vous n\'arrivez pas à accéder à la base de données :\r\nIl existe maintenant 2 formats de BDD : MySQL et MariaDB, tous les 2 accessibles au même endroit et fonctionnant de façon similaire, mais sur des ports différents.\r\nDans le fichier fonctions.php que vous avez créé, je vous conseille de modifier la variable de connexion par :\r\n$conn = new PDO(\"mysql:host=$serveur;dbname=$bd;port=3308\", $login, $mdp);\r\nEn fait, si vous avez créer la base sous MariaDB (actuellement par défaut) le port est celui par défaut : 3306. Si vous avez sélectionné MySQL, normalement le nouveau port est 3308. Ca vaut d\'ailleurs le coup aussi de tester les 2...\r\n\r\n\r\n\r\n Prérequis : avoir des connaissance en programation objet (et avoir vu les vidéos précédentes de la construction de l\'application Android)\r\nBut : sous Android Studio, faire les bons paramétrages et créer les classes outils nécessaires pour l\'accès au serveur distant via Internet et le protocole HTTP.*\r\nERRATUM : à 22:09 je dis par erreur que onPostExecute est appelé par le execute de la classe mère. C\'est doInBackground qui est appelé par execute de la classe mère. onPostExecute est une méthode événementielle appelée lorsque le serveur renvoie une réponse.\r\n\r\nIMPORTANT :\r\nDans la classe AccesHTTP, j\'utilise des classes qui sont obsolètes et qui peuvent maintenant poser problème. Je ferai une vidéo pour montrer le principe d\'une nouvelle classe AccesHTTP, mais en attendant, je vous donne son code que vous pouvez récupérer ici : \r\nhttp://bit.ly/EmdsNewAccesHTTP\r\nPensez à changer le nom du package (1e ligne).\r\nLa logique est proche de la classe montrée dans la vidéo et normalement vous n\'avez rien à changer dans le reste du programme excepté que vous n\'avez plus besoin de mettre la ligne \'useLibrary \"org.apache.http.legacy\" \' dans build.gradle, comme montré en tout début de vidéo.', 'n5AeP-fqT30', 11),
(107, '2018-01-31 14:20:06', 'TP Android n°9 : base de données distante MySQL (1)', 'Prérequis : de préférence des connaissances de base en PHP et MySQL\r\n\r\nBut : installer WAMP (ou LAMP ou MAMP suivant votre système) pour tester en local, créer une base de données MySQL (en utilisant phpMyAdmin), créer 2 pages php (une pour se connecter à la base de données, une autre pour gérer les demandes de l\'application Android qui voudra enregistrer un profil et récupérer le dernier profil enregistré).\r\nERRATUM : tout à la fin, je parle de \"vidéo précédente\", il est bien sûr question de \"vidéo suivante\".', 'PKd8CEXXyLk', 11),
(108, '2018-01-28 14:39:00', 'TP Android n°8 : base de  données locale SQLite', 'Prérequis : connaissances en Java, en programmation objet, en SQL et avoir vu les vidéos précédentes de cette série\r\nBut : Découvrir le fonctionnement d\'une base de données au format SQLite. Créer les classes d\'accès. Manipuler un curseur. Enregistrer les profils et les récupérer. Utiiser un browser externe pour consulter la base de données.', 'vRaR3yLnHig', 11),
(109, '2018-01-25 17:47:06', 'TP Android n°7 : persistance par sérialisation', 'Prérequis : connaissances en Java et programmation objet (voir le cours objet et le TP Java) et avoir vu les vidéos précédentes de cette série\r\nBut : enregistrer le profil par sérialisation dans un fichier binaire afin de le récupérer lors de l\'exécution suivante de l\'application. La classe de sérialisation vous est donnée et peut être réutilisée dans n\'importe quelle application Java.', 'pLGSguzM9jU', 11),
(110, '2018-01-23 14:54:24', 'TP Android n°6 : code de la vue', 'Prérequis : connaissances en Java et programmation objet (voir le cours objet et le TP Java) et avoir vu les vidéos précédentes de cette série\r\nBut : coder la classe de la partie Vue du MVC (fin de la première étape : l\'application fonctionne)', '8lO4wYm6Jos', 11),
(111, '2018-01-21 12:54:18', 'TP Android n°5 : code du controleur et JavaDoc', 'Remarque : pour éviter les problèmes d\'encodage (d\'accents) au niveau de la génération de la documentation technique en HTML, dans la fenêtre de la création de la doc, ligne \"Other command line arguments\", ajoutez le code suivant :\r\n-encoding utf8 -docencoding utf8 -charset utf8\r\n(au moment 16:25 de la vidéo)\r\n\r\nPrérequis : connaissances en Java et programmation objet (voir le cours objet et le TP Java) et avoir vu les vidéos précédentes de cette série\r\nBut : coder la classe de la partie Controleur du MVC et création de la documentation technique (la JavaDoc)', '32Ljj4epj8k', 11),
(112, '2018-01-18 14:12:32', 'TP Android n°4 : code du modele et tests unitaires', 'Prérequis : connaissances en Java et programmation objet (sinon voir le cours objet et le TP POO Java)\r\nBut : coder la classe de la partie Modele du MVC et création de tests unitaires', '-3PEXYo7gKM', 11),
(113, '2018-01-16 19:51:19', 'TP Android n°3 : construction de l\'interface', 'Remarque : vous verrez quelques différences dans l\'IDE, au niveau de la construction de l\'interface, mais cela reste minime (dessins de boutons un peu différents...).\r\n\r\nPrérequis : aucune (mais pour la suite, il faut avoir des connaissances en Java et programmation objet)\r\nBut : montrer le but de l\'application et construire la 1e interface (notions de Layout, de widgets et de positionnement relatif)', 'nd0hZafw1sM', 11),
(114, '2018-01-14 15:17:56', 'TP Android n°2 : création d\'une application', 'IMPORTANT : surtout choisissez bien le langage Java pour l\'application (et non Kotlin, proposé maintenant par défaut).\r\nLes étapes de création ont évolués mais la logique globale reste la même.\r\nVoici tout de même des indications (données début 2022 donc susceptibles d\'évolution) :\r\nL\'ordre de création d\'un projet a changé.\r\nMaintenant, vous tombez directement sur l\'écran présenté en 2:35 où vous choisissez \"Empty Activity\".\r\n3:00 : Maintenant on vous demande le nom (Coach), le \"package name\" est déjà rempli, il y a aussi le dossier de sauvegarde (que vous pouvez changer mais pensez à mettre \"\\Coach\" à la fin). ATTENTION, au niveau langage, choisissez \"Java\" (et surtout pas Kotlin, le TP a été fait en Java). Le minimum SDK est normalement \"API 16\".\r\n3:42 : la partie basse, une erreur et une invitation à faire une installation complémentaire en cliquant sur un lien. Dans ce cas, suivez les indications et cliquez sur le lien. Si, après cette installation, une nouvelle erreur apparait et une nouvelle installation est proposée, suivez encore les indications. Faites-le tant que des propositions sont faites. Au final, vous devriez obtenir la fenêtre précédente.\r\nIl est possible que dans la partie droite, il y ait une partie \"What’s New\". Fermez cette partie en cliquant sur le \"-\" en haut à droite de cette zone (hide) ou sur \"Assistant\" qui est marqué verticalement tout à droite.\r\nSi vous avez une partie basse ouverte (partie qui affiche entre autres, les erreurs), fermez-là en cliquant sur le \"-\" à droite. Pour le moment, on n\'en a pas besoin.\r\n14:33 : Restez sur l\'onglet \"Recommended\" et choisissez Lollilop API 22.\r\n\r\nPrérequis : aucune (mais pour la suite, il faut avoir des connaissances en Java et programmation objet)\r\nBut : créer une nouvelle application, comprendre la structure d\'une application Android, configurer l\'AVD Manager pour tester l\'application', 'xzLxUu2xO7s', 11),
(115, '2018-01-12 11:17:51', 'TP Android n°1 : installation et configuration d\'Android Studio', 'IMPORTANT : Android Studio évolue très vite. Il est possible qu\'au cours du TP, vous rencontriez des différences avec ce que je montre. N\'hésitez pas à poser des questions dans les commentaires, en cas de blocage. \r\n\r\nRemarques suite à l\'évolution de l\'IDE :\r\n7:36 : prenez plutôt l\'API 16 donc cochez \"Android 4.1 Jelly Bean\". Ne cochez pas plus d\'options (contrairement à ce qui est montré dans la vidéo)\r\n8:52 : vous devriez plutôt voir l\'option \"Start New Project\"\r\n\r\nPrérequis : aucune (mais pour la suite, il faut avoir des connaissances en Java et programmation objet)\r\nBut : installer et configurer l\'IDE Android Studio qui va permettre de développer sous Android\r\nLangage : Java pour Android\r\nTemps complet du TP : 8h12mn\r\n\r\nSommaire de cette vidéo :\r\nIntroduction\r\nInstallation de JDK : 2:52\r\nTéléchargement et installation Android Studio : 3:24\r\nPremier démarrage : 5:17\r\nConfiguration SDK : 5:55', 'M6pi6jXpRrs', 11),
(116, '2017-11-30 11:19:25', 'POO TP Java n°6 : polymorphisme', 'Prérequis : avoir vu les 5 vidéos précédentes (et avoir des connaissances en programmation objet)\r\nBut : gérer la liste (ajout, suppression) et utiliser le polymorphisme\r\nLangage : Java sous Eclipse Neon', 'tnp0dEUYORA', 12),
(117, '2017-11-29 10:42:25', 'POO TP Java n°5 : événements et contrôleur', 'Prérequis : avoir vu les 4 vidéos précédentes (et avoir des connaissances en programmation objet)\r\nBut : ajouter les événements et compléter le contrôleur qui gère tout\r\nLangage : Java sous Eclipse Neon', '8at4NpebW6c', 12),
(118, '2017-11-27 10:25:27', 'POO TP Java n°4 : démarrage sur le contrôleur, contruction du modèle', 'Remarque : A la fin de la vidéo, la classe Rond n\'a pas de constructeur alors qu\'il y en a bien un dans la classe Carre. C\'est un oubli qui est réparé dans la vidéo suivante, à la minute 13.\r\n\r\nPrérequis : avoir vu les 3 vidéos précédentes (et avoir des connaissances en programmation objet)\r\nBut : montrer comment faire démarrer l\'application sur le contrôleur, et construction du modèle avec une classe interface pour le polymorphisme\r\nLangage : Java sous Eclipse Neon', 'Ul4INk7LWS4', 12),
(119, '2017-11-26 14:46:32', 'POO TP Java n°3 : interface graphique', 'Prérequis : avoir vu les 2 vidéos précédentes\r\nBut : montrer comment créer une interface graphique avec WindowBuilder\r\nLangage : Java sous Eclipse Neon', 'MN7hxuCLrW0', 12),
(120, '2017-11-24 13:11:40', 'POO TP Java n°2 : MVC', 'POO TP Java n°2 : MVC\r\nPrérequis : de préférence avoir vu la vidéo précédente TP Java n°1\r\nBut : présenter le but de l\'application et la structure MVC\r\nLangage : Java sous Eclipse Neon', 'hblV686hGV0', 12),
(121, '2017-11-23 13:18:07', 'POO TP Java n°1 : configuration d\'Eclipse', 'Prérequis : aucune connaissance pour l\'installation et la configuration d\'Eclipse, mais ensuite il faudra avoir des connaissances en programmation objet car le tp est la mise en pratique des connaissances abordées dans la playlist du cours de programmation objet\r\nBut : télécharger, installer et configurer l\'IDE Eclipse Neon (avec le module WindowBuilder)\r\nLangage : Java sous Eclipse Neon\r\nlien de récupération de WindowBuilder (à insérer dans la configuration, comme expliqué dans la vidéo) :\r\nhttp://download.eclipse.org/windowbuilder/WB/integration/4.6/', 'mwTvM_hKlDI', 12),
(122, '2017-11-19 13:43:18', 'Bases de la programmation n°74 - POO : collections', 'Prérequis : avoir vu la vidéo n°73 (le programme de cette vidéo est repris et modifié)\r\nBut : comprendre le fonctionnement des collections, en remplacement des tableaux classiques\r\nLangage : C# sous Visual Studio version entreprise 2017', 'JuVShBG2bf0', 13),
(123, '2017-11-16 16:23:18', 'Bases de la programmation n°73 - POO : polymorphisme et abstraction', 'Prérequis : connaître les notions de classe/objet, de constructeur, d\'encapsulation et d\'héritage (vidéos n°68 à 72)\r\nBut : comprendre le polymorphisme (statique et dynamique) et la notion d\'abstraction (classe abstraite, méthode abstraite)\r\nLangage : C# sous Visual Studio version entreprise 2017', 'oCGvk4DUM8I', 13),
(124, '2017-11-15 10:26:39', 'Bases de la programmation n°72 - POO : héritage', 'Prérequis : connaître les notions de classe/objet, de constructeur et d\'encapsulation (vidéos n°68 à 70)\r\nBut : présentation de la notion d\'héritage\r\nLangage : C# sous Visual Studio version entreprise 2017', 'FgqWq8lrfBI', 13),
(125, '2017-11-14 09:19:20', 'Bases de la programmation n°71 - POO : petit qcm', 'Prérequis : connaître les notions de classe/objet, de constructeur et d\'encapsulation (vidéos n°68 à 70)\r\nBut : petit QCM de contrôle de connaissances sur les premières notions de POO vues dans les 3 vidéos précédentes (sans mise en pratique)\r\nLangage : C# sous Visual Studio version entreprise 2017', 'dnw6_GOe7us', 13),
(126, '2017-11-13 10:48:45', 'Bases de la programmation n°70 - POO : encapsulation', 'Prérequis : connaître les notions de classe/objet et de constructeur (vidéos n°68 et 69)\r\nBut : comprendre l\'encapsulation (privé/public, getter/setter)\r\nLangage : C# sous Visual Studio version entreprise 2017\r\n\r\nERRATUM :\r\n6:35 : je dis par erreur que vous n\'avez pas besoin de connaître le contenu des méthodes. C\'est vrai si la classe était en include et pas directement dans le code. Donc pour créer l\'application, vous avez besoin du contenu des méthodes qui sont présentées de 7:09 à 10:15.\r\n7:01 : je présente le contenu de la classe Personnage avec, dans le constructeur, l\'initialisation de la vie, en disant qu\'elle doit être initialisée avec une valeur entière entre 0 et 5, sauf que j\'écris :\r\nthis.vie = nbAlea.Next(0, 5) ;\r\nalors que le second paramètre représente la borne supérieure non incluse, donc il faut écrire :\r\nthis.vie = nbAlea.Next(0, 6) ;\r\n(merci à kamo Yeah pour ce signalement)', 'Pcipxfq3IVw', 13),
(127, '2017-11-10 14:38:42', 'Bases de la programmation n°69 - POO : vie d\'un objet (constructeur)', 'Prérequis : avoir les bases de programmation procédurale et événementielle et savoir ce qu\'es un objet et une classe (vu dans la vidéo précédente \"Bases de la programmation n°68\")\r\nBut : comprendre la vie d\'un objet (déclaration, création (instanciation), utilisation\r\nLangage : C# sous Visual Studio version entreprise 2017', 'rTbctFr3zc8', 13),
(128, '2017-11-09 16:45:47', 'Bases de la programmation n°68 - POO : classe/objet', 'Prérequis : avoir les bases de programmation procédurale et événementielle\r\nBut : initiation à la notion de classe et d\'objet\r\nLangage : C# sous Visual Studio version entreprise 2017', '3_1TJBsJm-k', 13),
(129, '2017-11-08 10:30:05', 'Bases de la programmation n°67 - événementiel : tables de multiplications', 'Prérequis : savoir créer un projet événementiel (\"Bases de la programmation n°60\")\r\nBut : créer une application graphique qui permet de proposer une série de tests pour contrôler les connaissances en tables de multiplications (création de nombres aléatoires, gestion des couleurs, optimisation du code)\r\nLangage : C# sous Visual Studio version entreprise 2017\r\n\r\nREMARQUE : ce serait bien d\'apporter une petite optimisation en créant une procédure non événementielle pour remplir la zone de note, vu qu\'on le fait à 2 endroits du programme.', 'X-BX2TX1YC8', 13),
(130, '2017-11-07 09:22:50', 'Bases de la programmation n°66 - événementiel : conversion de monnaies', 'Prérequis : savoir créer un projet événementiel (\"Bases de la programmation n°60\") et connaître les tableaux de structures\r\nBut : créer une application graphique qui permet de réaliser des conversions de monnaies (à partir de monnaies stockées dans un tableau de structure)\r\nLangage : C# sous Visual Studio version entreprise 2017', 'ogqgPiBJ_a4', 13),
(131, '2017-11-05 13:44:15', 'Bases de la programmation n°65 - événementiel : manipulation de listes', 'Prérequis : avoir vu au moins les vidéos \"Bases de la programmation n°60 et 63\"  ou savoir créer un projet événementiel\r\nBut : créer une application graphique qui permet de gérer des listes (copie des items d\'une liste à l\'autre)\r\nLangage : C# sous Visual Studio version entreprise 2017\r\n\r\nERRATUM : \r\n1:46 je dis par erreur que les listbox n\'ont pas encore été vues (elles ont été vue dans \"Base de la programmation n°63\")\r\n10:05 dans choix ce n\'est pas la sélection du dossier qu\'on récupère mais la sélection du choix (ok ou annuler)', 'jtIFePeDFmc', 13),
(132, '2017-11-03 12:36:42', 'Bases de la programmation n°64 - événementiel : poids idéal', 'Prérequis : avoir vu la vidéos \"Bases de la programmation n°60\" ou savoir créer un petit projet événementiel\r\nBut : créer une application graphique qui permet de calculer le poids idéal suivant la formule de CREFF (utilisaton de nouveaux objets graphiques : DateTimePicker et RadioButton)\r\nLangage : C# sous Visual Studio version entreprise 2017', 'tAUkirXVbk4', 13),
(133, '2017-11-02 12:00:37', 'Bases de la programmation n°63 - événementiel : galerie de photos', 'Prérequis : avoir vu les vidéos \"Bases de la programmation n°60 et 61\" ou savoir créer un petit projet événementiel (avec modules non événementiels)\r\nBut : créer une application graphique qui permet de sélectionner un dossier sur le disque et d\'afficher les images qu\'il contient (avec possibilité de faire pivoter une photo)\r\nLangage : C# sous Visual Studio version entreprise 2017', 'ZZOcCU-Q6V8', 13),
(134, '2017-11-01 15:54:34', 'Bases de la programmation n°62 - événementiel : conversions', 'Prérequis : avoir vu les vidéos \"Bases de la programmation n°60 et 61\" ou savoir créer un petit projet événementiel (avec modules non événementiels)\r\nBut : créer une application graphique qui permet de convertir en base 2 (avec conversion à la volée, sans valider ni cliquer sur un bouton)\r\nLangage : C# sous Visual Studio version entreprise 2017', 'SUDWQ9z0GAc', 13),
(135, '2017-10-31 16:11:14', 'Bases de la programmation n°61 - événementiel : nombre caché', 'Prérequis : avoir vu la vidéo \"Bases de la programmation n°60\" ou savoir créer un petit projet événementiel\r\nBut : créer une application graphique avec des propriétés (variables globales à la classe) et des modules non événementiels\r\nLangage : C# sous Visual Studio version entreprise 2017', 'MCNNpJWPTGk', 13),
(136, '2017-10-30 16:44:06', 'Bases de la programmation n°60 - événementiel : premier exemple graphique', 'Prérequis : connaître les bases de la programmation procédurale (variables simples, tableaux, conditions, itérations, modules paramétrés)\r\nBut : découverte de la programmation dans un environnement graphique\r\nLangage : C# sous Visual Studio version entreprise 2017\r\n\r\nERRATUM : à 7:31 je parle par erreur de la propriété Pow de la classe Math alors que c\'est une méthode et non une propriété. On pourrait prendre comme exemple PI de la classe Math.', 'R71Vj5PSOK8', 13),
(137, '2017-10-28 13:02:08', 'Bases de la programmation n°59 - modules : exercice 55 (notation polonaise)', 'Prérequis : savoir manipuler les modules paramétrés\r\nBut : exercice de réflexion sur le calcul en notation polonaise\r\nLangage : C# sous Visual Studio version entreprise 2017\r\n\r\nERRATUM : dans le sujet, je parle de conversion en int, et dans la vidéo, je convertis en float. Le principe est similaire mais effectivement le résultat d\'une opération peut donner un float.', 'htV8q12Hn58', 13),
(138, '2017-10-27 10:01:31', 'Bases de la programmation n°58 - modules : exercice 54 (signes du zodiaque)', 'Prérequis : savoir manipuler les modules paramétrés et les tableaux de structures\r\nBut : création d\'un module qui retourne le signe du zodiaque en fonction du jour et du mois\r\nLangage : C# sous Visual Studio version entreprise 2017', 'vQJeeD-M5xE', 13),
(139, '2017-10-26 09:10:11', 'Bases de la programmation n°57 - modules : exercice 53 (paramètre vecteur)', 'Prérequis : savoir manipuler les modules et les vecteurs\r\nBut : création d\'un module ayant un vecteur en paramètre et modification du vecteur (les paramètres de types complexes sont toujours transférés par référence)\r\nLangage : C# sous Visual Studio version entreprise 2017\r\n\r\nERRATUM : \r\nà 5:15, je parle de \"passage par paramètre\", en réalité c\'est un \"passage par référence\"\r\nà 18:16, je dis \"il sort de la procédure\" au lieu de \"il sort de la fonction\"', '6WArwj8toQ0', 13),
(140, '2017-10-25 08:44:07', 'Bases de la programmation n°56 - modules : exercice 52 (paramètre vecteur)', 'Prérequis : savoir manipuler les modules et les vecteurs\r\nBut : création d\'un module ayant un vecteur en paramètre\r\nLangage : C# sous Visual Studio version entreprise 2017', 'Z_2KgfgHsow', 13),
(141, '2017-10-25 08:36:13', 'Bases de la programmation n°55 - modules : QCM', 'Prérequis : savoir ce qu\'est un module (procédure ou fonction) et un paramètre\r\nBut : petit QCM pour contrôler les connaissances\r\nLangage : C# sous Visual Studio version entreprise 2017', 'pgSobCGHtPw', 13),
(142, '2017-10-24 09:31:22', 'Bases de la programmation n°54 - modules : procédure ou fonction ?', 'Prérequis : avoir vu la vidéo \"Bases de la programmation n°53\"\r\nBut : savoir choisir entre créer une procédure ou une fonction\r\nLangage : C# sous Visual Studio version entreprise 2017', 'C13X9KenLmY', 13),
(143, '2017-10-24 09:26:35', 'Bases de la programmation n°53 - modules : procédure ou fonction ?', 'Prérequis : connaître la différence entre une procédure et une fonction\r\nBut : savoir choisir entre créer une procédure ou une fonction\r\nLangage : C# sous Visual Studio version entreprise 2017', 'lr4jrRzjrQA', 13),
(144, '2017-10-23 10:33:31', 'Bases de la programmation n°52 - modules : trace avec paramètres par référence', 'Prérequis : avoir vu la vidéo précédente (Bases de la programmation n°51)\r\nBut : trace complexe avec paramètres en référence\r\nLangage : C# sous Visual Studio version entreprise 2017', 'bGet3MFefL4', 13),
(145, '2017-10-23 10:29:31', 'Bases de la programmation n°51 - modules : trace avec paramètres par référence', 'Prérequis : savoir ce qu\'est une fonction paramétrée (\"bases de la programmation n°43 à 49\")\r\nBut : découverte des différents passages de paramètres (par valeur ou par référence/adresse)\r\nLangage : C# sous Visual Studio version entreprise 2017', '4FYzigwAF3M', 13),
(146, '2017-10-23 10:23:40', 'Bases de la programmation n°50 - modules : exercice 46 (fonctions paramétrées)', 'Prérequis : savoir ce qu\'est une fonction paramétrée (\"bases de la programmation n°43 à 49\")\r\nBut : contrôle si 2 nombre sont amis (optimisation avec plusieurs fonctions paramétrées)\r\nLangage : C# sous Visual Studio version entreprise 2017', 'JtRZP_-wYEI', 13),
(147, '2017-10-21 15:22:17', 'Bases de la programmation n°49 - modules : exercice 45', 'Prérequis : avoir vu la vidéo \"bases de la programmation n°48\" car la fonction paramétrée va être reprise et \"bases de la programmation n°11\" car il faut reprendre l\'exercice de cette vidéo pour utiliser la nouvelle fonction\r\nBut : réutiliser une fonction paramétrée\r\nLangage : C# sous Visual Studio version entreprise 2017', 'DQkIdlu5bFw', 13),
(148, '2017-10-21 15:18:52', 'Bases de la programmation n°48 - modules : exercice 44', 'Prérequis : avoir vu la vidéo \"bases de la programmation n°47\" qui présente une fonction paramétrée et la vidéo \"bases de la programmation n°46\" car c\'est cet exercice qui est repris et amélioré\r\nBut : transformer une fonction non paramétrée en fonction paramétrée\r\nLangage : C# sous Visual Studio version entreprise 2017', 'FdLkvKiglk4', 13),
(149, '2017-10-20 09:13:37', 'Bases de la programmation n°47 - modules : exemple avec paramètres', 'Prérequis : avoir vu la vidéo \"bases de la programmation n°45\" qui présente une fonction simple\r\nBut : ajouter des paramètres à un module\r\nLangage : C# sous Visual Studio version entreprise 2017', 'zs4aVyJKDbk', 13),
(150, '2017-10-20 08:38:03', 'Bases de la programmation n°46 - modules : exercice 43 (fonction)', 'Prérequis : avoir vu les vidéos \"bases de la programmation n°44 et n45\"\r\nBut : transformer une procédure en fonction\r\nLangage : C# sous Visual Studio version entreprise 2017\r\n\r\nERRATUM :\r\nDans le Main, en allant un peu vite, j\'ai déclaré par erreur la variable reponse avec les autres variables de type float, alors qu\'elle devrait être déclarée en type char.\r\nLe programme fonctionne tout de même car un type char reçoit en réalité le code ascii du caractère, donc un nombre. Cependant évidemment, c\'est très moche de faire ainsi.\r\nMerci à Kévin Rizzo pour avoir signalé l\'erreur.', 'oIYr7zFbeg0', 13),
(151, '2017-10-19 14:53:29', 'Bases de la programmation n°45 - modules : exemple fonction', 'Prérequis : avoir vu la vidéo \"bases de la programmation n°43\" sur les modules\r\nBut : découvrir le principe d\'une fonction (module qui retourne une information)\r\nLangage : C# sous Visual Studio version entreprise 2017', 'fEuWc3vSFBc', 13),
(152, '2017-10-19 14:02:25', 'Bases de la programmation n°44 - modules : exercice 42', 'Prérequis : avoir vu la vidéo précédente (bases de la programmation n°43) sur les modules\r\nBut : application directe de la notion vue dans la vidéo précédente (coder un module simple de type procédure sans paramètre)\r\nLangage : C# sous Visual Studio version entreprise 2017', 'da2zwV1-eLk', 13),
(153, '2017-10-18 12:59:54', 'Bases de la programmation n°43 - modules : premier exemple', 'Prérequis : avoir vu et compris la vidéo du premier exemple de programmation procédurale (Bases de la programmation n°1)\r\nBut : montrer l\'intérêt d\'un module\r\nLangage : C# sous Visual Studio version entreprise 2017', 'xPXok2jW0Xw', 13),
(154, '2017-10-16 13:58:46', 'Bases de la programmation n°42 - tableaux : exercice41 (exercice avancé)', 'Prérequis : savoir manipuler un tableau de structure\r\nBut : trouver la solution la plus optimisée d\'un problème sur les tableaux\r\nLangage : C# sous Visual Studio version entreprise 2017', 'x8rD8tC5aoQ', 13),
(155, '2017-10-16 09:11:04', 'Bases de la programmation n°41 - tableaux : exercice40 (exercice avancé)', 'Prérequis : savoir manipuler un vecteur (tableau à 1 dimension)\r\nBut : trouver la solution la plus optimisée d\'un problème sur les tableaux, en jouant sur les indices\r\nLangage : C# sous Visual Studio version entreprise 2017', '6Ev3SC4nUzU', 13),
(156, '2017-10-15 16:12:22', 'Bases de la programmation n°40 - tableaux : exercice39 (inversion d\'un tableau)', 'Prérequis : savoir manipuler un vecteur (tableau à 1 dimension)\r\nBut : Inversion des cases d\'un tableau sans utiliser un autre tableau (petit exercice de réflexion et piège à éviter...)\r\nLangage : C# sous Visual Studio version entreprise 2017', '9132Kbg99AU', 13),
(157, '2017-10-15 14:11:07', 'Bases de la programmation n°39 - tableaux : exercice38 (trace d\'un tableau)', 'Prérequis : savoir manipuler un vecteur (tableau à 1 dimension)\r\nBut : bien comprendre le fonctionnement d\'un tableau (au nivea udes indices et contenus de cases)\r\nLangage : C# sous Visual Studio version entreprise 2017', 'xmiMaEqkoMg', 13),
(158, '2017-10-14 09:53:19', 'Bases de la programmation n°38 - tableaux : exercice37 (recherche dichotomique)', 'Prérequis : avoir vu la vidéo précédente sur la recherche séquentielle\r\nBut : recherche dichotomique dans un vecteur trié\r\nLangage : C# sous Visual Studio version entreprise 2017', 'ob6bo7BI_Uw', 13),
(159, '2017-10-14 09:33:13', 'Bases de la programmation n°37 - tableaux : exercice36 (recherche séquentielle)', 'Prérequis : savoir manipuler un vecteur (tableau à 1 dimension)\r\nBut : recherche séquentielle dans un vecteur (trié ou non)\r\nLangage : C# sous Visual Studio version entreprise 2017', '4gxhfP4I5pM', 13),
(160, '2017-10-13 13:08:55', 'Bases de la programmation n°36 - tableaux : exercice35 (tri par bulle)', 'Prérequis : avoir vu les 2 exercices précédents (tri par sélection et insertion)\r\nBut : tri d\'un vecteur (tableau à 1 dimension) avec la méthode de tri par bulle\r\nLangage : C# sous Visual Studio version entreprise 2017', 'kUP8kb9t50Q', 13),
(161, '2017-10-12 17:04:43', 'Bases de la programmation n°35 - tableaux : exercice34 (tri par insertion)', 'Prérequis : avoir vu l\'exercice précédent (tri par sélection)\r\nBut : tri d\'un vecteur (tableau à 1 dimension) avec la méthode de tri par insertion\r\nLangage : C# sous Visual Studio version entreprise 2017', 'dSN7mtGOeZc', 13),
(162, '2017-10-12 11:05:11', 'Bases de la programmation n°34 - tableaux : exercice33 (tri par sélection)', 'Prérequis : savoir manipuler un vecteur (base de la programmation n°31)\r\nBut : tri d\'un vecteur (tableau à 1 dimension) avec la méthode de tri par sélection\r\nLangage : C# sous Visual Studio version entreprise 2017', '0Z8rYUjFrG4', 13),
(163, '2017-10-11 09:59:01', 'Bases de la programmation n°33 - tableaux : exercice32 (tableau de structure)', 'Prérequis : savoir manipuler un vecteur (base de la programmation n°31)\r\nBut : manipulation d\'un tableau de structure\r\nLangage : C# sous Visual Studio version entreprise 2017', 'H9oJxdw8SN4', 13),
(164, '2017-10-10 09:49:19', 'Bases de la programmation n°32 - tableaux : exercice31 (matrice)', 'Prérequis : avoir suivi l\'exercice précédent (ou avoir compris comment fonctionne un tableau à 1 dimension)\r\nBut : manipulation d\'un tableau à 2 dimensions (calcul d\'un déterminant)\r\nLangage : C# sous Visual Studio version entreprise 2017', 'n6mbI-4Vbvg', 13),
(165, '2017-10-10 09:10:26', 'Bases de la programmation n°31 - tableaux : exercice29 (manipulation d\'un vecteur)', 'Prérequis : connaître les variables simples et les notions de base de la programmation procédurale (saisie/affichage, affectation/calcul, tests, boucles)\r\nBut : manipulation d\'un tableau à 1 dimension (calcul d\'une moyenne et des températures au dessus de la moyenne)\r\nLangage : C# sous Visual Studio version entreprise 2017', 'fgSYas-xIiI', 13),
(166, '2017-10-09 10:09:35', 'Bases de la programmation n°30 - procédural : debugage', 'Prérequis : avoir vu les vidéos \"Bases de la programmation\" précédentes\r\nBut : utilisation du debugage pour voir l\'évolution des variables\r\nLangage : C# sous Visual Studio version entreprise 2017', 'q0vQd-icoCA', 13),
(167, '2017-10-09 09:46:58', 'Bases de la programmation n°29 - procédural : exercice28 (conversion binaire)', 'Prérequis : avoir vu les vidéos \"Bases de la programmation\" précédentes\r\nBut : exercice de révision (conversion d\'un nombre entier en binaire par divisions successives)\r\nLangage : C# sous Visual Studio version entreprise 2017', '6D2tOQwj0vI', 13),
(168, '2017-10-08 16:07:15', 'Bases de la programmation n°28 - procédural : exercice27 (nombre premier)', 'Prérequis : avoir vu les vidéos \"Bases de la programmation\" précédentes\r\nBut : exercice de révision (contrôle si un nombre est premier)\r\nLangage : C# sous Visual Studio version entreprise 2017\r\n\r\n\r\nRemarque importante :\r\nLe programme ne fonctionne pas si 2 est saisi (2 étant le premier nombre premier). Il manque donc un test pour traiter ce cas particulier.', 'kAKLBGNPbKE', 13),
(169, '2017-10-08 16:01:18', 'Bases de la programmation n°27 - procédural : exercice26 (conversion secondes)', 'Prérequis : avoir vu les vidéos \"Bases de la programmation\" précédentes\r\nBut : exercice de révision (conversion de secondes en HH:MM:SS)\r\nLangage : C# sous Visual Studio version entreprise 2017', 'WCWnS78WRTE', 13),
(170, '2017-10-07 16:15:58', 'Bases de la programmation n°26 - procédural : exercice25 (suite croisante)', 'Prérequis : avoir vu les vidéos \"Bases de la programmation\" précédentes\r\nBut : exercice de révision (nécessité de comparer 2 valeurs successives, par exemple pour démontrer qu\'une suite est croissante)\r\nLangage : C# sous Visual Studio version entreprise 2017', 'qhCM3u080ek', 13),
(171, '2017-10-07 15:22:10', 'Bases de la programmation n°25 - procédural : exercice24 (recherche de min et max)', 'Prérequis : avoir vu les vidéos \"Bases de la programmation\" précédentes\r\nBut : exercice de révision (recherche de minimum et maximum dans une liste non bornée)\r\nLangage : C# sous Visual Studio version entreprise 2017', 'JfDD5bi3mjk', 13),
(172, '2017-10-06 10:01:11', 'Bases de la programmation n°24 - procédural : exercice23 (recherche de min et max)', 'Prérequis : avoir vu les vidéos \"Bases de la programmation\" précédentes\r\nBut : exercice de révision (recherche de minimum et maximum dans une liste bornée)\r\nLangage : C# sous Visual Studio version entreprise 2017', 'F6u-yv4WIYc', 13),
(173, '2017-10-06 09:36:47', 'Bases de la programmation n°23 - procédural : exercice22 (for et petite astuce)', 'Prérequis : avoir vu les vidéos \"Bases de la programmation\" précédentes\r\nBut : exercice de révision (boucle for et optimisation de traitement)\r\nLangage : C# sous Visual Studio version entreprise 2017', '16ObvAcBAJg', 13),
(174, '2017-10-05 13:37:31', 'Bases de la programmation n°22 - procédural : exercice21 (if,switch et test de saisie)', 'Prérequis : avoir vu les vidéos \"Bases de la programmation\" précédentes\r\nBut : exercice de révision (alternative et test de saisie)\r\nLangage : C# sous Visual Studio version entreprise 2017', 'vrrMgyPRAWU', 13),
(175, '2017-10-05 08:52:01', 'Bases de la programmation n°21 - procédural : exercice20 (saisie affichage)', 'Prérequis : avoir vu les vidéos \"Bases de la programmation\" précédentes\r\nBut : exercice de révision (saisie et affichage)\r\nLangage : C# sous Visual Studio version entreprise 2017', 'spqHCVdSTtQ', 13),
(176, '2017-10-04 08:42:42', 'Bases de la programmation n°20 - procédural : exercice19 (optimisation)', 'Prérequis : avoir vu les vidéos \"Bases de la programmation\" précédentes\r\nBut : apprendre à optimiser un code\r\nLangage : C# sous Visual Studio version entreprise 2017', 'h_95SLUnV6o', 13),
(177, '2017-10-03 08:45:01', 'Bases de la programmation n°19 - procédural : exercice18 (fonction dans une fonction)', 'Prérequis : avoir vu les vidéos \"Bases de la programmation\" précédentes\r\nBut : appel d\'une fonction comme argument d\'une autre fonction\r\nLangage : C# sous Visual Studio version entreprise 2017', 'kwYLJGVKGNA', 13),
(178, '2017-10-03 08:38:25', 'Bases de la programmation n°18 - procédural : exercice17 (fonction mathématique)', 'Prérequis : avoir vu les vidéos \"Bases de la programmation\" précédentes\r\nBut : découvrir des fonctions mathématiques directement sur la classe Math\r\nLangage : C# sous Visual Studio version entreprise 2017', 'OhSdUl7C5eU', 13),
(179, '2017-10-02 08:06:55', 'Bases de la programmation n°17 - procédural : exercice16 (maniplations de chaines)', 'Prérequis : avoir vu les vidéos \"Bases de la programmation\" précédentes\r\nBut : découvrir des fonctions de manipulations de chaines (IndexOf, Substring)\r\nLangage : C# sous Visual Studio version entreprise 2017', 'iuh-7-qxFHw', 13),
(180, '2017-10-02 08:02:00', 'Bases de la programmation n°16 - procédural : exercice15 (maniplations de chaines)', 'Prérequis : avoir vu les vidéos \"Bases de la programmation\" précédentes\r\nBut : découvrir des fonctions de manipulations de chaines (Replace)\r\nLangage : C# sous Visual Studio version entreprise 2017', 'xPto2Junk1o', 13),
(181, '2017-09-30 15:48:53', 'Bases de la programmation n°15 - procédural : exercice14 (boucles imbriquées)', 'Prérequis : avoir vu les vidéos \"Bases de la programmation\" précédentes\r\nBut : boucles imbriquées\r\nLangage : C# sous Visual Studio version entreprise 2017', 'mrwTtcVtR90', 13),
(182, '2017-09-30 15:35:36', 'Bases de la programmation n°14 - procédural : exercice13 (boucles successives)', 'Prérequis : avoir vu les vidéos \"Bases de la programmation\" précédentes\r\nBut : plusieurs boucles successives\r\nLangage : C# sous Visual Studio version entreprise 2017', 'VYC6mG6ILB0', 13),
(183, '2017-09-29 09:22:00', 'Bases de la programmation n°13 - procédural : exercice12 (boucle for)', 'Prérequis : avoir vu les vidéos \"Bases de la programmation\" précédentes\r\nBut : utiliser la boucle for (nombre d\'itération connu)\r\nLangage : C# sous Visual Studio version entreprise 2017', 'AxLkmF0aPwM', 13),
(184, '2017-09-29 09:18:33', 'Bases de la programmation n°12 - procédural : exercice11 (boucle for)', 'Prérequis : avoir vu les vidéos \"Bases de la programmation\" précédentes\r\nBut : utiliser la boucle for (nombre d\'itération connu)\r\nLangage : C# sous Visual Studio version entreprise 2017', '7tss6XwFO8I', 13),
(185, '2017-09-28 09:00:30', 'Bases de la programmation n°11 - procédural : exercice10 (boucle do/while)', 'Prérequis : avoir vu les vidéos \"Bases de la programmation\" précédentes\r\nBut : utiliser la boucle do/while pour les test de saisie\r\nLangage : C# sous Visual Studio version entreprise 2017', 'INE6HvHBRG0', 13),
(186, '2017-09-28 08:37:47', 'Bases de la programmation n°10 - procédural : exercice9 (boucle do/while)', 'Prérequis : avoir vu les vidéos \"Bases de la programmation\" précédentes\r\nBut : utiliser la boucle do/while pour les test de saisie\r\nLangage : C# sous Visual Studio version entreprise 2017', 'QDo1e7-OxWU', 13),
(187, '2017-09-27 07:50:29', 'Bases de la programmation n°9 - procédural : exercice8 (boucle while)', 'Prérequis : avoir vu les vidéos \"Bases de la programmation\" précédentes\r\nBut : utiliser la boucle universelle while avec question pour arrêter\r\nLangage : C# sous Visual Studio version entreprise 2017', 'Pb1esUzrkIA', 13),
(188, '2017-09-27 07:44:20', 'Bases de la programmation n°8 - procédural : exercice7 (boucle while)', 'Prérequis : avoir vu les vidéos \"Bases de la programmation\" précédentes\r\nBut : utiliser la boucle universelle while\r\nLangage : C# sous Visual Studio version entreprise 2017', 'XkLPXXSNTqM', 13),
(189, '2017-09-26 09:30:45', 'Bases de la programmation n°7 - procédural : exercice6 (conditions imbriquées)', 'Prérequis : avoir vu les vidéos \"Bases de la programmation\" précédentes\r\nBut : conditions imbriquées\r\nLangage : C# sous Visual Studio version entreprise 2017', 'km6yGYNE7U4', 13),
(190, '2017-09-26 09:19:10', 'Bases de la programmation n°6 - procédural : exercice5 (condition)', 'Prérequis : avoir vu les vidéos \"Bases de la programmation\" précédentes\r\nBut : condition (alternative avec if)\r\nLangage : C# sous Visual Studio version entreprise 2017', 'L9ePj3vr8YM', 13),
(191, '2017-09-25 15:48:28', 'Bases de la programmation n°5 - procédural : exercice4 (calcul dans affichage)', 'Prérequis : avoir vu les vidéos \"Bases de la programmation\" précédentes\r\nBut : calcul dans un affichage\r\nLangage : C# sous Visual Studio version entreprise 2017', 'ZE0W7HZpStA', 13),
(192, '2017-09-25 15:30:46', 'Bases de la programmation n°4 - procédural : exercice3 (calculs)', 'Prérequis : avoir vu les vidéos \"Bases de la programmation\"\r\n précédentes\r\nBut : découverte du type float et des calculs\r\nLangage : C# sous Visual Studio version entreprise 2017', 'wWI4Y8RzJXA', 13),
(193, '2017-09-21 16:03:30', 'Bases de la programmation n°3 - procédural : exercice2 (saisie)', 'Prérequis : avoir vu les vidéos \"Bases de la programmation\" précédentes\r\nBut : saisie\r\nLangage : C# sous Visual Studio version entreprise 2017', 'URwYM1jToig', 13),
(194, '2017-09-21 14:41:21', 'Bases de la programmation n°2 - procédural : exercice1 (affichage)', 'Prérequis : aucun\r\nBut : initialisation et affichage avec concaténation\r\nLangage : C# sous Visual Studio version entreprise 2017', 'w9Vc63-bWhY', 13),
(196, '2017-09-20 17:35:03', 'Bases de la programmation n°1 - procédural : premier exemple', 'REMARQUE IMPORTANTE : désolée pour les écritures trop petites. C\'est plus lisible à partir de la prochaine vidéo.\r\n\r\nPrérequis : aucun\r\nBut : découvrir un tout premier exemple de programme en procédural (jeu du nombre caché) en C# sous Visual Studio (version entreprise 2017)', 'iXkPQpzTWO4', 13),
(197, '2017-05-02 10:17:11', 'Exercice triggers, sql et correctifs (correction sql sujet EDC cas aeroplan 2014 BTS SIO)', 'Prérequis : avoir vu le cours triggers (et mcd)\r\nBut : Présenter comment traiter les parties triggers, sql et correctifs d\'un sujet de BTS SIO', 'MY3iht6rexA', 14),
(198, '2017-05-01 15:53:25', 'Exercice triggers, sql et correctifs (correction sql sujet EDC cas supmaster 2014 BTS SIO)', 'Prérequis : avoir vu le cours triggers (et mcd)\r\nBut : Présenter comment traiter les parties triggers, sql et correctifs d\'un sujet de BTS SIO', '6H4Df5w39OM', 14),
(199, '2017-05-01 15:16:00', 'Exercice triggers, sql et correctifs (correction sql sujet EDC cas music 2015 BTS SIO)', 'Prérequis : avoir vu le cours triggers (et mcd)\r\nBut : Présenter comment traiter les parties triggers, sql et correctifs d\'un sujet de BTS SIO', '8Zso-kf0iFM', 14),
(200, '2017-05-01 09:54:44', 'Exercice triggers, sql et correctifs (correction sql sujet EDC cas demguiv 2016 BTS SIO)', 'Prérequis : avoir vu le cours triggers (et mcd)\r\nBut : Présenter comment traiter les parties triggers, sql et correctifs d\'un sujet de BTS SIO', 'fyHIL-Vxgjo', 14),
(201, '2017-04-29 17:28:57', 'Exercice Objet (correction objet sujet EDC cas gest-pc 2013 BTS SIO)', 'Prérequis : avoir vu le cours (playlist) objet\r\nBut : Présenter comment traiter la partie objet d\'un sujet de BTS SIO', 'JauXs6Noh4s', 15),
(202, '2017-04-29 16:54:57', 'Exercice Objet (correction objet sujet EDC cas equida 2013 BTS SIO)', 'Prérequis : avoir vu le cours (playlist) objet\r\nBut : Présenter comment traiter la partie objet d\'un sujet de BTS SIO', 'Pz5-IAoSRRU', 15),
(203, '2017-04-28 15:35:46', 'Exercice Objet (correction objet sujet EDC cas aeroplan 2014 BTS SIO)', 'Prérequis : avoir vu le cours (playlist) objet\r\nBut : Présenter comment traiter la partie objet d\'un sujet de BTS SIO', 'Rv61mr0_Wx4', 15),
(204, '2017-04-28 13:38:46', 'Exercice Objet (correction objet sujet EDC cas supmaster 2014 BTS SIO)', 'Prérequis : avoir vu le cours (playlist) objet\r\nBut : Présenter comment traiter la partie objet d\'un sujet de BTS SIO', 'Z4aXK-g_bA8', 15),
(205, '2017-04-28 10:20:56', 'Exercice Objet (correction objet sujet EDC cas music 2015 BTS SIO)', 'Prérequis : avoir vu le cours (playlist) objet\r\nBut : Présenter comment traiter la partie objet d\'un sujet de BTS SIO', 'NCwfDrWLpSM', 15),
(206, '2017-04-27 15:18:59', 'Exercice Objet (correction objet sujet EDC cas trisel 2015 BTS SIO)', 'Prérequis : avoir vu le cours (playlist) objet\r\nBut : Présenter comment traiter la partie objet d\'un sujet de BTS SIO', '8g2ih2jtYVQ', 15),
(207, '2017-04-27 11:43:53', 'Exercice Objet (correction objet sujet EDC cas ffbsq 2016 BTS SIO)', 'Prérequis : avoir vu le cours (playlist) objet\r\nBut : Présenter comment traiter la partie objet d\'un sujet de BTS SIO', 'uMrdWszfBLE', 15),
(208, '2017-04-27 09:20:47', 'Exercice Objet (correction objet sujet EDC cas demguiv 2016 BTS SIO)', 'Prérequis : avoir vu le cours (playlist) objet\r\nBut : Présenter comment traiter la partie objet d\'un sujet de BTS SIO', 'jgVEK4mu4DA', 15),
(209, '2017-04-26 12:50:53', 'Exercice MCD (correction MCD sujet EDC cas aeroplan 2014 BTS SIO)', 'Prérequis : avoir vu les cours (playlist) MCD et Merise/2\r\nBut : Présenter comment traiter la partie conception de données d\'un sujet de BTS SIO', 'RbqgBP1g6Qc', 16),
(210, '2017-04-26 11:45:11', 'Exercice MCD (correction MCD sujet EDC cas trisel 2015 BTS SIO)', 'Prérequis : avoir vu les cours (playlist) MCD et Merise/2\r\nBut : Présenter comment traiter la partie conception de données d\'un sujet de BTS SIO', 'QUL-nsgSiDg', 16),
(211, '2017-04-26 09:04:39', 'Exercice MCD (correction MCD sujet EDC cas demguiv 2016 BTS SIO)', 'Prérequis : avoir vu les cours (playlist) MCD et Merise/2\r\nBut : Présenter comment traiter la partie conception de données d\'un sujet de BTS SIO', 'boS-Tr_SyTQ', 16),
(212, '2017-04-25 16:13:37', 'Exercice MCD (correction MCD sujet EDC cas Gest-pc2013 BTS SIO)', 'Prérequis : avoir vu les cours (playlist) MCD et Merise/2\r\nBut : Présenter comment traiter la partie conception de données d\'un sujet de BTS SIO', 'P2kngg6zRZo', 16),
(213, '2017-04-25 13:44:42', 'Exercice MCD (correction MCD sujet EDC cas Equida 2013 BTS SIO)', 'Prérequis : avoir vu les cours (playlist) MCD et Merise/2\r\nBut : Présenter comment traiter la partie conception de données d\'un sujet de BTS SIO', 'Uzk3M7OLs5s', 16),
(214, '2017-04-25 09:52:03', 'Exercice MCD (correction MCD sujet EDC cas Submaster 2014 BTS SIO)', 'Prérequis : avoir vu les cours (playlist) MCD et Merise/2\r\nBut : Présenter comment traiter la partie conception de données d\'un sujet de BTS SIO', 'v1dKMDAH2r4', 16),
(215, '2017-04-25 07:45:42', 'Exercice MCD (correction MCD sujet EDC cas FFBSQ 2016 BTS SIO)', 'Prérequis : avoir vu les cours (playlist) MCD et Merise/2\r\nBut : Présenter comment traiter la partie conception de données d\'un sujet de BTS SIO', 'dUAw4XztT6w', 16),
(216, '2017-04-25 07:32:53', 'Exercice MCD (correction MCD sujet EDC cas Music 2015 BTS SIO)', 'Prérequis : avoir vu les cours (playlist) MCD et Merise/2\r\nBut : Présenter comment traiter la partie conception de données d\'un sujet de BTS SIO', 'nNkZU9DuhJI', 16),
(217, '2017-03-01 21:12:06', 'Cours Composant logiciel (11 à 14 / 14) : web service', 'Prérequis : aucun\r\nBut : présenter succinctement la notion de composant logiciel et en exemple le web service\r\nLe cours est constitué de 14 diapos, découpées en 2 vidéos (durée totale 26mn) :\r\n1-10 : notion de composant logiciel\r\n11-14 : web service\r\n\r\nLien vers le pdf du cours :\r\nhttp://bit.ly/EmdsComposants_logiciels', 'fNG2htDCjkM', 17),
(218, '2017-03-01 21:07:16', 'Cours Composant logiciel (1 à 10 / 14) : notion de composant logiciel', 'Prérequis : aucun\r\nBut : présenter succinctement la notion de composant logiciel et en exemple le web service\r\nLe cours est constitué de 14 diapos, découpées en 2 vidéos (durée totale 26mn) :\r\n1-10 : notion de composant logiciel\r\n11-14 : web service\r\n\r\nLien vers le pdf du cours :\r\nhttp://bit.ly/EmdsComposants_logiciels', 'qpQ1tVIQSck', 17),
(219, '2016-11-29 13:37:01', 'Cours MCD MLD MPD (10 à 19 / 19) : exercices', 'REMARQUE IMPORTANTE : si vous êtes à la recherche d\'un cours sur les MCD, c\'est plutôt ici :\r\nhttps://youtu.be/VFHVNA8xgK0\r\n\r\nPrérequis : connaissances en MCD\r\nBut : montrer comment passer du MCD au MLD puis MPD pour créer la base de données\r\nLe cours est constitué de 19 diapos, découpées en 2 vidéos (durée totale 28mn) :\r\n1-9 : introduction, entités, associations, héritage, contraintes\r\n10-19 : exercices\r\n\r\nLien vers le pdf du cours :\r\nhttp://bit.ly/EmdsMCD_MLD_MPD', 'lDowNcaRJ9I', 18),
(220, '2016-11-29 13:29:22', 'Cours MCD MLD MPD (1 à 9 / 19) : introduction, entités, associations, héritage, contraintes', 'REMARQUE IMPORTANTE : si vous êtes à la recherche d\'un cours sur les MCD, c\'est plutôt ici :\r\nhttps://youtu.be/VFHVNA8xgK0\r\n\r\nPrérequis : connaissances en MCD\r\nBut : montrer comment passer du MCD au MLD puis MPD pour créer la base de données\r\nLe cours est constitué de 19 diapos, découpées en 2 vidéos (durée totale 28mn) :\r\n1-9 : introduction, entités, associations, héritage, contraintes\r\n10-19 : exercices\r\n\r\nLien vers le pdf du cours :\r\nhttp://bit.ly/EmdsMCD_MLD_MPD', 'NZIi6b72NBk', 18),
(221, '2016-11-29 13:18:46', 'Cours MCD vs Diagramme de classes (12 à 20 / 20) : héritage, contraintes, exercices', 'Prérequis : connaissances en MCD et Diagramme de classes\r\nBut : montrer comment passer du MCD au Diagramme de classes\r\nLe cours est constitué de 20 diapos, découpées en 2 vidéos (durée totale 26mn) :\r\n1-11 : introduction, entités, associations\r\n12-20 : héritage, contraintes, exercices\r\n\r\nLien vers le pdf du cours :\r\nhttp://bit.ly/EmdsMCD_vs_UML', '3fZo3FYVGA4', 19),
(222, '2016-11-29 13:11:53', 'Cours MCD vs Diagramme de classes (1 à 11 / 20) : introduction, entités, associations', 'Prérequis : connaissances en MCD et Diagramme de classes\r\nBut : montrer comment passer du MCD au Diagramme de classes\r\nLe cours est constitué de 20 diapos, découpées en 2 vidéos (durée totale 26mn) :\r\n1-11 : introduction, entités, associations\r\n12-20 : héritage, contraintes, exercices\r\n\r\nLien vers le pdf du cours :\r\nhttp://bit.ly/EmdsMCD_vs_UML', 'LxpWExZwKQs', 19),
(223, '2016-11-02 15:46:24', 'Cours Transactions et verrous (14 à 17 / 17) : risques sur les verrous et cas d\'utilisation', 'Prérequis : connaissances basiques en SQL\r\nBut : présentation des transactions sql et de leur niveau d\'isolement, ainsi que des verrous explicites (programmation dans un SGBDR)\r\nLe cours est constitué de 17 diapos, découpées en 3 vidéos (durée totale 32mn) :\r\n1-6 : transactions\r\n7-13 : verrous et problèmes d\'accès\r\n14-17 : risques sur les verrous et cas d\'utilisation\r\n\r\nlien vers le pdf du cours :\r\nhttp://bit.ly/EmdsTransactions_verrous', '4yW0fTIQW6k', 20),
(224, '2016-11-02 15:42:03', 'Cours Transactions et verrous (7 à 13 / 17) : verrous et problèmes d\'accès', 'Prérequis : connaissances basiques en SQL\r\nBut : présentation des transactions sql et de leur niveau d\'isolement, ainsi que des verrous explicites (programmation dans un SGBDR)\r\nLe cours est constitué de 17 diapos, découpées en 3 vidéos (durée totale 32mn) :\r\n1-6 : transactions\r\n7-13 : verrous et problèmes d\'accès\r\n14-17 : risques sur les verrous et cas d\'utilisation\r\n\r\nlien vers le pdf du cours :\r\nhttp://bit.ly/EmdsTransactions_verrous', 'o7Yjg8Ct4Bs', 20),
(225, '2016-11-02 15:34:02', 'Cours Transactions et verrous (1 à 6 / 17) : transactions', 'Prérequis : connaissances basiques en SQL\r\nBut : présentation des transactions sql et de leur niveau d\'isolement, ainsi que des verrous explicites (programmation dans un SGBDR)\r\nLe cours est constitué de 17 diapos, découpées en 3 vidéos (durée totale 32mn) :\r\n1-6 : transactions\r\n7-13 : verrous et problèmes d\'accès\r\n14-17 : risques sur les verrous et cas d\'utilisation\r\n\r\nlien vers le pdf du cours :\r\nhttp://bit.ly/EmdsTransactions_verrous', 'A6tY7ZqiyVw', 20);
INSERT INTO formation (id, published_at, title, description, video_id, playlist_id) VALUES
(226, '2016-10-31 14:26:37', 'Cours Curseurs(5 à 8 / 8) : curseur historique et curseur dans le SGBDR', 'Prérequis : connaissances en programmation et en SQL\r\nBut : présentation des 3 catégories de curseurs (programmation dans un SGBDR)\r\nLe cours est constitué de 8 diapos, découpées en 2 vidéos (durée totale 25mn) :\r\n1-4 : introduction et curseur objet\r\n5-8 : curseur historique et curseur dans le SGBDR\r\n\r\nlien vers le pdf du cours :\r\nhttp://bit.ly/EmdsCurseurs', '4H2GMEwqCjA', 21),
(227, '2016-10-31 14:11:01', 'Cours Curseurs(1 à 4 / 8) : introduction et curseur objet', 'Prérequis : connaissances en programmation et en SQL\r\nBut : présentation des 3 catégories de curseurs (programmation dans un SGBDR)\r\nLe cours est constitué de 8 diapos, découpées en 2 vidéos (durée totale 25mn) :\r\n1-4 : introduction et curseur objet\r\n5-8 : curseur historique et curseur dans le SGBDR\r\n\r\nlien vers le pdf du cours :\r\nhttp://bit.ly/EmdsCurseurs', 'Y09HkNAQTKw', 21),
(228, '2016-10-29 13:23:14', 'Cours Triggers (26 à 32 / 32) : procédures et fonctions stockées', 'Prérequis : connaissances en Merise2 (playlists MCD et Merise2) et SQL\r\nBut : introduction aux triggers et procédures stockées (programmation dans un SGBDR)\r\nLe cours est constitué de 32 diapos, découpées en 6 vidéos (durée totale 57mn) :\r\n1-4 : introduction\r\n5-9 : exemple trigger sur exclusion\r\n10-14 : exemple trigger sur inclusion\r\n15-20 : syntaxe du langage\r\n21-25 : inclusion multiple et autres exemples de triggers\r\n26-32 : procédures et fonctions stockées\r\n\r\nlien vers le pdf du cours :\r\nhttp://bit.ly/EmdsTriggers', '9WgLpEa8U-0', 23),
(229, '2016-10-29 13:18:58', 'Cours Triggers (21 à 25 / 32) : inclusion multiple et autres exemples de triggers', 'Prérequis : connaissances en Merise2 (playlists MCD et Merise2) et SQL\r\nBut : introduction aux triggers et procédures stockées (programmation dans un SGBDR)\r\nLe cours est constitué de 32 diapos, découpées en 6 vidéos (durée totale 57mn) :\r\n1-4 : introduction\r\n5-9 : exemple trigger sur exclusion\r\n10-14 : exemple trigger sur inclusion\r\n15-20 : syntaxe du langage\r\n21-25 : inclusion multiple et autres exemples de triggers\r\n26-32 : procédures et fonctions stockées\r\n\r\nlien vers le pdf du cours :\r\nhttp://bit.ly/EmdsTriggers', 'UHV1x3MO6yQ', 23),
(230, '2016-10-29 13:12:59', 'Cours Triggers (15 à 20 / 32) : syntaxe du langage', 'Prérequis : connaissances en Merise2 (playlists MCD et Merise2) et SQL\r\nBut : introduction aux triggers et procédures stockées (programmation dans un SGBDR)\r\nLe cours est constitué de 32 diapos, découpées en 6 vidéos (durée totale 57mn) :\r\n1-4 : introduction\r\n5-9 : exemple trigger sur exclusion\r\n10-14 : exemple trigger sur inclusion\r\n15-20 : syntaxe du langage\r\n21-25 : inclusion multiple et autres exemples de triggers\r\n26-32 : procédures et fonctions stockées\r\n\r\nlien vers le pdf du cours :\r\nhttp://bit.ly/EmdsTriggers', 'FKmNkR--SAI', 23),
(231, '2016-10-29 13:09:47', 'Cours Triggers (10 à 14 / 32) : exemple trigger sur inclusion', 'Prérequis : connaissances en Merise2 (playlists MCD et Merise2) et SQL\r\nBut : introduction aux triggers et procédures stockées (programmation dans un SGBDR)\r\nLe cours est constitué de 32 diapos, découpées en 6 vidéos (durée totale 57mn) :\r\n1-4 : introduction\r\n5-9 : exemple trigger sur exclusion\r\n10-14 : exemple trigger sur inclusion\r\n15-20 : syntaxe du langage\r\n21-25 : inclusion multiple et autres exemples de triggers\r\n26-32 : procédures et fonctions stockées\r\n\r\nlien vers le pdf du cours :\r\nhttp://bit.ly/EmdsTriggers', '1y6rUzV-tVs', 23),
(232, '2016-10-29 13:06:10', 'Cours Triggers (5 à 9 / 32) : exemple trigger sur exclusion', 'Prérequis : connaissances en Merise2 (playlists MCD et Merise2) et SQL\r\nBut : introduction aux triggers et procédures stockées (programmation dans un SGBDR)\r\nLe cours est constitué de 32 diapos, découpées en 6 vidéos (durée totale 57mn) :\r\n1-4 : introduction\r\n5-9 : exemple trigger sur exclusion\r\n10-14 : exemple trigger sur inclusion\r\n15-20 : syntaxe du langage\r\n21-25 : inclusion multiple et autres exemples de triggers\r\n26-32 : procédures et fonctions stockées\r\n\r\nlien vers le pdf du cours :\r\nhttp://bit.ly/EmdsTriggers', 'im5gkHcQ5Qw', 23),
(233, '2016-10-29 13:00:46', 'Cours Triggers (1 à 4 / 32) : introduction', 'Prérequis : connaissances en Merise2 (playlists MCD et Merise2) et SQL\r\nBut : introduction aux triggers et procédures stockées (programmation dans un SGBDR)\r\nLe cours est constitué de 32 diapos, découpées en 6 vidéos (durée totale 57mn) :\r\n1-4 : introduction\r\n5-9 : exemple trigger sur exclusion\r\n10-14 : exemple trigger sur inclusion\r\n15-20 : syntaxe du langage\r\n21-25 : inclusion multiple et autres exemples de triggers\r\n26-32 : procédures et fonctions stockées\r\n\r\nlien vers le pdf du cours :\r\nhttp://bit.ly/EmdsTriggers\r\nlien vers le pptx du cours :\r\nhttp://bit.ly/EmdsTriggersSlides', 'uDAhSKJW2ic', 23),
(234, '2016-10-27 14:03:44', 'Cours Informatique embarquée', 'Présentation sur l\'informatique embarquée et plus précisément sur la programmation des smartphones et tablettes.\r\n\r\n\r\nERRATUM : à 2:58 je disais qu\'une application web ne peut pas accéder aux fonctionnalités spécifiques aux mobile. C\'est faux car il existe des fonctions JavaScript qui maintenant le permettent. \r\n\r\nLien vers le pdf du cours :\r\nhttp://bit.ly/EmdsInformatique_embarquee', 'qX3LPE9yB_I', 22),
(235, '2016-09-25 10:18:29', 'Cours UML (25 à 33 / 33) : exercices', 'But : notions globales du langage de modélisation UML\r\nLe cours est constitué de 33 diapos, découpées en 6 vidéos (durée totale 57mn) :\r\n1-7 : introduction et cas d\'utilisation\r\n8-11 : diagramme de classes\r\n12-15 : diagramme d\'états\r\n16-18 : diagramme de séquences\r\n19-24 : autres diagrammes\r\n25-33 : exercices\r\n\r\nlien vers le pdf du cours :\r\nhttp://bit.ly/EmdsUML', 'YlcRl07eHXk', 24),
(236, '2016-09-25 10:14:03', 'Cours UML (19 à 24 / 33) : autres diagrammes', 'But : notions globales du langage de modélisation UML\r\nLe cours est constitué de 33 diapos, découpées en 6 vidéos (durée totale 57mn) :\r\n1-7 : introduction et cas d\'utilisation\r\n8-11 : diagramme de classes\r\n12-15 : diagramme d\'états\r\n16-18 : diagramme de séquences\r\n19-24 : autres diagrammes\r\n25-33 : exercices\r\n\r\nlien vers le pdf du cours :\r\nhttp://bit.ly/EmdsUML', '8g31nOjPNEM', 24),
(237, '2016-09-25 10:10:06', 'Cours UML (16 à 18 / 33) : diagramme de séquences', 'But : notions globales du langage de modélisation UML\r\nLe cours est constitué de 33 diapos, découpées en 6 vidéos (durée totale 57mn) :\r\n1-7 : introduction et cas d\'utilisation\r\n8-11 : diagramme de classes\r\n12-15 : diagramme d\'états\r\n16-18 : diagramme de séquences\r\n19-24 : autres diagrammes\r\n25-33 : exercices\r\n\r\nlien vers le pdf du cours :\r\nhttp://bit.ly/EmdsUML', 'OL2Ks4jeUZ0', 24),
(238, '2016-09-25 10:07:00', 'Cours UML (12 à 15 / 33) : diagramme d\'états', 'But : notions globales du langage de modélisation UML\r\nLe cours est constitué de 33 diapos, découpées en 6 vidéos (durée totale 57mn) :\r\n1-7 : introduction et cas d\'utilisation\r\n8-11 : diagramme de classes\r\n12-15 : diagramme d\'états\r\n16-18 : diagramme de séquences\r\n19-24 : autres diagrammes\r\n25-33 : exercices\r\n\r\nlien vers le pdf du cours :\r\nhttp://bit.ly/EmdsUML', 'L1x4sLVR7CI', 24),
(239, '2016-09-25 10:03:58', 'Cours UML (8 à 11 / 33) : diagramme de classes', 'But : notions globales du langage de modélisation UML\r\nLe cours est constitué de 33 diapos, découpées en 6 vidéos (durée totale 57mn) :\r\n1-7 : introduction et cas d\'utilisation\r\n8-11 : diagramme de classes\r\n12-15 : diagramme d\'états\r\n16-18 : diagramme de séquences\r\n19-24 : autres diagrammes\r\n25-33 : exercices\r\n\r\nlien vers le pdf du cours :\r\nhttp://bit.ly/EmdsUML', '8PmTJIrlS5w', 24),
(240, '2016-09-25 09:59:04', 'Cours UML (1 à 7 / 33) : introduction et cas d\'utilisation', 'But : notions globales du langage de modélisation UML\r\nLe cours est constitué de 33 diapos, découpées en 6 vidéos (durée totale 57mn) :\r\n1-7 : introduction et cas d\'utilisation\r\n8-11 : diagramme de classes\r\n12-15 : diagramme d\'états\r\n16-18 : diagramme de séquences\r\n19-24 : autres diagrammes\r\n25-33 : exercices\r\n\r\nlien vers le pdf du cours :\r\nhttp://bit.ly/EmdsUML\r\n\r\n\r\nRemarque :\r\nDe nouvelles vidéos sur UML :\r\nDiagramme de cas d\'utilisation : https://youtu.be/LDTDlXMV1xY', 'dJd6azZr9Kg', 24);

-- --------------------------------------------------------

--
-- Structure de la table formation_categorie
--

DROP TABLE IF EXISTS formation_categorie;
CREATE TABLE formation_categorie (
  formation_id int(11) NOT NULL,
  categorie_id int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table formation_categorie
--

INSERT INTO formation_categorie (formation_id, categorie_id) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(7, 2),
(8, 1),
(9, 2),
(10, 2),
(12, 2),
(13, 2),
(14, 3),
(15, 3),
(16, 3),
(17, 3),
(18, 3),
(18, 7),
(19, 3),
(19, 7),
(20, 3),
(21, 3),
(21, 7),
(22, 3),
(22, 7),
(23, 3),
(24, 3),
(24, 7),
(25, 4),
(26, 4),
(27, 4),
(28, 4),
(29, 4),
(29, 7),
(30, 4),
(31, 4),
(31, 7),
(32, 4),
(33, 4),
(34, 4),
(35, 4),
(36, 4),
(37, 4),
(38, 4),
(39, 4),
(40, 4),
(41, 4),
(42, 4),
(43, 4),
(44, 6),
(45, 6),
(47, 6),
(47, 8),
(48, 7),
(51, 7),
(52, 8),
(54, 7),
(55, 8),
(57, 5),
(58, 5),
(59, 5),
(60, 5),
(61, 5),
(62, 5),
(63, 5),
(64, 5),
(65, 5),
(66, 5),
(67, 5),
(68, 5),
(69, 5),
(70, 5),
(71, 5),
(72, 5),
(73, 5),
(74, 5),
(75, 6),
(76, 5),
(76, 9),
(77, 7),
(77, 9),
(78, 5),
(78, 9),
(79, 6),
(80, 6),
(81, 6),
(82, 6),
(83, 6),
(84, 6),
(85, 6),
(86, 6),
(88, 6),
(89, 6),
(98, 6),
(99, 6),
(100, 6),
(101, 6),
(102, 6),
(103, 6),
(104, 6),
(104, 8),
(105, 6),
(105, 8),
(106, 6),
(106, 8),
(107, 6),
(107, 8),
(108, 6),
(108, 8),
(109, 6),
(110, 6),
(111, 1),
(111, 6),
(112, 6),
(113, 6),
(114, 6),
(115, 6),
(116, 1),
(116, 7),
(117, 1),
(117, 7),
(118, 1),
(118, 7),
(119, 1),
(119, 7),
(120, 1),
(120, 7),
(121, 1),
(121, 7),
(122, 3),
(122, 7),
(123, 3),
(123, 7),
(124, 3),
(124, 7),
(125, 3),
(125, 7),
(126, 3),
(126, 7),
(127, 3),
(127, 7),
(128, 3),
(128, 7),
(129, 3),
(130, 3),
(131, 3),
(132, 3),
(133, 3),
(134, 3),
(135, 3),
(136, 3),
(137, 3),
(138, 3),
(139, 3),
(140, 3),
(141, 3),
(142, 3),
(143, 3),
(144, 3),
(145, 3),
(146, 3),
(147, 3),
(148, 3),
(149, 3),
(150, 3),
(151, 3),
(152, 3),
(153, 3),
(154, 3),
(155, 3),
(156, 3),
(157, 3),
(158, 3),
(159, 3),
(160, 3),
(161, 3),
(162, 3),
(163, 3),
(164, 3),
(165, 3),
(166, 3),
(167, 3),
(168, 3),
(169, 3),
(170, 3),
(171, 3),
(172, 3),
(173, 3),
(174, 3),
(175, 3),
(176, 3),
(177, 3),
(178, 3),
(179, 3),
(180, 3),
(181, 3),
(182, 3),
(183, 3),
(184, 3),
(185, 3),
(186, 3),
(187, 3),
(188, 3),
(189, 3),
(190, 3),
(191, 3),
(192, 3),
(193, 3),
(194, 3),
(196, 3),
(197, 8),
(198, 8),
(199, 8),
(200, 8),
(201, 7),
(202, 7),
(203, 7),
(204, 7),
(205, 7),
(206, 7),
(207, 7),
(208, 7),
(209, 5),
(210, 5),
(211, 5),
(212, 5),
(213, 5),
(214, 5),
(215, 5),
(216, 5),
(217, 9),
(218, 9),
(219, 5),
(219, 9),
(220, 5),
(220, 9),
(221, 5),
(221, 9),
(222, 5),
(222, 9),
(223, 8),
(223, 9),
(224, 8),
(224, 9),
(225, 8),
(225, 9),
(226, 8),
(226, 9),
(227, 7),
(227, 8),
(227, 9),
(228, 8),
(228, 9),
(229, 8),
(229, 9),
(230, 8),
(230, 9),
(231, 8),
(231, 9),
(232, 8),
(232, 9),
(233, 8),
(233, 9),
(234, 9),
(235, 2),
(235, 9),
(236, 2),
(236, 9),
(237, 2),
(237, 9),
(238, 2),
(238, 9),
(239, 2),
(239, 9),
(240, 2),
(240, 9);

-- --------------------------------------------------------

--
-- Structure de la table messenger_messages
--

DROP TABLE IF EXISTS messenger_messages;
CREATE TABLE messenger_messages (
  id bigint(20) NOT NULL,
  body longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  headers longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  queue_name varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  created_at datetime NOT NULL,
  available_at datetime NOT NULL,
  delivered_at datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table playlist
--

DROP TABLE IF EXISTS playlist;
CREATE TABLE playlist (
  id int(11) NOT NULL,
  name varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  description longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table playlist
--

INSERT INTO playlist (id, `name`, description) VALUES
(1, 'Eclipse et Java', 'Utilisation de l\'IDE Eclipse et développement en Java.'),
(2, 'Visual Studio 2019 et C#', 'Plusieurs vidéos portant sur différents aspects de Visual Studio :\r\nProgrammation en C# (événementiel, objet, diverses astuces) et configuration (lien avec Github...).'),
(3, 'Programmation sous Python', 'Exercices progressifs pour apprendre à programmer sous Python.'),
(4, 'Sujet E5 SLAM 2019 métropole : cas RESTILOC', 'Correction commentée des 4 missions (1 vidéo par mission)'),
(5, 'Sujet E5 SLAM 2018 Nouméa : cas LOCALUX\r\n', 'Correction commentée des 3 missions (1 vidéo par mission)'),
(6, 'Sujet E5 SLAM 2018 métropole : cas WEBCAISSE', 'Correction commentée des 4 missions (1 vidéo par mission)'),
(7, 'MCD : exercices progressifs', 'Exercices progressifs pour apprendre à construire un MCD.\r\nPrérequis : avoir au préalable étudié le cours \"Modèle relationnel et MCD\"\r\nhttps://youtu.be/VFHVNA8xgK0'),
(8, 'Compléments Android (programmation mobile)', 'Chaque vidéo est indépendante et présente une notion spécifique.\r\nPrérequis : avoir des notions de base en programmation sous Android et en programmation objet (si vous ne connaissez pas du tout Android, commencez pas suivre la playlist \"TP Android\" qui part d\'un niveau 0 et montre toutes les notions essentielles).'),
(9, 'Sujet E5 SLAM 2017 Nouméa: cas DANE', 'Correction commentée des 4 missions (1 vidéo par mission).'),
(10, 'Sujet E5 SLAM 2017 métropole : cas AHM-23', 'Correction commentée des 4 missions (1 vidéo par mission).'),
(11, 'TP Android (programmation mobile)\r\n', 'Réaliser une application Android complète (8h12mn)\r\n(installation et configuration d\'Android Studio, construction d\'une application MVC, construction d\'une interface, sauvegarde par sérialisation, sauvegarde dans une base locale SQLite, sauvegarde dans une base distante MySQL, multi-interfaces, listes adapters interactives)\r\n\r\nprérequis : avoir des connaissances en Java et en programmation objet\r\nlangage : Java \r\nIDE : Android Studio'),
(12, 'POO TP Java', 'Ces vidéos vont permettre de créer étape par étape un TP en Java sous Eclipse, pour mettre en pratique les connaissances en programmation objet (normalement acquises avec la playlist du cours \"programmation objet\").\r\nCe TP va vous permettre de mieux comprendre assez rapidement plusieurs notions importantes en objet : vous allez travailler en MVC, utiliser une classe interface, des méthodes abstraites, des notions comme le polymorphisme, etc.'),
(13, 'Bases de la programmation (C#)', 'Exemples progressifs de programmes en procédural, événementiel et objet sous Visual Studio (version Entreprise 2017).\r\nPrérequis : aucun\r\n\r\n1ère partie : programmation procédurale en mode console (non graphique)\r\nn°1 à 30 : procédural, notions élémentaires (variables, saisie/affichage, affectations/calculs, alternatives (if/switch), itérations (while/do-while/for))\r\nn°31 à 42 : procédural, tableaux (1 et 2 dimensions, manipulations, tris, recherches)\r\nn°43 à 59 : procédural, modules et paramètres (procédures et fonctions)\r\n\r\n2ème partie : événementiel (en mode graphique)\r\nn°60 à 67 : événementiel (programmation graphique)\r\n\r\n3ème partie : initiation à l\'objet\r\nn°68 à 74 : notions de base en programmation objet sur des classes \"métier\"'),
(14, 'Exercices triggers, sql et correctifs (sujets EDC BTS SIO)', 'Prérequis : avoir vu le cours triggers (et mcd)\r\nBut : Présenter comment traiter les parties triggers, sql et correctifs d\'un sujet de BTS SIO'),
(15, 'Exercices objet (sujets EDC BTS SIO)', 'Prérequis : avoir vu le cours (playlist) objet\r\nBut : Présenter comment traiter la partie objet d\'un sujet de BTS SIO'),
(16, 'MCD exercices d\'examen (sujets EDC BTS SIO)', 'Prérequis : avoir vu les cours \"Modèle relationnel et MCD\"\r\nhttps://youtu.be/VFHVNA8xgK0\r\net le cours Merise/2\r\nhttps://youtu.be/smTFM4GCEgc\r\nBut : Présenter comment traiter la partie conception de données de sujets de BTS SIO'),
(17, 'Cours Composant logiciel', 'Cours Composant logiciel (26mn)\r\nPrérequis : aucun\r\nBut : présenter succinctement la notion de composant logiciel et en exemple le web service\r\nLe cours est constitué de 14 diapos, découpées en 2 vidéos (durée totale 26mn) :\r\n1-10 : notion de composant logiciel\r\n11-14 : web service\r\n\r\nLien vers le pdf du cours :\r\nhttp://bit.ly/EmdsComposants_logiciels\r\n'),
(18, 'Cours MCD MLD MPD', 'Cours MCD MLD MPD (28mn) :\r\nPrérequis : connaissances en MCD\r\nBut : montrer comment passer du MCD au MLD puis MPD pour créer la base de données\r\nLe cours est constitué de 19 diapos, découpées en 2 vidéos (durée totale 28mn) :\r\n1-9 : introduction, entités, associations, héritage, contraintes\r\n10-19 : exercices\r\n\r\nLien vers le pdf du cours :\r\nhttp://bit.ly/EmdsMCD_MLD_MPD\r\n'),
(19, 'Cours MCD vs Diagramme de classes', 'Cours MCD vs Diagramme de classes (26mn) :\r\nPrérequis : connaissances en MCD et Diagramme de classes\r\nBut : montrer comment passer du MCD au Diagramme de classes\r\nLe cours est constitué de 20 diapos, découpées en 2 vidéos (durée totale 26mn) :\r\n1-11 : introduction, entités, associations\r\n12-20 : héritage, contraintes, exercices\r\n\r\nLien vers le pdf du cours :\r\nhttp://bit.ly/EmdsMCD_vs_UML\r\n'),
(20, 'Cours Transactions et verrou', 'Cours Transactions et verrous (32mn)\r\n\r\nPrérequis : connaissances basiques en SQL\r\nBut : présentation des transactions sql et de leur niveau d\'isolement, ainsi que des verrous explicites (programmation dans un SGBDR)\r\nLe cours est constitué de 17 diapos, découpées en 3 vidéos (durée totale 32mn) :\r\n1-6 : transactions\r\n7-13 : verrous et problèmes d\'accès\r\n14-17 : risques sur les verrous et cas d\'utilisation\r\n\r\nlien vers le pdf du cours :\r\nhttp://bit.ly/EmdsTransactions_verrous\r\n'),
(21, 'Cours Curseurs', 'Cours Curseurs (25mn)\r\n\r\nPrérequis : connaissances en programmation et en SQL\r\nBut : présentation des 3 catégories de curseurs (programmation dans un SGBDR)\r\nLe cours est constitué de 8 diapos, découpées en 2 vidéos (durée totale 25mn) :\r\n1-4 : introduction et curseur objet\r\n5-8 : curseur historique et curseur dans le SGBDR\r\n\r\nlien vers le pdf du cours :\r\nhttp://bit.ly/EmdsCurseurs\r\n'),
(22, 'Cours Informatique embarquée', 'Présentation rapide de l\'informatique embarquée (14mn24).\r\n\r\nLien vers le pdf du cours :\r\nhttp://bit.ly/EmdsInformatique_embarquee'),
(23, 'Cours Triggers', 'Cours Triggers et procédures stockées (57mn)\r\n\r\nPrérequis : connaissances en Merise2 (playlists MCD et Merise2) et SQL\r\nBut : introduction aux triggers et procédures stockées (programmation dans un SGBDR)\r\nLe cours est constitué de 32 diapos, découpées en 6 vidéos (durée totale 57mn) :\r\n1-4 : introduction\r\n5-9 : exemple trigger sur exclusion\r\n10-14 : exemple trigger sur inclusion\r\n15-20 : syntaxe du langage\r\n21-25 : inclusion multiple et autres exemples de triggers\r\n26-32 : procédures et fonctions stockées\r\n\r\nlien vers le pdf du cours :\r\nhttp://bit.ly/EmdsTriggers'),
(24, 'Cours UML', 'Cours UML (57mn)\r\nPrérequis : connaissances en objet \r\nBut : notions globales du langage de modélisation UML\r\nLe cours est constitué de 33 diapos, découpées en 6 vidéos (durée totale 57mn) :\r\n1-7 : introduction et cas d\'utilisation\r\n8-11 : diagramme de classes\r\n12-15 : diagramme d\'états\r\n16-18 : diagramme de séquences\r\n19-24 : autres diagrammes\r\n25-33 : exercices\r\n\r\nlien vers le pdf du cours :\r\nhttp://bit.ly/EmdsUML'),
(25, 'Cours Merise/2', 'La playlist contient :\r\n- la nouvelle version du cours en une seule vidéo\r\n\r\nLien vers le pdf du cours :\r\nhttp://bit.ly/EmdsMerise2'),
(26, 'Cours Modèle relationnel et MCD', 'La playlist contient :\r\n- la nouvelle version du cours en une seule vidéo (1h08)\r\n\r\nLien vers le pdf du cours :\r\nhttp://bit.ly/EmdsMCD'),
(27, 'Cours de programmation objet', 'La playlist contient :\r\n- la nouvelle version du cours en une seule vidéo\r\n\r\nLien vers le pdf du cours :\r\nhttp://bit.ly/EmdsObjet');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table categorie
--
ALTER TABLE categorie
  ADD PRIMARY KEY (id);

--
-- Index pour la table doctrine_migration_versions
--
ALTER TABLE doctrine_migration_versions
  ADD PRIMARY KEY (version);

--
-- Index pour la table formation
--
ALTER TABLE formation
  ADD PRIMARY KEY (id),
  ADD KEY IDX_404021BF6BBD148 (playlist_id);

--
-- Index pour la table formation_categorie
--
ALTER TABLE formation_categorie
  ADD PRIMARY KEY (formation_id,categorie_id),
  ADD KEY IDX_830086E95200282E (formation_id),
  ADD KEY IDX_830086E9BCF5E72D (categorie_id);

--
-- Index pour la table messenger_messages
--
ALTER TABLE messenger_messages
  ADD PRIMARY KEY (id),
  ADD KEY IDX_75EA56E0FB7336F0 (queue_name),
  ADD KEY IDX_75EA56E0E3BD61CE (available_at),
  ADD KEY IDX_75EA56E016BA31DB (delivered_at);

--
-- Index pour la table playlist
--
ALTER TABLE playlist
  ADD PRIMARY KEY (id);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table categorie
--
ALTER TABLE categorie
  MODIFY id int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table formation
--
ALTER TABLE formation
  MODIFY id int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=241;

--
-- AUTO_INCREMENT pour la table messenger_messages
--
ALTER TABLE messenger_messages
  MODIFY id bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table playlist
--
ALTER TABLE playlist
  MODIFY id int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table formation
--
ALTER TABLE formation
  ADD CONSTRAINT FK_404021BF6BBD148 FOREIGN KEY (playlist_id) REFERENCES playlist (id);

--
-- Contraintes pour la table formation_categorie
--
ALTER TABLE formation_categorie
  ADD CONSTRAINT FK_830086E95200282E FOREIGN KEY (formation_id) REFERENCES formation (id) ON DELETE CASCADE,
  ADD CONSTRAINT FK_830086E9BCF5E72D FOREIGN KEY (categorie_id) REFERENCES categorie (id) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
