CREATE DATABASE flowerPower;

USE flowerPower;

CREATE TABLE `activiteit` (
  `activiteitcode` varchar(3) NOT NULL AUTO_INCREMENT,
  `activiteit` varchar(40) NOT NULL ,
  ADD PRIMARY KEY (`activiteitcode`),
)

CREATE TABLE `jongerenreactiviteit` (
  `jongerecode` varchar(5) NOT NULL AUTO_INCREMENT,
  `actiecode` varchar(3) NOT NULL ,
  `startdatum` DATE NOT NULL,
  `afgerond` TINYINT (1)
  ADD CONSTRAINT `jongerenreactiviteit` FOREIGN KEY (`jongerecode`) REFERENCES `jongere` (`jongerencode`),
)

CREATE TABLE `instituutscode` (
  `instituutscode` varchar(5) NOT NULL AUTO_INCREMENT,
  `instituut` varchar(40) NOT NULL ,
  `instituuttelefoon` varchar(11) NOT NULL,
  ADD PRIMARY KEY (`instituutscode`),
)

CREATE TABLE `jongereninstituut` (
  `jongerencode` varchar(5) NOT NULL AUTO_INCREMENT,
  `instituutscode` varchar(5) NOT NULL ,
  `startdatum` DATE NOT NULL,
  ADD CONSTRAINT `jongereninstituut` FOREIGN KEY (`instituutscode`) REFERENCES `instituutscode` (`instituutscode`),
)

CREATE TABLE `jongere` (
  `jongerencode` varchar(5) NOT NULL AUTO_INCREMENT,
  `roepnaam` varchar(5) NOT NULL ,
  `tussenvoegsel` varchar(7) NOT NULL,
  `achternaam` varchar()25 NOT NULL,
  `inschrijfdatum` DATE NOT NULL,
  ADD PRIMARY KEY (`jongerencode`),
)
