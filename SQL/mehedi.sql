-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 02, 2024 at 05:44 PM
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
-- Database: `mehedi`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `firstName` varchar(125) NOT NULL,
  `lastName` varchar(125) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(25) NOT NULL,
  `address` text NOT NULL,
  `password` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `confirmCode` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `firstName`, `lastName`, `email`, `mobile`, `address`, `password`, `type`, `confirmCode`) VALUES
(1, 'Mehedi', 'Hasan', 'mehedi@gmail.com', '01733888950', 'Dhaka', '91ec8d992540095dccbaa04a3e5ba55f', 'admin', '139474');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `uid`, `pid`, `quantity`) VALUES
(3, 1, 18, 1),
(4, 1, 35, 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `oplace` text NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `dstatus` varchar(10) NOT NULL DEFAULT 'no',
  `odate` date NOT NULL,
  `ddate` date NOT NULL,
  `delivery` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `uid`, `pid`, `quantity`, `oplace`, `mobile`, `dstatus`, `odate`, `ddate`, `delivery`) VALUES
(1, 1, 5, 1, 'Gazipur', '01733888950', 'Yes', '2024-05-02', '2024-05-03', 'Standard Delivery'),
(2, 1, 22, 1, 'Gazipur', '01733888950', 'Yes', '2024-05-02', '2024-05-09', 'Standard Delivery'),
(3, 1, 22, 1, 'Gazipur', '01733888950', 'no', '2024-05-02', '0000-00-00', 'Express Delivery +100php upon ');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `pName` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `piece` int(11) NOT NULL,
  `description` text NOT NULL,
  `available` int(11) NOT NULL,
  `category` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `item` varchar(100) NOT NULL,
  `pCode` varchar(20) NOT NULL,
  `picture` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `pName`, `price`, `piece`, `description`, `available`, `category`, `type`, `item`, `pCode`, `picture`) VALUES
