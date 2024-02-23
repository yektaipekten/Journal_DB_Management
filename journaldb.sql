-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 23, 2024 at 02:30 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `journaldb`
--

-- --------------------------------------------------------

--
-- Table structure for table `aoirew`
--

CREATE TABLE `aoirew` (
  `ISCode` int(10) NOT NULL,
  `RewID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aoirew`
--

INSERT INTO `aoirew` (`ISCode`, `RewID`) VALUES
(1, 601),
(2, 602),
(3, 603),
(4, 604),
(5, 605),
(6, 606),
(7, 607),
(8, 608),
(9, 609),
(10, 610);

-- --------------------------------------------------------

--
-- Table structure for table `areaofinterest`
--

CREATE TABLE `areaofinterest` (
  `ISCode` int(10) NOT NULL,
  `Decription` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `areaofinterest`
--

INSERT INTO `areaofinterest` (`ISCode`, `Decription`) VALUES
(1, 'Romantic'),
(2, 'Realistic'),
(3, 'Aesthetic'),
(4, 'Impressionist'),
(5, 'Expressionist'),
(6, 'New'),
(7, 'Spellbinder'),
(8, 'Psychological'),
(9, 'Literature'),
(10, 'Science');

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `AutID` int(30) NOT NULL,
  `FullName` varchar(50) NOT NULL,
  `E-MailAddress` varchar(50) NOT NULL,
  `MailingAddress` varchar(100) NOT NULL,
  `MobileNumber` int(30) NOT NULL,
  `Affiliation` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`AutID`, `FullName`, `E-MailAddress`, `MailingAddress`, `MobileNumber`, `Affiliation`) VALUES
(101, 'Virginia Woolf', 'virginiawoolf@mail.com', '29A Wrights Ln, London W8 5SJ', 1678590374, 'Kindle Direct Publishing'),
(102, 'Charles Dickens', 'charlesdickens@mail.com', '26 Malins Rd, Portsmouth PO2 7BA', 1689345620, 'Barnes & Noble Press'),
(103, 'Thomas Hardy', 'thomashardy@mail.com', 'Damers Rd, Dorchester DT1 1RD', 2073693451, 'Kobo'),
(104, 'George Orwell', 'georgeorwell@mail.com', 'Pin Mill, Ipswich IP9 1JP', 1078369245, 'Apple Books'),
(105, 'Samuel Johnson', 'Samuel Johnson', '22 Hardy Pl, Lichfield WS14 9FX', 1027845932, 'selfpublishing.com'),
(106, 'Daniel Defoe', 'danieldefoe@mail.com', '4 Balmoral Ave, Spalding PE11 2RN', 1094573894, 'Reedsy'),
(107, 'Agatha Christie', 'agathachristie@mail.com', 'Shandon, Willoughby Rd, Torquay TQ1 1JX', 2009863467, 'Lulu'),
(108, 'Charlotte Brontë', 'charlottebronte@mail.com', '193 Church St, Billericay CM11 2TP', 2000387541, 'IngramSpark'),
(109, 'Aldous Huxley', 'aldoushuxley@mail.com', 'Godalming GU7 1HW', 1020639673, 'Publish Drive'),
(110, 'Mary Wollstonecraft', 'marywollstonecraft@mail.com', '8A Artillery Ln, London E1 7AJ', 2010276451, 'Draft2Digital'),
(111, 'Alexander Pope', 'alexanderpope@mail.com', 'Whitechapel Rd, London E1 1FR', 1072934021, 'Streetlib'),
(112, 'Lewis Carroll', 'lewiscarroll@mail.com', '4 Chester Rd, Halton, Daresbury, Warrington WA4 4A', 2014972014, 'Simon and Schuster.'),
(113, 'D. H. Lawrence', 'dhlawrence@mail.com', '4,Hollies,Eastwood, Nottingham NG16 3BT', 1027630945, 'Macmillan.');

-- --------------------------------------------------------

--
-- Table structure for table `autman`
--

CREATE TABLE `autman` (
  `AutID` int(10) NOT NULL,
  `ManID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `autman`
--

INSERT INTO `autman` (`AutID`, `ManID`) VALUES
(101, 501),
(101, 514),
(101, 527),
(102, 502),
(102, 515),
(102, 528),
(103, 503),
(103, 516),
(103, 529),
(104, 504),
(104, 517),
(104, 530),
(105, 505),
(105, 518),
(105, 531),
(106, 506),
(106, 519),
(106, 532),
(107, 507),
(107, 520),
(107, 533),
(108, 508),
(108, 521),
(108, 534),
(109, 509),
(109, 522),
(109, 535),
(110, 510),
(110, 523),
(110, 536),
(111, 511),
(111, 524),
(111, 537),
(112, 512),
(112, 525),
(112, 538),
(113, 513),
(113, 526),
(113, 539);

-- --------------------------------------------------------

--
-- Table structure for table `editors`
--

CREATE TABLE `editors` (
  `EditorID` int(10) NOT NULL,
  `FullName` varchar(50) NOT NULL,
  `E-MailAddress` varchar(50) NOT NULL,
  `MailingAddress` varchar(100) NOT NULL,
  `MobileNumber` int(30) NOT NULL,
  `EcperienceYear` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `editors`
--

INSERT INTO `editors` (`EditorID`, `FullName`, `E-MailAddress`, `MailingAddress`, `MobileNumber`, `EcperienceYear`) VALUES
(201, 'Thelma Schoonmaker', 'thelmaschoonmaker@mail.com', '2 Henry Faringdon SN7 7GQ', 1789508673, 14),
(202, 'Arthur Schmidt', 'arthurschmidt@mail.com', '142 Tuck Bridgnorth WV15 6EW', 1674893678, 22),
(203, 'Michael Kahn', 'michaelkahn@mail.com', 'Old Wheat Bridgnorth WV16 6XG', 1458987356, 11),
(204, 'Paul Hirsch', 'paulhirsch@mail.com', '39 Kingsley, Stafford ST17 9BS', 1467835421, 19),
(205, 'Lee Smith', 'leesmith@mail.com', 'Heath St, Crewe CW1 2BZ', 1283548637, 16),
(206, 'Sally Menke', 'sallymenke@mail.com', '59 Banbury OX16 1QF', 2090835432, 12),
(207, 'Sergey Ayzenstayn', 'sergeyayzenstayn@mail.com', 'Surrey, Guildford GU2 7YG', 2006798298, 23),
(208, 'Dede Allen', 'dedeallen@mail.com', '2 Knowle Cranleigh GU6 8JL', 1056548645, 13),
(209, 'William Goldenberg', 'williamgoldenberg@mail.com', '37 Madeira Ave, BN11 2AX', 2010899124, 20),
(210, 'Chris Lebenzon', 'chrislebenzon@mail.com', 'Cecil Pashley Way, BN43 5FF', 1258387390, 16);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `FeedbackID` int(30) NOT NULL,
  `ContrubutionRat` int(10) NOT NULL,
  `ClarityRat` int(10) NOT NULL,
  `MethodologyRat` int(10) NOT NULL,
  `AppropriatenessRat` int(10) NOT NULL,
  `Recommendation` varchar(100) NOT NULL,
  `FBDate` date NOT NULL,
  `EditorID` int(10) NOT NULL,
  `Rew_ID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`FeedbackID`, `ContrubutionRat`, `ClarityRat`, `MethodologyRat`, `AppropriatenessRat`, `Recommendation`, `FBDate`, `EditorID`, `Rew_ID`) VALUES
(301, 7, 5, 7, 8, 'In publishable quality,\r\nIt should have been more understanable', '2020-01-23', 201, 601),
(302, 6, 9, 8, 7, 'In publishable quality,\r\nIt should contribute more to the readers', '2019-04-02', 202, 602),
(303, 8, 5, 7, 6, 'In publishable quality,\r\nIt should have been more understanable', '2022-06-07', 203, 603),
(304, 7, 7, 6, 7, 'In publishable quality', '2023-03-06', 204, 604),
(305, 8, 6, 7, 6, 'In publishable quality', '2018-05-08', 205, 605),
(306, 4, 5, 3, 3, 'Poor quality,\r\nContrubution,methodology, appropriateness \r\naren\'t has enough quality', '2021-04-27', 206, 606),
(307, 6, 5, 6, 4, 'In publishable quality,\r\nIt should have been more understanable', '2020-03-13', 207, 607),
(308, 9, 8, 9, 7, 'Good quality', '2021-02-12', 208, 608),
(309, 7, 9, 8, 7, 'In publishable quality', '2020-03-24', 209, 609),
(310, 4, 7, 5, 4, 'Poor quality,\r\nIt should contribute more to the readers', '2019-05-19', 210, 610);

-- --------------------------------------------------------

--
-- Table structure for table `issue`
--

CREATE TABLE `issue` (
  `IssueID` int(30) NOT NULL,
  `PublucationPeriod` text NOT NULL,
  `PublicationYear` int(11) NOT NULL,
  `Volume` int(30) NOT NULL,
  `Num_Of_Record` int(30) NOT NULL,
  `ManID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `issue`
--

INSERT INTO `issue` (`IssueID`, `PublucationPeriod`, `PublicationYear`, `Volume`, `Num_Of_Record`, `ManID`) VALUES
(401, 'January', 2018, 21, 1, 501),
(402, 'February', 2018, 22, 2, 502),
(403, 'March', 2018, 23, 3, 503),
(404, 'April', 2018, 24, 4, 504),
(405, 'May', 2018, 25, 5, 505),
(406, 'June', 2018, 26, 6, 506),
(407, 'January', 2019, 27, 7, 507),
(408, 'February', 2019, 28, 8, 508),
(409, 'March', 2019, 29, 9, 509),
(410, 'April', 2019, 30, 10, 510),
(411, 'May', 2019, 31, 11, 511),
(412, 'June', 2019, 32, 12, 512),
(413, 'January', 2020, 33, 13, 513),
(414, 'February', 2020, 34, 14, 514),
(415, 'March', 2020, 35, 15, 515),
(416, 'April', 2020, 36, 16, 516),
(417, 'May', 2020, 37, 17, 517),
(418, 'June', 2020, 38, 18, 518),
(419, 'January', 2021, 39, 19, 519),
(420, 'February', 2021, 40, 20, 520),
(421, 'March', 2021, 41, 21, 521),
(422, 'April', 2021, 42, 22, 522),
(423, 'May', 2021, 43, 23, 523),
(424, 'June', 2021, 44, 24, 524),
(425, 'January', 2022, 45, 25, 525),
(426, 'February', 2022, 46, 26, 526),
(427, 'March', 2022, 47, 27, 527),
(428, 'April', 2022, 48, 28, 528),
(429, 'May', 2022, 49, 29, 529),
(430, 'June', 2022, 50, 30, 530),
(431, 'January', 2023, 51, 31, 531),
(432, 'February', 2023, 52, 32, 532),
(433, 'March', 2023, 53, 33, 533),
(434, 'April', 2023, 54, 34, 534),
(435, 'May', 2023, 55, 35, 535);

-- --------------------------------------------------------

--
-- Table structure for table `manuscript`
--

CREATE TABLE `manuscript` (
  `ManID` int(30) NOT NULL,
  `ManNumber` int(30) NOT NULL,
  `Information` varchar(100) NOT NULL,
  `Date` date NOT NULL,
  `Status` varchar(100) NOT NULL,
  `EditorID` int(10) NOT NULL,
  `TypesetID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manuscript`
--

INSERT INTO `manuscript` (`ManID`, `ManNumber`, `Information`, `Date`, `Status`, `EditorID`, `TypesetID`) VALUES
(501, 1001, 'Distinguished ', '2018-01-01', 'Rejected', 210, 701),
(502, 1002, 'Distinguished ', '2018-02-01', 'Published', 202, 703),
(503, 1003, 'Document', '2018-03-01', 'Rejected', 209, 702),
(504, 1004, 'Composition', '2018-04-01', 'Rejected', 204, 705),
(505, 1005, 'Document', '2018-05-01', 'Rejected', 202, 703),
(506, 1006, 'Document', '2018-06-01', 'Rejected', 203, 707),
(507, 1007, 'Composition', '2019-01-01', 'Rejected', 206, 701),
(508, 1008, 'Composition', '2019-02-01', 'Rejected', 210, 710),
(509, 1009, 'Distinguished ', '2019-03-01', 'Published', 207, 709),
(510, 1010, 'Distinguished ', '2019-05-01', 'Rejected', 209, 702),
(511, 1011, 'Document', '2019-06-01', 'Rejected', 208, 710),
(512, 1012, 'Document', '2020-01-01', 'Rejected', 203, 707),
(513, 1013, 'Composition', '2020-02-01', 'Received', 210, 710),
(514, 1014, 'Composition', '2020-03-01', 'Rejected', 210, 710),
(515, 1015, 'Distinguished ', '2020-04-01', 'Rejected', 209, 706),
(516, 1016, 'Distinguished ', '2020-05-01', 'Rejected', 208, 701),
(517, 1017, 'Document', '2020-06-01', 'Rejected', 204, 702),
(518, 1018, 'Document', '2021-01-01', 'Rejected', 202, 705),
(519, 1019, 'Composition', '2021-02-01', 'Published', 201, 705),
(520, 1020, 'Composition', '2021-03-01', 'Rejected', 205, 704),
(521, 1021, 'Distinguished ', '2021-04-01', 'Rejected', 209, 706),
(522, 1022, 'Distinguished ', '2021-05-01', 'Rejected', 207, 709),
(523, 1023, 'Document', '2021-06-01', 'Published', 203, 701),
(524, 1024, 'Document', '2022-01-01', 'Rejected', 207, 701),
(525, 1025, 'Document', '2022-02-01', 'Rejected', 201, 702),
(526, 1026, 'Composition', '2022-03-01', 'Rejected', 206, 707),
(527, 1027, 'Composition', '2022-04-01', 'Rejected', 202, 709),
(528, 1028, 'Distinguished ', '2022-05-01', 'Published', 209, 706),
(529, 1029, 'Distinguished ', '2022-06-01', 'Rejected', 210, 703),
(530, 1030, 'Document', '2023-01-01', 'Published', 201, 702),
(531, 1031, 'Document', '2023-02-01', 'Published', 203, 708),
(532, 1032, 'Composition', '2023-03-01', 'Rejected', 205, 705),
(533, 1033, 'Composition', '2023-04-01', 'Rejected', 207, 704),
(534, 1034, 'Distinguished ', '2023-05-01', 'Rejected', 209, 702),
(535, 1035, 'Rejected', '2023-06-01', 'Scheduled', 201, 703),
(536, 1036, 'Distinguished', '2024-01-01', 'Under Review', 202, 701),
(537, 1037, 'Document', '2024-02-01', 'Under Review', 208, 702),
(538, 1038, 'Document', '2024-03-01', 'Under Review', 210, 708),
(539, 1039, 'Composition', '2024-04-01', 'Under Review', 209, 710);

-- --------------------------------------------------------

--
-- Table structure for table `reviewer`
--

CREATE TABLE `reviewer` (
  `RewID` int(30) NOT NULL,
  `FullName` varchar(50) NOT NULL,
  `E-MailAddress` varchar(50) NOT NULL,
  `MailingAddress` varchar(100) NOT NULL,
  `MobileNumber` int(30) NOT NULL,
  `Affiliation` varchar(50) NOT NULL,
  `EditorID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reviewer`
--

INSERT INTO `reviewer` (`RewID`, `FullName`, `E-MailAddress`, `MailingAddress`, `MobileNumber`, `Affiliation`, `EditorID`) VALUES
(601, 'Roger Ebert', 'Rogerebert@mail.com', 'Turl St, Oxford OX1 3DW', 1689545620, 'University of Oxford', 201),
(602, 'Pauline Kael', 'paulinekael@mail.com', 'The Old Schools, Cambridge CB2 1TN', 2073633451, 'University of Cambridge', 202),
(603, 'Gene Siskel', 'genesiskel@mail.com', 'St Andrews KY16 9AJ', 1458987156, 'University of St Andrews', 203),
(604, ' A. O. Scott', ' a.o.scott@mail.com', 'South Kensington, London SW7 2BX', 1467035421, 'Imperial College London', 204),
(605, ' Mark Kermode', ' markkermode@mail.com', 'St Hild\'s Ln, Durham DH1 1TA', 1014573894, 'Durham University', 205),
(606, ' Peter Travers', 'peterravers@mail.com', 'Epinal Way, Loughborough LE11 3TU', 2002463467, 'Loughborough University', 206),
(607, 'J. Hoberman', 'j.hoberman@mail.com', 'Claverton Down, Bath BA2 7AY', 2000393298, 'University of Bath', 207),
(608, 'Glenn Kenny', 'glennkenny@mail.com', 'Gower St, London WC1E 6BT', 2031489532, 'UCL (University College London)', 208),
(609, 'Leonard Maltin', 'leonardmaltin@mail.com', 'The Stanley building, London N1C 4AG', 1090429437, 'University of Warwick', 209),
(610, ' Gene Shalit', 'geneshalit@mail.com', 'Bailrigg, Lancaster LA1 4YW', 1398021174, 'Lancaster University', 210);

-- --------------------------------------------------------

--
-- Table structure for table `typesetting`
--

CREATE TABLE `typesetting` (
  `TypesetID` int(30) NOT NULL,
  `LineSpacies` int(30) NOT NULL,
  `FontStyle` varchar(50) NOT NULL,
  `FontSize` int(30) NOT NULL,
  `Justification` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `typesetting`
--

INSERT INTO `typesetting` (`TypesetID`, `LineSpacies`, `FontStyle`, `FontSize`, `Justification`) VALUES
(701, 2, 'Times New Roman', 11, 'Justification is okay'),
(702, 2, 'Calibri', 12, 'Justification is okay'),
(703, 3, 'Georgia', 10, 'Justification is okay'),
(704, 1, 'Arial', 14, 'Justification is okay'),
(705, 2, 'Biome', 12, 'Justification is okay'),
(706, 2, 'Gadugi', 11, 'Justification is okay'),
(707, 1, 'Kartika', 13, 'Justification is okay'),
(708, 2, 'Latha', 12, 'Justification is okay'),
(709, 1, 'Shruti', 14, 'Justification is okay'),
(710, 3, 'Tenorite', 10, 'Justification is okay');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aoirew`
--
ALTER TABLE `aoirew`
  ADD PRIMARY KEY (`RewID`),
  ADD KEY `ISCode` (`ISCode`);

--
-- Indexes for table `areaofinterest`
--
ALTER TABLE `areaofinterest`
  ADD PRIMARY KEY (`ISCode`);

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`AutID`);

--
-- Indexes for table `autman`
--
ALTER TABLE `autman`
  ADD PRIMARY KEY (`ManID`),
  ADD KEY `AutID` (`AutID`);

--
-- Indexes for table `editors`
--
ALTER TABLE `editors`
  ADD PRIMARY KEY (`EditorID`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`FeedbackID`),
  ADD KEY `Rew_ID` (`Rew_ID`),
  ADD KEY `EditorID` (`EditorID`);

--
-- Indexes for table `issue`
--
ALTER TABLE `issue`
  ADD PRIMARY KEY (`IssueID`),
  ADD KEY `ManID` (`ManID`);

--
-- Indexes for table `manuscript`
--
ALTER TABLE `manuscript`
  ADD PRIMARY KEY (`ManID`),
  ADD KEY `TypesetID` (`TypesetID`),
  ADD KEY `EditorID` (`EditorID`);

--
-- Indexes for table `reviewer`
--
ALTER TABLE `reviewer`
  ADD PRIMARY KEY (`RewID`),
  ADD KEY `EditorID` (`EditorID`);

--
-- Indexes for table `typesetting`
--
ALTER TABLE `typesetting`
  ADD PRIMARY KEY (`TypesetID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `aoirew`
--
ALTER TABLE `aoirew`
  ADD CONSTRAINT `aoirew_ibfk_1` FOREIGN KEY (`RewID`) REFERENCES `reviewer` (`RewID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `aoirew_ibfk_2` FOREIGN KEY (`ISCode`) REFERENCES `areaofinterest` (`ISCode`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `aoirew_ibfk_3` FOREIGN KEY (`RewID`) REFERENCES `reviewer` (`RewID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `areaofinterest`
--
ALTER TABLE `areaofinterest`
  ADD CONSTRAINT `areaofinterest_ibfk_1` FOREIGN KEY (`ISCode`) REFERENCES `aoirew` (`ISCode`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `autman`
--
ALTER TABLE `autman`
  ADD CONSTRAINT `autman_ibfk_1` FOREIGN KEY (`AutID`) REFERENCES `author` (`AutID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `autman_ibfk_2` FOREIGN KEY (`ManID`) REFERENCES `manuscript` (`ManID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `editors`
--
ALTER TABLE `editors`
  ADD CONSTRAINT `editors_ibfk_1` FOREIGN KEY (`RewID`) REFERENCES `reviewer` (`RewID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `feedback_ibfk_1` FOREIGN KEY (`Rew_ID`) REFERENCES `reviewer` (`RewID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `feedback_ibfk_2` FOREIGN KEY (`EditorID`) REFERENCES `editors` (`EditorID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `issue`
--
ALTER TABLE `issue`
  ADD CONSTRAINT `issue_ibfk_1` FOREIGN KEY (`ManID`) REFERENCES `manuscript` (`ManID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `manuscript`
--
ALTER TABLE `manuscript`
  ADD CONSTRAINT `manuscript_ibfk_1` FOREIGN KEY (`TypesetID`) REFERENCES `typesetting` (`TypesetID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `manuscript_ibfk_2` FOREIGN KEY (`EditorID`) REFERENCES `editors` (`EditorID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `reviewer`
--
ALTER TABLE `reviewer`
  ADD CONSTRAINT `reviewer_ibfk_1` FOREIGN KEY (`EditorID`) REFERENCES `editors` (`EditorID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
