CREATE DATABASE  IF NOT EXISTS `cafedb` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `cafedb`;
-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: cafedb
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `categoryID` int NOT NULL AUTO_INCREMENT,
  `categoryName` varchar(45) NOT NULL,
  PRIMARY KEY (`categoryID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Hot Drinks'),(2,'Cold Drinks'),(3,'Pastries'),(4,'Sandwiches'),(5,'Specialty Drinks'),(6,'Machinery'),(7,'Ingredients'),(8,'Tea Leaves'),(9,'Coffee Beans'),(10,'Brew Equipment'),(11,'Cups & Mugs'),(12,'Syrups & Flavorings'),(13,'Cleaning Supplies'),(14,'Packaging Materials');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `employeeID` int NOT NULL,
  `firstName` varchar(45) NOT NULL,
  `lastName` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `address2` varchar(45) DEFAULT NULL,
  `city` varchar(45) NOT NULL,
  `state` char(2) NOT NULL,
  `zip` varchar(10) NOT NULL,
  `ssn` int NOT NULL,
  `wage` float DEFAULT NULL,
  `terminated` tinyint NOT NULL,
  `hireDate` date NOT NULL,
  `phone` char(10) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `prefix` varchar(4) NOT NULL,
  `suffix` varchar(6) DEFAULT NULL,
  `Location_locationID` varchar(45) NOT NULL,
  PRIMARY KEY (`employeeID`),
  KEY `fk_employee_Location1_idx` (`Location_locationID`),
  CONSTRAINT `fk_employee_Location1` FOREIGN KEY (`Location_locationID`) REFERENCES `location` (`locationID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1001,'Alice','Smith','123 Main St',NULL,'Smithfield','RI','02917',957391234,15.5,0,'2023-08-15','4015551111','alice.smith@email.com','Ms.',NULL,'2'),(1002,'Bob','Johnson','456 Oak Ave','Apt 2B','Providence','RI','02903',485265678,18,0,'2022-11-20','4015552222','bob.johnson@email.com','Mr.',NULL,'2'),(1003,'Charlie','Brown','789 Pine Ln',NULL,'Cranston','RI','02910',305629012,16.25,0,'2024-01-05','4015553333','charlie.brown@email.com','Mr.',NULL,'2'),(1004,'Diana','Lee','101 Elm St','Unit 4','Smithfield','RI','02917',594793456,22,0,'2021-05-10','4015554444','diana.lee@email.com','Mrs.',NULL,'1'),(1005,'Ethan','Davis','222 Willow Dr',NULL,'Pawtucket','RI','02860',57087890,14.75,1,'2023-03-01','4015555555','ethan.davis@email.com','Mr.',NULL,'4'),(1006,'Fiona','Miller','333 Birch Ct',NULL,'Woonsocket','RI','02895',683032345,17,0,'2024-06-12','4015556666','fiona.miller@email.com','Ms.',NULL,'4'),(1007,'George','Wilson','444 Oak Ter','Suite 1A','North Providence','RI','02911',593858789,19.5,0,'2022-09-28','4015557777','george.wilson@email.com','Mr.','Jr.','3'),(1008,'Hannah','Moore','555 Pine Rd',NULL,'Lincoln','RI','02865',583750123,15,0,'2023-12-01','4015558888','hannah.moore@email.com','Mrs.',NULL,'1');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_has_role`
--

DROP TABLE IF EXISTS `employee_has_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_has_role` (
  `employee_employeeID` int NOT NULL,
  `role_roleID` int NOT NULL,
  PRIMARY KEY (`employee_employeeID`,`role_roleID`),
  KEY `fk_employee_has_role_role1_idx` (`role_roleID`),
  KEY `fk_employee_has_role_employee1_idx` (`employee_employeeID`),
  CONSTRAINT `fk_employee_has_role_employee1` FOREIGN KEY (`employee_employeeID`) REFERENCES `employee` (`employeeID`),
  CONSTRAINT `fk_employee_has_role_role1` FOREIGN KEY (`role_roleID`) REFERENCES `role` (`roleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_has_role`
--

LOCK TABLES `employee_has_role` WRITE;
/*!40000 ALTER TABLE `employee_has_role` DISABLE KEYS */;
INSERT INTO `employee_has_role` VALUES (1001,1),(1004,1),(1002,2),(1005,2),(1007,2),(1003,3),(1008,3),(1006,4);
/*!40000 ALTER TABLE `employee_has_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory`
--

DROP TABLE IF EXISTS `inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventory` (
  `supplyID` int NOT NULL,
  `supplyName` varchar(45) NOT NULL,
  `quantity` int DEFAULT NULL,
  `unitPrice` float NOT NULL,
  `supplier_supplierID` int NOT NULL,
  `category_categoryID` int NOT NULL,
  PRIMARY KEY (`supplyID`),
  KEY `fk_Inventory_supplier1_idx` (`supplier_supplierID`),
  KEY `fk_Inventory_category1_idx` (`category_categoryID`),
  CONSTRAINT `fk_Inventory_category1` FOREIGN KEY (`category_categoryID`) REFERENCES `category` (`categoryID`),
  CONSTRAINT `fk_Inventory_supplier1` FOREIGN KEY (`supplier_supplierID`) REFERENCES `supplier` (`supplierID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory`
--

LOCK TABLES `inventory` WRITE;
/*!40000 ALTER TABLE `inventory` DISABLE KEYS */;
INSERT INTO `inventory` VALUES (201,'Coffee Beans - Arabica',10,35,1,9),(202,'Milk - Whole (Gallon)',5,4.5,2,7),(203,'Sugar Packets (Box of 1000)',2,15,3,7),(204,'Paper Cups (Sleeves of 50)',10,8,4,11),(205,'Espresso Syrup - Vanilla',3,12.75,5,12),(206,'Oat Milk (Carton)',7,5.25,6,7),(207,'Tea Bags - Earl Grey (Box of 25)',5,7.5,3,8),(208,'Pastry Boxes',20,6,4,7);
/*!40000 ALTER TABLE `inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `location` (
  `locationID` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `city` varchar(45) NOT NULL,
  `state` char(2) NOT NULL,
  `zip` varchar(10) NOT NULL,
  `numberTables` int DEFAULT NULL,
  `rentPrice` float DEFAULT NULL,
  PRIMARY KEY (`locationID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
INSERT INTO `location` VALUES ('1','Cafe Mocha','123 Coffee St','San Francisco','CA','94101',12,3000),('2','Brewed Awakening','456 Latte Ave','Los Angeles','CA','90001',15,3500),('3','Espresso Express','789 Espresso Blvd','Chicago','IL','60601',10,2500),('4','The Daily Grind','101 Brew Dr','New York','NY','10001',18,4000),('5','Java Junction','202 Java Ln','Austin','TX','73301',20,3300),('6','Café Harmony','303 Harmony Rd','Miami','FL','33101',8,2200),('7','Steaming Cup','404 Steam Ave','Portland','OR','97201',12,2800),('8','The Beanery','505 Bean Blvd','Seattle','WA','98101',14,3100);
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location_has_menu`
--

DROP TABLE IF EXISTS `location_has_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `location_has_menu` (
  `Location_locationID` varchar(45) NOT NULL,
  `menu_itemCode` int NOT NULL,
  PRIMARY KEY (`Location_locationID`,`menu_itemCode`),
  KEY `fk_Location_has_menu_menu1_idx` (`menu_itemCode`),
  KEY `fk_Location_has_menu_Location1_idx` (`Location_locationID`),
  CONSTRAINT `fk_Location_has_menu_Location1` FOREIGN KEY (`Location_locationID`) REFERENCES `location` (`locationID`),
  CONSTRAINT `fk_Location_has_menu_menu1` FOREIGN KEY (`menu_itemCode`) REFERENCES `menu` (`itemCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location_has_menu`
--

LOCK TABLES `location_has_menu` WRITE;
/*!40000 ALTER TABLE `location_has_menu` DISABLE KEYS */;
INSERT INTO `location_has_menu` VALUES ('1',1),('8',1),('2',2),('3',3),('4',4),('5',5),('6',7),('7',7);
/*!40000 ALTER TABLE `location_has_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu` (
  `itemCode` int NOT NULL,
  `name` varchar(45) NOT NULL,
  `listPrice` float NOT NULL,
  `available` tinyint NOT NULL,
  `description` tinytext,
  `category_categoryID` int NOT NULL,
  PRIMARY KEY (`itemCode`),
  KEY `fk_menu_category_idx` (`category_categoryID`),
  CONSTRAINT `fk_menu_category` FOREIGN KEY (`category_categoryID`) REFERENCES `category` (`categoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,'Espresso',2.5,1,'Single shot espresso',1),(2,'Caffe Latte',4,1,'Espresso with steamed milk',1),(3,'Cappuccino',4.25,1,'Espresso with steamed milk and foam',1),(4,'Iced Coffee',3.5,1,'Cold–brewed coffee over ice',2),(5,'Blueberry Muffin',2.75,1,'Freshly baked blueberry muffin',3),(6,'Ham & Cheese Croissant',5,1,'Buttery croissant with ham and cheese',3),(7,'Turkey Sandwich',6.5,1,'Turkey, lettuce, and tomato on sourdough',4),(8,'Mocha Frappuccino',5.5,1,'Blended mocha with whipped cream',5);
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `orderID` int NOT NULL,
  `menuCode` int NOT NULL,
  `orderquantity` int NOT NULL,
  `orderdate` date NOT NULL,
  `ordernotes` tinytext,
  PRIMARY KEY (`orderID`),
  KEY `fk_menu_has_customers_menu1_idx` (`menuCode`),
  CONSTRAINT `fk_menu_has_customers_menu1` FOREIGN KEY (`menuCode`) REFERENCES `menu` (`itemCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,1,2,'2025-04-10','No sugar'),(2,2,1,'2025-04-10','Oat milk'),(3,3,1,'2025-04-11','Extra foam'),(4,3,3,'2025-04-11','Light ice'),(5,6,2,'2025-04-12','To go'),(6,6,1,'2025-04-12','Heated'),(7,7,1,'2025-04-13','No mayo'),(8,8,2,'2025-04-13','Whipped cream');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders_has_paymentmethod`
--

DROP TABLE IF EXISTS `orders_has_paymentmethod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders_has_paymentmethod` (
  `orders_orderID` int NOT NULL,
  `paymentMethod_paymentMethodID` int NOT NULL,
  PRIMARY KEY (`orders_orderID`,`paymentMethod_paymentMethodID`),
  KEY `fk_order_has_paymentMethod_paymentMethod1_idx` (`paymentMethod_paymentMethodID`),
  KEY `fk_order_has_paymentMethod_order1_idx` (`orders_orderID`),
  CONSTRAINT `fk_order_has_paymentMethod_order1` FOREIGN KEY (`orders_orderID`) REFERENCES `orders` (`orderID`),
  CONSTRAINT `fk_order_has_paymentMethod_paymentMethod1` FOREIGN KEY (`paymentMethod_paymentMethodID`) REFERENCES `paymentmethod` (`paymentMethodID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders_has_paymentmethod`
--

LOCK TABLES `orders_has_paymentmethod` WRITE;
/*!40000 ALTER TABLE `orders_has_paymentmethod` DISABLE KEYS */;
INSERT INTO `orders_has_paymentmethod` VALUES (1,1),(5,1),(6,1),(2,2),(8,2),(3,3),(4,5),(7,6);
/*!40000 ALTER TABLE `orders_has_paymentmethod` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paymentmethod`
--

DROP TABLE IF EXISTS `paymentmethod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paymentmethod` (
  `paymentMethodID` int NOT NULL,
  `paymentMethodName` varchar(45) NOT NULL,
  PRIMARY KEY (`paymentMethodID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paymentmethod`
--

LOCK TABLES `paymentmethod` WRITE;
/*!40000 ALTER TABLE `paymentmethod` DISABLE KEYS */;
INSERT INTO `paymentmethod` VALUES (1,'Credit Card'),(2,'Debit Card'),(3,'Cash'),(4,'Mobile Payment'),(5,'Check'),(6,'Gift Card'),(7,'PayPal'),(8,'Bank Transfer');
/*!40000 ALTER TABLE `paymentmethod` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `roleID` int NOT NULL,
  `roleName` varchar(45) NOT NULL,
  PRIMARY KEY (`roleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'Manager'),(2,'Barista'),(3,'Assistant Manager'),(4,'Cashier'),(5,'Kitchen Staff'),(6,'Key Carrier'),(7,'Janitor');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seating`
--

DROP TABLE IF EXISTS `seating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seating` (
  `TableID` int NOT NULL,
  `TableCapacity` int NOT NULL,
  `Location_locationID` varchar(45) NOT NULL,
  PRIMARY KEY (`TableID`),
  KEY `fk_Seating_Location1_idx` (`Location_locationID`),
  CONSTRAINT `fk_Seating_Location1` FOREIGN KEY (`Location_locationID`) REFERENCES `location` (`locationID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seating`
--

LOCK TABLES `seating` WRITE;
/*!40000 ALTER TABLE `seating` DISABLE KEYS */;
INSERT INTO `seating` VALUES (1,4,'1'),(2,2,'1'),(3,4,'1'),(4,2,'4'),(5,4,'7'),(6,2,'6'),(7,4,'7'),(8,2,'8');
/*!40000 ALTER TABLE `seating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shift`
--

DROP TABLE IF EXISTS `shift`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shift` (
  `shiftID` int NOT NULL,
  `startTime` timestamp NOT NULL,
  `endTime` timestamp NOT NULL,
  `overtime` time DEFAULT NULL,
  `date` date NOT NULL,
  `employee_employeeID` int NOT NULL,
  `notes` tinytext,
  PRIMARY KEY (`shiftID`),
  KEY `fk_shift_employee1_idx` (`employee_employeeID`),
  CONSTRAINT `fk_shift_employee1` FOREIGN KEY (`employee_employeeID`) REFERENCES `employee` (`employeeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shift`
--

LOCK TABLES `shift` WRITE;
/*!40000 ALTER TABLE `shift` DISABLE KEYS */;
INSERT INTO `shift` VALUES (10003,'2025-04-09 11:00:00','2025-04-09 19:00:00','00:00:00','2025-04-09',1002,'Opening shift'),(10004,'2025-04-09 12:00:00','2025-04-09 20:30:00','00:00:01','2025-04-09',1003,'Covered extra lunch rush'),(10005,'2025-04-09 15:00:00','2025-04-09 23:00:00','00:00:00','2025-04-09',1006,'Afternoon cashier'),(10006,'2025-04-09 18:00:00','2025-04-10 02:00:00','00:00:01','2025-04-09',1007,'Closing barista, stayed late for cleaning'),(10009,'2025-04-10 11:00:00','2025-04-10 16:00:00','00:00:00','2025-04-10',1001,'Morning manager duties'),(10010,'2025-04-10 13:00:00','2025-04-10 21:00:00','00:00:00','2025-04-10',1002,NULL),(10012,'2025-04-10 16:00:00','2025-04-11 00:30:00','00:00:01','2025-04-10',1003,'Helped with dishes'),(10014,'2025-04-10 19:00:00','2025-04-11 03:00:00','00:00:00','2025-04-10',1004,'Evening manager');
/*!40000 ALTER TABLE `shift` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shift_has_role`
--

DROP TABLE IF EXISTS `shift_has_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shift_has_role` (
  `shift_shiftID` int NOT NULL,
  `role_roleID` int NOT NULL,
  PRIMARY KEY (`shift_shiftID`,`role_roleID`),
  KEY `fk_shift_has_role_role1_idx` (`role_roleID`),
  KEY `fk_shift_has_role_shift1_idx` (`shift_shiftID`),
  CONSTRAINT `fk_shift_has_role_role1` FOREIGN KEY (`role_roleID`) REFERENCES `role` (`roleID`),
  CONSTRAINT `fk_shift_has_role_shift1` FOREIGN KEY (`shift_shiftID`) REFERENCES `shift` (`shiftID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shift_has_role`
--

LOCK TABLES `shift_has_role` WRITE;
/*!40000 ALTER TABLE `shift_has_role` DISABLE KEYS */;
INSERT INTO `shift_has_role` VALUES (10010,1),(10003,2),(10005,2),(10009,2),(10014,2),(10004,3),(10006,3),(10004,4),(10014,4),(10012,5);
/*!40000 ALTER TABLE `shift_has_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplier` (
  `supplierID` int NOT NULL,
  `supplierName` varchar(45) NOT NULL,
  `contactFirstName` varchar(45) DEFAULT NULL,
  `contactLastName` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `state` char(2) DEFAULT NULL,
  `zip` varchar(10) DEFAULT NULL,
  `phone` char(10) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`supplierID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
INSERT INTO `supplier` VALUES (1,'Brew Supply Co.','John','Doe','123 Brew St','San Francisco','CA','94101','4155551234','john.doe@brewsupply.com'),(2,'Coffee Bean Distributors','Jane','Smith','456 Bean Ave','Los Angeles','CA','90001','2135555678','jane.smith@coffeebeandist.com'),(3,'Latte Imports','Michael','Johnson','789 Latte Blvd','Chicago','IL','60601','3125559101','michael.johnson@latteimports.com'),(4,'Espresso Parts','Emily','Brown','101 Espresso Dr','New York','NY','10001','2125552345','emily.brown@espressoparts.com'),(5,'Roast Masters','William','Davis','202 Roast Ln','Austin','TX','73301','5125556789','william.davis@roastmasters.com'),(6,'Café Supplies Inc.','Sarah','Wilson','303 Supply Rd','Miami','FL','33101','3055554321','sarah.wilson@cafesupplies.com'),(7,'Perfect Grind','David','Martinez','404 Grind Ave','Portland','OR','97201','5035553456','david.martinez@perfectgrind.com'),(8,'The Bean Company','Linda','Garcia','505 Bean Rd','Seattle','WA','98101','2065557890','linda.garcia@thebeancompany.com');
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-29 11:37:31
