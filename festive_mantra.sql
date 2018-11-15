-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 14, 2018 at 05:57 PM
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
(1, 'Kapil', 'Khandelwal', 'admin@festevemantra.com', 8447421111, '89857 Kilback Villages Apt. 302\r\nPort Sharonfort, MA 41632-5354', 99, 18, 274, 555520, '$2y$10$w8PFGGl22h0whbcvci/sWus8Ono9csQgeqSGQaN/yjNLH6Zy/g0p.', '1535112653.jpg', '4iRY4x3noONJEjV4nsqs9kVotaWq10LwMMISH3gJkiKL0gwRCbRxzjH4VcTY', '2018-08-24 06:34:43', '2018-10-08 00:51:14'),
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
-- Table structure for table `advertisements`
--

CREATE TABLE `advertisements` (
  `id` int(10) UNSIGNED NOT NULL,
  `ad_type` tinyint(4) NOT NULL COMMENT '1=>Top,2=>Right',
  `ad_location` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ad_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ad_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `event` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `advertisements`
--

INSERT INTO `advertisements` (`id`, `ad_type`, `ad_location`, `ad_url`, `ad_image`, `category`, `event`, `status`, `created_at`, `updated_at`) VALUES
(2, 2, 'event', 'https://www.techjockey.com/vendor-portal/vendor/request_category', '1538334842.jpg', '', '6', 1, '2018-10-01 02:12:23', '2018-10-01 02:14:21');

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitter_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `linkedin_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instagram_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `googleplus_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `youtube_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `name`, `image`, `designation`, `about`, `facebook_id`, `twitter_id`, `linkedin_id`, `instagram_id`, `googleplus_id`, `youtube_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Abhishek Anand', '1538594109.jpg', 'Web Developer', '<p>gftfc</p>', 'facebook', 'twitter', 'linkedin', 'instagram', 'googleplus', 'youtube', 1, '2018-10-03 12:57:20', '2018-10-04 02:15:09');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL,
  `category_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `mini_icon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `popular_icon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `top_banner` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `right_banner` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort_order` int(11) NOT NULL,
  `meta_keyword` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `popular` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `category_name`, `category_title`, `slug`, `description`, `mini_icon`, `popular_icon`, `image`, `event_image`, `top_banner`, `right_banner`, `sort_order`, `meta_keyword`, `meta_description`, `page_title`, `status`, `popular`, `created_at`, `updated_at`) VALUES
