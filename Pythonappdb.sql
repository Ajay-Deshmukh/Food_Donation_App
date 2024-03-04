CREATE DATABASE  IF NOT EXISTS `pythonminiproject` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `pythonminiproject`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: pythonminiproject
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `food`
--

DROP TABLE IF EXISTS `food`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `food` (
  `RestaurantRegistrationNumber` int DEFAULT NULL,
  `Type` varchar(10) NOT NULL,
  `FoodItem` varchar(255) NOT NULL,
  `Quantity` int NOT NULL,
  `PreparedOn` date NOT NULL,
  KEY `RestaurantRegistrationNumber` (`RestaurantRegistrationNumber`),
  CONSTRAINT `food_ibfk_1` FOREIGN KEY (`RestaurantRegistrationNumber`) REFERENCES `restaurant` (`RegistrationNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `food`
--

LOCK TABLES `food` WRITE;
/*!40000 ALTER TABLE `food` DISABLE KEYS */;
INSERT INTO `food` VALUES (101,'Veg','Paneer Tikka',50,'2024-02-05'),(102,'Non-Veg','Chicken Curry',30,'2024-02-04'),(103,'Veg','Masala Dosa',80,'2024-02-03'),(104,'Non-Veg','Butter Chicken',40,'2024-02-02'),(105,'Veg','Chettinad Idli',60,'2024-02-01'),(106,'Non-Veg','Fish Curry',25,'2024-01-31'),(107,'Veg','Dal Baati Churma',35,'2024-01-30'),(108,'Non-Veg','Prawn Biryani',20,'2024-01-29'),(109,'Veg','Mysore Pak',45,'2024-01-28'),(110,'Non-Veg','Hyderabadi Biryani',55,'2024-01-27');
/*!40000 ALTER TABLE `food` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ngo`
--

DROP TABLE IF EXISTS `ngo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ngo` (
  `Name` varchar(255) NOT NULL,
  `City` varchar(255) NOT NULL,
  `District` varchar(255) NOT NULL,
  `State` varchar(255) NOT NULL,
  `PhoneNumber` varchar(15) NOT NULL,
  `EmailId` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ngo`
--

LOCK TABLES `ngo` WRITE;
/*!40000 ALTER TABLE `ngo` DISABLE KEYS */;
INSERT INTO `ngo` VALUES ('Food for All','Delhi','New Delhi','Delhi','7654321098','foodforall@gmail.com'),('Helping Hands Foundation','Mumbai','Mumbai','Maharashtra','8765432109','helpinghandsfoundation@gmail.com'),('Serve the Needy','Bangalore','Bangalore','Karnataka','9876543210','servetheneedy@gmail.com'),('Joy of Giving','Chandigarh','Chandigarh','Punjab','6543210987','joyofgiving@gmail.com'),('Care and Share','Chennai','Chennai','Tamil Nadu','5432109876','careandshare@gmail.com'),('Kolkata Cares','Kolkata','Kolkata','West Bengal','4321098765','kolkatacares@gmail.com'),('Rajasthan Relief','Jaipur','Jaipur','Rajasthan','3210987654','rajasthanrelief@gmail.com'),('Goa Green','Goa','Panaji','Goa','2109876543','goagreen@gmail.com'),('Mysuru Support','Mysuru','Mysuru','Karnataka','1098765432','mysurusupport@gmail.com'),('Hyderabad Hope','Hyderabad','Hyderabad','Telangana','9876543210','hyderabadhope@gmail.com');
/*!40000 ALTER TABLE `ngo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `RestaurantName` varchar(255) NOT NULL,
  `RestaurantRegistrationNumber` int DEFAULT NULL,
  `NGOName` varchar(255) NOT NULL,
  `FoodItem` varchar(255) NOT NULL,
  `Quantity` int NOT NULL,
  `Status` varchar(20) NOT NULL,
  KEY `RestaurantRegistrationNumber` (`RestaurantRegistrationNumber`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`RestaurantRegistrationNumber`) REFERENCES `restaurant` (`RegistrationNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES ('Food Palace',101,'Food for All','Masala Dosa',20,'Accepted'),('Spice Delight',102,'Helping Hands Foundation','Butter Chicken',15,'Rejected'),('Tandoori Treat',103,'Serve the Needy','Fish Curry',25,'Accepted'),('Punjabi Dhaba',104,'Joy of Giving','Dal Baati Churma',30,'Rejected'),('Coastal Flavors',105,'Care and Share','Chettinad Idli',40,'Accepted'),('Kolkata Bites',106,'Kolkata Cares','Chicken Curry',20,'Accepted'),('Rajasthani Rasoi',107,'Rajasthan Relief','Paneer Tikka',10,'Rejected'),('Goan Delicacies',108,'Goa Green','Prawn Biryani',18,'Accepted'),('Mysore Spices',109,'Mysuru Support','Mysore Pak',22,'Rejected'),('Hyderabad House',110,'Hyderabad Hope','Hyderabadi Biryani',35,'Accepted');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restaurant`
--

DROP TABLE IF EXISTS `restaurant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `restaurant` (
  `RegistrationNumber` int NOT NULL,
  `Name` varchar(255) NOT NULL,
  `City` varchar(255) NOT NULL,
  `District` varchar(255) NOT NULL,
  `State` varchar(255) NOT NULL,
  `PhoneNumber` varchar(15) NOT NULL,
  `EmailId` varchar(255) NOT NULL,
  PRIMARY KEY (`RegistrationNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurant`
--

LOCK TABLES `restaurant` WRITE;
/*!40000 ALTER TABLE `restaurant` DISABLE KEYS */;
INSERT INTO `restaurant` VALUES (101,'Food Palace','Mumbai','Mumbai','Maharashtra','9876543210','foodpalace@gmail.com'),(102,'Spice Delight','Delhi','New Delhi','Delhi','8765432109','spicedelight@gmail.com'),(103,'Tandoori Treat','Bangalore','Bangalore','Karnataka','7654321098','tandooritreat@gmail.com'),(104,'Punjabi Dhaba','Chandigarh','Chandigarh','Punjab','6543210987','punjabidhaba@gmail.com'),(105,'Coastal Flavors','Chennai','Chennai','Tamil Nadu','5432109876','coastalflavors@gmail.com'),(106,'Kolkata Bites','Kolkata','Kolkata','West Bengal','4321098765','kolkatabites@gmail.com'),(107,'Rajasthani Rasoi','Jaipur','Jaipur','Rajasthan','3210987654','rajasthanirasoi@gmail.com'),(108,'Goan Delicacies','Goa','Panaji','Goa','2109876543','goandelicacies@gmail.com'),(109,'Mysore Spices','Mysuru','Mysuru','Karnataka','1098765432','mysurespices@gmail.com'),(110,'Hyderabad House','Hyderabad','Hyderabad','Telangana','9876543210','hyderabadhouse@gmail.com');
/*!40000 ALTER TABLE `restaurant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone_no` varchar(20) DEFAULT NULL,
  `email_id` varchar(100) NOT NULL,
  `user_type` varchar(15) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email_id` (`email_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('','','','','','Restaurant',NULL),('abjn','123','kjd','234','jnwef','jnf',NULL),('admin1','adminpass','Admin User','+91 9999999999','admin@example.com','admin',NULL),('admin2','adminpass','Admin User 2','+91 8888888888','admin2@example.com','admin',NULL),('aja','123','hd','123','hgd','NGO',NULL),('ajay','123','ajay','123','ajay','individual',NULL),('ananya_sharma','securepass','Ananya Sharma','+91 8765432109','ananya@example.com','individual',NULL),('aui','123','jhsbd','123','sjbhd','sjdbf',NULL),('compassion_trust','compassionpass','Compassion Trust NGO','+91 9876543213','info@compassiontrust.org','ngo',NULL),('fnhfg','hgghhf','thfhfht','thfthbf','gdfbgfh','hgfhh',NULL),('hotel','123','hotel','123','hotel','Restaurant',NULL),('may','123','may','123','may','NGO',NULL),('mayur','123','mayur','123','mayur','Individual',NULL),('mayur1','123','mayur','1234','kajsn','ngo',NULL),('mj','123','mj','123','mj','mj',NULL),('ngo','123','ngo','123','ngo','NGO',NULL),('Nih','1','Niharika Foundation','7420948333','niharikawashere@gmail.com','NGO',NULL),('oajer','123','wekjn','123','sjdn','jne',NULL),('person','123','person','123','person','Individual',NULL),('qkwn','123','ksjdn','123','jdnq','ojnds',NULL),('qwe','123','qwe','123','qwe','NGO',NULL),('raj','123','raj','123','raj','Restaurant',NULL),('rajesh_kumar','password123','Rajesh Kumar','+91 9876543210','rajesh@example.com','individual',NULL),('sa','1','Mahalaxmi Enterprises','7420948333','mahalaxmienterprises@gmail.com','NGO','Mumbai'),('sar','1','Saraswati Foundation','7420948333','saraswatifoundation@gmail.com','Restaurant','Mumbai'),('self','123','self','123','self','Individual',NULL),('sneha_foundation','snehapass','Sneha Foundation','+91 9876543212','info@snehafoundation.org','ngo',NULL),('spice_cafe','spicepass','Spice Cafe','+91 9876543211','info@spicecafe.in','restaurant',NULL),('spice_paradise','paradisepass','Spice Paradise Restaurant','+91 7777777776','info@spiceparadise.in','restaurant',NULL),('taste_of_india','indianpass','Taste of India Restaurant','+91 9988776655','info@tasteofindia.com','restaurant',NULL),('user123','userpass','User Test','+91 7777777777','user@example.com','individual',NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-04 22:30:22
