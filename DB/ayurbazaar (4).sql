-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 15, 2024 at 08:52 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ayurbazaar`
--

-- --------------------------------------------------------

--
-- Table structure for table `addproduct`
--

CREATE TABLE `addproduct` (
  `product_id` int(100) NOT NULL,
  `pname` varchar(100) NOT NULL,
  `pprice` int(100) NOT NULL,
  `pimg` varchar(100) NOT NULL,
  `pdesc` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `addproduct`
--

INSERT INTO `addproduct` (`product_id`, `pname`, `pprice`, `pimg`, `pdesc`) VALUES
(22, 'Coconut Oil', 260, 'a26.png', 'Common Name: Konbbari Enne, Tengina Enne etc.\r\n\r\nCoconut oil is a naturally-occurring fatty oil that is extracted from the meat of mature coconuts. It is a rich source of medium-chain triglycerides (MCTs), which are metabolized differently from long-chain triglycerides (LCTs). MCTs provide a wide range of health benefits and are rapidly absorbed into the body, which makes them perfect for cooking and weight management.'),
(23, 'Rock Sugar Kallu Sakkare Mishri', 65, 'a20.png', 'A Product by UKNTA\r\n\r\nHealth Benifits:\r\n\r\nRelieves cough and sore throat\r\nHelps boost hemoglobin levels\r\nMakes for a great digestive\r\nActs as an energy booster\r\nMay stop nose bleeding\r\nExperience the delightfully sweet and crunchy sensation of Rock Sugar Kallu Sakkare Mishri! Made from the purest sugar cane, this all-natural and unrefined treat boasts a unique texture and deep caramel taste that will transport your taste buds straight to paradise. Perfect for adding to your favourite hot or cold beverages, as a topping for desserts, or snacking on its own for a quick and energizing boost. Its golden hue, exquisite flavour, and delightful crunch will make an unforgettable impression on anyone who tries it. Satisfy your sweet tooth with Rock Sugar Kallu Sakkare Mishri--a delicious and wholesome way to indulge your cravings!'),
(24, 'SSV Horse Gram Pappad ಹುರುಳಿ ಹಪ್ಪಳ', 70, 'a36.png', 'ಹುರುಳಿ ಹಪ್ಪಳ\nIngredients:\nHorse gram, rice, chilly, salt.\nA Product by\nಎಸ್.ಎಸ್.ವಿ. ಗೃಹೋದ್ಯಮ, ಜೋಡುರಸ್ತೆ, ಕಾರ್ಕಳ.\nfssai - 11216328000188\nಮನೆಯಲ್ಲಿ ತಯಾರಿಸಿದ ಆರ್ಗಾನಿಕ್ ಆಹಾರ ಉತ್ಪನ್ನಗಳು.\n\nಆಹಾರ ಉತ್ಪನ್ನಗಳನ್ನು BSG Life ಆನ್ಲೈನ್ ಸ್ಟೋರ್ ವೆರ್ ಹೌಸ್ ಅಲ್ಲಿ ಹೆಚ್ಚು ಕಾಲ ಶೇಕರಿಸಿಡದೆ ಬೇಡಿಕೆಗೆ ಅನುಸಾರ ತಾಜಾ ಉತ್ಪನ್ನವನ್ನು ತಾಯಾರಕರಿಂದ ಪಡೆದು ತಕ್ಷಣ ರವಾನಿಸಲಾಗುವುದು.'),
(25, 'Belambar Sandivata Medicine', 320, 'a3.png', 'This holy ayurvedic remedy is a combination of barks of the different medicinal plants which are naturally grown in the Western Ghats region of the  Uttara Kannada district. This formula have effectively cured many people since over hundred years with their problems like joint pains, muscle cramps, pricking sensation, back pain, auto immune disorders such as rheumatic arthritis and other all kinds of body aches.  Method of administration: 1. Each pack consists of 4 small packets for 4 days. 2. Take 1 packet and mix/stir properly with about 100 ml of boiled and cooled water and consume at night after food. Keep taking other packets of medicine till the fourth day. 3. When you finished taking 1 set of medicine consisting 4 packets then should stop taking this medicine for a week then again go for another set of medicine that consists of 4 small packets for 4 days at night after food then again one week gap then start one more set of medicine. Note: Some people may feel more pain at the s'),
(26, 'Nisha Kashaya Powder', 45, 'a31.png', 'ನಿಶಾ ಕಷಾಯ ಪುಡಿ\r\nIngredients:\r\nClove, Jeera, Dhaniya, Sonf.\r\nA Product by\r\nNisha Home Products, Vadageri, Sirsi.\r\n\r\nಆಹಾರ ಉತ್ಪನ್ನಗಳನ್ನು BSG Life ಆನ್ಲೈನ್ ಸ್ಟೋರ್ ವೆರ್ ಹೌಸ್ ಅಲ್ಲಿ ಹೆಚ್ಚು ಕಾಲ ಶೇಕರಿಸಿಡದೆ ಬೇಡಿಕೆಗೆ ಅನುಸಾರ ತಾಜಾ ಉತ್ಪನ್ನವನ್ನು ತಾಯಾರಕರಿಂದ ಪಡೆದು ತಕ್ಷಣ ರವಾನಿಸಲಾಗುವುದು.'),
(27, 'Ginger Honey (Madhukeshwar Hegde)', 350, 'a40.png', 'Madhukeshwar Hegde, a progressive bee farmer who won the appreciation of Prime Minister Narendra Modi in the Mann Ki Baat programme, has proposed to start a bee training center in the name of Prime Minister Modi. Ginger Honey is made by famous honey cultivator Mr. Madhukeshwar Hegde in a traditional manner with added ayurvedic properties. Manufacturing: Savi Madhu Industries, Sirsi, Uttara Kannada 100% Natural; No Chemicals Added\r\n\r\nಆಹಾರ ಉತ್ಪನ್ನಗಳನ್ನು BSG Life ಆನ್ಲೈನ್ ಸ್ಟೋರ್ ವೆರ್ ಹೌಸ್ ಅಲ್ಲಿ ಹೆಚ್ಚು ಕಾಲ ಶೇಕರಿಸಿಡದೆ ಬೇಡಿಕೆಗೆ ಅನುಸಾರ ತಾಜಾ ಉತ್ಪನ್ನವನ್ನು ತಾಯಾರಕರಿಂದ ಪಡೆದು ತಕ್ಷಣ ರವಾನಿಸಲಾಗುವುದು.'),
(28, 'Neem Oil', 135, 'a21.png', 'A Product by UKNTA\r\n\r\nCommon Name: Bevina Enne etc.\r\n\r\nLoaded with nutrients, neem oil is also used in natural skin care products because it contains high levels of antioxidants, including carotenoids that help protect the skin from oxidative stress and free radical damage. As a result, cold-pressed neem oil and neem extracts are widely seen in cosmetics such as soap, hair products, hand creams and pet shampoos.'),
(29, 'Amla Oil Organic', 240, 'a25.png', 'A Product by UKNTA\r\n\r\nPacked with the natural goodness of Amla, Amla Hair Oil enriches your hair, making them strong from inside and beautiful outside to keep you looking absolutely gorgeous all day long.\r\n\r\nRichest source of Vitamin C. Enriched with Omega 3 and Antioxidants. Naturally Strengthens hair from root to tip.\r\n\r\nAmla is great for your hair because it strengthens hair follicles and reduces biomarkers of oxidative stress. It increases blood circulation in the scalp, thus stimulating hair growth. It also helps manage the problem of dandruff and prevents premature greying.'),
(30, 'Thil Ladu 200 G PonPon', 60, 'a34.png', 'Black Thil Ladu 200 g Ingredients: Black Sesame Seeds, Jaggery, Glucose liquid, Cashew nuts and Cardamom Powder. fssai certified company. Product by PonPon - Serving with tradition since 1984 Address: 1-8-122/3 Kanadka, Shakthinagar, Mangaluru - 16.\r\nಆಹಾರ ಉತ್ಪನ್ನಗಳನ್ನು BSG Life ಆನ್ಲೈನ್ ಸ್ಟೋರ್ ವೆರ್ ಹೌಸ್ ಅಲ್ಲಿ ಹೆಚ್ಚು ಕಾಲ ಶೇಕರಿಸಿಡದೆ ಬೇಡಿಕೆಗೆ ಅನುಸಾರ ತಾಜಾ ಉತ್ಪನ್ನವನ್ನು ತಾಯಾರಕರಿಂದ ಪಡೆದು ತಕ್ಷಣ ರವಾನಿಸಲಾಗುವುದು.'),
(31, 'Ankola Pain Relifi Oil', 155, 'p1.png', 'This herbal oil formulated by using precious suggestions and ancient herbal information by many famous folk Healers and natural therapists for different kinds of body pain such as rheumatic arthritis, muscles spasm, muscle weakness, joint pain, gout, neuro muscular pain and other vata disorders. Vaidya Hanumant Bommu Gouda (Chief of the Vaidya Shivu Bommu Gouda Merorial Ayurvedic Hospital, Belambar) and Shri Sheshu Gouda (Famous Todur Medicine) helps lot to make this formula and suggest this association to prepare the best pain relief oil for the betterment of the healthy society. And many other folk Healers give their precious suggestions to select effective herbal ingredients and provide proper information about exact quantity to use in the formula. This association is intended to treat people effectively with reasonable price.\r\n\r\nUse of this herbal remedy for a course of three months will give you relief from long term pains and this herbal remedy also including other herbal ingredi'),
(32, 'Gangammana Enne Oil', 350, 'a4.png', 'A Product by UKNTA\r\n\r\nIt is a Ayurvedic oil commonly used in coastal region of Uttara Kannada distric. This oil is most effective for muscle pain, broken bone/ankle pain etc. Mix half of this oil with same portion of pure cocnut oil and use.\r\n\r\nThis oil is using in many pain releif folk formulas in Uttara Kannada district.'),
(33, 'Sabja Beej (Kamakasturi)', 40, 'a13.png', 'A Product by UKNTA\r\n\r\nSabja seeds have anti-microbial and anti-fungal properties which protect us from skin infections. It will provide coolness to the body. Also, since sabja seeds are rich in vitamins and minerals, they give a natural glow to our skin.\r\n\r\nThe best way to take sabja seeds is to soak a tablespoon of them in a glass of water for about 15 minutes. You can simply drink the water with soaked seeds or add them to lemon water or in buttermilk, milk, or your desired juice. Since these seeds are high in dietary fiber, they help a person feel full and satiated.'),
(34, 'SSV Rice Pappad ಅಕ್ಕಿ ಹಪ್ಪಳ', 70, 'a37.png', 'ಅಕ್ಕಿ ಹಪ್ಪಳ\r\nIngredients:\r\nRice, salt, green chilly.\r\nA Product by\r\nಎಸ್.ಎಸ್.ವಿ. ಗೃಹೋದ್ಯಮ, ಜೋಡುರಸ್ತೆ, ಕಾರ್ಕಳ.\r\nfssai - 11216328000188\r\nಮನೆಯಲ್ಲಿ ತಯಾರಿಸಿದ ಆರ್ಗಾನಿಕ್ ಆಹಾರ ಉತ್ಪನ್ನಗಳು.\r\n\r\nಆಹಾರ ಉತ್ಪನ್ನಗಳನ್ನು BSG Life ಆನ್ಲೈನ್ ಸ್ಟೋರ್ ವೆರ್ ಹೌಸ್ ಅಲ್ಲಿ ಹೆಚ್ಚು ಕಾಲ ಶೇಕರಿಸಿಡದೆ ಬೇಡಿಕೆಗೆ ಅನುಸಾರ ತಾಜಾ ಉತ್ಪನ್ನವನ್ನು ತಾಯಾರಕರಿಂದ ಪಡೆದು ತಕ್ಷಣ ರವಾನಿಸಲಾಗುವುದು.'),
(35, 'kolimasala', 345, 'aa.png', 'wetreytgwer'),
(37, 'Mulethi Liquorice ', 50, 'a14.png', '\r\n\r\nCommon Names: Mulethi, Godekast etc.\r\n\r\nThroughout history, people have used licorice root to reduce inflammation, soothe digestive problems and treat upper respiratory issues.');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `aid` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`aid`, `password`) VALUES
('admin', '2728');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `ono` int(11) NOT NULL,
  `product_id` varchar(100) NOT NULL,
  `pname` varchar(100) NOT NULL,
  `pprice` varchar(100) NOT NULL,
  `pdesc` varchar(1200) NOT NULL,
  `pimg` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `odate` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `fno` int(250) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `message` varchar(100) NOT NULL,
  `cdate` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`fno`, `name`, `email`, `message`, `cdate`) VALUES
(3, 'abhi', 'abhi@gmail.com', '1. &quot;I\'ve experienced noticeable improvements in my skin and overall wellness since using these ', '11-07-24'),
(4, 'anup', 'anup@gmail.com', 'These Ayurvedic products are amazing—completely natural and effective for my wellness routine.', '11-07-24'),
(5, 'deva', 'deva@gmail.com', 'I\'ve seen a remarkable improvement in my health and vitality since switching to these Ayurvedic prod', '11-07-24'),
(6, 'gagan', 'gagan@gmail.com', 'These Ayurvedic products have transformed my routine with their pure ingredients and holistic benefi', '11-07-24'),
(7, 'guru', 'guru@gmail.com', 'I didn\'t notice any significant changes after using these Ayurvedic products; they didn\'t meet my ex', '11-07-24'),
(8, 'kar', 'kar@gmail.com', 'Unfortunately, the Ayurvedic products didn\'t work as well for me as I had hoped, and I found them to', '11-07-24'),
(9, 'kavana', 'kavana@gmail.com', 'I\'ve noticed a significant improvement in my health and well-being since using these Ayurvedic produ', '11-07-24'),
(10, 'manu', 'manu@gmail.com', 'These Ayurvedic products have revitalized my routine with their natural ingredients and impressive r', '11-07-24'),
(11, 'prajwal', 'prajwal@gmail.com', 'These Ayurvedic products are amazing—completely natural and effective for my wellness routine', '11-07-24'),
(12, 'darshan', 'darshanraikar307@gmail.com', 'the website is very good and very user friendly.....', '12-07-24'),
(13, 'priya', 'priya@gmail.com', 'These Ayurvedic products are amazing—completely natural and effective for my wellness routine.', '12-07-24'),
(14, 'darshan', 'darshanraikar307@gmail.com', 'good website', '12-07-24'),
(15, 'priya', 'priya@gmail.com', 'a website very user friendly', '12-07-24'),
(16, 'priya', 'priya@gmail.com', 'good website it is very user friendlly', '12-07-24'),
(17, 'Kartik Naik', 'kartik@gmail.com', 'I\'ve seen a remarkable improvement in my health and vitality since switching to these Ayurvedic prod', '14-07-24');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `oid` int(100) NOT NULL,
  `product_id` varchar(100) NOT NULL,
  `pname` varchar(100) NOT NULL,
  `pprice` varchar(100) NOT NULL,
  `pdesc` varchar(100) NOT NULL,
  `pimg` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `odate` varchar(100) NOT NULL DEFAULT 'ORDER PLACED'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`oid`, `product_id`, `pname`, `pprice`, `pdesc`, `pimg`, `email`, `odate`) VALUES
(53, '22', 'Coconut Oil', '260', 'Common Name: Konbbari Enne, Tengina Enne etc.\r\n\r\nCoconut oil is a naturally-occurring fatty oil that', 'a26.png', 'rahul@gmail.com', '15-07-24'),
(51, '22', 'Coconut Oil', '260', 'Common Name: Konbbari Enne, Tengina Enne etc.\r\n\r\nCoconut oil is a naturally-occurring fatty oil that', 'a26.png', 'darshanraikar307@gmail.com', '12-07-24'),
(52, '31', 'Ankola Pain Relifi Oil', '155', 'This herbal oil formulated by using precious suggestions and ancient herbal information by many famo', 'p1.png', 'darshanraikar307@gmail.com', '12-07-24');

-- --------------------------------------------------------

--
-- Table structure for table `registerr`
--

CREATE TABLE `registerr` (
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `mobileno` int(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `cdate` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registerr`
--

INSERT INTO `registerr` (`fname`, `lname`, `email`, `city`, `mobileno`, `password`, `cdate`) VALUES
('darshan', 'raikar', 'darshanraikar307@gmail.com', 'gokarna', 2147483647, '432', '12-07-24'),
('deva', 'stalik', 'deva@gmail.com', 'gokarna', 2147483647, 'deva123', '12-07-24'),
('Kartik', 'Naik', 'kartik@gmail.com', 'ankola', 2147483647, 'kartik@12', '14-07-24'),
('priya', 'naik', 'priya@gmail.com', 'hubli', 2147483647, '321', '12-07-24'),
('Rahul', 'Naik', 'rahul@gmail.com', 'karwar', 2147483647, 'rahul@12', '15-07-24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addproduct`
--
ALTER TABLE `addproduct`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`ono`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`fno`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`oid`);

--
-- Indexes for table `registerr`
--
ALTER TABLE `registerr`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addproduct`
--
ALTER TABLE `addproduct`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `ono` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `fno` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `oid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
