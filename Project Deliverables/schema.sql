-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 13, 2024 at 12:46 PM
-- Server version: 10.5.21-MariaDB-0+deb11u1
-- PHP Version: 8.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hdennis02`
--

-- --------------------------------------------------------

--
-- Table structure for table `application`
--

CREATE TABLE `application` (
  `jobSeekerId` int(11) DEFAULT NULL,
  `jobRoleId` int(11) DEFAULT NULL,
  `statusId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `application`
--

INSERT INTO `application` (`jobSeekerId`, `jobRoleId`, `statusId`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 1),
(4, 4, 2),
(5, 5, 1),
(6, 6, 2),
(7, 7, 1),
(8, 8, 2),
(9, 9, 1),
(10, 10, 2),
(11, 11, 1),
(12, 12, 2),
(13, 13, 1),
(14, 14, 2),
(15, 15, 1),
(16, 16, 2),
(17, 17, 1),
(18, 18, 2),
(19, 19, 1),
(20, 20, 2),
(21, 21, 1),
(22, 22, 2),
(23, 23, 1),
(24, 24, 2),
(25, 25, 1),
(26, 26, 1),
(27, 27, 2),
(28, 28, 1),
(29, 29, 2),
(30, 30, 1),
(31, 31, 2),
(32, 32, 1),
(33, 33, 2),
(34, 34, 1),
(35, 35, 2),
(36, 36, 1),
(37, 37, 2),
(38, 38, 1),
(39, 39, 2),
(40, 40, 1),
(41, 41, 2),
(42, 42, 1),
(43, 43, 2),
(44, 44, 1),
(45, 45, 2),
(46, 46, 1),
(47, 47, 2),
(48, 48, 1),
(49, 49, 2),
(50, 50, 1),
(51, 51, 1),
(52, 52, 2),
(53, 53, 1),
(54, 54, 2),
(55, 55, 1),
(56, 56, 2),
(57, 57, 1),
(58, 58, 2),
(59, 59, 1),
(60, 60, 2),
(61, 61, 1),
(62, 62, 2),
(33, 63, 1),
(34, 64, 2),
(35, 65, 1),
(36, 66, 2),
(37, 67, 1),
(38, 68, 2),
(39, 69, 1),
(40, 70, 2),
(41, 71, 1),
(42, 72, 2),
(43, 73, 1),
(44, 74, 2),
(45, 75, 1),
(26, 75, 1),
(27, 74, 2),
(28, 73, 1),
(29, 72, 2),
(30, 71, 1),
(31, 70, 2),
(32, 69, 1),
(33, 68, 2),
(34, 67, 1),
(35, 65, 2),
(36, 64, 1),
(37, 63, 2),
(38, 62, 1),
(39, 61, 2),
(40, 60, 1),
(41, 61, 2),
(42, 59, 1),
(43, 58, 2),
(44, 57, 1),
(45, 56, 2),
(46, 55, 1),
(47, 54, 2),
(48, 53, 1),
(49, 52, 2),
(50, 51, 1);

-- --------------------------------------------------------

--
-- Stand-in structure for view `applicationHistory`
-- (See below for the actual view)
--
CREATE TABLE `applicationHistory` (
`Company Name` varchar(225)
,`Job Role` varchar(225)
,`JobSeeker Forename` varchar(225)
,`JobSeeker Surname` varchar(225)
,`ApplicationStatus` varchar(225)
);

-- --------------------------------------------------------

--
-- Table structure for table `applicationStatus`
--

CREATE TABLE `applicationStatus` (
  `applicationStatusId` int(11) NOT NULL,
  `status` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `applicationStatus`
--

INSERT INTO `applicationStatus` (`applicationStatusId`, `status`) VALUES
(1, 'Pending'),
(2, 'Approved'),
(3, 'Rejected');

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `companyId` int(11) NOT NULL,
  `name` varchar(225) NOT NULL,
  `details` varchar(225) DEFAULT NULL,
  `field` varchar(225) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`companyId`, `name`, `details`, `field`) VALUES
