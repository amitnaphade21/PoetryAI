-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 24, 2024 at 01:38 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


--
-- Database: `poetry_web`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `description`) VALUES
(1, ' Acrostic', 'This is  Acrostic category'),
(2, 'Ballad', 'This is Ballad section'),
(7, ' Elegy', 'this is  Elegy category'),
(8, 'Free verse', 'Free verse category'),
(9, 'Ghazal', 'This is Ghazal category'),
(10, 'Sonnet', 'this is Sonnet category'),
(12, 'uncategorized', 'This is uncategorized');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `category_id` int(11) UNSIGNED DEFAULT NULL,
  `author_id` int(11) UNSIGNED NOT NULL,
  `is_featured` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `thumbnail`, `date_time`, `category_id`, `author_id`, `is_featured`) VALUES
(21, 'Shall I Compare Thee To A Summers’ Day?', 'Shall I compare thee to a summer’s day?\r\nThou art more lovely and more temperate:\r\nRough winds do shake the darling buds of May,\r\nAnd summer’s lease hath all too short a date;\r\nSometime too hot the eye of heaven shines,\r\nAnd often is his gold complexion dimm\'d;\r\nAnd every fair from fair sometime declines,\r\nBy chance or nature’s changing course untrimm\'d;\r\nBut thy eternal summer shall not fade,\r\nNor lose possession of that fair thou ow’st;\r\nNor shall death brag thou wander’st in his shade,\r\nWhen in eternal lines to time thou grow’st:\r\n  So long as men can breathe or eyes can see,\r\n  So long lives this, and this gives life to thee.', 'Screenshot 2024-04-24 141809.png', '2023-03-03 09:25:02', 10, 5, 0),
(22, 'That Time Of Year Thou Mayest In Me Behold', 'That time of year thou mayst in me behold\r\nWhen yellow leaves, or none, or few, do hang\r\nUpon those boughs which shake against the cold,\r\nBare ruin\'d choirs, where late the sweet birds sang.\r\nIn me thou see\'st the twilight of such day\r\nAs after sunset fadeth in the west,\r\nWhich by and by black night doth take away,\r\nDeath\'s second self, that seals up all in rest.\r\nIn me thou see\'st the glowing of such fire\r\nThat on the ashes of his youth doth lie,\r\nAs the death-bed whereon it must expire,\r\nConsum\'d with that which it was nourish\'d by.\r\nThis thou perceiv\'st, which makes thy love more strong,\r\nTo love that well which thou must leave ere long.', 'Screenshot 2024-04-24 142920.png', '2023-03-03 09:27:18', 10, 5, 0),
(23, 'If There Be Nothing New, But That Which Is', 'If there be nothing new, but that which is\r\nHath been before, how are our brains beguil\'d,\r\nWhich, labouring for invention, bear amiss\r\nThe second burthen of a former child!\r\nO, that record could with a backward look,\r\nEven of five hundred courses of the sun,\r\nShow me your image in some antique book,\r\nSince mind at first in character was done!\r\nThat I might see what the old world could say\r\nTo this composed wonder of your frame;\r\nWhether we are mended, or whe\'r better they,\r\nOr whether revolution be the same.\r\nO! sure I am, the wits of former days\r\nTo subjects worse have given admiring praise.', 'Screenshot 2024-04-24 143912.png', '2023-03-03 09:30:59', 10, 5, 0),
(24, 'When I Heard the Learn’d Astronomer', 'When I heard the learn’d astronomer,\r\nWhen the proofs, the figures, were ranged in columns before me,\r\nWhen I was shown the charts and diagrams, to add, divide, and measure them,\r\nWhen I sitting heard the astronomer where he lectured with much applause in the lecture-room,\r\nHow soon unaccountable I became tired and sick,\r\nTill rising and gliding out I wander’d off by myself,\r\nIn the mystical moist night-air, and from time to time,\r\nLook’d up in perfect silence at the stars.', 'Screenshot 2024-04-24 145316.png', '2023-03-03 09:33:46', 8, 6, 0),
(25, 'Mother to Son', 'Well, son, I’ll tell you:\r\nLife for me ain’t been no crystal stair.\r\nIt’s had tacks in it,\r\nAnd splinters,\r\nAnd boards torn up,\r\nAnd places with no carpet on the floor—\r\nBare.\r\nBut all the time\r\nI’se been a-climbin’ on,\r\nAnd reachin’ landin’s,\r\nAnd turnin’ corners,\r\nAnd sometimes goin’ in the dark\r\nWhere there ain’t been no light.\r\nSo boy, don’t you turn back.\r\nDon’t you set down on the steps\r\n’Cause you finds it’s kinder hard.\r\nDon’t you fall now—\r\nFor I’se still goin’, honey,\r\nI’se still climbin’,\r\nAnd life for me ain’t been no crystal stair.\r\n', 'Screenshot 2024-04-24 150400.png', '2023-03-08 00:34:20', 8, 7, 0),
(26, 'Praise the Rain', 'Praise the rain; the seagull dive\r\nThe curl of plant, the raven talk—\r\nPraise the hurt, the house slack\r\nThe stand of trees, the dignity—\r\nPraise the dark, the moon cradle\r\nThe sky fall, the bear sleep—\r\nPraise the mist, the warrior name\r\nThe earth eclipse, the fired leap—\r\nPraise the backwards, upward sky\r\nThe baby cry, the spirit food—\r\nPraise canoe, the fish rush\r\nThe hole for frog, the upside-down—\r\nPraise the day, the cloud cup\r\nThe mind flat, forget it all—\r\n\r\nPraise crazy. Praise sad.\r\nPraise the path on which we\'re led.\r\nPraise the roads on earth and water.\r\nPraise the eater and the eaten.\r\nPraise beginnings; praise the end.\r\nPraise the song and praise the singer.\r\n\r\nPraise the rain; it brings more rain.\r\nPraise the rain; it brings more rain.', 'Screenshot 2024-04-24 151423.png\r\n', '2023-03-08 00:39:03', 8, 8, 1),
(27, 'Friends', 'Friends are precious gifts     \r\n\r\nRare and hard to find\r\n\r\nInvisible when life is good\r\n\r\nEver near when your sun doesn’t shine\r\n\r\nNothing is ever too much\r\n\r\nDistance never too far\r\n\r\nStanding by your side when your dreams have passed you by.\r\n\r\n', 'Screenshot 2024-04-24 152418.png\r\n', '2023-03-08 00:46:20', 1, 11, 0),
(28, 'O Captain! My Captain!', '\"O Captain! my Captain! our fearful trip is done,\r\nThe ship has weather’d every rack, the prize we sought is won,\r\nThe port is near, the bells I hear, the people all exulting,\r\nWhile follow eyes the steady keel, the vessel grim and daring;\r\nBut O heart! heart! heart!\r\nO the bleeding drops of red,\r\nWhere on the deck my Captain lies,\r\nFallen cold and dead.\"', 'Screenshot 2024-04-24 153205.png', '2023-03-08 00:59:50', 7, 6, 0),
(29, 'Mirror in heart', 'If there’s in heart a small mirror,\r\nWhat need there’s for a wall mirror?\r\n\r\nHeart would reveal  your veiled intent, \r\nLet no dust befall on mirror. \r\n\r\nOne that conceals human conceit,\r\nWe never can call a mirror.\r\n\r\nBut who in heart and if at all\r\nWould ever install a mirror? \r\n\r\nLet man as a life tree on bank,\r\nSee his image crawl in water!', 'Screenshot 2024-04-24 154112.png', '2023-03-08 01:04:26', 9, 9, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `is_admin` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `email`, `password`, `avatar`, `is_admin`) VALUES
(5, 'William Shakespeare', 'Shakespeare', 'William Shakespeare', 'William Shakespeare@gmail.com', '$2y$10$Sxg.qjlHzi9UpdVvfxlozenXKQPAljvd50tH3i5vmCw5IcjEgUPzq', 'Screenshot 2024-04-24 144445.png', 1),
(6, 'WALT ', 'WHITMAN', 'WALT WHITMAN', 'WALT WHITMAN@gmail.com', '$2y$10$7kbPS82HOavofH5gxGbQIut7uJEk5oqeonly4k7BZFY5ciDaJAVsS', 'Screenshot 2024-04-24 145613.png', 0),
(7, 'LANGSTON ', ' HUGHES', 'LANGSTON HUGHES', 'LANGSTON HUGHES@gmail.com', '$2y$10$1rNxyIx3VXbH1RbGkqFWne6j21ksd1JCJHqD4uZZmsrWYgA1IQ6bq', 'Screenshot 2024-04-24 150611.png', 0),
(8, 'JOY HARJO', 'JOY HARJO', 'JOY HARJO', 'JOY HARJO@gmail.com', '$2y$10$8Uio8tlnKrPzKFbxvBmVueb3Dr7oyuRD0kmqGlvIGZPkuFgAdk79W', 'Screenshot 2024-04-24 151113.png', 1),
(9, 'Aniruddha Pathak', 'Aniruddha Pathak', 'Aniruddha Pathak', 'Aniruddha Pathak@gmail.com', '$2y$10$1VrsN/8gppd5pwurNZwX9.3Fg00LJaFt/kNNB0o1yCSe2ladshMbK', 'Screenshot 2024-04-24 153831.png', 0),
(10, 'Jane', 'Supper', 'notjane', 'not@jane.com', '$2y$10$pmLtiVTcC38W5ai07O2K6uRucCU59TE9JpUmIQuNloGhqJqzACeJC', '1678236024avatar4.jpg', 0),
(11, 'Ant', 'Ketchup', 'antketchup@123', 'antketchup@gmail.com', '$2y$10$.g/vZiXYIeq5WZx1Z4OAKO8IlqUSTAkP2rvFsdYyFLHyYeE7biboG', '1678237029avatar8.jpg', 0),
(12, 'James', 'Moriarty', 'jamesmoriarty@123', 'jamesmoriarty@gmail.com', '$2y$10$PrVXNnS1uODK13PtYY7uUeNK3MRbh37xitF8dzfXB.Gax7cdEi8WG', '1678249230avatar13.jpg', 0),
(13, 'mrunali', 'dhoke', 'mrunalil1234', 'mrunali@gmail.com', '$2y$10$xpWIc6cuOwmCq9GaTUQLCeYlSkrKQVqRDVFWgmmKgJ9cfovW9zUqi', '1713957301IMG_20221016_225803_494.jpg', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_blog_category` (`category_id`),
  ADD KEY `FK_blog_author` (`author_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `FK_blog_author` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_blog_category` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL;
COMMIT;

