-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 30, 2018 at 05:16 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.0.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `festive_mantra`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `firstname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_number` bigint(20) NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` int(11) NOT NULL,
  `state` int(11) NOT NULL,
  `city` int(11) NOT NULL,
  `postal_code` int(11) NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_img` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `firstname`, `lastname`, `email`, `contact_number`, `address`, `country`, `state`, `city`, `postal_code`, `password`, `profile_img`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Kapil', 'Khandelwal', 'admin@festevemantra.com', 844742, '89857 Kilback Villages Apt. 302\nPort Sharonfort, MA 41632-5354', 99, 18, 274, 55520, '$2y$10$w8PFGGl22h0whbcvci/sWus8Ono9csQgeqSGQaN/yjNLH6Zy/g0p.', '1535112653.jpg', 'gV6SButSnvEkY8KeXiyEb3fQQeCZXimXTub5fXdGFYxn1jD6RLX4VMFxbl2p', '2018-08-24 06:34:43', '2018-08-25 04:03:23'),
(2, 'Sherwood', 'Waelchi', 'otillman@example.net', 844, '8299 Farrell Parks Suite 115\nStreichborough, IA 41035', 99, 18, 274, 64969, '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '', 'poGbimknoZ', '2018-08-24 06:34:44', '2018-08-24 06:34:44'),
(3, 'Bradford', 'King', 'carlee51@example.net', 844, '4742 Volkman Mills Apt. 280\nJohathantown, DE 05952', 99, 18, 274, 98129, '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '', 'FLyevet8pw', '2018-08-24 06:34:44', '2018-08-24 06:34:44'),
(4, 'Corine', 'Heaney', 'yokuneva@example.com', 0, '719 Oma Canyon\nNorth Alba, NM 19007', 99, 18, 274, 2744, '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '', '4sa1aq9pPd', '2018-08-24 06:34:44', '2018-08-24 06:34:44'),
(5, 'Kattie', 'Jenkins', 'watsica.kenyatta@example.org', 0, '22940 Oda Throughway\nEast Jonatan, NM 31122', 99, 18, 274, 97566, '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '', '8CDpsO9U6m', '2018-08-24 06:34:44', '2018-08-24 06:34:44'),
(6, 'Arnold', 'Labadie', 'arempel@example.org', 855, '10761 Schumm Inlet Apt. 153\nEast Ollie, WY 12112-5660', 99, 18, 274, 45830, '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '', 'FNDvcEmbVr', '2018-08-24 06:34:44', '2018-08-24 06:34:44'),
(7, 'Esteban', 'Russel', 'gleichner.walton@example.org', 855, '91172 Weber Fall\nDickensbury, NE 72697-3317', 99, 18, 274, 4646, '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '', 'FHObSpdCTr', '2018-08-24 06:34:44', '2018-08-24 06:34:44'),
(8, 'Blake', 'Gerhold', 'alexa.hackett@example.com', 866, '3404 Satterfield Locks Apt. 539\nSouth Jasonville, NH 95579-1737', 99, 18, 274, 37659, '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '', 'zoWPaIJ4Es', '2018-08-24 06:34:44', '2018-08-24 06:34:44'),
(9, 'Ophelia', 'Beahan', 'ibogisich@example.com', 1, '69654 Linda Pine\nNitzschetown, MD 64095', 99, 18, 274, 39367, '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '', 'bezxDPfqjS', '2018-08-24 06:34:44', '2018-08-24 06:34:44'),
(10, 'Lexie', 'Stroman', 'salvatore26@example.com', 1, '4491 McGlynn Ridges Suite 220\nNorth Ephraim, MS 09026', 99, 18, 274, 84919, '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '', 'qVJuwnKsis', '2018-08-24 06:34:44', '2018-08-24 06:34:44');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL,
  `category_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `top_banner` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `right_banner` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mini_icon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `category_name`, `slug`, `description`, `icon`, `thumbnail`, `top_banner`, `right_banner`, `mini_icon`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Music', 'music', '<p><strong>Music</strong>&nbsp;is an art form and&nbsp;<a href=\"https://en.wikipedia.org/wiki/Culture\" title=\"Culture\">cultural</a>&nbsp;activity whose medium is sound organized in time. The common elements of music are&nbsp;<a href=\"https://en.wikipedia.org/wiki/Pitch_(music)\" title=\"Pitch (music)\">pitch</a>&nbsp;(which governs&nbsp;<a href=\"https://en.wikipedia.org/wiki/Melody\" title=\"Melody\">melody</a>&nbsp;and&nbsp;<a href=\"https://en.wikipedia.org/wiki/Harmony\" title=\"Harmony\">harmony</a>),&nbsp;<a href=\"https://en.wikipedia.org/wiki/Rhythm\" title=\"Rhythm\">rhythm</a>&nbsp;(and its associated concepts&nbsp;<a href=\"https://en.wikipedia.org/wiki/Tempo\" title=\"Tempo\">tempo</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Meter_(music)\" title=\"Meter (music)\">meter</a>, and&nbsp;<a href=\"https://en.wikipedia.org/wiki/Articulation_(music)\" title=\"Articulation (music)\">articulation</a>),&nbsp;<a href=\"https://en.wikipedia.org/wiki/Dynamics_(music)\" title=\"Dynamics (music)\">dynamics</a>&nbsp;(loudness and softness), and the sonic qualities of&nbsp;<a href=\"https://en.wikipedia.org/wiki/Timbre\" title=\"Timbre\">timbre</a>&nbsp;and&nbsp;<a href=\"https://en.wikipedia.org/wiki/Texture_(music)\" title=\"Texture (music)\">texture</a>&nbsp;(which are sometimes termed the &quot;color&quot; of a musical sound). Different&nbsp;<a href=\"https://en.wikipedia.org/wiki/Music_genre\" title=\"Music genre\">styles or types</a>&nbsp;of music may emphasize, de-emphasize or omit some of these elements. Music is performed with a vast range of&nbsp;<a href=\"https://en.wikipedia.org/wiki/Musical_instrument\" title=\"Musical instrument\">instruments</a>&nbsp;and vocal techniques ranging from singing to&nbsp;<a href=\"https://en.wikipedia.org/wiki/Rapping\" title=\"Rapping\">rapping</a>; there are solely&nbsp;<a href=\"https://en.wikipedia.org/wiki/Instrumental_music\" title=\"Instrumental music\">instrumental pieces</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/A_capella\" title=\"A capella\">solely vocal pieces</a>&nbsp;(such as songs without instrumental&nbsp;<a href=\"https://en.wikipedia.org/wiki/Accompaniment\" title=\"Accompaniment\">accompaniment</a>) and pieces that combine singing and instruments. The word derives from&nbsp;<a href=\"https://en.wikipedia.org/wiki/Greek_language\" title=\"Greek language\">Greek</a>&nbsp;<a href=\"https://en.wiktionary.org/wiki/%CE%BC%CE%BF%CF%85%CF%83%CE%B9%CE%BA%CE%AE#Ancient_Greek\" title=\"wikt:μουσική\">&mu;&omicron;&upsilon;&sigma;&iota;&kappa;ή</a>&nbsp;(<em>mousike</em>; &quot;art of the&nbsp;<a href=\"https://en.wikipedia.org/wiki/Muse\" title=\"Muse\">Muses</a>&quot;).<sup><a href=\"https://en.wikipedia.org/wiki/Music#cite_note-perseus.tufts.edu-1\">[1]</a></sup>&nbsp;See&nbsp;<a href=\"https://en.wikipedia.org/wiki/Glossary_of_musical_terminology\" title=\"Glossary of musical terminology\">glossary of musical terminology</a>.</p>', '1535113552.jpg', '1535113552.jpg', '1535113647.jpg', '1535113647.jpg', '1535113552.jpg', 1, '2018-08-24 06:55:52', '2018-08-24 06:57:27'),
(2, 0, 'Sports', 'sports', '<p>A sport is commonly defined as an athletic activity or skill and involves a degree of competition, such as<strong>tennis</strong>&nbsp;or&nbsp;<strong>basketball</strong>. Some games and many kinds of racing are called sports. A professional at a sport is called an athlete. Many people play sports with their friends.</p>', '1535113758.jpg', '1535113758.jpg', '1535113758.jpg', '1535113758.jpg', '', 1, '2018-08-24 06:59:18', '2018-08-24 06:59:18'),
(3, 0, 'Food', 'food', '<p><strong>Food</strong>&nbsp;is any substance<sup><a href=\"https://en.wikipedia.org/wiki/Food#cite_note-1\">[1]</a></sup>&nbsp;consumed to provide nutritional support for an organism. It is usually of&nbsp;<a href=\"https://en.wikipedia.org/wiki/Plant\" title=\"Plant\">plant</a>&nbsp;or&nbsp;<a href=\"https://en.wikipedia.org/wiki/Animal\" title=\"Animal\">animal</a>&nbsp;origin, and contains essential&nbsp;<a href=\"https://en.wikipedia.org/wiki/Nutrient\" title=\"Nutrient\">nutrients</a>, such as&nbsp;<a href=\"https://en.wikipedia.org/wiki/Carbohydrate\" title=\"Carbohydrate\">carbohydrates</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Fat\" title=\"Fat\">fats</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Protein_(nutrient)\" title=\"Protein (nutrient)\">proteins</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Vitamin\" title=\"Vitamin\">vitamins</a>, or&nbsp;<a href=\"https://en.wikipedia.org/wiki/Mineral_(nutrient)\" title=\"Mineral (nutrient)\">minerals</a>. The substance is&nbsp;<a href=\"https://en.wikipedia.org/wiki/Ingestion\" title=\"Ingestion\">ingested</a>&nbsp;by an&nbsp;<a href=\"https://en.wikipedia.org/wiki/Organism\" title=\"Organism\">organism</a>&nbsp;and assimilated by the organism&#39;s&nbsp;<a href=\"https://en.wikipedia.org/wiki/Cell_(biology)\" title=\"Cell (biology)\">cells</a>&nbsp;to provide&nbsp;<a href=\"https://en.wikipedia.org/wiki/Energy\" title=\"Energy\">energy</a>, maintain life, or stimulate growth.</p>\r\n\r\n<p>Historically,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Human\" title=\"Human\">humans</a>&nbsp;secured food through two methods:&nbsp;<a href=\"https://en.wikipedia.org/wiki/Hunter-gatherer\" title=\"Hunter-gatherer\">hunting and gathering</a>&nbsp;and&nbsp;<a href=\"https://en.wikipedia.org/wiki/Agriculture\" title=\"Agriculture\">agriculture</a>. Today, the majority of the&nbsp;<a href=\"https://en.wikipedia.org/wiki/Food_energy\" title=\"Food energy\">food energy</a>required by the ever&nbsp;<a href=\"https://en.wikipedia.org/wiki/Population_growth\" title=\"Population growth\">increasing</a>&nbsp;<a href=\"https://en.wikipedia.org/wiki/World_population\" title=\"World population\">population of the world</a>&nbsp;is supplied by the&nbsp;<a href=\"https://en.wikipedia.org/wiki/Food_industry\" title=\"Food industry\">food industry</a>.</p>', '1535113998.jpg', '1535113998.jpg', '1535113998.jpg', '1535113998.jpg', '', 1, '2018-08-24 07:03:18', '2018-08-24 07:03:18'),
(4, 0, 'Travel', 'travel', '<p>The origin of the word &quot;travel&quot; is most likely lost to history. The term &quot;travel&quot; may originate from the&nbsp;<a href=\"https://en.wikipedia.org/wiki/Old_French\" title=\"Old French\">Old French</a>&nbsp;word&nbsp;<em>travail</em>, which means &#39;work&#39;.<sup><a href=\"https://en.wikipedia.org/wiki/Travel#cite_note-3\">[3]</a></sup>&nbsp;According to the Merriam Webster dictionary, the first known use of the word&nbsp;<em>travel</em>&nbsp;was in the 14th century. It also states that the word comes from Middle English&nbsp;<em>travailen</em>,&nbsp;<em>travelen</em>&nbsp;(which means to torment, labor, strive, journey) and earlier from Old French&nbsp;<em>travailler</em>&nbsp;(which means to work strenuously, toil). In English we still occasionally use the words &quot;travail&quot;, which means struggle. According to Simon Winchester in his book&nbsp;<em>The Best Travelers&#39; Tales (2004)</em>, the words &quot;travel&quot; and &quot;travail&quot; both share an even more ancient root: a Roman instrument of torture called the&nbsp;<em>tripalium</em>&nbsp;(in Latin it means &quot;three stakes&quot;, as in to impale). This link may reflect the extreme difficulty of travel in ancient times. Today, travel may or may not be much easier depending upon the destination you choose (e.g.&nbsp;<a href=\"https://en.wikipedia.org/wiki/Mt._Everest\" title=\"Mt. Everest\">Mt. Everest</a>, the&nbsp;<a href=\"https://en.wikipedia.org/wiki/Amazon_rainforest\" title=\"Amazon rainforest\">Amazon rainforest</a>), how you plan to get there (<a href=\"https://en.wikipedia.org/wiki/Bus\" title=\"Bus\">tour bus</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Cruise_ship\" title=\"Cruise ship\">cruise ship</a>, or&nbsp;<a href=\"https://en.wikipedia.org/wiki/Bullock_cart\" title=\"Bullock cart\">oxcart</a>), and whether you decide to &quot;rough it&quot; (see&nbsp;<a href=\"https://en.wikipedia.org/wiki/Extreme_tourism\" title=\"Extreme tourism\">extreme tourism</a>&nbsp;and&nbsp;<a href=\"https://en.wikipedia.org/wiki/Adventure_travel\" title=\"Adventure travel\">adventure travel</a>). &quot;There&#39;s a big difference between simply being a tourist and being a true world traveler&quot;, notes travel writer Michael Kasum. This is, however, a contested distinction as academic work on the cultures and sociology of travel has noted.<sup><a href=\"https://en.wikipedia.org/wiki/Travel#cite_note-4\">[4]</a></sup></p>', '1535114095.jpg', '1535114095.jpg', '1535114095.jpg', '1535114095.jpg', '', 1, '2018-08-24 07:04:55', '2018-08-24 07:04:55'),
(5, 0, 'DJ Party', 'dj-party', '<p>A&nbsp;<strong>disc jockey</strong>, often abbreviated as&nbsp;<strong>DJ</strong>, is a person who plays existing recorded&nbsp;<a href=\"https://en.wikipedia.org/wiki/Music\" title=\"Music\">music</a>&nbsp;for a live audience. Most common types of DJs include&nbsp;<a href=\"https://en.wikipedia.org/wiki/Radio_personality\" title=\"Radio personality\">radio DJ</a>, club DJ who performs at a&nbsp;<a href=\"https://en.wikipedia.org/wiki/Nightclub\" title=\"Nightclub\">nightclub</a>&nbsp;or&nbsp;<a href=\"https://en.wikipedia.org/wiki/Music_festival\" title=\"Music festival\">music festival</a>&nbsp;and&nbsp;<a href=\"https://en.wikipedia.org/wiki/Turntablism\" title=\"Turntablism\">turntablist</a>&nbsp;who uses record players, usually&nbsp;<a href=\"https://en.wikipedia.org/wiki/Turntable\" title=\"Turntable\">turntables</a>, to manipulate sounds on&nbsp;<a href=\"https://en.wikipedia.org/wiki/Phonograph_record\" title=\"Phonograph record\">phonograph records</a>. Originally, the disc in disc jockey referred to&nbsp;<a href=\"https://en.wikipedia.org/wiki/Gramophone_record\" title=\"Gramophone record\">gramophone records</a>, but now DJ is used as an all-encompassing term to describe someone who mixes recorded music from any source, including&nbsp;<a href=\"https://en.wikipedia.org/wiki/Compact_cassette\" title=\"Compact cassette\">cassettes</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Compact_disc\" title=\"Compact disc\">CDs</a>&nbsp;or&nbsp;<a href=\"https://en.wikipedia.org/wiki/Digital_audio_file\" title=\"Digital audio file\">digital audio files</a>&nbsp;on a&nbsp;<a href=\"https://en.wikipedia.org/wiki/CDJ\" title=\"CDJ\">CDJ</a>&nbsp;or&nbsp;<a href=\"https://en.wikipedia.org/wiki/Laptop\" title=\"Laptop\">laptop</a>. The title DJ is commonly used by DJs in front of their real names or adopted&nbsp;<a href=\"https://en.wikipedia.org/wiki/Pseudonym\" title=\"Pseudonym\">pseudonyms</a>&nbsp;or&nbsp;<a href=\"https://en.wikipedia.org/wiki/Stage_name\" title=\"Stage name\">stage names</a>.</p>', '1535114178.jpg', '1535114178.jpg', '1535114178.jpg', '1535114178.jpg', '', 1, '2018-08-24 07:06:18', '2018-08-24 07:06:18'),
(6, 0, 'Conference', 'conference', '<p>Conferences are usually composed of various&nbsp;<a href=\"https://en.wikipedia.org/wiki/Presentation\" title=\"Presentation\">presentations</a>. They tend to be short and concise, with a time span of about 10 to 30 minutes;&nbsp;<a href=\"https://en.wikipedia.org/wiki/Presentation\" title=\"Presentation\">presentations</a>&nbsp;are usually followed by a&nbsp;<a href=\"https://en.wikipedia.org/wiki/Discussion\" title=\"Discussion\">discussion</a>. The work may be bundled in written form as&nbsp;<a href=\"https://en.wikipedia.org/wiki/Academic_paper\" title=\"Academic paper\">academic papers</a>&nbsp;and&nbsp;<a href=\"https://en.wikipedia.org/wiki/Publish\" title=\"Publish\">published</a>&nbsp;as the conference&nbsp;<a href=\"https://en.wikipedia.org/wiki/Proceedings\" title=\"Proceedings\">proceedings</a>.</p>\r\n\r\n<p>Usually a conference will include&nbsp;<a href=\"https://en.wikipedia.org/wiki/Keynote_speaker\" title=\"Keynote speaker\">keynote speakers</a>&nbsp;(often, scholars of some standing, but sometimes individuals from outside academia). The keynote lecture is often longer, lasting sometimes up to an hour and a half, particularly if there are several keynote speakers on a&nbsp;<a href=\"https://en.wikipedia.org/w/index.php?title=Convention_panel&amp;action=edit&amp;redlink=1\" title=\"Convention panel (page does not exist)\">panel</a>.</p>', '1535114351.jpg', '1535114351.jpg', '1535114351.jpg', '1535114351.jpg', '', 1, '2018-08-24 07:09:11', '2018-08-24 07:09:11'),
(7, 0, 'Skill Development', 'skill-development', '<p>Skill Development means developing yourself and your skill sets to add value for the organization and for your own career development. Fostering an attitude of appreciation for lifelong learning is the key to workplace success. Continuously learning and developing one&#39;s skills requires identifying the skills needed for&nbsp;<a href=\"https://hr.berkeley.edu/development/professional-development/uc-berkeley-competencies\">mobility</a>&nbsp;at Cal, and then successfully seeking out trainings or on-the-job opportunities for developing those skills.</p>\r\n\r\n<p>Developing your skills begins with assessing which skills are important for your desired career development. Read about career skills in the&nbsp;<a href=\"https://hr.berkeley.edu/development/career-development/self-assessment\">self-assessment</a>&nbsp;section of this website.&nbsp;<a href=\"https://hr.berkeley.edu/development/career-development/career-management/relationship-building/managing-up\">Speak with your supervisor or manager</a>&nbsp;and other career mentors to identify the types of skills that will help move you forward in your career.</p>', '1535114436.jpg', '1535114436.jpg', '1535114436.jpg', '1535114436.jpg', '', 1, '2018-08-24 07:10:36', '2018-08-24 07:10:36');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_category` int(11) NOT NULL,
  `event_type` int(11) NOT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `event_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_top_banner` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `organiser_id` int(11) NOT NULL,
  `event_location` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` int(11) NOT NULL,
  `state` int(11) NOT NULL,
  `country` int(11) NOT NULL,
  `event_document` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ticket_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `website_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitter_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `linked_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instagram_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `googleplus_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `title`, `slug`, `event_category`, `event_type`, `short_description`, `description`, `start_date`, `end_date`, `start_time`, `end_time`, `event_image`, `event_top_banner`, `organiser_id`, `event_location`, `event_address`, `city`, `state`, `country`, `event_document`, `ticket_url`, `website_url`, `facebook_id`, `twitter_id`, `linked_id`, `instagram_id`, `googleplus_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'First Music Event', 'first-music-event', 1, 1, '<p>A concert is a live&nbsp;<strong>music</strong>&nbsp;performance in front of an audience. The performance may be by a single musician, sometimes then called a recital, or by a&nbsp;<strong>musical</strong>ensemble, such as an orchestra, choir, or band. ... Concerts often require live<strong>event</strong>&nbsp;support with professional audio equipment.</p>', '<p>A concert is a live&nbsp;<strong>music</strong>&nbsp;performance in front of an audience. The performance may be by a single musician, sometimes then called a recital, or by a&nbsp;<strong>musical</strong>ensemble, such as an orchestra, choir, or band. ... Concerts often require live<strong>event</strong>&nbsp;support with professional audio equipment.</p>', '2018-08-25', '2018-09-08', '15:15:00', '18:15:00', '1535642054.jpg', '1535642054.jpg', 2, 'Tower 4B', 'Dlf Corporate Park', 132, 12, 0, '', '', '', '', '', '', '', '', 1, '2018-08-25 04:05:17', '2018-08-30 09:44:14'),
(2, 'Second Music Event', 'second-music-event', 1, 1, '<p>short</p>', '<p>long</p>', '2018-08-26', '2018-08-30', '01:30:00', '13:30:00', '1535551199.jpg', '1535641658.jpg', 1, '', '', 0, 0, 0, '', '', '', '', '', '', '', '', 1, '2018-08-25 14:24:16', '2018-08-30 09:37:39');

-- --------------------------------------------------------

--
-- Table structure for table `event_schedules`
--

CREATE TABLE `event_schedules` (
  `id` int(10) UNSIGNED NOT NULL,
  `event_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `from_time` time NOT NULL,
  `to_time` time NOT NULL,
  `activity` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `event_schedules`
--

INSERT INTO `event_schedules` (`id`, `event_id`, `title`, `date`, `from_time`, `to_time`, `activity`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'First Day Morning', '2018-08-25', '09:00:00', '12:00:00', '', 1, NULL, NULL),
(2, 1, 'First Day AfterNoon', '2018-08-25', '01:00:00', '04:00:00', '', 1, NULL, NULL),
(3, 1, 'First Day Night', '2018-08-25', '06:00:00', '09:00:00', '', 1, NULL, NULL),
(4, 1, 'Second Day Morning', '2018-08-26', '09:00:00', '12:00:00', '', 1, NULL, NULL),
(5, 1, 'Second Day AfterNoon', '2018-08-26', '01:00:00', '04:00:00', '', 1, NULL, NULL),
(6, 1, 'Second Day Night', '2018-08-26', '06:00:00', '09:00:00', '', 1, NULL, NULL),
(7, 2, 'First Day Morning', '2018-08-25', '09:00:00', '12:00:00', '', 1, NULL, NULL),
(8, 2, 'First Day AfterNoon', '2018-08-25', '01:00:00', '04:00:00', '', 1, NULL, NULL),
(9, 2, 'First Day Night', '2018-08-25', '06:00:00', '09:00:00', '', 1, NULL, NULL),
(10, 2, 'Second Day Morning', '2018-08-26', '09:00:00', '12:00:00', '', 1, NULL, NULL),
(11, 2, 'Second Day AfterNoon', '2018-08-26', '01:00:00', '04:00:00', '', 1, NULL, NULL),
(12, 2, 'Second Day Night', '2018-08-26', '06:00:00', '09:00:00', '', 1, NULL, NULL),
(13, 2, 'Third Day Morning', '2018-08-28', '10:45:00', '11:30:00', '', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `event_speakers`
--

CREATE TABLE `event_speakers` (
  `id` int(10) UNSIGNED NOT NULL,
  `event_id` int(11) NOT NULL,
  `speaker_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `event_speakers`
--

INSERT INTO `event_speakers` (`id`, `event_id`, `speaker_id`, `created_at`, `updated_at`) VALUES
(23, 2, 1, '2018-08-30 09:37:39', '2018-08-30 09:37:39'),
(24, 2, 2, '2018-08-30 09:37:39', '2018-08-30 09:37:39'),
(27, 1, 1, '2018-08-30 09:44:14', '2018-08-30 09:44:14'),
(28, 1, 2, '2018-08-30 09:44:14', '2018-08-30 09:44:14');

-- --------------------------------------------------------

--
-- Table structure for table `event_stories`
--

CREATE TABLE `event_stories` (
  `id` int(10) UNSIGNED NOT NULL,
  `story_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `narrator_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `narrator_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `event_stories`
--

INSERT INTO `event_stories` (`id`, `story_name`, `short_desc`, `description`, `image`, `narrator_name`, `narrator_image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Story 1', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '1535548452.jpg', 'Story Teller 2', '1535223630.jpg', 1, '2018-08-24 07:40:53', '2018-08-29 07:44:12'),
(2, 'Story 2', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '1535548431.jpg', 'Story Teller 1', '1535223617.jpg', 1, '2018-08-24 23:44:01', '2018-08-29 07:43:51');

-- --------------------------------------------------------

--
-- Table structure for table `event_types`
--

CREATE TABLE `event_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `event_types`
--

INSERT INTO `event_types` (`id`, `name`, `slug`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Music & DJ Parties', 'music-dj-parties', '<p>description</p>\r\n\r\n<p>&nbsp;</p>', 1, '2018-08-25 13:35:38', '2018-08-25 13:35:38'),
(2, 'Exhibition & Trade Fair', 'exhibition-trade-fair', '<p>exhibition-trade-fair</p>', 1, '2018-08-25 13:36:11', '2018-08-25 13:36:11'),
(3, 'Conference & Seminar', 'conference-seminar', '<p>conference-seminar</p>', 1, '2018-08-25 13:36:48', '2018-08-25 13:36:48');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_06_03_114230_create_admins_table', 1),
(4, '2018_07_12_145938_create_newsletters_table', 1),
(5, '2018_07_12_150215_create_site_settings_table', 1),
(6, '2018_07_12_150758_create_event_schedules_table', 1),
(7, '2018_07_12_151833_create_event_types_table', 1),
(8, '2018_07_12_152036_create_event_stories_table', 1),
(9, '2018_07_12_152350_create_events_table', 1),
(10, '2018_08_24_095248_create_categories_table', 1),
(11, '2018_08_24_095711_create_speakers_table', 1),
(12, '2018_08_24_100031_create_organisers_table', 1),
(13, '2018_08_25_052337_drop_user_table', 2),
(14, '2018_08_25_052840_add_narrator_to_event_stories', 2),
(15, '2018_08_25_060625_add_organiser_to_events', 3),
(16, '2018_08_25_061133_create_event_speakers_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

CREATE TABLE `newsletters` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `newsletters`
--

INSERT INTO `newsletters` (`id`, `email`, `status`, `created_at`, `updated_at`) VALUES
(1, 'sd@sdf.cin', 0, '2018-08-27 08:41:32', '2018-08-27 08:41:32'),
(2, 'asda@sdc.sds', 0, '2018-08-27 08:45:03', '2018-08-27 08:45:03'),
(3, 'ads@sdf.dscsd', 0, '2018-08-27 08:56:09', '2018-08-27 08:56:09'),
(4, 'dsd@dfx.gtrdtf', 0, '2018-08-27 08:56:30', '2018-08-27 08:56:30'),
(5, 'as@sdfs.sdfd', 0, '2018-08-28 01:41:46', '2018-08-28 01:41:46'),
(6, 'arvind@tech.dfg', 0, '2018-08-28 01:42:09', '2018-08-28 01:42:09'),
(7, 'abhishek.anand@gmail.com', 0, '2018-08-30 09:46:27', '2018-08-30 09:46:27');

-- --------------------------------------------------------

--
-- Table structure for table `organisers`
--

CREATE TABLE `organisers` (
  `id` int(10) UNSIGNED NOT NULL,
  `organiser_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitter_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `linked_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instagram_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `googleplus_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `organisers`
--

INSERT INTO `organisers` (`id`, `organiser_title`, `name`, `description`, `facebook_id`, `twitter_id`, `linked_id`, `instagram_id`, `googleplus_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Organiser 1', 'Organiser 1', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '', '', '', '', '', 1, '2018-08-24 07:37:21', '2018-08-24 07:37:21'),
(2, 'Organiser 2', 'Organiser 2', '<p>Reed Exhibitions Japan strive to provide the most effective platform for exhibitors showcasing the latest technologies, products and services to meet professionals from around the world who seek such exhibits. Through organising the show, Reed Exhibitions Japan is fully committed to aid the expansion of the industries.</p>', '', '', '', '', '', 1, '2018-08-25 13:40:44', '2018-08-25 13:44:34');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `site_settings`
--

CREATE TABLE `site_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` bigint(20) NOT NULL,
  `mobile_number` bigint(20) NOT NULL,
  `contact_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitter_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `linked_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instagram_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `googleplus_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `site_settings`
--

INSERT INTO `site_settings` (`id`, `company_title`, `logo`, `address`, `phone_number`, `mobile_number`, `contact_email`, `facebook_id`, `twitter_id`, `linked_id`, `instagram_id`, `googleplus_id`, `created_at`, `updated_at`) VALUES
(1, 'Festeve Mantra', '', '', 0, 0, '', '', '', '', '', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `speakers`
--

CREATE TABLE `speakers` (
  `id` int(10) UNSIGNED NOT NULL,
  `speaker_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tag_line` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitter_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `linked_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instagram_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `googleplus_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `speakers`
--

INSERT INTO `speakers` (`id`, `speaker_name`, `image`, `title`, `tag_line`, `description`, `facebook_id`, `twitter_id`, `linked_id`, `instagram_id`, `googleplus_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Kapil Khandelwal', '1535217792.jpg', 'Hello', '', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '', '', '', '', '', 1, '2018-08-24 07:22:50', '2018-08-25 11:53:12'),
(2, 'Dharmveer Kaushik', '1535217781.jpg', 'Tech Lead', '', '<p>A&nbsp;<strong>tutor</strong>&nbsp;is a person who provides assistance or tutelage to one or more people on certain subject areas or skills. The tutor spends a few hours on a daily, weekly, or monthly basis to transfer their expertise on the topic or skill to the student. Tutoring can take place in different settings, such as a classroom, a formal tutoring center, or the home of the tutor/learner. As a teaching-learning method, tutoring is characterized by how it differs from formal teaching methods on the basis of the (in)formality of the setting as well as the flexibility in pedagogical methods in terms of duration, pace of teaching, evaluation and tutor-tutee rapport.</p>', '', '', '', '', '', 1, '2018-08-25 11:53:01', '2018-08-25 11:53:01'),
(3, 'Sandeep Yadav', '1535217811.jpg', 'Frontend Developer', '', '<p>A&nbsp;<strong>tutor</strong>&nbsp;is a person who provides assistance or tutelage to one or more people on certain subject areas or skills. The tutor spends a few hours on a daily, weekly, or monthly basis to transfer their expertise on the topic or skill to the student. Tutoring can take place in different settings, such as a classroom, a formal tutoring center, or the home of the tutor/learner. As a teaching-learning method, tutoring is characterized by how it differs from formal teaching methods on the basis of the (in)formality of the setting as well as the flexibility in pedagogical methods in terms of duration, pace of teaching, evaluation and tutor-tutee rapport.</p>', '', '', '', '', '', 1, '2018-08-25 11:53:31', '2018-08-25 11:53:31');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_city`
--

CREATE TABLE `tbl_city` (
  `city_id` int(11) NOT NULL,
  `state_id` int(11) NOT NULL,
  `city_name` varchar(100) NOT NULL,
  `slug` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `date_added` date NOT NULL,
  `date_modified` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_city`
--

INSERT INTO `tbl_city` (`city_id`, `state_id`, `city_name`, `slug`, `image`, `description`, `sort_order`, `featured`, `status`, `date_added`, `date_modified`) VALUES
(1, 1, 'Hyderabad', 'hyderabad', '', '', 0, 0, 1, '2016-04-19', '2016-04-19'),
(2, 1, 'Anantapur', 'anantapur', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(3, 1, 'Chittoor', 'chittoor', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(4, 1, 'Cuddapah', 'cuddapah', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(5, 1, 'Hindupur', 'hindupur', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(6, 1, 'Kurnool', 'kurnool', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(7, 1, 'Nandyal', 'nandyal', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(8, 1, 'Proddatur', 'proddatur', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(9, 1, 'Tirupati', 'tirupati', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(10, 1, 'Bhimavaram', 'bhimavaram', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(11, 1, 'Eluru', 'eluru', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(12, 1, 'Gudivada', 'gudivada', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(13, 1, 'Gudur', 'gudur', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(14, 1, 'Guntur', 'guntur', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(15, 2, 'Khammam', 'khammam', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(16, 1, 'Machilipatnam', 'machilipatnam', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(17, 1, 'Narasaraopet', 'narasaraopet', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(18, 1, 'Nellore', 'nellore', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(19, 1, 'Prakasam', 'prakasam', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(20, 1, 'Tadepalligudem', 'tadepalligudem', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(21, 1, 'Tenali', 'tenali', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(22, 1, 'Vijayawada', 'vijayawada', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(23, 1, 'Amalapuram', 'amalapuram', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(24, 1, 'Anakapalle', 'anakapalle', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(25, 1, 'Kakinada', 'kakinada', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(26, 1, 'Parvathipuram', 'parvathipuram', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(27, 1, 'Rajahmundry', 'rajahmundry', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(28, 1, 'Srikakulam', 'srikakulam', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(29, 1, 'Visakhapatnam', 'visakhapatnam', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(30, 1, 'Vizianagaram', 'vizianagaram', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(31, 3, 'Cachar', 'cachar', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(32, 3, 'Darrang', 'darrang', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(33, 3, 'Dibrugarh', 'dibrugarh', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(34, 3, 'Nagaon', 'nagaon', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(35, 3, 'Sibsagar', 'sibsagar', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(36, 3, 'Tinsukia', 'tinsukia', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(37, 3, 'Goalpara', 'goalpara', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(38, 3, 'Guwahati', 'guwahati', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(39, 3, 'Nalbari', 'nalbari', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(40, 4, 'Begusarai', 'begusarai', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(41, 4, 'Darbhanga', 'darbhanga', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(42, 4, 'East Champaran', 'east-champaran', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(43, 4, 'Madhubani', 'madhubani', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(44, 4, 'Muzaffarpur', 'muzaffarpur', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(45, 4, 'Purnea', 'purnea', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(46, 4, 'Saharsa', 'saharsa', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(47, 4, 'Samastipur', 'samastipur', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(48, 4, 'Saran', 'saran', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(49, 4, 'Sitamarhi', 'sitamarhi', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(50, 4, 'Siwan', 'siwan', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(51, 4, 'West Champaran', 'west-champaran', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(52, 4, 'Aurangabad', 'aurangabad', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(53, 4, 'Bhagalpur', 'bhagalpur', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(54, 4, 'Bhojpur', 'bhojpur', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(55, 4, 'Gaya', 'gaya', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(56, 4, 'Monghyr', 'monghyr', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(57, 4, 'Nalanda', 'nalanda', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(58, 4, 'Nawadha', 'nawadha', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(59, 4, 'Patna', 'patna', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(60, 4, 'Rohtas', 'rohtas', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(61, 4, 'Vaishali', 'vaishali', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(62, 5, 'Bastar', 'bastar', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(63, 5, 'Bilaspur', 'bilaspur', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(64, 5, 'Durg', 'durg', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(65, 5, 'Raigarh', 'raigarh', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(66, 5, 'Raipur', 'raipur', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(68, 7, 'Ahmedabad City', 'ahmedabad-city', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(69, 7, 'Banasanktha', 'banasanktha', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(70, 7, 'Gandhinagar', 'gandhinagar', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(71, 7, 'Mahesana', 'mahesana', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(72, 7, 'Patan', 'patan', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(73, 7, 'Sabarkantha', 'sabarkantha', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(74, 7, 'Amreli', 'amreli', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(75, 7, 'Bhavnagar', 'bhavnagar', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(76, 7, 'Gondal', 'gondal', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(77, 7, 'Jamnagar', 'jamnagar', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(78, 7, 'Junagadh', 'junagadh', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(79, 7, 'Kutch', 'kutch', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(80, 7, 'Porbandar', 'porbandar', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(81, 7, 'Rajkot', 'rajkot', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(82, 7, 'Surendranagar', 'surendranagar', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(83, 7, 'Anand', 'anand', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(84, 7, 'Bardoli', 'bardoli', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(85, 7, 'Bharuch', 'bharuch', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(86, 7, 'Kheda', 'kheda', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(87, 7, 'Navsari', 'navsari', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(88, 7, 'Panchmahals', 'panchmahals', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(89, 7, 'Surat', 'surat', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(90, 7, 'Vadodara East', 'vadodara-east', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(91, 7, 'Vadodara West', 'vadodara-west', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(92, 7, 'Valsad', 'valsad', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(93, 8, 'Ambala', 'ambala', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(94, 8, 'Bhiwani', 'bhiwani', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(97, 8, 'Hissar', 'hissar', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(98, 8, 'Karnal', 'karnal', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(99, 8, 'Kurukshetra', 'kurukshetra', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(100, 8, 'Rohtak', 'rohtak', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(101, 8, 'Sonepat', 'sonepat', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(102, 9, 'Chamba', 'chamba', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(103, 9, 'Dehra Gopipur', 'dehra-gopipur', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(104, 9, 'Dharamsala', 'dharamsala', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(105, 9, 'Hamirpur', 'hamirpur', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(106, 9, 'Mandi', 'mandi', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(107, 9, 'Rampur Bushahr', 'rampur-bushahr', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(108, 9, 'Shimla', 'shimla', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(109, 9, 'Solan', 'solan', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(110, 9, 'Una', 'una', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(111, 10, 'Baramulla', 'baramulla', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(112, 10, 'Jammu', 'jammu', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(113, 10, 'Leh', 'leh', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(114, 10, 'Rajouri', 'rajouri', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(115, 10, 'Srinagar', 'srinagar', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(116, 10, 'Udhampur', 'udhampur', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(117, 11, 'Dhanbad', 'dhanbad', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(118, 11, 'Giridih', 'giridih', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(119, 11, 'Hazaribagh', 'hazaribagh', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(120, 11, 'Palamau', 'palamau', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(121, 11, 'Ranchi', 'ranchi', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(122, 11, 'Santhal Parganas', 'santhal-parganas', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(123, 11, 'Singhbhum', 'singhbhum', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(124, 12, 'Bangalore East', 'bangalore-east', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(125, 12, 'Bangalore South', 'bangalore-south', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(126, 12, 'Bangalore West', 'bangalore-west', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(127, 12, 'Channapatna', 'channapatna', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(128, 12, 'Bagalkot', 'bagalkot', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(129, 12, 'Belgaum', 'belgaum', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(130, 12, 'Bellary', 'bellary', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(131, 12, 'Bidar', 'bidar', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(132, 12, 'Bijapur', 'bijapur', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(133, 12, 'Chikodi', 'chikodi', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(134, 12, 'Dharwad', 'dharwad', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(135, 12, 'Gadag', 'gadag', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(136, 12, 'Gokak', 'gokak', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(137, 12, 'Gulbarga', 'gulbarga', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(138, 12, 'Haveri', 'haveri', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(139, 12, 'Karwar', 'karwar', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(140, 12, 'Raichur', 'raichur', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(141, 12, 'Sirsi', 'sirsi', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(142, 12, 'Chikmagalur', 'chikmagalur', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(143, 12, 'Chitradurga', 'chitradurga', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(144, 12, 'Hassan', 'hassan', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(145, 12, 'Kodagu', 'kodagu', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(146, 12, 'Kolar', 'kolar', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(147, 12, 'Mandya', 'mandya', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(148, 12, 'Mangalore', 'mangalore', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(149, 12, 'Mysore', 'mysore', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(150, 12, 'Nanjangud', 'nanjangud', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(151, 12, 'Puttur', 'puttur', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(152, 12, 'Shimoga', 'shimoga', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(153, 12, 'Tumkur', 'tumkur', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(154, 12, 'Udupi', 'udupi', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(155, 13, 'Calicut', 'calicut', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(156, 13, 'Cannanore', 'cannanore', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(157, 13, 'Kasaragod', 'kasaragod', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(158, 13, 'Manjeri', 'manjeri', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(159, 13, 'Ottapalam', 'ottapalam', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(160, 13, 'Palghat', 'palghat', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(161, 13, 'Thalassery', 'thalassery', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(162, 13, 'Tirur', 'tirur', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(163, 13, 'Vadakara', 'vadakara', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(164, 13, 'Alleppey', 'alleppey', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(165, 13, 'Alwaye', 'alwaye', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(166, 13, 'Changanacherry', 'changanacherry', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(167, 13, 'Ernakulam', 'ernakulam', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(168, 13, 'Idukki', 'idukki', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(169, 13, 'Irinjalakuda', 'irinjalakuda', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(170, 13, 'Kottayam', 'kottayam', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(171, 13, 'Lakshadweep', 'lakshadweep', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(172, 13, 'Mavelikara', 'mavelikara', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(173, 13, 'Trichur', 'trichur', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(174, 13, 'Pathanamthitta', 'pathanamthitta', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(175, 13, 'Quilon', 'quilon', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(176, 13, 'Tiruvalla', 'tiruvalla', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(177, 13, 'Trivandrum North', 'trivandrum-north', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(178, 13, 'Trivandrum South', 'trivandrum-south', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(179, 14, 'Balaghat', 'balaghat', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(180, 14, 'Bhopal', 'bhopal', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(181, 14, 'Chhatarpur', 'chhatarpur', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(182, 14, 'Chhindwara', 'chhindwara', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(183, 14, 'Hoshangabad', 'hoshangabad', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(184, 14, 'Rewa', 'rewa', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(185, 14, 'Sagar', 'sagar', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(186, 14, 'Shahdol', 'shahdol', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(187, 14, 'Vidisha', 'vidisha', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(188, 14, 'Guna', 'guna', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(189, 14, 'Gwalior', 'gwalior', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(190, 14, 'Morena', 'morena', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(191, 14, 'Indore City', 'indore-city', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(192, 14, 'Indore Moffusil', 'indore-moffusil', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(193, 14, 'Jabalpur', 'jabalpur', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(194, 14, 'Khandwa', 'khandwa', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(195, 14, 'Mandsaur', 'mandsaur', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(196, 14, 'Ratlam', 'ratlam', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(197, 14, 'Sehore', 'sehore', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(198, 14, 'Ujjain', 'ujjain', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(199, 15, 'Aurangabad(Maharashtra)', 'aurangabad-maharashtra', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(200, 15, 'Beed', 'beed', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(201, 15, 'Bhusaval', 'bhusaval', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(202, 15, 'Dhule', 'dhule', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(203, 15, 'Jalgaon', 'jalgaon', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(204, 15, 'Malegaon', 'malegaon', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(205, 15, 'Nanded', 'nanded', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(206, 15, 'Nasik', 'nasik', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(207, 15, 'Osmanabad', 'osmanabad', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(208, 15, 'Pharbhani', 'pharbhani', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(209, 29, 'Goa', 'goa', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(210, 15, 'Kolhapur', 'kolhapur', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(211, 15, 'Ratnagiri', 'ratnagiri', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(212, 15, 'Sangli', 'sangli', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(213, 15, 'Sindhudurg', 'sindhudurg', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(214, 15, 'Mumbai  East', 'mumbai-east', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(215, 15, 'Mumbai  North', 'mumbai-north', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(216, 15, 'Mumbai  North East', 'mumbai-north-east', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(217, 15, 'Mumbai  North West', 'mumbai-north-west', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(218, 15, 'Mumbai  South', 'mumbai-south', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(219, 15, 'Mumbai  West', 'mumbai-west', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(220, 15, 'New Mumbai', 'new-mumbai', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(221, 15, 'Raigad', 'raigad', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(222, 15, 'Thane Central', 'thane-central', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(223, 15, 'Thane West', 'thane-west', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(224, 15, 'Akola', 'akola', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(225, 15, 'Amaravati', 'amaravati', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(226, 15, 'Buldana', 'buldana', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(227, 15, 'Chandrapur', 'chandrapur', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(228, 15, 'Nagpur City', 'nagpur-city', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(229, 15, 'Nagpur Moffusil', 'nagpur-moffusil', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(230, 15, 'Wardha', 'wardha', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(231, 15, 'Yeotmal', 'yeotmal', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(232, 15, 'Ahmednagar', 'ahmednagar', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(233, 15, 'Pandharpur', 'pandharpur', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(234, 15, 'Pune City East', 'pune-city-east', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(235, 15, 'Pune City West', 'pune-city-west', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(236, 15, 'Pune Moffusil', 'pune-moffusil', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(237, 15, 'Satara', 'satara', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(238, 15, 'Shrirampur', 'shrirampur', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(239, 15, 'Solapur', 'solapur', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(240, 16, 'Aska', 'aska', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(241, 16, 'Berhampur', 'berhampur', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(242, 16, 'Kalahandi', 'kalahandi', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(243, 16, 'Koraput', 'koraput', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(244, 16, 'Phulbani', 'phulbani', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(245, 16, 'Balasore', 'balasore', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(246, 16, 'Bhadrak', 'bhadrak', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(247, 16, 'Bhubaneswar', 'bhubaneswar', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(248, 16, 'Cuttack City', 'cuttack-city', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(249, 16, 'Cuttack North', 'cuttack-north', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(250, 16, 'Cuttack South', 'cuttack-south', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(251, 16, 'Mayurbhanj', 'mayurbhanj', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(252, 16, 'Puri', 'puri', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(253, 16, 'Balangir', 'balangir', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(254, 16, 'Dhenkanal', 'dhenkanal', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(255, 16, 'Keonjhar', 'keonjhar', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(256, 16, 'Sambalpur', 'sambalpur', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(257, 16, 'Sundargarh', 'sundargarh', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(258, 17, 'Chandigarh', 'chandigarh', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(259, 17, 'Ludhiana City', 'ludhiana-city', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(260, 17, 'Ludhiana Moffusil', 'ludhiana-moffusil', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(261, 17, 'Patiala', 'patiala', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(262, 17, 'Sangrur', 'sangrur', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(263, 17, 'Amritsar', 'amritsar', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(264, 17, 'Bhatinda', 'bhatinda', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(265, 17, 'Faridkot', 'faridkot', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(266, 17, 'Ferozpur', 'ferozpur', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(267, 17, 'Gurdaspur', 'gurdaspur', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(268, 17, 'Hoshiarpur', 'hoshiarpur', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(269, 17, 'Jalandhar', 'jalandhar', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(270, 17, 'Kapurthala', 'kapurthala', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(271, 18, 'Ajmer', 'ajmer', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(272, 18, 'Beawar', 'beawar', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(273, 18, 'Bhilwara', 'bhilwara', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(274, 18, 'Chittorgarh', 'chittorgarh', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(275, 18, 'Dungarpur', 'dungarpur', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(276, 18, 'Kota', 'kota', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(277, 18, 'Tonk', 'tonk', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(278, 18, 'Udaipur', 'udaipur', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(279, 18, 'Alwar', 'alwar', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(280, 18, 'Bharatpur', 'bharatpur', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(281, 18, 'Dholpur', 'dholpur', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(282, 18, 'Jaipur ', 'jaipur', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(283, 18, 'Sawaimadhopur', 'sawaimadhopur', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(284, 18, 'Barmer', 'barmer', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(285, 18, 'Bikaner', 'bikaner', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(286, 18, 'Churu', 'churu', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(287, 18, 'Jhunjhunu', 'jhunjhunu', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(288, 18, 'Jodhpur', 'jodhpur', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(289, 18, 'Nagaur', 'nagaur', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(290, 18, 'Pali', 'pali', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(291, 18, 'Sikar', 'sikar', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(292, 18, 'Sirohi', 'sirohi', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(293, 18, 'Sriganganagar', 'sriganganagar', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(294, 19, 'Anna Road H.O', 'anna-road-h-o', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(295, 19, 'Arakkonam', 'arakkonam', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(296, 19, 'Chengalpattu', 'chengalpattu', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(297, 19, 'Chennai City Central', 'chennai-city-central', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(298, 19, 'Chennai City North', 'chennai-city-north', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(299, 19, 'Chennai City South', 'chennai-city-south', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(300, 19, 'Kanchipuram', 'kanchipuram', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(301, 19, 'Pondicherry', 'pondicherry', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(302, 19, 'Tambaram', 'tambaram', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(303, 19, 'Tiruvannamalai', 'tiruvannamalai', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(304, 19, 'Vellore', 'vellore', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(305, 19, 'Coimbatore', 'coimbatore', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(306, 19, 'Dharmapuri', 'dharmapuri', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(307, 19, 'Erode', 'erode', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(308, 19, 'Krishnagiri', 'krishnagiri', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(309, 19, 'Namakkal', 'namakkal', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(310, 19, 'Nilgiris', 'nilgiris', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(311, 19, 'Pollachi', 'pollachi', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(312, 19, 'Salem East', 'salem-east', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(313, 19, 'Salem West', 'salem-west', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(314, 19, 'Tirupattur', 'tirupattur', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(315, 19, 'Tirupur', 'tirupur', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(316, 19, 'Dindigul', 'dindigul', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(317, 19, 'Kanniyakumari', 'kanniyakumari', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(318, 19, 'Karaikudi', 'karaikudi', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(319, 19, 'Kovilpatti', 'kovilpatti', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(320, 19, 'Madurai', 'madurai', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(321, 19, 'Ramanathapuram', 'ramanathapuram', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(322, 19, 'Sivaganga', 'sivaganga', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(323, 19, 'Theni', 'theni', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(324, 19, 'Tirunelveli', 'tirunelveli', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(325, 19, 'Tuticorin', 'tuticorin', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(326, 19, 'Virudhunagar', 'virudhunagar', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(327, 19, 'Cuddalore', 'cuddalore', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(328, 19, 'Karur', 'karur', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(329, 19, 'Kumbakonam', 'kumbakonam', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(330, 19, 'Mayiladuthurai', 'mayiladuthurai', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(331, 19, 'Nagapattinam', 'nagapattinam', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(332, 19, 'Pattukottai', 'pattukottai', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(333, 19, 'Pudukkottai', 'pudukkottai', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(334, 19, 'Srirangam', 'srirangam', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(335, 19, 'Thanjavur', 'thanjavur', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(336, 19, 'Tiruchirapalli', 'tiruchirapalli', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(337, 19, 'Vriddhachalam', 'vriddhachalam', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(338, 20, 'Agra', 'agra', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(339, 20, 'Aligarh', 'aligarh', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(340, 20, 'Bulandshahar', 'bulandshahar', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(341, 20, 'Etah', 'etah', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(342, 20, 'Etawah', 'etawah', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(343, 20, 'Jhansi', 'jhansi', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(344, 20, 'Mainpuri', 'mainpuri', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(345, 20, 'Mathura', 'mathura', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(346, 20, 'Allahabad', 'allahabad', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(347, 20, 'Ghazipur', 'ghazipur', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(348, 20, 'Jaunpur', 'jaunpur', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(349, 20, 'Mirzapur', 'mirzapur', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(350, 20, 'Pratapgarh', 'pratapgarh', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(351, 20, 'Varanasi ', 'varanasi', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(352, 20, 'Bareilly', 'bareilly', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(353, 20, 'Bijnor', 'bijnor', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(354, 20, 'Budaun', 'budaun', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(355, 20, 'Hardoi', 'hardoi', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(356, 20, 'Kheri', 'kheri', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(357, 20, 'Meerut', 'meerut', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(358, 20, 'Moradabad', 'moradabad', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(359, 20, 'Muzaffarnagar', 'muzaffarnagar', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(360, 20, 'Saharanpur', 'saharanpur', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(361, 20, 'Shahjahanpur', 'shahjahanpur', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(362, 20, 'Azamgarh', 'azamgarh', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(363, 20, 'Bahraich', 'bahraich', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(364, 20, 'Ballia', 'ballia', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(365, 20, 'Basti', 'basti', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(366, 20, 'Deoria', 'deoria', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(367, 20, 'Gonda', 'gonda', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(368, 20, 'Gorakhpur', 'gorakhpur', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(369, 20, 'Banda', 'banda', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(370, 20, 'Fatehgarh', 'fatehgarh', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(371, 20, 'Fatehpur', 'fatehpur', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(372, 20, 'Kanpur ', 'kanpur', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(373, 20, 'Barabanki', 'barabanki', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(374, 20, 'Faizabad', 'faizabad', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(377, 20, 'Lucknow', 'lucknow', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(378, 20, 'Rae Bareilly', 'rae-bareilly', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(379, 20, 'Sitapur', 'sitapur', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(380, 20, 'Sultanpur', 'sultanpur', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(381, 21, 'Almora', 'almora', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(382, 21, 'Chamoli', 'chamoli', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(383, 21, 'Dehradun', 'dehradun', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(384, 21, 'Nainital', 'nainital', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(385, 21, 'Pauri', 'pauri', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(386, 21, 'Pithoragarh', 'pithoragarh', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(387, 21, 'Tehri', 'tehri', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(388, 22, 'Alipore H.O', 'alipore-h-o', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(389, 22, 'Barabazaar H.O', 'barabazaar-h-o', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(390, 22, 'Barasat', 'barasat', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(391, 22, 'Birbhum', 'birbhum', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(392, 22, 'Calcutta South', 'calcutta-south', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(393, 22, 'Kolkata Central', 'kolkata-central', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(394, 22, 'Kolkata East', 'kolkata-east', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(395, 22, 'Kolkata North', 'kolkata-north', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(396, 22, 'Murshidabad', 'murshidabad', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(397, 22, 'Nadia North', 'nadia-north', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(398, 22, 'Nadia South', 'nadia-south', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(399, 22, 'North Presidency', 'north-presidency', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(400, 22, 'South Presidency', 'south-presidency', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(401, 22, 'A - N Islands', 'a-n-islands', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(402, 22, 'Cooch Behar', 'cooch-behar', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(403, 22, 'Darjeeling', 'darjeeling', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(404, 22, 'Jalpaiguri', 'jalpaiguri', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(405, 22, 'Malda', 'malda', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(406, 22, 'Sikkim', 'sikkim', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(407, 22, 'West Dinajpur', 'west-dinajpur', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(408, 22, 'Asansol', 'asansol', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(409, 22, 'Bankura', 'bankura', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(410, 22, 'Burdwan', 'burdwan', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(411, 22, 'Contai', 'contai', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(412, 22, 'Hooghly North', 'hooghly-north', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(413, 22, 'Hooghly South', 'hooghly-south', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(414, 22, 'Howrah', 'howrah', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(415, 22, 'Midnapore', 'midnapore', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(416, 22, 'Purulia', 'purulia', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(417, 22, 'Tamluk', 'tamluk', '', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(419, 20, 'Noida', 'Noida', '', '', 0, 0, 1, '2016-08-04', '2016-08-04'),
(420, 20, 'Ghaziabad', 'Ghaziabad', '', '', 0, 0, 1, '2016-08-04', '2016-08-04'),
(421, 6, 'New Delhi', 'New Delhi', '', '', 0, 0, 1, '2016-08-04', '2016-08-04'),
(422, 8, 'Gurugram', 'Gurugram', '', '', 0, 0, 1, '2016-08-04', '2016-08-04'),
(423, 8, 'Faridabad', 'Faridabad', '', '', 0, 0, 1, '2016-08-04', '2016-08-04'),
(424, 2, 'Hyderabad', 'Hyderabad', '', '', 0, 0, 1, '2016-09-24', '2016-09-24'),
(425, 8, 'Panchkula', 'Panchkula', '', '', 0, 0, 1, '2016-12-30', '2016-12-30'),
(426, 8, 'Panipat', 'Panipat', '', '', 0, 0, 1, '2017-02-16', '2017-02-16'),
(427, 2, 'Secunderabad', 'Secunderabad', '', '', 0, 0, 1, '2017-03-18', '2017-03-18'),
(428, 13, 'Kozhikode', 'kozhikode', '', '', 0, 0, 1, '2017-03-29', '2017-03-29'),
(429, 13, 'Kochi', 'Kochi', '', '', 0, 0, 1, '2017-03-31', '2017-03-31'),
(430, 23, 'Kohima', 'Kohima', '', '', 0, 0, 1, '2017-04-06', '2017-04-06'),
(431, 8, 'Manesar', 'Manesar', '', '', 0, 0, 1, '2017-06-28', '2017-06-28'),
(432, 24, 'Shillong', 'Shillong', '', '', 0, 0, 1, '2017-06-29', '2017-06-29'),
(433, 25, 'Agartala', 'Agartala', '', '', 0, 0, 1, '2017-06-30', '2017-06-30'),
(434, 26, 'Port Blair', 'Port Blair', '', '', 0, 0, 1, '2017-07-05', '2017-07-05'),
(435, 27, 'Itanagar', 'Itanagar', '', '', 0, 0, 1, '2017-07-05', '2017-07-05'),
(436, 28, 'Silvassa', 'Silvassa', '', '', 0, 0, 1, '2017-07-05', '2017-07-05'),
(437, 34, 'Daman', 'Daman', '', '', 0, 0, 1, '2017-07-05', '2017-07-05'),
(438, 29, 'Panaji', 'Panaji', '', '', 0, 0, 1, '2017-07-05', '2017-07-05'),
(439, 31, 'Aizawl', 'Aizawl', '', '', 0, 0, 1, '2017-07-05', '2017-07-05'),
(440, 32, 'Pondicherry', 'Pondicherry', '', '', 0, 0, 1, '2017-07-05', '2017-07-05'),
(441, 33, 'Gangtok', 'Gangtok', '', '', 0, 0, 1, '2017-07-05', '2017-07-05'),
(442, 3, 'Diphu', 'Diphu', '', '', 0, 0, 1, '2017-07-18', '2017-07-18'),
(443, 1, 'Kadapa', 'Kadapa', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(444, 1, 'Chilakaluripet', 'Chilakaluripet', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(445, 1, 'Amaravati', 'Amaravati', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(446, 1, 'Tadipatri', 'Tadipatri', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(447, 1, 'Dharmavaram', 'Dharmavaram', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(448, 1, 'Guntakal', 'Guntakal', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(449, 1, 'Ongole', 'Ongole', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(450, 1, 'Adoni', 'Adoni', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(451, 1, 'Madanapalle', 'Madanapalle', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(452, 27, 'Changlang', 'Changlang', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(453, 27, 'Dibang Valley', 'Dibang Valley', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(454, 27, 'East Kameng', 'East Kameng', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(455, 27, 'East Siang', 'East Siang', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(456, 27, 'Kurung Kumey', 'Kurung Kumey', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(457, 27, 'Lohit ', 'Lohit ', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(458, 27, 'Lower Dibang Valley', 'Lower Dibang Valley', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(459, 27, 'Lower Subansiri', 'Lower Subansiri', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(460, 27, 'Papum Pare', 'Papum Pare', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(461, 27, 'Tawang', 'Tawang', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(462, 27, 'Tirap', 'Tirap', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(463, 27, 'Upper Siang', 'Upper Siang', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(464, 27, 'Upper Subansiri', 'Upper Subansiri', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(465, 27, 'West Kameng ', 'West Kameng ', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(466, 27, 'West Siang', 'West Siang', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(467, 3, 'Udalguri', 'Udalguri', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(468, 3, 'Karimganj', 'Karimganj', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(469, 3, 'Kamrup', 'Kamrup', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(470, 3, 'Karbi Anglong', 'Karbi Anglong', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(471, 3, 'Kokrajhar', 'Kokrajhar', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(472, 3, 'Golaghat', 'Golaghat', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(473, 3, 'Chirang', 'Chirang', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(474, 3, 'Dhubri', 'Dhubri', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(475, 3, 'Dhemaji', 'Dhemaji', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(476, 3, 'Nagaon', 'Nagaon', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(477, 3, 'Bongaigaon', 'Bongaigaon', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(478, 3, 'Barpeta', 'Barpeta', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(479, 3, 'Baksa', 'Baksa', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(480, 3, 'Morigaon', 'Morigaon', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(481, 3, 'Jorhat', 'Jorhat', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(482, 3, 'Lakhimpur', 'Lakhimpur', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(483, 3, 'Sivasagar', 'Sivasagar', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(484, 3, 'Sonitpur', 'Sonitpur', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(485, 3, 'Hailakandi', 'Hailakandi', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(486, 4, 'Araria', 'Araria', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(487, 4, 'Arwal', 'Arwal', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(488, 4, 'Banka', 'Banka', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(489, 4, 'Buxar', 'Buxar', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(490, 4, 'Gopalganj', 'Gopalganj', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(491, 4, 'Jamui', 'Jamui', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(492, 4, 'Jehanabad', 'Jehanabad', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(493, 4, 'Khagaria', 'Khagaria', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(494, 4, 'Kishanganj', 'Kishanganj', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(495, 4, 'Kaimur', 'Kaimur', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(496, 4, 'Katihar', 'Katihar', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(497, 4, 'Lakhisarai', 'Lakhisarai', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(498, 4, 'Munger', 'Munger', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(499, 4, 'Madhepura', 'Madhepura', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(500, 4, 'Sheikhpura', 'Sheikhpura', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(501, 4, 'Supaul', 'Supaul', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(502, 5, 'Balod', 'Balod', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(503, 5, 'Baloda Bazar', 'Baloda Bazar', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(504, 5, 'Bemetara', 'Bemetara', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(505, 5, 'Balrampur', 'Balrampur', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(506, 5, 'Bijapur', 'Bijapur', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(507, 5, 'Dantewada', 'Dantewada', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(508, 5, 'Dhamtari', 'Dhamtari', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(509, 5, 'Gariaband', 'Gariaband', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(510, 5, 'Jagdalpur (Madhya Bastar)', 'Jagdalpur (Madhya Bastar)', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(511, 5, 'Janjgir-Champa', 'Janjgir-Champa', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(512, 5, 'Dhamtari', 'Dhamtari', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(513, 5, 'Jashpur', 'Jashpur', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(514, 5, 'Kabirdham', 'Kabirdham', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(515, 5, 'Kanker', 'Kanker', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(516, 5, 'Kondagaon', 'Kondagaon', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(517, 5, 'Korba', 'Korba', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(518, 5, 'Koriya', 'Koriya', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(519, 5, 'Mahasamund', 'Mahasamund', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(520, 5, 'Mungeli', 'Mungeli', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(521, 5, 'Narayanpur', 'Narayanpur', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(522, 5, 'Rajnandgaon', 'Rajnandgaon', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(523, 5, 'Sukma', 'Sukma', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(524, 5, 'Surajpur', 'Surajpur', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(525, 5, 'Surguja', 'Surguja', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(526, 28, 'Dadra', 'Dadra', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(527, 28, 'Masat', 'Masat', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(528, 28, 'Naroli', 'Naroli', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(529, 28, 'Rakholi', 'Rakholi', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(530, 28, 'Samarvarni', 'Samarvarni', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(531, 34, 'Bhimpore', 'Bhimpore', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(532, 34, 'Dadhel', 'Dadhel', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(533, 34, 'Dunetha', 'Dunetha', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(534, 34, 'Kachigam', 'Kachigam', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(535, 34, 'Kadaiya', 'Kadaiya', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(536, 34, 'Marwad', 'Marwad', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(537, 6, 'North Delhi', 'North Delhi', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(538, 6, 'North West Delhi', 'North West Delhi', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(539, 6, 'West Delhi', 'West Delhi', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(540, 6, 'South West Delhi', 'South West Delhi', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(541, 6, 'South Delhi', 'South Delhi', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(542, 6, 'South East Delhi', 'South East Delhi', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(543, 6, 'Central Delhi', 'Central Delhi', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(544, 6, 'North East Delhi', 'North East Delhi', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(545, 6, 'Shahdara', 'Shahdara', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(546, 6, 'East Delhi', 'East Delhi', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(547, 29, 'Bicholim', 'Bicholim', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(548, 29, 'Canacona', 'Canacona', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(549, 29, 'Cuncolim', 'Cuncolim', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(550, 29, 'Curchorem', 'Curchorem', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(551, 29, 'Mapusa', 'Mapusa', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(552, 29, 'Margao', 'Margao', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(553, 29, 'Mormugao', 'Mormugao', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(554, 29, 'Pernem', 'Pernem', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(555, 29, 'Ponda', 'Ponda', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(556, 29, 'Quepem', 'Quepem', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(557, 29, 'Sanguem', 'Sanguem', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(558, 29, 'Sanquelim', 'Sanquelim', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(559, 29, 'Valpoi', 'Valpoi', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(560, 7, 'Gandhidham', 'Gandhidham', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(561, 7, 'Nadiad', 'Nadiad', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(562, 7, 'Morbi', 'Morbi', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(563, 7, 'Vapi', 'Vapi', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(564, 7, 'Veraval', 'Veraval', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(565, 7, 'Godhra', 'Godhra', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(566, 7, 'Ankleshwar', 'Ankleshwar', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(567, 7, 'Bhuj', 'Bhuj', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(568, 7, 'Botad', 'Botad', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(569, 7, 'Palanpur', 'Palanpur', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(570, 7, 'Dahod', 'Dahod', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(571, 7, 'Jetpur', 'Jetpur', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(572, 7, 'Kalol', 'Kalol', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(573, 8, 'Yamunanagar', 'Yamunanagar', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(574, 8, 'Sirsa', 'Sirsa', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(575, 8, 'Bahadurgarh', 'Bahadurgarh', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(576, 8, 'Jind', 'Jind', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(577, 8, 'Thanesar', 'Thanesar', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(578, 8, 'Kaithal', 'Kaithal', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(579, 8, 'Rewari', 'Rewari', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(580, 8, 'Palwal', 'Palwal', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(581, 8, 'Palwal', 'Palwal', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(582, 9, 'Kufri', 'Kufri', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(583, 9, 'Kullu Manali', 'Kullu Manali', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(584, 9, 'Rohtang Pass', 'Rohtang Pass', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(585, 9, 'Dalhousie', 'Dalhousie', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(586, 9, 'Khajjiar', 'Khajjiar', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(587, 9, 'Chail', 'Chail', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(588, 9, 'Kasauli', 'Kasauli', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(589, 9, 'Spiti Valley', 'Spiti Valley', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(590, 9, 'Palampur', 'Palampur', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(591, 9, 'Kangra Valley', 'Kangra valley', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(592, 9, 'Kinnaur', 'Kinnaur', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(593, 9, 'Nahan', 'Nahan', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(594, 9, 'Nalagarh', 'Nalagarh', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(595, 9, 'Pragpur', 'Pragpur', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(596, 10, 'Anantnag', 'Anantnag', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(597, 11, 'Jamshedpur', 'Jamshedpur', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(598, 11, 'Bokaro', 'Bokaro', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(599, 11, 'Deoghar', 'Deoghar', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(600, 11, 'Phusro', 'Phusro', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(601, 11, 'Ramgarh', 'Ramgarh', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(602, 11, 'Medininagar', 'Medininagar', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(603, 11, 'Chirkunda', 'Chirkunda', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(604, 11, 'Chaibasa', 'Chaibasa', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(605, 11, 'Chatra', 'Chatra', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(606, 11, 'Dumka', 'Dumka', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(607, 11, 'Garhwa', 'Garhwa', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(608, 11, 'Godda', 'Godda', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(609, 11, 'Gumla', 'Gumla', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(610, 11, 'Jamtara', 'Jamtara', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(611, 11, 'Khunti', 'Khunti', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(612, 11, 'Kodarma', 'Kodarma', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(613, 11, 'Latehar', 'Latehar', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(614, 11, 'Lohardaga', 'Lohardaga', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(615, 11, 'Pakur', 'Pakur', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(616, 11, 'Paschimi Singhbhum', 'Paschimi Singhbhum', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(617, 11, 'Purbi Singhbhum', 'Purbi Singhbhum', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(618, 11, 'Sahibganj', 'Sahibganj', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(619, 11, 'Saraikela-Kharsawan', 'Saraikela-Kharsawan', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(620, 11, 'Simdega', 'Simdega', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(621, 12, 'Belagavi', 'Belagavi', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(622, 12, 'Vijayapura', 'Vijayapura', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(623, 12, 'Uttara Kannada', 'Uttara Kannada', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(624, 12, 'Chikkaballapur', 'Chikkaballapur', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(625, 12, 'Davanagere', 'Davanagere', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(626, 12, 'Ramanagara', 'Ramanagara', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(627, 12, 'Kalaburagi', 'Kalaburagi', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(628, 12, 'Koppal', 'Koppal', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(629, 12, 'Yadgir', 'Yadgir', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(630, 12, 'Chamarajanagar', 'Chamarajanagar', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(631, 12, 'Dakshina Kannada', 'Dakshina Kannada', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(632, 13, 'Thiruvananthapuram', 'Thiruvananthapuram', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(633, 13, 'Kannur', 'Kannur', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(634, 13, 'Alappuzha', 'Alappuzha', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(635, 13, 'Palakkad', 'Palakkad', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(636, 13, 'Malappuram', 'Malappuram', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(637, 13, 'Manjeri', 'Manjeri', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(638, 13, 'Tellicherry', 'Tellicherry', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(639, 13, 'Ponnani', 'Ponnani', '', '', 0, 0, 1, '2017-12-15', '2017-12-15');
INSERT INTO `tbl_city` (`city_id`, `state_id`, `city_name`, `slug`, `image`, `description`, `sort_order`, `featured`, `status`, `date_added`, `date_modified`) VALUES
(640, 13, 'Vatakara', 'Vatakara', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(641, 13, 'Kanhangad', 'Kanhangad', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(642, 13, 'Taliparamba', 'Taliparamba', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(643, 13, 'Payyanur', 'Payyanur', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(644, 13, 'Koyilandy', 'Koyilandy', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(645, 30, 'Agatti Island', 'Agatti Island', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(646, 30, 'Amini', 'Amini', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(647, 30, 'Andrott', 'Andrott', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(648, 13, 'Bangaram Atoll', 'Bangaram Atoll', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(649, 30, 'Bitra', 'Bitra', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(650, 30, 'Chetlat Island', 'Chetlat Island', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(651, 30, 'Kadmat Island', 'Kadmat Island', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(652, 30, 'Kalpeni', 'Kalpeni', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(653, 30, 'Kavaratti', 'Kavaratti', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(654, 30, 'Kiltan', 'Kiltan', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(655, 30, 'Minicoy', 'Minicoy', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(656, 14, 'Raisen', 'Raisen', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(657, 14, 'Rajgarh', 'Rajgarh', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(658, 14, 'Bhind', 'Bhind', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(659, 14, 'Sheopur', 'Sheopur', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(660, 14, 'Datia', 'Datia', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(661, 14, 'Ashoknaga', 'Ashoknaga', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(662, 14, 'Shivpuri', 'Shivpuri', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(663, 14, 'Alirajpur', 'Alirajpur', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(664, 14, 'Dhar', 'Dhar', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(665, 14, 'Barwani', 'Barwani', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(666, 14, 'Jhabua', 'Jhabua', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(667, 14, 'Burhanpur', 'Burhanpur', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(668, 14, 'Khandwa', 'Khandwa', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(669, 14, 'Khargone', 'Khargone', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(670, 14, 'Katni', 'Katni', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(671, 14, 'Mandla', 'Mandla', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(672, 14, 'Narsinghpur', 'Narsinghpur', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(673, 14, 'Betul', 'betul', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(674, 14, 'Harda', 'harda', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(675, 14, 'Etul', 'etul', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(676, 14, 'Sidhi', 'Sidhi', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(677, 14, 'Satna', 'Satna', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(678, 14, 'Singrauli', 'singrauli', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(679, 14, 'Satna', 'Satna', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(680, 14, 'Damoh', 'damoh', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(681, 14, 'Tikamgarh', 'tikamgarh', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(682, 14, 'Anuppur', 'anuppur', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(683, 14, 'Umaria', 'umaria', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(684, 14, 'Dewas', 'dewas', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(685, 14, 'Satna', 'Satna', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(686, 15, 'Bhandara', 'bhandara', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(687, 15, 'Gadchiroli', 'gadchiroli', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(688, 15, 'Gondia', 'gondia', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(689, 15, 'Hingoli', 'hingoli', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(690, 15, 'Jalna', 'jalna', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(691, 15, 'Latur', 'latur', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(692, 15, 'Nandurbar', 'nandurbar', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(693, 15, 'Washim', 'washim', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(694, 15, 'Palghar', 'palghar', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(695, 24, 'Jowai', 'jowai', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(696, 24, 'Khliehriat', 'khliehriat', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(697, 24, 'Nongstoin', 'nongstoin', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(698, 24, 'Mawkyrwat', 'mawkyrwat', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(699, 24, 'Resubelpara', 'resubelpara', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(700, 24, 'Williamnagar', 'williamnagar', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(701, 24, 'Baghmara', 'baghmara', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(702, 24, 'Tura', 'tura', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(703, 24, 'Ampati', 'ampati', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(704, 31, 'Kolasib', 'kolasib', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(705, 31, 'Lawngtlai', 'lawngtlai', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(706, 31, 'Lunglei', 'lunglei', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(707, 31, 'Mamit', 'mamit', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(708, 31, 'Siaha', 'siaha', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(709, 31, 'Serchhip', 'serchhip', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(710, 31, 'Champhai', 'champhai', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(711, 23, 'Dimapur', 'dimapur', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(712, 23, 'Kiphire', 'kiphire', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(713, 23, 'Longleng', 'longleng', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(714, 23, 'Mokokchung', 'mokokchung', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(715, 23, 'Mon', 'mon', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(716, 23, 'Peren', 'peren', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(717, 23, 'Phek', 'phek', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(718, 23, 'Tuensang', 'tuensang', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(719, 23, 'Wokha', 'wokha', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(720, 23, 'Zunheboto', 'zunheboto', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(721, 16, 'Angul', 'angul', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(722, 16, 'Boudh', 'boudh', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(723, 16, 'Bargarh', 'bargarh', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(724, 16, 'Balasore', 'balasore', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(725, 16, 'Debagarh', 'debagarh', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(726, 16, 'Chhatrapur', 'chhatrapur', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(727, 16, 'Paralakhemundi', 'paralakhemundi', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(728, 16, 'Jharsuguda', 'jharsuguda', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(729, 16, 'Jajpur', 'jajpur', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(730, 16, 'Jagatsinghapur', 'jagatsinghapur', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(731, 16, 'Khordha', 'khordha', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(732, 16, 'Kendujhar', 'kendujhar', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(733, 16, 'Bhawanipatna', 'bhawanipatna', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(734, 16, 'Kendrapara', 'kendrapara', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(735, 16, 'Malkangiri', 'malkangiri', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(736, 16, 'Baripada', 'baripada', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(737, 16, 'Nabarangapur', 'nabarangapur', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(738, 16, 'Nuapada', 'nuapada', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(739, 16, 'Nayagarh', 'nayagarh', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(740, 16, 'Rayagada', 'rayagada', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(741, 16, 'Subarnapur', 'subarnapur', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(742, 32, 'Karaikal', 'karaikal', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(743, 32, 'Mahé', 'mahé', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(744, 32, 'Pondicherry', 'pondicherry', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(745, 32, 'Yanam', 'yanam', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(746, 17, 'Barnala', 'barnala', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(747, 17, 'Fatehgarh Sahib', 'fatehgarh-sahib', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(748, 17, 'Fazilka', 'fazilka', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(749, 17, 'Mansa', 'mansa', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(750, 17, 'Moga', 'moga', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(751, 17, 'Sri Muktsar Sahib', 'sri-muktsar-sahib', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(752, 17, 'Pathankot', 'pathankot', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(753, 17, 'Rupnagar', 'rupnagar', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(754, 17, 'Ajitgarh', 'ajitgarh', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(755, 17, 'Nawanshahr', 'nawanshahr', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(756, 17, 'Tarn Taran', 'tarn-taran', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(757, 18, 'Banswara', 'banswara', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(758, 18, 'Baran', 'baran', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(759, 18, 'Bundi', 'bundi', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(760, 18, 'Dausa', 'dausa', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(761, 18, 'Hanumangarh', 'hanumangarh', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(762, 18, 'Jaisalmer', 'jaisalmer', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(763, 18, 'Jalore', 'jalore', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(764, 18, 'Jhalawar', 'jhalawar', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(765, 18, 'Karauli', 'karauli', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(766, 33, 'Mangan', 'Mangan', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(767, 33, 'Namchi', 'Namchi', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(768, 33, 'Geyzing', 'Geyzing', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(769, 19, 'Perambalur', 'Perambalur', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(770, 19, 'Tiruvarur', 'Tiruvarur', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(771, 19, 'Thoothukudi', 'Thoothukudi', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(772, 19, 'Tiruvallur', 'Tiruvallur', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(773, 19, 'Viluppuram', 'Viluppuram', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(774, 2, 'Adilabad', 'Adilabad', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(775, 2, 'Kothagudem', 'Kothagudem', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(776, 2, 'Jagtial', 'Jagtial', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(777, 2, 'Jangaon', 'Jangaon', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(778, 2, 'Bhupalpalle', 'Bhupalpalle', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(779, 2, 'Gadwal', 'Gadwal', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(780, 2, 'Kamareddy', 'Kamareddy', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(781, 2, 'Karimnagar', 'Karimnagar', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(782, 2, 'Asifabad', 'Asifabad', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(783, 2, 'Mahabubabad', 'Mahabubabad', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(784, 2, 'Mahabubnagar', 'Mahabubnagar', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(785, 2, 'Mancherial', 'Mancherial', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(786, 2, 'Medak', 'Medak', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(787, 2, 'Shamirpet', 'Shamirpet', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(788, 2, 'Nagarkurnool', 'Nagarkurnool', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(789, 2, 'Nalgonda', 'Nalgonda', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(790, 2, 'Nirmal', 'Nirmal', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(791, 2, 'Nizamabad', 'Nizamabad', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(792, 2, 'Peddapalli', 'Peddapalli', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(793, 2, 'Sircilla', 'Sircilla', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(794, 2, 'Shamshabad', 'Shamshabad', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(795, 2, 'Sangareddy', 'Sangareddy', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(796, 2, 'Siddipet', 'Siddipet', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(797, 2, 'Suryapet', 'Suryapet', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(798, 2, 'Vikarabad', 'Vikarabad', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(799, 2, 'Wanaparthy', 'Wanaparthy', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(800, 2, '	Warangal Rural', 'Warangal-rural', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(801, 2, 'Warangal Urban', 'Warangal-urban', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(802, 2, 'Bhongir', 'Bhongir', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(803, 25, 'Dhalai', 'Dhalai', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(804, 25, 'Sipahijala', 'Sipahijala', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(805, 25, 'Khowai', 'Khowai', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(806, 25, 'Gomati', 'Gomati', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(807, 25, 'Unakoti', 'Unakoti', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(808, 25, 'Dharmanagar', 'Dharmanagar', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(809, 25, 'Belonia', 'Belonia', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(810, 21, 'Bageshwar', 'Bageshwar', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(811, 21, 'Champawat', 'Champawat', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(812, 21, 'Rudraprayag', 'Rudraprayag', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(813, 21, 'Rudrapur', 'Rudrapur', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(814, 21, 'Uttarkashi', 'Uttarkashi', '', '', 0, 0, 1, '0000-00-00', '0000-00-00'),
(815, 22, 'Raiganj', 'Raiganj', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(816, 22, 'Balurghat', 'Balurghat', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(817, 22, 'Chinsura', 'Chinsura', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(818, 22, 'Jhargram', 'Jhargram', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(819, 22, 'Kalimpong', 'Kalimpong', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(820, 22, 'English Bazar', 'English Bazar', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(821, 22, 'Medinipur', 'Medinipur', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(822, 22, 'Tamluk', 'Tamluk', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(823, 22, 'Baharampur', 'Baharampur', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(824, 22, 'Krishnanagar', 'Krishnanagar', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(825, 20, 'Firozabad', 'Firozabad', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(826, 20, 'Hathras', 'Hathras', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(827, 20, 'Kasganj', 'Kasganj', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(828, 20, 'Kaushambi', 'Kaushambi', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(829, 20, 'Pilibhit', 'Pilibhit', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(830, 20, 'Siddharthnagar', 'Siddharthnagar', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(831, 20, 'Chitrakoot', 'Chitrakoot', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(832, 20, 'Hamirpur', 'Hamirpur', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(833, 20, 'Mahoba', 'Mahoba', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(834, 20, 'Balarampur', 'Balarampur', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(835, 20, 'Shravasti', 'Shravasti', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(836, 20, 'Ambedkar Nagar', 'Ambedkar Nagar', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(837, 20, 'Amethi', 'Amethi', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(838, 20, 'Kushinagar', 'Kushinagar', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(839, 20, 'Maharajganj', 'Maharajganj', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(840, 20, 'Jalaun', 'Jalaun', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(841, 20, 'Auraiya', 'Auraiya', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(842, 20, 'Farrukhabad', 'Farrukhabad', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(843, 20, 'Kannauj', 'Kannauj', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(844, 20, 'Lakhimpur Kheri', 'Lakhimpur Kheri', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(845, 20, 'Raebareli', 'Raebareli', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(846, 20, 'Sitapur', 'Sitapur', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(847, 20, 'Unnao', 'Unnao', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(848, 20, 'Bagpat', 'Bagpat', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(849, 20, 'Bulandshahr', 'Bulandshahr', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(850, 20, 'Gautam Buddha Nagar', 'Gautam Buddha Nagar', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(851, 20, 'Hapur', 'Hapur', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(852, 20, 'Sant Ravidas Nagar', 'Sant Ravidas Nagar', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(853, 20, 'Sonbhadra', 'Sonbhadra', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(854, 20, 'Amroha', 'Amroha', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(855, 20, 'Rampur', 'Rampur', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(856, 20, 'Sambhal', 'Sambhal', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(857, 20, 'Shamli', 'Shamli', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(858, 20, 'Chandauli', 'Chandauli', '', '', 0, 0, 1, '2017-12-15', '2017-12-15'),
(859, 16, 'Rourkela', 'Rourkela', '', '', 0, 0, 1, '2018-04-24', '2018-04-24'),
(860, 1, 'Kakching', 'Kakching', '', '', 0, 0, 1, '2018-05-10', '2018-05-10'),
(862, 35, 'Kakching', 'Kakching', '', '', 0, 0, 1, '2018-05-10', '2018-05-10'),
(863, 35, 'Moirang', 'Moirang', '', '', 0, 0, 1, '2018-05-10', '2018-05-10'),
(864, 35, 'Churachandpur', 'Churachandpur', '', '', 0, 0, 1, '2018-05-10', '2018-05-10'),
(865, 35, 'Kangpokpi', 'Kangpokpi', '', '', 0, 0, 1, '2018-05-10', '2018-05-10'),
(866, 35, 'Bishnupur', 'Bishnupur', '', '', 0, 0, 1, '2018-05-10', '2018-05-10'),
(867, 35, 'Jiribam', 'Jiribam', '', '', 0, 0, 1, '2018-05-10', '2018-05-10'),
(868, 35, 'Imphal', 'Imphal', '', '', 0, 0, 1, '2018-05-10', '2018-05-10'),
(869, 35, 'Mayang', 'Mayang', '', '', 0, 0, 1, '2018-05-10', '2018-05-10'),
(870, 35, 'Wangjing', 'Wangjing', '', '', 0, 0, 1, '2018-05-10', '2018-05-10'),
(871, 35, 'Yairipok', 'Yairipok', '', '', 0, 0, 1, '2018-05-10', '2018-05-10'),
(872, 35, 'Porompat', 'Porompat', '', '', 0, 0, 1, '2018-05-10', '2018-05-10'),
(873, 35, 'Moreh', 'Moreh', '', '', 0, 0, 1, '2018-05-10', '2018-05-10'),
(874, 35, 'Kakching', 'Kakching', '', '', 0, 0, 1, '2018-05-10', '2018-05-10'),
(875, 35, 'Nambol', 'Nambol', '', '', 0, 0, 1, '2018-05-10', '2018-05-10'),
(876, 35, 'Ningthoukhong', 'Ningthoukhong', '', '', 0, 0, 1, '2018-05-10', '2018-05-10'),
(877, 35, 'Andro', 'Andro', '', '', 0, 0, 1, '2018-05-10', '2018-05-10'),
(878, 35, 'Heriok', 'Heriok', '', '', 0, 0, 1, '2018-05-10', '2018-05-10'),
(879, 35, 'Lilong', 'Lilong', '', '', 0, 0, 1, '2018-05-10', '2018-05-10'),
(880, 35, 'Lamshang', 'Lamshang', '', '', 0, 0, 1, '2018-05-10', '2018-05-10'),
(882, 10, 'Gulmarg', 'Gulmarg', '', '', 0, 0, 1, '2018-05-10', '2018-05-10'),
(883, 10, 'Katra', 'Katra', '', '', 0, 0, 1, '2018-05-10', '2018-05-10'),
(884, 10, 'Pahalgam', 'Pahalgam', '', '', 0, 0, 1, '2018-05-10', '2018-05-10'),
(885, 10, 'Kathua', 'Kathua', '', '', 0, 0, 1, '2018-05-10', '2018-05-10'),
(886, 10, 'Kargil', 'Kargil', '', '', 0, 0, 1, '2018-05-10', '2018-05-10'),
(887, 10, 'Sopore', 'Sopore', '', '', 0, 0, 1, '2018-05-10', '2018-05-10'),
(888, 18, 'Bhiwadi', 'Bhiwadi', '', '', 0, 0, 1, '2018-05-16', '2018-05-16'),
(889, 21, 'Haridwar', 'Haridwar', '', '', 0, 0, 1, '2018-07-26', '2018-07-26');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_state`
--

CREATE TABLE `tbl_state` (
  `state_id` int(11) NOT NULL,
  `state_name` varchar(100) NOT NULL,
  `slug` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `date_added` date NOT NULL,
  `date_modified` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_state`
--

INSERT INTO `tbl_state` (`state_id`, `state_name`, `slug`, `description`, `sort_order`, `featured`, `status`, `date_added`, `date_modified`) VALUES
(1, 'Andhra Pradesh', 'andhra-pradesh', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(2, 'Telangana', 'telangana', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(3, 'Assam', 'assam', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(4, 'Bihar', 'bihar', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(5, 'Chattisgarh', 'chattisgarh', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(6, 'Delhi', 'delhi-ncr', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(7, 'Gujarat', 'gujarat', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(8, 'Haryana', 'haryana', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(9, 'Himachal Pradesh', 'himachal-pradesh', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(10, 'Jammukashmir', 'jammukashmir', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(11, 'Jharkhand', 'jharkhand', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(12, 'Karnataka', 'karnataka', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(13, 'Kerala', 'kerala', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(14, 'Madhya Pradesh', 'madhya-pradesh', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(15, 'Maharashtra', 'maharashtra', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(16, 'Odisha', 'odisha', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(17, 'Punjab', 'punjab', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(18, 'Rajasthan', 'rajasthan', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(19, 'Tamilnadu', 'tamilnadu', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(20, 'Uttar Pradesh', 'uttar-pradesh', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(21, 'Uttarakhand', 'uttarakhand', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(22, 'West Bengal', 'west-bengal', '', 0, 0, 1, '2016-04-19', '0000-00-00'),
(23, 'Nagaland', 'nagaland', '', 0, 0, 1, '2017-04-06', '2017-04-06'),
(24, 'Meghalaya', 'meghalaya', '', 0, 0, 1, '2017-06-29', '2017-06-29'),
(25, 'Tripura', 'tripura', '', 0, 0, 1, '2017-06-30', '2017-06-30'),
(26, 'Andaman and Nicobar', 'andaman-and-nicobar', '', 0, 0, 1, '2017-07-05', '2017-07-05'),
(27, 'Arunachal Pradesh', 'arunachal-pradesh', '', 0, 0, 1, '2017-07-05', '2017-07-05'),
(28, 'Dadra and Nagar Haveli', 'dadra-and-nagar-haveli', '', 0, 0, 1, '2017-07-05', '2017-07-05'),
(29, 'Goa', 'goa', '', 0, 0, 1, '2017-07-05', '2017-07-05'),
(30, 'Lakshadweep', 'lakshadweep', '', 0, 0, 1, '2017-07-05', '2017-07-05'),
(31, 'Mizoram', 'mizoram', '', 0, 0, 1, '2017-07-05', '2017-07-05'),
(32, 'Puducherry', 'puducherry', '', 0, 0, 1, '2017-07-05', '2017-07-05'),
(33, 'Sikkim', 'sikkim', '', 0, 0, 1, '2017-07-05', '2017-07-05'),
(34, 'Daman and Diu', 'daman-and-diu', '', 0, 0, 1, '2017-07-05', '2017-07-05'),
(35, 'Manipur', 'manipur', '', 0, 0, 1, '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Alvah Daugherty', 'conn.buddy@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '2Dx0wqSr3P', '2018-08-24 06:34:43', '2018-08-24 06:34:43'),
(2, 'Hyman Reynolds', 'ismael53@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'yXaIA8jWDV', '2018-08-24 06:34:43', '2018-08-24 06:34:43'),
(3, 'Dr. Gerald Kertzmann V', 'karley.metz@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'K5UsnzRu6B', '2018-08-24 06:34:43', '2018-08-24 06:34:43'),
(4, 'Bill Ortiz Jr.', 'wwindler@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'y5CNQt3sR0', '2018-08-24 06:34:43', '2018-08-24 06:34:43'),
(5, 'Dr. Trystan Blanda V', 'laverna85@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'XXhKgwme2E', '2018-08-24 06:34:43', '2018-08-24 06:34:43'),
(6, 'Jessyca Pacocha', 'dlesch@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'WJIPiqDrrL', '2018-08-24 06:34:43', '2018-08-24 06:34:43'),
(7, 'Alford Hand', 'wlind@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'PZ89ZqgzIJ', '2018-08-24 06:34:43', '2018-08-24 06:34:43'),
(8, 'Dr. Gennaro Johnson', 'deron.rutherford@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'wTY5bmN7lf', '2018-08-24 06:34:43', '2018-08-24 06:34:43'),
(9, 'Dr. Viola Kemmer Jr.', 'elesch@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'fISEMAwn9w', '2018-08-24 06:34:43', '2018-08-24 06:34:43'),
(10, 'Lavon Leuschke', 'raleigh00@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'y0sHXbKfcI', '2018-08-24 06:34:43', '2018-08-24 06:34:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_schedules`
--
ALTER TABLE `event_schedules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_speakers`
--
ALTER TABLE `event_speakers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_stories`
--
ALTER TABLE `event_stories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_types`
--
ALTER TABLE `event_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `organisers`
--
ALTER TABLE `organisers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `site_settings`
--
ALTER TABLE `site_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `speakers`
--
ALTER TABLE `speakers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_city`
--
ALTER TABLE `tbl_city`
  ADD PRIMARY KEY (`city_id`);

--
-- Indexes for table `tbl_state`
--
ALTER TABLE `tbl_state`
  ADD PRIMARY KEY (`state_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `event_schedules`
--
ALTER TABLE `event_schedules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `event_speakers`
--
ALTER TABLE `event_speakers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `event_stories`
--
ALTER TABLE `event_stories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `event_types`
--
ALTER TABLE `event_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `organisers`
--
ALTER TABLE `organisers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `site_settings`
--
ALTER TABLE `site_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `speakers`
--
ALTER TABLE `speakers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_city`
--
ALTER TABLE `tbl_city`
  MODIFY `city_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=890;

--
-- AUTO_INCREMENT for table `tbl_state`
--
ALTER TABLE `tbl_state`
  MODIFY `state_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
