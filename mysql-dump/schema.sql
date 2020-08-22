-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: CHEATSHEET
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `cheatsheets`
--

DROP TABLE IF EXISTS `cheatsheets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cheatsheets` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `cheat` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `is_private` bit(1) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `tag` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cheatsheets`
--

LOCK TABLES `cheatsheets` WRITE;
/*!40000 ALTER TABLE `cheatsheets` DISABLE KEYS */;
INSERT INTO `cheatsheets` VALUES (2,'docker build -t myimage:1.0 .','Build an image from the Dockerfile in the current directory and tag the image',_binary '','rajapars','Docker','Build Image'),(3,'docker image ls','List all images that are locally stored with the Docker Engine',_binary '','rajapars','Docker','List Images'),(4,'docker image rm myimage:1.0','Delete an image from the local image store',_binary '','rajapars','Docker','Delete Image'),(5,'docker pull myimage:1.0','Pull an image from a registry',_binary '','rajapars','Docker','Pull Image'),(6,'docker tag myimage:1.0 myrepo/myimage:2.0','Retag a local image with a new image name and tag',_binary '','rajapars','Docker','Retag Image'),(7,'docker push myrepo/myimage:2.0','Push an image to a registry',_binary '','rajapars','Docker','Push Image'),(8,'docker container run --name web -p 5000:80 alpine:3.9','Run a container from the Alpine version 3.9 image, name the running container “web” and expose port 5000 externally, mapped to port 80 inside the container.',_binary '','rajapars','Docker','Run a Container from Image'),(9,'docker container stop mycontainername','Stop a running container through SIGTERM',_binary '','rajapars','Docker','Stop Container'),(10,'docker container kill mycontainername','Stop a running container through SIGKILL',_binary '','rajapars','Docker','Stop Container'),(11,'docker network ls','List the networks',_binary '','rajapars','Docker','List Networks'),(12,'docker container ls','List the running containers (add --all to include stopped containers)',_binary '','rajapars','Docker','List Running Containers'),(13,'docker container rm -f $(docker ps -aq)','Delete all running and stopped containers',_binary '','rajapars','Docker','Delete Running Containers'),(14,'docker container rm mycontainername','Delete stopped containers',_binary '','rajapars','Docker','Delete Container'),(15,'docker logs mycontainername','Print a container logs',_binary '','rajapars','Docker','Print Container Logs'),(16,'docker logs --tail 100 mycontainername','Print the last 100 lines of a container’s logs',_binary '','rajapars','Docker','Print Container Logs');
/*!40000 ALTER TABLE `cheatsheets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `username` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('rajapars','Raja Parsaulian','$2a$10$kaK4xrKzSUehNMM2XLPsy.A/w4ZILqMusMcpZqiKPhmEWkYUEcr0G'),('username','New User','$2a$10$tA6AbCRuGMlGp3j9gEu3A.jyvZZqBdCI7vrRN/I0K.sqQQ8/AWzUO');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-22 20:39:20
