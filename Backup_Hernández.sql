-- MySQL dump 10.13  Distrib 8.0.29, for Linux (x86_64)
--
-- Host: localhost    Database: leon_labs
-- ------------------------------------------------------
-- Server version	8.0.31-0ubuntu0.22.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping data for table `deposito_insumos`
--

LOCK TABLES `deposito_insumos` WRITE;
/*!40000 ALTER TABLE `deposito_insumos` DISABLE KEYS */;
INSERT INTO `deposito_insumos` VALUES (1,'OCTINOXATE and TITANIUM DIOXIDE',66.00,856.91,'2020-03-08','2020-09-08'),(2,'povidone-iodine',56.00,824.46,'2020-03-04','2020-09-04'),(3,'Titanium Dioxide',88.00,877.35,'2020-03-10','2020-09-10'),(4,'phenylephrine hcl',48.00,392.46,'2020-03-09','2020-09-09'),(5,'erythromycin',10.00,840.58,'2020-02-13','2020-08-13'),(6,'midodrine hydrochloride',92.00,475.04,'2020-03-06','2020-09-06'),(7,'Antiperspirant and Deodorant',90.00,245.61,'2020-02-03','2020-08-03'),(8,'House Fly',95.00,665.65,'2020-03-12','2020-09-12'),(9,'Eucalyptus e fol. 5',42.00,220.14,'2020-03-15','2020-09-15'),(10,'Alcohol',45.00,529.01,'2020-01-07','2020-07-07'),(11,'Titanium Dioxide',93.00,624.52,'2020-01-14','2020-07-14'),(12,'Etodolac',59.00,457.44,'2020-01-28','2020-07-28'),(13,'quetiapine fumarate',80.00,938.38,'2020-03-29','2020-09-29'),(14,'Pseudoephedrine Hydrochloride',46.00,715.07,'2020-01-21','2020-07-21'),(15,'Dextromethorphan HBr',52.00,218.28,'2020-03-15','2020-09-15'),(16,'thioridazine hydrochloride',51.00,706.64,'2020-01-17','2020-07-17'),(17,'Ampicillin',14.00,590.03,'2020-02-13','2020-08-13'),(18,'OXYGEN',2.00,994.27,'2020-03-14','2020-09-14'),(19,'spironolactone',57.00,903.63,'2020-01-16','2020-07-16'),(20,'Folliculinum, ',77.00,213.48,'2020-01-25','2020-07-25');
/*!40000 ALTER TABLE `deposito_insumos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
INSERT INTO `empleados` VALUES (1,'Fredrika','Heffernan','F','8 Hansons Hill',2,'Clásica','Produccion','Operario',2,20,1000.00,'2002-07-15'),(2,'Tildie','Langsdon','F','7686 Harbort Street',3,'Clásica','Produccion','Operario',2,20,1000.00,'2002-07-19'),(3,'Alexio','Gertz','M','46352 Burning Wood Drive',0,'Minuta','Produccion','Operario',4,20,1000.00,'2002-11-21'),(4,'Ferrel','Verick','M','7816 Commercial Trail',1,'Clásica','Produccion','Operario',1,20,1000.00,'2003-02-28'),(5,'Devinne','Panas','F','943 1st Trail',4,'Clásica','Produccion','Operario',2,19,1000.00,'2003-08-10'),(6,'Dave','Brennen','M','6 Dahle Parkway',3,'Minuta','Produccion','Supervisor',4,19,3000.00,'2003-12-09'),(7,'Deonne','Pleasants','F','2 Arkansas Crossing',2,'Clásica','Administración','Operario',0,19,1000.00,'2004-02-24'),(8,'Mikaela','Benns','F','82337 Becker Junction',4,'Clásica','Produccion','Operario',2,19,1000.00,'2004-02-29'),(9,'Antonie','Measures','F','258 Hayes Street',4,'Clásica','Control de Calidad','Operario',0,19,1000.00,'2004-03-08'),(10,'Dalt','Wellard','M','58 Ridge Oak Way',0,'Minuta','Produccion','Operario',3,18,1000.00,'2004-05-30'),(11,'Flinn','Minghi','M','3 Thackeray Hill',4,'Clásica','Administración','Supervisor',0,18,3000.00,'2004-06-06'),(12,'Mata','Reding','M','5792 Sundown Circle',2,'Minuta','Administración','Operario',0,18,1000.00,'2004-07-03'),(13,'Abie','Yggo','M','1072 Huxley Junction',2,'Celiacos','Produccion','Supervisor',4,18,3000.00,'2004-07-13'),(14,'Jemmie','Setchfield','F','451 Blaine Drive',1,'Clásica','Produccion','Operario',4,18,1000.00,'2004-08-06'),(15,'Gonzales','Arsmith','M','567 Express Court',0,'Celiacos','Micro-biología','Supervisor',0,18,3000.00,'2004-12-16'),(16,'Elonore','Eddis','F','0 Westerfield Terrace',4,'Clásica','Control de Calidad','Operario',0,18,1000.00,'2005-03-13'),(17,'Laural','Mayou','F','686 Helena Park',2,'Clásica','Produccion','Operario',3,18,1000.00,'2005-05-08'),(18,'Saundra','Fruin','M','06 Fallview Terrace',0,'Clásica','Micro-biología','Operario',0,17,1000.00,'2005-09-18'),(19,'Derry','Gourlie','M','2 Vidon Way',2,'Vegetariana','Administración','Operario',0,17,1000.00,'2005-11-12'),(20,'Abigael','Sirey','F','4776 Trailsway Terrace',1,'Celiacos','Micro-biología','Operario',0,17,1000.00,'2006-01-22'),(21,'Audre','Rymour','F','8 Heath Way',3,'Clásica','Mantenimiento','Operario',0,17,1000.00,'2006-03-14'),(22,'Tiff','Sparrowe','F','495 Di Loreto Pass',0,'Minuta','Micro-biología','Operario',0,17,1000.00,'2006-04-01'),(23,'Stanford','Downing','M','0071 Fremont Hill',0,'Clásica','Mantenimiento','Operario',0,17,1000.00,'2006-04-04'),(24,'Roxane','Rignold','F','96 Crest Line Avenue',1,'Clásica','Produccion','Operario',4,16,1000.00,'2006-06-23'),(25,'Harman','Yair','M','27 Anthes Lane',1,'Minuta','Produccion','Supervisor',2,16,3000.00,'2006-11-23'),(26,'Vivianne','Riby','F','420 Burrows Pass',3,'Clásica','Administración','Operario',0,16,1000.00,'2007-03-29'),(27,'Fabe','Dahler','M','6761 Sundown Way',0,'Minuta','Produccion','Operario',2,16,1000.00,'2007-04-21'),(28,'Shelton','Lloyd','M','3 Oak Parkway',1,'Minuta','Mantenimiento','Operario',0,15,1000.00,'2008-01-17'),(29,'Benson','Doughton','M','609 Annamark Road',0,'Minuta','Produccion','Operario',3,15,1000.00,'2008-01-22'),(30,'Kristin','Lamb-shine','F','2 Sycamore Court',0,'Clásica','Produccion','Operario',3,15,1000.00,'2008-03-05'),(31,'Conrad','Thomsson','M','083 Iowa Court',1,'Clásica','Administración','Operario',0,14,1000.00,'2008-07-14'),(32,'Aili','Ginglell','F','2797 Autumn Leaf Circle',0,'Clásica','Produccion','Operario',2,14,1000.00,'2008-09-07'),(33,'Eleanor','Pebworth','F','027 Dahle Point',2,'Clásica','Mantenimiento','Supervisor',0,14,3000.00,'2008-11-21'),(34,'Tedd','Strutt','M','8 Elmside Alley',3,'Clásica','Produccion','Operario',3,14,1000.00,'2009-01-07'),(35,'Eugenie','Daouze','F','5480 Garrison Court',2,'Minuta','Control de Calidad','Supervisor',0,14,3000.00,'2009-02-07'),(36,'Aldin','Sikorsky','M','0657 Lakeland Terrace',0,'Clásica','Produccion','Operario',1,14,1000.00,'2009-03-04'),(37,'Emerson','Basili','M','52 Rockefeller Road',2,'Celiacos','Micro-biología','Operario',0,14,1000.00,'2009-04-04'),(38,'Guy','Jamot','M','4 Vahlen Junction',1,'Clásica','Mantenimiento','Operario',0,13,1000.00,'2009-07-06'),(39,'Cherin','Elliff','F','455 Hoard Court',1,'Clásica','Produccion','Operario',4,13,1000.00,'2009-08-16'),(40,'Lionello','Biswell','M','11 Pawling Alley',3,'Vegetariana','Administración','Operario',0,13,1000.00,'2010-01-13'),(41,'Kissie','Bythway','F','33329 Drewry Parkway',2,'Clásica','Control de Calidad','Operario',0,12,1000.00,'2010-06-27'),(42,'Mollie','MacCartney','F','33 Holmberg Pass',4,'Clásica','Control de Calidad','Operario',0,12,1000.00,'2010-07-23'),(43,'Donna','MacKissack','F','01242 Melrose Road',4,'Minuta','Mantenimiento','Operario',0,12,1000.00,'2010-09-08'),(44,'Maribelle','Schulz','F','7048 Debra Road',3,'Minuta','Produccion','Supervisor',1,12,3000.00,'2010-09-28'),(45,'Irita','Yesichev','F','39 Canary Terrace',2,'Clásica','Control de Calidad','Operario',0,12,1000.00,'2011-02-11'),(46,'Joye','Westerman','F','8 Drewry Crossing',1,'Clásica','Control de Calidad','Operario',0,12,1000.00,'2011-03-02'),(47,'Janey','Kreutzer','F','87853 Prentice Avenue',2,'Vegetariana','Produccion','Operario',2,12,1000.00,'2011-03-07'),(48,'De','Yglesia','F','68 Starling Avenue',0,'Clásica','Micro-biología','Operario',0,11,1000.00,'2011-06-13'),(49,'Nikolia','Buer','F','76680 Ridgeview Circle',1,'Minuta','Administración','Operario',0,11,1000.00,'2011-08-11'),(50,'Cristian','Weatherell','M','537 Center Circle',1,'Clásica','Control de Calidad','Operario',0,11,1000.00,'2012-03-04'),(51,'Leonid','Brando','M','20 Shasta Plaza',2,'Vegetariana','Micro-biología','Operario',0,10,1000.00,'2012-07-22'),(52,'Alphonse','Korejs','M','79761 Mallory Crossing',4,'Clásica','Mantenimiento','Supervisor',0,10,3000.00,'2013-05-19'),(53,'Darryl','Stent','F','59 Hazelcrest Parkway',2,'Clásica','Control de Calidad','Operario',0,9,500.00,'2013-06-14'),(54,'Klara','Donett','F','8 Old Gate Pass',1,'Clásica','Mantenimiento','Operario',0,9,500.00,'2013-07-18'),(55,'Eduino','Backes','M','0504 3rd Place',1,'Clásica','Produccion','Operario',3,9,500.00,'2013-09-29'),(56,'Vina','Francioli','F','3060 High Crossing Alley',2,'Celiacos','Produccion','Operario',1,9,500.00,'2014-03-18'),(57,'Mord','Denning','M','958 Vera Junction',1,'Clásica','Produccion','Supervisor',2,8,2000.00,'2014-10-16'),(58,'Aymer','Sinott','M','20 Roxbury Crossing',4,'Clásica','Produccion','Operario',2,8,500.00,'2014-12-24'),(59,'Harriot','McCurry','F','4268 Monument Alley',4,'Vegetariana','Produccion','Operario',4,8,500.00,'2015-01-08'),(60,'Milo','Fenne','M','78 Canary Alley',2,'Vegetariana','Control de Calidad','Supervisor',0,8,2000.00,'2015-02-08'),(61,'Domeniga','Ravenhill','F','5407 Northland Street',2,'Clásica','Administración','Operario',0,8,500.00,'2015-02-17'),(62,'Vi','Mongan','F','88 Lake View Way',2,'Clásica','Produccion','Operario',1,8,500.00,'2015-02-24'),(63,'Kain','McKinnon','M','542 Logan Way',4,'Vegetariana','Produccion','Operario',2,8,500.00,'2015-04-05'),(64,'Regan','Jandel','M','9609 Blaine Alley',1,'Vegetariana','Produccion','Operario',3,8,500.00,'2015-04-23'),(65,'Delora','Brosel','F','48 Duke Center',2,'Celiacos','Produccion','Operario',4,7,500.00,'2016-01-11'),(66,'Laurella','McGlade','F','22771 Merchant Drive',2,'Minuta','Administración','Operario',0,6,500.00,'2016-05-27'),(67,'Douglass','Harrap','M','2 Lakewood Hill',4,'Minuta','Produccion','Operario',4,6,500.00,'2016-06-09'),(68,'Julius','Cowen','M','1 Merry Road',0,'Minuta','Administración','Operario',0,6,500.00,'2016-06-28'),(69,'Ibby','Whether','F','65142 Fair Oaks Pass',3,'Clásica','Control de Calidad','Operario',0,6,500.00,'2016-06-29'),(70,'Jocko','Lecky','M','5 Anderson Center',2,'Clásica','Micro-biología','Operario',0,6,500.00,'2016-07-13'),(71,'Arliene','Pyer','F','070 Graceland Circle',2,'Minuta','Produccion','Operario',4,6,500.00,'2016-10-03'),(72,'Wilfrid','Mickleburgh','M','171 Northport Crossing',2,'Vegetariana','Micro-biología','Operario',0,6,500.00,'2017-01-06'),(73,'Rosanna','Bette','F','671 Harbort Way',1,'Clásica','Produccion','Operario',3,6,500.00,'2017-03-18'),(74,'Idalia','Casetta','F','644 Maywood Junction',2,'Vegetariana','Produccion','Operario',1,6,500.00,'2017-04-30'),(75,'Deerdre','Flemyng','F','61 Arkansas Crossing',2,'Celiacos','Produccion','Operario',2,5,500.00,'2017-08-19'),(76,'Matias','Sibbit','M','8372 Commercial Crossing',3,'Celiacos','Produccion','Operario',1,5,500.00,'2017-09-01'),(77,'Karalynn','McCarrison','F','911 Namekagon Drive',0,'Minuta','Produccion','Operario',4,5,500.00,'2017-10-22'),(78,'Felipe','Venediktov','M','83101 Raven Way',0,'Clásica','Mantenimiento','Operario',0,5,500.00,'2017-11-23'),(79,'Aurthur','Van den Hof','M','562 Thompson Junction',1,'Clásica','Produccion','Operario',4,5,500.00,'2017-12-19'),(80,'Augustine','Premble','M','63 Porter Trail',2,'Minuta','Produccion','Operario',4,5,500.00,'2018-02-15'),(81,'Bobinette','Vials','F','71 Del Sol Street',0,'Clásica','Control de Calidad','Operario',0,4,500.00,'2018-06-18'),(82,'Leonerd','Esson','M','546 Gerald Road',1,'Clásica','Produccion','Operario',4,4,500.00,'2018-09-17'),(83,'Alena','Knappe','F','93865 Northland Circle',4,'Vegetariana','Administración','Operario',0,4,500.00,'2018-12-07'),(84,'Alessandro','Maty','M','3 Beilfuss Park',0,'Celiacos','Control de Calidad','Operario',0,4,500.00,'2019-01-12'),(85,'Morgen','Brocklesby','F','99384 Melrose Court',0,'Vegetariana','Micro-biología','Operario',0,4,500.00,'2019-02-24'),(86,'Patrick','Teape','M','674 Fairview Plaza',2,'Vegetariana','Mantenimiento','Supervisor',0,4,2000.00,'2019-05-12'),(87,'Viviana','Doniso','F','98 Clyde Gallagher Hill',4,'Clásica','Produccion','Supervisor',2,3,2000.00,'2019-11-11'),(88,'Lenora','Tonks','F','210 Bay Road',0,'Clásica','Produccion','Operario',3,3,500.00,'2019-12-25'),(89,'Olag','Knibb','M','45 Moose Alley',0,'Minuta','Produccion','Supervisor',4,3,2000.00,'2020-01-17'),(90,'Philippe','Spon','F','56707 Forest Point',4,'Minuta','Micro-biología','Operario',0,2,500.00,'2020-05-22'),(91,'Land','Rollinshaw','M','27 Judy Alley',2,'Clásica','Produccion','Operario',3,2,500.00,'2020-08-11'),(92,'Lezlie','Breawood','F','681 Debs Center',1,'Minuta','Produccion','Supervisor',4,2,2000.00,'2021-01-22'),(93,'Gaylene','Mackriell','F','08 Hintze Lane',3,'Clásica','Mantenimiento','Supervisor',0,2,2000.00,'2021-02-21'),(94,'Sibel','Golt','F','43 Morrow Way',1,'Minuta','Mantenimiento','Operario',0,1,500.00,'2021-05-26'),(95,'Danie','Foxall','M','45 Oriole Way',2,'Vegetariana','Produccion','Operario',2,1,500.00,'2021-07-28'),(96,'Demeter','Haggerstone','F','85 Sachtjen Center',0,'Minuta','Micro-biología','Operario',0,1,500.00,'2021-09-10'),(97,'Chan','Stilgoe','M','1026 Merry Court',1,'Clásica','Control de Calidad','Operario',0,1,500.00,'2021-10-02'),(98,'Markus','Dorsey','M','3 Granby Parkway',4,'Minuta','Micro-biología','Operario',0,0,500.00,'2022-06-06'),(99,'Catherin','Dunsmuir','F','919 Dexter Parkway',0,'Clásica','Produccion','Operario',4,0,500.00,'2022-06-21'),(100,'Prue','Kiln','F','8 Meadow Vale Circle',1,'Vegetariana','Mantenimiento','Operario',0,0,500.00,'2022-08-14');
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `envios`
--

LOCK TABLES `envios` WRITE;
/*!40000 ALTER TABLE `envios` DISABLE KEYS */;
INSERT INTO `envios` VALUES (1,'China','Oyondu',2177.22,'2020-06-30'),(2,'Brazil','Mymm',2958.14,'2020-03-12'),(3,'Czech Republic','Quaxo',2841.13,'2020-06-06'),(4,'Venezuela','Youbridge',2053.51,'2020-05-20'),(5,'Malaysia','Meembee',1739.66,'2020-04-10'),(6,'Indonesia','Dablist',2404.00,'2020-06-02'),(7,'Indonesia','Meemm',2791.46,'2020-07-24'),(8,'Portugal','Npath',2796.34,'2020-06-01'),(9,'Canada','Youspan',2284.45,'2020-04-27'),(10,'United States','Cogibox',2945.36,'2020-06-11'),(11,'Philippines','Livetube',2463.35,'2020-06-20'),(12,'United States','Flashspan',2150.92,'2020-06-09'),(13,'Indonesia','Divavu',2628.07,'2020-07-23'),(14,'Guam','Avamba',2246.53,'2020-07-08'),(15,'Poland','Babbleset',1229.06,'2020-07-03'),(16,'France','Eadel',1161.84,'2020-08-03'),(17,'Portugal','Gabtune',2871.51,'2020-08-17'),(18,'China','Twitternation',1071.67,'2020-09-20'),(19,'Venezuela','Quinu',1782.82,'2020-09-19'),(20,'Mexico','Flipstorm',2259.39,'2020-08-14');
/*!40000 ALTER TABLE `envios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `fechas`
--

LOCK TABLES `fechas` WRITE;
/*!40000 ALTER TABLE `fechas` DISABLE KEYS */;
INSERT INTO `fechas` VALUES ('2020-03-12','2020-03-12','CUMPLIO'),('2020-04-10','2020-04-10','CUMPLIO'),('2020-04-27','2020-04-27','CUMPLIO'),('2020-05-20','2020-05-20','CUMPLIO'),('2020-06-01','2020-06-01','CUMPLIO'),('2020-06-02','2020-06-02','CUMPLIO'),('2020-06-06','2020-06-06','CUMPLIO'),('2020-06-09','2020-06-09','CUMPLIO'),('2020-06-11','2020-06-11','CUMPLIO'),('2020-06-20','2020-06-20','CUMPLIO'),('2020-06-24','2020-06-30','NO CUMPLIO'),('2020-07-03','2020-07-03','CUMPLIO'),('2020-07-08','2020-07-08','CUMPLIO'),('2020-07-23','2020-07-23','CUMPLIO'),('2020-07-24','2020-07-24','CUMPLIO'),('2020-08-03','2020-08-03','CUMPLIO'),('2020-08-14','2020-08-14','CUMPLIO'),('2020-08-17','2020-08-17','CUMPLIO'),('2020-09-19','2020-09-19','CUMPLIO'),('2020-09-20','2020-09-20','CUMPLIO');
/*!40000 ALTER TABLE `fechas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `hijos`
--

LOCK TABLES `hijos` WRITE;
/*!40000 ALTER TABLE `hijos` DISABLE KEYS */;
INSERT INTO `hijos` VALUES (1,1,'Joby',9),(2,1,'Zack',5),(3,2,'Holt',11),(4,2,'Valentina',7),(5,2,'Robbin',6),(6,4,'Hal',19),(7,5,'Tommi',14),(8,5,'Cathleen',17),(9,5,'Thea',7),(10,5,'Albert',13),(11,6,'Happy',5),(12,6,'Adham',18),(13,6,'Melicent',13),(14,7,'Ev',18),(15,7,'Mabel',14),(16,8,'Wittie',21),(17,8,'Obed',5),(18,8,'Jud',14),(19,8,'Patrizius',13);
/*!40000 ALTER TABLE `hijos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `info_lote`
--

LOCK TABLES `info_lote` WRITE;
/*!40000 ALTER TABLE `info_lote` DISABLE KEYS */;
INSERT INTO `info_lote` VALUES ('L-MED-101-22','Cuarentena',1395241),('L-MED-102-22','Aprobado',2304058),('L-MED-103-22','Aprobado',8531405),('L-MED-104-22','Aprobado',3753005),('L-MED-105-22','Aprobado',2085320),('L-MED-106-22','Aprobado',4292923),('L-MED-107-22','Aprobado',8877788),('L-MED-108-22','Aprobado',7289009),('L-MED-109-22','Aprobado',4289669),('L-MED-110-22','Aprobado',4830798),('L-MED-111-22','Aprobado',3802254),('L-MED-112-22','Aprobado',3935427),('L-MED-113-22','Aprobado',8546276),('L-MED-114-22','Aprobado',5876155),('L-MED-115-22','Aprobado',1571052),('L-MED-116-22','Aprobado',5585866),('L-MED-117-22','Aprobado',8713508),('L-MED-118-22','Aprobado',9665757),('L-MED-119-22','Aprobado',1033655),('L-MED-120-22','Aprobado',3814052);
/*!40000 ALTER TABLE `info_lote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `linea_produccion`
--

LOCK TABLES `linea_produccion` WRITE;
/*!40000 ALTER TABLE `linea_produccion` DISABLE KEYS */;
INSERT INTO `linea_produccion` VALUES (1,2,1),(2,2,2),(3,4,3),(4,1,4),(5,2,5),(6,4,6),(7,2,8),(8,3,10),(9,4,13),(10,4,14),(11,3,17),(12,4,24),(13,2,25),(14,2,27),(15,3,29),(16,3,30),(17,2,32),(18,3,34),(19,1,36),(20,4,39),(21,1,44),(22,2,47),(23,3,55),(24,1,56),(25,2,57),(26,2,58),(27,4,59),(28,1,62),(29,2,63),(30,3,64),(31,4,65),(32,4,67),(33,4,71),(34,3,73),(35,1,74),(36,2,75),(37,1,76),(38,4,77),(39,4,79),(40,4,80),(41,4,82),(42,2,87),(43,3,88),(44,4,89),(45,3,91),(46,4,92),(47,2,95),(48,4,99);
/*!40000 ALTER TABLE `linea_produccion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `log`
--

LOCK TABLES `log` WRITE;
/*!40000 ALTER TABLE `log` DISABLE KEYS */;
INSERT INTO `log` VALUES (1,'Fredrika','Heffernan','Crear','root@localhost','2022-11-19 21:41:45'),(2,'Tildie','Langsdon','Crear','root@localhost','2022-11-19 21:41:45'),(3,'Alexio','Gertz','Crear','root@localhost','2022-11-19 21:41:45'),(4,'Ferrel','Verick','Crear','root@localhost','2022-11-19 21:41:45'),(5,'Devinne','Panas','Crear','root@localhost','2022-11-19 21:41:45'),(6,'Dave','Brennen','Crear','root@localhost','2022-11-19 21:41:45'),(7,'Deonne','Pleasants','Crear','root@localhost','2022-11-19 21:41:45'),(8,'Mikaela','Benns','Crear','root@localhost','2022-11-19 21:41:45'),(9,'Antonie','Measures','Crear','root@localhost','2022-11-19 21:41:45'),(10,'Dalt','Wellard','Crear','root@localhost','2022-11-19 21:41:45'),(11,'Flinn','Minghi','Crear','root@localhost','2022-11-19 21:41:45'),(12,'Mata','Reding','Crear','root@localhost','2022-11-19 21:41:45'),(13,'Abie','Yggo','Crear','root@localhost','2022-11-19 21:41:45'),(14,'Jemmie','Setchfield','Crear','root@localhost','2022-11-19 21:41:45'),(15,'Gonzales','Arsmith','Crear','root@localhost','2022-11-19 21:41:45'),(16,'Elonore','Eddis','Crear','root@localhost','2022-11-19 21:41:45'),(17,'Laural','Mayou','Crear','root@localhost','2022-11-19 21:41:45'),(18,'Saundra','Fruin','Crear','root@localhost','2022-11-19 21:41:45'),(19,'Derry','Gourlie','Crear','root@localhost','2022-11-19 21:41:45'),(20,'Abigael','Sirey','Crear','root@localhost','2022-11-19 21:41:45'),(21,'Audre','Rymour','Crear','root@localhost','2022-11-19 21:41:45'),(22,'Tiff','Sparrowe','Crear','root@localhost','2022-11-19 21:41:45'),(23,'Stanford','Downing','Crear','root@localhost','2022-11-19 21:41:45'),(24,'Roxane','Rignold','Crear','root@localhost','2022-11-19 21:41:45'),(25,'Harman','Yair','Crear','root@localhost','2022-11-19 21:41:45'),(26,'Vivianne','Riby','Crear','root@localhost','2022-11-19 21:41:45'),(27,'Fabe','Dahler','Crear','root@localhost','2022-11-19 21:41:45'),(28,'Shelton','Lloyd','Crear','root@localhost','2022-11-19 21:41:45'),(29,'Benson','Doughton','Crear','root@localhost','2022-11-19 21:41:45'),(30,'Kristin','Lamb-shine','Crear','root@localhost','2022-11-19 21:41:45'),(31,'Conrad','Thomsson','Crear','root@localhost','2022-11-19 21:41:45'),(32,'Aili','Ginglell','Crear','root@localhost','2022-11-19 21:41:45'),(33,'Eleanor','Pebworth','Crear','root@localhost','2022-11-19 21:41:45'),(34,'Tedd','Strutt','Crear','root@localhost','2022-11-19 21:41:45'),(35,'Eugenie','Daouze','Crear','root@localhost','2022-11-19 21:41:45'),(36,'Aldin','Sikorsky','Crear','root@localhost','2022-11-19 21:41:45'),(37,'Emerson','Basili','Crear','root@localhost','2022-11-19 21:41:45'),(38,'Guy','Jamot','Crear','root@localhost','2022-11-19 21:41:45'),(39,'Cherin','Elliff','Crear','root@localhost','2022-11-19 21:41:45'),(40,'Lionello','Biswell','Crear','root@localhost','2022-11-19 21:41:45'),(41,'Kissie','Bythway','Crear','root@localhost','2022-11-19 21:41:45'),(42,'Mollie','MacCartney','Crear','root@localhost','2022-11-19 21:41:45'),(43,'Donna','MacKissack','Crear','root@localhost','2022-11-19 21:41:45'),(44,'Maribelle','Schulz','Crear','root@localhost','2022-11-19 21:41:45'),(45,'Irita','Yesichev','Crear','root@localhost','2022-11-19 21:41:45'),(46,'Joye','Westerman','Crear','root@localhost','2022-11-19 21:41:45'),(47,'Janey','Kreutzer','Crear','root@localhost','2022-11-19 21:41:45'),(48,'De','Yglesia','Crear','root@localhost','2022-11-19 21:41:45'),(49,'Nikolia','Buer','Crear','root@localhost','2022-11-19 21:41:45'),(50,'Cristian','Weatherell','Crear','root@localhost','2022-11-19 21:41:45'),(51,'Leonid','Brando','Crear','root@localhost','2022-11-19 21:41:45'),(52,'Alphonse','Korejs','Crear','root@localhost','2022-11-19 21:41:45'),(53,'Darryl','Stent','Crear','root@localhost','2022-11-19 21:41:45'),(54,'Klara','Donett','Crear','root@localhost','2022-11-19 21:41:45'),(55,'Eduino','Backes','Crear','root@localhost','2022-11-19 21:41:45'),(56,'Vina','Francioli','Crear','root@localhost','2022-11-19 21:41:45'),(57,'Mord','Denning','Crear','root@localhost','2022-11-19 21:41:45'),(58,'Aymer','Sinott','Crear','root@localhost','2022-11-19 21:41:45'),(59,'Harriot','McCurry','Crear','root@localhost','2022-11-19 21:41:45'),(60,'Milo','Fenne','Crear','root@localhost','2022-11-19 21:41:45'),(61,'Domeniga','Ravenhill','Crear','root@localhost','2022-11-19 21:41:45'),(62,'Vi','Mongan','Crear','root@localhost','2022-11-19 21:41:45'),(63,'Kain','McKinnon','Crear','root@localhost','2022-11-19 21:41:45'),(64,'Regan','Jandel','Crear','root@localhost','2022-11-19 21:41:45'),(65,'Delora','Brosel','Crear','root@localhost','2022-11-19 21:41:45'),(66,'Laurella','McGlade','Crear','root@localhost','2022-11-19 21:41:45'),(67,'Douglass','Harrap','Crear','root@localhost','2022-11-19 21:41:45'),(68,'Julius','Cowen','Crear','root@localhost','2022-11-19 21:41:45'),(69,'Ibby','Whether','Crear','root@localhost','2022-11-19 21:41:45'),(70,'Jocko','Lecky','Crear','root@localhost','2022-11-19 21:41:45'),(71,'Arliene','Pyer','Crear','root@localhost','2022-11-19 21:41:45'),(72,'Wilfrid','Mickleburgh','Crear','root@localhost','2022-11-19 21:41:45'),(73,'Rosanna','Bette','Crear','root@localhost','2022-11-19 21:41:45'),(74,'Idalia','Casetta','Crear','root@localhost','2022-11-19 21:41:45'),(75,'Deerdre','Flemyng','Crear','root@localhost','2022-11-19 21:41:45'),(76,'Matias','Sibbit','Crear','root@localhost','2022-11-19 21:41:45'),(77,'Karalynn','McCarrison','Crear','root@localhost','2022-11-19 21:41:45'),(78,'Felipe','Venediktov','Crear','root@localhost','2022-11-19 21:41:45'),(79,'Aurthur','Van den Hof','Crear','root@localhost','2022-11-19 21:41:45'),(80,'Augustine','Premble','Crear','root@localhost','2022-11-19 21:41:45'),(81,'Bobinette','Vials','Crear','root@localhost','2022-11-19 21:41:45'),(82,'Leonerd','Esson','Crear','root@localhost','2022-11-19 21:41:45'),(83,'Alena','Knappe','Crear','root@localhost','2022-11-19 21:41:45'),(84,'Alessandro','Maty','Crear','root@localhost','2022-11-19 21:41:45'),(85,'Morgen','Brocklesby','Crear','root@localhost','2022-11-19 21:41:45'),(86,'Patrick','Teape','Crear','root@localhost','2022-11-19 21:41:45'),(87,'Viviana','Doniso','Crear','root@localhost','2022-11-19 21:41:45'),(88,'Lenora','Tonks','Crear','root@localhost','2022-11-19 21:41:45'),(89,'Olag','Knibb','Crear','root@localhost','2022-11-19 21:41:45'),(90,'Philippe','Spon','Crear','root@localhost','2022-11-19 21:41:45'),(91,'Land','Rollinshaw','Crear','root@localhost','2022-11-19 21:41:45'),(92,'Lezlie','Breawood','Crear','root@localhost','2022-11-19 21:41:45'),(93,'Gaylene','Mackriell','Crear','root@localhost','2022-11-19 21:41:45'),(94,'Sibel','Golt','Crear','root@localhost','2022-11-19 21:41:45'),(95,'Danie','Foxall','Crear','root@localhost','2022-11-19 21:41:45'),(96,'Demeter','Haggerstone','Crear','root@localhost','2022-11-19 21:41:45'),(97,'Chan','Stilgoe','Crear','root@localhost','2022-11-19 21:41:45'),(98,'Markus','Dorsey','Crear','root@localhost','2022-11-19 21:41:45'),(99,'Catherin','Dunsmuir','Crear','root@localhost','2022-11-19 21:41:45'),(100,'Prue','Kiln','Crear','root@localhost','2022-11-19 21:41:45');
/*!40000 ALTER TABLE `log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `orden_insumo`
--

LOCK TABLES `orden_insumo` WRITE;
/*!40000 ALTER TABLE `orden_insumo` DISABLE KEYS */;
INSERT INTO `orden_insumo` VALUES (1,3,7.50),(2,20,5.60),(3,10,4.70),(4,14,5.55),(5,10,6.51),(6,14,10.66),(7,5,7.22),(8,10,8.70),(9,11,10.70),(10,15,7.80),(11,5,6.50),(12,16,8.12),(13,19,5.50),(14,13,1.52),(15,4,6.63),(16,19,4.12),(17,3,4.42),(18,9,8.47),(19,14,10.92),(20,7,9.20);
/*!40000 ALTER TABLE `orden_insumo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `orden_produccion`
--

LOCK TABLES `orden_produccion` WRITE;
/*!40000 ALTER TABLE `orden_produccion` DISABLE KEYS */;
INSERT INTO `orden_produccion` VALUES (1,'L-MED-101-22',1,1,1,1,6,23,4005,3,'2020-01-01','2020-06-24'),(2,'L-MED-102-22',2,1,2,2,7,27,2564,1,'2020-01-05','2020-03-12'),(3,'L-MED-103-22',3,1,3,3,10,22,4833,1,'2020-01-10','2020-06-06'),(4,'L-MED-104-22',4,1,4,4,8,21,4271,4,'2020-01-16','2020-05-20'),(5,'L-MED-105-22',5,2,5,5,10,27,4011,4,'2020-02-01','2020-04-10'),(6,'L-MED-106-22',6,2,6,6,6,23,4311,4,'2020-02-09','2020-06-02'),(7,'L-MED-107-22',7,2,7,7,9,30,3665,1,'2020-02-13','2020-07-24'),(8,'L-MED-108-22',8,2,8,8,9,30,4669,4,'2020-02-19','2020-06-01'),(9,'L-MED-109-22',9,2,9,9,10,26,2779,1,'2020-02-27','2020-04-27'),(10,'L-MED-110-22',10,3,10,10,8,22,3877,2,'2020-03-01','2020-06-11'),(11,'L-MED-111-22',11,3,11,11,10,22,2342,4,'2020-03-04','2020-06-20'),(12,'L-MED-112-22',12,3,12,12,5,22,4044,1,'2020-03-07','2020-06-09'),(13,'L-MED-113-22',13,3,13,13,9,23,2010,3,'2020-03-15','2020-07-23'),(14,'L-MED-114-22',14,3,14,14,5,20,2953,2,'2020-03-25','2020-07-08'),(15,'L-MED-115-22',15,3,15,15,7,22,3788,1,'2020-03-27','2020-07-03'),(16,'L-MED-116-22',16,4,16,16,7,22,4650,2,'2020-04-08','2020-08-03'),(17,'L-MED-117-22',17,4,17,17,5,29,3099,3,'2020-04-12','2020-08-17'),(18,'L-MED-118-22',18,4,18,18,7,23,4435,2,'2020-04-19','2020-09-20'),(19,'L-MED-119-22',19,4,19,19,8,20,4302,4,'2020-04-23','2020-09-19'),(20,'L-MED-120-22',20,4,20,20,5,26,2584,2,'2020-04-28','2020-08-14');
/*!40000 ALTER TABLE `orden_produccion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `servicios`
--

LOCK TABLES `servicios` WRITE;
/*!40000 ALTER TABLE `servicios` DISABLE KEYS */;
INSERT INTO `servicios` VALUES (1,'Gas',500.00,'2020-01-10'),(2,'Luz',1000.00,'2020-01-10'),(3,'Agua',200.00,'2020-01-10'),(4,'N2 tubo de gas',80.00,'2020-01-10'),(5,'HCL tubo de gas',150.00,'2020-01-10'),(6,'Incineracion de residuos',200.00,'2020-01-10'),(7,'Gas',600.00,'2020-02-10'),(8,'Luz',1200.00,'2020-02-10'),(9,'Agua',200.00,'2020-02-10'),(10,'N2 tubo de gas',80.00,'2020-02-10'),(11,'H2 tubo de gas',150.00,'2020-02-10'),(12,'Incineracion de residuos',200.00,'2020-02-10'),(13,'Servicio?',500.00,'2020-03-10'),(14,'Luz',100.00,'2020-03-10'),(15,'Agua',200.00,'2020-03-10'),(16,'N2 tubo de gas',80.00,'2020-03-10'),(17,'Incineracion de residuos',200.00,'2020-03-10'),(18,'Gas',700.00,'2020-04-10'),(19,'Luz',1100.00,'2020-04-10'),(20,'Agua',200.00,'2020-04-10'),(21,'N2 tubo de gas',80.00,'2020-04-10'),(22,'Incineracion de residuos',200.00,'2020-04-10');
/*!40000 ALTER TABLE `servicios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `servicios_op`
--

LOCK TABLES `servicios_op` WRITE;
/*!40000 ALTER TABLE `servicios_op` DISABLE KEYS */;
INSERT INTO `servicios_op` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,2,7),(8,2,8),(9,2,9),(10,2,10),(11,2,11),(12,2,12),(13,3,13),(14,3,14),(15,3,15),(16,3,16),(17,3,17),(18,4,18),(19,4,19),(20,4,20),(21,4,21),(22,4,22);
/*!40000 ALTER TABLE `servicios_op` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ventas`
--

LOCK TABLES `ventas` WRITE;
/*!40000 ALTER TABLE `ventas` DISABLE KEYS */;
INSERT INTO `ventas` VALUES (1,2336822.00,'Grimes-Monahan'),(2,7611270.00,'Davis-Koelpin'),(3,9774759.00,'Robel-VonRueden'),(4,8749173.00,'Hessel, Berge and Greenholt'),(5,8891938.00,'Runolfsson, Cruickshank and Krajcik'),(6,1044321.00,'Barton LLC'),(7,8627090.00,'Rodriguez, Prohaska and Rolfson'),(8,3510081.00,'Harris-Hessel'),(9,4569263.00,'Nicolas Group'),(10,7823729.00,'Christiansen-Johns'),(11,2013875.00,'Koepp-White'),(12,5680107.00,'Pfannerstill, Ziemann and Von'),(13,1255605.00,'Jacobson, Gleason and Christiansen'),(14,9185997.00,'Jenkins Inc'),(15,2970667.00,'Johnston and Sons'),(16,2250128.00,'Rice and Sons'),(17,7963145.00,'Fahey-Hermann'),(18,9054910.00,'Friesen Group'),(19,8009166.00,'Waters-Kohler'),(20,7571017.00,'Dietrich, Fay and Lemke');
/*!40000 ALTER TABLE `ventas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-28 20:19:57