(1, 'Cooper & Nelson 3 Piece Mens Suit Set', 7000, 2, 'Our mens slim fit suits are made with a blend of 70% Polyester and 30% Rayon, which provides comfort, breathability, and shape retention. The suits also have durable stitching that ensures they last for a long time. Plus, the slim-cut design gives you a confident and sharp look that will leave a lasting impression.', 2, '', '', 'mens_cloth', '456321', '1714649466.jpg'),
(2, 'Long Sleeve Advantage Polo Shirt', 2500, 2, 'Moisture wicking long sleeve polo with 35 UPF sun protection, ribbed cuff and knit collar CB dry Tec cotton+ technology for ultimate softness and comfort C and b pennant embroidery at back yoke, Grosgrain neck tape and locker loop', 2, '', '', 'mens_cloth', '46541', '1714649807.jpg'),
(3, 'New Desing Soft & Comfortable T-shirt', 150, 2, 'Budget Friendly T-shirt Fabrics : jersey Quality: High Print Quality: Rabber Type : Round Neck Size: M, L, XL, XXL * Size: M-Length 26,Chest 36 * Size: L-Length 27,Chest 38 * Size : XL-Length 28,Chest 40 * Size: XXL-Length 29,Chest 42 Fabrics : jersey Quality: High', 2, '', '', 'mens_cloth', '12341', '1714650705.jpg'),
(4, 'Soft & Comfortable T-shirt For Men-T-shirt', 200, 2, 'Budget Friendly T-shirt Fabrics : jersey Quality: High Print Quality: Rabber Type : Round Neck Size: M, L, XL, XXL * Size: M-Length 26,Chest 36 * Size: L-Length 27,Chest 38 * Size : XL-Length 28,Chest 40 * Size: XXL-Length 29,Chest 42 Fabrics : jersey Quality: High Print Quality: Rabber Type : Round Neck', 2, '', '', 'mens_cloth', '12341', '1714650836.jpg'),
(5, 'Panjab Mens', 2500, 2, 'Product: Khadi Arang Print Panjabi Fabric: Khadi Cotton Fit: Slim fit Length: Semi long Double pocket with flap', 2, '', '', 'mens_cloth', '12343', '1714658793.jpg'),
(6, 'Lubnan Men’s Regular Fit White Printed Panjabi', 3500, 2, 'Bring a touch of tradition to your wardrobe with this Premium Panjabi. Made from 100% soft and breathable cotton, it is perfect for any occasion.', 2, '', '', 'mens_cloth', '12347', '1714658931.jpg'),
(7, 'Classic Purple Arabian Burqa', 3761, 3, 'Fabric: Blended Color: Purple', 3, '', '', 'womens_cloth', '31441', '1714659119.jpg'),
(8, 'Women’s Contrasted Half Silk Saree', 4500, 2, 'Fabric : Half Silk Saree Wash care : Dry Clean Only  Due to photography with additional lighting, there may be some color difference, please cooperate with us for some minor color difference.', 2, '', '', 'womens_cloth', '31442', '1714659219.jpg'),
(9, 'Muslin Olive Printed Women’s Plazo', 967, 3, 'Introducing the Women’s Drawstring Waist Olive Printed Plazzo. Perfect for any occasion, these Plazzo can be dressed up or down. Whether you’re running errands or attending a holiday party, these pants will keep you looking stylish and feeling comfortable.', 2, '', '', 'womens_cloth', '31443', '1714659320.jpg'),
(10, 'Premium Aqua Blue Salwar Kameez', 7000, 3, 'Premium Georgette Kameez with an organza dupatta & trouser. Intricate hand embroidered work. Fabric: Georgette Care: Dry Clean Only.', 2, '', '', 'womens_cloth', '31444', '1714659418.png'),
(11, 'Premium Light Green Color Salwar Kameez', 5700, 3, 'Premium Georgette Kameez with an organza dupatta & trouser. Intricate hand embroidered work. Fabric: Georgette', 3, '', '', 'womens_cloth', '31445', '1714662011.png'),
(12, '3 Piece – Premium Dress', 7200, 2, 'Top : Pure green satin embroidered with foil print with foil lace in daman & sleeves with elegant embroidery Bottom: Pure cotton dyed with foil lece.', 2, '', '', 'womens_cloth', '31446', '1714662187.jpg'),
(13, 'Skin Refreshing Face Wash Gel 150ml', 600, 3, 'This simple face wash works very well for acne and sensitive skin. Because it is 100% soap free. This face wash is suitable for all skin types and being a gel face wash it does not dehydrate the skin.', 2, '', '', 'beauty', '77630', '1714659949.jpg'),
(14, 'Vaseline Intensive Care Cocoa Radiant Body Gel Oil 200ml', 800, 2, 'Vitalizing body gel oil for healthy glowing skin. Made with 100% pure cocoa, this gel oil for body promotes a natural glow. Helps revitalize dull-looking skin and improve skin’s appearance. Absorbs quickly for a non-greasy feel.', 2, '', '', 'beauty', '31441', '1714660008.jpg'),
(15, 'Technic Cashmere Matte Lip Cream', 400, 2, 'Full coverage, matte finish Cashmere Lip Creams. Technic Cashmere Matte Lip Cream gives you a lightweight and soft feel on the lips, with a durable color that lasts on the lips all day.', 2, '', '', 'beauty', '5464', '1714660132.jpg'),
(16, 'Vaseline Lip Therapy Cocoa Butter 17g', 240, 3, 'Made with Vaseline Jelly, it helps heal and prevent dry lips by locking in moisture. It provides long-lasting moisturization and revives dull-looking lips.', 2, '', '', 'beauty', '5645', '1714660189.jpg'),
(17, 'Neutrogena T/Gel Therapeutic Shampoo 250ML', 1800, 2, 'T Gel Shampoo Contains Neutar Solubilized Coal Tar extract, which treats itchy, flaky scalp. It is an effective treatment for dandruff, psoriasis, and seborrheic dermatitis of the scalp. Using this product can help control these problems while leaving your hair shiny and manageable.', 2, '', '', 'beauty', '54648', '1714660262.jpg'),
(18, 'Technic Persuasion Pressed Pigment Palette', 750, 3, 'Technic Persuasion Pressed Pigment, A palette of pressed pigments in various tones of pink, brown, and other colors. It features shadows that are very creamy and long-lasting in both matte and metallic finishes, as well as a shadow with a truly outstanding hybrid effect.', 3, '', '', 'beauty', '5646', '1714660364.jpg'),
(19, 'SSB Leather Premium Penny Loafer for Men', 2450, 3, ': These beautifully designed penny loafers are enough to complete your getup. Penny loafers are very comfortable and long lasting. We have placed it in premium segment with affordable price as per customer segment.', 2, '', '', 'mens_shoes', '46456', '1714660859.jpeg'),
(20, 'Sneakers Lace up Trendy Shoes for Man', 2500, 3, 'Trendy Shoes for Man Item Type: Sneakers  Outsole Material:Rubber Feature:Hard-Wearing,Breathable,Sweat-Absorbant,Light,Anti-Odor Lining Material:Mesh Insole Material:EVA', 3, '', '', 'mens_shoes', '54646', '1714661888.jpeg'),
(21, 'Asics HYPER SPEED 3', 15000, 2, 'Introducing the HYPER SPEED 3 shoe, your ultimate companion for training and racing. With a redesigned upper construction and customizable features, it enhances your performance. Engineered mesh ensures breathability, keeping your feet cool. With 16 eyestay holes for a balanced fit and elastic lace support, it offers comfort and customization like never before.', 2, '', '', 'mens_shoes', '', '1714661072.jpg'),
(22, 'Asics GEL-Kayano 30', 28000, 2, 'From 5Ks to full marathons, this shoe is designed to provide advanced stability and softer cushioning properties. ??This helps you experience a more supportive and balanced stride during your distance training. ??Its midsole is revamped with cushioning and a 4mm stack height increase. With approximately 24% bio-based content, this material helps create cloud-like softness at every step.?T', 2, '', '', 'mens_shoes', '6566', '1714661310.jpg'),
(23, 'Maverick Mens Jacket', 1860, 2, 'Classic denim meets functionality in this mens jacket. ', 2, '', '', 'mens_cloth', '12341', '1714661663.jpg'),
(24, 'Nino Rossi Womens Block Heel', 3000, 2, 'Introducing our statement-making womens block heel sandals, featuring a bold metal snaffle design for a touch of sophistication.', 2, '', '', 'womens_shoes', '64665', '1714662400.jpg'),
(25, 'Moochie Womens Block Heel', 2500, 2, 'These chic pumps from Moochie are the ultimate fusion of high fashion and everyday luxury. These exquisite shoes are a testament to timeless sophistication, designed to elevate your style while providing unparalleled comfort with every step.', 2, '', '', 'womens_shoes', '5464', '1714662501.jpg'),
(26, 'Moochie Womens Block Heel', 7000, 2, 'Introducing our chic and fashionable Moochie Womens Block Heel , boasting a fanciful upper and a stylish ankle strap for added flair. ', 2, '', '', 'womens_shoes', '64564', '1714662691.jpg'),
(27, 'Moochie Womens High Heel', 2470, 2, 'Step into sophistication with our Womens High Heels. Featuring a dazzling sequined upper, they exude glamour and style. ', 2, '', '', 'womens_shoes', '12341', '1714662818.jpg'),
(28, 'Moochie Womens Mule Mid Heel', 2760, 2, 'Introducing Moochie Womens Mule Mid Heel, designed to put a unique spin on all your outfits. Chic and classy, these pointed toe heel pumps are made for the modern fashion maven.', 2, '', '', 'womens_shoes', '54645', '1714663038.jpg'),
(29, 'Nino Rossi Womens Mule Sandal', 2310, 2, 'Pointed mule sandal  Strappy sling back design  Durable PU upper ', 2, '', '', 'womens_shoes', '5646', '1714663132.jpg'),
(30, 'Twinkler Girls Sports Sandal', 1999, 3, 'Introducing our girls sports sandals, engineered from sturdy PVC material for durability. Featuring a shiny upper and adjustable Velcro closure, these sandals offer both style and functionality.', 2, '', '', 'kids_shoes', '54636', '1714663231.jpg'),
(31, 'Twinkler Girls Sandal', 1599, 3, 'Open toe design. Flower embellishment. Velcro strap for easy on and off. Lightweight sole.', 2, '', '', 'kids_shoes', '646664', '1714663307.jpeg'),
(32, 'Twinkler Girls Pumpy', 1499, 2, 'Features:  Comfortable upper. Lightweight and non-slip sole. Bow tie design on saddle.', 2, '', '', 'kids_shoes', '6546', '1714663369.jpg'),
(33, 'Twinkler Boys Sneaker', 2299, 2, 'Features:  Comfortable cushioned interior. Durable rubber outsole. Trendy and stylish. Versatile for any activity.', 2, '', '', 'kids_shoes', '5646', '1714663447.jpg'),
(34, 'School Smart Kids School Shoe', 2500, 2, 'Features:  Ergonomic design for proper fit. Comfortable upper for maximum movement. Velcro strap for easy closer. Lightweight and flexible sole for all day wear.', 2, '', '', 'kids_shoes', '456654', '1714663503.jpg'),
(35, 'Twinkler Boys Sneaker', 5000, 3, 'Features:  Comfortable and breathable upper. Relaxed fit. Lightweight and ultra flexible sole. Durability with style and comfort. Bright color contrast.', 2, '', '', 'kids_shoes', 'M456464', '1714663598.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `firstName` varchar(25) NOT NULL,
  `lastName` varchar(25) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `address` varchar(120) NOT NULL,
  `password` varchar(100) NOT NULL,
  `confirmCode` varchar(10) NOT NULL,
  `activation` varchar(10) NOT NULL DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `firstName`, `lastName`, `email`, `mobile`, `address`, `password`, `confirmCode`, `activation`) VALUES
(1, 'Mehedi', 'Hasan', 'mehedi@gmail.com', '01733888950', 'Gazipur', '91ec8d992540095dccbaa04a3e5ba55f', '0', 'yes');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
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
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
