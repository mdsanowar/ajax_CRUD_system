-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 12, 2019 at 10:04 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ajax`
--

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
(1, '2019_04_09_170504_create_posts_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `author`, `details`, `created_at`, `updated_at`) VALUES
(5, 'নুসরাতের হত্যাকারীদের বিরুদ্ধে ব্যবস্থা নিতে প্রধানমন্ত্রীর নির্দেশ', 'Md Sanowar Hossen', 'প্রধানমন্ত্রী শেখ হাসিনা ফেনীর সোনাগাজী উপজেলার অগ্নিদগ্ধ মাদ্রাসাছাত্রী নুসরাত জাহান রাফির হত্যাকারীদের বিরুদ্ধে কঠোর ব্যবস্থা নিতে আইন প্রয়োগকারী সংস্থাগুলোকে নির্দেশ দিয়েছেন।', '2019-04-11 17:34:30', '2019-04-11 17:34:30'),
(6, 'স্মিথ-ওয়ার্নার ‘খুন করে পার পেয়ে গেছেন’!', 'Md Sanowar Hossen', 'বল টেম্পারিং কেলেঙ্কারির জন্য এক বছরের নিষেধাজ্ঞার সাজা ভোগ করে ক্রিকেটে ফিরেছেন স্টিভ স্মিথ ও ডেভিড ওয়ার্নার। ৯ মাস নিষিদ্ধ হওয়া ব্যানক্রফট সাজা ভোগ করে তাঁদের আগেই ফিরেছেন ক্রিকেটে। ওয়েস্ট ইন্ডিজের কিংবদন্তি পেসার কার্টলি অ্যামব্রোস মনে করেন, এই তিন অস্ট্রেলিয়ান তাঁদের অপরাধের তুলনায় কম শাস্তি পেয়েছেন', '2019-04-11 18:00:13', '2019-04-11 18:00:13'),
(7, 'বিজ্ঞান জাদুঘরে আসছে অত্যাধুনিক মুভি বাস', 'Md Sanowar Hossen', 'তিনটি মুভি বাস ও দুটি অবজারভেটরি ভ্যান সংগ্রহের প্রক্রিয়া শুরু করেছে জাতীয় বিজ্ঞান ও প্রযুক্তি জাদুঘর। আজ বুধবার প্রতিষ্ঠানটির সম্মেলন কক্ষে সরবরাহকারী প্রতিষ্ঠান ন্যাশনাল ডেভেলপমেন্ট ইঞ্জিনিয়ার্স লিমিটেড ও মেসার্স সরকার কবির আহম্মেদ নামের দুটি প্রতিষ্ঠানের সঙ্গে চুক্তি সই হয়েছে।', '2019-04-11 18:13:03', '2019-04-11 18:13:03'),
(8, 'মাইক্রোসফট থেকে সোনিয়া বশিরের পদত্যাগ', 'Md Sanowar Hossen', 'মাইক্রোসফট বাংলাদেশ, মিয়ানমার, নেপাল, ভুটান ও লাওসের দায়িত্ব থেকে পদত্যাগ করেছেন সোনিয়া বশির কবির। মাইক্রোসফটের হয়ে তিনি ৩০ এপ্রিল পর্যন্ত কাজ করবেন।\r\n\r\nআপাতত সোনিয়া বশির কবির অন্য কোনো আন্তর্জাতিক প্রযুক্তি প্রতিষ্ঠানের সঙ্গে যুক্ত হচ্ছেন না। নিজের প্রতিষ্ঠান ও দক্ষিণ–পূর্ব এশিয়া অঞ্চলে ‘অ্যাঞ্জেল ইনভেসটর’ হিসেবে বিনিয়োগ করা বিভিন্ন স্টার্টআপেই বেশি সময় দেবেন তিনি।', '2019-04-11 18:14:55', '2019-04-11 18:14:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
