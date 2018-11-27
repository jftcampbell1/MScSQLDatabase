-- phpMyAdmin SQL Dump
-- version 4.7.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 25, 2018 at 08:29 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.0.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jcampbell56`
--

-- --------------------------------------------------------

--
-- Table structure for table `EZ_Airports`
--

CREATE TABLE `EZ_Airports` (
  `AirportID` int(11) NOT NULL,
  `AirportName` varchar(39) NOT NULL,
  `CityID` int(11) NOT NULL,
  `AirportCode` varchar(3) NOT NULL,
  `Latitude` decimal(30,12) NOT NULL,
  `Longitude` decimal(33,13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `EZ_Airports`
--

INSERT INTO `EZ_Airports` (`AirportID`, `AirportName`, `CityID`, `AirportCode`, `Latitude`, `Longitude`) VALUES
(1, 'Bordeaux-Mérignac Airport', 4, 'BOD', '44.828300476100', '-0.7155560255050'),
(2, 'Lyon Saint-Exupéry Airport', 11, 'LYS', '45.725555600000', '5.0811111000000'),
(3, 'Nice-Côte d\'Azur Airport', 1, 'NCE', '43.658401489300', '7.2158699035600'),
(4, 'Charles de Gaulle International Airport', 15, 'CDG', '49.012798309300', '2.5499999523200'),
(5, 'Paris-Orly Airport', 15, 'ORY', '48.723333300000', '2.3794444000000'),
(6, 'Toulouse-Blagnac Airport', 25, 'TLS', '43.629101000000', '1.3638200000000'),
(7, 'Berlin-Schönefeld International Airport', 19, 'SXF', '52.380001068115', '13.5225000381470'),
(8, 'Hamburg Airport', 26, 'HAM', '53.630401611328', '9.9882297515869'),
(9, 'Malpensa International Airport', 22, 'MXP', '45.630600000000', '8.7281100000000'),
(10, 'Naples International Airport', 13, 'NAP', '40.886002000000', '14.2908000000000'),
(11, 'Venice Marco Polo Airport', 16, 'VCE', '45.505299000000', '12.3519000000000'),
(13, 'Lisbon Portela Airport', 23, 'LIS', '38.781299591100', '-9.1359195709200'),
(14, 'Francisco de Sá Carneiro Airport', 6, 'OPO', '41.248100280800', '-8.6813898086500'),
(15, 'Barcelona International Airport', 2, 'BCN', '41.297100067139', '2.0784599781036'),
(16, 'Belfast International Airport', 20, 'BFS', '54.657501220700', '-6.2158298492400'),
(17, 'Bristol Airport', 27, 'BRS', '51.382702000000', '-2.7190900000000'),
(18, 'Edinburgh Airport', 5, 'EDI', '55.950000762939', '0.0000000000000'),
(19, 'Glasgow International Airport', 7, 'GLA', '55.871898651100', '-4.4330601692200'),
(20, 'Inverness Airport', 24, 'INV', '57.542499542236', '-4.0475001335144'),
(21, 'Liverpool John Lennon Airport', 10, 'LPL', '53.333599090576', '-2.8497200012207'),
(22, 'London Gatwick Airport', 21, 'LGW', '51.148101806641', '-0.1902779936790'),
(23, 'London Luton Airport', 21, 'LTN', '51.874698638916', '-0.3683330118656'),
(24, 'Southend Airport', 21, 'SEN', '51.571399688721', '0.6955559849739'),
(25, 'London Stansted Airport', 21, 'STN', '51.884998321500', '0.2349999994040'),
(26, 'Manchester Airport', 28, 'MAN', '53.353698730469', '-2.2749500274658'),
(27, 'Newcastle Airport', 14, 'NCL', '55.037498474121', '-1.6916699409485');

-- --------------------------------------------------------

--
-- Table structure for table `EZ_City`
--

CREATE TABLE `EZ_City` (
  `CityID` int(11) NOT NULL,
  `City` varchar(255) NOT NULL,
  `CountryID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `EZ_City`
--

INSERT INTO `EZ_City` (`CityID`, `City`, `CountryID`) VALUES
(1, 'Nice', 7),
(2, 'Barcelona', 3),
(3, 'Birmingham', 1),
(4, 'Bordeaux', 7),
(5, 'Edinburgh', 1),
(6, 'Porto', 11),
(7, 'Glasgow', 1),
(8, 'Krakow', 10),
(9, 'Lanzarote', 3),
(10, 'Liverpool', 1),
(11, 'Lyon', 7),
(12, 'Malaga', 3),
(13, 'Naples', 5),
(14, 'Newcastle', 1),
(15, 'Paris', 7),
(16, 'Venice', 5),
(17, 'Basel', 8),
(18, 'Belgrade', 6),
(19, 'Berlin', 4),
(20, 'Belfast', 1),
(21, 'London', 1),
(22, 'Milan', 5),
(23, 'Lisbon', 11),
(24, 'Inverness', 1),
(25, 'Toulouse', 7),
(26, 'Hamburg', 4),
(27, 'Bristol', 1),
(28, 'Manchester', 1);

-- --------------------------------------------------------

--
-- Table structure for table `EZ_Country`
--

