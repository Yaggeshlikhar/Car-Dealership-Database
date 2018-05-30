CREATE DATABASE  IF NOT EXISTS `lamborghini` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `lamborghini`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: lamborghini
-- ------------------------------------------------------
-- Server version	5.6.37

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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `AddressID` int(11) NOT NULL,
  `Address` varchar(45) NOT NULL,
  `City` varchar(45) NOT NULL,
  `State` varchar(45) NOT NULL,
  `Country` varchar(45) NOT NULL,
  `Zip` int(11) NOT NULL,
  `CustomerID` int(11) NOT NULL,
  PRIMARY KEY (`AddressID`,`CustomerID`),
  KEY `fk_Address_Customer_idx` (`CustomerID`),
  CONSTRAINT `fk_Address_Customer` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`CustomerID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1001,'9858 Redwing','Chone','Boston','USA',456213,101),(1002,'3210 Darwin Street','Dallas','Texas','USA',987654,102),(1003,'314 Luis Park','Newton','Florida','USA',987654,103),(1004,'7 Grover way','Chicago','Hawaii','USA',987456,104),(1005,'532 Pond Place','Seattle','Virginia','USA',987456,105),(1006,'75 St Alphonsus','Boston','Mass','USA',2120,106),(1007,'18 Peterboro','Seattle','Virginia','USA',987456,107),(1008,'78 Hemenway','Arlington','Texas','USA',965456,108),(1009,'188 Chain Street','New York city','New York','USA',231546,109);
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `car_features`
--

DROP TABLE IF EXISTS `car_features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `car_features` (
  `Car_Features_ID` int(11) NOT NULL,
  `Transmission` varchar(20) NOT NULL,
  `Horse_Power` int(11) NOT NULL,
  `Convertible` enum('Y','N') NOT NULL DEFAULT 'N',
  PRIMARY KEY (`Car_Features_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car_features`
--

LOCK TABLES `car_features` WRITE;
/*!40000 ALTER TABLE `car_features` DISABLE KEYS */;
INSERT INTO `car_features` VALUES (110,'Automatic',550,'Y'),(111,'Mannual',600,'N'),(112,'Mannual',750,'Y'),(113,'Automatic',800,'N'),(114,'Mannual',650,'Y');
/*!40000 ALTER TABLE `car_features` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `car_loan`
--

DROP TABLE IF EXISTS `car_loan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `car_loan` (
  `Car_Loan_ID` int(11) NOT NULL,
  `Repayment_Start_Date` date NOT NULL,
  `Repayment_End_Date` date NOT NULL,
  `Cars_Sold_ID` int(11) NOT NULL,
  PRIMARY KEY (`Car_Loan_ID`,`Cars_Sold_ID`),
  KEY `fk_Car_Loan_Cars_Sold1_idx` (`Cars_Sold_ID`),
  CONSTRAINT `fk_Car_Loan_Cars_Sold1` FOREIGN KEY (`Cars_Sold_ID`) REFERENCES `cars_sold` (`Cars_Sold_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car_loan`
--

LOCK TABLES `car_loan` WRITE;
/*!40000 ALTER TABLE `car_loan` DISABLE KEYS */;
INSERT INTO `car_loan` VALUES (1111,'2015-10-10','2025-10-10',103),(1112,'2013-08-01','2023-08-01',105);
/*!40000 ALTER TABLE `car_loan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `car_models`
--

DROP TABLE IF EXISTS `car_models`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `car_models` (
  `Car_Models_ID` int(11) NOT NULL,
  `Model_Name` varchar(45) NOT NULL,
  `Category` varchar(45) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Price` int(11) NOT NULL,
  `DealersID` int(11) NOT NULL,
  PRIMARY KEY (`Car_Models_ID`,`DealersID`),
  KEY `fk_Car_Models_Dealers1_idx` (`DealersID`),
  CONSTRAINT `fk_Car_Models_Dealers1` FOREIGN KEY (`DealersID`) REFERENCES `dealers` (`DealersID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car_models`
--

LOCK TABLES `car_models` WRITE;
/*!40000 ALTER TABLE `car_models` DISABLE KEYS */;
INSERT INTO `car_models` VALUES (501,'Aventador','Supercar',2,399500,1),(501,'Aventador','Supercar',2,399500,2),(501,'Aventador','Supercar',2,399500,4),(502,'Huracan','Supercar',2,456789,1),(502,'Huracan','Supercar',2,456789,3),(502,'Huracan','Supercar',2,456789,5),(503,'Centenario','Supercar',2,499000,1),(503,'Centenario','Supercar',2,499000,3),(504,'Urus','Suv',5,399500,1),(504,'Urus','Suv',2,399500,3),(504,'Urus','Suv',2,399500,4),(504,'Urus','Suv',2,399500,5);
/*!40000 ALTER TABLE `car_models` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `cars available`
--

DROP TABLE IF EXISTS `cars available`;
/*!50001 DROP VIEW IF EXISTS `cars available`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `cars available` AS SELECT 
 1 AS `Model_Name`,
 1 AS `Name`,
 1 AS `Address`,
 1 AS `Contact`,
 1 AS `Price`,
 1 AS `Quantity`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `cars_sold`
--

DROP TABLE IF EXISTS `cars_sold`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cars_sold` (
  `Cars_Sold_ID` int(11) NOT NULL,
  `Agreed_Price` int(11) NOT NULL,
  `Date_Sold` date NOT NULL,
  `Monthly_Installment` int(11) DEFAULT NULL,
  `CustomerID` int(11) NOT NULL,
  `Car_Models_ID` int(11) NOT NULL,
  `DealersID` int(11) NOT NULL,
  PRIMARY KEY (`Cars_Sold_ID`,`Car_Models_ID`,`CustomerID`,`DealersID`),
  KEY `fk_Cars_Sold_Customer1_idx` (`CustomerID`),
  KEY `fk_Cars_Sold_Car_Models1_idx` (`Car_Models_ID`),
  KEY `fk_Cars_Sold_Dealers1_idx` (`DealersID`),
  CONSTRAINT `fk_Cars_Sold_Car_Models1` FOREIGN KEY (`Car_Models_ID`) REFERENCES `car_models` (`Car_Models_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Cars_Sold_Customer1` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`CustomerID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Cars_Sold_Dealers1` FOREIGN KEY (`DealersID`) REFERENCES `dealers` (`DealersID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cars_sold`
--

LOCK TABLES `cars_sold` WRITE;
/*!40000 ALTER TABLE `cars_sold` DISABLE KEYS */;
INSERT INTO `cars_sold` VALUES (91,399000,'2010-10-10',0,109,501,1),(92,456000,'2010-10-10',5000,105,501,5),(93,399000,'2010-10-10',6000,105,503,2),(94,399000,'2010-10-10',5500,103,501,4),(95,385000,'2009-11-15',5000,109,501,1),(96,395000,'2012-11-03',0,109,504,3),(97,455000,'2009-11-15',5000,109,502,2),(98,385000,'2013-10-15',0,101,501,1),(99,485000,'2009-11-15',5000,109,503,3),(100,375000,'2016-04-23',5250,102,501,4),(101,499000,'2007-02-28',0,104,501,1),(102,385000,'2009-11-15',5000,106,504,5),(103,480000,'2006-01-16',0,108,502,3),(105,450000,'2007-10-10',0,107,503,4);
/*!40000 ALTER TABLE `cars_sold` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `Lamborghini`.`Cars_Sold_AFTER_INSERT` AFTER INSERT ON `Cars_Sold` FOR EACH ROW
BEGIN
declare qty int;
SELECT 
    Quantity
INTO qty FROM
    Car_Models
WHERE
    DealersID = new.DealersID
        AND Car_Models_ID = new.Car_Models_ID;
        -- AND CustomerID = new.CustomerID
       -- AND Cars_Sold_ID = new.Cars_Sold_ID;
if qty <2

then
signal sqlstate '45000' set message_text = 'Quantity not available';
elseif qty>2
then
Update Car_Models
SET Quantity=Quantity-1
where DealersID = new.DealersID
        AND Car_Models_ID = new.Car_Models_ID;
end if;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `CustomerID` int(11) NOT NULL AUTO_INCREMENT,
  `Customer_FName` varchar(45) NOT NULL,
  `Customer_Email` varchar(45) NOT NULL,
  `Customer_Phone` varchar(45) NOT NULL,
  `Customer_Gender` enum('M','F') NOT NULL DEFAULT 'M',
  PRIMARY KEY (`CustomerID`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (101,'Yaggesh Likhar','123@234.com','4325336573','M'),(102,'Pratik Parija','321@234.com','4325336456','M'),(103,'Dhruv Sharma','654@234.com','7845337894','M'),(104,'Pooja Aloney','7854@234.com','4325987557','F'),(105,'Kruti Lakhani','9632@234.com','3692336573','F'),(106,'Mayank Gangrade','7471@234.com','3696497573','M'),(107,'Shreyansh Singh','3698@234.com','1236497573','M'),(108,'Raveesh Avashia','5656@234.com','5656497573','M'),(109,'Urvi Shah','8888@234.com','3699963573','F');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_payment`
--

DROP TABLE IF EXISTS `customer_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_payment` (
  `Customer_Payment_ID` int(11) NOT NULL,
  `Payment_Mode` varchar(45) NOT NULL,
  `Customer_Payment_Due_Date` date DEFAULT NULL,
  `Customer_Payment_Date_Made` date DEFAULT NULL,
  `Actual_Payment_Amount` int(11) DEFAULT NULL,
  `CustomerID` int(11) NOT NULL,
  PRIMARY KEY (`Customer_Payment_ID`,`CustomerID`),
  KEY `fk_Customer_Payment_Customer1_idx` (`CustomerID`),
  CONSTRAINT `fk_Customer_Payment_Customer1` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`CustomerID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_payment`
--

LOCK TABLES `customer_payment` WRITE;
/*!40000 ALTER TABLE `customer_payment` DISABLE KEYS */;
INSERT INTO `customer_payment` VALUES (151,'Cash','2017-10-15','2017-11-15',385000,101),(152,'Cheque','2016-11-15','2016-12-15',375000,102),(153,'Car loan','2017-10-15','2017-11-15',399000,103),(154,'Cash','2017-05-17','2017-07-20',499000,104),(155,'Car loan','2017-08-08','2017-08-08',456000,105),(156,'Cheque','2016-04-04','2016-05-15',385000,101),(157,'Car Loan','2016-08-10','2017-11-15',385000,106),(158,'Cash','2017-10-15','2017-11-15',480000,107),(159,'Car loan','2017-10-15','2018-11-15',480000,108),(160,'Cash','2016-10-15','2016-11-15',455000,109);
/*!40000 ALTER TABLE `customer_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_prefrence`
--

DROP TABLE IF EXISTS `customer_prefrence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_prefrence` (
  `CustomerID` int(11) NOT NULL,
  `Car_Features_ID` int(11) NOT NULL,
  `PrefrenceID` int(11) NOT NULL,
  PRIMARY KEY (`PrefrenceID`,`CustomerID`,`Car_Features_ID`),
  KEY `fk_Customer_has_Car_Features_Car_Features1_idx` (`Car_Features_ID`),
  KEY `fk_Customer_has_Car_Features_Customer1_idx` (`CustomerID`),
  CONSTRAINT `fk_Customer_has_Car_Features_Car_Features1` FOREIGN KEY (`Car_Features_ID`) REFERENCES `car_features` (`Car_Features_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Customer_has_Car_Features_Customer1` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`CustomerID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_prefrence`
--

LOCK TABLES `customer_prefrence` WRITE;
/*!40000 ALTER TABLE `customer_prefrence` DISABLE KEYS */;
INSERT INTO `customer_prefrence` VALUES (101,110,51),(106,110,56),(105,111,55),(103,112,53),(108,112,58),(104,113,54),(109,113,59),(102,114,52),(107,114,57);
/*!40000 ALTER TABLE `customer_prefrence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dealers`
--

DROP TABLE IF EXISTS `dealers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dealers` (
  `DealersID` int(11) NOT NULL,
  `Address` varchar(45) NOT NULL,
  `Name` varchar(45) NOT NULL,
  `City` varchar(45) NOT NULL,
  `Contact` varchar(45) NOT NULL,
  PRIMARY KEY (`DealersID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dealers`
--

LOCK TABLES `dealers` WRITE;
/*!40000 ALTER TABLE `dealers` DISABLE KEYS */;
INSERT INTO `dealers` VALUES (1,' 531 Boston Post Rd','Lamborghini Boston','City','1234567'),(2,'115 S Service Rd','Lamborghini Long Island','Jericho','5162033000'),(3,'401 NJ-17','Lamborghini Paramus','New Jersey','2012678850'),(4,'100 NJ-73','Lamborghini Palmyra','Palmyra','8775529718'),(5,'1310 W Wendover Ave','Lamborghini Carolinas','Greensboro','8884452626');
/*!40000 ALTER TABLE `dealers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `events` (
  `Event_ID` int(11) NOT NULL,
  `Event_Name` varchar(45) NOT NULL,
  `Venue` varchar(45) NOT NULL,
  `Event_Date` date NOT NULL,
  PRIMARY KEY (`Event_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` VALUES (201,'Product Launch','Mandarin Oriental','2015-12-25'),(202,'Customer Meetup','The Ritz-Carlton Central Park','2014-12-25'),(203,'Christmas Ride','Montage Beverly Hills','2013-12-25'),(204,'Product Launch','The Peninsula','2012-12-25'),(205,'Anniversary Party','Park Hyatt','2011-12-25');
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `events_has_customer`
--

DROP TABLE IF EXISTS `events_has_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `events_has_customer` (
  `Event_ID` int(11) NOT NULL,
  `CustomerID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Event_ID`,`CustomerID`),
  KEY `fk_Events_has_Customer_Customer1_idx` (`CustomerID`),
  KEY `fk_Events_has_Customer_Events1_idx` (`Event_ID`),
  CONSTRAINT `fk_Events_has_Customer_Customer1` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`CustomerID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Events_has_Customer_Events1` FOREIGN KEY (`Event_ID`) REFERENCES `events` (`Event_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events_has_customer`
--

LOCK TABLES `events_has_customer` WRITE;
/*!40000 ALTER TABLE `events_has_customer` DISABLE KEYS */;
INSERT INTO `events_has_customer` VALUES (201,101),(202,101),(203,101),(204,101),(201,102),(203,102),(205,102),(201,103),(202,103),(204,103),(205,103),(201,104),(203,104),(205,104),(202,105),(205,106),(202,107),(204,107),(201,108),(203,108),(205,108),(201,109),(202,109),(204,109);
/*!40000 ALTER TABLE `events_has_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `features_on_cars_for_sale`
--

DROP TABLE IF EXISTS `features_on_cars_for_sale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `features_on_cars_for_sale` (
  `Car_Features_ID` int(11) NOT NULL,
  `Car_Models_ID` int(11) NOT NULL,
  `Features_On_Car_ID` int(11) NOT NULL,
  PRIMARY KEY (`Features_On_Car_ID`,`Car_Models_ID`,`Car_Features_ID`),
  KEY `fk_Car_Features_has_Cars_For_Sale_Car_Features1_idx` (`Car_Features_ID`),
  KEY `fk_Features_On_Cars_For_Sale_Car_Models1_idx` (`Car_Models_ID`),
  CONSTRAINT `fk_Car_Features_has_Cars_For_Sale_Car_Features1` FOREIGN KEY (`Car_Features_ID`) REFERENCES `car_features` (`Car_Features_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Features_On_Cars_For_Sale_Car_Models1` FOREIGN KEY (`Car_Models_ID`) REFERENCES `car_models` (`Car_Models_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `features_on_cars_for_sale`
--

LOCK TABLES `features_on_cars_for_sale` WRITE;
/*!40000 ALTER TABLE `features_on_cars_for_sale` DISABLE KEYS */;
INSERT INTO `features_on_cars_for_sale` VALUES (110,501,100001),(110,504,100003),(111,502,100002),(111,502,100009),(112,503,100004),(112,501,100008),(113,502,100005),(113,503,100007),(114,504,100006);
/*!40000 ALTER TABLE `features_on_cars_for_sale` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `insurance_policies`
--

DROP TABLE IF EXISTS `insurance_policies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `insurance_policies` (
  `Insurance_Policies_ID` int(11) NOT NULL,
  `Policy_Start_Date` date NOT NULL,
  `Policy_Renewal_Date` date NOT NULL,
  `Yearly_Payment` int(11) NOT NULL,
  `Cars_Sold_ID` int(11) NOT NULL,
  PRIMARY KEY (`Insurance_Policies_ID`,`Cars_Sold_ID`),
  KEY `fk_Insurance_Policies_Cars_Sold1_idx` (`Cars_Sold_ID`),
  CONSTRAINT `fk_Insurance_Policies_Cars_Sold1` FOREIGN KEY (`Cars_Sold_ID`) REFERENCES `cars_sold` (`Cars_Sold_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `insurance_policies`
--

LOCK TABLES `insurance_policies` WRITE;
/*!40000 ALTER TABLE `insurance_policies` DISABLE KEYS */;
INSERT INTO `insurance_policies` VALUES (900,'2017-08-09','2018-07-09',100000,91),(901,'2016-08-09','2019-07-09',150000,92),(902,'2015-08-09','2017-07-09',200000,93),(903,'2017-09-18','2020-09-15',180000,94),(904,'2016-10-15','2018-10-15',100500,95),(905,'2013-04-23','2017-04-23',120000,96),(906,'2016-06-04','2018-06-04',100000,97),(908,'2017-08-09','2019-07-09',100000,98),(909,'2017-10-09','2018-07-09',50000,99),(910,'2015-09-09','2017-09-09',250000,100),(911,'2016-08-09','2018-07-09',200000,101),(912,'2015-06-19','2017-06-20',100000,102),(913,'2016-03-12','2018-03-12',80000,103);
/*!40000 ALTER TABLE `insurance_policies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `revenue`
--

DROP TABLE IF EXISTS `revenue`;
/*!50001 DROP VIEW IF EXISTS `revenue`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `revenue` AS SELECT 
 1 AS `DealersID`,
 1 AS `Name`,
 1 AS `Total Sales`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'lamborghini'
--

--
-- Dumping routines for database 'lamborghini'
--
/*!50003 DROP PROCEDURE IF EXISTS `Customer_Details` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Customer_Details`(in cus_ID int)
BEGIN
declare cust_ID int;
set @cust_ID = cus_ID;
SELECT 
    customer.CustomerID,
    customer.Customer_FName AS `Name`,
    cars_sold.Cars_Sold_ID,
    dealers.`Name`,
    dealers.Address,
    dealers.Contact,
    car_models.Car_Models_ID,
    car_models.Model_Name AS Model,
    car_models.Price
FROM
    customer
        INNER JOIN
    cars_sold ON customer.CustomerID = cars_sold.CustomerID
        INNER JOIN
    car_models ON cars_sold.Car_Models_ID = car_models.Car_Models_ID
        INNER JOIN
    dealers ON dealers.DealersID = car_models.DealersID
WHERE
    customer.CustomerID = @cust_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Dealers Stock` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Dealers Stock`(in deal_ID int)
BEGIN
declare dealer_ID int;
set @dealer_ID = deal_ID;
SELECT 
    dealers.DealersID,
    dealers.`Name`,
    dealers.Address,
    dealers.City,
    dealers.Contact,
    car_models.Model_Name,
    car_models.Quantity,
    car_models.Price
FROM
    dealers
        INNER JOIN
    car_models ON dealers.DealersID = car_models.DealersID
WHERE
    dealers.DealersID = @dealer_ID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `cars available`
--

/*!50001 DROP VIEW IF EXISTS `cars available`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `cars available` AS select `cm`.`Model_Name` AS `Model_Name`,`d`.`Name` AS `Name`,`d`.`Address` AS `Address`,`d`.`Contact` AS `Contact`,`cm`.`Price` AS `Price`,`cm`.`Quantity` AS `Quantity` from (`car_models` `cm` join `dealers` `d` on((`cm`.`DealersID` = `d`.`DealersID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `revenue`
--

/*!50001 DROP VIEW IF EXISTS `revenue`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `revenue` AS select `dealers`.`DealersID` AS `DealersID`,`dealers`.`Name` AS `Name`,sum(`cars_sold`.`Agreed_Price`) AS `Total Sales` from (`dealers` join `cars_sold` on((`dealers`.`DealersID` = `cars_sold`.`DealersID`))) group by `dealers`.`DealersID`,`dealers`.`Name` with rollup */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-14  1:55:37
