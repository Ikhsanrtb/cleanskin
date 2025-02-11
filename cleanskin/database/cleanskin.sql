-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 11, 2025 at 01:34 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cleanskin`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `password`) VALUES
(1, 'admin', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `number` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` date NOT NULL DEFAULT current_timestamp(),
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(6, 1, 'admin', '08923273', 'gilangragil2343@gmail.com', 'cash on delivery', 'flat no. sekeloa, tubagus, Kota Padang, mahasiswa, indonesia - 3', 'Facial Wash. (Rp150 x 1) - Serum (Rp200 x 1) - Cream Pelembab (Rp130 x 1) - ', 480, '2025-02-11', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `details` varchar(500) NOT NULL,
  `price` int(10) NOT NULL,
  `image_01` varchar(100) NOT NULL,
  `image_02` varchar(100) NOT NULL,
  `image_03` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `details`, `price`, `image_01`, `image_02`, `image_03`) VALUES
(1, 'Facial Wash.', 'Mencuci muka bermanfaat untuk membuka pori-pori, melembutkan kulit, dan membuat kulit bersih dari kotoran sehingga kulit bisa menyerap produk skincare selanjutnya dengan lebih baik.', 150, 'lt-men-moisturizing-facial-cleanser-mild-80g.jpg', '31b18a4c-fa64-41e3-9ea9-9fd2262ebc6b.jpg', 'd018c9d1-6bc5-40f9-a3c3-04362ef96642.jpg'),
(2, 'Serum', 'Produk serum perawatan kulit yang berbentuk cairan dan mengandung bahan aktif tertentu. Serum memiliki fungsi untuk melembapkan, mencerahkan, dan mengatasi masalah kulit. \r\n\r\nSerum dapat digunakan untuk wajah dan tubuh. Serum wajah dapat membantu mengatasi masalah seperti bintik-bintik penuaan, bekas jerawat, dan perubahan warna kulit. Sementara serum tubuh dapat membantu mengatasi masalah seperti kulit kering, noda hitam, atau kulit sensitif. ', 200, 'H00007009_packshot.webp', 'images.jpeg', '14964263-7305103812247852.jpg'),
(3, 'Cream Pelembab', 'krim pelembab merupakan produk perawatan kulit yang dirancang untuk menambah dan mengunci hidrasi pada kulit.', 130, 'c43941e587c5a1d01e9f40ef24b648b2.jpg', 'id-11134207-7qukx-lji8ragobn6ya9-Photoroom.png', 'bdfb7520befb0caf4451473991c7a372-Photoroom.png'),
(4, 'Toner', 'Toner untuk menyeimbangkan pH kulit, mengecilkan pori-pori, dan memberikan hidrasi', 100, 'images (1).jpeg', '01652de2-c331-40d8-90ed-0d0d3ad2b91c--Photoroom.png', '01652de2-c331-40d8-90ed-0d0d3ad2b91c--Photoroom.png'),
(5, 'Pelembab', 'Emina Bright Stuff Moisturizing Cream adalah pelembap wajah yang dapat mencerahkan dan melembapkan kulit. Pelembap ini cocok digunakan sehari-hari. \r\nDeskripsi produk: \r\nMengandung ekstrak summer plum yang berfungsi sebagai anti-pollutant\r\nMengandung vitamin E yang baik untuk kulit\r\nMengandung UVA dan UVB filter untuk melindungi kulit dari sinar matahari\r\nMengandung moisturizing agent untuk membuat wajah tampak lebih sehat dan cerah\r\nBebas kilap selama 15 jam\r\nMudah diaplikasikan dan tidak lengk', 200, 'Emina-Bright-Stuff-for-Acne-Prone-Skin-Moisturizing-Cream-Photoroom.png', 'Emina-Bright-Stuff-For-Acne-Prone-Skin-Moisturizing-Cream--Photoroom.png', '6c761013761bfcbc574ff235e3edd00d-Photoroom.png'),
(6, 'Eksfoliasi', 'Scarlett Whitening Peeling So Good memiliki banyak manfaat, di antaranya: \r\nMengangkat sel-sel kulit mati\r\nMencerahkan dan meratakan warna kulit wajah\r\nMenyamarkan noda hitam\r\nMenyamarkan garis halus dan kerutan\r\nMenyamarkan tampilan pori-pori\r\nMembantu memperlambat munculnya tanda-tanda penuaan\r\nMelawan bakteri penyebab jerawat\r\nMembuat kulit tampak lembut, halus, dan bercahaya', 100, 'c59cb2b5fbb314537ac320b9c0f13a91.png', 'scarlett_whitening_peeling_gel_1693365397_26d4afe4_progressive.jpeg', 'IMG_20230112_170747.jpg'),
(7, 'sunscreen', 'Sunscreen adalah produk perawatan kulit yang berfungsi melindungi kulit dari sinar ultraviolet (UV) matahari. Sunscreen juga dikenal dengan nama sunblock atau sun lotion. \r\nSunscreen dapat membantu mencegah: \r\nTerbakar sinar matahari, Keriput, Hiperpigmentasi, Kanker kulit, Kulit kusam, Penuaan dini.\r\nSunscreen dapat berupa gel, semprotan, busa, batang, atau produk topikal. \r\nBeberapa hal yang perlu diperhatikan saat memilih sunscreen:\r\nPerlindungan terhadap sinar UVA, yang ditandai dengan PA (P', 50, 'id-11134207-7r992-lsvc371lqnb156.jpeg', 'images (4).jpeg', 'images (3).jpeg'),
(8, 'Masker Wajah', 'Masker wajah memiliki banyak manfaat, di antaranya untuk merawat kulit, melembapkan, dan mengurangi stres. \r\nManfaat masker wajah untuk kulit \r\nMelembapkan kulit\r\nMengurangi produksi minyak berlebih\r\nMenjaga kesehatan kulit\r\nMembantu mengatasi jerawat\r\nMelindungi kulit dari kerusakan akibat paparan sinar UV\r\nMembantu mengatasi peradangan pada kulit akibat penyakit eksim', 30, 'images (5).jpeg', 'id-11134201-23030-jfwnudb6z4nv3a.jpeg', 'images (6).jpeg'),
(9, 'Micellar water ', 'Micellar water adalah cairan pembersih wajah yang bisa digunakan untuk menghapus sisa makeup, kotoran, dan minyak. Micellar water biasanya digunakan dengan cara menuangkan ke kapas lalu diusapkan ke wajah. ', 35, 'b832cf022e3298800b2aea41c59da9e7.jpeg', 'id-11134207-7rasi-m16ef1vfurdxad.jpeg', 'id-11134207-7r98w-llewjx8xtxtwbc.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(1, 'Ikhsan Rizky Tubagus', 'ikhsanrtebe@gmail.com', 'b1b3773a05c0ed0176787a4f1574ff0075f7521e');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