(1, 0, 'Music', 'Enjoy each rhythm at these Music Events', 'music-events', '<p>Explore the top music festivals of India, choose your favorurite music fest from our curated list. Book tickets Online.</p>', '1537689729.png', '1537691757.png', '1540827412.jpg', '1537689705.png', '1540058426.jpg', '1535113647.jpg', 1, 'top 10 music events, top 10 music concerts, top 10 music festivals, Upcoming music concerts, India\'s 10 Best Music Festivals, edm music festivals in india, classical music festivals in india, edm music festivals in india, cultural events today, Upcoming Live music events, Upcoming DJ Parties events, new year party events, Upcoming New year fest', 'Explore the top music festivals of India, choose your favorurite music fest from our curated list. Book tickets Online.', 'Top 29 Upcoming Music Festivals, Concerts & Night DJ Parties', 1, 1, '2018-08-24 06:55:52', '2018-10-29 22:36:52'),
(2, 0, 'Sports', 'Sports & Fitness events to unleash the athlete in you', 'sports-events', '<p>Get better shape without join expensive fitness classes. Explore Sports Events in India - Marathons, Running, Walk Marathon, Sports &amp; Fitness. Register Online Now</p>', '1537689772.png', '1537691781.png', '1540827566.jpg', '1537689751.png', '1540113047.jpg', '1535113758.jpg', 5, 'upcoming free marathon, upcoming half marathon 2019, international marathon 2019, women\'s half marathon 2019, airtel delhi marathon 2019, marathon calendar 2019, marathon in gurgaon tomorrow, upcoming sports events 2019, fitness competition in delhi, upcoming football tournaments 2019, upcoming corporate events 2019, upcoming basketball tournaments 2019, upcoming cricket tournaments in india, upcoming athletics events 2019,  city4kids events.', 'Get better shape without join expensive fitness classes. Explore Sports Events in India - Marathons, Running, Walk Marathon, Sports & Fitness. Register Online Now', 'Discover Top 29 Upcoming Sports & Marathon Events In India: Register Now', 1, 1, '2018-08-24 06:59:18', '2018-10-29 22:39:26'),
(3, 0, 'Food', 'Munch, Crunch & Slurp the scrumptious cuisines at these Food Festivals', 'food-festivals', '<p>Top food &amp; drink festivals happening aound you. Get the close look at the most saught after dishes and recipes by top chefs. Get Discounted Tickets Now</p>', '1537689793.png', '1537691826.png', '1540827742.jpg', '1537690764.png', '1540058605.jpg', '1535113998.jpg', 2, 'upcoming food festivals in 2019, food festival today, street food festival 2019, upcoming food festivals in delhi, food festival in delhi india gate, upcoming cooking competition in india, food eating competition in india, international food festival 2019, food festival in bangalore freedom park, street food festival bangalore, food mela in india 2019, food festival in delhi jawaharlal nehru stadium', 'Top food & drink festivals happening aound you. Get the close look at the most saught after dishes and recipes by top chefs. Get Discounted Tickets Now', 'Pick Top 29 Food & Drink Festivals in India | Don\'t Miss it - Explore Now', 1, 1, '2018-08-24 07:03:18', '2018-10-29 22:42:22'),
(4, 0, 'Travel', 'Awaken the Gulliver in you to explore beautiful places', 'travel-packages', '<p>Find top destinations and experts to take you to your favorite destination across India. Book Directly with Experts &amp; Save Your Time and Money.</p>', '1537689812.png', '1537691846.png', '1540827544.jpg', '1537689853.png', '1540113030.jpg', '1535114095.jpg', 4, 'Customized Travel Packages for Domestic & International, Luxury Travel Deal Packages,  India honeymoon tour packages, Tour Packages in India,  Best Holiday Travel Packages, Domestic & International Holiday Packages, Rajasthan Tour Packages, family holiday packages in india, honeymoon tour packages, india tour packages with prices, all india tour packages prices, Upcoming Travel & Adventure Events', 'Find top destinations and experts to take you to your favorite destination across India. Book Directly with Experts & Save Your Time and Money.', 'Customized Travel Packages for Domestic & International | Lowest Prices Guaranteed', 1, 1, '2018-08-24 07:04:55', '2018-10-29 22:39:04'),
(5, 0, 'DJ Party', 'Ditch the daily doldrums at these parties', 'dj-party-events', '<p>Join happening parties to dance to the music by top DJs and artists. Discover the ever-growing list of most happening parties across India</p>', '1537689824.png', '1537898898.png', '1540827518.jpg', '1537690102.png', '1540113013.jpg', '1535114178.jpg', 8, 'Upcoming DJ parties today, ladies night party today, nightlife events, saturday night party, upcoming edm concerts in india 2019, upcoming trance events, music festival 2019, new year party 2019, new year celebration in delhi, new year 2018 packages, new year celebration in 5 star hotels, how to celebrate new year with family new year party with stay, new year parties in india 2019, new year party in resorts near me, 31st december 2018 party, new year party celebration, top New year events', 'Join happening parties to dance to the music by top DJs and artists. Discover the ever growing list of most happening parties across India', 'Top 29 Most Happening DJ Parties, Concerts, Pool Party & Nightlife Near you', 1, 1, '2018-08-24 07:06:18', '2018-10-29 22:38:38'),
(6, 0, 'Conference', 'Great minds create great future. Join them!', 'conference-events', '<p>Learn, absorb and apply knowledge gained by experts of your field at these conferences. Choose from these top conferences, seminars, workshops and meet-ups. Register Now</p>', '1537689834.png', '1537691889.png', '1540827660.jpg', '1537689799.png', '1540058544.jpg', '1535114351.jpg', 3, 'upcoming international conferences in india 2019, conference alerts in india, upcoming seminars and conferences in social sciences in india, ieee conference in 2019, upcoming workshop in 2019, medical conferences in india 2019, startup conferences 2018 india, best startup conferences 2019, upcoming startup events in india 2019, startup networking events in India, upcoming startup events in 2019, startup meetups 2019', 'Learn, absorb and apply knowledge gained by experts of your field at these conferences. Choose from these top conferences, seminars, workshops and meet-ups. Register Now', 'Find Top 29 Conferences, Meetups & Summits By Experts Of Your Field', 1, 1, '2018-08-24 07:09:11', '2018-10-29 22:41:00'),
(7, 0, 'Skill Development', 'Join the pros of your domain to climb the success ladder', 'skill-development-events', '<p>Add a feather in your career&#39;s cap by participating in these certification, training and skill development courses. Book Your Seat Now.</p>', '1537689845.png', '1535114436.jpg', '1540827613.jpg', '1537690726.png', '1535114436.jpg', '1535114436.jpg', 7, 'skill development events, Skills Development Workshop, upcoming educational events, skill development conference, skill india courses, Skill Development Courses & Training Program, upcoming Corporate events, agile certification cost, agile certification institute, pmi agile certification, Upcoming seminars and workshops, Free digital marketing workshops, best career options in india', 'Add a feather in your career\'s cap by participating in these certification, training and skill development courses. Book Your Seat Now.', 'Top Upcoming Career Oriented & Skill Development Events Near you - Register Now', 1, 1, '2018-08-24 07:10:36', '2018-10-29 22:40:13'),
(10, 0, 'Trade Show', 'Trade Show', 'trade-shows', '', '1537899170.png', '', '1537860800.jpg', '1537899042.png', '', '', 6, 'trade fair in delhi 2018, upcoming trade fairs in india 2019, upcoming exhibitions in india 2019, trade fair delhi 2019 dates, fashion exhibition in india 2019, international trade fair, exhibition in india 2019 list, cloth exhibitions in india, handicraft exhibitions in india,  list of exhibitions in india 2019, trade fair 2019 pragati maidan, pragati maidan exhibition schedule 2018-19, Upcoming art festivals in india', 'Find and add the top upcoming exhibition, tradeshows and fairs to your next visit list. From Auto expo, apparel tradeshow to book fairs, know everything about them on Festeve Mantra.', 'List of Trade Shows, Fairs & Exhibitions in India: Start Exploring', 1, 1, '2018-09-25 14:33:20', '2018-10-22 01:13:53');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` enum('owner','emp') COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitter_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `linkedin_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instagram_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `googleplus_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `type`, `name`, `image`, `designation`, `facebook_id`, `twitter_id`, `linkedin_id`, `instagram_id`, `googleplus_id`, `about`, `status`, `created_at`, `updated_at`) VALUES
(1, 'owner', 'Kapil Khandelwal', '1539452686.jpg', 'Co-Founder, Director', 'https://www.facebook.com/festevemantra/', 'https://twitter.com/festevemantra', 'https://www.linkedin.com/in/kapil26071992/', 'https://www.instagram.com/festevemantra/?hl=en', '', '<p style=\"margin-left:0in; margin-right:0in\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">I am a zealous event finder &amp; attendee focused to bridge the gap between online visitors and the event hosts seamlessly.</span></span></p>', 1, '2018-10-07 18:30:00', '2018-10-29 22:53:05'),
(2, 'owner', 'Sonum Bhardwaj', '1539453961.jpg', 'Co-Founder & Editor', 'https://www.facebook.com/festevemantra/', 'https://twitter.com/festevemantra', 'https://www.linkedin.com/company/digitalbeginner/', 'https://www.instagram.com/festevemantra/?hl=en', '', '<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">I am an event-geek having several years of experience in event management, investing all my passion to find the authentic event information for you. </span></span></p>', 1, '2018-10-07 18:30:00', '2018-10-29 22:53:23'),
(3, 'emp', 'Dummy 1', '', 'Content Writer', '', '', '', '', '', '', 1, '2018-10-07 18:30:00', '2018-10-07 18:30:00'),
(4, 'emp', 'Dummy 2', '', 'UI Designer', '', '', '', '', '', '', 1, '2018-10-07 18:30:00', '2018-10-07 18:30:00'),
(5, 'emp', 'Dummy 3', '', 'Content Writer', '', '', '', '', '', '', 1, '2018-10-07 18:30:00', '2018-10-07 18:30:00');

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
  `event_document` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ticket_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `website_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitter_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `linked_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instagram_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `googleplus_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `youtube_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `speaker_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort_order` int(11) NOT NULL,
  `total_view` int(11) NOT NULL,
  `home_event` tinyint(4) NOT NULL DEFAULT '0',
  `top_hundred` tinyint(4) NOT NULL DEFAULT '0',
  `premium` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=>None,1=>Premium,2=>favourite',
  `popular` tinyint(1) NOT NULL COMMENT '0=>No,1=>Yes',
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `title`, `slug`, `event_category`, `event_type`, `short_description`, `description`, `start_date`, `end_date`, `start_time`, `end_time`, `event_image`, `event_top_banner`, `organiser_id`, `event_document`, `ticket_url`, `website_url`, `facebook_id`, `twitter_id`, `linked_id`, `instagram_id`, `googleplus_id`, `youtube_id`, `speaker_title`, `sort_order`, `total_view`, `home_event`, `top_hundred`, `premium`, `popular`, `status`, `created_at`, `updated_at`) VALUES
(6, 'Khariboli Masher: Music, Food & Rain-dance Festival', 'khariboli-masher-2018', 1, 1, '<p><span style=\"font-size:16px\"><span style=\"font-family:Calibri,sans-serif\">We are back with another dose of fun and entertainment for you all! Over 200 artists from across India &amp; abroad....</span></span></p>', '<p style=\"margin-left:0in; margin-right:0in; text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\">Will you believe us if we tell you that music, food, art, culture, and entertainment can come together in one place? That you can savor the delicacies from around the world; groove to your favorite beats and footloose in the rain all at once?</span></span></p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in; text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\">Hello, there peeps! We are back with another dose of fun and entertainment for you all! Over 200 artists from across India and abroad, more than 300 food and Lifestyle stalls, around 100 rides and activities and the largest rain dance setup is waiting for you! Can you feel the adrenaline rush already? Well, we certainly can! </span></span></p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in; text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\">&ldquo;The Khariboli Masher&rdquo; is back in town! A festival that celebrates freedom, honesty, and expression. Top musicians, chefs, and artists bring the best only for you and your loved ones.&nbsp; A festival of culinary art and music that honors the Indian heritage for its diverse forms. The Khariboli Masher offers exciting Watermelon Slides, Tomato Fights, Open Mic Sessions with Hasya Kavis and Mother-in-law&#39;s Revenge: a competitive grub fest. An array of stalls offering a large variety of food recipes from all over India; from specialty meats and dishes to handmade confectionary and mouth-watering desserts. This is pure heaven to all the foodies out there!&nbsp; A surprise performance from top artists and live bands amid the musical fountains and electric lights is a sight to behold. Khariboli Masher brings together a concert with both traditional Indian music and artists from western rock, hip-hop, and other genres together. Music lovers, we promise you the time of your lives! </span></span></p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in; text-align:justify\"><span style=\"font-size:18px\"><strong><span style=\"font-family:Calibri,sans-serif\">Date: 22th Dec - 23rd Dec 2018</span></strong></span></p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in; text-align:justify\"><span style=\"font-size:18px\"><strong><span style=\"font-family:Calibri,sans-serif\">Time : 11:00 am - 10:30 pm</span></strong></span></p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in; text-align:justify\"><span style=\"font-size:18px\"><strong><span style=\"font-family:Calibri,sans-serif\">Venue: &nbsp;Jawaharlal Nehru Stadium, Pragati Vihar, Delhi, India</span></strong></span></p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in; text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\">Time for you all to let it loose! Come and know what the buzz is about.<span style=\"background-color:white\"> Enjoy a host of fun-filled engagements</span> with an extr<span style=\"background-color:white\">avaganza of mouth-watering delicacies and music. Don&rsquo;t miss out on all fun at the Khariboli Festival guys! Make memories that will last for a lifetime.</span></span></span></p>', '2018-12-22', '2018-12-23', '11:00:00', '22:30:00', '1537375075.jpg', '1537553521.jpg', 2, '', 'https://kharibolimasher.com/', 'https://kharibolimasher.com/', 'https://www.facebook.com/KhariboliMasher', 'https://twitter.com/KhariboliMasher', '', 'https://www.instagram.com/KhariboliMasher/', '', '', '', 1, 313, 1, 1, 2, 1, 1, '2018-08-25 14:24:16', '2018-10-19 16:33:38'),
(13, 'Sunburn City Festival 2018: Delhi NCR, Mumbai & Bengaluru', 'sunburn-city-festival', 1, 0, '<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Calibri,sans-serif\">Get ready to electrify yourself through dance music as 2018&rsquo;s most awaited EDM festival is coming! With its exclusive line-up of artists, the top EDM festival of India has ranked itself among the top five EDM festivals of the world.</span></span></p>', '<p style=\"margin-left:0in; margin-right:0in; text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\">Get ready to electrify yourself through dance music as 2018&rsquo;s most awaited EDM festival is coming! With its exclusive line-up of artists, the top EDM festival of India has ranked itself among the top five EDM festivals of the world. Sunburn city festival is all scheduled to take place in the month of October. Sunburn Music Festival being the sole EDM festival to start the trend in India has now gathered millions of fans following. People belonging to working class, business class and movie-tv stars now wait for this breadth taking event to happen and participate in it with their close ones. </span></span></p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in; text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\">If Sunburn Music Festival has been in your travel list, then there&rsquo;s a surprise for all of you! For the very first time, Sunburn Music Festival will happen in New Delhi along with Bengaluru and Mumbai. It will be a weekend full of music, dance and food. To garnish this better, you will also witness several shopping places nearby. Flock together with your gang to your city or the nearest city near you to attend this year&rsquo;s Sunburn City Festival. Owing to have millions of fans following, Sunburn Music Festival will happen during weekends in the 3 different cities, before the start of the main event in Pune.</span></span></p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in; text-align:justify\"><span style=\"font-size:18px\"><strong><span style=\"font-family:Calibri,sans-serif\">Sunburn City Festival will happen simultaneously on 6<sup>th</sup> and 7<sup>th</sup> October in New Delhi and Mumbai, and on 5<sup>th</sup> October in Bengaluru. With the artist line-up having Above &amp; Beyond, Yellow Claw, Malaa, Moksi and Kristian Nairn with the ticket price starting INR 1500 onwards.</span></strong></span></p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in; text-align:justify\"><span style=\"font-size:18px\"><strong>City wise artist line-up and schedule:</strong></span></p>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:18px\"><strong>Bengaluru</strong>: 5th October - Above &amp; Beyond, Yellow Claw, Malaa, Moksi</span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:18px\"><strong>Mumbai</strong>: 6th October - Yellow Claw and Moksi; 7th October - Above &amp; Beyond, Malaa and Kristian Nairn</span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:18px\"><strong>Delhi NCR</strong>: 6th October - Above &amp; Beyond, Malaa and Kristian Nairn; 7th October - Yellow Claw and Moksi</span></li>\r\n</ul>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in; text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\">We are sure you don&rsquo;t wanna miss this one!</span></span></p>', '2018-10-05', '2018-10-07', '15:00:00', '22:30:00', '1537376345.jpg', '1537553192.jpg', 1, '', 'https://in.bookmyshow.com/events/sunburn-city-festival/ET00082184', 'http://sunburn.in/', 'https://www.facebook.com/pg/SunburnFestival/', 'https://twitter.com/SunburnFestival', '', 'https://www.instagram.com/SunburnFestival/', '', '', '', 9, 193, 1, 1, 0, 1, 1, '2018-09-19 23:49:21', '2018-10-02 00:35:36'),
(15, 'India Affiliate Summit 2018: Leela Ambience, Gurugram', 'india-affiliate-summit-2018', 6, 0, '<p><span style=\"font-size:16px\"><span style=\"font-family:Calibri,sans-serif\">The 4<sup>th</sup> edition of India Affiliate Summit is all set to awe-inspire you on 11<sup>th</sup> and 12<sup>th</sup> of October. Initiated in 2015 with an idea to gather the thought leaders of affiliate marketing at one place. </span></span></p>', '<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\">Are you an affiliate marketing pro and looking to even widen your knowledge and skills? Here&rsquo;s the greatest news for you.<strong> The 4<sup>th</sup> edition of India Affiliate Summit is all set to awe-inspire you on 11<sup>th</sup> and 12<sup>th</sup> of October. </strong>Initiated in 2015 with an idea to gather the thought leaders of affiliate marketing at one place. The primary objective of the summit is to share knowledge, giving affiliate giants an opportunity to showcase their success mantra through presentations and networking opportunities at their one-stop &lsquo;Affiliate Street&rsquo;.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\">What all &lsquo;Affiliate Street&rsquo; has to offer you? Grab this once in a year opportunity collaborate with other affiliate networks. Induce advices from the experts and get your business to the next level.<strong> The street is open to all affiliate publishers, marketers, brands, agencies, ad networks, bloggers and much more. Based on the traditional concept of a marketplace filled with merchants, vendors </strong></span><strong><span style=\"font-family:Calibri,sans-serif\"><strong>and</strong> buyers, there will be 2500+ delegates, 350+ companies and 70+ exhibitors.</span></strong></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\">Who should attend and why to attend the India Affiliate Summit 2018? IAS18 being the premier affiliate event of India, it brings 2500+ delegates from all over India and the world. Growing networks/agencies will learn from the grown giants of the arena. Joining the affiliate pact will help you:</span></span></p>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\"><strong>Grow</strong>: Every business&rsquo;s prime goal is to grow. With huge number of brands joining you on the big day will give you the grand opportunity to network and grow.</span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\"><strong>Establish</strong>: Lay the foundation of your empire by collaborating with affiliate networks and publishers.</span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\"><strong>Explore</strong>: Various opportunities are awaiting to be unveiled at this summit.</span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\"><strong>Increase</strong>: Become a hustle by reaching more and more affiliate marketers opening a way to increase opportunities.</span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\"><strong>Position</strong>: Growth is an ongoing process and you could make this day you&rsquo;re the day of reaching a distinct position.</span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\"><strong>Capture</strong>: Hit the perfect shot by capturing your prospects while climbing the ladder of corporate profiling.</span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\"><strong>Network</strong>: Learn from experienced by networking with the giants of affiliate marketing.</span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\"><strong>Innovative</strong>: Ignite your innovation mind to create new opportunities for growth, expansion, and learning.</span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\"><strong>Develop</strong>: Building a relationship with your prospects is the key to growth. Develop networks with your peers at this mega event.</span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\"><strong>Build</strong>: Bridge the gap between different stakeholders.</span></span></li>\r\n</ul>', '2018-10-11', '2018-10-12', '08:30:00', '20:15:00', '1537628903.jpg', '1537628903.jpg', 3, '', 'https://www.indiaaffiliatesummit.in/', 'https://www.indiaaffiliatesummit.in/', 'https://www.facebook.com/InternetAndMobileAssociationIndia/', 'https://twitter.com/IAMAIForum', 'https://www.linkedin.com/in/iamai-forum-75a35943/?originalSubdomain=in', '', '', '', 'Speakers', 2, 257, 1, 1, 0, 1, 1, '2018-09-22 22:08:23', '2018-10-02 00:36:23'),
(16, 'Airtel Delhi Half Marathon 2018 | Delhi NCR|', 'airtel-delhi-halfmarathon-2018', 2, 0, '<p><span style=\"font-size:16px\"><span style=\"font-family:Calibri,sans-serif\">Delhi&rsquo;s most awaited running event has pinned the calendar on 20<sup>th</sup> Oct&nbsp;2018. Time has come....</span></span></p>', '<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\">Delhi&rsquo;s most awaited running event has pinned the calendar on 20<sup>th</sup> October 2018. Time has come to get your running shoes ready for that great day when you will participate in<strong> Airtel Delhi Half Marathon</strong>! It all started in the year 2005, when Hutchison sponsored the event and was then taken over by Airtel. Airtel has sponsored the mega running event since 2008. Running events have always drawn the attraction of fitness freaks and runners to run for a charity. Airtel Delhi Half marathon spreads the message of &ldquo;Run for a Cause&rdquo;. Their philanthropy partner is &ldquo;India cares Foundation&rdquo;. </span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\">With the number of participants increasing every year, <strong>Airtel Delhi Half Marathon</strong> has the list of elite runners along with mass participants running through the track. <strong>The best marathoners like Eliud Kipchoge who has been Rio Olympics marathon champion and is the fastest marathon runner, Sir Richard Hadlee, Cathy Freeman, Daley Thompson, </strong><strong>and</strong><strong> Alan Border are few to name when we recall the Airtel Delhi Half Marathon participants&rsquo; list from past editions. </strong>To flaunt your running moments, the organizers also provide you with Facebook finisher video and photos. </span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\">So, what&rsquo;s the wait for? Start practicing and register yourself in this mega running event of Delhi. Run in the heart of the capital city with your fellow runners and create the memory of a lifetime. Be a philanthropist and a runner at the same time. Join the Airtel Half Marathon to &ldquo;Run for a Cause&rdquo;. </span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\">You can participate in any of the 5 categories:</span></span></p>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\"><strong>Half Marathon</strong> &ndash; Distance 21.097 KM, Age Eligibility: Minimum 18yrs and above as on race day.</span></span></li>\r\n</ul>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Application Date: 10<sup>th</sup> August till 7<sup>th</sup> September</span></span></p>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\"><strong>Open 10K Run </strong>&ndash; Distance 10 KM, Age Eligibility: Minimum 15yrs and above as on race day.</span></span></li>\r\n</ul>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Application Date: 10<sup>th</sup> August till 7<sup>th</sup> September</span></span></p>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\"><strong>Great Delhi Run</strong>: Distance 6 KM, Age Eligibility: Minimum 12yrs and above as on race day.</span></span></li>\r\n</ul>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Application Date: 10<sup>th</sup> August till 28<sup>th</sup> September</span></span></p>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\"><strong>Senior Citizens&rsquo; Run</strong>: Distance 4 KM, Age Eligibility: Minimum 60yrs as on race day.</span></span></li>\r\n</ul>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Application Date: 10<sup>th</sup> August till 28<sup>th</sup> September</span></span></p>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\"><strong>Champions With Disability</strong>: Distance 2.3 KM, Age Eligibility: Minimum 12yrs as on race day.</span></span></li>\r\n</ul>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Application Date: 10<sup>th</sup> August till 29<sup>th</sup> September</span></span></p>', '2018-10-21', '2018-10-21', '06:30:00', '09:30:00', '1537685046.jpg', '1537638313.jpg', 4, '', 'https://registration.procamrunning.in/adhm/registration.php', 'https://adhm.procamrunning.in/', 'https://www.facebook.com/runadhm', 'https://twitter.com/runadhm/', '', 'https://www.instagram.com/runadhm/', '', '', '', 5, 404, 1, 1, 0, 1, 1, '2018-09-22 22:59:06', '2018-10-19 16:43:15'),
(17, 'Bridal Asia 2018 - Wedding Apparel, Jewellery & Accessories', 'bridal-asia-2018', 10, 0, '<p style=\"margin-left:0in; margin-right:0in\"><span style=\"font-size:16px\"><span style=\"font-family:Calibri,sans-serif\">Freeze your calendar for the biggest Bridal Exhibition of India! The 20<sup>th</sup> edition of Bridal Asia will swarm in Hotel Ashok, New&nbsp;Delhi from 13<sup>th</sup> till 15<sup>th</sup> Oct&nbsp;this year. </span></span></p>', '<p style=\"margin-left:0in; margin-right:0in; text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\">Freeze your calendar for the biggest Bridal Exhibition of India!<strong> The 20<sup>th</sup> edition of Bridal Asia will swarm in Hotel Ashok, Chanakyapuri, N</strong></span><strong><span style=\"font-family:Calibri,sans-serif\">ew</span></strong><span style=\"font-family:Calibri,sans-serif\"><strong> Delhi from 13<sup>th</sup> till 15<sup>th</sup> October this year. </strong>What started in 1999 as pop up fair around India, London and Pakistan, has now become a mega bridal-collection exposition happening four times in a year with an aim to meet the bridal needs in all seasons. </span></span></p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in; text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\">Get mesmerized by the luxurious collection of trousseau that every bride-to-be dreams of for her big day. You will get to witness all the colors and designs that reflect an Indian Woman&rsquo;s persona. Get what you want to be offered by top and rising bridal wear designers from India and abroad. Be it ethereal and dreamy detailing, Indian royalty, delicate mirror work, draped to perfection, embellished, crystals and beads, enchanting colors and much more all at a single place.</span></span></p>\r\n\r\n<blockquote>\r\n<p style=\"margin-left:0in; margin-right:0in; text-align:justify\"><span style=\"font-size:18px\"><strong><span style=\"font-family:Calibri,sans-serif\">&ldquo;<em>When the wedding bells jingle, head to Bridal Asia&rsquo;s meticulously curated trousseau collection</em>&rdquo;.</span></strong></span></p>\r\n</blockquote>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in; text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\">Whether you are a bride-to-be, bridesmaid, a serial wedding guest, anyone in the bride&rsquo;s gang or just love Indian ethnic-bridal collection and want to behold its beauty with a predilection to make them yours. Book your entrance to this extravagant event happening in the capital city. </span></span></p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in; text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\">It&rsquo;s not just a dream exhibition for the brides but also a great opportunity for the rising designers. Over its tenure of 19 years, it has offered a sought-after platform to the renowned designers from India as well as outside, and to the newcomers who have proved their mettle as luxury <em><span style=\"background-color:white\"><span style=\"color:#222222\">pr&ecirc;t-&agrave;-porter</span></span></em> and couture designers. To add the cherry on the top, their 20<sup>th</sup> anniversary unveil the launch of an all details and information holding magazine to plan your dream wedding exclusively available <strong>Bridal Asia Exhibition, 2018</strong>!</span></span></p>', '2018-10-13', '2018-10-15', '11:00:00', '19:00:00', '1537857020.jpg', '1537857020.jpg', 5, '', 'https://www.bridalasia.com/visitor-registration/', 'https://www.bridalasia.com/', 'https://www.facebook.com/BridalAsiaexpo/', 'https://twitter.com/bridalasiashow?lang=en', '', 'https://www.instagram.com/bridalasia/?hl=en', '', '', '', 6, 101, 1, 1, 0, 1, 1, '2018-09-25 13:30:20', '2018-10-14 01:19:18'),
(18, 'Bryan Adams - The Ultimate Tour 2018', 'bryan-adams-the-ultimate-tour', 1, 0, '<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Calibri,sans-serif\">Bryan Adams&rsquo; Ultimate Tour will kick-start from 9<sup>th</sup> October in Ahmedabad&rsquo;s Sardar Patel Stadium, proceeding to City of Pearls, &ldquo;Hyderabad&rdquo; on 11<sup>th</sup> October.</span></span></p>', '<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\">All the Indian &ldquo;Rock Music&rdquo; fans have now gotten a reason to rock even more as our favourite &ldquo;Summer of &lsquo;69&rdquo; singer will be performing in India soon! We have all grown up listening to his strong vocals and guitar, humming his popular &ldquo;<strong>Summer of 69</strong>&rdquo;, &ldquo;<strong>Run to You</strong>&rdquo;, &ldquo;<strong>I Do It For You</strong>&rdquo; and many more hit numbers. A splendid chance is coming to rock n roll at his songs while he will be performing live in India.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\">With most loved and famous singers like Ed Sheeran, Justin Bieber, Shakira, Coldplay and many others perform in India, the three generations&rsquo; favourite rock singer and love-song writer will be performing this year! </span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\">Well Fellas, as excited as we are to listen and watch the Canadian singer perform live in our city, it&rsquo;s amazing to know that he is excited to perform in this beautiful country again. <strong>This is going to be his &ldquo;Ultimate Tour&rdquo; as he will be visiting India for the 5<sup>th</sup> time and perform in multi-cities.</strong> The Grammy and Juno Award winner even wished us on Independence Day and expressed the immense love and generosity he has received in India. Isn&rsquo;t it rocking to know that he loves us as much as we love him &lt;3 </span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\">His 5<sup>th</sup> concert in India will witness him performing on his last year&rsquo;s release &ldquo;Ultimate&rdquo;, his 6<sup>th</sup> compilation of 21 songs which was released on 3<sup>rd</sup> November 2017 and contains his recorded songs from 1980 till 2017. The compilation also contains his recent songs, &ldquo;Ultimate Love&rdquo; and &ldquo;Please Stay&rdquo;. </span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\">Bryan Adams&rsquo; Ultimate Tour will kick-start from <strong>9<sup>th</sup> October in Ahmedabad&rsquo;s Sardar Patel Stadium</strong>, proceeding to City of Pearls, &ldquo;<strong>Hyderabad&rdquo; on 11<sup>th</sup> October </strong>where he will be performing in Hitex Performing Center. The <strong>next destination</strong> pinned on his tour calendar is the magic city &ldquo;<strong>Mumbai</strong>&rdquo;. He will be performing at<strong> Jio Garden, Mumbai on 12<sup>th</sup> October</strong>. The next concert destination is Bengaluru where he will be performing at <strong>Ozone Urbana on 13<sup>th</sup> October</strong>. The last destination is India&rsquo;s heart, <strong>Delhi NCR</strong> where he will perform at <strong>Leisure Valley Park, Gurugram on 14<sup>th</sup> October</strong>. </span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\">Get your tickets before it&#39;s full house.</span></span></p>', '2018-10-09', '2018-10-14', '17:30:00', '22:30:00', '1537894553.jpg', '1537894553.jpg', 6, '', 'https://www.bryanadams.com/tour/', 'https://www.bryanadams.com/', 'https://www.facebook.com/bryanadamsofficial?fref=ts', 'https://twitter.com/bryanadams', '', 'https://www.instagram.com/bryanadams/', '', 'https://www.youtube.com/user/bryanadams', '', 7, 136, 1, 1, 0, 1, 1, '2018-09-25 23:55:53', '2018-10-14 01:18:44'),
(19, 'Opportunity India Summit 2018 - For Entrepreneurs & Startups', 'opportunity-india-summit-2018', 6, 0, '<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Calibri,sans-serif\">Powered by Entrepreneur, the biggest franchise, retail and entrepreneur conference.....</span></span></p>', '<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\">The biggest challenge of being an entrepreneur and working around raising an empire is that it can&rsquo;t be done single-handedly or without expert advice. For every entrepreneur who is going through the same dilemma of where to find the experts, the biggest entrepreneurial event is right around the corner of the year. Powered by Entrepreneur, the biggest <em>franchise, retail and entrepreneur</em> conference &ndash; <strong>Opportunity India Summit 2018 is all set to &lsquo;entrepreneurise&rsquo; you on 21<sup>st</sup> and 22<sup>nd</sup> October.</strong> This will be the 16<sup>th</sup> Annual edition of Opportunity India Summit taking place in Pragati Maidan, New Delhi simultaneously with <strong>Franchise India Summit 2018</strong>. </span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\">The whole summit will revolve around the theme &ldquo;Predicting Tomorrow&rsquo;s Ideas Today&rdquo; and &ldquo;Examine the Present to Influence the Future&rdquo;. Whether an aspiring entrepreneur with a great idea, or a potential entrepreneur, or an existing one, will learn everything they need to start, grow, or improve from top Indian and global business minds. The discussion of the future of business is so vast that its nearly infinite and difficult to cover in a span of two days. So, they have organized it in three niche discussions:</span></span></p>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\"><strong>Future of Ideas</strong>: This will be the discussion of consumer business. Discussing innovative ideas which are sustainable and profitable at the same time.</span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\"><strong>Future of Growth</strong>: Driving growth through strategic integration of entrepreneurship, management, marketing, and technology. </span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\"><strong>Future of Business</strong>: Aspects of creating businesses through collaboration that builds synergy. </span></span></li>\r\n</ul>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\">Over <strong>100 speakers</strong>, each having built an empire already, will share their journey of building a brand, growing business, how to collaborate with international brands, understand the dynamic consumer behavior, networking opportunity with <strong>300+ delegates</strong>, and <strong>500+ business opportunities</strong>. </span></span></p>', '2018-10-21', '2018-10-22', '10:30:00', '17:00:00', '1538458052.jpg', '1538367697.jpg', 7, '', 'https://expo.franchiseindia.com/conference_registration.php', 'http://www.opportunityindia.com/', 'https://www.facebook.com/FranchiseIndiaNews', 'https://twitter.com/FranchiseIndia', 'https://www.linkedin.com/company/franchise-india-holdings-limited/', '', '', '', 'Guest Speakers', 8, 250, 1, 1, 0, 1, 1, '2018-09-30 14:29:45', '2018-10-19 16:43:50'),
(20, 'The Grub Fest - India\'s Premier Food Festival', 'the-grub-fest-2018', 3, 0, '<p><span style=\"font-size:14px\">Get the lively experience of grubbing on delicacies by top chefs &amp; restaurants at the biggest food festival of India...</span></p>', '<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\">Ingredients to make your taste-buds alive and aroma that carries you away mixed with performances by top Indian artists and garnished with entertainment! Get the lively experience of grubbing on delicacies by top chefs and restaurants at the biggest food festival of India &ndash; <strong>The Grub Fest</strong>. After rocking Gurgaoniites in February this year, The Grub Fest is all scheduled to rock Delhiites in October. Whether a foodie, a collector of gourmet items, a festival aficionado or anyone looking a perfect lively ambiance to hang out with friends and family, head towards<strong> Jawahar Lal Nehru Stadium on 26<sup>th</sup>, 27<sup>th</sup>, and 28<sup>th</sup> October.</strong> </span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\">After Navratri and before Diwali, <strong>The Grub Fest will add another reason to rejoice this festival season. </strong>A place to have all the best of things you seek to make life festive. </span></span></p>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\"><strong>Food</strong>: Wow! This is something that many people live for. Especially when that is cooked by top chefs. A perfect chance to grub on the best food, beverages brands, and world cuisine at one place. </span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\"><strong>Music</strong>: With <strong>Guru Randhawa</strong>, <strong>Hardy Sandhu</strong>, <strong>Nikhil Chinapa</strong>, and many popular artist and bands like <strong>PAN!C</strong> and <strong>Zephyr </strong>have performed at this mega food event. This year, it&rsquo;s going to be even gigantic on music side with mega performances. </span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\"><strong>Entertainment</strong>: If you are passionate about cooking and want to learn some secret recipes then this is going to be a jackpot for you. Watch top chefs cooking their signature dishes. For the other who always like an entertainment while grubbing, need not be disappointed as there will be many fun games for everyone.</span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\"><strong>Experience</strong>: For sure the above fun-packed surprises will sway you in its ambiance, and to add further toppings, the fest will also have <strong>sky-deck, movie screening, lazing areas, photo-booths, and kids&rsquo; play area</strong>.</span></span></li>\r\n</ul>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\">&nbsp;<strong>Check Schedule for more information on restaurants, chefs, artists and bands line-ups at The Grub Fest, New Delhi 2018. </strong></span></span></p>', '2018-10-26', '2018-10-28', '00:00:00', '22:00:00', '1538457995.jpg', '1538413993.jpg', 8, '', 'https://in.bookmyshow.com/national-capital-region-ncr/events/the-grub-fest/ET00084478', 'http://www.thegrubfest.com/', 'https://www.facebook.com/thegrubfest/', 'https://twitter.com/TheGrubFest', '', 'https://www.instagram.com/thegrubfest/?hl=en', '', '', 'Founders of Grub Fest', 3, 182, 1, 1, 2, 1, 1, '2018-10-02 00:12:12', '2018-10-19 16:42:07'),
(21, 'Rajasthan International Folk Festival 2018: Jodhpur, Rajasthan', 'jodhpur-riff-2018', 4, 0, '<p><span style=\"font-size:14px\">One such festival that binds culture, music, dance, cuisine &amp;&nbsp;folks is the annually held Rajasthan&nbsp;Folk Festival...</span></p>', '<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\">October is here, and we are all thrilled cause&rsquo; it has brought a whole lot of&nbsp;reasons to be together and to rejoice! One such festival that binds culture, music, dance, cuisine and folks is the annually held <strong>Rajasthan International Folk Festival</strong>. It is organized in the beautiful <strong><em>Mehrangarh Fort</em></strong>, one of the largest forts of India and voted as &ldquo;Asia&rsquo;s Best Fortress&rdquo; by Time Magazine. It is one of the most visited tourist attractions of Jodhpur which itself is a beautiful Indian city in the state of Rajasthan known for its rich cultural heritage, breath-taking historical monuments and Rajasthani cuisine. </span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\"><strong>Rajasthan International Folk Festival</strong>, also known as RIFF is a 5-days folk festival initiated in 2007 as a festival of recognizing the traditional Rajasthani rural music and musicians. This festival has started the legacy of keeping you mesmerized in its musical aura from dawn till dusk. Series of concerts, plays and historical exhibitions won&rsquo;t let you take your eyes off during the whole festival. It serves the true meaning of festival, bringing together people of all age groups at one place to solely live in the moment without any discriminations. </span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\">From dawn till dusk, <strong><em>Jodhpur RIFF</em></strong> will showcase talents that will spellbind you. Even the start of the event is dedicated to the tiny-tots, school children performing and beholding the beginning of this mega folk festival. Watch different forms of dance shows depicting ancient stories. The opening concert features the performance by sarangi maestro <em>Lakha Khan Manganair</em> and the mesmerizing sufi singer from Kashmir, <em>Shafi Sopori</em>. Along with the beat of Manjira and Dholak, relish the Chang and Derun Nritya. </span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\">If you can&rsquo;t stop tapping your feet at the rhythms, join the Dance Boot Camp by <em>Kalbeliya and Ghoomer dancers</em> and by the popular belly dancer <em>Ada Kyra</em>. With the 5-days long classical, folk and Sufi performances, you can also have the pop and hip-hop dance celebration at Club Mehran. Jodhpur RIFF this year presents to you, Los Angeles <strong><em>DJ Jose Marquez</em></strong> who has a forte of uniting nations on the dance floor. He has performed in major clubs like <strong>Djoon (Paris), Solid Garage (Toronto), Crossroads (NYC)</strong> and so on. </span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\">Let&rsquo;s take you on the journey of what you might miss if are not planning to attend Jodhpur RIFF this October, check the schedule below:</span></span></p>', '2018-10-24', '2018-10-28', '08:30:00', '22:00:00', '1538464939.jpg', '1538495361.jpg', 9, '', 'https://www.jodhpurriff.org/', '', '', '', '', '', '', '', '', 4, 179, 1, 1, 1, 1, 1, '2018-10-02 14:22:19', '2018-10-19 16:44:28'),
(22, 'Pushkar Camel Fair Photography Tour & Workshop', 'pushkar-camel-fair-2018', 4, 0, '<p><span style=\"font-size:16px\"><span style=\"font-family:Calibri,sans-serif\">What could be more wonderful than being guided by a travel photography expert on a 6-days&nbsp;tour by&nbsp;T. Narayan...</span></span></p>', '<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\">Dessert extended till horizon filled with people in colourful attire, puppet shows, shopping stalls, traditional cuisine and camels. Behold the beauty of the holy city of Pushkar during Kartik Purnima, the day of full-moon night during the month of Kartik, according to Hindu Lunar calendar. With the weather being so pleasant, Pushkar becomes lively during this yearly and historical festival &ndash; Pushkar Camel Fair. Though Pushkar is visited by numerous tourists around the year, this time makes it special as it attracts millions of tourists from across the globe. Camel, also known as &lsquo;The ship of dessert&rsquo; in India, is the major attraction, hence the name &ldquo;<strong>Pushkar Camel Fair</strong>&rdquo;.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\">What could be more wonderful than being guided by a travel photography expert on a 6-days curated tour by the expert himself &ndash; T. Narayan of Photo Routes. The expedition will be the perfect blend of travel with photography. This tour will give you a view at how your instinct triggers you to click and how your see the photos you clicked. Early morning at sunrise, at noon when sun is overhead and at sunset, you will get to learn to capture the finer points of maximizing light during different time of the day.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\">As Pushkar camel fair offers from crazy competitions like the longest moustache, camel race, camel beauty pageant to various shopping stalls, Rajasthani traditional cuisine, folk dance &amp; music shows and much more. Capture each moment to make it live for the rest of your lives. You will relish the colourful fair without the hassle of worrying about how to travel and where to eat as the tour covers star accommodation, three times meals and transportation. </span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><br />\r\n<span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"background-color:white\"><span style=\"color:#212121\">Joyeux voyage!</span></span></span></span></p>', '2018-11-15', '2018-11-21', '10:00:00', '15:00:00', '1539619879.jpg', '1539619879.jpg', 10, '', 'http://www.photoroutes.in/Pushkar-Tour.html', 'http://photoroutes.in/', 'https://www.facebook.com/photoroutes.in/', 'https://twitter.com/tnarayan288?lang=en', '', 'https://www.instagram.com/tnarayanphotography/', '', '', '', 0, 81, 1, 1, 1, 1, 1, '2018-10-15 23:11:19', '2018-10-19 16:41:52'),
(24, 'Ecommerce Website Creation & App Development Boot Camp', 'website-creation-app-development-workshop', 7, 0, '<p><span style=\"font-size:16px\"><span style=\"font-family:Calibri,sans-serif\">Website designing has become one of the most demanded skills of today&rsquo;s online world. It has become.....</span></span></p>', '<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\">Website designing has become one of the most demanded skills of today&rsquo;s online world. It has become an identity of each business around the world. The huge demand of website and Android apps has in turn grown the demand for website and android developers. So, what if we say that a web and Android app development beginner or a layman, can learn to develop both from scratch, without technical qualification what so ever. One such opportunity worth grabbing is being provided by &ldquo;Digitalshla Techshops&rdquo;. Their experts will teach you to create your e-commerce website, static website and Android app with added SEO techniques. </span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><strong><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\">What you&rsquo;ll learn?</span></span></strong></p>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\">With website creation job, the first thing that strikes one&rsquo;s mind is what will be the requirements? They will give you all and explain the significance of each structure of the website and basics, from buying procedure to registrations. </span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\">Creating your static website and e-commerce website. Building and maintenance of each section of the website: cart &amp; products configuration, adding features to manage products and purchases, adding payment options like Cash on Delivery and online payment, building payment gateway.</span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\">Integrating tracking codes to track website visitors, linking social media platforms like Facebook, Twitter and YouTube and uploading files on the server.</span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\">Along with a website that&rsquo;s desktop and mobile friendly, learn to create Android mobile apps and how to upload them to the Google Play Store.</span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\">Learn skills of ranking on top Search Engine Result pages (SERPs) through SEO techniques. </span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\">Once your product is ready and you are ready to sell, what&rsquo;s the most important factor in sales? Learn to acquire clients to hire you for your web-development and app-development skills and gain customers for buying your products.</span></span></li>\r\n</ul>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><strong><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\">Who should attend?</span></span></strong></p>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\">Anybody who has an idea and wants to execute their start-up</span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\">Working professionals who want to start their side hustle</span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\">Students who want to master the skill before getting out of college or have just graduated</span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\">Anyone looking to learn new skills</span></span></li>\r\n</ul>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\">Prerequisites: Having a wi-fi enabled laptop and basic knowledge of using computer and internet.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><strong><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\">Learning is always rewarding! So, get yourself registered to learn, develop and flourish.</span></span></strong></p>', '2018-11-25', '2018-11-25', '09:30:00', '16:30:00', '1539932224.jpg', '1539932224.jpg', 11, '', 'http://workshop.digitalshala.in/ecommerce-website-creation-android-app-development-boot-camp/', 'http://workshop.digitalshala.in/', '', '', '', '', '', '', '', 0, 94, 1, 1, 2, 1, 1, '2018-10-19 13:50:55', '2018-10-19 16:31:46');
INSERT INTO `events` (`id`, `title`, `slug`, `event_category`, `event_type`, `short_description`, `description`, `start_date`, `end_date`, `start_time`, `end_time`, `event_image`, `event_top_banner`, `organiser_id`, `event_document`, `ticket_url`, `website_url`, `facebook_id`, `twitter_id`, `linked_id`, `instagram_id`, `googleplus_id`, `youtube_id`, `speaker_title`, `sort_order`, `total_view`, `home_event`, `top_hundred`, `premium`, `popular`, `status`, `created_at`, `updated_at`) VALUES
(25, 'India International Trade Fair 2018 - New Delhi', 'india-international-trade-fair-2018', 10, 0, '<p><span style=\"font-size:14px\"><span style=\"font-family:Calibri,sans-serif\">Since past five years IITF has shown great response in terms of visitors. It has become major tourist attraction. Each Indian state....</span></span></p>', '<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\">India International Trade Fair is the premier trade and commerce event happening every year. It is an initiative by Government of India&rsquo;s trade promotion agency, India Trade Promotion Organization (ITPO) and takes place every year at Pragati Maidan, New Delhi. With India now among the top exporters and importers in the world, IITF has become one of the biggest platforms for businesses across India and globe to showcase their products and services. Manufacturers, traders, exporters and importers can all meet-up at this trade fair building networks and synergy. </span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\">Since past five years IITF has shown great response in terms of visitors. It has become major tourist attraction. Each Indian state and union territory represent themselves through food and arts stalls. The fair stalls display wide variety of products &amp; services like automobile, textiles, jute, home appliances, food and beverages, pharmaceuticals, body and health care products, home furnishing, telecommunication and power sector, sports, toys and engineering goods. </span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\">Stay tuned with us for more upcoming updates. </span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\">&nbsp;</span></span></p>', '2018-11-14', '2018-11-27', '10:00:00', '20:00:00', '1540022687.jpg', '1540012582.jpg', 12, '', '', '', '', '', '', '', '', '', '', 0, 37, 1, 1, 0, 1, 1, '2018-10-20 12:16:22', '2018-10-20 15:04:47'),
(26, 'India Art Festival 2018 - Thyagraj Stadium, New Delhi', 'india-art-festival-2018', 10, 0, '<p><span style=\"font-size:16px\"><span style=\"font-family:Calibri,sans-serif\">India Art Festival has created the right model of dialogue between art dealers, art galleries, artists, interior....</span></span></p>', '<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\">India being a historic country has always portrayed its culture through arts. Since ancient age to the modern, art has revolutionized. There are several platforms like exhibitions, trade fairs, museums, artifacts collection centers, theatres and so on, that help artists to bring their work in front of the masses. One such event happening each year if <strong>India Arts Festival</strong>. It was initiated in the year 2011 with a vision of celebrating art with its two versions taking place in the city of New Delhi and Mumbai each year. </span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\">India Art Festival has created the right model of dialogue between art dealers, art galleries, artists, interior designers, art buyers and artists to come together building synergy in the art arena. It has successfully launched emerging artists alongside the popular ones and built a platform focusing on art galleries too.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\">With <strong>400+ artists</strong> exhibiting their art and <strong>50 art galleries</strong> from all over India and Asian sub-continent makes the place breath-taking and gets everyone carried away. It encompasses arts variation from <strong>paintings, photography, sculptures, prints, artworks to ceramics, installations, lithography and more</strong>. </span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\">What&rsquo;s more?</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\">Well India Art Festival is not only about the exhibition; another best part is that it will feature a two-days educative seminar called &lsquo;Conversation&rsquo;. The experts speaking at <strong>IAF Conversation</strong> are renowned artists, museum directors, historians, cultural organizers, publishers, gallerists, critics, institution-builders, and editors. </span></span></p>', '2018-11-22', '2018-11-25', '13:00:00', '21:30:00', '1540309748.jpg', '1540098210.jpg', 13, '', 'http://www.indiaartfestival.com/index.html', 'http://www.indiaartfestival.com/', 'https://www.facebook.com/Indiaartfestival', 'https://twitter.com/indiartfestival', 'https://www.linkedin.com/in/rajendra-india-art-festival-803554a5/', '', '', 'https://www.youtube.com/c/rajendraartfestival', '', 0, 34, 1, 1, 0, 1, 1, '2018-10-21 12:03:30', '2018-10-25 01:22:01'),
(27, 'Horn OK Please - Delhi\'s Happiest Food Festival', 'horn-ok-please-food-festival-2018', 3, 0, '<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">Time&rsquo;s coming that you&rsquo;ll become happiest because Delhi&rsquo;s happiest food festival is all set to flourish in November!</span></span></p>', '<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\">Time&rsquo;s coming that you&rsquo;ll become happiest because Delhi&rsquo;s happiest food festival is all set to flourish in November! Getting bigger and better with each edition, the 4<sup>th</sup> edition of &ldquo;<strong>Horn OK Please</strong>&rdquo; will give you four times the fun and enjoyment than ever. A 3-days long food festival, Horn Ok Please will have the <strong>JLN Stadium</strong> jammed with food trucks and carts, with home grown artists and bands playing exciting music and shopping stalls to satiate the shopaholic in you. So, keep reading to unveil this festival packed with all the delightful things-to-do in the capital city. </span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\">With the idea of offering a modern-day food truck festival, this November Horn OK Please has planned many surprises for you. From special zone for digging in different flavours of momos to wandering in their Kebab Gully to fall on delicious kebabs. With the meal combo being incomplete without something Chinese, you won&rsquo;t stop lingering in the China Town laying favourite Chinese dishes. </span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\">Sweet tooth or not, the forage won&rsquo;t be accomplished without scrumptious waffles, pastries, churros, ice-cream and more at the Dessert Lane. Phew&hellip;.can&rsquo;t stop eating! So much to eat but where are the drinks? Beat the thirst with beer and wide range of cocktails. <strong>Avail amazing offers too of getting 1 + 1 on cocktails. </strong></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\">Eating is not only the THING at the Happiest Food Festival. Listen to live performances by home-grown bands and assists. Stay Tuned for details on artist line-up. <strong>The festival offers </strong><strong>plethora</strong><strong> of entertainment, experience, food and shopping options!</strong> Did we just mention &ldquo;Experience&rdquo;? That&rsquo;s a yes! Bounce on the trampolines, skateboard, karting, bull riding and more. </span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\">What&rsquo;s the entry Fee? It&rsquo;s yet to be revealed by the organizer, but the best part &ndash; kids (below the age of 8 years) and senior citizens get free entry! </span></span></p>', '2018-11-16', '2018-11-18', '00:00:00', '23:00:00', '1540310191.jpg', '1540310191.jpg', 15, '', 'https://www.nearbuy.com/offer/delhi-ncr/pragati-vihar/Horn-OK-Please-Food-Truck-Festival-75699/75699', 'https://so.city/delhi', '', '', '', '', '', '', '', 0, 50, 1, 1, 2, 1, 1, '2018-10-23 22:56:31', '2018-10-25 01:20:17'),
(28, '33rd Pune International Marathon 2018', 'pune-international-marathon-2018', 2, 0, '<p><span style=\"font-size:14px\"><span style=\"font-family:Calibri,sans-serif\">Get ready to tighten your shoelaces as the 33<sup>rd</sup> edition of Pune International Marathon is ready to drift you&nbsp;on 2<sup>nd</sup> Dec&nbsp;2018....</span></span></p>', '<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\">More than <strong>3 decades</strong> and <strong>15 Lakh+ participants</strong> till date proves that <strong>Pune International Marathon</strong> is among the pioneering marathons in India. Grandees like <strong>Late Mr. Rajiv Gandhi, PT Usha, Milkha Singh, Leander Paes, Kapil Dev</strong> and many more have participated in this legendary marathon. Started in the year 1983, it is the first ever Indian International marathon and this year will witness its 33<sup>rd</sup> edition. </span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\">Standing among the top marathons in India, 64 winners, half men and the other half women have come out with flying colors to write the history of their victory. Joseph Kahugu and Caroline Kilel, both from Kenya set the record till the date of 2hrs 13mins in men&rsquo;s category and 1hr 10min in women&rsquo;s category respectively in Pune International Marathon.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\">Marathons have become a way of promoting a healthy lifestyle and unity, where thousands of people of different age group participate for a cause. It has now become a noble cause to collect charity to help the needy. With themes like &ldquo;<strong>Run for Fight Against Polio</strong>&rdquo;, &ldquo;<strong>Run Against AIDS</strong>&rdquo;, &ldquo;<strong>Run for Mother &ndash; Save the Girl Child</strong>&rdquo; and many more, this year it&rsquo;s promoting participants to run for the social message &ndash; &ldquo;<strong>Run for my city &ndash; Pune Run</strong>&rdquo;.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\">Get ready to tighten your shoelaces as the 33<sup>rd</sup> edition of Pune International Marathon is ready to drift you with your fellow marathoners on 2<sup>nd</sup> December 2018 at Baburao Sanas Sports Ground, Pune. </span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\">You can get yourself registered online on <a href=\"https://www.runindia.in/events/Pune-Intrnational-Marathon-2017-79\">Run India portal</a>, <a href=\"https://www.townscript.com/e/pune-international-marathon-2018\">Townscript</a> or <a href=\"https://www.meraevents.com/event/33rd-pune-international-marathon-2018?ucode=organizer\">Mera Events</a>. The offline registrations were closed on 15<sup>th</sup> November. </span></span></p>', '2018-12-02', '2018-12-02', '05:00:00', '08:00:00', '1540310710.jpg', '1540310710.jpg', 14, '', 'http://www.marathonpune.com/Registration.html', 'http://www.marathonpune.com/index.html', 'https://www.facebook.com/marathonpune', 'https://twitter.com/punemarathon', '', 'https://www.instagram.com/puneinternational/', '', '', '', 0, 34, 1, 1, 2, 1, 1, '2018-10-23 23:05:10', '2018-10-31 12:33:39');

-- --------------------------------------------------------

--
-- Table structure for table `event_addresses`
--

CREATE TABLE `event_addresses` (
  `id` int(10) UNSIGNED NOT NULL,
  `event_id` int(11) NOT NULL,
  `event_location` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postal_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `latitude` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `longitude` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `primary_address` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1=>primary',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `event_addresses`
--

INSERT INTO `event_addresses` (`id`, `event_id`, `event_location`, `city`, `state`, `country`, `postal_code`, `latitude`, `longitude`, `primary_address`, `created_at`, `updated_at`) VALUES
(1, 2, 'Fortis Hospital, Rasoolpur Nawada, Industrial Area, Sector 62, Noida, Uttar Pradesh', 'Noida', 'Uttar Pradesh', 'India', '201309', '28.6179555', '77.36994759999993', 1, NULL, NULL),
(2, 1, 'Keshavpur Vegetable Market, Block WZ, Chaukhandi, Vishnu Garden, Delhi, India', 'Delhi', 'Delhi', 'India', '110018', '28.6518809', '77.0888228', 1, NULL, NULL),
(3, 8, 'Sector 29, Gurugram, Haryana, India', 'Gurugram', 'Haryana', 'India', '122022', '28.4669448', '77.06651999999997', 1, NULL, NULL),
(4, 6, 'Jawaharlal Nehru Stadium, Pragati Vihar, New Delhi, Delhi, India', 'New Delhi', 'Delhi', 'India', '', '28.5833047', '77.2333304', 1, NULL, NULL),
(5, 13, 'Leisure Valley Road, Sector 29, Gurugram, Haryana, India', 'Gurugram', 'Haryana', 'India', '122007', '28.4724635', '77.0657827', 1, NULL, NULL),
(6, 15, 'Leela Ambience, Gurugram', 'Gurugram', 'Haryana', 'India', '122002', '', '', 1, NULL, NULL),
(7, 16, 'Jawaharlal Nehru Stadium, Pragati Vihar, New Delhi, Delhi, India', 'New Delhi', 'Delhi', 'India', '', '28.5833047', '77.2333304', 1, NULL, NULL),
(8, 13, 'Manpho Convention Centre, Veeranna Palya', 'Bengaluru', 'Karnataka', 'India', '', '', '', 0, NULL, NULL),
(9, 13, 'JioGarden, BKC', 'Mumbai', 'Maharashtra', 'India', '', '', '', 0, NULL, NULL),
(11, 17, 'The Hotel Ashok, Chanakyapuri, New Delhi', 'New Delhi', 'Delhi', 'India', '', '', '', 1, NULL, NULL),
(12, 18, 'Sardar Patel Stadium Road, Nathalal Colony, Navrangpura, Ahmedabad, Gujarat, India', 'Ahmedabad', 'Gujarat', 'India', '', '23.0464627', '72.56187360000001', 0, NULL, NULL),
(13, 18, 'Hitex Exhibition Center - Trade Fair Office, Izzathnagar, Kothaguda, Hyderabad, Telangana, India', 'Hyderabad', 'Telangana', 'India', '500084', '17.4709482', '78.37653439999997', 0, NULL, NULL),
(14, 18, 'Jio Garden, Bandra Kurla Complex, Bandra East, Mumbai, Maharashtra', 'Mumbai', 'Maharashtra', 'India', '', '', '', 0, NULL, NULL),
(15, 18, 'Ozone Urbana Alcove, Devanahalli, Karnataka, India', 'Bangalore', 'Karnataka', 'India', '562110', '13.2388176', '77.71874430000003', 0, NULL, NULL),
(16, 18, 'Leisure Valley Park, Sector 29, Gurugram, Haryana', 'Gurugram', 'Haryana', 'India', '122002', '', '', 1, NULL, NULL),
(17, 19, 'Pragati Maidan, New Delhi, Delhi, India', 'New Delhi', 'Delhi', 'India', '', '28.6159804', '77.24438239999995', 1, NULL, NULL),
(18, 20, 'Jawaharlal Nehru Stadium, Pragati Vihar, New Delhi, Delhi, India', 'New Delhi', 'Delhi', 'India', '', '28.5833047', '77.2333304', 1, NULL, NULL),
(19, 21, 'Mehrangarh Fort, Jodhpur', 'Jodhpur', 'Rajasthan', 'India', '', '', '', 1, NULL, NULL),
(20, 22, 'Pushkar, Rajasthan, India', 'Pushkar', 'Rajasthan', 'India', '', '26.489749', '74.55108559999996', 1, NULL, NULL),
(21, 24, 'Digitalshala, IXORA Suites, Indira Nagar, Bangalore', 'Bengaluru', 'Karnataka', 'India', '', '', '', 1, NULL, NULL),
(22, 25, 'Pragati Maidan, New Delhi, Delhi, India', 'New Delhi', 'Delhi', 'India', '', '28.6159804', '77.24438239999995', 1, NULL, NULL),
(25, 26, 'Thyagaraj Sports Complex, Laxmi Bai Nagar, New Delhi', 'New Delhi', 'Delhi', 'India', '', '', '', 1, NULL, NULL),
(26, 28, 'Baburao Sanas Ground, Pune, Maharashtra', 'Pune', 'Maharashtra', 'India', '', '', '', 1, NULL, NULL),
(27, 27, 'Gate No. 14, Jawaharlal Nehru Stadium, New Delhi', 'New Delhi', 'Delhi', 'India', '', '', '', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `event_galleries`
--

CREATE TABLE `event_galleries` (
  `id` int(10) UNSIGNED NOT NULL,
  `event_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `event_galleries`