(1, 'Tech Solutions', 'Provides technology solutions for businesses.', 'Technology'),
(2, 'Biotech Innovations', 'Advances biotechnology and medical research.', 'Science'),
(3, 'Global Finance', 'Offers financial services for individuals and businesses.', 'Finance'),
(4, 'Green Energy Solutions', 'Specializes in renewable energy and sustainability.', 'Energy'),
(5, 'Innovate Technologies', 'Drives innovation in technology.', 'Technology'),
(6, 'Health Technologies', 'Develops healthcare technologies for better care.', 'Healthcare'),
(7, 'GreenTech Solutions', 'Provides eco-friendly solutions for sustainability.', 'Environment'),
(8, 'AgriTech Industries', 'Revolutionizes agriculture with advanced farming tech.', 'Agriculture'),
(9, 'Data-Driven Enterprises', 'Harnesses data analytics for business growth.', 'Technology'),
(10, 'Space Exploration Co.', 'Explores space and pushes its boundaries.', 'Space'),
(11, 'Global Consulting Partners', 'Offers strategic consulting services.', 'Consulting'),
(12, 'Education Innovations', 'Transforms education with innovative learning solutions.', 'Education'),
(13, 'Digital Media Group', 'Creates engaging digital content for global audiences.', 'Media'),
(14, 'Travel Technologies', 'Provides tech solutions for the travel industry.', 'Travel'),
(15, 'Smart Home Technologies', 'Makes homes smarter and more efficient.', 'Technology'),
(16, 'Manufacturing Innovations', 'Drives innovation in manufacturing processes.', 'Manufacturing'),
(17, 'Retail Technologies', 'Provides tech solutions for retail success.', 'Retail'),
(18, 'CyberSecurity Experts', 'Protects against cyber threats with advanced security.', 'Security'),
(19, 'Clean Energy Solutions', 'Develops clean and sustainable energy solutions.', 'Energy'),
(20, 'Healthcare Innovations', 'Revolutionizes healthcare delivery with advanced tech.', 'Healthcare'),
(21, 'Tech Solutions Inc.', 'Provides comprehensive IT solutions and services.', 'Technology'),
(22, 'Life Sciences Innovations', 'Leads in life sciences research for medical breakthroughs.', 'Science'),
(23, 'Global Investment Group', 'Specializes in investment management and planning.', 'Finance'),
(24, 'Renewable Energy Solutions', 'Develops innovative renewable energy tech.', 'Energy'),
(25, 'Future Technologies', 'Shapes the future with tech innovations.', 'Technology'),
(26, 'Healthcare Systems Inc.', 'Delivers integrated healthcare systems for better outcomes.', 'Healthcare'),
(27, 'Eco-Friendly Solutions', 'Offers eco-friendly products and services for sustainability.', 'Environment'),
(28, 'AgroTech Solutions', 'Empowers agriculture with advanced tech solutions.', 'Agriculture'),
(29, 'Data Insights Group', 'Provides insights and analytics for informed decisions.', 'Technology'),
(30, 'Interstellar Explorations', 'Explores space for scientific discovery.', 'Space'),
(31, 'Global Strategy Consultants', 'Provides strategic advice for navigating challenges.', 'Consulting'),
(32, 'EdTech Innovations', 'Revolutionizes education with tech solutions.', 'Education'),
(33, 'Digital Marketing Agency', 'Drives digital growth through targeted marketing.', 'Media'),
(34, 'Hospitality Solutions', 'Enhances guest experiences in the hospitality industry.', 'Travel'),
(35, 'Home Automation Technologies', 'Creates smart home solutions for convenience.', 'Technology'),
(36, 'Advanced Manufacturing Solutions', 'Optimizes manufacturing with cutting-edge tech.', 'Manufacturing'),
(37, 'E-Commerce Solutions', 'Empowers retailers with digital commerce platforms.', 'Retail'),
(38, 'CyberDefense Solutions', 'Secures digital assets against cyber threats.', 'Security'),
(39, 'CleanTech Innovations', 'Develops clean technology solutions for sustainability.', 'Energy'),
(40, 'Telehealth Solutions', 'Transforms healthcare delivery with telemedicine.', 'Healthcare'),
(41, 'Innovative Software Solutions', 'Develops cutting-edge software for diverse industries.', 'Technology'),
(42, 'Biomedical Research Institute', 'Conducts research in biomedical science.', 'Science'),
(43, 'Global Banking Solutions', 'Provides comprehensive banking solutions.', 'Finance'),
(44, 'Clean Energy Technologies', 'Leads in clean energy technology development.', 'Energy'),
(45, 'NextGen Tech Solutions', 'Pioneers the future with next-gen technology.', 'Technology'),
(46, 'Medical Device Innovations', 'Creates innovative medical devices for improved care.', 'Healthcare'),
(47, 'Sustainable Development Group', 'Promotes sustainable development through environmental solutions.', 'Environment'),
(48, 'Precision Agriculture Solutions', 'Utilizes precision technology for sustainable agriculture.', 'Agriculture'),
(49, 'Data Analytics Firm', 'Leverages data analytics for business insights.', 'Technology'),
(50, 'Space Exploration Technologies', 'Advances space exploration through revolutionary tech.', 'Space');

-- --------------------------------------------------------

--
-- Stand-in structure for view `fieldSalaryTrends`
-- (See below for the actual view)
--
CREATE TABLE `fieldSalaryTrends` (
`Field of Work` varchar(225)
,`Jobs Available` bigint(21)
,`Average Salary` double(19,2)
,`Minimum Salary` double(10,2)
,`Maximum Salary` double(10,2)
);

-- --------------------------------------------------------

--
-- Table structure for table `jobRole`
--

