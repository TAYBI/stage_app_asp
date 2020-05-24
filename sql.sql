create database stage_app

CREATE TABLE filieres (_id int NOT NULL IDENTITY PRIMARY KEY,
						name VARCHAR(100), 
						num_module VARCHAR(MAX), 
						nom_module VARCHAR(MAX), 
						nbr_horaire VARCHAR(MAX), 
						details VARCHAR(MAX), 
						debouches VARCHAR(MAX), 
						conditions VARCHAR(MAX), 
						profile_de_formation VARCHAR(MAX)
						)

CREATE TABLE niveaux (_id int NOT NULL IDENTITY PRIMARY KEY,
					   name varchar(50) NOT NULL, 
					   secteurs varchar(1000) NOT NULL 
					   )

CREATE TABLE secteurs (_id int NOT NULL IDENTITY PRIMARY KEY, 
					   name varchar(50) NOT NULL, 
					   filieres varchar(1000) NOT NULL 
					   )


CREATE TABLE users (_id int NOT NULL IDENTITY PRIMARY KEY, 
					cin varchar(50) UNIQUE NOT NULL, 
					name varchar(50) NOT NULL, 
					last_name varchar(50) NOT NULL, 
					date_nais DATETIME, 
					niveau_scolaire varchar(50) NOT NULL, 
					niveau_formation varchar(50) NOT NULL, 
					secteure varchar(50) NOT NULL, 
					filiere varchar(50) NOT NULL 
					)

INSERT INTO niveaux VALUES
('Technicien Spécialisé','Action Sociale,Administration Gestion et Commerce,Construction Métallique,Fabrication Mécanique,Froid et Génie Thermique,Génie Electrique,NTIC,Réparation des Engins à Moteurs,Arts Graphiques,Aéronautique,Plasturgie'),
('Technicien','Administration Gestion et Commerce,Construction Métallique,Froid et Génie Thermique,Génie Electrique,Réparation des Engins à Moteurs,Transport et Logistique,Textile Habillement,Plasturgie'),
('Qualification','Froid et Génie Thermique,Réparation des Engins à Moteurs,Génie Electrique,Plasturgie'),
('Spécialisation','Bâtiment et Travaux Publics')

INSERT INTO secteurs VALUES
('Bâtiment et Travaux Publics','Menuiserie Aluminium'),
('Froid et Génie Thermique','Monteur Dépanneur Frigoriste,Technicien en Froid Commercial et Climatisation,Technicien Spécialisé en Génie Climatique'),
('Réparation des Engins à Moteurs','Carrosserie Peinture Automobile,Réparateur de Véhicules Automobiles,Technicien en Réparation des Engins à Moteur (Option: Automobile),Technicien en Fabrication Mécanique option Montage / Ajustage Outillage de presse,Technicien en Peinture Automobile,Technico-Commercial en Vente de Véhicules et Pièces de Rechange,Technicien spécialisé en Diagnostic et Electronique Embarquée,Technicien Spécialisé Bureau d’Etudes en Automobile,Technicien Spécialisé en Production et Qualité en Automobile,Usinage sur MOCN option METHODE FAO Outillage de presse,Usinage sur MOCN option USINAGE Outillage de presse'),
('Génie Electrique','Electricité d’Entretien Industriel,Electromécanique,Technicien en Electricité de Maintenance Industrielle,Automatisation et Instrumentation Industrielle,Electromécanique des Systèmes Automatisées,Maintenance des Machines Outils et Autres Machines de Production Automatisée,Mécatronique'),
('Plasturgie','Conducteur de Machines en Plasturgie,Monteur Régleur en Plasturgie,Maintenance des Machines et Outillage en Plasturgie'),
('Administration Gestion et Commerce','Agent Technique de Vente,Technicien Comptable d’Entreprises,Technicien Spécialisé en Finance et Comptabilité,Techniques de Secrétariat de Direction,Technicien Spécialisé en Commerce,Technicien Spécialisé en Gestion des Entreprises'),
('Construction Métallique','Technicien en Construction Métallique,Technicien Spécialisé Bureau d’Etude en Construction Métallique'),
('Transport et Logistique','Technicien Logistique'),
('Textile Habillement','Maintenance de Matériel de Confection'),
('Action Sociale','Educateur Spécialisé en Petite Enfance'),
('Fabrication Mécanique','Technicien Spécialisé de Méthodes en Fabrication Mécanique'),
('NTIC','Techniques de Développement Informatique,Techniques des Réseaux Informatiques'),
('Arts Graphiques','Infographie'),
('Aéronautique','TS Traitement de surface')