--

INSERT INTO `event_galleries` (`id`, `event_id`, `title`, `image`, `status`, `created_at`, `updated_at`) VALUES
(2, 28, 'asdsa', '1541949645.jpg', 0, '2018-11-10 12:34:51', '2018-11-11 10:09:02'),
(4, 28, 'adas', '1541949717.jpg', 0, '2018-11-10 12:35:53', '2018-11-11 10:09:02'),
(5, 28, 'fcgfcg', '1541950472.jpg', 0, '2018-11-10 12:37:27', '2018-11-11 10:09:02'),
(6, 28, 'hello', '1541950457.jpg', 0, '2018-11-11 10:04:17', '2018-11-11 10:09:03'),
(7, 28, 'asdas', '1541950714.jpg', 0, '2018-11-11 10:08:34', '2018-11-11 10:09:03');

-- --------------------------------------------------------

--
-- Table structure for table `event_schedules`
--

CREATE TABLE `event_schedules` (
  `id` int(10) UNSIGNED NOT NULL,
  `event_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `from_time` time NOT NULL,
  `to_time` time NOT NULL,
  `activity_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `activity` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `event_schedules`
--

INSERT INTO `event_schedules` (`id`, `event_id`, `title`, `address`, `date`, `from_time`, `to_time`, `activity_name`, `activity`, `status`, `created_at`, `updated_at`) VALUES
(7, 2, 'First Day Morning', '', '2018-08-25', '09:00:00', '12:00:00', '', '', 1, '2018-10-07 07:00:00', NULL),
(8, 2, 'First Day AfterNoon', '', '2018-08-25', '01:00:00', '04:00:00', '', '', 1, NULL, NULL),
(9, 2, 'First Day Night', '', '2018-08-25', '06:00:00', '09:00:00', '', '', 1, NULL, NULL),
(10, 2, 'Second Day Morning', '', '2018-08-26', '09:00:00', '12:00:00', '', '', 1, NULL, NULL),
(11, 2, 'Second Day AfterNoon', '', '2018-08-26', '01:00:00', '04:00:00', '', '', 1, NULL, NULL),
(12, 2, 'Second Day Night', '', '2018-08-26', '06:00:00', '09:00:00', '', '', 1, NULL, NULL),
(13, 2, 'Third Day Morning', '', '2018-08-28', '10:45:00', '11:30:00', '', '', 1, NULL, NULL),
(14, 8, 'Parmish Verma live at The Big Boyz Lounge, Gurugram', '', '2018-09-19', '10:15:00', '10:15:00', '', '', 1, NULL, NULL),
(15, 6, 'Khariboli Masher: Biggest Music, Food & Rain-dance Festival', '', '2018-12-22', '11:30:00', '22:30:00', '', '', 1, NULL, NULL),
(16, 13, 'Sunburn Festival', 'Bengaluru - Manpho Convention Centre, Veeranna Palya', '2018-10-05', '15:00:00', '22:00:00', '', '', 1, NULL, NULL),
(17, 13, 'Sunburn Festival', 'Mumbai - JioGarden, BKC', '2018-10-06', '15:00:00', '22:00:00', '', '', 1, NULL, NULL),
(18, 13, 'Sunburn Festival', 'Delhi NCR - Leisure valley HUDA Ground, Gurgaon', '2018-10-06', '15:00:00', '22:00:00', '', '', 1, NULL, NULL),
(19, 13, 'Sunburn Festival', 'Mumbai - JioGarden, BKC', '2018-10-07', '15:00:00', '22:00:00', '', '', 1, NULL, NULL),
(20, 13, 'Sunburn Festival', 'Delhi NCR - Leisure valley HUDA Ground, Gurgaon', '2018-10-07', '15:00:00', '22:00:00', '', '', 1, NULL, NULL),
(21, 15, 'Collection Of Badges', '', '2018-10-11', '08:30:00', '09:45:00', '', '', 1, NULL, NULL),
(22, 15, 'Inaugural Session', '', '2018-10-11', '09:45:00', '10:45:00', '', '', 1, NULL, NULL),
(23, 15, 'Networking Break (Visit Affiliate Street)', '', '2018-10-11', '10:45:00', '11:00:00', '', '', 1, NULL, NULL),
(24, 16, 'Airtel Delhi Half Marathon 2018 | Delhi NCR |', 'Jawaharlal Nehru Stadium, Delhi', '2018-10-21', '06:30:00', '09:30:00', '', '', 1, NULL, NULL),
(25, 15, 'Plenary Session 1 |  The Rise of Influencers: Measuring Values and Promising Results', '', '2018-10-11', '11:00:00', '12:00:00', '', '', 1, NULL, NULL),
(26, 15, 'Special Address 1', '', '2018-10-11', '12:00:00', '12:45:00', '', '', 1, NULL, NULL),
(27, 15, 'Plenary Session 2 | Programmatic Advertising & Tracking a Customer Journey Across Devices', '', '2018-10-11', '12:45:00', '13:45:00', '', '', 1, NULL, NULL),
(28, 15, 'Lunch', '', '2018-10-11', '13:45:00', '14:30:00', '', '', 1, NULL, NULL),
(29, 15, 'Special Address', '', '2018-10-11', '14:30:00', '15:00:00', '', '', 1, NULL, NULL),
(30, 15, 'Plenary Session 3 | Marketing in the Machine Age: Adopting Technology Into Your Affiliate Marketing', '', '2018-10-11', '15:00:00', '16:00:00', '', '', 1, NULL, NULL),
(31, 15, 'Lead Talk 2', '', '2018-10-11', '16:00:00', '16:30:00', '', '', 1, NULL, NULL),
(32, 15, 'Networking Break (Visit Affiliate Street)', '', '2018-10-11', '16:45:00', '17:00:00', '', '', 1, NULL, NULL),
(33, 15, 'Plenary Session 4 | The Video revolution: Getting Massive Consumer Engagement', '', '2018-10-11', '17:00:00', '18:00:00', '', '', 1, NULL, NULL),
(34, 15, 'Collection of Badges', '', '2018-10-12', '08:30:00', '10:00:00', '', '', 1, NULL, NULL),
(35, 15, 'Lead Talk 3', '', '2018-10-12', '10:00:00', '10:30:00', '', '', 1, NULL, NULL),
(36, 15, 'PLenary Session 5 |  How to Leverage True Power of Affiliate Marketing?', '', '2018-10-12', '10:30:00', '11:30:00', '', '', 1, NULL, NULL),
(37, 15, 'Networking Break (Visit Affiliate Street)', '', '2018-10-12', '11:30:00', '12:00:00', '', '', 1, NULL, NULL),
(38, 15, 'Plenary Session 6 | Turn Your regular Customers into Brand Advocates', '', '2018-10-12', '12:00:00', '13:00:00', '', '', 1, NULL, NULL),
(39, 15, 'Plenary Session 7 | The Skill Gaming industry in India', '', '2018-10-12', '13:00:00', '14:00:00', '', '', 1, NULL, NULL),
(40, 15, 'Lunch', '', '2018-10-12', '14:00:00', '15:00:00', '', '', 1, NULL, NULL),
(41, 15, 'Plenary Session 8 | Changing World of Content Consumption - Emergence of Virtual Assistants, Streaming Apps and More.', '', '2018-10-12', '15:00:00', '16:00:00', '', '', 1, NULL, NULL),
(42, 15, 'Networking Break (Visit Affiliate Street)', '', '2018-10-12', '16:45:00', '16:15:00', '', '', 1, NULL, NULL),
(43, 15, 'Plenary Session 9 | Engagement Models for Affiliates - Cost per Action (CPA) vs. Cost Per Sale (CPS)', '', '2018-10-12', '16:15:00', '17:15:00', '', '', 1, NULL, NULL),
(44, 17, 'Bridal Asia Exhibitions 2018 For Wedding Apparel, Jewelry & Accessories', 'Hotel Ashok, Chanakyapuri, Dew Delhi', '2018-10-13', '11:00:00', '19:00:00', '', '', 1, NULL, NULL),
(45, 18, 'Bryan Adams - The Ultimate Ahmadabad Tour 2018 (Rock | English | 4hrs )', 'Sardar Patel Stadium,  Navrangpura, Ahmedabad, Gujarat', '2018-10-09', '17:30:00', '22:30:00', '', '', 1, NULL, NULL),
(46, 18, 'Bryan Adams - The Ultimate Hyderabad Tour 2018 (Rock | English | 4hrs )', 'HITEX Exhibition Center, Kothaguda, Hyderabad, Telangana', '2018-10-11', '17:30:00', '22:30:00', '', '', 1, NULL, NULL),
(47, 18, 'Bryan Adams - The Ultimate Mumbai Tour 2018 (Rock | English | 4hrs )', 'Jio Garden, Bandra Kurla Complex, Bandra East, Mumbai, Maharashtra', '2018-10-12', '17:30:00', '22:30:00', '', '', 1, NULL, NULL),
(48, 18, 'Bryan Adams - The Ultimate Bangalore Tour 2018 (Rock | English | 4hrs )', 'Ozone Urbana, Yerthiganahalli, Udayagiri, Bangalore, Karnataka', '2018-10-13', '17:30:00', '22:30:00', '', '', 1, NULL, NULL),
(49, 18, 'Bryan Adams - The Ultimate Delhi Gurgaon NCR Tour 2018 (Rock | English | 4hrs )', 'Leisure Valley Park, Sector 29, Gurugram, Haryana', '2018-10-14', '17:30:00', '22:30:00', '', '', 1, NULL, NULL),
(50, 19, 'Day 1', 'Welcome Address: Ms. Ritu Marya, Editor-in-Chief, Franchise India, Lighting Of Lamp & Inauguration', '2018-10-21', '10:00:00', '10:30:00', '', '', 1, NULL, NULL),
(51, 20, 'Friday', '', '2018-10-26', '00:00:00', '14:00:00', 'Activity', '#GrubTunes by DJ Saif, Movie Screening, Boxout FM Live', 1, NULL, '2018-10-08 00:53:11'),
(52, 20, 'Friday', '', '2018-10-26', '14:00:00', '15:00:00', '', 'Nik\'J, Movie Screening', 1, NULL, '2018-10-08 00:53:11'),
(53, 20, 'Friday', '', '2018-10-26', '15:00:00', '16:00:00', '', 'Bang Loud, Grub Memories Screening', 1, NULL, '2018-10-08 00:53:11'),
(54, 20, 'Friday', '', '2018-10-26', '16:00:00', '17:00:00', '', 'Raedl, Salsa tasting CORNITOS, Parashara', 1, NULL, '2018-10-08 00:53:11'),
(55, 20, 'Friday', '', '2018-10-26', '17:00:00', '17:30:00', '', '#GrubGames with RJ Melbin, Gluten Free Brownies, Maya Bazaar', 1, NULL, '2018-10-08 00:53:11'),
(56, 20, 'Friday', '', '2018-10-26', '17:30:00', '19:00:00', '', 'Kamakshi Khanna, Iced Tea Sampling, Qareeb', 1, NULL, '2018-10-08 00:53:11'),
(57, 20, 'Friday', '', '2018-10-26', '19:00:00', '20:30:00', '', 'B Praak, Hot Dog Eating Competition, Trafficc & Diggy Dang', 1, NULL, '2018-10-08 00:53:11'),
(58, 20, 'Friday', '', '2018-10-26', '20:30:00', '22:00:00', '', 'Tatva K', 1, NULL, '2018-10-08 00:53:11'),
(59, 20, 'Friday', '', '2018-10-26', '13:00:00', '14:00:00', '', 'Movie Screening', 1, NULL, '2018-10-08 00:53:11'),
(60, 20, 'Saturday', '', '2018-10-27', '00:00:00', '14:00:00', '', '#GrubTunes by DJ Saif,  Movie Screening, Box Out FM Live', 1, NULL, '2018-10-08 00:53:11'),
(61, 20, 'Saturday', '', '2018-10-27', '14:00:00', '15:00:00', '', 'Addy Berry, Movie Screening', 1, NULL, '2018-10-08 00:53:11'),
(62, 20, 'Saturday', '', '2018-10-27', '15:00:00', '17:00:00', '', 'Vibzz, BassPatch, Pickle & Jam tasting (IT\'S HOMEMADE), Chocolate tasting (ROSARTE), Prahaar', 1, NULL, '2018-10-08 00:53:11'),
(63, 20, 'Saturday', '', '2018-10-27', '17:00:00', '19:00:00', '', '#GrubGames with RJ Melbin, PAN!C, Blind Food tasting, Chef DEMO, SMOKEYS, Udit Seghal, Moongphali', 1, NULL, '2018-10-08 00:53:11'),
(64, 20, 'Saturday', '', '2018-10-27', '19:00:00', '22:00:00', '', 'Guru Randhawa, DJ Frenzy, IPL Opening Ceremony, Stain & NPSTR, MadStarBase', 1, NULL, '2018-10-08 00:53:11'),
(65, 20, 'Sunday', '', '2018-10-28', '00:00:00', '14:00:00', '', '#GrubTunes by DJ Saif, Movie Screening, Boxout FM Live', 1, NULL, '2018-10-08 00:53:11'),
(66, 20, 'Sunday', '', '2018-10-28', '14:00:00', '16:00:00', '', 'Dhaerya Malhotra, Solyvayne, Chef Demo ITALIANO,', 1, NULL, '2018-10-08 00:53:11'),
(67, 20, 'Sunday', '', '2018-10-28', '16:00:00', '19:00:00', '', 'Beat Crush, #GrubGames with RJ Melbin, Kutle Khan, IPL Screening KXIP Vs DD, Sejal Moris, Jordan Johnson', 1, NULL, '2018-10-08 00:53:11'),
(68, 20, 'Sunday', '', '2018-10-28', '19:00:00', '22:00:00', '', 'Mankirt Aulakh, Ritviz, IPL Screening KKR Vs RCB, Mierdo & Tanzen, MC Snoopy', 1, NULL, '2018-10-08 00:53:11'),
(69, 21, 'Children\'s Folk Morning', 'Veer Durga Das Memorial Park, Masuriya', '2018-10-24', '08:30:00', '14:00:00', '', '', 1, NULL, NULL),
(70, 21, 'Opening Night - City Concert', 'Jaswant Thada', '2018-10-24', '19:30:00', '22:00:00', '', '', 1, NULL, NULL),
(71, 21, 'RIFF Dawns with the Meghwal of Marwar', 'Jaswant Thada', '2018-10-25', '05:30:00', '07:30:00', '', '', 1, NULL, NULL),
(72, 21, 'Dance Boot Camp', 'Chokelao Bagh (Mehrangarh Fort)', '2018-10-25', '08:30:00', '10:00:00', '', '', 1, NULL, NULL),
(73, 21, 'Fort Festivities', 'Throughout Mehrangarh Museum', '2018-10-25', '22:00:00', '17:00:00', '', '', 1, NULL, NULL),
(74, 21, 'In Residence 1: Music of Kashmir', 'Chokelao Bagh (Mehrangarh Fort)', '2018-10-25', '11:15:00', '13:15:00', '', '', 1, NULL, NULL),
(75, 21, 'Living Legends: Suguna Jogi (vocals) & Dapu Khan (kamaicha)', 'Near Dhana Bhiyan Chatri (Mehrangarh Fort)', '2018-10-25', '17:45:00', '19:15:00', '', '', 1, NULL, NULL),
(76, 21, 'Moody RIFFs (Main Stage Performances): Music of the Kalbeliyas with Mohini Devi, Makan Ashgvari & Kashmiri Sufiyana with Shafi Sopori', 'Old Zenana Courtyard (Mehrangarh Fort)', '2018-10-25', '19:45:00', '00:00:00', '', '', 1, NULL, NULL),
(77, 21, 'Desert Lounge: Acoustic & Traditional Music from Rajasthan', 'Rao Jodha Desert and Rock Park (adjacent to the lower car park of Mehrangarh Fort)', '2018-10-25', '23:30:00', '05:00:00', '', '', 1, NULL, NULL),
(78, 21, 'RIFF Dawns with Hidayat Husain Khan', 'Jaswant Thada', '2018-10-26', '05:30:00', '07:30:00', '', '', 1, NULL, NULL),
(79, 21, 'Dance Boot Camp', 'Chokelao Bagh (Mehrangarh Fort)', '2018-10-26', '08:30:00', '10:00:00', '', '', 1, NULL, NULL),
(80, 21, 'Fort Festivities: Chang Nritya, Derun Nritya, Gair, Gavari of Mewar & Bhils of Vagad', 'Throughout Mehrangarh Museum', '2018-10-26', '10:00:00', '17:00:00', '', '', 1, NULL, NULL),
(81, 21, 'In Residence II: The poetry of Meera Bai - with folklorist C.P. Dewal, Sumitra, Mahesa Ram and others', 'Chokelao Bagh (Mehrangarh Fort)', '2018-10-26', '11:15:00', '13:15:00', '', '', 1, NULL, NULL),
(82, 21, 'Moonrise Session: Manesha Agarwal (vocals)', 'Jaswant Thada', '2018-10-26', '17:30:00', '19:00:00', '', '', 1, NULL, NULL),
(83, 21, 'Strings and Beats: The Legendary music of the Langa, Ana Pinhal (vocals), Wouter Kellerman & Alif', 'Old Zenana Courtyard (Mehrangarh Fort)', '2018-10-26', '19:45:00', '02:00:00', '', '', 1, NULL, NULL),
(84, 21, 'Club Mehran: Jose Marquez (latin and Afro-beat inspired electronic world rhythms)', 'Salimkot', '2018-10-26', '23:30:00', '02:00:00', '', '', 1, NULL, NULL),
(85, 21, 'RIFF Dawns:', 'Jaswant Thada', '2018-10-27', '05:30:00', '07:30:00', '', '', 1, NULL, NULL),
(86, 21, 'Belly Dance Boot Camp: Ada Kyra', 'Chokelao Mahal (Mehrangarh Fort)', '2018-10-27', '08:30:00', '10:00:00', '', '', 1, NULL, NULL),
(87, 21, 'Fort Festivities: Chang Nritya, Derun Nritya, Gair, Gavari of Mewar & Bhils of Vagad', 'Throughout Mehrangarh Museum', '2018-10-27', '10:00:00', '17:00:00', '', '', 1, NULL, NULL),
(88, 21, 'The Round House Sessions: Bush Gothic and', 'Near Dhana Bhiyan Chatri (Mehrangarh Fort)', '2018-10-27', '17:30:00', '20:00:00', '', '', 1, NULL, NULL),
(89, 21, 'Insights:', 'Old Zenana Courtyard (in Mehrangarh Fort)', '2018-10-27', '20:30:00', '02:00:00', '', '', 1, NULL, NULL),
(90, 21, 'RIFF Rustle with Gene Peterson, Rajasthani artists & internationals percussionists, musicians & singers from Jodhpur RIFF 2018', 'Old Zenana Courtyard (in Mehrangarh Fort)', '2018-10-27', '23:30:00', '02:00:00', '', '', 1, NULL, NULL),
(91, 21, 'RIFF Dawns with Vidya Rao', 'Jaswant Thada', '2018-10-28', '05:30:00', '07:30:00', '', '', 1, NULL, NULL),
(92, 19, 'Day 1', 'Session 1 & 2: Future Of Starting Up and Business Of Brands', '2018-10-21', '10:30:00', '00:30:00', '', '', 1, NULL, NULL),
(93, 19, 'Day 1', 'Session 3: Keynote: The Future of Consumer Experience & Lunch Break', '2018-10-21', '00:30:00', '14:00:00', '', '', 1, NULL, NULL),
(94, 19, 'Day 1', 'Session 1-4: The Future of Retail, FMCG, Food Services & Service Businesses', '2018-10-21', '14:00:00', '17:15:00', '', '', 1, NULL, NULL),
(95, 19, 'Day 2 - Oct 22, 2018', 'Session 1: How To Grow And Transition Your Business', '2018-10-22', '10:30:00', '11:30:00', '', '', 1, NULL, NULL),
(96, 19, 'Day 2 - Oct 22, 2018', 'Session 2-3: The Future of Investment & Keynote Session: The Future of Work - the Better you', '2018-10-22', '11:30:00', '13:00:00', '', '', 1, NULL, NULL),
(97, 19, 'Day 2 - Oct 22, 2018', 'Networking Lunch Break', '2018-10-22', '13:00:00', '14:00:00', '', '', 1, NULL, NULL),
(98, 19, 'Day 2 - Oct 22, 2018', 'Session 1-3: Keynote Session, The Future of Innovation in Franchising & brand extension with licensing', '2018-10-22', '14:00:00', '15:45:00', '', '', 1, NULL, NULL),
(99, 19, 'Day 2 - Oct 22, 2018', 'Session 4-5: Recreating and re-discovering the brand & Startup Kickoff', '2018-10-22', '15:45:00', '17:00:00', '', '', 1, NULL, NULL),
(100, 22, 'Assemble at hotel', 'RTDC Heritage Sarovar Hotel', '2018-11-15', '10:00:00', '15:00:00', '', '', 1, '2018-10-15 23:30:19', '2018-10-16 00:15:07'),
(101, 22, 'Capture First Light of Dawn', 'Pushkar Fair', '2018-11-16', '06:00:00', '07:00:00', '', '', 1, '2018-10-15 23:33:08', '2018-10-16 00:15:07'),
(102, 22, 'Breakfast & Rest', 'RTDC Heritage Sarovar Hotel', '2018-11-16', '07:00:00', '09:00:00', '', 'Back to hotel for breakfast & some rest', 1, '2018-10-15 23:35:04', '2018-10-16 00:15:07'),
(103, 24, 'Timings', '', '2018-11-25', '09:30:00', '16:30:00', 'Activity', 'Discussion On zero coding Ecommerce Website , Android App Creation & Start-Ups Bootcamp', 1, '2018-10-19 14:03:04', '2018-10-19 16:29:23'),
(104, 26, 'India Art Festival', 'Thyagraj Stadium, New Delhi', '2018-11-22', '13:00:00', '21:30:00', '', '', 1, '2018-10-21 15:38:23', '2018-10-21 15:40:04'),
(106, 28, 'Men / Women Full Marathon & Women Half Marathon', '', '2018-12-02', '05:30:00', '06:00:00', 'Schedule', '', 1, '2018-10-23 23:09:54', '2018-10-25 01:01:42'),
(107, 28, 'Men Half Marathon', '', '2018-12-02', '05:45:00', '05:15:00', 'Schedule', '', 1, '2018-10-23 23:13:45', '2018-10-25 01:01:42'),
(108, 28, 'Men & Women 10 KM', '', '2018-12-02', '06:00:00', '06:15:00', 'Schedule', '', 1, '2018-10-23 23:14:33', '2018-10-25 01:01:42'),
(109, 28, 'Men & Women 5 KM', '', '2018-12-02', '06:00:00', '06:30:00', 'Schedule', '', 1, '2018-10-23 23:16:58', '2018-10-25 01:01:42'),
(110, 28, 'School Championship', '', '2018-12-02', '06:45:00', '07:30:00', 'Schedule', '', 1, '2018-10-23 23:18:54', '2018-10-25 01:01:42'),
(111, 28, 'Pralhad Sawant Charity Run', '', '2018-12-02', '07:00:00', '07:30:00', 'Schedule', '', 1, '2018-10-23 23:19:50', '2018-10-25 01:01:42'),
(112, 28, 'School Championship Run', '', '2018-12-02', '07:15:00', '07:45:00', 'Schedule', '', 1, '2018-10-23 23:20:52', '2018-10-25 01:01:42'),
(113, 28, 'Prize Distribution', '', '2018-12-02', '08:00:00', '09:00:00', 'Schedule', '', 1, '2018-10-23 23:22:12', '2018-10-25 01:01:42'),
(114, 27, 'Horn OK Please', 'Gate No. 14, Jawaharlal Nehru Stadium', '2018-11-16', '12:00:00', '23:00:00', 'Schedule', '', 1, '2018-10-23 23:43:46', NULL),
(115, 28, 'asdsa', '', '0000-00-00', '00:00:00', '00:00:00', '', '', 0, '2018-11-10 12:33:31', NULL),
(116, 28, 'asdas', '', '0000-00-00', '00:00:00', '00:00:00', '', '', 0, '2018-11-10 12:33:31', NULL),
(117, 28, 'asdasd', '', '0000-00-00', '00:00:00', '00:00:00', '', '', 0, '2018-11-10 12:33:31', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `event_seos`
--

CREATE TABLE `event_seos` (
  `id` int(10) UNSIGNED NOT NULL,
  `event_id` int(11) NOT NULL,
  `meta_keyword` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `event_seos`
--

INSERT INTO `event_seos` (`id`, `event_id`, `meta_keyword`, `meta_description`, `page_title`, `created_at`, `updated_at`) VALUES
(1, 2, 'Second Keyword', 'Second Keyword', 'Second Keyword', NULL, NULL),
(2, 1, 'FirstKeyword', 'FirstKeyword', 'FirstKeyword', NULL, NULL),
(3, 8, '', '', '', NULL, NULL),
(4, 6, 'Upcoming event in delhi, Rain dance event in delhi, khariboli masher event, Music Event, Food festival 2018, rain dance festivals, khariboli masher 2018, Khariboli Masher in delhi, Cultural Events in Delhi, Biggest Raindance Festival , Greatest Raindance Festival , Best Raindance Festival in India , Top Raindance Festivals in the World , Growthjack , Growthjack Events , Khariboli Masher , Khariboli Raindance Festival , Khariboli Food and Music Festival , Growthjack Khariboli Masher', 'Over 200 artists from across India and abroad, more than 300 food and Lifestyle stalls, around 100 rides and activities. Book Tickets Online.', 'The Largest Rain Dance Festival: Khariboli Masher 2018 - Get Tickets', NULL, NULL),
(5, 13, 'Sunburn festival, Sunburn in delhi,  Sunburn in mumbai, Sunburn in bengaluru, Sunburn festival 2018', 'Get 🌟star struck in your \'CITY\' this October as Sunburn City Festival is all set to make you fly with the rhythm!', 'Sunburn City Festival 2018: Delhi NCR, Mumbai & Bengaluru', NULL, NULL),
(6, 16, 'Airtel Delhi Half Marathon, Airtel Marathon, Delhi Half marathon, Ruuning Event airtel, Upcoming Marathon event in delhi', 'Time has come to get your running shoes ready for that great day when you will participate in Airtel Delhi Half Marathon!', 'Airtel Delhi Half Marathon 2018 to be held on 21th Oct: Register Now', NULL, NULL),
(7, 15, 'India Affiliate Summit 2018, Digital Marketing event, Upcoming marketing event, Affiliate summit, Upcoming conference event, Affiliate Summit in gurgaon', 'The 4th edition of India Affiliate Summit is all set to awe-inspire you on 11th and 12th of October. Initiated in 2015 with an idea to gather the thought leaders of affiliate marketing at one place.', 'India Affiliate Summit 2018 to be held on 11th Oct: Register Now', NULL, NULL),
(8, 17, 'Bridal Asia 2018, Wedding Apparel exhibition, Bridal Asia exhibition, Upcoming exhibition 2018', 'The 20th edition of Bridal Asia will swarm in Hotel Ashok, Chanakyapuri, Dew Delhi from 13th till 15th October this year. Register Now', 'Bridal Asia 2018 - Wedding Apparel, Jewelry & Accessories', NULL, NULL),
(9, 18, 'Bryan Adams, Bryan Adams concert, Bryan Adams live, Bryan Adams india tour, Bryan Adams ticket online, Bryan Adams upcoming tour, Bryan Adams upcoming event in india', 'Bryan Adams’ Ultimate Tour will kick-start from 9th October to 14th October. He will be performing in 5 cities - Mumbai, Ahmadabad, Hyderabad, Banglore & Mumbai. Book your seat now.', 'Bryan Adams - The Ultimate Tour 2018: Book Your Seat Now', NULL, NULL),
(10, 19, 'Opportunity India Summit 2018, Upcoming conference in india, Franchise Opportunities in India, Franchise sell, entrepreneur conference in india, retail show, retail conference, entrepreneur conference, franchise india expo', 'Powered by Entrepreneur, the biggest franchise, retail and entrepreneur conference – Opportunity India Summit 2018 is all set to ‘entrepreneurise’ you on 21st and 22nd October.', 'Opportunity India Summit 2018 - For Entrepreneurs & Startups', NULL, NULL),
(11, 20, 'The Grub Fest, grub fest tickets, Grub Fest online tickets, Grub Fest details, Grub Fest founders, Food festivals,  Food festivals in delhi, upcoming  Food festivals,  upcoming Food festival in delhi', 'The Grub Fest is all scheduled to rock Delhiites in October, perfect lively ambiance to hang out with friends and family, head towards Jawahar Lal Nehru Stadium on 26th, 27th, and 28th October.', 'The Grub Fest - India\'s Premier Food Festival', NULL, NULL),
(12, 21, 'Rajasthan International Folk Festival, Rajasthan Folk Festival, folk festivals, Jodhpur RIFF, Upcoming event in Rajasthan, International Folk Festival, beautiful Mehrangarh Fort, Cultural festival in jodhpur', 'One such festival that binds culture, music, dance, cuisine and folks is the annually held Rajasthan International Folk Festival. It is organized in the beautiful Mehrangarh Fort.', 'Rajasthan International Folk Festival 2018 - Mehrangarh Fort, Jodhpur', NULL, NULL),
(13, 22, 'Pushkar camel fair, Pushkar fair, pushkar mela 2018, pushkar mela, Pushkar ka Mela, Kartik Mela, Pushkar Mela Rajasthan 2018, Pushkar fair Packages, Pushkar Fair Festival 2018 , Pushkar tour, pushkar Mela in Rajasthan, pushkar mela dates', 'Pushkar camel fair offers from crazy competitions like longest moustache, camel race, camel beauty pageant to various shopping stalls, folk dance & music shows. Book Your Tickets Now', 'Mystical Fair: Pushkar Camel Fair Photography Tour & Workshop', NULL, NULL),
(14, 24, 'Ecommerce Website Creation workshop,  App Development course in bangalore, android app development course in bangalore,  mobile application development training in bangalore,  mobile application development course fees,  free android workshop in bangalore, web designing course in bangalore fees,  web designing course duration and fees in bangalore,  web designing course in bangalore with placement,  seminars and workshops in bangalore, web development courses in bangalore', 'One such opportunity worth grabbing is being provided by “Digitalshla Techshops”. Their experts will teach you to create your e-commerce website, static website and Android app with added SEO techniques.', 'Ecommerce Website Creation & App Development Workshop by Digital Shala - Register Now', NULL, NULL),
(15, 26, 'india art festival 2018 mumbai, india art festival 2018 delhi, india art festival 2018 mumbai entry fee, india art festival entry fee, india art fair 2018 dates, india art festival 2018 mumbai, india art fair application, india art festival 2019', 'India Arts Festival to be hosted with 400+ artists exhibiting their art and 50 art galleries from all over India from 22nd Nov to 25th Nov. Register Now', 'India Art Festival 2018 at  New Delhi - Participate Now', NULL, NULL),
(16, 28, 'pune international marathon 2018,  pune international marathon 2018 registration,  pune international marathon prize money,  pune international marathon 2018 results,  pune international marathon 2018 certificate,  33nd pune international marathon,  pune international marathon 2019,  upcoming pune international marathon, townscript pune marathon', 'Get ready to tighten your shoelaces as the 33rd edition of Pune International Marathon is ready to drift you with your fellow marathoners on 2nd Dec 2018 at Pune.', '33rd Pune International Marathon 2018 - Register Now', NULL, NULL),
(17, 25, 'india international trade fair 2018 delhi,  iitf 2018 stall booking, india international trade fair 2018,  trade fair 2018 pragati maidan,  trade fair delhi 2018 dates,  trade fair 2018 pragati maidan dates,  itpo international exhibitions 2018-19, india international mega trade fair 2018', 'India International Trade Fair is the premier trade and commerce event happening every year, initiative by Government of India’s trade promotion agency, ITPO  at Pragati Maidan, New Delhi.', 'India International Trade Fair 2018 - New Delhi - Register Now', NULL, NULL),
(18, 27, 'horn ok please food truck festival 2018,  horn ok please food truck festival tickets 2018,  horn ok please 2018 tickets,  horn ok please delhi 2018,  food truck festival delhi 2018,  horn ok please festival 2018,  horn ok please food truck festival review,  food truck festival delhi ticket price, street food festival delhi 2018, upcoming food festivals in delhi 2018, food festival in delhi jawaharlal nehru stadium, food festival in delhi pragati maidan', 'The 4th edition of “Horn OK Please” will give you four times the fun and enjoyment than ever.  A 3-days long food festival, Horn Ok Please will have the JLN Stadium', 'Horn OK Please - Delhi\'s Happiest Food Festival - Get Tickets', NULL, NULL);

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
(1, 2, 1, '2018-09-03 08:07:01', '2018-09-03 08:07:01'),
(2, 2, 2, '2018-09-03 08:07:01', '2018-09-03 08:07:01'),
(14, 8, 1, '2018-09-20 00:16:47', '2018-09-20 00:16:47'),
(65, 15, 4, '2018-10-02 00:36:23', '2018-10-02 00:36:23'),
(66, 15, 5, '2018-10-02 00:36:23', '2018-10-02 00:36:23'),
(67, 15, 6, '2018-10-02 00:36:23', '2018-10-02 00:36:23'),
(68, 15, 7, '2018-10-02 00:36:23', '2018-10-02 00:36:23'),
(69, 15, 8, '2018-10-02 00:36:23', '2018-10-02 00:36:23'),
(70, 15, 9, '2018-10-02 00:36:23', '2018-10-02 00:36:23'),
(87, 20, 16, '2018-10-02 14:56:56', '2018-10-02 14:56:56'),
(88, 20, 17, '2018-10-02 14:56:56', '2018-10-02 14:56:56'),
(89, 20, 18, '2018-10-02 14:56:56', '2018-10-02 14:56:56'),
(104, 19, 11, '2018-10-02 17:17:42', '2018-10-02 17:17:42'),
(105, 19, 12, '2018-10-02 17:17:42', '2018-10-02 17:17:42'),
(106, 19, 13, '2018-10-02 17:17:42', '2018-10-02 17:17:42'),
(107, 19, 14, '2018-10-02 17:17:42', '2018-10-02 17:17:42'),
(108, 19, 15, '2018-10-02 17:17:42', '2018-10-02 17:17:42'),
(109, 19, 19, '2018-10-02 17:17:42', '2018-10-02 17:17:42'),
(110, 19, 20, '2018-10-02 17:17:42', '2018-10-02 17:17:42'),
(111, 19, 21, '2018-10-02 17:17:42', '2018-10-02 17:17:42');

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
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` int(10) UNSIGNED NOT NULL,
  `position` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `min_exp` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `max_exp` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `min_ctc` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `max_ctc` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_location` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_opening` int(11) NOT NULL,
  `requirement` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `position`, `start_date`, `end_date`, `min_exp`, `max_exp`, `min_ctc`, `max_ctc`, `job_type`, `job_location`, `total_opening`, `requirement`, `status`, `created_at`, `updated_at`) VALUES
(3, 'Search Engine Optimization (SEO) Internship', '2018-10-13', '2018-10-31', '', '6 Month', '3000', '5000', 'Internship', 'Remote Location', 2, '<p><span style=\"font-size:16px\"><u><strong>About Company Profile:</strong></u></span></p>\r\n\r\n<p>Festeve Mantra is a confluence of festivals and events happening across the globe. We at Festeve Mantra are the event messengers offering our platform to explore events and festivals of your favorite genre.&nbsp;<br />\r\nJoin us to &quot;Enter The Happening World!&quot;</p>\r\n\r\n<p><u><span style=\"font-size:16px\"><strong>About the Internship: </strong></span></u></p>\r\n\r\n<p>Selected intern&#39;s day-to-day responsibilities include:</p>\r\n\r\n<p>1. Auditing the website</p>\r\n\r\n<p>2. Handling SEO: on page &amp; off page activities</p>\r\n\r\n<p>3. Finding relevant data for marketing purposes</p>\r\n\r\n<p>4. Handling Google Adwords, Google Analytics, Facebook adverts, and content marketing</p>\r\n\r\n<p>5. Searching for data on various online web pages &amp; maintaining the sheet</p>\r\n\r\n<p>6. Coordinating with marketing manager &amp; preparing database for email marketing</p>\r\n\r\n<h5><span style=\"font-size:16px\"><u><strong>Who can apply:</strong></u></span></h5>\r\n\r\n<p>Only those candidates can apply who:</p>\r\n\r\n<ol>\r\n	<li>\r\n	<p>are available for the work from home job/internship</p>\r\n	</li>\r\n	<li>\r\n	<p>can start the work from home job/internship between 25th Oct&#39;18 and 14th Nov&#39;18</p>\r\n	</li>\r\n	<li>\r\n	<p>are available for the duration of 2-3 months</p>\r\n	</li>\r\n	<li>\r\n	<p>have relevant skills and interests</p>\r\n	</li>\r\n</ol>\r\n\r\n<p><strong>Stipend</strong>: 2500 - 4000 Per month</p>\r\n\r\n<p><strong>Other perks</strong>: Experience Certificate, Letter of recommendation</p>\r\n\r\n<p><strong>Skills required:</strong> Digital Marketing and Search Engine Optimization (SEO)</p>', 1, '2018-10-08 18:30:00', '2018-10-13 21:06:45');

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
(8, '2018_07_12_152036_create_stories_table', 1),
(9, '2018_07_12_152350_create_events_table', 1),
(10, '2018_08_24_095248_create_categories_table', 1),
(11, '2018_08_24_095711_create_speakers_table', 1),
(12, '2018_08_24_100031_create_organisers_table', 1),
(18, '2018_08_25_052337_drop_user_table', 2),
(20, '2018_08_25_060625_add_organiser_to_events', 2),
(21, '2018_08_25_061133_create_event_speakers_table', 2),
(22, '2018_09_03_060711_create_event_addresses_table', 2),
(25, '2018_09_03_084443_create_event_seos_table', 3),
(26, '2018_09_22_164426_create_pages_table', 4),
(27, '2018_09_27_192420_create_authors_table', 5),
(28, '2018_09_27_192612_create_advertisements_table', 6),
(29, '2018_10_07_192916_create_queries_table', 7),
(30, '2018_10_07_193811_create_employees_table', 8),
(31, '2018_10_07_194451_create_jobs_table', 9),
(32, '2018_11_10_172400_create_event_galleries_table', 9);

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
(1, 'sd@sdf.cin', 1, '2018-08-27 08:41:32', '2018-09-13 12:29:55'),
(2, 'asda@sdc.sds', 0, '2018-08-27 08:45:03', '2018-08-27 08:45:03'),
(3, 'ads@sdf.dscsd', 0, '2018-08-27 08:56:09', '2018-08-27 08:56:09'),
(4, 'dsd@dfx.gtrdtf', 0, '2018-08-27 08:56:30', '2018-08-27 08:56:30'),
(5, 'as@sdfs.sdfd', 0, '2018-08-28 01:41:46', '2018-08-28 01:41:46'),
(6, 'arvind@tech.dfg', 0, '2018-08-28 01:42:09', '2018-08-28 01:42:09'),
(7, 'abhishek.anand@gmail.com', 0, '2018-08-30 09:46:27', '2018-08-30 09:46:27'),
(8, 'kaxaskak@gmail.com', 0, '2018-09-26 01:04:13', '2018-09-26 01:04:13');

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
(1, 'Sunburn City Festival', 'Sunburn - Electronic Music Festival', '<p style=\"text-align:justify\"><span style=\"font-size:18px\">Sunburn Festival is India&#39;s premier electronic music festival hosting Asia&#39;s largest &lsquo;4-day&rsquo; Electronic Music Festival. We started our journey in 2007 and it still continues. Our first event festival was held in Goa, India in 2007 with the world&rsquo;s biggest artists. We are pleased to get artists like Martin Garrix, Dimitri Vegas and Like Mike, Afrojack, Tiesto, DJ Snake, KSHMR, Hardwell, Nicky Romero, Nervo and many more to India.</span></p>', 'https://www.facebook.com/SunburnFestival/', 'https://twitter.com/SunburnFestival', 'http://www.sunburn.in/', 'https://www.instagram.com/SunburnFestival/', '', 1, '2018-08-24 07:37:21', '2018-10-02 00:59:21'),
(2, 'The Khariboli Masher', 'The Khariboli Masher', '<p style=\"text-align:justify\"><span style=\"font-size:16px\">Khariboli Masher is a festival to fuse culinary arts and music, celebrating the Indian heritage in its fabulously diverse avatars and forms. The festival promises food from every part of India blended with some great performances from top artists and live bands. The Khariboli Masher festival offers exciting Watermelon Slides, Tomato Fights, Open Mic Sessions with Hasya Kavis and Mother-in-law&#39;s Revenge.</span></p>', 'https://www.facebook.com/KhariboliMasher/', 'https://twitter.com/kharibolimasher/', '', 'https://www.instagram.com/kharibolimasher/', '', 1, '2018-08-25 13:40:44', '2018-10-19 15:42:39'),
(3, 'INDIA AFFILIATE SUMMIT', 'Internet and Mobile Association of India (IAMAI)', '<p style=\"text-align:justify\"><span style=\"font-size:18px\">India Affiliate Summit&nbsp;organized by the Internet and Mobile Association of India(IAMAI), has been the premier meeting point for thought leaders from the affiliate marketing space. Here is where the key stakeholders and influencers in the industry discuss innovations, dissect implications and dwell upon the substantial potential of this booming industry.</span></p>', 'https://www.facebook.com/InternetAndMobileAssociationIndia/', 'https://twitter.com/IAMAIForum', 'https://www.linkedin.com/in/iamai-forum-75a35943/?originalSubdomain=in', '', '', 1, '2018-09-22 21:38:18', '2018-10-02 00:59:01'),
(4, 'Airtel Delhi Half Marathon', 'Airtel Delhi Half Marathon', '<p style=\"text-align:justify\"><span style=\"font-size:16px\">Buoyed by the success of the opening edition of the Standard Chartered Mumbai Marathon, Procam zeroed in on the capital city of India, New Delhi, and thus started the journey of the Delhi Half Marathon in 2005. Rio Olympics marathon champion and the fastest marathoner in the world, Eliud Kipchoge, chose to participate in and won the Airtel Delhi Half Marathon 2016. Daley Thompson, Jackie-Joyner Kersee, Sir Richard Hadlee, Alan Border </span><span style=\"font-size:16px\">and</span><span style=\"font-size:16px\"> Cathy Freeman have been the event ambassadors of the world&rsquo;s most prestigious IAAF Gold Label half-marathon.</span></p>', 'https://www.facebook.com/runadhm', 'https://twitter.com/runadhm/', '', 'https://www.instagram.com/runadhm/', '', 1, '2018-09-22 21:41:39', '2018-10-19 15:42:25'),
(5, 'Bridal Asia', 'Bridal Asia, Delhi', '<p style=\"text-align:justify\"><span style=\"font-size:18px\">Bridal Asia brings you a meticulously curated collection of bespoke bridal fashion, jewellery, and accessories. What started as a small showcase of trousseau collection under one roof has become a much awaited and prestigious event showcasing a variety of bridal fashion and jewellery trends and a mind-boggling range of bridal accessories required by a bride from the Asian Subcontinent. Whether you&rsquo;re the bride, the bridesmaid or simply a serial wedding attendee, Bridal Asia offers you a roster of handpicked fashion, jewellery, and accessories all under one roof.</span></p>', 'https://www.facebook.com/BridalAsiaexpo/', 'https://twitter.com/bridalasiashow?lang=en', '', 'https://www.instagram.com/bridalasia/?hl=en', '', 1, '2018-09-25 14:27:17', '2018-10-02 00:58:18'),
(6, 'Bryan Adams - Canadian singer-songwriter', 'Bryan Adams', '<p style=\"text-align:justify\"><span style=\"font-size:18px\"><strong>Bryan Guy Adams (Canadian singer, songwriter )</strong></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:18px\">Bryan Adams is a renowned international singer-songwriter who hails from Canada. Some of his best-known songs are &lsquo;Heaven&rsquo;, &lsquo;Everything I Do&rsquo; and &lsquo;Here I Am&rsquo;, to name a few. He had an innate interest in music and from his early childhood, he manifested his talents in music.</span></p>', 'https://www.facebook.com/bryanadamsofficial?fref=ts', 'https://twitter.com/bryanadams', '', 'https://www.instagram.com/bryanadams/', '', 1, '2018-09-26 00:50:57', '2018-10-02 00:57:21'),
(7, 'Franchise India', 'Franchise India', '<p style=\"text-align:justify\"><span style=\"font-size:16px\">Franchise India Holdings Limited is Asia&#39;s largest integrated franchise solution company since 1999, and an absolute authority on franchising and licensing. FIHL has helped hundreds of investors in selecting the right franchise and, in turn, assisted numerous </span><span style=\"font-size:16px\">organisations</span><span style=\"font-size:16px\"> in international and domestic franchise expansion. Knowledge, Opportunity, Network </span><span style=\"font-size:16px\">and</span><span style=\"font-size:16px\"> Success are FIHL&#39;s key ingredients.</span></p>', 'https://www.facebook.com/FranchiseIndiaNews', 'https://twitter.com/FranchiseIndia', 'https://www.linkedin.com/company/102548?trk=tyah', '', '', 1, '2018-09-30 14:24:42', '2018-10-19 15:42:13'),
(8, 'The Grub Fest', 'The Grub Fest', '<p style=\"text-align:justify\"><span style=\"font-size:16px\">The Grub Fest&nbsp;is India&#39;s biggest food festival with the best restaurants displaying their signature delicacies over some good music and hearty performances to keep you entertained. Take in the aromas, try out interesting cuisines, fill your baskets with unique gourmet products, indulge in mouth-watering desserts and learn some of the best-kept food secrets from the most talented chefs from the country.</span></p>', 'https://www.facebook.com/thegrubfest/', 'https://twitter.com/TheGrubFest', '', '', '', 1, '2018-10-02 00:56:28', '2018-10-19 15:41:56'),
(9, 'Mehrangarh Museum Trust & Jaipur Virasat Foundation', 'Jodhpur RIFF', '<p><span style=\"font-size:16px\">Jodhpur RIFF is a not-for-profit partnership project involving two of India&rsquo;s leading heritage trusts: Mehrangarh Museum Trust and Jaipur Virasat Foundation. The festival has been endorsed by UNESCO as a &quot;Peoples&quot; Platform for Creativity and Sustainable Development.&quot;</span></p>\r\n\r\n<p><span style=\"font-size:16px\">HH Gaj Singh of Marwar-Jodhpur is the Chief Patron of Jodhpur RIFF, Sir Mick Jagger, of the rock band The Rolling Stones is International Patron of Jodhpur RIFF.front man</span></p>', 'https://www.facebook.com/JodhpurRIFF', 'https://twitter.com/jodhpurriff', '', '', '', 1, '2018-10-02 14:17:18', '2018-10-19 15:41:18'),
(10, 'T. Narayan Photography', 'Photo Routes', '<p style=\"text-align:justify\"><span style=\"font-size:16px\"><strong>Photo Routes</strong> is dedicated to providing photographers, amateur and professional, with amazing photography tour experiences topped with instinctive tutorials and workshops, Conducted by renowned photographers T Narayan and Sanjay Sharma. Narayan is a former Photo Editor, India Today, Hindustan Times, Week, OPEN and Outlook, while Sanjay has worked with organizations like The Hindustan Times, Asia Week and Wall Street Journal. Photo Routes prides itself on offering the participants unrivaled experiences to destinations which would be otherwise hard to reach for an average person. Photo Routes functions on the highest set standards. The tour sizes are conducive to the discerning participant to mix learning with fun. Touring idyllic destinations, we promise our participants a thoroughly enjoyable experience with an authentic local flavor.</span></p>', 'https://www.facebook.com/T-Narayan-Photography-764984320256642', 'https://twitter.com/tnarayan288?lang=en', '', 'https://www.instagram.com/p/Bg_AECzH6WO/?taken-by=tnarayanphotography', '', 1, '2018-10-15 23:17:14', '2018-10-19 15:41:38'),
(11, 'DigitalShala Techshops', 'DigitalShala Techshops', '<p style=\"text-align:justify\"><span style=\"font-size:16px\"><strong>Digital Shala</strong> is a Bootstrapped Edu-Tech startup, where they balance the equation of learning and earning. Their Programs are designed on &quot;Learn to Need&quot; Methodology, where participants learn only what they need to reach their goal, rather than traditional learning.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\">At Digitalshala, they do workshops and webinars in various domains like Digital Marketing Workshops, Photoshop Workshops, Web Designing Workshops, Earning Money Online, Photography Workshops, Ayurvedic Workshops and what not. They do Workshops which enhances and even change our careers and life in just go. They do all workshops mostly in Bangalore, Hyderabad </span><span style=\"font-size:16px\">and</span><span style=\"font-size:16px\"> Chennai.</span></p>', 'https://www.facebook.com/digitalshalatpt/', 'https://twitter.com/digitalshala', '', '', '', 1, '2018-10-19 13:36:23', '2018-10-19 15:41:28'),
(12, 'ITPO', 'India Trade Promotion Organization', '<p style=\"text-align:justify\"><span style=\"font-size:16px\"><strong>India Trade Promotion Organisation</strong>, the premier trade promotion agency of the Ministry of Commerce &amp; Industry, Govt. of India is committed to </span><span style=\"font-size:16px\">showcase</span><span style=\"font-size:16px\"> excellence achieved by the country in diverse fields especially trade and commerce.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\">ITPO provides a wide spectrum of services to trade and industry and acts as a catalyst for </span><span style=\"font-size:16px\">growth</span><span style=\"font-size:16px\"> of India&#39;s trade. ITPO approves holding of international trade fairs in India and regulates holding of various expositions in India primarily to avoid any duplication of efforts while ensuring proper timing. It manages India&#39;s </span><span style=\"font-size:16px\">world class</span><span style=\"font-size:16px\"> exhibition complex which is constantly upgraded to keep it in a high standard of readiness. Spread over 123 acres of prime land in the heart of India&#39;s capital, New Delhi, Pragati Maidan offers about 61,290 sq. </span><span style=\"font-size:16px\">mtrs</span><span style=\"font-size:16px\">. of covered exhibition space in 16 halls, besides 10,000 sq. </span><span style=\"font-size:16px\">mtrs</span><span style=\"font-size:16px\">. of </span><span style=\"font-size:16px\">open</span><span style=\"font-size:16px\"> display area. The state-of-the-art exhibition halls have enhanced the appeal of Pragati Maidan as the ideal center for an increasing number of fair </span><span style=\"font-size:16px\">organisers</span><span style=\"font-size:16px\"> and business visitors from different parts of the world.</span></p>', 'https://www.facebook.com/IndiaTradePromotionOrganization', '', '', '', '', 1, '2018-10-20 12:10:58', '2018-10-21 16:08:33'),
(13, 'India Art Festival', 'India Art Festival', '<p style=\"text-align:justify\"><span style=\"font-size:16px\"><strong>India Art Festival</strong>, a contemporary art fair founded in 2011 is a new model for dialogue and collaborations between art galleries, art dealers, art buyers, artists, interior designer, architects and art connoisseurs who come together every year under roof. India Art Festival (IAF) along with mid-level and major art galleries also provides the opportunity to emerging, independent artists to get discovered and enjoy the attention along with the established artists. </span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\">Every year IAF hosts over 400+ exhibiting artists and 50 art galleries from across India and Asian sub-continent, showcasing exciting original artworks, prints, paintings, drawings, sculptures, photography, ceramics, lithographs, installations and more - all under one roof at Thyagaraj Stadium, New Delhi and Nehru Centre, Mumbai. </span></p>', 'https://www.facebook.com/Indiaartfestival', 'https://twitter.com/indiartfestival', 'https://www.linkedin.com/in/rajendra-india-art-festival-803554a5/', '', '', 1, '2018-10-20 22:10:05', '2018-10-21 16:07:08'),
(14, 'Pune International Marathon Trust', 'Pune International Marathon Trust', '<p><span style=\"font-size:16px\"><u><strong>Pune International Marathon Trust</strong></u></span></p>\r\n\r\n<p><span style=\"font-size:16px\">We introduce ourselves as the premier institute organizing field sports in the country since 30 years. We have been conducting the prestigious &ldquo;Pune International Marathon&rdquo; for the past 30 years with full zeal an enthusiasm.&nbsp;PIM attracts many International participants, who compete with national and local runners.</span></p>', 'https://www.facebook.com/marathonpune', 'https://twitter.com/punemarathon', '', 'https://www.instagram.com/puneinternational/', '', 1, '2018-10-23 23:31:28', '2018-10-25 00:32:53'),
(15, 'So Delhi', 'So Delhi', '<p><span style=\"font-size:16px\"><strong>SO</strong> is a leading city &amp; entertainment guide filled with hand-picked recommendations of what to do in your city, explore hidden gems and be the first to get the latest buzz. We consist of a constantly growing community of local experts showcasing a range of curated content around events, food shopping, fashion, sightseeing, local communities, travel and so much more! We&#39;ll help you make your weekend plans, tell you the best events happening all around Delhi, help you plan weekend getaways, tell you all about the best cuisines and where to get &#39;em, help you find out more about food tours, places to get the best coffee and much much more.</span></p>', 'https://www.facebook.com/sodelhidotcom/', 'https://twitter.com/SoDelhi', '', 'https://www.instagram.com/sodelhi/', '', 1, '2018-10-23 23:40:14', '2018-10-25 00:28:59');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keyword` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `slug`, `content`, `meta_keyword`, `meta_description`, `page_title`, `created_at`, `updated_at`) VALUES
(1, 'Home', 'home', '', 'upcoming Travel event, upcoming Skill Development event, upcoming Music concerts, upcoming Sports events, upcoming Conference events, upcoming Food festivals, upcoming DJ Party events, upcoming Seminars & Meetups, upcoming Yoga, Meditation & Spirituality events, upcoming Theme parks event, upcoming Entertainment events, upcoming Adventure & Outdoors events, upcoming Professional training events, upcoming Campus events, upcoming college festivals, upcoming Trade shows events, upcoming Trade fair, festeve mantra', 'Explore most happening concerts, parties, conferences, sports & recreational events near you. Festeve Mantra lets you buy tickets of any Event & Festival.', 'Enter the happening world | Explore Top Upcoming Events & Festivals', '2018-09-22 01:30:00', '2018-09-24 01:30:00'),
(2, 'Our Team - The People Behind Festeve Mantra', 'our-team', '<p style=\"text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\">Festeve Mantra is a team of passionate people who enjoy their leisure time with events around and help you and event hosts reach the right target event and audience respectively. The team consists of purely common people intending to render their informatory services to you while facilitating you to stay updated by en-routing you to the associating event partners hassle-freely.</span></span></p>', 'our team, Our Team page, festeve mantra team, meet our team, team intoduction, team page contact', 'Meet and socialize with the Co-founders and other team members of Festeve Mantra here!', 'Our Team - The People Behind Festeve Mantra', '2018-09-22 01:30:00', '2018-09-24 01:30:00'),
(3, 'Festeve Mantra Careers: We are always hiring!', 'careers', '', 'Festeve mantra jobs, Graphics designers openings, Content writers job, freelance jobs, jobs in gurgaon for freshers, jobs in gurgaon for graduates, jobs in gurgaon for mba, latest jobs in gurgaon, jobs in gurgaon for experienced, jobs in delhi, jobs in gurgaon schools, jobs in noida, paid volunteer jobs freshers, volunteer jobs, Co-ordinator jobs, media sales jobs', 'Browse available job openings at Festeve Mantra Careers page. We\'re building the next-generation Discovery platform for Events, Festivals, Artists, Organizers, volunteer, Vendors. Join Us', 'Festeve Mantra Careers: We are always hiring!', '2018-09-22 01:30:00', '2018-09-24 01:30:00'),
(4, 'TERMS OF SERVICE', 'terms-conditions', '<p style=\"margin-left:0in; margin-right:0in; text-align:justify\"><u><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\"><strong>TERMS OF USE</strong></span></span></u></p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in; text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Calibri,sans-serif\">Welcome to </span></span><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:16px\">Festeve</span><span style=\"font-size:16px\"> Mantra! We provide our event related information services subject to the </span><span style=\"font-size:16px\">below-mentioned</span><span style=\"font-size:16px\"> terms and conditions. If you visit or register for an event through our website, we consider your acceptance </span><span style=\"font-size:16px\">to</span></span></span><span style=\"font-size:16px\"><span style=\"font-family:Calibri,sans-serif\"> these conditions. </span></span></p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in; text-align:justify\"><u><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\"><strong>PRIVACY</strong></span></span></u></p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in; text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Calibri,sans-serif\">To understand and gain deep insights of the way this website functions and serve you, please review our Privacy Policy, that governs your visit to </span></span><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:16px\">Festeve</span></span></span><span style=\"font-size:16px\"><span style=\"font-family:Calibri,sans-serif\"> Mantra website also.</span></span></p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in; text-align:justify\"><u><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\"><strong>COMMUNICATIONS</strong></span></span></u></p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in; text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Calibri,sans-serif\">Registering or subscribing with us means your consent to receive electronic communication from </span></span><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:16px\">Festeve</span><span style=\"font-size:16px\"> Mantra via e-mails or by posting information on this website. All agreements, information, disclosures and other communications provided electronically adheres to legal requirements that such communications </span><span style=\"font-size:16px\">be</span></span></span><span style=\"font-size:16px\"><span style=\"font-family:Calibri,sans-serif\"> in writing and you give your consent for the same.</span></span></p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in; text-align:justify\"><span style=\"font-size:18px\"><u><span style=\"font-family:Calibri,sans-serif\"><strong>COPYRIGHT</strong></span></u></span></p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in; text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Calibri,sans-serif\">All content on this website including text, graphics, logos </span></span><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:16px\">and</span><span style=\"font-size:16px\"> images is the property of </span><span style=\"font-size:16px\">Festeve</span><span style=\"font-size:16px\"> Mantra or associating companies protected by relevant copyright laws. </span><span style=\"font-size:16px\">Festeve</span></span></span><span style=\"font-size:16px\"><span style=\"font-family:Calibri,sans-serif\"> Mantra reserves the right to compile all the content on this website exclusively.</span></span></p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in; text-align:justify\"><span style=\"font-size:18px\"><u><span style=\"font-family:Calibri,sans-serif\"><strong>RIGHT TO SITE ACCESS</strong></span></u></span></p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in; text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Calibri,sans-serif\">Festeve Mantra allows you to access the website and information published for your personal awareness and no company or individual is allowed to download or modify the entire or any portion of the website. Reproducing, duplicating, copying, selling, or otherwise exploiting this website for any commercial use without any written consent of Festeve</span><span style=\"font-family:Calibri,sans-serif\"> Mantra is strictly prohibited. </span></span></p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in; text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-size:18px\"><u><span style=\"font-family:Calibri,sans-serif\"><strong>SUBSCRIPTION & REGISTRATION</strong></span></u></span></span></p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in; text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Calibri,sans-serif\">Festeve</span><span style=\"font-family:Calibri,sans-serif\"> Mantra is an informatory platform to spread awareness about the upcoming and popular events submitted by its partners. This website directs you to the associating partner’s website as you click the <strong><em>Register</em></strong> button for registration and cannot be held responsible for any further experience on that website. </span></span></p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in; text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Calibri,sans-serif\">You are solely responsible to maintain the confidentiality of your account and you are responsible for all activities carried out under your account. </span><span style=\"font-family:Calibri,sans-serif\">Festeve</span><span style=\"font-family:Calibri,sans-serif\"> Mantra and its partner companies reserve the right solely for denial of service, termination of accounts, removal or editing of the content at their sole discretion.</span></span></p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in; text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Calibri,sans-serif\">You can subscribe to events notifications by submitting your details through the form provided on the website. You can </span><span style=\"font-family:Calibri,sans-serif\">opt out</span><span style=\"font-family:Calibri,sans-serif\"> from the notifications and emailers anytime by dropping us an <strong><em>unsubscribe</em></strong> email. </span></span></p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in; text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-size:18px\"><u><span style=\"font-family:Calibri,sans-serif\"><strong>SUBMIT & REVIEW CONTENT, COMMENTING, EMAILS ETC.</strong></span></u></span></span></p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in; text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Calibri,sans-serif\">Visitors may comment, post reviews, and submit suggestions, ideas, and queries and ensure that no obscene, illegal, threatening, and defamatory content is posted. Content invasive of privacy, and violating the intellectual property rights, or otherwise adversely affecting the third parties or objectionable material, containing software viruses, campaigning of political concerns, soliciting commercial agendas, mass mailings, or any kind of \"spam\" is not acceptable and will have to face a strict legal action. Using </span><span style=\"font-family:Calibri,sans-serif\">false e-mail address, impersonating any entity or individual, or otherwise</span><span style=\"font-family:Calibri,sans-serif\"> misleading content may lead to serious consequences.</span></span></p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in; text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Calibri,sans-serif\">Festeve</span><span style=\"font-family:Calibri,sans-serif\"> Mantra reserves the right, not obligatory, to edit or remove such content, but does not ensure the regular review of the posted content. </span></span></p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in; text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Calibri,sans-serif\">By posting or submitting any content or details, you grant </span><span style=\"font-family:Calibri,sans-serif\">Festeve Mantra royalty-free, nonexclusive</span><span style=\"font-family:Calibri,sans-serif\">, and perpetual rights to use, modify, reproduce, and publish with or without the name submitted in connection with such content. </span></span></p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in; text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-size:18px\"><u><span style=\"font-family:Calibri,sans-serif\"><strong>For Associating Partners</strong></span></u></span></span></p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in; text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Calibri,sans-serif\">Any interested company can associate to submit the information of events to be portrayed on </span><span style=\"font-family:Calibri,sans-serif\">Festeve Mantra through the <a href=\"http://www.festevemantra.com/add-event\" style=\"color:#0563c1; text-decoration:underline\">Submit your event</a> section. Festeve</span><span style=\"font-family:Calibri,sans-serif\"> Mantra owns the proprietary right to publish the event information submitted by the company after thorough analysis and the company will be notified via email if the submitted event is published on the website. Any unauthorized use of the forms and other property of the website terminates the permission or right to access of the associates.</span></span></p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in; text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-size:18px\"><u><span style=\"font-family:Calibri,sans-serif\"><strong>For Visitors</strong></span></u></span></span></p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in; text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Calibri,sans-serif\">You can visit and traverse through all pages to gather the information provided by the associated companies or vendors. You can submit your reviews of previously attended events via the </span><span style=\"font-family:Calibri,sans-serif\"><a href=\"http://www.festevemantra.com/stories\" style=\"color:#0563c1; text-decoration:underline\">Festeve</a><a href=\"http://www.festevemantra.com/stories\" style=\"color:#0563c1; text-decoration:underline\"> stories</a> section in the website. Your review will be published after precise</span><span style=\"font-family:Calibri,sans-serif\"> analysis of the shared feedback. Your access to the website can be revoked in case of any discriminatory activity is encountered on the website.</span></span></p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in; text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:18px\"><u><strong>TOP EVENTS & LISTING</strong> </u></span><br />\r\n<a href=\"http://www.festevemantra.com/add-event\" style=\"color:#0563c1; text-decoration:underline\">+Festeve</a> lists popular upcoming events on the website but no event is listed to rank in any specific order and the top of low listed events does not mark its ranking at all. The event list is updated randomly after an event is submitted by the associate and analyzed by the </span><span style=\"font-family:Calibri,sans-serif\">Festeve</span><span style=\"font-family:Calibri,sans-serif\"> Mantra team before publishing to the +Festeve listing of events.</span></span></p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in; text-align:justify\"><br />\r\n<span style=\"font-size:16px\"><span style=\"font-size:18px\"><u><span style=\"font-family:Calibri,sans-serif\"><strong>APPLICABLE LAW & DISPUTES</strong></span></u></span></span></p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in; text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Calibri,sans-serif\">By accessing the </span><span style=\"font-family:Calibri,sans-serif\">Festeve Mantra website, you agree that the laws of the original state of Festeve Mantra regardless to any principles of law conflicts will govern these Terms of Use and any dispute that might occur between Festeve</span><span style=\"font-family:Calibri,sans-serif\"> Mantra and you.</span></span></p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in; text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-size:18px\"><u><span style=\"font-family:Calibri,sans-serif\"><strong>SITE POLICIES</strong></span></u></span></span></p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in; text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Calibri,sans-serif\">You need to review our Privacy Policy posted on the website that </span><span style=\"font-family:Calibri,sans-serif\">governs your visit to Festeve</span><span style=\"font-family:Calibri,sans-serif\"> Mantra. </span></span></p>', 'Terms & Conditions, Terms of use, Upcoming events & Festivals, terms of service, events terms & conditions﻿', 'Welcome to Festeve Mantra! We provide our event related information services. If you visit or register for an event through our website, we consider your acceptance to these conditions.', 'Terms & Conditions - Festeve Mantra', '2018-09-22 01:30:00', '2018-09-24 01:30:00'),
(5, 'PRIVACY STATEMENTS GUIDE', 'privacy-policy', '<p style=\"margin-left:0in; margin-right:0in; text-align:justify\"><u><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\"><strong>Information Usage</strong></span></span></u></p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in; text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Calibri,sans-serif\">Festeve Mantra uses web services to track your location, operating system, browser </span></span><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:16px\">and</span></span></span><span style=\"font-size:16px\"><span style=\"font-family:Calibri,sans-serif\"> screen resolutions to optimize your visit experience with our website. We do not collect and retain any personal information such as name and contact details, etc. E-mail addresses are provided by the users through the e-mail communications or commenting process voluntarily. </span></span></p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in; text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Calibri,sans-serif\">NOTE: </span></span><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:16px\">Festeve</span><span style=\"font-size:16px\"> Mantra does no publicly display and disclose the e-mail addresses provided by the users through the required &ldquo;e-mail&rdquo; field in the form or the comments area. The e-mail addresses and user-specific information such as survey information, website registrations and/or subscriptions, is aggregated on pages visited or accessed by the users. The information collected by </span><span style=\"font-size:16px\">Festeve</span></span></span><span style=\"font-size:16px\"><span style=\"font-family:Calibri,sans-serif\"> Mantra is used to enhance the experience and the content of our website only and not for any marketing purposes.</span></span></p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in; text-align:justify\"><u><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\"><strong>Third-Party Advertisers</strong></span></span></u></p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in; text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Calibri,sans-serif\">Third-party advertisers are featured on the </span></span><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:16px\">Festeve</span></span></span><span style=\"font-size:16px\"><span style=\"font-family:Calibri,sans-serif\"> Mantra website, which may collect the information tracked differently other than devised in this Privacy Policy. The only information that third-parties will be able to track constitutes the basic usage information on the website and no email addresses are shared with the advertisers for any reason in any case.</span></span></p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in; text-align:justify\"><u><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\"><strong>Cookies</strong></span></span></u></p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in; text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Calibri,sans-serif\">Festeve Mantra uses cookies to store your preferences, capture user-specific information on the pages accessed or visited by the users and customize the website content based on the information collected about the visitors&rsquo; browsers and similar information sent by the visitors.</span></span></p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in; text-align:justify\"><u><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\"><strong>Use of Information Collected</strong></span></span></u></p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in; text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Calibri,sans-serif\">Festeve Mantra does not use any information provided by users, including e-mail addresses, for any marketing purposes. No personal information of the users is used by associating organizations or businesses related to </span></span><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:16px\">Festeve</span><span style=\"font-size:16px\"> </span><span style=\"font-size:16px\">Mantra,</span></span></span><span style=\"font-size:16px\"><span style=\"font-family:Calibri,sans-serif\"> unless clearly consented by the users in specific conditions.</span></span></p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in; text-align:justify\"><u><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\"><strong>Ownership of Information</strong></span></span></u></p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in; text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Calibri,sans-serif\">All e-mail addresses, comments or any other form of communication received by </span></span><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:16px\">Festeve</span><span style=\"font-size:16px\"> Mantra is the sole property of </span><span style=\"font-size:16px\">Festeve</span></span></span><span style=\"font-size:16px\"><span style=\"font-family:Calibri,sans-serif\"> Mantra and may be used to improve editorial or technical aspects of the website without any compensation owed to the sender.</span></span></p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in; text-align:justify\"><u><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\"><strong>Information Security</strong></span></span></u></p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in; text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Calibri,sans-serif\">Festeve Mantra has put all appropriate security measures in place to prevent any loss, misuse or alteration of information collected from our visitors through the Website. Information provided by the visitors is stored securely and used only for editorial and technical enhancements to render better website experience.</span></span></p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in; text-align:justify\"><u><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\"><strong>Privacy Policy Amendments</strong></span></span></u></p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in; text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Calibri,sans-serif\">Festeve Mantra reserves the right to make any amendments in our privacy policy and requires you to keep visiting this section to stay updated with recent changes if any.</span></span></p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in; text-align:justify\"><u><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\"><strong>Queries, Concerns, &amp; Complaints</strong></span></span></u></p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in; text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Calibri,sans-serif\">Festeve Mantra values your privacy. You can contact us in case of any queries, concerns, and complaints about privacy at Festeve Mantra, and we ensure to resolve your concerns at the earliest. You may reach us at <a href=\"mailto:info@festevemantra.com\" style=\"color:#0563c1; text-decoration:underline\">info@festevemantra.com</a> or call us at +91-9650311009/ +91-9650311009.</span></span></p>', 'privacy policy,  Privacy & Terms, festeve mantra, upcoming events, privacy statement guide, events policies﻿', 'This page offers about information on Festeve Mantra privacy policy. Topics covered include third party services, information sharing & disclosure, confidentiality & security and many more.', 'Privacy Policy | Privacy & Terms | Festeve Mantra', '2018-09-22 01:30:00', '2018-09-24 01:30:00'),
(6, 'Have a Question? Contact Us - Festeve Mantra', 'contact-us', '', 'contact us, festeve mantra contact number, festeve mantra customer care, get in touch, event contact, how to list event free, free events listing sites, event listing websites in india, event listing websites 2019, top event sites, event promotion sites, free local event listings', 'Know all the What, Where, Who and Why of your favourite upcoming event from Festeve Mantra. Get in touch to publish your event or share your festival story.', 'Have a Question? Contact Us - Festeve Mantra', '2018-09-22 01:30:00', '2018-09-24 01:30:00'),
(7, 'Top 100 Upcoming Premium Events & Festivals near you: Explore Now', 'top-hundred', '', 'Top 10 upcoming Travel events, Top 10 upcoming Skill Development events, Top 10 upcoming Music concerts, Top 10 upcoming Sports events, Top 10 upcoming Conference events, Top 10 upcoming Food festivals, Top 10 upcoming DJ Party events, Top 10 upcoming Seminars & Meetups events, Top 10 upcoming Yoga, Meditation & Spirituality events, Top 10 upcoming Theme parks events, Top 10 upcoming Entertainment events, Top 10 upcoming Adventure & Outdoors events, Top 10 upcoming Profesional training events, Top 10 upcoming Campus events, Top 10 upcoming Tradeshows events, Top 10 upcoming Trade fair', 'You will find here India\'s top 100 Upcoming premium events & festivals like music concert, DJ party, conference, trade show, food festivals at one roof.', 'Top 100 Upcoming Premium Events & Festivals near you: Explore Now', '2018-09-22 01:30:00', '2018-09-24 01:30:00'),
(8, 'Browse List of All Upcoming Events & Festivals | Festeve Mantra', 'categories', '', 'upcoming Travel event, upcoming Skill Development event, upcoming Music concerts, upcoming Sports events, upcoming Conference events, upcoming Food festivals, upcoming DJ Party events, upcoming Seminars & Meetups, upcoming Yoga, Meditation & Spirituality events, upcoming Theme parks event, upcoming Entertainment events, upcoming Adventure & Outdoors events, upcoming Profesional training events, upcoming Campus events, upcoming college festivals, upcoming Tradeshows events, upcoming Trade fair, all event categories', 'Find your interest based event & festival by browsing our festeve categories, covering events of all genres and locations.', 'Browse List of All Upcoming Events & Festivals | Festeve Mantra', '2018-09-22 01:30:00', '2018-09-24 01:30:00'),
(9, 'Want to share your Event & Festival experience? Submit Your Story Now', 'stories', '', 'submit story, share your story, where to submit short stories for money, submit event story, submit festivals story, share event experince, food festival stories. events stories, festival-event story', 'Had amazing experience at your last event visit or have a review to share? Submit your festival-event story with our readers and make it last forever.', 'Want to share your Event & Festival experience? Submit Your Story Now', '2018-09-22 01:30:00', '2018-09-24 01:30:00'),
(10, 'Want your Event to reach right audience? Submit Your Event Now', 'add-event', '', 'submit your event, submit an event, event submission sites in india, Free Event Submission Sites, event promotion websites in india, online event registration india, online event ticket booking, sell event tickets online free, event ticket booking website, mera events, event ticketing platforms in india, goeventz, townscript, 10times, explara, book my show, eventbrite', 'Adding more interested audience in your event is always a perk! And we make it happen through our event and festival discovery platform. Submit your event today!', 'Want your Event to reach right audience? Submit Your Event Now', '2018-09-22 01:30:00', '2018-09-24 01:30:00'),
(11, 'About Us', 'about-us', '<p style=\"margin-left:0in; margin-right:0in\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong>Our Story</strong></span></span></p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">This all started with our not-so-good experiences with few events. Even after gathering so called &ldquo;all inclusive&rdquo; information from various websites, we landed into situations where either the event info was misleading or inappropriate or not at all available despite tickets registration/ passes for entry.</span></span></p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">We observed that countless number of event promotion websites provide online information regarding registration and tickets for the events but don&rsquo;t talk of what the event is all about, how to reach there, what would be the other essentials to be known by attendees etc. Even if a few websites offer some information, they target to talk loud of the grand events only. But a purely &ldquo;informatory&rdquo; platform that could connect the audience to the events regardless of their scale despite ticket availability info was entirely missing. </span></span></p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">So, we thought of launching an event informatory platform that could bring the event-attendees find the best match as per their interests. To make Festeve Mantra one of the most embraced event information dispensing platform, we also facilitate event organizers and ticket sellers also to connect with the attendees on a common platform. </span></span></p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong>Who We Are</strong></span></span></p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">We are fun-lovers hooked to enjoy diverse events and activities and happened to be just information collectors. But after few bitter experiences of the events we attended, we founded Festeve Mantra- a unique platform that helps you find events of your interests in your vicinity with all vital information delivered on your fingertips. </span></span></p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong>The Way We Work</strong></span></span></p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">We are enthusiastic event lovers always on our toes to find events in all eras of society and for all ages across nation. Our passionate team gathers even the minutest information about the event and serves the most transparent way. Scratch from the basic info about the event, the venue location, event schedule, whom should attend it, and how to get tickets and register, we fetch you the tiniest details on your fingertips.</span></span></p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">You are directed to the Official Ticket website when you click the given button on every event page. </span></span></p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">We connect with event organizers and ticket sellers to help them find their authentic leads and promote their businesses the cost-effective way.</span></span></p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong>Our Mission</strong></span></span></p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">Festeve Mantra is missioned to become the first choice for event attendees, organizers and ticket sellers and contribute to make the event information finding a delightful experience. We endeavor to set a one-of-its-kind platform that connects online audience with event organizers and ticket vendors by capturing and then rendering the most appropriate and crisp information with the blink of an eye.&nbsp;</span></span></p>', 'about festeve mantra, about kapil khandelwal, festeve mantra founders, festeve mantra story, festeve mantra funding, Festeve mantra owners, festeve mantra events', 'Festeve Mantra is the confluence of festivals and events happening across the globe. A platform by festival fanatics for the festival community.', 'About Us - Festeve Mantra', '2018-09-22 01:30:00', '2018-09-24 01:30:00'),
(12, 'Coming Soon', 'coming-soon', '<p>Festeve Mantra is the confluence of festivals and events happening across the globe. For all the festival fanatics, discover the goodness arranged by people for the like-minded festival and event goers. We are the messengers offering our platform to know all the what, where, who and whys of the festivals and events of your favorite genre.&nbsp;</p>\r\n\r\n<p>Join us to explore the beauty of celebrations, gatherings, communities, excitement and all the thrill that you seek for. Ranging from luscious cuisine to gallons of delicious drinks, from dance to music, thons to keep you fit, exploring creativity to showcasing your talent and even gathering knowledge and wisdom to develop your skills.</p>\r\n\r\n<p><strong>Find all at one place - Festeve Mantra!</strong></p>', 'festivals, events, conference, seminar, dj party, concerts, Upcoming events in delhi, New year party events', 'Festeve Mantra is the confluence of festivals and events happening across the globe. A platform by festival fanatics for the festival community.', 'Coming Soon - Festeve Mantra', '2018-09-22 01:30:00', '2018-09-24 01:30:00'),
(13, 'Advertise With Us', 'add-advertisement', '', '', '', '', '2018-09-22 01:30:00', '2018-09-24 01:30:00'),
(14, 'Fest job Seekers', 'apply-job', '', '', '', '', '2018-09-22 01:30:00', '2018-09-24 01:30:00'),
(15, 'Organizers', 'organizers', '', '', '', '', '2018-09-22 01:30:00', '2018-09-24 01:30:00'),
(16, 'Add Story', 'add-story', '', '', '', '', '2018-09-22 01:30:00', '2018-09-24 01:30:00');

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
-- Table structure for table `queries`
--

CREATE TABLE `queries` (
  `id` int(10) UNSIGNED NOT NULL,
  `title_id` int(191) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `queries`
--

INSERT INTO `queries` (`id`, `title_id`, `name`, `city`, `company_name`, `email`, `mobile`, `message`, `created_at`, `updated_at`) VALUES
(1, 2, 'Abhishek Anand', 'Gurgaon', 'Techjockey', 'java2anand@gmail.com', '9641804135', 'Want to advertise my ads ', '2018-10-08 18:30:00', '2018-10-08 18:30:00'),
(2, 3, 'hello', 'Gurgaon', 'Techjockey', 'java2anand@gmail.com', '9641804135', 'lorem ipsum', '2018-10-08 18:30:00', '2018-10-08 18:30:00'),
(3, 1, 'Abh', 'kolkata', '', 'java2anand@gmail.com', '9898989898', 'kolkatat', '2018-10-09 13:17:57', '2018-10-09 13:17:57'),
(4, 1, 'Abh', 'kolkata', '', 'java2anand@gmail.com', '9898989898', 'kolkatat', '2018-10-09 13:19:02', '2018-10-09 13:19:02'),
(5, 1, 'Kapil', 'Chittorgarh', '', 'asa@jandf.sadsa', '9999999999', 'asdsad', '2018-10-09 13:19:29', '2018-10-09 13:19:29'),
(6, 1, 'asda', 'wqdqwd', '', 'dwa@wqdwad', '3334544444', 'adsacsa', '2018-10-09 13:20:39', '2018-10-09 13:20:39'),
(7, 1, 'Abhishek Anand', 'Haryana', '', 'java2anand@gmail.com', '9999999999', 'Hello Test Message', '2018-10-10 02:01:42', '2018-10-10 02:01:42');

-- --------------------------------------------------------

--
-- Table structure for table `site_settings`
--

CREATE TABLE `site_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `var_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `var_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `var_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('content','image') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `site_settings`
--

INSERT INTO `site_settings` (`id`, `var_name`, `var_title`, `var_value`, `type`, `created_at`, `updated_at`) VALUES
(1, 'site_name', 'SITE NAME', 'Festeve Mantra', 'content', '2018-09-19 18:30:00', '2018-09-19 18:30:00'),
(2, 'logo', 'SITE LOGO', 'logo.jpg', 'image', '2018-09-19 18:30:00', '2018-09-19 18:30:00'),
(3, 'address', 'ADDRESS', 'Tower 4B, DLF Corporate Park, Gurgaon , Haryana 122001', 'content', '2018-09-19 18:30:00', '2018-09-19 18:30:00'),
(4, 'phone_number', 'PHONE NUMBER', '9650311009', 'content', '2018-09-19 18:30:00', '2018-09-19 18:30:00'),
(5, 'mobile_number', 'MOBILE NUMBER', '9650311009', 'content', '2018-09-19 18:30:00', '2018-09-19 18:30:00'),
(6, 'contact_email', 'CONTACT EMAIL', 'info@festevemantra.com', 'content', '2018-09-19 18:30:00', '2018-09-19 18:30:00'),
(7, 'facebook_id', 'FACEBOOK ID', 'https://www.facebook.com/festevemantra/', 'content', '2018-09-19 18:30:00', '2018-09-19 18:30:00'),
(8, 'twitter_id', 'TWITTER ID', 'https://twitter.com/festevemantra', 'content', '2018-09-19 18:30:00', '2018-09-19 18:30:00'),
(9, 'linked_id', 'LINKEDIN ID', 'https://www.linkedin.com/company/digitalbeginner/', 'content', '2018-09-19 18:30:00', '2018-09-19 18:30:00'),
(10, 'instagram_id', 'INSTAGRAM ID', 'https://www.instagram.com/festevemantra/', 'content', '2018-09-19 18:30:00', '2018-09-19 18:30:00'),
(11, 'googleplus_id', 'GOOGLEPLUS ID', '', 'content', '2018-09-19 18:30:00', '2018-09-19 18:30:00'),
(12, 'page_title', 'PAGE TITLE (DEFAULT)', 'Enter the happening world | Explore Top Upcoming Events & Festivals', 'content', '2018-09-19 18:30:00', '2018-09-19 18:30:00'),
(13, 'meta_title', 'META TITLE (DEFAULT)', 'Enter the happening world | Explore Top Upcoming Events & Festivals', 'content', '2018-09-19 18:30:00', '2018-09-19 18:30:00'),
(14, 'meta_keyword', 'META KEYWORD(DEFAULT)', 'upcoming Travel event, upcoming Skill Development event, upcoming Music concerts, upcoming Sports events, upcoming Conference events, upcoming Food festivals, upcoming DJ Party events, upcoming Seminars & Meetups, upcoming Yoga, Meditation & Spirituality events, upcoming Theme parks event, upcoming Entertainment events, upcoming Adventure & Outdoors events, upcoming Professional training events, upcoming Campus events, upcoming college festivals, upcoming Trade shows events, upcoming Trade fair, festeve mantra', 'content', '2018-09-19 18:30:00', '2018-09-19 18:30:00'),
(15, 'meta_description', 'META DESCRIPTION(DEFAULT)', 'Explore most happening concerts, parties, conferences, sports & recreational events near you. Festeve Mantra lets you buy tickets of any Event & Festival.', 'content', '2018-09-19 18:30:00', '2018-09-19 18:30:00'),
(16, 'company_title', 'COMPANY NAME', 'Festeve Mantra', 'content', NULL, NULL),
(17, 'youtube_id', 'COMPANY NAME', 'Festeve Mantra', 'content', NULL, NULL),
(18, 'favicon', 'FAVICON', '', 'content', NULL, NULL),
(19, 'popular_event_title', 'Popular Event Title', 'New Year', 'content', NULL, NULL);

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
(3, 'Sandeep Yadav', '1535217811.jpg', 'Frontend Developer', '', '<p>A&nbsp;<strong>tutor</strong>&nbsp;is a person who provides assistance or tutelage to one or more people on certain subject areas or skills. The tutor spends a few hours on a daily, weekly, or monthly basis to transfer their expertise on the topic or skill to the student. Tutoring can take place in different settings, such as a classroom, a formal tutoring center, or the home of the tutor/learner. As a teaching-learning method, tutoring is characterized by how it differs from formal teaching methods on the basis of the (in)formality of the setting as well as the flexibility in pedagogical methods in terms of duration, pace of teaching, evaluation and tutor-tutee rapport.</p>', '', '', '', '', '', 1, '2018-08-25 11:53:31', '2018-08-25 11:53:31'),
(4, 'Aline Couto', '1537630037.jpg', 'Partner - Offerpay', '', '<p>Aline co-founded her first company at 21 and has spoken at major Brazilian digital marketing events.&nbsp;After her presentation at Affiliates Brazil, she and her associates shifted their business from digital to affiliate marketing to explore the various opportunities of this new and growing industry in the fifth most populous country in the world.</p>', '', 'https://twitter.com/alineideias', 'https://www.linkedin.com/in/alineideias', '', '', 1, '2018-09-22 22:27:17', '2018-09-22 22:27:17'),
(5, 'Anurag Gupta', '1537630268.jpg', 'CEO, SVG Media', '', '<p>Anurag Gupta, CEO, SVG Media has over 20 years of experience across diverse industries &ndash; FMCG, Office Automation, Stock Broking, and Media &amp; Internet</p>', 'https://www.facebook.com/anurag.gupta.delhi', 'https://twitter.com/anurag_gupta', 'https://www.linkedin.com/in/anuraggupta', '', '', 1, '2018-09-22 22:30:24', '2018-09-22 22:31:08'),
(6, 'Brett Kaufman', '1537630474.jpg', 'COO - Workbook6', '', '<p>Brett Kaufman is the COO of WorkBook6, an Arizona based company, where he oversees all media/finance/technology operations. WorkBook6 is a business development, customer acquisition and affinity marketing services&nbsp;firm.</p>', '', 'https://twitter.com/brettmkaufman', 'https://www.linkedin.com/in/brettmkaufman/', '', '', 1, '2018-09-22 22:34:34', '2018-09-22 22:34:34'),
(7, 'Nick Peroni', '1537630662.jpg', 'Owner & Creator - Ecom Empires', '', '<p>Nick is one of the leading thought leaders in social ecommerce right now. He is the creator of Ecom Empires, where he actively leads over 61,000 entrepreneurs from all around the world and have helped thousands of people find success in their online business.</p>', 'https://www.facebook.com/nick.peroni', '', 'https://www.linkedin.com/in/nickperoni', '', '', 1, '2018-09-22 22:37:42', '2018-09-22 22:37:42'),
(8, 'Parul Bhargava', '1537631080.png', 'CEO, vCommission', '', '<p>Parul is a charismatic leader and one of the most refined women entrepreneurs in the field of digital and performance marketing today.</p>', '', '', 'https://in.linkedin.com/in/vcommission', '', '', 1, '2018-09-22 22:44:40', '2018-09-22 22:44:40'),
(9, 'Stephen Rumbelow', '1537631230.jpg', 'Group CEO, Optimise', '', '<p>Stephen has a degree in Marketing from the Chartered Institute of Marketing, combined with a wealth of Advertiser and Publisher- side experience spanning Retail, Mobile and Finance, working for high-profile Brands like Aviva, Virgin and Hiscox.</p>', '', 'https://twitter.com/OptimiseMedia', 'https://www.linkedin.com/in/stephenrumbelow/', '', '', 1, '2018-09-22 22:47:10', '2018-09-22 22:47:10'),
(10, '\'LOKA\' By Veerali Raveshia', '', '', 'LOKA is a luxurious pret & couture clothing label established in 2013 by Veerali Raveshia.', '', '', '', '', '', '', 1, '2018-09-26 11:24:03', '2018-09-26 11:24:03'),
(11, 'Dr. Ritesh Malik', '1538468639.jpg', 'Founder, Innov8', 'India Entrepreneur', '<p style=\"text-align:justify\">Dr&nbsp;<strong>Ritesh Malik</strong>&nbsp;is an&nbsp;<strong>Indian doctor, entrepreneur and investor</strong>. He runs a virtual Startup Accelerator in India, currently investing in and mentoring 11 startups across various industries.</p>', 'https://www.facebook.com/drriteshmalik', 'https://twitter.com/drriteshmalik?lang=en', 'https://in.linkedin.com/in/dr-ritesh-malik-877a87a', '', '', 1, '2018-10-01 23:28:39', '2018-10-02 15:24:37'),
(12, 'Mohit Dhanjal', '1538468949.jpg', 'Director Retail at Raymond Limited', 'Director Retail, Raymond Limited', '<p style=\"text-align:justify\">Over 23 years of Retail experience across FMCG, Hospitality, Apparel, Fashion Lifestyle, Telecom, and Ice cream categories. Currently driving the Retail transformation at Raymond.</p>', '', '', 'https://www.linkedin.com/in/mohitdhanjal/?originalSubdomain=in', '', '', 1, '2018-10-01 23:48:27', '2018-10-02 15:32:02'),
(13, 'Devangi Parekh', '1538470246.jpg', 'Director, Aza Fashions', 'Director, Aza Fashions', '<p style=\"text-align:justify\">Promoted by&nbsp;Devangi Parekh, the AZA e-commerce store was launched in 2015 as a global web platform to offer clients the convenience of shopping the best of Indian fashion from anywhere in the world.&nbsp;</p>', 'https://www.facebook.com/AzaFashions', 'https://twitter.com/aza_fashions', '', 'https://www.instagram.com/devanginishar/?hl=en', 'https://plus.google.com/+Azafashions', 1, '2018-10-01 23:52:32', '2018-10-02 15:51:40'),
(14, 'Deepak Garg', '1538470711.jpg', 'Founder and CEO of Rivigo', 'Founder and CEO of Rivigo', '<p style=\"text-align:justify\">Deepak Garg, an ex-McKinsey executive, set out to do the homework before setting up a logistics start-up, he discovered that trucks drivers are branded as the 37th caste</p>', '', '', '', '', '', 1, '2018-10-01 23:55:50', '2018-10-02 15:58:31'),
(15, 'Farah Nathani', '1538471042.jpg', 'Co-Founder, The Mumum Co', 'Co-Founder, The Mumum Co', '<p style=\"text-align:justify\">Ms. Farah Nathani&nbsp;is a Co-founder at The Mumum&nbsp;Co. Before founding this company, she worked in the international business at Godrej Consumer Products Ltd focusing on post-merger integration in Latin America.&nbsp;</p>', '', '', '', '', '', 1, '2018-10-02 00:02:04', '2018-10-02 16:04:02'),
(16, 'Mani Singh Cheema', '1538466422.jpg', 'Co-Founder', '', '', '', '', '', '', '', 1, '2018-10-02 14:43:37', '2018-10-02 14:47:02'),
(17, 'Aman Kumar', '1538466696.jpg', 'Co-Founder', '', '', '', '', '', '', '', 1, '2018-10-02 14:51:36', '2018-10-02 14:51:36'),
(18, 'Arjun Jain', '1538466986.jpg', 'Co-Founder', '', '', '', '', '', '', '', 1, '2018-10-02 14:56:26', '2018-10-02 14:56:26'),
(19, 'Shivani Poddar', '1538471298.jpg', 'Co-founder, Faballey', 'Co-founder, Faballey', '<p style=\"text-align:justify\">FabAlley was started in 2012 by&nbsp;Shivani Poddar. Armed with degrees in business, a passion for the product and endless ambition,&nbsp;she runs one of the largest Indian online-led fashion brands and is continuously striving to become better in every aspect.</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>', '', '', 'https://www.linkedin.com/in/shivanipoddar/', '', '', 1, '2018-10-02 16:08:18', '2018-10-02 16:08:18'),
(20, 'Hitesh Dhingra', '1538472158.jpg', 'Founder & MD, The Man Company', 'Founder & MD, The Man Company', '<p>Serial Entrepreneur, he is Co-founder and Ex-CEO Letsbuy.com and Co-founder at TrulyMadly.com.</p>', '', '', '', '', '', 1, '2018-10-02 16:22:38', '2018-10-02 17:11:26'),
(21, 'Vikrant Batra', '1538475437.jpg', 'Owner, Cafe Delhi Heights', 'Owner, Cafe Delhi Heights', '<p style=\"text-align:justify\">Entrepreneur Vikrant Batra, an established stalwart in the Indian Food and Beverage Industry, is the mind and force behind the ingenious concepts of his stand-alone ventures.</p>', '', '', 'https://www.linkedin.com/in/vikrant-batra-575473128/', '', '', 1, '2018-10-02 17:17:17', '2018-10-02 17:17:17');

-- --------------------------------------------------------

--
-- Table structure for table `stories`
--

CREATE TABLE `stories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `story_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `sort_order` int(11) NOT NULL,
  `meta_keyword` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `home_story` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stories`
--

INSERT INTO `stories` (`id`, `category_id`, `author_id`, `story_name`, `slug`, `description`, `image`, `status`, `sort_order`, `meta_keyword`, `meta_description`, `page_title`, `home_story`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'STORY 1', 'story-one', '<p>hello</p>', '1541098959.jpg', 1, 0, '', '', '', 0, '2018-11-01 13:32:39', '2018-11-01 13:32:39');

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
(1, 'java2anand@gmail.com', 'conn.buddy@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '2Dx0wqSr3P', '2018-08-24 06:34:43', '2018-08-24 06:34:43'),
(2, 'Hyman Reynolds', 'ismael53@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'yXaIA8jWDV', '2018-08-24 06:34:43', '2018-08-24 06:34:43'),
(3, 'Dr. Gerald Kertzmann V', 'karley.metz@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'K5UsnzRu6B', '2018-08-24 06:34:43', '2018-08-24 06:34:43'),
(4, 'Bill Ortiz Jr.', 'wwindler@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'y5CNQt3sR0', '2018-08-24 06:34:43', '2018-08-24 06:34:43'),
(5, 'Dr. Trystan Blanda V', 'laverna85@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'XXhKgwme2E', '2018-08-24 06:34:43', '2018-08-24 06:34:43'),
(6, 'Jessyca Pacocha', 'dlesch@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'WJIPiqDrrL', '2018-08-24 06:34:43', '2018-08-24 06:34:43'),
(7, 'Alford Hand', 'wlind@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'PZ89ZqgzIJ', '2018-08-24 06:34:43', '2018-08-24 06:34:43'),
(8, 'Dr. Gennaro Johnson', 'deron.rutherford@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'wTY5bmN7lf', '2018-08-24 06:34:43', '2018-08-24 06:34:43'),
(9, 'Dr. Viola Kemmer Jr.', 'elesch@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'fISEMAwn9w', '2018-08-24 06:34:43', '2018-08-24 06:34:43'),
(10, 'Lavon Leuschke', 'raleigh00@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'y0sHXbKfcI', '2018-08-24 06:34:43', '2018-08-24 06:34:43'),
(11, 'Abhishek Anand', 'java2anand@gmail.com', '$2y$10$DD/SzBIN.e.1LXyFQ8cHTOy2bosG57Z6yG0n4i/HCsnUS06aAK27y', 'U4ZmdmkgPeeRSGQVq6s04mteoRK0xL7CMxRs5DKw0KU9cLmkUmISaYaaMfPt', '2018-09-01 03:57:25', '2018-09-01 03:57:25'),
(12, 'RAMESHBABU MEKALA', 'ramsayivy@gmail.com', '$2y$10$35nifv/4YXL6N3ruEqWj0OvH.6aN6/ziOMue4XImxmiVMgWakmYCu', NULL, '2018-10-04 20:50:35', '2018-10-04 20:50:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `advertisements`
--
ALTER TABLE `advertisements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_addresses`
--
ALTER TABLE `event_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_galleries`
--
ALTER TABLE `event_galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_schedules`
--
ALTER TABLE `event_schedules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_seos`
--
ALTER TABLE `event_seos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_speakers`
--
ALTER TABLE `event_speakers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_types`
--
ALTER TABLE `event_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
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
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `queries`
--
ALTER TABLE `queries`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `stories`
--
ALTER TABLE `stories`
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
-- AUTO_INCREMENT for table `advertisements`
--
ALTER TABLE `advertisements`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `event_addresses`
--
ALTER TABLE `event_addresses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `event_galleries`
--
ALTER TABLE `event_galleries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `event_schedules`
--
ALTER TABLE `event_schedules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT for table `event_seos`
--
ALTER TABLE `event_seos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `event_speakers`
--
ALTER TABLE `event_speakers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `event_types`
--
ALTER TABLE `event_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `organisers`
--
ALTER TABLE `organisers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `queries`
--
ALTER TABLE `queries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `site_settings`
--
ALTER TABLE `site_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `speakers`
--
ALTER TABLE `speakers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `stories`
--
ALTER TABLE `stories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
