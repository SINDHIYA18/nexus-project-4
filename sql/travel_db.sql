-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 08, 2023 at 09:03 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `travel_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `user_id` int(10) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`user_id`, `user_email`, `user_pass`) VALUES
(2, 'admin@gmail.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(255) NOT NULL,
  `qty` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`p_id`, `ip_add`, `qty`) VALUES
(6, '::1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(100) NOT NULL,
  `cat_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'Business'),
(2, 'Economy'),
(3, 'Regular');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(10) NOT NULL,
  `customer_ip` varchar(255) NOT NULL,
  `customer_name` text NOT NULL,
  `customer_email` varchar(100) NOT NULL,
  `customer_pass` varchar(100) NOT NULL,
  `c_passport` varchar(100) NOT NULL,
  `customer_country` text NOT NULL,
  `customer_city` text NOT NULL,
  `customer_contact` varchar(255) NOT NULL,
  `customer_address` text NOT NULL,
  `customer_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_ip`, `customer_name`, `customer_email`, `customer_pass`, `c_passport`, `customer_country`, `customer_city`, `customer_contact`, `customer_address`, `customer_image`) VALUES
(12, '::1', 'Raja', 'raja@gmail.com', 'raja@123', 'A2096457', 'India', 'Chennai', '8345245009', '43, 44, Wellington Plaza, Mount Road  Chennai, Tamil Nadu, 600002', 'istockphoto-1141737652-612x612.jpg'),
(13, '::1', 'Vinoth', 'vinoth@gmail.com', 'vinoth@123', 'Z20436451', 'India', 'Delhi', '01122195105', 'F 1/2, Main Wazirabad Road, Chand Bagh, Delhi, 110094', 'photo-1607346256330-dee7af15f7c5.jpg'),
(14, '::1', 'Kumar', 'kumar@gmail.com', 'kumar@123', 'C5096458', 'India', 'Bangalore', '26684439', '15, 20 Main 100 Feet Road 2 Stage, Btm Layout  Bangalore, Karnataka, 560076', 'istockphoto-938849022-170667a.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `emp_id` int(100) NOT NULL,
  `emp_name` varchar(100) NOT NULL,
  `emp_email` varchar(100) NOT NULL,
  `emp_designation` varchar(100) NOT NULL,
  `emp_location` varchar(100) NOT NULL,
  `emp_address` varchar(255) NOT NULL,
  `emp_contact` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`emp_id`, `emp_name`, `emp_email`, `emp_designation`, `emp_location`, `emp_address`, `emp_contact`) VALUES
(2, 'Arjun', 'arjun@gmail.com', 'Local Agent', 'Chennai', '4/10, Sathya Nagar, Ramapuram,\r\nChennai, Tamil Nadu, India - 600089', '044-22496421'),
(5, 'Vikranth', 'vikranth@gmail.com', 'Local Guide', 'Kandy', 'B134,Ambatenna,Kandy District, Sri Lanka', '+94-514586450'),
(6, 'Rajesh', 'rajesh@gmail.com', 'Local Guide', 'Dhaka', '92/a, Moneshwor Road (1st Floor), Zikatola, Dhaka, Bangladesh - 1209', '880-2-861 8366'),
(7, 'Harish', 'harish@gmail.com', 'Local Guide', 'Bourgogne', '29 Rue de Verdun, Montceau-les-mines, Bourgogne, France', '03.71.75.35.85'),
(8, 'Prakash', 'prakash@hotmail.com', 'Travel advisor', 'Delhi', '16/6, Suneja Bhawan, Mathura Rd Main Road, Faridabad, Faridabad, Delhi, 121002', '01292288046'),
(9, 'Míngze', 'mingze@hotmail.com', 'Local Guide', 'Guangdong', '17dong 4hao An Le She Qu Gong Zuo Zhan, Shenchou - Nanshan District, Guangdong, China', '13013880638'),
(10, 'James', 'james@gmail.com', 'Local Trip Advisor', 'Georgia', '1542 Riverside Drive, Danielsville, Georgia, USA - 30633', '706-795-8127'),
(11, 'Samuel', 'samuel@gmail.com', 'Local Guide', 'Personico', 'Vallerstrasse 77, Personico, Switzerland -  6744', '+41 091 680 29 62'),
(12, 'Tusiman', 'tusiman@gmail.com', 'Local Guide', 'Medan', 'Kompl G Riatur Indah Bl A, Sumatera Utara, Medan, Indonesia - 20124', '+62 0-61-847-5566');

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `package_id` int(100) NOT NULL,
  `package_cat` int(100) NOT NULL,
  `package_type` int(100) NOT NULL,
  `package_title` varchar(255) NOT NULL,
  `package_price` int(100) NOT NULL,
  `package_desc` longtext NOT NULL,
  `package_image` text NOT NULL,
  `package_keywords` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`package_id`, `package_cat`, `package_type`, `package_title`, `package_price`, `package_desc`, `package_image`, `package_keywords`) VALUES
