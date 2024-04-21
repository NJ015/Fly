-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 21, 2024 at 11:55 AM
-- Server version: 8.2.0
-- PHP Version: 8.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fly_se`
--

-- --------------------------------------------------------

--
-- Table structure for table `airplanes`
--

DROP TABLE IF EXISTS `airplanes`;
CREATE TABLE IF NOT EXISTS `airplanes` (
  `airplane_id` int NOT NULL AUTO_INCREMENT,
  `airplane_model` varchar(100) DEFAULT NULL,
  `airplane_capacity` int DEFAULT NULL,
  `airplane_passengers` int DEFAULT NULL,
  `airplane_purpose` varchar(50) DEFAULT NULL,
  `airplane_insurance` tinyint(1) DEFAULT NULL,
  `airplane_registration` varchar(50) DEFAULT NULL,
  `airplane_age` int DEFAULT NULL,
  `airplane_fuel` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`airplane_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `airplanes`
--

INSERT INTO `airplanes` (`airplane_id`, `airplane_model`, `airplane_capacity`, `airplane_passengers`, `airplane_purpose`, `airplane_insurance`, `airplane_registration`, `airplane_age`, `airplane_fuel`) VALUES
(1, 'Boeing 737', 200, 150, 'Passenger Transport', 1, 'ABCD1234', 5, 'Jet Fuel'),
(2, 'Airbus A320', 180, 160, 'Passenger Transport', 1, 'EFGH5678', 3, 'Jet Fuel');

-- --------------------------------------------------------

--
-- Table structure for table `car_rentings`
--

DROP TABLE IF EXISTS `car_rentings`;
CREATE TABLE IF NOT EXISTS `car_rentings` (
  `car_renting_id` int NOT NULL AUTO_INCREMENT,
  `car_renting_type` varchar(50) DEFAULT NULL,
  `car_renting_name` varchar(100) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`car_renting_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `car_rentings`
--

INSERT INTO `car_rentings` (`car_renting_id`, `car_renting_type`, `car_renting_name`, `price`) VALUES
(1, 'SUV', 'Luxury SUV Rental', 80.00),
(2, 'Compact', 'City Car Rental', 40.00);

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

DROP TABLE IF EXISTS `companies`;
CREATE TABLE IF NOT EXISTS `companies` (
  `profile_id` int NOT NULL,
  `field` varchar(100) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `legal_status` varchar(50) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`profile_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`profile_id`, `field`, `type`, `legal_status`, `location`) VALUES
