-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 01, 2020 at 02:24 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog-vue`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `cat_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `cat_name`, `created_at`, `updated_at`) VALUES
(11, 'Electronics', '2020-10-13 14:36:04', '2020-10-20 07:25:06'),
(14, 'Watch', '2020-10-13 14:37:57', '2020-10-20 07:25:17'),
(15, 'Mouse', '2020-10-13 14:42:03', '2020-10-20 07:25:32'),
(16, 'Bag', '2020-10-13 14:42:27', '2020-10-20 07:25:49'),
(22, 'Desktop', '2020-10-13 14:52:13', '2020-10-20 07:26:22'),
(35, 'Web Development', '2020-10-13 15:32:40', '2020-10-13 15:32:40'),
(36, 'Cloth', '2020-10-13 23:16:30', '2020-10-13 23:16:30'),
(39, 'Laptop', '2020-10-16 06:57:12', '2020-10-16 06:57:12'),
(40, 'Mobile', '2020-10-16 06:57:25', '2020-10-16 06:57:25'),
(41, 'House', '2020-10-16 22:02:00', '2020-10-20 08:22:33');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2020_10_11_135337_create_categories_table', 2),
(4, '2020_10_11_135506_create_posts_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `cat_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `comment_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `cat_id`, `user_id`, `comment_id`, `title`, `description`, `photo`, `created_at`, `updated_at`) VALUES
(1, 11, 1, 10, 'Head Phone', '### **Head Phone** \n\n**Head Phone** Animi laudantium nostrum magni odit veniam alias vel. Itaque iusto sed impedit sapiente a. Minus eum ratione  **Head Phone** quae quia nostrum quo sed.Animi **Head Phone**  laudantium nostrum magni odit veniam alias **Head Phone** vel. Itaque iusto sed impedit  **Head Phone** sapiente a. Minus eum ratione quae quia nostrum quo sed.Animi laudantium **Head Phone**  nostrum magni odit veniam alias vel.  **Head Phone** Itaque iusto sed impedit  **Head Phone** sapiente a. Minus eum ratione quae quia nostrum quo sed.Animi laudantium nostrum magni  **Head Phone** odit veniam alias vel. Itaque iusto sed impedit sapiente a. Minus eum ratione quae quia nostrum quo sed.Animi  **Head Phone** laudantium nostrum magni odit veniam alias vel.  **Head Phone** Itaque iusto sed impedit sapiente a. **Head Phone** Minus eum ratione quae quia nostrum  **Head Phone** quo sed.Animi laudantium nostrum magni odit veniam alias vel. Itaque iusto sed impedit sapiente a. Minus eum ratione quae quia nostrum quo sed.\n\nAnimi laudantium nostrum magni odit veniam alias vel.**Head Phone** Itaque iusto sed impedit sapiente a. Minus eum ratione quae quia nostrum quo sed.Animi laudantium nostrum magni odit **Head Phone** veniam alias vel. Itaque iusto sed impedit sapiente a. Minus eum ratione quae quia nostrum quo sed.\n\nAnimi laudantium nostrum magni **Head Phone** odit veniam alias vel. Itaque iusto sed impedit sapiente a. Minus eum ratione quae quia nostrum quo sed.', '1603201183.png', '2020-10-11 10:09:15', '2020-10-20 07:39:43'),
(2, 14, 10, 4, 'Stylish Black Hand Watch', 'A **Hand Watch** quia exercitationem animi consequatur est est maiores. Vero dolorem iure exercitationem veniam. Sed laboriosam **Hand Watch**  ab harum tempore omnis.A quia exercitationem animi consequatur est  **Hand Watch** est maiores. Vero dolorem  **Hand Watch** iure exercitationem veniam. Sed laboriosam ab harum tempore  **Hand Watch** omnis.A quia exercitationem animi consequatur est est maiores. Vero dolorem iure exercitationem  **Hand Watch** veniam. Sed laboriosam ab harum tempore omnis.A quia exercitationem animi consequatur est **Hand Watch**  est maiores. Vero dolorem iure exercitationem veniam. Sed laboriosam ab harum tempore omnis.\n\n\nA quia exercitationem **Hand Watch**  animi consequatur est est maiores. Vero dolorem iure exercitationem veniam. Sed laboriosam ab harum tempore omnis.\n\nA quia exercitationem animi  **Hand Watch** consequatur est est maiores. Vero dolorem iure exercitationem veniam. Sed laboriosam **Hand Watch** ab harum tempore omnis.A quia exercitationem animi consequatur est est maiores. Vero dolorem iure exercitationem veniam. Sed  **Hand Watch** laboriosam ab harum tempore omnis.A quia exercitationem animi consequatur est est maiores **Hand Watch** . Vero dolorem iure exercitationem veniam. Sed laboriosam ab harum tempore omnis.A quia exercitationem animi consequatur est est maiores. Vero dolorem iure exercitationem veniam. Sed laboriosam ab harum tempore omnis.\n\nA quia exercitationem **Hand Watch**  animi consequatur est est maiores. Vero dolorem iure exercitationem veniam. Sed laboriosam **Hand Watch**  ab harum tempore omnis.A quia exercitationem animi consequatur est est maiores. Vero dolorem iure exercitationem veniam. Sed laboriosam ab harum tempore omnis.', '1603201078.png', '2020-10-11 10:09:15', '2020-10-20 07:37:58'),
(3, 15, 8, 6, 'Bluetooth Mouse', '***Bluetuth Mouse*** Est placeat velit fugiat ut voluptatum. Necessitatibus ut dolorem dicta qui possimus neque doloribus. ***Bluetuth Mouse*** Modi necessitatibus et eum dolor et non dignissimos. Officiis delectus asperiores culpa.Est placeat velit fugiat ut voluptatum. Necessitatibus ut dolorem dicta qui possimus neque doloribus. Modi necessitatibus et eum dolor et non dignissimos. ***Bluetuth Mouse*** Officiis delectus asperiores culpa.Est ***Bluetuth Mouse*** placeat velit fugiat ut voluptatum. Necessitatibus ut dolorem dicta qui possimus neque doloribus. Modi necessitatibus et eum dolor et non dignissimos. Officiis delectus asperiores culpa.Est ***Bluetuth Mouse*** placeat velit fugiat ut ***Bluetuth Mouse*** voluptatum. Necessitatibus ut dolorem dicta qui possimus neque doloribus. Modi necessitatibus et eum dolor et non dignissimos. Officiis delectus asperiores culpa.\n\nEst placeat velit fugiat ut ***Bluetuth Mouse***  voluptatum. Necessitatibus ut dolorem dicta qui possimus neque doloribus. Modi necessitatibus et eum dolor et non dignissimos. Officiis ***Bluetuth Mouse*** delectus asperiores culpa.Est placeat velit fugiat ut ***Bluetuth Mouse*** voluptatum. Necessitatibus ut dolorem dicta qui possimus neque doloribus. Modi necessitatibus et eum dolor et non dignissimos. Officiis delectus asperiores culpa.\n\nEst placeat velit fugiat ut voluptatum. ***Bluetuth Mouse*** Necessitatibus ut dolorem dicta qui possimus neque doloribus. ***Bluetuth Mouse*** Modi necessitatibus et eum dolor et non dignissimos. Officiis delectus asperiores culpa.\n\nEst placeat velit fugiat ut voluptatum. Necessitatibus ut dolorem dicta qui possimus neque doloribus. Modi ***Bluetuth Mouse*** necessitatibus et eum dolor et non dignissimos. Officiis delectus asperiores culpa.Est placeat velit fugiat ut voluptatum. Necessitatibus ut dolorem dicta qui possimus neque doloribus. Modi necessitatibus et eum dolor et non dignissimos. Officiis delectus asperiores culpa.', '1603200963.jpeg', '2020-10-11 10:09:15', '2020-10-20 07:36:03'),
(4, 16, 9, 7, 'Official Hand Bag', 'Eos nemo esse at corporis **Official Hand Bag**. Sunt dolorum vel nisi neque. Eos nobis dicta vel et consequuntur. **Official Hand Bag** Eos nemo esse at corporis. Sunt dolorum vel nisi **Official Hand Bag** neque. Eos nobis dicta vel et consequuntur.Eos nemo esse at corporis. Sunt dolorum vel nisi neque. Eos nobis dicta vel et consequuntur.Eos nemo esse at corporis. Sunt dolorum **Official Hand Bag** vel nisi neque. Eos nobis dicta vel et consequuntur.\n\n **Official Hand Bag** Eos nemo esse at corporis.  **Official Hand Bag** Sunt dolorum vel nisi neque. Eos nobis dicta vel **Official Hand Bag** et consequuntur.Eos nemo esse at corporis. Sunt dolorum vel nisi neque. Eos nobis dicta vel et consequuntur **Official Hand Bag** .\n\nEos nemo esse at corporis. Sunt dolorum vel nisi neque **Official Hand Bag** . Eos nobis dicta vel et consequuntur.Eos nemo esse at corporis. Sunt dolorum **Official Hand Bag**  vel nisi neque. Eos nobis dicta vel et consequuntur.Eos nemo esse at corporis. Sunt dolorum vel nisi **Official Hand Bag**  neque. Eos nobis dicta **Official Hand Bag**  vel et consequuntur.\nEos nemo esse at corporis. **Official Hand Bag**  Sunt dolorum vel nisi neque. Eos nobis dicta vel et consequuntur.\nEos nemo **Official Hand Bag**  esse at corporis. Sunt dolorum vel nisi neque **Official Hand Bag** . Eos nobis dicta vel et consequuntur.', '1603200872.jpeg', '2020-10-11 10:09:16', '2020-10-20 07:34:32'),
(5, 40, 1, 8, 'Redmi Mi', 'Dolores *Redmi Mi* pariatur minus ut id facere. Repellendus recusandae doloremque sequi est qui odio eius eaque. Rerum odit hic *Redmi Mi*  aut modi magni nemo dolorem. Odit odit quod voluptatum cum. Molestias asperiores velit repudiandae unde ea consectetur eos est.\n\nDolores pariatur minus ut id *Redmi Mi*  facere. Repellendus recusandae doloremque sequi est qui odio eius eaque. Rerum odit hic aut modi magni nemo dolorem. Odit odit quod voluptatum cum. Molestias asperiores velit repudiandae unde ea consectetur eos est.Dolores pariatur *Redmi Mi*  minus ut id facere. Repellendus recusandae doloremque sequi est qui odio eius eaque. Rerum odit  *Redmi Mi* hic aut *Redmi Mi*  modi magni nemo dolorem. Odit odit quod voluptatum cum. Molestias asperiores velit repudiandae unde  *Redmi Mi* ea consectetur eos est.Dolores pariatur minus ut id facere.  *Redmi Mi* Repellendus recusandae doloremque sequi est qui odio eius eaque. Rerum odit hic aut modi magni nemo dolorem. Odit odit quod voluptatum cum. Molestias asperiores velit repudiandae unde ea consectetur eos est.\n *Redmi Mi* Dolores pariatur minus ut id facere. Repellendus recusandae doloremque  *Redmi Mi* sequi est qui  *Redmi Mi* odio eius eaque. Rerum odit hic aut modi magni nemo dolorem. Odit odit quod voluptatum cum. Molestias  *Redmi Mi* asperiores velit repudiandae unde ea consectetur eos est.\n\nDolores *Redmi Mi*  pariatur minus ut id facere. Repellendus recusandae doloremque sequi est qui odio eius eaque. Rerum odit hic aut modi magni nemo dolorem. Odit odit quod voluptatum cum. Molestias asperiores velit repudiandae unde ea consectetur eos est.', '1604131250.jpeg', '2020-10-11 10:09:16', '2020-10-31 02:00:51'),
(6, 22, 1, 7, 'Lenovo PC', 'Ut molestiae consequatur in dolorem earum. Ea iure minima aut laborum cupiditate quo. Sint autem sit quam. Quia odit est id enim.Ut molestiae consequatur in dolorem earum. Ea iure minima aut laborum cupiditate quo. Sint autem sit quam. Quia odit est id enim.Ut molestiae consequatur in dolorem earum. Ea iure minima aut laborum cupiditate quo. Sint autem sit quam. Quia odit est id enim.Ut molestiae consequatur in dolorem earum. Ea iure minima aut laborum cupiditate quo. Sint autem sit quam. Quia odit est id enim.\n\nUt molestiae consequatur in dolorem earum. Ea iure minima aut laborum cupiditate quo. Sint autem sit quam. Quia odit est id enim.Ut molestiae consequatur in dolorem earum. Ea iure minima aut laborum cupiditate quo. Sint autem sit quam. Quia odit est id enim.\n\n\nUt molestiae consequatur in dolorem earum. Ea iure minima aut laborum cupiditate quo. Sint autem sit quam. Quia odit est id enim.', '1603200671.png', '2020-10-11 10:09:16', '2020-10-20 07:31:11'),
(7, 14, 9, 6, 'Man\'s Watch', 'Labore rerum eveniet **Watch** qui sed sint tempora et. Rem dolores adipisci eos asperiores laborum ipsam molestias. Velit corrupti similique modi assumenda blanditiis esse velit. Est non odio facere **Watch**.\n\nLabore rerum eveniet qui sed sint **Watch** tempora et. Rem dolores adipisci eos asperiores laborum ipsam molestias. Velit corrupti similique modi assumenda **Watch** blanditiis esse velit. Est non odio facere.Labore rerum eveniet qui sed sint tempora **Watch** et. Rem dolores adipisci eos asperiores laborum ipsam molestias. Velit corrupti **Watch** similique modi assumenda blanditiis esse velit. Est non odio facere.Labore rerum eveniet qui sed sint tempora et. Rem dolores adipisci eos asperiores laborum ipsam molestias. Velit corrupti similique modi assumenda blanditiis esse velit. Est non odio facere.\n\nLabore rerum eveniet qui sed sint tempora et. Rem dolores adipisci eos asperiores laborum ipsam molestias. Velit corrupti similique modi assumenda blanditiis esse velit. Est non odio facere.Labore rerum eveniet qui sed sint tempora et. Rem dolores adipisci eos asperiores laborum ipsam molestias. Velit corrupti similique modi assumenda blanditiis esse velit. Est non odio facere.\n\nLabore rerum eveniet qui sed sint tempora et. Rem dolores adipisci eos asperiores laborum ipsam molestias. Velit corrupti similique modi assumenda blanditiis esse velit. Est non odio facere.Labore rerum eveniet qui sed sint tempora et. Rem dolores adipisci eos asperiores laborum ipsam molestias. Velit corrupti similique modi assumenda blanditiis esse velit. Est non odio facere.Labore rerum eveniet qui sed sint tempora et. Rem dolores adipisci eos asperiores laborum ipsam molestias. Velit corrupti similique modi assumenda blanditiis esse velit. Est non odio facere.', '1603200546.png', '2020-10-11 10:09:16', '2020-10-20 07:30:02'),
(8, 16, 7, 10, 'Ladis Bag', '**Minima fugit accusantium commodi est.** Ut aperiam quia non. Omnis vero autem nihil labore. Omnis voluptate natus beatae cum voluptatem.Minima fugit accusantium commodi est. Ut aperiam quia non. Omnis vero autem nihil labore. Omnis voluptate natus beatae cum voluptatem.\n\n*Minima fugit accusantium commodi est. Ut aperiam quia non. Omnis vero autem nihil labore. Omnis voluptate natus beatae cum voluptatem.Minima fugit accusantium commodi est. Ut aperiam quia non. Omnis vero autem nihil labore. Omnis voluptate natus beatae cum voluptatem.Minima fugit accusantium commodi est. Ut aperiam quia non. Omnis vero autem nihil labore. Omnis voluptate natus beatae cum voluptatem.Minima fugit accusantium commodi est. Ut aperiam quia non. Omnis vero autem nihil labore. Omnis voluptate natus beatae cum voluptatem.Minima fugit accusantium commodi est. Ut aperiam quia non. Omnis vero autem nihil labore. Omnis voluptate natus beatae cum voluptatem.*\n\n> Minima fugit accusantium commodi est. Ut aperiam quia non. Omnis vero autem nihil labore. Omnis voluptate natus beatae cum voluptatem.Minima fugit accusantium commodi est. Ut aperiam quia non. Omnis vero autem nihil labore. Omnis voluptate natus beatae cum voluptatem.', '1603200524.jpeg', '2020-10-11 10:09:16', '2020-10-20 07:28:44'),
(9, 39, 6, 4, 'Dell Laptop 7th Generation', 'Vel quidem maxime est dolor animi voluptatem. Ipsam perspiciatis voluptatem eius autem maxime est incidunt. Qui occaecati nemo unde quasi animi est laudantium beatae.\n\nVel quidem maxime est dolor animi voluptatem. Ipsam perspiciatis voluptatem eius autem maxime est incidunt. Qui occaecati nemo unde quasi animi est laudantium beatae.\n\nVel quidem maxime est dolor animi voluptatem. Ipsam perspiciatis voluptatem eius autem maxime est incidunt. Qui occaecati nemo unde quasi animi est laudantium beatae.', '1603200189.png', '2020-10-11 10:09:16', '2020-10-20 07:23:09'),
(10, 35, 1, 1, 'Blog Project', '### Super Blog-Project\n\n**Blog project by \'FullStack Web\' Youtube Channel**\nLaravel+ Vue js, Reiciendis delectus fugiat explicabo amet qui. Enim quae sint iste est maiores. Est quia aut et nemo tempora occaecati. Laravel+ Vue js, Reiciendis delectus fugiat explicabo amet qui. Enim quae sint iste est maiores. Est quia aut et nemo tempora occaecati. Reiciendis delectus fugiat explicabo amet qui. Enim quae sint iste est maiores. Est quia aut et nemo tempora occaecati. Reiciendis delectus fugiat explicabo amet qui. Enim quae sint iste est maiores. Est quia aut et nemo tempora occaecati. Reiciendis delectus fugiat explicabo amet qui. Enim quae sint iste est maiores. Est quia aut et nemo tempora occaecati. Reiciendis delectus fugiat explicabo amet qui. \n> Enim quae sint iste est maiores. Est quia aut et nemo tempora occaecati. Reiciendis delectus fugiat explicabo amet qui. Enim quae sint iste est maiores. Est quia aut et nemo tempora occaecati. \n\n**Reiciendis delectus** fugiat explicabo amet qui. Enim quae sint iste est maiores. Est quia aut et nemo tempora occaecati. Reiciendis delectus fugiat explicabo amet qui. Enim quae sint iste est maiores. Est quia aut et nemo tempora occaecati. \n\n*Reiciendis delectus fugiat explicabo amet qui. Enim quae sint iste est maiores. Est quia aut et nemo tempora occaecati. Reiciendis delectus fugiat explicabo amet qui. Enim quae sint iste est maiores. Est quia aut et nemo tempora occaecati. Reiciendis delectus fugiat explicabo amet qui. Enim quae sint iste est maiores. Est quia aut et nemo tempora occaecati. \n*\nReiciendis delectus fugiat explicabo amet qui. Enim quae sint iste est maiores. Est quia aut et nemo tempora occaecati. Reiciendis delectus fugiat explicabo amet qui. Enim quae sint iste est maiores. Est quia aut et nemo tempora occaecati.', '1603199931.png', '2020-10-11 10:09:16', '2020-10-20 07:18:52'),
(11, 35, 1, NULL, 'Vue Js & Laravel', 'hello world, Vue Js & Laravel description But ekhane ekta choto correction hocche, amra ekhane \"time format\" korar jonno amra moment_js install kore \"app.js\" e support diye & Time_format er jonno \"filter\" use korechi, But ekhane jodi evabe aro nana kajer jonno \"filter\" use kora lage,(ex: time-format,post format etc) taile ei \"app.js\" file onek large/Boro hoye jabe, So tai amra ekhane \"filter.js\"(resource/js/filter.js) name e ekta file niyechi && filter er jabotiyo sob kaj okhanei korbo...Tai ekn ei \'Time formatting\' er kaj tao amra \"app.js\" theke niye giye \"filter.js\" e korechi, &&& seijonno \"app.js\" e ei \"filter.js\" file ta obosshoy \'import\' kore dithe hobe', '1603177913.png', '2020-10-20 01:11:54', '2020-10-20 01:11:54'),
(12, 41, 1, NULL, 'Demo Title', 'Demo Description, it is a demo description. But ekhane ekta choto correction hocche, amra ekhane \"time format\" korar jonno amra moment_js install kore \"app.js\" e support diye & Time_format er jonno \"filter\" use korechi, But ekhane jodi evabe aro nana kajer jonno \"filter\" use kora lage,(ex: time-format,post format etc) taile ei \"app.js\" file onek large/Boro hoye jabe, So tai amra ekhane \"filter.js\"(resource/js/filter.js) name e ekta file niyechi && filter er jabotiyo sob kaj okhanei korbo...Tai ekn ei \'Time formatting\' er kaj tao amra \"app.js\" theke niye giye \"filter.js\" e korechi, &&& seijonno \"app.js\" e ei \"filter.js\" file ta obosshoy \'import\' kore dithe hobe', '1603199585.jpeg', '2020-10-20 01:34:48', '2020-10-20 07:13:05'),
(15, 40, 1, NULL, 'Samsung Glaxy Core Prime', 'Description of **Samsung Glaxy Core Prime**,\nDescription of Samsung Glaxy Core Prime,Description of Samsung Glaxy Core Prime,Description of Samsung Glaxy Core PrimeDescription of Samsung Glaxy Core Prime,Description of Samsung Glaxy Core Prime,Description of Samsung Glaxy Core PrimeDescription of Samsung Glaxy Core PrimeDescription of Samsung Glaxy Core PrimeDescription of Samsung Glaxy Core Prime.\n\n\n### Description of Samsung Glaxy Core Prime\n*Description of Samsung Glaxy Core Prime*, Description of Samsung Glaxy Core Prime,~~Description of Samsung Glaxy Core Prime~~, Description of Samsung Glaxy Core Prime, Description of Samsung Glaxy Core Prime, Description of Samsung Glaxy Core Prime, Description of Samsung Glaxy Core PrimeDescription of Samsung Glaxy Core PrimeDescription of Samsung Glaxy Core Prime.', '1603180616.png', '2020-10-20 01:56:56', '2020-10-20 07:12:16'),
(18, 36, 1, NULL, 'Panjabi', '### Cotton Shirt\nThis gorgious **Panjabi** is made by italy,*This gorgious shirt is made by italy,*This gorgious shirt is made by italy,This gorgious shirt is made by italy,**This gorgious Panjabi is made by italy**,This gorgious shirt is made by italy,This gorgious shirt is made by italy,This gorgious shirt is made by italy,This gorgious shirt is made by italy,\n\nThis gorgious **Panjabi** is made by italy,*This gorgious shirt is made by italy,*This gorgious shirt is made by italy,This gorgious shirt is made by italy,**This gorgious Panjabi is made by italy**,This gorgious shirt is made by italy,This gorgious shirt is made by italy,This gorgious shirt is made by italy,This gorgious shirt is made by italy,This gorgious **Panjabi** is made by italy,*This gorgious shirt is made by italy,*This gorgious shirt is made by italy,This gorgious shirt is made by italy,**This gorgious Panjabi is made by italy**,This gorgious shirt is made by italy,This gorgious shirt is made by italy,This gorgious shirt is made by italy,This gorgious shirt is made by italy,This gorgious **Panjabi** is made by italy,*This gorgious shirt is made by italy,*This gorgious shirt is made by italy,This gorgious shirt is made by italy,**This gorgious Panjabi is made by italy**,This gorgious shirt is made by italy,This gorgious shirt is made by italy,This gorgious shirt is made by italy,This gorgious shirt is made by italy,\n\nThis gorgious **Panjabi** is made by italy,*This gorgious shirt is made by italy,*This gorgious shirt is made by italy,This gorgious shirt is made by italy,**This gorgious Panjabi is made by italy**,This gorgious shirt is made by italy,This gorgious shirt is made by italy,This gorgious shirt is made by italy,This gorgious shirt is made by italy,', '1603189512.jpeg', '2020-10-20 04:25:12', '2020-10-20 07:41:35'),
(19, 35, 1, NULL, 'Bootstrap', '### Bootstrap-4\n\n\nBootstrap-4 is CSS framework.Bootstrap-4 is CSS framework. **Bootstrap-4** ,Bootstrap-4 is CSS framework.Bootstrap-4 is CSS framework.Bootstrap-4 is CSS framework.Bootstrap-4 is CSS framework.Bootstrap-4 is CSS framework.Bootstrap-4 is CSS framework. **Bootstrap-4** ,Bootstrap-4 is CSS framework.Bootstrap-4 is CSS framework.Bootstrap-4 is CSS framework.Bootstrap-4 is CSS framework.\n\n**Bootstrap-4** is CSS framework.Bootstrap-4 is CSS framework.Bootstrap-4 is CSS framework. **Bootstrap-4** ,Bootstrap-4 is CSS framework.Bootstrap-4 is CSS framework.Bootstrap-4 is CSS framework.Bootstrap-4 is CSS framework.Bootstrap-4 is CSS framework.Bootstrap-4 is CSS framework. **Bootstrap-4** ,Bootstrap-4 is CSS framework.Bootstrap-4 is CSS framework. **Bootstrap-4** ,Bootstrap-4 is CSS framework.Bootstrap-4 is CSS framework.Bootstrap-4 is CSS framework. **Bootstrap-4** ,Bootstrap-4 is CSS framework.Bootstrap-4 is CSS framework.Bootstrap-4 is CSS framework. **Bootstrap-4** ,Bootstrap-4 is CSS framework. **Bootstrap-4** ,Bootstrap-4 is CSS framework.Bootstrap-4 is CSS framework.Bootstrap-4 is CSS framework. **Bootstrap-4** ,Bootstrap-4 is CSS framework.Bootstrap-4 is CSS framework.\n\nBootstrap-4 is CSS framework.', '1603201528.png', '2020-10-20 07:45:29', '2020-10-20 07:45:29'),
(20, 35, 1, NULL, 'Software Developer', 'Jr. FullStack Developer.\nLorem ipsum dolor sit amet consectetur adipisicing elit. Error, ipsa nemo deserunt, sit iste, adipisci earum rerum distinctio saepe voluptas velit impedit.\nLorem, ipsum dolor sit amet consectetur adipisicing elit. Aliquid illo amet cupiditate fugit esse doloribus quia, ratione libero voluptates iusto, ipsa deserunt, reiciendis provident omnis facilis sed magni quasi eos. Quia repellat fuga architecto officiis a. Deserunt numquam corrupti omnis.', '1603396804.gif', '2020-10-22 14:00:05', '2020-10-22 14:00:05');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, '$2y$10$nQ.J0QlWLynYZOTtZdtePOWSUycOzU1riUXXTBcwUUAXyphSjK5F2', 'tqFuhoW5636LH8Fan6JyCLaHBy485yTG1tHwuyB6k6KOoQw9fVUzK8cv25wA', '2020-10-10 14:14:32', '2020-10-10 14:14:32'),
(2, 'Isaac Blick', 'altenwerth.larissa@example.net', '2020-10-11 10:09:17', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'kIMSCRnwMz', '2020-10-11 10:09:17', '2020-10-11 10:09:17'),
(3, 'Tania Heller', 'ntorp@example.org', '2020-10-11 10:09:17', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'OMU8QAYClu', '2020-10-11 10:09:17', '2020-10-11 10:09:17'),
(4, 'Ayana Deckow', 'terrance47@example.com', '2020-10-11 10:09:17', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'XbX6vgcj86', '2020-10-11 10:09:17', '2020-10-11 10:09:17'),
(5, 'Abner Romaguera', 'zsawayn@example.net', '2020-10-11 10:09:17', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'EkzLmfLMUw', '2020-10-11 10:09:17', '2020-10-11 10:09:17'),
(6, 'Terry Hansen', 'ymurazik@example.org', '2020-10-11 10:09:17', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'WY9oJzaG8C', '2020-10-11 10:09:17', '2020-10-11 10:09:17'),
(7, 'Prof.Kaya', 'heidenreich.amelia@example.net', '2020-10-11 10:09:17', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'rthBWxDveC', '2020-10-11 10:09:17', '2020-10-11 10:09:17'),
(8, 'Prof. Arlo Stroman', 'keon.stark@example.com', '2020-10-11 10:09:17', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'EQNTnVb5zV', '2020-10-11 10:09:17', '2020-10-11 10:09:17'),
(9, 'Joana Kirlin', 'dimitri33@example.net', '2020-10-11 10:09:17', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'gedCO1MU22', '2020-10-11 10:09:17', '2020-10-11 10:09:17'),
(10, 'Serenity Muller V', 'sydni62@example.org', '2020-10-11 10:09:17', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'aT3RI9l6ai', '2020-10-11 10:09:17', '2020-10-11 10:09:17'),
(11, 'Ms. Tina Schamberger', 'xshields@example.net', '2020-10-11 10:09:17', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'ADdYkcyeq3', '2020-10-11 10:09:17', '2020-10-11 10:09:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