CREATE TABLE `jobRole` (
  `jobRoleId` int(11) NOT NULL,
  `title` varchar(225) NOT NULL,
  `companyId` int(11) DEFAULT NULL,
  `vacancies` int(11) DEFAULT NULL,
  `salary` double(10,2) DEFAULT NULL,
  `fullTime` tinyint(1) DEFAULT NULL,
  `minQualificationId` int(11) DEFAULT NULL,
  `datePosted` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jobRole`
--

INSERT INTO `jobRole` (`jobRoleId`, `title`, `companyId`, `vacancies`, `salary`, `fullTime`, `minQualificationId`, `datePosted`) VALUES
(1, 'Software Engineer', 1, 5, 80000.00, 1, 4, '2024-03-08'),
(2, 'Research Scientist', 2, 3, 90000.00, 1, 5, '2024-03-06'),
(3, 'Financial Analyst', 3, 2, 75000.00, 0, 3, '2024-03-05'),
(4, 'Renewable Energy Engineer', 4, 4, 85000.00, 1, 4, '2024-03-01'),
(5, 'Data Scientist', 9, 6, 95000.00, 1, 4, '2024-03-08'),
(6, 'Healthcare Administrator', 11, 3, 70000.00, 0, 3, '2024-03-06'),
(7, 'Environmental Consultant', 12, 2, 80000.00, 0, 4, '2024-03-05'),
(8, 'Agricultural Engineer', 8, 4, 85000.00, 1, 4, '2024-03-01'),
(9, 'Data Analyst', 18, 5, 75000.00, 1, 3, '2024-03-08'),
(10, 'Spacecraft Engineer', 20, 3, 90000.00, 1, 4, '2024-03-06'),
(11, 'Business Consultant', 31, 4, 85000.00, 1, 3, '2024-03-05'),
(12, 'Educational Technologist', 32, 2, 70000.00, 0, 3, '2024-03-01'),
(13, 'Digital Marketing Specialist', 33, 3, 80000.00, 0, 3, '2024-03-08'),
(14, 'Hospitality Manager', 34, 2, 75000.00, 0, 3, '2024-03-06'),
(15, 'Home Automation Engineer', 35, 4, 85000.00, 1, 4, '2024-03-05'),
(16, 'Manufacturing Engineer', 36, 5, 90000.00, 1, 4, '2024-03-01'),
(17, 'E-commerce Specialist', 37, 3, 75000.00, 0, 3, '2024-03-08'),
(18, 'Cybersecurity Analyst', 38, 4, 85000.00, 1, 4, '2024-03-06'),
(19, 'CleanTech Engineer', 39, 3, 90000.00, 1, 4, '2024-03-05'),
(20, 'Telehealth Specialist', 40, 2, 80000.00, 0, 4, '2024-03-01'),
(21, 'UI/UX Designer', 1, 2, 75000.00, 1, 4, '2024-03-08'),
(22, 'Biomedical Engineer', 2, 3, 85000.00, 1, 4, '2024-03-06'),
(23, 'Investment Analyst', 3, 2, 80000.00, 0, 3, '2024-03-05'),
(24, 'Solar Energy Technician', 4, 4, 80000.00, 1, 3, '2024-03-01'),
(25, 'Machine Learning Engineer', 9, 4, 95000.00, 1, 5, '2024-03-08'),
(26, 'Medical Billing Specialist', 11, 2, 65000.00, 0, 3, '2024-03-06'),
(27, 'Environmental Scientist', 12, 3, 85000.00, 1, 4, '2024-03-05'),
(28, 'Agricultural Scientist', 8, 2, 80000.00, 1, 4, '2024-03-01'),
(29, 'Database Administrator', 18, 3, 75000.00, 0, 3, '2024-03-08'),
(30, 'Space Systems Engineer', 20, 2, 90000.00, 1, 4, '2024-03-06'),
(31, 'Management Consultant', 31, 4, 90000.00, 1, 4, '2024-03-05'),
(32, 'Instructional Designer', 32, 2, 70000.00, 0, 3, '2024-03-01'),
(33, 'Social Media Manager', 33, 3, 80000.00, 0, 3, '2024-03-08'),
(34, 'Hotel Manager', 34, 2, 75000.00, 0, 3, '2024-03-06'),
(35, 'Smart Home Technician', 35, 3, 80000.00, 1, 3, '2024-03-05'),
(36, 'Industrial Engineer', 36, 4, 85000.00, 1, 4, '2024-03-01'),
(37, 'Online Retail Manager', 37, 2, 70000.00, 0, 3, '2024-03-08'),
(38, 'Cybersecurity Engineer', 38, 3, 90000.00, 1, 4, '2024-03-06'),
(39, 'Environmental Engineer', 39, 3, 85000.00, 1, 4, '2024-03-05'),
(40, 'Telemedicine Specialist', 40, 2, 80000.00, 0, 4, '2024-03-01'),
(41, 'Frontend Developer', 1, 2, 80000.00, 1, 4, '2024-03-08'),
(42, 'Geneticist', 2, 3, 90000.00, 1, 5, '2024-03-06'),
(43, 'Financial Planner', 3, 2, 75000.00, 0, 3, '2024-03-05'),
(44, 'Wind Turbine Technician', 4, 4, 80000.00, 1, 3, '2024-03-01'),
(45, 'AI Engineer', 9, 4, 95000.00, 1, 5, '2024-03-08'),
(46, 'Medical Coder', 11, 2, 65000.00, 0, 3, '2024-03-06'),
(47, 'Environmental Technician', 12, 3, 85000.00, 1, 4, '2024-03-05'),
(48, 'Agricultural Consultant', 8, 2, 80000.00, 1, 4, '2024-03-01'),
(49, 'Systems Analyst', 18, 3, 75000.00, 0, 3, '2024-03-08'),
(50, 'Aerospace Engineer', 20, 2, 90000.00, 1, 4, '2024-03-06'),
(51, 'Backend Developer', 1, 2, 75000.00, 1, 4, '2024-03-05'),
(52, 'Clinical Researcher', 2, 3, 85000.00, 1, 5, '2024-03-01'),
(53, 'Investment Banker', 3, 2, 80000.00, 0, 3, '2024-03-08'),
(54, 'Hydropower Engineer', 4, 4, 80000.00, 1, 3, '2024-03-06'),
(55, 'Machine Learning Specialist', 9, 4, 95000.00, 1, 5, '2024-03-05'),
(56, 'Medical Transcriptionist', 11, 2, 65000.00, 0, 3, '2024-03-01'),
(57, 'Climate Scientist', 12, 3, 85000.00, 1, 4, '2024-03-08'),
(58, 'Soil Scientist', 8, 2, 80000.00, 1, 4, '2024-03-06'),
(59, 'Business Intelligence Analyst', 18, 3, 75000.00, 0, 3, '2024-03-05'),
(60, 'Satellite Engineer', 20, 2, 90000.00, 1, 4, '2024-03-01'),
(61, 'HR Consultant', 31, 4, 90000.00, 1, 4, '2024-03-08'),
(62, 'eLearning Developer', 32, 2, 70000.00, 0, 3, '2024-03-06'),
(63, 'Content Creator', 33, 3, 80000.00, 0, 3, '2024-03-05'),
(64, 'Event Coordinator', 34, 2, 75000.00, 0, 3, '2024-03-01'),
(65, 'Home Automation Specialist', 35, 3, 80000.00, 1, 3, '2024-03-08'),
(66, 'Quality Engineer', 36, 4, 85000.00, 1, 4, '2024-03-06'),
(67, 'Online Marketing Manager', 37, 2, 70000.00, 0, 3, '2024-03-05'),
(68, 'Network Security Engineer', 38, 3, 90000.00, 1, 4, '2024-03-01'),
(69, 'Environmental Planner', 39, 3, 85000.00, 1, 4, '2024-03-08'),
(70, 'Remote Health Consultant', 40, 2, 80000.00, 0, 4, '2024-03-06'),
(71, 'Full Stack Developer', 1, 2, 80000.00, 1, 4, '2024-03-05'),
(72, 'Pharmacologist', 2, 3, 90000.00, 1, 5, '2024-03-01'),
(73, 'Wealth Manager', 3, 2, 75000.00, 0, 3, '2024-03-08'),
(74, 'Geothermal Engineer', 4, 4, 80000.00, 1, 3, '2024-03-06'),
(75, 'Computer Vision Engineer', 9, 4, 95000.00, 1, 5, '2024-03-05');

-- --------------------------------------------------------

--
-- Table structure for table `jobSeeker`
--

CREATE TABLE `jobSeeker` (
  `jobSeekerId` int(11) NOT NULL,
  `forename` varchar(225) NOT NULL,
  `surname` varchar(225) NOT NULL,
  `dateOfBirth` date NOT NULL,
  `email` varchar(225) NOT NULL,
  `phoneNumber` varchar(225) DEFAULT NULL,
  `qualificationId` int(11) DEFAULT NULL,
  `fullTime` tinyint(1) DEFAULT NULL,
  `minSalary` double(10,2) DEFAULT NULL,
  `workExperience` text DEFAULT NULL,
  `notes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jobSeeker`
--

INSERT INTO `jobSeeker` (`jobSeekerId`, `forename`, `surname`, `dateOfBirth`, `email`, `phoneNumber`, `qualificationId`, `fullTime`, `minSalary`, `workExperience`, `notes`) VALUES
(1, 'John', 'Doe', '1990-05-15', 'JDoe@gmail.com', '123-456-7890', 3, 1, 50000.00, '5 years - Software Developer', NULL),
(2, 'Jane', 'Smith', '1985-08-20', 'JSmith@gmail.com', NULL, 4, 0, 70000.00, '8 years - Economist', 'Open to relocation'),
(3, 'Michael', 'Johnson', '1995-02-10', 'MJohnson@gmail.com', '987-654-3210', 5, 0, 60000.00, '3 years - Computer Science Graduate (Java and Python)', NULL),
(4, 'Emily', 'Brown', '1992-11-30', 'EBrown@gmail.com', NULL, 4, 1, 80000.00, '5 years - Manager', 'Finance sector'),
(5, 'David', 'Wilson', '1988-04-25', 'DWilson@gmail.com', '555-123-4567', 3, 0, 55000.00, '3 years - Mechanical Engineer', NULL),
(6, 'Sarah', 'Taylor', '1998-07-12', 'STaylor@gmail.com', '111-222-3333', 1, 0, 45000.00, 'Customer Service Experience', NULL),
(7, 'Christopher', 'Anderson', '1993-09-05', 'CAnderson@gmail.com', NULL, 2, 0, 60000.00, 'Pursuing degree in Computer Science', NULL),
(8, 'Jessica', 'Martinez', '1990-12-18', 'JMartinez@gmail.com', '999-888-7777', 3, NULL, 70000.00, '2 years - Electrical Engineer', NULL),
(9, 'Ryan', 'Garcia', '1997-03-08', 'RGarcia@gmail.com', NULL, 1, 1, 40000.00, 'Enrolled in Vocational Training Program', NULL),
(10, 'Megan', 'Robinson', '1994-06-22', 'MRobinson@gmail.com', '777-666-5555', 4, 0, 75000.00, '4 years - Clinical Experience', 'Mental health services'),
(11, 'Joshua', 'Lee', '1991-01-05', 'JLee@gmail.com', '555-555-5555', 3, 1, 60000.00, '3 years - Digital Marketing', 'Remote opportunities'),
(12, 'Amanda', 'White', '1996-08-15', 'AWhite@gmail.com', NULL, 4, 0, 55000.00, 'Financial Analyst', 'Career growth'),
(13, 'Elena', 'Rodriguez', '1993-10-12', 'ERodriguez@gmail.com', '123-456-7890', 2, 0, 60000.00, '2 years - Web Developer', NULL),
(14, 'Daniel', 'Gomez', '1989-06-25', 'DGomez@gmail.com', NULL, 3, 0, 70000.00, '5 years - Mechanical Engineer', 'Engineering roles'),
(15, 'Sophia', 'Chen', '1997-03-18', 'SChen@gmail.com', '987-654-3210', 4, 1, 80000.00, '3 years - Marketing', 'Managerial positions'),
(16, 'Oliver', 'Wang', '1990-12-01', 'OWang@gmail.com', NULL, 5, 0, 75000.00, '4 years - Research Experience', 'Academia or research'),
(17, 'Emma', 'Nguyen', '1994-08-05', 'ENguyen@gmail.com', '555-123-4567', 1, 1, 50000.00, '2 years - Administrative Experience', NULL),
(18, 'Liam', 'Kim', '1998-05-20', 'LKim@gmail.com', '111-222-3333', 3, NULL, 60000.00, 'Pursuing master\'s degree in Electrical Engineering', NULL),
(19, 'Ava', 'Singh', '1991-09-08', 'ASingh@gmail.com', NULL, 2, 0, 55000.00, '1 year - Graphic Design', NULL),
(20, 'Noah', 'Patel', '1996-02-15', 'NPatel@gmail.com', '999-888-7777', 4, 0, 70000.00, '3 years - Financial Analysis', 'Consulting roles'),
(21, 'Isabella', 'Garcia', '1999-07-30', 'IGarcia@gmail.com', NULL, 1, 1, 45000.00, 'Enrolled in Coding Bootcamp', NULL),
(22, 'William', 'Martinez', '1987-11-22', 'WMartinez@gmail.com', '777-666-5555', 5, 0, 80000.00, '6 years - Counseling', 'Mental health clinics'),
(23, 'Sophie', 'Johnson', '1992-06-15', 'SJohnson@gmail.com', '123-456-7890', 3, 1, 55000.00, '3 years - Digital Marketing', 'Remote opportunities'),
(24, 'Benjamin', 'Brown', '1990-09-25', 'BBrown@gmail.com', NULL, 4, 0, 65000.00, 'Financial Analyst', 'Relocation for advancement'),
(25, 'Olivia', 'Williams', '1995-04-18', 'OWilliams@gmail.com', '987-654-3210', 5, 0, 75000.00, '4 years - Research', 'Academia or research'),
(26, 'Ethan', 'Smith', '1991-11-01', 'ESmith@gmail.com', NULL, 1, 1, 50000.00, '2 years - Administrative Experience', NULL),
(27, 'Charlotte', 'Garcia', '1998-07-20', 'CGarcia@gmail.com', '555-123-4567', 2, NULL, 60000.00, 'Pursuing master\'s degree in Electrical Engineering', NULL),
(28, 'Mason', 'Lee', '1993-02-08', 'MLee@gmail.com', NULL, 3, 0, 55000.00, '1 year - Graphic Design', NULL),
(29, 'Amelia', 'Nguyen', '1996-03-15', 'ANguyen@gmail.com', NULL, 4, 0, 70000.00, '3 years - Financial Analysis', 'Consulting roles'),
(30, 'James', 'Patel', '1989-08-30', 'JPatel@gmail.com', '999-888-7777', 1, 1, 45000.00, 'Enrolled in Coding Bootcamp', NULL),
(31, 'Sophia', 'Lopez', '1994-12-10', 'SLopez@gmail.com', NULL, 2, 0, 50000.00, '6 years - Counseling', NULL),
(32, 'Logan', 'Martinez', '1997-05-22', 'LMartinez@gmail.com', '777-666-5555', 5, 0, 80000.00, '3 years - Marketing', NULL),
(33, 'Emma', 'Johnson', '1993-08-15', 'EJohnson@gmail.com', '123-456-7890', 3, 1, 55000.00, '2 years - Software Development', 'Remote opportunities'),
(34, 'Liam', 'Smith', '1990-05-25', 'LSmith@gmail.com', NULL, 4, 0, 65000.00, 'Financial Analyst', 'Relocation for advancement'),
(35, 'Olivia', 'Williams', '1995-04-18', 'OWilliams1@gmail.com', '987-654-3210', 5, 0, 75000.00, '4 years - Research', 'Academia or research'),
(36, 'Noah', 'Brown', '1991-11-01', 'NBrown@gmail.com', NULL, 1, 1, 50000.00, '2 years - Administrative Experience', NULL),
(37, 'Ava', 'Garcia', '1998-07-20', 'AGarcia@gmail.com', '555-123-4567', 2, NULL, 60000.00, 'Pursuing master\'s degree in Electrical Engineering', NULL),
(38, 'Mason', 'Johnson', '1993-02-08', 'MJohnson@gmail.com', NULL, 3, 0, 55000.00, '1 year - Graphic Design', NULL),
(39, 'Vickie', 'Nguyen', '1996-03-15', 'VNguyen@gmail.com', NULL, 4, 0, 70000.00, '3 years - Financial Analysis', 'Consulting roles'),
(40, 'James', 'Dennis', '1989-08-30', 'JDennis@gmail.com', '999-888-7777', 1, 1, 45000.00, 'Enrolled in Coding Bootcamp', NULL),
(41, 'Cecilia', 'Lopez', '1994-12-10', 'CLopez@gmail.com', NULL, 2, 0, 50000.00, '6 years - Counseling', NULL),
(42, 'Ray', 'Martinez', '1997-05-22', 'RMartinez@gmail.com', '777-666-5555', 5, 0, 80000.00, '3 years - Marketing', NULL),
(43, 'Evelyn', 'Taylor', '1997-09-10', 'ETaylor@gmail.com', '123-456-7890', 3, 1, 55000.00, '4 years - Software Engineer', NULL),
(44, 'Lucas', 'Garcia', '1992-04-15', 'LGarcia@gmail.com', NULL, 4, 0, 65000.00, '6 years - Financial Analyst', 'Looking for remote work'),
(45, 'Luna', 'Martinez', '1990-11-20', 'LMartinez@gmail.com', '987-654-3210', 5, 0, 75000.00, '5 years - Research Scientist', 'Interested in academia'),
(46, 'Ethan', 'Wang', '1995-07-30', 'EWang@gmail.com', NULL, 1, 1, 50000.00, '2 years - Marketing Assistant', NULL),
(47, 'Avery', 'Brown', '1998-02-25', 'ABrown@gmail.com', '555-123-4567', 2, NULL, 60000.00, 'Pursuing degree in Computer Engineering', NULL),
(48, 'Harper', 'Nguyen', '1993-06-12', 'HNguyen@gmail.com', NULL, 3, 0, 55000.00, '1 year - Graphic Designer', 'Open to freelance opportunities'),
(49, 'Zoe', 'Johnson', '1996-08-05', 'ZJohnson@gmail.com', '999-888-7777', 4, 1, 45000.00, 'Enrolled in Coding Bootcamp', NULL),
(50, 'Leo', 'Smith', '1991-03-18', 'LSmith2@gmail.com', NULL, 5, 0, 80000.00, '4 years - Research Assistant', 'Seeking research positions'),
(51, 'Mila', 'Williams', '1994-12-01', 'MWilliams@gmail.com', '123-456-7890', 3, 1, 60000.00, '3 years - Web Developer', NULL),
(52, 'Owen', 'Gomez', '1989-10-12', 'OGomez@gmail.com', NULL, 1, 0, 55000.00, '2 years - Marketing Coordinator', NULL),
(53, 'Amelia', 'Brown', '1997-06-25', 'ABrown2@gmail.com', '777-666-5555', 2, 0, 70000.00, '3 years - Financial Planner', 'Certified Financial Planner'),
(54, 'Lucy', 'Davis', '1992-03-18', 'LDavis@gmail.com', NULL, 4, 1, 45000.00, 'Enrolled in Data Science Bootcamp', NULL),
(55, 'Ethan', 'Martinez', '1987-07-30', 'EMartinez@gmail.com', '555-123-4567', 5, 0, 75000.00, '4 years - Product Manager', 'Experienced in agile methodologies'),
(56, 'Emma', 'Johnson', '1995-11-22', 'EJohnson2@gmail.com', '987-654-3210', 3, 1, 55000.00, '2 years - Software Engineer', 'Remote work preferred'),
(57, 'Oliver', 'Lopez', '1990-06-15', 'OLopez@gmail.com', NULL, 2, 0, 60000.00, 'Pursuing master\'s degree in Computer Science', NULL),
(58, 'Ella', 'Martinez', '1998-09-25', 'EMartinez2@gmail.com', '123-456-7890', 3, 0, 65000.00, '1 year - UX/UI Designer', 'Passionate about user-centered design'),
(59, 'Mason', 'Smith', '1993-04-18', 'MSmith@gmail.com', '999-888-7777', 1, 1, 50000.00, '2 years - Administrative Assistant', NULL),
(60, 'Sophia', 'Nguyen', '1998-07-20', 'SNguyen@gmail.com', NULL, 4, 0, 60000.00, '3 years - Financial Analyst', 'Open to relocation'),
(61, 'Elijah', 'Johnson', '1991-12-10', 'EJohnson3@gmail.com', NULL, 5, 0, 70000.00, '4 years - Market Researcher', 'Interested in consumer behavior'),
(62, 'Aria', 'Brown', '1996-05-22', 'ABrown3@gmail.com', '777-666-5555', 3, 1, 55000.00, '3 years - Frontend Developer', 'Remote work preferred'),
(63, 'Charlotte', 'Garcia', '1993-08-15', 'CGarcia2@gmail.com', '123-456-7890', 2, NULL, 60000.00, 'Pursuing master\'s degree in Electrical Engineering', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `qualification`
--

CREATE TABLE `qualification` (
  `qualificationId` int(11) NOT NULL,
  `level` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `qualification`
--

INSERT INTO `qualification` (`qualificationId`, `level`) VALUES
(1, 'GCSEs'),
(2, 'A Levels'),
(3, 'Bachelors Degree'),
(4, 'Masters Degree'),
(5, 'Post Doctorate');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `staffId` int(11) NOT NULL,
  `forename` varchar(225) NOT NULL,
  `surname` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `phoneNumber` varchar(225) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`staffId`, `forename`, `surname`, `email`, `phoneNumber`) VALUES
(1, 'John', 'Doe', 'JDoe@gmail.com', '123-456-7890'),
(2, 'Jessica', 'Martinez', 'JMartinez@gmail.com', '777-666-5555'),
(3, 'Amanda', 'White', 'AWhite@gmail.com', '123-456-7890'),
(4, 'Sophia', 'Chen', 'SChen@gmail.com', '777-666-5555'),
(5, 'Noah', 'Patel', 'NPatel@gmail.com', '999-888-7777'),
(6, 'Isabella', 'Garcia', 'IGarcia@gmail.com', '123-456-7890'),
(7, 'Benjamin', 'Brown', 'BBrown@gmail.com', '777-666-5555'),
(8, 'James', 'Hernandez', 'JHernandez@gmail.com', '111-222-3333'),
(9, 'Amelia', 'Lewis', 'ALewis@gmail.com', '777-666-5555'),
(10, 'Lucas', 'King', 'LKing@gmail.com', '111-222-3333'),
(11, 'Elijah', 'Baker', 'EBaker@gmail.com', NULL),
(12, 'Jack', 'Perez', 'JPerez@gmail.com', NULL),
(13, 'Sofia', 'Morales', 'SMorales@gmail.com', NULL),
(14, 'Jane', 'Smith', 'JSmith@gmail.com', '987-654-3210'),
(15, 'Emily', 'Brown', 'EBrown@gmail.com', NULL),
(16, 'Sarah', 'Taylor', 'STaylor@gmail.com', '999-888-7777'),
(17, 'Ryan', 'Garcia', 'RGarcia@gmail.com', NULL),
(18, 'Joshua', 'Lee', 'JLee@gmail.com', NULL),
(19, 'Elena', 'Rodriguez', 'ERodriguez@gmail.com', NULL),
(20, 'Oliver', 'Wang', 'OWang@gmail.com', NULL),
(21, 'Ava', 'Singh', 'ASingh@gmail.com', NULL),
(22, 'William', 'Martinez', 'WMartinez@gmail.com', NULL),
(23, 'Olivia', 'Williams', 'OWilliams@gmail.com', NULL),
(24, 'Charlotte', 'Davis', 'CDavis@gmail.com', NULL),
(25, 'Lily', 'Clark', 'LClark@gmail.com', NULL),
(26, 'Jacob', 'Hall', 'JHall@gmail.com', NULL),
(27, 'Zoe', 'Green', 'ZGreen@gmail.com', NULL),
(28, 'Avery', 'Evans', 'AEvans@gmail.com', '987-654-3210'),
(29, 'Madison', 'Long', 'MLong@gmail.com', '555-123-4567'),
(30, 'Ella', 'Torres', 'ETorres@gmail.com', '999-888-7777'),
(31, 'Michael', 'Johnson', 'MJohnson@gmail.com', '555-123-4567'),
(32, 'David', 'Wilson', 'DWilson@gmail.com', '111-222-3333'),
(33, 'Christopher', 'Anderson', 'CAnderson@gmail.com', NULL),
(34, 'Megan', 'Robinson', 'MRobinson@gmail.com', '555-555-5555'),
(35, 'Daniel', 'Gomez', 'DGomez@gmail.com', '987-654-3210'),
(36, 'Emma', 'Nguyen', 'ENguyen@gmail.com', '555-123-4567'),
(37, 'Sophie', 'Johnson', 'SJohnson@gmail.com', '987-654-3210'),
(38, 'Alexander', 'Jones', 'AJones@gmail.com', '555-555-5555'),
(39, 'Grace', 'Lopez', 'GLopez@gmail.com', '999-888-7777'),
(40, 'Mason', 'Walker', 'MWalker@gmail.com', '987-654-3210'),
(41, 'Grace', 'Young', 'GYoung@gmail.com', '555-123-4567'),
(42, 'Logan', 'Adams', 'LAdams@gmail.com', '999-888-7777'),
(43, 'Harper', 'Rivera', 'HRivera@gmail.com', '777-666-5555'),
(44, 'Aiden', 'Foster', 'AFoster@gmail.com', '111-222-3333'),
(45, 'Carter', 'Flores', 'CFlores@gmail.com', '123-456-7890'),
(46, 'Aria', 'Russell', 'ARussell@gmail.com', '987-654-3210'),
(47, 'Ethan', 'Scott', 'EScott@gmail.com', '123-456-7890'),
(48, 'Nora', 'Hill', 'NHill@gmail.com', '123-456-7890'),
(49, 'Liam', 'Kim', 'LKim@gmail.com', '111-222-3333'),
(50, 'Jackson', 'Gonzalez', 'JGonzalez@gmail.com', NULL);

-- --------------------------------------------------------

--
-- Stand-in structure for view `viewApplication`
-- (See below for the actual view)
--
CREATE TABLE `viewApplication` (
`Job Role` varchar(225)
,`Applicant Forename` varchar(225)
,`Applicant Surname` varchar(225)
,`Date of Birth` date
,`Email Address` varchar(225)
,`Phone Number` varchar(225)
,`Qualification Level` varchar(225)
,`Work Experience` text
,`Extra Notes` text
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `viewOpportunities`
-- (See below for the actual view)
--
CREATE TABLE `viewOpportunities` (
`Company Name` varchar(225)
,`Company Details` varchar(225)
,`Company Field` varchar(225)
,`Job Role` varchar(225)
,`Available Vacancies` int(11)
,`Salary` double(10,2)
,`Minimum Qualification Needed` varchar(225)
,`Full Time` tinyint(1)
,`Date Posted` date
);

-- --------------------------------------------------------

--
-- Structure for view `applicationHistory`
--
DROP TABLE IF EXISTS `applicationHistory`;

CREATE ALGORITHM=UNDEFINED DEFINER=`hdennis02`@`localhost` SQL SECURITY DEFINER VIEW `applicationHistory`  AS SELECT `company`.`name` AS `Company Name`, `jobRole`.`title` AS `Job Role`, `jobSeeker`.`forename` AS `JobSeeker Forename`, `jobSeeker`.`surname` AS `JobSeeker Surname`, `applicationStatus`.`status` AS `ApplicationStatus` FROM ((((`application` join `applicationStatus` on(`applicationStatus`.`applicationStatusId` = `application`.`statusId`)) join `jobSeeker` on(`application`.`jobSeekerId` = `jobSeeker`.`jobSeekerId`)) join `jobRole` on(`jobRole`.`jobRoleId` = `application`.`jobRoleId`)) join `company` on(`jobRole`.`companyId` = `company`.`companyId`)) ORDER BY `application`.`statusId` ASC ;

-- --------------------------------------------------------

--
-- Structure for view `fieldSalaryTrends`
--
DROP TABLE IF EXISTS `fieldSalaryTrends`;

CREATE ALGORITHM=UNDEFINED DEFINER=`hdennis02`@`localhost` SQL SECURITY DEFINER VIEW `fieldSalaryTrends`  AS SELECT `company`.`field` AS `Field of Work`, count(`jobRole`.`jobRoleId`) AS `Jobs Available`, round(avg(`jobRole`.`salary`),2) AS `Average Salary`, min(`jobRole`.`salary`) AS `Minimum Salary`, max(`jobRole`.`salary`) AS `Maximum Salary` FROM (`company` left join `jobRole` on(`company`.`companyId` = `jobRole`.`companyId`)) GROUP BY `company`.`field` ORDER BY round(avg(`jobRole`.`salary`),2) DESC ;

-- --------------------------------------------------------

--
-- Structure for view `viewApplication`
--
DROP TABLE IF EXISTS `viewApplication`;

CREATE ALGORITHM=UNDEFINED DEFINER=`hdennis02`@`localhost` SQL SECURITY DEFINER VIEW `viewApplication`  AS SELECT `jobRole`.`title` AS `Job Role`, `jobSeeker`.`forename` AS `Applicant Forename`, `jobSeeker`.`surname` AS `Applicant Surname`, `jobSeeker`.`dateOfBirth` AS `Date of Birth`, `jobSeeker`.`email` AS `Email Address`, `jobSeeker`.`phoneNumber` AS `Phone Number`, `qualification`.`level` AS `Qualification Level`, `jobSeeker`.`workExperience` AS `Work Experience`, `jobSeeker`.`notes` AS `Extra Notes` FROM ((((`application` join `jobRole` on(`jobRole`.`jobRoleId` = `application`.`jobRoleId`)) join `jobSeeker` on(`jobSeeker`.`jobSeekerId` = `application`.`jobSeekerId`)) join `qualification` on(`qualification`.`qualificationId` = `jobSeeker`.`qualificationId`)) join `company` on(`jobRole`.`companyId` = `company`.`companyId`)) WHERE `company`.`companyId` = 3 AND `application`.`statusId` = 1 ;

-- --------------------------------------------------------

--
-- Structure for view `viewOpportunities`
--
DROP TABLE IF EXISTS `viewOpportunities`;

CREATE ALGORITHM=UNDEFINED DEFINER=`hdennis02`@`localhost` SQL SECURITY DEFINER VIEW `viewOpportunities`  AS SELECT `company`.`name` AS `Company Name`, `company`.`details` AS `Company Details`, `company`.`field` AS `Company Field`, `jobRole`.`title` AS `Job Role`, `jobRole`.`vacancies` AS `Available Vacancies`, `jobRole`.`salary` AS `Salary`, `qualification`.`level` AS `Minimum Qualification Needed`, `jobRole`.`fullTime` AS `Full Time`, `jobRole`.`datePosted` AS `Date Posted` FROM ((`jobRole` join `company` on(`company`.`companyId` = `jobRole`.`companyId`)) join `qualification` on(`qualification`.`qualificationId` = `jobRole`.`minQualificationId`)) WHERE `jobRole`.`datePosted` between '2024-02-22' and '2024-03-08' AND `jobRole`.`salary` >= 60000.00 AND `jobRole`.`minQualificationId` <= 4 AND `jobRole`.`fullTime` = 1 ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `application`
--
ALTER TABLE `application`
  ADD KEY `jobSeekerId` (`jobSeekerId`),
  ADD KEY `jobRoleId` (`jobRoleId`),
  ADD KEY `statusId` (`statusId`);

--
-- Indexes for table `applicationStatus`
--
ALTER TABLE `applicationStatus`
  ADD PRIMARY KEY (`applicationStatusId`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`companyId`);

--
-- Indexes for table `jobRole`
--
ALTER TABLE `jobRole`
  ADD PRIMARY KEY (`jobRoleId`),
  ADD KEY `companyId` (`companyId`),
  ADD KEY `minQualificationId` (`minQualificationId`);

--
-- Indexes for table `jobSeeker`
--
ALTER TABLE `jobSeeker`
  ADD PRIMARY KEY (`jobSeekerId`),
  ADD KEY `qualificationId` (`qualificationId`);

--
-- Indexes for table `qualification`
--
ALTER TABLE `qualification`
  ADD PRIMARY KEY (`qualificationId`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`staffId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `applicationStatus`
--
ALTER TABLE `applicationStatus`
  MODIFY `applicationStatusId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `companyId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `jobRole`
--
ALTER TABLE `jobRole`
  MODIFY `jobRoleId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `jobSeeker`
--
ALTER TABLE `jobSeeker`
  MODIFY `jobSeekerId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `qualification`
--
ALTER TABLE `qualification`
  MODIFY `qualificationId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `application`
--
ALTER TABLE `application`
  ADD CONSTRAINT `application_ibfk_1` FOREIGN KEY (`jobSeekerId`) REFERENCES `jobSeeker` (`jobSeekerId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `application_ibfk_2` FOREIGN KEY (`jobRoleId`) REFERENCES `jobRole` (`jobRoleId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `application_ibfk_3` FOREIGN KEY (`statusId`) REFERENCES `applicationStatus` (`applicationStatusId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `jobRole`
--
ALTER TABLE `jobRole`
  ADD CONSTRAINT `jobRole_ibfk_1` FOREIGN KEY (`companyId`) REFERENCES `company` (`companyId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `jobRole_ibfk_2` FOREIGN KEY (`minQualificationId`) REFERENCES `qualification` (`qualificationId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `jobSeeker`
--
ALTER TABLE `jobSeeker`
  ADD CONSTRAINT `jobSeeker_ibfk_1` FOREIGN KEY (`qualificationId`) REFERENCES `qualification` (`qualificationId`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