(2, 'Technology', 'Private', 'LLC', 'San Francisco'),
(3, 'Finance', 'Public', 'Corporation', 'New York');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
CREATE TABLE IF NOT EXISTS `employees` (
  `employee_id` int NOT NULL AUTO_INCREMENT,
  `employee_address` varchar(255) DEFAULT NULL,
  `employee_salary` decimal(10,2) DEFAULT NULL,
  `employee_role` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`employee_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`employee_id`, `employee_address`, `employee_salary`, `employee_role`) VALUES
(1, '123 Main St', 60000.00, 'Developer'),
(2, '456 Elm St', 75000.00, 'Manager');

-- --------------------------------------------------------

--
-- Table structure for table `flights`
--

DROP TABLE IF EXISTS `flights`;
CREATE TABLE IF NOT EXISTS `flights` (
  `flight_nb` int NOT NULL AUTO_INCREMENT,
  `source` varchar(100) NOT NULL,
  `destination` varchar(100) NOT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `Available_seats` int NOT NULL,
  PRIMARY KEY (`flight_nb`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `flights`
--

INSERT INTO `flights` (`flight_nb`, `source`, `destination`, `date`, `time`, `Available_seats`) VALUES
(1, 'New York', 'Los Angeles', '2024-05-01', '08:00:00', 100),
(2, 'London', 'Paris', '2024-05-02', '10:30:00', 30),
(3, 'Tokyo', 'Sydney', '2024-05-03', '12:45:00', 76);

-- --------------------------------------------------------

--
-- Table structure for table `hotels`
--

DROP TABLE IF EXISTS `hotels`;
CREATE TABLE IF NOT EXISTS `hotels` (
  `hotel_id` int NOT NULL AUTO_INCREMENT,
  `hotel_type` varchar(50) DEFAULT NULL,
  `hotel_name` varchar(100) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`hotel_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `hotels`
--

INSERT INTO `hotels` (`hotel_id`, `hotel_type`, `hotel_name`, `price`) VALUES
(1, 'Resort', 'Beachfront Resort', 200.00),
(2, 'Business', 'City Business Hotel', 120.00);

-- --------------------------------------------------------

--
-- Table structure for table `passengers`
--

DROP TABLE IF EXISTS `passengers`;
CREATE TABLE IF NOT EXISTS `passengers` (
  `profile_id` int NOT NULL,
  `feedback` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`profile_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `passengers`
--

INSERT INTO `passengers` (`profile_id`, `feedback`) VALUES
(1, 'Great service!'),
(2, 'Smooth booking process.'),
(3, 'Friendly staff.');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
CREATE TABLE IF NOT EXISTS `payments` (
  `payment_id` int NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `method` varchar(50) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `tax` decimal(10,2) DEFAULT NULL,
  `currency` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`payment_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`payment_id`, `date`, `method`, `amount`, `mobile`, `status`, `tax`, `currency`) VALUES
(1, '2024-05-01', 'Credit Card', 150.00, '5555555555', 'Paid', 10.00, 'USD'),
(2, '2024-05-02', 'PayPal', 300.00, '1234567890', 'Pending', 20.00, 'EUR');

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

DROP TABLE IF EXISTS `profiles`;
CREATE TABLE IF NOT EXISTS `profiles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` enum('passenger','company','employee') NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `type`, `name`, `mobile`, `email`, `username`, `password`) VALUES
(1, 'passenger', 'John Doe', '1234567890', 'john.doe@example.com', 'johndoe', 'password123'),
(2, 'company', 'XYZ Corporation', '9876543210', 'info@xyzcorp.com', 'xyzcorp', 'securepass'),
(3, 'employee', 'Alice Smith', '5555555555', 'alice.smith@company.com', 'asmith', 'p@ssw0rd');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
CREATE TABLE IF NOT EXISTS `services` (
  `service_id` int NOT NULL AUTO_INCREMENT,
  `service_type` varchar(50) NOT NULL,
  `service_name` varchar(100) NOT NULL,
  `hotel_id` int DEFAULT NULL,
  `car_renting_id` int DEFAULT NULL,
  `tourism_id` int DEFAULT NULL,
  PRIMARY KEY (`service_id`),
  KEY `hotel_id` (`hotel_id`),
  KEY `car_renting_id` (`car_renting_id`),
  KEY `tourism_id` (`tourism_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`service_id`, `service_type`, `service_name`, `hotel_id`, `car_renting_id`, `tourism_id`) VALUES
(1, 'Hotel', 'Luxury Resort', 1, NULL, NULL),
(2, 'CarRenting', 'SUV Rental', NULL, 1, NULL),
(3, 'Tourism', 'City Tour', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `shipments`
--

DROP TABLE IF EXISTS `shipments`;
CREATE TABLE IF NOT EXISTS `shipments` (
  `shipment_id` int NOT NULL AUTO_INCREMENT,
  `weight` decimal(10,2) DEFAULT NULL,
  `shipment_type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`shipment_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `shipments`
--

INSERT INTO `shipments` (`shipment_id`, `weight`, `shipment_type`) VALUES
(1, 500.00, 'Air Cargo'),
(2, 1000.00, 'Sea Cargo');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

DROP TABLE IF EXISTS `tickets`;
CREATE TABLE IF NOT EXISTS `tickets` (
  `ticket_id` int NOT NULL AUTO_INCREMENT,
  `ticket_price` decimal(10,2) DEFAULT NULL,
  `ticket_class` varchar(50) DEFAULT NULL,
  `source` varchar(100) DEFAULT NULL,
  `destination` varchar(100) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `seat` varchar(10) DEFAULT NULL,
  `gate` varchar(10) DEFAULT NULL,
  `insurance` tinyint(1) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ticket_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`ticket_id`, `ticket_price`, `ticket_class`, `source`, `destination`, `date`, `time`, `seat`, `gate`, `insurance`, `status`) VALUES
(1, 250.00, 'Economy', 'New York', 'Los Angeles', '2024-05-01', '08:00:00', 'A23', 'Gate 5', 1, 'Confirmed'),
(2, 500.00, 'Business', 'London', 'Paris', '2024-05-02', '10:30:00', 'B12', 'Gate 10', 0, 'Pending'),
(3, 300.00, 'Economy', 'Tokyo', 'Sydney', '2024-05-03', '12:45:00', 'C34', 'Gate 7', 1, 'Confirmed');

-- --------------------------------------------------------

--
-- Table structure for table `tourisms`
--

DROP TABLE IF EXISTS `tourisms`;
CREATE TABLE IF NOT EXISTS `tourisms` (
  `tourism_id` int NOT NULL AUTO_INCREMENT,
  `tourism_type` varchar(50) DEFAULT NULL,
  `tourism_name` varchar(100) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`tourism_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tourisms`
--

INSERT INTO `tourisms` (`tourism_id`, `tourism_type`, `tourism_name`, `price`) VALUES
(1, 'Adventure', 'Hiking Expedition', 100.00),
(2, 'Cultural', 'Museum Tour', 50.00);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
