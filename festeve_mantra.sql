-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 03, 2018 at 01:20 PM
-- Server version: 5.6.39-cll-lve
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `festeve_mantra`
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
(1, 'Kapil', 'Khandelwal', 'admin@festevemantra.com', 844742, '89857 Kilback Villages Apt. 302\nPort Sharonfort, MA 41632-5354', 99, 18, 274, 55520, '$2y$10$w8PFGGl22h0whbcvci/sWus8Ono9csQgeqSGQaN/yjNLH6Zy/g0p.', '1535112653.jpg', '4iRY4x3noONJEjV4nsqs9kVotaWq10LwMMISH3gJkiKL0gwRCbRxzjH4VcTY', '2018-08-24 06:34:43', '2018-08-25 04:03:23'),
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
(2, 2, 'event', 'https://www.techjockey.com/vendor-portal/vendor/request_category', '1538334842.jpg', '', '6', 1, '2018-10-01 02:12:23', '2018-10-01 02:14:21'),
(3, 2, 'event', 'https://www.techjockey.com/vendor-portal/vendor/request_category', '1538335138.jpg', '', '13', 1, '2018-10-01 02:18:30', '2018-10-01 02:18:58');

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `category_name`, `category_title`, `slug`, `description`, `mini_icon`, `popular_icon`, `image`, `event_image`, `top_banner`, `right_banner`, `sort_order`, `meta_keyword`, `meta_description`, `page_title`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Music', 'Enjoy each rhythm at these Music Events', 'music-events', '<p>Explore the top music festivals of India, choose your favorurite music fest from our curated list. Book tickets Online.</p>', '1537689729.png', '1537691757.png', '1537460682.jpg', '1537689705.png', '1535113647.jpg', '1535113647.jpg', 1, '', 'Explore the top music festivals of India, choose your favorurite music fest from our curated list. Book tickets Online.', 'Top 29 Upcoming Music Festivals, Concerts & Night DJ Parties', 1, '2018-08-24 06:55:52', '2018-09-29 00:11:01'),
(2, 0, 'Sports', 'Sports & Fitness events to unleash the athlete in you', 'sports-events', '<p>Get better shape without join expensive fitness classes. Explore Sports Events in India - Marathons, Running, Walk Marathon, Sports &amp; Fitness. Register Online Now</p>', '1537689772.png', '1537691781.png', '1535113758.jpg', '1537689751.png', '1535113758.jpg', '1535113758.jpg', 4, '', 'Get better shape without join expensive fitness classes. Explore Sports Events in India - Marathons, Running, Walk Marathon, Sports & Fitness. Register Online Now', 'Discover Top 29 Upcoming Sports & Marathon Events In India: Register Now', 1, '2018-08-24 06:59:18', '2018-09-23 15:36:21'),
(3, 0, 'Food', 'Munch, Crunch & Slurp the scrumptious cuisines at these Food Festivals', 'food-festivals', '<p>Top food &amp; drink festivals happening aound you. Get the close look at the most saught after dishes and recipes by top chefs. Get Discounted Tickets Now</p>', '1537689793.png', '1537691826.png', '1535113998.jpg', '1537690764.png', '1535113998.jpg', '1535113998.jpg', 6, '', 'Top food & drink festivals happening aound you. Get the close look at the most saught after dishes and recipes by top chefs. Get Discounted Tickets Now', 'Pick Top 29 Food & Drink Festivals in India | Don\'t Miss it - Explore Now', 1, '2018-08-24 07:03:18', '2018-09-29 00:11:24'),
(4, 0, 'Travel', 'Awaken the Gulliver in you to explore beautiful places', 'travel-packages', '<p>Find top destinations and experts to take you to your favorite destination across India. Book Directly with Experts &amp; Save Your Time and Money.</p>', '1537689812.png', '1537691846.png', '1535114095.jpg', '1537689853.png', '1535114095.jpg', '1535114095.jpg', 7, 'Customized Travel Packages for Domestic & International, Tour Packages, Luxury Travel Deal Packages,  India honeymoon tour packages, holiday travel, Tour Packages in India,  Best Holiday Travel Packages, Domestic Tour Packages, Domestic & International Holiday Packages, Rajasthan Tour Packages, Cheap Vacations, Discount Vacation Packages, budget tour packages, international holiday packages, tour packages for goa, family holiday packages in india, honeymoon tour packages, tour packages in kerala, india tour packages with prices, all india tour packages prices, Upcoming Travel & Adventure Events', 'Find top destinations and experts to take you to your favorite destination across India. Book Directly with Experts & Save Your Time and Money.', 'Customized Travel Packages for Domestic & International | Lowest Prices Guaranteed', 1, '2018-08-24 07:04:55', '2018-09-29 00:03:30'),
(5, 0, 'DJ Party', 'Ditch the daily doldrums at these parties', 'dj-party-events', '<p>Join happening parties to dance to the music by top DJs and artists. Discover the ever-growing list of most happening parties across India</p>', '1537689824.png', '1537898898.png', '1535114178.jpg', '1537690102.png', '1535114178.jpg', '1535114178.jpg', 5, '', 'Join happening parties to dance to the music by top DJs and artists. Discover the ever growing list of most happening parties across India', 'Top 29 Most Happening DJ Parties, Concerts, Pool Party & Nightlife Near you', 1, '2018-08-24 07:06:18', '2018-09-26 01:08:18'),
(6, 0, 'Conference', 'Great minds create great future. Join them!', 'conference-events', '<p>Learn, absorb and apply knowledge gained by experts of your field at these conferences. Choose from these top conferences, seminars, workshops and meet-ups. Register Now</p>', '1537689834.png', '1537691889.png', '1535114351.jpg', '1537689799.png', '1535114351.jpg', '1535114351.jpg', 2, '', 'Learn, absorb and apply knowledge gained by experts of your field at these conferences. Choose from these top conferences, seminars, workshops and meet-ups. Register Now', 'Find Top 29 Conferences, Meetups & Summits By Experts Of Your Field', 1, '2018-08-24 07:09:11', '2018-09-23 15:38:09'),
(7, 0, 'Skill Development', 'Join the pros of your domain to climb the \"Success Ladder\"', 'skill-development-events', '<p>Add a feather in your career&#39;s cap by participating in these certification, training and skill development courses. Book Your Seat Now.</p>', '1537689845.png', '1535114436.jpg', '1535114436.jpg', '1537690726.png', '1535114436.jpg', '1535114436.jpg', 3, 'skill development events in india, Skills Development Workshop, educational events, upcoming educational events, skill development conference, skill india courses, skill summit 2018, education events in india, Skill Development Courses & Training Program, Skill Development, Student Skill development, Online Training courses, upcoming Corporate events, agile certification, best agile certification, Agile And Scrum Certification, best agile certification 2018, list of agile certifications, agile certification cost, agile certification online, free agile certification, agile certification institute, pmi agile certification, management courses', 'Add a feather in your career\'s cap by participating in these certification, training and skill development courses. Book Your Seat Now.', 'Top Upcoming Career Oriented & Skill Development Events Near you - Register Now', 1, '2018-08-24 07:10:36', '2018-09-29 00:12:11'),
(10, 0, 'Trade Show', 'Trade Show', 'trade-shows', '', '1537899170.png', '', '1537860800.jpg', '1537899042.png', '', '', 8, '', '', '', 1, '2018-09-25 14:33:20', '2018-09-27 01:07:26');

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
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `title`, `slug`, `event_category`, `event_type`, `short_description`, `description`, `start_date`, `end_date`, `start_time`, `end_time`, `event_image`, `event_top_banner`, `organiser_id`, `event_document`, `ticket_url`, `website_url`, `facebook_id`, `twitter_id`, `linked_id`, `instagram_id`, `googleplus_id`, `youtube_id`, `speaker_title`, `sort_order`, `total_view`, `status`, `created_at`, `updated_at`) VALUES
(6, 'Khariboli Masher: Music, Food & Rain-dance Festival', 'khariboli-masher-2018', 1, 1, '<p><span style=\"font-size:16px\"><span style=\"font-family:Calibri,sans-serif\">We are back with another dose of fun and entertainment for you all! Over 200 artists from across India and abroad, more than 300 food and Lifestyle stalls, around 100 rides and activities</span></span></p>', '<p style=\"margin-left:0in; margin-right:0in; text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\">Will you believe us if we tell you that music, food, art, culture, and entertainment can come together in one place? That you can savor the delicacies from around the world; groove to your favorite beats and footloose in the rain all at once?</span></span></p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in; text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\">Hello, there peeps! We are back with another dose of fun and entertainment for you all! Over 200 artists from across India and abroad, more than 300 food and Lifestyle stalls, around 100 rides and activities and the largest rain dance setup is waiting for you! Can you feel the adrenaline rush already? Well, we certainly can! </span></span></p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in; text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\">&ldquo;The Khariboli Masher&rdquo; is back in town! A festival that celebrates freedom, honesty, and expression. Top musicians, chefs, and artists bring the best only for you and your loved ones.&nbsp; A festival of culinary art and music that honors the Indian heritage for its diverse forms. The Khariboli Masher offers exciting Watermelon Slides, Tomato Fights, Open Mic Sessions with Hasya Kavis and Mother-in-law&#39;s Revenge: a competitive grub fest. An array of stalls offering a large variety of food recipes from all over India; from specialty meats and dishes to handmade confectionary and mouth-watering desserts. This is pure heaven to all the foodies out there!&nbsp; A surprise performance from top artists and live bands amid the musical fountains and electric lights is a sight to behold. Khariboli Masher brings together a concert with both traditional Indian music and artists from western rock, hip-hop, and other genres together. Music lovers, we promise you the time of your lives! </span></span></p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in; text-align:justify\"><span style=\"font-size:18px\"><strong><span style=\"font-family:Calibri,sans-serif\">Date: 22th Dec - 23rd Dec 2018</span></strong></span></p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in; text-align:justify\"><span style=\"font-size:18px\"><strong><span style=\"font-family:Calibri,sans-serif\">Time : 11:00 am - 10:30 pm</span></strong></span></p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in; text-align:justify\"><span style=\"font-size:18px\"><strong><span style=\"font-family:Calibri,sans-serif\">Venue: &nbsp;Jawaharlal Nehru Stadium, Pragati Vihar, Delhi, India</span></strong></span></p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in; text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\">Time for you all to let it loose! Come and know what the buzz is about.<span style=\"background-color:white\"> Enjoy a host of fun-filled engagements</span> with an extr<span style=\"background-color:white\">avaganza of mouth-watering delicacies and music. Don&rsquo;t miss out on all fun at the Khariboli Festival guys! Make memories that will last for a lifetime.</span></span></span></p>', '2018-12-22', '2018-12-23', '11:00:00', '22:30:00', '1537375075.jpg', '1537553521.jpg', 2, '', 'https://kharibolimasher.com/', 'https://kharibolimasher.com/', 'https://www.facebook.com/KhariboliMasher', 'https://twitter.com/KhariboliMasher', '', 'https://www.instagram.com/KhariboliMasher/', '', '', '', 1, 223, 1, '2018-08-25 14:24:16', '2018-10-02 00:34:30'),
(13, 'Sunburn City Festival 2018: Delhi NCR, Mumbai & Bengaluru', 'sunburn-city-festival', 1, 0, '<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Calibri,sans-serif\">Get ready to electrify yourself through dance music as 2018&rsquo;s most awaited EDM festival is coming! With its exclusive line-up of artists, the top EDM festival of India has ranked itself among the top five EDM festivals of the world.</span></span></p>', '<p style=\"margin-left:0in; margin-right:0in; text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\">Get ready to electrify yourself through dance music as 2018&rsquo;s most awaited EDM festival is coming! With its exclusive line-up of artists, the top EDM festival of India has ranked itself among the top five EDM festivals of the world. Sunburn city festival is all scheduled to take place in the month of October. Sunburn Music Festival being the sole EDM festival to start the trend in India has now gathered millions of fans following. People belonging to working class, business class and movie-tv stars now wait for this breadth taking event to happen and participate in it with their close ones. </span></span></p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in; text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\">If Sunburn Music Festival has been in your travel list, then there&rsquo;s a surprise for all of you! For the very first time, Sunburn Music Festival will happen in New Delhi along with Bengaluru and Mumbai. It will be a weekend full of music, dance and food. To garnish this better, you will also witness several shopping places nearby. Flock together with your gang to your city or the nearest city near you to attend this year&rsquo;s Sunburn City Festival. Owing to have millions of fans following, Sunburn Music Festival will happen during weekends in the 3 different cities, before the start of the main event in Pune.</span></span></p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in; text-align:justify\"><span style=\"font-size:18px\"><strong><span style=\"font-family:Calibri,sans-serif\">Sunburn City Festival will happen simultaneously on 6<sup>th</sup> and 7<sup>th</sup> October in New Delhi and Mumbai, and on 5<sup>th</sup> October in Bengaluru. With the artist line-up having Above &amp; Beyond, Yellow Claw, Malaa, Moksi and Kristian Nairn with the ticket price starting INR 1500 onwards.</span></strong></span></p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in; text-align:justify\"><span style=\"font-size:18px\"><strong>City wise artist line-up and schedule:</strong></span></p>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:18px\"><strong>Bengaluru</strong>: 5th October - Above &amp; Beyond, Yellow Claw, Malaa, Moksi</span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:18px\"><strong>Mumbai</strong>: 6th October - Yellow Claw and Moksi; 7th October - Above &amp; Beyond, Malaa and Kristian Nairn</span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:18px\"><strong>Delhi NCR</strong>: 6th October - Above &amp; Beyond, Malaa and Kristian Nairn; 7th October - Yellow Claw and Moksi</span></li>\r\n</ul>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in; text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\">We are sure you don&rsquo;t wanna miss this one!</span></span></p>', '2018-10-05', '2018-10-07', '15:00:00', '22:30:00', '1537376345.jpg', '1537553192.jpg', 1, '', 'https://in.bookmyshow.com/events/sunburn-city-festival/ET00082184', 'http://sunburn.in/', 'https://www.facebook.com/pg/SunburnFestival/', 'https://twitter.com/SunburnFestival', '', 'https://www.instagram.com/SunburnFestival/', '', '', '', 0, 163, 1, '2018-09-19 23:49:21', '2018-10-02 00:35:36'),
(15, 'India Affiliate Summit 2018: Leela Ambience, Gurugram', 'india-affiliate-summit-2018', 6, 0, '<p><span style=\"font-size:16px\"><span style=\"font-family:Calibri,sans-serif\">The 4<sup>th</sup> edition of India Affiliate Summit is all set to awe-inspire you on 11<sup>th</sup> and 12<sup>th</sup> of October. Initiated in 2015 with an idea to gather the thought leaders of affiliate marketing at one place. </span></span></p>', '<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\">Are you an affiliate marketing pro and looking to even widen your knowledge and skills? Here&rsquo;s the greatest news for you.<strong> The 4<sup>th</sup> edition of India Affiliate Summit is all set to awe-inspire you on 11<sup>th</sup> and 12<sup>th</sup> of October. </strong>Initiated in 2015 with an idea to gather the thought leaders of affiliate marketing at one place. The primary objective of the summit is to share knowledge, giving affiliate giants an opportunity to showcase their success mantra through presentations and networking opportunities at their one-stop &lsquo;Affiliate Street&rsquo;.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\">What all &lsquo;Affiliate Street&rsquo; has to offer you? Grab this once in a year opportunity collaborate with other affiliate networks. Induce advices from the experts and get your business to the next level.<strong> The street is open to all affiliate publishers, marketers, brands, agencies, ad networks, bloggers and much more. Based on the traditional concept of a marketplace filled with merchants, vendors </strong></span><strong><span style=\"font-family:Calibri,sans-serif\"><strong>and</strong> buyers, there will be 2500+ delegates, 350+ companies and 70+ exhibitors.</span></strong></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\">Who should attend and why to attend the India Affiliate Summit 2018? IAS18 being the premier affiliate event of India, it brings 2500+ delegates from all over India and the world. Growing networks/agencies will learn from the grown giants of the arena. Joining the affiliate pact will help you:</span></span></p>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\"><strong>Grow</strong>: Every business&rsquo;s prime goal is to grow. With huge number of brands joining you on the big day will give you the grand opportunity to network and grow.</span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\"><strong>Establish</strong>: Lay the foundation of your empire by collaborating with affiliate networks and publishers.</span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\"><strong>Explore</strong>: Various opportunities are awaiting to be unveiled at this summit.</span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\"><strong>Increase</strong>: Become a hustle by reaching more and more affiliate marketers opening a way to increase opportunities.</span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\"><strong>Position</strong>: Growth is an ongoing process and you could make this day you&rsquo;re the day of reaching a distinct position.</span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\"><strong>Capture</strong>: Hit the perfect shot by capturing your prospects while climbing the ladder of corporate profiling.</span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\"><strong>Network</strong>: Learn from experienced by networking with the giants of affiliate marketing.</span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\"><strong>Innovative</strong>: Ignite your innovation mind to create new opportunities for growth, expansion, and learning.</span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\"><strong>Develop</strong>: Building a relationship with your prospects is the key to growth. Develop networks with your peers at this mega event.</span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\"><strong>Build</strong>: Bridge the gap between different stakeholders.</span></span></li>\r\n</ul>', '2018-10-11', '2018-10-12', '08:30:00', '20:15:00', '1537628903.jpg', '1537628903.jpg', 3, '', 'https://www.indiaaffiliatesummit.in/', 'https://www.indiaaffiliatesummit.in/', 'https://www.facebook.com/InternetAndMobileAssociationIndia/', 'https://twitter.com/IAMAIForum', 'https://www.linkedin.com/in/iamai-forum-75a35943/?originalSubdomain=in', '', '', '', 'Speakers', 0, 198, 1, '2018-09-22 22:08:23', '2018-10-02 00:36:23'),
(16, 'Airtel Delhi Half Marathon 2018 | Delhi NCR|', 'airtel-delhi-halfmarathon-2018', 2, 0, '<p><span style=\"font-size:16px\"><span style=\"font-family:Calibri,sans-serif\">Delhi&rsquo;s most awaited running event has pinned the calendar on 20<sup>th</sup> October 2018. Time has come to get your running shoes ready for that great day when you will participate in Airtel Delhi Half Marathon!</span></span></p>', '<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\">Delhi&rsquo;s most awaited running event has pinned the calendar on 20<sup>th</sup> October 2018. Time has come to get your running shoes ready for that great day when you will participate in<strong> Airtel Delhi Half Marathon</strong>! It all started in the year 2005, when Hutchison sponsored the event and was then taken over by Airtel. Airtel has sponsored the mega running event since 2008. Running events have always drawn the attraction of fitness freaks and runners to run for a charity. Airtel Delhi Half marathon spreads the message of &ldquo;Run for a Cause&rdquo;. Their philanthropy partner is &ldquo;India cares Foundation&rdquo;. </span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\">With the number of participants increasing every year, <strong>Airtel Delhi Half Marathon</strong> has the list of elite runners along with mass participants running through the track. <strong>The best marathoners like Eliud Kipchoge who has been Rio Olympics marathon champion and is the fastest marathon runner, Sir Richard Hadlee, Cathy Freeman, Daley Thompson, </strong><strong>and</strong><strong> Alan Border are few to name when we recall the Airtel Delhi Half Marathon participants&rsquo; list from past editions. </strong>To flaunt your running moments, the organizers also provide you with Facebook finisher video and photos. </span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\">So, what&rsquo;s the wait for? Start practicing and register yourself in this mega running event of Delhi. Run in the heart of the capital city with your fellow runners and create the memory of a lifetime. Be a philanthropist and a runner at the same time. Join the Airtel Half Marathon to &ldquo;Run for a Cause&rdquo;. </span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\">You can participate in any of the 5 categories:</span></span></p>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\"><strong>Half Marathon</strong> &ndash; Distance 21.097 KM, Age Eligibility: Minimum 18yrs and above as on race day.</span></span></li>\r\n</ul>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Application Date: 10<sup>th</sup> August till 7<sup>th</sup> September</span></span></p>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\"><strong>Open 10K Run </strong>&ndash; Distance 10 KM, Age Eligibility: Minimum 15yrs and above as on race day.</span></span></li>\r\n</ul>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Application Date: 10<sup>th</sup> August till 7<sup>th</sup> September</span></span></p>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\"><strong>Great Delhi Run</strong>: Distance 6 KM, Age Eligibility: Minimum 12yrs and above as on race day.</span></span></li>\r\n</ul>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Application Date: 10<sup>th</sup> August till 28<sup>th</sup> September</span></span></p>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\"><strong>Senior Citizens&rsquo; Run</strong>: Distance 4 KM, Age Eligibility: Minimum 60yrs as on race day.</span></span></li>\r\n</ul>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Application Date: 10<sup>th</sup> August till 28<sup>th</sup> September</span></span></p>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\"><strong>Champions With Disability</strong>: Distance 2.3 KM, Age Eligibility: Minimum 12yrs as on race day.</span></span></li>\r\n</ul>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Application Date: 10<sup>th</sup> August till 29<sup>th</sup> September</span></span></p>', '2018-10-21', '2018-10-21', '06:30:00', '09:30:00', '1537685046.jpg', '1537638313.jpg', 4, '', 'https://registration.procamrunning.in/adhm/registration.php', 'https://adhm.procamrunning.in/', 'https://www.facebook.com/runadhm', 'https://twitter.com/runadhm/', '', 'https://www.instagram.com/runadhm/', '', '', '', 0, 233, 1, '2018-09-22 22:59:06', '2018-10-02 00:37:14'),
(17, 'Bridal Asia 2018 - Wedding Apparel, Jewellery & Accessories', 'bridal-asia-2018', 10, 0, '<p style=\"margin-left:0in; margin-right:0in\"><span style=\"font-size:16px\"><span style=\"font-family:Calibri,sans-serif\">Freeze your calendar for the biggest Bridal Exhibition of India! The 20<sup>th</sup> edition of Bridal Asia will swarm in Hotel Ashok, Chanakyapuri, Dew Delhi from 13<sup>th</sup> till 15<sup>th</sup> October this year. </span></span></p>', '<p style=\"margin-left:0in; margin-right:0in; text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\">Freeze your calendar for the biggest Bridal Exhibition of India!<strong> The 20<sup>th</sup> edition of Bridal Asia will swarm in Hotel Ashok, Chanakyapuri, N</strong></span><strong><span style=\"font-family:Calibri,sans-serif\">ew</span></strong><span style=\"font-family:Calibri,sans-serif\"><strong> Delhi from 13<sup>th</sup> till 15<sup>th</sup> October this year. </strong>What started in 1999 as pop up fair around India, London and Pakistan, has now become a mega bridal-collection exposition happening four times in a year with an aim to meet the bridal needs in all seasons. </span></span></p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in; text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\">Get mesmerized by the luxurious collection of trousseau that every bride-to-be dreams of for her big day. You will get to witness all the colors and designs that reflect an Indian Woman&rsquo;s persona. Get what you want to be offered by top and rising bridal wear designers from India and abroad. Be it ethereal and dreamy detailing, Indian royalty, delicate mirror work, draped to perfection, embellished, crystals and beads, enchanting colors and much more all at a single place.</span></span></p>\r\n\r\n<blockquote>\r\n<p style=\"margin-left:0in; margin-right:0in; text-align:justify\"><span style=\"font-size:18px\"><strong><span style=\"font-family:Calibri,sans-serif\">&ldquo;<em>When the wedding bells jingle, head to Bridal Asia&rsquo;s meticulously curated trousseau collection</em>&rdquo;.</span></strong></span></p>\r\n</blockquote>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in; text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\">Whether you are a bride-to-be, bridesmaid, a serial wedding guest, anyone in the bride&rsquo;s gang or just love Indian ethnic-bridal collection and want to behold its beauty with a predilection to make them yours. Book your entrance to this extravagant event happening in the capital city. </span></span></p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in; text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\">It&rsquo;s not just a dream exhibition for the brides but also a great opportunity for the rising designers. Over its tenure of 19 years, it has offered a sought-after platform to the renowned designers from India as well as outside, and to the newcomers who have proved their mettle as luxury <em><span style=\"background-color:white\"><span style=\"color:#222222\">pr&ecirc;t-&agrave;-porter</span></span></em> and couture designers. To add the cherry on the top, their 20<sup>th</sup> anniversary unveil the launch of an all details and information holding magazine to plan your dream wedding exclusively available <strong>Bridal Asia Exhibition, 2018</strong>!</span></span></p>', '2018-10-13', '2018-10-15', '11:00:00', '19:00:00', '1537857020.jpg', '1537857020.jpg', 5, '', 'https://www.bridalasia.com/visitor-registration/', 'https://www.bridalasia.com/', 'https://www.facebook.com/BridalAsiaexpo/', 'https://twitter.com/bridalasiashow?lang=en', '', 'https://www.instagram.com/bridalasia/?hl=en', '', '', '', 0, 66, 1, '2018-09-25 13:30:20', '2018-10-02 00:37:59'),
(18, 'Bryan Adams - The Ultimate Tour 2018', 'bryan-adams-the-ultimate-tour', 1, 0, '<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Calibri,sans-serif\">Bryan Adams&rsquo; Ultimate Tour will kick-start from 9<sup>th</sup> October in Ahmedabad&rsquo;s Sardar Patel Stadium, proceeding to City of Pearls, &ldquo;Hyderabad&rdquo; on 11<sup>th</sup> October where he will be performing in Hitex Performing Center. </span></span></p>', '<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\">All the Indian &ldquo;Rock Music&rdquo; fans have now gotten a reason to rock even more as our favourite &ldquo;Summer of &lsquo;69&rdquo; singer will be performing in India soon! We have all grown up listening to his strong vocals and guitar, humming his popular &ldquo;<strong>Summer of 69</strong>&rdquo;, &ldquo;<strong>Run to You</strong>&rdquo;, &ldquo;<strong>I Do It For You</strong>&rdquo; and many more hit numbers. A splendid chance is coming to rock n roll at his songs while he will be performing live in India.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\">With most loved and famous singers like Ed Sheeran, Justin Bieber, Shakira, Coldplay and many others perform in India, the three generations&rsquo; favourite rock singer and love-song writer will be performing this year! </span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\">Well Fellas, as excited as we are to listen and watch the Canadian singer perform live in our city, it&rsquo;s amazing to know that he is excited to perform in this beautiful country again. <strong>This is going to be his &ldquo;Ultimate Tour&rdquo; as he will be visiting India for the 5<sup>th</sup> time and perform in multi-cities.</strong> The Grammy and Juno Award winner even wished us on Independence Day and expressed the immense love and generosity he has received in India. Isn&rsquo;t it rocking to know that he loves us as much as we love him &lt;3 </span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\">His 5<sup>th</sup> concert in India will witness him performing on his last year&rsquo;s release &ldquo;Ultimate&rdquo;, his 6<sup>th</sup> compilation of 21 songs which was released on 3<sup>rd</sup> November 2017 and contains his recorded songs from 1980 till 2017. The compilation also contains his recent songs, &ldquo;Ultimate Love&rdquo; and &ldquo;Please Stay&rdquo;. </span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\">Bryan Adams&rsquo; Ultimate Tour will kick-start from <strong>9<sup>th</sup> October in Ahmedabad&rsquo;s Sardar Patel Stadium</strong>, proceeding to City of Pearls, &ldquo;<strong>Hyderabad&rdquo; on 11<sup>th</sup> October </strong>where he will be performing in Hitex Performing Center. The <strong>next destination</strong> pinned on his tour calendar is the magic city &ldquo;<strong>Mumbai</strong>&rdquo;. He will be performing at<strong> Jio Garden, Mumbai on 12<sup>th</sup> October</strong>. The next concert destination is Bengaluru where he will be performing at <strong>Ozone Urbana on 13<sup>th</sup> October</strong>. The last destination is India&rsquo;s heart, <strong>Delhi NCR</strong> where he will perform at <strong>Leisure Valley Park, Gurugram on 14<sup>th</sup> October</strong>. </span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\">Get your tickets before it&#39;s full house.</span></span></p>', '2018-10-09', '2018-10-14', '17:30:00', '22:30:00', '1537894553.jpg', '1537894553.jpg', 6, '', 'https://www.bryanadams.com/tour/', 'https://www.bryanadams.com/', 'https://www.facebook.com/bryanadamsofficial?fref=ts', 'https://twitter.com/bryanadams', '', 'https://www.instagram.com/bryanadams/', '', 'https://www.youtube.com/user/bryanadams', '', 0, 96, 1, '2018-09-25 23:55:53', '2018-10-02 00:39:13'),
(19, 'Opportunity India Summit 2018 - For Entrepreneurs & Startups', 'opportunity-india-summit-2018', 6, 0, '<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Calibri,sans-serif\">Powered by Entrepreneur, the biggest franchise, retail and entrepreneur conference &ndash; Opportunity India Summit 2018 is all set to &lsquo;entrepreneurise&rsquo; you on 21<sup>st</sup> and 22<sup>nd</sup> October. This will be the 16<sup>th</sup> Annual edition of Opportunity India Summit taking place in Pragati Maidan, New Delhi.</span></span></p>', '<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\">The biggest challenge of being an entrepreneur and working around raising an empire is that it can&rsquo;t be done single-handedly or without expert advice. For every entrepreneur who is going through the same dilemma of where to find the experts, the biggest entrepreneurial event is right around the corner of the year. Powered by Entrepreneur, the biggest <em>franchise, retail and entrepreneur</em> conference &ndash; <strong>Opportunity India Summit 2018 is all set to &lsquo;entrepreneurise&rsquo; you on 21<sup>st</sup> and 22<sup>nd</sup> October.</strong> This will be the 16<sup>th</sup> Annual edition of Opportunity India Summit taking place in Pragati Maidan, New Delhi simultaneously with <strong>Franchise India Summit 2018</strong>. </span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\">The whole summit will revolve around the theme &ldquo;Predicting Tomorrow&rsquo;s Ideas Today&rdquo; and &ldquo;Examine the Present to Influence the Future&rdquo;. Whether an aspiring entrepreneur with a great idea, or a potential entrepreneur, or an existing one, will learn everything they need to start, grow, or improve from top Indian and global business minds. The discussion of the future of business is so vast that its nearly infinite and difficult to cover in a span of two days. So, they have organized it in three niche discussions:</span></span></p>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\"><strong>Future of Ideas</strong>: This will be the discussion of consumer business. Discussing innovative ideas which are sustainable and profitable at the same time.</span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\"><strong>Future of Growth</strong>: Driving growth through strategic integration of entrepreneurship, management, marketing, and technology. </span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\"><strong>Future of Business</strong>: Aspects of creating businesses through collaboration that builds synergy. </span></span></li>\r\n</ul>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\">Over <strong>100 speakers</strong>, each having built an empire already, will share their journey of building a brand, growing business, how to collaborate with international brands, understand the dynamic consumer behavior, networking opportunity with <strong>300+ delegates</strong>, and <strong>500+ business opportunities</strong>. </span></span></p>', '2018-10-21', '2018-10-22', '10:30:00', '17:00:00', '1538458052.jpg', '1538367697.jpg', 7, '', 'https://expo.franchiseindia.com/conference_registration.php', 'http://www.opportunityindia.com/', 'https://www.facebook.com/FranchiseIndiaNews', 'https://twitter.com/FranchiseIndia', 'https://www.linkedin.com/company/franchise-india-holdings-limited/', '', '', '', 'Guest Speakers', 0, 48, 1, '2018-09-30 14:29:45', '2018-10-02 17:07:54'),
(20, 'The Grub Fest - India\'s Premier Food Festival', 'the-grub-fest-2018', 3, 0, '<p style=\"text-align:justify\"><span style=\"font-size:16px\">Get the lively experience of grubbing on delicacies by top chefs and restaurants at the biggest food festival of India &ndash; The Grub Fest</span><span style=\"font-size:16px\">. This</span><span style=\"font-size:16px\"> will add another reason to rejoice this festival season.</span></p>', '<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\">Ingredients to make your taste-buds alive and aroma that carries you away mixed with performances by top Indian artists and garnished with entertainment! Get the lively experience of grubbing on delicacies by top chefs and restaurants at the biggest food festival of India &ndash; <strong>The Grub Fest</strong>. After rocking Gurgaoniites in February this year, The Grub Fest is all scheduled to rock Delhiites in October. Whether a foodie, a collector of gourmet items, a festival aficionado or anyone looking a perfect lively ambiance to hang out with friends and family, head towards<strong> Jawahar Lal Nehru Stadium on 26<sup>th</sup>, 27<sup>th</sup>, and 28<sup>th</sup> October.</strong> </span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\">After Navratri and before Diwali, <strong>The Grub Fest will add another reason to rejoice this festival season. </strong>A place to have all the best of things you seek to make life festive. </span></span></p>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\"><strong>Food</strong>: Wow! This is something that many people live for. Especially when that is cooked by top chefs. A perfect chance to grub on the best food, beverages brands, and world cuisine at one place. </span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\"><strong>Music</strong>: With <strong>Guru Randhawa</strong>, <strong>Hardy Sandhu</strong>, <strong>Nikhil Chinapa</strong>, and many popular artist and bands like <strong>PAN!C</strong> and <strong>Zephyr </strong>have performed at this mega food event. This year, it&rsquo;s going to be even gigantic on music side with mega performances. </span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\"><strong>Entertainment</strong>: If you are passionate about cooking and want to learn some secret recipes then this is going to be a jackpot for you. Watch top chefs cooking their signature dishes. For the other who always like an entertainment while grubbing, need not be disappointed as there will be many fun games for everyone.</span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\"><strong>Experience</strong>: For sure the above fun-packed surprises will sway you in its ambiance, and to add further toppings, the fest will also have <strong>sky-deck, movie screening, lazing areas, photo-booths, and kids&rsquo; play area</strong>.</span></span></li>\r\n</ul>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\">&nbsp;<strong>Check Schedule for more information on restaurants, chefs, artists and bands line-ups at The Grub Fest, New Delhi 2018. </strong></span></span></p>', '2018-10-26', '2018-10-28', '12:00:00', '22:00:00', '1538457995.jpg', '1538413993.jpg', 8, '', '', '', '', '', '', '', '', '', 'Founders of Grub Fest', 0, 87, 1, '2018-10-02 00:12:12', '2018-10-02 14:45:05'),
(21, 'Rajasthan International Folk Festival 2018: Jodhpur, Rajasthan', 'jodhpur-riff-2018', 4, 0, '<p><span style=\"font-size:16px\">With the start of the month of October, there are so many festivals scheduled across the globe. One such festival that binds culture, music, dance, cuisine and folks is the annually held Rajasthan International Folk Festival, Jodhpur.</span></p>', '<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\">October is here, and we are all thrilled cause&rsquo; it has brought a whole lot of&nbsp;reasons to be together and to rejoice! With the start of the month of October, there are so many festivals scheduled across the globe. One such festival that binds culture, music, dance, cuisine and folks is the annually held Rajasthan International Folk Festival. It is organized in the beautiful Mehrangarh Fort, one of the largest forts of India and is located&nbsp;in Jodhpur. Jodhpur is a beautiful Indian city in the state of Rajasthan known for its rich cultural heritage, breath-taking historical monuments and Rajasthani cuisine. </span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\">Rajasthan International Folf Festival, also known as RIFF is a 5-days folk festival initiated in 2007 as a festival of recognizing the traditional Rajasthani rural music and musicians. Let&rsquo;s take you on the journey of what you might miss if are not planning to attend Jodhpur RIFF:</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\"><strong>24<sup>th</sup> October Day 1</strong>: Dedicated to the future of Jodhpur, this day will showcase the talents of the tiny-tots. Jodhpur RIFF presents dance, music, storytelling and more for school children. </span></span></p>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\">Kachi Ghodi: A dance-play around the ancient story of Shekhawati bandits performed by boys dressed as horse-riders, music and rhythmic narration of the story.</span></span></li>\r\n	<li><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\">Bahrupiya: The ultimate con-man! Little ones dressed as being part of animal kingdom, super hero, or a professional.</span></span></li>\r\n	<li><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\">Kawa Circus: Kids&rsquo; circus depicting traditional Rajasthani stunts.</span></span></li>\r\n	<li><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\">Jogi Kalbeliya Nritya: The famous Rajasthani dance style based on snake&rsquo;s fluid movement.</span></span></li>\r\n	<li><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\">Young musicians from the Langa community: The young talents perform music using woodwind instruments and inspire children to take the legacy ahead and beyond generations. </span></span></li>\r\n	<li><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\">Phad: With the music of Kalbeliya, the story teller narrates the historical stories of the enchanting world of Kawad.</span></span></li>\r\n	<li><span style=\"font-size:18px\"><span style=\"font-family:Calibri,sans-serif\">Chang Nrtiya: Another Rajasthani dance form, performed by male dancers.</span></span></li>\r\n</ul>', '2018-10-24', '2018-10-28', '08:30:00', '22:00:00', '1538464939.jpg', '1538495361.jpg', 9, '', 'https://www.jodhpurriff.org/', '', '', '', '', '', '', '', '', 0, 21, 1, '2018-10-02 14:22:19', '2018-10-02 22:49:21');

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
(19, 21, 'Mehrangarh Fort, Jodhpur', 'Jodhpur', 'Rajasthan', 'India', '', '', '', 1, NULL, NULL);

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
  `activity` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `event_schedules`