(1, 1, 2, 'Bali, Indonesia', 45000, 'Situated in the Lesser Sunda Islands, Bali are Indonesia’s most popular island and a significant tourist destination in the entire world thanks to its mountain and coastal areas, lush greenery, temples, delicious food and rich culture. Holidify’s Bali travel packages are customisable and budget-friendly, making them perfect for you if you’re looking for a fun getaway with friends or family!\r\n\r\nIt goes without saying that when in Bali, you have to hit up the different beaches here; Kuta Beach, Uluwatu, Nusa Dua Beach, Lovina Beach, etc. feature golden or white sand, clear blue waters and are perfect for swimming, sunbathing, boating, beach sports and more. There are numerous waterfalls here for you to visit, too, like the majestic Sekumpul Waterfalls, Tukad Cepung Waterfall and Nungnung Waterfall.\r\n\r\nFamous for its temples, Bali is home to several Hindu and Hindu-Balinese temples admired for their intricate architecture and worship, such as the Besakih Temple, known as Bali’s “Mother Temple,” Tirta Empul, Pura Ulun Danu Batur and Pula Ulun Danu Bratan. In addition, the magnificent 19th century Ubud Palace with its gardens, stunning Balinese architecture and frequently organised cultural events is a must-visit!', 'balitravel.jpg', 'bali Bali BALI tour Tour package Package PACKAGES packages tours TOURS travel TRAVEL travels TRAVELS Travel Travels Indonesia indonesia'),
(2, 2, 2, 'Bichanakandi', 30000, '<p>Location: Bichanakandi, Sylhet</p>\r\n<p>About:&nbsp;<span style=\"font-weight: bold; color: #6a6a6a; font-family: arial, sans-serif; font-size: small;\">Bichanakandi</span><span style=\"color: #545454; font-family: arial, sans-serif; font-size: small;\">&nbsp;is all about waterfalls and collection of stones, pebbles in the crystal-clear river water.The ranges of the Khasi mountain meet at point here.</span></p>\r\n<p>&nbsp;</p>\r\n<p>Our offer: 3 days &amp; 2 nights family tour package (4 person)</p>\r\n<p>Hotel: Sylhet Parjoton</p>\r\n<p>Check availability: available</p>\r\n<p>&nbsp;</p>\r\n<p>Discount: not available</p>\r\n<p>Total cost: &#8377; 13,999</p>', 'bichanakandi02.jpg', 'bichanakandi sylhet regular family Regular Family REGULAR FAMILY Bichanakandi'),
(4, 2, 3, 'Sri Lanka', 15000, '<p>Known by a flotilla of aliases, the Resplendent Isle is one of gorgeous beaches, tea plantations and ancient cities. Scuba dive, visit an elephant orphanage and a lagoon of singing fish, explore dense jungle, shrines and temples. Situated just 20 miles off India, the island formerly known as Ceylon is home to 20 million people and eight World Heritage sites. The country\'s long, brutal civil war ended in May, 2009, bringing peace, stability and a revival of tourism</p>', 'srilanka01.jpg', 'srilanka SRILANKA Srilanka SriLanka Sri Lanka sri lanka tour travel Tour Travel TRAVEL TOUR'),
(6, 3, 3, 'Taj Mahal', 18000, '<p style=\"text-align: justify;\"><strong>Location: Taj Mahal</strong></p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\"><strong>About:</strong> The Taj Mahal (meaning \"Crown of the Palace\") is an ivory-white marble mausoleum on the south bank of the Yamuna river in the Indian city of Agra. It was commissioned in 1632 by the Mughal emperor, Shah Jahan (reigned from 1628 to 1658), to house the tomb of his favourite wife, Mumtaz Mahal. The tomb is the centrepiece of a 17-hectare (42-acre) complex, which includes a mosque and a guest house, and is set in formal gardens bounded on three sides by a crenellated wall.</p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\"><strong>Our offer:</strong> 3 days &amp; 2 nights family tour package (4 person)</p>\r\n<p style=\"text-align: justify;\"><strong>Hotel:</strong> Hotel Atulyaa Taj</p>\r\n<p style=\"text-align: justify;\"><strong>Check availability:</strong> available</p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\">Discount: Available</p>\r\n<p style=\"text-align: justify;\">Total cost: ? 7000</p>', 'taj01.jpg', 'tajmahal taj mahal TajMahal Taj Mahal TAJMAHAL TAJmahal tajMAHAL regular family Regular Family tour travel Tour Travel India india INDIA'),
(7, 2, 2, 'Kathmandu', 30000, '<p style=\"text-align: left;\">Location: <strong>Kathmandu, Nepal</strong></p>\r\n<p>&nbsp;</p>\r\n<p style=\"text-align: justify;\">About: Kathmandu is the capital city of Nepal.</p>\r\n<p style=\"text-align: justify;\">It is the largest metropolis in Nepal, with a population of 1.5 million&nbsp;</p>\r\n<p style=\"text-align: justify;\">in the city proper, and 3 million in its urban agglomeration across&nbsp;</p>\r\n<p style=\"text-align: justify;\">the Kathmandu Valley, which includes the towns of Lalitpur, Kirtipur,&nbsp;</p>\r\n<p style=\"text-align: justify;\">Madhyapur Thimi, Bhaktapur making the total population to roughly 5&nbsp;</p>\r\n<p style=\"text-align: justify;\">million people and the municipalities across Kathmandu valley.&nbsp;</p>\r\n<p style=\"text-align: justify;\">Kathmandu is also the largest metropolis in the Himalayan hill region.</p>\r\n<p>&nbsp;</p>\r\n<p style=\"text-align: left;\">Our offer: 3 days &amp; 2 nights family tour package (4 person)</p>\r\n<p style=\"text-align: left;\">Hotel: Kathmandu Grand Hotel</p>\r\n<p style=\"text-align: left;\">Check availability: available</p>\r\n<p style=\"text-align: left;\">&nbsp;</p>\r\n<p style=\"text-align: left;\">Discount: 5% for MasterCard users</p>\r\n<p style=\"text-align: left;\">Total cost: ? 15,000</p>', 'nepal01.jpg', 'nepal kathmandu Nepal Kathmandu NEPAL KATHMANDU economy Economy ECONOMY family Family FAMILY'),
(8, 3, 3, 'Manali', 22000, '<p style=\"text-align: left;\">Location: <strong>Manali, Himachal Pradesh, India</strong></p>\r\n<p>&nbsp;</p>\r\n<p style=\"text-align: justify;\">About: Manali is a resort town nestled in the mountains of the Indian state of&nbsp;</p>\r\n<p style=\"text-align: justify;\">Himachal Pradesh near the northern end of the Kullu Valley, at an altitude of&nbsp;</p>\r\n<p style=\"text-align: justify;\">2,050 m (6,726 ft) in the Beas River Valley. It is located in the Kullu&nbsp;</p>\r\n<p style=\"text-align: justify;\">district, about 270 km (168 mi) north of the state capital, Shimla, 309 km&nbsp;</p>\r\n<p style=\"text-align: justify;\">(192 miles) northeast of Chandigarh and 544 km (338 miles) northeast of Delhi,&nbsp;</p>\r\n<p style=\"text-align: justify;\">the federal capital. The small town, with a population of 8,096, is the&nbsp;</p>\r\n<p style=\"text-align: justify;\">beginning of an ancient trade route to Ladakh and from there over the&nbsp;</p>\r\n<p style=\"text-align: justify;\">Karakoram Pass on to Yarkand and Khotan in the Tarim Basin. It is a popular&nbsp;</p>\r\n<p style=\"text-align: justify;\">tourist destination and serves as the gateway to Lahaul and Spiti district&nbsp;</p>\r\n<p style=\"text-align: justify;\">as well as Leh.</p>\r\n<p>&nbsp;</p>\r\n<p style=\"text-align: left;\">Our offer: 5 days &amp; 2 nights couple tour package</p>\r\n<p style=\"text-align: left;\">Hotel: Hotel Devlok Manali</p>\r\n<p style=\"text-align: left;\">Check availability: available</p>\r\n<p style=\"text-align: left;\">&nbsp;</p>\r\n<p style=\"text-align: left;\">Discount: Available - 10% for family booking</p>\r\n<p style=\"text-align: left;\">Total cost: <strong>? 25,000</strong></p>', 'manali01.jpg', 'manali Manali MANALI india India tour travel Tour TRAVEL TOUR Travel Business Couple business couple BUSINESS COUPLE'),
(9, 1, 1, 'Coxs Bazar', 27000, '<p>Cox&rsquo;s Bazar is a town on the southeast coast of Bangladesh. It&rsquo;s known for its very long, sandy beachfront, stretching from Sea Beach in the north to Kolatoli Beach in the south. Aggameda Khyang monastery is home to bronze statues and centuries-old Buddhist manuscripts. South of town, the tropical rainforest of Himchari National Park has waterfalls and many birds. North, sea turtles breed on nearby Sonadia Island.</p>', 'coxs04.jpg', 'coxs bazar business Business Couple couple BUSINESS COUPLE tour sea beach'),
(10, 1, 1, 'Switzerland', 110000, '<p><b>About:</b> Switzerland is a mountainous Central European country, home to numerous lakes, villages and the high peaks of the Alps. Its cities contain medieval quarters, with landmarks like capital Bern’s Zytglogge clock tower and Lucerne’s wooden chapel bridge. The country is also known for its ski resorts and hiking trails. Banking and finance are key industries, and Swiss watches and chocolate are world renowned.</p>\r\n<p><b>Our offer:</b> 3 days &amp; 2 nights single</p>\r\n<p><b>Hotel:</b> ABCD Hotel</p>\r\n<p><b>Check availability:</b> available</p>\r\n<p><b>Discount:</b> not available</p>\r\n<p><b>Total cost:</b> &#8377; 60,000</p>', 'swiss.jpg', 'swiss switzerland Switzerland Europe Business Single business single europe'),
(11, 3, 2, 'Jaflong', 30000, '<p>About: Jaflong is a wonderful tourist spot 56 kilometers away from the Sylhet city. The Spot filled with mountains and streams offers a wide variety of experiences for the visitors. Here you will find the rolling rocks, crystal clear water of the Goain River abound with fish and other aquatic features. The indigenous people khasia live in this region for thousands of years whose colorful lifestyle is a lifetime experience for you. Located in Gowainghat Upazila of Sylhet District.</p>\r\n<p>Hotel: Jafflong Inn Hotel, Sylhet</p>\r\n<p>Cost: 3000</p>\r\n<p>Discount 5%</p>', 'jaflong.jpg', 'jaflong Jaflong JAFLONG regular Regular REGULAR FAMILY family Family sylhet Sylhet SYLHET'),
(12, 1, 1, 'Darjeeling', 20000, '<p style=\"text-align: justify;\"><strong style=\"color: #222222; font-family: sans-serif;\">Darjeeling</strong><span style=\"color: #222222; font-family: sans-serif;\">&nbsp;is a town and a&nbsp;</span><a style=\"text-decoration-line: none; color: #0b0080; background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: sans-serif;\" title=\"Municipality\" href=\"https://en.wikipedia.org/wiki/Municipality\">municipality</a><span style=\"color: #222222; font-family: sans-serif;\">&nbsp;in the&nbsp;</span><a style=\"text-decoration-line: none; color: #0b0080; background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: sans-serif;\" title=\"India\" href=\"https://en.wikipedia.org/wiki/India\">Indian</a><span style=\"color: #222222; font-family: sans-serif;\">&nbsp;</span><a style=\"text-decoration-line: none; color: #0b0080; background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: sans-serif;\" title=\"States and union territories of India\" href=\"https://en.wikipedia.org/wiki/States_and_union_territories_of_India\">state</a><span style=\"color: #222222; font-family: sans-serif;\">&nbsp;of&nbsp;</span><a style=\"text-decoration-line: none; color: #0b0080; background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: sans-serif;\" title=\"West Bengal\" href=\"https://en.wikipedia.org/wiki/West_Bengal\">West Bengal</a><span style=\"color: #222222; font-family: sans-serif;\">. It is located in the&nbsp;</span><a class=\"mw-redirect\" style=\"text-decoration-line: none; color: #0b0080; background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: sans-serif;\" title=\"Lesser Himalaya\" href=\"https://en.wikipedia.org/wiki/Lesser_Himalaya\">Lesser Himalayas</a><span style=\"color: #222222; font-family: sans-serif;\">&nbsp;at an elevation of 6,700&nbsp;ft (2,042.2&nbsp;m).</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"color: #222222; font-family: sans-serif;\">Location: Darjeeling, India</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"color: #222222; font-family: sans-serif;\">Offer: 2days 1 night</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"color: #222222; font-family: sans-serif;\">Discount: 5% on MasterCard</span></p>\r\n<p style=\"text-align: justify;\"><strong><span style=\"color: #222222; font-family: sans-serif;\">Total Cost: &#8377;</span></strong>8000</p>', 'darjeeling.JPG', 'darjeeling Darjeeling DARJEELING india India INDIA business BUSINESS Business Single single SINGLE tour'),
(13, 2, 1, 'Tanguar Haor', 26000, '<p><strong>About:&nbsp;</strong>&nbsp;<span style=\"background-color: #ffffff; color: #333333; font-family: Raleway, sans-serif; font-size: 14px; text-align: justify;\">Tanguar haor, (also called Tangua haor), located in the Dharmapasha and Tahirpur upazilas of Sunamganj District in Bangladesh, is a unique wetland ecosystem of national importance and has come into international focus. The area of Tanguar haor including 46 villages within the haor is about 100 km2 of which 2,802.36 ha2 is wetland. It is the source of livelihood for more than 40,000 people. The Government of Bangladesh declared Tanguar haor as an Ecologically Critical Area in 1999 considering its critical condition as a result of overexploitation of its natural resources.</span></p>\r\n<p><strong>Our offer:</strong> 2 days &amp; 1 night</p>\r\n<p><strong>Hotel:</strong> ABC Hotel, Sylhet</p>\r\n<p><strong>Discount:</strong> 10% on early booking</p>\r\n<p><strong>Total Cost:</strong> &#8377;12000</p>', 'tanguar.jpg', 'tanguar haor economy Economy ECONOMY SINGLE single Single Tanguar Haor'),
(14, 3, 3, 'Rajasthan', 9000, '<p><strong>About:</strong>&nbsp;<span style=\"color: #62637c; font-family: SFProDisplay-Regular; font-size: 15px;\">Rajasthan is a state of vibrant folk dance and music, gigantic forts and palaces, spicy food, colourful and large turbans, extensive golden sand desert, camels and rich handicraft. It is therefore, an incredible place to visit in India for enjoying unforgettable holidays. Sprawling in an area of 342239 sq km, Rajasthan is perfect for history buffs, culture aficionados, adventure lovers, wildlife enthusiasts, family vacations, honeymoon, and more.</span></p>\r\n<p><span style=\"color: #222222; font-family: sans-serif;\"><strong>Our offer:</strong> 6days &amp; 5 nights couple tour</span></p>\r\n<p><span style=\"color: #222222; font-family: sans-serif;\"><strong>Hotel:</strong> Chola Hotel, Rajasthan</span></p>\r\n<p><span style=\"color: #222222; font-family: sans-serif;\"><strong>Discount:</strong> 10% for DBBL users</span></p>\r\n<p><span style=\"color: #222222; font-family: sans-serif;\"><strong>Total cost:</strong> &#8377;2000</span></p>', 'rajasthan.jpg', 'rajasthan Rajasthan RAJASTHAN regular Regular REGULAR couple Couple Couple India india INDIA'),
(15, 2, 2, 'Machu Picchu', 40000, '<p>Machu Picchu is an Incan citadel set high in the Andes Mountains in Peru, above the Urubamba River valley. Built in the 15th century and later abandoned, it&rsquo;s renowned for its sophisticated dry-stone walls that fuse huge blocks without the use of mortar, intriguing buildings that play on astronomical alignments and panoramic views. Its exact former use remains a mystery.</p>', 'ynews-machu_picchu_peru-wiki.jpg', 'picchu , machu picchu , picchu machu'),
(16, 3, 2, 'Angkor Wat', 30000, '<p>Angkor Wat, in its beauty and state of preservation, is unrivaled. Its mightiness and magnificence bespeak a pomp and a luxury surpassing that of a Pharaoh or a Shah Jahan, an impressiveness greater than that of the Pyramids, an artistic distinctiveness as fine as that of the Taj Mahal. Angkor Wat is located about six kilometers (four miles) north of Siem Reap, south of Angkor Thom. Entry and exit to Angkor Wat can only be access from its west gate.&nbsp;</p>', 'GettyImages-1304987250.jpg', 'Angor wat, angor ,wat .wat angor'),
(18, 3, 2, 'London', 90000, '<p><span style=\"color: #212529; font-family: manrope, sans-serif; font-size: 16px; letter-spacing: 0.3px;\">Standing on the Thames River, London is the capital of England as well as the most populous city in Great Britain. The city is a confluence of the old and the new and is one of the most important tourist destinations in the entire world. It is a city with numerous attractions of all sorts including great architecture and heritage.</span></p>', 'dest_pixa_12889.jpg', 'london , heritage of england , england'),
(19, 2, 1, 'Maldives', 18000, '<p><span style=\"color: #212529; font-family: manrope, sans-serif; font-size: 16px; letter-spacing: 0.3px;\">The Maldives is an archipelagic state situated in the Indian Ocean known for its luxurious water villas. A tropical haven of white sand beaches, the Maldives is located in the south of Sri Lanka and is ideal for an adventure, honeymoon, or leisure holiday.</span></p>', 'MALDIVES.jpg', 'maldives'),
(20, 1, 1, 'Phuket', 25000, '<div class=\"readMoreText compact \" style=\"box-sizing: border-box; transition: max-height 0.5s ease-out 0s; max-height: 250px; margin-bottom: 30px; overflow-y: hidden; position: relative; color: #212529; font-family: manrope, sans-serif; font-size: 16px; letter-spacing: 0.3px;\">\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\">The largest Island in all of Thailand, Phuket has everything Thailand has to offer. It is located in southern Thailand, on the Andaman sea coastline. Serviced by the Phuket International Airport, the island sees no dearth of travellers at any time of the year. Golden beaches, numerous offshore islands, upbeat markets, a high-octane nightlife and thrilling watersports characterise Phuket in a nutshell. It is also one of the fastest-accessible beach destinations in Thailand.</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;\">&nbsp;</p>\r\n</div>', 'shutterstock_775244635_20191021165145.jpg', 'buddha, single, phuket,,thailand'),
(21, 3, 3, ' Eiffel Tower', 115000, '<p><span style=\"font-family: Tahoma, Geneva, sans-serif;\"><span style=\"font-size: 12px;\">The most enthralling allurement in Paris is the Eiffel Tower; the quintessential monument which finds its place among the Seven Wonders of the World. A masterpiece of architectural excellence, the Eiffel Tower is a must-see attraction in Paris.</span></span></p>', 'world-tourist-attractions-eiffel-tower-flowers-spring.jpg', 'lovers , couples , effiel tower , paris , france , world love symbol'),
(22, 1, 1, 'Sydney Opera House', 110000, '<p><span style=\"font-family: sans-serif; font-size: 18px;\">Like many other attractions around the world, the Sydney Opera House is one of those places that is easy to identify and obviously associated with Australia. A photo of yourself in front of the white sails screams Australia.</span></p>', 'top-attractions-in-the-world-sydney-opera-house.jpg', 'sydney , australia'),
(23, 2, 1, 'Forbidden City', 80000, '<p>&nbsp;The Great Wall, the Forbidden City, also known as the Imperial Palace, in Beijing is one of the top places to visit in China. The sprawling complex dates from the 14th and 15th centuries and is a spectacular example of historical China.</p>', 'top-attractions-in-the-world-china-forbidden-city.jpg', 'china , single , economy'),
(24, 3, 3, 'Central Park', 100000, '<p><span style=\"font-family: sans-serif; font-size: 18px;\">Loved by generations of New Yorkers and by people from around the world, Central Park is one of the most famous public spaces in the world.</span></p>', 'world-top-rated-tourist-attractions-central-park-new-york-city.jpg', 'central park , newyork , lovers , couples');

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE `types` (
  `type_id` int(100) NOT NULL,
  `type_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`type_id`, `type_title`) VALUES
(1, 'Single'),
(2, 'Family'),
(3, 'Couple');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`emp_id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`package_id`);

--
-- Indexes for table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`type_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `emp_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `package_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `types`
--
ALTER TABLE `types`
  MODIFY `type_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
