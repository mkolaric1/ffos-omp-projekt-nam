-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 05, 2020 at 02:02 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `omp`
--
CREATE DATABASE omp;
USE DATABASE omp;
-- --------------------------------------------------------

--
-- Table structure for table `access_keys`
--

CREATE TABLE `access_keys` (
  `access_key_id` bigint(20) NOT NULL,
  `context` varchar(40) NOT NULL,
  `key_hash` varchar(40) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `assoc_id` bigint(20) DEFAULT NULL,
  `expiry_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `announcement_id` bigint(20) NOT NULL,
  `assoc_type` smallint(6) DEFAULT NULL,
  `assoc_id` bigint(20) NOT NULL,
  `type_id` bigint(20) DEFAULT NULL,
  `date_expire` datetime DEFAULT NULL,
  `date_posted` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `announcement_settings`
--

CREATE TABLE `announcement_settings` (
  `announcement_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` text DEFAULT NULL,
  `setting_type` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `announcement_types`
--

CREATE TABLE `announcement_types` (
  `type_id` bigint(20) NOT NULL,
  `assoc_type` smallint(6) DEFAULT NULL,
  `assoc_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `announcement_type_settings`
--

CREATE TABLE `announcement_type_settings` (
  `type_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` text DEFAULT NULL,
  `setting_type` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `author_id` bigint(20) NOT NULL,
  `email` varchar(90) NOT NULL,
  `include_in_browse` tinyint(4) NOT NULL DEFAULT 1,
  `publication_id` bigint(20) DEFAULT NULL,
  `submission_id` bigint(20) DEFAULT NULL,
  `seq` double NOT NULL DEFAULT 0,
  `user_group_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`author_id`, `email`, `include_in_browse`, `publication_id`, `submission_id`, `seq`, `user_group_id`) VALUES
(1, 'namprojekt1@gmail.com', 1, 1, NULL, 0, 2),
(3, 'namprojekt1@gmail.com', 1, 3, NULL, 0, 2),
(4, 'namprojekt1@gmail.com', 1, 4, NULL, 0, 2),
(5, 'namprojekt1@gmail.com', 1, 5, NULL, 0, 2),
(6, 'namprojekt1@gmail.com', 1, 6, NULL, 0, 2),
(7, 'namprojekt1@gmail.com', 1, 7, NULL, 0, 2),
(8, 'namprojekt1@gmail.com', 1, 8, NULL, 0, 2),
(9, 'namprojekt1@gmail.com', 1, 9, NULL, 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `author_settings`
--

CREATE TABLE `author_settings` (
  `author_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` text DEFAULT NULL,
  `setting_type` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `author_settings`
--

INSERT INTO `author_settings` (`author_id`, `locale`, `setting_name`, `setting_value`, `setting_type`) VALUES
(1, 'en_US', 'familyName', 'omp', NULL),
(1, 'en_US', 'givenName', 'omp', NULL),
(3, '', 'country', '', NULL),
(3, '', 'orcid', '', NULL),
(3, '', 'url', '', NULL),
(3, 'en_US', 'affiliation', '', NULL),
(3, 'en_US', 'biography', '', NULL),
(3, 'en_US', 'familyName', 'omp', NULL),
(3, 'en_US', 'givenName', 'omp', NULL),
(4, '', 'country', '', NULL),
(4, '', 'orcid', '', NULL),
(4, '', 'url', '', NULL),
(4, 'en_US', 'affiliation', '', NULL),
(4, 'en_US', 'biography', '', NULL),
(4, 'en_US', 'familyName', 'omp', NULL),
(4, 'en_US', 'givenName', 'omp', NULL),
(5, '', 'country', '', NULL),
(5, '', 'orcid', '', NULL),
(5, '', 'url', '', NULL),
(5, 'en_US', 'affiliation', '', NULL),
(5, 'en_US', 'biography', '', NULL),
(5, 'en_US', 'familyName', 'omp', NULL),
(5, 'en_US', 'givenName', 'omp', NULL),
(6, '', 'country', '', NULL),
(6, '', 'orcid', '', NULL),
(6, '', 'url', '', NULL),
(6, 'en_US', 'affiliation', '', NULL),
(6, 'en_US', 'biography', '', NULL),
(6, 'en_US', 'familyName', 'omp', NULL),
(6, 'en_US', 'givenName', 'omp', NULL),
(7, '', 'country', '', NULL),
(7, '', 'orcid', '', NULL),
(7, '', 'url', '', NULL),
(7, 'en_US', 'affiliation', '', NULL),
(7, 'en_US', 'biography', '', NULL),
(7, 'en_US', 'familyName', 'omp', NULL),
(7, 'en_US', 'givenName', 'omp', NULL),
(8, '', 'country', '', NULL),
(8, '', 'orcid', '', NULL),
(8, '', 'url', '', NULL),
(8, 'en_US', 'affiliation', '', NULL),
(8, 'en_US', 'biography', '', NULL),
(8, 'en_US', 'familyName', 'omp', NULL),
(8, 'en_US', 'givenName', 'omp', NULL),
(9, '', 'country', '', NULL),
(9, '', 'orcid', '', NULL),
(9, '', 'url', '', NULL),
(9, 'en_US', 'affiliation', '', NULL),
(9, 'en_US', 'biography', '', NULL),
(9, 'en_US', 'familyName', 'omp', NULL),
(9, 'en_US', 'givenName', 'omp', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `auth_sources`
--

CREATE TABLE `auth_sources` (
  `auth_id` bigint(20) NOT NULL,
  `title` varchar(60) NOT NULL,
  `plugin` varchar(32) NOT NULL,
  `auth_default` tinyint(4) NOT NULL DEFAULT 0,
  `settings` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` bigint(20) NOT NULL,
  `context_id` bigint(20) NOT NULL,
  `parent_id` bigint(20) NOT NULL,
  `seq` bigint(20) DEFAULT NULL,
  `path` varchar(255) NOT NULL,
  `image` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `context_id`, `parent_id`, `seq`, `path`, `image`) VALUES
(1, 1, 0, 1, 'proza', 'a:0:{}'),
(2, 1, 0, 10000, 'poezija', 'a:8:{s:4:\"name\";s:14:\"2-category.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:533;s:13:\"thumbnailName\";s:24:\"2-category-thumbnail.jpg\";s:14:\"thumbnailWidth\";d:106;s:15:\"thumbnailHeight\";d:71;s:10:\"uploadName\";s:11:\"poezija.jpg\";s:12:\"dateUploaded\";s:19:\"2020-09-04 11:40:37\";}'),
(3, 1, 0, 0, 'casopisi', 'a:8:{s:4:\"name\";s:14:\"3-category.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:450;s:13:\"thumbnailName\";s:24:\"3-category-thumbnail.jpg\";s:14:\"thumbnailWidth\";d:106;s:15:\"thumbnailHeight\";d:60;s:10:\"uploadName\";s:22:\"641522534013585731.jpg\";s:12:\"dateUploaded\";s:19:\"2020-09-04 12:14:33\";}'),
(4, 1, 0, 0, 'publicistika', 'a:8:{s:4:\"name\";s:14:\"4-category.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1511;s:13:\"thumbnailName\";s:24:\"4-category-thumbnail.jpg\";s:14:\"thumbnailWidth\";d:106;s:15:\"thumbnailHeight\";d:78;s:10:\"uploadName\";s:49:\"10945907_930547806964856_442134351124991893_o.jpg\";s:12:\"dateUploaded\";s:19:\"2020-09-04 12:58:29\";}');

-- --------------------------------------------------------

--
-- Table structure for table `category_settings`
--

CREATE TABLE `category_settings` (
  `category_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` text DEFAULT NULL,
  `setting_type` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category_settings`
--

INSERT INTO `category_settings` (`category_id`, `locale`, `setting_name`, `setting_value`, `setting_type`) VALUES
(1, '', 'sortOption', 'title-1', 'string'),
(1, 'en_US', 'description', '', 'string'),
(1, 'en_US', 'title', 'Proza', 'string'),
(2, '', 'sortOption', 'title-1', 'string'),
(2, 'en_US', 'description', '<p><span class=\"Natuknica\"><strong>Poezija</strong></span><span class=\"Normal\">&nbsp;(grč.&nbsp;<em>poíesis&nbsp;</em>stvaranje), najčešće istoznačnica za pjesništvo, ali i oznaka za cjelokupnu umj. književnost. Uže područje značenja uključuje epsku i lirsku poeziju. P. se od proze formalno razlikuje uporabom stiha, no moderne estetičke i teorijske klasifikacije razlikuju epski i lirski nazor na svijet (E. Staiger). Obilježjima p. smatraju se slikovitost, ritmičnost i sugestivnost, a ponajviše specifičan način služenja riječima koji, u razlici od svakodnevnoga govora, ističe zvukovni karakter riječi i mogućnost višesmislenog, prenesenog govora.</span></p>', 'string'),
(2, 'en_US', 'title', 'Poezija', 'string'),
(3, '', 'sortOption', 'title-1', 'string'),
(3, 'en_US', 'description', '', 'string'),
(3, 'en_US', 'title', 'Časopisi', 'string'),
(4, '', 'sortOption', 'title-1', 'string'),
(4, 'en_US', 'description', '<p><strong>Publicistika</strong>&nbsp;(njem.&nbsp;<em>Publizistik,</em>&nbsp;od lat.&nbsp;<em>publicus:&nbsp;</em>javni), naziv za popularno pisane radove o aktualnim političkim, društvenim, znanstvenim i drugim temama koji se objavljuju u periodici ili u posebnim izdanjima, brošurama i knjigama. To su najčešće angažirani žanrovi u novinarstvu kod kojih su bitni ideja, interpretacija i zaključak, nasuprot tzv. informativnim žanrovima u kojima se u pravilu objašnjenja ne iznose.&nbsp;</p>', 'string'),
(4, 'en_US', 'title', 'Publicistika', 'string');

-- --------------------------------------------------------

--
-- Table structure for table `citations`
--

CREATE TABLE `citations` (
  `citation_id` bigint(20) NOT NULL,
  `publication_id` bigint(20) NOT NULL DEFAULT 0,
  `raw_citation` text DEFAULT NULL,
  `seq` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `citation_settings`
--

CREATE TABLE `citation_settings` (
  `citation_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` text DEFAULT NULL,
  `setting_type` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `completed_payments`
--

CREATE TABLE `completed_payments` (
  `completed_payment_id` bigint(20) NOT NULL,
  `timestamp` datetime NOT NULL,
  `payment_type` bigint(20) NOT NULL,
  `context_id` bigint(20) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `assoc_id` varchar(16) DEFAULT NULL,
  `amount` double NOT NULL,
  `currency_code_alpha` varchar(3) DEFAULT NULL,
  `payment_method_plugin_name` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `controlled_vocabs`
--

CREATE TABLE `controlled_vocabs` (
  `controlled_vocab_id` bigint(20) NOT NULL,
  `symbolic` varchar(64) NOT NULL,
  `assoc_type` bigint(20) NOT NULL DEFAULT 0,
  `assoc_id` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `controlled_vocabs`
--

INSERT INTO `controlled_vocabs` (`controlled_vocab_id`, `symbolic`, `assoc_type`, `assoc_id`) VALUES
(768, 'interest', 0, 0),
(4, 'mods34-genre-marcgt', 0, 0),
(2, 'mods34-name-role-roleTerms-marcrelator', 0, 0),
(1, 'mods34-name-types', 0, 0),
(5, 'mods34-physicalDescription-form-marcform', 0, 0),
(3, 'mods34-typeOfResource', 0, 0),
(7, 'openurl10-book-genres', 0, 0),
(6, 'openurl10-journal-genres', 0, 0),
(12, 'submissionAgency', 1048588, 1),
(1055, 'submissionAgency', 1048588, 2),
(2597, 'submissionAgency', 1048588, 3),
(3909, 'submissionAgency', 1048588, 4),
(5291, 'submissionAgency', 1048588, 5),
(6481, 'submissionAgency', 1048588, 6),
(7991, 'submissionAgency', 1048588, 7),
(10146, 'submissionAgency', 1048588, 8),
(11491, 'submissionAgency', 1048588, 9),
(10, 'submissionDiscipline', 1048588, 1),
(1053, 'submissionDiscipline', 1048588, 2),
(2595, 'submissionDiscipline', 1048588, 3),
(3907, 'submissionDiscipline', 1048588, 4),
(5289, 'submissionDiscipline', 1048588, 5),
(6479, 'submissionDiscipline', 1048588, 6),
(7989, 'submissionDiscipline', 1048588, 7),
(10144, 'submissionDiscipline', 1048588, 8),
(11489, 'submissionDiscipline', 1048588, 9),
(8, 'submissionKeyword', 1048588, 1),
(1051, 'submissionKeyword', 1048588, 2),
(2593, 'submissionKeyword', 1048588, 3),
(3905, 'submissionKeyword', 1048588, 4),
(5287, 'submissionKeyword', 1048588, 5),
(6477, 'submissionKeyword', 1048588, 6),
(7987, 'submissionKeyword', 1048588, 7),
(10142, 'submissionKeyword', 1048588, 8),
(11487, 'submissionKeyword', 1048588, 9),
(11, 'submissionLanguage', 1048588, 1),
(1054, 'submissionLanguage', 1048588, 2),
(2596, 'submissionLanguage', 1048588, 3),
(3908, 'submissionLanguage', 1048588, 4),
(5290, 'submissionLanguage', 1048588, 5),
(6480, 'submissionLanguage', 1048588, 6),
(7990, 'submissionLanguage', 1048588, 7),
(10145, 'submissionLanguage', 1048588, 8),
(11490, 'submissionLanguage', 1048588, 9),
(9, 'submissionSubject', 1048588, 1),
(1052, 'submissionSubject', 1048588, 2),
(2594, 'submissionSubject', 1048588, 3),
(3906, 'submissionSubject', 1048588, 4),
(5288, 'submissionSubject', 1048588, 5),
(6478, 'submissionSubject', 1048588, 6),
(7988, 'submissionSubject', 1048588, 7),
(10143, 'submissionSubject', 1048588, 8),
(11488, 'submissionSubject', 1048588, 9);

-- --------------------------------------------------------

--
-- Table structure for table `controlled_vocab_entries`
--

CREATE TABLE `controlled_vocab_entries` (
  `controlled_vocab_entry_id` bigint(20) NOT NULL,
  `controlled_vocab_id` bigint(20) NOT NULL,
  `seq` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `controlled_vocab_entries`
--

INSERT INTO `controlled_vocab_entries` (`controlled_vocab_entry_id`, `controlled_vocab_id`, `seq`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 2, 1),
(5, 2, 2),
(6, 2, 3),
(7, 2, 4),
(8, 2, 5),
(9, 2, 6),
(10, 2, 7),
(11, 3, 1),
(12, 3, 2),
(13, 3, 3),
(14, 4, 1),
(15, 4, 2),
(16, 4, 3),
(17, 4, 4),
(18, 4, 5),
(19, 4, 6),
(20, 4, 7),
(21, 4, 8),
(22, 4, 9),
(23, 4, 10),
(24, 4, 11),
(25, 4, 12),
(26, 5, 1),
(27, 5, 2),
(28, 6, 1),
(29, 6, 2),
(30, 6, 3),
(31, 6, 4),
(32, 6, 5),
(33, 6, 6),
(34, 6, 7),
(35, 7, 1),
(36, 7, 2),
(37, 7, 3),
(38, 7, 4),
(39, 7, 5),
(40, 7, 6),
(41, 7, 7),
(47, 2593, 1),
(64, 3905, 1),
(65, 3905, 2),
(66, 3905, 3),
(67, 3905, 4),
(78, 5287, 1),
(79, 5287, 2),
(80, 5287, 3),
(81, 5287, 4),
(82, 5287, 5),
(92, 6477, 1),
(93, 6477, 2),
(94, 6477, 3),
(107, 7987, 1),
(108, 7987, 2),
(109, 7987, 3),
(118, 10142, 1),
(119, 10142, 2),
(124, 11487, 1),
(125, 11487, 2);

-- --------------------------------------------------------

--
-- Table structure for table `controlled_vocab_entry_settings`
--

CREATE TABLE `controlled_vocab_entry_settings` (
  `controlled_vocab_entry_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` text DEFAULT NULL,
  `setting_type` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `controlled_vocab_entry_settings`
--

INSERT INTO `controlled_vocab_entry_settings` (`controlled_vocab_entry_id`, `locale`, `setting_name`, `setting_value`, `setting_type`) VALUES
(1, '', 'name', 'personal', 'string'),
(2, '', 'name', 'corporate', 'string'),
(3, '', 'name', 'conference', 'string'),
(4, '', 'description', 'Author', 'string'),
(4, '', 'name', 'aut', 'string'),
(5, '', 'description', 'Contributor', 'string'),
(5, '', 'name', 'ctb', 'string'),
(6, '', 'description', 'Editor', 'string'),
(6, '', 'name', 'edt', 'string'),
(7, '', 'description', 'Illustrator', 'string'),
(7, '', 'name', 'ill', 'string'),
(8, '', 'description', 'Photographer', 'string'),
(8, '', 'name', 'pht', 'string'),
(9, '', 'description', 'Sponsor', 'string'),
(9, '', 'name', 'spn', 'string'),
(10, '', 'description', 'Translator', 'string'),
(10, '', 'name', 'trl', 'string'),
(11, '', 'name', 'multimedia', 'string'),
(12, '', 'name', 'still image', 'string'),
(13, '', 'name', 'text', 'string'),
(14, '', 'name', 'article', 'string'),
(15, '', 'name', 'book', 'string'),
(16, '', 'name', 'conference publication', 'string'),
(17, '', 'name', 'issue', 'string'),
(18, '', 'name', 'journal', 'string'),
(19, '', 'name', 'newspaper', 'string'),
(20, '', 'name', 'picture', 'string'),
(21, '', 'name', 'review', 'string'),
(22, '', 'name', 'periodical', 'string'),
(23, '', 'name', 'series', 'string'),
(24, '', 'name', 'thesis', 'string'),
(25, '', 'name', 'web site', 'string'),
(26, '', 'name', 'electronic', 'string'),
(27, '', 'name', 'print', 'string'),
(28, '', 'name', 'journal', 'string'),
(29, '', 'name', 'issue', 'string'),
(30, '', 'name', 'article', 'string'),
(31, '', 'name', 'proceeding', 'string'),
(32, '', 'name', 'conference', 'string'),
(33, '', 'name', 'preprint', 'string'),
(34, '', 'name', 'unknown', 'string'),
(35, '', 'name', 'book', 'string'),
(36, '', 'name', 'bookitem', 'string'),
(37, '', 'name', 'proceeding', 'string'),
(38, '', 'name', 'conference', 'string'),
(39, '', 'name', 'report', 'string'),
(40, '', 'name', 'document', 'string'),
(41, '', 'name', 'unknown', 'string'),
(47, 'en_US', 'submissionKeyword', 'proza', 'string'),
(64, 'en_US', 'submissionKeyword', 'poezija', 'string'),
(65, 'en_US', 'submissionKeyword', 'etika', 'string'),
(66, 'en_US', 'submissionKeyword', 'pjesme', 'string'),
(67, 'en_US', 'submissionKeyword', 'stihovi', 'string'),
(78, 'en_US', 'submissionKeyword', 'more', 'string'),
(79, 'en_US', 'submissionKeyword', 'zrak', 'string'),
(80, 'en_US', 'submissionKeyword', 'poezija', 'string'),
(81, 'en_US', 'submissionKeyword', 'stih', 'string'),
(82, 'en_US', 'submissionKeyword', 'lirika', 'string'),
(92, 'en_US', 'submissionKeyword', 'jezikoslovlje', 'string'),
(93, 'en_US', 'submissionKeyword', 'hrvatskijezik', 'string'),
(94, 'en_US', 'submissionKeyword', 'gramatika', 'string'),
(107, 'en_US', 'submissionKeyword', 'libros', 'string'),
(108, 'en_US', 'submissionKeyword', 'časopis', 'string'),
(109, 'en_US', 'submissionKeyword', 'informacijskeznanosti', 'string'),
(118, 'en_US', 'submissionKeyword', 'publicistika', 'string'),
(119, 'en_US', 'submissionKeyword', 'nacija', 'string'),
(124, 'en_US', 'submissionKeyword', 'utopija', 'string'),
(125, 'en_US', 'submissionKeyword', 'publicistika', 'string');

-- --------------------------------------------------------

--
-- Table structure for table `data_object_tombstones`
--

CREATE TABLE `data_object_tombstones` (
  `tombstone_id` bigint(20) NOT NULL,
  `data_object_id` bigint(20) NOT NULL,
  `date_deleted` datetime NOT NULL,
  `set_spec` varchar(255) NOT NULL,
  `set_name` varchar(255) NOT NULL,
  `oai_identifier` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `data_object_tombstone_oai_set_objects`
--

CREATE TABLE `data_object_tombstone_oai_set_objects` (
  `object_id` bigint(20) NOT NULL,
  `tombstone_id` bigint(20) NOT NULL,
  `assoc_type` bigint(20) NOT NULL,
  `assoc_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `data_object_tombstone_settings`
--

CREATE TABLE `data_object_tombstone_settings` (
  `tombstone_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` text DEFAULT NULL,
  `setting_type` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `edit_decisions`
--

CREATE TABLE `edit_decisions` (
  `edit_decision_id` bigint(20) NOT NULL,
  `submission_id` bigint(20) NOT NULL,
  `review_round_id` bigint(20) DEFAULT NULL,
  `stage_id` bigint(20) DEFAULT NULL,
  `round` tinyint(4) NOT NULL,
  `editor_id` bigint(20) NOT NULL,
  `decision` tinyint(4) NOT NULL,
  `date_decided` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `edit_decisions`
--

INSERT INTO `edit_decisions` (`edit_decision_id`, `submission_id`, `review_round_id`, `stage_id`, `round`, `editor_id`, `decision`, `date_decided`) VALUES
(1, 1, 0, 1, 0, 1, 2, '2020-09-04 10:54:01'),
(2, 1, 0, 4, 0, 3, 7, '2020-09-04 11:16:49'),
(3, 3, 0, 1, 0, 1, 7, '2020-09-04 11:33:11'),
(4, 4, 0, 1, 0, 1, 7, '2020-09-04 11:47:23'),
(5, 5, 0, 1, 0, 1, 3, '2020-09-04 11:56:25'),
(6, 5, 1, 3, 1, 1, 2, '2020-09-04 11:57:07'),
(7, 6, 0, 1, 0, 1, 7, '2020-09-04 12:25:11'),
(8, 6, 0, 5, 0, 1, 7, '2020-09-04 12:25:34'),
(9, 7, 0, 1, 0, 1, 7, '2020-09-04 12:52:51'),
(10, 8, 0, 1, 0, 1, 7, '2020-09-04 13:01:26'),
(11, 9, 0, 1, 0, 1, 7, '2020-09-04 13:09:42');

-- --------------------------------------------------------

--
-- Table structure for table `email_log`
--

CREATE TABLE `email_log` (
  `log_id` bigint(20) NOT NULL,
  `assoc_type` bigint(20) DEFAULT NULL,
  `assoc_id` bigint(20) DEFAULT NULL,
  `sender_id` bigint(20) NOT NULL,
  `date_sent` datetime NOT NULL,
  `event_type` bigint(20) DEFAULT NULL,
  `from_address` varchar(255) DEFAULT NULL,
  `recipients` text DEFAULT NULL,
  `cc_recipients` text DEFAULT NULL,
  `bcc_recipients` text DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `body` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `email_log_users`
--

CREATE TABLE `email_log_users` (
  `email_log_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `email_id` bigint(20) NOT NULL,
  `email_key` varchar(64) NOT NULL,
  `context_id` bigint(20) DEFAULT 0,
  `enabled` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `email_templates_default`
--

CREATE TABLE `email_templates_default` (
  `email_id` bigint(20) NOT NULL,
  `email_key` varchar(64) NOT NULL,
  `can_disable` tinyint(4) NOT NULL DEFAULT 1,
  `can_edit` tinyint(4) NOT NULL DEFAULT 1,
  `from_role_id` bigint(20) DEFAULT NULL,
  `to_role_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `email_templates_default`
--

INSERT INTO `email_templates_default` (`email_id`, `email_key`, `can_disable`, `can_edit`, `from_role_id`, `to_role_id`) VALUES
(1, 'NOTIFICATION', 0, 1, NULL, NULL),
(2, 'NOTIFICATION_CENTER_DEFAULT', 0, 1, NULL, NULL),
(3, 'PASSWORD_RESET_CONFIRM', 0, 1, NULL, NULL),
(4, 'PASSWORD_RESET', 0, 1, NULL, NULL),
(5, 'USER_REGISTER', 0, 1, NULL, NULL),
(6, 'USER_VALIDATE', 0, 1, NULL, NULL),
(7, 'REVIEWER_REGISTER', 0, 1, NULL, NULL),
(8, 'PUBLISH_NOTIFY', 0, 1, NULL, NULL),
(9, 'SUBMISSION_ACK', 1, 1, NULL, 65536),
(10, 'SUBMISSION_ACK_NOT_USER', 1, 1, NULL, 65536),
(11, 'EDITOR_ASSIGN', 1, 1, 16, 16),
(12, 'REVIEW_CANCEL', 1, 1, 16, 4096),
(13, 'REVIEW_REINSTATE', 1, 1, 16, 4096),
(14, 'REVIEW_REQUEST', 1, 1, 16, 4096),
(15, 'REVIEW_REQUEST_ONECLICK', 1, 1, 16, 4096),
(16, 'REVIEW_REQUEST_REMIND_AUTO', 0, 1, NULL, 4096),
(17, 'REVIEW_REQUEST_REMIND_AUTO_ONECLICK', 0, 1, NULL, 4096),
(18, 'REVIEW_REQUEST_ATTACHED', 0, 1, 16, 4096),
(19, 'REVIEW_CONFIRM', 1, 1, 4096, 16),
(20, 'REVIEW_DECLINE', 1, 1, 4096, 16),
(21, 'REVIEW_ACK', 1, 1, 16, 4096),
(22, 'REVIEW_REMIND', 0, 1, 16, 4096),
(23, 'REVIEW_REMIND_AUTO', 0, 1, NULL, 4096),
(24, 'REVIEW_REMIND_ONECLICK', 0, 1, 16, 4096),
(25, 'REVIEW_REMIND_AUTO_ONECLICK', 0, 1, NULL, 4096),
(26, 'EDITOR_DECISION_ACCEPT', 0, 1, 16, 65536),
(27, 'EDITOR_DECISION_SEND_TO_EXTERNAL', 0, 1, 16, 65536),
(28, 'EDITOR_DECISION_SEND_TO_PRODUCTION', 0, 1, 16, 65536),
(29, 'EDITOR_DECISION_REVISIONS', 0, 1, 16, 65536),
(30, 'EDITOR_DECISION_RESUBMIT', 0, 1, 16, 65536),
(31, 'EDITOR_DECISION_DECLINE', 0, 1, 16, 65536),
(32, 'EDITOR_DECISION_INITIAL_DECLINE', 0, 1, 16, 65536),
(33, 'EDITOR_RECOMMENDATION', 0, 1, 16, 16),
(34, 'COPYEDIT_REQUEST', 1, 1, 16, 4097),
(35, 'LAYOUT_REQUEST', 1, 1, 16, 4097),
(36, 'LAYOUT_COMPLETE', 1, 1, 4097, 16),
(37, 'INDEX_REQUEST', 1, 1, 16, 4097),
(38, 'INDEX_COMPLETE', 1, 1, 4097, 16),
(39, 'EMAIL_LINK', 0, 1, 1048576, NULL),
(40, 'STATISTICS_REPORT_NOTIFICATION', 0, 1, 16, 17),
(41, 'ANNOUNCEMENT', 0, 1, 16, 1048576),
(42, 'MANUAL_PAYMENT_NOTIFICATION', 0, 1, NULL, NULL),
(43, 'PAYPAL_INVESTIGATE_PAYMENT', 0, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `email_templates_default_data`
--

CREATE TABLE `email_templates_default_data` (
  `email_key` varchar(64) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT 'en_US',
  `subject` varchar(120) NOT NULL,
  `body` text DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `email_templates_default_data`
--

INSERT INTO `email_templates_default_data` (`email_key`, `locale`, `subject`, `body`, `description`) VALUES
('ANNOUNCEMENT', 'en_US', '{$title}', '<b>{$title}</b><br />\n<br />\n{$summary}<br />\n<br />\nVisit our website to read the <a href=\"{$url}\">full announcement</a>.', 'This email is sent when a new announcement is created.'),
('COPYEDIT_REQUEST', 'en_US', 'Copyediting Request', '{$participantName}:<br />\n<br />\nI would ask that you undertake the copyediting of &quot;{$submissionTitle}&quot; for {$contextName} by following these steps.<br />\n1. Click on the Submission URL below.<br />\n2. Log into the press and click on the File that appears in Step 1.<br />\n3. Consult Copyediting Instructions posted on webpage.<br />\n4. Open the downloaded file and copyedit, while adding Author Queries as needed.<br />\n5. Save copyedited file, and upload to Step 1 of Copyediting.<br />\n6. Send the COMPLETE email to the editor.<br />\n<br />\n{$contextName} URL: {$contextUrl}<br />\nSubmission URL: {$submissionUrl}<br />\nUsername: {$participantUsername}', 'This email is sent by a Series Editor to a submission\'s Copyeditor to request that they begin the copyediting process. It provides information about the submission and how to access it.'),
('EDITOR_ASSIGN', 'en_US', 'Editorial Assignment', '{$editorialContactName}:<br />\n<br />\nThe submission, &quot;{$submissionTitle},&quot; to {$contextName} has been assigned to you to see through the editorial process in your role as an Editor.<br />\n<br />\nSubmission URL: {$submissionUrl}<br />\nUsername: {$editorUsername}<br />\n<br />\nThank you,', 'This email notifies a Series Editor that the Editor has assigned them the task of overseeing a submission through the editing process. It provides information about the submission and how to access the press site.'),
('EDITOR_DECISION_ACCEPT', 'en_US', 'Editor Decision', '{$authorName}:<br />\n<br />\nWe have reached a decision regarding your submission to {$contextName}, &quot;{$submissionTitle}&quot;.<br />\n<br />\nOur decision is to:<br />\n<br />\nManuscript URL: {$submissionUrl}', 'This email from the Editor or Series Editor to an Author notifies them of a final decision regarding their submission.'),
('EDITOR_DECISION_DECLINE', 'en_US', 'Editor Decision', '{$authorName}:<br />\n<br />\nWe have reached a decision regarding your submission to {$contextName}, &quot;{$submissionTitle}&quot;.<br />\n<br />\nOur decision is to:<br />\n<br />\nManuscript URL: {$submissionUrl}', 'This email from the Editor or Series Editor to an Author notifies them of a final decision regarding their submission.'),
('EDITOR_DECISION_INITIAL_DECLINE', 'en_US', 'Editor Decision', '\n			{$authorName}:<br />\n<br />\nWe have reached a decision regarding your submission to {$contextName}, &quot;{$submissionTitle}&quot;.<br />\n<br />\nOur decision is to: Decline Submission<br />\n<br />\nManuscript URL: {$submissionUrl}\n		', 'This email is send to the author if the editor declines his submission initially, before the review stage'),
('EDITOR_DECISION_RESUBMIT', 'en_US', 'Editor Decision', '{$authorName}:<br />\n<br />\nWe have reached a decision regarding your submission to {$contextName}, &quot;{$submissionTitle}&quot;.<br />\n<br />\nOur decision is to:<br />\n<br />\nManuscript URL: {$submissionUrl}', 'This email from the Editor or Series Editor to an Author notifies them of a final decision regarding their submission.'),
('EDITOR_DECISION_REVISIONS', 'en_US', 'Editor Decision', '{$authorName}:<br />\n<br />\nWe have reached a decision regarding your submission to {$contextName}, &quot;{$submissionTitle}&quot;.<br />\n<br />\nOur decision is to:<br />\n<br />\nManuscript URL: {$submissionUrl}', 'This email from the Editor or Series Editor to an Author notifies them of a final decision regarding their submission.'),
('EDITOR_DECISION_SEND_TO_EXTERNAL', 'en_US', 'Editor Decision', '{$authorName}:<br />\n<br />\nWe have reached a decision regarding your submission to {$contextName}, &quot;{$submissionTitle}&quot;.<br />\n<br />\nOur decision is to:<br />\n<br />\nManuscript URL: {$submissionUrl}', 'This email from the Editor or Series Editor to an Author notifies them that their submission is being sent to an external review.'),
('EDITOR_DECISION_SEND_TO_PRODUCTION', 'en_US', 'Editor Decision', '{$authorName}:<br />\n<br />\nThe editing of your manuscript, &quot;{$submissionTitle},&quot; is complete.  We are now sending it to production.<br />\n<br />\nManuscript URL: {$submissionUrl}', 'This email from the Editor or Series Editor to an Author notifies them that their submission is being sent to production.'),
('EDITOR_RECOMMENDATION', 'en_US', 'Editor Recommendation', '{$editors}:<br />\n<br />\nThe recommendation regarding the submission to {$contextName}, &quot;{$submissionTitle}&quot; is: {$recommendation}', 'This email from the recommending Editor or Section Editor to the decision making Editors or Section Editors notifies them of a final recommendation regarding the submission.'),
('EMAIL_LINK', 'en_US', 'Manuscript of Possible Interest', 'Thought you might be interested in seeing &quot;{$submissionTitle}&quot; by {$authorName} published in Vol {$volume}, No {$number} ({$year}) of {$contextName} at &quot;{$monographUrl}&quot;.', 'This email template provides a registered reader with the opportunity to send information about a monograph to somebody who may be interested. It is available via the Reading Tools and must be enabled by the Press Manager in the Reading Tools Administration page.'),
('INDEX_COMPLETE', 'en_US', 'Index Galleys Complete', '{$editorialContactName}:<br />\n<br />\nIndexes have now been prepared for the manuscript, &quot;{$submissionTitle},&quot; for {$contextName} and are ready for proofreading.<br />\n<br />\nIf you have any questions, please contact me.<br />\n<br />\n{$signatureFullName}', 'This email from the Indexer to the Series Editor notifies them that the index creation process has been completed.'),
('INDEX_REQUEST', 'en_US', 'Request Index', '{$participantName}:<br />\n<br />\nThe submission &quot;{$submissionTitle}&quot; to {$contextName} now needs indexes created by following these steps.<br />\n1. Click on the Submission URL below.<br />\n2. Log into the press and use the Page Proofs file to create the galleys according to press standards.<br />\n3. Send the COMPLETE email to the editor.<br />\n<br />\n{$contextName} URL: {$contextUrl}<br />\nSubmission URL: {$submissionUrl}<br />\nUsername: {$participantUsername}<br />\n<br />\nIf you are unable to undertake this work at this time or have any questions, please contact me. Thank you for your contribution to this press.<br />\n<br />\n{$editorialContactSignature}', 'This email from the Series Editor to the Indexer notifies them that they have been assigned the task of creating indexes for a submission. It provides information about the submission and how to access it.'),
('LAYOUT_COMPLETE', 'en_US', 'Layout Galleys Complete', '{$editorialContactName}:<br />\n<br />\nGalleys have now been prepared for the manuscript, &quot;{$submissionTitle},&quot; for {$contextName} and are ready for proofreading.<br />\n<br />\nIf you have any questions, please contact me.<br />\n<br />\n{$signatureFullName}', 'This email from the Layout Editor to the Series Editor notifies them that the layout process has been completed.'),
('LAYOUT_REQUEST', 'en_US', 'Request Galleys', '{$participantName}:<br />\n<br />\nThe submission &quot;{$submissionTitle}&quot; to {$contextName} now needs galleys laid out by following these steps.<br />\n1. Click on the Submission URL below.<br />\n2. Log into the press and use the Layout Version file to create the galleys according to press standards.<br />\n3. Send the COMPLETE email to the editor.<br />\n<br />\n{$contextName} URL: {$contextUrl}<br />\nSubmission URL: {$submissionUrl}<br />\nUsername: {$participantUsername}<br />\n<br />\nIf you are unable to undertake this work at this time or have any questions, please contact me. Thank you for your contribution to this press.', 'This email from the Series Editor to the Layout Editor notifies them that they have been assigned the task of performing layout editing on a submission. It provides information about the submission and how to access it.'),
('MANUAL_PAYMENT_NOTIFICATION', 'en_US', 'Manual Payment Notification', 'A manual payment needs to be processed for the press {$contextName} and the user {$userFullName} (username &quot;{$userName}&quot;).<br />\n<br />\nThe item being paid for is &quot;{$itemName}&quot;.<br />\nThe cost is {$itemCost} ({$itemCurrencyCode}).<br />\n<br />\nThis email was generated by the Open Monograph Press Manual Payment plugin.', 'This email template is used to notify a press manager contact that a manual payment was requested.'),
('NOTIFICATION', 'en_US', 'New notification from {$siteTitle}', 'You have a new notification from {$siteTitle}:<br />\n<br />\n{$notificationContents}<br />\n<br />\nLink: {$url}<br />\n<br />\nThis is an automatically generated email; please do not reply to this message.<br />\n{$principalContactSignature}', 'The email is sent to registered users that have selected to have this type of notification emailed to them.'),
('NOTIFICATION_CENTER_DEFAULT', 'en_US', 'A message regarding {$contextName}', 'Please enter your message.', 'The default (blank) message used in the Notification Center Message Listbuilder.'),
('PASSWORD_RESET', 'en_US', 'Password Reset', 'Your password has been successfully reset for use with the {$siteTitle} web site.<br />\n<br />\nYour username: {$username}<br />\nYour new password: {$password}<br />\n<br />\n{$principalContactSignature}', 'This email is sent to a registered user when they have successfully reset their password following the process described in the PASSWORD_RESET_CONFIRM email.'),
('PASSWORD_RESET_CONFIRM', 'en_US', 'Password Reset Confirmation', 'We have received a request to reset your password for the {$siteTitle} web site.<br />\n<br />\nIf you did not make this request, please ignore this email and your password will not be changed. If you wish to reset your password, click on the below URL.<br />\n<br />\nReset my password: {$url}<br />\n<br />\n{$principalContactSignature}', 'This email is sent to a registered user when they indicate that they have forgotten their password or are unable to login. It provides a URL they can follow to reset their password.'),
('PAYPAL_INVESTIGATE_PAYMENT', 'en_US', 'Unusual PayPal Activity', 'Open Monograph Press has encountered unusual activity relating to PayPal payment support for the press {$contextName}. This activity may need further investigation or manual intervention.<br />\n                       <br />\nThis email was generated by the Open Monograph Press PayPal plugin.<br />\n<br />\nFull post information for the request:<br />\n{$postInfo}<br />\n<br />\nAdditional information (if supplied):<br />\n{$additionalInfo}<br />\n<br />\nServer vars:<br />\n{$serverVars}<br />\n', 'This email template is used to notify the press\' primary contact that suspicious activity or activity requiring manual intervention was encountered by the PayPal plugin.'),
('PUBLISH_NOTIFY', 'en_US', 'New Book Published', 'Readers:<br />\n<br />\n{$contextName} has just published its latest book at {$contextUrl}. We invite you to review the Table of Contents here and then visit our web site to review monographs and items of interest.<br />\n<br />\nThanks for the continuing interest in our work,<br />\n{$editorialContactSignature}', 'This email is sent to registered readers via the \"Notify Users\" link in the Editor\'s User Home. It notifies readers of a new book and invites them to visit the press at a supplied URL.'),
('REVIEWER_REGISTER', 'en_US', 'Registration as Reviewer with {$contextName}', 'In light of your expertise, we have taken the liberty of registering your name in the reviewer database for {$contextName}. This does not entail any form of commitment on your part, but simply enables us to approach you with a submission to possibly review. On being invited to review, you will have an opportunity to see the title and abstract of the paper in question, and you\'ll always be in a position to accept or decline the invitation. You can also ask at any point to have your name removed from this reviewer list.<br />\n<br />\nWe are providing you with a username and password, which is used in all interactions with the press through its website. You may wish, for example, to update your profile, including your reviewing interests.<br />\n<br />\nUsername: {$username}<br />\nPassword: {$password}<br />\n<br />\nThank you,<br />\n{$principalContactSignature}', 'This email is sent to a newly registered reviewer to welcome them to the system and provide them with a record of their username and password.'),
('REVIEW_ACK', 'en_US', 'Manuscript Review Acknowledgement', '{$reviewerName}:<br />\n<br />\nThank you for completing the review of the submission, &quot;{$submissionTitle},&quot; for {$contextName}. We appreciate your contribution to the quality of the work that we publish.', 'This email is sent by a Series Editor to confirm receipt of a completed review and thank the reviewer for their contributions.'),
('REVIEW_CANCEL', 'en_US', 'Request for Review Cancelled', '{$reviewerName}:<br />\n<br />\nWe have decided at this point to cancel our request for you to review the submission, &quot;{$submissionTitle},&quot; for {$contextName}. We apologize for any inconvenience this may cause you and hope that we will be able to call on you to assist with this review process in the future.<br />\n<br />\nIf you have any questions, please contact me.', 'This email is sent by the Series Editor to a Reviewer who has a submission review in progress to notify them that the review has been cancelled.'),
('REVIEW_CONFIRM', 'en_US', 'Able to Review', 'Editor(s):<br />\n<br />\nI am able and willing to review the submission, &quot;{$submissionTitle},&quot; for {$contextName}. Thank you for thinking of me, and I plan to have the review completed by its due date, {$reviewDueDate}, if not before.<br />\n<br />\n{$reviewerName}', 'This email is sent by a Reviewer to the Series Editor in response to a review request to notify the Series Editor that the review request has been accepted and will be completed by the specified date.'),
('REVIEW_DECLINE', 'en_US', 'Unable to Review', 'Editor(s):<br />\n<br />\nI am afraid that at this time I am unable to review the submission, &quot;{$submissionTitle},&quot; for {$contextName}. Thank you for thinking of me, and another time feel free to call on me.<br />\n<br />\n{$reviewerName}', 'This email is sent by a Reviewer to the Series Editor in response to a review request to notify the Series Editor that the review request has been declined.'),
('REVIEW_REINSTATE', 'en_US', 'Request for Review Reinstated', '{$reviewerName}:<br />\n<br />\nWe would like to reinstate our request for you to review the submission, &quot;{$submissionTitle},&quot; for {$contextName}. We hope that you will be able to assist with this journal\'s review process.<br />\n<br />\nIf you have any questions, please contact me.', 'This email is sent by the Section Editor to a Reviewer who has a submission review in progress to notify them that the review has been cancelled.'),
('REVIEW_REMIND', 'en_US', 'Submission Review Reminder', '{$reviewerName}:<br />\n<br />\nJust a gentle reminder of our request for your review of the submission, &quot;{$submissionTitle},&quot; for {$contextName}. We were hoping to have this review by {$reviewDueDate}, and would be pleased to receive it as soon as you are able to prepare it.<br />\n<br />\nIf you do not have your username and password for the web site, you can use this link to reset your password (which will then be emailed to you along with your username). {$passwordResetUrl}<br />\n<br />\nSubmission URL: {$submissionReviewUrl}<br />\n<br />\nUsername: {$reviewerUserName}<br />\n<br />\nPlease confirm your ability to complete this vital contribution to the work of the press. I look forward to hearing from you.<br />\n<br />\n{$editorialContactSignature}', 'This email is sent by a Series Editor to remind a reviewer that their review is due.'),
('REVIEW_REMIND_AUTO', 'en_US', 'Automated Submission Review Reminder', '{$reviewerName}:<br />\n<br />\nJust a gentle reminder of our request for your review of the submission, &quot;{$submissionTitle},&quot; for {$contextName}. We were hoping to have this review by {$reviewDueDate}, and this email has been automatically generated and sent with the passing of that date. We would still be pleased to receive it as soon as you are able to prepare it.<br />\n<br />\nIf you do not have your username and password for the web site, you can use this link to reset your password (which will then be emailed to you along with your username). {$passwordResetUrl}<br />\n<br />\nSubmission URL: {$submissionReviewUrl}<br />\n<br />\nUsername: {$reviewerUserName}<br />\n<br />\nPlease confirm your ability to complete this vital contribution to the work of the press. I look forward to hearing from you.<br />\n<br />\n{$editorialContactSignature}', 'This email is automatically sent when a reviewer\'s due date elapses (see Review Options under Settings > Workflow > Review) and one-click reviewer access is disabled. Scheduled tasks must be enabled and configured (see the site configuration file).'),
('REVIEW_REMIND_AUTO_ONECLICK', 'en_US', 'Automated Submission Review Reminder', '{$reviewerName}:<br />\n<br />\nJust a gentle reminder of our request for your review of the submission, &quot;{$submissionTitle},&quot; for {$contextName}. We were hoping to have this review by {$reviewDueDate}, and this email has been automatically generated and sent with the passing of that date. We would still be pleased to receive it as soon as you are able to prepare it.<br />\n<br />\nSubmission URL: {$submissionReviewUrl}<br />\n<br />\nPlease confirm your ability to complete this vital contribution to the work of the press. I look forward to hearing from you.<br />\n<br />\n{$editorialContactSignature}', 'This email is automatically sent when a reviewer\'s due date elapses (see Review Options under Settings > Workflow > Review) and one-click reviewer access is enabled. Scheduled tasks must be enabled and configured (see the site configuration file).'),
('REVIEW_REMIND_ONECLICK', 'en_US', 'Submission Review Reminder', '{$reviewerName}:<br />\n<br />\nJust a gentle reminder of our request for your review of the submission, &quot;{$submissionTitle},&quot; for {$contextName}. We were hoping to have this review by {$reviewDueDate}, and would be pleased to receive it as soon as you are able to prepare it.<br />\n<br />\nSubmission URL: {$submissionReviewUrl}<br />\n<br />\nPlease confirm your ability to complete this vital contribution to the work of the press. I look forward to hearing from you.<br />\n<br />\n{$editorialContactSignature}', 'This email is sent by a Series Editor to remind a reviewer that their review is due.'),
('REVIEW_REQUEST', 'en_US', 'Manuscript Review Request', 'Dear {$reviewerName},<br />\n<br />\n{$messageToReviewer}<br />\n<br />\nPlease log into the press web site by {$responseDueDate} to indicate whether you will undertake the review or not, as well as to access the submission and to record your review and recommendation.<br />\n<br />\nThe review itself is due {$reviewDueDate}.<br />\n<br />\nSubmission URL: {$submissionReviewUrl}<br />\n<br />\nUsername: {$reviewerUserName}<br />\n<br />\nThank you for considering this request.<br />\n<br />\n<br />\nSincerely,<br />\n{$editorialContactSignature}<br />\n', 'This email from the Series Editor to a Reviewer requests that the reviewer accept or decline the task of reviewing a submission. It provides information about the submission such as the title and abstract, a review due date, and how to access the submission itself. This message is used when the Standard Review Process is selected in Management > Settings > Workflow > Review. (Otherwise see REVIEW_REQUEST_ATTACHED.)'),
('REVIEW_REQUEST_ATTACHED', 'en_US', 'Manuscript Review Request', '{$reviewerName}:<br />\n<br />\nI believe that you would serve as an excellent reviewer of the manuscript, &quot;{$submissionTitle},&quot; and I am asking that you consider undertaking this important task for us. The Review Guidelines for this press are appended below, and the submission is attached to this email. Your review of the submission, along with your recommendation, should be emailed to me by {$reviewDueDate}.<br />\n<br />\nPlease indicate in a return email by {$weekLaterDate} whether you are able and willing to do the review.<br />\n<br />\nThank you for considering this request.<br />\n<br />\n{$editorialContactSignature}<br />\n<br />\n<br />\nReview Guidelines<br />\n<br />\n{$reviewGuidelines}<br />\n', 'This email is sent by the Series Editor to a Reviewer to request that they accept or decline the task of reviewing a submission. It includes the submission as an attachment. This message is used when the Email-Attachment Review Process is selected in Management > Settings > Workflow > Review. (Otherwise see REVIEW_REQUEST.)'),
('REVIEW_REQUEST_ONECLICK', 'en_US', 'Manuscript Review Request', '{$reviewerName}:<br />\n<br />\nI believe that you would serve as an excellent reviewer of the manuscript, &quot;{$submissionTitle},&quot; which has been submitted to {$contextName}. The submission\'s abstract is inserted below, and I hope that you will consider undertaking this important task for us.<br />\n<br />\nPlease log into the press web site by {$weekLaterDate} to indicate whether you will undertake the review or not, as well as to access the submission and to record your review and recommendation.<br />\n<br />\nThe review itself is due {$reviewDueDate}.<br />\n<br />\nSubmission URL: {$submissionReviewUrl}<br />\n<br />\nThank you for considering this request.<br />\n<br />\n{$editorialContactSignature}<br />\n<br />\n<br />\n<br />\n&quot;{$submissionTitle}&quot;<br />\n<br />\n{$abstractTermIfEnabled}<br />\n{$submissionAbstract}', 'This email from the Series Editor to a Reviewer requests that the reviewer accept or decline the task of reviewing a submission. It provides information about the submission such as the title and abstract, a review due date, and how to access the submission itself. This message is used when the Standard Review Process is selected in Management > Settings > Workflow > Review, and one-click reviewer access is enabled.'),
('REVIEW_REQUEST_REMIND_AUTO', 'en_US', 'Manuscript Review Request', 'Dear {$reviewerName},<br />\nJust a gentle reminder of our request for your review of the submission, &quot;{$submissionTitle},&quot; for {$contextName}. We were hoping to have your response by {$responseDueDate}, and this email has been automatically generated and sent with the passing of that date.\n<br />\n{$messageToReviewer}<br />\n<br />\nPlease log into the press web site to indicate whether you will undertake the review or not, as well as to access the submission and to record your review and recommendation.<br />\n<br />\nThe review itself is due {$reviewDueDate}.<br />\n<br />\nSubmission URL: {$submissionReviewUrl}<br />\n<br />\nUsername: {$reviewerUserName}<br />\n<br />\nThank you for considering this request.<br />\n<br />\n<br />\nSincerely,<br />\n{$editorialContactSignature}<br />\n', 'This email is automatically sent when a reviewer\'s confirmation due date elapses (see Review Options under Settings > Workflow > Review) and one-click reviewer access is disabled. Scheduled tasks must be enabled and configured (see the site configuration file).'),
('REVIEW_REQUEST_REMIND_AUTO_ONECLICK', 'en_US', 'Manuscript Review Request', '{$reviewerName}:<br />\nJust a gentle reminder of our request for your review of the submission, &quot;{$submissionTitle},&quot; for {$contextName}. We were hoping to have your response by {$responseDueDate}, and this email has been automatically generated and sent with the passing of that date.\n<br />\nI believe that you would serve as an excellent reviewer of the manuscript. The submission\'s abstract is inserted below, and I hope that you will consider undertaking this important task for us.<br />\n<br />\nPlease log into the press web site to indicate whether you will undertake the review or not, as well as to access the submission and to record your review and recommendation.<br />\n<br />\nThe review itself is due {$reviewDueDate}.<br />\n<br />\nSubmission URL: {$submissionReviewUrl}<br />\n<br />\nThank you for considering this request.<br />\n<br />\n{$editorialContactSignature}<br />\n<br />\n<br />\n<br />\n&quot;{$submissionTitle}&quot;<br />\n<br />\n{$abstractTermIfEnabled}<br />\n{$submissionAbstract}', 'This email is automatically sent when a reviewer\'s confirmation due date elapses (see Review Options under Settings > Workflow > Review) and one-click reviewer access is enabled. Scheduled tasks must be enabled and configured (see the site configuration file).'),
('STATISTICS_REPORT_NOTIFICATION', 'en_US', 'Editorial activity for {$month}, {$year}', '\n{$name}, <br />\n<br />\nYour press health report for {$month}, {$year} is now available. Your key stats for this month are below.<br />\n<ul>\n	<li>New submissions this month: {$newSubmissions}</li>\n	<li>Declined submissions this month: {$declinedSubmissions}</li>\n	<li>Accepted submissions this month: {$acceptedSubmissions}</li>\n	<li>Total submissions in the system: {$totalSubmissions}</li>\n</ul>\nLogin to the the press to view more detailed <a href=\"{$editorialStatsLink}\">editorial trends</a> and <a href=\"{$publicationStatsLink}\">published article stats</a>. A full copy of this month\'s editorial trends is attached.<br />\n<br />\nSincerely,<br />\n{$principalContactSignature}', 'This email is automatically sent monthly to editors and journal managers to provide them a system health overview.'),
('SUBMISSION_ACK', 'en_US', 'Submission Acknowledgement', '{$authorName}:<br />\n<br />\nThank you for submitting the manuscript, &quot;{$submissionTitle}&quot; to {$contextName}. With the online press management system that we are using, you will be able to track its progress through the editorial process by logging in to the press web site:<br />\n<br />\nManuscript URL: {$submissionUrl}<br />\nUsername: {$authorUsername}<br />\n<br />\nIf you have any questions, please contact me. Thank you for considering this press as a venue for your work.<br />\n<br />\n{$editorialContactSignature}', 'This email, when enabled, is automatically sent to an author when he or she completes the process of submitting a manuscript to the press. It provides information about tracking the submission through the process and thanks the author for the submission.'),
('SUBMISSION_ACK_NOT_USER', 'en_US', 'Submission Acknowledgement', 'Hello,<br />\n<br />\n{$submitterName} has submitted the manuscript, &quot;{$submissionTitle}&quot; to {$contextName}. <br />\n<br />\nIf you have any questions, please contact me. Thank you for considering this press as a venue for your work.<br />\n<br />\n{$editorialContactSignature}', 'This email, when enabled, is automatically sent to the other authors who are not users within OMP specified during the submission process.'),
('USER_REGISTER', 'en_US', 'Press Registration', '{$userFullName}<br />\n<br />\nYou have now been registered as a user with {$contextName}. We have included your username and password in this email, which are needed for all work with this press through its website. At any point, you can ask to be removed from the list of users by contacting me.<br />\n<br />\nUsername: {$username}<br />\nPassword: {$password}<br />\n<br />\nThank you,<br />\n{$principalContactSignature}', 'This email is sent to a newly registered user to welcome them to the system and provide them with a record of their username and password.'),
('USER_VALIDATE', 'en_US', 'Validate Your Account', '{$userFullName}<br />\n<br />\nYou have created an account with {$contextName}, but before you can start using it, you need to validate your email account. To do this, simply follow the link below:<br />\n<br />\n{$activateUrl}<br />\n<br />\nThank you,<br />\n{$principalContactSignature}', 'This email is sent to a newly registered user to welcome them to the system and provide them with a record of their username and password.');

-- --------------------------------------------------------

--
-- Table structure for table `email_templates_settings`
--

CREATE TABLE `email_templates_settings` (
  `email_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `event_log`
--

CREATE TABLE `event_log` (
  `log_id` bigint(20) NOT NULL,
  `assoc_type` bigint(20) DEFAULT NULL,
  `assoc_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  `date_logged` datetime NOT NULL,
  `event_type` bigint(20) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `is_translated` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `event_log`
--

INSERT INTO `event_log` (`log_id`, `assoc_type`, `assoc_id`, `user_id`, `date_logged`, `event_type`, `message`, `is_translated`) VALUES
(1, 1048585, 1, 1, '2020-09-04 10:28:22', 268435458, 'submission.event.general.metadataUpdated', 0),
(2, 515, 1, 1, '2020-09-04 10:29:55', 1342177281, 'submission.event.fileUploaded', 0),
(3, 1048585, 1, 1, '2020-09-04 10:30:17', 1342177281, 'submission.event.fileUploaded', 0),
(4, 1048585, 1, 1, '2020-09-04 10:32:00', 268435458, 'submission.event.general.metadataUpdated', 0),
(5, 1048585, 1, 1, '2020-09-04 10:32:22', 268435457, 'submission.event.submissionSubmitted', 0),
(7, 515, 2, 1, '2020-09-04 10:39:40', 1342177281, 'submission.event.fileUploaded', 0),
(11, 1048585, 1, 1, '2020-09-04 10:51:48', 268435459, 'submission.event.participantAdded', 0),
(12, 1048585, 1, 1, '2020-09-04 10:52:58', 268435459, 'submission.event.participantAdded', 0),
(13, 1048585, 1, 1, '2020-09-04 10:54:01', 805306371, 'log.editor.decision', 0),
(14, 1048585, 1, 3, '2020-09-04 11:16:49', 805306371, 'log.editor.decision', 0),
(15, 1048585, 1, 3, '2020-09-04 11:18:18', 268435458, 'submission.event.general.metadataUpdated', 0),
(16, 1048585, 1, 3, '2020-09-04 11:18:39', 268435462, 'publication.event.published', 0),
(17, 1048585, 3, 1, '2020-09-04 11:21:08', 268435458, 'submission.event.general.metadataUpdated', 0),
(18, 515, 6, 1, '2020-09-04 11:21:47', 1342177281, 'submission.event.fileUploaded', 0),
(19, 1048585, 3, 1, '2020-09-04 11:22:00', 1342177281, 'submission.event.fileUploaded', 0),
(20, 515, 7, 1, '2020-09-04 11:23:22', 1342177281, 'submission.event.fileUploaded', 0),
(21, 1048585, 3, 1, '2020-09-04 11:23:32', 1342177281, 'submission.event.fileUploaded', 0),
(22, 1048585, 3, 1, '2020-09-04 11:25:03', 268435458, 'submission.event.general.metadataUpdated', 0),
(23, 515, 6, 1, '2020-09-04 11:25:24', 1342177282, 'submission.event.fileDeleted', 0),
(24, 1048585, 3, 1, '2020-09-04 11:25:25', 1342177283, 'submission.event.lastRevisionDeleted', 0),
(25, 1048585, 3, 1, '2020-09-04 11:25:39', 268435457, 'submission.event.submissionSubmitted', 0),
(26, 1048585, 3, 1, '2020-09-04 11:32:40', 268435459, 'submission.event.participantAdded', 0),
(27, 1048585, 3, 1, '2020-09-04 11:33:11', 805306371, 'log.editor.decision', 0),
(28, 1048585, 3, 1, '2020-09-04 11:33:35', 268435458, 'submission.event.general.metadataUpdated', 0),
(29, 1048585, 3, 1, '2020-09-04 11:33:54', 268435458, 'submission.event.general.metadataUpdated', 0),
(30, 1048585, 3, 1, '2020-09-04 11:34:07', 268435462, 'publication.event.published', 0),
(31, 1048585, 4, 1, '2020-09-04 11:42:01', 268435458, 'submission.event.general.metadataUpdated', 0),
(32, 515, 8, 1, '2020-09-04 11:42:19', 1342177281, 'submission.event.fileUploaded', 0),
(33, 1048585, 4, 1, '2020-09-04 11:42:26', 1342177281, 'submission.event.fileUploaded', 0),
(34, 1048585, 4, 1, '2020-09-04 11:43:52', 268435458, 'submission.event.general.metadataUpdated', 0),
(35, 1048585, 4, 1, '2020-09-04 11:44:06', 268435457, 'submission.event.submissionSubmitted', 0),
(36, 1048585, 4, 1, '2020-09-04 11:46:42', 268435459, 'submission.event.participantAdded', 0),
(37, 1048585, 4, 1, '2020-09-04 11:47:23', 805306371, 'log.editor.decision', 0),
(38, 1048585, 4, 1, '2020-09-04 11:47:59', 268435458, 'submission.event.general.metadataUpdated', 0),
(39, 1048585, 4, 1, '2020-09-04 11:49:12', 268435458, 'submission.event.general.metadataUpdated', 0),
(40, 1048585, 4, 1, '2020-09-04 11:50:05', 268435458, 'submission.event.general.metadataUpdated', 0),
(41, 1048585, 4, 1, '2020-09-04 11:50:17', 268435462, 'publication.event.published', 0),
(42, 1048585, 5, 1, '2020-09-04 11:53:39', 268435458, 'submission.event.general.metadataUpdated', 0),
(43, 515, 9, 1, '2020-09-04 11:54:01', 1342177281, 'submission.event.fileUploaded', 0),
(44, 1048585, 5, 1, '2020-09-04 11:54:20', 1342177281, 'submission.event.fileUploaded', 0),
(45, 1048585, 5, 1, '2020-09-04 11:55:15', 268435458, 'submission.event.general.metadataUpdated', 0),
(46, 1048585, 5, 1, '2020-09-04 11:55:30', 268435457, 'submission.event.submissionSubmitted', 0),
(47, 1048585, 5, 1, '2020-09-04 11:56:01', 268435459, 'submission.event.participantAdded', 0),
(48, 1048585, 5, 1, '2020-09-04 11:56:25', 805306371, 'log.editor.decision', 0),
(49, 1048585, 5, 1, '2020-09-04 11:57:07', 805306371, 'log.editor.decision', 0),
(50, 1048585, 5, 1, '2020-09-04 11:59:36', 268435458, 'submission.event.general.metadataUpdated', 0),
(51, 1048585, 5, 1, '2020-09-04 11:59:48', 268435462, 'publication.event.published', 0),
(52, 1048585, 6, 1, '2020-09-04 12:17:31', 268435458, 'submission.event.general.metadataUpdated', 0),
(53, 515, 11, 1, '2020-09-04 12:18:55', 1342177281, 'submission.event.fileUploaded', 0),
(54, 1048585, 6, 1, '2020-09-04 12:20:20', 1342177281, 'submission.event.fileUploaded', 0),
(55, 515, 12, 1, '2020-09-04 12:20:37', 1342177281, 'submission.event.fileUploaded', 0),
(56, 1048585, 6, 1, '2020-09-04 12:20:44', 1342177281, 'submission.event.fileUploaded', 0),
(57, 515, 13, 1, '2020-09-04 12:20:58', 1342177281, 'submission.event.fileUploaded', 0),
(58, 1048585, 6, 1, '2020-09-04 12:21:07', 1342177281, 'submission.event.fileUploaded', 0),
(59, 515, 14, 1, '2020-09-04 12:21:19', 1342177281, 'submission.event.fileUploaded', 0),
(60, 1048585, 6, 1, '2020-09-04 12:21:26', 1342177281, 'submission.event.fileUploaded', 0),
(61, 515, 15, 1, '2020-09-04 12:21:37', 1342177281, 'submission.event.fileUploaded', 0),
(62, 1048585, 6, 1, '2020-09-04 12:21:46', 1342177281, 'submission.event.fileUploaded', 0),
(63, 515, 16, 1, '2020-09-04 12:21:57', 1342177281, 'submission.event.fileUploaded', 0),
(64, 1048585, 6, 1, '2020-09-04 12:22:03', 1342177281, 'submission.event.fileUploaded', 0),
(65, 1048585, 6, 1, '2020-09-04 12:22:48', 268435458, 'submission.event.general.metadataUpdated', 0),
(66, 1048585, 6, 1, '2020-09-04 12:23:58', 268435458, 'submission.event.general.metadataUpdated', 0),
(67, 1048585, 6, 1, '2020-09-04 12:24:15', 268435457, 'submission.event.submissionSubmitted', 0),
(68, 1048585, 6, 1, '2020-09-04 12:25:12', 805306371, 'log.editor.decision', 0),
(69, 1048585, 6, 1, '2020-09-04 12:25:34', 805306371, 'log.editor.decision', 0),
(70, 1048585, 6, 1, '2020-09-04 12:26:43', 268435458, 'submission.event.general.metadataUpdated', 0),
(71, 1048585, 6, 1, '2020-09-04 12:27:16', 268435458, 'submission.event.general.metadataUpdated', 0),
(72, 1048585, 6, 1, '2020-09-04 12:30:45', 268435459, 'submission.event.participantAdded', 0),
(73, 1048585, 6, 1, '2020-09-04 12:31:04', 268435462, 'publication.event.published', 0),
(74, 1048585, 7, 1, '2020-09-04 12:38:01', 268435458, 'submission.event.general.metadataUpdated', 0),
(75, 515, 17, 1, '2020-09-04 12:38:59', 1342177281, 'submission.event.fileUploaded', 0),
(76, 1048585, 7, 1, '2020-09-04 12:39:11', 1342177281, 'submission.event.fileUploaded', 0),
(77, 515, 18, 1, '2020-09-04 12:39:27', 1342177281, 'submission.event.fileUploaded', 0),
(78, 1048585, 7, 1, '2020-09-04 12:39:36', 1342177281, 'submission.event.fileUploaded', 0),
(79, 515, 19, 1, '2020-09-04 12:39:48', 1342177281, 'submission.event.fileUploaded', 0),
(80, 1048585, 7, 1, '2020-09-04 12:39:58', 1342177281, 'submission.event.fileUploaded', 0),
(81, 515, 20, 1, '2020-09-04 12:40:26', 1342177281, 'submission.event.fileUploaded', 0),
(82, 1048585, 7, 1, '2020-09-04 12:40:33', 1342177281, 'submission.event.fileUploaded', 0),
(83, 515, 21, 1, '2020-09-04 12:40:50', 1342177281, 'submission.event.fileUploaded', 0),
(84, 1048585, 7, 1, '2020-09-04 12:40:57', 1342177281, 'submission.event.fileUploaded', 0),
(85, 515, 22, 1, '2020-09-04 12:41:09', 1342177281, 'submission.event.fileUploaded', 0),
(86, 1048585, 7, 1, '2020-09-04 12:41:17', 1342177281, 'submission.event.fileUploaded', 0),
(87, 515, 23, 1, '2020-09-04 12:41:28', 1342177281, 'submission.event.fileUploaded', 0),
(88, 1048585, 7, 1, '2020-09-04 12:41:34', 1342177281, 'submission.event.fileUploaded', 0),
(89, 515, 24, 1, '2020-09-04 12:41:58', 1342177281, 'submission.event.fileUploaded', 0),
(90, 515, 24, 1, '2020-09-04 12:42:13', 1342177282, 'submission.event.fileDeleted', 0),
(91, 1048585, 7, 1, '2020-09-04 12:42:14', 1342177283, 'submission.event.lastRevisionDeleted', 0),
(92, 515, 25, 1, '2020-09-04 12:42:48', 1342177281, 'submission.event.fileUploaded', 0),
(93, 1048585, 7, 1, '2020-09-04 12:43:07', 1342177281, 'submission.event.fileUploaded', 0),
(94, 515, 26, 1, '2020-09-04 12:43:20', 1342177281, 'submission.event.fileUploaded', 0),
(95, 1048585, 7, 1, '2020-09-04 12:43:30', 1342177288, 'submission.event.fileRevised', 0),
(96, 1048585, 7, 1, '2020-09-04 12:44:31', 268435458, 'submission.event.general.metadataUpdated', 0),
(97, 1048585, 7, 1, '2020-09-04 12:44:44', 268435457, 'submission.event.submissionSubmitted', 0),
(98, 1048585, 7, 1, '2020-09-04 12:45:26', 268435459, 'submission.event.participantAdded', 0),
(99, 1048585, 7, 1, '2020-09-04 12:45:46', 268435458, 'submission.event.general.metadataUpdated', 0),
(100, 1048585, 7, 1, '2020-09-04 12:50:34', 268435458, 'submission.event.general.metadataUpdated', 0),
(101, 1048585, 7, 1, '2020-09-04 12:51:37', 268435458, 'submission.event.general.metadataUpdated', 0),
(102, 1048585, 7, 1, '2020-09-04 12:52:52', 805306371, 'log.editor.decision', 0),
(103, 1048585, 7, 1, '2020-09-04 12:53:20', 268435462, 'publication.event.published', 0),
(104, 1048585, 8, 1, '2020-09-04 12:59:08', 268435458, 'submission.event.general.metadataUpdated', 0),
(105, 515, 27, 1, '2020-09-04 12:59:38', 1342177281, 'submission.event.fileUploaded', 0),
(106, 1048585, 8, 1, '2020-09-04 12:59:47', 1342177281, 'submission.event.fileUploaded', 0),
(107, 1048585, 8, 1, '2020-09-04 13:00:28', 268435458, 'submission.event.general.metadataUpdated', 0),
(108, 1048585, 8, 1, '2020-09-04 13:00:44', 268435457, 'submission.event.submissionSubmitted', 0),
(109, 1048585, 8, 1, '2020-09-04 13:01:26', 805306371, 'log.editor.decision', 0),
(110, 1048585, 8, 1, '2020-09-04 13:01:53', 268435458, 'submission.event.general.metadataUpdated', 0),
(111, 1048585, 8, 1, '2020-09-04 13:03:11', 268435458, 'submission.event.general.metadataUpdated', 0),
(112, 1048585, 8, 1, '2020-09-04 13:03:34', 268435458, 'submission.event.general.metadataUpdated', 0),
(113, 1048585, 8, 1, '2020-09-04 13:04:52', 268435459, 'submission.event.participantAdded', 0),
(114, 1048585, 8, 1, '2020-09-04 13:05:12', 268435462, 'publication.event.published', 0),
(115, 1048585, 9, 1, '2020-09-04 13:07:15', 268435458, 'submission.event.general.metadataUpdated', 0),
(116, 515, 28, 1, '2020-09-04 13:07:34', 1342177281, 'submission.event.fileUploaded', 0),
(117, 1048585, 9, 1, '2020-09-04 13:07:43', 1342177281, 'submission.event.fileUploaded', 0),
(118, 1048585, 9, 1, '2020-09-04 13:08:33', 268435458, 'submission.event.general.metadataUpdated', 0),
(119, 1048585, 9, 1, '2020-09-04 13:08:48', 268435457, 'submission.event.submissionSubmitted', 0),
(120, 1048585, 9, 1, '2020-09-04 13:09:42', 805306371, 'log.editor.decision', 0),
(121, 1048585, 9, 1, '2020-09-04 13:10:18', 268435458, 'submission.event.general.metadataUpdated', 0),
(122, 1048585, 9, 1, '2020-09-04 13:11:05', 268435459, 'submission.event.participantAdded', 0),
(123, 1048585, 9, 1, '2020-09-04 13:11:23', 268435462, 'publication.event.published', 0);

-- --------------------------------------------------------

--
-- Table structure for table `event_log_settings`
--

CREATE TABLE `event_log_settings` (
  `log_id` bigint(20) NOT NULL,
  `setting_name` varchar(255) NOT NULL,
  `setting_value` text DEFAULT NULL,
  `setting_type` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `event_log_settings`
--

INSERT INTO `event_log_settings` (`log_id`, `setting_name`, `setting_value`, `setting_type`) VALUES
(2, 'fileId', '1', 'int'),
(2, 'fileRevision', '1', 'int'),
(2, 'fileStage', '2', 'int'),
(2, 'originalFileName', 'petkom-poslije-ribe.pdf', 'string'),
(2, 'revisedFileId', NULL, 'string'),
(2, 'submissionId', '1', 'int'),
(2, 'username', 'omp', 'string'),
(3, 'fileId', '1', 'int'),
(3, 'fileRevision', '1', 'int'),
(3, 'fileStage', '2', 'int'),
(3, 'name', 'omp, petkom-poslije-ribe.pdf', 'string'),
(3, 'originalFileName', 'petkom-poslije-ribe.pdf', 'string'),
(3, 'submissionId', '1', 'int'),
(3, 'username', 'omp', 'string'),
(7, 'fileId', '2', 'int'),
(7, 'fileRevision', '1', 'int'),
(7, 'fileStage', '2', 'int'),
(7, 'originalFileName', 'carobnjaci.pdf', 'string'),
(7, 'revisedFileId', NULL, 'string'),
(7, 'submissionId', '2', 'int'),
(7, 'username', 'omp', 'string'),
(11, 'name', 'Ana Ružolčić', 'string'),
(11, 'userGroupName', 'Press editor', 'string'),
(11, 'username', 'omp2', 'string'),
(12, 'name', 'omp omp', 'string'),
(12, 'userGroupName', 'Press editor', 'string'),
(12, 'username', 'omp', 'string'),
(13, 'decision', 'Accept and Skip Review', 'string'),
(13, 'editorName', 'omp omp', 'string'),
(13, 'submissionId', '1', 'int'),
(14, 'decision', 'Send To Production', 'string'),
(14, 'editorName', 'Ana Ružolčić', 'string'),
(14, 'submissionId', '1', 'int'),
(18, 'fileId', '6', 'int'),
(18, 'fileRevision', '1', 'int'),
(18, 'fileStage', '2', 'int'),
(18, 'originalFileName', 'katarza.pdf', 'string'),
(18, 'revisedFileId', NULL, 'string'),
(18, 'submissionId', '3', 'int'),
(18, 'username', 'omp', 'string'),
(19, 'fileId', '6', 'int'),
(19, 'fileRevision', '1', 'int'),
(19, 'fileStage', '2', 'int'),
(19, 'name', 'omp, katarza.pdf', 'string'),
(19, 'originalFileName', 'katarza.pdf', 'string'),
(19, 'submissionId', '3', 'int'),
(19, 'username', 'omp', 'string'),
(20, 'fileId', '7', 'int'),
(20, 'fileRevision', '1', 'int'),
(20, 'fileStage', '2', 'int'),
(20, 'originalFileName', 'otok-doktora-moreaua.pdf', 'string'),
(20, 'revisedFileId', NULL, 'string'),
(20, 'submissionId', '3', 'int'),
(20, 'username', 'omp', 'string'),
(21, 'fileId', '7', 'int'),
(21, 'fileRevision', '1', 'int'),
(21, 'fileStage', '2', 'int'),
(21, 'name', 'omp, otok-doktora-moreaua.pdf', 'string'),
(21, 'originalFileName', 'otok-doktora-moreaua.pdf', 'string'),
(21, 'submissionId', '3', 'int'),
(21, 'username', 'omp', 'string'),
(23, 'fileId', '6', 'int'),
(23, 'fileRevision', '1', 'int'),
(23, 'fileStage', '2', 'int'),
(23, 'originalFileName', 'katarza.pdf', 'string'),
(23, 'sourceFileId', NULL, 'string'),
(23, 'submissionId', '3', 'int'),
(23, 'username', 'omp', 'string'),
(24, 'submissionId', '3', 'int'),
(24, 'title', 'katarza.pdf', 'string'),
(24, 'username', 'omp', 'string'),
(26, 'name', 'omp omp', 'string'),
(26, 'userGroupName', 'Press editor', 'string'),
(26, 'username', 'omp', 'string'),
(27, 'decision', 'Send To Production', 'string'),
(27, 'editorName', 'omp omp', 'string'),
(27, 'submissionId', '3', 'int'),
(32, 'fileId', '8', 'int'),
(32, 'fileRevision', '1', 'int'),
(32, 'fileStage', '2', 'int'),
(32, 'originalFileName', 'etika-kruha-i-konja.pdf', 'string'),
(32, 'revisedFileId', NULL, 'string'),
(32, 'submissionId', '4', 'int'),
(32, 'username', 'omp', 'string'),
(33, 'fileId', '8', 'int'),
(33, 'fileRevision', '1', 'int'),
(33, 'fileStage', '2', 'int'),
(33, 'name', 'omp, etika-kruha-i-konja.pdf', 'string'),
(33, 'originalFileName', 'etika-kruha-i-konja.pdf', 'string'),
(33, 'submissionId', '4', 'int'),
(33, 'username', 'omp', 'string'),
(36, 'name', 'omp omp', 'string'),
(36, 'userGroupName', 'Press editor', 'string'),
(36, 'username', 'omp', 'string'),
(37, 'decision', 'Send To Production', 'string'),
(37, 'editorName', 'omp omp', 'string'),
(37, 'submissionId', '4', 'int'),
(43, 'fileId', '9', 'int'),
(43, 'fileRevision', '1', 'int'),
(43, 'fileStage', '2', 'int'),
(43, 'originalFileName', 'zrak-ispod-mora.pdf', 'string'),
(43, 'revisedFileId', NULL, 'string'),
(43, 'submissionId', '5', 'int'),
(43, 'username', 'omp', 'string'),
(44, 'fileId', '9', 'int'),
(44, 'fileRevision', '1', 'int'),
(44, 'fileStage', '2', 'int'),
(44, 'name', 'omp, zrak-ispod-mora.pdf', 'string'),
(44, 'originalFileName', 'zrak-ispod-mora.pdf', 'string'),
(44, 'submissionId', '5', 'int'),
(44, 'username', 'omp', 'string'),
(47, 'name', 'omp omp', 'string'),
(47, 'userGroupName', 'Press editor', 'string'),
(47, 'username', 'omp', 'string'),
(48, 'decision', 'Send to External Review', 'string'),
(48, 'editorName', 'omp omp', 'string'),
(48, 'submissionId', '5', 'int'),
(49, 'decision', 'Accept Submission', 'string'),
(49, 'editorName', 'omp omp', 'string'),
(49, 'submissionId', '5', 'int'),
(53, 'fileId', '11', 'int'),
(53, 'fileRevision', '1', 'int'),
(53, 'fileStage', '2', 'int'),
(53, 'originalFileName', '1_Jezikoslovlje_21_2_103_Kolakovic_Par_nepar_aspektni_par.pdf', 'string'),
(53, 'revisedFileId', NULL, 'string'),
(53, 'submissionId', '6', 'int'),
(53, 'username', 'omp', 'string'),
(54, 'fileId', '11', 'int'),
(54, 'fileRevision', '1', 'int'),
(54, 'fileStage', '2', 'int'),
(54, 'name', 'omp, 1_Jezikoslovlje_21_2_103_Kolakovic_Par_nepar_aspektni_par.pdf', 'string'),
(54, 'originalFileName', '1_Jezikoslovlje_21_2_103_Kolakovic_Par_nepar_aspektni_par.pdf', 'string'),
(54, 'submissionId', '6', 'int'),
(54, 'username', 'omp', 'string'),
(55, 'fileId', '12', 'int'),
(55, 'fileRevision', '1', 'int'),
(55, 'fileStage', '2', 'int'),
(55, 'originalFileName', '2_Jezikoslovlje_21_2_149_Stanojevic_Metafora_na_razmedju.pdf', 'string'),
(55, 'revisedFileId', NULL, 'string'),
(55, 'submissionId', '6', 'int'),
(55, 'username', 'omp', 'string'),
(56, 'fileId', '12', 'int'),
(56, 'fileRevision', '1', 'int'),
(56, 'fileStage', '2', 'int'),
(56, 'name', 'omp, 2_Jezikoslovlje_21_2_149_Stanojevic_Metafora_na_razmedju.pdf', 'string'),
(56, 'originalFileName', '2_Jezikoslovlje_21_2_149_Stanojevic_Metafora_na_razmedju.pdf', 'string'),
(56, 'submissionId', '6', 'int'),
(56, 'username', 'omp', 'string'),
(57, 'fileId', '13', 'int'),
(57, 'fileRevision', '1', 'int'),
(57, 'fileStage', '2', 'int'),
(57, 'originalFileName', '3_Jezikoslovlje_21_2_179_Parizoska_i_Omazic_Sheme_dinamike_sile_i_promjenjivost_glagolskih_frazema.pdf', 'string'),
(57, 'revisedFileId', NULL, 'string'),
(57, 'submissionId', '6', 'int'),
(57, 'username', 'omp', 'string'),
(58, 'fileId', '13', 'int'),
(58, 'fileRevision', '1', 'int'),
(58, 'fileStage', '2', 'int'),
(58, 'name', 'omp, 3_Jezikoslovlje_21_2_179_Parizoska_i_Omazic_Sheme_dinamike_sile_i_promjenjivost_glagolskih_frazema.pdf', 'string'),
(58, 'originalFileName', '3_Jezikoslovlje_21_2_179_Parizoska_i_Omazic_Sheme_dinamike_sile_i_promjenjivost_glagolskih_frazema.pdf', 'string'),
(58, 'submissionId', '6', 'int'),
(58, 'username', 'omp', 'string'),
(59, 'fileId', '14', 'int'),
(59, 'fileRevision', '1', 'int'),
(59, 'fileStage', '2', 'int'),
(59, 'originalFileName', '4_Jezikoslovlje_21_2_207_Ljubas_Utjecaj_vi_ejezi_nosti_vrednovatelja_na_ljudsku_procjenu_kvalitete_strojnih_prijevoda.pdf', 'string'),
(59, 'revisedFileId', NULL, 'string'),
(59, 'submissionId', '6', 'int'),
(59, 'username', 'omp', 'string'),
(60, 'fileId', '14', 'int'),
(60, 'fileRevision', '1', 'int'),
(60, 'fileStage', '2', 'int'),
(60, 'name', 'omp, 4_Jezikoslovlje_21_2_207_Ljubas_Utjecaj_vi_ejezi_nosti_vrednovatelja_na_ljudsku_procjenu_kvalitete_strojnih_prijevoda.pdf', 'string'),
(60, 'originalFileName', '4_Jezikoslovlje_21_2_207_Ljubas_Utjecaj_vi_ejezi_nosti_vrednovatelja_na_ljudsku_procjenu_kvalitete_strojnih_prijevoda.pdf', 'string'),
(60, 'submissionId', '6', 'int'),
(60, 'username', 'omp', 'string'),
(61, 'fileId', '15', 'int'),
(61, 'fileRevision', '1', 'int'),
(61, 'fileStage', '2', 'int'),
(61, 'originalFileName', '5_Jezikoslovlje_21_2_237_Brdar_Review_Bierwiaczonek_Metonymy_Language_Thought_and_Brain.pdf', 'string'),
(61, 'revisedFileId', NULL, 'string'),
(61, 'submissionId', '6', 'int'),
(61, 'username', 'omp', 'string'),
(62, 'fileId', '15', 'int'),
(62, 'fileRevision', '1', 'int'),
(62, 'fileStage', '2', 'int'),
(62, 'name', 'omp, 5_Jezikoslovlje_21_2_237_Brdar_Review_Bierwiaczonek_Metonymy_Language_Thought_and_Brain.pdf', 'string'),
(62, 'originalFileName', '5_Jezikoslovlje_21_2_237_Brdar_Review_Bierwiaczonek_Metonymy_Language_Thought_and_Brain.pdf', 'string'),
(62, 'submissionId', '6', 'int'),
(62, 'username', 'omp', 'string'),
(63, 'fileId', '16', 'int'),
(63, 'fileRevision', '1', 'int'),
(63, 'fileStage', '2', 'int'),
(63, 'originalFileName', '6_Jezikoslovlje_21_2_249_Brdar_Review_Raffaelli_Lexicalization_Patterns_in_Color_Naming_A_CrossLinguistic_Perspective.pdf', 'string'),
(63, 'revisedFileId', NULL, 'string'),
(63, 'submissionId', '6', 'int'),
(63, 'username', 'omp', 'string'),
(64, 'fileId', '16', 'int'),
(64, 'fileRevision', '1', 'int'),
(64, 'fileStage', '2', 'int'),
(64, 'name', 'omp, 6_Jezikoslovlje_21_2_249_Brdar_Review_Raffaelli_Lexicalization_Patterns_in_Color_Naming_A_CrossLinguistic_Perspective.pdf', 'string'),
(64, 'originalFileName', '6_Jezikoslovlje_21_2_249_Brdar_Review_Raffaelli_Lexicalization_Patterns_in_Color_Naming_A_CrossLinguistic_Perspective.pdf', 'string'),
(64, 'submissionId', '6', 'int'),
(64, 'username', 'omp', 'string'),
(68, 'decision', 'Send To Production', 'string'),
(68, 'editorName', 'omp omp', 'string'),
(68, 'submissionId', '6', 'int'),
(69, 'decision', 'Send To Production', 'string'),
(69, 'editorName', 'omp omp', 'string'),
(69, 'submissionId', '6', 'int'),
(72, 'name', 'omp omp', 'string'),
(72, 'userGroupName', 'Press editor', 'string'),
(72, 'username', 'omp', 'string'),
(75, 'fileId', '17', 'int'),
(75, 'fileRevision', '1', 'int'),
(75, 'fileStage', '2', 'int'),
(75, 'originalFileName', 'libros-1.pdf', 'string'),
(75, 'revisedFileId', NULL, 'string'),
(75, 'submissionId', '7', 'int'),
(75, 'username', 'omp', 'string'),
(76, 'fileId', '17', 'int'),
(76, 'fileRevision', '1', 'int'),
(76, 'fileStage', '2', 'int'),
(76, 'name', 'omp, libros-1.pdf', 'string'),
(76, 'originalFileName', 'libros-1.pdf', 'string'),
(76, 'submissionId', '7', 'int'),
(76, 'username', 'omp', 'string'),
(77, 'fileId', '18', 'int'),
(77, 'fileRevision', '1', 'int'),
(77, 'fileStage', '2', 'int'),
(77, 'originalFileName', 'libros-2.pdf', 'string'),
(77, 'revisedFileId', NULL, 'string'),
(77, 'submissionId', '7', 'int'),
(77, 'username', 'omp', 'string'),
(78, 'fileId', '18', 'int'),
(78, 'fileRevision', '1', 'int'),
(78, 'fileStage', '2', 'int'),
(78, 'name', 'omp, libros-2.pdf', 'string'),
(78, 'originalFileName', 'libros-2.pdf', 'string'),
(78, 'submissionId', '7', 'int'),
(78, 'username', 'omp', 'string'),
(79, 'fileId', '19', 'int'),
(79, 'fileRevision', '1', 'int'),
(79, 'fileStage', '2', 'int'),
(79, 'originalFileName', 'libros-3.pdf', 'string'),
(79, 'revisedFileId', NULL, 'string'),
(79, 'submissionId', '7', 'int'),
(79, 'username', 'omp', 'string'),
(80, 'fileId', '19', 'int'),
(80, 'fileRevision', '1', 'int'),
(80, 'fileStage', '2', 'int'),
(80, 'name', 'omp, libros-3.pdf', 'string'),
(80, 'originalFileName', 'libros-3.pdf', 'string'),
(80, 'submissionId', '7', 'int'),
(80, 'username', 'omp', 'string'),
(81, 'fileId', '20', 'int'),
(81, 'fileRevision', '1', 'int'),
(81, 'fileStage', '2', 'int'),
(81, 'originalFileName', 'libros-4.pdf', 'string'),
(81, 'revisedFileId', NULL, 'string'),
(81, 'submissionId', '7', 'int'),
(81, 'username', 'omp', 'string'),
(82, 'fileId', '20', 'int'),
(82, 'fileRevision', '1', 'int'),
(82, 'fileStage', '2', 'int'),
(82, 'name', 'omp, libros-4.pdf', 'string'),
(82, 'originalFileName', 'libros-4.pdf', 'string'),
(82, 'submissionId', '7', 'int'),
(82, 'username', 'omp', 'string'),
(83, 'fileId', '21', 'int'),
(83, 'fileRevision', '1', 'int'),
(83, 'fileStage', '2', 'int'),
(83, 'originalFileName', 'libros-5.pdf', 'string'),
(83, 'revisedFileId', NULL, 'string'),
(83, 'submissionId', '7', 'int'),
(83, 'username', 'omp', 'string'),
(84, 'fileId', '21', 'int'),
(84, 'fileRevision', '1', 'int'),
(84, 'fileStage', '2', 'int'),
(84, 'name', 'omp, libros-5.pdf', 'string'),
(84, 'originalFileName', 'libros-5.pdf', 'string'),
(84, 'submissionId', '7', 'int'),
(84, 'username', 'omp', 'string'),
(85, 'fileId', '22', 'int'),
(85, 'fileRevision', '1', 'int'),
(85, 'fileStage', '2', 'int'),
(85, 'originalFileName', 'libros-6.pdf', 'string'),
(85, 'revisedFileId', NULL, 'string'),
(85, 'submissionId', '7', 'int'),
(85, 'username', 'omp', 'string'),
(86, 'fileId', '22', 'int'),
(86, 'fileRevision', '1', 'int'),
(86, 'fileStage', '2', 'int'),
(86, 'name', 'omp, libros-6.pdf', 'string'),
(86, 'originalFileName', 'libros-6.pdf', 'string'),
(86, 'submissionId', '7', 'int'),
(86, 'username', 'omp', 'string'),
(87, 'fileId', '23', 'int'),
(87, 'fileRevision', '1', 'int'),
(87, 'fileStage', '2', 'int'),
(87, 'originalFileName', 'libros-7.pdf', 'string'),
(87, 'revisedFileId', NULL, 'string'),
(87, 'submissionId', '7', 'int'),
(87, 'username', 'omp', 'string'),
(88, 'fileId', '23', 'int'),
(88, 'fileRevision', '1', 'int'),
(88, 'fileStage', '2', 'int'),
(88, 'name', 'omp, libros-7.pdf', 'string'),
(88, 'originalFileName', 'libros-7.pdf', 'string'),
(88, 'submissionId', '7', 'int'),
(88, 'username', 'omp', 'string'),
(89, 'fileId', '24', 'int'),
(89, 'fileRevision', '1', 'int'),
(89, 'fileStage', '2', 'int'),
(89, 'originalFileName', 'libros-br-8.pdf', 'string'),
(89, 'revisedFileId', NULL, 'string'),
(89, 'submissionId', '7', 'int'),
(89, 'username', 'omp', 'string'),
(90, 'fileId', '24', 'int'),
(90, 'fileRevision', '1', 'int'),
(90, 'fileStage', '2', 'int'),
(90, 'originalFileName', 'libros-br-8.pdf', 'string'),
(90, 'sourceFileId', NULL, 'string'),
(90, 'submissionId', '7', 'int'),
(90, 'username', 'omp', 'string'),
(91, 'submissionId', '7', 'int'),
(91, 'title', 'libros-br-8.pdf', 'string'),
(91, 'username', 'omp', 'string'),
(92, 'fileId', '25', 'int'),
(92, 'fileRevision', '1', 'int'),
(92, 'fileStage', '2', 'int'),
(92, 'originalFileName', 'libros-br-8.pdf', 'string'),
(92, 'revisedFileId', NULL, 'string'),
(92, 'submissionId', '7', 'int'),
(92, 'username', 'omp', 'string'),
(93, 'fileId', '25', 'int'),
(93, 'fileRevision', '1', 'int'),
(93, 'fileStage', '2', 'int'),
(93, 'name', 'omp, libros-br-8.pdf', 'string'),
(93, 'originalFileName', 'libros-br-8.pdf', 'string'),
(93, 'submissionId', '7', 'int'),
(93, 'username', 'omp', 'string'),
(94, 'fileId', '26', 'int'),
(94, 'fileRevision', '1', 'int'),
(94, 'fileStage', '2', 'int'),
(94, 'originalFileName', 'libros-br-9.pdf', 'string'),
(94, 'revisedFileId', NULL, 'string'),
(94, 'submissionId', '7', 'int'),
(94, 'username', 'omp', 'string'),
(95, 'fileId', '17', 'int'),
(95, 'fileRevision', '2', 'int'),
(95, 'fileStage', '2', 'int'),
(95, 'name', 'omp, libros-br-9.pdf', 'string'),
(95, 'originalFileName', 'libros-br-9.pdf', 'string'),
(95, 'submissionId', '7', 'int'),
(95, 'username', 'omp', 'string'),
(98, 'name', 'omp omp', 'string'),
(98, 'userGroupName', 'Press editor', 'string'),
(98, 'username', 'omp', 'string'),
(102, 'decision', 'Send To Production', 'string'),
(102, 'editorName', 'omp omp', 'string'),
(102, 'submissionId', '7', 'int'),
(105, 'fileId', '27', 'int'),
(105, 'fileRevision', '1', 'int'),
(105, 'fileStage', '2', 'int'),
(105, 'originalFileName', 'radanje-nacije.pdf', 'string'),
(105, 'revisedFileId', NULL, 'string'),
(105, 'submissionId', '8', 'int'),
(105, 'username', 'omp', 'string'),
(106, 'fileId', '27', 'int'),
(106, 'fileRevision', '1', 'int'),
(106, 'fileStage', '2', 'int'),
(106, 'name', 'omp, radanje-nacije.pdf', 'string'),
(106, 'originalFileName', 'radanje-nacije.pdf', 'string'),
(106, 'submissionId', '8', 'int'),
(106, 'username', 'omp', 'string'),
(109, 'decision', 'Send To Production', 'string'),
(109, 'editorName', 'omp omp', 'string'),
(109, 'submissionId', '8', 'int'),
(113, 'name', 'omp omp', 'string'),
(113, 'userGroupName', 'Press editor', 'string'),
(113, 'username', 'omp', 'string'),
(116, 'fileId', '28', 'int'),
(116, 'fileRevision', '1', 'int'),
(116, 'fileStage', '2', 'int'),
(116, 'originalFileName', 'snaga-utopije.pdf', 'string'),
(116, 'revisedFileId', NULL, 'string'),
(116, 'submissionId', '9', 'int'),
(116, 'username', 'omp', 'string'),
(117, 'fileId', '28', 'int'),
(117, 'fileRevision', '1', 'int'),
(117, 'fileStage', '2', 'int'),
(117, 'name', 'omp, snaga-utopije.pdf', 'string'),
(117, 'originalFileName', 'snaga-utopije.pdf', 'string'),
(117, 'submissionId', '9', 'int'),
(117, 'username', 'omp', 'string'),
(120, 'decision', 'Send To Production', 'string'),
(120, 'editorName', 'omp omp', 'string'),
(120, 'submissionId', '9', 'int'),
(122, 'name', 'omp omp', 'string'),
(122, 'userGroupName', 'Press editor', 'string'),
(122, 'username', 'omp', 'string');

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

CREATE TABLE `features` (
  `submission_id` bigint(20) NOT NULL,
  `assoc_type` bigint(20) NOT NULL,
  `assoc_id` bigint(20) NOT NULL,
  `seq` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `features`
--

INSERT INTO `features` (`submission_id`, `assoc_type`, `assoc_id`, `seq`) VALUES
(3, 512, 1, 3),
(4, 512, 1, 0),
(5, 512, 1, 6),
(6, 512, 1, 1),
(7, 512, 1, 2),
(8, 512, 1, 4),
(9, 512, 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `filters`
--

CREATE TABLE `filters` (
  `filter_id` bigint(20) NOT NULL,
  `filter_group_id` bigint(20) NOT NULL DEFAULT 0,
  `context_id` bigint(20) NOT NULL DEFAULT 0,
  `display_name` varchar(255) DEFAULT NULL,
  `class_name` varchar(255) DEFAULT NULL,
  `is_template` tinyint(4) NOT NULL DEFAULT 0,
  `parent_filter_id` bigint(20) NOT NULL DEFAULT 0,
  `seq` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `filters`
--

INSERT INTO `filters` (`filter_id`, `filter_group_id`, `context_id`, `display_name`, `class_name`, `is_template`, `parent_filter_id`, `seq`) VALUES
(1, 1, 0, 'Extract metadata from a(n) PublicationFormat', 'plugins.metadata.dc11.filter.Dc11SchemaPublicationFormatAdapter', 0, 0, 0),
(2, 2, 0, 'MODS 3.4', 'lib.pkp.plugins.metadata.mods34.filter.Mods34DescriptionXmlFilter', 0, 0, 0),
(3, 3, 0, 'Extract metadata from a(n) Monograph', 'plugins.metadata.mods34.filter.Mods34SchemaMonographAdapter', 0, 0, 0),
(4, 4, 0, 'Inject metadata into a(n) Monograph', 'plugins.metadata.mods34.filter.Mods34SchemaMonographAdapter', 0, 0, 0),
(5, 5, 0, 'Native XML submission export', 'plugins.importexport.native.filter.MonographNativeXmlFilter', 0, 0, 0),
(6, 6, 0, 'Native XML submission import', 'plugins.importexport.native.filter.NativeXmlMonographFilter', 0, 0, 0),
(7, 7, 0, 'Native XML author export', 'plugins.importexport.native.filter.AuthorNativeXmlFilter', 0, 0, 0),
(8, 8, 0, 'Native XML author import', 'plugins.importexport.native.filter.NativeXmlAuthorFilter', 0, 0, 0),
(9, 9, 0, 'Native XML representation export', 'plugins.importexport.native.filter.PublicationFormatNativeXmlFilter', 0, 0, 0),
(10, 10, 0, 'Native XML representation import', 'plugins.importexport.native.filter.NativeXmlPublicationFormatFilter', 0, 0, 0),
(11, 16, 0, 'Native XML submission file import', 'plugins.importexport.native.filter.NativeXmlMonographFileFilter', 0, 0, 0),
(12, 14, 0, 'Native XML submission file import', 'plugins.importexport.native.filter.NativeXmlArtworkFileFilter', 0, 0, 0),
(13, 15, 0, 'Native XML submission file import', 'plugins.importexport.native.filter.NativeXmlSupplementaryFileFilter', 0, 0, 0),
(14, 13, 0, 'Native XML submission file export', 'lib.pkp.plugins.importexport.native.filter.SubmissionFileNativeXmlFilter', 0, 0, 0),
(15, 11, 0, 'Native XML submission file export', 'plugins.importexport.native.filter.ArtworkFileNativeXmlFilter', 0, 0, 0),
(16, 12, 0, 'Native XML submission file export', 'plugins.importexport.native.filter.SupplementaryFileNativeXmlFilter', 0, 0, 0),
(17, 17, 0, 'ONIX 3.0 XML monograph export', 'plugins.importexport.onix30.filter.MonographONIX30XmlFilter', 0, 0, 0),
(18, 18, 0, 'Native XML Publication export', 'plugins.importexport.native.filter.PublicationNativeXmlFilter', 0, 0, 0),
(19, 19, 0, 'Native XML publication import', 'plugins.importexport.native.filter.NativeXmlPublicationFilter', 0, 0, 0),
(20, 20, 0, 'Native XML chapter export', 'plugins.importexport.native.filter.ChapterNativeXmlFilter', 0, 0, 0),
(21, 21, 0, 'Native XML Chapter import', 'plugins.importexport.native.filter.NativeXmlChapterFilter', 0, 0, 0),
(22, 22, 0, 'User XML user export', 'lib.pkp.plugins.importexport.users.filter.PKPUserUserXmlFilter', 0, 0, 0),
(23, 23, 0, 'User XML user import', 'lib.pkp.plugins.importexport.users.filter.UserXmlPKPUserFilter', 0, 0, 0),
(24, 24, 0, 'Native XML user group export', 'lib.pkp.plugins.importexport.users.filter.UserGroupNativeXmlFilter', 0, 0, 0),
(25, 25, 0, 'Native XML user group import', 'lib.pkp.plugins.importexport.users.filter.NativeXmlUserGroupFilter', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `filter_groups`
--

CREATE TABLE `filter_groups` (
  `filter_group_id` bigint(20) NOT NULL,
  `symbolic` varchar(255) DEFAULT NULL,
  `display_name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `input_type` varchar(255) DEFAULT NULL,
  `output_type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `filter_groups`
--

INSERT INTO `filter_groups` (`filter_group_id`, `symbolic`, `display_name`, `description`, `input_type`, `output_type`) VALUES
(1, 'publicationFormat=>dc11', 'plugins.metadata.dc11.publicationFormatAdapter.displayName', 'plugins.metadata.dc11.publicationFormatAdapter.description', 'class::classes.publicationFormat.PublicationFormat', 'metadata::plugins.metadata.dc11.schema.Dc11Schema(PUBLICATION_FORMAT)'),
(2, 'mods34=>mods34-xml', 'plugins.metadata.mods34.mods34XmlOutput.displayName', 'plugins.metadata.mods34.mods34XmlOutput.description', 'metadata::plugins.metadata.mods34.schema.Mods34Schema(*)', 'xml::schema(lib/pkp/plugins/metadata/mods34/filter/mods34.xsd)'),
(3, 'monograph=>mods34', 'plugins.metadata.mods34.monographAdapter.displayName', 'plugins.metadata.mods34.monographAdapter.description', 'class::classes.monograph.Monograph', 'metadata::plugins.metadata.mods34.schema.Mods34Schema(MONOGRAPH)'),
(4, 'mods34=>monograph', 'plugins.metadata.mods34.monographAdapter.displayName', 'plugins.metadata.mods34.monographAdapter.description', 'metadata::plugins.metadata.mods34.schema.Mods34Schema(MONOGRAPH)', 'class::classes.monograph.Monograph'),
(5, 'monograph=>native-xml', 'plugins.importexport.native.displayName', 'plugins.importexport.native.description', 'class::classes.submission.Submission[]', 'xml::schema(plugins/importexport/native/native.xsd)'),
(6, 'native-xml=>monograph', 'plugins.importexport.native.displayName', 'plugins.importexport.native.description', 'xml::schema(plugins/importexport/native/native.xsd)', 'class::classes.monograph.Monograph[]'),
(7, 'author=>native-xml', 'plugins.importexport.native.displayName', 'plugins.importexport.native.description', 'class::classes.monograph.Author[]', 'xml::schema(plugins/importexport/native/native.xsd)'),
(8, 'native-xml=>author', 'plugins.importexport.native.displayName', 'plugins.importexport.native.description', 'xml::schema(plugins/importexport/native/native.xsd)', 'class::classes.monograph.Author[]'),
(9, 'publication-format=>native-xml', 'plugins.importexport.native.displayName', 'plugins.importexport.native.description', 'class::classes.publicationFormat.PublicationFormat', 'xml::schema(plugins/importexport/native/native.xsd)'),
(10, 'native-xml=>PublicationFormat', 'plugins.importexport.native.displayName', 'plugins.importexport.native.description', 'xml::schema(plugins/importexport/native/native.xsd)', 'class::classes.publicationFormat.PublicationFormat[]'),
(11, 'SubmissionArtworkFile=>native-xml', 'plugins.importexport.native.displayName', 'plugins.importexport.native.description', 'class::lib.pkp.classes.submission.SubmissionArtworkFile', 'xml::schema(plugins/importexport/native/native.xsd)'),
(12, 'SupplementaryFile=>native-xml', 'plugins.importexport.native.displayName', 'plugins.importexport.native.description', 'class::lib.pkp.classes.submission.SupplementaryFile', 'xml::schema(plugins/importexport/native/native.xsd)'),
(13, 'SubmissionFile=>native-xml', 'plugins.importexport.native.displayName', 'plugins.importexport.native.description', 'class::lib.pkp.classes.submission.SubmissionFile', 'xml::schema(plugins/importexport/native/native.xsd)'),
(14, 'native-xml=>SubmissionArtworkFile', 'plugins.importexport.native.displayName', 'plugins.importexport.native.description', 'xml::schema(plugins/importexport/native/native.xsd)', 'class::lib.pkp.classes.submission.SubmissionArtworkFile'),
(15, 'native-xml=>SupplementaryFile', 'plugins.importexport.native.displayName', 'plugins.importexport.native.description', 'xml::schema(plugins/importexport/native/native.xsd)', 'class::lib.pkp.classes.submission.SupplementaryFile'),
(16, 'native-xml=>SubmissionFile', 'plugins.importexport.native.displayName', 'plugins.importexport.native.description', 'xml::schema(plugins/importexport/native/native.xsd)', 'class::lib.pkp.classes.submission.SubmissionFile'),
(17, 'monograph=>onix30-xml', 'plugins.importexport.onix30.displayName', 'plugins.importexport.onix30.description', 'class::classes.submission.Submission', 'xml::schema(plugins/importexport/native/ONIX_BookProduct_3.0_reference_notstrict.xsd)'),
(18, 'publication=>native-xml', 'plugins.importexport.native.displayName', 'plugins.importexport.native.description', 'class::classes.publication.Publication', 'xml::schema(plugins/importexport/native/native.xsd)'),
(19, 'native-xml=>Publication', 'plugins.importexport.native.displayName', 'plugins.importexport.native.description', 'xml::schema(plugins/importexport/native/native.xsd)', 'class::classes.publication.Publication'),
(20, 'chapter=>native-xml', 'plugins.importexport.native.displayName', 'plugins.importexport.native.description', 'class::classes.monograph.Chapter[]', 'xml::schema(plugins/importexport/native/native.xsd)'),
(21, 'native-xml=>chapter', 'plugins.importexport.native.displayName', 'plugins.importexport.native.description', 'xml::schema(plugins/importexport/native/native.xsd)', 'class::classes.monograph.Chapter'),
(22, 'user=>user-xml', 'plugins.importexport.users.displayName', 'plugins.importexport.users.description', 'class::lib.pkp.classes.user.User[]', 'xml::schema(lib/pkp/plugins/importexport/users/pkp-users.xsd)'),
(23, 'user-xml=>user', 'plugins.importexport.users.displayName', 'plugins.importexport.users.description', 'xml::schema(lib/pkp/plugins/importexport/users/pkp-users.xsd)', 'class::classes.users.User[]'),
(24, 'usergroup=>user-xml', 'plugins.importexport.users.displayName', 'plugins.importexport.users.description', 'class::lib.pkp.classes.security.UserGroup[]', 'xml::schema(lib/pkp/plugins/importexport/users/pkp-users.xsd)'),
(25, 'user-xml=>usergroup', 'plugins.importexport.native.displayName', 'plugins.importexport.native.description', 'xml::schema(lib/pkp/plugins/importexport/users/pkp-users.xsd)', 'class::lib.pkp.classes.security.UserGroup[]');

-- --------------------------------------------------------

--
-- Table structure for table `filter_settings`
--

CREATE TABLE `filter_settings` (
  `filter_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` text DEFAULT NULL,
  `setting_type` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `genre_id` bigint(20) NOT NULL,
  `context_id` bigint(20) NOT NULL,
  `seq` bigint(20) DEFAULT NULL,
  `enabled` tinyint(4) NOT NULL DEFAULT 1,
  `category` bigint(20) NOT NULL DEFAULT 1,
  `dependent` tinyint(4) NOT NULL DEFAULT 0,
  `supplementary` tinyint(4) DEFAULT 0,
  `entry_key` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`genre_id`, `context_id`, `seq`, `enabled`, `category`, `dependent`, `supplementary`, `entry_key`) VALUES
(1, 1, 0, 1, 1, 0, 1, 'APPENDIX'),
(2, 1, 1, 1, 1, 0, 1, 'BIBLIOGRAPHY'),
(3, 1, 2, 1, 1, 0, 0, 'MANUSCRIPT'),
(4, 1, 3, 1, 1, 0, 0, 'CHAPTER'),
(5, 1, 4, 1, 1, 0, 1, 'GLOSSARY'),
(6, 1, 5, 1, 1, 0, 1, 'INDEX'),
(7, 1, 6, 1, 1, 0, 1, 'PREFACE'),
(8, 1, 7, 1, 3, 0, 1, 'PROSPECTUS'),
(9, 1, 8, 1, 2, 0, 1, 'TABLE'),
(10, 1, 9, 1, 2, 0, 1, 'FIGURE'),
(11, 1, 10, 1, 2, 0, 1, 'PHOTO'),
(12, 1, 11, 1, 2, 0, 1, 'ILLUSTRATION'),
(13, 1, 15, 1, 3, 0, 1, 'OTHER'),
(14, 1, 13, 1, 2, 1, 0, 'IMAGE'),
(15, 1, 14, 1, 1, 1, 0, 'STYLE');

-- --------------------------------------------------------

--
-- Table structure for table `genre_settings`
--

CREATE TABLE `genre_settings` (
  `genre_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` text DEFAULT NULL,
  `setting_type` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `genre_settings`
--

INSERT INTO `genre_settings` (`genre_id`, `locale`, `setting_name`, `setting_value`, `setting_type`) VALUES
(1, 'en_US', 'name', 'Appendix', 'string'),
(2, 'en_US', 'name', 'Bibliography', 'string'),
(3, 'en_US', 'name', 'Book Manuscript', 'string'),
(4, 'en_US', 'name', 'Chapter Manuscript', 'string'),
(5, 'en_US', 'name', 'Glossary', 'string'),
(6, 'en_US', 'name', 'Index', 'string'),
(7, 'en_US', 'name', 'Preface', 'string'),
(8, 'en_US', 'name', 'Prospectus', 'string'),
(9, 'en_US', 'name', 'Table', 'string'),
(10, 'en_US', 'name', 'Figure', 'string'),
(11, 'en_US', 'name', 'Photo', 'string'),
(12, 'en_US', 'name', 'Illustration', 'string'),
(13, 'en_US', 'name', 'Other', 'string'),
(14, 'en_US', 'name', 'Image', 'string'),
(15, 'en_US', 'name', 'HTML Stylesheet', 'string');

-- --------------------------------------------------------

--
-- Table structure for table `identification_codes`
--

CREATE TABLE `identification_codes` (
  `identification_code_id` bigint(20) NOT NULL,
  `publication_format_id` bigint(20) NOT NULL,
  `code` varchar(40) NOT NULL,
  `value` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `item_views`
--

CREATE TABLE `item_views` (
  `assoc_type` bigint(20) NOT NULL,
  `assoc_id` varchar(32) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `date_last_viewed` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `library_files`
--

CREATE TABLE `library_files` (
  `file_id` bigint(20) NOT NULL,
  `context_id` bigint(20) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `original_file_name` varchar(255) NOT NULL,
  `file_type` varchar(255) NOT NULL,
  `file_size` bigint(20) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `date_uploaded` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `submission_id` bigint(20) NOT NULL,
  `public_access` tinyint(4) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `library_file_settings`
--

CREATE TABLE `library_file_settings` (
  `file_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` text DEFAULT NULL,
  `setting_type` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `markets`
--

CREATE TABLE `markets` (
  `market_id` bigint(20) NOT NULL,
  `publication_format_id` bigint(20) NOT NULL,
  `countries_included` text DEFAULT NULL,
  `countries_excluded` text DEFAULT NULL,
  `regions_included` text DEFAULT NULL,
  `regions_excluded` text DEFAULT NULL,
  `market_date_role` varchar(40) NOT NULL,
  `market_date_format` varchar(40) NOT NULL,
  `market_date` varchar(255) NOT NULL,
  `price` varchar(255) DEFAULT NULL,
  `discount` varchar(255) DEFAULT NULL,
  `price_type_code` varchar(255) DEFAULT NULL,
  `currency_code` varchar(255) DEFAULT NULL,
  `tax_rate_code` varchar(255) DEFAULT NULL,
  `tax_type_code` varchar(255) DEFAULT NULL,
  `agent_id` bigint(20) DEFAULT NULL,
  `supplier_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `metadata_descriptions`
--

CREATE TABLE `metadata_descriptions` (
  `metadata_description_id` bigint(20) NOT NULL,
  `assoc_type` bigint(20) NOT NULL DEFAULT 0,
  `assoc_id` bigint(20) NOT NULL DEFAULT 0,
  `schema_namespace` varchar(255) NOT NULL,
  `schema_name` varchar(255) NOT NULL,
  `display_name` varchar(255) DEFAULT NULL,
  `seq` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `metadata_description_settings`
--

CREATE TABLE `metadata_description_settings` (
  `metadata_description_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` text DEFAULT NULL,
  `setting_type` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `metrics`
--

CREATE TABLE `metrics` (
  `load_id` varchar(255) NOT NULL,
  `context_id` bigint(20) NOT NULL,
  `pkp_section_id` bigint(20) DEFAULT NULL,
  `assoc_object_type` bigint(20) DEFAULT NULL,
  `assoc_object_id` bigint(20) DEFAULT NULL,
  `submission_id` bigint(20) DEFAULT NULL,
  `representation_id` bigint(20) DEFAULT NULL,
  `assoc_type` bigint(20) NOT NULL,
  `assoc_id` bigint(20) NOT NULL,
  `day` varchar(8) DEFAULT NULL,
  `month` varchar(6) DEFAULT NULL,
  `file_type` tinyint(4) DEFAULT NULL,
  `country_id` varchar(2) DEFAULT NULL,
  `region` varchar(2) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `metric_type` varchar(255) NOT NULL,
  `metric` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `metrics`
--

INSERT INTO `metrics` (`load_id`, `context_id`, `pkp_section_id`, `assoc_object_type`, `assoc_object_id`, `submission_id`, `representation_id`, `assoc_type`, `assoc_id`, `day`, `month`, `file_type`, `country_id`, `region`, `city`, `metric_type`, `metric`) VALUES
('usage_events_20200827.log', 1, NULL, NULL, NULL, NULL, NULL, 512, 1, '20200827', '202008', NULL, NULL, NULL, NULL, 'omp::counter', 2);

-- --------------------------------------------------------

--
-- Table structure for table `navigation_menus`
--

CREATE TABLE `navigation_menus` (
  `navigation_menu_id` bigint(20) NOT NULL,
  `context_id` bigint(20) NOT NULL,
  `area_name` varchar(255) DEFAULT '',
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `navigation_menus`
--

INSERT INTO `navigation_menus` (`navigation_menu_id`, `context_id`, `area_name`, `title`) VALUES
(1, 0, 'user', 'User Navigation Menu'),
(2, 1, 'user', 'User Navigation Menu'),
(3, 1, 'primary', 'Primary Navigation Menu');

-- --------------------------------------------------------

--
-- Table structure for table `navigation_menu_items`
--

CREATE TABLE `navigation_menu_items` (
  `navigation_menu_item_id` bigint(20) NOT NULL,
  `context_id` bigint(20) NOT NULL,
  `url` varchar(255) DEFAULT '',
  `path` varchar(255) DEFAULT '',
  `type` varchar(255) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `navigation_menu_items`
--

INSERT INTO `navigation_menu_items` (`navigation_menu_item_id`, `context_id`, `url`, `path`, `type`) VALUES
(1, 0, NULL, NULL, 'NMI_TYPE_USER_REGISTER'),
(2, 0, NULL, NULL, 'NMI_TYPE_USER_LOGIN'),
(3, 0, NULL, NULL, 'NMI_TYPE_USER_DASHBOARD'),
(4, 0, NULL, NULL, 'NMI_TYPE_USER_DASHBOARD'),
(5, 0, NULL, NULL, 'NMI_TYPE_USER_PROFILE'),
(6, 0, NULL, NULL, 'NMI_TYPE_ADMINISTRATION'),
(7, 0, NULL, NULL, 'NMI_TYPE_USER_LOGOUT'),
(8, 1, NULL, NULL, 'NMI_TYPE_USER_REGISTER'),
(9, 1, NULL, NULL, 'NMI_TYPE_USER_LOGIN'),
(10, 1, NULL, NULL, 'NMI_TYPE_USER_DASHBOARD'),
(11, 1, NULL, NULL, 'NMI_TYPE_USER_DASHBOARD'),
(12, 1, NULL, NULL, 'NMI_TYPE_USER_PROFILE'),
(13, 1, NULL, NULL, 'NMI_TYPE_ADMINISTRATION'),
(14, 1, NULL, NULL, 'NMI_TYPE_USER_LOGOUT'),
(15, 1, NULL, NULL, 'NMI_TYPE_CATALOG'),
(16, 1, NULL, NULL, 'NMI_TYPE_ANNOUNCEMENTS'),
(17, 1, NULL, NULL, 'NMI_TYPE_ABOUT'),
(18, 1, NULL, NULL, 'NMI_TYPE_ABOUT'),
(19, 1, NULL, NULL, 'NMI_TYPE_SUBMISSIONS'),
(20, 1, NULL, NULL, 'NMI_TYPE_EDITORIAL_TEAM'),
(21, 1, NULL, NULL, 'NMI_TYPE_PRIVACY'),
(22, 1, NULL, NULL, 'NMI_TYPE_CONTACT'),
(23, 1, NULL, NULL, 'NMI_TYPE_SEARCH');

-- --------------------------------------------------------

--
-- Table structure for table `navigation_menu_item_assignments`
--

CREATE TABLE `navigation_menu_item_assignments` (
  `navigation_menu_item_assignment_id` bigint(20) NOT NULL,
  `navigation_menu_id` bigint(20) NOT NULL,
  `navigation_menu_item_id` bigint(20) NOT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `seq` bigint(20) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `navigation_menu_item_assignments`
--

INSERT INTO `navigation_menu_item_assignments` (`navigation_menu_item_assignment_id`, `navigation_menu_id`, `navigation_menu_item_id`, `parent_id`, `seq`) VALUES
(1, 1, 1, 0, 0),
(2, 1, 2, 0, 1),
(3, 1, 3, 0, 2),
(4, 1, 4, 3, 0),
(5, 1, 5, 3, 1),
(6, 1, 6, 3, 2),
(7, 1, 7, 3, 3),
(8, 2, 8, 0, 0),
(9, 2, 9, 0, 1),
(10, 2, 10, 0, 2),
(11, 2, 11, 10, 0),
(12, 2, 12, 10, 1),
(13, 2, 13, 10, 2),
(14, 2, 14, 10, 3),
(15, 3, 15, 0, 0),
(16, 3, 16, 0, 1),
(17, 3, 17, 0, 2),
(18, 3, 18, 17, 0),
(19, 3, 19, 17, 1),
(20, 3, 20, 17, 2),
(21, 3, 21, 17, 3),
(22, 3, 22, 17, 4);

-- --------------------------------------------------------

--
-- Table structure for table `navigation_menu_item_assignment_settings`
--

CREATE TABLE `navigation_menu_item_assignment_settings` (
  `navigation_menu_item_assignment_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` text DEFAULT NULL,
  `setting_type` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `navigation_menu_item_settings`
--

CREATE TABLE `navigation_menu_item_settings` (
  `navigation_menu_item_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` longtext DEFAULT NULL,
  `setting_type` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `navigation_menu_item_settings`
--

INSERT INTO `navigation_menu_item_settings` (`navigation_menu_item_id`, `locale`, `setting_name`, `setting_value`, `setting_type`) VALUES
(1, '', 'titleLocaleKey', 'navigation.register', 'string'),
(2, '', 'titleLocaleKey', 'navigation.login', 'string'),
(3, '', 'titleLocaleKey', '{$loggedInUsername}', 'string'),
(4, '', 'titleLocaleKey', 'navigation.dashboard', 'string'),
(5, '', 'titleLocaleKey', 'common.viewProfile', 'string'),
(6, '', 'titleLocaleKey', 'navigation.admin', 'string'),
(7, '', 'titleLocaleKey', 'user.logOut', 'string'),
(8, '', 'titleLocaleKey', 'navigation.register', 'string'),
(9, '', 'titleLocaleKey', 'navigation.login', 'string'),
(10, '', 'titleLocaleKey', '{$loggedInUsername}', 'string'),
(11, '', 'titleLocaleKey', 'navigation.dashboard', 'string'),
(12, '', 'titleLocaleKey', 'common.viewProfile', 'string'),
(13, '', 'titleLocaleKey', 'navigation.admin', 'string'),
(14, '', 'titleLocaleKey', 'user.logOut', 'string'),
(15, '', 'titleLocaleKey', 'navigation.catalog', 'string'),
(16, '', 'titleLocaleKey', 'manager.announcements', 'string'),
(17, '', 'titleLocaleKey', 'navigation.about', 'string'),
(18, '', 'titleLocaleKey', 'about.aboutContext', 'string'),
(19, '', 'titleLocaleKey', 'about.submissions', 'string'),
(20, '', 'titleLocaleKey', 'about.editorialTeam', 'string'),
(21, '', 'titleLocaleKey', 'manager.setup.privacyStatement', 'string'),
(22, '', 'titleLocaleKey', 'about.contact', 'string'),
(23, '', 'titleLocaleKey', 'common.search', 'string');

-- --------------------------------------------------------

--
-- Table structure for table `new_releases`
--

CREATE TABLE `new_releases` (
  `submission_id` bigint(20) NOT NULL,
  `assoc_type` bigint(20) NOT NULL,
  `assoc_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `new_releases`
--

INSERT INTO `new_releases` (`submission_id`, `assoc_type`, `assoc_id`) VALUES
(3, 512, 1),
(4, 512, 1),
(5, 512, 1),
(6, 512, 1),
(7, 512, 1),
(8, 512, 1),
(9, 512, 1);

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `note_id` bigint(20) NOT NULL,
  `assoc_type` bigint(20) DEFAULT NULL,
  `assoc_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `contents` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notes`
--

INSERT INTO `notes` (`note_id`, `assoc_type`, `assoc_id`, `user_id`, `date_created`, `date_modified`, `title`, `contents`) VALUES
(2, 1048586, 2, 1, '2020-09-04 11:42:02', '2020-09-04 11:42:02', 'Cover Note to Editor', '<p>Poezijska djela.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `notification_id` bigint(20) NOT NULL,
  `context_id` bigint(20) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `level` bigint(20) NOT NULL,
  `type` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL,
  `date_read` datetime DEFAULT NULL,
  `assoc_type` bigint(20) DEFAULT NULL,
  `assoc_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`notification_id`, `context_id`, `user_id`, `level`, `type`, `date_created`, `date_read`, `assoc_type`, `assoc_id`) VALUES
(26, 1, 3, 2, 16777254, '2020-09-04 11:16:54', NULL, 1048585, 1),
(27, 1, 1, 2, 16777254, '2020-09-04 11:16:54', NULL, 1048585, 1),
(28, 1, 0, 2, 16777246, '2020-09-04 11:18:40', NULL, 1048585, 1),
(34, 1, 1, 2, 16777217, '2020-09-04 11:25:35', NULL, 1048585, 3),
(41, 1, 1, 2, 16777254, '2020-09-04 11:33:16', NULL, 1048585, 3),
(42, 1, 0, 2, 16777246, '2020-09-04 11:34:08', NULL, 1048585, 3),
(47, 1, 1, 2, 16777217, '2020-09-04 11:44:02', NULL, 1048585, 4),
(54, 1, 1, 2, 16777254, '2020-09-04 11:47:27', NULL, 1048585, 4),
(55, 1, 0, 2, 16777246, '2020-09-04 11:50:18', NULL, 1048585, 4),
(60, 1, 1, 2, 16777217, '2020-09-04 11:55:24', NULL, 1048585, 5),
(66, 1, 0, 2, 16777236, '2020-09-04 11:56:26', '2020-09-04 11:56:39', 523, 1),
(68, 1, 1, 2, 16777251, '2020-09-04 11:57:11', '2020-09-04 11:57:20', 1048585, 5),
(69, 1, 0, 2, 16777246, '2020-09-04 11:59:49', NULL, 1048585, 5),
(71, 1, 1, 2, 16777217, '2020-09-04 12:24:07', NULL, 1048585, 6),
(73, 1, 1, 2, 16777217, '2020-09-04 12:24:10', NULL, 1048585, 6),
(79, 1, 1, 2, 16777254, '2020-09-04 12:25:16', NULL, 1048585, 6),
(82, 1, 0, 2, 16777246, '2020-09-04 12:31:05', NULL, 1048585, 6),
(83, 1, 1, 2, 16777217, '2020-09-04 12:44:37', NULL, 1048585, 7),
(85, 1, 1, 2, 16777217, '2020-09-04 12:44:40', NULL, 1048585, 7),
(95, 1, 1, 2, 16777254, '2020-09-04 12:52:57', NULL, 1048585, 7),
(96, 1, 0, 2, 16777246, '2020-09-04 12:53:21', NULL, 1048585, 7),
(97, 1, 1, 2, 16777217, '2020-09-04 13:00:36', NULL, 1048585, 8),
(99, 1, 1, 2, 16777217, '2020-09-04 13:00:40', NULL, 1048585, 8),
(105, 1, 1, 2, 16777254, '2020-09-04 13:01:30', NULL, 1048585, 8),
(107, 1, 0, 2, 16777246, '2020-09-04 13:05:13', NULL, 1048585, 8),
(108, 1, 1, 2, 16777217, '2020-09-04 13:08:41', NULL, 1048585, 9),
(110, 1, 1, 2, 16777217, '2020-09-04 13:08:44', NULL, 1048585, 9),
(116, 1, 1, 2, 16777254, '2020-09-04 13:09:46', NULL, 1048585, 9),
(118, 1, 0, 2, 16777246, '2020-09-04 13:11:24', '2020-09-04 13:22:20', 1048585, 9);

-- --------------------------------------------------------

--
-- Table structure for table `notification_mail_list`
--

CREATE TABLE `notification_mail_list` (
  `notification_mail_list_id` bigint(20) NOT NULL,
  `email` varchar(90) NOT NULL,
  `confirmed` tinyint(4) NOT NULL DEFAULT 0,
  `token` varchar(40) NOT NULL,
  `context` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `notification_settings`
--

CREATE TABLE `notification_settings` (
  `notification_id` bigint(20) NOT NULL,
  `locale` varchar(14) DEFAULT NULL,
  `setting_name` varchar(64) NOT NULL,
  `setting_value` text DEFAULT NULL,
  `setting_type` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `notification_subscription_settings`
--

CREATE TABLE `notification_subscription_settings` (
  `setting_id` bigint(20) NOT NULL,
  `setting_name` varchar(64) NOT NULL,
  `setting_value` text DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  `context` bigint(20) NOT NULL,
  `setting_type` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `oai_resumption_tokens`
--

CREATE TABLE `oai_resumption_tokens` (
  `token` varchar(32) NOT NULL,
  `expire` bigint(20) NOT NULL,
  `record_offset` int(11) NOT NULL,
  `params` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `plugin_settings`
--

CREATE TABLE `plugin_settings` (
  `plugin_name` varchar(80) NOT NULL,
  `context_id` bigint(20) NOT NULL,
  `setting_name` varchar(80) NOT NULL,
  `setting_value` text DEFAULT NULL,
  `setting_type` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `plugin_settings`
--

INSERT INTO `plugin_settings` (`plugin_name`, `context_id`, `setting_name`, `setting_value`, `setting_type`) VALUES
('acronplugin', 0, 'crontab', 'a:9:{i:0;a:3:{s:9:\"className\";s:43:\"plugins.generic.usageStats.UsageStatsLoader\";s:9:\"frequency\";a:1:{s:4:\"hour\";i:24;}s:4:\"args\";a:1:{i:0;s:9:\"autoStage\";}}i:1;a:3:{s:9:\"className\";s:43:\"plugins.generic.usageStats.UsageStatsLoader\";s:9:\"frequency\";a:1:{s:4:\"hour\";i:24;}s:4:\"args\";a:1:{i:0;s:9:\"autoStage\";}}i:2;a:3:{s:9:\"className\";s:43:\"plugins.generic.usageStats.UsageStatsLoader\";s:9:\"frequency\";a:1:{s:4:\"hour\";i:24;}s:4:\"args\";a:1:{i:0;s:9:\"autoStage\";}}i:3;a:3:{s:9:\"className\";s:43:\"plugins.generic.usageStats.UsageStatsLoader\";s:9:\"frequency\";a:1:{s:4:\"hour\";i:24;}s:4:\"args\";a:1:{i:0;s:9:\"autoStage\";}}i:4;a:3:{s:9:\"className\";s:43:\"plugins.generic.usageStats.UsageStatsLoader\";s:9:\"frequency\";a:1:{s:4:\"hour\";i:24;}s:4:\"args\";a:1:{i:0;s:9:\"autoStage\";}}i:5;a:3:{s:9:\"className\";s:43:\"plugins.generic.usageStats.UsageStatsLoader\";s:9:\"frequency\";a:1:{s:4:\"hour\";i:24;}s:4:\"args\";a:1:{i:0;s:9:\"autoStage\";}}i:6;a:3:{s:9:\"className\";s:35:\"lib.pkp.classes.task.ReviewReminder\";s:9:\"frequency\";a:1:{s:4:\"hour\";i:24;}s:4:\"args\";a:0:{}}i:7;a:3:{s:9:\"className\";s:39:\"lib.pkp.classes.task.PublishSubmissions\";s:9:\"frequency\";a:1:{s:4:\"hour\";i:24;}s:4:\"args\";a:0:{}}i:8;a:3:{s:9:\"className\";s:37:\"lib.pkp.classes.task.StatisticsReport\";s:9:\"frequency\";a:1:{s:3:\"day\";s:1:\"1\";}s:4:\"args\";a:0:{}}}', 'object'),
('acronplugin', 0, 'enabled', '1', 'bool'),
('browseblockplugin', 1, 'browseCategories', '1', 'bool'),
('browseblockplugin', 1, 'browseNewReleases', '1', 'bool'),
('browseblockplugin', 1, 'browseSeries', '1', 'bool'),
('browseblockplugin', 1, 'context', '1', 'int'),
('browseblockplugin', 1, 'enabled', '1', 'bool'),
('browseblockplugin', 1, 'seq', '1', 'int'),
('customblockmanagerplugin', 1, 'enabled', '1', 'bool'),
('defaultthemeplugin', 0, 'enabled', '1', 'bool'),
('defaultthemeplugin', 1, 'baseColour', '#FFFFFF', 'string'),
('defaultthemeplugin', 1, 'enabled', '1', 'bool'),
('defaultthemeplugin', 1, 'typography', 'lora', 'string'),
('defaultthemeplugin', 1, 'useHomepageImageAsHeader', 'true', 'string'),
('developedbyblockplugin', 0, 'context', '1', 'int'),
('developedbyblockplugin', 0, 'enabled', '0', 'bool'),
('developedbyblockplugin', 0, 'seq', '0', 'int'),
('developedbyblockplugin', 1, 'context', '1', 'int'),
('developedbyblockplugin', 1, 'enabled', '0', 'bool'),
('developedbyblockplugin', 1, 'seq', '0', 'int'),
('dublincoremetaplugin', 1, 'enabled', '1', 'bool'),
('googlescholarplugin', 1, 'enabled', '1', 'bool'),
('htmlmonographfileplugin', 1, 'enabled', '1', 'bool'),
('informationblockplugin', 1, 'context', '1', 'int'),
('informationblockplugin', 1, 'enabled', '1', 'bool'),
('informationblockplugin', 1, 'seq', '7', 'int'),
('languagetoggleblockplugin', 0, 'context', '1', 'int'),
('languagetoggleblockplugin', 0, 'enabled', '1', 'bool'),
('languagetoggleblockplugin', 0, 'seq', '4', 'int'),
('languagetoggleblockplugin', 1, 'context', '1', 'int'),
('languagetoggleblockplugin', 1, 'enabled', '1', 'bool'),
('languagetoggleblockplugin', 1, 'seq', '4', 'int'),
('pdfjsviewerplugin', 1, 'enabled', '1', 'bool'),
('tinymceplugin', 0, 'enabled', '1', 'bool'),
('tinymceplugin', 1, 'enabled', '1', 'bool'),
('usageeventplugin', 0, 'enabled', '1', 'bool'),
('usageeventplugin', 0, 'uniqueSiteId', '5f47f4333b2b0', 'string'),
('usagestatsplugin', 0, 'accessLogFileParseRegex', '/^(?P<ip>\\S+) \\S+ \\S+ \\[(?P<date>.*?)\\] \"\\S+ (?P<url>\\S+).*?\" (?P<returnCode>\\S+) \\S+ \".*?\" \"(?P<userAgent>.*?)\"/', 'string'),
('usagestatsplugin', 0, 'chartType', 'bar', 'string'),
('usagestatsplugin', 0, 'createLogFiles', '1', 'bool'),
('usagestatsplugin', 0, 'datasetMaxCount', '4', 'string'),
('usagestatsplugin', 0, 'enabled', '1', 'bool'),
('usagestatsplugin', 0, 'optionalColumns', 'a:2:{i:0;s:4:\"city\";i:1;s:6:\"region\";}', 'object'),
('webfeedplugin', 1, 'displayItems', '1', 'bool'),
('webfeedplugin', 1, 'displayPage', 'homepage', 'string'),
('webfeedplugin', 1, 'enabled', '1', 'bool');

-- --------------------------------------------------------

--
-- Table structure for table `presses`
--

CREATE TABLE `presses` (
  `press_id` bigint(20) NOT NULL,
  `path` varchar(32) NOT NULL,
  `seq` double NOT NULL DEFAULT 0,
  `primary_locale` varchar(14) NOT NULL,
  `enabled` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `presses`
--

INSERT INTO `presses` (`press_id`, `path`, `seq`, `primary_locale`, `enabled`) VALUES
(1, 'ffos', 1, 'en_US', 1);

-- --------------------------------------------------------

--
-- Table structure for table `press_settings`
--

CREATE TABLE `press_settings` (
  `press_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` text DEFAULT NULL,
  `setting_type` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `press_settings`
--

INSERT INTO `press_settings` (`press_id`, `locale`, `setting_name`, `setting_value`, `setting_type`) VALUES
(1, '', 'agencies', '0', NULL),
(1, '', 'catalogSortOption', 'title-1', NULL),
(1, '', 'citations', '0', NULL),
(1, '', 'coverage', '0', NULL),
(1, '', 'coverThumbnailsMaxHeight', '100', NULL),
(1, '', 'coverThumbnailsMaxWidth', '106', NULL),
(1, '', 'defaultReviewMode', '2', NULL),
(1, '', 'disableUserReg', '0', NULL),
(1, '', 'disciplines', '0', NULL),
(1, '', 'displayFeaturedBooks', '1', NULL),
(1, '', 'displayInSpotlight', '1', NULL),
(1, '', 'displayNewReleases', '1', NULL),
(1, '', 'emailSignature', '<br/>\n________________________________________________________________________<br/>\n<a href=\"{$ldelim}$contextUrl{$rdelim}\">{$ldelim}$contextName{$rdelim}</a>', NULL),
(1, '', 'enableAnnouncements', '1', NULL),
(1, '', 'enablePublisherId', 'a:0:{}', NULL),
(1, '', 'itemsPerPage', '25', NULL),
(1, '', 'keywords', 'request', NULL),
(1, '', 'languages', '0', NULL),
(1, '', 'location', 'Osijek', NULL),
(1, '', 'numAnnouncementsHomepage', '6', NULL),
(1, '', 'numPageLinks', '10', NULL),
(1, '', 'numWeeksPerResponse', '4', NULL),
(1, '', 'numWeeksPerReview', '4', NULL),
(1, '', 'paymentPluginName', 'ManualPayment', NULL),
(1, '', 'publisher', 'Filozofski fakultet Osijek', NULL),
(1, '', 'restrictMonographAccess', '0', NULL),
(1, '', 'restrictSiteAccess', '0', NULL),
(1, '', 'rights', '0', NULL),
(1, '', 'sidebar', 'a:3:{i:0;s:18:\"WebFeedBlockPlugin\";i:1;s:17:\"browseblockplugin\";i:2;s:22:\"informationblockplugin\";}', NULL),
(1, '', 'source', '0', NULL),
(1, '', 'subjects', '0', NULL),
(1, '', 'supportedFormLocales', 'a:1:{i:0;s:5:\"en_US\";}', NULL),
(1, '', 'supportedLocales', 'a:1:{i:0;s:5:\"en_US\";}', NULL),
(1, '', 'supportedSubmissionLocales', 'a:1:{i:0;s:5:\"en_US\";}', NULL),
(1, '', 'themePluginPath', 'default', NULL),
(1, '', 'type', 'enable', NULL),
(1, 'en_US', 'acronym', 'FFOS', NULL),
(1, 'en_US', 'authorInformation', 'Interested in submitting to this press? We recommend that you review the <a href=\"http://localhost/omp/omp-3.2.1-1/index.php/ffos/about\">About the Press</a> page for the press\' section policies and <a href=\"http://localhost/omp/omp-3.2.1-1/index.php/ffos/about/submissions#authorGuidelines\">Author Guidelines</a>. Authors need to <a href=\"http://localhost/omp/omp-3.2.1-1/index.php/ffos/user/register\">register</a> with the press prior to submitting, or if already registered can simply <a href=\"http://localhost/omp/omp-3.2.1-1/index.php/index/login\">log in</a> and begin the 5 step process.', NULL),
(1, 'en_US', 'description', '<p>Open Monograph Press stranica Filozofskog fakulteta Osijek.</p>', NULL),
(1, 'en_US', 'favicon', 'a:6:{s:4:\"name\";s:8:\"logo.png\";s:10:\"uploadName\";s:17:\"favicon_en_US.png\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:12:\"dateUploaded\";s:19:\"2020-09-04 16:09:35\";s:7:\"altText\";s:4:\"ffos\";}', NULL),
(1, 'en_US', 'librarianInformation', 'We encourage research librarians to list this press among their library\'s electronic press holdings. As well, this open source publishing system is suitable for libraries to host for their faculty members to use with presses they are involved in editing (see <a href=\"http://pkp.sfu.ca/omp\">Open Monograph Press</a>).', NULL),
(1, 'en_US', 'name', 'Filozofski fakultet Osijek', NULL),
(1, 'en_US', 'openAccessPolicy', 'This press provides immediate open access to its content on the principle that making research freely available to the public supports a greater global exchange of knowledge.', NULL),
(1, 'en_US', 'pageFooter', '<p><img src=\"http://localhost/omp/omp-3.2.1-1/public/site/images/omp/logo-hr.png\" alt=\"\" width=\"1436\" height=\"295\" /></p>', NULL),
(1, 'en_US', 'pressThumbnail', 'a:6:{s:4:\"name\";s:11:\"preuzmi.jpg\";s:10:\"uploadName\";s:24:\"pressThumbnail_en_US.png\";s:5:\"width\";i:225;s:6:\"height\";i:225;s:12:\"dateUploaded\";s:19:\"2020-09-04 16:08:20\";s:7:\"altText\";s:4:\"ffos\";}', NULL),
(1, 'en_US', 'privacyStatement', '<p>The names and email addresses entered in this press site will be used exclusively for the stated purposes of this press and will not be made available for any other purpose or to any other party.</p>', NULL),
(1, 'en_US', 'readerInformation', 'We encourage readers to sign up for the publishing notification service for this press. Use the <a href=\"http://localhost/omp/omp-3.2.1-1/index.php/ffos/user/register\">Register</a> link at the top of the homepage for the press. This registration will result in the reader receiving the Table of Contents by email for each new monograph of the press. This list also allows the press to claim a certain level of support or readership. See the press <a href=\"http://localhost/omp/omp-3.2.1-1/index.php/ffos/about/submissions#privacyStatement\">Privacy Statement</a> which assures readers that their name and email address will not be used for other purposes.', NULL),
(1, 'en_US', 'submissionChecklist', 'a:5:{i:0;a:2:{s:5:\"order\";i:1;s:7:\"content\";s:163:\"The submission has not been previously published, nor is it before another press for consideration (or an explanation has been provided in Comments to the Editor).\";}i:1;a:2:{s:5:\"order\";i:2;s:7:\"content\";s:79:\"The submission file is in the Microsoft Word, RTF, or OpenDocument file format.\";}i:2;a:2:{s:5:\"order\";i:3;s:7:\"content\";s:60:\"Where available, URLs for the references have been provided.\";}i:3;a:2:{s:5:\"order\";i:4;s:7:\"content\";s:239:\"The text is single-spaced; uses a 12-point font; employs italics, rather than underlining (except with URL addresses); and all illustrations, figures, and tables are placed within the text at the appropriate points, rather than at the end.\";}i:4;a:2:{s:5:\"order\";i:5;s:7:\"content\";s:247:\"The text adheres to the stylistic and bibliographic requirements outlined in the <a href=\"http://localhost/omp/omp-3.2.1-1/index.php/ffos/about/submissions#authorGuidelines\" target=\"_blank\">Author Guidelines</a>, which is found in About the Press.\";}}', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `publications`
--

CREATE TABLE `publications` (
  `publication_id` bigint(20) NOT NULL,
  `date_published` date DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `locale` varchar(14) DEFAULT NULL,
  `primary_contact_id` bigint(20) DEFAULT NULL,
  `publication_date_type` varchar(32) DEFAULT 'pub',
  `publication_type` varchar(32) DEFAULT 'publication',
  `seq` double NOT NULL DEFAULT 0,
  `series_id` bigint(20) DEFAULT NULL,
  `series_position` varchar(255) DEFAULT NULL,
  `submission_id` bigint(20) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `url_path` varchar(64) DEFAULT NULL,
  `version` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `publications`
--

INSERT INTO `publications` (`publication_id`, `date_published`, `last_modified`, `locale`, `primary_contact_id`, `publication_date_type`, `publication_type`, `seq`, `series_id`, `series_position`, `submission_id`, `status`, `url_path`, `version`) VALUES
(1, '2020-09-04', '2020-09-04 11:18:37', 'en_US', 1, 'pub', 'publication', 0, NULL, NULL, 1, 3, NULL, 1),
(3, '2020-09-04', '2020-09-04 11:34:04', 'en_US', 3, 'pub', 'publication', 0, 0, NULL, 3, 3, NULL, 1),
(4, '2020-09-04', '2020-09-04 11:50:14', 'en_US', 4, 'pub', 'publication', 0, 0, NULL, 4, 3, NULL, 1),
(5, '2020-02-02', '2020-09-04 11:59:44', 'en_US', 5, 'pub', 'publication', 0, 0, NULL, 5, 3, NULL, 1),
(6, '2020-09-04', '2020-09-04 12:31:00', 'en_US', 6, 'pub', 'publication', 0, 1, NULL, 6, 3, NULL, 1),
(7, '2020-06-05', '2020-09-04 12:53:13', 'en_US', 7, 'pub', 'publication', 0, 2, NULL, 7, 3, NULL, 1),
(8, '2020-08-06', '2020-09-04 13:05:10', 'en_US', 8, 'pub', 'publication', 0, 0, NULL, 8, 3, NULL, 1),
(9, '2020-08-06', '2020-09-04 13:11:20', 'en_US', 9, 'pub', 'publication', 0, 0, NULL, 9, 3, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `publication_categories`
--

CREATE TABLE `publication_categories` (
  `publication_id` bigint(20) NOT NULL,
  `category_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `publication_categories`
--

INSERT INTO `publication_categories` (`publication_id`, `category_id`) VALUES
(1, 1),
(3, 1),
(4, 2),
(5, 2),
(6, 3),
(7, 3),
(8, 4),
(9, 4);

-- --------------------------------------------------------

--
-- Table structure for table `publication_dates`
--

CREATE TABLE `publication_dates` (
  `publication_date_id` bigint(20) NOT NULL,
  `publication_format_id` bigint(20) NOT NULL,
  `role` varchar(40) NOT NULL,
  `date_format` varchar(40) NOT NULL,
  `date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `publication_formats`
--

CREATE TABLE `publication_formats` (
  `publication_format_id` bigint(20) NOT NULL,
  `publication_id` bigint(20) NOT NULL,
  `submission_id` bigint(20) DEFAULT NULL,
  `physical_format` tinyint(4) DEFAULT 1,
  `entry_key` varchar(64) DEFAULT NULL,
  `seq` double NOT NULL DEFAULT 0,
  `file_size` varchar(255) DEFAULT NULL,
  `front_matter` varchar(255) DEFAULT NULL,
  `back_matter` varchar(255) DEFAULT NULL,
  `height` varchar(255) DEFAULT NULL,
  `height_unit_code` varchar(255) DEFAULT NULL,
  `width` varchar(255) DEFAULT NULL,
  `width_unit_code` varchar(255) DEFAULT NULL,
  `thickness` varchar(255) DEFAULT NULL,
  `thickness_unit_code` varchar(255) DEFAULT NULL,
  `weight` varchar(255) DEFAULT NULL,
  `weight_unit_code` varchar(255) DEFAULT NULL,
  `product_composition_code` varchar(255) DEFAULT NULL,
  `product_form_detail_code` varchar(255) DEFAULT NULL,
  `country_manufacture_code` varchar(255) DEFAULT NULL,
  `imprint` varchar(255) DEFAULT NULL,
  `product_availability_code` varchar(255) DEFAULT NULL,
  `technical_protection_code` varchar(255) DEFAULT NULL,
  `returnable_indicator_code` varchar(255) DEFAULT NULL,
  `remote_url` varchar(2047) DEFAULT NULL,
  `url_path` varchar(64) DEFAULT NULL,
  `is_approved` tinyint(4) NOT NULL DEFAULT 0,
  `is_available` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `publication_format_settings`
--

CREATE TABLE `publication_format_settings` (
  `publication_format_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` text DEFAULT NULL,
  `setting_type` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `publication_settings`
--

CREATE TABLE `publication_settings` (
  `publication_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `publication_settings`
--

INSERT INTO `publication_settings` (`publication_id`, `locale`, `setting_name`, `setting_value`) VALUES
(1, '', 'categoryIds', 'a:1:{i:0;i:1;}'),
(1, '', 'copyrightYear', '2020'),
(1, 'en_US', 'abstract', '<p>Prozna djela.</p>'),
(1, 'en_US', 'copyrightHolder', 'Filozofski fakultet Osijek'),
(1, 'en_US', 'title', 'Proza'),
(3, '', 'categoryIds', 'a:1:{i:0;i:1;}'),
(3, '', 'copyrightYear', '2020'),
(3, 'en_US', 'abstract', '<p>Roman H. G. Wellsa&nbsp;<em>Otok doktora Moreaua</em>&nbsp;objavljen je 1896. godine, izazvavši buru rasprava i kritika, kako znanstvenih tako i moralnih. Bilo je to vrijeme kad je područje genetike još bilo u povojima, a Darwinova teorija evolucije osuđivana kao „sotonska ideja koja je dokinula Boga“. Wells koji je i sam bio biolog i pristaša Darwinovih ideja nazivan je „bezbožnikom“, „vražjim pomoćnikom“, te još mnogim pogrdnim imenima, iako je bilo jasno da radnja romana može biti samo plod mašte.</p>'),
(3, 'en_US', 'copyrightHolder', 'Filozofski fakultet Osijek'),
(3, 'en_US', 'coverImage', 'a:3:{s:12:\"dateUploaded\";s:19:\"2020-09-04 11:33:52\";s:10:\"uploadName\";s:35:\"submission_3_3_coverImage_en_US.jpg\";s:7:\"altText\";s:20:\"Otok doktora Moreaua\";}'),
(3, 'en_US', 'title', 'Otok doktora Moreaua '),
(4, '', 'categoryIds', 'a:1:{i:0;i:2;}'),
(4, '', 'copyrightYear', '2020'),
(4, 'en_US', 'abstract', '<p>Rukopis&nbsp;<em>Etika kruha i konja</em>&nbsp;Marije Dejanović već nas naslovom prve pjesme (<em>Ugasiti hrast</em>) uranja u začudan i snažno dojmljiv vlastiti svijet/tekst iz kojeg na kraju izronimo kroz posljednju strofu rukopisa („Neće se više ni jedan moj sin / okušati u stvaranju svijeta“) koju možemo shvatiti dijelom i kao ironičan metapoetički iskaz. Na tom tragu, ovaj rukopis može se pročitati kao u potpunosti uspio pokušaj stvaranja vlastitog referencijalnog sustava u kojem pojedine ključne riječi dobivaju značenje jedna u odnosu na druge u kontekstu cjeline. Primjer takve riječi je riječ „zub“ koja se u različitim imeničnim oblicima pojavljuje 29 puta. Kao i kod nekih drugih ponavljajućih riječi, radi se o konkretnoj imenici koja nema metaforičku funkciju da upućuje na značenje izvan jezične konstrukcije samog teksta. Karakteristika ove poezije općeniti je izostanak intertekstualnosti, kao i izravnog upućivanja na društveno-političku stvarnost. Ipak, brojna mjesta pažljivom čitatelju opovrgavaju iščitavanje ovog teksta u larpurlartističkom ključu. Navest ćemo primjer iz prvog ciklusa&nbsp;<em>Naukovanje kod čarobnice</em>, gdje većina pjesama počinje iskazom o čarobnici koju možemo, ali ne moramo iščitati kao transformaciju majke. U pjesmi&nbsp;<em>Etika kruha i konja</em>&nbsp;iz ovog ciklusa čarobnica se u upravnom govoru obraća riječima: „Ne mora nitko znati što misliš.“ To su riječi žene zarobljene u patrijarhalnom svijetu/jeziku. Stvaranje vlastitog jezika, sustava značenja i logičke strukture u tom je slučaju oblik otpora i emancipacije i na taj način možemo shvatiti projekt ovog rukopisa. Na tragu takve emancipatornosti možemo pročitati i jedan od glavnih motiva rukopisa, identitetsku hibridnost i preobrazbu „ljudi/konji“. Sjajan primjer je pjesma&nbsp;<em>U vlastitoj sobi</em>&nbsp;u kojoj je opisano postajanje konjem lirskog subjekta koji je ranije naznačen kao djevojčica. Uz provodni motiv hibridnosti i preobrazbe, u tekstu je i puno riječi i slika koje opisuju granicu unutrašnjeg i vanjskog. Uz vrata, prozore, zidove tu su u pjesmi&nbsp;<em>Nevidljiva vrpca</em>&nbsp;i zjenice i usta („Kroz zjenice ulaze ljudske noge / u pokislim cipelama od starih šešira. / Kroz usta izlaze potkove / vrijedne promatranja“). Iako se sva snaga ovakvog pjesničkog projekta može sagledati samo iz cjeline i precizne strukture rukopisa, poezija Marije Dejanović ipak i izravnije dopire do čitatelja originalnošću i začudnom ljepotom pojedinih pjesničkih slika koje su ostvarene svedenim i preciznim jezikom. Jednostavnost jezika opravdava čitanje ovog rukopisa ne kao hermetičnog u smislu da skriva tajno značenje, već upravo suprotno, kao pokušaja da se poezija u potpunosti ostvari kao prostor jezične i značenjske slobode i igre.</p>'),
(4, 'en_US', 'copyrightHolder', 'Filozofski fakultet Osijek'),
(4, 'en_US', 'coverImage', 'a:3:{s:12:\"dateUploaded\";s:19:\"2020-09-04 11:50:03\";s:10:\"uploadName\";s:35:\"submission_4_4_coverImage_en_US.jpg\";s:7:\"altText\";s:19:\"Etika kruha i konja\";}'),
(4, 'en_US', 'title', 'Etika kruha i konja'),
(5, '', 'categoryIds', 'a:1:{i:0;i:2;}'),
(5, '', 'copyrightYear', '2020'),
(5, 'en_US', 'abstract', '<p>Pokušati iznova vidjeti i do/živjeti svijet kao ono izgubljeno, izvorno Jedno, premda sa sviješću o sudbinskoj nemogućnosti jednoga takvoga pothvata nas (post)modernih, oduvijek je bila inicijalna pjesnička žudnja Tomice Bajsića, manje-više eksplicitno ili implicitno, potpuno je nevažno, utkana u njegovo stihovlje i onda kada je pisao o nečemu samo naizgled posve drugome – recimo, ratnoj ili tranzicijskoj stvarnosti. U književnosti u kojoj je rigidna simplifikacija oduvijek u temelju mišljenja o bilo čijem pojedinačnome autorskome opusu, jedan od većih previda bio bi, svakako, Bajsića doživotno smještati u geto tzv. ratne ili tzv. stvarnosne poezije, pa ma koliko se na prvi pogled to činilo – posve logičnim.</p>'),
(5, 'en_US', 'copyrightHolder', 'Filozofski fakultet Osijek'),
(5, 'en_US', 'coverImage', 'a:3:{s:12:\"dateUploaded\";s:19:\"2020-09-04 11:59:33\";s:10:\"uploadName\";s:35:\"submission_5_5_coverImage_en_US.jpg\";s:7:\"altText\";s:15:\"Zrak ispod mora\";}'),
(5, 'en_US', 'prefix', ''),
(5, 'en_US', 'subtitle', ''),
(5, 'en_US', 'title', 'Zrak ispod mora'),
(6, '', 'categoryIds', 'a:1:{i:0;i:3;}'),
(6, '', 'copyrightYear', '2020'),
(6, 'en_US', 'abstract', '<p><br>Kao jedan od vodećih jezikoslovnih časopisa u Republici Hrvatskoj, Jezikoslovlje ima za cilj promicanje konstruktivnog međudjelovanja teorije i jezičnog opisa, tako što će predstavljati široko zamišljen forum za istraživanja u tradicionalnim jezikoslovnim disciplinama, od fonologije i morfologije, preko sintakse do semantike i pragmatike, kao i za radove koji zadiru u susjedne discipline ukoliko su u njima iznesene spoznaje zanimljive jezikoslovnoj publici i/ili relevantne za suvremenu jezikoslovnu teoriju, metodologiju i/ili opis. Poduprt međunarodno priznatim Uređivačkim savjetom, časopis će objavljivati priloge koji su zanimljivi široj jezikoslovnoj zajednici te tako odražavati suvremena strujanja u istraživanjima u spomenutim disciplinama unutar najraznovrsnijih teoretskih modela. Jezikoslovlje će povremeno objavljivati posebne tematske sekcije ili brojeve koje će prirediti gost-urednik te će tako omogućiti svom čitateljstvu sagledavanje pojedine teme s različitih stajališta.</p>'),
(6, 'en_US', 'copyrightHolder', 'Filozofski fakultet Osijek'),
(6, 'en_US', 'coverImage', 'a:3:{s:12:\"dateUploaded\";s:19:\"2020-09-04 12:27:13\";s:10:\"uploadName\";s:35:\"submission_6_6_coverImage_en_US.jpg\";s:7:\"altText\";s:13:\"Jezikoslovlje\";}'),
(6, 'en_US', 'subtitle', 'Vol. 21. No. 2., 2020. '),
(6, 'en_US', 'title', 'Jezikoslovlje  '),
(7, '', 'categoryIds', 'a:1:{i:0;i:3;}'),
(7, '', 'copyrightYear', '2020'),
(7, 'en_US', 'abstract', '<p>Klub studenata informacijskih znanosti „Libros“ broji petnaest godina od svojeg osnivanja. Kroz svoju je povijest Klub mijenjao vodstvo, ali ne i svoju glavnu zadaću – skrb za ostvarivanje obrazovnih,<br>društvenih, kulturnih i drugih interesa studenata te promicanje informacijskih znanosti i knjižničarstva. Članstvo je u Klubu dobrovoljno te svi studenti i apsolventi koji studiraju informacijske znanosti<br>na Filozofskom fakultetu u Osijeku mogu postati redovni članovi<br>Kluba. Izvanredni članovi Kluba mogu postati svi diplomirani studenti informacijskih znanosti Filozofskog fakulteta u Osijeku te svi<br>redovni studenti Filozofskog fakulteta. Rukovodstvo Kluba nastojalo<br>je poticati proaktivnost svojih članova uključivanjem u organizaciju<br>konferencija, radionica, projekata i raznih drugih aktivnosti o kojima<br>možete pročitati i u ovom, osmom po redu, broju časopisa. U ovom<br>broju, pored tradicionalnih konferencija poput LIDA-e, InfoDaskae<br>te WebCampa, koje već godinama posjećuju studenti informacijskih<br>znanosti, možete pročitati i nešto više o brojnim konferencijama i<br>događajima izvan Hrvatske koje su naši studenti posjetili.</p>'),
(7, 'en_US', 'copyrightHolder', 'Filozofski fakultet Osijek'),
(7, 'en_US', 'coverImage', 'a:3:{s:12:\"dateUploaded\";s:19:\"2020-09-04 12:50:31\";s:10:\"uploadName\";s:35:\"submission_7_7_coverImage_en_US.jpg\";s:7:\"altText\";s:6:\"libros\";}'),
(7, 'en_US', 'title', 'Libros'),
(8, '', 'categoryIds', 'a:1:{i:0;i:4;}'),
(8, '', 'copyrightYear', '2020'),
(8, 'en_US', 'abstract', '<p><em>Rađanje nacije</em>, serijal tjednih „refleksa i refleksija“ Trećeg programa Hrvatskog radija u 52 nastavka, autor je, okupivši ih na jednom mjestu, nazvao&nbsp;<em>ljetopisom godine 1994-1995</em>. Iako tekstovi obuhvaćaju samo jednu godinu, kronika je to koja čitateljima sažima autorove interese, čitanja, iskustva, znanja, lutanja i nadanja. Oni tvore stenografski sažetak njegovih eklektičnih ambicija i ostvarenja. Po tomu&nbsp;<em>Rađanje nacije</em>&nbsp;nije izniman opus. On je štoviše tipičan za naše doba. Suvremeni intelektualac mora znati slušati Mahlerovu 8. simfoniju i 4 Non Blondes, romaničku i Orffovu Carminu Buranu, jazz, znati za grunge i techno, on mora znati čitati Heideggera i Heisenberga, Platona i Levi-Straussa, Levy-Bruhla i de Saussurea, Vergilija i Brocha, Fregea i Boškovića, Stephena Kinga i Margaret Jourcenar, znati za Corta Maltesea i Kurta Gödela, on mora, kako kaže Hegel, imati jutarnju molitvu modernoga čovjeka, odnosno svakodnevno pratiti domaći i strani tisak najrazličitijih vrsta, on mora pratiti elektronske medije, TV (i to ne samo 3 domaće stanice), slušati cijeli spektar više ili manje zanimljivih radio stanica, znati što se zbiva u i pored Hollywooda, pratiti zbivanja na tržištu softwarea i hardwarea, uključivati se u računalne mreže za komuniciranje, mora sudjelovati ili aktivno pratiti različita politička događanja, mora imati svoj azil za znanstveni rad, mora komunicirati s ljudima najrazličitijih profila, „sakupljati informacije“ od svih pomalo, on se mora prilagođavati stavovima i načinima komunikacije različitih ljudi; istovremeno on mora posjedovati različita pragmatična i svakodnevna znanja, uključujući i financijska kako bi preživio, on mora biti&nbsp;<em>sam-svoj-enterpreneur</em>, i napokon, on mora imati zadovoljavajući privatni život. On mora biti poput Brochovih mjesečara Pazenova, Esha i Hugenaua (romantičara, kaota i beskrupuloznog trezvenjaka) u jednom jedinom liku. I zato nije čudno što ne može ispuniti stari i katkad subjektivno poželjni zahtjev dosljednosti, pratiti vlastitu intelektualnu crvenu nit u labirintu povijesti opredjeljivanjem i usavršavanjem u jednoj struci, poznavanjem jednog umjetničkog stila, jednog društvenog sloja, jedne filozofske struje, jedne znanstvene grane, praćenjem jedne TV ili radio postaje, jednih novina; imati jedan moralni kodeks, ili pak biti stručnjak samo za polimere, samo za psihoanalizu, samo za socijalnu politiku, samo za linearnu algebru, samo za nuklearnu fiziku… To je ono što jedan suvremeni filozof, Richard Rorty, naziva kontingencijom svijeta i kontingencijom osobnosti. Rortyjev, Foulcaultov, Derridain ili Barthesov čovjek, suvremeni intelektualac naime, mora posjedovati sposobnost da se stalno udaljava od vlastitih uvjerenja, da konstantno radi „iskorak“ iz vlastita ega, kako bi uvjerenja i sebe samoga uvijek iznova mogao vidjeti u sasvim nekom drugom, tuđem osvjetljenju, a da pri tome ne izgubi vlastiti identitet, neku odliku osobnosti po kojoj će u svijetu mega-raznovrsnosti ostati upečatljiv. On vlastiti eklekticizam mora zaogrnuti u plašt dosljednosti, premda svi znaju i vide da to može biti samo plašt, kora, ljuštura, karakterna maska osobnosti. I zato je autorov credo relativističan. Ne zato što u svijetu ne bi postojale „čvrste činjenice“ i isto tako čvrsta moralna uvjerenja (ili čvrsti razlozi za njihova izricanja), već zato što se njihov značaj gubi u kontingenciji trenutka, u kontingenciji vlastitoga života. Takva je&nbsp; kontingencija i&nbsp;<em>Rađanje nacije</em>, kao što je i rađanje nacije jedna povijesna kontingencija, nešto što se (srećom) dogodilo, ali što se vrlo lako, u nekim drukčijim, i isto tako vrlo slučajnim okolnostima nije moralo dogoditi.</p>'),
(8, 'en_US', 'copyrightHolder', 'Filozofski fakultet Osijek'),
(8, 'en_US', 'coverImage', 'a:3:{s:12:\"dateUploaded\";s:19:\"2020-09-04 13:03:32\";s:10:\"uploadName\";s:35:\"submission_8_8_coverImage_en_US.jpg\";s:7:\"altText\";s:15:\"rađanje nacije\";}'),
(8, 'en_US', 'title', 'Rađanje nacije'),
(9, '', 'categoryIds', 'a:1:{i:0;i:4;}'),
(9, '', 'copyrightYear', '2020'),
(9, 'en_US', 'abstract', '<p>Šimlešina&nbsp;<em>Snaga utopije</em>&nbsp;prikazuje razvoj i djelovanje anarhističke ideje i akcije u svijetu u drugoj polovici dvadesetog stoljeća. Knjiga donosi pregled anarhističkih ideja, stavova i vrijednosti, kao i smjerova unutar pokreta, što je dodatno upotpunjeno pregledom najvažnijih akcija koje su obilježile posljednjih pedesetak godina anarhističkog djelovanja. Drugo tiskanje izdanje bilo je prošireno i dopunjeno tekstovima i prilozima Šimlešinih suradnika i suradnica, a dodan je i kratki pregled razvoja i djelovanja anarhističkog pokreta u Hrvatskoj. Za ovo treće, i ujedno prvo elektroničko, izdanje ovog naslova nadopunjen je i ažuriran posebice dio knjige koji pokriva događanja zadnjih pet na anarhističkoj sceni u Hrvatskoj. Ova knjiga je naročito važna jer suvremene anarhističke ideje i akcije kroz medije i druge oblike masovne komunikacije doživljavaju različite interpretacije, budući da su opet izrazito prisutne, kako prije pet godina kada je objavljeno drugo izdanje, tako i danas, a često je tu riječ o mistifikaciji, krivim interpretacijama ili čak zlonamjernim podmetanjima, što i nije toliko neočekivano budući da za razliku od mnogih drugih političkih ideja, anarhistički pokret rijetko ima priliku javno objasniti svoja načela i polazišta.</p>'),
(9, 'en_US', 'copyrightHolder', 'Filozofski fakultet Osijek'),
(9, 'en_US', 'coverImage', 'a:3:{s:12:\"dateUploaded\";s:19:\"2020-09-04 13:10:15\";s:10:\"uploadName\";s:35:\"submission_9_9_coverImage_en_US.jpg\";s:7:\"altText\";s:13:\"snaga utopije\";}'),
(9, 'en_US', 'prefix', ''),
(9, 'en_US', 'subtitle', ''),
(9, 'en_US', 'title', 'Snaga utopije');

-- --------------------------------------------------------

--
-- Table structure for table `queries`
--

CREATE TABLE `queries` (
  `query_id` bigint(20) NOT NULL,
  `assoc_type` bigint(20) NOT NULL,
  `assoc_id` bigint(20) NOT NULL,
  `stage_id` tinyint(4) NOT NULL DEFAULT 1,
  `seq` double NOT NULL DEFAULT 0,
  `date_posted` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `closed` smallint(6) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `queries`
--

INSERT INTO `queries` (`query_id`, `assoc_type`, `assoc_id`, `stage_id`, `seq`, `date_posted`, `date_modified`, `closed`) VALUES
(2, 1048585, 4, 1, 1, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `query_participants`
--

CREATE TABLE `query_participants` (
  `query_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `query_participants`
--

INSERT INTO `query_participants` (`query_id`, `user_id`) VALUES
(2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `queued_payments`
--

CREATE TABLE `queued_payments` (
  `queued_payment_id` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `expiry_date` date DEFAULT NULL,
  `payment_data` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `representatives`
--

CREATE TABLE `representatives` (
  `representative_id` bigint(20) NOT NULL,
  `submission_id` bigint(20) NOT NULL,
  `role` varchar(40) NOT NULL,
  `representative_id_type` varchar(255) DEFAULT NULL,
  `representative_id_value` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `url` varchar(2047) DEFAULT NULL,
  `is_supplier` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `review_assignments`
--

CREATE TABLE `review_assignments` (
  `review_id` bigint(20) NOT NULL,
  `submission_id` bigint(20) NOT NULL,
  `reviewer_id` bigint(20) NOT NULL,
  `competing_interests` text DEFAULT NULL,
  `recommendation` tinyint(4) DEFAULT NULL,
  `date_assigned` datetime DEFAULT NULL,
  `date_notified` datetime DEFAULT NULL,
  `date_confirmed` datetime DEFAULT NULL,
  `date_completed` datetime DEFAULT NULL,
  `date_acknowledged` datetime DEFAULT NULL,
  `date_due` datetime DEFAULT NULL,
  `date_response_due` datetime DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `reminder_was_automatic` tinyint(4) NOT NULL DEFAULT 0,
  `declined` tinyint(4) NOT NULL DEFAULT 0,
  `cancelled` tinyint(4) NOT NULL DEFAULT 0,
  `reviewer_file_id` bigint(20) DEFAULT NULL,
  `date_rated` datetime DEFAULT NULL,
  `date_reminded` datetime DEFAULT NULL,
  `quality` tinyint(4) DEFAULT NULL,
  `review_round_id` bigint(20) DEFAULT NULL,
  `stage_id` tinyint(4) NOT NULL DEFAULT 1,
  `review_method` tinyint(4) NOT NULL DEFAULT 1,
  `round` tinyint(4) NOT NULL DEFAULT 1,
  `step` tinyint(4) NOT NULL DEFAULT 1,
  `review_form_id` bigint(20) DEFAULT NULL,
  `unconsidered` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `review_files`
--

CREATE TABLE `review_files` (
  `review_id` bigint(20) NOT NULL,
  `file_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `review_forms`
--

CREATE TABLE `review_forms` (
  `review_form_id` bigint(20) NOT NULL,
  `assoc_type` bigint(20) DEFAULT NULL,
  `assoc_id` bigint(20) DEFAULT NULL,
  `seq` double DEFAULT NULL,
  `is_active` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `review_form_elements`
--

CREATE TABLE `review_form_elements` (
  `review_form_element_id` bigint(20) NOT NULL,
  `review_form_id` bigint(20) NOT NULL,
  `seq` double DEFAULT NULL,
  `element_type` bigint(20) DEFAULT NULL,
  `required` tinyint(4) DEFAULT NULL,
  `included` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `review_form_element_settings`
--

CREATE TABLE `review_form_element_settings` (
  `review_form_element_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` text DEFAULT NULL,
  `setting_type` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `review_form_responses`
--

CREATE TABLE `review_form_responses` (
  `review_form_element_id` bigint(20) NOT NULL,
  `review_id` bigint(20) NOT NULL,
  `response_type` varchar(6) DEFAULT NULL,
  `response_value` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `review_form_settings`
--

CREATE TABLE `review_form_settings` (
  `review_form_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` text DEFAULT NULL,
  `setting_type` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `review_rounds`
--

CREATE TABLE `review_rounds` (
  `review_round_id` bigint(20) NOT NULL,
  `submission_id` bigint(20) NOT NULL,
  `stage_id` bigint(20) DEFAULT NULL,
  `round` tinyint(4) NOT NULL,
  `review_revision` bigint(20) DEFAULT NULL,
  `status` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `review_rounds`
--

INSERT INTO `review_rounds` (`review_round_id`, `submission_id`, `stage_id`, `round`, `review_revision`, `status`) VALUES
(1, 5, 3, 1, NULL, 4);

-- --------------------------------------------------------

--
-- Table structure for table `review_round_files`
--

CREATE TABLE `review_round_files` (
  `submission_id` bigint(20) NOT NULL,
  `review_round_id` bigint(20) NOT NULL,
  `stage_id` tinyint(4) NOT NULL,
  `file_id` bigint(20) NOT NULL,
  `revision` bigint(20) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `review_round_files`
--

INSERT INTO `review_round_files` (`submission_id`, `review_round_id`, `stage_id`, `file_id`, `revision`) VALUES
(5, 1, 3, 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sales_rights`
--

CREATE TABLE `sales_rights` (
  `sales_rights_id` bigint(20) NOT NULL,
  `publication_format_id` bigint(20) NOT NULL,
  `type` varchar(40) NOT NULL,
  `row_setting` tinyint(4) NOT NULL DEFAULT 0,
  `countries_included` text DEFAULT NULL,
  `countries_excluded` text DEFAULT NULL,
  `regions_included` text DEFAULT NULL,
  `regions_excluded` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `scheduled_tasks`
--

CREATE TABLE `scheduled_tasks` (
  `class_name` varchar(255) NOT NULL,
  `last_run` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `scheduled_tasks`
--

INSERT INTO `scheduled_tasks` (`class_name`, `last_run`) VALUES
('lib.pkp.classes.task.PublishSubmissions', '2020-09-04 09:27:51'),
('lib.pkp.classes.task.ReviewReminder', '2020-09-04 09:27:50'),
('lib.pkp.classes.task.StatisticsReport', '2020-08-27 19:25:13'),
('plugins.generic.usageStats.UsageStatsLoader', '2020-09-04 09:27:48');

-- --------------------------------------------------------

--
-- Table structure for table `series`
--

CREATE TABLE `series` (
  `series_id` bigint(20) NOT NULL,
  `press_id` bigint(20) NOT NULL,
  `review_form_id` bigint(20) DEFAULT NULL,
  `seq` double DEFAULT 0,
  `featured` tinyint(4) NOT NULL DEFAULT 0,
  `editor_restricted` tinyint(4) NOT NULL DEFAULT 0,
  `path` varchar(255) NOT NULL,
  `image` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `series`
--

INSERT INTO `series` (`series_id`, `press_id`, `review_form_id`, `seq`, `featured`, `editor_restricted`, `path`, `image`) VALUES
(1, 1, NULL, 0, 0, 0, 'casopisi', 'a:8:{s:4:\"name\";s:12:\"1-series.jpg\";s:5:\"width\";i:199;s:6:\"height\";i:285;s:13:\"thumbnailName\";s:22:\"1-series-thumbnail.jpg\";s:14:\"thumbnailWidth\";d:70;s:15:\"thumbnailHeight\";d:100;s:10:\"uploadName\";s:7:\"202.jpg\";s:12:\"dateUploaded\";s:19:\"2020-09-04 12:15:45\";}'),
(2, 1, NULL, 0, 0, 0, 'libros', 'a:8:{s:4:\"name\";s:12:\"2-series.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:500;s:13:\"thumbnailName\";s:22:\"2-series-thumbnail.jpg\";s:14:\"thumbnailWidth\";d:100;s:15:\"thumbnailHeight\";d:100;s:10:\"uploadName\";s:50:\"32690324_1854345007956413_903315069268393984_n.jpg\";s:12:\"dateUploaded\";s:19:\"2020-09-04 12:48:30\";}');

-- --------------------------------------------------------

--
-- Table structure for table `series_categories`
--

CREATE TABLE `series_categories` (
  `series_id` bigint(20) NOT NULL,
  `category_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `series_categories`
--

INSERT INTO `series_categories` (`series_id`, `category_id`) VALUES
(1, 3),
(2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `series_settings`
--

CREATE TABLE `series_settings` (
  `series_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` text DEFAULT NULL,
  `setting_type` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `series_settings`
--

INSERT INTO `series_settings` (`series_id`, `locale`, `setting_name`, `setting_value`, `setting_type`) VALUES
(1, '', 'onlineIssn', '1848-9001', 'string'),
(1, '', 'printIssn', '', 'string'),
(1, '', 'sortOption', 'title-1', 'string'),
(1, 'en_US', 'description', '<p>Kao jedan od vodećih jezikoslovnih časopisa u Republici Hrvatskoj, Jezikoslovlje ima za cilj promicanje konstruktivnog međudjelovanja teorije i jezičnog opisa, tako što će predstavljati široko zamišljen forum za istraživanja u tradicionalnim jezikoslovnim disciplinama, od fonologije i morfologije, preko sintakse do semantike i pragmatike, kao i za radove koji zadiru u susjedne discipline ukoliko su u njima iznesene spoznaje zanimljive jezikoslovnoj publici i/ili relevantne za suvremenu jezikoslovnu teoriju, metodologiju i/ili opis. Poduprt međunarodno priznatim Uređivačkim savjetom, časopis će objavljivati priloge koji su zanimljivi široj jezikoslovnoj zajednici te tako odražavati suvremena strujanja u istraživanjima u spomenutim disciplinama unutar najraznovrsnijih teoretskih modela. Jezikoslovlje će povremeno objavljivati posebne tematske sekcije ili brojeve koje će prirediti gost-urednik te će tako omogućiti svom čitateljstvu sagledavanje pojedine teme s različitih stajališta.</p>', 'string'),
(1, 'en_US', 'prefix', '', 'string'),
(1, 'en_US', 'subtitle', '', 'string'),
(1, 'en_US', 'title', 'Jezikoslovlje', 'string'),
(2, '', 'onlineIssn', '', 'string'),
(2, '', 'printIssn', '', 'string'),
(2, '', 'sortOption', 'title-1', 'string'),
(2, 'en_US', 'description', '<p>Klub studenata informacijskih znanosti „Libros“ broji petnaest godina od svojeg osnivanja. Kroz svoju je povijest Klub mijenjao vodstvo, ali ne i svoju glavnu zadaću – skrb za ostvarivanje obrazovnih,<br>društvenih, kulturnih i drugih interesa studenata te promicanje informacijskih znanosti i knjižničarstva. Članstvo je u Klubu dobrovoljno te svi studenti i apsolventi koji studiraju informacijske znanosti<br>na Filozofskom fakultetu u Osijeku mogu postati redovni članovi<br>Kluba. Izvanredni članovi Kluba mogu postati svi diplomirani studenti informacijskih znanosti Filozofskog fakulteta u Osijeku te svi<br>redovni studenti Filozofskog fakulteta. Rukovodstvo Kluba nastojalo<br>je poticati proaktivnost svojih članova uključivanjem u organizaciju<br>konferencija, radionica, projekata i raznih drugih aktivnosti o kojima<br>možete pročitati i u ovom, osmom po redu, broju časopisa. U ovom<br>broju, pored tradicionalnih konferencija poput LIDA-e, InfoDaskae<br>te WebCampa, koje već godinama posjećuju studenti informacijskih<br>znanosti, možete pročitati i nešto više o brojnim konferencijama i<br>događajima izvan Hrvatske koje su naši studenti posjetili.</p>', 'string'),
(2, 'en_US', 'prefix', '', 'string'),
(2, 'en_US', 'subtitle', '', 'string'),
(2, 'en_US', 'title', 'Libros', 'string');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `session_id` varchar(128) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `ip_address` varchar(39) NOT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `created` bigint(20) NOT NULL DEFAULT 0,
  `last_used` bigint(20) NOT NULL DEFAULT 0,
  `remember` tinyint(4) NOT NULL DEFAULT 0,
  `data` text DEFAULT NULL,
  `domain` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`session_id`, `user_id`, `ip_address`, `user_agent`, `created`, `last_used`, `remember`, `data`, `domain`) VALUES
('55nu75uq4o0ajhh5954bdqonck', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36', 1598549094, 1598551237, 1, 'csrf|a:2:{s:9:\"timestamp\";i:1598551237;s:5:\"token\";s:32:\"c6f2904a526904989116da180da57737\";}userId|s:1:\"1\";username|s:3:\"omp\";', 'localhost'),
('ib0nquf201fluqkfmd5q0a4llq', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', 1599204463, 1599232418, 1, 'csrf|a:2:{s:9:\"timestamp\";i:1599232424;s:5:\"token\";s:32:\"8e161bcd1a1ed65bc16c73da600cb25b\";}username|s:3:\"omp\";userId|s:1:\"1\";', 'localhost');

-- --------------------------------------------------------

--
-- Table structure for table `site`
--

CREATE TABLE `site` (
  `redirect` bigint(20) NOT NULL DEFAULT 0,
  `primary_locale` varchar(14) NOT NULL,
  `min_password_length` tinyint(4) NOT NULL DEFAULT 6,
  `installed_locales` varchar(1024) NOT NULL DEFAULT 'en_US',
  `supported_locales` varchar(1024) DEFAULT NULL,
  `original_style_file_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `site`
--

INSERT INTO `site` (`redirect`, `primary_locale`, `min_password_length`, `installed_locales`, `supported_locales`, `original_style_file_name`) VALUES
(0, 'en_US', 6, 'a:1:{i:0;s:5:\"en_US\";}', 'a:1:{i:0;s:5:\"en_US\";}', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `site_settings`
--

CREATE TABLE `site_settings` (
  `setting_name` varchar(255) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_value` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `site_settings`
--

INSERT INTO `site_settings` (`setting_name`, `locale`, `setting_value`) VALUES
('contactEmail', 'en_US', 'namprojekt1@gmail.com'),
('contactName', 'en_US', 'Open Monograph Press'),
('themePluginPath', '', 'default');

-- --------------------------------------------------------

--
-- Table structure for table `spotlights`
--

CREATE TABLE `spotlights` (
  `spotlight_id` bigint(20) NOT NULL,
  `assoc_type` smallint(6) NOT NULL,
  `assoc_id` smallint(6) NOT NULL,
  `press_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `spotlights`
--

INSERT INTO `spotlights` (`spotlight_id`, `assoc_type`, `assoc_id`, `press_id`) VALUES
(1, 4, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `spotlight_settings`
--

CREATE TABLE `spotlight_settings` (
  `spotlight_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` text DEFAULT NULL,
  `setting_type` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `spotlight_settings`
--

INSERT INTO `spotlight_settings` (`spotlight_id`, `locale`, `setting_name`, `setting_value`, `setting_type`) VALUES
(1, 'en_US', 'description', '<p>Novi broj časopisa Jezikoslovlje.</p>', 'string'),
(1, 'en_US', 'title', 'Jezikoslovlje  Vol. 21. No. 2., 2020. ', 'string');

-- --------------------------------------------------------

--
-- Table structure for table `stage_assignments`
--

CREATE TABLE `stage_assignments` (
  `stage_assignment_id` bigint(20) NOT NULL,
  `submission_id` bigint(20) NOT NULL,
  `user_group_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `date_assigned` datetime NOT NULL,
  `recommend_only` tinyint(4) NOT NULL DEFAULT 0,
  `can_change_metadata` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stage_assignments`
--

INSERT INTO `stage_assignments` (`stage_assignment_id`, `submission_id`, `user_group_id`, `user_id`, `date_assigned`, `recommend_only`, `can_change_metadata`) VALUES
(1, 1, 2, 1, '2020-09-04 10:28:23', 0, 1),
(2, 2, 2, 1, '2020-09-04 10:39:18', 0, 1),
(5, 1, 3, 3, '2020-09-04 10:51:47', 0, 1),
(6, 1, 3, 1, '2020-09-04 10:52:57', 0, 1),
(7, 3, 2, 1, '2020-09-04 11:21:08', 0, 1),
(8, 3, 8, 1, '2020-09-04 11:25:34', 0, 0),
(9, 3, 3, 1, '2020-09-04 11:32:39', 0, 1),
(10, 4, 2, 1, '2020-09-04 11:42:01', 0, 1),
(11, 4, 8, 1, '2020-09-04 11:44:01', 0, 0),
(12, 4, 3, 1, '2020-09-04 11:46:40', 0, 1),
(13, 5, 2, 1, '2020-09-04 11:53:39', 0, 1),
(14, 5, 8, 1, '2020-09-04 11:55:24', 0, 0),
(15, 5, 3, 1, '2020-09-04 11:56:00', 0, 1),
(16, 6, 2, 1, '2020-09-04 12:17:31', 0, 1),
(17, 6, 8, 1, '2020-09-04 12:24:06', 0, 0),
(18, 6, 5, 1, '2020-09-04 12:24:06', 0, 1),
(19, 6, 3, 1, '2020-09-04 12:30:44', 0, 1),
(20, 7, 2, 1, '2020-09-04 12:38:01', 0, 1),
(21, 7, 8, 1, '2020-09-04 12:44:37', 0, 0),
(22, 7, 5, 1, '2020-09-04 12:44:37', 0, 1),
(23, 7, 3, 1, '2020-09-04 12:45:25', 0, 1),
(24, 8, 2, 1, '2020-09-04 12:59:08', 0, 1),
(25, 8, 8, 1, '2020-09-04 13:00:36', 0, 0),
(26, 8, 5, 1, '2020-09-04 13:00:36', 0, 1),
(27, 8, 3, 1, '2020-09-04 13:04:52', 0, 1),
(28, 9, 2, 1, '2020-09-04 13:07:15', 0, 1),
(29, 9, 8, 1, '2020-09-04 13:08:41', 0, 0),
(30, 9, 5, 1, '2020-09-04 13:08:41', 0, 1),
(31, 9, 3, 1, '2020-09-04 13:11:04', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `static_pages`
--

CREATE TABLE `static_pages` (
  `static_page_id` bigint(20) NOT NULL,
  `path` varchar(255) NOT NULL,
  `context_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `static_page_settings`
--

CREATE TABLE `static_page_settings` (
  `static_page_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` longtext DEFAULT NULL,
  `setting_type` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `subeditor_submission_group`
--

CREATE TABLE `subeditor_submission_group` (
  `context_id` bigint(20) NOT NULL,
  `assoc_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `assoc_type` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subeditor_submission_group`
--

INSERT INTO `subeditor_submission_group` (`context_id`, `assoc_id`, `user_id`, `assoc_type`) VALUES
(1, 1, 1, 530),
(1, 2, 1, 530),
(1, 3, 1, 525),
(1, 4, 1, 525);

-- --------------------------------------------------------

--
-- Table structure for table `submissions`
--

CREATE TABLE `submissions` (
  `submission_id` bigint(20) NOT NULL,
  `locale` varchar(14) DEFAULT NULL,
  `context_id` bigint(20) NOT NULL,
  `section_id` bigint(20) DEFAULT NULL,
  `current_publication_id` bigint(20) DEFAULT NULL,
  `date_last_activity` datetime DEFAULT NULL,
  `date_submitted` datetime DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `stage_id` bigint(20) NOT NULL DEFAULT 1,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `submission_progress` tinyint(4) NOT NULL DEFAULT 1,
  `work_type` tinyint(4) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `submissions`
--

INSERT INTO `submissions` (`submission_id`, `locale`, `context_id`, `section_id`, `current_publication_id`, `date_last_activity`, `date_submitted`, `last_modified`, `stage_id`, `status`, `submission_progress`, `work_type`) VALUES
(1, NULL, 1, NULL, 1, '2020-09-04 11:18:39', '2020-09-04 10:32:16', '2020-09-04 10:32:16', 5, 3, 0, 0),
(3, NULL, 1, NULL, 3, '2020-09-04 11:34:07', '2020-09-04 11:25:34', '2020-09-04 11:25:34', 5, 3, 0, 0),
(4, NULL, 1, NULL, 4, '2020-09-04 11:50:17', '2020-09-04 11:44:00', '2020-09-04 11:44:00', 5, 3, 0, 0),
(5, NULL, 1, NULL, 5, '2020-09-04 11:59:49', '2020-09-04 11:55:23', '2020-09-04 11:55:23', 4, 3, 0, 0),
(6, NULL, 1, NULL, 6, '2020-09-04 12:31:04', '2020-09-04 12:24:06', '2020-09-04 12:24:06', 5, 3, 0, 0),
(7, NULL, 1, NULL, 7, '2020-09-04 12:53:20', '2020-09-04 12:44:37', '2020-09-04 12:44:37', 5, 3, 0, 0),
(8, NULL, 1, NULL, 8, '2020-09-04 13:05:12', '2020-09-04 13:00:36', '2020-09-04 13:00:36', 5, 3, 0, 0),
(9, NULL, 1, NULL, 9, '2020-09-04 13:11:24', '2020-09-04 13:08:40', '2020-09-04 13:08:40', 5, 3, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `submission_artwork_files`
--

CREATE TABLE `submission_artwork_files` (
  `file_id` bigint(20) NOT NULL,
  `revision` bigint(20) NOT NULL,
  `caption` text DEFAULT NULL,
  `credit` varchar(255) DEFAULT NULL,
  `copyright_owner` varchar(255) DEFAULT NULL,
  `copyright_owner_contact` text DEFAULT NULL,
  `permission_terms` text DEFAULT NULL,
  `permission_file_id` bigint(20) DEFAULT NULL,
  `chapter_id` bigint(20) DEFAULT NULL,
  `contact_author` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `submission_chapters`
--

CREATE TABLE `submission_chapters` (
  `chapter_id` bigint(20) NOT NULL,
  `primary_contact_id` bigint(20) DEFAULT NULL,
  `publication_id` bigint(20) NOT NULL,
  `seq` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `submission_chapter_authors`
--

CREATE TABLE `submission_chapter_authors` (
  `author_id` bigint(20) NOT NULL,
  `chapter_id` bigint(20) NOT NULL,
  `primary_contact` tinyint(4) NOT NULL DEFAULT 0,
  `seq` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `submission_chapter_settings`
--

CREATE TABLE `submission_chapter_settings` (
  `chapter_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` text DEFAULT NULL,
  `setting_type` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `submission_comments`
--

CREATE TABLE `submission_comments` (
  `comment_id` bigint(20) NOT NULL,
  `comment_type` bigint(20) DEFAULT NULL,
  `role_id` bigint(20) NOT NULL,
  `submission_id` bigint(20) NOT NULL,
  `assoc_id` bigint(20) NOT NULL,
  `author_id` bigint(20) NOT NULL,
  `comment_title` text DEFAULT NULL,
  `comments` text DEFAULT NULL,
  `date_posted` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `viewable` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `submission_files`
--

CREATE TABLE `submission_files` (
  `file_id` bigint(20) NOT NULL,
  `revision` bigint(20) NOT NULL,
  `source_file_id` bigint(20) DEFAULT NULL,
  `source_revision` bigint(20) DEFAULT NULL,
  `submission_id` bigint(20) NOT NULL,
  `file_type` varchar(255) NOT NULL,
  `genre_id` bigint(20) DEFAULT NULL,
  `file_size` bigint(20) NOT NULL,
  `original_file_name` varchar(127) DEFAULT NULL,
  `file_stage` bigint(20) NOT NULL,
  `direct_sales_price` varchar(255) DEFAULT NULL,
  `sales_type` varchar(255) DEFAULT NULL,
  `viewable` tinyint(4) DEFAULT NULL,
  `date_uploaded` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `uploader_user_id` bigint(20) DEFAULT NULL,
  `assoc_type` bigint(20) DEFAULT NULL,
  `assoc_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `submission_files`
--

INSERT INTO `submission_files` (`file_id`, `revision`, `source_file_id`, `source_revision`, `submission_id`, `file_type`, `genre_id`, `file_size`, `original_file_name`, `file_stage`, `direct_sales_price`, `sales_type`, `viewable`, `date_uploaded`, `date_modified`, `uploader_user_id`, `assoc_type`, `assoc_id`) VALUES
(1, 1, NULL, NULL, 1, 'application/pdf', 2, 345003, 'petkom-poslije-ribe.pdf', 2, NULL, NULL, 1, '2020-09-04 10:29:53', '2020-09-04 10:29:53', 1, NULL, NULL),
(3, 1, 1, 1, 1, 'application/pdf', 2, 345003, 'petkom-poslije-ribe.pdf', 6, NULL, NULL, 1, '2020-09-04 10:29:53', '2020-09-04 10:54:02', 1, NULL, NULL),
(4, 1, 3, 1, 1, 'application/pdf', 2, 345003, 'petkom-poslije-ribe.pdf', 9, NULL, NULL, 1, '2020-09-04 10:29:53', '2020-09-04 11:16:17', 1, NULL, NULL),
(5, 1, 4, 1, 1, 'application/pdf', 2, 345003, 'petkom-poslije-ribe.pdf', 11, NULL, NULL, 0, '2020-09-04 10:29:53', '2020-09-04 11:16:50', 1, NULL, NULL),
(7, 1, NULL, NULL, 3, 'application/pdf', 2, 733742, 'otok-doktora-moreaua.pdf', 2, NULL, NULL, 1, '2020-09-04 11:23:21', '2020-09-04 11:23:21', 1, NULL, NULL),
(8, 1, NULL, NULL, 4, 'application/pdf', 2, 516475, 'etika-kruha-i-konja.pdf', 2, NULL, NULL, 1, '2020-09-04 11:42:18', '2020-09-04 11:42:18', 1, NULL, NULL),
(9, 1, NULL, NULL, 5, 'application/pdf', 2, 333832, 'zrak-ispod-mora.pdf', 2, NULL, NULL, 1, '2020-09-04 11:54:00', '2020-09-04 11:54:00', 1, NULL, NULL),
(10, 1, 9, 1, 5, 'application/pdf', 2, 333832, 'zrak-ispod-mora.pdf', 4, NULL, NULL, 1, '2020-09-04 11:54:00', '2020-09-04 11:56:27', 1, NULL, NULL),
(11, 1, NULL, NULL, 6, 'application/pdf', 13, 476717, '1_Jezikoslovlje_21_2_103_Kolakovic_Par_nepar_aspektni_par.pdf', 2, NULL, NULL, 1, '2020-09-04 12:18:54', '2020-09-04 12:18:54', 1, NULL, NULL),
(12, 1, NULL, NULL, 6, 'application/pdf', 13, 454396, '2_Jezikoslovlje_21_2_149_Stanojevic_Metafora_na_razmedju.pdf', 2, NULL, NULL, 1, '2020-09-04 12:20:36', '2020-09-04 12:20:36', 1, NULL, NULL),
(13, 1, NULL, NULL, 6, 'application/pdf', 13, 339628, '3_Jezikoslovlje_21_2_179_Parizoska_i_Omazic_Sheme_dinamike_sile_i_promjenjivost_glagolskih_frazema.pdf', 2, NULL, NULL, 1, '2020-09-04 12:20:57', '2020-09-04 12:20:57', 1, NULL, NULL),
(14, 1, NULL, NULL, 6, 'application/pdf', 13, 344392, '4_Jezikoslovlje_21_2_207_Ljubas_Utjecaj_vi_ejezi_nosti_vrednovatelja_na_ljudsku_procjenu_kvalitete_strojnih_prijevoda.pdf', 2, NULL, NULL, 1, '2020-09-04 12:21:18', '2020-09-04 12:21:18', 1, NULL, NULL),
(15, 1, NULL, NULL, 6, 'application/pdf', 13, 225021, '5_Jezikoslovlje_21_2_237_Brdar_Review_Bierwiaczonek_Metonymy_Language_Thought_and_Brain.pdf', 2, NULL, NULL, 1, '2020-09-04 12:21:36', '2020-09-04 12:21:36', 1, NULL, NULL),
(16, 1, NULL, NULL, 6, 'application/pdf', 13, 266290, '6_Jezikoslovlje_21_2_249_Brdar_Review_Raffaelli_Lexicalization_Patterns_in_Color_Naming_A_CrossLinguistic_Perspective.pdf', 2, NULL, NULL, 1, '2020-09-04 12:21:56', '2020-09-04 12:21:56', 1, NULL, NULL),
(17, 1, NULL, NULL, 7, 'application/pdf', 13, 5738826, 'libros-1.pdf', 2, NULL, NULL, 1, '2020-09-04 12:38:58', '2020-09-04 12:38:58', 1, NULL, NULL),
(17, 2, NULL, NULL, 7, 'application/pdf', 13, 9528708, 'libros-br-9.pdf', 2, NULL, NULL, 1, '2020-09-04 12:43:20', '2020-09-04 12:43:20', 1, NULL, NULL),
(18, 1, NULL, NULL, 7, 'application/pdf', 13, 1286513, 'libros-2.pdf', 2, NULL, NULL, 1, '2020-09-04 12:39:26', '2020-09-04 12:39:26', 1, NULL, NULL),
(19, 1, NULL, NULL, 7, 'application/pdf', 13, 5049085, 'libros-3.pdf', 2, NULL, NULL, 1, '2020-09-04 12:39:48', '2020-09-04 12:39:48', 1, NULL, NULL),
(20, 1, NULL, NULL, 7, 'application/pdf', 13, 2200495, 'libros-4.pdf', 2, NULL, NULL, 1, '2020-09-04 12:40:26', '2020-09-04 12:40:26', 1, NULL, NULL),
(21, 1, NULL, NULL, 7, 'application/pdf', 13, 2271177, 'libros-5.pdf', 2, NULL, NULL, 1, '2020-09-04 12:40:50', '2020-09-04 12:40:50', 1, NULL, NULL),
(22, 1, NULL, NULL, 7, 'application/pdf', 13, 6524552, 'libros-6.pdf', 2, NULL, NULL, 1, '2020-09-04 12:41:09', '2020-09-04 12:41:09', 1, NULL, NULL),
(23, 1, NULL, NULL, 7, 'application/pdf', 13, 4309037, 'libros-7.pdf', 2, NULL, NULL, 1, '2020-09-04 12:41:27', '2020-09-04 12:41:27', 1, NULL, NULL),
(25, 1, NULL, NULL, 7, 'application/pdf', 13, 13533747, 'libros-br-8.pdf', 2, NULL, NULL, 1, '2020-09-04 12:42:47', '2020-09-04 12:42:47', 1, NULL, NULL),
(27, 1, NULL, NULL, 8, 'application/pdf', 2, 829745, 'radanje-nacije.pdf', 2, NULL, NULL, 1, '2020-09-04 12:59:37', '2020-09-04 12:59:37', 1, NULL, NULL),
(28, 1, NULL, NULL, 9, 'application/pdf', 2, 710365, 'snaga-utopije.pdf', 2, NULL, NULL, 1, '2020-09-04 13:07:33', '2020-09-04 13:07:33', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `submission_file_settings`
--

CREATE TABLE `submission_file_settings` (
  `file_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` text DEFAULT NULL,
  `setting_type` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `submission_file_settings`
--

INSERT INTO `submission_file_settings` (`file_id`, `locale`, `setting_name`, `setting_value`, `setting_type`) VALUES
(1, 'en_US', 'name', 'omp, petkom-poslije-ribe.pdf', 'string'),
(3, 'en_US', 'name', 'omp, petkom-poslije-ribe.pdf', 'string'),
(4, 'en_US', 'name', 'omp, petkom-poslije-ribe.pdf', 'string'),
(5, 'en_US', 'name', 'omp, petkom-poslije-ribe.pdf', 'string'),
(7, 'en_US', 'name', 'omp, otok-doktora-moreaua.pdf', 'string'),
(8, 'en_US', 'name', 'omp, etika-kruha-i-konja.pdf', 'string'),
(9, 'en_US', 'name', 'omp, zrak-ispod-mora.pdf', 'string'),
(10, 'en_US', 'name', 'Bibliography, zrak-ispod-mora.pdf', 'string'),
(11, '', 'dateCreated', '', 'string'),
(11, '', 'language', '', 'string'),
(11, 'en_US', 'creator', '', 'string'),
(11, 'en_US', 'description', '', 'string'),
(11, 'en_US', 'name', 'omp, 1_Jezikoslovlje_21_2_103_Kolakovic_Par_nepar_aspektni_par.pdf', 'string'),
(11, 'en_US', 'publisher', '', 'string'),
(11, 'en_US', 'source', '', 'string'),
(11, 'en_US', 'sponsor', '', 'string'),
(11, 'en_US', 'subject', '', 'string'),
(12, '', 'dateCreated', '', 'string'),
(12, '', 'language', '', 'string'),
(12, 'en_US', 'creator', '', 'string'),
(12, 'en_US', 'description', '', 'string'),
(12, 'en_US', 'name', 'omp, 2_Jezikoslovlje_21_2_149_Stanojevic_Metafora_na_razmedju.pdf', 'string'),
(12, 'en_US', 'publisher', '', 'string'),
(12, 'en_US', 'source', '', 'string'),
(12, 'en_US', 'sponsor', '', 'string'),
(12, 'en_US', 'subject', '', 'string'),
(13, '', 'dateCreated', '', 'string'),
(13, '', 'language', '', 'string'),
(13, 'en_US', 'creator', '', 'string'),
(13, 'en_US', 'description', '', 'string'),
(13, 'en_US', 'name', 'omp, 3_Jezikoslovlje_21_2_179_Parizoska_i_Omazic_Sheme_dinamike_sile_i_promjenjivost_glagolskih_frazema.pdf', 'string'),
(13, 'en_US', 'publisher', '', 'string'),
(13, 'en_US', 'source', '', 'string'),
(13, 'en_US', 'sponsor', '', 'string'),
(13, 'en_US', 'subject', '', 'string'),
(14, '', 'dateCreated', '', 'string'),
(14, '', 'language', '', 'string'),
(14, 'en_US', 'creator', '', 'string'),
(14, 'en_US', 'description', '', 'string'),
(14, 'en_US', 'name', 'omp, 4_Jezikoslovlje_21_2_207_Ljubas_Utjecaj_vi_ejezi_nosti_vrednovatelja_na_ljudsku_procjenu_kvalitete_strojnih_prijevoda.pdf', 'string'),
(14, 'en_US', 'publisher', '', 'string'),
(14, 'en_US', 'source', '', 'string'),
(14, 'en_US', 'sponsor', '', 'string'),
(14, 'en_US', 'subject', '', 'string'),
(15, '', 'dateCreated', '', 'string'),
(15, '', 'language', '', 'string'),
(15, 'en_US', 'creator', '', 'string'),
(15, 'en_US', 'description', '', 'string'),
(15, 'en_US', 'name', 'omp, 5_Jezikoslovlje_21_2_237_Brdar_Review_Bierwiaczonek_Metonymy_Language_Thought_and_Brain.pdf', 'string'),
(15, 'en_US', 'publisher', '', 'string'),
(15, 'en_US', 'source', '', 'string'),
(15, 'en_US', 'sponsor', '', 'string'),
(15, 'en_US', 'subject', '', 'string'),
(16, '', 'dateCreated', '', 'string'),
(16, '', 'language', '', 'string'),
(16, 'en_US', 'creator', '', 'string'),
(16, 'en_US', 'description', '', 'string'),
(16, 'en_US', 'name', 'omp, 6_Jezikoslovlje_21_2_249_Brdar_Review_Raffaelli_Lexicalization_Patterns_in_Color_Naming_A_CrossLinguistic_Perspective.pdf', 'string'),
(16, 'en_US', 'publisher', '', 'string'),
(16, 'en_US', 'source', '', 'string'),
(16, 'en_US', 'sponsor', '', 'string'),
(16, 'en_US', 'subject', '', 'string'),
(17, '', 'dateCreated', '', 'string'),
(17, '', 'language', '', 'string'),
(17, 'en_US', 'creator', '', 'string'),
(17, 'en_US', 'description', '', 'string'),
(17, 'en_US', 'name', 'omp, libros-br-9.pdf', 'string'),
(17, 'en_US', 'publisher', '', 'string'),
(17, 'en_US', 'source', '', 'string'),
(17, 'en_US', 'sponsor', '', 'string'),
(17, 'en_US', 'subject', '', 'string'),
(18, '', 'dateCreated', '', 'string'),
(18, '', 'language', '', 'string'),
(18, 'en_US', 'creator', '', 'string'),
(18, 'en_US', 'description', '', 'string'),
(18, 'en_US', 'name', 'omp, libros-2.pdf', 'string'),
(18, 'en_US', 'publisher', '', 'string'),
(18, 'en_US', 'source', '', 'string'),
(18, 'en_US', 'sponsor', '', 'string'),
(18, 'en_US', 'subject', '', 'string'),
(19, '', 'dateCreated', '', 'string'),
(19, '', 'language', '', 'string'),
(19, 'en_US', 'creator', '', 'string'),
(19, 'en_US', 'description', '', 'string'),
(19, 'en_US', 'name', 'omp, libros-3.pdf', 'string'),
(19, 'en_US', 'publisher', '', 'string'),
(19, 'en_US', 'source', '', 'string'),
(19, 'en_US', 'sponsor', '', 'string'),
(19, 'en_US', 'subject', '', 'string'),
(20, '', 'dateCreated', '', 'string'),
(20, '', 'language', '', 'string'),
(20, 'en_US', 'creator', '', 'string'),
(20, 'en_US', 'description', '', 'string'),
(20, 'en_US', 'name', 'omp, libros-4.pdf', 'string'),
(20, 'en_US', 'publisher', '', 'string'),
(20, 'en_US', 'source', '', 'string'),
(20, 'en_US', 'sponsor', '', 'string'),
(20, 'en_US', 'subject', '', 'string'),
(21, '', 'dateCreated', '', 'string'),
(21, '', 'language', '', 'string'),
(21, 'en_US', 'creator', '', 'string'),
(21, 'en_US', 'description', '', 'string'),
(21, 'en_US', 'name', 'omp, libros-5.pdf', 'string'),
(21, 'en_US', 'publisher', '', 'string'),
(21, 'en_US', 'source', '', 'string'),
(21, 'en_US', 'sponsor', '', 'string'),
(21, 'en_US', 'subject', '', 'string'),
(22, '', 'dateCreated', '', 'string'),
(22, '', 'language', '', 'string'),
(22, 'en_US', 'creator', '', 'string'),
(22, 'en_US', 'description', '', 'string'),
(22, 'en_US', 'name', 'omp, libros-6.pdf', 'string'),
(22, 'en_US', 'publisher', '', 'string'),
(22, 'en_US', 'source', '', 'string'),
(22, 'en_US', 'sponsor', '', 'string'),
(22, 'en_US', 'subject', '', 'string'),
(23, '', 'dateCreated', '', 'string'),
(23, '', 'language', '', 'string'),
(23, 'en_US', 'creator', '', 'string'),
(23, 'en_US', 'description', '', 'string'),
(23, 'en_US', 'name', 'omp, libros-7.pdf', 'string'),
(23, 'en_US', 'publisher', '', 'string'),
(23, 'en_US', 'source', '', 'string'),
(23, 'en_US', 'sponsor', '', 'string'),
(23, 'en_US', 'subject', '', 'string'),
(25, '', 'dateCreated', '', 'string'),
(25, '', 'language', '', 'string'),
(25, 'en_US', 'creator', '', 'string'),
(25, 'en_US', 'description', '', 'string'),
(25, 'en_US', 'name', 'omp, libros-br-8.pdf', 'string'),
(25, 'en_US', 'publisher', '', 'string'),
(25, 'en_US', 'source', '', 'string'),
(25, 'en_US', 'sponsor', '', 'string'),
(25, 'en_US', 'subject', '', 'string'),
(26, 'en_US', 'name', 'omp, libros-br-9.pdf', 'string'),
(27, 'en_US', 'name', 'omp, radanje-nacije.pdf', 'string'),
(28, 'en_US', 'name', 'omp, snaga-utopije.pdf', 'string');

-- --------------------------------------------------------

--
-- Table structure for table `submission_search_keyword_list`
--

CREATE TABLE `submission_search_keyword_list` (
  `keyword_id` bigint(20) NOT NULL,
  `keyword_text` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `submission_search_keyword_list`
--

INSERT INTO `submission_search_keyword_list` (`keyword_id`, `keyword_text`) VALUES
(545, '1994-1995'),
(839, 'akcija'),
(822, 'akcije'),
(644, 'aktivno'),
(506, 'aktivnosti'),
(730, 'algebru'),
(182, 'ali'),
(566, 'ambicija'),
(820, 'anarhističke'),
(903, 'anarhistički'),
(830, 'anarhističkih'),
(843, 'anarhističkog'),
(872, 'anarhističkoj'),
(479, 'apsolventi'),
(539, 'autor'),
(782, 'autorov'),
(553, 'autorove'),
(355, 'autorskome'),
(649, 'azil'),
(865, 'ažuriran'),
(327, 'bajsića'),
(743, 'barthesov'),
(683, 'beskrupuloznog'),
(322, 'bila'),
(21, 'bilo'),
(41, 'bio'),
(42, 'biolog'),
(57, 'biti'),
(581, 'blondes'),
(37, 'boga“'),
(599, 'boškovića'),
(597, 'brocha'),
(676, 'brochovih'),
(440, 'brojeve'),
(456, 'broji'),
(161, 'brojna'),
(522, 'brojnim'),
(512, 'broju'),
(884, 'budući'),
(585, 'buranu'),
(14, 'buru'),
(895, 'čak'),
(584, 'carminu'),
(188, 'čarobnica'),
(175, 'čarobnice'),
(181, 'čarobnici'),
(421, 'časopis'),
(374, 'časopisa'),
(171, 'ćemo'),
(891, 'često'),
(627, 'cijeli'),
(353, 'čijem'),
(173, 'ciklusa'),
(378, 'cilj'),
(369, 'činilo'),
(787, 'činjenice“'),
(261, 'cipelama'),
(555, 'čitanja'),
(290, 'čitanje'),
(278, 'čitatelja'),
(551, 'čitateljima'),
(445, 'čitateljstvu'),
(164, 'čitatelju'),
(589, 'čitati'),
(124, 'cjeline'),
(499, 'članova'),
(488, 'članovi'),
(474, 'članstvo'),
(604, 'corta'),
(744, 'čovjek'),
(614, 'čovjeka'),
(783, 'credo'),
(698, 'crvenu'),
(688, 'čudno'),
(789, 'čvrsta'),
(791, 'čvrsti'),
(890, 'danas'),
(28, 'darwinova'),
(44, 'darwinovih'),
(66, 'dejanović'),
(742, 'derridain'),
(99, 'dijelom'),
(867, 'dio'),
(491, 'diplomirani'),
(392, 'disciplinama'),
(402, 'discipline'),
(4, 'djela'),
(844, 'djelovanja'),
(819, 'djelovanje'),
(236, 'djevojčica'),
(575, 'doba'),
(118, 'dobivaju'),
(476, 'dobrovoljno'),
(855, 'dodan'),
(835, 'dodatno'),
(524, 'događajima'),
(647, 'događanja'),
(806, 'dogodilo'),
(814, 'dogoditi'),
(77, 'dojmljiv'),
(36, 'dokinula'),
(6, 'doktora'),
(625, 'domaće'),
(618, 'domaći'),
(828, 'donosi'),
(277, 'dopire'),
(849, 'dopunjeno'),
(695, 'dosljednosti'),
(881, 'doživljavaju'),
(360, 'doživotno'),
(122, 'druge'),
(136, 'drugih'),
(845, 'drugo'),
(823, 'drugoj'),
(761, 'drugom'),
(343, 'drugome'),
(810, 'drukčijim'),
(470, 'društvenih'),
(158, 'društveno-političku'),
(710, 'društvenog'),
(825, 'dvadesetog'),
(754, 'ega'),
(773, 'eklekticizam'),
(565, 'eklektičnih'),
(329, 'eksplicitno'),
(862, 'elektroničko'),
(623, 'elektronske'),
(212, 'emancipacije'),
(216, 'emancipatornosti'),
(679, 'esha'),
(61, 'etika'),
(30, 'evolucije'),
(493, 'fakulteta'),
(483, 'fakultetu'),
(733, 'filozof'),
(713, 'filozofske'),
(492, 'filozofskog'),
(482, 'filozofskom'),
(669, 'financijska'),
(732, 'fiziku…'),
(393, 'fonologije'),
(388, 'forum'),
(741, 'foulcaultov'),
(598, 'fregea'),
(143, 'funkciju'),
(176, 'gdje'),
(25, 'genetike'),
(362, 'geto'),
(217, 'glavnih'),
(465, 'glavnu'),
(607, 'gödela'),
(458, 'godina'),
(519, 'godinama'),
(12, 'godine'),
(549, 'godinu'),
(442, 'gost-urednik'),
(190, 'govoru'),
(716, 'grane'),
(246, 'granicu'),
(587, 'grunge'),
(797, 'gubi'),
(638, 'hardwarea'),
(609, 'hegel'),
(590, 'heideggera'),
(591, 'heisenberga'),
(291, 'hermetičnog'),
(220, 'hibridnost'),
(239, 'hibridnosti'),
(634, 'hollywooda'),
(73, 'hrast'),
(525, 'hrvatske'),
(536, 'hrvatskog'),
(376, 'hrvatskoj'),
(680, 'hugenaua'),
(52, 'iako'),
(34, 'ideja'),
(821, 'ideje'),
(767, 'identitet'),
(219, 'identitetsku'),
(302, 'igre'),
(330, 'ili'),
(377, 'ima'),
(610, 'imati'),
(140, 'imenici'),
(130, 'imeničnim'),
(51, 'imenima'),
(331, 'implicitno'),
(517, 'infodaskae'),
(656, 'informacije“'),
(481, 'informacijske'),
(453, 'informacijskih'),
(323, 'inicijalna'),
(577, 'intelektualac'),
(697, 'intelektualnu'),
(472, 'interesa'),
(554, 'interese'),
(894, 'interpretacijama'),
(883, 'interpretacije'),
(155, 'intertekstualnosti'),
(160, 'ipak'),
(100, 'ironičan'),
(184, 'iščitati'),
(166, 'iščitavanje'),
(102, 'iskaz'),
(180, 'iskazom'),
(556, 'iskustva'),
(304, 'ispod'),
(689, 'ispuniti'),
(788, 'isto'),
(664, 'istovremeno'),
(389, 'istraživanja'),
(430, 'istraživanjima'),
(13, 'izazvavši'),
(847, 'izdanje'),
(766, 'izgubi'),
(310, 'izgubljeno'),
(264, 'izlaze'),
(405, 'iznesene'),
(570, 'izniman'),
(306, 'iznova'),
(154, 'izostanak'),
(276, 'izravnije'),
(156, 'izravnog'),
(886, 'izrazito'),
(794, 'izricanja'),
(83, 'izronimo'),
(145, 'izvan'),
(490, 'izvanredni'),
(311, 'izvorno'),
(53, 'jasno'),
(907, 'javno'),
(586, 'jazz'),
(90, 'jedan'),
(685, 'jedinom'),
(120, 'jedna'),
(712, 'jedne'),
(719, 'jednih'),
(312, 'jedno'),
(707, 'jednog'),
(317, 'jednoga'),
(704, 'jednoj'),
(541, 'jednom'),
(288, 'jednostavnost'),
(548, 'jednu'),
(877, 'jer'),
(146, 'jezične'),
(383, 'jezičnog'),
(205, 'jezika'),
(287, 'jezikom'),
(371, 'jezikoslovlje'),
(373, 'jezikoslovnih'),
(391, 'jezikoslovnim'),
(408, 'jezikoslovnoj'),
(412, 'jezikoslovnu'),
(203, 'jeziku'),
(26, 'još'),
(603, 'jourcenar'),
(611, 'jutarnju'),
(23, 'kad'),
(338, 'kada'),
(17, 'kako'),
(32, 'kao'),
(682, 'kaota'),
(150, 'karakteristika'),
(780, 'karakterna'),
(691, 'katkad'),
(608, 'kaže'),
(601, 'kinga'),
(116, 'ključne'),
(169, 'ključu'),
(451, 'klub'),
(489, 'kluba'),
(475, 'klubu'),
(827, 'knjiga'),
(868, 'knjige'),
(348, 'književnosti'),
(473, 'knjižničarstva'),
(134, 'kod'),
(722, 'kodeks'),
(35, 'koja'),
(244, 'koje'),
(81, 'kojeg'),
(114, 'kojem'),
(39, 'koji'),
(507, 'kojima'),
(228, 'kojoj'),
(96, 'koju'),
(366, 'koliko'),
(642, 'komuniciranje'),
(652, 'komunicirati'),
(662, 'komunikacije'),
(502, 'konferencija'),
(523, 'konferencijama'),
(63, 'konja'),
(231, 'konjem'),
(223, 'konji“'),
(139, 'konkretnoj'),
(751, 'konstantno'),
(147, 'konstrukcije'),
(380, 'konstruktivnog'),
(123, 'kontekstu'),
(803, 'kontingencija'),
(798, 'kontingenciji'),
(737, 'kontingencijom'),
(778, 'kora'),
(82, 'kraju'),
(856, 'kratki'),
(16, 'kritika'),
(893, 'krivim'),
(550, 'kronika'),
(84, 'kroz'),
(62, 'kruha'),
(471, 'kulturnih'),
(606, 'kurta'),
(700, 'labirintu'),
(808, 'lako'),
(168, 'larpurlartističkom'),
(593, 'levi-straussa'),
(594, 'levy-bruhla'),
(450, 'libros'),
(516, 'lida-e'),
(686, 'liku'),
(729, 'linearnu'),
(232, 'lirskog'),
(281, 'ljepotom'),
(544, 'ljetopisom'),
(663, 'ljudi'),
(653, 'ljudima'),
(258, 'ljudske'),
(779, 'ljuštura'),
(207, 'logičke'),
(370, 'logičnim'),
(558, 'lutanja'),
(579, 'mahlerovu'),
(186, 'majke'),
(605, 'maltesea'),
(629, 'manje'),
(328, 'manje-više'),
(602, 'margaret'),
(65, 'marije'),
(781, 'maska'),
(880, 'masovne'),
(60, 'mašte'),
(624, 'medije'),
(770, 'mega-raznovrsnosti'),
(142, 'metaforičku'),
(101, 'metapoetički'),
(414, 'metodologiju'),
(381, 'međudjelovanja'),
(417, 'međunarodno'),
(463, 'mijenjao'),
(198, 'misliš“'),
(352, 'mišljenja'),
(892, 'mistifikaciji'),
(677, 'mjesečara'),
(162, 'mjesta'),
(542, 'mjestu'),
(901, 'mnogih'),
(49, 'mnogim'),
(435, 'modela'),
(613, 'modernoga'),
(758, 'mogao'),
(485, 'mogu'),
(91, 'moj'),
(612, 'molitvu'),
(194, 'mora'),
(790, 'moralna'),
(721, 'moralni'),
(20, 'moralnih'),
(813, 'moralo'),
(183, 'moramo'),
(7, 'moreaua'),
(394, 'morfologije'),
(238, 'motiv'),
(218, 'motiva'),
(56, 'može'),
(97, 'možemo'),
(508, 'možete'),
(641, 'mreže'),
(910, 'načela'),
(529, 'nacije'),
(214, 'način'),
(661, 'načinima'),
(559, 'nadanja'),
(864, 'nadopunjen'),
(745, 'naime'),
(341, 'naizgled'),
(621, 'najrazličitijih'),
(433, 'najraznovrsnijih'),
(838, 'najvažnijih'),
(672, 'napokon'),
(875, 'naročito'),
(68, 'nas'),
(574, 'naše'),
(526, 'naši'),
(863, 'naslova'),
(69, 'naslovom'),
(538, 'nastavka'),
(495, 'nastojalo'),
(174, 'naukovanje'),
(170, 'navest'),
(736, 'naziva'),
(45, 'nazivan'),
(235, 'naznačen'),
(543, 'nazvao'),
(10, 'nbsp'),
(340, 'nečemu'),
(135, 'nekih'),
(809, 'nekim'),
(760, 'nekom'),
(768, 'neku'),
(141, 'nema'),
(316, 'nemogućnosti'),
(899, 'neočekivano'),
(521, 'nešto'),
(333, 'nevažno'),
(252, 'nevidljiva'),
(569, 'nije'),
(699, 'nit'),
(195, 'nitko'),
(564, 'njegovih'),
(335, 'njegovo'),
(795, 'njihov'),
(793, 'njihova'),
(404, 'njima'),
(259, 'noge'),
(720, 'novina'),
(731, 'nuklearnu'),
(840, 'obilježile'),
(908, 'objasniti'),
(11, 'objavljen'),
(889, 'objavljeno'),
(422, 'objavljivati'),
(131, 'oblicima'),
(210, 'oblik'),
(879, 'oblike'),
(191, 'obraća'),
(469, 'obrazovnih'),
(547, 'obuhvaćaju'),
(769, 'odliku'),
(615, 'odnosno'),
(121, 'odnosu'),
(427, 'odražavati'),
(321, 'oduvijek'),
(812, 'okolnostima'),
(540, 'okupivši'),
(93, 'okušati'),
(443, 'omogućiti'),
(1, 'omp'),
(337, 'onda'),
(560, 'oni'),
(309, 'ono'),
(153, 'općeniti'),
(885, 'opet'),
(415, 'opis'),
(384, 'opisa'),
(229, 'opisano'),
(245, 'opisuju'),
(165, 'opovrgavaju'),
(289, 'opravdava'),
(702, 'opredjeljivanjem'),
(571, 'opus'),
(356, 'opusu'),
(583, 'orffovu'),
(501, 'organizaciju'),
(279, 'originalnošću'),
(484, 'osijeku'),
(510, 'osmom'),
(460, 'osnivanja'),
(739, 'osobnosti'),
(771, 'ostati'),
(284, 'ostvarene'),
(567, 'ostvarenja'),
(298, 'ostvari'),
(468, 'ostvarivanje'),
(31, 'osuđivana'),
(763, 'osvjetljenju'),
(5, 'otok'),
(211, 'otpora'),
(874, 'ova'),
(105, 'ovaj'),
(270, 'ovakvog'),
(151, 'ove'),
(858, 'ovo'),
(167, 'ovog'),
(509, 'ovom'),
(723, 'pak'),
(201, 'patrijarhalnom'),
(678, 'pazenova'),
(163, 'pažljivom'),
(842, 'pedesetak'),
(871, 'pet'),
(457, 'petnaest'),
(339, 'pisao'),
(178, 'pjesama'),
(225, 'pjesma'),
(71, 'pjesme'),
(187, 'pjesmi'),
(324, 'pjesnička'),
(283, 'pjesničkih'),
(271, 'pjesničkog'),
(775, 'plašt'),
(592, 'platona'),
(59, 'plod'),
(179, 'počinje'),
(897, 'podmetanjima'),
(24, 'područje'),
(416, 'poduprt'),
(275, 'poezija'),
(152, 'poezije'),
(368, 'pogled'),
(50, 'pogrdnim'),
(132, 'pojavljuje'),
(354, 'pojedinačnome'),
(115, 'pojedine'),
(282, 'pojedinih'),
(260, 'pokislim'),
(904, 'pokret'),
(834, 'pokreta'),
(869, 'pokriva'),
(109, 'pokušaj'),
(297, 'pokušaja'),
(305, 'pokušati'),
(911, 'polazišta'),
(725, 'polimere'),
(646, 'politička'),
(902, 'političkih'),
(728, 'politiku'),
(824, 'polovici'),
(658, 'pomalo'),
(48, 'pomoćnikom“'),
(137, 'ponavljajućih'),
(515, 'poput'),
(513, 'pored'),
(866, 'posebice'),
(437, 'posebne'),
(520, 'posjećuju'),
(665, 'posjedovati'),
(527, 'posjetili'),
(841, 'posljednjih'),
(85, 'posljednju'),
(230, 'postajanje'),
(718, 'postaje'),
(486, 'postati'),
(320, 'postmodernih'),
(785, 'postojale'),
(342, 'posve'),
(319, 'pothvata'),
(496, 'poticati'),
(265, 'potkove'),
(332, 'potpuno'),
(107, 'potpunosti'),
(804, 'povijesna'),
(462, 'povijest'),
(701, 'povijesti'),
(27, 'povojima'),
(436, 'povremeno'),
(693, 'poželjni'),
(706, 'poznavanjem'),
(717, 'praćenjem'),
(666, 'pragmatična'),
(398, 'pragmatike'),
(617, 'pratiti'),
(274, 'precizne'),
(286, 'preciznim'),
(385, 'predstavljati'),
(829, 'pregled'),
(837, 'pregledom'),
(395, 'preko'),
(313, 'premda'),
(240, 'preobrazbe'),
(221, 'preobrazbu'),
(358, 'previda'),
(670, 'preživio'),
(764, 'pri'),
(888, 'prije'),
(817, 'prikazuje'),
(659, 'prilagođavati'),
(906, 'priliku'),
(423, 'priloge'),
(851, 'prilozima'),
(125, 'primjer'),
(441, 'prirediti'),
(43, 'pristaša'),
(887, 'prisutne'),
(674, 'privatni'),
(418, 'priznatim'),
(497, 'proaktivnost'),
(106, 'pročitati'),
(654, 'profila'),
(535, 'programa'),
(504, 'projekata'),
(215, 'projekt'),
(272, 'projekta'),
(267, 'promatranja“'),
(379, 'promicanje'),
(848, 'prošireno'),
(299, 'prostor'),
(237, 'provodni'),
(2, 'proza'),
(3, 'prozna'),
(250, 'prozore'),
(70, 'prve'),
(367, 'prvi'),
(861, 'prvo'),
(172, 'prvog'),
(726, 'psihoanalizu'),
(409, 'publici'),
(242, 'puno'),
(133, 'puta'),
(640, 'računalne'),
(651, 'rad'),
(138, 'radi'),
(537, 'radija'),
(631, 'radio'),
(503, 'radionica'),
(54, 'radnja'),
(399, 'radove'),
(234, 'ranije'),
(15, 'rasprava'),
(364, 'ratne'),
(345, 'ratnoj'),
(645, 'različita'),
(882, 'različite'),
(448, 'različitih'),
(129, 'različitim'),
(900, 'razliku'),
(792, 'razlozi'),
(505, 'raznih'),
(818, 'razvoj'),
(857, 'razvoja'),
(528, 'rađanje'),
(344, 'recimo'),
(487, 'redovni'),
(511, 'redu'),
(112, 'referencijalnog'),
(533, 'refleksija“'),
(784, 'relativističan'),
(410, 'relevantne'),
(375, 'republici'),
(734, 'richard'),
(349, 'rigidna'),
(127, 'riječ'),
(117, 'riječi'),
(192, 'riječima'),
(905, 'rijetko'),
(8, 'roman'),
(55, 'romana'),
(582, 'romaničku'),
(681, 'romantičara'),
(735, 'rorty'),
(740, 'rortyjev'),
(64, 'rukopis'),
(87, 'rukopisa'),
(494, 'rukovodstvo'),
(273, 'sagledati'),
(446, 'sagledavanje'),
(40, 'sam'),
(671, 'sam-svoj-enterpreneur'),
(58, 'samo'),
(148, 'samog'),
(756, 'samoga'),
(759, 'sasvim'),
(595, 'saussurea'),
(420, 'savjetom'),
(563, 'sažetak'),
(552, 'sažima'),
(873, 'sceni'),
(755, 'sebe'),
(439, 'sekcije'),
(397, 'semantike'),
(530, 'serijal'),
(263, 'šešira'),
(98, 'shvatiti'),
(580, 'simfoniju'),
(816, 'šimlešina'),
(852, 'šimlešinih'),
(350, 'simplifikacija'),
(92, 'sin'),
(396, 'sintakse'),
(425, 'široj'),
(386, 'široko'),
(224, 'sjajan'),
(467, 'skrb'),
(293, 'skriva'),
(243, 'slika'),
(301, 'slobode'),
(711, 'sloja'),
(811, 'slučajnim'),
(209, 'slučaju'),
(578, 'slušati'),
(292, 'smislu'),
(833, 'smjerova'),
(361, 'smještati'),
(269, 'snaga'),
(76, 'snažno'),
(227, 'sobi'),
(727, 'socijalnu'),
(637, 'softwarea'),
(628, 'spektar'),
(431, 'spomenutim'),
(746, 'sposobnost'),
(406, 'spoznaje'),
(805, 'srećom'),
(449, 'stajališta'),
(747, 'stalno'),
(632, 'stanica'),
(626, 'stanice'),
(690, 'stari'),
(262, 'starih'),
(831, 'stavova'),
(660, 'stavovima'),
(562, 'stenografski'),
(600, 'stephena'),
(336, 'stihovlje'),
(709, 'stila'),
(197, 'što'),
(826, 'stoljeća'),
(572, 'štoviše'),
(619, 'strani'),
(86, 'strofu'),
(705, 'struci'),
(724, 'stručnjak'),
(429, 'strujanja'),
(714, 'struje'),
(208, 'strukture'),
(452, 'studenata'),
(478, 'studenti'),
(480, 'studiraju'),
(110, 'stvaranja'),
(204, 'stvaranje'),
(94, 'stvaranju'),
(365, 'stvarnosne'),
(159, 'stvarnost'),
(347, 'stvarnosti'),
(233, 'subjekta'),
(692, 'subjektivno'),
(315, 'sudbinskoj'),
(643, 'sudjelovati'),
(296, 'suprotno'),
(854, 'suradnica'),
(853, 'suradnika'),
(401, 'susjedne'),
(113, 'sustava'),
(428, 'suvremena'),
(878, 'suvremene'),
(576, 'suvremeni'),
(411, 'suvremenu'),
(268, 'sva'),
(359, 'svakako'),
(667, 'svakodnevna'),
(616, 'svakodnevno'),
(285, 'svedenim'),
(477, 'svi'),
(657, 'svih'),
(314, 'sviješću'),
(79, 'svijet'),
(738, 'svijeta'),
(95, 'svijeta“'),
(202, 'svijetu'),
(648, 'svoj'),
(909, 'svoja'),
(459, 'svojeg'),
(498, 'svojih'),
(461, 'svoju'),
(444, 'svom'),
(213, 'taj'),
(294, 'tajno'),
(19, 'tako'),
(802, 'takva'),
(126, 'takve'),
(318, 'takvoga'),
(588, 'techno'),
(80, 'tekst'),
(149, 'teksta'),
(546, 'tekstovi'),
(850, 'tekstovima'),
(241, 'tekstu'),
(438, 'tematske'),
(447, 'teme'),
(351, 'temelju'),
(434, 'teoretskih'),
(29, 'teorija'),
(382, 'teorije'),
(413, 'teoriju'),
(573, 'tipičan'),
(620, 'tisak'),
(846, 'tiskanje'),
(531, 'tjednih'),
(898, 'toliko'),
(103, 'tom'),
(765, 'tome'),
(326, 'tomice'),
(568, 'tomu'),
(514, 'tradicionalnih'),
(390, 'tradicionalnim'),
(104, 'tragu'),
(185, 'transformaciju'),
(346, 'tranzicijskoj'),
(859, 'treće'),
(534, 'trećeg'),
(799, 'trenutka'),
(684, 'trezvenjaka'),
(636, 'tržištu'),
(762, 'tuđem'),
(561, 'tvore'),
(363, 'tzv'),
(748, 'udaljava'),
(72, 'ugasiti'),
(860, 'ujedno'),
(500, 'uključivanjem'),
(639, 'uključivati'),
(668, 'uključujući'),
(403, 'ukoliko'),
(257, 'ulaze'),
(708, 'umjetničkog'),
(432, 'unutar'),
(247, 'unutrašnjeg'),
(772, 'upečatljiv'),
(836, 'upotpunjeno'),
(189, 'upravnom'),
(295, 'upravo'),
(157, 'upućivanja'),
(144, 'upućuje'),
(74, 'uranja'),
(419, 'uređivačkim'),
(703, 'usavršavanjem'),
(108, 'uspio'),
(255, 'usta'),
(334, 'utkana'),
(815, 'utopije'),
(757, 'uvijek'),
(750, 'uvjerenja'),
(248, 'vanjskog'),
(876, 'važna'),
(67, 'već'),
(357, 'većih'),
(177, 'većina'),
(596, 'vergilija'),
(777, 'vide'),
(307, 'vidjeti'),
(89, 'više'),
(753, 'vlastita'),
(78, 'vlastiti'),
(749, 'vlastitih'),
(111, 'vlastitog'),
(800, 'vlastitoga'),
(226, 'vlastitoj'),
(696, 'vlastitu'),
(372, 'vodećih'),
(464, 'vodstvo'),
(249, 'vrata'),
(266, 'vrijedne'),
(832, 'vrijednosti'),
(22, 'vrijeme'),
(807, 'vrlo'),
(253, 'vrpca'),
(622, 'vrsta'),
(518, 'webcampa'),
(38, 'wells'),
(9, 'wellsa'),
(75, 'začudan'),
(280, 'začudnom'),
(466, 'zadaću'),
(400, 'zadiru'),
(870, 'zadnjih'),
(673, 'zadovoljavajući'),
(694, 'zahtjev'),
(426, 'zajednici'),
(387, 'zamišljen'),
(407, 'zanimljive'),
(424, 'zanimljivi'),
(630, 'zanimljivih'),
(774, 'zaogrnuti'),
(200, 'zarobljene'),
(687, 'zato'),
(633, 'zbiva'),
(635, 'zbivanja'),
(199, 'žene'),
(251, 'zidove'),
(308, 'živjeti'),
(675, 'život'),
(801, 'života'),
(254, 'zjenice'),
(896, 'zlonamjernim'),
(796, 'značaj'),
(206, 'značenja'),
(119, 'značenje'),
(300, 'značenjske'),
(776, 'znaju'),
(557, 'znanja'),
(454, 'znanosti'),
(715, 'znanstvene'),
(650, 'znanstveni'),
(18, 'znanstvenih'),
(196, 'znati'),
(303, 'zrak'),
(325, 'žudnja'),
(46, '„bezbožnikom“'),
(786, '„čvrste'),
(752, '„iskorak“'),
(256, '„kroz'),
(455, '„libros“'),
(222, '„ljudi'),
(193, '„ne'),
(88, '„neće'),
(532, '„refleksa'),
(655, '„sakupljati'),
(33, '„sotonska'),
(47, '„vražjim'),
(128, '„zub“');

-- --------------------------------------------------------

--
-- Table structure for table `submission_search_objects`
--

CREATE TABLE `submission_search_objects` (
  `object_id` bigint(20) NOT NULL,
  `submission_id` bigint(20) NOT NULL,
  `type` int(11) NOT NULL,
  `assoc_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `submission_search_objects`
--

INSERT INTO `submission_search_objects` (`object_id`, `submission_id`, `type`, `assoc_id`) VALUES
(1, 1, 1, 0),
(2, 1, 2, 0),
(3, 1, 4, 0),
(4, 1, 8, 0),
(5, 1, 32, 0),
(6, 1, 64, 0),
(7, 3, 1, 0),
(8, 3, 2, 0),
(9, 3, 4, 0),
(10, 3, 8, 0),
(11, 3, 32, 0),
(12, 3, 64, 0),
(13, 4, 1, 0),
(14, 4, 2, 0),
(15, 4, 4, 0),
(16, 4, 8, 0),
(17, 4, 32, 0),
(18, 4, 64, 0),
(19, 5, 1, 0),
(20, 5, 2, 0),
(21, 5, 4, 0),
(22, 5, 8, 0),
(23, 5, 32, 0),
(24, 5, 64, 0),
(25, 6, 1, 0),
(26, 6, 2, 0),
(27, 6, 4, 0),
(28, 6, 8, 0),
(29, 6, 32, 0),
(30, 6, 64, 0),
(31, 7, 1, 0),
(32, 7, 2, 0),
(33, 7, 4, 0),
(34, 7, 8, 0),
(35, 7, 32, 0),
(36, 7, 64, 0),
(37, 8, 1, 0),
(38, 8, 2, 0),
(39, 8, 4, 0),
(40, 8, 8, 0),
(41, 8, 32, 0),
(42, 8, 64, 0),
(43, 9, 1, 0),
(44, 9, 2, 0),
(45, 9, 4, 0),
(46, 9, 8, 0),
(47, 9, 32, 0),
(48, 9, 64, 0);

-- --------------------------------------------------------

--
-- Table structure for table `submission_search_object_keywords`
--

CREATE TABLE `submission_search_object_keywords` (
  `object_id` bigint(20) NOT NULL,
  `keyword_id` bigint(20) NOT NULL,
  `pos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `submission_search_object_keywords`
--

INSERT INTO `submission_search_object_keywords` (`object_id`, `keyword_id`, `pos`) VALUES
(1, 1, 0),
(1, 1, 1),
(7, 1, 0),
(7, 1, 1),
(13, 1, 0),
(13, 1, 1),
(19, 1, 0),
(19, 1, 1),
(25, 1, 0),
(25, 1, 1),
(31, 1, 0),
(31, 1, 1),
(37, 1, 0),
(37, 1, 1),
(43, 1, 0),
(43, 1, 1),
(2, 2, 0),
(3, 3, 0),
(3, 4, 1),
(8, 5, 0),
(9, 5, 3),
(8, 6, 1),
(9, 6, 4),
(8, 7, 2),
(9, 7, 5),
(9, 8, 0),
(9, 9, 1),
(9, 10, 2),
(9, 10, 6),
(15, 10, 1),
(15, 10, 5),
(15, 10, 128),
(15, 10, 147),
(15, 10, 151),
(15, 10, 207),
(15, 10, 210),
(15, 10, 239),
(15, 10, 242),
(39, 10, 16),
(39, 10, 46),
(39, 10, 49),
(39, 10, 185),
(39, 10, 382),
(39, 10, 384),
(45, 10, 1),
(45, 10, 4),
(9, 11, 7),
(9, 12, 8),
(39, 12, 18),
(9, 13, 9),
(9, 14, 10),
(9, 15, 11),
(9, 16, 12),
(9, 17, 13),
(39, 17, 96),
(39, 17, 181),
(39, 17, 305),
(45, 17, 102),
(9, 18, 14),
(9, 19, 15),
(27, 19, 16),
(27, 19, 66),
(27, 19, 88),
(39, 19, 361),
(39, 19, 405),
(45, 19, 110),
(9, 20, 16),
(9, 21, 17),
(9, 21, 23),
(9, 21, 52),
(21, 21, 55),
(45, 21, 43),
(9, 22, 18),
(9, 23, 19),
(9, 24, 20),
(9, 25, 21),
(9, 26, 22),
(9, 26, 47),
(9, 27, 24),
(9, 28, 25),
(9, 29, 26),
(9, 30, 27),
(9, 31, 28),
(9, 32, 29),
(15, 32, 41),
(15, 32, 51),
(15, 32, 81),
(15, 32, 107),
(15, 32, 143),
(15, 32, 220),
(15, 32, 297),
(15, 32, 306),
(15, 32, 311),
(21, 32, 5),
(27, 32, 0),
(27, 32, 32),
(39, 32, 387),
(45, 32, 23),
(9, 33, 30),
(9, 34, 31),
(9, 34, 42),
(45, 34, 20),
(45, 34, 130),
(9, 35, 32),
(15, 35, 75),
(15, 35, 90),
(39, 35, 27),
(9, 36, 33),
(9, 37, 34),
(9, 38, 35),
(9, 39, 36),
(15, 39, 217),
(27, 39, 34),
(27, 39, 61),
(33, 39, 38),
(45, 39, 72),
(9, 40, 37),
(9, 41, 38),
(21, 41, 63),
(9, 42, 39),
(9, 43, 40),
(9, 44, 41),
(9, 45, 43),
(9, 46, 44),
(9, 47, 45),
(9, 48, 46),
(9, 49, 48),
(9, 50, 49),
(9, 51, 50),
(9, 52, 51),
(15, 52, 260),
(39, 52, 20),
(9, 53, 53),
(9, 54, 54),
(9, 55, 55),
(9, 56, 56),
(15, 56, 49),
(15, 56, 266),
(39, 56, 212),
(39, 56, 341),
(9, 57, 57),
(39, 57, 184),
(39, 57, 194),
(39, 57, 257),
(39, 57, 342),
(9, 58, 58),
(15, 58, 268),
(21, 58, 39),
(39, 58, 23),
(39, 58, 116),
(39, 58, 259),
(39, 58, 261),
(39, 58, 263),
(39, 58, 266),
(39, 58, 269),
(39, 58, 343),
(9, 59, 59),
(9, 60, 60),
(14, 61, 0),
(15, 61, 2),
(15, 61, 148),
(14, 62, 1),
(15, 62, 3),
(15, 62, 149),
(14, 63, 2),
(15, 63, 4),
(15, 63, 150),
(15, 64, 0),
(15, 64, 48),
(15, 65, 6),
(15, 65, 274),
(15, 66, 7),
(15, 66, 275),
(15, 67, 8),
(15, 67, 303),
(33, 67, 101),
(39, 67, 370),
(15, 68, 9),
(21, 68, 17),
(15, 69, 10),
(15, 70, 11),
(15, 71, 12),
(15, 72, 13),
(15, 73, 14),
(15, 74, 15),
(15, 75, 16),
(15, 76, 17),
(15, 77, 18),
(15, 78, 19),
(39, 78, 321),
(39, 78, 331),
(15, 79, 20),
(21, 79, 4),
(15, 80, 21),
(15, 81, 22),
(15, 82, 23),
(15, 83, 24),
(15, 84, 25),
(15, 84, 254),
(33, 84, 10),
(45, 84, 89),
(15, 85, 26),
(15, 86, 27),
(15, 87, 28),
(15, 87, 189),
(15, 87, 198),
(15, 87, 272),
(15, 87, 296),
(15, 88, 29),
(15, 89, 30),
(33, 89, 110),
(39, 89, 122),
(15, 90, 31),
(15, 90, 195),
(21, 90, 60),
(27, 90, 1),
(39, 90, 252),
(39, 90, 274),
(15, 91, 32),
(15, 92, 33),
(15, 93, 34),
(15, 94, 35),
(15, 95, 36),
(15, 96, 37),
(15, 96, 138),
(15, 97, 38),
(15, 97, 139),
(15, 97, 185),
(15, 97, 193),
(15, 98, 39),
(15, 98, 186),
(15, 99, 40),
(15, 100, 42),
(15, 101, 43),
(15, 102, 44),
(15, 103, 45),
(15, 103, 178),
(15, 104, 46),
(15, 104, 190),
(15, 105, 47),
(15, 106, 50),
(15, 106, 194),
(33, 106, 85),
(33, 106, 108),
(15, 107, 52),
(15, 107, 309),
(15, 108, 53),
(15, 109, 54),
(15, 110, 55),
(15, 111, 56),
(15, 111, 172),
(15, 112, 57),
(15, 113, 58),
(15, 113, 174),
(15, 114, 59),
(15, 115, 60),
(27, 115, 93),
(15, 116, 61),
(15, 117, 62),
(15, 117, 72),
(15, 117, 86),
(15, 117, 165),
(15, 117, 228),
(15, 118, 63),
(15, 119, 64),
(15, 119, 95),
(15, 119, 302),
(15, 120, 65),
(39, 120, 391),
(15, 121, 66),
(15, 122, 67),
(45, 122, 91),
(15, 123, 68),
(15, 124, 69),
(15, 124, 269),
(15, 125, 70),
(15, 125, 125),
(15, 125, 205),
(15, 126, 71),
(15, 126, 191),
(15, 127, 73),
(45, 127, 113),
(15, 128, 74),
(15, 129, 76),
(15, 130, 77),
(15, 131, 78),
(15, 132, 79),
(15, 133, 80),
(15, 134, 82),
(15, 134, 130),
(15, 135, 83),
(15, 136, 84),
(33, 136, 25),
(33, 136, 81),
(45, 136, 128),
(15, 137, 85),
(15, 138, 87),
(39, 138, 301),
(15, 139, 88),
(15, 140, 89),
(15, 141, 91),
(15, 142, 92),
(15, 143, 93),
(15, 144, 94),
(15, 145, 96),
(33, 145, 114),
(15, 146, 97),
(15, 146, 313),
(15, 147, 98),
(15, 148, 99),
(15, 149, 100),
(15, 149, 120),
(15, 150, 101),
(15, 151, 102),
(15, 152, 103),
(21, 152, 74),
(15, 153, 104),
(15, 154, 105),
(15, 155, 106),
(15, 156, 108),
(15, 157, 109),
(15, 158, 110),
(15, 159, 111),
(15, 160, 112),
(15, 160, 276),
(15, 161, 113),
(15, 162, 114),
(15, 163, 115),
(15, 164, 116),
(15, 165, 117),
(15, 166, 118),
(15, 167, 119),
(15, 167, 152),
(15, 167, 188),
(15, 167, 295),
(45, 167, 65),
(15, 168, 121),
(15, 169, 122),
(15, 170, 123),
(15, 171, 124),
(15, 172, 126),
(15, 173, 127),
(15, 173, 153),
(15, 174, 129),
(15, 175, 131),
(15, 176, 132),
(15, 177, 133),
(15, 178, 134),
(15, 179, 135),
(15, 180, 136),
(15, 181, 137),
(15, 182, 140),
(33, 182, 16),
(39, 182, 398),
(15, 183, 141),
(15, 184, 142),
(15, 185, 144),
(15, 186, 145),
(15, 187, 146),
(15, 187, 238),
(15, 188, 154),
(15, 189, 155),
(15, 190, 156),
(15, 191, 157),
(15, 192, 158),
(15, 193, 159),
(15, 194, 160),
(20, 194, 2),
(39, 194, 59),
(39, 194, 73),
(39, 194, 95),
(39, 194, 112),
(39, 194, 142),
(39, 194, 150),
(39, 194, 156),
(39, 194, 165),
(39, 194, 173),
(39, 194, 183),
(39, 194, 188),
(39, 194, 193),
(39, 194, 293),
(39, 194, 333),
(15, 195, 161),
(15, 196, 162),
(39, 196, 60),
(39, 196, 70),
(39, 196, 74),
(39, 196, 90),
(39, 196, 128),
(15, 197, 163),
(27, 197, 17),
(39, 197, 129),
(39, 197, 211),
(39, 197, 273),
(39, 197, 355),
(39, 197, 372),
(39, 197, 388),
(39, 197, 395),
(39, 197, 399),
(45, 197, 27),
(45, 197, 121),
(15, 198, 164),
(15, 199, 166),
(15, 200, 167),
(15, 201, 168),
(15, 202, 169),
(39, 202, 327),
(39, 202, 356),
(45, 202, 11),
(15, 203, 170),
(15, 204, 171),
(15, 205, 173),
(15, 205, 292),
(15, 206, 175),
(15, 207, 176),
(15, 208, 177),
(15, 208, 271),
(15, 209, 179),
(15, 210, 180),
(15, 211, 181),
(15, 212, 182),
(15, 213, 183),
(15, 214, 184),
(15, 215, 187),
(15, 216, 192),
(15, 217, 196),
(15, 218, 197),
(15, 219, 199),
(15, 220, 200),
(15, 221, 201),
(15, 222, 202),
(15, 223, 203),
(15, 224, 204),
(15, 225, 206),
(15, 226, 208),
(15, 227, 209),
(15, 228, 211),
(21, 228, 49),
(39, 228, 326),
(15, 229, 212),
(15, 230, 213),
(15, 231, 214),
(15, 232, 215),
(15, 233, 216),
(15, 234, 218),
(15, 235, 219),
(15, 236, 221),
(15, 237, 222),
(15, 238, 223),
(15, 239, 224),
(15, 240, 225),
(15, 241, 226),
(15, 242, 227),
(15, 243, 229),
(15, 243, 285),
(15, 244, 230),
(15, 244, 286),
(27, 244, 85),
(33, 244, 100),
(33, 244, 116),
(45, 244, 33),
(15, 245, 231),
(15, 246, 232),
(15, 247, 233),
(15, 248, 234),
(15, 249, 235),
(15, 250, 236),
(15, 251, 237),
(15, 252, 240),
(15, 253, 241),
(15, 254, 243),
(15, 254, 246),
(15, 255, 244),
(15, 255, 255),
(15, 256, 245),
(15, 257, 247),
(15, 258, 248),
(15, 259, 249),
(15, 260, 250),
(15, 261, 251),
(15, 262, 252),
(15, 263, 253),
(15, 264, 256),
(15, 265, 257),
(15, 266, 258),
(15, 267, 259),
(15, 268, 261),
(15, 269, 262),
(44, 269, 0),
(45, 269, 2),
(15, 270, 263),
(15, 271, 264),
(15, 272, 265),
(15, 273, 267),
(15, 274, 270),
(15, 275, 273),
(15, 275, 308),
(15, 276, 277),
(15, 277, 278),
(15, 278, 279),
(15, 279, 280),
(15, 280, 281),
(15, 281, 282),
(15, 282, 283),
(15, 283, 284),
(15, 284, 287),
(15, 285, 288),
(15, 286, 289),
(15, 287, 290),
(15, 288, 291),
(15, 289, 293),
(15, 290, 294),
(15, 291, 298),
(15, 292, 299),
(15, 293, 300),
(15, 294, 301),
(15, 295, 304),
(15, 296, 305),
(15, 297, 307),
(15, 298, 310),
(15, 299, 312),
(15, 300, 314),
(15, 301, 315),
(15, 302, 316),
(20, 303, 0),
(20, 304, 1),
(21, 305, 0),
(21, 306, 1),
(39, 306, 310),
(21, 307, 2),
(39, 307, 312),
(21, 308, 3),
(21, 309, 6),
(39, 309, 272),
(21, 310, 7),
(21, 311, 8),
(21, 312, 9),
(21, 313, 10),
(39, 313, 337),
(21, 314, 11),
(21, 315, 12),
(21, 316, 13),
(21, 317, 14),
(21, 318, 15),
(21, 319, 16),
(21, 320, 18),
(21, 321, 19),
(21, 321, 52),
(21, 322, 20),
(21, 323, 21),
(21, 324, 22),
(21, 325, 23),
(21, 326, 24),
(21, 327, 25),
(21, 327, 65),
(21, 328, 26),
(21, 329, 27),
(21, 330, 28),
(21, 330, 45),
(21, 330, 71),
(27, 330, 45),
(27, 330, 51),
(27, 330, 83),
(39, 330, 123),
(39, 330, 144),
(39, 330, 246),
(39, 330, 255),
(39, 330, 287),
(39, 330, 365),
(45, 330, 117),
(21, 331, 29),
(21, 332, 30),
(21, 333, 31),
(21, 334, 32),
(21, 335, 33),
(21, 336, 34),
(21, 337, 35),
(21, 338, 36),
(45, 338, 106),
(21, 339, 37),
(21, 340, 38),
(21, 341, 40),
(21, 342, 41),
(21, 342, 79),
(21, 343, 42),
(21, 344, 43),
(21, 345, 44),
(21, 346, 46),
(21, 347, 47),
(21, 348, 48),
(21, 349, 50),
(21, 350, 51),
(21, 351, 53),
(21, 352, 54),
(21, 353, 56),
(21, 354, 57),
(21, 355, 58),
(21, 356, 59),
(21, 357, 61),
(21, 358, 62),
(21, 359, 64),
(21, 360, 66),
(21, 361, 67),
(21, 362, 68),
(21, 363, 69),
(21, 363, 72),
(21, 364, 70),
(21, 365, 73),
(21, 366, 75),
(21, 367, 76),
(21, 368, 77),
(21, 369, 78),
(21, 370, 80),
(26, 371, 0),
(27, 371, 7),
(27, 371, 77),
(27, 372, 2),
(27, 373, 3),
(27, 374, 4),
(33, 374, 90),
(27, 375, 5),
(27, 376, 6),
(45, 376, 58),
(45, 376, 79),
(27, 377, 8),
(45, 377, 134),
(27, 378, 9),
(27, 379, 10),
(33, 379, 28),
(27, 380, 11),
(27, 381, 12),
(27, 382, 13),
(27, 383, 14),
(27, 384, 15),
(27, 385, 18),
(27, 386, 19),
(27, 387, 20),
(27, 388, 21),
(27, 389, 22),
(27, 390, 23),
(27, 391, 24),
(27, 392, 25),
(27, 392, 72),
(27, 393, 26),
(27, 394, 27),
(27, 395, 28),
(27, 396, 29),
(27, 397, 30),
(27, 398, 31),
(27, 399, 33),
(27, 400, 35),
(27, 401, 36),
(27, 402, 37),
(27, 403, 38),
(27, 404, 39),
(27, 405, 40),
(27, 406, 41),
(27, 407, 42),
(27, 408, 43),
(27, 408, 64),
(27, 409, 44),
(27, 410, 46),
(27, 411, 47),
(27, 412, 48),
(27, 413, 49),
(27, 414, 50),
(27, 415, 52),
(27, 416, 53),
(27, 417, 54),
(27, 418, 55),
(27, 419, 56),
(27, 420, 57),
(27, 421, 58),
(27, 422, 59),
(27, 422, 79),
(27, 423, 60),
(27, 424, 62),
(27, 425, 63),
(27, 426, 65),
(27, 427, 67),
(27, 428, 68),
(27, 429, 69),
(27, 430, 70),
(27, 431, 71),
(27, 432, 73),
(45, 432, 25),
(27, 433, 74),
(27, 434, 75),
(27, 435, 76),
(27, 436, 78),
(27, 437, 80),
(27, 438, 81),
(27, 439, 82),
(27, 440, 84),
(27, 441, 86),
(27, 442, 87),
(27, 443, 89),
(27, 444, 90),
(27, 445, 91),
(27, 446, 92),
(27, 447, 94),
(27, 448, 95),
(39, 448, 170),
(27, 449, 96),
(32, 450, 0),
(33, 451, 0),
(33, 451, 13),
(33, 452, 1),
(33, 452, 27),
(33, 453, 2),
(33, 453, 29),
(33, 453, 58),
(33, 453, 105),
(33, 454, 3),
(33, 454, 30),
(33, 454, 41),
(33, 454, 59),
(33, 454, 106),
(33, 455, 4),
(33, 456, 5),
(33, 457, 6),
(33, 458, 7),
(45, 458, 37),
(45, 458, 105),
(33, 459, 8),
(33, 460, 9),
(33, 461, 11),
(33, 461, 17),
(33, 462, 12),
(33, 463, 14),
(33, 464, 15),
(33, 465, 18),
(33, 466, 19),
(33, 467, 20),
(33, 468, 21),
(33, 469, 22),
(33, 470, 23),
(33, 471, 24),
(33, 472, 26),
(33, 473, 31),
(33, 474, 32),
(33, 475, 33),
(33, 476, 34),
(33, 477, 35),
(33, 477, 55),
(33, 477, 63),
(39, 477, 338),
(33, 478, 36),
(33, 478, 57),
(33, 478, 65),
(33, 478, 104),
(33, 478, 118),
(33, 479, 37),
(33, 480, 39),
(33, 481, 40),
(33, 482, 42),
(33, 483, 43),
(33, 484, 44),
(33, 484, 62),
(33, 485, 45),
(33, 485, 53),
(33, 486, 46),
(33, 486, 54),
(33, 487, 47),
(33, 487, 64),
(33, 488, 48),
(33, 488, 51),
(33, 489, 49),
(33, 489, 52),
(33, 489, 69),
(33, 490, 50),
(33, 491, 56),
(33, 492, 60),
(33, 492, 66),
(33, 493, 61),
(33, 493, 67),
(33, 494, 68),
(33, 495, 70),
(33, 496, 71),
(33, 497, 72),
(33, 498, 73),
(33, 499, 74),
(33, 500, 75),
(33, 501, 76),
(33, 502, 77),
(33, 502, 95),
(33, 503, 78),
(33, 504, 79),
(33, 505, 80),
(33, 506, 82),
(33, 507, 83),
(33, 508, 84),
(33, 508, 107),
(33, 509, 86),
(33, 509, 91),
(33, 510, 87),
(33, 511, 88),
(33, 512, 89),
(33, 512, 92),
(33, 513, 93),
(39, 513, 131),
(33, 514, 94),
(33, 515, 96),
(39, 515, 195),
(33, 516, 97),
(33, 517, 98),
(33, 518, 99),
(33, 519, 102),
(33, 520, 103),
(33, 521, 109),
(39, 521, 394),
(33, 522, 111),
(33, 523, 112),
(33, 524, 113),
(33, 525, 115),
(33, 526, 117),
(33, 527, 119),
(38, 528, 0),
(39, 528, 0),
(39, 528, 47),
(39, 528, 385),
(39, 528, 389),
(38, 529, 1),
(39, 529, 1),
(39, 529, 48),
(39, 529, 386),
(39, 529, 390),
(39, 530, 2),
(39, 531, 3),
(39, 532, 4),
(39, 533, 5),
(39, 534, 6),
(39, 535, 7),
(39, 536, 8),
(39, 537, 9),
(39, 538, 10),
(39, 539, 11),
(39, 540, 12),
(39, 541, 13),
(39, 541, 205),
(39, 542, 14),
(39, 543, 15),
(39, 544, 17),
(39, 545, 19),
(39, 546, 21),
(39, 547, 22),
(39, 548, 24),
(39, 549, 25),
(39, 550, 26),
(39, 551, 28),
(39, 552, 29),
(39, 553, 30),
(39, 554, 31),
(39, 555, 32),
(39, 556, 33),
(39, 557, 34),
(39, 557, 178),
(39, 558, 35),
(39, 559, 36),
(39, 560, 37),
(39, 561, 38),
(39, 562, 39),
(39, 563, 40),
(39, 564, 41),
(39, 565, 42),
(39, 566, 43),
(39, 567, 44),
(39, 568, 45),
(39, 569, 50),
(39, 569, 209),
(39, 569, 409),
(45, 569, 122),
(39, 570, 51),
(39, 571, 52),
(39, 572, 53),
(39, 573, 54),
(39, 574, 55),
(39, 575, 56),
(39, 576, 57),
(39, 576, 275),
(39, 576, 290),
(39, 577, 58),
(39, 577, 291),
(39, 578, 61),
(39, 578, 119),
(39, 579, 62),
(39, 580, 63),
(39, 581, 64),
(39, 582, 65),
(39, 583, 66),
(39, 584, 67),
(39, 585, 68),
(39, 586, 69),
(39, 587, 71),
(39, 588, 72),
(39, 589, 75),
(39, 590, 76),
(39, 591, 77),
(39, 592, 78),
(39, 593, 79),
(39, 594, 80),
(39, 595, 81),
(39, 596, 82),
(39, 597, 83),
(39, 598, 84),
(39, 599, 85),
(39, 600, 86),
(39, 601, 87),
(39, 602, 88),
(39, 603, 89),
(39, 604, 91),
(39, 605, 92),
(39, 606, 93),
(39, 607, 94),
(39, 608, 97),
(39, 609, 98),
(39, 610, 99),
(39, 610, 151),
(39, 610, 189),
(39, 610, 251),
(39, 611, 100),
(39, 612, 101),
(39, 613, 102),
(39, 614, 103),
(39, 615, 104),
(39, 616, 105),
(39, 617, 106),
(39, 617, 113),
(39, 617, 133),
(39, 617, 146),
(39, 617, 220),
(39, 618, 107),
(39, 619, 108),
(39, 620, 109),
(39, 621, 110),
(39, 621, 159),
(39, 622, 111),
(39, 623, 114),
(39, 624, 115),
(45, 624, 90),
(39, 625, 117),
(39, 626, 118),
(39, 627, 120),
(39, 628, 121),
(39, 629, 124),
(39, 630, 125),
(39, 631, 126),
(39, 631, 247),
(39, 632, 127),
(39, 633, 130),
(39, 634, 132),
(39, 635, 134),
(39, 636, 135),
(39, 637, 136),
(39, 638, 137),
(39, 639, 138),
(39, 640, 139),
(39, 641, 140),
(39, 642, 141),
(39, 643, 143),
(39, 644, 145),
(39, 645, 147),
(39, 645, 175),
(39, 646, 148),
(39, 647, 149),
(45, 647, 74),
(39, 648, 152),
(39, 649, 153),
(39, 650, 154),
(39, 651, 155),
(39, 652, 157),
(39, 653, 158),
(39, 654, 160),
(39, 655, 161),
(39, 656, 162),
(39, 657, 163),
(39, 658, 164),
(39, 659, 166),
(39, 660, 167),
(39, 661, 168),
(39, 662, 169),
(45, 662, 94),
(39, 663, 171),
(39, 664, 172),
(39, 665, 174),
(39, 665, 294),
(39, 666, 176),
(39, 667, 177),
(39, 668, 179),
(39, 669, 180),
(39, 670, 182),
(39, 671, 186),
(39, 672, 187),
(39, 673, 190),
(39, 674, 191),
(39, 675, 192),
(39, 676, 196),
(39, 677, 197),
(39, 678, 198),
(39, 679, 199),
(39, 680, 200),
(39, 681, 201),
(39, 682, 202),
(39, 683, 203),
(39, 684, 204),
(39, 685, 206),
(39, 686, 207),
(39, 687, 208),
(39, 687, 350),
(39, 687, 354),
(39, 687, 371),
(39, 688, 210),
(39, 689, 213),
(39, 690, 214),
(39, 691, 215),
(39, 692, 216),
(39, 693, 217),
(39, 694, 218),
(39, 695, 219),
(39, 695, 336),
(39, 696, 221),
(39, 697, 222),
(39, 698, 223),
(39, 699, 224),
(39, 700, 225),
(39, 701, 226),
(39, 702, 227),
(39, 703, 228),
(39, 704, 229),
(39, 705, 230),
(39, 706, 231),
(39, 707, 232),
(39, 707, 235),
(39, 708, 233),
(39, 709, 234),
(39, 710, 236),
(39, 711, 237),
(39, 712, 238),
(39, 712, 241),
(39, 712, 245),
(39, 713, 239),
(39, 714, 240),
(39, 715, 242),
(39, 716, 243),
(39, 717, 244),
(39, 718, 248),
(39, 719, 249),
(39, 720, 250),
(39, 721, 253),
(39, 722, 254),
(39, 723, 256),
(39, 724, 258),
(39, 725, 260),
(39, 726, 262),
(39, 727, 264),
(39, 728, 265),
(39, 729, 267),
(39, 730, 268),
(39, 731, 270),
(39, 732, 271),
(39, 733, 276),
(39, 734, 277),
(39, 735, 278),
(39, 736, 279),
(39, 737, 280),
(39, 737, 282),
(39, 738, 281),
(39, 739, 283),
(39, 739, 325),
(39, 739, 349),
(39, 740, 284),
(39, 741, 285),
(39, 742, 286),
(39, 743, 288),
(39, 744, 289),
(39, 745, 292),
(39, 746, 295),
(39, 747, 296),
(39, 748, 297),
(39, 749, 298),
(39, 750, 299),
(39, 750, 306),
(39, 750, 364),
(39, 751, 300),
(39, 752, 302),
(39, 753, 303),
(39, 754, 304),
(39, 755, 307),
(39, 756, 308),
(39, 757, 309),
(39, 758, 311),
(39, 759, 313),
(39, 760, 314),
(39, 761, 315),
(39, 762, 316),
(39, 763, 317),
(39, 764, 318),
(39, 765, 319),
(39, 766, 320),
(39, 767, 322),
(39, 768, 323),
(39, 769, 324),
(39, 770, 328),
(39, 771, 329),
(39, 772, 330),
(39, 773, 332),
(39, 774, 334),
(39, 775, 335),
(39, 775, 344),
(39, 776, 339),
(39, 777, 340),
(39, 778, 345),
(39, 779, 346),
(39, 780, 347),
(39, 781, 348),
(39, 782, 351),
(39, 783, 352),
(39, 784, 353),
(39, 785, 357),
(39, 786, 358),
(39, 787, 359),
(39, 788, 360),
(39, 788, 404),
(39, 789, 362),
(39, 790, 363),
(39, 791, 366),
(39, 792, 367),
(39, 793, 368),
(39, 794, 369),
(39, 795, 373),
(39, 796, 374),
(39, 797, 375),
(39, 798, 376),
(39, 798, 378),
(39, 799, 377),
(39, 800, 379),
(39, 801, 380),
(39, 802, 381),
(39, 803, 383),
(39, 803, 393),
(39, 804, 392),
(39, 805, 396),
(39, 806, 397),
(39, 807, 400),
(39, 807, 406),
(39, 808, 401),
(39, 809, 402),
(39, 810, 403),
(39, 811, 407),
(39, 812, 408),
(39, 813, 410),
(39, 814, 411),
(44, 815, 1),
(45, 815, 3),
(45, 816, 0),
(45, 817, 5),
(45, 818, 6),
(45, 819, 7),
(45, 820, 8),
(45, 820, 86),
(45, 821, 9),
(45, 821, 87),
(45, 822, 10),
(45, 822, 88),
(45, 823, 12),
(45, 824, 13),
(45, 825, 14),
(45, 826, 15),
(45, 827, 16),
(45, 827, 81),
(45, 828, 17),
(45, 829, 18),
(45, 829, 53),
(45, 830, 19),
(45, 831, 21),
(45, 832, 22),
(45, 833, 24),
(45, 834, 26),
(45, 834, 57),
(45, 835, 28),
(45, 836, 29),
(45, 837, 30),
(45, 838, 31),
(45, 839, 32),
(45, 840, 34),
(45, 841, 35),
(45, 842, 36),
(45, 843, 38),
(45, 843, 56),
(45, 844, 39),
(45, 844, 55),
(45, 845, 40),
(45, 845, 108),
(45, 846, 41),
(45, 847, 42),
(45, 847, 64),
(45, 847, 109),
(45, 848, 44),
(45, 849, 45),
(45, 850, 46),
(45, 851, 47),
(45, 852, 48),
(45, 853, 49),
(45, 854, 50),
(45, 855, 51),
(45, 856, 52),
(45, 857, 54),
(45, 858, 59),
(45, 859, 60),
(45, 860, 61),
(45, 861, 62),
(45, 862, 63),
(45, 863, 66),
(45, 864, 67),
(45, 865, 68),
(45, 866, 69),
(45, 867, 70),
(45, 868, 71),
(45, 869, 73),
(45, 870, 75),
(45, 871, 76),
(45, 871, 104),
(45, 872, 77),
(45, 873, 78),
(45, 874, 80),
(45, 875, 82),
(45, 876, 83),
(45, 877, 84),
(45, 878, 85),
(45, 879, 92),
(45, 880, 93),
(45, 881, 95),
(45, 882, 96),
(45, 883, 97),
(45, 884, 98),
(45, 884, 125),
(45, 885, 99),
(45, 886, 100),
(45, 887, 101),
(45, 888, 103),
(45, 889, 107),
(45, 890, 111),
(45, 891, 112),
(45, 892, 114),
(45, 893, 115),
(45, 894, 116),
(45, 895, 118),
(45, 896, 119),
(45, 897, 120),
(45, 898, 123),
(45, 899, 124),
(45, 900, 126),
(45, 901, 127),
(45, 902, 129),
(45, 903, 131),
(45, 904, 132),
(45, 905, 133),
(45, 906, 135),
(45, 907, 136),
(45, 908, 137),
(45, 909, 138),
(45, 910, 139),
(45, 911, 140);

-- --------------------------------------------------------

--
-- Table structure for table `submission_settings`
--

CREATE TABLE `submission_settings` (
  `submission_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `submission_settings`
--

INSERT INTO `submission_settings` (`submission_id`, `locale`, `setting_name`, `setting_value`) VALUES
(1, '', 'workType', '2'),
(3, '', 'workType', '2'),
(4, '', 'workType', '2'),
(5, '', 'workType', '2'),
(7, '', 'workType', '2'),
(8, '', 'workType', '2'),
(9, '', 'workType', '2');

-- --------------------------------------------------------

--
-- Table structure for table `submission_supplementary_files`
--

CREATE TABLE `submission_supplementary_files` (
  `file_id` bigint(20) NOT NULL,
  `revision` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `submission_supplementary_files`
--

INSERT INTO `submission_supplementary_files` (`file_id`, `revision`) VALUES
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(17, 2),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(25, 1);

-- --------------------------------------------------------

--
-- Table structure for table `temporary_files`
--

CREATE TABLE `temporary_files` (
  `file_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `file_name` varchar(90) NOT NULL,
  `file_type` varchar(255) DEFAULT NULL,
  `file_size` bigint(20) NOT NULL,
  `original_file_name` varchar(127) DEFAULT NULL,
  `date_uploaded` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `temporary_files`
--

INSERT INTO `temporary_files` (`file_id`, `user_id`, `file_name`, `file_type`, `file_size`, `original_file_name`, `date_uploaded`) VALUES
(1, 1, 'xmlEB0A.tmp', 'text/xml', 1176, 'knjiga1.xml', '2020-09-04 09:38:49'),
(2, 1, 'pdfB78A.tmp', 'application/pdf', 549154, 'carobnjaci.pdf', '2020-09-04 09:41:52'),
(5, 1, 'jpg6B16.tmp', 'image/jpeg', 59481, 'cattle-skull-67740_1920___469x299.jpg', '2020-09-04 11:27:30'),
(6, 1, 'jpg449F.tmp', 'image/jpeg', 59481, 'cattle-skull-67740_1920___469x299.jpg', '2020-09-04 11:28:25'),
(9, 1, 'jpgDFC4.tmp', 'image/jpeg', 6114, 'preuzmi.jpg', '2020-09-04 11:45:28'),
(12, 1, 'jpg457B.tmp', 'image/jpeg', 10208, '202.jpg', '2020-09-04 12:11:02'),
(17, 1, 'jpgEEFA.tmp', 'image/jpeg', 19756, '32690324_1854345007956413_903315069268393984_n.jpg', '2020-09-04 12:49:59'),
(20, 1, 'jpgF530.tmp', 'image/jpeg', 42846, 'Radanje-nacije.jpg', '2020-09-04 13:03:07');

-- --------------------------------------------------------

--
-- Table structure for table `usage_stats_temporary_records`
--

CREATE TABLE `usage_stats_temporary_records` (
  `assoc_id` bigint(20) NOT NULL,
  `assoc_type` bigint(20) NOT NULL,
  `day` bigint(20) NOT NULL,
  `entry_time` bigint(20) NOT NULL,
  `metric` bigint(20) NOT NULL DEFAULT 1,
  `country_id` varchar(2) DEFAULT NULL,
  `region` varchar(2) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `load_id` varchar(255) NOT NULL,
  `file_type` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` bigint(20) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `url` varchar(2047) DEFAULT NULL,
  `phone` varchar(32) DEFAULT NULL,
  `mailing_address` varchar(255) DEFAULT NULL,
  `billing_address` varchar(255) DEFAULT NULL,
  `country` varchar(90) DEFAULT NULL,
  `locales` varchar(255) DEFAULT NULL,
  `gossip` text DEFAULT NULL,
  `date_last_email` datetime DEFAULT NULL,
  `date_registered` datetime NOT NULL,
  `date_validated` datetime DEFAULT NULL,
  `date_last_login` datetime NOT NULL,
  `must_change_password` tinyint(4) DEFAULT NULL,
  `auth_id` bigint(20) DEFAULT NULL,
  `auth_str` varchar(255) DEFAULT NULL,
  `disabled` tinyint(4) NOT NULL DEFAULT 0,
  `disabled_reason` text DEFAULT NULL,
  `inline_help` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `email`, `url`, `phone`, `mailing_address`, `billing_address`, `country`, `locales`, `gossip`, `date_last_email`, `date_registered`, `date_validated`, `date_last_login`, `must_change_password`, `auth_id`, `auth_str`, `disabled`, `disabled_reason`, `inline_help`) VALUES
(1, 'omp', '$2y$10$argpdM7YFJRnx5R3lUyGAujtweWgD1a8/EQi3rkU/s5K/enM0lkbK', 'namprojekt1@gmail.com', '', '', '', NULL, '', '', NULL, NULL, '2020-08-27 19:24:11', NULL, '2020-09-04 13:48:33', 0, NULL, NULL, 0, NULL, 1),
(2, 'omp1', '$2y$10$LnXG12.NkikoFDQTLwYtSONhOHQUdStkqJAM2TBm7W0pigyeLR/xa', 'mkolaric@ffos.hr', '', '', '', NULL, '', '', NULL, NULL, '2020-09-04 10:47:49', NULL, '2020-09-04 10:47:49', 1, NULL, NULL, 0, NULL, 1),
(3, 'omp2', '$2y$10$SufIokJDcbldoKuId1ww8OoX3fSJ/gx6lC/fELNd6Y6CoLPsgLjGq', 'aruzolcic@ffos.hr', '', '', '', NULL, '', '', NULL, NULL, '2020-09-04 10:49:04', NULL, '2020-09-04 13:21:27', 0, NULL, NULL, 0, NULL, 1),
(4, 'omp3', '$2y$10$LjKlB7kWZpQegHdJpTLyr.am3bGaZAvafrwxjk0a6w2VlhFZVOBJO', 'nduvnjak@ffos.hr', '', '', '', NULL, '', '', NULL, NULL, '2020-09-04 10:50:19', NULL, '2020-09-04 10:50:19', 1, NULL, NULL, 0, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_groups`
--

CREATE TABLE `user_groups` (
  `user_group_id` bigint(20) NOT NULL,
  `context_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  `is_default` tinyint(4) NOT NULL DEFAULT 0,
  `show_title` tinyint(4) NOT NULL DEFAULT 1,
  `permit_self_registration` tinyint(4) NOT NULL DEFAULT 0,
  `permit_metadata_edit` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_groups`
--

INSERT INTO `user_groups` (`user_group_id`, `context_id`, `role_id`, `is_default`, `show_title`, `permit_self_registration`, `permit_metadata_edit`) VALUES
(1, 0, 1, 1, 0, 0, 0),
(2, 1, 16, 1, 0, 0, 1),
(3, 1, 16, 1, 0, 0, 1),
(4, 1, 16, 1, 0, 0, 1),
(5, 1, 17, 1, 0, 0, 1),
(6, 1, 4097, 1, 0, 0, 0),
(7, 1, 4097, 1, 0, 0, 0),
(8, 1, 4097, 1, 0, 0, 0),
(9, 1, 4097, 1, 0, 0, 0),
(10, 1, 4097, 1, 0, 0, 0),
(11, 1, 4097, 1, 0, 0, 0),
(12, 1, 4097, 1, 0, 0, 0),
(13, 1, 65536, 1, 0, 1, 0),
(14, 1, 65536, 1, 0, 0, 0),
(15, 1, 65536, 1, 0, 1, 0),
(16, 1, 65536, 1, 0, 0, 0),
(17, 1, 4096, 1, 0, 0, 0),
(18, 1, 4096, 1, 0, 1, 0),
(19, 1, 1048576, 1, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_group_settings`
--

CREATE TABLE `user_group_settings` (
  `user_group_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` text DEFAULT NULL,
  `setting_type` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_group_settings`
--

INSERT INTO `user_group_settings` (`user_group_id`, `locale`, `setting_name`, `setting_value`, `setting_type`) VALUES
(1, 'en_US', 'name', 'Site Admin', 'string'),
(2, '', 'abbrevLocaleKey', 'default.groups.abbrev.manager', 'string'),
(2, '', 'nameLocaleKey', 'default.groups.name.manager', 'string'),
(2, 'en_US', 'abbrev', 'PM', 'string'),
(2, 'en_US', 'name', 'Press manager', 'string'),
(3, '', 'abbrevLocaleKey', 'default.groups.abbrev.editor', 'string'),
(3, '', 'nameLocaleKey', 'default.groups.name.editor', 'string'),
(3, 'en_US', 'abbrev', 'PE', 'string'),
(3, 'en_US', 'name', 'Press editor', 'string'),
(4, '', 'abbrevLocaleKey', 'default.groups.abbrev.productionEditor', 'string'),
(4, '', 'nameLocaleKey', 'default.groups.name.productionEditor', 'string'),
(4, 'en_US', 'abbrev', 'ProdE', 'string'),
(4, 'en_US', 'name', 'Production editor', 'string'),
(5, '', 'abbrevLocaleKey', 'default.groups.abbrev.sectionEditor', 'string'),
(5, '', 'nameLocaleKey', 'default.groups.name.sectionEditor', 'string'),
(5, 'en_US', 'abbrev', 'AcqE', 'string'),
(5, 'en_US', 'name', 'Series editor', 'string'),
(6, '', 'abbrevLocaleKey', 'default.groups.abbrev.copyeditor', 'string'),
(6, '', 'nameLocaleKey', 'default.groups.name.copyeditor', 'string'),
(6, 'en_US', 'abbrev', 'CE', 'string'),
(6, 'en_US', 'name', 'Copyeditor', 'string'),
(7, '', 'abbrevLocaleKey', 'default.groups.abbrev.designer', 'string'),
(7, '', 'nameLocaleKey', 'default.groups.name.designer', 'string'),
(7, 'en_US', 'abbrev', 'Design', 'string'),
(7, 'en_US', 'name', 'Designer', 'string'),
(8, '', 'abbrevLocaleKey', 'default.groups.abbrev.funding', 'string'),
(8, '', 'nameLocaleKey', 'default.groups.name.funding', 'string'),
(8, 'en_US', 'abbrev', 'FC', 'string'),
(8, 'en_US', 'name', 'Funding coordinator', 'string'),
(9, '', 'abbrevLocaleKey', 'default.groups.abbrev.indexer', 'string'),
(9, '', 'nameLocaleKey', 'default.groups.name.indexer', 'string'),
(9, 'en_US', 'abbrev', 'IND', 'string'),
(9, 'en_US', 'name', 'Indexer', 'string'),
(10, '', 'abbrevLocaleKey', 'default.groups.abbrev.layoutEditor', 'string'),
(10, '', 'nameLocaleKey', 'default.groups.name.layoutEditor', 'string'),
(10, 'en_US', 'abbrev', 'LE', 'string'),
(10, 'en_US', 'name', 'Layout Editor', 'string'),
(11, '', 'abbrevLocaleKey', 'default.groups.abbrev.marketing', 'string'),
(11, '', 'nameLocaleKey', 'default.groups.name.marketing', 'string'),
(11, 'en_US', 'abbrev', 'MS', 'string'),
(11, 'en_US', 'name', 'Marketing and sales coordinator', 'string'),
(12, '', 'abbrevLocaleKey', 'default.groups.abbrev.proofreader', 'string'),
(12, '', 'nameLocaleKey', 'default.groups.name.proofreader', 'string'),
(12, 'en_US', 'abbrev', 'PR', 'string'),
(12, 'en_US', 'name', 'Proofreader', 'string'),
(13, '', 'abbrevLocaleKey', 'default.groups.abbrev.author', 'string'),
(13, '', 'nameLocaleKey', 'default.groups.name.author', 'string'),
(13, 'en_US', 'abbrev', 'AU', 'string'),
(13, 'en_US', 'name', 'Author', 'string'),
(14, '', 'abbrevLocaleKey', 'default.groups.abbrev.volumeEditor', 'string'),
(14, '', 'nameLocaleKey', 'default.groups.name.volumeEditor', 'string'),
(14, 'en_US', 'abbrev', 'VE', 'string'),
(14, 'en_US', 'name', 'Volume editor', 'string'),
(15, '', 'abbrevLocaleKey', 'default.groups.abbrev.chapterAuthor', 'string'),
(15, '', 'nameLocaleKey', 'default.groups.name.chapterAuthor', 'string'),
(15, 'en_US', 'abbrev', 'CA', 'string'),
(15, 'en_US', 'name', 'Chapter Author', 'string'),
(16, '', 'abbrevLocaleKey', 'default.groups.abbrev.translator', 'string'),
(16, '', 'nameLocaleKey', 'default.groups.name.translator', 'string'),
(16, 'en_US', 'abbrev', 'Trans', 'string'),
(16, 'en_US', 'name', 'Translator', 'string'),
(17, '', 'abbrevLocaleKey', 'default.groups.abbrev.internalReviewer', 'string'),
(17, '', 'nameLocaleKey', 'default.groups.name.internalReviewer', 'string'),
(17, 'en_US', 'abbrev', 'IR', 'string'),
(17, 'en_US', 'name', 'Internal Reviewer', 'string'),
(18, '', 'abbrevLocaleKey', 'default.groups.abbrev.externalReviewer', 'string'),
(18, '', 'nameLocaleKey', 'default.groups.name.externalReviewer', 'string'),
(18, 'en_US', 'abbrev', 'ER', 'string'),
(18, 'en_US', 'name', 'External Reviewer', 'string'),
(19, '', 'abbrevLocaleKey', 'default.groups.abbrev.reader', 'string'),
(19, '', 'nameLocaleKey', 'default.groups.name.reader', 'string'),
(19, 'en_US', 'abbrev', 'Read', 'string'),
(19, 'en_US', 'name', 'Reader', 'string');

-- --------------------------------------------------------

--
-- Table structure for table `user_group_stage`
--

CREATE TABLE `user_group_stage` (
  `context_id` bigint(20) NOT NULL,
  `user_group_id` bigint(20) NOT NULL,
  `stage_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_group_stage`
--

INSERT INTO `user_group_stage` (`context_id`, `user_group_id`, `stage_id`) VALUES
(1, 3, 1),
(1, 3, 2),
(1, 3, 3),
(1, 3, 4),
(1, 3, 5),
(1, 4, 4),
(1, 4, 5),
(1, 5, 1),
(1, 5, 2),
(1, 5, 3),
(1, 5, 4),
(1, 5, 5),
(1, 6, 4),
(1, 7, 5),
(1, 8, 1),
(1, 8, 2),
(1, 8, 3),
(1, 9, 5),
(1, 10, 5),
(1, 11, 4),
(1, 12, 5),
(1, 13, 1),
(1, 13, 2),
(1, 13, 3),
(1, 13, 4),
(1, 13, 5),
(1, 14, 1),
(1, 14, 2),
(1, 14, 3),
(1, 14, 4),
(1, 14, 5),
(1, 15, 4),
(1, 15, 5),
(1, 16, 1),
(1, 16, 2),
(1, 16, 3),
(1, 16, 4),
(1, 16, 5),
(1, 17, 2),
(1, 18, 3);

-- --------------------------------------------------------

--
-- Table structure for table `user_interests`
--

CREATE TABLE `user_interests` (
  `user_id` bigint(20) NOT NULL,
  `controlled_vocab_entry_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user_settings`
--

CREATE TABLE `user_settings` (
  `user_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `assoc_type` bigint(20) DEFAULT 0,
  `assoc_id` bigint(20) DEFAULT 0,
  `setting_value` text DEFAULT NULL,
  `setting_type` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_settings`
--

INSERT INTO `user_settings` (`user_id`, `locale`, `setting_name`, `assoc_type`, `assoc_id`, `setting_value`, `setting_type`) VALUES
(1, 'en_US', 'givenName', 0, 0, 'omp', 'string'),
(1, 'en_US', 'familyName', 0, 0, 'omp', 'string'),
(1, 'en_US', 'biography', 0, 0, '', 'string'),
(1, 'en_US', 'signature', 0, 0, '', 'string'),
(1, 'en_US', 'affiliation', 0, 0, '', 'string'),
(1, 'en_US', 'preferredPublicName', 0, 0, '', 'string'),
(1, '', 'orcid', 0, 0, '', 'string'),
(2, 'en_US', 'biography', 0, 0, '', 'string'),
(2, 'en_US', 'signature', 0, 0, '', 'string'),
(2, 'en_US', 'affiliation', 0, 0, '', 'string'),
(2, 'en_US', 'givenName', 0, 0, 'Mihaela', 'string'),
(2, 'en_US', 'familyName', 0, 0, 'Kolarić', 'string'),
(2, 'en_US', 'preferredPublicName', 0, 0, '', 'string'),
(2, '', 'orcid', 0, 0, '', 'string'),
(3, 'en_US', 'biography', 0, 0, '', 'string'),
(3, 'en_US', 'signature', 0, 0, '', 'string'),
(3, 'en_US', 'affiliation', 0, 0, '', 'string'),
(3, 'en_US', 'givenName', 0, 0, 'Ana', 'string'),
(3, 'en_US', 'familyName', 0, 0, 'Ružolčić', 'string'),
(3, 'en_US', 'preferredPublicName', 0, 0, '', 'string'),
(3, '', 'orcid', 0, 0, '', 'string'),
(4, 'en_US', 'biography', 0, 0, '', 'string'),
(4, 'en_US', 'signature', 0, 0, '', 'string'),
(4, 'en_US', 'affiliation', 0, 0, '', 'string'),
(4, 'en_US', 'givenName', 0, 0, 'Nikolina', 'string'),
(4, 'en_US', 'familyName', 0, 0, 'Duvnjak', 'string'),
(4, 'en_US', 'preferredPublicName', 0, 0, '', 'string'),
(4, '', 'orcid', 0, 0, '', 'string');

-- --------------------------------------------------------

--
-- Table structure for table `user_user_groups`
--

CREATE TABLE `user_user_groups` (
  `user_group_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_user_groups`
--

INSERT INTO `user_user_groups` (`user_group_id`, `user_id`) VALUES
(1, 1),
(2, 1),
(2, 4),
(3, 1),
(3, 3),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(7, 2),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1);

-- --------------------------------------------------------

--
-- Table structure for table `versions`
--

CREATE TABLE `versions` (
  `major` int(11) NOT NULL DEFAULT 0,
  `minor` int(11) NOT NULL DEFAULT 0,
  `revision` int(11) NOT NULL DEFAULT 0,
  `build` int(11) NOT NULL DEFAULT 0,
  `date_installed` datetime NOT NULL,
  `current` tinyint(4) NOT NULL DEFAULT 0,
  `product_type` varchar(30) DEFAULT NULL,
  `product` varchar(30) DEFAULT NULL,
  `product_class_name` varchar(80) DEFAULT NULL,
  `lazy_load` tinyint(4) NOT NULL DEFAULT 0,
  `sitewide` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `versions`
--

INSERT INTO `versions` (`major`, `minor`, `revision`, `build`, `date_installed`, `current`, `product_type`, `product`, `product_class_name`, `lazy_load`, `sitewide`) VALUES
(1, 0, 0, 0, '2020-08-27 19:24:22', 1, 'plugins.metadata', 'dc11', '', 0, 0),
(1, 0, 0, 0, '2020-08-27 19:24:22', 1, 'plugins.metadata', 'mods34', '', 0, 0),
(1, 0, 0, 0, '2020-08-27 19:24:22', 1, 'plugins.metadata', 'openurl10', '', 0, 0),
(1, 0, 0, 0, '2020-08-27 19:24:22', 1, 'plugins.pubIds', 'doi', 'DOIPubIdPlugin', 0, 0),
(1, 0, 0, 0, '2020-08-27 19:24:22', 1, 'plugins.pubIds', 'urn', 'URNPubIdPlugin', 0, 0),
(1, 0, 0, 0, '2020-08-27 19:24:22', 1, 'plugins.blocks', 'browse', 'BrowseBlockPlugin', 1, 0),
(1, 0, 0, 0, '2020-08-27 19:24:22', 1, 'plugins.blocks', 'developedBy', 'DevelopedByBlockPlugin', 1, 0),
(1, 0, 0, 0, '2020-08-27 19:24:22', 1, 'plugins.blocks', 'information', 'InformationBlockPlugin', 1, 0),
(1, 0, 0, 0, '2020-08-27 19:24:22', 1, 'plugins.blocks', 'languageToggle', 'LanguageToggleBlockPlugin', 1, 0),
(1, 0, 0, 0, '2020-08-27 19:24:22', 1, 'plugins.blocks', 'makeSubmission', 'MakeSubmissionBlockPlugin', 1, 0),
(1, 0, 0, 0, '2020-08-27 19:24:22', 1, 'plugins.generic', 'acron', '', 0, 1),
(1, 2, 0, 0, '2020-08-27 19:24:22', 1, 'plugins.generic', 'customBlockManager', 'CustomBlockManagerPlugin', 1, 0),
(1, 0, 0, 0, '2020-08-27 19:24:22', 1, 'plugins.generic', 'dublinCoreMeta', 'DublinCoreMetaPlugin', 1, 0),
(1, 0, 0, 0, '2020-08-27 19:24:23', 1, 'plugins.generic', 'googleAnalytics', 'GoogleAnalyticsPlugin', 1, 0),
(1, 0, 0, 0, '2020-08-27 19:24:23', 1, 'plugins.generic', 'googleScholar', 'GoogleScholarPlugin', 1, 0),
(1, 0, 0, 0, '2020-08-27 19:24:23', 1, 'plugins.generic', 'htmlMonographFile', 'HtmlMonographFilePlugin', 1, 0),
(1, 0, 0, 0, '2020-08-27 19:24:23', 1, 'plugins.generic', 'pdfJsViewer', 'PdfJsViewerPlugin', 1, 0),
(1, 2, 0, 0, '2020-08-27 19:24:23', 1, 'plugins.generic', 'staticPages', 'StaticPagesPlugin', 1, 0),
(1, 0, 0, 0, '2020-08-27 19:24:23', 1, 'plugins.generic', 'tinymce', 'TinyMCEPlugin', 1, 0),
(1, 0, 0, 0, '2020-08-27 19:24:23', 1, 'plugins.generic', 'usageEvent', '', 0, 1),
(1, 0, 0, 0, '2020-08-27 19:24:23', 1, 'plugins.generic', 'usageStats', 'UsageStatsPlugin', 0, 1),
(1, 0, 0, 0, '2020-08-27 19:24:23', 1, 'plugins.generic', 'webFeed', 'WebFeedPlugin', 1, 0),
(1, 0, 0, 0, '2020-08-27 19:24:23', 1, 'plugins.themes', 'default', 'DefaultThemePlugin', 1, 0),
(1, 0, 0, 0, '2020-08-27 19:24:23', 1, 'plugins.importexport', 'csv', '', 0, 0),
(1, 0, 0, 0, '2020-08-27 19:24:23', 1, 'plugins.importexport', 'native', '', 0, 0),
(1, 0, 0, 0, '2020-08-27 19:24:23', 1, 'plugins.importexport', 'onix30', '', 0, 0),
(1, 0, 0, 0, '2020-08-27 19:24:23', 1, 'plugins.importexport', 'users', '', 0, 0),
(1, 0, 0, 0, '2020-08-27 19:24:23', 1, 'plugins.oaiMetadataFormats', 'dc', '', 0, 0),
(1, 0, 0, 0, '2020-08-27 19:24:24', 1, 'plugins.paymethod', 'manual', '', 0, 0),
(1, 0, 0, 0, '2020-08-27 19:24:24', 1, 'plugins.paymethod', 'paypal', '', 0, 0),
(3, 2, 1, 1, '2020-08-27 19:21:43', 1, 'core', 'omp', '', 0, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `access_keys`
--
ALTER TABLE `access_keys`
  ADD PRIMARY KEY (`access_key_id`),
  ADD KEY `access_keys_hash` (`key_hash`,`user_id`,`context`);

--
-- Indexes for table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`announcement_id`),
  ADD KEY `announcements_assoc` (`assoc_type`,`assoc_id`);

--
-- Indexes for table `announcement_settings`
--
ALTER TABLE `announcement_settings`
  ADD UNIQUE KEY `announcement_settings_pkey` (`announcement_id`,`locale`,`setting_name`),
  ADD KEY `announcement_settings_announcement_id` (`announcement_id`);

--
-- Indexes for table `announcement_types`
--
ALTER TABLE `announcement_types`
  ADD PRIMARY KEY (`type_id`),
  ADD KEY `announcement_types_assoc` (`assoc_type`,`assoc_id`);

--
-- Indexes for table `announcement_type_settings`
--
ALTER TABLE `announcement_type_settings`
  ADD UNIQUE KEY `announcement_type_settings_pkey` (`type_id`,`locale`,`setting_name`),
  ADD KEY `announcement_type_settings_type_id` (`type_id`);

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`author_id`),
  ADD KEY `authors_publication_id` (`publication_id`);

--
-- Indexes for table `author_settings`
--
ALTER TABLE `author_settings`
  ADD UNIQUE KEY `author_settings_pkey` (`author_id`,`locale`,`setting_name`),
  ADD KEY `author_settings_author_id` (`author_id`);

--
-- Indexes for table `auth_sources`
--
ALTER TABLE `auth_sources`
  ADD PRIMARY KEY (`auth_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`),
  ADD UNIQUE KEY `category_path` (`context_id`,`path`),
  ADD KEY `category_context_id` (`context_id`,`parent_id`);

--
-- Indexes for table `category_settings`
--
ALTER TABLE `category_settings`
  ADD UNIQUE KEY `category_settings_pkey` (`category_id`,`locale`,`setting_name`);

--
-- Indexes for table `citations`
--
ALTER TABLE `citations`
  ADD PRIMARY KEY (`citation_id`),
  ADD UNIQUE KEY `citations_publication_seq` (`publication_id`,`seq`),
  ADD KEY `citations_publication` (`publication_id`);

--
-- Indexes for table `citation_settings`
--
ALTER TABLE `citation_settings`
  ADD UNIQUE KEY `citation_settings_pkey` (`citation_id`,`locale`,`setting_name`),
  ADD KEY `citation_settings_citation_id` (`citation_id`);

--
-- Indexes for table `completed_payments`
--
ALTER TABLE `completed_payments`
  ADD PRIMARY KEY (`completed_payment_id`);

--
-- Indexes for table `controlled_vocabs`
--
ALTER TABLE `controlled_vocabs`
  ADD PRIMARY KEY (`controlled_vocab_id`),
  ADD UNIQUE KEY `controlled_vocab_symbolic` (`symbolic`,`assoc_type`,`assoc_id`);

--
-- Indexes for table `controlled_vocab_entries`
--
ALTER TABLE `controlled_vocab_entries`
  ADD PRIMARY KEY (`controlled_vocab_entry_id`),
  ADD KEY `controlled_vocab_entries_cv_id` (`controlled_vocab_id`,`seq`);

--
-- Indexes for table `controlled_vocab_entry_settings`
--
ALTER TABLE `controlled_vocab_entry_settings`
  ADD UNIQUE KEY `c_v_e_s_pkey` (`controlled_vocab_entry_id`,`locale`,`setting_name`),
  ADD KEY `c_v_e_s_entry_id` (`controlled_vocab_entry_id`);

--
-- Indexes for table `data_object_tombstones`
--
ALTER TABLE `data_object_tombstones`
  ADD PRIMARY KEY (`tombstone_id`),
  ADD KEY `data_object_tombstones_data_object_id` (`data_object_id`);

--
-- Indexes for table `data_object_tombstone_oai_set_objects`
--
ALTER TABLE `data_object_tombstone_oai_set_objects`
  ADD PRIMARY KEY (`object_id`),
  ADD KEY `data_object_tombstone_oai_set_objects_tombstone_id` (`tombstone_id`);

--
-- Indexes for table `data_object_tombstone_settings`
--
ALTER TABLE `data_object_tombstone_settings`
  ADD UNIQUE KEY `data_object_tombstone_settings_pkey` (`tombstone_id`,`locale`,`setting_name`),
  ADD KEY `data_object_tombstone_settings_tombstone_id` (`tombstone_id`);

--
-- Indexes for table `edit_decisions`
--
ALTER TABLE `edit_decisions`
  ADD PRIMARY KEY (`edit_decision_id`),
  ADD KEY `edit_decisions_submission_id` (`submission_id`),
  ADD KEY `edit_decisions_editor_id` (`editor_id`);

--
-- Indexes for table `email_log`
--
ALTER TABLE `email_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `email_log_assoc` (`assoc_type`,`assoc_id`);

--
-- Indexes for table `email_log_users`
--
ALTER TABLE `email_log_users`
  ADD UNIQUE KEY `email_log_user_id` (`email_log_id`,`user_id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`email_id`),
  ADD UNIQUE KEY `email_templates_email_key` (`email_key`,`context_id`);

--
-- Indexes for table `email_templates_default`
--
ALTER TABLE `email_templates_default`
  ADD PRIMARY KEY (`email_id`),
  ADD KEY `email_templates_default_email_key` (`email_key`);

--
-- Indexes for table `email_templates_default_data`
--
ALTER TABLE `email_templates_default_data`
  ADD UNIQUE KEY `email_templates_default_data_pkey` (`email_key`,`locale`);

--
-- Indexes for table `email_templates_settings`
--
ALTER TABLE `email_templates_settings`
  ADD UNIQUE KEY `email_settings_pkey` (`email_id`,`locale`,`setting_name`),
  ADD KEY `email_settings_email_id` (`email_id`);

--
-- Indexes for table `event_log`
--
ALTER TABLE `event_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `event_log_assoc` (`assoc_type`,`assoc_id`);

--
-- Indexes for table `event_log_settings`
--
ALTER TABLE `event_log_settings`
  ADD UNIQUE KEY `event_log_settings_pkey` (`log_id`,`setting_name`),
  ADD KEY `event_log_settings_log_id` (`log_id`);

--
-- Indexes for table `features`
--
ALTER TABLE `features`
  ADD UNIQUE KEY `press_features_pkey` (`assoc_type`,`assoc_id`,`submission_id`);

--
-- Indexes for table `filters`
--
ALTER TABLE `filters`
  ADD PRIMARY KEY (`filter_id`);

--
-- Indexes for table `filter_groups`
--
ALTER TABLE `filter_groups`
  ADD PRIMARY KEY (`filter_group_id`),
  ADD UNIQUE KEY `filter_groups_symbolic` (`symbolic`);

--
-- Indexes for table `filter_settings`
--
ALTER TABLE `filter_settings`
  ADD UNIQUE KEY `filter_settings_pkey` (`filter_id`,`locale`,`setting_name`),
  ADD KEY `filter_settings_id` (`filter_id`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`genre_id`);

--
-- Indexes for table `genre_settings`
--
ALTER TABLE `genre_settings`
  ADD UNIQUE KEY `genre_settings_pkey` (`genre_id`,`locale`,`setting_name`),
  ADD KEY `genre_settings_genre_id` (`genre_id`);

--
-- Indexes for table `identification_codes`
--
ALTER TABLE `identification_codes`
  ADD PRIMARY KEY (`identification_code_id`),
  ADD KEY `identification_codes_key` (`identification_code_id`,`publication_format_id`,`code`);

--
-- Indexes for table `item_views`
--
ALTER TABLE `item_views`
  ADD UNIQUE KEY `item_views_pkey` (`assoc_type`,`assoc_id`,`user_id`);

--
-- Indexes for table `library_files`
--
ALTER TABLE `library_files`
  ADD PRIMARY KEY (`file_id`),
  ADD KEY `library_files_context_id` (`context_id`),
  ADD KEY `library_files_submission_id` (`submission_id`);

--
-- Indexes for table `library_file_settings`
--
ALTER TABLE `library_file_settings`
  ADD UNIQUE KEY `library_file_settings_pkey` (`file_id`,`locale`,`setting_name`),
  ADD KEY `library_file_settings_id` (`file_id`);

--
-- Indexes for table `markets`
--
ALTER TABLE `markets`
  ADD PRIMARY KEY (`market_id`),
  ADD KEY `format_markets_pkey` (`market_id`,`publication_format_id`);

--
-- Indexes for table `metadata_descriptions`
--
ALTER TABLE `metadata_descriptions`
  ADD PRIMARY KEY (`metadata_description_id`),
  ADD KEY `metadata_descriptions_assoc` (`assoc_type`,`assoc_id`);

--
-- Indexes for table `metadata_description_settings`
--
ALTER TABLE `metadata_description_settings`
  ADD UNIQUE KEY `metadata_descripton_settings_pkey` (`metadata_description_id`,`locale`,`setting_name`),
  ADD KEY `metadata_description_settings_id` (`metadata_description_id`);

--
-- Indexes for table `metrics`
--
ALTER TABLE `metrics`
  ADD KEY `metrics_load_id` (`load_id`),
  ADD KEY `metrics_metric_type_context_id` (`metric_type`,`context_id`),
  ADD KEY `metrics_metric_type_submission_id_assoc_type` (`metric_type`,`submission_id`,`assoc_type`),
  ADD KEY `metrics_metric_type_submission_id_assoc` (`metric_type`,`context_id`,`assoc_type`,`assoc_id`);

--
-- Indexes for table `navigation_menus`
--
ALTER TABLE `navigation_menus`
  ADD PRIMARY KEY (`navigation_menu_id`);

--
-- Indexes for table `navigation_menu_items`
--
ALTER TABLE `navigation_menu_items`
  ADD PRIMARY KEY (`navigation_menu_item_id`);

--
-- Indexes for table `navigation_menu_item_assignments`
--
ALTER TABLE `navigation_menu_item_assignments`
  ADD PRIMARY KEY (`navigation_menu_item_assignment_id`);

--
-- Indexes for table `navigation_menu_item_assignment_settings`
--
ALTER TABLE `navigation_menu_item_assignment_settings`
  ADD UNIQUE KEY `navigation_menu_item_assignment_settings_pkey` (`navigation_menu_item_assignment_id`,`locale`,`setting_name`),
  ADD KEY `assignment_settings_navigation_menu_item_assignment_id` (`navigation_menu_item_assignment_id`);

--
-- Indexes for table `navigation_menu_item_settings`
--
ALTER TABLE `navigation_menu_item_settings`
  ADD UNIQUE KEY `navigation_menu_item_settings_pkey` (`navigation_menu_item_id`,`locale`,`setting_name`),
  ADD KEY `navigation_menu_item_settings_navigation_menu_id` (`navigation_menu_item_id`);

--
-- Indexes for table `new_releases`
--
ALTER TABLE `new_releases`
  ADD UNIQUE KEY `new_releases_pkey` (`assoc_type`,`assoc_id`,`submission_id`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`note_id`),
  ADD KEY `notes_assoc` (`assoc_type`,`assoc_id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`notification_id`),
  ADD KEY `notifications_context_id_user_id` (`context_id`,`user_id`,`level`),
  ADD KEY `notifications_context_id` (`context_id`,`level`),
  ADD KEY `notifications_assoc` (`assoc_type`,`assoc_id`),
  ADD KEY `notifications_user_id_level` (`user_id`,`level`);

--
-- Indexes for table `notification_mail_list`
--
ALTER TABLE `notification_mail_list`
  ADD PRIMARY KEY (`notification_mail_list_id`),
  ADD UNIQUE KEY `notification_mail_list_email_context` (`email`,`context`);

--
-- Indexes for table `notification_settings`
--
ALTER TABLE `notification_settings`
  ADD UNIQUE KEY `notification_settings_pkey` (`notification_id`,`locale`,`setting_name`);

--
-- Indexes for table `notification_subscription_settings`
--
ALTER TABLE `notification_subscription_settings`
  ADD PRIMARY KEY (`setting_id`);

--
-- Indexes for table `oai_resumption_tokens`
--
ALTER TABLE `oai_resumption_tokens`
  ADD UNIQUE KEY `oai_resumption_tokens_pkey` (`token`);

--
-- Indexes for table `plugin_settings`
--
ALTER TABLE `plugin_settings`
  ADD UNIQUE KEY `plugin_settings_pkey` (`plugin_name`,`context_id`,`setting_name`),
  ADD KEY `plugin_settings_plugin_name` (`plugin_name`);

--
-- Indexes for table `presses`
--
ALTER TABLE `presses`
  ADD PRIMARY KEY (`press_id`),
  ADD UNIQUE KEY `press_path` (`path`);

--
-- Indexes for table `press_settings`
--
ALTER TABLE `press_settings`
  ADD UNIQUE KEY `press_settings_pkey` (`press_id`,`locale`,`setting_name`),
  ADD KEY `press_settings_press_id` (`press_id`);

--
-- Indexes for table `publications`
--
ALTER TABLE `publications`
  ADD PRIMARY KEY (`publication_id`),
  ADD KEY `publications_submission_id` (`submission_id`),
  ADD KEY `publications_section_id` (`series_id`);

--
-- Indexes for table `publication_categories`
--
ALTER TABLE `publication_categories`
  ADD UNIQUE KEY `publication_categories_id` (`publication_id`,`category_id`);

--
-- Indexes for table `publication_dates`
--
ALTER TABLE `publication_dates`
  ADD PRIMARY KEY (`publication_date_id`),
  ADD KEY `format_publication_dates_pkey` (`publication_date_id`,`publication_format_id`,`role`);

--
-- Indexes for table `publication_formats`
--
ALTER TABLE `publication_formats`
  ADD PRIMARY KEY (`publication_format_id`),
  ADD KEY `publication_format_submission_id` (`submission_id`);

--
-- Indexes for table `publication_format_settings`
--
ALTER TABLE `publication_format_settings`
  ADD UNIQUE KEY `publication_format_settings_pkey` (`publication_format_id`,`locale`,`setting_name`),
  ADD KEY `publication_format_id_key` (`publication_format_id`);

--
-- Indexes for table `publication_settings`
--
ALTER TABLE `publication_settings`
  ADD UNIQUE KEY `publication_settings_pkey` (`publication_id`,`locale`,`setting_name`),
  ADD KEY `publication_settings_publication_id` (`publication_id`);

--
-- Indexes for table `queries`
--
ALTER TABLE `queries`
  ADD PRIMARY KEY (`query_id`),
  ADD KEY `queries_assoc_id` (`assoc_type`,`assoc_id`);

--
-- Indexes for table `query_participants`
--
ALTER TABLE `query_participants`
  ADD UNIQUE KEY `query_participants_pkey` (`query_id`,`user_id`);

--
-- Indexes for table `queued_payments`
--
ALTER TABLE `queued_payments`
  ADD PRIMARY KEY (`queued_payment_id`);

--
-- Indexes for table `representatives`
--
ALTER TABLE `representatives`
  ADD PRIMARY KEY (`representative_id`),
  ADD KEY `format_representatives_pkey` (`representative_id`,`submission_id`);

--
-- Indexes for table `review_assignments`
--
ALTER TABLE `review_assignments`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `review_assignments_submission_id` (`submission_id`),
  ADD KEY `review_assignments_reviewer_id` (`reviewer_id`),
  ADD KEY `review_assignments_form_id` (`review_form_id`),
  ADD KEY `review_assignments_reviewer_review` (`reviewer_id`,`review_id`);

--
-- Indexes for table `review_files`
--
ALTER TABLE `review_files`
  ADD UNIQUE KEY `review_files_pkey` (`review_id`,`file_id`),
  ADD KEY `review_files_review_id` (`review_id`);

--
-- Indexes for table `review_forms`
--
ALTER TABLE `review_forms`
  ADD PRIMARY KEY (`review_form_id`);

--
-- Indexes for table `review_form_elements`
--
ALTER TABLE `review_form_elements`
  ADD PRIMARY KEY (`review_form_element_id`),
  ADD KEY `review_form_elements_review_form_id` (`review_form_id`);

--
-- Indexes for table `review_form_element_settings`
--
ALTER TABLE `review_form_element_settings`
  ADD UNIQUE KEY `review_form_element_settings_pkey` (`review_form_element_id`,`locale`,`setting_name`),
  ADD KEY `review_form_element_settings_review_form_element_id` (`review_form_element_id`);

--
-- Indexes for table `review_form_responses`
--
ALTER TABLE `review_form_responses`
  ADD KEY `review_form_responses_pkey` (`review_form_element_id`,`review_id`);

--
-- Indexes for table `review_form_settings`
--
ALTER TABLE `review_form_settings`
  ADD UNIQUE KEY `review_form_settings_pkey` (`review_form_id`,`locale`,`setting_name`),
  ADD KEY `review_form_settings_review_form_id` (`review_form_id`);

--
-- Indexes for table `review_rounds`
--
ALTER TABLE `review_rounds`
  ADD PRIMARY KEY (`review_round_id`),
  ADD UNIQUE KEY `review_rounds_submission_id_stage_id_round_pkey` (`submission_id`,`stage_id`,`round`),
  ADD KEY `review_rounds_submission_id` (`submission_id`);

--
-- Indexes for table `review_round_files`
--
ALTER TABLE `review_round_files`
  ADD UNIQUE KEY `review_round_files_pkey` (`submission_id`,`review_round_id`,`file_id`,`revision`),
  ADD KEY `review_round_files_submission_id` (`submission_id`);

--
-- Indexes for table `sales_rights`
--
ALTER TABLE `sales_rights`
  ADD PRIMARY KEY (`sales_rights_id`),
  ADD KEY `format_sales_rights_pkey` (`sales_rights_id`,`publication_format_id`);

--
-- Indexes for table `scheduled_tasks`
--
ALTER TABLE `scheduled_tasks`
  ADD UNIQUE KEY `scheduled_tasks_pkey` (`class_name`);

--
-- Indexes for table `series`
--
ALTER TABLE `series`
  ADD PRIMARY KEY (`series_id`),
  ADD UNIQUE KEY `series_path` (`press_id`,`path`),
  ADD KEY `series_press_id` (`press_id`);

--
-- Indexes for table `series_categories`
--
ALTER TABLE `series_categories`
  ADD UNIQUE KEY `series_categories_id` (`series_id`,`category_id`);

--
-- Indexes for table `series_settings`
--
ALTER TABLE `series_settings`
  ADD UNIQUE KEY `series_settings_pkey` (`series_id`,`locale`,`setting_name`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD UNIQUE KEY `sessions_pkey` (`session_id`),
  ADD KEY `sessions_user_id` (`user_id`);

--
-- Indexes for table `site_settings`
--
ALTER TABLE `site_settings`
  ADD UNIQUE KEY `site_settings_pkey` (`setting_name`,`locale`);

--
-- Indexes for table `spotlights`
--
ALTER TABLE `spotlights`
  ADD PRIMARY KEY (`spotlight_id`),
  ADD KEY `spotlights_assoc` (`assoc_type`,`assoc_id`);

--
-- Indexes for table `spotlight_settings`
--
ALTER TABLE `spotlight_settings`
  ADD UNIQUE KEY `spotlight_settings_pkey` (`spotlight_id`,`locale`,`setting_name`),
  ADD KEY `spotlight_settings_id` (`spotlight_id`);

--
-- Indexes for table `stage_assignments`
--
ALTER TABLE `stage_assignments`
  ADD PRIMARY KEY (`stage_assignment_id`),
  ADD UNIQUE KEY `stage_assignment` (`submission_id`,`user_group_id`,`user_id`),
  ADD KEY `stage_assignments_submission_id` (`submission_id`),
  ADD KEY `stage_assignments_user_group_id` (`user_group_id`),
  ADD KEY `stage_assignments_user_id` (`user_id`);

--
-- Indexes for table `static_pages`
--
ALTER TABLE `static_pages`
  ADD PRIMARY KEY (`static_page_id`);

--
-- Indexes for table `static_page_settings`
--
ALTER TABLE `static_page_settings`
  ADD UNIQUE KEY `static_page_settings_pkey` (`static_page_id`,`locale`,`setting_name`),
  ADD KEY `static_page_settings_static_page_id` (`static_page_id`);

--
-- Indexes for table `subeditor_submission_group`
--
ALTER TABLE `subeditor_submission_group`
  ADD UNIQUE KEY `section_editors_pkey` (`context_id`,`assoc_id`,`user_id`,`assoc_type`),
  ADD KEY `subeditor_submission_group_context_id` (`context_id`),
  ADD KEY `subeditor_submission_group_assoc_id` (`assoc_type`,`assoc_id`),
  ADD KEY `subeditor_submission_group_user_id` (`user_id`);

--
-- Indexes for table `submissions`
--
ALTER TABLE `submissions`
  ADD PRIMARY KEY (`submission_id`),
  ADD KEY `submissions_context_id` (`context_id`);

--
-- Indexes for table `submission_artwork_files`
--
ALTER TABLE `submission_artwork_files`
  ADD PRIMARY KEY (`file_id`,`revision`);

--
-- Indexes for table `submission_chapters`
--
ALTER TABLE `submission_chapters`
  ADD PRIMARY KEY (`chapter_id`),
  ADD KEY `chapters_chapter_id` (`chapter_id`),
  ADD KEY `chapters_publication_id` (`publication_id`);

--
-- Indexes for table `submission_chapter_authors`
--
ALTER TABLE `submission_chapter_authors`
  ADD UNIQUE KEY `chapter_authors_pkey` (`author_id`,`chapter_id`);

--
-- Indexes for table `submission_chapter_settings`
--
ALTER TABLE `submission_chapter_settings`
  ADD UNIQUE KEY `submission_chapter_settings_pkey` (`chapter_id`,`locale`,`setting_name`),
  ADD KEY `submission_chapter_settings_chapter_id` (`chapter_id`);

--
-- Indexes for table `submission_comments`
--
ALTER TABLE `submission_comments`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `submission_comments_submission_id` (`submission_id`);

--
-- Indexes for table `submission_files`
--
ALTER TABLE `submission_files`
  ADD PRIMARY KEY (`file_id`,`revision`),
  ADD KEY `submission_files_submission_id` (`submission_id`),
  ADD KEY `submission_files_stage_assoc` (`file_stage`,`assoc_type`,`assoc_id`);

--
-- Indexes for table `submission_file_settings`
--
ALTER TABLE `submission_file_settings`
  ADD UNIQUE KEY `submission_file_settings_pkey` (`file_id`,`locale`,`setting_name`),
  ADD KEY `submission_file_settings_id` (`file_id`);

--
-- Indexes for table `submission_search_keyword_list`
--
ALTER TABLE `submission_search_keyword_list`
  ADD PRIMARY KEY (`keyword_id`),
  ADD UNIQUE KEY `submission_search_keyword_text` (`keyword_text`);

--
-- Indexes for table `submission_search_objects`
--
ALTER TABLE `submission_search_objects`
  ADD PRIMARY KEY (`object_id`);

--
-- Indexes for table `submission_search_object_keywords`
--
ALTER TABLE `submission_search_object_keywords`
  ADD UNIQUE KEY `submission_search_object_keywords_pkey` (`object_id`,`pos`),
  ADD KEY `submission_search_object_keywords_keyword_id` (`keyword_id`);

--
-- Indexes for table `submission_settings`
--
ALTER TABLE `submission_settings`
  ADD UNIQUE KEY `submission_settings_pkey` (`submission_id`,`locale`,`setting_name`),
  ADD KEY `submission_settings_submission_id` (`submission_id`);

--
-- Indexes for table `submission_supplementary_files`
--
ALTER TABLE `submission_supplementary_files`
  ADD PRIMARY KEY (`file_id`,`revision`);

--
-- Indexes for table `temporary_files`
--
ALTER TABLE `temporary_files`
  ADD PRIMARY KEY (`file_id`),
  ADD KEY `temporary_files_user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `users_username` (`username`),
  ADD UNIQUE KEY `users_email` (`email`);

--
-- Indexes for table `user_groups`
--
ALTER TABLE `user_groups`
  ADD PRIMARY KEY (`user_group_id`),
  ADD KEY `user_groups_user_group_id` (`user_group_id`),
  ADD KEY `user_groups_context_id` (`context_id`),
  ADD KEY `user_groups_role_id` (`role_id`);

--
-- Indexes for table `user_group_settings`
--
ALTER TABLE `user_group_settings`
  ADD UNIQUE KEY `user_group_settings_pkey` (`user_group_id`,`locale`,`setting_name`);

--
-- Indexes for table `user_group_stage`
--
ALTER TABLE `user_group_stage`
  ADD UNIQUE KEY `user_group_stage_pkey` (`context_id`,`user_group_id`,`stage_id`),
  ADD KEY `user_group_stage_context_id` (`context_id`),
  ADD KEY `user_group_stage_user_group_id` (`user_group_id`),
  ADD KEY `user_group_stage_stage_id` (`stage_id`);

--
-- Indexes for table `user_interests`
--
ALTER TABLE `user_interests`
  ADD UNIQUE KEY `u_e_pkey` (`user_id`,`controlled_vocab_entry_id`);

--
-- Indexes for table `user_settings`
--
ALTER TABLE `user_settings`
  ADD UNIQUE KEY `user_settings_pkey` (`user_id`,`locale`,`setting_name`,`assoc_type`,`assoc_id`),
  ADD KEY `user_settings_user_id` (`user_id`),
  ADD KEY `user_settings_locale_setting_name_index` (`setting_name`,`locale`);

--
-- Indexes for table `user_user_groups`
--
ALTER TABLE `user_user_groups`
  ADD UNIQUE KEY `user_user_groups_pkey` (`user_group_id`,`user_id`),
  ADD KEY `user_user_groups_user_group_id` (`user_group_id`),
  ADD KEY `user_user_groups_user_id` (`user_id`);

--
-- Indexes for table `versions`
--
ALTER TABLE `versions`
  ADD UNIQUE KEY `versions_pkey` (`product_type`,`product`,`major`,`minor`,`revision`,`build`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `access_keys`
--
ALTER TABLE `access_keys`
  MODIFY `access_key_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `announcement_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `announcement_types`
--
ALTER TABLE `announcement_types`
  MODIFY `type_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `author_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `auth_sources`
--
ALTER TABLE `auth_sources`
  MODIFY `auth_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `citations`
--
ALTER TABLE `citations`
  MODIFY `citation_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `completed_payments`
--
ALTER TABLE `completed_payments`
  MODIFY `completed_payment_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `controlled_vocabs`
--
ALTER TABLE `controlled_vocabs`
  MODIFY `controlled_vocab_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15011;

--
-- AUTO_INCREMENT for table `controlled_vocab_entries`
--
ALTER TABLE `controlled_vocab_entries`
  MODIFY `controlled_vocab_entry_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT for table `data_object_tombstones`
--
ALTER TABLE `data_object_tombstones`
  MODIFY `tombstone_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `data_object_tombstone_oai_set_objects`
--
ALTER TABLE `data_object_tombstone_oai_set_objects`
  MODIFY `object_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `edit_decisions`
--
ALTER TABLE `edit_decisions`
  MODIFY `edit_decision_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `email_log`
--
ALTER TABLE `email_log`
  MODIFY `log_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `email_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_templates_default`
--
ALTER TABLE `email_templates_default`
  MODIFY `email_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `event_log`
--
ALTER TABLE `event_log`
  MODIFY `log_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `filters`
--
ALTER TABLE `filters`
  MODIFY `filter_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `filter_groups`
--
ALTER TABLE `filter_groups`
  MODIFY `filter_group_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `genre_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `identification_codes`
--
ALTER TABLE `identification_codes`
  MODIFY `identification_code_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `library_files`
--
ALTER TABLE `library_files`
  MODIFY `file_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `markets`
--
ALTER TABLE `markets`
  MODIFY `market_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `metadata_descriptions`
--
ALTER TABLE `metadata_descriptions`
  MODIFY `metadata_description_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `navigation_menus`
--
ALTER TABLE `navigation_menus`
  MODIFY `navigation_menu_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `navigation_menu_items`
--
ALTER TABLE `navigation_menu_items`
  MODIFY `navigation_menu_item_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `navigation_menu_item_assignments`
--
ALTER TABLE `navigation_menu_item_assignments`
  MODIFY `navigation_menu_item_assignment_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `note_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `notification_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT for table `notification_mail_list`
--
ALTER TABLE `notification_mail_list`
  MODIFY `notification_mail_list_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notification_subscription_settings`
--
ALTER TABLE `notification_subscription_settings`
  MODIFY `setting_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `presses`
--
ALTER TABLE `presses`
  MODIFY `press_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `publications`
--
ALTER TABLE `publications`
  MODIFY `publication_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `publication_dates`
--
ALTER TABLE `publication_dates`
  MODIFY `publication_date_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `publication_formats`
--
ALTER TABLE `publication_formats`
  MODIFY `publication_format_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `queries`
--
ALTER TABLE `queries`
  MODIFY `query_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `queued_payments`
--
ALTER TABLE `queued_payments`
  MODIFY `queued_payment_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `representatives`
--
ALTER TABLE `representatives`
  MODIFY `representative_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `review_assignments`
--
ALTER TABLE `review_assignments`
  MODIFY `review_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `review_forms`
--
ALTER TABLE `review_forms`
  MODIFY `review_form_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `review_form_elements`
--
ALTER TABLE `review_form_elements`
  MODIFY `review_form_element_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `review_rounds`
--
ALTER TABLE `review_rounds`
  MODIFY `review_round_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sales_rights`
--
ALTER TABLE `sales_rights`
  MODIFY `sales_rights_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `series`
--
ALTER TABLE `series`
  MODIFY `series_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `spotlights`
--
ALTER TABLE `spotlights`
  MODIFY `spotlight_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `stage_assignments`
--
ALTER TABLE `stage_assignments`
  MODIFY `stage_assignment_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `static_pages`
--
ALTER TABLE `static_pages`
  MODIFY `static_page_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `submissions`
--
ALTER TABLE `submissions`
  MODIFY `submission_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `submission_chapters`
--
ALTER TABLE `submission_chapters`
  MODIFY `chapter_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `submission_comments`
--
ALTER TABLE `submission_comments`
  MODIFY `comment_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `submission_files`
--
ALTER TABLE `submission_files`
  MODIFY `file_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `submission_search_keyword_list`
--
ALTER TABLE `submission_search_keyword_list`
  MODIFY `keyword_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=912;

--
-- AUTO_INCREMENT for table `submission_search_objects`
--
ALTER TABLE `submission_search_objects`
  MODIFY `object_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `temporary_files`
--
ALTER TABLE `temporary_files`
  MODIFY `file_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_groups`
--
ALTER TABLE `user_groups`
  MODIFY `user_group_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