INSERT INTO filieres VALUES
        ('Techniques de Développement Informatique','M1,M2,M3,M4,M4,M5,M6,M7,M8,M9,M10,M11,M12,M13,M14,M15,M16,M17,M18',
                'Arabe,Communication écrite et orale,Anglais technique,Entrepreneurship,Métier et formation dans les NTIC,L’entreprise et son environnement, Gestion du temps et Production de documents,L’essentiel en technologies de l’information,Bureautique,Programmation structurée,Programmation événementielle et Orientée Objet,Analyse et conception orientée objet,Bases de données,Développement d’application client/serveur,Développement web côté client,Développement web côté serveur,Développement d’applications mobiles,Projet de fin de formation,Moyens de recherche d’emploi,Stage en entreprise',
                '',
                'Le "Technicien Spécialisé en Développement Informatique" est un professionnel en charge du développement et de la maintenance des applications informatiques. Il intervient, généralement pour le compte de Sociétés de Services et d’Ingénierie Informatiques, dans de nombreux domaines applicatifs (industrie, gestion, loisirs etc.). En amont du projet, le Technicien est réceptif aux attentes du client. Il étude avec précision un certain nombre de paramètres pour mener à bien sa mission il s’agit notamment du cahier des charges, des capacités de l’environnement technique, ainsi que des contraintes du système de production du client. En aval, Il participe à la mise en exploitation et au support technique de l’application',
                'Après quelques années d’expériences réussies, le Technicien Spécialisé en Développement informatique peut évoluer vers diverses fonctions, selon ses aptitudes et motivations :<br /><br /> - Expert technique : Concepteur, Réalisateur, Architecte logiciel, …<br /> - Expert métier : Analyste, Responsable d’application,…<br /> - Encadrement : Chef de projet.<br /><br />La création d’une entreprise de services informatiques dans le domaine du développement d’applications constitue pour certains une opportunité.',
                'Age limite : 23 ans<br />' +
                        'Niveau scolaire minimum requis : Diplôme du Baccalauréat Scientifique ou Technique<br />' +
                        'Les qualités et aptitudes que le candidat doit posséder :<br />' +
                        '<br />' +
                        ' - Sens de responsabilité, de l’organisation et de la discipline<br />' +
                        ' - Autonomie<br />' +
                        ' - Esprit d’analyse et de synthèse<br />' +
                        ' - Créativité<br />' +
                        ' - Curiosité pour les nouvelles technologies de l’information<br />' +
                        ' - Fortes capacités d’adaptation<br />' +
                        '<br />' +
                        'Mode de sélection des candidats :<br />' +
                        '<br />' +
                        ' - Dossier d’orientation à remplir<br />' +
                        ' - Entretiens après présélection.',
                'A l’issue de la formation, le lauréat sera en mesure d’exécuter les activités suivantes :<br />' +
                        'Analyse et conception:<br />' +
                        '<br />' +
                        ' - Analyser et Interpréter un cahier des charges<br />' +
                        ' - Rédiger des spécifications fonctionnelles et techniques<br />' +
                        ' - Réaliser des maquettes et des prototypes<br />' +
                        ' - Concevoir des bases de données<br />' +
                        ' - Concevoir une interface utilisateur dans un environnement Windows (GUI) ou Internet (IUI)<br />' +
                        ' - Au niveau de la réalisation Technique<br />' +
                        ' - Réaliser des composants logiciels à l’aide d’un langage de programmation orientée objet<br />' +
                        ' - Assembler et Intégrer des composants logiciels<br />' +
                        ' - Réaliser des tests unitaires et tests d’intégration<br />' +
                        ' - Participer à la mise en exploitation et au support technique de l’application'),
        ('Menuiserie Aluminium','','','','L’Ouvrier Spécialisé en Menuiserie Aluminium est un professionnel capable de réaliser l’assemblage en atelier des cadres en aluminium et de les mettre en place dans les chantiers de construction.',
                'L’Ouvrier Spécialisé en Menuiserie Aluminium peut être employé dans une PME ou dans une grande entreprise. Il peut également créer sa propre entreprise.',
                        'Age limite : de 15 à 30 ans<br />' +
                        '<br />' +
                        'Niveau scolaire minimum requis : 6ème année de l’Enseignement Fondamental et plus<br />' +
                        'Les qualités et aptitudes que le candidat doit posséder :<br />' +
                        '<br />' +
                        ' -  Bonne dextérité<br />' +
                        ' -  Méticuleux<br />' +
                        ' -  Esprit créatif<br />' +
                        '<br />' +
                        'Contre indications :<br />' +
                        '<br />' +
                        ' - Troubles moteurs des membres inférieurs ou supérieurs<br />' +
                        ' - Vertige<br />' +
                        '<br />' +
                        ' - Mode de sélection des candidats :<br />' +
                        ' - Dossier d’orientation à remplir<br />' +
                        ' - Tests d’admission',
                        'Le programme de formation est étalé sur 1150 heures dont un stage d’application de 4 mois en entreprise.<br />' +
                        '<br />' +
                        'Modules :<br />' +
                        '<br />' +
                        ' - Métier et formation en menuiserie aluminium<br />' +
                        ' - Aluminium dans le bâtiment<br />' +
                        ' - Les produits verriers<br />' +
                        ' - Devis descriptif, quantitatif, et estimatif.<br />' +
                        ' - Etudes d’une gamme y compris occultation et fermeture<br />' +
                        ' - Fabrication et usinage<br />' +
                        ' - Pose de la menuiserie aluminium sur chantier.<br />' +
                        ' - Plan d’hygiène et de sécurité<br />' +
                        ' - Stage en entreprise'),
        ('Monteur Dépanneur Frigoriste','xx','x','xx','Le Monteur Dépanneur Frigoriste est un ouvrier chargé d’assurer l’entretien, le dépannage et le montage des installations frigorifiques de petite et moyenne puissance. Il exerce son métier au sein des entreprises d’installation et de maintenance en froid commercial (souvent de petites entreprises à structure légère).',
                'Le lauréat peut être employé dans les PME ou dans une grande entreprise dans les secteurs industriels les plus divers. Il peut être affecté dans les services techniques du secteur public. Il peut également créer sa propre entreprise.',
                'Age limite : 30 ans<br />' +
                        '<br />' +
                        'Niveau scolaire minimum requis :<br />' +
                        '<br />' +
                        ' - 3ème année de l’Enseignement collégial <br />' +
                        '<br />' +
                        'Ou Diplôme du niveau Spécialisation dans les secteurs Industriel et du BTP<br />' +
                        'Les qualités et aptitudes que le candidat doit posséder :<br /><br />' +
                        ' - Bonne dextérité<br />' +
                        ' - Méticuleux<br />' +
                        ' - Esprit créatif.<br />' +
                        '<br />' +
                        'Mode de sélection des candidats :<br />' +
                        '<br /> - Dossier d’orientation à remplir<br />' +
                        ' - Tests d’admission',
                'A l’issue de la formation, le lauréat sera en mesure d’exécuter les activités suivantes :<br />' +
                        '<br />' +
                        ' - Réaliser le montage d’installations frigorifiques simples, utilisées principalement pour la conservation des denrées alimentaires (chambres froides<br />' +
                        'vitrines réfrigérées comptoirs ou armoires frigorifiques…)<br />' +
                        ' - Mettre au point des chambres froides de petites ou moyennes puissances<br />' +
                        ' - Mettre en service, maintenir, entretenir et dépanner des équipements de froid et de climatisation grand public<br />' +
                        ' - Dépanner et apporter les modifications nécessaires à leur bon fonctionnement<br />' +
                        ' - Procéder aux opérations d’entretien courantes<br />' +
                        ' - Maintenir et remplacer les éléments défectueux si nécessaire'),
        ('Carrosserie Peinture Automobile','xx','xx','xx',
                'Le Carrossier Peintre est un professionnel chargé de remettre en état les carrosseries et peintures qui composent le véhicule automobile. A l’issue de sa formation, l’appelant sera capable de réaliser des réparations simples, des opérations de remise en état par remplacement d’éléments ou par réparation, de faire les essais nécessaires avant et après les travaux et de réaliser l’autocontrôle de la qualité des travaux entrepris.',
                'Le lauréat peut prétendre au poste de responsable du service Carrosserie Peinture d’un parc automobile dans une grande entreprise ou un grand garage. Il peut également lancer sa propre entreprise dans le domaine de la Carrosserie Peinture.',
                'Age limite : 30 ans<br />' +
                        '<br />' +
                        'Niveau scolaire minimum requis : 3ème année de l’Enseignement collégial<br />' +
                        'Les qualités et aptitudes que le candidat doit posséder :<br />' +
                        '<br />' +
                        ' - Sens de l’organisation<br />' +
                        ' - Sociabilité<br />' +
                        ' - Sens de responsabilité<br />' +
                        ' - Conscience professionnelle élevée<br />' +
                        ' - Bonne capacité d’adaptation<br />' +
                        '<br />' +
                        '<br />Contre-indications à l’exercice du métier:<br />' +
                        ' - Allergie au bruit<br />' +
                        ' - Allergie aux odeurs d’hydrocarbure<br />' +
                        ' - Maladies pulmonaires<br />' +
                        ' - Allergie à la peinture et ses produits<br />' +
                        ' - Non distinction des couleurs.<br />' +
                        '<br />' +
                        ' - Mode de sélection des candidats :<br />' +
                        ' - Dossier d’orientation à remplir<br />' +
                        ' - Tests d’admission',
                'A l’issue de la formation, le lauréat sera en mesure d’exécuter les activités suivantes :<br /><br />' +
                        ' - Appliquer les règles d’hygiène et de sécurité de travail<br />' +
                        ' - Catégoriser les différents types de véhicules automobiles et leurs composants<br />' +
                        ' - Interpréter des dessins d’ensemble des plans mécaniques et plans de soubassement<br />' +
                        ' - Effectuer des travaux de soudage<br />' +
                        ' - Déposer, reposer, régler des éléments amovibles<br />' +
                        ' - Repérer, remplacer des vitrages<br />' +
                        ' - Effectuer des travaux de réparation des matériaux composites<br />' +
                        ' - Appliquer les différents produits en carrosserie automobile<br />' +
                        ' - Appliquer les différents produits utilisés en peinture automobile<br />' +
                        ' - Monter et corriger tous types de teintes<br />' +
                        ' - Appliquer une laque<br />' +
                        ' - Effectuer les travaux de bases en carrosserie automobile'),
        ('Réparateur de Véhicules Automobiles','','','',
                'Le "Réparateur de Véhicules Automobiles" est un spécialiste de la réparation automobile qui possède le savoir, les habilités et les qualifications nécessaires pour exécuter les réparations liées aux systèmes. Celles-ci concernent la propulsion, le freinage, la suspension, le guidage, la sécurité et le confort des passagers.',
                'Le lauréat peut prétendre au poste de responsable de maintenance d’un parc automobile dans une grande entreprise ou un grand garage.Il peut également ouvrir son propre garage moyennant une bonne expérience.',
                'Age limite : 30 ans<br />' +
                        '<br />' +
                        'Niveau scolaire minimum requis : 3ème année de l’enseignement collégial ou plus<br />' +
                        'Les qualités et aptitudes que le candidat doit posséder :<br />' +
                        '<br />' +
                        ' - Sens de l’organisation.<br />' +
                        ' - Rigueur de l’intellectuel<br />' +
                        ' - Autonomie et capacité d’initiative<br />' +
                        ' - Sociabilité<br />' +
                        ' - Sens de responsabilité<br />' +
                        ' - Conscience professionnelle<br />' +
                        ' - Bonne capacité d’adaptation.<br />' +
                        '<br />' +
                        'Contre-indications à l’exercice du métier:<br />' +
                        ' - Les affections graves du squelette<br />' +
                        ' - Les déficiences de la vision et de l’ouïe (après correction)<br />' +
                        ' - L’épilepsie, le vertige, les pertes de mémoires<br />' +
                        ' - Allergie aux bruits mécaniques<br />' +
                        ' - Allergie aux odeurs d’hydrocarbures.<br />' +
                        ' <br />' +
                        'Mode de sélection des candidats :<br />' +
                        ' - Dossier d’orientation à remplir<br />' +
                        ' - Tests d’admission',
                'A l’issue de la formation, le lauréat sera en mesure d’exécuter les activités suivantes :<br />' +
                        ' - Appliquer les règles d’hygiène et de sécurité au travail<br />' +
                        ' - Effectuer les travaux de base en fabrication mécanique<br />' +
                        ' - Interpréter des dessins d’ensembles et plans mécaniques<br />' +
                        ' - Etudier les moteurs thermiques<br />' +
                        ' - Repérer le système de refroidissement et de graissage<br />' +
                        ' - Repérer des moteurs à essence et diesel<br />' +
                        ' - Analyser le fonctionnement des différents circuits électriques<br />' +
                        ' - Effectuer la maintenance préventive<br />' +
                        ' - Exploiter les schémas électriques<br />' +
                        ' - Effectuer la maintenance des systèmes électriques<br />' +
                        ' - Utiliser les règles de mécanique appliquée<br />' +
                        ' - Repérer les éléments de la transmission<br />' +
                        ' - Repérer le système de suspension<br />' +
                        ' - Repérer le système de direction<br />' +
                        ' - Repérer le système de freinage'),
        ('Electricité d’Entretien Industriel','','','',
                'L’Ouvrier Qualifié en Electricité d’Entretien Industriel est un professionnel polyvalent capable d’assurer l’installation, le raccordement, la réparation et le dépannage des équipements électriques des entreprises industrielles.',
                'Après quelques années d’expérience, de formation continue et après avoir démontré ses compétences professionnelles, l’Ouvrier Qualifié en Electricité d’Entretien Industriel se verra confié des responsabilités plus importantes au niveau de l’autonomie et de la gestion des difficultés techniques et des interventions, ainsi que de la gestion du parc de matériel de l’entreprise. Il pourra exercer la fonction de responsable d’achat pièces de rechange. Il peut également créer une entreprise de maintenance des équipements électriques.',
                'Age limite : 30 ans<br />' +
                        '<br />' +
                        'Niveau scolaire minimum requis : 3ème année de l’Enseignement Collégial Ou diplôme du niveau de spécialisation dans le secteur Industriel .<br />' +
                        'Les qualités et aptitudes que le candidat doit posséder :<br />' +
                        '<br />' +
                        ' - Bonne dextérité<br />' +
                        ' - Méticuleux<br />' +
                        ' - Esprit créatif<br />' +
                        '<br />' +
                        'Mode de sélection des candidats :<br />' +
                        ' - Dossier d’orientation à remplir<br />' +
                        ' - Tests d’admission',
                'L’Ouvrier Qualifié en Electricité d’Entretien Industriel doit être capable de :<br />' +
                        ' - Installer des canalisations électriques<br />' +
                        ' - Installer des conducteurs, câbles, boîtes et accessoires<br />' +
                        ' - Installer, raccorder et entretenir des luminaires<br />' +
                        ' - Dépanner  - des machines électriques tournantes<br />' +
                        ' - Raccorder et dépanner des commandes manuelles de moteurs à c c et à ca <br />' +
                        ' - Installer et raccorder des transformateurs<br />' +
                        ' - Raccorder et entretenir un système d’urgence<br />' +
                        ' - Installer l’appareillage de chauffage électrique<br />' +
                        ' - Installer des systèmes d’alarme et de signalisation<br />' +
                        ' - Installer du matériel téléphonique<br />' +
                        ' - Repérer des installations et de l’équipement électrique<br />' +
                        ' - dRaccorder et dépanner des commandes automatiques de moteurs à c c et à ca'),
        ('Electromécanique','','','',
                '<br />' +
                        '<br />' +
                        '"L’Ouvrier Qualifié en Electromécanique" est un professionnel qui est amené à intervenir sur des systèmes mécaniques, hydrauliques, électriques et électroniques.<br />',
                'Après quelques années d’expérience en entreprise après et avoir démontré ses compétences professionnelles, l’Ouvrier Qualifié en Electromécanique se verra confié des responsabilités plus importantes au niveau de la gestion des difficultés techniques des interventions notamment la maintenance des installations électromécanique',
                'Age limite : 30 ans<br />' +
                        '<br />' +
                        'Niveau scolaire minimum requis :<br />' +
                        ' - 3ème année de l’Enseignement Collégial<br />' +
                        'Ou<br />' +
                        ' - diplôme du niveau de spécialisation dans le secteur Industriel<br />' +
                        '<br />' +
                        'Les qualités et aptitudes que le candidat doit posséder :<br />' +
                        ' - Bonne dextérité<br />' +
                        ' - Méticuleux<br />' +
                        ' - Esprit créatif<br />' +
                        '<br />' +
                        'Mode de sélection des candidats :<br />' +
                        ' - Dossier d’orientation à remplir<br />' +
                        ' - Tests d’admission',
                'A l’issue de la formation, l’Ouvrier Qualifié en Electromécanique doit être capable de :<br />' +
                        ' - Monter et raccorder des tuyaux, des tubes et des boyaux<br />' +
                        ' - Monter des circuits pneumatiques<br />' +
                        ' - Monter et ajuster des arbres, des roulements et coussinets<br />' +
                        ' - Dépanner des moteurs et des génératrices à courant continu et leurs dispositifs de commande<br />' +
                        ' - Entretenir et Repérer des accessoires de transmission et de transformation du mouvement<br />' +
                        ' - Dépanner des moteurs et des génératrices à courant alternatif et leurs dispositifs de commande<br />' +
                        ' - Entretenir et Repérer des dispositifs de transmission d’énergie mécanique<br />' +
                        ' - Dépanner des compresseurs et des moteurs pneumatiques<br />' +
                        ' - Monter des circuits hydrauliques<br />' +
                        ' - Dépanner des pompes et des moteurs hydrauliques<br />' +
                        ' - Entretenir et dépanner un système électromécanique'),
        ('Conducteur de Machines en Plasturgie','','','',
                'Le rôle principal du "Conducteur de Machines en Plasturgie" est d’optimiser la production de ses machines dans l’atelier ou dans l’îlot de production. A cet effet, il gère de nombreux aspects relatifs à ces machines, à savoir:<br />' +
                        'le réglage, l’autocontrôle des pièces, l’emballage et le conditionnement des produits, ainsi que la maintenance de 1er niveau.',
                'Après quelques années d’expérience et avoir démontré ses compétences professionnelles, le Conducteur de Machines en Plasturgie verra sa situation évoluer vers le poste plus valorisant de Régleur de Machines en Plasturgie.',
                'Age limite : 30 ans<br />' +
                        '<br />' +
                        'Niveau scolaire minimum requis : 3ème année de l’Enseignement Collégial ou plus.Oudiplôme du niveau de spécialisation dans le secteur Industriel.<br />' +
                        'Les qualités et aptitudes que le candidat doit posséder :<br />' +
                        '<br />' +
                        ' - Sens de responsabilité, de l’organisation et de la discipline<br />' +
                        ' - Esprit d’ Autonomie, d’analyse, de créativité et d’initiative<br />' +
                        ' - Aisance en relations humaines<br />' +
                        ' - Maîtrise de soi, ambition pour la promotion professionnelle.<br />' +
                        '<br />' +
                        'Contre-indications à l’exercice du métier: handicap physique (problème de colonne vertébrale), problème de vue ou de distinction de couleur, maladie du cœur, maladies nerveuses, asthme.<br />' +
                        'Mode de sélection des candidats :<br />' +
                        ' - Dossier d’orientation à remplir<br />' +
                        ' - Tests d’admission',
                'A l’issue de la formation, le lauréat sera en mesure d’exécuter les activités suivantes :<br />' +
                        '<br />' +
                        ' - Conduire et régler sa machine<br />' +
                        ' - Assurer l’autocontrôle en cours de production<br />' +
                        ' - Emballer les pièces produites<br />' +
                        ' - Assurer la maintenance de premier niveau de sa machine<br />' +
                        ' - Remplir les feuilles de suivi de la qualité et de production<br />' +
                        ' - Assister le régleur dans le montage et le démontage de l’outillage'),
        ('Agent Technique de Vente','','','',
                'L’Agent Technique de Vente intervient en Magasin ou dans les Grandes Surfaces. Il participe à l’accroissement de l’activité de vente, tout en lui apportant une dimension qualitative. La relation client étant l’une des pièces maitresses de l’entreprise, il est important d’assurer le suivi de la clientèle en vue de la fidéliser.',
                'Suite à quelques années d’expérience, et après avoir démontré ses compétences professionnelles, l’Agent Technique de Vente se verra confié le poste de chef de secteur de vente, chef de produit ou responsable d’une équipe de vendeurs. Il peut également évoluer vers les métiers de la logistique.',
                'Age limite : 30 ans<br />' +
                        '<br />' +
                        'Niveau scolaire minimum requis :<br />' +
                        '<br />' +
                        ' - 2ème année du Baccalauréat toutes séries<br />' +
                        ' - ou diplôme : Employé (e) d’étages niveau qualification <br />' +
                        '<br />' +
                        'Mode de sélection des candidats :<br />' +
                        ' - Dossier d’orientation à remplir<br />' +
                        ' - Tests d’admission<br />' +
                        ' - Test de français pour Titulaires du diplôme d’employé(e) d’étages',
                'A l’issue de la formation, le lauréat sera en mesure d’exécuter les activités suivantes :<br />' +
                        'Utiliser les techniques de gestion Utiliser les outils de la bureautique Maîtriser les techniques de vente Appliquer les techniques d’organisation concernant le magasin Gérer les stocks et les approvisionnements du Magasin Maîtriser les procédures d’enregistrement journalier des ventes Maîtriser l’arithmétique commerciale Rédiger une correspondance commerciale arabe et française  Appliquer les principes de base en marketing et plus particulièrement en Marchandisage'),
        ('Technicien Comptable d’Entreprises','','','',
                'Le Technicien Comptable d’Entreprise prend en charge de nombreuses tâches qui incombent au service de la comptabilité comme le traitement et l’analyse comptable, et participe à la mise en place du système d’information comptable de l’entreprise.',
                'Suite à quelques années d’expérience, et après avoir démontré ses compétences professionnelles, le Technicien Comptable d’Entreprise peut prendre la responsabilité de la comptabilité au niveau d’une PME ou seconder le chef comptable dans les grandes structures. Il peut également exercer pour son propre compte en créant un bureau fiduciaire et obtenir le titre de comptable agréé.',
                'Age limite: 30 ans<br />' +
                        '<br />' +
                        'Niveau scolaire minimum requis : 2ème année du Baccalauréat toutes séries<br />' +
                        'Mode de sélection des candidats :<br />' +
                        '<br />' +
                        ' - Dossier d’orientation à remplir<br />' +
                        ' - Tests d’admission',
                'A l’issue de la formation, le lauréat sera en mesure d’exécuter les activités suivantes :<br />' +
                        'Enregistrer les opérations en comptabilité et établir les situations périodiques Réaliser les opérations de fin d’exercice et établir les documents de synthèse Etablir les déclarations fiscales, courantes et annuelles Préparer et établir les paies et déclarations sociales Assurer la gestion de la trésorerie et établir les budgets Présenter et commenter les situations comptables et documents d’aide à la gestion Assurer le suivi administratif des opérations commerciales, établir les devis, factures Participer à la gestion des stocks Assurer le suivi administratif et financier du personnel Contribuer au suivi juridique des obligations de la société Participer aux choix de logiciels et d’équipements informatiques Tenir les tableaux de bord'),
        ('Technicien en Construction Métallique','','','',
                'La fonction principale du Technicien en Construction Métallique est de Préparer la fabrication, et de réaliser des constructions métalliques en totale autonomie sur les équipements traditionnels et à commandes numériques.',
                '<br />' +
                        'Le Technicien en Construction Métallique peut, selon les aptitudes qu’il démontre, progresser vers un poste à responsabilité comme: chef de groupe, contremaître, chef d’équipe.',
                'Age limite : 25 ans<br />' +
                        'Niveau scolaire minimum requis : 2ème année du baccalauréat (ex – 3ème Année Secondaire) scientifique et technique<br />' +
                        'Les qualités et aptitudes que le candidat doit posséder :<br />' +
                        '<br />' +
                        ' - Sens de responsabilité, de l’organisation et de la discipline<br />' +
                        ' - Esprit d’ Autonomie, d’analyse, de créativité et d’initiatives<br />' +
                        ' - Aisance en relations humaines<br />' +
                        ' - Maîtrise de soi, Passion pour la technologie et ambition pour la promotion professionnelle<br />' +
                        '<br />' +
                        'Mode de sélection des candidats :<br />' +
                        ' - Dossier d’orientation à remplir<br />' +
                        ' - Tests d’admission',
                'A l’issue de la formation, le lauréat sera en mesure d’exécuter les tâches suivantes :<br />' +
                        ' - Préparer la fabrication de la construction métallique<br />' +
                        ' - Réaliser la fabrication de la construction métallique<br />' +
                        ' - Maintenir en bon état de fonctionnement les équipements de l’atelier de fabrication'),
        ('Technicien en Froid Commercial et Climatisation','','','',
                'Le Technicien en Froid Commercial et Climatisation est un professionnel qui travaille principalement dans les entreprises d’Installation et de Maintenance en Froid Commercial, en chantier chez les clients (commerces alimentaires de détail et petites industries agroalimentaires). Il agit également dans les services d’entretien des collectivités et notamment dans les hôtels.',
                'Le Technicien en Froid Commercial et Climatisation peut être employé dans les entreprises prestataires de services, dans les collectivités ou dans les services de maintenance en froid commercial et climatisation.La création d’une entreprise est tout à fait possible pour les éléments dynamiques.<br />',
                'Age limite : 30 ans<br />' +
                        '<br />' +
                        'Niveau scolaire minimum requis : 2ème année du baccalauréat scientifique ou technique Ou Diplôme du niveau Qualification dans les secteurs Industriel et du BTP<br />' +
                        'Les qualités et aptitudes que le candidat doit posséder :<br />' +
                        '<br />' +
                        ' - Sens de responsabilité, de l’organisation et de la discipline<br />' +
                        ' - Esprit d’ Autonomie, d’analyse, de créativité et d’initiative<br />' +
                        ' - Aisance en relations humaines<br />' +
                        ' - Maîtrise de soi, Passion pour la technologie et ambition pour la promotion professionnelle<br />' +
                        '<br />' +
                        'Mode de sélection des candidats :<br />' +
                        ' - Dossier d’orientation à remplir<br />' +
                        ' - Tests d’admission',
                'A l’issue de la formation, le lauréat sera en mesure d’exécuter les activités suivantes :<br />' +
                        ' - Monter les chambres froides préfabriquées ou mettre en place des armoires et des vitrines réfrigérées<br />' +
                        ' - Monter des installations frigorifiques simples ou complexes, monter des tuyauteries, souder, braser, monter des appareils, essayer et contrôler le fonctionnement des installations<br />' +
                        ' - Dépanner les installations, rechercher les anomalies de fonctionnement, diagnostiquer la panne, relever et contrôler les caractéristiques de fonctionnement'),
        ('Technicien en Electricité de Maintenance Industrielle','','','',
                'Le technicien en électricité de maintenance industrielle est un professionnel qui est amené à assurer l’installation, la maintenance et l’entretien des équipements électriques industriels.',
                'Après quelques années d’expérience, de formation continue et après avoir démontré ses compétences et sa conscience professionnelle, ce technicien se verra confier des responsabilités plus grandes en termes d’autonomie et de gestion des difficultés techniques. Il peut facilement créer sa propre entreprise, sur des activités bien ciblées: maintenance des transformateurs et installations d’équipements électriques par exemple.',
                'Age maximum : 30 ans<br />' +
                        '<br />' +
                        'Niveau Scolaire minimum : 2ème année du baccalauréat scientifique ou technique<br />' +
                        'Ou Diplôme du niveau Qualification dans le secteur Industriel<br />' +
                        'Aptitudes et qualités exigées pour l’exercice du métier :<br />' +
                        '<br />' +
                        ' - Sens des responsabilités, de l’organisation et de la discipline<br />' +
                        ' - Esprit d’autonomie, d’analyse, de créativité et d’initiative<br />' +
                        ' - Bonne aptitude aux relations humaines<br />' +
                        ' - Maîtrise de soi, motivation pour la technologie et ambition pour la promotion professionnelle<br />' +
                        '<br />' +
                        'Mode de sélection des candidats à la formation :<br />' +
                        ' - Remplissage du dossier d’orientation<br />' +
                        ' - Réussite aux tests d’admission ',
                'A l’issue de la formation, le stagiaire sera en mesure d’exécuter les opérations et les activités suivantes:<br />' +
                        '<br />' +
                        ' - Installer des câbles et des canalisations<br />' +
                        ' - Installer des sorties d’éclairage et des prises de courant utilitaires<br />' +
                        ' - Installer, raccorder et entretenir des luminaires<br />' +
                        ' - Installer et entretenir des commandes à très basse tension<br />' +
                        ' - Installer, raccorder et entretenir des transformateurs<br />' +
                        ' - Installer, entretenir des systèmes d’alarme et de signalisation<br />' +
                        ' - Utiliser l’automate programmable -Installer et dépanner des moteurs et de génératrices à CC<br />' +
                        ' - Installer et dépanner des moteurs et de génératrices à CA<br />' +
                        ' - Installer, réparer des commandes électroniques des moteurs<br />' +
                        ' - Installer un système électrique commandé par API'),
        ('Technicien en Réparation des Engins à Moteur (Option: Automobile)',
                '','',''
                ,'Le "Technicien en Réparation des Engins à Moteur, Option Automobile" est un professionnel est chargé de l’accueil du client, la réception des véhicules, et de gèrer les aspects organisationnels de l’atelier Il remet en état les systèmes mécaniques, électriques et électroniques composants le véhicule automobile.Le Technicien en Répération des Engins à Moteur est en mesure de réaliser des diagnostics, de réaliser les opérations de remise en conformité (remplacement ou réparation), de faire les essais nécessaires avant et après les travaux, et de réaliser l’autocontrôle de la qualité des travaux entrepris.',
                'Le lauréat peut prétendre au poste de responsable de maintenance d’un parc automobile dans une grande entreprise ou un grand garage. Il peut également ouvrir son propre garage moyennant une certaine expérience.',
                'Age limite : 30 ans<br />' +
                        '<br />' +
                        'Niveau scolaire minimum requis : 2ème année du Baccalauréat Scientifique ou Technique<br />' +
                        'Les qualités et aptitudes que le candidat doit posséder :- Rigueur et précision du raisonnement logique<br />' +
                        '<br />' +
                        ' - Esprit d’analyse et de synthèse<br />' +
                        ' - Sens de l’organisation.<br />' +
                        ' - Autonomie et capacité d’initiative<br />' +
                        ' - Sociabilité<br />' +
                        ' - Sens de responsabilité<br />' +
                        ' - Conscience professionnelle élevée<br />' +
                        ' - Bonne capacité d’adaptation.<br />' +
                        '<br />' +
                        'Contre-indications à l’exercice du métier :<br />' +
                        ' - Tout handicap moteur important<br />' +
                        ' - Troubles de la vue et de l’ouïe non corrigés.<br />' +
                        ' - Allergies au bruit et aux odeurs d’hydrocarbures<br />' +
                        '<br />' +
                        'Mode de sélection des candidats :<br />' +
                        ' - Dossier d’orientation à remplir<br />' +
                        ' - Tests d’admission',
                'A l’issue de la formation, le lauréat sera en mesure d’exécuter les activités suivantes :<br />' +
                        ' - Appliquer les bases d’ajustage<br />' +
                        ' - Souder et découper au gaz et à l’arc<br />' +
                        ' - Lire et Interpréter des plans et documents techniques<br />' +
                        ' - Etudier des moteurs thermiques<br />' +
                        ' - Repérer des moteurs à combustion interne<br />' +
                        ' - Entretenir et remettre en conformité les systèmes de :<br />' +
                        ' - Production d’énergie annexe<br />' +
                        ' - refroidissement et de lubrification<br />' +
                        ' - D’allumage<br />' +
                        ' - d’alimentation en carburant<br />' +
                        ' - de suspension<br />' +
                        ' - de freinage<br />' +
                        ' - de direction<br />' +
                        ' - de transmission de puissance<br />' +
                        ' - Entretenir et remettre en conformité un système de régulation de température<br />' +
                        ' - Appliquer les principes d’électricité et d’électronique aux véhicules à moteur<br />' +
                        ' - Analyser des polluants résultants de la combustion<br />' +
                        ' - Utiliser les méthodes et les outils de diagnostic<br />' +
                        ' - Organiser un atelier<br />' +
                        ' - Organiser et gérer la maintenance d’un parc'),
        ('Technicien Logistique','','','',
                'Le Technicien en Logistique est chargé des opérations de réception, de mise en stock, de préparation des commandes et d’expédition des marchandises. Il assure également le suivi du parc des engins de manutention et peut être amené à en conduire lui-même. Il coordonne, anime et régule le travail d’une ou de plusieurs équipes d’opérateurs en fonction de la charge de travail.Le Technicien en Logistique exerce son activité notamment dans les entrepôts dédiés ou chez des prestataires de services, les dépôts de stockage des entreprises de production ou sur des plateformes logistiques.',
                'Le Technicien en Logistique peut travailler dans toute entreprise comportant une activité de stockage, qu’elle soit industrielle ou commerciale. Il peut prétendre, après quelques années d’expérience, à un poste de chef d’équipe, de responsable de magasin ou de responsable de dépôt.',
                '- Age limite : 30 ans maximum- Niveau scolaire minimum requis : 2ème année du Baccalauréat scientifique ou technique Les qualités et aptitudes que le candidat doit posséder : Conscience professionnelle Sens de l’organisation Esprit méthodique Autonomie Sens de la responsabilité Travail en équipe Sens de la communication Souci permanent de la sécurité. Capacité d’utiliser les moyens de manutention manuels ou mécanisés Mode de sélection des candidats : Présélection sur dossier Evaluation sur la base des batteries de tests Entretien individuel',
                'A l’issue de la formation, le stagiaire sera en mesure d’exécuter les opérations et les activités suivantes  Organiser les activités de réception et de déchargement  Ranger les produits en stock Organiser les opérations de préparation des commandes Organiser les activités d’expédition et de chargement Affecter les moyens humains et matériels  Utiliser des chariots automoteurs de manutention à conducteur porté catégories 1, 3 et 5.'),
        ('Technicien en Fabrication Mécanique option Montage / Ajustage Outillage de presse','','','',
                'a fonction principale du Technicien en Fabrication Mécanique est de gérer l’activité et de produire des pièces sur machines conventionnelles et à commande numérique.<br />' +
                        'Il travaille dans la majorité des cas dans des entreprises de production des secteurs d’activité du chantier naval, de l’automobile, de la mécanique générale et de précision.',
                'Le Technicien en Fabrication Mécanique peut, selon les aptitudes qu’il démontre, progresser vers la fonction méthode de l’entreprise voire à terme vers la responsabilité d’atelier ou le domaine de la production.',
                'Age maximum : 25 ans<br />' +
                        ' - Niveau Scolaire : 2ème année du baccalauréat (ex – 3ème Année Secondaire) scientifique et technique<br />' +
                        ' - Aptitudes et qualités exigées pour l’exercice du métier :<br />' +
                        ' - Sens de responsabilités, de l’organisation et de la discipline<br />' +
                        ' - Esprit  d’autonomie, d’analyse, de créativité et des initiatives<br />' +
                        ' - Bonne aptitude aux relations humaines <br />' +
                        ' - Maîtrise de soi, motivation pour la technologie et ambition pour la promotion professionnelle<br />' +
                        '<br />' +
                        'Mode de sélection des candidats à la formation :<br />' +
                        '    - Remplissage du dossier d’orientation ,<br />' +
                        '    - Réussite aux tests d’admission.',
                'A l’issue de la formation, le stagiaire sera en mesure d’exécuter les tâches suivantes:<br />' +
                        ' - Etablir un dossier de fabrication<br />' +
                        ' - Organiser et gérer une fabrication<br />' +
                        ' - Usiner sur machines outils traditionnelles<br />' +
                        ' - Programmer, régler et conduire une machine outil à commande numérique<br />' +
                        ' - Travailler en établi et assembler des composants mécaniques de base<br />' +
                        ' - Calculer, mesurer et contrôler<br />' +
                        ' - Maintenir en bon état de fonctionnement le poste de travail.'),
        ('Technicien en Peinture Automobile','','','',
                'Le Technicien en Peinture Automobile est un professionnel chargé de l’accueil du client, participe à l’élaboration d’une expertise et d’un devis, diagnostique l’état du véhicule. Il prépare le véhicule en améliorant la qualité de la surface et applique notamment une couche anticorrosion, il prépare la peinture, maitrise les techniques d’application de peinture adaptées aux différents supports (composite, acier, aluminium) mais également des produits conforme aux nouvelles normes (peinture à l’eau), Il recherche la teinte exacte grâce aux documents techniques et à l’outil informatique. C’est ensuite l’application de la peinture en cabine avec un matériel de protection. Minutieux et rigoureux, le peintre automobile doit réaliser des retouches invisibles ou effectue des raccords. Pour cela il doit avoir une excellente vision des couleurs.La maîtrise de la gestion et le stocke en approvisionnement.',
                'Le travail du peintre en automobile est généralement exécuté seul.La formation a pour objectif de former des techniciens d’atelier pour exercer :<br />' +
                        ' - dans des entreprises de carrosserie constructeur<br />' +
                        ' - chez les fabricants de peinture<br />' +
                        ' - dans les ateliers des parcs automobiles (concessions, filiales, succursales)<br />' +
                        ' - Il peut également lancer sa propre entreprise. Il peut être en relation avec le client, l’expert ou les fournisseurs de matière première ou les équipementiers',
                'Age limite : 30 ans<br />' +
                        'maximum<br />' +
                        'Niveau scolaire minimum requis :<br />' +
                        ' - Niveau baccalauréat scientifique ou technique<br />' +
                        ' - Diplôme qualification dans une secteur industriel<br />' +
                        '<br />' +
                        'Mode de sélection des candidats :<br />' +
                        ' - Evaluation sur la base des batteries de tests<br />' +
                        ' - Tests d’admission',
                'A l’issue de la formation, le lauréat sera en mesure d’exécuter les activités suivantes :<br />' +
                        ' Homme de dialogue et de communication capable de s’intégrer dans une équipe et de se situer dans le cadre global de l’entreprise Appliquer les règles d’hygiène et de sécurité au travail, de l’ergonomie et de l’environnement Connaissance des carrosseries Agencer et entretenir le poste de travail et outils Etablir des devis et des ordres de réparation Connaissance des matériaux (ferreux ou non ferreux, composite et plastique) Connaissances des produits (peinture, solvants, durcisseurs, mastic, métallisé, nacrée, etc…) et des matériels qui permettent de les Préparer et de les appliquer  Protéger et traiter les surfaces Appliquer les différents produits de peinture automobile Corriger et ajuster les teintes Réaliser des raccords Dessiner et créer des motifs de décoration Mettre à jour et classer la documentation technique Appliquer les procédures qualité en vigueur dans l’entreprise Gérer le stock de produits de peinture Restituer le véhicule au client et lui explique les travaux réalisés Développer un esprit de créativité en tenant compte d’un sens artistique et d’un sens esthétique Etre tuteur de formation'),
        ('Maintenance de Matériel de Confection','','','',
                'Dans le secteur de l’habillement, le Technicien de Maintenance de Matériel de Confection (TMMC), doit assurer le bon fonctionnement des machines de confection et des annexes de production en effectuant les activités de la maintenance préventive et curative et en apportant les améliorations et les adaptations de postes nécessaires.Le Technicien de Maintenance de Matériel de Confection conduit les machines de confection au besoin et effectue tous les réglages indispensables à un fonctionnement fiable dans le respect des normes d’hygiène et sécurité. Il intervient dans le domaine de la mécanique, du pneumatique et peut participer aux réparations électroniques et automatiques.Sa fonction est d’un niveau intermédiaire, entre celui du responsable et de l’opérateur de maintenance. Il est responsable de l’état des machines et du budget alloué à leur maintenance.',
                'Après avoir acquis de l’expérience, les personnes démontrant les capacités et la volonté d’apprendre peuvent accéder à un poste de responsable de département maintenance. Selon leur potentiel, avec l’expérience et une formation appropriée, ces personnes peuvent également accéder à des postes de responsables de production ou encore créer une petite entreprise de vente et réparation de matériel de confection, ou de services dédiés à l’assistance après vente.',
                'Age limite: 30 ans<br />' +
                        '<br />' +
                        'Niveau scolaire minimum requis: 2ème année du Baccalauréat toutes séries OuDiplôme du niveau Qualification dans le secteur Industriel.Un concours, pour les prétendants peut être exigé, et accompagné des tests suivants :<br />' +
                        '<br />' +
                        ' - Test de mathématique.<br />' +
                        ' - Test de français permettant de vérifier :<br />' +
                        '<br />' +
                        'Les qualités et les aptitudes que le candidat doit posséder :<br />' +
                        ' - Intérêt pour le métier<br />' +
                        ' - Capacité à comprendre, à écrire et à parler le français<br />' +
                        ' - Appréciation du travail en équipe',
                'A l’issue de sa formation le lauréat de la filière « TMMC » aura acquis, les compétences requises pour occuper efficacement ses fonctions et garantir le bon fonctionnement du matériel de production et annexes de production en respectant les spécifications techniques et les normes de qualité du clientSa connaissance des machines et de la mécanique d’entretien, des techniques d’intervention, du processus de maintenance et de la gestion de la maintenance, lui permet d’être en mesure d’exécuter les tâches de maintenance du matériel de confection suivantes :<br />' +
                        '<br />' +
                        ' - Elaborer le plan de maintenance préventive<br />' +
                        ' - Mettre en œuvre la maintenance préventive<br />' +
                        ' - Mettre en œuvre et optimiser la maintenance corrective<br />' +
                        ' - Gérer le stock des pièces de rechange<br />' +
                        ' - Apporter des solutions techniques à l’aménagement des postes de travail<br />' +
                        ' - Gérer le parc matériel<br />' +
                        ' - Superviser les activités de maintenance<br />' +
                        ' - Organiser l’atelier de maintenance<br />' +
                        ' - Assurer l’intégration de nouveaux biens<br />' +
                        ' - Améliorer la performance du matériel et du coût liés à la maintenance'),
        ('Monteur Régleur en Plasturgie','','','',
                'Le rôle principal du "Monteur Régleur en Plasturgie" est d’assurer la bonne gestion des machines nécessaire au bon déroulement de la production d’un atelier ou d’un îlot de production. A cet effet, il exécute les changements de production, effectue l’industrialisation des nouvelles productions, maintien et optimise la production.',
                'Suite à quelques années d’expérience, et après avoir démontré ses compétences professionnelles, le Monteur Régleur peut évoluer vers un poste de Chef d’Equipe puis Responsable de Production.',
                'Age limite : 30 ans<br />' +
                        '<br />' +
                        'Niveau scolaire minimum requis : 2ème année du baccalauréat scientifique ou techniqueOuDiplôme du niveau Qualification dans le secteur Industriel.<br />' +
                        'Les qualités et aptitudes que le candidat doit posséder :<br />' +
                        '<br />' +
                        ' - Sens de responsabilité, de l’organisation et de la discipline<br />' +
                        ' - Esprit d’ Autonomie, d’analyse, de créativité et d’initiative<br />' +
                        ' - Aisance en relations humaines<br />' +
                        ' - Maîtrise de soi, Passion pour la technologie et ambition pour la promotion professionnelle<br />' +
                        '<br />' +
                        'Contre-indications à l’exercice du métier handicap physique (problème de colonne vertébrale), problème de vue ou de distinction de couleur, maladie du cœur, maladies nerveuses, asthme.<br />' +
                        'Mode de sélection des candidats :<br />' +
                        ' - Dossier d’orientation à remplir<br />' +
                        ' - Tests d’admission',
                'A l’issue de la formation, le lauréat sera en mesure d’exécuter les activités suivantes :<br />' +
                        '<br />' +
                        ' - Assurer le démarrage et les changements de production<br />' +
                        ' - Assurer la maintenance<br />' +
                        ' - Industrialiser les nouvelles productions<br />' +
                        ' - Respecter la sécurité et la qualité au cours de la production'),
        ('Educateur Spécialisé en Petite Enfance','','',
                '',
                'L’Éducateur peut contribuer à l’épanouissement de l’enfant et à l’amélioration de la vie de leur famille. Il a pour mission d’accompagner et guider les enfants dans leurs activités quotidiennes dans le but d’acquérir diverses compétences, à l’instar de la psychomotricité, la linguistique, la communication et le développement socio-émotionnel. Il est question aussi de soutenir le développement de leur confiance en soi, leur autonomie, la capacité à intégrer un groupe, à résoudre des problèmes etc. C’est pour cette raison qu’il est important, en plus d’avoir un sens de responsabilité, de témoigner un grand respect et de l’amour aux enfants. Cette filière vise à préparer les meilleurs Éducateurs pour le développement de l’enfant.',
                'L’Éducateur Spécialisé en Petite Enfance est amené à exercer son métier dans les différentes structures éducatives préscolaires :<br />' +
                        '<br />' +
                        ' - Publiques,<br />' +
                        ' - Semipubliques,<br />' +
                        ' - Privées,<br />' +
                        ' - ONG,<br />' +
                        ' - Projet personnel …',
                ' - Niveau scolaire minimum requis : Etre titulaire d’un baccalauréat<br />' +
                        ' - Age limite: 30 ans pour les candidats bacheliers comme pour les licenciés',

                'La formation a pour finalité de permettre au lauréat d’acquérir le savoir, la pédagogie, ainsi que les outils pratiques relatifs au métier d’Éducateur Spécialisé en Petite Enfance. Ce programme assure une haute qualité de formation visant à développer chez le lauréat, qui travaillera auprès d’un groupe d’enfants, de bonnes qualités d’accueil, d’accompagnement et de suivi, en vue de favoriser leur processus de développement et d’apprentissage.A l’issue de la formation, le lauréat sera en mesure d’exécuter les activités suivantes :<br />' +
                        '<br />' +
                        ' - Accueil et accompagnement du jeune enfant et de sa famille<br />' +
                        ' - Organisation de l’environnement du travail<br />' +
                        ' - Elaboration de projets éducatifs au profit d’enfants d’âge préscolaire<br />' +
                        ' - Planification et organisation d’activités éducatives<br />' +
                        ' - Mise en œuvre d’activités éducatives en faveur du jeune enfant<br />' +
                        ' - Gestion administrative<br />' +
                        ' - Communication professionnelle<br />' +
                        ' - Intégration des technologies de l’information et de communication dans le domaine du préscolaire<br />' +
                        ' - Évaluation de la progression des apprentissages chez l’enfant'),
        ('Technicien Spécialisé en Finance et Comptabilité','','',
                '',
                'Le Technicien Spécialisé en Finance et Comptabilité (TSFC) agit dans des contextes de travail variés et évolutifs qui dépendent de plusieurs paramètres, à savoir :<br />' +
                        'la structure juridique, la taille, les choix organisationnels et technologiques des entreprises. Il exerce ses fonctions dans le respect des obligations légales et contractuelles et des procédures internes. Et ce, dans la limite des marges d’autonomie qui lui sont attribuées. Le Technicien Spécialisé en Finance et Comptabilité est en mesure de :<br />' +
                        '<br />' +
                        ' - Organiser et réaliser la gestion des obligations comptables, fiscales et sociales<br />' +
                        ' - Participer à l’élaboration et à la communication des informations financières et de gestion<br />' +
                        ' - Contribuer aux prévisions et à la préparation des décisions. <br />' +
                        '<br />' +
                        'Cette filière ouvre des opportunités d’embauche au sein des services administratifs, comptables et financiers des entreprises, des cabinets d’expertise comptable, et autres organisations.',
                'Suite à quelques années d’expérience, et après avoir démontré ses compétences professionnelles, le Technicien Spécialisé en Finance et Comptabilité se verra confié des responsabilités plus importantes d’encadrement et de pilotage dans les divers départements de l’entreprise. Il peut également prendre la responsabilité d’une PME. Plusieurs possibilités d’évolution de carrière sont prévues, notamment vers des fonctions d’encadrement par le biais d’une promotion interne et par la formation continue.Il peut s’orienter vers des postes tels que :<br />' +
                        '<br />' +
                        ' - Chef Comptable ,<br />' +
                        ' - Contrôleur de Gestion ,<br />' +
                        ' - Auditeur Financier ,<br />' +
                        ' - Directeur Administratif et Financier',
                'Age limite : 30 ans<br />' +
                        'pour les bacheliers et les licenciés<br />' +
                        'Niveau scolaire minimum requis : Bac au minimum ou équivalent en Économie, comptabilité, gestion ou commerce en sciences ou techniques Aptitude physique à l’exercice du métier : Aucune contre indication <br />' +
                        'Mode de sélection des candidats :<br />' +
                        '<br />' +
                        ' - Dossier d’orientation à remplir<br />' +
                        ' - Entretiens suite à la présélection.',
                'A l’issue de la formation, le lauréat sera en mesure d’exécuter les activités suivantes:<br />' +
                        ' - Maitriser les techniques de communication écrite et orale<br />' +
                        ' - Appréhender l’entreprise dans son environnement professionnel et économique<br />' +
                        ' - Tenir la comptabilité générale d’une entreprise (manuelle et informatisée)<br />' +
                        ' - Se sensibiliser à la culture entrepreneuriale<br />' +
                        ' - Connaitre les différents types de droits afférents aux opérations commerciales :<br />' +
                        ' - droit commercial,droit social<br />' +
                        ' - Réaliser les travaux de fin d’exercice et l’établissement des états de synthèse<br />' +
                        ' - Elaborer les déclarations fiscales<br />' +
                        ' - Appliquer les règles des statistiques descriptives, et des mathématiques financières<br />' +
                        ' - Utiliser efficacement les TIC et des logiciels de gestion<br />' +
                        ' - Effectuer des techniques de la révision des comptes<br />' +
                        ' - maîtriser la comptabilité approfondie<br />' +
                        ' - analyser la situation financière de l’entreprise <br />' +
                        ' - appréhender des techniques de consolidation et des normes comptables internationales<br />' +
                        ' - Effectuer le calcul des coûts et des résultats analytiques<br />' +
                        ' - Etablir les budgets et les tableaux de bord<br />' +
                        ' - Gérer la trésorerie '),
        ('Techniques de Secrétariat de Direction','','','',
                'Les tâches qui incombent aux secrétaires de direction varient selon le type et l’envergure de l’entreprise où elles s’effectuent. Exercer ce métier requiert généralement la pratique des langues :<br />' +
                        'française et arabe. Ils assurent, le plus souvent, la liaison entre le directeur, les employés du bureau, ainsi que les visiteurs. Les Secrétaires de Direction exécutent différentes tâches et soutiennent les gestionnaires dans l’organisation du bureau. C’est un travail de bureau et de soutien qui exige l’utilisation d’outils informatiques, la maîtrise de quelques notions de base en législation et en comptabilité. Après avoir acquis eu une expérience significative au travail, les secrétaires de direction se verront confiées des responsabilités plus grandes',
                'Les perspectives d’emploi sont bonnes pour les personnes qui maîtrisent la langue française, qui s’intègrent facilement à l’entreprise et à ses valeurs. La maîtrise d’autres langues étrangères ainsi que la volonté d’apprendre et de s’améliorer sont des atouts majeurs pour accéder au marché du travail.',
                'Age limite : 30 ans pour les bacheliers et les licenciés<br />' +
                        '<br />' +
                        'Niveau scolaire minimum requis : Baccalauréat toute série<br />' +
                        '<br />' +
                        'Sélection au concours donnant accès au programme Techniques de Secrétariat de Direction<br />' +
                        '<br />' +
                        'Mode de sélection des candidats :<br />' +
                        ' - Dossier d’orientation à remplir<br />' +
                        ' - Entretiens après présélection',
                ''),
        ('Technicien Spécialisé en Commerce','','','',
                'Le Technicien Spécialisé en Commerce a un rôle moteur dans la pérennité de l’entreprise. Sa mission principale est de porter l’image de l’entreprise et fidéliser ses clients. Il est capable de mener toute action commerciale nécessaire à l’atteinte des objectifs fixés de la négociation à la vente d’une prestation en passant par un bon suivi commercial. Dans un contexte fortement concurrentiel, le Technicien Spécialisé en Commerce doit asseoir une bonne stratégie commerciale Il doit avoir tous les outils lui permettant d’analyser le marché en vue d’anticiper les besoins de ses clients grâce à une veille concurrentielle bien menée. Qu’il s’agisse d’une activité de vente locale, nationale ou à l’échelle international, ses qualifications lui offrent une grande capacité d’adaptation à toute situation commerciale.',
                'Suite à quelques années d’expérience, et après avoir démontré ses compétences professionnelles, le Technicien Spécialisé en Commerce se verra confié des responsabilités importantes dans les directions commerciales ou de marketing.',
                'Age limite: 30 ans<br />' +
                        'aussi bien pour les bacheliers que les licenciés<br />' +
                        'Niveau scolaire minimum requis : Baccalauréat toutes sériesAptitude physique requise: Aucune difficulté d’élocution<br />' +
                        'Mode de sélection des candidats :<br />' +
                        ' - Dossier d’orientation à remplir<br />' +
                        ' - Réussir les Entretiens après présélection.',
                'A l’issue de la formation, le lauréat sera en mesure d’exécuter les activités suivantes :<br />' +
                        ' - Analyser et prospecter l’environnement<br />' +
                        ' - Mener des négociations commerciales<br />' +
                        ' - Réaliser des opérations de ventes et en établir les conditions générales<br />' +
                        ' - Etablir les contrats d’agents<br />' +
                        ' - Animer une équipe de vente<br />' +
                        ' - Assurer le suivi opérationnel d’une gestion commerciale sur un un secteur défini<br />' +
                        ' - Parler une langue étrangère (Anglais ou Espagnol)<br />' +
                        ' - Utiliser les outils bureautiques (traitement de textes, tableurs, gestions des fichiers etc)<br />' +
                        ' - Gérer les opérations d’import/export<br />' +
                        ' - Organiser les voyages d’études, les salons, les expositions<br />' +
                        ' - Traiter les commandes et les encaissements'),
        ('Technicien Spécialisé en Gestion des Entreprises','','','',
                'Le Technicien Spécialisé en Gestion d’Entreprise se voit posséder un certain niveau de pratique des techniques en gestion et plus particulièrement, en marketing et en finances. Ce qui lui permet d’occuper une fonction de gestionnaire opérationnel. Selon l’ampleur de l’entreprise, il pourra intégrer une équipe ou assumer tout ou une partie d’une fonction.Dans les PME, il est le collaborateur direct du chef d’entreprise. Il lui apporte soutien et conseil sur les volets financiers, commerciaux, juridiques, ressources humaines et logistiques.',
                'Suite à quelques années d’expérience, et après avoir démontré ses compétences professionnelles, le Technicien Spécialisé en Gestion des Entreprises se verra confié des responsabilités plus importantes d’encadrement et de pilotage dans les divers départements de l’entreprise. Il peut également prendre la responsabilité d’une PME.',
                'Age limite: 30 ans<br />' +
                        'pour bacheliers et licenciés<br />' +
                        'Niveau scolaire minimum requis : Baccalauréat ou licence dans une des branches scientifique, littéraire, technique industrielle, de gestion, commerce ou économieAptitude physique à l’exercice du métier : Aucune contre indication<br />' +
                        'Mode de sélection des candidats :<br />' +
                        '<br />' +
                        ' - Dossier d’orientation à remplir<br />' +
                        ' - Entretiens après présélection',
                'A l’issue de la formation, le lauréat sera en mesure d’exécuter les activités suivantes :<br />' +
                        ' - Tenir la comptabilité générale d’une entreprise (manuelle et informatisée)<br />' +
                        ' - Réaliser une étude de marché<br />' +
                        ' - Tenir une gestion commerciale<br />' +
                        ' - Gérer les données techniques de la production<br />' +
                        ' - Assurer la gestion de trésorerie<br />' +
                        ' - Tenir une comptabilité analytique<br />' +
                        ' - Tenir une gestion budgétaire<br />' +
                        ' - Gérer une ligne de produit<br />' +
                        ' - Tenir une Gestion des stocks<br />' +
                        ' - Réaliser des études d’environnement<br />' +
                        ' - Réaliser des analyses de poste et élaborer des plans de formation'),
        ('Technicien Spécialisé Bureau d’Etude en Construction Métallique ','','','',
                'La mission principale du Technicien Spécialisé du Bureau d’Etude en Construction Métallique est de participer à la conception et à l’étude d’ensembles en construction métallique. Il peut également Préparer et organiser la fabrication de prototypes.',
                'Le lauréat peut être employé par des établissements de nature et d’importance les plus diverses allant de l’entreprise artisanale à la grande société industrielle.Le Technicien Spécialisé de Bureau d’Etude en Construction Métallique est amené à exercer dans :<br />' +
                        ' - Un bureau d’Etude<br />' +
                        ' - Un service méthode ou de préparation du travail<br />' +
                        ' - Un bureau de gestion de production<br />' +
                        ' - Un service gestion de la qualité<br />' +
                        ' - Dans des chantiers',
                'Age limite : 23 ans<br />' +
                        'Niveau scolaire minimum requis : Diplôme du Baccalauréat Scientifique ou Technique<br />' +
                        'Les qualités et aptitudes que le candidat doit posséder :<br />' +
                        '<br />' +
                        ' - Sens de responsabilité, de l’organisation et de la discipline<br />' +
                        ' - Esprit d’ Autonomie, d’analyse, de créativité et d’initiative<br />' +
                        ' - Aisance en relations humaines<br />' +
                        ' - Maîtrise de soi, Passion pour la technologie et l’ambition pour la promotion professionnelle.<br />' +
                        '<br />' +
                        'Mode de sélection des candidats :<br />' +
                        ' - Dossier d’orientation à remplir<br />' +
                        ' - Entretiens après présélection',
                'A l’issue de la formation, le lauréat sera en mesure d’exécuter les tâches suivantes :<br />' +
                        ' - Prendre connaissance des directives, des plans et cahiers de charge<br />' +
                        ' - Analyser une demande, un travail, un problème<br />' +
                        ' - Etudier, élaborer, prévoir et proposer des solutions<br />' +
                        ' - Justifier, argumenter les choix<br />' +
                        ' - Vérifier, contrôler, corriger et finaliser<br />' +
                        ' - Rédiger les documents et constituer le dossier<br />' +
                        ' - Réaliser des comptes rendus, et communiquer aisément'),
        ('Technicien Spécialisé de Méthodes en Fabrication Mécanique','','','',
                '"Le Technicien Spécialisé de Méthodes en Fabrication Mécanique" participe à la préparation du travail. Il établit rationnellement les gammes de fabrication, définit le temps d’exécution, et prépare les documents destinés à la fabrication. En partant du principe que<br />' +
                        ' - tous les domaines confondus<br />' +
                        ' - toute action est obligatoirement précédée d’un certain nombre de mesures préparatoires, le temps alloué à la préparation du travail n’est pratiquement pas limité. Cela s’applique dans la mécanique générale :<br />' +
                        'de la petite à la grande entreprise, de la petite à la grande série, de la pièce simple à la plus complexe.',
                'Le lauréat peut être employé par des établissements de nature et d’importance les plus diverses allant de l’entreprise artisanale à la grande société industrielle. Le Technicien Spécialisé des méthodes en Fabrication Mécanique est amené à exercer dans un service maintenance de toute entreprise : - Industrielle - Agro-alimentaire - Chimie-Parachimie',
                'Age limite : 23 ans<br />' +
                        'Niveau scolaire minimum requis : Diplôme du Baccalauréat Scientifique ou Technique<br />' +
                        'Les qualités et aptitudes que le candidat doit posséder :<br />' +
                        '<br />' +
                        ' - Sens de responsabilité, de l’organisation et de la discipline<br />' +
                        ' - Esprit d’ Autonomie, d’analyse, de créativité et d’initiative<br />' +
                        ' - Aisance en relations humaines<br />' +
                        ' - Maîtrise de soi, Passion pour la technologie et l’ambition pour la promotion professionnelle.<br />' +
                        '<br />' +
                        'Mode de sélection des candidats :<br />' +
                        ' - Dossier d’orientation à remplir<br />' +
                        ' - Entretiens après présélection',
                '<br />' +
                        'A l’issue de la formation, le lauréat sera en mesure d’exécuter les activités suivantes :<br />' +
                        ' - Etablir des processus de production<br />' +
                        ' - Choisir, entre plusieurs procédés de travail et plusieurs processus celui ou ceux qui seront les plus rentables, compte tenu de la qualité<br />' +
                        ' - Choisir les moyens de production les mieux adaptés :<br />' +
                        ' - machines, outillage, personnes<br />' +
                        ' - Pour chaque phase, il faut prévoir et analyser les postes de travail, et déterminer le mode opératoire le plus rationnel<br />' +
                        ' - Rechercher les meilleures conditions d’exploitation du matériel et proposer l’outillage nécessaire<br />' +
                        ' - Proposer les adaptations nécessaires en ce qui concerne l’implantation des machines et les aires de stockage<br />' +
                        ' - Etablir les temps d’exécution et les devis<br />' +
                        ' - Participer à la mise en route de la fabrication<br />' +
                        ' - Programmer, régler et conduire une machine-outil à commande numérique<br />'),
        ('Technicien Spécialisé en Génie Climatique','','','',
                'Le Technicien Spécialisé en Génie Climatique peut être un technicien de bureau d’étude, un technicien de mise en service, ou un technicien de maintenance.C’est un homme de terrain, chargé d’intervenir dans les entreprises d’installation, ou de prestation de service pour prendre en charge les opérations de mise en service et de mise au point de différentes installations.',
                'Le Technicien Spécialisé en Génie Climatique peut être employé dans des entreprises prestataires de services, dans des services d’entretien des collectivités, dans des services de maintenance en Génie Climatique ou dans des bureaux d’étude ou comme chef de chantier.La création d’une entreprise est tout à fait possible pour les éléments dynamiques.',
                'Age limite : 26 ans pour les bacheliers et 30 ans<br />' +
                        'pour les licenciés<br />' +
                        'Niveau scolaire minimum requis : Bacheliers Scientifiques ou Techniques<br />' +
                        'Les qualités et aptitudes que le candidat doit posséder :<br />' +
                        '<br />' +
                        ' - Sens de responsabilité, de l’organisation et de la discipline<br />' +
                        ' - Esprit d’ Autonomie, d’analyse, de créativité et d’initiative<br />' +
                        ' - De bonnes relations humaines<br />' +
                        ' - Maîtrise de soi, Passion pour la technologie et l’ambition pour la promotion professionnelle.<br />' +
                        '<br />' +
                        'Mode de sélection des candidats :<br />' +
                        ' - Dossier d’orientation à remplir<br />' +
                        ' - Entretiens après présélection.',
                'A l’issue de la formation, le lauréat sera en mesure d’exécuter les activités suivantes :<br />' +
                        ' - Participer à l’étude technique<br />' +
                        ' - Contribuer à l’étude budgétaire<br />' +
                        ' - Préparer l’offre et la négociation<br />' +
                        ' - Préparer la réalisation<br />' +
                        ' - Assurer la réalisation et son suivi<br />' +
                        ' - Participer à la livraison d’une installation<br />' +
                        ' - Préparer le suivi d’une installation<br />' +
                        ' - Intervenir sur une installation<br />' +
                        ' - Optimiser un fonctionnement<br />' +
                        ' - Communiquer à l’intérieur et à l’extérieur de l’entreprise'),
        ('Automatisation et Instrumentation Industrielle','','','',
                'Le Technicien Spécialisé en Automatisation et Instrumentation Industrielle travaille en général dans des entreprises équipées d’installations automatisées. Il a pour principale tâche d’assurer le bon fonctionnement des éléments des chaînes de production en relation avec la qualité demandée tout en respectant les délais, l’optimisation de la productivité et la bonne gestion des matières utilisées. Les bases de sa fonction consistent à assurer la sécurité des personnes et du matériel.',
                'Le Technicien Spécialisé en Automatisation et Instrumentation Industrielle est un professionnel qui peut faire carrière dans les grandes entreprises utilisant une automatisation de la production. En démontrant son professionnalisme et ses expériences acquises sur le terrain, il peut devenir aisément un chef d’équipe de maintenance et d’intervention.',
                'Age limite : 26 ans pour les bacheliers et 30 ans<br />' +
                        'pour les licenciés<br />' +
                        'Niveau scolaire minimum requis : Diplôme du Baccalauréat Scientifique ou Technique<br />' +
                        'Les qualités et aptitudes que le candidat doit posséder :<br />' +
                        '<br />' +
                        ' - Sens de responsabilité, de l’organisation et de la discipline<br />' +
                        ' - Esprit d’ Autonomie, d’analyse, de créativité et d’initiative<br />' +
                        ' - Aisance en relations humaines<br />' +
                        ' - Maîtrise de soi, Passion pour la technologie et ambition pour la promotion professionnelle.<br />' +
                        '<br />' +
                        'Mode de sélection des candidats :<br />' +
                        ' - Dossier d’orientation à remplir<br />' +
                        ' - Entretiens après présélection.',
                'A l’issue de la formation, le lauréat sera en mesure d’exécuter les activités suivantes :<br />' +
                        ' - Automatiser des systèmes séquentiels simples en utilisant un automate programmable<br />' +
                        ' - Rendre opérationnel un ensemble capteur<br />' +
                        ' - conditionneur pour un procédé industriel<br />' +
                        ' - Assurer le fonctionnement d’un procédé industriel à partir d’un contrôleur industriel<br />' +
                        ' - Rendre opérationnel des systèmes de commandes électriques des machines électriques<br />' +
                        ' - Contrôler, dans un contexte industriel, des variables physiques à l’aide d’un automate programmable<br />' +
                        ' - Maintenir en équilibre un procédé industriel à partir d’un contrôleur numérique<br />' +
                        ' - Mettre en œuvre une boucle de contrôle de procédé industriel incluant un système SCADA<br />' +
                        ' - Rendre opérationnel des systèmes de commandes électroniques des machines électriques<br />' +
                        ' - Conduire le projet de fin d’études'),
        ('Electromécanique des Systèmes Automatisées','','','',
                'Le "Technicien Spécialisé Electromécanicien des Systèmes Automatisés" est un professionnel chargé de maintenir, dans des conditions les plus optimales, le fonctionnement des systèmes automatisés d’une entreprise.',
                'Suite à quelques années d’expérience, et après avoir démontré ses compétences et son ambition professionnelle, le Technicien Spécialisé Electromécanicien des Systèmes Automatisés se verra confié des responsabilités plus importantes au niveau de l’autonomie et de la gestion des difficultés techniques des interventions, ainsi que de suivi de divers projets de l’entreprise.',
                'Age limite : 26 ans pour les bacheliers et 30 ans<br />' +
                        'pour les licenciés<br />' +
                        'Niveau scolaire minimum requis : Diplôme du Baccalauréat Scientifique ou Technique<br />' +
                        'Les qualités et aptitudes que le candidat doit posséder :<br />' +
                        '<br />' +
                        ' - Sens de responsabilité, de l’organisation et de la discipline<br />' +
                        ' - Esprit d’ Autonomie, d’analyse, de créativité et d’initiative<br />' +
                        ' - Aisance en relations humaines<br />' +
                        ' - Maîtrise de soi, Passion pour la technologie et ambition pour la promotion professionnelle<br />' +
                        '<br />' +
                        'Contre-indications pour exercer ce métier : handicap physique (problème de colonne vertébrale), problème de vue ou de distinction de couleur, maladie du cœur, maladie nerveuse.<br />' +
                        'Mode de sélection des candidats :<br />' +
                        ' - Dossier d’orientation à remplir<br />' +
                        ' - Entretiens après présélection.',
                'A l’issue de la formation, le lauréat sera en mesure d’exécuter les activités suivantes :<br />' +
                        ' - Installer des câbles et des canalisations<br />' +
                        ' - Dépanner des circuits électroniques de puissance<br />' +
                        ' - Installer les divers raccordements et entretenir les luminaires<br />' +
                        ' - Installer et entretenir les commandes à très basse tension<br />' +
                        ' - Installer, raccorder et entretenir des transformateurs<br />' +
                        ' - Installer et Repérer des moteurs et des génératrices à CC<br />' +
                        ' - Monter des circuits hydrauliques<br />' +
                        ' - Installer et Repérer des moteurs et des génératrices à CA<br />' +
                        ' - Installer et entretenir divers systèmes d’alarme et de signalisation<br />' +
                        ' - Installer, Repérer les commandes électroniques de moteurs<br />' +
                        ' - Installer et dépanner des moteurs et de génératrices à CC<br />' +
                        ' - Installer et dépanner des moteurs et des génératrices à CA<br />' +
                        ' - Installer, Repérer des commandes électroniques des moteurs<br />' +
                        ' - Réaliser un système automatisé'),
        ('Techniques des Réseaux Informatiques','','','',
                'Le Technicien Spécialisé en Réseaux Informatiques est un professionnel chargé d’exploiter, sécuriser, optimiser et faire évoluer les ressources informatiques de l’entreprise.Il est le garant de la qualité du service attendu par l’informatique. Il prend en charge le support technique auprès des utilisateurs et apporte des solutions aux différents problèmes qu’ils rencontrent dans l’utilisation des moyens informatiques.',
                'Après quelques années d’expériences réussies, le Technicien Spécialisé en Réseaux Informatiques peut évoluer vers des fonctions d’encadrement ou d’expertise technique.',
                'Age limite : 23 ans<br />' +
                        'Niveau scolaire minimum requis : Diplôme du Baccalauréat Scientifique ou Technique<br />' +
                        'Les qualités et aptitudes que le candidat doit posséder :<br />' +
                        '<br />' +
                        ' - Sens de responsabilité, de l’organisation et de la discipline<br />' +
                        ' - Capacités d’analyse et de synthèse<br />' +
                        ' - Sens du service<br />' +
                        ' - Autonomie,<br />' +
                        ' - Esprit d’initiative<br />' +
                        ' - Aisance en relations humaines<br />' +
                        ' - Maîtrise de soi<br />' +
                        ' - Curiosité pour les nouvelles technologies de l’information<br />' +
                        '<br />' +
                        'Mode de sélection des candidats :<br />' +
                        ' - Dossier d’orientation à remplir<br />' +
                        ' - Entretiens après présélection.',
                'A l’issue de la formation, le lauréat sera en mesure d’exécuter les activités suivantes :<br />' +
                        ' - Au niveau du support technique<br />' +
                        ' - Assurer un support technique auprès des utilisateurs de l’informatique<br />' +
                        ' - Assurer la gestion du parc informatique de l’entreprise<br />' +
                        ' - Suivre et faire évoluer le dispositif informatique<br />' +
                        ' - Diagnostiquer et résoudre les problèmes sur les postes de travail et serveurs d’entreprise<br />' +
                        ' - Suivre et organiser le suivi des pannes et des interventions auprès des utilisateursAu niveau de la maintenance <br />' +
                        ' - Dépanner les micro-ordinateurs, les serveurs, le réseau<br />' +
                        ' - Suivre et faire évoluer les systèmes d’exploitationAu niveau système<br />' +
                        ' - Installer et administrer un poste de travail<br />' +
                        ' - Installer et administrer un système d’exploitation réseau<br />' +
                        ' - Installer et administrer les serveurs d’application (messagerie, serveur web,..) Au niveau du réseau <br />' +
                        ' - Concevoir et planifier l’implantation d’un réseau local d’entreprise<br />' +
                        ' - Participer au câblage du réseau<br />' +
                        ' - Assurer la gestion et la supervision d’un réseau informatique<br />' +
                        ' - Diagnostiquer et résoudre les problèmes du réseau informatique<br />' +
                        ' - Installer, gérer et sécuriser les éléments actifs d’un réseau étendu'),
        ('Technico-Commercial en Vente de Véhicules et Pièces de Rechange','','','',
                '.',
                'Le Technico-commercial en Vente de Véhicules et Pièces de Rechange peut prétendre à plusieurs postes en entreprise tels que :<br />' +
                        '<br />' +
                        ' - Réceptionniste<br />' +
                        ' - Technicien de vente<br />' +
                        ' - Magasinier<br />' +
                        ' - Agent en garantie<br />' +
                        '<br />' +
                        'Pour certains, la création de leur propre entreprise de vente de véhicules et/ou de pièces de rechange est une opportunité.',
                'Age limite : 26 ans pour les bacheliers et 30 ans<br />' +
                        'pour les licenciés<br />' +
                        'Niveau scolaire minimum requis : Diplôme du Baccalauréat Scientifique ou Technique<br />' +
                        'Les qualités et aptitudes que le candidat doit posséder :<br />' +
                        '<br />' +
                        ' - Sens de responsabilité, de l’organisation et de la discipline<br />' +
                        ' - Esprit d’ Autonomie, d’analyse, de créativité et d’initiative<br />' +
                        ' - Aisance en relations humaines<br />' +
                        ' - Maîtrise de soi et l’ambition pour la promotion professionnelle.<br />' +
                        '<br />' +
                        'Mode de sélection des candidats :<br />' +
                        ' - Dossier d’orientation à remplir<br />' +
                        ' - Entretiens après présélection',
                'A l’issue de la formation, le lauréat sera en mesure d’exécuter les activités suivantes :<br />' +
                        ' - Entretenir périodiquement des véhicules automobiles<br />' +
                        ' - Entretenir et Repérer un système hydraulique<br />' +
                        ' - Entretenir les organes de la transmission<br />' +
                        ' - Contrôler les éléments de tenue de la roue<br />' +
                        ' - Contrôler et Repérer les systèmes de freinage<br />' +
                        ' - Entretenir et Repérer la carrosserie d’un véhicule automobile<br />' +
                        ' - Interpréter le comportement des acheteurs<br />' +
                        ' - Assurer la qualité du service à la clientèle<br />' +
                        ' - Présenter un produit, un service ou un système<br />' +
                        ' - Vendre en magasin<br />' +
                        ' - Gérer les encaissements<br />' +
                        ' - Appliquer les techniques du Marketing<br />' +
                        ' - Promouvoir un produit, un service ou un système'),
        ('Technicien spécialisé en Diagnostic et Electronique Embarquée','','','',
                'Le Technicien Spécialisé en Diagnostic et Electronique Embarquée est un professionnel chargé de gérer les services après-vente, d’animer des équipes en dialoguant au sein de l’entreprise avec les intervenants et la clientèle, de promouvoir les services et la vente des produits de son entreprise. Il s’occupe également du diagnostic et de la remise en conformité des systèmes technologiques rencontrés dans les véhicules modernes',
                'Le lauréat peut prétendre au poste de responsable de services après vente, de conseiller en matière d’achat automobile et de maintenance d’un parc automobile. Il peut également lancer sa propre entreprise moyennant une formation complémentaire en gestion et économie.',
                '<br />' +
                        '<br />' +
                        'Age limite : 26 ans pour les bacheliers et 30 ans<br />' +
                        'pour les licenciés<br />' +
                        '<br />' +
                        'Niveau scolaire minimum requis : Diplôme du Baccalauréat Scientifique ou Technique<br />' +
                        'Les qualités et aptitudes que le candidat doit posséder :<br />' +
                        '<br />' +
                        ' - Conscience professionnelle<br />' +
                        ' - Sens de l’organisation<br />' +
                        ' - Sens de responsabilité<br />' +
                        ' - Sens de la sécurité<br />' +
                        ' - Maîtrise de soi<br />' +
                        ' - Sens de l’initiative.<br />' +
                        '<br />' +
                        'Mode de sélection des candidats :<br />' +
                        ' - Dossier d’orientation à remplir<br />' +
                        ' - Entretiens après présélection.',
                ''),
        ('Infographie','','','',
                'Le "Technicien Spécialisé en Infographie" est un professionnel chargé de réaliser des produits de prépresse destinés à l’impression et à l’édition.',
                'L’infographiste ayant une expérience de 4 à 5 ans peut accéder, avec la mise à niveau de ses connaissances, à un poste de direction de production. Avec une formation supplémentaire, il peut aussi s’orienter vers le graphisme et l’animation 3D. Pour certains candidats, la création d’un atelier de service dans ce domaine, constitue une véritable opportunité à saisir.',
                '<br />' +
                        'Age limite : 30 ans<br />' +
                        'pour les bacheliers et les licenciés<br />' +
                        'Niveau scolaire minimum requis : Bacheliers toutes options<br />' +
                        'Les qualités et aptitudes que le candidat doit posséder :<br />' +
                        '<br />' +
                        ' - Motivation personnelle,<br />' +
                        ' - Connaissance des outils de représentation,<br />' +
                        ' - Capacité d’observation et d’écoute,<br />' +
                        ' - Capacité de travail en groupe,<br />' +
                        ' - Capacité d’analyse et de synthèse,<br />' +
                        '<br />' +
                        'Mode de sélection des candidats :<br />' +
                        ' - Présélection sur dossier<br />' +
                        ' - Entretien après présélection.',
                'A l’issue de la formation, le lauréat sera en mesure d’exécuter les activités suivantes :<br />' +
                        '<br />' +
                        ' - Réaliser la maquette du produit<br />' +
                        ' - Traiter le contenu du produit<br />' +
                        ' - Réaliser la mise en page<br />' +
                        ' - Produire les films et les plaques d’impression'),
        ('TS Traitement de surface','','','',
                'Le « Technicien Spécialisé en Traitement de Surface » est un professionnel amené à exercer le métier de traitement de surface dans de nombreux secteurs industriels, et plus particulièrement :<br />' +
                        'l’automobile, l’aéronautique, la micromécanique, l’horlogerie et la bijouterie. Cela peut concerner aussi les entreprises de formulation de peintures et revêtements.Les traitements et les revêtements de surface sont destinés à protéger, à embellir ou à conférer des propriétés particulières à une surface en la modifiant de différentes manières. Ces traitements peuvent être chimiques ou électrolytiques. Ils doivent être précédés d’une préparation soignée :<br />' +
                        'dégraissage et décapage (avant traitement), métallisation, anodisation, phosphatation et la mise en peinture.',
                'Le lauréat peut être employé par des entreprises spécialisées dans le secteur aéronautique. Ces entreprises sont le plus souvent des sous-traitants d’entreprises internationales, voire des ateliers déportés de celles-ci.Selon les aptitudes qu’il démontre, progresser vers un poste de responsabilité : chef de groupe, contremaître, chef d’équipe.',
                'Age limite : 30 ans<br />' +
                        'pour les bacheliers et les licenciés<br />' +
                        'Niveau scolaire minimum requis : Diplôme du Baccalauréat Scientifique ou Technique<br />' +
                        'Les qualités et aptitudes que le candidat doit posséder :<br />' +
                        '<br />' +
                        ' - Sens de responsabilité, de l’organisation et de la discipline<br />' +
                        ' - Esprit d’ Autonomie, d’analyse, de créativité et d’initiative<br />' +
                        ' - Aisance en relations humaines<br />' +
                        ' - Maîtrise de soi, Passion pour la technologie et l’ambition pour la promotion professionnelle.<br />' +
                        '<br />' +
                        'Mode de sélection des candidats :<br />' +
                        ' - Dossier d’orientation à remplir<br />' +
                        ' - Entretiens après présélection.',
                'A l’issue de la formation, le lauréat sera en mesure d’exécuter les activités suivantes :<br />' +
                        '<br />' +
                        ' - Gérer un atelier de traitement de surface<br />' +
                        ' - Analyser les matières premières et les produits finis<br />' +
                        ' - Effectuer les traitements (chimique, électrolytique) sur les métaux (aciers, aluminium...) Afin de les protéger des agressions mécaniques ou chimiques corrosives<br />' +
                        ' - Veiller à l’application des règles de sécurité et au respect des normes environnementales<br />' +
                        ' - Assurer la maintenance des équipements de production<br />' +
                        '<br />' +
                        'Il assure aussi, la commercialisation des produits'),
        ('Technicien Spécialisé Bureau d’Etudes en Automobile','','','',
                'Relié au bureau d’études, le Technicien Spécialisé en Bureau d’études option Automobile réalise avec l’outil informatique des pièces mécaniques en CAO 3Dà partir d’un cahier des charges, pour ensuite les retranscrire sur papier, sur des plans 2D. Il assure les tests numériques, avant les essais sur prototype en laboratoire.<br />' +
                        'Dans le respect de la qualité  et en répondant aux exigences clients, le Technicien spécialisé en Bureau d’études optimise la conception : Géométrie, Dimensions, matériaux et solutions technologiques.',
                'Le programme de formation est dispensé sur 26 modules en 2100 heures réparties sur quatre semestres de formation. Un stage technique de 240 H est programmé à la fin de formation.',
                'Age maximum : 23 ans pour les bacheliers et 26 ans pour les licenciés<br />' +
                        ' - Niveau Scolaire : Bacheliers Scientifiques ou Techniques <br />' +
                        ' - Les qualités et aptitudes que le candidat doit posséder pour l’accès à cette formation sont :<br />' +
                        '     ◦ Sens de responsabilités, de l’organisation et de la discipline ,<br />' +
                        '     ◦ Esprit d’autonomie, d’analyse, de créativité et d’initiative,<br />' +
                        '     ◦ Bonnes relations humaines ,<br />' +
                        '     ◦ Maîtrise de soi, motivation pour la technologie et l’ambition pour la promotion professionnelle',
                'A l’issue de la formation, le lauréat sera en mesure d’exécuter les tâches suivantes:<br />' +
                        ' - Définir la forme géométrique, les dimensions et le matériau d’une pièce mécanique à partir d’un cahier des charges,<br />' +
                        ' - Concevoir un système industriel<br />' +
                        ' - Mettre en plan un dessin de définition<br />' +
                        ' - Définir la nomenclature associée à sa conception<br />' +
                        ' - Intégrer, dans sa conception, les possibilités de production les mieux adaptés : machines et outillage<br />' +
                        ' - Gérer les évolutions des versions de la pièce ou le système conçu.<br />' +
                        ' - Assurer les contrôles des plans : Autocontrôle, contrôle croisé…etc<br />' +
                        ' - Assurer la traçabilité des plans de définition<br />' +
                        ' - Participer à la veille technologique , <br />' +
                        ' - Prendre la responsabilité des choix technologiques chois'),
        ('Maintenance des Machines Outils et Autres Machines de Production Automatisée','',
                '',
                '',
                'Ce Technicien Spécialisé est chargé de la maintenance électromécanique et électronique des machines outils et autres machines à commande numérique. Son rayon d’action touche toutes les entreprises ayant un grand parc de machines modernes de production en série.',
                'Le lauréat peut prétendre à un emploi dans les grandes entreprises spécialisées dans la maintenance électromécanique et électronique des machines outils et autres machines à commande numérique. Après quelques années d’expérience, de formation continue et après avoir démontré ses compétences professionnelles, le Technicien Spécialisé en Maintenance des machines outils et autres machines à production automatique se verra confié des responsabilités plus importantes au niveau du suivi des divers projets de l’entreprise.',
                'Age limite : 26 ans pour les bacheliers et 30 ans<br />' +
                        'pour les licenciés<br />' +
                        'Niveau scolaire minimum requis : Diplôme du Baccalauréat Scientifique ou Technique<br />' +
                        'Les qualités et aptitudes que le candidat doit posséder :<br />' +
                        '<br />' +
                        ' - Sens de responsabilité, de l’organisation et de la discipline<br />' +
                        ' - Esprit d’ Autonomie, d’analyse, de créativité et d’initiative<br />' +
                        ' - Aisance en relations humaines<br />' +
                        ' - Maîtrise de soi, Passion pour la technologie et ambition pour la promotion professionnelle<br />' +
                        '<br />' +
                        'Contre-indications pour exercer ce métier : handicap physique (problème de colonne vertébrale), problème de vue ou de distinction de couleur, maladie du cœur, maladie nerveuse.<br />' +
                        'Mode de sélection des candidats :<br />' +
                        '<br />' +
                        ' - Dossier d’orientation à remplir<br />' +
                        ' - Entretiens après présélection.',
                'A l’issue de la formation, le lauréat sera en mesure d’exécuter les activités suivantes :<br />' +
                        '<br />' +
                        ' - Détecter et remédier aux pannes des systèmes mécaniques, électriques et hydrauliques<br />' +
                        ' - Installer et entretenir des moteurs à courant alternatif<br />' +
                        ' - Installer et entretenir des moteurs à courant continu<br />' +
                        ' - Démonter et monter des systèmes mécaniques<br />' +
                        ' - Programmer des systèmes à commande numérique<br />' +
                        ' - Repérer des unités d’un système de contrôle numérique'),
        ('Maintenance des Machines et Outillage en Plasturgie','','','',
                'Le rôle d’un Technicien Spécialisé en Maintenance des Machines et des Outillages en Plasturgie est d’assurer le bon fonctionnement de tout le matériel de l’atelier. Ainsi, il assure la maintenance du parc des Machines de production, des outillages montés sur les machines, des périphériques qui accompagnent le fonctionnement des machines de production et des installations des fluides nécessaires au fonctionnement des différents organes de l’atelier.',
                'Suite à quelques années d’expérience, et après avoir démontré ses compétences professionnelles, le Technicien Spécialisé en Maintenance des Machines et Outillages en Plasturgie peut évoluer vers :<br />' +
                        ' - Un poste de Responsable de maintenance ou responsable de production.<br />' +
                        ' - Le métier de mouliste.',
                'Age limite : 30 ans<br />' +
                        'pour les bacheliers et les licenciés<br />' +
                        'Niveau scolaire minimum requis : Diplôme du Baccalauréat Scientifique ou Technique<br />' +
                        'Les qualités et aptitudes que le candidat doit posséder :<br />' +
                        '<br />' +
                        ' - Sens de responsabilité, de l’organisation et de la discipline<br />' +
                        ' - Esprit d’ Autonomie, d’analyse, de créativité et d’initiative<br />' +
                        ' - Aisance en relations humaines<br />' +
                        ' - Maîtrise de soi, Passion pour la technologie et l’ambition pour la promotion professionnelle.<br />' +
                        '<br />' +
                        'Contre-indications à l’exercice du métier handicap physique (problème de colonne vertébrale), problème de vue ou de distinction de couleur, maladie du cœur, maladies nerveuses, asthme.<br />' +
                        'Mode de sélection des candidats :<br />' +
                        ' - Dossier d’orientation à remplir<br />' +
                        ' - Entretiens après présélection.',
                'A l’issue de la formation, le lauréat sera en mesure d’exécuter les activités suivantes :<br />' +
                        ' - Assurer la maintenance préventive et curative des machines<br />' +
                        ' - Assurer la maintenance des outillages<br />' +
                        ' - Participer à la conception et l’amélioration des outillages<br />' +
                        ' - Gérer les pièces de rechange<br />' +
                        ' - Respecter la sécurité et la qualité'),
        ('Technicien Spécialisé en Production et Qualité en Automobile','','',
                '',
                'Le Technicien Qualité en Automobile interrdent sous I’autorité directe du Responsable qualité.<br />' +
                        'exerce ses activites dans des enteprises diversifiées, de taille moyenne. Il est rattaché au service<br />' +
                        'qualité constituée d’equipes d’un à plusieurs salariés specialisés.<br />' +
                        'Les entreprises d’équipEmentiers sont majoritairement certifiées atu( normes et spécifications liees<br />' +
                        'à la production automobile.<br />' +
                        'Le Technicien qualité en automobile joue un rôle fondamental dans les domaines suivants<br />' +
                        ' - Suivi de la qualité < fournisseurs > (AQF)<br />' +
                        ' - Suivi de la qualité < production > (AQP)<br />' +
                        ' - Suivi de la qualité < Clients ><br />' +
                        ' - Suivi des < nouveaux projets ><br />' +
                        'Homme ou femme de terrain, il fait viwe les procédures et anime les réunions qualité. Il participe<br />' +
                        'aussi à l’élaboration des règles de qualité e’n lien avec la politique de I’e,ntreprise.<br />' +
                        'Le Technicien qualité en automobile<br />' +
                        ' - Étalonne et éventuellement étudie et conçoit les moyens à mettre en æuvre pogr effectuer les ' +
                        'contrôles qualité à tous les stades de la fabrication et de l’élaboration du produit, en fonction ' +
                        'des spécifications particulieres à I’automobile. <br />' +
                        ' - S’assure que les non conformités au:r nonnes et spécifications du client soient clairernent' +
                        'identifiées, les causes recherchées, et que les actions correctives soient mises en place.' +
                        'Les responsabilités confiées au Technicien quatité en automobile sont frès importantes et exigent ' +
                        'un savoir-faire permettant, de respecter les exigences de rapidité et de qualité exigées dans le' +
                        'secteur automobile. Des aptitudes de communication et d’échanges sont nécessaires afin de' +
                        'commr niquer avec les fournisseurs, avec les clients et avec les utilisateurs des équipernents et les' +
                        'se,nrices production.<br />' +
                        'Ses capacités d’analyse et de synthese ainsi que son esprit d’initiative doivelrt lui permettre' +
                        '<< Force de proposition ) potn améliorer la qualité des équipements' +
                        'et les perforrrances de' +
                        'd’êhe' +
                        'l’entreprise. <br />' +
                        'C’est un professionnel rigor:reux, méthodique et organisé, gui a le souci pennanent de la qualité' +
                        'des relations humaines et du respect des autes. Il a une vision globale de I’enheprise et sait situer' +
                        'I’importance de sa fonction au sein de I’enheprise.' +
                        'Il peut être amené à assurer la formation' +
                        'des nouveaux techniciens et des operategrs qualité. Il doit' +
                        's’interesser au:r évolutions des techniques, afin de s’adapter rapidernent arD( nouvealx' +
                        'equiperrents et à l’évolution des moyens de contrôle.<br />' +
                        ' - Véritable animateur de la qualité, le technicien qualité de la production automobile exerce ' +
                        'son activité en lien étroit avec I’enserrble des salaries de I’entreprise qu’il sensibilise à ' +
                        'I’assurance qualité. son tavail est supervisé par le responsable quahté.',
                'La durée de la fonnation est de 390 H étalée sur 3 mois en mode résidentiel.',
                'Cette formation est destinée essentiellerrent aux lauréats des filiàes TSMpeA et TCeA ' +
                        'désirant se perfectionner et se metfre à niveau dans le domaine de la qualité automobile.',
                'Le Technicien qualité en automobile à pour activités principales de :<br />' +
                        ' - Participer à la définition et à la promotion de la politique qualité.<br />' +
                        ' - Assurer la qualité des produits réalisés<br />' +
                        ' - Traiter les non confonnités.<br />' +
                        ' - Réaliser des audits internes de qualité<br />' +
                        ' - Participer au changement ou à la modification de produits.<br />' +
                        ' - Gerer les relations qualités avec les fournisseurs.<br />' +
                        ' - Mettre en place des améliorations.<br />' +
                        ' - Tenir à jour la documentation qualité.<br />' +
                        ' - Former les intenrenants au système qualité.'),
        ('Technicien Spécialisé Bureau d’Etude en Construction Métallique','','','',
                'La mission principale du Technicien Spécialisé du Bureau d’Etude en Construction Métallique est de participer à la conception et à l’étude d’ensembles en construction métallique. Il peut également Préparer et organiser la fabrication de prototypes.',
                'Le lauréat peut être employé par des établissements de nature et d’importance les plus diverses allant de l’entreprise artisanale à la grande société industrielle.Le Technicien Spécialisé de Bureau d’Etude en Construction Métallique est amené à exercer dans :<br />' +
                        '<br />' +
                        ' - Un bureau d’Etude<br />' +
                        ' - Un service méthode ou de préparation du travail<br />' +
                        ' - Un bureau de gestion de production<br />' +
                        ' - Un service gestion de la qualité<br />' +
                        ' - Dans des chantiers',
                'Age limite : 23 ans<br />' +
                        'Niveau scolaire minimum requis : Diplôme du Baccalauréat Scientifique ou Technique<br />' +
                        'Les qualités et aptitudes que le candidat doit posséder :<br />' +
                        '<br />' +
                        ' - Sens de responsabilité, de l’organisation et de la discipline<br />' +
                        ' - Esprit d’ Autonomie, d’analyse, de créativité et d’initiative<br />' +
                        ' - Aisance en relations humaines<br />' +
                        ' - Maîtrise de soi, Passion pour la technologie et l’ambition pour la promotion professionnelle.<br />' +
                        '<br />' +
                        'Mode de sélection des candidats :<br />' +
                        ' - Dossier d’orientation à remplir<br />' +
                        ' - Entretiens après présélection',
                ''),
        ('Usinage sur MOCN option METHODE FAO Outillage de presse','','','',
                'Le technicien Spécialisé en Usinage sur MOCN effectue des tâches polyvalentes dans le domaine de l’usinage, de la préparation des moyens, de la conduite des machines et du suivi de la production. Il exerce son métier dans des entreprises spécialisées en usinage dans le domaine aéronautique mais pas uniquement , il peut, aussi, apporter son expertise dans des entreprises aux activités industrielles diversifiées où la fabrication de pièces par enlèvement de matière est l’une des activités.<br />' +
                        'D’un travail très technique où la dextérité de l’opérateur était prépondérante, on arrive à un métier plus « automatisé » qui fait appel à des moyens de haute technologie s’appuyant sur des machines très performantes avec des chaînes numériques et des systèmes asservis. Les pièces usinées sont de plus en plus complexes d’un point de vue morphologique et dimensionnel, les matériaux évoluent en permanence pour atteindre des niveaux de caractéristiques mécaniques très élevés les rendant plus difficiles à usiner. La concurrence internationale pousse à une recherche permanente de la productivité maximale.',
                'Le mode de formation est résidentiel ou alterné. La durée de formation est deux années incluant des stages en entreprise.',
                'Age maximum : 26  ans pour les bacheliers et 30 ans pour les licenciés<br />' +
                        ' - Niveau Scolaire : Baccalauréat scientifique ou technique<br />' +
                        ' - Les qualités et aptitudes que le candidat doit posséder pour l’accès à cette formation sont :<br />' +
                        ' - Sens des responsabilités, de l’organisation et de la discipline ,<br />' +
                        ' - Esprit d’autonomie, d’analyse, de créativité et d’initiative,<br />' +
                        ' - Bonnes relations humaines ,<br />' +
                        ' - Maîtrise de soi, motivation pour la technologie et ambition pour la promotion professionnelle.<br />' +
                        ' - Contre - indications : handicap physique (problème de colonne vertébrale), problème de vue ou de distinction de couleur, maladie du cœur, maladies nerveuses.<br />' +
                        ' - Mode de sélection des candidats à la formation :<br />' +
                        '      ◦ Remplissage du dossier d’orientation ,<br />' +
                        '      ◦ Réussite aux entretiens après présélection.',
                'A l’issue de la formation, le stagiaire sera en mesure d’exécuter les tâches suivantes :<br />' +
                        ' - Préparer la fabrication (choix d’outils et de conditions de coupe, gamme d’usinage, définition des montages porte-pièces, élaboration de programmes CN, contrôle, …)<br />' +
                        ' - Mettre en œuvre la production (création des montages porte-pièces, des outils assemblés, vérification des programmes, …)<br />' +
                        ' - Piloter les machines (démarrage machine, téléchargement des programmes, analyse de la fabrication, mise en route, surveillance du bon déroulement, modification et adaptation si nécessaire, lien avec la supervision ou l’ordonnancement)<br />' +
                        ' - Contrôler la fabrication<br />' +
                        ' - Assurer la remontée d’information<br />' +
                        ' - Promouvoir l’amélioration continue<br />' +
                        ' - Gérer les aléas de productio'),
        ('Usinage sur MOCN option USINAGE Outillage de presse','','','',
                'Le Technicien Spécialisé en Usinage sur MOCN Option : usinage outillage de presse effectue des tâches polyvalentes dans le domaine de l’usinage, de la préparation des moyens, de la conduite des machines et du suivi de la production. Il exerce son métier dans des entreprises du secteur automobile spécialisées en usinage d’outillage de presse. Il peut, aussi, apporter son expertise dans des entreprises aux activités industrielles diversifiées où la fabrication de pièces sur MOCN est l’une des activités principales.<br />' +
                        '<br />' +
                        'D’un travail très technique où la dextérité de l’opérateur est prépondérante, on arrive à un métier « automatisé » qui fait appel à des moyens de haute technologie utilisant des machines très performantes avec des chaînes numériques et des systèmes asservis. Dans un contexte internationale caractérisé par une vive concurrence, les opérateurs du secteurs sont à la recherche permanente de la productivité maximale. Les pièces usinées sont de plus en plus complexes d’un point de vue morphologique et dimensionnel. Les matériaux évoluent en permanence pour atteindre des niveaux de caractéristiques mécaniques très élevés les rendant plus difficiles à usiner.',
                'Après quelques années d’expérience et après avoir démontré ses compétences professionnelles, le technicien spécialisé en usinage sur MOCN Option : USINAGE Outillage de presse pourra évoluer vers le poste de responsable d’atelier de fabrication ou de bureau de méthodes. Cette formation lui permettra également de travailler dans toute entreprise où l’activité d’usinage sur MOCN est présente.',
                '<br />' +
                        '<br />' +
                        'Age maximum : 23 ans<br />' +
                        'Niveau Scolaire : Baccalauréat scientifique ou technique<br />' +
                        'Les qualités et aptitudes que le candidat doit posséder :<br />' +
                        '<br />' +
                        ' - Sens des responsabilités, de l’organisation et de la discipline<br />' +
                        ' - Esprit d’autonomie, d’analyse, de créativité et d’initiative<br />' +
                        ' - Bonnes relations humaines<br />' +
                        ' - Maîtrise de soi, motivation pour la technologie et ambition pour la promotion professionnelle<br />' +
                        '<br />' +
                        'Contre-indications : handicap physique (problème de colonne vertébrale), problème de vue ou de distinction de couleur, maladie du cœur, maladies nerveuses.<br />' +
                        '<br />' +
                        'Mode de sélection des candidats à la formation :<br />' +
                        '<br />' +
                        ' - Remplissage du dossier d’orientation<br />' +
                        ' - Réussite aux entretiens après présélection',
                ''),
        ('Mécatronique','','','',
                'Le "Technicien Spécialisé en Mécatronique (aéronautique/automobile)" intervient dans des différentes opérations liées au domaine de l’aéronautique et l’automobile, à savoir:<br />' +
                        'les équipements électroniques, électriques, électromécaniques, pneumatiques ou hydrauliques, le câblage électrique, les instruments de bord, la radionavigation, le pilotage automatique et le système radar etc.Il exerce son métier dans des entreprises spécialisées dans la fourniture de composants pour l’aéronautique/l’automobile avec une partie câblage électrique ou cartes électroniques. Il peut travailler au sein d’entreprises qui opérent dans le secteur industriel dans les domaines aéronautique/automobile, et disposent du matériel de production avec une dimension électrique importante. C’est un métier qui requiert de la polyvalence pour mener à bien différentes opérations. Parmi les activités qui incombent au Technicien Spécialisé en Mécatronique dans le domaine de la production ou l’installation des composants électriques et électroniques, Il gère:<br />' +
                        'le câblage, l’installation des connecteurs, la soudure des différents composants, la conduction des machines, le contrôle des systèmes, la maintenance préventuve, les visites, la mesure des grandeurs, l’établissement des bons de travaux, la saisie des données, le diagnostic, la détection des pannes, la réparation et le changement des organes, l’entretien des équipements électriques, la conduite d’études, le chiffrage, l’assemblage de tout type de composants (électriques, électroniques, hydrauliques, pneumatiques etc.), et la réalisation de schémas électriques. En plus de l’installation, la vérification et le montage, Il fait des essais sur le produit. Au niveau des équipements de production, le Technicien opère plus précisément sur des armoires de commande, des moteurs, des automates programmables, des variateurs de vitesse, des valves, des pompes, des systèmes hydrauliques, des systèmes pneumatiques, des convoyeurs, des éléments de transmission. En vue de garantir le bon fonctionnement des équipements, Il vérifie la conformité et le fonctionnement d’un équipement nouvellement installé, et procède à de nombreuses tâches telles que la validation de l’architecture d’un automatisme, l’ajustement ou l’étalonnement des chaînes de régulation, la programmation des automates. Il apporte toute modification nécessaire à la chaîne de production et participe à des arrêts de maintenance.',
                'Ce technicien spécialisé doit être très autonome, posséder une maturité d’esprit et avoir une bonne présentation. Il doit être disponible, méthodique et posséder une bonne faculté d’observation et de déduction.Les techniciens Spécialisés de Mécatronique (aéronautique/automobile) exercent leurs fonctions dans les entreprises manufacturières et les industries de production. Ils sont à l’emploi de moyennes et grosses entreprises possédant un parc d’équipements qui permet le contrôle et la commande des procédés industriels. Ces techniciens sont employés surtout par les entreprises possédant des systèmes de mesure de grandeurs physiques et de contrôle des procédés. La marge de manœuvre dont ils disposent s’inscrit dans le cadre des limites imposées par la réglementation, les méthodes de travail de l’entreprise et les certifications dont elle dispose.',
                'Age limite : 26 ans pour les bacheliers et 30 ans<br />' +
                        'pour les licenciés<br />' +
                        'Niveau scolaire minimum requis : Diplôme du Baccalauréat Scientifique ou Technique<br />' +
                        'Les qualités et aptitudes que le candidat doit posséder :<br />' +
                        '<br />' +
                        ' - Sens de responsabilité, de l’organisation et de la discipline<br />' +
                        ' - Esprit d’ Autonomie, d’analyse, de créativité et d’initiative<br />' +
                        ' - Aisance en relations humaines<br />' +
                        ' - Maîtrise de soi, Passion pour la technologie et ambition pour la promotion professionnelle<br />' +
                        '<br />' +
                        'Contre-indications pour exercer ce métier : handicap physique (problème de colonne vertébrale), problème de vue ou de distinction de couleur, maladie du cœur, maladie nerveuse.<br />' +
                        'Mode de sélection des candidats :<br />' +
                        '<br />' +
                        ' - Dossier d’orientation à remplir<br />' +
                        ' - Entretiens après présélection',
                'A l’issue de la formation le technicien spécialisé doit être capable de :<br />'+
                        ' - Veiller au bon fonctionnement des équipements électroniques et électriques de l’aéronef/automobile et notamment des instruments de bord, de la radionavigation, du pilotage automatique, du système radar, des câblages électriques<br />' +
                        ' - Effectuer des opérations de contrôle<br />' +
                        ' - Câbler des composants électriques<br />' +
                        ' - Installer des composants électroniques sur des cartes<br />' +
                        ' - Tester le fonctionnement de systèmes électriques ou électromécaniques<br />' +
                        ' - Installer des connecteurs<br />' +
                        ' - Souder des composants<br />' +
                        ' - Effectuer la maintenance de premier niveau<br />' +
                        ' - Installer des isolants électriques<br />' +
                        ' - Créer et analyser des schémas électriques<br />' +
                        ' - Intervenir sur des réseaux de transmission de données<br />' +
                        ' - Mesurer des grandeurs électriques<br />' +
                        ' - Calibrer des signaux<br />' +
                        ' - Installer des armoires électriques<br />' +
                        ' - Installation électriques, hydrauliques, pneumatiques<br />' +
                        ' - Détecter une panne ou un dysfonction des préactionneurs et actionneurs (étonnement<br />' +
                        ' - Décider des réparations à effectuer après un diagnostic<br />' +
                        ' - Déposer/reposer, monter/démonter, entretenir, Repérer les systèmes avionique<br />' +
                        ' - Effectuer, lire et Interpréter des relevés de paramètres<br />' +
                        ' - Maîtriser l’utilisation de matériels de mesure pour effectuer des tests<br />' +
                        ' - Respecter les engagements de qualité, coûts et délais<br />' +
                        ' - Participer au lancement d’une nouvelle production<br />' +
                        ' - Gérer une production<br />' +
                        ' - Encadrer le personnel d’exécution et contrôler son travail<br />' +
                        ' - Lire un plan et appliquer avec rigueur la documentation technique<br />' +
                        ' - Réaliser des documents techniques<br />' +
                        ' - Lire l’anglais technique<br />' +
                        ' - Organiser ses interventions')