CREATE TABLE `EZ_Country` (
  `CountryID` int(11) NOT NULL,
  `Country` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `EZ_Country`
--

INSERT INTO `EZ_Country` (`CountryID`, `Country`) VALUES
(1, 'United Kingdom'),
(2, 'Ireland'),
(3, 'Spain'),
(4, 'Germany'),
(5, 'Italy'),
(6, 'Serbia'),
(7, 'France'),
(8, 'Switzerland'),
(9, 'Austria'),
(10, 'Poland'),
(11, 'Portugal');

-- --------------------------------------------------------

--
-- Table structure for table `EZ_Customer`
--

CREATE TABLE `EZ_Customer` (
  `CustomerID` int(11) NOT NULL,
  `TitleID` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `PhoneCodeID` int(11) NOT NULL,
  `PhoneNumber` varchar(10) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `EZ_Customer`
--

INSERT INTO `EZ_Customer` (`CustomerID`, `TitleID`, `Name`, `PhoneCodeID`, `PhoneNumber`, `Email`, `Password`) VALUES
(1, 1, 'Alan Smith', 1, '7510098572', 'AlanSmith@gmail.com', 'Ã$ »ï¼ßl.‰÷'),
(2, 1, 'Joe Black', 1, '7750117681', 'JoeBlack@yahoo.com', 'sHŸ¢S¾Ò–¡é^Ó'),
(3, 1, 'Gabriel DiCanio', 5, '7665328877', 'gdicanio111@hotmail.com', '–coe]ïx{Íö›hÌD'),
(4, 3, 'Susan Simms', 1, '7776544309', 'suzysimms@hotmail.com', 'ªT±Z+6¶çœÛ­$\r±w'),
(6, 3, 'Angela McComb', 1, '7762039110', 'angelcomber@hotmail.com', 'l-§\rˆÓõ«hç±ñ.ÜÝ'),
(9, 1, 'Aidan Reilly', 2, '8766512981', 'a_reilly1960@hotmail.com', 'ÄuTËÜýaÞíÄ2Öí†');

-- --------------------------------------------------------

--
-- Table structure for table `EZ_CustomerAddress`
--

CREATE TABLE `EZ_CustomerAddress` (
  `CustomerAddressID` int(11) NOT NULL,
  `CustomerID` int(11) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `AddressContinued` varchar(255) NOT NULL,
  `CustCity` varchar(255) NOT NULL,
  `Postcode/Zip` varchar(20) NOT NULL,
  `CountryID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `EZ_CustomerAddress`
--

INSERT INTO `EZ_CustomerAddress` (`CustomerAddressID`, `CustomerID`, `Address`, `AddressContinued`, `CustCity`, `Postcode/Zip`, `CountryID`) VALUES
(1, 1, '1 Malone Road', '', 'Belfast', 'BT9 1QN', 1),
(2, 2, '10 Fellow Park', 'Dunmurry', 'Belfast', 'BT11 2TP', 1),
(3, 3, '201 Firze Plaza', '', 'Rome', '7653', 5),
(4, 4, '37 Greenpark Avenue', 'Comber', 'Belfast', 'BT8 1QN', 1),
(5, 6, '13 Main Street', '', 'Ballymena', 'BT7 1AS', 1),
(7, 9, '25 Navan Road', '', 'Cavan', '365FR7', 2);

-- --------------------------------------------------------

--
-- Table structure for table `EZ_Flights`
--

CREATE TABLE `EZ_Flights` (
  `FlightID` int(11) NOT NULL,
  `RouteNumberID` int(11) NOT NULL,
  `PlaneID` int(11) NOT NULL,
  `DepartureDateTime` datetime NOT NULL,
  `ArrivalDateTime` datetime NOT NULL,
  `BasePrice` decimal(6,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `EZ_Flights`
--

INSERT INTO `EZ_Flights` (`FlightID`, `RouteNumberID`, `PlaneID`, `DepartureDateTime`, `ArrivalDateTime`, `BasePrice`) VALUES
(1, 1, 1, '2018-11-22 08:00:00', '2018-11-22 10:00:00', '19.99'),
(2, 2, 2, '2018-11-22 07:00:00', '2018-11-22 09:00:00', '29.99'),
(3, 3, 2, '2018-11-22 16:00:00', '2018-11-22 18:00:00', '29.99'),
(4, 4, 1, '2018-11-22 18:00:00', '2018-11-22 20:00:00', '29.99'),
(5, 1, 1, '2018-11-23 08:00:00', '2018-11-23 10:00:00', '29.99'),
(6, 2, 2, '2018-11-23 07:00:00', '2018-11-23 09:00:00', '29.99'),
(7, 3, 2, '2018-11-23 16:00:00', '2018-11-23 18:00:00', '59.99'),
(8, 4, 1, '2018-11-23 18:00:00', '2018-11-23 20:00:00', '59.99'),
(9, 1, 1, '2018-11-24 09:00:00', '2018-11-24 11:00:00', '49.99'),
(10, 2, 2, '2018-11-24 10:00:00', '2018-11-24 12:00:00', '49.99'),
(11, 3, 2, '2018-11-24 15:00:00', '2018-11-05 17:00:00', '19.99'),
(12, 4, 1, '2018-11-24 17:00:00', '2018-11-05 19:00:00', '19.99'),
(13, 9, 1, '2018-11-23 12:00:00', '2018-11-23 13:30:00', '34.99'),
(14, 10, 1, '2018-11-23 15:00:00', '2018-11-23 16:30:00', '34.99'),
(15, 13, 3, '2018-12-07 18:00:00', '2018-12-07 22:00:00', '49.99'),
(16, 14, 3, '2018-12-09 19:00:00', '2018-12-07 23:00:00', '49.99'),
(17, 16, 6, '2019-01-14 08:00:00', '2019-01-14 09:00:00', '20.99'),
(18, 16, 6, '2019-01-15 08:00:00', '2019-01-15 09:00:00', '20.99'),
(19, 16, 6, '2019-01-16 08:00:00', '2019-01-16 09:00:00', '20.99'),
(20, 16, 6, '2019-01-17 08:00:00', '2019-01-17 09:00:00', '20.99'),
(21, 16, 6, '2019-01-18 08:00:00', '2019-01-18 09:00:00', '20.99'),
(22, 16, 6, '2019-01-21 08:00:00', '2019-01-21 09:00:00', '20.99'),
(23, 16, 6, '2019-01-22 08:00:00', '2019-01-22 09:00:00', '20.99'),
(24, 16, 6, '2019-01-23 08:00:00', '2019-01-23 09:00:00', '20.99'),
(25, 16, 6, '2019-01-24 08:00:00', '2019-01-24 09:00:00', '20.99'),
(26, 16, 6, '2019-01-25 08:00:00', '2019-01-25 09:00:00', '20.99'),
(27, 16, 6, '2019-01-28 08:00:00', '2019-01-28 09:00:00', '20.99'),
(28, 16, 6, '2019-01-29 08:00:00', '2019-01-29 09:00:00', '20.99'),
(29, 16, 6, '2019-01-30 08:00:00', '2019-01-30 09:00:00', '20.99'),
(30, 16, 6, '2019-01-31 08:00:00', '2019-01-31 09:00:00', '20.99'),
(32, 16, 6, '2019-02-01 08:00:00', '2019-02-01 09:00:00', '20.99');

-- --------------------------------------------------------

--
-- Table structure for table `EZ_HoldLuggage`
--

CREATE TABLE `EZ_HoldLuggage` (
  `HoldLuggageID` int(11) NOT NULL,
  `OrderID` int(11) NOT NULL,
  `HoldLuggageTypeID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `EZ_HoldLuggage`
--

INSERT INTO `EZ_HoldLuggage` (`HoldLuggageID`, `OrderID`, `HoldLuggageTypeID`) VALUES
(1, 1, 14),
(2, 1, 16),
(3, 3, 14),
(5, 9, 15);

-- --------------------------------------------------------

--
-- Table structure for table `EZ_HoldLuggageType`
--

CREATE TABLE `EZ_HoldLuggageType` (
  `LuggageTypeID` int(11) NOT NULL,
  `LuggageType` varchar(255) NOT NULL,
  `Price` decimal(6,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `EZ_HoldLuggageType`
--

INSERT INTO `EZ_HoldLuggageType` (`LuggageTypeID`, `LuggageType`, `Price`) VALUES
(1, '15 Kilogram Hold Bag', '11.99'),
(2, '23 Kilogram Hold Bag', '15.99'),
(3, '26 Kilogram Hold Bag', '27.99'),
(4, '29 Kilogram Hold Bag One Way', '39.99'),
(5, '32 Kilogram Hold Bag One Way', '51.99'),
(6, 'Other Small Sports Equipment One Way', '37.00'),
(7, 'Bicycle One Way', '45.00'),
(8, 'Canoe One Way', '45.00'),
(9, 'Sporting Firearm One Way', '37.00'),
(10, 'Hang Glider One Way', '37.00'),
(11, 'Skis and/or Boots One Way', '37.00'),
(12, 'Snowboard One Way', '37.00'),
(13, 'Windsurfing Board One Way', '45.00'),
(14, '23 Kilogram Hold Bag Return', '31.98'),
(15, '26 Kilogram Hold Bag Return', '55.98'),
(16, '29 Kilogram Hold Bag Return', '79.98'),
(17, '32 Kilogram Hold Bag Return', '103.98'),
(18, 'Other Small Sports Equipment Return', '74.00'),
(19, 'Bicycle Return', '90.00'),
(20, 'Canoe Return', '90.00'),
(21, 'Sporting Firearm Return', '74.00'),
(22, 'Hang Glider Return', '74.00'),
(23, 'Skis and/or Boots Return', '74.00'),
(24, 'Snowboard Return', '74.00'),
(25, 'Windsurfing Board Return', '90.00');

-- --------------------------------------------------------

--
-- Table structure for table `EZ_OrderDetails`
--

CREATE TABLE `EZ_OrderDetails` (
  `OrderDetailsID` int(11) NOT NULL,
  `OrderID` int(11) NOT NULL,
  `OrderItemID` int(11) NOT NULL,
  `Price` decimal(6,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `EZ_OrderDetails`
--

INSERT INTO `EZ_OrderDetails` (`OrderDetailsID`, `OrderID`, `OrderItemID`, `Price`) VALUES
(1, 1, 1, '299.94'),
(2, 1, 2, '103.44'),
(3, 1, 3, '111.96'),
(4, 3, 1, '299.94'),
(5, 3, 2, '23.94'),
(6, 3, 3, '31.98'),
(7, 5, 1, '99.98'),
(8, 5, 2, '0.00'),
(9, 5, 3, '0.00'),
(10, 9, 1, '499.90'),
(11, 9, 2, '0.00'),
(12, 9, 3, '59.98');

-- --------------------------------------------------------

--
-- Table structure for table `EZ_OrderItems`
--

CREATE TABLE `EZ_OrderItems` (
  `OrderItemID` int(11) NOT NULL,
  `Description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `EZ_OrderItems`
--

INSERT INTO `EZ_OrderItems` (`OrderItemID`, `Description`) VALUES
(1, 'Flight Total'),
(2, 'Seat Total'),
(3, 'Baggage Total');

-- --------------------------------------------------------

--
-- Table structure for table `EZ_Orders`
--

CREATE TABLE `EZ_Orders` (
  `OrderID` int(11) NOT NULL,
  `CustomerID` int(11) DEFAULT NULL,
  `OrderDateTime` datetime NOT NULL,
  `OrderTotalPrice` decimal(5,2) NOT NULL,
  `BookingReference` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `EZ_Orders`
--

INSERT INTO `EZ_Orders` (`OrderID`, `CustomerID`, `OrderDateTime`, `OrderTotalPrice`, `BookingReference`) VALUES
(1, 1, '2018-02-07 12:30:00', '515.34', 'BOOK1297'),
(3, 2, '2018-02-13 13:00:00', '355.86', 'BOOK7654'),
(5, 3, '2018-07-09 15:00:00', '99.98', 'BOOK4554'),
(9, 6, '2018-11-12 00:00:00', '559.88', 'BOOK1244'),
(10, 6, '2018-09-09 00:00:00', '0.00', 'BOOK7881'),
(11, 6, '2018-09-02 00:00:00', '0.00', 'BOOK0017'),
(12, 9, '2018-07-01 00:00:00', '0.00', 'BOOK2019'),
(13, 9, '2018-07-01 08:00:00', '0.00', 'BOOK1982'),
(14, 1, '2018-06-03 00:00:00', '0.00', 'BOOK3981'),
(15, 1, '2018-06-03 00:00:00', '0.00', 'BOOK4444'),
(16, 1, '2018-06-10 00:00:00', '0.00', 'BOOK3333');

-- --------------------------------------------------------

--
-- Table structure for table `EZ_Passenger`
--

CREATE TABLE `EZ_Passenger` (
  `PassengerID` int(11) NOT NULL,
  `PassengerDetailsID` int(11) NOT NULL,
  `FlightID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `EZ_Passenger`
--

INSERT INTO `EZ_Passenger` (`PassengerID`, `PassengerDetailsID`, `FlightID`) VALUES
(1, 1, 15),
(2, 2, 15),
(3, 3, 15),
(4, 1, 16),
(5, 2, 16),
(6, 3, 16),
(7, 4, 15),
(8, 5, 15),
(9, 6, 15),
(10, 4, 16),
(11, 5, 16),
(12, 6, 16),
(13, 7, 15),
(14, 8, 15),
(17, 11, 15),
(18, 12, 15),
(19, 13, 15),
(20, 14, 15),
(21, 15, 15),
(22, 11, 16),
(23, 12, 16),
(24, 13, 16),
(25, 14, 16),
(26, 15, 16),
(27, 16, 17),
(28, 17, 17),
(29, 18, 17),
(30, 19, 17),
(31, 20, 17),
(32, 21, 17),
(33, 22, 22),
(34, 23, 22),
(35, 24, 22),
(36, 25, 22),
(37, 26, 22),
(38, 27, 22),
(39, 28, 22),
(40, 29, 18),
(41, 30, 18),
(42, 31, 18),
(43, 32, 18),
(44, 33, 18),
(45, 34, 28),
(46, 35, 28),
(47, 36, 28),
(48, 37, 28),
(49, 38, 28),
(50, 39, 16),
(51, 40, 25),
(52, 41, 32),
(53, 39, 19),
(54, 39, 19);

-- --------------------------------------------------------

--
-- Table structure for table `EZ_PassengerDetails`
--

CREATE TABLE `EZ_PassengerDetails` (
  `PassengerDetailsID` int(11) NOT NULL,
  `TitleID` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `PassportNumber` varchar(12) NOT NULL,
  `PassengerTypeID` int(11) NOT NULL,
  `PlusMemberID` int(11) NOT NULL,
  `OrderID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `EZ_PassengerDetails`
--

INSERT INTO `EZ_PassengerDetails` (`PassengerDetailsID`, `TitleID`, `Name`, `PassportNumber`, `PassengerTypeID`, `PlusMemberID`, `OrderID`) VALUES
(1, 1, 'Alan Smith', '', 1, 2, 1),
(2, 3, 'Judy Smith', '', 1, 2, 1),
(3, 3, 'Granny Smith', '', 1, 2, 1),
(4, 1, 'Joe Black', '', 1, 2, 3),
(5, 3, 'Jane Black', '', 4, 2, 3),
(6, 5, 'Mary Black', '', 3, 2, 3),
(7, 1, 'Andra Pirlo', '', 1, 2, 5),
(8, 1, 'Francezco Totti', '', 1, 2, 5),
(11, 3, 'Angela McComb', '', 4, 2, 9),
(12, 1, 'Derek McComb', '', 1, 2, 9),
(13, 2, 'Luke McComb', '', 2, 2, 9),
(14, 5, 'Sasha McComb', '', 2, 2, 9),
(15, 5, 'Rose McComb', '', 3, 2, 9),
(16, 3, 'Joan McComb', '', 1, 2, 10),
(17, 3, 'Angela McComb', '', 1, 2, 10),
(18, 3, 'Anges MccOmb', '', 1, 2, 10),
(19, 3, 'Suzie McComb', '', 1, 2, 10),
(20, 3, 'Holly McComb', '', 1, 2, 10),
(21, 3, 'AJune McComb', '', 1, 2, 10),
(22, 3, 'Maria McComb', '', 1, 2, 11),
(23, 3, 'Joan McComb', '', 1, 2, 11),
(24, 3, 'Angela McComb', '', 1, 2, 11),
(25, 3, 'Anges Mccomb', '', 1, 2, 11),
(26, 3, 'Suzie McComb', '', 1, 2, 11),
(27, 3, 'Holly McComb', '', 1, 2, 11),
(28, 3, 'AJune McComb', '', 1, 2, 11),
(29, 1, 'Aidan Reilly', '', 1, 2, 12),
(30, 1, 'Joesph Reilly', '', 1, 2, 12),
(31, 1, 'Nial Reilly', '', 1, 2, 12),
(32, 1, 'Adam Reilly', '', 1, 2, 12),
(33, 1, 'James Reilly', '', 1, 2, 12),
(34, 1, 'Aidan Reilly', '', 1, 2, 13),
(35, 1, 'Joesph Reilly', '', 1, 2, 13),
(36, 1, 'Nial Reilly', '', 1, 2, 13),
(37, 1, 'Adam Reilly', '', 1, 2, 13),
(38, 1, 'James Reilly', '', 1, 2, 13),
(39, 1, 'Alan Smith', '', 1, 2, 14),
(40, 1, 'Alan Smith', '', 1, 2, 15),
(41, 1, 'Alan Smith', '', 1, 2, 16);

-- --------------------------------------------------------

--
-- Table structure for table `EZ_PassengerType`
--

CREATE TABLE `EZ_PassengerType` (
  `PassengerTypeID` int(11) NOT NULL,
  `PassengerType` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `EZ_PassengerType`
--

INSERT INTO `EZ_PassengerType` (`PassengerTypeID`, `PassengerType`) VALUES
(1, 'Adult'),
(2, 'Child'),
(3, 'Infant'),
(4, 'Adult With Infant');

-- --------------------------------------------------------

--
-- Table structure for table `EZ_PaymentDetails`
--

CREATE TABLE `EZ_PaymentDetails` (
  `PaymentDetailsID` int(11) NOT NULL,
  `CustomerID` int(11) NOT NULL,
  `PaymentTypeID` int(11) NOT NULL,
  `CardNumber` varchar(255) NOT NULL,
  `ExpiryDate` varchar(5) NOT NULL,
  `CVVNumber` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `EZ_PaymentDetails`
--

INSERT INTO `EZ_PaymentDetails` (`PaymentDetailsID`, `CustomerID`, `PaymentTypeID`, `CardNumber`, `ExpiryDate`, `CVVNumber`) VALUES
(1, 1, 1, '¾õÕUÆG’!Zä•ñ&l«äú²|ï~ðXúÛÔ', '01/22', 'ÚÈß¾Þ×9¦m™å/êN'),
(2, 2, 1, '^çcÏÆ ç­‡åÖêQðÁl«äú²|ï~ðXúÛÔ', '03/19', '„FR¢¦ÐJÅ…Øƒºn’\"'),
(3, 3, 1, '…ÑûòS‹\"YÏ/0n	wl«äú²|ï~ðXúÛÔ', '11/22', 'àü¬\0`ÎŒ—Aˆ!°Žê[,'),
(4, 4, 1, 'šÙn~ÄŒ†Ò¿O(ü¾Gš…K~˜ÕdO†\'¦Yú£|', '11/22', 'Ý\n-O·kš‡øžxœ'),
(7, 6, 1, '’ßŒ±aâ$²ó/wóaJPl«äú²|ï~ðXúÛÔ', '02/19', 'Ã\ZèmæKdTwJ´éž¥Ë'),
(8, 9, 1, 'WÎ°Ixwwœ¢È°Z›l«äú²|ï~ðXúÛÔ', '02/22', 'Ã\ZèmæKdTwJ´éž¥Ë');

-- --------------------------------------------------------

--
-- Table structure for table `EZ_PaymentType`
--

CREATE TABLE `EZ_PaymentType` (
  `PaymentTypeID` int(11) NOT NULL,
  `PaymentType` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `EZ_PaymentType`
--

INSERT INTO `EZ_PaymentType` (`PaymentTypeID`, `PaymentType`) VALUES
(1, 'MasterCard'),
(2, 'Visa Debit');

-- --------------------------------------------------------

--
-- Table structure for table `EZ_PhoneCode`
--

CREATE TABLE `EZ_PhoneCode` (
  `PhoneCodeID` int(11) NOT NULL,
  `PhoneCode` varchar(10) NOT NULL,
  `CountryID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `EZ_PhoneCode`
--

INSERT INTO `EZ_PhoneCode` (`PhoneCodeID`, `PhoneCode`, `CountryID`) VALUES
(1, '+44', 1),
(2, '+353', 2),
(3, '+33', 7),
(4, '+49', 4),
(5, '+39', 5),
(6, '+34', 3);

-- --------------------------------------------------------

--
-- Table structure for table `EZ_Plane`
--

CREATE TABLE `EZ_Plane` (
  `PlaneID` int(11) NOT NULL,
  `TailNumber` varchar(255) NOT NULL,
  `PlaneTypeID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `EZ_Plane`
--

INSERT INTO `EZ_Plane` (`PlaneID`, `TailNumber`, `PlaneTypeID`) VALUES
(1, 'G-EJAR', 1),
(2, 'G-EJJB', 1),
(3, 'G-EJBR', 1),
(6, 'G-QWRU', 1),
(7, 'G-HGVX', 1);

-- --------------------------------------------------------

--
-- Table structure for table `EZ_PlaneType`
--

CREATE TABLE `EZ_PlaneType` (
  `PlaneTypeID` int(11) NOT NULL,
  `Model` varchar(255) NOT NULL,
  `Capacity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `EZ_PlaneType`
--

INSERT INTO `EZ_PlaneType` (`PlaneTypeID`, `Model`, `Capacity`) VALUES
(1, 'A319-000', 156),
(2, 'A320-200', 168);

-- --------------------------------------------------------

--
-- Table structure for table `EZ_PlusMember`
--

CREATE TABLE `EZ_PlusMember` (
  `EZ_EasyJetPlusMember` int(11) NOT NULL,
  `PlusMembership` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `EZ_PlusMember`
--

INSERT INTO `EZ_PlusMember` (`EZ_EasyJetPlusMember`, `PlusMembership`) VALUES
(1, 'Y'),
(2, 'N');

-- --------------------------------------------------------

--
-- Table structure for table `EZ_RouteNumber`
--

CREATE TABLE `EZ_RouteNumber` (
  `RouteNumberID` int(11) NOT NULL,
  `RouteID` int(11) NOT NULL,
  `FlightNumber` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `EZ_RouteNumber`
--

INSERT INTO `EZ_RouteNumber` (`RouteNumberID`, `RouteID`, `FlightNumber`) VALUES
(1, 18, 'EZY201'),
(2, 11, 'EZY202'),
(3, 18, 'EZY203'),
(4, 11, 'EZY204'),
(5, 12, 'EZY231'),
(6, 17, 'EZY232'),
(7, 12, 'EZY233'),
(8, 17, 'EZY244'),
(9, 19, 'EZY240'),
(10, 5, 'EZY241'),
(13, 10, 'EZY801'),
(14, 20, 'EZY802'),
(16, 8, 'EZY701'),
(17, 8, 'EZY703');

-- --------------------------------------------------------

--
-- Table structure for table `EZ_Routes`
--

CREATE TABLE `EZ_Routes` (
  `RouteID` int(11) NOT NULL,
  `DepartureAirport` int(11) NOT NULL,
  `ArrivalAirport` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `EZ_Routes`
--

INSERT INTO `EZ_Routes` (`RouteID`, `DepartureAirport`, `ArrivalAirport`) VALUES
(1, 16, 15),
(2, 16, 1),
(3, 16, 4),
(4, 16, 18),
(5, 16, 22),
(6, 16, 23),
(7, 16, 26),
(8, 16, 27),
(9, 16, 2),
(10, 16, 11),
(11, 22, 4),
(12, 25, 4),
(13, 22, 1),
(14, 22, 3),
(15, 25, 2),
(16, 22, 6),
(17, 4, 25),
(18, 4, 22),
(19, 22, 16),
(20, 11, 16);

-- --------------------------------------------------------

--
-- Table structure for table `EZ_Seat`
--

CREATE TABLE `EZ_Seat` (
  `SeatID` int(11) NOT NULL,
  `SeatName` varchar(4) NOT NULL,
  `SeatTypeID` int(11) NOT NULL,
  `PlaneTypeID` int(11) NOT NULL,
  `SeatRow` int(3) NOT NULL,
  `SeatColumn` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `EZ_Seat`
--

INSERT INTO `EZ_Seat` (`SeatID`, `SeatName`, `SeatTypeID`, `PlaneTypeID`, `SeatRow`, `SeatColumn`) VALUES
(1, '1A', 1, 1, 1, 'A'),
(2, '1B', 1, 1, 1, 'B'),
(3, '1C', 1, 1, 1, 'C'),
(4, '1D', 1, 1, 1, 'D'),
(5, '1E', 1, 1, 1, 'E'),
(6, '1F', 1, 1, 1, 'F'),
(7, '2A', 2, 1, 2, 'A'),
(8, '2B', 2, 1, 2, 'B'),
(9, '2C', 2, 1, 2, 'C'),
(10, '2D', 2, 1, 2, 'D'),
(11, '2E', 2, 1, 2, 'E'),
(12, '2F', 2, 1, 2, 'F'),
(13, '3A', 3, 1, 3, 'A'),
(14, '3B', 3, 1, 3, 'B'),
(15, '3C', 3, 1, 3, 'C'),
(16, '3D', 3, 1, 3, 'D'),
(17, '3E', 3, 1, 3, 'E'),
(18, '3F', 3, 1, 3, 'F'),
(19, '4A', 3, 1, 4, 'A'),
(20, '4B', 3, 1, 4, 'B'),
(21, '4C', 3, 1, 4, 'C'),
(22, '4D', 3, 1, 4, 'D'),
(23, '4E', 3, 1, 4, 'E'),
(24, '4F', 3, 1, 4, 'F');

-- --------------------------------------------------------

--
-- Table structure for table `EZ_SeatBooking`
--

CREATE TABLE `EZ_SeatBooking` (
  `SeatBookingID` int(11) NOT NULL,
  `PassengerID` int(11) NOT NULL,
  `SeatID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `EZ_SeatBooking`
--

INSERT INTO `EZ_SeatBooking` (`SeatBookingID`, `PassengerID`, `SeatID`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 7),
(5, 5, 8),
(6, 6, 9),
(7, 7, 13),
(8, 8, 14),
(9, 9, 14),
(10, 10, 13),
(11, 11, 14),
(12, 12, 14);

-- --------------------------------------------------------

--
-- Table structure for table `EZ_SeatType`
--

CREATE TABLE `EZ_SeatType` (
  `SeatTypeID` int(11) NOT NULL,
  `Description` varchar(255) NOT NULL,
  `SeatPrice` decimal(6,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `EZ_SeatType`
--

INSERT INTO `EZ_SeatType` (`SeatTypeID`, `Description`, `SeatPrice`) VALUES
(1, 'Extra Legroom', '20.99'),
(2, 'Up Front', '13.49'),
(3, 'Standard', '3.99'),
(4, 'Not Selected', '0.00');

-- --------------------------------------------------------

--
-- Table structure for table `EZ_SpecialAssistance`
--

CREATE TABLE `EZ_SpecialAssistance` (
  `SpecialAssistanceID` int(11) NOT NULL,
  `PassengerDetailsID` int(11) NOT NULL,
  `SpecialAssistanceTypeID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `EZ_SpecialAssistance`
--

INSERT INTO `EZ_SpecialAssistance` (`SpecialAssistanceID`, `PassengerDetailsID`, `SpecialAssistanceTypeID`) VALUES
(3, 3, 1),
(4, 3, 2),
(5, 13, 6),
(6, 25, 4),
(7, 35, 6);

-- --------------------------------------------------------

--
-- Table structure for table `EZ_SpecialAssistanceType`
--

CREATE TABLE `EZ_SpecialAssistanceType` (
  `EZ_SpecialAssistanceTypeID` int(11) NOT NULL,
  `Assistance` varchar(255) NOT NULL,
  `Description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `EZ_SpecialAssistanceType`
--

INSERT INTO `EZ_SpecialAssistanceType` (`EZ_SpecialAssistanceTypeID`, `Assistance`, `Description`) VALUES
(1, 'Blind/significantly sight impaired', NULL),
(2, 'Wheelchair user/assistance/unable to walk long distances', NULL),
(3, 'Travelling with registered guide/assistance dog', NULL),
(4, 'Deaf/significantly hearing impaired', NULL),
(5, 'Intellectual/developmental disability', NULL),
(6, 'Nut allergy', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `EZ_Title`
--

CREATE TABLE `EZ_Title` (
  `TitleID` int(11) NOT NULL,
  `Title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `EZ_Title`
--

INSERT INTO `EZ_Title` (`TitleID`, `Title`) VALUES
(1, 'Mr'),
(2, 'Master'),
(3, 'Mrs'),
(4, 'Ms'),
(5, 'Miss');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `EZ_Airports`
--
ALTER TABLE `EZ_Airports`
  ADD PRIMARY KEY (`AirportID`),
  ADD KEY `FK_Airport_CityID` (`CityID`);

--
-- Indexes for table `EZ_City`
--
ALTER TABLE `EZ_City`
  ADD PRIMARY KEY (`CityID`),
  ADD KEY `FK_City_CountryID` (`CountryID`);

--
-- Indexes for table `EZ_Country`
--
ALTER TABLE `EZ_Country`
  ADD PRIMARY KEY (`CountryID`);

--
-- Indexes for table `EZ_Customer`
--
ALTER TABLE `EZ_Customer`
  ADD PRIMARY KEY (`CustomerID`),
  ADD UNIQUE KEY `Email` (`Email`),
  ADD KEY `FK_Customer_TitleID` (`TitleID`),
  ADD KEY `FK_Customer_PhoneCodeID` (`PhoneCodeID`);

--
-- Indexes for table `EZ_CustomerAddress`
--
ALTER TABLE `EZ_CustomerAddress`
  ADD PRIMARY KEY (`CustomerAddressID`),
  ADD KEY `FK_CustomerAddress_CountryID` (`CountryID`),
  ADD KEY `FK_CustomerAddress_CustomerID` (`CustomerID`);

--
-- Indexes for table `EZ_Flights`
--
ALTER TABLE `EZ_Flights`
  ADD PRIMARY KEY (`FlightID`),
  ADD KEY `FK_Flights_RouteNumberID` (`RouteNumberID`),
  ADD KEY `FK_Flights_PlaneID` (`PlaneID`);

--
-- Indexes for table `EZ_HoldLuggage`
--
ALTER TABLE `EZ_HoldLuggage`
  ADD PRIMARY KEY (`HoldLuggageID`),
  ADD KEY `FK_HoldLuggage_HoldLuggageType` (`HoldLuggageTypeID`),
  ADD KEY `FK_HoldLuggage_OrderID` (`OrderID`);

--
-- Indexes for table `EZ_HoldLuggageType`
--
ALTER TABLE `EZ_HoldLuggageType`
  ADD PRIMARY KEY (`LuggageTypeID`);

--
-- Indexes for table `EZ_OrderDetails`
--
ALTER TABLE `EZ_OrderDetails`
  ADD PRIMARY KEY (`OrderDetailsID`),
  ADD KEY `FK_OrderDetails_OrderID` (`OrderID`),
  ADD KEY `FK_OrderDetails_OrderItemID` (`OrderItemID`);

--
-- Indexes for table `EZ_OrderItems`
--
ALTER TABLE `EZ_OrderItems`
  ADD PRIMARY KEY (`OrderItemID`);

--
-- Indexes for table `EZ_Orders`
--
ALTER TABLE `EZ_Orders`
  ADD PRIMARY KEY (`OrderID`),
  ADD UNIQUE KEY `BookingReference` (`BookingReference`),
  ADD KEY `FK_Order_CustomerID` (`CustomerID`);

--
-- Indexes for table `EZ_Passenger`
--
ALTER TABLE `EZ_Passenger`
  ADD PRIMARY KEY (`PassengerID`),
  ADD KEY `FK_Passenger_PassengerDetailsID` (`PassengerDetailsID`),
  ADD KEY `FK_Passenger_FlightID` (`FlightID`);

--
-- Indexes for table `EZ_PassengerDetails`
--
ALTER TABLE `EZ_PassengerDetails`
  ADD PRIMARY KEY (`PassengerDetailsID`),
  ADD KEY `FK_PassengerDetails_TitleID` (`TitleID`),
  ADD KEY `FK_PassengerDetails_PassengerTypeID` (`PassengerTypeID`),
  ADD KEY `FK_PassengerDetails_PlusMemberID` (`PlusMemberID`),
  ADD KEY `FK_PassengerDetails_OrderID` (`OrderID`);

--
-- Indexes for table `EZ_PassengerType`
--
ALTER TABLE `EZ_PassengerType`
  ADD PRIMARY KEY (`PassengerTypeID`);

--
-- Indexes for table `EZ_PaymentDetails`
--
ALTER TABLE `EZ_PaymentDetails`
  ADD PRIMARY KEY (`PaymentDetailsID`),
  ADD KEY `FK_PaymentDetails_PaymentTypeID` (`PaymentTypeID`),
  ADD KEY `FK_PaymentDetails_CustomerID` (`CustomerID`);

--
-- Indexes for table `EZ_PaymentType`
--
ALTER TABLE `EZ_PaymentType`
  ADD PRIMARY KEY (`PaymentTypeID`);

--
-- Indexes for table `EZ_PhoneCode`
--
ALTER TABLE `EZ_PhoneCode`
  ADD PRIMARY KEY (`PhoneCodeID`),
  ADD KEY `FK_PhoneCode_CountryID` (`CountryID`);

--
-- Indexes for table `EZ_Plane`
--
ALTER TABLE `EZ_Plane`
  ADD PRIMARY KEY (`PlaneID`),
  ADD UNIQUE KEY `TailNumber` (`TailNumber`),
  ADD UNIQUE KEY `TailNumber_2` (`TailNumber`),
  ADD KEY `FK_Plane_PlaneTypeID` (`PlaneTypeID`);

--
-- Indexes for table `EZ_PlaneType`
--
ALTER TABLE `EZ_PlaneType`
  ADD PRIMARY KEY (`PlaneTypeID`);

--
-- Indexes for table `EZ_PlusMember`
--
ALTER TABLE `EZ_PlusMember`
  ADD PRIMARY KEY (`EZ_EasyJetPlusMember`);

--
-- Indexes for table `EZ_RouteNumber`
--
ALTER TABLE `EZ_RouteNumber`
  ADD PRIMARY KEY (`RouteNumberID`),
  ADD UNIQUE KEY `FlightNumber` (`FlightNumber`) USING BTREE,
  ADD KEY `FK_FlightNumber_RouteID` (`RouteID`);

--
-- Indexes for table `EZ_Routes`
--
ALTER TABLE `EZ_Routes`
  ADD PRIMARY KEY (`RouteID`),
  ADD KEY `FK_Routes_DepartureAirport` (`DepartureAirport`),
  ADD KEY `FK_Routes_ArrivalAirport` (`ArrivalAirport`);

--
-- Indexes for table `EZ_Seat`
--
ALTER TABLE `EZ_Seat`
  ADD PRIMARY KEY (`SeatID`),
  ADD UNIQUE KEY `SeatName` (`SeatName`),
  ADD KEY `FK_Seat_PlaneTypeID` (`PlaneTypeID`),
  ADD KEY `FK_Seat_SeatTypeID` (`SeatTypeID`);

--
-- Indexes for table `EZ_SeatBooking`
--
ALTER TABLE `EZ_SeatBooking`
  ADD PRIMARY KEY (`SeatBookingID`),
  ADD KEY `FK_SeatBooking_PassengerID` (`PassengerID`),
  ADD KEY `FK_SeatBooking_SeatID` (`SeatID`);

--
-- Indexes for table `EZ_SeatType`
--
ALTER TABLE `EZ_SeatType`
  ADD PRIMARY KEY (`SeatTypeID`);

--
-- Indexes for table `EZ_SpecialAssistance`
--
ALTER TABLE `EZ_SpecialAssistance`
  ADD PRIMARY KEY (`SpecialAssistanceID`),
  ADD KEY `FK_SpecialAssistance_SpecialAssistanceType` (`SpecialAssistanceTypeID`),
  ADD KEY `FK_SpecialAssistance_PassengerDetailsID` (`PassengerDetailsID`);

--
-- Indexes for table `EZ_SpecialAssistanceType`
--
ALTER TABLE `EZ_SpecialAssistanceType`
  ADD PRIMARY KEY (`EZ_SpecialAssistanceTypeID`);

--
-- Indexes for table `EZ_Title`
--
ALTER TABLE `EZ_Title`
  ADD PRIMARY KEY (`TitleID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `EZ_Airports`
--
ALTER TABLE `EZ_Airports`
  MODIFY `AirportID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `EZ_City`
--
ALTER TABLE `EZ_City`
  MODIFY `CityID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `EZ_Country`
--
ALTER TABLE `EZ_Country`
  MODIFY `CountryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `EZ_Customer`
--
ALTER TABLE `EZ_Customer`
  MODIFY `CustomerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `EZ_CustomerAddress`
--
ALTER TABLE `EZ_CustomerAddress`
  MODIFY `CustomerAddressID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `EZ_Flights`
--
ALTER TABLE `EZ_Flights`
  MODIFY `FlightID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `EZ_HoldLuggage`
--
ALTER TABLE `EZ_HoldLuggage`
  MODIFY `HoldLuggageID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `EZ_HoldLuggageType`
--
ALTER TABLE `EZ_HoldLuggageType`
  MODIFY `LuggageTypeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `EZ_OrderDetails`
--
ALTER TABLE `EZ_OrderDetails`
  MODIFY `OrderDetailsID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `EZ_OrderItems`
--
ALTER TABLE `EZ_OrderItems`
  MODIFY `OrderItemID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `EZ_Orders`
--
ALTER TABLE `EZ_Orders`
  MODIFY `OrderID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `EZ_Passenger`
--
ALTER TABLE `EZ_Passenger`
  MODIFY `PassengerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `EZ_PassengerDetails`
--
ALTER TABLE `EZ_PassengerDetails`
  MODIFY `PassengerDetailsID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `EZ_PassengerType`
--
ALTER TABLE `EZ_PassengerType`
  MODIFY `PassengerTypeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `EZ_PaymentDetails`
--
ALTER TABLE `EZ_PaymentDetails`
  MODIFY `PaymentDetailsID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `EZ_PaymentType`
--
ALTER TABLE `EZ_PaymentType`
  MODIFY `PaymentTypeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `EZ_PhoneCode`
--
ALTER TABLE `EZ_PhoneCode`
  MODIFY `PhoneCodeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `EZ_Plane`
--
ALTER TABLE `EZ_Plane`
  MODIFY `PlaneID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `EZ_PlaneType`
--
ALTER TABLE `EZ_PlaneType`
  MODIFY `PlaneTypeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `EZ_PlusMember`
--
ALTER TABLE `EZ_PlusMember`
  MODIFY `EZ_EasyJetPlusMember` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `EZ_RouteNumber`
--
ALTER TABLE `EZ_RouteNumber`
  MODIFY `RouteNumberID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `EZ_Routes`
--
ALTER TABLE `EZ_Routes`
  MODIFY `RouteID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `EZ_Seat`
--
ALTER TABLE `EZ_Seat`
  MODIFY `SeatID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `EZ_SeatBooking`
--
ALTER TABLE `EZ_SeatBooking`
  MODIFY `SeatBookingID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `EZ_SeatType`
--
ALTER TABLE `EZ_SeatType`
  MODIFY `SeatTypeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `EZ_SpecialAssistance`
--
ALTER TABLE `EZ_SpecialAssistance`
  MODIFY `SpecialAssistanceID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `EZ_SpecialAssistanceType`
--
ALTER TABLE `EZ_SpecialAssistanceType`
  MODIFY `EZ_SpecialAssistanceTypeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `EZ_Title`
--
ALTER TABLE `EZ_Title`
  MODIFY `TitleID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `EZ_Airports`
--
ALTER TABLE `EZ_Airports`
  ADD CONSTRAINT `FK_Airport_CityID` FOREIGN KEY (`CityID`) REFERENCES `EZ_City` (`CityID`);

--
-- Constraints for table `EZ_City`
--
ALTER TABLE `EZ_City`
  ADD CONSTRAINT `FK_City_CountryID` FOREIGN KEY (`CountryID`) REFERENCES `EZ_Country` (`CountryID`);

--
-- Constraints for table `EZ_Customer`
--
ALTER TABLE `EZ_Customer`
  ADD CONSTRAINT `FK_Customer_PhoneCodeID` FOREIGN KEY (`PhoneCodeID`) REFERENCES `EZ_PhoneCode` (`PhoneCodeID`),
  ADD CONSTRAINT `FK_Customer_Titles` FOREIGN KEY (`TitleID`) REFERENCES `EZ_Title` (`TitleID`);

--
-- Constraints for table `EZ_CustomerAddress`
--
ALTER TABLE `EZ_CustomerAddress`
  ADD CONSTRAINT `FK_CustomerAddress_CountryID` FOREIGN KEY (`CountryID`) REFERENCES `EZ_Country` (`CountryID`),
  ADD CONSTRAINT `FK_CustomerAddress_CustomerID` FOREIGN KEY (`CustomerID`) REFERENCES `EZ_Customer` (`CustomerID`) ON DELETE CASCADE;

--
-- Constraints for table `EZ_Flights`
--
ALTER TABLE `EZ_Flights`
  ADD CONSTRAINT `FK_Flights_PlaneID` FOREIGN KEY (`PlaneID`) REFERENCES `EZ_Plane` (`PlaneID`),
  ADD CONSTRAINT `FK_Flights_RouteNumberID` FOREIGN KEY (`RouteNumberID`) REFERENCES `EZ_RouteNumber` (`RouteNumberID`);

--
-- Constraints for table `EZ_HoldLuggage`
--
ALTER TABLE `EZ_HoldLuggage`
  ADD CONSTRAINT `FK_HoldLuggage_HoldLuggageType` FOREIGN KEY (`HoldLuggageTypeID`) REFERENCES `EZ_HoldLuggageType` (`LuggageTypeID`),
  ADD CONSTRAINT `FK_HoldLuggage_OrderID` FOREIGN KEY (`OrderID`) REFERENCES `EZ_Orders` (`OrderID`) ON DELETE CASCADE;

--
-- Constraints for table `EZ_OrderDetails`
--
ALTER TABLE `EZ_OrderDetails`
  ADD CONSTRAINT `FK_OrderDetails_OrderID` FOREIGN KEY (`OrderID`) REFERENCES `EZ_Orders` (`OrderID`),
  ADD CONSTRAINT `FK_OrderDetails_OrderItemID` FOREIGN KEY (`OrderItemID`) REFERENCES `EZ_OrderItems` (`OrderItemID`);

--
-- Constraints for table `EZ_Orders`
--
ALTER TABLE `EZ_Orders`
  ADD CONSTRAINT `FK_Orders_CustomerID` FOREIGN KEY (`CustomerID`) REFERENCES `EZ_Customer` (`CustomerID`) ON DELETE SET NULL;

--
-- Constraints for table `EZ_Passenger`
--
ALTER TABLE `EZ_Passenger`
  ADD CONSTRAINT `FK_Passenger_FlightID` FOREIGN KEY (`FlightID`) REFERENCES `EZ_Flights` (`FlightID`),
  ADD CONSTRAINT `FK_Passenger_PassengerDetailsID` FOREIGN KEY (`PassengerDetailsID`) REFERENCES `EZ_PassengerDetails` (`PassengerDetailsID`) ON DELETE CASCADE;

--
-- Constraints for table `EZ_PassengerDetails`
--
ALTER TABLE `EZ_PassengerDetails`
  ADD CONSTRAINT `FK_PassengerDetails_OrderID` FOREIGN KEY (`OrderID`) REFERENCES `EZ_Orders` (`OrderID`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_PassengerDetails_PassengerTypeID` FOREIGN KEY (`PassengerTypeID`) REFERENCES `EZ_PassengerType` (`PassengerTypeID`),
  ADD CONSTRAINT `FK_PassengerDetails_PlusMemberID` FOREIGN KEY (`PlusMemberID`) REFERENCES `EZ_PlusMember` (`EZ_EasyJetPlusMember`),
  ADD CONSTRAINT `FK_PassengerDetails_TitleID` FOREIGN KEY (`TitleID`) REFERENCES `EZ_Title` (`TitleID`);

--
-- Constraints for table `EZ_PaymentDetails`
--
ALTER TABLE `EZ_PaymentDetails`
  ADD CONSTRAINT `FK_PaymentDetails_CustomerID` FOREIGN KEY (`CustomerID`) REFERENCES `EZ_Customer` (`CustomerID`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_PaymentDetails_PaymentTypeID` FOREIGN KEY (`PaymentTypeID`) REFERENCES `EZ_PaymentType` (`PaymentTypeID`);

--
-- Constraints for table `EZ_PhoneCode`
--
ALTER TABLE `EZ_PhoneCode`
  ADD CONSTRAINT `FK_PhoneCode_CountryID` FOREIGN KEY (`CountryID`) REFERENCES `EZ_Country` (`CountryID`);

--
-- Constraints for table `EZ_Plane`
--
ALTER TABLE `EZ_Plane`
  ADD CONSTRAINT `FK_Plane_PlaneTypeID` FOREIGN KEY (`PlaneTypeID`) REFERENCES `EZ_PlaneType` (`PlaneTypeID`);

--
-- Constraints for table `EZ_RouteNumber`
--
ALTER TABLE `EZ_RouteNumber`
  ADD CONSTRAINT `FK_FlightNumber_RouteID` FOREIGN KEY (`RouteID`) REFERENCES `EZ_Routes` (`RouteID`);

--
-- Constraints for table `EZ_Routes`
--
ALTER TABLE `EZ_Routes`
  ADD CONSTRAINT `FK_Routes_ArrivalAirport` FOREIGN KEY (`ArrivalAirport`) REFERENCES `EZ_Airports` (`AirportID`),
  ADD CONSTRAINT `FK_Routes_DepartureAirport` FOREIGN KEY (`DepartureAirport`) REFERENCES `EZ_Airports` (`AirportID`);

--
-- Constraints for table `EZ_Seat`
--
ALTER TABLE `EZ_Seat`
  ADD CONSTRAINT `FK_Seat_PlaneTypeID` FOREIGN KEY (`PlaneTypeID`) REFERENCES `EZ_PlaneType` (`PlaneTypeID`),
  ADD CONSTRAINT `FK_Seat_SeatTypeID` FOREIGN KEY (`SeatTypeID`) REFERENCES `EZ_SeatType` (`SeatTypeID`);

--
-- Constraints for table `EZ_SeatBooking`
--
ALTER TABLE `EZ_SeatBooking`
  ADD CONSTRAINT `FK_SeatBooking_PassengerID` FOREIGN KEY (`PassengerID`) REFERENCES `EZ_Passenger` (`PassengerID`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_SeatBooking_SeatID` FOREIGN KEY (`SeatID`) REFERENCES `EZ_Seat` (`SeatID`);

--
-- Constraints for table `EZ_SpecialAssistance`
--
ALTER TABLE `EZ_SpecialAssistance`
  ADD CONSTRAINT `FK_SpecialAssistance_PassengerDetailsID` FOREIGN KEY (`PassengerDetailsID`) REFERENCES `EZ_PassengerDetails` (`PassengerDetailsID`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_SpecialAssistance_SpecialAssistanceType` FOREIGN KEY (`SpecialAssistanceTypeID`) REFERENCES `EZ_SpecialAssistanceType` (`EZ_SpecialAssistanceTypeID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