--

INSERT INTO `event_schedules` (`id`, `event_id`, `title`, `address`, `date`, `from_time`, `to_time`, `activity`, `status`, `created_at`, `updated_at`) VALUES
(7, 2, 'First Day Morning', '', '2018-08-25', '09:00:00', '12:00:00', '', 1, NULL, NULL),
(8, 2, 'First Day AfterNoon', '', '2018-08-25', '01:00:00', '04:00:00', '', 1, NULL, NULL),
(9, 2, 'First Day Night', '', '2018-08-25', '06:00:00', '09:00:00', '', 1, NULL, NULL),
(10, 2, 'Second Day Morning', '', '2018-08-26', '09:00:00', '12:00:00', '', 1, NULL, NULL),
(11, 2, 'Second Day AfterNoon', '', '2018-08-26', '01:00:00', '04:00:00', '', 1, NULL, NULL),
(12, 2, 'Second Day Night', '', '2018-08-26', '06:00:00', '09:00:00', '', 1, NULL, NULL),
(13, 2, 'Third Day Morning', '', '2018-08-28', '10:45:00', '11:30:00', '', 1, NULL, NULL),
(14, 8, 'Parmish Verma live at The Big Boyz Lounge, Gurugram', '', '2018-09-19', '10:15:00', '10:15:00', '', 1, NULL, NULL),
(15, 6, 'Khariboli Masher: Biggest Music, Food & Rain-dance Festival', '', '2018-12-22', '11:30:00', '22:30:00', '', 1, NULL, NULL),
(16, 13, 'Sunburn Festival', 'Bengaluru - Manpho Convention Centre, Veeranna Palya', '2018-10-05', '15:00:00', '22:00:00', '', 1, NULL, NULL),
(17, 13, 'Sunburn Festival', 'Mumbai - JioGarden, BKC', '2018-10-06', '15:00:00', '22:00:00', '', 1, NULL, NULL),
(18, 13, 'Sunburn Festival', 'Delhi NCR - Leisure valley HUDA Ground, Gurgaon', '2018-10-06', '15:00:00', '22:00:00', '', 1, NULL, NULL),
(19, 13, 'Sunburn Festival', 'Mumbai - JioGarden, BKC', '2018-10-07', '15:00:00', '22:00:00', '', 1, NULL, NULL),
(20, 13, 'Sunburn Festival', 'Delhi NCR - Leisure valley HUDA Ground, Gurgaon', '2018-10-07', '15:00:00', '22:00:00', '', 1, NULL, NULL),
(21, 15, 'Collection Of Badges', '', '2018-10-11', '08:30:00', '09:45:00', '', 1, NULL, NULL),
(22, 15, 'Inaugural Session', '', '2018-10-11', '09:45:00', '10:45:00', '', 1, NULL, NULL),
(23, 15, 'Networking Break (Visit Affiliate Street)', '', '2018-10-11', '10:45:00', '11:00:00', '', 1, NULL, NULL),
(24, 16, 'Airtel Delhi Half Marathon 2018 | Delhi NCR |', 'Jawaharlal Nehru Stadium, Delhi', '2018-10-21', '06:30:00', '09:30:00', '', 1, NULL, NULL),
(25, 15, 'Plenary Session 1 |  The Rise of Influencers: Measuring Values and Promising Results', '', '2018-10-11', '11:00:00', '12:00:00', '', 1, NULL, NULL),
(26, 15, 'Special Address 1', '', '2018-10-11', '12:00:00', '12:45:00', '', 1, NULL, NULL),
(27, 15, 'Plenary Session 2 | Programmatic Advertising & Tracking a Customer Journey Across Devices', '', '2018-10-11', '12:45:00', '13:45:00', '', 1, NULL, NULL),
(28, 15, 'Lunch', '', '2018-10-11', '13:45:00', '14:30:00', '', 1, NULL, NULL),
(29, 15, 'Special Address', '', '2018-10-11', '14:30:00', '15:00:00', '', 1, NULL, NULL),
(30, 15, 'Plenary Session 3 | Marketing in the Machine Age: Adopting Technology Into Your Affiliate Marketing', '', '2018-10-11', '15:00:00', '16:00:00', '', 1, NULL, NULL),
(31, 15, 'Lead Talk 2', '', '2018-10-11', '16:00:00', '16:30:00', '', 1, NULL, NULL),
(32, 15, 'Networking Break (Visit Affiliate Street)', '', '2018-10-11', '16:45:00', '17:00:00', '', 1, NULL, NULL),
(33, 15, 'Plenary Session 4 | The Video revolution: Getting Massive Consumer Engagement', '', '2018-10-11', '17:00:00', '18:00:00', '', 1, NULL, NULL),
(34, 15, 'Collection of Badges', '', '2018-10-12', '08:30:00', '10:00:00', '', 1, NULL, NULL),
(35, 15, 'Lead Talk 3', '', '2018-10-12', '10:00:00', '10:30:00', '', 1, NULL, NULL),
(36, 15, 'PLenary Session 5 |  How to Leverage True Power of Affiliate Marketing?', '', '2018-10-12', '10:30:00', '11:30:00', '', 1, NULL, NULL),
(37, 15, 'Networking Break (Visit Affiliate Street)', '', '2018-10-12', '11:30:00', '12:00:00', '', 1, NULL, NULL),
(38, 15, 'Plenary Session 6 | Turn Your regular Customers into Brand Advocates', '', '2018-10-12', '12:00:00', '13:00:00', '', 1, NULL, NULL),
(39, 15, 'Plenary Session 7 | The Skill Gaming industry in India', '', '2018-10-12', '13:00:00', '14:00:00', '', 1, NULL, NULL),
(40, 15, 'Lunch', '', '2018-10-12', '14:00:00', '15:00:00', '', 1, NULL, NULL),
(41, 15, 'Plenary Session 8 | Changing World of Content Consumption - Emergence of Virtual Assistants, Streaming Apps and More.', '', '2018-10-12', '15:00:00', '16:00:00', '', 1, NULL, NULL),
(42, 15, 'Networking Break (Visit Affiliate Street)', '', '2018-10-12', '16:45:00', '16:15:00', '', 1, NULL, NULL),
(43, 15, 'Plenary Session 9 | Engagement Models for Affiliates - Cost per Action (CPA) vs. Cost Per Sale (CPS)', '', '2018-10-12', '16:15:00', '17:15:00', '', 1, NULL, NULL),
(44, 17, 'Bridal Asia Exhibitions 2018 For Wedding Apparel, Jewelry & Accessories', 'Hotel Ashok, Chanakyapuri, Dew Delhi', '2018-10-13', '11:00:00', '19:00:00', '', 1, NULL, NULL),
(45, 18, 'Bryan Adams - The Ultimate Ahmadabad Tour 2018 (Rock | English | 4hrs )', 'Sardar Patel Stadium,  Navrangpura, Ahmedabad, Gujarat', '2018-10-09', '17:30:00', '22:30:00', '', 1, NULL, NULL),
(46, 18, 'Bryan Adams - The Ultimate Hyderabad Tour 2018 (Rock | English | 4hrs )', 'HITEX Exhibition Center, Kothaguda, Hyderabad, Telangana', '2018-10-11', '17:30:00', '22:30:00', '', 1, NULL, NULL),
(47, 18, 'Bryan Adams - The Ultimate Mumbai Tour 2018 (Rock | English | 4hrs )', 'Jio Garden, Bandra Kurla Complex, Bandra East, Mumbai, Maharashtra', '2018-10-12', '17:30:00', '22:30:00', '', 1, NULL, NULL),
(48, 18, 'Bryan Adams - The Ultimate Bangalore Tour 2018 (Rock | English | 4hrs )', 'Ozone Urbana, Yerthiganahalli, Udayagiri, Bangalore, Karnataka', '2018-10-13', '17:30:00', '22:30:00', '', 1, NULL, NULL),
(49, 18, 'Bryan Adams - The Ultimate Delhi Gurgaon NCR Tour 2018 (Rock | English | 4hrs )', 'Leisure Valley Park, Sector 29, Gurugram, Haryana', '2018-10-14', '17:30:00', '22:30:00', '', 1, NULL, NULL),
(50, 19, 'Opportunity India Summit 2018', 'Pragati Maidan , New Delhi, India', '2018-10-21', '10:30:00', '17:00:00', '', 1, NULL, NULL),
(51, 20, 'Friday', '#GrubTunes by DJ Saif, Movie Screening, Boxout FM Live', '2018-10-26', '12:00:00', '14:00:00', '', 1, NULL, NULL),
(52, 20, 'Friday', 'Nik\'J, Movie Screening', '2018-10-26', '14:00:00', '15:00:00', '', 1, NULL, NULL),
(53, 20, 'Friday', 'Bang Loud, Grub Memories Screening', '2018-10-26', '15:00:00', '16:00:00', '', 1, NULL, NULL),
(54, 20, 'Friday', 'Raedl, Salsa tasting CORNITOS, Parashara', '2018-10-26', '16:00:00', '17:00:00', '', 1, NULL, NULL),
(55, 20, 'Friday', '#GrubGames with RJ Melbin, Gluten Free Brownies, Maya Bazaar', '2018-10-26', '17:00:00', '17:30:00', '', 1, NULL, NULL),
(56, 20, 'Friday', 'Kamakshi Khanna, Iced Tea Sampling, Qareeb', '2018-10-26', '17:30:00', '19:00:00', '', 1, NULL, NULL),
(57, 20, 'Friday', 'B Praak, Hot Dog Eating Competition, Trafficc & Diggy Dang', '2018-10-26', '19:00:00', '20:30:00', '', 1, NULL, NULL),
(58, 20, 'Friday', 'Tatva K', '2018-10-26', '20:30:00', '22:00:00', '', 1, NULL, NULL),
(59, 20, 'Friday', 'Movie Screening', '2018-10-26', '13:00:00', '14:00:00', '', 1, NULL, NULL),
(60, 20, 'Saturday', '#GrubTunes by DJ Saif,  Movie Screening, Box Out FM Live', '2018-10-27', '00:00:00', '14:00:00', '', 1, NULL, NULL),
(61, 20, 'Saturday', 'Addy Berry, Movie Screening', '2018-10-27', '14:00:00', '15:00:00', '', 1, NULL, NULL),
(62, 20, 'Saturday', 'Vibzz, BassPatch, Pickle & Jam tasting (IT\'S HOMEMADE), Chocolate tasting (ROSARTE), Prahaar', '2018-10-27', '15:00:00', '17:00:00', '', 1, NULL, NULL),
(63, 20, 'Saturday', '#GrubGames with RJ Melbin, PAN!C, Blind Food tasting, Chef DEMO, SMOKEYS, Udit Seghal, Moongphali', '2018-10-27', '17:00:00', '19:00:00', '', 1, NULL, NULL),
(64, 20, 'Saturday', 'Guru Randhawa, DJ Frenzy, IPL Opening Ceremony, Stain & NPSTR, MadStarBase', '2018-10-27', '19:00:00', '22:00:00', '', 1, NULL, NULL),
(65, 20, 'Sunday', '#GrubTunes by DJ Saif, Movie Screening, Boxout FM Live', '2018-10-28', '12:00:00', '14:00:00', '', 1, NULL, NULL),
(66, 20, 'Sunday', 'Dhaerya Malhotra, Solyvayne, Chef Demo ITALIANO,', '2018-10-28', '14:00:00', '16:00:00', '', 1, NULL, NULL),
(67, 20, 'Sunday', 'Beat Crush, #GrubGames with RJ Melbin, Kutle Khan, IPL Screening KXIP Vs DD, Sejal Moris, Jordan Johnson', '2018-10-28', '16:00:00', '19:00:00', '', 1, NULL, NULL),
(68, 20, 'Sunday', 'Mankirt Aulakh, Ritviz, IPL Screening KKR Vs RCB, Mierdo & Tanzen, MC Snoopy', '2018-10-28', '19:00:00', '22:00:00', '', 1, NULL, NULL);

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
(11, 20, 'The Grub Fest, grub fest tickets, Grub Fest online tickets, Grub Fest details, Grub Fest founders, Food festivals,  Food festivals in delhi, upcoming  Food festivals,  upcoming Food festival in delhi', 'The Grub Fest is all scheduled to rock Delhiites in October, perfect lively ambiance to hang out with friends and family, head towards Jawahar Lal Nehru Stadium on 26th, 27th, and 28th October.', 'The Grub Fest - India\'s Premier Food Festival', NULL, NULL);

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
(26, '2018_09_22_164426_create_pages_table', 4);

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
(2, 'The Khariboli Masher', 'The Khariboli Masher', '<p>Khariboli Masher is a festival to fuse culinary arts and music, celebrating the Indian heritage in its fabulously diverse avatars and forms. The festival promises food from every part of India blended with some great performances from top artists and live bands. The Khariboli Masher festival offers exciting Watermelon Slides, Tomato Fights, Open Mic Sessions with Hasya Kavis and Mother-in-law&#39;s Revenge.</p>', 'https://www.facebook.com/KhariboliMasher/', 'https://twitter.com/kharibolimasher/', '', 'https://www.instagram.com/kharibolimasher/', '', 1, '2018-08-25 13:40:44', '2018-09-22 01:27:07'),
(3, 'INDIA AFFILIATE SUMMIT', 'Internet and Mobile Association of India (IAMAI)', '<p style=\"text-align:justify\"><span style=\"font-size:18px\">India Affiliate Summit&nbsp;organized by the Internet and Mobile Association of India(IAMAI), has been the premier meeting point for thought leaders from the affiliate marketing space. Here is where the key stakeholders and influencers in the industry discuss innovations, dissect implications and dwell upon the substantial potential of this booming industry.</span></p>', 'https://www.facebook.com/InternetAndMobileAssociationIndia/', 'https://twitter.com/IAMAIForum', 'https://www.linkedin.com/in/iamai-forum-75a35943/?originalSubdomain=in', '', '', 1, '2018-09-22 21:38:18', '2018-10-02 00:59:01'),
(4, 'Airtel Delhi Half Marathon', 'Airtel Delhi Half Marathon', '<p style=\"text-align:justify\"><span style=\"font-size:18px\">Buoyed by the success of the opening edition of the Standard Chartered Mumbai Marathon, Procam zeroed in on the capital city of India, New Delhi, and thus started the journey of the Delhi Half Marathon in 2005. Rio Olympics marathon champion and the fastest marathoner in the world, Eliud Kipchoge, chose to participate in and won the Airtel Delhi Half Marathon 2016. Daley Thompson, Jackie-Joyner Kersee, Sir Richard Hadlee, Alan Border and Cathy Freeman have been the event ambassadors of the world&rsquo;s most prestigious IAAF Gold Label half-marathon.</span></p>', 'https://www.facebook.com/runadhm', 'https://twitter.com/runadhm/', '', 'https://www.instagram.com/runadhm/', '', 1, '2018-09-22 21:41:39', '2018-10-02 00:58:43'),
(5, 'Bridal Asia', 'Bridal Asia, Delhi', '<p style=\"text-align:justify\"><span style=\"font-size:18px\">Bridal Asia brings you a meticulously curated collection of bespoke bridal fashion, jewellery, and accessories. What started as a small showcase of trousseau collection under one roof has become a much awaited and prestigious event showcasing a variety of bridal fashion and jewellery trends and a mind-boggling range of bridal accessories required by a bride from the Asian Subcontinent. Whether you&rsquo;re the bride, the bridesmaid or simply a serial wedding attendee, Bridal Asia offers you a roster of handpicked fashion, jewellery, and accessories all under one roof.</span></p>', 'https://www.facebook.com/BridalAsiaexpo/', 'https://twitter.com/bridalasiashow?lang=en', '', 'https://www.instagram.com/bridalasia/?hl=en', '', 1, '2018-09-25 14:27:17', '2018-10-02 00:58:18'),
(6, 'Bryan Adams - Canadian singer-songwriter', 'Bryan Adams', '<p style=\"text-align:justify\"><span style=\"font-size:18px\"><strong>Bryan Guy Adams (Canadian singer, songwriter )</strong></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:18px\">Bryan Adams is a renowned international singer-songwriter who hails from Canada. Some of his best-known songs are &lsquo;Heaven&rsquo;, &lsquo;Everything I Do&rsquo; and &lsquo;Here I Am&rsquo;, to name a few. He had an innate interest in music and from his early childhood, he manifested his talents in music.</span></p>', 'https://www.facebook.com/bryanadamsofficial?fref=ts', 'https://twitter.com/bryanadams', '', 'https://www.instagram.com/bryanadams/', '', 1, '2018-09-26 00:50:57', '2018-10-02 00:57:21'),
(7, 'Franchise India', 'Franchise India', '<p style=\"text-align:justify\"><span style=\"font-size:18px\">Franchise India Holdings Limited is Asia&#39;s largest integrated franchise solution company since 1999, and an absolute authority on franchising and licensing. FIHL has helped hundreds of investors in selecting the right franchise and, in turn, assisted numerous organisations in international and domestic franchise expansion. Knowledge, Opportunity, Network and Success are FIHL&#39;s key ingredients.</span></p>', 'https://www.facebook.com/FranchiseIndiaNews', 'https://twitter.com/FranchiseIndia', 'https://www.linkedin.com/company/102548?trk=tyah', '', '', 1, '2018-09-30 14:24:42', '2018-10-02 00:56:54'),
(8, 'The Grub Fest', 'The Grub Fest', '<h1 style=\"text-align:justify\"><span style=\"font-size:18px\">The Grub Fest&nbsp;is India&#39;s biggest food festival with the best restaurants displaying their signature delicacies over some good music and hearty performances to keep you entertained. Take in the aromas, try out interesting cuisines, fill your baskets with unique gourmet products, indulge in mouth-watering desserts and learn some of the best-kept food secrets from the most talented chefs from the country.</span></h1>', 'https://www.facebook.com/thegrubfest/', 'https://twitter.com/TheGrubFest', '', '', '', 1, '2018-10-02 00:56:28', '2018-10-02 00:56:28'),
(9, 'Mehrangarh Museum Trust & Jaipur Virasat Foundation', 'Jodhpur RIFF', '<p style=\"text-align:justify\"><span style=\"font-size:18px\">Jodhpur RIFF is a not-for-profit partnership project involving two of India&rsquo;s leading heritage trusts: <em>Mehrangarh Museum Trust</em> and <em>Jaipur Virasat Foundation</em>. The festival has been endorsed by UNESCO as a &quot;Peoples&quot; Platform for Creativity and Sustainable Development.&quot;</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:18px\"><em>HH Gaj Singh</em> of Marwar-Jodhpur is the Chief Patron of Jodhpur RIFF, <em>Sir Mick Jagger</em>, front man of the rock band The Rolling Stones is International Patron of Jodhpur RIFF.</span></p>', 'https://www.facebook.com/JodhpurRIFF', 'https://twitter.com/jodhpurriff', '', '', '', 1, '2018-10-02 14:17:18', '2018-10-02 14:18:06');

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
(1, 'Home', 'home', '', 'upcoming Travel event, upcoming Skill Development event, upcoming Music concerts, upcoming Sports events, upcoming Conference events, upcoming Food festivals, upcoming DJ Party events, upcoming Seminars & Meetups, upcoming Yoga, Meditation & Spirituality events, upcoming Theme parks event, upcoming Entertainment events, upcoming Adventure & Outdoors events, upcoming Professional training events, upcoming Campus events, upcoming college festivals, upcoming Trade shows events, upcoming Trade fair, festeve mantra', 'Explore most happening concerts, parties, conferences, sports & recreational events near you. Festeve Mantra lets you buy tickets of any Event & Festival.', 'Festeve Mantra: Enter the happening world | Explore Top Upcoming Events & Festivals', '2018-09-22 01:30:00', '2018-09-24 01:30:00'),
(2, 'Our Team', 'our-team', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.</p>\r\n\r\n<p>ey College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.</p>', 'our team meta keyword', 'Meet and socialize with the Co-founders and other team members of Festeve Mantra here!', 'Our Team - The People Behind Festeve Mantra', '2018-09-22 01:30:00', '2018-09-24 01:30:00'),
(3, 'Careers', 'careers', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC,\r\n                        making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more\r\n                        obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered\r\n                        the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and\r\n                        Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line\r\n                        of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\r\n                    </p>\r\n                    <p>ey College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the\r\n                        cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de\r\n                        Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics,\r\n                        very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\r\n                    </p>', 'our team meta keyword', 'our team meta description', 'our team page title', '2018-09-22 01:30:00', '2018-09-24 01:30:00'),
(4, 'TERMS & CONDITIONS', 'terms-conditions', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC,\r\n                        making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more\r\n                        obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered\r\n                        the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and\r\n                        Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line\r\n                        of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\r\n                    </p>\r\n                    <p>ey College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the\r\n                        cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de\r\n                        Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics,\r\n                        very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\r\n                    </p>', 'our team meta keyword', 'our team meta description', 'our team page title', '2018-09-22 01:30:00', '2018-09-24 01:30:00'),
(5, 'PRIVACY POLICY', 'privacy-policy', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC,\r\n                        making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more\r\n                        obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered\r\n                        the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and\r\n                        Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line\r\n                        of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\r\n                    </p>\r\n                    <p>ey College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the\r\n                        cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de\r\n                        Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics,\r\n                        very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\r\n                    </p>', 'our team meta keyword', 'our team meta description', 'our team page title', '2018-09-22 01:30:00', '2018-09-24 01:30:00'),
(6, 'Contact Us', 'contact-us', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC,\r\n                        making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more\r\n                        obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered\r\n                        the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and\r\n                        Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line\r\n                        of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\r\n                    </p>\r\n                    <p>ey College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the\r\n                        cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de\r\n                        Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics,\r\n                        very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\r\n                    </p>', 'our team meta keyword', 'our team meta description', 'our team page title', '2018-09-22 01:30:00', '2018-09-24 01:30:00'),
(7, 'Top Hundred', 'top-hundred', '', 'Top 10 upcoming Travel events, Top 10 upcoming Skill Development events, Top 10 upcoming Music concerts, Top 10 upcoming Sports events, Top 10 upcoming Conference events, Top 10 upcoming Food festivals, Top 10 upcoming DJ Party events, Top 10 upcoming Seminars & Meetups events, Top 10 upcoming Yoga, Meditation & Spirituality events, Top 10 upcoming Theme parks events, Top 10 upcoming Entertainment events, Top 10 upcoming Adventure & Outdoors events, Top 10 upcoming Profesional training events, Top 10 upcoming Campus events, Top 10 upcoming Tradeshows events, Top 10 upcoming Trade fair', 'You will find here India\'s top 100 Upcoming premium events & festivals like music concert, DJ party, conference, trade show, food festivals at one roof.', 'Top 100 Upcoming Premium Events & Festivals near you: Explore Now', '2018-09-22 01:30:00', '2018-09-24 01:30:00'),
(8, 'Categories', 'categories', '', 'upcoming Travel event, upcoming Skill Development event, upcoming Music concerts, upcoming Sports events, upcoming Conference events, upcoming Food festivals, upcoming DJ Party events, upcoming Seminars & Meetups, upcoming Yoga, Meditation & Spirituality events, upcoming Theme parks event, upcoming Entertainment events, upcoming Adventure & Outdoors events, upcoming Profesional training events, upcoming Campus events, upcoming college festivals, upcoming Tradeshows events, upcoming Trade fair, all event categories', 'Find your interest based event & festival by browsing our festeve categories, covering events of all genres and locations.', 'Browse List of All Upcoming Events & Festivals | Festeve Mnatra', '2018-09-22 01:30:00', '2018-09-24 01:30:00'),
(9, 'Stories', 'stories', '', 'submit story, share your story, where to submit short stories for money, submit event story, submit festivals story, share event experince, food festival stories. events stories, festival-event story', 'Had amazing experience at your last event visit or have a review to share? Submit your festival-event story with our readers and make it last forever.', 'Want to share your Event & Festival experience? Submit Your Story Now', '2018-09-22 01:30:00', '2018-09-24 01:30:00'),
(10, 'Add Event', 'add-event', '', 'submit your event, submit an event, event submission sites in india, Free Event Submission Sites, event promotion websites in india, online event registration india, online event ticket booking, sell event tickets online free, event ticket booking website, mera events, event ticketing platforms in india, goeventz, townscript, 10times, explara, book my show, eventbrite', 'Adding more interested audience in your event is always a perk! And we make it happen through our event and festival discovery platform. Submit your event today!', 'Want your Event to reach right audience? Submit Your Event Now', '2018-09-22 01:30:00', '2018-09-24 01:30:00'),
(11, 'About Us', 'about-us', '<p>Festeve Mantra is the confluence of festivals and events happening across the globe. For all the festival fanatics, discover the goodness arranged by people for the like-minded festival and event goers. We are the messengers offering our platform to know all the what, where, who and whys of the festivals and events of your favorite genre.&nbsp;</p>\r\n\r\n<p>Join us to explore the beauty of celebrations, gatherings, communities, excitement and all the thrill that you seek for. Ranging from luscious cuisine to gallons of delicious drinks, from dance to music, thons to keep you fit, exploring creativity to showcasing your talent and even gathering knowledge and wisdom to develop your skills.</p>\r\n\r\n<p><strong>Find all at one place - Festeve Mantra!</strong></p>', 'festivals, events, conference, seminar, dj party, concerts, Upcoming events in delhi, New year party events', 'Festeve Mantra is the confluence of festivals and events happening across the globe. A platform by festival fanatics for the festival community.', 'About Us - Festeve Mantra', '2018-09-22 01:30:00', '2018-09-24 01:30:00');

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
(12, 'page_title', 'PAGE TITLE (DEFAULT)', 'Festeve Mantra: Enter the happening world | Explore Top Upcoming Events & Festivals', 'content', '2018-09-19 18:30:00', '2018-09-19 18:30:00'),
(13, 'meta_title', 'META TITLE (DEFAULT)', 'Festeve Mantra: Enter the happening world | Explore Top Upcoming Events & Festivals', 'content', '2018-09-19 18:30:00', '2018-09-19 18:30:00'),
(14, 'meta_keyword', 'META KEYWORD(DEFAULT)', 'upcoming Travel event, upcoming Skill Development event, upcoming Music concerts, upcoming Sports events, upcoming Conference events, upcoming Food festivals, upcoming DJ Party events, upcoming Seminars & Meetups, upcoming Yoga, Meditation & Spirituality events, upcoming Theme parks event, upcoming Entertainment events, upcoming Adventure & Outdoors events, upcoming Professional training events, upcoming Campus events, upcoming college festivals, upcoming Trade shows events, upcoming Trade fair, festeve mantra', 'content', '2018-09-19 18:30:00', '2018-09-19 18:30:00'),
(15, 'meta_description', 'META DESCRIPTION(DEFAULT)', 'Explore most happening concerts, parties, conferences, sports & recreational events near you. Festeve Mantra lets you buy tickets of any Event & Festival.', 'content', '2018-09-19 18:30:00', '2018-09-19 18:30:00'),
(16, 'company_title', 'COMPANY NAME', 'Festeve Mantra', 'content', NULL, NULL),
(17, 'youtube_id', 'COMPANY NAME', 'Festeve Mantra', 'content', NULL, NULL),
(18, 'favicon', 'FAVICON', '', 'content', NULL, NULL);

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stories`
--

INSERT INTO `stories` (`id`, `category_id`, `author_id`, `story_name`, `slug`, `description`, `image`, `status`, `sort_order`, `meta_keyword`, `meta_description`, `page_title`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Story 1', 'story-1', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '1538594314.jpg', 1, 1, 'META KEYWORD', 'META DESCRIPTION', 'About us page title', '2018-08-24 07:40:53', '2018-10-04 02:18:34'),
(2, 2, 1, 'Story 2', 'story-2', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '1538594299.jpg', 1, 1, 'meta KEYWORD', 'META DESCRIPTION', 'page title', '2018-08-24 23:44:01', '2018-10-04 02:18:20');

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
(11, 'Abhishek Anand', 'java2anand@gmail.com', '$2y$10$DD/SzBIN.e.1LXyFQ8cHTOy2bosG57Z6yG0n4i/HCsnUS06aAK27y', 'U4ZmdmkgPeeRSGQVq6s04mteoRK0xL7CMxRs5DKw0KU9cLmkUmISaYaaMfPt', '2018-09-01 03:57:25', '2018-09-01 03:57:25');

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `event_addresses`
--
ALTER TABLE `event_addresses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `event_schedules`
--
ALTER TABLE `event_schedules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `event_seos`
--
ALTER TABLE `event_seos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `organisers`
--
ALTER TABLE `organisers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `site_settings`
--
ALTER TABLE `site_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `speakers`
--
ALTER TABLE `speakers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `stories`
--
ALTER TABLE `stories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
