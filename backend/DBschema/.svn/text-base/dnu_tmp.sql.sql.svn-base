-- phpMyAdmin SQL Dump
-- version 3.3.7deb7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 17, 2012 at 08:54 AM
-- Server version: 5.0.51
-- PHP Version: 5.3.3-7+squeeze8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dnu_tmp`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `idadmin` int(11) NOT NULL auto_increment,
  `login` varchar(20) character set utf8 collate utf8_unicode_ci NOT NULL,
  `password` varchar(32) character set utf8 collate utf8_unicode_ci NOT NULL,
  `admintype` tinyint(4) NOT NULL default '3',
  `salt` varchar(3) character set utf8 collate utf8_unicode_ci NOT NULL,
  `status` int(1) NOT NULL,
  `lastloggedin` datetime default NULL,
  `createdon` datetime NOT NULL,
  PRIMARY KEY  (`idadmin`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `admin`
--


-- --------------------------------------------------------

--
-- Table structure for table `business`
--

CREATE TABLE IF NOT EXISTS `business` (
  `idbusiness` int(11) NOT NULL auto_increment,
  `idcategory` int(11) default NULL,
  `idmarket` int(11) NOT NULL,
  `login` varchar(50) character set utf8 collate utf8_unicode_ci NOT NULL,
  `password` varchar(32) character set utf8 collate utf8_unicode_ci NOT NULL,
  `salt` varchar(3) character set utf8 collate utf8_unicode_ci NOT NULL,
  `facebookid` double default NULL,
  `lastloggedin` datetime default NULL,
  `twitterUsername` varchar(45) character set utf8 collate utf8_unicode_ci default NULL,
  `twitterpwd` varchar(32) character set utf8 collate utf8_unicode_ci NOT NULL,
  `uniquekey` varchar(16) character set utf8 collate utf8_unicode_ci default NULL,
  `salt1` int(11) default NULL,
  `salt2` int(11) default NULL,
  `name` varchar(100) character set utf8 collate utf8_unicode_ci default NULL,
  `email` varchar(50) character set utf8 collate utf8_unicode_ci default NULL,
  `bio` text character set utf8 collate utf8_unicode_ci,
  `url` varchar(256) character set utf8 collate utf8_unicode_ci default NULL,
  `twitterfollowers` int(11) NOT NULL,
  `image` varchar(250) character set utf8 collate utf8_unicode_ci default NULL,
  `thumbimage` varchar(250) character set utf8 collate utf8_unicode_ci default NULL,
  `ranking` float NOT NULL,
  `createon` datetime NOT NULL,
  `totalvisits` int(11) NOT NULL,
  `totaldeals` int(11) NOT NULL,
  `totaldealviews` int(11) NOT NULL default '0',
  `totaldealvotes` int(11) NOT NULL default '0',
  `dnufollowers` int(11) NOT NULL,
  `status` int(1) NOT NULL,
  `address` varchar(100) character set utf8 collate utf8_unicode_ci default NULL,
  `address2` varchar(256) character set utf8 collate utf8_unicode_ci default NULL,
  `city` varchar(50) character set utf8 collate utf8_unicode_ci default NULL,
  `idstate` char(3) character set utf8 collate utf8_unicode_ci default NULL,
  `zip` varchar(10) character set utf8 collate utf8_unicode_ci default NULL,
  `phone1` varchar(20) character set utf8 collate utf8_unicode_ci default NULL,
  `phone2` varchar(20) character set utf8 collate utf8_unicode_ci default NULL,
  `hours` varchar(45) character set utf8 collate utf8_unicode_ci default NULL,
  `longitude` double default NULL,
  `latitude` double default NULL,
  `logintoken` varchar(50) character set utf8 collate utf8_unicode_ci default NULL,
  `isimageupdated` tinyint(3) NOT NULL,
  `claimedon` datetime default NULL,
  `foursquare_id` int(11) default NULL,
  `foursquare_lastpolled` datetime default NULL,
  PRIMARY KEY  (`idbusiness`),
  KEY `fk_business_idcategory` (`idcategory`),
  KEY `fk_business_idmarket` (`idmarket`),
  KEY `business_twitterusername` (`twitterUsername`),
  KEY `business_status` (`status`),
  KEY `business_status_idmarket` (`status`,`idmarket`),
  KEY `business_status_idmarket_category` (`status`,`idmarket`,`idcategory`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='This will store business user details' AUTO_INCREMENT=9119 ;

--
-- Dumping data for table `business`
--

INSERT INTO `business` (`idbusiness`, `idcategory`, `idmarket`, `login`, `password`, `salt`, `facebookid`, `lastloggedin`, `twitterUsername`, `twitterpwd`, `uniquekey`, `salt1`, `salt2`, `name`, `email`, `bio`, `url`, `twitterfollowers`, `image`, `thumbimage`, `ranking`, `createon`, `totalvisits`, `totaldeals`, `totaldealviews`, `totaldealvotes`, `dnufollowers`, `status`, `address`, `address2`, `city`, `idstate`, `zip`, `phone1`, `phone2`, `hours`, `longitude`, `latitude`, `logintoken`, `isimageupdated`, `claimedon`, `foursquare_id`, `foursquare_lastpolled`) VALUES
(1, 5, 7, '', '', '', NULL, '2010-06-29 02:22:08', 'polkadotsnews', '', '', 0, 0, 'polkadotsnews', '', 'Latest Trends and Vintage Fashion. 2 Boutiques in LA + www.polkadotsandmoonbeams.com. See y a!', 'http://www.polkadotsandmoonbeams.com', 0, 'polkadotsnews_Miss-Moonbeams_head_faceboo_normal.gif', 'polkadotsnews_Miss-Moonbeams_head_faceboo_normal.gif', 18, '2010-06-29 02:22:08', 0, 6, 60, 0, 0, 1, '8381 W. 3rd St,LA 90048', '', '', '', '', '', NULL, '', -118.3729308, 34.0729866, NULL, 1, NULL, NULL, '2010-09-14 07:09:35'),
(2, 5, 7, '', '', '', NULL, '2010-06-29 02:22:09', 'thefastlife', '', '', 0, 0, 'thefastlife', '', '', '', 0, 'thefastlife_011-1_1__normal.jpg', 'thefastlife_011-1_1__normal.jpg', 101.3, '2010-06-29 02:22:09', 0, 29, 433, 0, 0, 1, '', '', '', '', '', '', NULL, '', -118.2436849, 34.0522342, NULL, 1, NULL, NULL, '2010-09-14 07:09:36'),
(3, 5, 7, '', '', '', NULL, '2010-06-29 02:22:11', 'TalesAndToys', '', '', 0, 0, 'TalesAndToys', '', 'A specialty book &amp;amp; toy store', 'http://www.talesandtoys.blogspot.com', 0, 'TalesAndToys_Store_007__3__normal.jpg', 'TalesAndToys_Store_007__3__normal.jpg', 23.9, '2010-06-29 02:22:11', 0, 8, 79, 0, 0, 1, 'Venice, CA', '', '', '', '', '', NULL, '', -118.4600787, 33.9908445, NULL, 1, NULL, NULL, '2010-09-14 07:09:36'),
(4, 5, 7, '', '', '', NULL, '2010-06-29 02:22:12', 'DVFLosAngeles', '', '', 0, 0, 'DVFLosAngeles', '', 'Live from the DVF shop in Los Angeles', 'http://www.dvf.com', 0, 'DVFLosAngeles_dvf_color_LA_normal.jpg', 'DVFLosAngeles_dvf_color_LA_normal.jpg', 18.7, '2010-06-29 02:22:12', 0, 7, 47, 0, 0, 1, '8407 Melrose Avenue, LA', '', '', '', '', '', NULL, '', -118.3736442, 34.0833351, NULL, 1, NULL, NULL, '2010-09-14 07:09:36'),
(5, 5, 7, '', '', '', NULL, '2010-06-29 02:22:14', 'ShopWestsidePav', '', '', 0, 0, 'ShopWestsidePav', '', 'Get all the latest in sales, promotions, events and much more from Westside Pavilion''s very own fashion insider, Ashley!', 'http://www.westsidepavilion.com/', 0, 'ShopWestsidePav_wp_normal.jpg', 'ShopWestsidePav_wp_normal.jpg', 86.4, '2010-06-29 02:22:14', 0, 30, 224, 0, 1, 1, 'Los Angeles, CA', '', '', '', '', '', NULL, '', -118.2436849, 34.0522342, NULL, 1, NULL, NULL, '2010-09-14 07:09:36'),
(6, 5, 7, '', '', '', NULL, '2010-06-29 02:22:15', 'BestBuyLA', '', '', 0, 0, 'BestBuyLA', '', 'Official Best Buy Los Angeles Twitter feed. Ask local BlueShirt experts any CE questions - mobile, home theater, computing, cameras, gaming and more!', 'http://www.bestbuy.com', 0, 'BestBuyLA_n12699262021_9872_normal.jpg', 'BestBuyLA_n12699262021_9872_normal.jpg', 0, '2010-06-29 02:22:15', 0, 0, 0, 0, 0, 1, 'Los Angeles', '', '', '', '', '', NULL, '', -118.2436849, 34.0522342, NULL, 1, NULL, NULL, '2010-09-14 07:09:36'),
(7, 5, 7, '', '', '', NULL, '2010-06-29 02:22:16', 'HandHCenter', '', '', 0, 0, 'Hollywood & Highland', '', 'H&amp;H is a vibrant shopping, dining, &amp; entertainment district along the world''s most famous boulevard housing over 60 shops, restaurants, &amp; popular night spots.', 'http://www.hollywoodandhighland.com', 0, 'HandHCenter_Robert_Mora__65__normal.jpg', 'HandHCenter_Robert_Mora__65__normal.jpg', 159.5, '2010-06-29 02:22:16', 0, 52, 555, 0, 0, 1, '6801 Hollywood Boulevard', '', 'Hollywood', 'CA', '', '', NULL, '', -80.2232387, 26.0098628, NULL, 1, NULL, NULL, '2010-09-14 07:09:36'),
(8, 5, 7, '', '', '', NULL, '2010-06-29 02:22:18', 'WestfieldCC', '', '', 0, 0, 'Westfield CC', '', 'Discover the finest open-air shopping destination in Los Angeles at Westfield Century City, where luxury is the star attraction.', 'http://westfield.com/centurycity', 0, 'WestfieldCC_Twitter_W_Square_Icon_normal.jpg', 'WestfieldCC_Twitter_W_Square_Icon_normal.jpg', 377.6, '2010-06-29 02:22:18', 0, 131, 1096, 1, 0, 1, '10250 Santa Monica Blvd', '', 'los angeles', 'CA', '90067', '', NULL, '', -118.419048, 34.058603, NULL, 1, NULL, NULL, '2010-09-14 07:09:37'),
(9, 5, 7, '', '', '', NULL, '2010-06-29 02:22:20', 'SBGalleria', '', '', 0, 0, 'Galleria at South Bay', '', 'South Bay Galleria is a premier shopping destination boasting 3 levels of over 140 fine retailers including Nordstrom, Macy&rsquo;s, Banana Republic and AMC 16 Theatr', 'http://www.southbaygalleria.com', 0, 'SBGalleria_twitter_designTemplate_SBG_03_normal.gif', 'SBGalleria_twitter_designTemplate_SBG_03_normal.gif', 184.9, '2010-06-29 02:22:20', 0, 56, 729, 0, 0, 1, '1815 Hawthorne Boulevard', '', 'redondo beach', 'CA', '90278', '', NULL, '', -118.3527299, 33.8701639, NULL, 1, NULL, NULL, '2010-09-14 07:09:37'),
(10, 5, 7, '', '', '', NULL, '2010-06-29 02:22:21', 'Citadel_Outlets', '', '', 0, 0, 'Citadel Outlets', '', 'DC here, keeping you up to date on all the latest deals &amp; events @ LA''s ONLY Outlet Shops!', 'http://www.citadeloutlets.com', 0, 'Citadel_Outlets_Citadel_Horizontal_copy_normal.jpg', 'Citadel_Outlets_Citadel_Horizontal_copy_normal.jpg', 101.5, '2010-06-29 02:22:21', 0, 31, 395, 0, 0, 1, 'Los Angeles, CA', '', '', '', '', '', NULL, '', -118.2436849, 34.0522342, NULL, 1, NULL, NULL, '2010-09-14 07:09:37'),
(11, 5, 7, '', '', '', NULL, '2010-06-29 02:22:23', 'SOGalleria', '', '', 0, 0, 'SOGalleria', '', 'The landmark Sherman Oaks Galleria is a retail, dining &amp; entertainment complex located @ the interchange of the 101/Ventura and 405/San Diego freeways.', 'http://www.shermanoaksgalleria.com', 0, 'SOGalleria_youtube-logo-0202_normal.jpg', 'SOGalleria_youtube-logo-0202_normal.jpg', 13.4, '2010-06-29 02:22:23', 0, 6, 14, 0, 0, 1, 'Sherman Oaks, CA', '', '', '', '', '', NULL, '', -118.44833, 34.15111, NULL, 1, NULL, NULL, '2010-09-14 08:30:01'),
(12, 5, 7, '', '', '', NULL, '2010-06-29 02:22:24', 'ShopTheOaks', '', '', 0, 0, 'The Oaks', '', 'Welcome! Get the latest news and event at The Oaks mall, straight from its own fashion insiders.', 'http://www.shoptheoaksmall.com/', 0, 'ShopTheOaks_OaksLogo2008_NO_LOS_normal.jpg', 'ShopTheOaks_OaksLogo2008_NO_LOS_normal.jpg', 65.7, '2010-06-29 02:22:24', 0, 27, 117, 0, 0, 1, '350 West Hillcrest Drive', '', 'Thousand Oaks', 'CA', '', '', NULL, '', -118.8892912, 34.184742, NULL, 1, NULL, NULL, '2010-09-14 08:30:02'),
(13, 5, 7, '', '', '', NULL, '2010-06-29 02:22:26', 'ShopLosCerritos', '', '', 0, 0, 'Los Cerritos Mall', '', 'Los Cerritos Center''s Miss M here to give you the scoop on what''s happening in fashion, food and fun', 'http://www.shoploscerritos.com', 0, 'ShopLosCerritos_los-logo_normal.jpg', 'ShopLosCerritos_los-logo_normal.jpg', 201.7, '2010-06-29 02:22:26', 0, 69, 637, 0, 0, 1, 'Los Cerritos Mall', '', 'cerritos', 'CA', '', '', NULL, '', -118.0929243, 33.8630658, NULL, 1, NULL, NULL, '2010-09-14 08:30:02'),
(14, 5, 7, '', '', '', NULL, '2010-06-29 02:22:27', 'OrigamiVinyl', '', '', 0, 0, 'Origami Vinyl', '', 'We are a vinyl record shop in Echo Park, CA. Check out our blog: www.origamimusic.blogspot.com', 'http://www.origamiorigami.com', 0, 'OrigamiVinyl_origami_unicorn_final_normal.jpg', 'OrigamiVinyl_origami_unicorn_final_normal.jpg', 189.9, '2010-06-29 02:22:27', 0, 67, 559, 0, 0, 1, '1816 W. Sunset Boulevard', '', 'los angeles', 'CA', '', '', NULL, '', -118.2599117, 34.0777197, NULL, 1, NULL, 67232, '2010-09-28 16:30:32'),
(15, 5, 7, '', '', '', NULL, '2010-06-29 02:22:29', 'JRansomLA', '', '', 0, 0, 'JRansomLA', '', 'Los Angeles based on-line retailer, JRansomLA.com.  Selling exclusive Men''s and Women''s Clothing and Accessories', 'http://www.JRansomLA.com', 0, 'JRansomLA_JRansomLogo4_normal.jpg', 'JRansomLA_JRansomLogo4_normal.jpg', 2.2, '2010-06-29 02:22:29', 0, 1, 2, 0, 0, 1, 'Los Angeles, CA', '', '', '', '', '', NULL, '', -118.2436849, 34.0522342, NULL, 1, NULL, NULL, '2010-09-14 08:30:02'),
(16, 5, 7, '', '', '', NULL, '2010-06-29 02:22:30', 'scoutla', '', '', 0, 0, 'scoutla', '', 'scout boutique in hollywood featuring the scout collection and handpicked vintage clothing', 'http://www.scoutla.net', 0, 'scoutla_slutthumb_normal.jpg', 'scoutla_slutthumb_normal.jpg', 11.1, '2010-06-29 02:22:30', 0, 4, 31, 0, 0, 1, 'hollywood, california', '', '', '', '', '', NULL, '', -118.32583, 34.09833, NULL, 1, NULL, NULL, '2010-09-14 08:30:02'),
(17, 5, 7, '', '', '', NULL, '2010-06-29 02:22:31', 'anamu', '', '', 0, 0, 'anamu', '', 'one-of-a-kind clutch purses made from beautiful reclaimed scarves and materials. Love style, sustainability, LA, and passionate people', 'http://www.anamuonline.com', 0, 'anamu_Etsy_Thumb_normal.png', 'anamu_Etsy_Thumb_normal.png', 24.5, '2010-06-29 02:22:31', 0, 10, 45, 0, 0, 1, 'Los Angeles', '', '', '', '', '', NULL, '', -118.2436849, 34.0522342, NULL, 1, NULL, NULL, '2010-09-14 08:30:02'),
(18, 5, 7, '', '', '', NULL, '2010-06-29 02:22:33', 'TENOVERSIX', '', '', 0, 0, 'TENOVERSIX', '', 'Shop. Mens/Womens. Fashion. Design. Art. Books. and More.', 'http://www.tenover6.com', 0, 'TENOVERSIX_tenoversix_logo2SQUARE_normal.jpg', 'TENOVERSIX_tenoversix_logo2SQUARE_normal.jpg', 32.2, '2010-06-29 02:22:33', 0, 11, 102, 0, 0, 1, 'Los Angeles', '', '', '', '', '', NULL, '', -118.2436849, 34.0522342, NULL, 1, NULL, NULL, '2010-09-14 08:30:03'),
(19, 5, 7, '', '', '', NULL, '2010-06-29 02:22:34', 'VionnetBoutique', '', '', 0, 0, 'VionnetBoutique', '', '', 'http://vionnetboutique.com/', 0, 'VionnetBoutique_3361303257_cfa87af51b_normal.jpg', 'VionnetBoutique_3361303257_cfa87af51b_normal.jpg', 23.9, '2010-06-29 02:22:34', 0, 9, 59, 0, 0, 1, 'Los Angeles, CA', '', '', '', '', '', NULL, '', -118.2436849, 34.0522342, NULL, 1, NULL, NULL, '2010-09-14 08:30:03'),
(20, 5, 7, '', '', '', NULL, '2010-06-29 02:22:35', 'ShopIntuition', '', '', 0, 0, 'ShopIntuition', '', 'Intuition has become known as the hottest boutique in Hollywood. Catering to celebrities and Hollywood wives ... Intuition continues to set the trends.', 'http://shopintuition.com', 0, 'ShopIntuition_store_exterior_1__normal.jpg', 'ShopIntuition_store_exterior_1__normal.jpg', 0, '2010-06-29 02:22:35', 0, 0, 0, 0, 0, 1, 'Los Angeles, CA', '', '', '', '', '', NULL, '', -118.2436849, 34.0522342, NULL, 1, NULL, NULL, '2010-09-14 08:30:05'),
(21, 5, 7, '', '', '', NULL, '2010-06-29 02:22:37', 'CraftLosAngeles', '', '', 0, 0, 'CraftLosAngeles', '', 'A proper men''s shop for improper gentlemen', 'http://CraftWorkWear.blogspot.com', 0, 'CraftLosAngeles_Craft-shirts_normal.jpg', 'CraftLosAngeles_Craft-shirts_normal.jpg', 15.7, '2010-06-29 02:22:37', 0, 5, 57, 0, 0, 1, 'ÃƒÅ“T: 34.083356,-118.378231', '', '', '', '', '', NULL, '', -118.2436849, 34.0522342, NULL, 1, NULL, NULL, '2010-09-14 07:09:37'),
(22, 5, 7, '', '', '', NULL, '2010-06-29 02:22:38', 'MelroseTrdgPost', '', '', 0, 0, 'Melrose Tardingg Post', '', 'The Melrose Trading Post is a weekly antiques, art and collectibles market that serves the community as a fundraiser for Fairfax High School- every Sunday 9 -5.', 'http://www.melrosetradingpost.org', 0, 'MelroseTrdgPost_mtp_banner_normal.jpg', 'MelroseTrdgPost_mtp_banner_normal.jpg', 84.1, '2010-06-29 02:22:38', 0, 31, 221, 0, 0, 1, '544 North Fairfax Avenue', '', 'los angeles', 'CA', '', '', NULL, '', -118.3614307, 34.0808285, NULL, 1, NULL, NULL, '2010-09-14 07:09:37'),
(23, 5, 7, '', '', '', NULL, '2010-06-29 02:22:40', 'openingceremony', '', '', 0, 0, 'openingceremony', '', '', 'http://openingceremony.us', 0, 'openingceremony_OCflagLogo_normal.jpg', 'openingceremony_OCflagLogo_normal.jpg', 50, '2010-06-29 02:22:40', 0, 18, 140, 0, 0, 1, 'NY - LA - TOKYO - WORLDWIDE', '', '', '', '', '', NULL, '', -74.0059729, 40.7142691, NULL, 1, NULL, NULL, '2010-09-14 07:09:37'),
(24, 5, 7, '', '', '', NULL, '2010-06-29 02:22:41', 'HillaryRush', '', '', 0, 0, 'Hillary Rush', '', 'Classy, Sassy and Kick Your Ass-y.', 'http://www.hillaryrush.com', 0, 'HillaryRush_Storefront_Picture_normal.jpg', 'HillaryRush_Storefront_Picture_normal.jpg', 50.4, '2010-06-29 02:22:41', 0, 19, 124, 0, 0, 1, '8222 West 3rd Street', '', 'los angeles', 'CA', '90048', '', NULL, '', -118.3687222, 34.072405, NULL, 1, NULL, NULL, '2010-09-14 07:09:37'),
(25, 5, 7, '', '', '', NULL, '2010-06-29 02:22:43', 'ConfederacyBTQ', '', '', 0, 0, 'ConfederacyBTQ', '', 'The retail brainchild of childhood duo, Ilaria Urbinati &amp; Danny Masterson.                4661 Hollywood Blvd 90027', 'http://www.shopconfederacy.com', 0, 'ConfederacyBTQ_Picture_1_normal.png', 'ConfederacyBTQ_Picture_1_normal.png', 9.1, '2010-06-29 02:22:43', 0, 3, 31, 0, 0, 1, 'Los Angeles, CA', '', '', '', '', '', NULL, '', -118.2436849, 34.0522342, NULL, 1, NULL, NULL, '2010-09-14 07:09:37'),
(26, 5, 7, '', '', '', NULL, '2010-06-29 02:22:45', 'RonHermanDotCom', '', '', 0, 0, 'RonHermanDotCom', '', 'The Official RonHerman.Com Twitter. Get the inside scoop on sales, promotions, new designers and random things we love at RonHerman.com', 'http://www.RonHerman.com', 0, 'RonHermanDotCom_BAGFORTWITTER_normal.jpg', 'RonHermanDotCom_BAGFORTWITTER_normal.jpg', 16.3, '2010-06-29 02:22:45', 0, 6, 43, 0, 0, 1, 'Los Angeles', '', '', '', '', '', NULL, '', -118.2436849, 34.0522342, NULL, 1, NULL, NULL, '2010-09-14 07:09:38'),
(27, 5, 7, '', '', '', NULL, '2010-06-29 02:22:47', 'curveboutique', '', '', 0, 0, 'curveboutique', '', 'the cutting edge boutique known for selling style, not just trends.', 'http://www.shopcurve.com', 0, 'curveboutique_n6517363996_9712_normal.jpg', 'curveboutique_n6517363996_9712_normal.jpg', 13.2, '2010-06-29 02:22:47', 0, 5, 32, 0, 0, 1, 'ÃƒÅ“T: 34.076956,-118.383673', '', '', '', '', '', NULL, '', -118.2436849, 34.0522342, NULL, 1, NULL, NULL, '2010-09-14 07:09:38'),
(28, 5, 7, '', '', '', NULL, '2010-06-29 02:22:48', 'Fred_Segal', '', '', 0, 0, 'Fred_Segal', '', '', 'http://www.fredsegal.com', 0, 'Fred_Segal_Fred_Segal_logo_normal.jpg', 'Fred_Segal_Fred_Segal_logo_normal.jpg', 19.7, '2010-06-29 02:22:48', 0, 6, 77, 0, 0, 1, 'Santa Monica, California', '', '', '', '', '', NULL, '', -118.4911912, 34.0194543, NULL, 1, NULL, NULL, '2010-09-14 07:09:38'),
(29, 5, 7, '', '', '', NULL, '2010-06-29 02:22:50', 'FredSegalFeet', '', '', 0, 0, 'FredSegalFeet', '', 'Find your shoe.  Find your look. Follow us for shoe/bag of the month, new sales and upcoming special events.', 'http://www.fredsegalfeet.com', 0, 'FredSegalFeet_weird_shoe5_normal.jpg', 'FredSegalFeet_weird_shoe5_normal.jpg', 0, '2010-06-29 02:22:50', 0, 0, 0, 0, 0, 1, 'Melrose Ave, Los Angeles', '', '', '', '', '', NULL, '', -118.3377048, 34.0834506, NULL, 1, NULL, NULL, '2010-09-14 07:09:38'),
(30, 5, 7, '', '', '', NULL, '2010-06-29 02:22:51', 'FredSegalFunSM', '', '', 0, 0, 'FredSegalFunSM', '', 'THE Shopping destination of the fabulous.  Celebs, Fashion Advice, New Shipment updates.', 'http://www.FredSegalFun.com', 0, 'FredSegalFunSM_IMG00680_normal.jpg', 'FredSegalFunSM_IMG00680_normal.jpg', 2.5, '2010-06-29 02:22:51', 0, 1, 5, 0, 0, 1, '500 Broadway Santa Monica Ca', '', '', '', '', '', NULL, '', -118.491816, 34.015593, NULL, 1, NULL, NULL, '2010-09-14 07:09:38'),
(31, 5, 7, '', '', '', NULL, '2010-06-29 02:22:52', 'REVOLVEclothing', '', '', 0, 0, 'REVOLVEclothing', '', 'REVOLVE offers one of the largest selections of women''s and men''s fashion online, from emerging and hard-to-find labels to your most beloved high-end designers.', 'http://www.REVOLVEClothing.com', 0, 'REVOLVEclothing_twitter_logos_revolve_normal.jpg', 'REVOLVEclothing_twitter_logos_revolve_normal.jpg', 47.4, '2010-06-29 02:22:52', 0, 16, 154, 0, 0, 1, 'Los Angeles, CA', '', '', '', '', '', NULL, '', -118.2436849, 34.0522342, NULL, 1, NULL, NULL, '2010-09-14 08:30:06'),
(32, 5, 7, '', '', '', NULL, '2010-06-29 02:22:54', 'beckleyboutique', '', '', 0, 0, 'beckleyboutique', '', 'Beckley is a luxury boutique in the heart of West Hollywood, find the perfect mix of designers while enjoying champagne in the lounge', 'http://www.beckleyboutique.com/beckley/', 0, 'beckleyboutique_Lucky_May_Cover_normal.jpg', 'beckleyboutique_Lucky_May_Cover_normal.jpg', 30.2, '2010-06-29 02:22:54', 0, 12, 62, 0, 0, 1, 'West Hollywood, CA', '', '', '', '', '', NULL, '', -118.3617443, 34.0900091, NULL, 1, NULL, NULL, '2010-09-14 08:30:06'),
(33, 5, 7, '', '', '', NULL, '2010-06-29 02:22:55', 'fairefroufrou', '', '', 0, 0, 'Faire Frou Frou', '', 'The ultimate luxury lingerie boutique both online &amp; in Los Angeles; designer lingerie, loungewear, swim &amp; more. Shop with us at www.fairefroufrou.com', 'http://www.froufroufashionista.blogspot.com', 0, 'fairefroufrou_ERIC_log_HOT_PINK_best_pink_bg_SML_normal.jpg', 'fairefroufrou_ERIC_log_HOT_PINK_best_pink_bg_SML_normal.jpg', 84.5, '2010-06-29 02:22:55', 0, 29, 265, 0, 0, 1, '13017a Ventura Blvd.', '', 'Studio City', 'CA', '', '', NULL, '', -118.4167302, 34.1456373, NULL, 1, NULL, NULL, '2010-09-14 08:30:06'),
(34, 5, 7, '', '', '', NULL, '2010-06-29 02:22:56', 'OtisandMaclain', '', '', 0, 0, 'OtisandMaclain', '', '', 'http://www.otisandmaclain.com', 0, 'OtisandMaclain_Otis_MaclainTank_normal.jpg', 'OtisandMaclain_Otis_MaclainTank_normal.jpg', 17.7, '2010-06-29 02:22:56', 0, 5, 17, 1, 0, 1, 'Los Angeles', '', '', '', '', '', NULL, '', -118.2436849, 34.0522342, NULL, 1, NULL, NULL, '2010-09-14 08:30:06'),
(35, 5, 7, '', '', '', NULL, '2010-06-29 02:22:58', 'MadisonLA', '', '', 0, 0, 'MadisonLA', '', '.MADISON Los Angeles is known to fashionistas far and wide as a one-stop-shop for all the current trends and classic fashion.', 'http://Madisonlosangeles.com', 0, 'MadisonLA_4601_84252592529_84244702529_1832966_7140659_n_normal.jpg', 'MadisonLA_4601_84252592529_84244702529_1832966_7140659_n_normal.jpg', 7.4, '2010-06-29 02:22:58', 0, 3, 14, 0, 0, 1, 'Los Angeles', '', '', '', '', '', NULL, '', -118.2436849, 34.0522342, NULL, 1, NULL, NULL, '2010-09-14 08:30:06'),
(36, 5, 7, '', '', '', NULL, '2010-06-29 02:22:59', 'elisabpasadena', '', '', 0, 0, 'elisabpasadena', '', 'Elisa B. is Old Pasadena''s finest upscale fashion destination.', 'http://www.elisab.com', 0, 'elisabpasadena_elisaB_twitterlogo_normal.PNG', 'elisabpasadena_elisaB_twitterlogo_normal.PNG', 10.5, '2010-06-29 02:22:59', 0, 4, 25, 0, 0, 1, 'Pasadena, California', '', '', '', '', '', NULL, '', -118.1445155, 34.1477849, NULL, 1, NULL, NULL, '2010-09-14 08:30:06'),
(37, 5, 7, '', '', '', NULL, '2010-06-29 02:23:01', 'PetroZilliaBtq', '', '', 0, 0, 'PetroZilliaBtq', '', 'We live, love, laugh fashion! In love with anyone/anything fabulous, has lots of Petro Zillia but also carry nOir, Anna Sui, Hoss, Karen Zambos n more&hellip;@pinknony', 'http://www.shoppetrozillia.com', 0, 'PetroZilliaBtq_twitterProfilePhoto_normal.jpg', 'PetroZilliaBtq_twitterProfilePhoto_normal.jpg', 44.4, '2010-06-29 02:23:01', 0, 15, 144, 0, 0, 1, '8218 W 3rd St in LA', '', '', '', '', '', NULL, '', -118.368673, 34.072244, NULL, 1, NULL, NULL, '2010-09-14 08:30:06'),
(38, 5, 7, '', '', '', NULL, '2010-06-29 02:23:03', 'kitsonmelrose', '', '', 0, 0, 'kitsonmelrose', '', '', '', 0, 'kitsonmelrose_IMG00584-20091103-1023_1__normal.jpg', 'kitsonmelrose_IMG00584-20091103-1023_1__normal.jpg', 0, '2010-06-29 02:23:03', 0, 0, 0, 0, 0, 1, 'ÃƒÅ“T: 34.083712,-118.384312', '', '', '', '', '', NULL, '', -118.2436849, 34.0522342, NULL, 1, NULL, NULL, '2010-09-14 08:30:07'),
(39, 5, 7, '', '', '', NULL, '2010-06-29 02:23:04', 'KitsonStudio', '', '', 0, 0, 'KitsonStudio', '', 'Kitson Studio: Aims to satisfy all clients and showcase all in-fashion merchandise.', 'http://www.shopkitson.com', 0, 'KitsonStudio_store_front_normal.jpg', 'KitsonStudio_store_front_normal.jpg', 0, '2010-06-29 02:23:04', 0, 0, 0, 0, 0, 1, '142 N. Robertson Blvd.', '', '', '', '', '', NULL, '', -118.383462, 34.074205, NULL, 1, NULL, NULL, '2010-09-14 08:30:07'),
(40, 5, 7, '', '', '', NULL, '2010-06-29 02:23:06', 'lisaklinestores', '', '', 0, 0, 'lisaklinestores', '', '', 'http://www.lisakline.com', 0, 'lisaklinestores_lisa-kline-125x125_normal.jpg', 'lisaklinestores_lisa-kline-125x125_normal.jpg', 23.2, '2010-06-29 02:23:06', 0, 8, 72, 0, 0, 1, 'Los Angeles', '', '', '', '', '', NULL, '', -118.2436849, 34.0522342, NULL, 1, NULL, NULL, '2010-09-14 08:30:07'),
(41, 5, 7, '', '', '', NULL, '2010-06-29 02:23:07', 'travelersbooks', '', '', 0, 0, 'travelersbooks', '', 'The only travel book map and globe store located in Los Angeles.', 'http://travelbooks.com/', 0, 'travelersbooks_logo_normal.jpg', 'travelersbooks_logo_normal.jpg', 14.6, '2010-06-29 02:23:07', 0, 5, 46, 0, 0, 1, 'Los Angeles, CA 90048', '', '', '', '', '', NULL, '', -118.3724915, 34.0741548, NULL, 1, NULL, NULL, '2010-09-14 07:09:39'),
(42, 5, 7, '', '', '', NULL, '2010-06-29 02:23:08', 'joansonthird', '', '', 0, 0, 'joansonthird', '', 'Joan&rsquo;s on Third is a family owned and operated Gourmet Marketplace, Caf&eacute; and Full Service Catering and Event Planning Company.', 'http://www.joansonthird.com', 0, 'joansonthird_joan_sonthird1_normal.jpg', 'joansonthird_joan_sonthird1_normal.jpg', 0, '2010-06-29 02:23:08', 0, 0, 0, 0, 0, 1, '8350 W. Third Street, LA', '', '', '', '', '', NULL, '', -118.37188, 34.072604, NULL, 1, NULL, NULL, '2010-09-14 07:09:39'),
(43, 5, 7, '', '', '', NULL, '2010-06-29 02:23:10', 'EMandCoStore', '', '', 0, 0, 'EM and Co', '', 'EM and Co supplies fashion-conscious shoppers with a well-orchestrated mix of fashions from world-class designers, as well as styles from emerging L.A. talent.', 'http://www.emandco.com', 0, 'EMandCoStore_n145000991275_2480_normal.jpg', 'EMandCoStore_n145000991275_2480_normal.jpg', 29.7, '2010-06-29 02:23:10', 0, 10, 97, 0, 0, 1, 'Los Angeles', '', '', '', '', '', NULL, '', -118.2436849, 34.0522342, NULL, 1, NULL, NULL, '2010-09-14 07:09:39'),
(44, 5, 7, '', '', '', NULL, '2010-06-29 02:23:11', 'liveonsunset', '', '', 0, 0, 'liveonsunset', '', 'Located on the infamous Sunset Strip, Live! On Sunset is the ultimate interactive shopping experience.', 'http://www.liveonsunset.com', 0, 'liveonsunset_4522_93681637280_90123047280_1622155_8366685_n_normal.jpg', 'liveonsunset_4522_93681637280_90123047280_1622155_8366685_n_normal.jpg', 15.8, '2010-06-29 02:23:11', 0, 6, 38, 0, 0, 1, 'West Hollywood, CA', '', '', '', '', '', NULL, '', -118.3617443, 34.0900091, NULL, 1, NULL, NULL, '2010-09-14 07:09:39'),
(45, 5, 7, '', '', '', NULL, '2010-06-29 02:23:13', 'helizabethla', '', '', 0, 0, 'helizabethla', '', '', 'http://www.helizabeth.net', 0, 'helizabethla_29642_393728934855_168366399855_4212776_7446311_n_normal.jpg', 'helizabethla_29642_393728934855_168366399855_4212776_7446311_n_normal.jpg', 29, '2010-06-29 02:23:13', 0, 8, 130, 0, 0, 1, 'Los Angeles, CA', '', '', '', '', '', NULL, '', -118.2436849, 34.0522342, NULL, 1, NULL, NULL, '2010-09-14 07:09:40'),
(46, 5, 7, '', '', '', NULL, '2010-06-29 02:23:14', 'ethelboutique', '', '', 0, 0, 'ethelboutique', '', '', 'http://www.ethelboutique.com', 0, 'ethelboutique_Ethel-12low_normal.jpg', 'ethelboutique_Ethel-12low_normal.jpg', 2.3, '2010-06-29 02:23:14', 0, 1, 3, 0, 0, 1, 'Los Angeles, CA', '', '', '', '', '', NULL, '', -118.2436849, 34.0522342, NULL, 1, NULL, NULL, '2010-09-14 07:09:40'),
(47, 5, 7, '', '', '', NULL, '2010-06-29 02:23:16', 'satineboutique', '', '', 0, 0, 'Satine Boutique', '', 'Satine is inspired by Japan, Paris, Australia, New York, Los  Angeles etc ... Focusing on a fashion forward approach.', 'http://www.satineboutique.com', 0, 'satineboutique_FacebookIcon_normal.jpg', 'satineboutique_FacebookIcon_normal.jpg', 59.1, '2010-06-29 02:23:16', 0, 10, 391, 0, 0, 1, '8117 W. 3rd Street', '', 'los angeles', 'CA', '90048', '', NULL, '', -118.3665298, 34.0723224, NULL, 1, NULL, NULL, '2010-09-14 07:09:40'),
(48, 5, 7, '', '', '', NULL, '2010-06-29 02:23:17', 'SugarLilie', '', '', 0, 0, 'SugarLilie', '', 'Sugar Lilie Dessous Prives Lingerie Boutique on W. Third St. in LA', 'http://sugarlilie.com', 0, 'SugarLilie_SugarLilieLogoRGB_normal.jpg', 'SugarLilie_SugarLilieLogoRGB_normal.jpg', 7.5, '2010-06-29 02:23:17', 0, 3, 15, 0, 0, 1, 'Los Angeles, CA', '', '', '', '', '', NULL, '', -118.2436849, 34.0522342, NULL, 1, NULL, NULL, '2010-09-14 07:09:40'),
(49, 5, 7, '', '', '', NULL, '2010-06-29 02:23:19', 'elainekimstudio', '', '', 0, 0, 'Elaine Kim Studio', '', 'American fashion designer', 'http://www.elainekim.com', 0, 'elainekimstudio_ElaineKimProfileImage_normal.JPG', 'elainekimstudio_ElaineKimProfileImage_normal.JPG', 0, '2010-06-29 02:23:19', 0, 0, 0, 0, 0, 1, '8373 w. 3rd street', '', 'Los Angeles', 'CA', '', '', NULL, '', -118.372629, 34.073216, NULL, 1, NULL, 2250388, '2010-09-14 07:09:40'),
(50, 5, 7, '', '', '', NULL, '2010-06-29 02:23:20', 'THEGROVELA', '', '', 0, 0, 'The Grove', '', 'For shopping, dining and simply loving life, The Grove Los Angles is your ultimate entertainment destination.', 'http://www.thegrovela.com', 0, 'THEGROVELA_logo_grovesn_normal.jpg', 'THEGROVELA_logo_grovesn_normal.jpg', 365.4, '2010-06-29 02:23:20', 0, 118, 1154, 1, 2, 1, '189 The Grove Drive', '', 'los angeles', 'CA', '90036', '', NULL, '', -118.3571425, 34.0717333, NULL, 1, NULL, NULL, '2010-09-14 07:09:40');

-- --------------------------------------------------------

--
-- Table structure for table `businesslocation`
--

CREATE TABLE IF NOT EXISTS `businesslocation` (
  `idbusinesslocation` int(11) NOT NULL auto_increment,
  `idbusiness` int(11) NOT NULL,
  `address` varchar(256) collate utf8_unicode_ci NOT NULL,
  `address2` varchar(256) collate utf8_unicode_ci default NULL,
  `city` varchar(50) collate utf8_unicode_ci default NULL,
  `idstate` int(11) default NULL,
  `zip` varchar(10) collate utf8_unicode_ci default NULL,
  `idcountry` int(11) default NULL,
  `longitude` double NOT NULL,
  `latitude` double NOT NULL,
  `isgoogleimageupdated` int(1) NOT NULL,
  `google_map_image` varchar(100) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`idbusinesslocation`),
  KEY `fk_businesslocation_idbusiness` (`idbusiness`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=10218 ;

--
-- Dumping data for table `businesslocation`
--

INSERT INTO `businesslocation` (`idbusinesslocation`, `idbusiness`, `address`, `address2`, `city`, `idstate`, `zip`, `idcountry`, `longitude`, `latitude`, `isgoogleimageupdated`, `google_map_image`) VALUES
(1, 1, '8381 W. 3rd St,LA 90048', '', '', 0, '', NULL, -118.3729308, 34.0729866, 1, '1_1.png'),
(2, 2, '', '', '', 0, '', NULL, -118.2436849, 34.0522342, 1, '2_2.png'),
(3, 3, 'Venice, CA', '', '', 0, '', NULL, -118.4600787, 33.9908445, 1, '3_3.png'),
(4, 4, '', NULL, NULL, 0, NULL, NULL, -118.2436849, 34.0522342, 1, '4_4.png'),
(5, 5, 'Los Angeles, CA', '', '', 0, '', NULL, -118.2436849, 34.0522342, 1, '5_5.png'),
(6, 6, 'Los Angeles', '', '', 0, '', NULL, -118.2436849, 34.0522342, 1, '6_6.png'),
(7, 7, 'Pasadena, CA', NULL, NULL, 0, NULL, NULL, -118.1445155, 34.1477849, 1, '7_7.png'),
(8, 8, 'El Segundo, CA', NULL, NULL, 0, NULL, NULL, -118.4164652, 33.9191799, 1, '8_8.png'),
(9, 9, '1815 Hawthorne Boulevard', '', 'redondo beach', 0, '90278', NULL, -118.3527299, 33.8701639, 1, '9_9.png'),
(10, 10, '100 Citadel Dr', '', 'Los Angeles', 5, '90040', NULL, -118.1499061, 34.0074163, 1, '10_10.png'),
(11, 11, 'Sherman Oaks, CA', '', '', 0, '', NULL, -118.44833, 34.15111, 1, '11_11.png'),
(12, 12, '350 West Hillcrest Drive', '', 'Thousand Oaks', 0, '', NULL, -118.8892912, 34.184742, 1, '12_12.png'),
(13, 13, 'Los Cerritos Mall', '', 'cerritos', 0, '', NULL, -118.0929243, 33.8630658, 1, '13_13.png'),
(14, 14, '1816 W. Sunset Boulevard', '', 'los angeles', 0, '', NULL, -118.2599117, 34.0777197, 1, '14_14.png'),
(15, 15, 'Los Angeles, CA', '', '', 0, '', NULL, -118.2436849, 34.0522342, 1, '15_15.png'),
(16, 16, 'hollywood, california', '', '', 0, '', NULL, -118.32583, 34.09833, 1, '16_16.png'),
(17, 17, 'Los Angeles', '', '', 0, '', NULL, -118.2436849, 34.0522342, 1, '17_17.png'),
(18, 18, 'Los Angeles', '', '', 0, '', NULL, -118.2436849, 34.0522342, 1, '18_18.png'),
(19, 19, 'Los Angeles, CA', '', '', 0, '', NULL, -118.2436849, 34.0522342, 1, '19_19.png'),
(20, 20, 'Los Angeles, CA', '', '', 0, '', NULL, -118.2436849, 34.0522342, 1, '20_20.png'),
(21, 21, 'ÃƒÅ“T: 34.083356,-118.378231', '', '', 0, '', NULL, -118.2436849, 34.0522342, 1, '21_21.png'),
(22, 22, '544 North Fairfax Avenue', '', 'los angeles', 0, '', NULL, -118.3614307, 34.0808285, 1, '22_22.png'),
(23, 23, 'NY - LA - TOKYO - WORLDWIDE', '', '', 0, '', NULL, -74.0059729, 40.7142691, 1, '23_23.png'),
(24, 24, '8222 West 3rd Street', '', 'los angeles', 0, '90048', NULL, -118.3687222, 34.072405, 1, '24_24.png'),
(25, 25, 'Los Angeles, CA', '', '', 0, '', NULL, -118.2436849, 34.0522342, 1, '25_25.png'),
(26, 26, 'Los Angeles', '', '', 0, '', NULL, -118.2436849, 34.0522342, 1, '26_26.png'),
(27, 27, 'ÃƒÅ“T: 34.076956,-118.383673', '', '', 0, '', NULL, -118.2436849, 34.0522342, 1, '27_27.png'),
(28, 28, 'Santa Monica, California', '', '', 0, '', NULL, -118.4911912, 34.0194543, 1, '28_28.png'),
(29, 29, 'Melrose Ave, Los Angeles', '', '', 0, '', NULL, -118.3377048, 34.0834506, 1, '29_29.png'),
(30, 30, '500 Broadway Santa Monica Ca', '', '', 0, '', NULL, -118.491816, 34.015593, 1, '30_30.png'),
(31, 31, 'Los Angeles, CA', '', '', 0, '', NULL, -118.2436849, 34.0522342, 1, '31_31.png'),
(32, 32, 'West Hollywood, CA', '', '', 0, '', NULL, -118.3617443, 34.0900091, 1, '32_32.png'),
(33, 33, '13017a Ventura Blvd.', '', 'Studio City', 0, '', NULL, -118.4167302, 34.1456373, 1, '33_33.png'),
(34, 34, 'Los Angeles', '', '', 0, '', NULL, -118.2436849, 34.0522342, 1, '34_34.png'),
(35, 35, 'Los Angeles', '', '', 0, '', NULL, -118.2436849, 34.0522342, 1, '35_35.png'),
(36, 36, 'Pasadena, California', '', '', 0, '', NULL, -118.1445155, 34.1477849, 1, '36_36.png'),
(37, 37, '8218 W 3rd St in LA', '', '', 0, '', NULL, -118.368673, 34.072244, 1, '37_37.png'),
(38, 38, 'ÃƒÅ“T: 34.083712,-118.384312', '', '', 0, '', NULL, -118.2436849, 34.0522342, 1, '38_38.png'),
(39, 39, '142 N. Robertson Blvd.', '', '', 0, '', NULL, -118.383462, 34.074205, 1, '39_39.png'),
(40, 40, 'Los Angeles', '', '', 0, '', NULL, -118.2436849, 34.0522342, 1, '40_40.png'),
(41, 41, 'Los Angeles, CA 90048', '', '', 0, '', NULL, -118.3724915, 34.0741548, 1, '41_41.png'),
(42, 42, '8350 W. Third Street, LA', '', '', 0, '', NULL, -118.37188, 34.072604, 1, '42_42.png'),
(43, 43, '7940 West 3rd Street', '', 'Los Angeles', 5, '90048', NULL, -118.3631, 34.0717206, 1, '43_43.png'),
(44, 44, 'West Hollywood, CA', '', '', 0, '', NULL, -118.3617443, 34.0900091, 1, '44_44.png'),
(45, 45, 'Los Angeles, CA', '', '', 0, '', NULL, -118.2436849, 34.0522342, 1, '45_45.png'),
(46, 46, 'Los Angeles, CA', '', '', 0, '', NULL, -118.2436849, 34.0522342, 1, '46_46.png'),
(47, 47, '8117 W. 3rd Street', '', 'los angeles', 0, '90048', NULL, -118.3665298, 34.0723224, 1, '47_47.png'),
(48, 48, 'Los Angeles, CA', '', '', 0, '', NULL, -118.2436849, 34.0522342, 1, '48_48.png'),
(49, 49, '8373 w. 3rd street', '', 'Los Angeles', 0, '', NULL, -118.372629, 34.073216, 1, '49_49.png'),
(50, 50, 'Pasadena, California', NULL, NULL, NULL, '0', NULL, -118.1445155, 34.1477849, 1, '50_50.png');

-- --------------------------------------------------------

--
-- Table structure for table `businesslocationpoint`
--

CREATE TABLE IF NOT EXISTS `businesslocationpoint` (
  `idbusinesslocationpoint` int(11) NOT NULL,
  `idbusiness` int(11) NOT NULL,
  `point` point NOT NULL,
  PRIMARY KEY  (`idbusinesslocationpoint`),
  SPATIAL KEY `business_point` (`point`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Stores business point';

--
-- Dumping data for table `businesslocationpoint`
--

INSERT INTO `businesslocationpoint` (`idbusinesslocationpoint`, `idbusiness`, `point`) VALUES
(1, 1, '\0\0\0\0\0\0\0ëúŸW	A@ôj%Þ—]À'),
(2, 2, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(3, 3, '\0\0\0\0\0\0\0óuþÓþ@@„…îíq]À'),
(4, 4, '\0\0\0\0\0\0\0ð|¹ª\nA@ÄÕ\\Éé—]À'),
(5, 5, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(6, 6, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(7, 7, '\0\0\0\0\0\0\0nrS^†:@æìøŠITÀ'),
(8, 8, '\0\0\0\0\0\0\0G9˜M€A@Ý³®Ñš]À'),
(9, 9, '\0\0\0\0\0\0\0uTÚ‡aï@@‘4n “–]À'),
(10, 10, '\0\0\0\0\0\0\0Šúnó\0A@#>Á˜‰]À'),
(11, 11, '\0\0\0\0\0\0\0žŽ’WA@4ôOp±œ]À'),
(12, 12, '\0\0\0\0\0\0\0L8 ¥A@¸''£%ê¸]À'),
(13, 13, '\0\0\0\0\0\0\0æ¥¬ðxî@@=`Ãxò…]À'),
(14, 14, '\0\0\0\0\0\0\0¢à¸ò	A@BÖ®d¢]À'),
(15, 15, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(16, 16, '\0\0\0\0\0\0\0›Ó–A@ƒfÚ”]À'),
(17, 17, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(18, 18, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(19, 19, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(20, 20, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(21, 21, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(22, 22, '\0\0\0\0\0\0\0Ù\nš–X\nA@N;®!—]À'),
(23, 23, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(24, 24, '\0\0\0\0\0\0\0ˆ)‘D	A@É“ÿ$™—]À'),
(25, 25, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(26, 26, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(27, 27, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(28, 28, '\0\0\0\0\0\0\0"z}A@P7­oŸ]À'),
(29, 29, '\0\0\0\0\0\0\0qê^‚®\nA@ñì—ôœ•]À'),
(30, 30, '\0\0\0\0\0\0\0õ…óþA@’éÐéyŸ]À'),
(31, 31, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(32, 32, '\0\0\0\0\0\0\0Ôkk…A@ì€Ñ&—]À'),
(33, 33, '\0\0\0\0\0\0\0óI8>¤A@[%µ«š]À'),
(34, 34, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(35, 35, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(36, 36, '\0\0\0\0\0\0\0Û+˜êA@÷ð½?‰]À'),
(37, 37, '\0\0\0\0\0\0\0†ª˜J?	A@Äz£V˜—]À'),
(38, 38, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(39, 39, '\0\0\0\0\0\0\0¨Œ	A@P3¤Š˜]À'),
(40, 40, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(41, 41, '\0\0\0\0\0\0\0´kŒç}	A@n¢–æÖ—]À'),
(42, 42, '\0\0\0\0\0\0\0†Ç~K	A@V‚ÅáÌ—]À'),
(43, 43, '\0\0\0\0\0\0\0‰¹ÿ#.	A@^KÈ=—]À'),
(44, 44, '\0\0\0\0\0\0\0Ôkk…A@ì€Ñ&—]À'),
(45, 45, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(46, 46, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(47, 47, '\0\0\0\0\0\0\0UbCÜA	A@š\0h9u—]À'),
(48, 48, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(49, 49, '\0\0\0\0\0\0\0 ÅR$_	A@£"N''Ù—]À'),
(50, 50, '\0\0\0\0\0\0\0_ÄˆŽ.	A@¿`7lÛ–]À'),
(5586, 4, '\0\0\0\0\0\0\0e~$Û¯\nA@ê©zžä—]À'),
(5587, 7, '\0\0\0\0\0\0\0¼\rÅx(\r:@%ëpt•\rTÀ'),
(5588, 8, '\0\0\0\0\0\0\0G9˜M€A@Ý³®Ñš]À'),
(5589, 8, '\0\0\0\0\0\0\0G9˜M€A@Ý³®Ñš]À'),
(5590, 50, '\0\0\0\0\0\0\0üAît8	A@1àÿ£ã–]À'),
(5591, 50, '\0\0\0\0\0\0\0âèÀO	A@(‡\0ôü–]À');

-- --------------------------------------------------------

--
-- Table structure for table `businesspoint`
--

CREATE TABLE IF NOT EXISTS `businesspoint` (
  `idbusinesspoint` int(11) NOT NULL,
  `point` point NOT NULL,
  PRIMARY KEY  (`idbusinesspoint`),
  SPATIAL KEY `business_point` (`point`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Stores business point';

--
-- Dumping data for table `businesspoint`
--

INSERT INTO `businesspoint` (`idbusinesspoint`, `point`) VALUES
(1, '\0\0\0\0\0\0\0ëúŸW	A@ôj%Þ—]À'),
(2, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(3, '\0\0\0\0\0\0\0óuþÓþ@@„…îíq]À'),
(4, '\0\0\0\0\0\0\0ð|¹ª\nA@ÄÕ\\Éé—]À'),
(5, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(6, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(7, '\0\0\0\0\0\0\0nrS^†:@æìøŠITÀ'),
(8, '\0\0\0\0\0\0\0G9˜M€A@Ý³®Ñš]À'),
(9, '\0\0\0\0\0\0\0uTÚ‡aï@@‘4n “–]À'),
(10, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(11, '\0\0\0\0\0\0\0žŽ’WA@4ôOp±œ]À'),
(12, '\0\0\0\0\0\0\0L8 ¥A@¸''£%ê¸]À'),
(13, '\0\0\0\0\0\0\0æ¥¬ðxî@@=`Ãxò…]À'),
(14, '\0\0\0\0\0\0\0¢à¸ò	A@BÖ®d¢]À'),
(15, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(16, '\0\0\0\0\0\0\0›Ó–A@ƒfÚ”]À'),
(17, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(18, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(19, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(20, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(21, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(22, '\0\0\0\0\0\0\0Ù\nš–X\nA@N;®!—]À'),
(23, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(24, '\0\0\0\0\0\0\0ˆ)‘D	A@É“ÿ$™—]À'),
(25, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(26, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(27, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(28, '\0\0\0\0\0\0\0"z}A@P7­oŸ]À'),
(29, '\0\0\0\0\0\0\0qê^‚®\nA@ñì—ôœ•]À'),
(30, '\0\0\0\0\0\0\0õ…óþA@’éÐéyŸ]À'),
(31, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(32, '\0\0\0\0\0\0\0Ôkk…A@ì€Ñ&—]À'),
(33, '\0\0\0\0\0\0\0óI8>¤A@[%µ«š]À'),
(34, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(35, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(36, '\0\0\0\0\0\0\0Û+˜êA@÷ð½?‰]À'),
(37, '\0\0\0\0\0\0\0†ª˜J?	A@Äz£V˜—]À'),
(38, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(39, '\0\0\0\0\0\0\0¨Œ	A@P3¤Š˜]À'),
(40, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(41, '\0\0\0\0\0\0\0´kŒç}	A@n¢–æÖ—]À'),
(42, '\0\0\0\0\0\0\0†Ç~K	A@V‚ÅáÌ—]À'),
(43, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(44, '\0\0\0\0\0\0\0Ôkk…A@ì€Ñ&—]À'),
(45, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(46, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(47, '\0\0\0\0\0\0\0UbCÜA	A@š\0h9u—]À'),
(48, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(49, '\0\0\0\0\0\0\0 ÅR$_	A@£"N''Ù—]À'),
(50, '\0\0\0\0\0\0\0_ÄˆŽ.	A@¿`7lÛ–]À'),
(51, '\0\0\0\0\0\0\0Ã(­dl	A@ØÏpŸ™]À'),
(52, '\0\0\0\0\0\0\03ªzý@@ èpcéœ]À'),
(53, '\0\0\0\0\0\0\0ø¼‡ðÔA@{5›"›µ]À'),
(54, '\0\0\0\0\0\0\0óuþÓþ@@„…îíq]À'),
(55, '\0\0\0\0\0\0\0P¹Óç´A@åæÀKª]À'),
(56, '\0\0\0\0\0\0\0\nÙy›\0A@þÓ\r”›]À'),
(57, '\0\0\0\0\0\0\0L>ÑÐšáC@ûà!1fÎUÀ'),
(58, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(59, '\0\0\0\0\0\0\0mŽs›pñD@l@„¸çUÀ'),
(60, '\0\0\0\0\0\0\0¸!Æk^ýD@DiâùUÀ'),
(61, '\0\0\0\0\0\0\0Ã&×¹ôD@žËykèUÀ'),
(62, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(63, '\0\0\0\0\0\0\0we®ïD@ÖwõçUÀ'),
(64, '\0\0\0\0\0\0\0„äS¶þ&@@Ôe1±y‹VÀ'),
(3652, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(66, '\0\0\0\0\0\0\0vg¦ñD@ŸþX-ÕçUÀ'),
(67, '\0\0\0\0\0\0\0.©Ún‚óD@VW@èUÀ'),
(68, '\0\0\0\0\0\0\0Ä×-º«C@4s7>I_UÀ'),
(69, '\0\0\0\0\0\0\0Ÿ¡¼ñD@\nÙy›çUÀ'),
(3074, '\0\0\0\0\0\0\0ŒÌmKòD@‡§WÊ²èUÀ'),
(71, '\0\0\0\0\0\0\0#\ZÁÆñD@±4ð£\ZèUÀ'),
(72, '\0\0\0\0\0\0\0ö¹5Dp«C@@ÛjÖ_UÀ'),
(73, '\0\0\0\0\0\0\0}£gÄF@ãm¥×f\nVÀ'),
(74, '\0\0\0\0\0\0\0‘”™B@»À›$LÊ\\À'),
(75, '\0\0\0\0\0\0\0×j{ñD@ä‚3øûçUÀ'),
(76, '\0\0\0\0\0\0\0Ô)nªC@=Td¾M^UÀ'),
(77, '\0\0\0\0\0\0\0¢ÏGqçD@aÿunÚVÀ'),
(78, '\0\0\0\0\0\0\0F(<óD@"…W7èUÀ'),
(79, '\0\0\0\0\0\0\0Ÿ<,ÔšþD@Tâ:Æ÷UÀ'),
(80, '\0\0\0\0\0\0\0dËòuòD@î¯÷­çUÀ'),
(81, '\0\0\0\0\0\0\0Ÿ<,ÔšþD@Tâ:Æ÷UÀ'),
(82, '\0\0\0\0\0\0\0PãÞü†ýD@qÆÕmõöUÀ'),
(83, '\0\0\0\0\0\0\0~''0þ9F@¤…pqWÀ'),
(84, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(85, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(86, '\0\0\0\0\0\0\0qh”òD@ÂÃ´oîçUÀ'),
(87, '\0\0\0\0\0\0\0\n†s\r3òD@{õñÐwèUÀ'),
(88, '\0\0\0\0\0\0\0¸!Æk^ýD@DiâùUÀ'),
(89, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(90, '\0\0\0\0\0\0\01\0žþýòD@§8èUÀ'),
(91, '\0\0\0\0\0\0\0‰+Â¨C@’ÿn&KOVÀ'),
(92, '\0\0\0\0\0\0\0/©^Ì?@C¸¸|ZFXÀ'),
(93, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(94, '\0\0\0\0\0\0\0&Ž<YòD@\0ª¸qèUÀ'),
(95, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(96, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(97, '\0\0\0\0\0\0\0rSÍçE@Må£{öUÀ'),
(98, '\0\0\0\0\0\0\0rSÍçE@Må£{öUÀ'),
(99, '\0\0\0\0\0\0\0¦PÌ0¤òD@£ÒãRpèUÀ'),
(100, '\0\0\0\0\0\0\0rSÍçE@Må£{öUÀ'),
(3810, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(102, '\0\0\0\0\0\0\0|ve¼RE@ÄƒJ#úUÀ'),
(103, '\0\0\0\0\0\0\0âQÏ''—äD@?£0m	VÀ'),
(104, '\0\0\0\0\0\0\0l@„¸r&@@=Šˆ‹VÀ'),
(105, '\0\0\0\0\0\0\06.6­QE@ðÛwûÒTÀ'),
(106, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(107, '\0\0\0\0\0\0\0R=>ÆÅD@€Ï´éUÀ'),
(108, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(109, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(110, '\0\0\0\0\0\0\0G§SÃ#òD@U ƒèUÀ'),
(111, '\0\0\0\0\0\0\0Í“k\ndòD@å(@ÌçUÀ'),
(112, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(113, '\0\0\0\0\0\0\0Î ™iVíD@í;ÐT™êUÀ'),
(114, '\0\0\0\0\0\0\0€>ú_D@\0ì7nsRÀ'),
(115, '\0\0\0\0\0\0\0ÍÌÌÌÌZD@ÒTOæuRÀ'),
(116, '\0\0\0\0\0\0\033333SD@ÍÌÌÌÌ|RÀ'),
(117, '\0\0\0\0\0\0\0¡c•VD@JFÎÂž}RÀ'),
(118, '\0\0\0\0\0\0\033333SD@ÍÌÌÌÌ|RÀ'),
(119, '\0\0\0\0\0\0\033333SD@ÍÌÌÌÌ|RÀ'),
(120, '\0\0\0\0\0\0\0µ¿³]D@e4òyÅRÀ'),
(121, '\0\0\0\0\0\0\0…ëQ¸]D@²³äRÀ'),
(122, '\0\0\0\0\0\0\0v¦ÐyaD@˜¦pz~RÀ'),
(123, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(124, '\0\0\0\0\0\0\0R)v4]D@ðÞQcBRÀ'),
(125, '\0\0\0\0\0\0\0wºóÄs\\D@þñ^µ2RÀ'),
(126, '\0\0\0\0\0\0\0ï=·+O]D@b¿''Ö)€RÀ'),
(127, '\0\0\0\0\0\0\0&#Â\ZÂbD@.bŽÔ1}RÀ'),
(128, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(129, '\0\0\0\0\0\0\0úÏ?f]D@Œ.oRÀ'),
(130, '\0\0\0\0\0\0\0,çœéo[D@øIÿÜa€RÀ'),
(131, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(132, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(133, '\0\0\0\0\0\0\0=a‰”]D@0fKVERÀ'),
(134, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(135, '\0\0\0\0\0\0\0ü¥E}’]D@=|™(ÂRÀ'),
(136, '\0\0\0\0\0\0\0]{°ÖšbD@–Vs}RÀ'),
(137, '\0\0\0\0\0\0\0‹@«‚]D@”ÆÃÖGRÀ'),
(138, '\0\0\0\0\0\0\0	Áªzù_D@]§‘–Ê~RÀ'),
(139, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(140, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(141, '\0\0\0\0\0\0\0|ðÚ¥\raD@ÁV	‡RÀ'),
(142, '\0\0\0\0\0\0\0ƒù+d®`D@Dây’RÀ'),
(143, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(144, '\0\0\0\0\0\0\0³{ò°PaD@ñÖù·RÀ'),
(145, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(146, '\0\0\0\0\0\0\0u<f 2^D@ç\Zf€RÀ'),
(147, '\0\0\0\0\0\0\0iõã›]D@¤_²â~RÀ'),
(148, '\0\0\0\0\0\0\0·øÊrÈ¾A@¾ýtÇ`@'),
(149, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(150, '\0\0\0\0\0\0\0å·èd©aD@¬Ê¾+‚~RÀ'),
(151, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(152, '\0\0\0\0\0\0\0TI®¬~\\D@k''ïˆ¯RÀ'),
(153, '\0\0\0\0\0\0\0¶ž!³`D@ý,–"~RÀ'),
(154, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(155, '\0\0\0\0\0\0\0,çœéo[D@øIÿÜa€RÀ'),
(156, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(157, '\0\0\0\0\0\0\0pê”GdD@°‘$×}RÀ'),
(158, '\0\0\0\0\0\0\0\Zzz[ŸbD@Êé¡l€}RÀ'),
(159, '\0\0\0\0\0\0\0‚ùÐª;eD@8ËY~RÀ'),
(160, '\0\0\0\0\0\0\0´2+%DB@n¨s âÛWÀ'),
(161, '\0\0\0\0\0\0\0l#žìf`D@Z5Ñç~RÀ'),
(162, '\0\0\0\0\0\0\0,çœéo[D@øIÿÜa€RÀ'),
(163, '\0\0\0\0\0\0\0y—æ±Á\\D@ ]lZ©RÀ'),
(164, '\0\0\0\0\0\0\06?þÒ¢\\D@ÝÌ\nERÀ'),
(165, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(166, '\0\0\0\0\0\0\0~*]°\n]D@å™—Ãî~RÀ'),
(167, '\0\0\0\0\0\0\0?GŠ\\D@)–[Z\rRÀ'),
(168, '\0\0\0\0\0\0\0¶›…â3_D@ð³%+RÀ'),
(169, '\0\0\0\0\0\0\0 [;öX^D@§¹Ë4ÐRÀ'),
(170, '\0\0\0\0\0\0\009¤ô]D@Ë²qè~RÀ'),
(171, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(172, '\0\0\0\0\0\0\0‹Cä`D@ƒ¤O«è}RÀ'),
(173, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(174, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(175, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(176, '\0\0\0\0\0\0\0,çœéo[D@øIÿÜa€RÀ'),
(177, '\0\0\0\0\0\0\0LÄ¸v[D@Kkfy€RÀ'),
(178, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(179, '\0\0\0\0\0\0\0ÆŠ\ZLÃ^D@êD2RÀ'),
(180, '\0\0\0\0\0\0\0(ÎöTdD@„’7¸~RÀ'),
(181, '\0\0\0\0\0\0\0…$³z‡]D@«=ì…€RÀ'),
(182, '\0\0\0\0\0\0\0øq4GV\\D@ãàÒ1RÀ'),
(183, '\0\0\0\0\0\0\0T5AÔ}\\D@eZöé~RÀ'),
(184, '\0\0\0\0\0\0\0ÙYLbD@SZK\0~RÀ'),
(185, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(186, '\0\0\0\0\0\0\0«ÝÀ.ÔaD@ÐÐ?ÁE~RÀ'),
(187, '\0\0\0\0\0\0\0ÇZ6ØB@¬z¯e^À'),
(188, '\0\0\0\0\0\0\0nkÏK]D@7ê°Â~RÀ'),
(189, '\0\0\0\0\0\0\0Vbž•´ZD@5*p²\r€RÀ'),
(190, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(191, '\0\0\0\0\0\0\0…í''c|ZD@vÁàš;€RÀ'),
(192, '\0\0\0\0\0\0\0´×q²Ã\\D@\0\0\0\0\0€RÀ'),
(193, '\0\0\0\0\0\0\0U(‹·aD@bcŽ©~RÀ'),
(194, '\0\0\0\0\0\0\0…ëQ¸]D@²³äRÀ'),
(195, '\0\0\0\0\0\0\0‚ùÐª;eD@8ËY~RÀ'),
(196, '\0\0\0\0\0\0\07ÍñÀ¶ZD@iVOœ€RÀ'),
(197, '\0\0\0\0\0\0\0k­yŸôaD@àV0à›RÀ'),
(198, '\0\0\0\0\0\0\0+)æpaD@Ñ²IÙ}}RÀ'),
(199, '\0\0\0\0\0\0\0Kº ZD@Z.ó€RÀ'),
(200, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(201, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(202, '\0\0\0\0\0\0\0Ç[ø‡]D@zÞ2LRÀ'),
(203, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(204, '\0\0\0\0\0\0\0&qVDM\\D@ØeøO7RÀ'),
(205, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(206, '\0\0\0\0\0\0\0‚9zü`D@X«vMRÀ'),
(207, '\0\0\0\0\0\0\0¬U»&¤Í@@vÅŒðö\n\\À'),
(208, '\0\0\0\0\0\0\0pê”GdD@°‘$×}RÀ'),
(209, '\0\0\0\0\0\0\07TŒó7\\D@h¿¤çÌRÀ'),
(210, '\0\0\0\0\0\0\0,çœéo[D@øIÿÜa€RÀ'),
(211, '\0\0\0\0\0\0\0ãqQ-"ZD@''ÛÀ¨€RÀ'),
(212, '\0\0\0\0\0\0\0µkBZc`D@ÇÛÒ4RÀ'),
(213, '\0\0\0\0\0\0\0©»²\\D@–ëm3RÀ'),
(214, '\0\0\0\0\0\0\0×Þ§ªÐ\\D@t\r34ž~RÀ'),
(215, '\0\0\0\0\0\0\0ê46ZD@£‰Ÿ€RÀ'),
(216, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(217, '\0\0\0\0\0\0\0š&l?cD@ŠcO¬|RÀ'),
(218, '\0\0\0\0\0\0\0¹U]_D@2tì ~RÀ'),
(219, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(220, '\0\0\0\0\0\0\0×åï9×E@Î	WÖ‘QÀ'),
(221, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(222, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(223, '\0\0\0\0\0\0\0…ëQ¸]D@²³äRÀ'),
(224, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(225, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(226, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(227, '\0\0\0\0\0\0\0|Œù#>@.–ä%¬VÀ'),
(228, '\0\0\0\0\0\0\0Ã4^D@ õ•¬/RÀ'),
(229, '\0\0\0\0\0\0\033333SD@ÍÌÌÌÌ|RÀ'),
(230, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(231, '\0\0\0\0\0\0\0Ù[Êùb]D@2Ž‘ì€RÀ'),
(232, '\0\0\0\0\0\0\0›æ§è\\D@4ƒøÀŽRÀ'),
(233, '\0\0\0\0\0\0\0¥k&ßl]D@eX Õ€RÀ'),
(234, '\0\0\0\0\0\0\0¨þA$]D@st´ª~RÀ'),
(235, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(236, '\0\0\0\0\0\0\0;\0â®^_D@™Õ;ÜRÀ'),
(237, '\0\0\0\0\0\0\033333SD@ÍÌÌÌÌ|RÀ'),
(238, '\0\0\0\0\0\0\0q’æi]D@ãÅÂ9€RÀ'),
(239, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(240, '\0\0\0\0\0\0\0‰\nÕÍÅ_D@Ñ?ÁÅŠRÀ'),
(241, '\0\0\0\0\0\0\0j2ãm¥_D@''iþ~RÀ'),
(242, '\0\0\0\0\0\0\0kÖß]D@ã4DþRÀ'),
(243, '\0\0\0\0\0\0\0™g%­ø^D@üL‡N€RÀ'),
(244, '\0\0\0\0\0\0\0t{Ic´^D@Ú.~d€RÀ'),
(245, '\0\0\0\0\0\0\0LÂ…<‚aD@ÅËÓ¹¢RÀ'),
(246, '\0\0\0\0\0\0\09{g´UWD@Ð™´©º~RÀ'),
(247, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(248, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(249, '\0\0\0\0\0\0\0!¯âù\\D@¾•6f£~RÀ'),
(250, '\0\0\0\0\0\0\0ÿÙE‡v_D@ùVZ€RÀ'),
(251, '\0\0\0\0\0\0\0ü¥E}’]D@=|™(ÂRÀ'),
(252, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(253, '\0\0\0\0\0\0\0gs‚`D@‘~û:pRÀ'),
(254, '\0\0\0\0\0\0\0óÇ´6cD@0ðÜ{¸|RÀ'),
(255, '\0\0\0\0\0\0\0šeª»\rZD@mm†À¶€RÀ'),
(256, '\0\0\0\0\0\0\0mV}®¶`D@ŒÚý*À~RÀ'),
(257, '\0\0\0\0\0\0\0-]Á6\\D@+÷³BRÀ'),
(258, '\0\0\0\0\0\0\0Ñ“2©fD@#•ss»}RÀ'),
(259, '\0\0\0\0\0\0\0ùp$+\ZÙA@à1—¯&¶I@'),
(260, '\0\0\0\0\0\0\0Ž´¯—_D@Éh.%RÀ'),
(261, '\0\0\0\0\0\0\0«^~§É`D@ãàÒ1ç}RÀ'),
(262, '\0\0\0\0\0\0\0pê”GdD@°‘$×}RÀ'),
(263, '\0\0\0\0\0\0\0+¬¯	ÄaD@È`Å©ÖRÀ'),
(264, '\0\0\0\0\0\0\0ÏKÅÆ^D@=¶eÀY€RÀ'),
(265, '\0\0\0\0\0\0\0þEÐ˜]D@.äÜHRÀ'),
(266, '\0\0\0\0\0\0\0Øìí;+JD@‘æÙö}RÀ'),
(267, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(268, '\0\0\0\0\0\0\0¹å~â[\\D@|@Ezö~RÀ'),
(269, '\0\0\0\0\0\0\0«:PLƒ^D@÷10<@€RÀ'),
(270, '\0\0\0\0\0\0\04Lm©ƒ`D@¸Ku~RÀ'),
(271, '\0\0\0\0\0\0\0€>ú_D@\0ì7nsRÀ'),
(272, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(273, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(274, '\0\0\0\0\0\0\0í¢C;YD@ù¸Ûš™RÀ'),
(275, '\0\0\0\0\0\0\033333SD@ÍÌÌÌÌ|RÀ'),
(276, '\0\0\0\0\0\0\0ƒ‡iß\\D@xã§q€RÀ'),
(277, '\0\0\0\0\0\0\0€>ú_D@\0ì7nsRÀ'),
(278, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(279, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(280, '\0\0\0\0\0\0\0ßPølùD@r\Z¢\nêUÀ'),
(281, '\0\0\0\0\0\0\0’EÑ¨ðD@c|˜½léUÀ'),
(282, '\0\0\0\0\0\0\0ëÿæûD@b­¨ìUÀ'),
(283, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(284, '\0\0\0\0\0\0\0SŒ=Å»õD@þýñƒéUÀ'),
(285, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(286, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(287, '\0\0\0\0\0\0\0‘˜ †oëD@·ÀÔ…Ž\0VÀ'),
(288, '\0\0\0\0\0\0\0}j®ÐD@‡Šqþ¦öUÀ'),
(289, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(290, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(291, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(292, '\0\0\0\0\0\0\0(Å(¾ìD@ríUu èUÀ'),
(293, '\0\0\0\0\0\0\0~ÁDE@4÷ë)ìUÀ'),
(294, '\0\0\0\0\0\0\0Žfnv¸E@¤<KMRÀ'),
(295, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(296, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(297, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(298, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(299, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(300, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(301, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(302, '\0\0\0\0\0\0\0Ýð£	ôD@ÂÈ\r>ëUÀ'),
(303, '\0\0\0\0\0\0\0o×KSõD@sMÜ…ÁVÀ'),
(304, '\0\0\0\0\0\0\033333óD@š™™™™éUÀ'),
(305, '\0\0\0\0\0\0\0''f½ÊîD@ëD2déUÀ'),
(306, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(307, '\0\0\0\0\0\0\0iüÂ+IøD@¨Uô‡fêUÀ'),
(308, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(309, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(310, '\0\0\0\0\0\0\0ÖÚEâ/ôD@™#Ð\ZëUÀ'),
(311, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(312, '\0\0\0\0\0\0\0}j®ÐD@‡Šqþ¦öUÀ'),
(313, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(314, '\0\0\0\0\0\0\0ýžýíW1E@A,›9$ûUÀ'),
(315, '\0\0\0\0\0\0\0~ÁDE@4÷ë)ìUÀ'),
(316, '\0\0\0\0\0\0\0¯àÈM3A@žs\\23ÎYÀ'),
(317, '\0\0\0\0\0\0\0~ÁDE@4÷ë)ìUÀ'),
(318, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(319, '\0\0\0\0\0\0\0%·DýD@@aÃSìUÀ'),
(320, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(321, '\0\0\0\0\0\0\0vÖ¸HëòD@—ƒê0ðçUÀ'),
(322, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(323, '\0\0\0\0\0\0\0@—/çD@Ñ‘gòVÀ'),
(324, '\0\0\0\0\0\0\0_^€}tñD@ØÕä©èUÀ'),
(325, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(326, '\0\0\0\0\0\0\0iäóŠ§ôD@æë2ü§èUÀ'),
(327, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(328, '\0\0\0\0\0\0\0ë_H=úõD@ŽóívéUÀ'),
(329, '\0\0\0\0\0\0\0Q_à…õD@¡l%ÏÐéUÀ'),
(330, '\0\0\0\0\0\0\0v­	ÈðD@Æ''®téUÀ'),
(331, '\0\0\0\0\0\0\0”‚UõôD@á\riTàéUÀ'),
(332, '\0\0\0\0\0\0\0;oc³#ùD@°!yêUÀ'),
(333, '\0\0\0\0\0\0\0·~úÏšÿD@üÄôðUÀ'),
(334, '\0\0\0\0\0\0\0¿2ÊŽèE@IàjøñïUÀ'),
(335, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(336, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(337, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(338, '\0\0\0\0\0\0\0©»²ðD@ìÛIDøçUÀ'),
(339, '\0\0\0\0\0\0\0âvhXŒòD@ãâ¨ÜDèUÀ'),
(340, '\0\0\0\0\0\0\0×+Ñþ¬òD@”JxB¯èUÀ'),
(341, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(342, '\0\0\0\0\0\0\0“$¾É%óD@†Ë…%ùçUÀ'),
(343, '\0\0\0\0\0\0\0Èvcæ§UE@ÀÍâÅÂqRÀ'),
(344, '\0\0\0\0\0\0\0¨Ô6qüD@×è‹sŠñUÀ'),
(345, '\0\0\0\0\0\0\0ï{ŠÒ”tE@PXñW÷UÀ'),
(346, '\0\0\0\0\0\0\0*Ê¥ñ‹D@k¬QIUÀ'),
(347, '\0\0\0\0\0\0\0b=¤Î’‹D@;‡×šRIUÀ'),
(348, '\0\0\0\0\0\0\0vÖ¸HëòD@—ƒê0ðçUÀ'),
(349, '\0\0\0\0\0\0\0ÁRYôD@è¡¶\r£èUÀ'),
(350, '\0\0\0\0\0\0\0¶ôhª''ÍD@©‘L=AõUÀ'),
(351, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(352, '\0\0\0\0\0\0\0\Zä.ÂòD@<À“.éUÀ'),
(353, '\0\0\0\0\0\0\0µwüÍzòD@§DmvèUÀ'),
(354, '\0\0\0\0\0\0\08¡‡f>@0Qcç‹WÀ'),
(355, '\0\0\0\0\0\0\0=s 5^@@º=RŽ“HXÀ'),
(356, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(357, '\0\0\0\0\0\0\0 ÊÄ<ïD@vÔâ\rèUÀ'),
(358, '\0\0\0\0\0\0\0}øC}ÜdG@d¦þ‹1WÀ'),
(359, '\0\0\0\0\0\0\0—z6óD@+LßkèUÀ'),
(360, '\0\0\0\0\0\0\0ë_H=úõD@ŽóívéUÀ'),
(361, '\0\0\0\0\0\0\0Tã¥›ÄE@z''6úñUÀ'),
(362, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(363, '\0\0\0\0\0\0\0t¿ùÃ…iF@Ô~k§ØUÀ'),
(364, '\0\0\0\0\0\0\0ÂågÙIüE@ñÓ]~LùRÀ'),
(365, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(366, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(367, '\0\0\0\0\0\0\0LK÷D@e9	¥/ëUÀ'),
(368, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(369, '\0\0\0\0\0\0\0+?_iÏòD@w·W‹ôçUÀ'),
(370, '\0\0\0\0\0\0\0xsä•ðD@å–û‰ïçUÀ'),
(371, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(372, '\0\0\0\0\0\0\0„aÀ’õD@¢—Q,·èUÀ'),
(373, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(374, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(375, '\0\0\0\0\0\0\0>ÍÉ‹æD@“©‚QÉVÀ'),
(376, '\0\0\0\0\0\0\0Ðò<¸;åD@Ò\ZƒNåUÀ'),
(377, '\0\0\0\0\0\0\0×j{¡öD@YÄ°Ã˜èUÀ'),
(378, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(379, '\0\0\0\0\0\0\0cÐ®çÒD@ïj^z VÀ'),
(380, '\0\0\0\0\0\0\0G™hë;$E@èÔ:\0ýUÀ'),
(381, '\0\0\0\0\0\0\0ì.õ˜íE@ÑûkòUÀ'),
(382, '\0\0\0\0\0\0\0sû@MˆE@mÞÝoVÀ'),
(383, '\0\0\0\0\0\0\0Pð^ÿ¿âD@°3*y	VÀ'),
(384, '\0\0\0\0\0\0\0.\Z×d2½A@p-îšëaXÀ'),
(385, '\0\0\0\0\0\0\0ˆißÜ_õD@ÁâpæWëUÀ'),
(386, '\0\0\0\0\0\0\0žšË\r†øD@^c—¨ÞéUÀ'),
(387, '\0\0\0\0\0\0\0Üã5¯ôD@?8Ÿ:VëUÀ'),
(388, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(389, '\0\0\0\0\0\0\0ÛÝt_òD@Rd=èUÀ'),
(390, '\0\0\0\0\0\0\0aO#ˆôD@ävy„dëUÀ'),
(391, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(392, '\0\0\0\0\0\0\0d${„šíD@´vÛ…æçUÀ'),
(393, '\0\0\0\0\0\0\0\Zkg{ùD@{ãÿéáéUÀ'),
(394, '\0\0\0\0\0\0\0V¥ã ×>@=õÝÛWÀ'),
(395, '\0\0\0\0\0\0\0\Zä.ÂòD@<À“.éUÀ'),
(396, '\0\0\0\0\0\0\0P\\DÊòD@l¼*~èUÀ'),
(397, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(398, '\0\0\0\0\0\0\0`¡ Â	òD@áÕÍ èUÀ'),
(399, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(400, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(401, '\0\0\0\0\0\0\0Ýð£	ôD@ÂÈ\r>ëUÀ'),
(402, '\0\0\0\0\0\0\0©>F/YòD@ôÚóÑçUÀ'),
(403, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(404, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(405, '\0\0\0\0\0\0\06ãÙŠ¢ïD@''ˆIèUÀ'),
(406, '\0\0\0\0\0\0\0Î ™iVíD@í;ÐT™êUÀ'),
(407, '\0\0\0\0\0\0\0ÓeÖ÷†öD@+È…¹“éUÀ'),
(408, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(409, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(410, '\0\0\0\0\0\0\0×]~ôD@B’Y½éUÀ'),
(411, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(412, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(413, '\0\0\0\0\0\0\0óË`ŒHíD@\\!€èUÀ'),
(414, '\0\0\0\0\0\0\0¥t{IõD@ÓÀÍâêUÀ'),
(415, '\0\0\0\0\0\0\0|rÓ°ôD@)ô°^ëUÀ'),
(416, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(417, '\0\0\0\0\0\0\0lSátòD@ÉXmþ_èUÀ'),
(418, '\0\0\0\0\0\0\0{ÆV÷D@m3º(êUÀ'),
(419, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(420, '\0\0\0\0\0\0\0¶GÿùD@?ˆ\núéUÀ'),
(421, '\0\0\0\0\0\0\0sHj¡döD@hJ¡ânêUÀ'),
(422, '\0\0\0\0\0\0\0TŽÉâþõD@ùgñêUÀ'),
(423, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(424, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(425, '\0\0\0\0\0\0\0æouJE@F^Ò=ëUÀ'),
(426, '\0\0\0\0\0\0\0ðæ_žùD@¡)àC®íUÀ'),
(427, '\0\0\0\0\0\0\0\n»(zàñD@Z-°ÇDéUÀ'),
(428, '\0\0\0\0\0\0\0P”ßýLøD@@ÒñâêUÀ'),
(429, '\0\0\0\0\0\0\0|ve¼RE@ÄƒJ#úUÀ'),
(430, '\0\0\0\0\0\0\0QàøgD@´Fó6+XÀ'),
(431, '\0\0\0\0\0\0\0raŠrõD@â#bJ$êUÀ'),
(432, '\0\0\0\0\0\0\0¡aÖ0öD@†§üÀìUÀ'),
(433, '\0\0\0\0\0\0\0ð¬}ùD@³Óê"êUÀ'),
(434, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(435, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(436, '\0\0\0\0\0\0\0Õ''¢óD@Ñw·²DèUÀ'),
(437, '\0\0\0\0\0\0\0ÉçO=ùD@Ot	êUÀ'),
(438, '\0\0\0\0\0\0\01+o¢öD@e''rwéUÀ'),
(439, '\0\0\0\0\0\0\0ÀzÜ·ZùD@?ÆÜéUÀ'),
(440, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(441, '\0\0\0\0\0\0\0Eg™E(öD@ð2ÃFéUÀ'),
(442, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(443, '\0\0\0\0\0\0\0Ü0ÑÅøD@ˆp‚%éUÀ'),
(444, '\0\0\0\0\0\0\0‡£«twóD@qN`:èUÀ'),
(445, '\0\0\0\0\0\0\0™¿ŸóD@í÷ôGëUÀ'),
(446, '\0\0\0\0\0\0\0Ìó;¨7E@ÖÖ—VÀ'),
(447, '\0\0\0\0\0\0\0P6å\n÷D@ÉK¹1éUÀ'),
(448, '\0\0\0\0\0\0\0O‚AˆzC@¿\n•$ôQUÀ'),
(449, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(450, '\0\0\0\0\0\0\0ñœú@øD@—Ž9ÏØíUÀ'),
(451, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(452, '\0\0\0\0\0\0\0âqj%E@á_ýUÀ'),
(453, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(454, '\0\0\0\0\0\0\0–ÝÝ óD@ÅÄ‹*èêUÀ'),
(455, '\0\0\0\0\0\0\0‹p“QeòD@(~Œ¹kèUÀ'),
(456, '\0\0\0\0\0\0\0ÖÈ®´ŒöD@´­féUÀ'),
(457, '\0\0\0\0\0\0\0]QJVóD@É&èUÀ'),
(458, '\0\0\0\0\0\0\0nÛ÷¨¿øD@r¡—örëUÀ'),
(459, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(460, '\0\0\0\0\0\0\0ÐƒmÙD@cì„—`VÀ'),
(461, '\0\0\0\0\0\0\0š)y˜óD@\\*ÆyëUÀ'),
(462, '\0\0\0\0\0\0\0àLLbòD@îÀï•¯èUÀ'),
(463, '\0\0\0\0\0\0\0ÏM›q\ZòD@íò­ëæUÀ'),
(464, '\0\0\0\0\0\0\0‘šv1óD@A}pã;èUÀ'),
(465, '\0\0\0\0\0\0\0à|zlùD@»¥‹êUÀ'),
(466, '\0\0\0\0\0\0\0‘ÿmØðD@í¬\rßéUÀ'),
(467, '\0\0\0\0\0\0\0dL¨ñD@á²¯áŽéUÀ'),
(468, '\0\0\0\0\0\0\0¬à·!ÆÜD@æÒS?ÊOTÀ'),
(469, '\0\0\0\0\0\0\0¬Ðöž€ËE@ùç³M;sUÀ'),
(470, '\0\0\0\0\0\0\0Ñª;»!üD@$RäZVÀ'),
(471, '\0\0\0\0\0\0\0›kCB@ö™³>åÄ\\À'),
(472, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(473, '\0\0\0\0\0\0\0ŠOK½¸ôD@x%És}éUÀ'),
(474, '\0\0\0\0\0\0\0(ò$éšëD@‚‹5˜ÿUÀ'),
(475, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(476, '\0\0\0\0\0\0\0h•™ÒúñD@oH£èUÀ'),
(477, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(478, '\0\0\0\0\0\0\04ôOp±òD@þ`à¹÷éUÀ'),
(479, '\0\0\0\0\0\0\0`¼Õ)EE@È2³…VVÀ'),
(480, '\0\0\0\0\0\0\0\\Âõ(üD@\n×£p=êUÀ'),
(481, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(482, '\0\0\0\0\0\0\0Î;©ŠçD@ðb«·\0VÀ'),
(483, '\0\0\0\0\0\0\0Å+ÿÑE@•tÞtûUÀ'),
(484, '\0\0\0\0\0\0\0ÝÂ	òD@C‘îç”èUÀ'),
(485, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(486, '\0\0\0\0\0\0\0e³ÙG+@@^Iò\\•VÀ'),
(487, '\0\0\0\0\0\0\0^''@@ÛsôSw‹VÀ'),
(488, '\0\0\0\0\0\0\0ÞZ|dðD@ùõÃèUÀ'),
(489, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(490, '\0\0\0\0\0\0\0¤l6û¨øD@Ä´oî¯ìUÀ'),
(491, '\0\0\0\0\0\0\0J^c@öD@|Ô_¯°ìUÀ'),
(492, '\0\0\0\0\0\0\0¥Ó_T÷ñD@º™vÖ“èUÀ'),
(493, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(494, '\0\0\0\0\0\0\0I$YCñD@Ñ–o"éUÀ'),
(495, '\0\0\0\0\0\0\0ë_H=úõD@ŽóívéUÀ'),
(496, '\0\0\0\0\0\0\0³.É\\t*E@œ†¨ÂŸÃTÀ'),
(497, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(498, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(499, '\0\0\0\0\0\0\0¬.ûD@ïšFÉëUÀ'),
(500, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(501, '\0\0\0\0\0\0\0_5à=QòD@TûƒóèUÀ'),
(502, '\0\0\0\0\0\0\0ˆØ`á$ëD@ˆWÎîUÀ'),
(503, '\0\0\0\0\0\0\0è*ôôD@\rùM~éUÀ'),
(504, '\0\0\0\0\0\0\0|dsÕ<ñD@>xíÒ†éUÀ'),
(505, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(506, '\0\0\0\0\0\0\0ë_H=úõD@ŽóívéUÀ'),
(507, '\0\0\0\0\0\0\0N ‘[8òD@ñ¤à„èUÀ'),
(508, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(509, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(510, '\0\0\0\0\0\0\0ìÜ´§óD@|ðÚ¥\rëUÀ'),
(511, '\0\0\0\0\0\0\0\Z‘ƒmòD@¢T¡”èUÀ'),
(512, '\0\0\0\0\0\0\0í*¤ü¤ƒC@>ðŒäüSÀ'),
(513, '\0\0\0\0\0\0\0}`"9NC@íLü\\À'),
(514, '\0\0\0\0\0\0\0Ko$u§´E@«EŸêë‘ZÀ'),
(515, '\0\0\0\0\0\0\0ctåXòD@b­¨èUÀ'),
(516, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(517, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(518, '\0\0\0\0\0\0\0¸xÓˆô÷D@Â¹+`§ìUÀ'),
(519, '\0\0\0\0\0\0\0UÙwEðñD@*NZ]séUÀ'),
(520, '\0\0\0\0\0\0\0¹‹0E¹òD@WyaèUÀ'),
(521, '\0\0\0\0\0\0\0ßÈ—«zþD@ý7å@êUÀ'),
(522, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(523, '\0\0\0\0\0\0\0{ö\\¦ôD@.Þs`ëUÀ'),
(524, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(525, '\0\0\0\0\0\0\0vhýÒôD@~Œ‰VÀ'),
(526, '\0\0\0\0\0\0\0íÿ°¥ôD@Ý`}éUÀ'),
(527, '\0\0\0\0\0\0\0qÅÅQëD@5îÍo˜èUÀ'),
(528, '\0\0\0\0\0\0\0›íÀï•øD@WÊ×\n¿éUÀ'),
(529, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(530, '\0\0\0\0\0\0\0''sâaðD@aw­7èUÀ'),
(531, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(532, '\0\0\0\0\0\0\0¥~UøD@KPhþ=éUÀ'),
(533, '\0\0\0\0\0\0\0Wx—‹øøD@`ãúwêUÀ'),
(534, '\0\0\0\0\0\0\0Ýð£	ôD@ÂÈ\r>ëUÀ'),
(535, '\0\0\0\0\0\0\0=s 57ÇD@Bî"LQùWÀ'),
(536, '\0\0\0\0\0\0\0°›ÑðD@¬}*èUÀ'),
(537, '\0\0\0\0\0\0\0Æ^9Œ“ÿD@"¡Ò-`òUÀ'),
(538, '\0\0\0\0\0\0\0uÌyÆ¾úD@PÈÎÛØòUÀ'),
(539, '\0\0\0\0\0\0\0Së!uòD@Çùö	èUÀ'),
(540, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(541, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(542, '\0\0\0\0\0\0\0<\n!^D@×®¿[RÀ'),
(543, '\0\0\0\0\0\0\0–~TaD@cœ¿	…~RÀ'),
(544, '\0\0\0\0\0\0\0ëŠá]D@.Ui‹kRÀ'),
(545, '\0\0\0\0\0\0\0·è	[D@,ðÝz€RÀ'),
(546, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(547, '\0\0\0\0\0\0\0¦“¼Æ\\D@É¬ÞáöRÀ'),
(548, '\0\0\0\0\0\0\0õ…óþ_D@tF”öRÀ'),
(549, '\0\0\0\0\0\0\0c@›Á„aD@Plª“Ø}RÀ'),
(550, '\0\0\0\0\0\0\0 \\	^D@ë½B0XRÀ'),
(551, '\0\0\0\0\0\0\033333SD@ÍÌÌÌÌ|RÀ'),
(552, '\0\0\0\0\0\0\0ºT[ “]D@5ú‡ã/€RÀ'),
(553, '\0\0\0\0\0\0\0Êb¬€Œ\\D@\n*|ìRÀ'),
(554, '\0\0\0\0\0\0\0BµÁ‰èaD@y=˜~RÀ'),
(555, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(556, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(557, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(558, '\0\0\0\0\0\0\0ÉÔLaD@iÅ7¾}RÀ'),
(559, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(560, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(561, '\0\0\0\0\0\0\0ò;ò¬IkD@…ùáÖwRÀ'),
(562, '\0\0\0\0\0\0\0ÍX4^D@ÛÃ^(`€RÀ'),
(563, '\0\0\0\0\0\0\0[¡þiY6D@\ræ\nÊÈVÀ'),
(564, '\0\0\0\0\0\0\0Þˆ“ d^D@ý.lÍÖRÀ'),
(565, '\0\0\0\0\0\0\0 *˜Ù]D@É"M¼€RÀ'),
(566, '\0\0\0\0\0\0\0åÑ°¨aD@iºèuU~RÀ'),
(567, '\0\0\0\0\0\0\0¤ˆ±ñ]D@=µúêªRÀ'),
(568, '\0\0\0\0\0\0\0™óŒ}É`D@²\rÜ:~RÀ'),
(569, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(570, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(571, '\0\0\0\0\0\0\0JŽ…2ž^D@‹º lBRÀ'),
(572, '\0\0\0\0\0\0\0b ¾‡aD@ÒçþE«~RÀ'),
(573, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(574, '\0\0\0\0\0\0\0…¨-ü^D@W=e?€RÀ'),
(575, '\0\0\0\0\0\0\0­C9Ñ`D@³|]†ÿ~RÀ'),
(576, '\0\0\0\0\0\0\0öÿ»OŸ`D@ÍsD¾K~RÀ'),
(577, '\0\0\0\0\0\0\0¨lý™æaD@ñ@®Á~RÀ'),
(578, '\0\0\0\0\0\0\0‚Uõò;aD@ð¤…Ë*RÀ'),
(579, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(580, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(581, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(582, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(583, '\0\0\0\0\0\0\0ˆÁWÏ¤8 Àf=kmPÂSÀ'),
(584, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(585, '\0\0\0\0\0\0\08 ¥+Ø`D@ÝÓÕ‹RÀ'),
(586, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(587, '\0\0\0\0\0\0\0Ì|?qbD@„};‰~RÀ'),
(588, '\0\0\0\0\0\0\0ë; dH5@6{ûÎŠºcÀ'),
(589, '\0\0\0\0\0\0\0¹\04J—`D@Á”-’~RÀ'),
(590, '\0\0\0\0\0\0\0ÃGÄ”HaD@ô3õºE~RÀ'),
(591, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(592, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(593, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(594, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(595, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(596, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(597, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(598, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(599, '\0\0\0\0\0\0\0ºKâ¬ˆ^D@\0TqãRÀ'),
(600, '\0\0\0\0\0\0\0"mãOT`D@PÿYóã~RÀ'),
(601, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(602, '\0\0\0\0\0\0\0ò&¿E''aD@Ž´¯—RÀ'),
(603, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(604, '\0\0\0\0\0\0\0Gä»”ºbD@CV·zNRÀ'),
(605, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(606, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(607, '\0\0\0\0\0\0\0Gä»”ºbD@CV·zNRÀ'),
(608, '\0\0\0\0\0\0\0\\³ðPo_D@¦þ•:RÀ'),
(609, '\0\0\0\0\0\0\0×Ù5Æó_D@½£9²~RÀ'),
(610, '\0\0\0\0\0\0\0t{Ic´^D@Ú.~d€RÀ'),
(611, '\0\0\0\0\0\0\0ò&¿E''aD@Ž´¯—RÀ'),
(612, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(613, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(614, '\0\0\0\0\0\0\0á·!Æk\\D@¢ÎÜC€RÀ'),
(615, '\0\0\0\0\0\0\0ò&¿E''aD@Ž´¯—RÀ'),
(616, '\0\0\0\0\0\0\02üÁÀÇ9@ÇAœ‡TÀ'),
(617, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(618, '\0\0\0\0\0\0\0ys¸V{^D@¹‰Zš[€RÀ'),
(619, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(620, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(621, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(622, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(623, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(624, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(625, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(626, '\0\0\0\0\0\0\0J(}!ä`D@/À>:u~RÀ'),
(627, '\0\0\0\0\0\0\0›Ó–A@ƒfÚ”]À'),
(628, '\0\0\0\0\0\0\0Ûê(½%A@§Ä¿Æ“]À'),
(629, '\0\0\0\0\0\0\0Ù&µ\nA@õ6ì­·–]À'),
(630, '\0\0\0\0\0\0\0ÖsÒûÆA@F`¬o`p]À'),
(631, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(632, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(633, '\0\0\0\0\0\0\0Éâ£j`A@v±ö˜]À'),
(634, '\0\0\0\0\0\0\0žŽ’WA@4ôOp±œ]À'),
(635, '\0\0\0\0\0\0\0î§/A@¼]/M ]À'),
(636, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(637, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(638, '\0\0\0\0\0\0\0­JÇA®\nA@\\í¼è–]À'),
(639, '\0\0\0\0\0\0\0÷rDc’ÿ@@§²(ì¢ž]À'),
(640, '\0\0\0\0\0\0\0£°êA@(3”É_™]À'),
(641, '\0\0\0\0\0\0\0yõà¤A@îlÙk‹]À'),
(642, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(643, '\0\0\0\0\0\0\0ñBß‚A@†txãœ]À'),
(644, '\0\0\0\0\0\0\0…üNA@ó\r;B˜]À'),
(645, '\0\0\0\0\0\0\0òœˆÙ_D@áï³%RÀ'),
(646, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(647, '\0\0\0\0\0\0\0Ôkk…A@ì€Ñ&—]À'),
(648, '\0\0\0\0\0\0\0fTtP\0A@%¯Î1n]À'),
(649, '\0\0\0\0\0\0\0óuþÓþ@@„…îíq]À'),
(650, '\0\0\0\0\0\0\0óuþÓþ@@„…îíq]À'),
(651, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(652, '\0\0\0\0\0\0\0A³%A@l!ÈA	œ]À'),
(653, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(654, '\0\0\0\0\0\0\0æWs€`A@¯Z™ðK™]À'),
(655, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(656, '\0\0\0\0\0\0\0¦v+ðº÷@@Êˆ¸™]À'),
(657, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(658, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(659, '\0\0\0\0\0\0\0\0ØÊ•‹×@@‰ÔEÜr]À'),
(660, '\0\0\0\0\0\0\0ÝCûýA@¶ä „–]À'),
(661, '\0\0\0\0\0\0\0îÍo˜hpB@	Q¾ |^À'),
(662, '\0\0\0\0\0\0\0êáÒ+â@@÷PGlŒ]À'),
(663, '\0\0\0\0\0\0\0˜‹S?ñ@@©È×TLš]À'),
(664, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(665, '\0\0\0\0\0\0\0Ôkk…A@ì€Ñ&—]À'),
(666, '\0\0\0\0\0\0\0¯´ŒÔ{æ@@*''Èz]À'),
(667, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(668, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(669, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(670, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(671, '\0\0\0\0\0\0\0"z}A@P7­oŸ]À'),
(672, '\0\0\0\0\0\0\0Ã(­dl	A@ØÏpŸ™]À'),
(673, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(674, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(675, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(676, '\0\0\0\0\0\0\0‰	jøA@›å²Ñ9œ]À'),
(677, '\0\0\0\0\0\0\0"z}A@P7­oŸ]À'),
(678, '\0\0\0\0\0\0\0"z}A@P7­oŸ]À'),
(679, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(680, '\0\0\0\0\0\0\0"z}A@P7­oŸ]À'),
(681, '\0\0\0\0\0\0\0"z}A@P7­oŸ]À'),
(682, '\0\0\0\0\0\0\0"z}A@P7­oŸ]À'),
(683, '\0\0\0\0\0\0\0"z}A@P7­oŸ]À'),
(684, '\0\0\0\0\0\0\0"z}A@P7­oŸ]À'),
(685, '\0\0\0\0\0\0\0"z}A@P7­oŸ]À'),
(686, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(687, '\0\0\0\0\0\0\0"z}A@P7­oŸ]À'),
(688, '\0\0\0\0\0\0\0"z}A@P7­oŸ]À'),
(689, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(690, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(691, '\0\0\0\0\0\0\0øàµKA@ÿwD…]À'),
(692, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(693, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(694, '\0\0\0\0\0\0\0›Ó–A@ƒfÚ”]À'),
(695, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(696, '\0\0\0\0\0\0\0êáÒ+â@@÷PGlŒ]À'),
(697, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(698, '\0\0\0\0\0\0\0egÉ/Þ@@’\n¾Ä³’]À'),
(699, '\0\0\0\0\0\0\0êáÒ+â@@÷PGlŒ]À'),
(700, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(701, '\0\0\0\0\0\0\0)9Ì<A@ÀZµkÂ“]À'),
(702, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(703, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(704, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(705, '\0\0\0\0\0\0\0¹æé·\nA@î‡éŒ¹Ÿ]À'),
(706, '\0\0\0\0\0\0\0"z}A@P7­oŸ]À'),
(707, '\0\0\0\0\0\0\0Ôkk…A@ì€Ñ&—]À'),
(708, '\0\0\0\0\0\0\0îû¯sA@í¸áwÓ]À'),
(709, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(710, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(711, '\0\0\0\0\0\0\0†©-u\nA@ÍŠMÐË]À'),
(712, '\0\0\0\0\0\0\0Ôkk…A@ì€Ñ&—]À'),
(713, '\0\0\0\0\0\0\0ŽªŠ_EAÀÂ5Ò­2=MÀ'),
(714, '\0\0\0\0\0\0\0›Ó–A@ƒfÚ”]À'),
(715, '\0\0\0\0\0\0\0›Ó–A@ƒfÚ”]À'),
(716, '\0\0\0\0\0\0\0qTn¢–A@YúÐõŽ]À'),
(717, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(718, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(719, '\0\0\0\0\0\0\0lAï!A@ì¤¾,m›]À'),
(720, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(721, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(722, '\0\0\0\0\0\0\0´kŒç}	A@n¢–æÖ—]À'),
(723, '\0\0\0\0\0\0\0üõT˜A@i7ø™]À'),
(724, '\0\0\0\0\0\0\0Š¿7—,D>@~˜sß pVÀ'),
(725, '\0\0\0\0\0\0\0Kxh²A@”gUÈ—]À'),
(726, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(727, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(728, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(729, '\0\0\0\0\0\0\0ˆ´2†ÞA@˜H}–]À'),
(730, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(731, '\0\0\0\0\0\0\0”0Óöÿ@@82üÁ]À'),
(732, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(733, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(734, '\0\0\0\0\0\0\0C<mèÁA@›0Ëè‘]À'),
(735, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(736, '\0\0\0\0\0\0\0›Ó–A@ƒfÚ”]À'),
(737, '\0\0\0\0\0\0\0qyÓ‹Õ@@Þ§FeWÀ'),
(738, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(739, '\0\0\0\0\0\0\0©ø¿#*A@]©gA(’]À'),
(740, '\0\0\0\0\0\0\0˜‹S?ñ@@©È×TLš]À'),
(741, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(742, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(743, '\0\0\0\0\0\0\0Ã(­dl	A@ØÏpŸ™]À'),
(744, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(745, '\0\0\0\0\0\0\0Jp4‘ã)E@pÃ94öVÀ'),
(746, '\0\0\0\0\0\0\09DÜœA@îè¹]À'),
(747, '\0\0\0\0\0\0\0·.û±ì@@¹ c¬Û˜]À'),
(748, '\0\0\0\0\0\0\0Ôkk…A@ì€Ñ&—]À'),
(749, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(750, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(751, '\0\0\0\0\0\0\0Û+˜êA@÷ð½?‰]À'),
(752, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(753, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(754, '\0\0\0\0\0\0\0Ã(­dl	A@ØÏpŸ™]À'),
(755, '\0\0\0\0\0\0\0žŽ’WA@4ôOp±œ]À'),
(756, '\0\0\0\0\0\0\0Û+˜êA@÷ð½?‰]À'),
(757, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(758, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(759, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(760, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(761, '\0\0\0\0\0\0\0²AË_ÆA@¸ÖÍû]À'),
(762, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(763, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(764, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(765, '\0\0\0\0\0\0\0žJa9;@{P«CITÀ'),
(766, '\0\0\0\0\0\0\0eTÆÝ5A@y‡%¯ì]À'),
(767, '\0\0\0\0\0\0\0ŸÛ2àA@ˆÂ£–]À'),
(768, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(769, '\0\0\0\0\0\0\0Éõ\0''%ß@@¹Z‚ç¹’]À'),
(770, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(771, '\0\0\0\0\0\0\0›Ó–A@ƒfÚ”]À'),
(772, '\0\0\0\0\0\0\0êáÒ+â@@÷PGlŒ]À'),
(773, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(774, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(775, '\0\0\0\0\0\0\0E›ˆ#´A@jÝµ_™]À'),
(776, '\0\0\0\0\0\0\0/a~¸õA@Û0\n‚ÇŸ]À'),
(777, '\0\0\0\0\0\0\0/¸0\nA@Ä\n·|$—]À'),
(778, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(779, '\0\0\0\0\0\0\0"z}A@P7­oŸ]À'),
(780, '\0\0\0\0\0\0\0¦–R<ÓA@Æ^9Œ“˜]À'),
(781, '\0\0\0\0\0\0\0Ôkk…A@ì€Ñ&—]À'),
(782, '\0\0\0\0\0\0\0ÙrÓãA@µG¹Eª]À'),
(783, '\0\0\0\0\0\0\0òÏ½	A@zäj¿–]À'),
(784, '\0\0\0\0\0\0\0¥¦¸A@(÷Ž\Z—]À'),
(785, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(786, '\0\0\0\0\0\0\0Ôkk…A@ì€Ñ&—]À'),
(787, '\0\0\0\0\0\0\0"z}A@P7­oŸ]À'),
(788, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(789, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(790, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(791, '\0\0\0\0\0\0\0ï‘ÍUóA@Ü*ˆ®]À'),
(792, '\0\0\0\0\0\0\0˜‹S?ñ@@©È×TLš]À'),
(793, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(794, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(795, '\0\0\0\0\0\0\0øÃÏA@Þš*Î‡–]À'),
(796, '\0\0\0\0\0\0\0"z}A@P7­oŸ]À'),
(797, '\0\0\0\0\0\0\0"z}A@P7­oŸ]À'),
(798, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(799, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(800, '\0\0\0\0\0\0\0"z}A@P7­oŸ]À'),
(801, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(802, '\0\0\0\0\0\0\0&Š5+''D@¸Âê^@^À'),
(803, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(804, '\0\0\0\0\0\0\0º€<`ÃB@)Xˆ³ÇjTÀ'),
(805, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(806, '\0\0\0\0\0\0\0"z}A@P7­oŸ]À'),
(807, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(808, '\0\0\0\0\0\0\0oKä‚3A@ú\r\rR•]À'),
(809, '\0\0\0\0\0\0\0Û+˜êA@÷ð½?‰]À'),
(810, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(811, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(812, '\0\0\0\0\0\0\0ñ$ŽáVA@¾î¾t$]À'),
(813, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(814, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(815, '\0\0\0\0\0\0\0"z}A@P7­oŸ]À'),
(816, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(817, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(818, '\0\0\0\0\0\0\0Zív¡A@\0¹³e/‡]À'),
(819, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(820, '\0\0\0\0\0\0\0Ôkk…A@ì€Ñ&—]À'),
(821, '\0\0\0\0\0\0\0Ôkk…A@ì€Ñ&—]À'),
(822, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(823, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(824, '\0\0\0\0\0\0\0Ã(­dl	A@ØÏpŸ™]À'),
(825, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(826, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(827, '\0\0\0\0\0\0\0Þs`9A@’ÎÀÈË‘]À'),
(828, '\0\0\0\0\0\0\0¬sÈ^A@Ô|•|ì˜]À'),
(829, '\0\0\0\0\0\0\0†©-u\nA@ÍŠMÐË]À'),
(830, '\0\0\0\0\0\0\0,¯¦üµ[D@UHžÂRÀ'),
(831, '\0\0\0\0\0\0\0"z}A@P7­oŸ]À'),
(832, '\0\0\0\0\0\0\0vý‚Ý°™A@\nr5²]XÀ'),
(833, '\0\0\0\0\0\0\0cØ¼‹F@Š—-¸šPÀ'),
(834, '\0\0\0\0\0\0\0¥¦¸A@(÷Ž\Z—]À'),
(835, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(836, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(837, '\0\0\0\0\0\0\0{SìÃÕA@´]À'),
(838, '\0\0\0\0\0\0\0˜‹S?ñ@@©È×TLš]À'),
(839, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(840, '\0\0\0\0\0\0\0êáÒ+â@@÷PGlŒ]À'),
(841, '\0\0\0\0\0\0\0 »ÉA@…[>’’š]À'),
(842, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(843, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(844, '\0\0\0\0\0\0\0›Ó–A@ƒfÚ”]À'),
(845, '\0\0\0\0\0\0\0‹„[ãA@#»Ò2Ry]À'),
(846, '\0\0\0\0\0\0\0›Ó–A@ƒfÚ”]À'),
(847, '\0\0\0\0\0\0\0Ã(­dl	A@ØÏpŸ™]À'),
(848, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(849, '\0\0\0\0\0\0\0±Xÿ`þ@@‹£ZBž]À'),
(850, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(851, '\0\0\0\0\0\0\0|µ£8Gé@@×†Šq•]À'),
(852, '\0\0\0\0\0\0\0Ôkk…A@ì€Ñ&—]À'),
(853, '\0\0\0\0\0\0\0dØ¿ßí@@‘GË\\…]À'),
(854, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(855, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(856, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(857, '\0\0\0\0\0\0\0Ã(­dl	A@ØÏpŸ™]À'),
(858, '\0\0\0\0\0\0\0È‡>œ\rA@\0ð>}:’]À'),
(859, '\0\0\0\0\0\0\0<k·]hÅ@@J{r]À'),
(860, '\0\0\0\0\0\0\0Ã(­dl	A@ØÏpŸ™]À'),
(861, '\0\0\0\0\0\0\0%¢N/çA@TÝÈa™]À'),
(862, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(863, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(864, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(865, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(866, '\0\0\0\0\0\0\0˜öÍýÕ{9@,ÔšæTÀ'),
(867, '\0\0\0\0\0\0\0 êãF6Æ9@…LèdTÀ'),
(868, '\0\0\0\0\0\0\0 êãF6Æ9@…LèdTÀ'),
(869, '\0\0\0\0\0\0\0 êãF6Æ9@…LèdTÀ'),
(870, '\0\0\0\0\0\0\0›sðLhÊ9@|_\\ªRTÀ'),
(871, '\0\0\0\0\0\0\0 êãF6Æ9@…LèdTÀ'),
(872, '\0\0\0\0\0\0\0 êãF6Æ9@…LèdTÀ'),
(873, '\0\0\0\0\0\0\0-@ÛjÖÅ9@¼ëlÈ?TÀ'),
(874, '\0\0\0\0\0\0\0+±!î è9@\\×ÁTÀ'),
(875, '\0\0\0\0\0\0\0 êãF6Æ9@…LèdTÀ'),
(876, '\0\0\0\0\0\0\0|ä 2ª;@Ó÷\ZaTÀ'),
(877, '\0\0\0\0\0\0\0 êãF6Æ9@…LèdTÀ'),
(878, '\0\0\0\0\0\0\0 êãF6Æ9@…LèdTÀ'),
(879, '\0\0\0\0\0\0\0 êãF6Æ9@…LèdTÀ'),
(880, '\0\0\0\0\0\0\0 êãF6Æ9@…LèdTÀ'),
(881, '\0\0\0\0\0\0\0fffffNF@?.»q_À'),
(882, '\0\0\0\0\0\0\0aobHNÊ9@9)Ì{œTÀ'),
(883, '\0\0\0\0\0\0\0¤§ÝùÉ9@ÝCû}TÀ'),
(884, '\0\0\0\0\0\0\0›sðLhÊ9@|_\\ªRTÀ'),
(885, '\0\0\0\0\0\0\0 êãF6Æ9@…LèdTÀ'),
(886, '\0\0\0\0\0\0\0Âõ(\\Ë9@†[ÏTÀ'),
(887, '\0\0\0\0\0\0\0K–î	m¶9@´ïå™rTÀ'),
(888, '\0\0\0\0\0\0\0 êãF6Æ9@…LèdTÀ'),
(889, '\0\0\0\0\0\0\0 êãF6Æ9@…LèdTÀ'),
(890, '\0\0\0\0\0\0\0 êãF6Æ9@…LèdTÀ'),
(891, '\0\0\0\0\0\0\0öa½Q+˜C@ðß¼8ñ3SÀ'),
(892, '\0\0\0\0\0\0\0¿ðJ’çÚ9@''„º„TÀ'),
(893, '\0\0\0\0\0\0\0+±!î è9@\\×ÁTÀ'),
(894, '\0\0\0\0\0\0\0£Ãè^Ì7=@*Œ-9’TÀ'),
(895, '\0\0\0\0\0\0\0d’‘³¸9@­ñ>3-TÀ'),
(896, '\0\0\0\0\0\0\0 êãF6Æ9@…LèdTÀ'),
(897, '\0\0\0\0\0\0\0 êãF6Æ9@…LèdTÀ'),
(898, '\0\0\0\0\0\0\0Œd4—Àü9@¡´…ÝTÀ'),
(899, '\0\0\0\0\0\0\0 êãF6Æ9@…LèdTÀ'),
(900, '\0\0\0\0\0\0\0 êãF6Æ9@…LèdTÀ'),
(901, '\0\0\0\0\0\0\0 êãF6Æ9@…LèdTÀ'),
(902, '\0\0\0\0\0\0\0 êãF6Æ9@…LèdTÀ'),
(903, '\0\0\0\0\0\0\0¤VówJä9@¨»ü˜ TÀ'),
(904, '\0\0\0\0\0\0\0JEcíïÀ9@?8Ÿ:VTÀ'),
(905, '\0\0\0\0\0\0\0 êãF6Æ9@…LèdTÀ'),
(906, '\0\0\0\0\0\0\0šîuR_Ê9@\n¢I½TÀ'),
(907, '\0\0\0\0\0\0\0AØ)V\rº9@8ÛÜ˜žTÀ'),
(908, '\0\0\0\0\0\0\0®ršO:@|o-	TÀ'),
(909, '\0\0\0\0\0\0\0 êãF6Æ9@…LèdTÀ'),
(910, '\0\0\0\0\0\0\0|—wÚ9@T\Z1³ÏTÀ'),
(4031, '\0\0\0\0\0\0\0|ä 2ª;@Ó÷\ZaTÀ'),
(912, '\0\0\0\0\0\0\0 êãF6Æ9@…LèdTÀ'),
(913, '\0\0\0\0\0\0\0›sðLhÊ9@|_\\ªRTÀ'),
(914, '\0\0\0\0\0\0\0¼2¹bú9@Ï÷Sã%	TÀ'),
(915, '\0\0\0\0\0\0\0›sðLhÊ9@|_\\ªRTÀ'),
(916, '\0\0\0\0\0\0\0 êãF6Æ9@…LèdTÀ'),
(917, '\0\0\0\0\0\0\0 êãF6Æ9@…LèdTÀ'),
(918, '\0\0\0\0\0\0\0›sðLhÊ9@|_\\ªRTÀ'),
(919, '\0\0\0\0\0\0\0 êãF6Æ9@…LèdTÀ'),
(920, '\0\0\0\0\0\0\0)ƒ¬]ó9@6í½SÜTÀ'),
(921, '\0\0\0\0\0\0\0çò0þw9@ªÞÐJTÀ'),
(922, '\0\0\0\0\0\0\0 êãF6Æ9@…LèdTÀ'),
(923, '\0\0\0\0\0\0\0 êãF6Æ9@…LèdTÀ'),
(924, '\0\0\0\0\0\0\0—]‹qYÊ9@ÊmûõTÀ'),
(925, '\0\0\0\0\0\0\0¸Áš0û9@r\Z¢\n	TÀ'),
(926, '\0\0\0\0\0\0\0KÊÝçÌ9@šaþeÒTÀ'),
(927, '\0\0\0\0\0\0\0 êãF6Æ9@…LèdTÀ'),
(928, '\0\0\0\0\0\0\0K–î	m¶9@´ïå™rTÀ'),
(929, '\0\0\0\0\0\0\0_«NÞ:@Ù¤ì>‘	TÀ'),
(930, '\0\0\0\0\0\0\0Ò Ší9@N°¤TÀ'),
(931, '\0\0\0\0\0\0\0Ò\\]|Ã9@¡(unTÀ'),
(932, '\0\0\0\0\0\0\0Ò\\]|Ã9@¡(unTÀ'),
(933, '\0\0\0\0\0\0\01qõ­ ·:@ù[L}jTÀ'),
(934, '\0\0\0\0\0\0\0¤¯{†ËÉ9@´>J[TÀ'),
(935, '\0\0\0\0\0\0\0›sðLhÊ9@|_\\ªRTÀ'),
(936, '\0\0\0\0\0\0\0ˆópÓ[:@e–ó{QTÀ'),
(937, '\0\0\0\0\0\0\0®€¸«:@•›¨¥TÀ'),
(938, '\0\0\0\0\0\0\0 êãF6Æ9@…LèdTÀ'),
(939, '\0\0\0\0\0\0\0í)HÐ9@;:®FvTÀ'),
(940, '\0\0\0\0\0\0\0›sðLhÊ9@|_\\ªRTÀ'),
(941, '\0\0\0\0\0\0\0®ršO:@|o-	TÀ'),
(942, '\0\0\0\0\0\0\0 êãF6Æ9@…LèdTÀ'),
(943, '\0\0\0\0\0\0\0d’‘³¸9@­ñ>3-TÀ'),
(944, '\0\0\0\0\0\0\0•Ô	h"v:@tÿ¢©TÀ'),
(945, '\0\0\0\0\0\0\0_&Š“A@†¶ƒPUÀ'),
(946, '\0\0\0\0\0\0\0ø³ýÉÒ:@ó{ö·ßTÀ'),
(947, '\0\0\0\0\0\0\0Ñ\\§‘–Â9@Y|^TÀ'),
(948, '\0\0\0\0\0\0\0­¬.v:@Åã¢ZDTÀ'),
(949, '\0\0\0\0\0\0\0ˆópÓ[:@e–ó{QTÀ'),
(950, '\0\0\0\0\0\0\0 êãF6Æ9@…LèdTÀ'),
(951, '\0\0\0\0\0\0\01qõ­ ·:@ù[L}jTÀ'),
(952, '\0\0\0\0\0\0\0|ä 2ª;@Ó÷\ZaTÀ'),
(953, '\0\0\0\0\0\0\0ø³ýÉÒ:@ó{ö·ßTÀ'),
(954, '\0\0\0\0\0\0\0ˆópÓ[:@e–ó{QTÀ'),
(955, '\0\0\0\0\0\0\0•Ô	h"v:@tÿ¢©TÀ'),
(956, '\0\0\0\0\0\0\0ˆópÓ[:@e–ó{QTÀ'),
(957, '\0\0\0\0\0\0\0ˆópÓ[:@e–ó{QTÀ'),
(958, '\0\0\0\0\0\0\01qõ­ ·:@ù[L}jTÀ'),
(959, '\0\0\0\0\0\0\0#…²ðõõ:@‚oš>;TÀ'),
(960, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(961, '\0\0\0\0\0\0\0¤§ÝùÉ9@ÝCû}TÀ'),
(962, '\0\0\0\0\0\0\0ñòt®(é9@½ð9f\nTÀ'),
(963, '\0\0\0\0\0\0\0Ól#žØ9@]Þ®ÕTÀ'),
(964, '\0\0\0\0\0\0\0ÏKÅÆÂ9@\n£´’1TÀ'),
(965, '\0\0\0\0\0\0\0d’‘³¸9@­ñ>3-TÀ'),
(966, '\0\0\0\0\0\0\0›sðLhÊ9@|_\\ªRTÀ'),
(967, '\0\0\0\0\0\0\0 êãF6Æ9@…LèdTÀ'),
(968, '\0\0\0\0\0\0\0âä#Î/Ë9@`ìTÀ'),
(969, '\0\0\0\0\0\0\0›sðLhÊ9@|_\\ªRTÀ'),
(970, '\0\0\0\0\0\0\0 êãF6Æ9@…LèdTÀ'),
(971, '\0\0\0\0\0\0\0 êãF6Æ9@…LèdTÀ'),
(972, '\0\0\0\0\0\0\0±Eü·9@>ÿâ¾zTÀ'),
(973, '\0\0\0\0\0\0\0 êãF6Æ9@…LèdTÀ'),
(974, '\0\0\0\0\0\0\0àxˆÛ9@\n5žc›TÀ'),
(975, '\0\0\0\0\0\0\0 êãF6Æ9@…LèdTÀ'),
(976, '\0\0\0\0\0\0\0›sðLhÊ9@|_\\ªRTÀ'),
(977, '\0\0\0\0\0\0\0)ƒ¬]ó9@6í½SÜTÀ'),
(978, '\0\0\0\0\0\0\0Áº;|ã^E@©\\ò‰VÀ'),
(979, '\0\0\0\0\0\0\0 êãF6Æ9@…LèdTÀ'),
(980, '\0\0\0\0\0\0\0 êãF6Æ9@…LèdTÀ'),
(981, '\0\0\0\0\0\0\0 êãF6Æ9@…LèdTÀ'),
(982, '\0\0\0\0\0\0\09MúÖâî9@~¥˜(g\nTÀ'),
(983, '\0\0\0\0\0\0\0$=±óÛô9@G-ÞÙèTÀ'),
(984, '\0\0\0\0\0\0\0 êãF6Æ9@…LèdTÀ'),
(985, '\0\0\0\0\0\0\0Gb8£´:@™†<ÝTTÀ'),
(986, '\0\0\0\0\0\0\0 êãF6Æ9@…LèdTÀ'),
(987, '\0\0\0\0\0\0\0ˆópÓ[:@e–ó{QTÀ'),
(988, '\0\0\0\0\0\0\01qõ­ ·:@ù[L}jTÀ'),
(989, '\0\0\0\0\0\0\0ø³ýÉÒ:@ó{ö·ßTÀ'),
(990, '\0\0\0\0\0\0\0 êãF6Æ9@…LèdTÀ'),
(991, '\0\0\0\0\0\0\0 êãF6Æ9@…LèdTÀ'),
(992, '\0\0\0\0\0\0\0 êãF6Æ9@…LèdTÀ'),
(993, '\0\0\0\0\0\0\09MúÖâî9@~¥˜(g\nTÀ'),
(994, '\0\0\0\0\0\0\0dÏù„GÀ9@ÆÃ{¬\rTÀ'),
(995, '\0\0\0\0\0\0\0K–î	m¶9@´ïå™rTÀ'),
(996, '\0\0\0\0\0\0\0\Z4ôOpÉ9@”ì"–TÀ'),
(997, '\0\0\0\0\0\0\0d’‘³¸9@­ñ>3-TÀ'),
(998, '\0\0\0\0\0\0\0×tóC[J:@=Ë=n‰rTÀ'),
(999, '\0\0\0\0\0\0\0b%µ9@š‰3ÐÆTÀ'),
(1000, '\0\0\0\0\0\0\0wõ*2:@¢BusñTÀ'),
(1001, '\0\0\0\0\0\0\0®ršO:@|o-	TÀ'),
(1002, '\0\0\0\0\0\0\0©0¶À9@„aÀ’TÀ'),
(1003, '\0\0\0\0\0\0\0 êãF6Æ9@…LèdTÀ'),
(1004, '\0\0\0\0\0\0\0Ì˜‚5Î\0:@R×ÚûTTÀ'),
(1005, '\0\0\0\0\0\0\0®ršO:@|o-	TÀ'),
(1006, '\0\0\0\0\0\0\0®ršO:@|o-	TÀ'),
(1007, '\0\0\0\0\0\0\0®ršO:@|o-	TÀ'),
(1008, '\0\0\0\0\0\0\0®ršO:@|o-	TÀ'),
(1009, '\0\0\0\0\0\0\0®ršO:@|o-	TÀ'),
(1010, '\0\0\0\0\0\0\0®ršO:@|o-	TÀ'),
(1011, '\0\0\0\0\0\0\0®ršO:@|o-	TÀ'),
(1012, '\0\0\0\0\0\0\0®ršO:@|o-	TÀ'),
(1013, '\0\0\0\0\0\0\0_«NÞ:@Ù¤ì>‘	TÀ'),
(1014, '\0\0\0\0\0\0\0ö{b\ZM@­iÞqŠŽÀ'),
(1015, '\0\0\0\0\0\0\0 êãF6Æ9@…LèdTÀ'),
(1016, '\0\0\0\0\0\0\0Gb8£´:@™†<ÝTTÀ'),
(1017, '\0\0\0\0\0\0\06Î¦#€Ó9@Ö\0¥¡FTÀ'),
(1018, '\0\0\0\0\0\0\0›sðLhÊ9@|_\\ªRTÀ'),
(1019, '\0\0\0\0\0\0\0CV¸åÃ9@-ÐîbTÀ'),
(1020, '\0\0\0\0\0\0\0ŸÉþyÊ9@ÁþëÜ´TÀ'),
(1021, '\0\0\0\0\0\0\0ÖeBÝã9@-póTÀ'),
(1022, '\0\0\0\0\0\0\0›sðLhÊ9@|_\\ªRTÀ'),
(1023, '\0\0\0\0\0\0\0d±M*\Z™E@ÔîW¾iRÀ'),
(1024, '\0\0\0\0\0\0\0+i|{9@—‘zOeTÀ'),
(1025, '\0\0\0\0\0\0\0''LÍÊÄ9@…ôÊ«)TÀ'),
(1026, '\0\0\0\0\0\0\0Û·¤´HÆ9@·€ÚTÀ'),
(1027, '\0\0\0\0\0\0\0›Ë\r†:È9@Œ¾‚4cTÀ'),
(1028, '\0\0\0\0\0\0\0¦õ¾RÉ9@|]+F‚TÀ'),
(1029, '\0\0\0\0\0\0\0b%µ9@š‰3ÐÆTÀ'),
(1030, '\0\0\0\0\0\0\0 êãF6Æ9@…LèdTÀ'),
(1031, '\0\0\0\0\0\0\0±\ZKXÃ9@œÁß/fTÀ'),
(1032, '\0\0\0\0\0\0\09MúÖâî9@~¥˜(g\nTÀ'),
(1033, '\0\0\0\0\0\0\0d’‘³¸9@­ñ>3-TÀ'),
(1034, '\0\0\0\0\0\0\0Ot]øÁÉ9@žwcTÀ'),
(1035, '\0\0\0\0\0\0\0›sðLhÊ9@|_\\ªRTÀ'),
(1036, '\0\0\0\0\0\0\0 êãF6Æ9@…LèdTÀ'),
(1037, '\0\0\0\0\0\0\0øá !ÊÓ9@lê<*þTÀ'),
(1038, '\0\0\0\0\0\0\0ä÷6ýÙ¿9@ëâ6\ZÀTÀ'),
(1039, '\0\0\0\0\0\0\0›sðLhÊ9@|_\\ªRTÀ'),
(1040, '\0\0\0\0\0\0\0t«ŒëÂ9@È[Õí\nTÀ'),
(1041, '\0\0\0\0\0\0\0Ý¨_3\nãE@\nJÑÊ=œUÀ'),
(1042, '\0\0\0\0\0\0\0äƒžÍª‹:@ÿÏa¾¼TÀ'),
(1043, '\0\0\0\0\0\0\0ˆópÓ[:@e–ó{QTÀ'),
(1044, '\0\0\0\0\0\0\0eŒ³—Ï9@JÔf÷?TÀ'),
(1045, '\0\0\0\0\0\0\0zo$:@‘¤Zú†TÀ'),
(1046, '\0\0\0\0\0\0\0®ršO:@|o-	TÀ'),
(1047, '\0\0\0\0\0\0\0S3µ¶:@0•#	çTÀ'),
(1048, '\0\0\0\0\0\0\0äæ\n¥åÆ9@~tE„ÚTÀ'),
(1049, '\0\0\0\0\0\0\0 êãF6Æ9@…LèdTÀ'),
(1050, '\0\0\0\0\0\0\0d’‘³¸9@­ñ>3-TÀ'),
(1051, '\0\0\0\0\0\0\0bjKä­9@Î‰=´TÀ'),
(1052, '\0\0\0\0\0\0\0fYIÐÈ9@™¹Õ=TÀ'),
(1053, '\0\0\0\0\0\0\0¤§ÝùÉ9@ÝCû}TÀ'),
(1054, '\0\0\0\0\0\0\0¤§ÝùÉ9@ÝCû}TÀ'),
(1055, '\0\0\0\0\0\0\0|ä 2ª;@Ó÷\ZaTÀ'),
(1056, '\0\0\0\0\0\0\0 êãF6Æ9@…LèdTÀ'),
(1057, '\0\0\0\0\0\0\01qõ­ ·:@ù[L}jTÀ'),
(1058, '\0\0\0\0\0\0\0ß&íWK¹9@#*ù}$TÀ'),
(1059, '\0\0\0\0\0\0\0|ä 2ª;@Ó÷\ZaTÀ'),
(1060, '\0\0\0\0\0\0\0 êãF6Æ9@…LèdTÀ'),
(1061, '\0\0\0\0\0\0\0 cîZBÆ9@<J%<¡TÀ'),
(1062, '\0\0\0\0\0\0\0 êãF6Æ9@…LèdTÀ'),
(1063, '\0\0\0\0\0\0\01qõ­ ·:@ù[L}jTÀ'),
(1064, '\0\0\0\0\0\0\0®ršO:@|o-	TÀ'),
(1065, '\0\0\0\0\0\0\0?¦Z°ù•<@9á)TÀ'),
(1066, '\0\0\0\0\0\0\0NE*Œ-È9@¤âÿŽ¨TÀ'),
(1067, '\0\0\0\0\0\0\0„	H fÑ9@K<ÕTÀ'),
(1068, '\0\0\0\0\0\0\0d’‘³¸9@­ñ>3-TÀ'),
(1069, '\0\0\0\0\0\0\0æÌv…>Ì9@Ä[çß.TÀ'),
(1070, '\0\0\0\0\0\0\0ß&íWK¹9@#*ù}$TÀ'),
(1071, '\0\0\0\0\0\0\06ßÒ{tÈ9@vWÑzSTÀ'),
(1072, '\0\0\0\0\0\0\0wJëÃ9@6ê!\ZÝTÀ'),
(1073, '\0\0\0\0\0\0\0ß&íWK¹9@#*ù}$TÀ'),
(1074, '\0\0\0\0\0\0\0›sðLhÊ9@|_\\ªRTÀ'),
(1075, '\0\0\0\0\0\0\0HõB¦!É9@·oÿÛöTÀ'),
(1076, '\0\0\0\0\0\0\0›sðLhÊ9@|_\\ªRTÀ'),
(1077, '\0\0\0\0\0\0\0ØP ¢‡À9@+HØ\\TÀ'),
(1078, '\0\0\0\0\0\0\0)ƒ¬]ó9@6í½SÜTÀ'),
(1079, '\0\0\0\0\0\0\0èÞÃ%Çõ9@júì€ëTÀ'),
(1080, '\0\0\0\0\0\0\0>ùÆ9@?rkÒmTÀ'),
(1081, '\0\0\0\0\0\0\0í+ÒSÈ9@[,ÄYTÀ'),
(1082, '\0\0\0\0\0\0\0 êãF6Æ9@…LèdTÀ'),
(1083, '\0\0\0\0\0\0\0\Zœ-ÅúnB@ç¹Ï»þRÀ'),
(1084, '\0\0\0\0\0\0\0Î\\–e>ÊC@¦(—Æ¯?SÀ'),
(1085, '\0\0\0\0\0\0\0›sðLhÊ9@|_\\ªRTÀ'),
(1086, '\0\0\0\0\0\0\0Ï\ròwÂ9@™ƒ £UTÀ'),
(1087, '\0\0\0\0\0\0\0›sðLhÊ9@|_\\ªRTÀ'),
(1088, '\0\0\0\0\0\0\0®ršO:@|o-	TÀ'),
(1089, '\0\0\0\0\0\0\0Lþ''÷Ü9@ÙUí?WTÀ'),
(1090, '\0\0\0\0\0\0\0›sðLhÊ9@|_\\ªRTÀ'),
(1091, '\0\0\0\0\0\0\0›sðLhÊ9@|_\\ªRTÀ'),
(1092, '\0\0\0\0\0\0\0 êãF6Æ9@…LèdTÀ'),
(1093, '\0\0\0\0\0\0\01qõ­ ·:@ù[L}jTÀ'),
(1094, '\0\0\0\0\0\0\0›sðLhÊ9@|_\\ªRTÀ'),
(1095, '\0\0\0\0\0\0\0›sðLhÊ9@|_\\ªRTÀ'),
(1096, '\0\0\0\0\0\0\0!±Ý=@'':@\r¨7£fTÀ'),
(1097, '\0\0\0\0\0\0\0›sðLhÊ9@|_\\ªRTÀ'),
(1098, '\0\0\0\0\0\0\0›sðLhÊ9@|_\\ªRTÀ'),
(1099, '\0\0\0\0\0\0\0ˆópÓ[:@e–ó{QTÀ'),
(1100, '\0\0\0\0\0\0\0b%µ9@š‰3ÐÆTÀ'),
(1101, '\0\0\0\0\0\0\0 êãF6Æ9@…LèdTÀ'),
(1102, '\0\0\0\0\0\0\0¤§ÝùÉ9@ÝCû}TÀ'),
(1103, '\0\0\0\0\0\0\0 êãF6Æ9@…LèdTÀ'),
(1104, '\0\0\0\0\0\0\09MúÖâî9@~¥˜(g\nTÀ'),
(1105, '\0\0\0\0\0\0\0 êãF6Æ9@…LèdTÀ'),
(1106, '\0\0\0\0\0\0\0Iæ¢kpÊ9@ú”ùÅTÀ'),
(1107, '\0\0\0\0\0\0\0›sðLhÊ9@|_\\ªRTÀ'),
(1108, '\0\0\0\0\0\0\0¤§ÝùÉ9@ÝCû}TÀ'),
(1109, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1110, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1111, '\0\0\0\0\0\0\0õÿÒýHJ@o7wª2Ï¿'),
(1112, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1113, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1114, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1115, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1116, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1117, '\0\0\0\0\0\0\0Â7¨XïB@AEÕ¯t‘^À'),
(1118, '\0\0\0\0\0\0\0áz®GáB@{®Gáš^À'),
(1119, '\0\0\0\0\0\0\0ß6®äB@®òœˆš^À'),
(1120, '\0\0\0\0\0\0\0NfgéC@¾TÇ…Þ‰UÀ'),
(1121, '\0\0\0\0\0\0\0:w»^šÞB@ù«<š^À'),
(1122, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1123, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(4768, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(1125, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1126, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1127, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1128, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1129, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1130, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1131, '\0\0\0\0\0\0\0E•«i(„D@žb0Ú>éZÀ'),
(1132, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1133, '\0\0\0\0\0\0\0}è‚ú–áB@£<ór™^À'),
(1134, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1135, '\0\0\0\0\0\0\0V™ÎóLßB@¦±ú#›^À'),
(1136, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1137, '\0\0\0\0\0\0\0”ÒØ.C@¤¥—½\rVÀ'),
(1138, '\0\0\0\0\0\0\0Ð+žz¤åB@Q…?Ã›‘^À'),
(1139, '\0\0\0\0\0\0\0ñóßƒ×âB@=›UŸ›^À'),
(1140, '\0\0\0\0\0\0\05à“˜³=@Ì’¥{BËWÀ'),
(1141, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1142, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1143, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1144, '\0\0\0\0\0\0\0®dÇF âB@Õ&Nîw›^À'),
(1145, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1146, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1147, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1148, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1149, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1150, '\0\0\0\0\0\0\0¹jCjáB@£­J"ûš^À'),
(1151, '\0\0\0\0\0\0\0R'' ‰°ãB@ãßg\\8™^À'),
(1152, '\0\0\0\0\0\0\0Úù#±IæB@Eø?œ^À'),
(1153, '\0\0\0\0\0\0\0‰BËºäB@g·–Ép›^À'),
(1154, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1155, '\0\0\0\0\0\0\0âg«õæB@þªmÔT‘^À'),
(1156, '\0\0\0\0\0\0\0™ÒŸ¢¸B@-ÌB;''‰^À'),
(1157, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1158, '\0\0\0\0\0\0\0»¹øÛžðB@ñH¼<‘^À'),
(1159, '\0\0\0\0\0\0\0Ý¢‚y~æB@jfô›^À'),
(1160, '\0\0\0\0\0\0\0Í—råB@ó9w»Þ™^À'),
(1161, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1162, '\0\0\0\0\0\0\0§X5s)C@;%¯“^À'),
(1163, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1164, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1165, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1166, '\0\0\0\0\0\0\0î]ƒ¾ôFC@‰”fó^^À'),
(1167, '\0\0\0\0\0\0\0B$CŽ­ãB@¢|Aš^À'),
(1168, '\0\0\0\0\0\0\08<sÅ{æB@k §ùô›^À'),
(1169, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1170, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1171, '\0\0\0\0\0\0\0ƒF™hÛB@''y¿œ^À'),
(1172, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1173, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1174, '\0\0\0\0\0\0\0 îêUdæB@T•yPœ^À'),
(1175, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1176, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1177, '\0\0\0\0\0\0\0ïø›õÎäB@Þw}™^À'),
(1178, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1179, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1180, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1181, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1182, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1183, '\0\0\0\0\0\0\0<Ü\r‹áB@‰D¡eÝ›^À'),
(1184, '\0\0\0\0\0\0\0“S;ÃÔâB@ôßƒ×.š^À'),
(1185, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1186, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1187, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1188, '\0\0\0\0\0\0\0×¥FègæB@Ÿ2âœ^À'),
(1189, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1190, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1191, '\0\0\0\0\0\0\0›:äB@qX\ZøQš^À'),
(1192, '\0\0\0\0\0\0\0£®µ÷áB@Zº‚mÄš^À'),
(1193, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1194, '\0\0\0\0\0\0\0áz®GáB@{®Gáš^À'),
(1195, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1196, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1197, '\0\0\0\0\0\0\0JXØàB@áy©Ø˜š^À'),
(1198, '\0\0\0\0\0\0\0_ËÐiÛB@\0\0\0\0\0^À'),
(1199, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1200, '\0\0\0\0\0\0\0hêu‹ÀäB@»-ìÄ@š^À'),
(1201, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1202, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1203, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1204, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1205, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1206, '\0\0\0\0\0\0\0ÃÞz‚ãB@HÍ\r<š^À'),
(1207, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1208, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1209, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À');
INSERT INTO `businesspoint` (`idbusinesspoint`, `point`) VALUES
(1210, '\0\0\0\0\0\0\0s.ÅUeåB@úFtÏº™^À'),
(1211, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1212, '\0\0\0\0\0\0\0JXØàB@áy©Ø˜š^À'),
(1213, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1214, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1215, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1216, '\0\0\0\0\0\0\0¾˜)R3C@Ì\Z=e¦TÀ'),
(1217, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1218, '\0\0\0\0\0\0\0åÕ9dÃD@MŒí¤VÀ'),
(1219, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1220, '\0\0\0\0\0\0\0JXØàB@áy©Ø˜š^À'),
(1221, '\0\0\0\0\0\0\01õ©æB@Ì£ÑÓ¶œ^À'),
(1222, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1223, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1224, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1225, '\0\0\0\0\0\0\0(Qåj\ZäB@=Düž^À'),
(1226, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1227, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1228, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1229, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1230, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1231, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1232, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1233, '\0\0\0\0\0\0\0åñucãB@ö)( š^À'),
(1234, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1235, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1236, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1237, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1238, '\0\0\0\0\0\0\0ÂP‡nãB@€µœ^À'),
(1239, '\0\0\0\0\0\0\0ËÓ^é!âB@_Q\0{»›^À'),
(1240, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1241, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1242, '\0\0\0\0\0\0\0pb£™çB@Ú5Æó>š^À'),
(1243, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1244, '\0\0\0\0\0\0\0°µ­ÈB@Á|hÕ”^À'),
(1245, '\0\0\0\0\0\0\0Ï\\ñ±æB@ía/0›^À'),
(1246, '\0\0\0\0\0\0\0’‚]åB@y•µMñš^À'),
(1247, '\0\0\0\0\0\0\0ùí5NTéB@–DQû‘^À'),
(1248, '\0\0\0\0\0\0\0_ËÐiÛB@\0\0\0\0\0^À'),
(1249, '\0\0\0\0\0\0\0_ËÐiÛB@\0\0\0\0\0^À'),
(1250, '\0\0\0\0\0\0\0	×íýW©B@¥€YF‚^À'),
(1251, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1252, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1253, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1254, '\0\0\0\0\0\0\0Òª–t”åB@£¢Ñ^À'),
(1255, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1256, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1257, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1258, '\0\0\0\0\0\0\0ªÿ¥VàB@gÉ/Mš^À'),
(1259, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1260, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1261, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1262, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1263, '\0\0\0\0\0\0\0m¡õðãB@U½üN“™^À'),
(1264, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1265, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1266, '\0\0\0\0\0\0\0©úð‡äB@m&•ßØ™^À'),
(1267, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1268, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1269, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1270, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1271, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1272, '\0\0\0\0\0\0\0ÃÞz‚ãB@HÍ\r<š^À'),
(1273, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1274, '\0\0\0\0\0\0\0ŽÙHÈöíB@·óXŸ^À'),
(1275, '\0\0\0\0\0\0\0çû©ñÒåB@Ú|a2™^À'),
(1276, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1277, '\0\0\0\0\0\0\0JXØàB@áy©Ø˜š^À'),
(1278, '\0\0\0\0\0\0\0Â7¨XïB@AEÕ¯t‘^À'),
(1279, '\0\0\0\0\0\0\0òÑâŒaæB@â\0ú}ÿ™^À'),
(1280, '\0\0\0\0\0\0\0kËÊ@¯áB@‘5ÙõAš^À'),
(1281, '\0\0\0\0\0\0\0JXØàB@áy©Ø˜š^À'),
(1282, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1283, '\0\0\0\0\0\0\0úª¦5æB@ölð“›^À'),
(1284, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1285, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1286, '\0\0\0\0\0\0\0üSªDÙáB@Ó1çûš^À'),
(1287, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1288, '\0\0\0\0\0\0\0³9ûÜäB@µ\nQtš^À'),
(1289, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1290, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1291, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1292, '\0\0\0\0\0\0\0]ºîRµB@íÜÓŽ^À'),
(1293, '\0\0\0\0\0\0\0ïì†ÈDA@£TgZ‡XÀ'),
(1294, '\0\0\0\0\0\0\0¬‹Ûh\0ãB@„F°qýš^À'),
(1295, '\0\0\0\0\0\0\0s™ýp«B@ønóFy^À'),
(1296, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1297, '\0\0\0\0\0\0\0ÑÛé¡ãB@«éz¢ë˜^À'),
(1298, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1299, '\0\0\0\0\0\0\0f¾ƒŸ\\D@¿a¢A\nRÀ'),
(1300, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1301, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1302, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1303, '\0\0\0\0\0\0\0Â7¨XïB@AEÕ¯t‘^À'),
(1304, '\0\0\0\0\0\0\0Â7¨XïB@AEÕ¯t‘^À'),
(1305, '\0\0\0\0\0\0\0ÅÅQ¹‰äB@ØDf.p›^À'),
(1306, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1307, '\0\0\0\0\0\0\0ÜxäB@?Ä''š^À'),
(1308, '\0\0\0\0\0\0\0³9ûÜäB@µ\nQtš^À'),
(1309, '\0\0\0\0\0\0\0Â7¨XïB@AEÕ¯t‘^À'),
(1310, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1311, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1312, '\0\0\0\0\0\0\0–•&¥ åB@êAA)Z™^À'),
(1313, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1314, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1315, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1316, '\0\0\0\0\0\0\05´Ø€äB@¤¤‡¡™^À'),
(1317, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1318, '\0\0\0\0\0\0\0ªÄËÓB@Öü’š^À'),
(1319, '\0\0\0\0\0\0\0s™ýp«B@ønóFy^À'),
(1320, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1321, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1322, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1323, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1324, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1325, '\0\0\0\0\0\0\0U+¸Ä6eC@e½½O^À'),
(1326, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1327, '\0\0\0\0\0\0\0ï\0OZæB@NðMÓç›^À'),
(1328, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1329, '\0\0\0\0\0\0\0î´5"åB@RÕQ÷™^À'),
(1330, '\0\0\0\0\0\0\0s™ýp«B@ønóFy^À'),
(1331, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1332, '\0\0\0\0\0\0\0å:×AoÃD@¿]¶gVÀ'),
(1333, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(1334, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(1335, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(1336, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(1337, '\0\0\0\0\0\0\0N	ˆI¸ðD@qçÂH/ëUÀ'),
(1338, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(1339, '\0\0\0\0\0\0\0O]ù,ÏÀD@í¹$=åUÀ'),
(1340, '\0\0\0\0\0\0\0ÖqüPE@@<w\0VÀ'),
(1341, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(1342, '\0\0\0\0\0\0\0¢A\nžB`C@j ùœ»žVÀ'),
(1343, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(1344, '\0\0\0\0\0\0\0=Ô¶aôD@žy9ì¾éUÀ'),
(1345, '\0\0\0\0\0\0\0Và\ZŽôD@ËY¡èUÀ'),
(1346, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(1347, '\0\0\0\0\0\0\0ˆØ`á$ñD@ñ\r…ÏÖçUÀ'),
(1348, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(1349, '\0\0\0\0\0\0\0:\Z,AëâC@\rd‡B‡UÀ'),
(3077, '\0\0\0\0\0\0\0ÿ®tã‚C@Vþk/X~UÀ'),
(1351, '\0\0\0\0\0\0\0r^­$Ã4F@6^YUÀ'),
(1352, '\0\0\0\0\0\0\0Ä”H¢—ùD@ãüM(êUÀ'),
(1353, '\0\0\0\0\0\0\0|ÿ0S¤&E@åVR8LýUÀ'),
(1354, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(1355, '\0\0\0\0\0\0\0†Œ.oðD@q\0ý¾çUÀ'),
(1356, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(1357, '\0\0\0\0\0\0\0éÒ¿$•ùD@ïU+~êUÀ'),
(1358, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(1359, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(1360, '\0\0\0\0\0\0\0nÝÍSñD@]©gA(èUÀ'),
(1361, '\0\0\0\0\0\0\0O²žZøD@ÿDÀ|éUÀ'),
(1362, '\0\0\0\0\0\0\0nÝÍSñD@]©gA(èUÀ'),
(1363, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(1364, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(1365, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(1366, '\0\0\0\0\0\0\0ÖqüPE@@<w\0VÀ'),
(1367, '\0\0\0\0\0\0\0>ÍÉ‹æD@“©‚QÉVÀ'),
(1368, '\0\0\0\0\0\0\0Àìž<,òD@«	¢îçUÀ'),
(1369, '\0\0\0\0\0\0\0œ¥d9	óD@Á©$ïçUÀ'),
(1370, '\0\0\0\0\0\0\0„q&\\~ðD@á¬»èUÀ'),
(1371, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(1372, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(1373, '\0\0\0\0\0\0\0N	ˆI¸ðD@qçÂH/ëUÀ'),
(1374, '\0\0\0\0\0\0\0TTýJçñD@â!ŒŸÆçUÀ'),
(1375, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(1376, '\0\0\0\0\0\0\0¥3û<ìD@•m–9èUÀ'),
(1377, '\0\0\0\0\0\0\0\\¯éAAùD@«#G:êUÀ'),
(1378, '\0\0\0\0\0\0\0&È¨p`D@Sùè£RÀ'),
(1379, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(1380, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(1381, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(1382, '\0\0\0\0\0\0\08˜—\r|º9@|Ò‰STÀ'),
(1383, '\0\0\0\0\0\0\0›sðLhÊ9@|_\\ªRTÀ'),
(1384, '\0\0\0\0\0\0\0¤§ÝùÉ9@ÝCû}TÀ'),
(1385, '\0\0\0\0\0\0\0|ä 2ª;@Ó÷\ZaTÀ'),
(1386, '\0\0\0\0\0\0\0 êãF6Æ9@…LèdTÀ'),
(1387, '\0\0\0\0\0\0\0 êãF6Æ9@…LèdTÀ'),
(1388, '\0\0\0\0\0\0\0 Z3è:õ9@''ý–JTÀ'),
(1389, '\0\0\0\0\0\0\0œû«Ç}Ë9@À\\‹ TÀ'),
(1390, '\0\0\0\0\0\0\0 êãF6Æ9@…LèdTÀ'),
(1391, '\0\0\0\0\0\0\0 êãF6Æ9@…LèdTÀ'),
(1392, '\0\0\0\0\0\0\0›sðLhÊ9@|_\\ªRTÀ'),
(1393, '\0\0\0\0\0\0\0 êãF6Æ9@…LèdTÀ'),
(1394, '\0\0\0\0\0\0\0ÖeBÝã9@-póTÀ'),
(1395, '\0\0\0\0\0\0\0 êãF6Æ9@…LèdTÀ'),
(1396, '\0\0\0\0\0\0\0|ä 2ª;@Ó÷\ZaTÀ'),
(1397, '\0\0\0\0\0\0\0 êãF6Æ9@…LèdTÀ'),
(1398, '\0\0\0\0\0\0\0 êãF6Æ9@…LèdTÀ'),
(1399, '\0\0\0\0\0\0\0ß&íWK¹9@#*ù}$TÀ'),
(1400, '\0\0\0\0\0\0\0d’‘³¸9@­ñ>3-TÀ'),
(1401, '\0\0\0\0\0\0\0 êãF6Æ9@…LèdTÀ'),
(1402, '\0\0\0\0\0\0\0‰\nÕÍÅ'':@Š}"TÀ'),
(1403, '\0\0\0\0\0\0\0¤§ÝùÉ9@ÝCû}TÀ'),
(1404, '\0\0\0\0\0\0\0ˆópÓ[:@e–ó{QTÀ'),
(1405, '\0\0\0\0\0\0\0 êãF6Æ9@…LèdTÀ'),
(1406, '\0\0\0\0\0\0\0ˆópÓ[:@e–ó{QTÀ'),
(1407, '\0\0\0\0\0\0\0d’‘³¸9@­ñ>3-TÀ'),
(1408, '\0\0\0\0\0\0\0b%µ9@š‰3ÐÆTÀ'),
(1409, '\0\0\0\0\0\0\0¶,_—á¯A@6Øå%¼]À'),
(1410, '\0\0\0\0\0\0\0 êãF6Æ9@…LèdTÀ'),
(1411, '\0\0\0\0\0\0\0 êãF6Æ9@…LèdTÀ'),
(1412, '\0\0\0\0\0\0\0|ä 2ª;@Ó÷\ZaTÀ'),
(1413, '\0\0\0\0\0\0\0¤VówJä9@¨»ü˜ TÀ'),
(1414, '\0\0\0\0\0\0\0)DÛÆ¤9@\ná,€„TÀ'),
(1415, '\0\0\0\0\0\0\0ˆópÓ[:@e–ó{QTÀ'),
(1416, '\0\0\0\0\0\0\0d’‘³¸9@­ñ>3-TÀ'),
(1417, '\0\0\0\0\0\0\0ó¾IÓØ:@qãósTÀ'),
(1418, '\0\0\0\0\0\0\0LÛdù_ã9@e}¹TÀ'),
(1419, '\0\0\0\0\0\0\0ªïü¢õ9@¦|ªF	TÀ'),
(1420, '\0\0\0\0\0\0\0ø³ýÉÒ:@ó{ö·ßTÀ'),
(1421, '\0\0\0\0\0\0\0ø³ýÉÒ:@ó{ö·ßTÀ'),
(1422, '\0\0\0\0\0\0\0 êãF6Æ9@…LèdTÀ'),
(1423, '\0\0\0\0\0\0\0 êãF6Æ9@…LèdTÀ'),
(1424, '\0\0\0\0\0\0\0ø³ýÉÒ:@ó{ö·ßTÀ'),
(1425, '\0\0\0\0\0\0\0 êãF6Æ9@…LèdTÀ'),
(1426, '\0\0\0\0\0\0\0LÛdù_ã9@e}¹TÀ'),
(1427, '\0\0\0\0\0\0\0¸Áš0û9@r\Z¢\n	TÀ'),
(1428, '\0\0\0\0\0\0\0Öÿ9Ì¿9@Šä+”TÀ'),
(1429, '\0\0\0\0\0\0\0pµ+™ø9@¡ˆ Å-	TÀ'),
(1430, '\0\0\0\0\0\0\0 êãF6Æ9@…LèdTÀ'),
(1431, '\0\0\0\0\0\0\0s™ýp«B@ønóFy^À'),
(1432, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1433, '\0\0\0\0\0\0\0÷&á×kH@ò>3-Vg0@'),
(1434, '\0\0\0\0\0\0\0s™ýp«B@ønóFy^À'),
(1435, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1436, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1437, '\0\0\0\0\0\0\0m¨çoâB@ïúñž^À'),
(1438, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1439, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1440, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1441, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1442, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1443, '\0\0\0\0\0\0\0s™ýp«B@ønóFy^À'),
(1444, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1445, '\0\0\0\0\0\0\0à:óaäB@;d»›^À'),
(1446, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1447, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1448, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1449, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1450, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1451, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1452, '\0\0\0\0\0\0\0³ö-)-àB@‰ˆ2¯›^À'),
(1453, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1454, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1455, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1456, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1457, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1458, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1459, '\0\0\0\0\0\0\0Â7¨XïB@AEÕ¯t‘^À'),
(1460, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1461, '\0\0\0\0\0\0\0Â7¨XïB@AEÕ¯t‘^À'),
(1462, '\0\0\0\0\0\0\0 ì«åB@kñ)\0š^À'),
(1463, '\0\0\0\0\0\0\0TRÌæåB@»?ƒò™^À'),
(1464, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1465, '\0\0\0\0\0\0\0Ñ=ë\Z-åB@õ„%Pœ^À'),
(1466, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1467, '\0\0\0\0\0\0\0Óp%–ïâB@¾‹Ri›^À'),
(1468, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1469, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1470, '\0\0\0\0\0\0\0Iï\0OäB@®+f„·›^À'),
(1471, '\0\0\0\0\0\0\0vg¦jŽG@E#DžÉ¥^À'),
(1472, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1473, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1474, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1475, '\0\0\0\0\0\0\0Â7¨XïB@AEÕ¯t‘^À'),
(1476, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1477, '\0\0\0\0\0\0\0Å;À“fC@=`2åP^À'),
(1478, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1479, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1480, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1481, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1482, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1483, '\0\0\0\0\0\0\0_ËÐiÛB@\0\0\0\0\0^À'),
(1484, '\0\0\0\0\0\0\0áÐ[<¼ÅB@ŸVÑšƒ^À'),
(1485, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1486, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1487, '\0\0\0\0\0\0\0]p¿EC@)( do^À'),
(1488, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1489, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1490, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1491, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(1492, '\0\0\0\0\0\0\0\n*OÅ2óD@_aÁý\0èUÀ'),
(1493, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(1494, '\0\0\0\0\0\0\0¸!Æk^ýD@DiâùUÀ'),
(1495, '\0\0\0\0\0\0\0ZØÓýD@V¶yËêUÀ'),
(1496, '\0\0\0\0\0\0\0.äÜòD@Ôšæ§èUÀ'),
(1497, '\0\0\0\0\0\0\0åõ»ïýD@‚f¡ÿUÀ'),
(1498, '\0\0\0\0\0\0\0;­6ZiøD@/á+¯éUÀ'),
(1499, '\0\0\0\0\0\0\0Ýð£	ôD@ÂÈ\r>ëUÀ'),
(1500, '\0\0\0\0\0\0\0‹©ôÎüD@l#ëUÀ'),
(1501, '\0\0\0\0\0\0\0@êeÊ=ðD@øES‡¦èUÀ'),
(1502, '\0\0\0\0\0\0\0fÓ¶[øD@«¬ÑÔêUÀ'),
(1503, '\0\0\0\0\0\0\0”‚UõôD@á\riTàéUÀ'),
(1504, '\0\0\0\0\0\0\0þEÐ˜IòD@PãÞüèUÀ'),
(1505, '\0\0\0\0\0\0\0(«3½öD@à%Ý;éUÀ'),
(1506, '\0\0\0\0\0\0\0üŸ\r\n”g@@½àÓœ<‡XÀ'),
(1507, '\0\0\0\0\0\0\0æË°§C@ù0{Ùv)SÀ'),
(1508, '\0\0\0\0\0\0\0 îêUdöD@%±¤Ü}êUÀ'),
(1509, '\0\0\0\0\0\0\0š$–”ùD@µ¦yÇ)êUÀ'),
(1510, '\0\0\0\0\0\0\0ÿ®ÏœõñD@DÌÛÇ@èUÀ'),
(1511, '\0\0\0\0\0\0\0Î¥]ñyãC@G»U‡UÀ'),
(1512, '\0\0\0\0\0\0\0ôüi£:óD@.\Z2èUÀ'),
(1513, '\0\0\0\0\0\0\01ô«”tE@µ_’o÷UÀ'),
(1514, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(1515, '\0\0\0\0\0\0\0¤rµ4ùD@ÆÄæãÚéUÀ'),
(1516, '\0\0\0\0\0\0\0ì÷Ä:UòD@³ûŸ\rŠèUÀ'),
(1517, '\0\0\0\0\0\0\0y=˜ûD@a°ä*ìUÀ'),
(1518, '\0\0\0\0\0\0\0W¹«²JøD@´Á./åêUÀ'),
(1519, '\0\0\0\0\0\0\0Y$7Ô9õD@QFGëUÀ'),
(1520, '\0\0\0\0\0\0\00*©ÐóD@JMqÌêUÀ'),
(1521, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(1522, '\0\0\0\0\0\0\0Yþ×#\0E@Ïy,lêUÀ'),
(1523, '\0\0\0\0\0\0\0·*‰ìƒÕD@!K0æøòUÀ'),
(1524, '\0\0\0\0\0\0\0rSÍçE@Må£{öUÀ'),
(1525, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(1526, '\0\0\0\0\0\0\0HPüïD@¯Úë“éUÀ'),
(1527, '\0\0\0\0\0\0\0íÔ\\n0ýD@:ùÙÈêUÀ'),
(1528, '\0\0\0\0\0\0\0éŒ¼ìD@á\n(ÔüUÀ'),
(1529, '\0\0\0\0\0\0\0áÝ€…‚÷D@aJÉÙéUÀ'),
(1530, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(1531, '\0\0\0\0\0\0\0vÖ¸HëòD@—ƒê0ðçUÀ'),
(1532, '\0\0\0\0\0\0\0Ç\\¾šáC@?MÒ¡xÎUÀ'),
(1533, '\0\0\0\0\0\0\0¶Ö¼OúòD@>±N•ïçUÀ'),
(1534, '\0\0\0\0\0\0\0^»´á°òD@{¡€í`èUÀ'),
(1535, '\0\0\0\0\0\0\0DmFAE@EhæÉìUÀ'),
(1536, '\0\0\0\0\0\0\0°Ñ(mE@ñy´ÌõUÀ'),
(1537, '\0\0\0\0\0\0\0p”¼:ÇøD@ØdzˆéUÀ'),
(1538, '\0\0\0\0\0\0\0c?0ìÕøD@–qøIÚéUÀ'),
(1539, '\0\0\0\0\0\0\0¸·éöD@=›UéUÀ'),
(1540, '\0\0\0\0\0\0\0ì{íÉµD@…RÅ†TÀ'),
(1541, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(1542, '\0\0\0\0\0\0\0ëzý¤5ñD@;òQéèUÀ'),
(1543, '\0\0\0\0\0\0\0;oc³#íD@ó\0ùõçUÀ'),
(1544, '\0\0\0\0\0\0\0''“dg÷D@ýÑö4éUÀ'),
(1545, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(1546, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(1547, '\0\0\0\0\0\0\0hÁÕKòD@¿X)NÿçUÀ'),
(1548, '\0\0\0\0\0\0\0µ3Lm©ÆD@\rë|.	ÞUÀ'),
(1549, '\0\0\0\0\0\0\0ë ·¬C@/›JP_UÀ'),
(1550, '\0\0\0\0\0\0\0DûXÁoûD@}°Œ\rÝëUÀ'),
(1551, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(1552, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(1553, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(1554, '\0\0\0\0\0\0\0t	‡òD@9´Èv¾èUÀ'),
(1555, '\0\0\0\0\0\0\0¹¹Bi¹D@íÉ\rÐÇ(UÀ'),
(1556, '\0\0\0\0\0\0\0´r/0+òD@hÂ@!LèUÀ'),
(1557, '\0\0\0\0\0\0\0Ê}¼¡:öD@JK›`éUÀ'),
(1558, '\0\0\0\0\0\0\0àªÔìóD@ù¿#*TèUÀ'),
(1559, '\0\0\0\0\0\0\0èÅähéñD@¯Im˜×èUÀ'),
(1560, '\0\0\0\0\0\0\0Ñ®BÊOôD@ËÇ¤uŠéUÀ'),
(1561, '\0\0\0\0\0\0\0üŸ\r\n”g@@½àÓœ<‡XÀ'),
(1562, '\0\0\0\0\0\0\0Õ²µ¾HöD@TýJçÃèUÀ'),
(1563, '\0\0\0\0\0\0\0ùYvÒ\\D@:â5ÔRÀ'),
(1564, '\0\0\0\0\0\0\0½.P÷sC@wæÔ„#BSÀ'),
(1565, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(1566, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(1567, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(1568, '\0\0\0\0\0\0\0ÿªÈÐD@¯Ý,ÞUÀ'),
(1569, '\0\0\0\0\0\0\0üà|êX§A@Éxïë¦SÀ'),
(1570, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(1571, '\0\0\0\0\0\0\0åÅoöD@qÕl¯êUÀ'),
(1572, '\0\0\0\0\0\0\0…¦6‚žE@ù±“òUÀ'),
(1573, '\0\0\0\0\0\0\0·˜Ÿš"E@IIC«\0VÀ'),
(1574, '\0\0\0\0\0\0\05l¬iöD@bÃ.å×ìUÀ'),
(1575, '\0\0\0\0\0\0\0Ú>æìD@úÑpÊÜîUÀ'),
(1576, '\0\0\0\0\0\0\0ÞL–¤|÷D@Ï%Á@éUÀ'),
(1577, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(1578, '\0\0\0\0\0\0\0âQÏ''—äD@?£0m	VÀ'),
(1579, '\0\0\0\0\0\0\0Çí<–óD@¾ðïØtëUÀ'),
(1580, '\0\0\0\0\0\0\0C\Zº~fòD@ÿ°¥GSèUÀ'),
(1581, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(1582, '\0\0\0\0\0\0\0×QÕQûD@œ>ñÒëUÀ'),
(1583, '\0\0\0\0\0\0\0ÆpÐ¹6åD@‹„[ãØöUÀ'),
(1584, '\0\0\0\0\0\0\0Ôö\nf§áD@v¿¯6ëòUÀ'),
(1585, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(1586, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(1587, '\0\0\0\0\0\0\0wòé±ñD@ñH¼<èUÀ'),
(1588, '\0\0\0\0\0\0\0¸2òÃR÷D@¸nï¿ºëUÀ'),
(1589, '\0\0\0\0\0\0\0s‚69|ôD@¿×—èUÀ'),
(1590, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(1591, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(1592, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(3072, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(1594, '\0\0\0\0\0\0\0Ü¸ÅüÜòD@\nØFìçUÀ'),
(1595, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(1596, '\0\0\0\0\0\0\0Ž::®FøD@K=ByêUÀ'),
(1597, '\0\0\0\0\0\0\0Þî›±úD@W{Ø…êUÀ'),
(1598, '\0\0\0\0\0\0\0º§5rE@‘£”keñUÀ'),
(1599, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(1600, '\0\0\0\0\0\0\0R“…TöõD@‹2ÀªëUÀ'),
(1601, '\0\0\0\0\0\0\0DàH ÁE@{ù&3úUÀ'),
(1602, '\0\0\0\0\0\0\0ñgÓlZD@®[©}RÀ'),
(1603, '\0\0\0\0\0\0\0ô\Z»Dõ^D@ØJè.‰RÀ'),
(1604, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(1605, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(1606, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(1607, '\0\0\0\0\0\0\0\0¯*VhlD@•èv@#zRÀ'),
(1608, '\0\0\0\0\0\0\0,çœéo[D@øIÿÜa€RÀ'),
(1609, '\0\0\0\0\0\0\0=CÝ¬fÝB@TŠÂÓÐÖSÀ'),
(1610, '\0\0\0\0\0\0\0Åõ9ˆçXD@-ÅŸòyRÀ'),
(1611, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(1612, '\0\0\0\0\0\0\033333SD@ÍÌÌÌÌ|RÀ'),
(1613, '\0\0\0\0\0\0\0Z©VÐlD@Æ‘½”pwRÀ'),
(1614, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(1615, '\0\0\0\0\0\0\0Íên‡dD@‡ûÈ­I}RÀ'),
(1616, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(1617, '\0\0\0\0\0\0\0,ŸåypeD@‡ùòì|RÀ'),
(1618, '\0\0\0\0\0\0\0Áå±fdZD@N~‹N–€RÀ'),
(1619, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(1620, '\0\0\0\0\0\0\0ùHJzbD@ÿ’T¦˜RÀ'),
(1621, '\0\0\0\0\0\0\0#CØ:‚ZD@¥s4ýÈ€RÀ'),
(1622, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(1623, '\0\0\0\0\0\0\0Z©VÐlD@Æ‘½”pwRÀ'),
(1624, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(1625, '\0\0\0\0\0\0\0jœàöjF@y²öÒï/QÀ'),
(1626, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(1627, '\0\0\0\0\0\0\0Ë\08s_D@0vŒ€RÀ'),
(1628, '\0\0\0\0\0\0\0¢©ÛÙ_D@ìv²RÀ'),
(1629, '\0\0\0\0\0\0\09(a¦gD@bJ$ÑË|RÀ'),
(1630, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(1631, '\0\0\0\0\0\0\033333SD@ÍÌÌÌÌ|RÀ'),
(1632, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(1633, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(1634, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(1635, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(1636, '\0\0\0\0\0\0\0’`ãbD@´äñ´ü~RÀ'),
(1637, '\0\0\0\0\0\0\0}M 6¢eD@ÜDÒ;~RÀ'),
(1638, '\0\0\0\0\0\0\0ÉFÖÐ^D@×Ê:ÒO€RÀ'),
(1639, '\0\0\0\0\0\0\0ùp$+\ZÙA@à1—¯&¶I@'),
(1640, '\0\0\0\0\0\0\0ò&¿E''aD@Ž´¯—RÀ'),
(1641, '\0\0\0\0\0\0\0ù/ÈXD@œ3¢´7RÀ'),
(1642, '\0\0\0\0\0\0\06‘™`D@Þrõc“RÀ'),
(1643, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(1644, '\0\0\0\0\0\0\0ò&¿E''aD@Ž´¯—RÀ'),
(1645, '\0\0\0\0\0\0\0›Ó–A@ƒfÚ”]À'),
(1646, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(1647, '\0\0\0\0\0\0\0¼± 0(A@Ï‘KÒë—]À'),
(1648, '\0\0\0\0\0\0\0ãŸ¾\n•A@	!{µ˜]À'),
(1649, '\0\0\0\0\0\0\0Á:Ž*A@}3{ê—]À'),
(1650, '\0\0\0\0\0\0\0›Ó–A@ƒfÚ”]À'),
(1651, '\0\0\0\0\0\0\0yŽm¾¶\nA@@VK•ƒ—]À'),
(1652, '\0\0\0\0\0\0\0êáÒ+â@@÷PGlŒ]À'),
(1653, '\0\0\0\0\0\0\0›Ó–A@ƒfÚ”]À'),
(1654, '\0\0\0\0\0\0\0Ôkk…A@ì€Ñ&—]À'),
(1655, '\0\0\0\0\0\0\0Œ‚àñí	A@F\\\0\Z¥]À'),
(1656, '\0\0\0\0\0\0\0ÖsÒûÆA@F`¬o`p]À'),
(1657, '\0\0\0\0\0\0\0¾L!u7A@ç‹½_ì]À'),
(1658, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(1659, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(1660, '\0\0\0\0\0\0\0ÄÎ:¯A@øùï]À'),
(1661, '\0\0\0\0\0\0\0š$–”A@m6Vbž˜]À'),
(1662, '\0\0\0\0\0\0\0Ôkk…A@ì€Ñ&—]À'),
(1663, '\0\0\0\0\0\0\0›Ó–A@ƒfÚ”]À'),
(1664, '\0\0\0\0\0\0\0›Ó–A@ƒfÚ”]À'),
(1665, '\0\0\0\0\0\0\0›Ó–A@ƒfÚ”]À'),
(1666, '\0\0\0\0\0\0\0•ò6€:@aEü\rTÀ'),
(1667, '\0\0\0\0\0\0\0€£xðnß@@BWÇ–Šw]À'),
(1668, '\0\0\0\0\0\0\0Ã(­dl	A@ØÏpŸ™]À'),
(1669, '\0\0\0\0\0\0\05×Ä]î@@†GÑ¹‘™]À'),
(1670, '\0\0\0\0\0\0\0U7r8Ï@@Î²Ýs{]À'),
(1671, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(1672, '\0\0\0\0\0\0\0Û+˜êA@÷ð½?‰]À'),
(1673, '\0\0\0\0\0\0\0KÂÏÉœÅ@@ST¢‘tr]À'),
(1674, '\0\0\0\0\0\0\0¢qòl «@@¶Ö¼Oú”]À'),
(1675, '\0\0\0\0\0\0\0€£xðnß@@BWÇ–Šw]À'),
(1676, '\0\0\0\0\0\0\0Û+˜êA@÷ð½?‰]À'),
(1677, '\0\0\0\0\0\0\0@}"A@i\ZÍ²]À'),
(1678, '\0\0\0\0\0\0\0Û+˜êA@÷ð½?‰]À'),
(1679, '\0\0\0\0\0\0\0ˆû#g¼A@ªq\n¦]À'),
(1680, '\0\0\0\0\0\0\0"z}A@P7­oŸ]À'),
(1681, '\0\0\0\0\0\0\0jØï‰A@føO7Ð†]À'),
(1682, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(1683, '\0\0\0\0\0\0\0"z}A@P7­oŸ]À'),
(1684, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(1685, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(1686, '\0\0\0\0\0\0\0ÖsÒûÆA@F`¬o`p]À'),
(1687, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(1688, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(1689, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(1690, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(1691, '\0\0\0\0\0\0\0''\0µA@6Þ¸’]À'),
(1692, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(1693, '\0\0\0\0\0\0\0š?¦µiA@ØG§®•]À'),
(1694, '\0\0\0\0\0\0\0ŠA»žA@«@+Õ˜]À'),
(1695, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(1696, '\0\0\0\0\0\0\0Ø÷<Ú“A@œˆ~mý]À'),
(1697, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(1698, '\0\0\0\0\0\0\0Fú£^¦¢B@¬ô$úF-SÀ'),
(1699, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(1700, '\0\0\0\0\0\0\0Ö0è)_D@¹˜ŠRÀ'),
(1701, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(1702, '\0\0\0\0\0\0\0Ûÿ[$H\\D@‡²¦h›RÀ'),
(1703, '\0\0\0\0\0\0\0eŠ9:`D@\r''‚8~RÀ'),
(1704, '\0\0\0\0\0\0\0Žs›p¯`D@|c\0Ž~RÀ'),
(1705, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(1706, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(1707, '\0\0\0\0\0\0\0QÜñ&¿[D@2*_†5}RÀ'),
(1708, '\0\0\0\0\0\0\0J´^D@µ§äœØ~RÀ'),
(1709, '\0\0\0\0\0\0\0»ÆxÞ×aD@C€\rˆzRÀ'),
(1710, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(1711, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(1712, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(1713, '\0\0\0\0\0\0\0ðê×Y]D@JX€RÀ'),
(1714, '\0\0\0\0\0\0\0y’tÍäaD@À´¨OrRÀ'),
(1715, '\0\0\0\0\0\0\05–°6ÆVD@LUÚâ\ZRÀ'),
(1716, '\0\0\0\0\0\0\0Ÿ6çà[D@…|Ð³YRÀ'),
(1717, '\0\0\0\0\0\0\0Þ8Î	\\D@›äGüŠ}RÀ'),
(1718, '\0\0\0\0\0\0\0SÖÊßŒF@EmÑ¸¦WWÀ'),
(1719, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(1720, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(1721, '\0\0\0\0\0\0\0…ëQ¸]D@²³äRÀ'),
(1722, '\0\0\0\0\0\0\0,çœéo[D@øIÿÜa€RÀ'),
(1723, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(1724, '\0\0\0\0\0\0\0­/· \0vD@ç4´;vRÀ'),
(1725, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(1726, '\0\0\0\0\0\0\0AeüûŒ‹B@7§’ íWÀ'),
(1727, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(1728, '\0\0\0\0\0\0\0ddY0aD@J¸GpRÀ'),
(1729, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(1730, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(1731, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(1732, '\0\0\0\0\0\0\0®HLPÃ_D@§%VF#RÀ'),
(1733, '\0\0\0\0\0\0\0,çœéo[D@øIÿÜa€RÀ'),
(1734, '\0\0\0\0\0\0\0Až]¾õaD@M.ÆÀ:RÀ'),
(1735, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(1736, '\0\0\0\0\0\0\0¦]Pß^D@¥hå^`RÀ'),
(1737, '\0\0\0\0\0\0\0+j0\rÃcD@³MàŒÐ|RÀ'),
(1738, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(1739, '\0\0\0\0\0\0\0!®œ½aD@e—^Q€RÀ'),
(1740, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(1741, '\0\0\0\0\0\0\0S"aD@ßÞ5èKRÀ'),
(1742, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(1743, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(1744, '\0\0\0\0\0\0\0Ë2cD@vý‚Ý°|RÀ'),
(1745, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(1746, '\0\0\0\0\0\0\033333SD@ÍÌÌÌÌ|RÀ'),
(1747, '\0\0\0\0\0\0\033333SD@ÍÌÌÌÌ|RÀ'),
(1748, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(1749, '\0\0\0\0\0\0\0Æt×ÈddD@ëo‰’~RÀ'),
(1750, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(1751, '\0\0\0\0\0\0\0Õ”d\\D@Öýc!:RÀ'),
(1752, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(1753, '\0\0\0\0\0\0\0‘ao^D@ÀêÈ‘Î~RÀ'),
(1754, '\0\0\0\0\0\0\0\ZÀ[ AcD@ÅçN°ÿ|RÀ'),
(1755, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(1756, '\0\0\0\0\0\0\0\n±ˆa_D@ÿ^\nš~RÀ'),
(1757, '\0\0\0\0\0\0\0pê”GdD@°‘$×}RÀ'),
(1758, '\0\0\0\0\0\0\0\0UÜ¸ÅbD@M\rÙå\0}RÀ'),
(1759, '\0\0\0\0\0\0\0k­yŸôaD@àV0à›RÀ'),
(1760, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(1761, '\0\0\0\0\0\0\0F@…#H\\D@bëcOÌRÀ'),
(1762, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(1763, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(1764, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(1765, '\0\0\0\0\0\0\0Î™þ6Õ`D@<¸à}RÀ'),
(1766, '\0\0\0\0\0\0\0¯;‚Ào_D@+”;"•~RÀ'),
(1767, '\0\0\0\0\0\0\0B{õñÐ]D@gv‡RÀ'),
(1768, '\0\0\0\0\0\0\0^Bü\r_D@9öGs¿~RÀ'),
(1769, '\0\0\0\0\0\0\0Ð`SçQaD@ ÑŠXRÀ'),
(1770, '\0\0\0\0\0\0\0Rf`\\D@(Õ>RÀ'),
(1771, '\0\0\0\0\0\0\0W&üR?]D@[™ðKýRÀ'),
(1772, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(1773, '\0\0\0\0\0\0\033333SD@ÍÌÌÌÌ|RÀ'),
(1774, '\0\0\0\0\0\0\0å˜,î?\\D@ŸæäERÀ'),
(1775, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(1776, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(1777, '\0\0\0\0\0\0\0õZ\Z	 F@Å=ñ÷æmQÀ'),
(1778, '\0\0\0\0\0\0\0‚ùÐª;eD@8ËY~RÀ'),
(1779, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(1780, '\0\0\0\0\0\0\0ÁöÝ¾XbD@Ý3u¹qRÀ'),
(1781, '\0\0\0\0\0\0\0»Ÿ®I6I@ÔÙ$š›Ö-@'),
(1782, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(1783, '\0\0\0\0\0\0\0%[]N	\\D@l•`q8€RÀ'),
(1784, '\0\0\0\0\0\0\0)šbi]D@mÍ±å~RÀ'),
(1785, '\0\0\0\0\0\0\0Nïâ_D@JK@§û~RÀ'),
(1786, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(1787, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(1788, '\0\0\0\0\0\0\0pD÷¬k\\D@È_ZÔ''RÀ'),
(1789, '\0\0\0\0\0\0\0$¨+ér\\D@¼P\nË|RÀ'),
(1790, '\0\0\0\0\0\0\0·²é­&QD@ßÂºñî€RÀ'),
(1791, '\0\0\0\0\0\0\0b™¹À]D@ø7h¯>RÀ'),
(1792, '\0\0\0\0\0\0\0±jæv]D@ÄáÑÆ~RÀ'),
(1793, '\0\0\0\0\0\0\0pê”GdD@°‘$×}RÀ'),
(1794, '\0\0\0\0\0\0\033333SD@ÍÌÌÌÌ|RÀ'),
(1795, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(1796, '\0\0\0\0\0\0\0pê”GdD@°‘$×}RÀ'),
(1797, '\0\0\0\0\0\0\0É@ù_D@ßžŒ–(RÀ'),
(1798, '\0\0\0\0\0\0\0“nKä‚_D@ÛQœ£Ž~RÀ'),
(1799, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(1800, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(1801, '\0\0\0\0\0\0\0‰‘Ê¹¹aD@ÂUùùJRÀ'),
(1802, '\0\0\0\0\0\0\0=œÀtZcD@ý½4}RÀ'),
(1803, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(1804, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(1805, '\0\0\0\0\0\0\0EöA–_D@”g^»~RÀ'),
(1806, '\0\0\0\0\0\0\0û7Ô”	^D@>Þõã@RÀ'),
(1807, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(1808, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(1809, '\0\0\0\0\0\0\01%’èebD@¹ÿÈtè~RÀ'),
(1810, '\0\0\0\0\0\0\0ü¥E}’]D@=|™(ÂRÀ'),
(1811, '\0\0\0\0\0\0\0Ì"¹¡Î`D@¥îou¥~RÀ'),
(1812, '\0\0\0\0\0\0\0±¾É]D@,-#õž€RÀ'),
(1813, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(1814, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(1815, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(1816, '\0\0\0\0\0\0\0þ`à¹÷\\D@)ß^€RÀ'),
(1817, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(1818, '\0\0\0\0\0\0\0Ÿt"ÁTWD@ºN#-•RÀ'),
(1819, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(1820, '\0\0\0\0\0\0\033333SD@ÍÌÌÌÌ|RÀ'),
(1821, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(1822, '\0\0\0\0\0\0\0ì.PR`_D@¨âÆ-æRÀ'),
(1823, '\0\0\0\0\0\0\0áÎ*Øë_D@ áÍ\Z¼RÀ'),
(1824, '\0\0\0\0\0\0\0‘’hdD@ÚÍç·|RÀ'),
(1825, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(1826, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(1827, '\0\0\0\0\0\0\0T­…Yh[D@–x@Ù”€RÀ'),
(1828, '\0\0\0\0\0\0\0^Iò\\]D@x™a£~RÀ'),
(1829, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(1830, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(1831, '\0\0\0\0\0\0\0•„Ÿ“9`D@×Æ3Ã!~RÀ'),
(1832, '\0\0\0\0\0\0\0‡ßM·ì\\D@62;‹€RÀ'),
(1833, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(1834, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(1835, '\0\0\0\0\0\0\0èœD)Æ]D@$©–¾!€RÀ'),
(1836, '\0\0\0\0\0\0\0Eµ-o³^D@s×r€RÀ'),
(1837, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(1838, '\0\0\0\0\0\0\0Hmâä^D@äôõ|Í~RÀ'),
(1839, '\0\0\0\0\0\0\033333SD@ÍÌÌÌÌ|RÀ'),
(1840, '\0\0\0\0\0\0\0•óÅÞ‹aD@k™Çó~RÀ'),
(1841, '\0\0\0\0\0\0\0LÜÏÎZD@Óö¯¬´€RÀ'),
(1842, '\0\0\0\0\0\0\0á©‘§ö]D@=è~ó‡RÀ'),
(1843, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(1844, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(1845, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(1846, '\0\0\0\0\0\0\0\n½þ$>]D@‰”fóRÀ'),
(1847, '\0\0\0\0\0\0\0¼A´V´]D@*p²\r\\RÀ'),
(1848, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(1849, '\0\0\0\0\0\0\0ÑZÑæ8]D@®òÂN€RÀ'),
(1850, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(1851, '\0\0\0\0\0\0\0ÛŠýe÷_D@:STORÀ'),
(1852, '\0\0\0\0\0\0\0Ì|?qbD@„};‰~RÀ'),
(1853, '\0\0\0\0\0\0\0‚ø\n\Z`D@šÜÞ$<€RÀ'),
(1854, '\0\0\0\0\0\0\0~ó,R`D@¸i}Û]~RÀ'),
(1855, '\0\0\0\0\0\0\0î;+]D@#v·üQRÀ'),
(1856, '\0\0\0\0\0\0\0·M§+Ž]D@Q0c\n€RÀ'),
(1857, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(1858, '\0\0\0\0\0\0\0ÜùÙ#/`D@%1R97€RÀ'),
(1859, '\0\0\0\0\0\0\0L4HÁSbD@Z.ó|RÀ'),
(1860, '\0\0\0\0\0\0\033333SD@ÍÌÌÌÌ|RÀ'),
(1861, '\0\0\0\0\0\0\0M“cüE\\D@„wý8RÀ'),
(1862, '\0\0\0\0\0\0\08ËvÏËZD@¦º€—uRÀ'),
(1863, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(1864, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(1865, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(1866, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(1867, '\0\0\0\0\0\0\0m\n\ZéûÙE@­BÝÄ”QÀ'),
(1868, '\0\0\0\0\0\0\0t4ýÈc[D@r©-}RÀ'),
(1869, '\0\0\0\0\0\0\0,çœéo[D@øIÿÜa€RÀ'),
(1870, '\0\0\0\0\0\0\0÷®A_z\\D@•fNò~RÀ'),
(1871, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(1872, '\0\0\0\0\0\0\0UÂzý_D@©/K;5~RÀ'),
(1873, '\0\0\0\0\0\0\0³{ò°PaD@ñÖù·RÀ'),
(1874, '\0\0\0\0\0\0\0æDÄ›ÇB@ˆe3‡¤HXÀ'),
(1875, '\0\0\0\0\0\0\0[³•—\\D@SJ¾È:RÀ'),
(1876, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(1877, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(1878, '\0\0\0\0\0\0\0ÕZ˜…v`D@b1êZ{RÀ'),
(1879, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(1880, '\0\0\0\0\0\0\033333SD@ÍÌÌÌÌ|RÀ'),
(1881, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(1882, '\0\0\0\0\0\0\0\n½þ$>]D@‰”fóRÀ'),
(1883, '\0\0\0\0\0\0\0[V|RD@â|~rRÀ'),
(1884, '\0\0\0\0\0\0\0x¯ÿß}aD@_‰Q!~RÀ'),
(1885, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(1886, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(1887, '\0\0\0\0\0\0\0ô‡fž\\_D@‹72ü~RÀ'),
(1888, '\0\0\0\0\0\0\0ò&¿E''aD@Ž´¯—RÀ'),
(1889, '\0\0\0\0\0\0\0±w5/\rA@§‚@Eš]À'),
(1890, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(1891, '\0\0\0\0\0\0\0õG,\rA@:±‡ö±•]À'),
(1892, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(1893, '\0\0\0\0\0\0\0Ú9Í\rA@{®Gá”]À'),
(1894, '\0\0\0\0\0\0\0Ã(­dl	A@ØÏpŸ™]À'),
(1895, '\0\0\0\0\0\0\0›Ó–A@ƒfÚ”]À'),
(1896, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(1897, '\0\0\0\0\0\0\0Cý.þ@@VØpAž]À'),
(1898, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(1899, '\0\0\0\0\0\0\0¤SW>Ëç@@Á)Íz]À'),
(1900, '\0\0\0\0\0\0\0Ôkk…A@ì€Ñ&—]À'),
(1901, '\0\0\0\0\0\0\0H‰]ÛÛU=@õÕ}[ÀWÀ'),
(1902, '\0\0\0\0\0\0\0U¤ÂØBA@«˜J?á—]À'),
(1903, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(1904, '\0\0\0\0\0\0\0ÎR²œ„Ô@@û²´Só]À'),
(1905, '\0\0\0\0\0\0\0óuþÓþ@@„…îíq]À'),
(1906, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(1907, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(1908, '\0\0\0\0\0\0\0´SweA@e‰Î2‹ˆ]À'),
(1909, '\0\0\0\0\0\0\02¬âÌA@óÊõ¶™]À'),
(1910, '\0\0\0\0\0\0\0I}þ A@š™™™™™]À'),
(1911, '\0\0\0\0\0\0\0›Ó–A@ƒfÚ”]À'),
(1912, '\0\0\0\0\0\0\0·.û±ì@@¹ c¬Û˜]À'),
(1913, '\0\0\0\0\0\0\0`fŽ›Ðÿ@@TØVý[ETÀ'),
(1914, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(1915, '\0\0\0\0\0\0\0ËÖú"¡A@ÙÄëú—]À'),
(1916, '\0\0\0\0\0\0\0˜‹S?ñ@@©È×TLš]À'),
(1917, '\0\0\0\0\0\0\0Ã(­dl	A@ØÏpŸ™]À'),
(1918, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(1919, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(1920, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(1921, '\0\0\0\0\0\0\0Ôkk…A@ì€Ñ&—]À'),
(1922, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(1923, '\0\0\0\0\0\0\0ýèŠµA@úY™ºŸ]À'),
(1924, '\0\0\0\0\0\0\0®*û®A@cœ¿	…–]À'),
(1925, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(1926, '\0\0\0\0\0\0\0ÝÚxf8	A@ë+Y_n—]À'),
(1927, '\0\0\0\0\0\0\0ËÛNA@@û‘"2˜]À'),
(1928, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(1929, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(1930, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(1931, '\0\0\0\0\0\0\0J`sžcB@|‰g¿Ú]À'),
(1932, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(1933, '\0\0\0\0\0\0\0Šúnó\0A@#>Á˜‰]À'),
(1934, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(1935, '\0\0\0\0\0\0\0˜‹S?ñ@@©È×TLš]À'),
(1936, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(1937, '\0\0\0\0\0\0\0ª<!…A@Îk‘Yb—]À'),
(1938, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(1939, '\0\0\0\0\0\0\0›Ó–A@ƒfÚ”]À'),
(1940, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(1941, '\0\0\0\0\0\0\0K·€+4H@@YÎ”ŒÒB]À'),
(1942, '\0\0\0\0\0\0\0E›ˆ#´A@jÝµ_™]À'),
(1943, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(1944, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(1945, '\0\0\0\0\0\0\0›Ó–A@ƒfÚ”]À'),
(1946, '\0\0\0\0\0\0\0"z}A@P7­oŸ]À'),
(1947, '\0\0\0\0\0\0\0\\|e9dA@”i49™]À'),
(3757, '\0\0\0\0\0\0\0OêËÒNøD@ÉöküÓéUÀ'),
(1949, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(1950, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(1951, '\0\0\0\0\0\0\0˜ù~A@Vš”‚nš]À'),
(1952, '\0\0\0\0\0\0\0E›ˆ#´A@jÝµ_™]À'),
(1953, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(1954, '\0\0\0\0\0\0\0›Ó–A@ƒfÚ”]À'),
(1955, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(1956, '\0\0\0\0\0\0\0CV¸åÃ9@-ÐîbTÀ'),
(1957, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(1958, '\0\0\0\0\0\0\0,çœéo[D@øIÿÜa€RÀ'),
(1959, '\0\0\0\0\0\0\0ò&¿E''aD@Ž´¯—RÀ'),
(1960, '\0\0\0\0\0\0\0á©‘§ö]D@=è~ó‡RÀ'),
(1961, '\0\0\0\0\0\0\0Z/†r¢gD@¡ÐW5­|RÀ'),
(1962, '\0\0\0\0\0\0\07âÉnf\\D@\nGJ}RÀ'),
(1963, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(1964, '\0\0\0\0\0\0\0›S]òD@šOèUÀ'),
(1965, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(1966, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(1967, '\0\0\0\0\0\0\0hÇ,{^D@~8gD€RÀ'),
(1968, '\0\0\0\0\0\0\0ÕFÐó\\D@Óc\0M©€RÀ'),
(1969, '\0\0\0\0\0\0\0ž^)Ë[E@ïtç‰çjRÀ'),
(1970, '\0\0\0\0\0\0\0üÅlÉª\\D@ÒÄ;À“RÀ'),
(1971, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(1972, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(1973, '\0\0\0\0\0\0\0…#H¥Ø^D@+F²|€RÀ'),
(1974, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(1975, '\0\0\0\0\0\0\033333SD@ÍÌÌÌÌ|RÀ'),
(1976, '\0\0\0\0\0\0\0$Ô©¢bD@ Òo_}RÀ'),
(1977, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(1978, '\0\0\0\0\0\0\0Ho¸Ü\\D@ø„RÀ'),
(1979, '\0\0\0\0\0\0\0Ö2¾Ôt`D@\nÆwI~RÀ'),
(1980, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(1981, '\0\0\0\0\0\0\033333SD@ÍÌÌÌÌ|RÀ'),
(1982, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(1983, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(1984, '\0\0\0\0\0\0\0¸±Ù‘ê]D@dv½S€RÀ'),
(1985, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(1986, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(1987, '\0\0\0\0\0\0\02GERÁ`D@O)\nOÃ~RÀ'),
(1988, '\0\0\0\0\0\0\0£ÚñpL`D@ ÀØ±~RÀ'),
(1989, '\0\0\0\0\0\0\0,çœéo[D@øIÿÜa€RÀ'),
(1990, '\0\0\0\0\0\0\0Ý\na5–^D@Fë¨j‚RÀ'),
(1991, '\0\0\0\0\0\0\0.É»š`D@Îþ@¹mRÀ'),
(1992, '\0\0\0\0\0\0\07|Á]¬eD@®‰`wRÀ'),
(1993, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(1994, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(1995, '\0\0\0\0\0\0\0æbgeV_D@''%N¸|RÀ'),
(1996, '\0\0\0\0\0\0\0®\rãüaD@êJºå~RÀ'),
(1997, '\0\0\0\0\0\0\0p|í™%aD@²KTo\rRÀ'),
(1998, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(1999, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(2000, '\0\0\0\0\0\0\0õ„%P^D@‡†Å¨kRÀ'),
(2001, '\0\0\0\0\0\0\0ÊjºžèbD@¶:ïµV}RÀ'),
(2002, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(2003, '\0\0\0\0\0\0\0ž–¸ÊaD@y°ÅnŸ~RÀ'),
(2004, '\0\0\0\0\0\0\0÷Ye¦´^D@ÎáZíaRÀ'),
(2005, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(2006, '\0\0\0\0\0\0\0,çœéo[D@øIÿÜa€RÀ'),
(2007, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(2008, '\0\0\0\0\0\0\0ë8~¨4^D@Žg€RÀ'),
(2009, '\0\0\0\0\0\0\0¥&©ìKD@&M(éŒRÀ'),
(2010, '\0\0\0\0\0\0\0\ZyY]D@ý/×¢€RÀ'),
(2011, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(2012, '\0\0\0\0\0\0\0ß3¡^D@ÝéÎRÀ'),
(2013, '\0\0\0\0\0\0\0`|,Ø¡[D@Ç“îøÀ}RÀ'),
(2014, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(2015, '\0\0\0\0\0\0\0ÿ¦Á~™k=@Wž›‘œ¥XÀ'),
(2016, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(2017, '\0\0\0\0\0\0\0¥&©ìKD@&M(éŒRÀ'),
(2018, '\0\0\0\0\0\0\0Tb.^D@è­p:€RÀ'),
(2019, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(2020, '\0\0\0\0\0\0\0óuþÓaD@A€~RÀ'),
(2021, '\0\0\0\0\0\0\0,çœéo[D@øIÿÜa€RÀ'),
(2022, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(2023, '\0\0\0\0\0\0\0 =êTžD@Ë>ÙÞrRÀ'),
(2024, '\0\0\0\0\0\0\0¯„¤_D@ûH\0í}€RÀ'),
(2025, '\0\0\0\0\0\0\0,çœéo[D@øIÿÜa€RÀ'),
(2026, '\0\0\0\0\0\0\0Öp‘{º]D@‡NÏ»1RÀ'),
(2027, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(2028, '\0\0\0\0\0\0\033333SD@ÍÌÌÌÌ|RÀ'),
(2029, '\0\0\0\0\0\0\0Tb.^D@è­p:€RÀ'),
(2030, '\0\0\0\0\0\0\0í›û«Ç]D@®ÕöB€RÀ'),
(2031, '\0\0\0\0\0\0\0íôƒºH_D@GqŽ::RÀ'),
(2032, '\0\0\0\0\0\0\0è£Œ¸\0^D@Ü¹à€RÀ'),
(2033, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(2034, '\0\0\0\0\0\0\0pê”GdD@°‘$×}RÀ'),
(2035, '\0\0\0\0\0\0\0Õ{*§=]D@ÅÓá×~RÀ'),
(2036, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(2037, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(2038, '\0\0\0\0\0\0\0ùÜ	ö_mD@˜ù~âxRÀ'),
(2039, '\0\0\0\0\0\0\0úuL‚ÜhD@¿ZZ²OtRÀ'),
(2040, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(2041, '\0\0\0\0\0\0\0-ÑYf\\D@}’;l"RÀ'),
(2042, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(2043, '\0\0\0\0\0\0\0zð$3(bD@PWÒå¨~RÀ'),
(2044, '\0\0\0\0\0\0\0Ó¼ã_D@Ü,^,RÀ'),
(2045, '\0\0\0\0\0\0\0‘_?ÄoD@=`ÃxòzRÀ'),
(2046, '\0\0\0\0\0\0\0ñgÓlZD@®[©}RÀ'),
(2047, '\0\0\0\0\0\0\0—ÓTYeD@Á…†6~RÀ'),
(2048, '\0\0\0\0\0\0\0ÛŠýe÷_D@:STORÀ'),
(2049, '\0\0\0\0\0\0\0q×Æé{E@>%B~‘5SÀ'),
(2050, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(2051, '\0\0\0\0\0\0\0©h¬ýaD@Þ‚}*~RÀ'),
(2052, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(2053, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(2054, '\0\0\0\0\0\0\0…í''c|ZD@vÁàš;€RÀ'),
(2055, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(2056, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(2057, '\0\0\0\0\0\0\0pê”GdD@°‘$×}RÀ'),
(2058, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(2059, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(2060, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(2061, '\0\0\0\0\0\0\0k­yŸôaD@àV0à›RÀ'),
(2062, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(2063, '\0\0\0\0\0\0\0‘—5aD@Ÿ<,Ôš~RÀ'),
(2064, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(2065, '\0\0\0\0\0\0\0þÔxé&cD@TªDÙ[}RÀ'),
(2066, '\0\0\0\0\0\0\0úÄðÇ£[D@i@Ó''RÀ'),
(2067, '\0\0\0\0\0\0\0jù«<iD@}vÀuÅ|RÀ'),
(2068, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(2069, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(2070, '\0\0\0\0\0\0\0QÆSêíYD@4ˆj%RÀ'),
(2071, '\0\0\0\0\0\0\0,çœéo[D@øIÿÜa€RÀ'),
(2072, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(2073, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(2074, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(2075, '\0\0\0\0\0\0\0Èí—OV^D@ÿ+jRÀ'),
(2076, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(2077, '\0\0\0\0\0\0\0´<îÎbD@Ï½‡KŽ{RÀ'),
(2078, '\0\0\0\0\0\0\0ü¥E}’]D@=|™(ÂRÀ'),
(2079, '\0\0\0\0\0\0\0·¾£!>ZD@Ún''¶§€RÀ'),
(2080, '\0\0\0\0\0\0\0Ë»ê]D@­†Ä=–RÀ'),
(2081, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(2082, '\0\0\0\0\0\0\0•Øµ½Ý\\D@Žëßõ™~RÀ'),
(2083, '\0\0\0\0\0\0\0úÄðÇ£[D@i@Ó''RÀ'),
(2084, '\0\0\0\0\0\0\02''©cD@Ñõ3«­|RÀ'),
(2085, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(2086, '\0\0\0\0\0\0\0w|ÓôYD@@=lØ%RÀ'),
(2087, '\0\0\0\0\0\0\0¬þÃ€[D@•¹ùFt|RÀ'),
(2088, '\0\0\0\0\0\0\0pê”GdD@°‘$×}RÀ'),
(2089, '\0\0\0\0\0\0\0Ý²CüÃ\\D@×0Cã‰RÀ'),
(2090, '\0\0\0\0\0\0\0\ZnÀç‡aD@!­1è„RÀ'),
(2091, '\0\0\0\0\0\0\0=‘ˆòD@ò™ìŸ§èUÀ'),
(2092, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(2093, '\0\0\0\0\0\0\0ùMa¥‚E@NïâýVÀ'),
(2094, '\0\0\0\0\0\0\0mÚÖ`+òD@sX+$ªæUÀ'),
(2095, '\0\0\0\0\0\0\0êB¬þE@ÔI¶ºœúUÀ'),
(2096, '\0\0\0\0\0\0\0rSÍçE@Må£{öUÀ'),
(2097, '\0\0\0\0\0\0\0±\nåŽHE@æ·…ðUÀ'),
(2098, '\0\0\0\0\0\0\09MúÖâî9@~¥˜(g\nTÀ'),
(2099, '\0\0\0\0\0\0\0â#½—MF@ƒ5v.¾RÀ'),
(2100, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(2101, '\0\0\0\0\0\0\02Çò®zRD@æmrø„RÀ'),
(2102, '\0\0\0\0\0\0\0ÓÛŸ‹†`D@Ô¹¢”RÀ'),
(2103, '\0\0\0\0\0\0\0Z©VÐlD@Æ‘½”pwRÀ'),
(2104, '\0\0\0\0\0\0\06‘™`D@Þrõc“RÀ'),
(2105, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(2106, '\0\0\0\0\0\0\0®Gáz”<@…ëQ¸US@'),
(2107, '\0\0\0\0\0\0\0É‘ÎÀÈñD@0*©ÐëUÀ'),
(2108, '\0\0\0\0\0\0\0ÇyI­AE@ÑCÈÔ8óUÀ'),
(2109, '\0\0\0\0\0\0\0ÈF­Õ\rE@Ž’WçïUÀ'),
(2110, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(2111, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(2112, '\0\0\0\0\0\0\0t â“©ÆD@˜B1ÃÞUÀ'),
(2113, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(2114, '\0\0\0\0\0\0\0y¾°F‡âD@UC,¬åûUÀ'),
(2115, '\0\0\0\0\0\0\0Qqw1(óD@’q)éUÀ'),
(2116, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(2117, '\0\0\0\0\0\0\0±nõõD@wâÍuõìUÀ'),
(2118, '\0\0\0\0\0\0\0÷KÕ‡?	E@ÀþûBîUÀ'),
(2119, '\0\0\0\0\0\0\0œ‰éB¬ðD@GèÂ£èçUÀ'),
(2120, '\0\0\0\0\0\0\0 êãF6Æ9@…LèdTÀ'),
(2121, '\0\0\0\0\0\0\0oÚçŒƒÒ9@ÁV	‡TÀ'),
(2122, '\0\0\0\0\0\0\0Ù''€bd_D@“‹1°ŽRÀ'),
(2123, '\0\0\0\0\0\0\0O‘CÄÍaD@\\]©Âz~RÀ'),
(2124, '\0\0\0\0\0\0\0°u©úcD@Z·Aí·~RÀ'),
(2125, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(2126, '\0\0\0\0\0\0\0G®w$^D@=)“\ZRÀ'),
(2127, '\0\0\0\0\0\0\033333SD@ÍÌÌÌÌ|RÀ'),
(2128, '\0\0\0\0\0\0\0,çœéo[D@øIÿÜa€RÀ'),
(2129, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(2130, '\0\0\0\0\0\0\02ˆYy E@ò©­"mËTÀ'),
(2131, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(2132, '\0\0\0\0\0\0\0Ãþ¡OšüD@â:Æ—÷UÀ'),
(2133, '\0\0\0\0\0\0\0FZ*oE@àÝ%LôUÀ'),
(2134, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(2135, '\0\0\0\0\0\0\0¶³ùÉbðD@¬·¼(0éUÀ'),
(2136, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(2137, '\0\0\0\0\0\0\0\Zä.ÂòD@<À“.éUÀ'),
(2138, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(2139, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(2140, '\0\0\0\0\0\0\0þoÖðD@TpxADêUÀ'),
(2141, '\0\0\0\0\0\0\0êwak¶òD@y?n¿|éUÀ'),
(2142, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(2143, '\0\0\0\0\0\0\0áöºûÒöD@Àñ!‰éUÀ'),
(2144, '\0\0\0\0\0\0\0ÊeHºæD@î¶f†è[UÀ'),
(2145, '\0\0\0\0\0\0\0r(ûD@½–F‚_ðUÀ'),
(2146, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(2147, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(2148, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(2149, '\0\0\0\0\0\0\0ú´ŠþÐæD@g¸ŸíUÀ'),
(2150, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(2151, '\0\0\0\0\0\0\0 êãF6Æ9@…LèdTÀ'),
(2152, '\0\0\0\0\0\0\0 êãF6Æ9@…LèdTÀ'),
(2153, '\0\0\0\0\0\0\0-	PSËð9@+ÌÙTÀ'),
(2154, '\0\0\0\0\0\0\0®ršO:@|o-	TÀ'),
(2155, '\0\0\0\0\0\0\0Î¤MË;@·ÚyÑ\rYXÀ'),
(2156, '\0\0\0\0\0\0\0ß&íWK¹9@#*ù}$TÀ'),
(2157, '\0\0\0\0\0\0\0¤§ÝùÉ9@ÝCû}TÀ'),
(2158, '\0\0\0\0\0\0\0 êãF6Æ9@…LèdTÀ'),
(2159, '\0\0\0\0\0\0\0ß&íWK¹9@#*ù}$TÀ'),
(2160, '\0\0\0\0\0\0\0 êãF6Æ9@…LèdTÀ'),
(2161, '\0\0\0\0\0\0\0¹§«;Â9@ªx™aTÀ'),
(2162, '\0\0\0\0\0\0\0|ä 2ª;@Ó÷\ZaTÀ'),
(2163, '\0\0\0\0\0\0\0Ø¼mÍîA@ÑÃ\Zxÿ9%@'),
(2164, '\0\0\0\0\0\0\0›sðLhÊ9@|_\\ªRTÀ'),
(2165, '\0\0\0\0\0\0\0 êãF6Æ9@…LèdTÀ'),
(2166, '\0\0\0\0\0\0\09MúÖâî9@~¥˜(g\nTÀ'),
(2167, '\0\0\0\0\0\0\0w;SèÈ9@™º+»`TÀ'),
(2168, '\0\0\0\0\0\0\0¤§ÝùÉ9@ÝCû}TÀ'),
(2169, '\0\0\0\0\0\0\0›sðLhÊ9@|_\\ªRTÀ'),
(2170, '\0\0\0\0\0\0\0›sðLhÊ9@|_\\ªRTÀ'),
(2171, '\0\0\0\0\0\0\0›sðLhÊ9@|_\\ªRTÀ'),
(2172, '\0\0\0\0\0\0\0IØ·“ˆÈ9@U[rTÀ'),
(2173, '\0\0\0\0\0\0\0 êãF6Æ9@…LèdTÀ'),
(2174, '\0\0\0\0\0\0\0¤§ÝùÉ9@ÝCû}TÀ'),
(2175, '\0\0\0\0\0\0\0f²É+!Ï9@\0ÏQ¢€TÀ'),
(2176, '\0\0\0\0\0\0\0 êãF6Æ9@…LèdTÀ'),
(2177, '\0\0\0\0\0\0\0 êãF6Æ9@…LèdTÀ'),
(2178, '\0\0\0\0\0\0\0Gb8£´:@™†<ÝTTÀ'),
(2179, '\0\0\0\0\0\0\0 êãF6Æ9@…LèdTÀ'),
(2180, '\0\0\0\0\0\0\0D¤¦]@C@p(|¶ž^À'),
(2181, '\0\0\0\0\0\0\0iæ$ïw¼D@ÉšG´S¤VÀ'),
(2182, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(2183, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(2184, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(2185, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(2186, '\0\0\0\0\0\0\0jÚÅ4ÓåB@Fí~à‘^À'),
(2187, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(2188, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(2189, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(2190, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(2191, '\0\0\0\0\0\0\0{|ŒùóB@fFäà¢^À'),
(2192, '\0\0\0\0\0\0\0T±Œh–âB@ú›Pˆ€œ^À'),
(2193, '\0\0\0\0\0\0\0_ÃÂÿáB@wÖÞ˜^À'),
(2194, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(2195, '\0\0\0\0\0\0\04@³5lB@x]¿Ô\\À'),
(2196, '\0\0\0\0\0\0\0¿ã%I!áB@t =Mœš^À'),
(2197, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(2198, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(2199, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(2200, '\0\0\0\0\0\0\0èß‰´èäB@ã{5öÛ™^À'),
(2201, '\0\0\0\0\0\0\0ˆ\rNæB@gv‡š^À'),
(2202, '\0\0\0\0\0\0\0‘NläB@AEŒ\r^À'),
(2203, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(2204, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(2205, '\0\0\0\0\0\0\0æÔ„£šãB@šÀ¾g™^À'),
(2206, '\0\0\0\0\0\0\0JXØàB@áy©Ø˜š^À'),
(2207, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(2208, '\0\0\0\0\0\0\0ìMåB@RÕQ÷™^À'),
(2209, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(2210, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(2211, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(2212, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(2213, '\0\0\0\0\0\0\0GC!]ÇVC@,ŠDK^À'),
(2214, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(2215, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(2216, '\0\0\0\0\0\0\0AeüûŒ‹B@7§’ íWÀ'),
(2217, '\0\0\0\0\0\0\0«¨Â&8:@¤ÃC?’XÀ'),
(2218, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(2219, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(2220, '\0\0\0\0\0\0\0³9ûÜäB@µ\nQtš^À'),
(2221, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(2222, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(2223, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(2224, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(2225, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(2226, '\0\0\0\0\0\0\0]§‘–ÊáB@ÏØ—l<ž^À'),
(2227, '\0\0\0\0\0\0\0†Æ¤¿ãB@Ãð1%™^À'),
(2228, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(2229, '\0\0\0\0\0\0\0âg«õæB@þªmÔT‘^À'),
(2230, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(2231, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(2232, '\0\0\0\0\0\0\0G	1—&C@¯^EF’^À'),
(2233, '\0\0\0\0\0\0\0áz®GáB@{®Gáš^À'),
(2234, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(2235, '\0\0\0\0\0\0\0Â7¨XïB@AEÕ¯t‘^À'),
(2236, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(2237, '\0\0\0\0\0\0\0âg«õæB@þªmÔT‘^À'),
(2238, '\0\0\0\0\0\0\0µ¥òzêB@H£''Û^À'),
(2239, '\0\0\0\0\0\0\0®a+\r¡B@Ÿ5äÄé]À'),
(2240, '\0\0\0\0\0\0\0âg«õæB@þªmÔT‘^À'),
(2241, '\0\0\0\0\0\0\0Ÿ*•¦çB@òÉ/(ø^À'),
(2242, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(2243, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(2244, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(2245, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(2246, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(2247, '\0\0\0\0\0\0\0âg«õæB@þªmÔT‘^À'),
(2248, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(2249, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(2250, '\0\0\0\0\0\0\0âg«õæB@þªmÔT‘^À'),
(2251, '\0\0\0\0\0\0\0âg«õæB@þªmÔT‘^À'),
(2252, '\0\0\0\0\0\0\0–(Ö¬ãB@ì®¢õš^À'),
(2253, '\0\0\0\0\0\0\0_ËÐiÛB@\0\0\0\0\0^À'),
(2254, '\0\0\0\0\0\0\0_ËÐiÛB@\0\0\0\0\0^À'),
(2255, '\0\0\0\0\0\0\0áz®GáB@{®Gáš^À'),
(2256, '\0\0\0\0\0\0\0¶ž!³áB@ÒÄ;À“š^À'),
(2257, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(2258, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(2259, '\0\0\0\0\0\0\0ìC(\0óB@æhDâ‘^À'),
(2260, '\0\0\0\0\0\0\0Y“]ŒòC@ {Å	ÈRÀ'),
(2261, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(2262, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(2263, '\0\0\0\0\0\0\0Â7¨XïB@AEÕ¯t‘^À'),
(2264, '\0\0\0\0\0\0\0Â7¨XïB@AEÕ¯t‘^À'),
(2265, '\0\0\0\0\0\0\0Â7¨XïB@AEÕ¯t‘^À'),
(2266, '\0\0\0\0\0\0\0Õ$xC\ZïB@<J%<¡^À'),
(2267, '\0\0\0\0\0\0\0Â7¨XïB@AEÕ¯t‘^À'),
(2268, '\0\0\0\0\0\0\0#0Ö70íB@d²¸ÿÈ’^À'),
(2269, '\0\0\0\0\0\0\0Â7¨XïB@AEÕ¯t‘^À'),
(2270, '\0\0\0\0\0\0\0¾0™*ïB@~Žg^À'),
(2271, '\0\0\0\0\0\0\0€\rˆWúB@‰]ÛÛ-£^À'),
(2272, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(2273, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(2274, '\0\0\0\0\0\0\0{2ÿè›ÕB@œè©Ä+…^À'),
(2275, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(2276, '\0\0\0\0\0\0\0_ËÐiÛB@\0\0\0\0\0^À'),
(2277, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(2278, '\0\0\0\0\0\0\0âg«õæB@þªmÔT‘^À'),
(2279, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(2280, '\0\0\0\0\0\0\0_ËÐiÛB@\0\0\0\0\0^À'),
(2281, '\0\0\0\0\0\0\0J`sžcB@|‰g¿Ú]À'),
(2282, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(2283, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(2284, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(2285, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(2286, '\0\0\0\0\0\0\0Â7¨XïB@AEÕ¯t‘^À'),
(2287, '\0\0\0\0\0\0\0j±%õ¯ïB@¡C…-‘^À'),
(2288, '\0\0\0\0\0\0\0Â7¨XïB@AEÕ¯t‘^À'),
(2289, '\0\0\0\0\0\0\0ŽÙHÈöíB@·óXŸ^À'),
(2290, '\0\0\0\0\0\0\0âg«õæB@þªmÔT‘^À'),
(2291, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(2292, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(2293, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(2294, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(2295, '\0\0\0\0\0\0\0R„åB@S†`°š^À'),
(2296, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(2297, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(2298, '\0\0\0\0\0\0\0å¡J(ØàB@ç—w‹™^À'),
(2299, '\0\0\0\0\0\0\0’ÍUóßB@#»Ò2R›^À'),
(2300, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(2301, '\0\0\0\0\0\0\0¤œyƒöD@V\0“(VÀ'),
(2302, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(2303, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(2304, '\0\0\0\0\0\0\0dY0ñGùD@êÎÏÙéUÀ'),
(2305, '\0\0\0\0\0\0\0X© ¢êË9@wç¨£TÀ'),
(2306, '\0\0\0\0\0\0\0X© ¢êË9@wç¨£TÀ'),
(2307, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(2308, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(2309, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(2310, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(2311, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(2312, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(2313, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(2314, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(2315, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(2316, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(2317, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(2318, '\0\0\0\0\0\0\0ž_” ¿ÎB@Èzjõ˜^À'),
(2319, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(2320, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(2321, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(2322, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(2323, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(2324, '\0\0\0\0\0\0\0 êãF6Æ9@…LèdTÀ'),
(2325, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(2326, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(2327, '\0\0\0\0\0\0\0‘(´¬û—4@=~oÓŸ½S@'),
(2328, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(2329, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(2330, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(2331, '\0\0\0\0\0\0\0_\\O¤\0A@»•Ê€Ø³]À'),
(2332, '\0\0\0\0\0\0\0ÞH•NÙB@\\SÅùÀž^À'),
(2333, '\0\0\0\0\0\0\0YÝê9A@Îé	K¢]À'),
(2334, '\0\0\0\0\0\0\0ÖŽâuA@~ª\n\rÄ¦]À'),
(2335, '\0\0\0\0\0\0\0Ûê(½%A@§Ä¿Æ“]À'),
(2336, '\0\0\0\0\0\0\0J`sžcB@|‰g¿Ú]À'),
(2337, '\0\0\0\0\0\0\0Ù	/Á©A@¢üîgB‰]À'),
(2338, '\0\0\0\0\0\0\0ƒ{ô@@¢¡Ú;þ˜]À'),
(2339, '\0\0\0\0\0\0\0E›ˆ#´A@jÝµ_™]À'),
(2340, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(2341, '\0\0\0\0\0\0\0aQ§A@°È¯—]À'),
(2342, '\0\0\0\0\0\0\0I8ãêê@@Á„:‡z]À'),
(2343, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(2344, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(2345, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(2346, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(2347, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(2348, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(2349, '\0\0\0\0\0\0\0@i¨QHbD@®ÙÊKþ}RÀ'),
(2350, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(2351, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(2352, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(2353, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(2354, '\0\0\0\0\0\0\0ÌH¿}bD@vÆR˜}RÀ'),
(2355, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(2356, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(2357, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(2358, '\0\0\0\0\0\0\0ÌH¿}bD@vÆR˜}RÀ'),
(2359, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(2360, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(2361, '\0\0\0\0\0\0\0,zLI“@@Í¦m\r¶4XÀ'),
(2362, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(2363, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(2364, '\0\0\0\0\0\0\00ÐZv-æB@Ÿb?U›^À'),
(2365, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(2366, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(2367, '\0\0\0\0\0\0\0¾®#''C@Ë¨èþ “^À'),
(2368, '\0\0\0\0\0\0\0Â7¨XïB@AEÕ¯t‘^À'),
(2369, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(2370, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(2371, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(2372, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(2373, '\0\0\0\0\0\0\0Ôkk…A@ì€Ñ&—]À'),
(2374, '\0\0\0\0\0\0\0eTÆÝ5A@y‡%¯ì]À'),
(2375, '\0\0\0\0\0\0\0eTÆÝ5A@y‡%¯ì]À'),
(2376, '\0\0\0\0\0\0\0eTÆÝ5A@y‡%¯ì]À'),
(2377, '\0\0\0\0\0\0\0Úï?è[@@Eè±wJ]À'),
(2378, '\0\0\0\0\0\0\0Ûê(½%A@§Ä¿Æ“]À'),
(2379, '\0\0\0\0\0\0\0ñBß‚A@†txãœ]À'),
(2380, '\0\0\0\0\0\0\0½›¸f<”@@V«e!pV]À'),
(2381, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(2382, '\0\0\0\0\0\0\0{òU—øæ@@Ã±xû½Š]À'),
(2383, '\0\0\0\0\0\0\0àêJÖÛ@@“’q1u]À'),
(2384, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(2385, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(2386, '\0\0\0\0\0\0\0ÎR²œ„Ô@@û²´Só]À'),
(2387, '\0\0\0\0\0\0\0Ôkk…A@ì€Ñ&—]À'),
(2388, '\0\0\0\0\0\0\0û§eµ\nï@@ìB½*á]À'),
(2389, '\0\0\0\0\0\0\0—o}Xoæ@@ND¿¶~x]À'),
(2390, '\0\0\0\0\0\0\0©ú™z	A@ƒ§Z]À'),
(2391, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(2392, '\0\0\0\0\0\0\0MŒJê,E@MŒJêÄQÀ');
INSERT INTO `businesspoint` (`idbusinesspoint`, `point`) VALUES
(2393, '\0\0\0\0\0\0\0š<\n|ê+E@}ÊÖŸiÄQÀ'),
(2394, '\0\0\0\0\0\0\0L¢7÷,E@;ƒÐ‹$ÅQÀ'),
(2395, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(2396, '\0\0\0\0\0\0\0•rf–,E@©»WR“ÅQÀ'),
(2397, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(2398, '\0\0\0\0\0\0\0®Gáz.E@?ÆÜµ„ÄQÀ'),
(2399, '\0\0\0\0\0\0\0xœ¢#¹,E@L7‰A`ÅQÀ'),
(2400, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(2401, '\0\0\0\0\0\0\0ðCïžM×D@u/AWl}QÀ'),
(2402, '\0\0\0\0\0\0\0n\nuE@F''K­÷¿QÀ'),
(2403, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(2404, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(2405, '\0\0\0\0\0\0\0x‚X‘CE@»¤ .o»QÀ'),
(2406, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(2407, '\0\0\0\0\0\0\0Á|hÕ@E@9ïÿã„ÌQÀ'),
(2408, '\0\0\0\0\0\0\0¦eÿ—Æ0E@û«lÄ8ÆQÀ'),
(2409, '\0\0\0\0\0\0\0™Kª¶›0E@ô‹ôÆQÀ'),
(2410, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(2411, '\0\0\0\0\0\0\0VZwX%E@öBÛAÛQÀ'),
(2412, '\0\0\0\0\0\0\0ç}Ò?w*E@~$ÁÇQÀ'),
(2413, '\0\0\0\0\0\0\0TvUûÏ,E@&ÊQÀ'),
(2414, '\0\0\0\0\0\0\0®`À7òE@–ÂÍóñ¸QÀ'),
(2415, '\0\0\0\0\0\0\0ÒÂ\n\\Ã.E@¬r¡ò¯ÆQÀ'),
(2416, '\0\0\0\0\0\0\0ÊŠáê\0,E@ŠÊ†5•ÅQÀ'),
(2417, '\0\0\0\0\0\0\0`gT*òE@qqTn¢ÊQÀ'),
(2418, '\0\0\0\0\0\0\0˜OVW=E@u«ç¤÷¹QÀ'),
(2419, '\0\0\0\0\0\0\0,Y`Ù,E@D‹Ç îËQÀ'),
(2420, '\0\0\0\0\0\0\0øßJvl\n<@n÷rŸ¦XÀ'),
(2421, '\0\0\0\0\0\0\0,Y`Ù,E@D‹Ç îËQÀ'),
(2422, '\0\0\0\0\0\0\0n\nuE@F''K­÷¿QÀ'),
(2423, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(2424, '\0\0\0\0\0\0\0emø‚».E@IÒÚÙ|ÃQÀ'),
(2425, '\0\0\0\0\0\0\0c"J Ê,E@#ÎÔ5ÅQÀ'),
(2426, '\0\0\0\0\0\0\0ß{É1E@CuÎªªÚQÀ'),
(2427, '\0\0\0\0\0\0\0°d}¹(E@]ß‡ƒ„ÑQÀ'),
(2428, '\0\0\0\0\0\0\0L¢7÷,E@;ƒÐ‹$ÅQÀ'),
(2429, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(2430, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(2431, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(2432, '\0\0\0\0\0\0\0}AfÂŠ;E@\ZÙ:ÝÆQÀ'),
(2433, '\0\0\0\0\0\0\0°îßx,E@®*û®ÆQÀ'),
(2434, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(2435, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(2436, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(2437, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(2438, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(2439, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(2440, '\0\0\0\0\0\0\0¥×ª²/E@z-ÇQÀ'),
(2441, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(2442, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(2443, '\0\0\0\0\0\0\0É`{¼-E@‡«^YÃQÀ'),
(2444, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(2445, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(2446, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(2447, '\0\0\0\0\0\0\0gŠïz4E@q·ÚyØQÀ'),
(2448, '\0\0\0\0\0\0\0"¨\Z½\Z^D@³z‡Û¡RÀ'),
(2449, '\0\0\0\0\0\0\0{dÊ,E@Œ:¤âÄQÀ'),
(2450, '\0\0\0\0\0\0\0âè*Ý]+E@°9ÏÃQÀ'),
(2451, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(2452, '\0\0\0\0\0\0\0:]›2E@=ð1ØÇQÀ'),
(2453, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(2454, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(2455, '\0\0\0\0\0\0\0[B>èÙ,E@~Œ¹k	ÅQÀ'),
(2456, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(2457, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(2458, '\0\0\0\0\0\0\0Ÿ½D-E@Mó3šÄQÀ'),
(2459, '\0\0\0\0\0\0\0÷äa¡Ö,E@EGrùÅQÀ'),
(2460, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(2461, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(2462, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(2463, '\0\0\0\0\0\0\0f7Ž³D+E@1æSlñÅQÀ'),
(2464, '\0\0\0\0\0\0\0_sX+$+E@å§''âcÍQÀ'),
(2465, '\0\0\0\0\0\0\0¥×ª²/E@z-ÇQÀ'),
(2466, '\0\0\0\0\0\0\0''¤5.E@¸…ëQÀQÀ'),
(2467, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(2468, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(2469, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(2470, '\0\0\0\0\0\0\06ê|ÓO,E@6@ÄaÄÂQÀ'),
(2471, '\0\0\0\0\0\0\0¥×ª²/E@z-ÇQÀ'),
(2472, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(2473, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(2474, '\0\0\0\0\0\0\0¥×ª²/E@z-ÇQÀ'),
(2475, '\0\0\0\0\0\0\0ç}Ò?w*E@~$ÁÇQÀ'),
(2476, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(2477, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(2478, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(2479, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(2480, '\0\0\0\0\0\0\0±áé•²,E@B>èÙ¬ÂQÀ'),
(2481, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(2482, '\0\0\0\0\0\0\0:ÜXš¥,E@v|Åd;ÅQÀ'),
(2483, '\0\0\0\0\0\0\0•´‡b—-E@_k¥Æ:ÃQÀ'),
(2484, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(2485, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(2486, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(2487, '\0\0\0\0\0\0\0RÖo&¦/E@\ZS°ÆÙÇQÀ'),
(2488, '\0\0\0\0\0\0\0CÂœE”-E@ÄTD—ÃQÀ'),
(2489, '\0\0\0\0\0\0\0&S£,E@Ä5ˆ ÆQÀ'),
(2490, '\0\0\0\0\0\0\0W–è,³,E@–ÅQÀ'),
(2491, '\0\0\0\0\0\0\0ÿ¬U».E@/‡ÝwÄQÀ'),
(2492, '\0\0\0\0\0\0\0M„\rO¯,E@¿œ3¢ÄQÀ'),
(2493, '\0\0\0\0\0\0\0`2åC,E@ÜµÛ.ÅQÀ'),
(2494, '\0\0\0\0\0\0\0ÅìÀ”Ü-E@wAŽ÷ôÃQÀ'),
(2495, '\0\0\0\0\0\0\0’‘X÷4(E@ÞO2Þ{ÆQÀ'),
(2496, '\0\0\0\0\0\0\0á!Å¥,E@Ô\\÷ÄQÀ'),
(2497, '\0\0\0\0\0\0\0ì÷Ä:U,E@àÛôg?ÆQÀ'),
(2498, '\0\0\0\0\0\0\0† ´6E@Ò\\]|ÓQÀ'),
(2499, '\0\0\0\0\0\0\0,^ÑRME@­é0Ñ¸QÀ'),
(2500, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(2501, '\0\0\0\0\0\0\0+¹/ý.E@ƒÿºÃQÀ'),
(2502, '\0\0\0\0\0\0\0ô©c•Ò/E@¯`ñdÆQÀ'),
(2503, '\0\0\0\0\0\0\0¬H–ÝÝEE@raî¤OúQÀ'),
(2504, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(2505, '\0\0\0\0\0\0\0±¾É/E@*ât’­ÇQÀ'),
(2506, '\0\0\0\0\0\0\0Ü‡Ÿ+E@6šÿfÊQÀ'),
(2507, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(2508, '\0\0\0\0\0\0\0ç„uˆ$/E@³.É\\ôÆQÀ'),
(2509, '\0\0\0\0\0\0\0èbx‘®0E@b%0çãÈQÀ'),
(2510, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(2511, '\0\0\0\0\0\0\0ë¡"óm.E@¨R³ZÆQÀ'),
(2512, '\0\0\0\0\0\0\0¿ëØ­\n.E@"	±éwÃQÀ'),
(2513, '\0\0\0\0\0\0\0§»¡ß­*E@g4¨ì*ÃQÀ'),
(2514, '\0\0\0\0\0\0\0ÏËj½E@$äÍ«RÀ'),
(2515, '\0\0\0\0\0\0\0Ê’ï],E@†zUÂnÄQÀ'),
(2516, '\0\0\0\0\0\0\0ßí0Üo,E@x‘®>CÆQÀ'),
(2517, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(2518, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(2519, '\0\0\0\0\0\0\0®Gáz.E@A‚âÇ˜ÃQÀ'),
(2520, '\0\0\0\0\0\0\0ž_” ¿,E@P7PàÂQÀ'),
(2521, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(2522, '\0\0\0\0\0\0\0üK÷ßï,E@À¿R§ÍÂQÀ'),
(2523, '\0\0\0\0\0\0\0ÜÒi6E@#M¼<ÄQÀ'),
(2524, '\0\0\0\0\0\0\0TvUûÏ,E@&ÊQÀ'),
(2525, '\0\0\0\0\0\0\0(."å‚-E@¼.²SâÃQÀ'),
(2526, '\0\0\0\0\0\0\0ýRš(OE@à%‚‚´QÀ'),
(2527, '\0\0\0\0\0\0\0Ê)^+E@Þá¯åÄQÀ'),
(2528, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(2529, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(2530, '\0\0\0\0\0\0\0p\rÇNÓ,E@„%ÃÃQÀ'),
(2531, '\0\0\0\0\0\0\0á!Å¥,E@Ô\\÷ÄQÀ'),
(2532, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(2533, '\0\0\0\0\0\0\0)\\Âõ0E@/°}·¯ÇQÀ'),
(2534, '\0\0\0\0\0\0\0KÝßêJcD@ÁŸ+[µ~RÀ'),
(2535, '\0\0\0\0\0\0\0íÌÈ,E@ ¶W0»ÃQÀ'),
(2536, '\0\0\0\0\0\0\0åCª,E@öµ.5ÂÄQÀ'),
(2537, '\0\0\0\0\0\0\0vbšŽ.E@FÇVÉÃQÀ'),
(2538, '\0\0\0\0\0\0\0Í;NÑ‘,E@”ö_˜ÈQÀ'),
(2539, '\0\0\0\0\0\0\0á!Å¥,E@Ô\\÷ÄQÀ'),
(2540, '\0\0\0\0\0\0\0ç}Ò?w*E@~$ÁÇQÀ'),
(2541, '\0\0\0\0\0\0\0Ê)^+E@Þá¯åÄQÀ'),
(2542, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(2543, '\0\0\0\0\0\0\0\0ØÊ•AE@µ@q¶oºQÀ'),
(2544, '\0\0\0\0\0\0\0£“¥Öû,E@EÃGËQÀ'),
(2545, '\0\0\0\0\0\0\0¢´7øÂ,E@)í\r¾0ÅQÀ'),
(2546, '\0\0\0\0\0\0\0c8è\\›''E@þ`à¹wÅQÀ'),
(2547, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(2548, '\0\0\0\0\0\0\0÷™&E@`íƒ‡ÄÄQÀ'),
(2549, '\0\0\0\0\0\0\0¸ó³G^ E@·Ï*3%ÀQÀ'),
(2550, '\0\0\0\0\0\0\0¥×ª²/E@z-ÇQÀ'),
(2551, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(2552, '\0\0\0\0\0\0\0ù/È,E@ðÛã5ÅQÀ'),
(2553, '\0\0\0\0\0\0\0bžÅœ1E@ ƒÓ''^ÆQÀ'),
(2554, '\0\0\0\0\0\0\0Á|hÕ@E@9ïÿã„ÌQÀ'),
(2555, '\0\0\0\0\0\0\0L¢7÷,E@;ƒÐ‹$ÅQÀ'),
(2556, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(2557, '\0\0\0\0\0\0\0k3©üÆ,E@ãw.ç-ÄQÀ'),
(2558, '\0\0\0\0\0\0\0¸ó³G^ E@·Ï*3%ÀQÀ'),
(2559, '\0\0\0\0\0\0\0c8è\\›''E@þ`à¹wÅQÀ'),
(2560, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(2561, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(2562, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(2563, '\0\0\0\0\0\0\0FußÖ‚_E@$DùÇQÀ'),
(2564, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(2565, '\0\0\0\0\0\0\0¥×ª²/E@z-ÇQÀ'),
(2566, '\0\0\0\0\0\0\0±©lYE@Š2eñ¬ÈQÀ'),
(2567, '\0\0\0\0\0\0\0ØŸÄçN2E@?:uå³ÇQÀ'),
(2568, '\0\0\0\0\0\0\0C}QE@¸:¥(<ÔQÀ'),
(2569, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(2570, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(2571, '\0\0\0\0\0\0\0_sX+$+E@å§''âcÍQÀ'),
(2572, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(2573, '\0\0\0\0\0\0\0…²ðõµ,E@9{ÚáÄQÀ'),
(2574, '\0\0\0\0\0\0\07U÷ÈæE@Zè”‘ÄÌQÀ'),
(2575, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(2576, '\0\0\0\0\0\0\0¥×ª²/E@z-ÇQÀ'),
(2577, '\0\0\0\0\0\0\0emø‚».E@IÒÚÙ|ÃQÀ'),
(2578, '\0\0\0\0\0\0\0vÙŠGE@ô[*%¼QÀ'),
(2579, '\0\0\0\0\0\0\0Áå±fd]D@Z@²Ê–€RÀ'),
(2580, '\0\0\0\0\0\0\0	Ž&r''E@š™™™™áQÀ'),
(2581, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(2582, '\0\0\0\0\0\0\0GNpû/,E@u¥¯1yÄQÀ'),
(2583, '\0\0\0\0\0\0\0gŠïz4E@q·ÚyØQÀ'),
(2584, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(2585, '\0\0\0\0\0\0\0÷™&E@`íƒ‡ÄÄQÀ'),
(2586, '\0\0\0\0\0\0\0L¢7÷,E@;ƒÐ‹$ÅQÀ'),
(2587, '\0\0\0\0\0\0\0ÏAáýhE@vF%¸QÀ'),
(2588, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(2589, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(2590, '\0\0\0\0\0\0\0_{fI€BE@>”hÉc¹QÀ'),
(2591, '\0\0\0\0\0\0\0TvUûÏ,E@&ÊQÀ'),
(2592, '\0\0\0\0\0\0\0¥×ª²/E@z-ÇQÀ'),
(2593, '\0\0\0\0\0\0\0ÙT\np,E@N^	IÆQÀ'),
(2594, '\0\0\0\0\0\0\0$Ëîn\nC@˜¾×œ‹SÀ'),
(2595, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(2596, '\0\0\0\0\0\0\0¨ ìwr-E@Àr)SñÃQÀ'),
(2597, '\0\0\0\0\0\0\0 w¶ìµ,E@ü+uZÅQÀ'),
(2598, '\0\0\0\0\0\0\0¥×ª²/E@z-ÇQÀ'),
(2599, '\0\0\0\0\0\0\0M9_£H@§>¼)_À'),
(2600, '\0\0\0\0\0\0\0Á|hÕ@E@9ïÿã„ÌQÀ'),
(2601, '\0\0\0\0\0\0\0|"ôØ;NE@6ÊúÍÄäQÀ'),
(2602, '\0\0\0\0\0\0\0\\t²ÔzE@ëµËn‹QÀ'),
(2603, '\0\0\0\0\0\0\0TvUûÏ,E@&ÊQÀ'),
(2604, '\0\0\0\0\0\0\0¥×ª²/E@z-ÇQÀ'),
(2605, '\0\0\0\0\0\0\0bžÅœ1E@ ƒÓ''^ÆQÀ'),
(2606, '\0\0\0\0\0\0\0¥×ª²/E@z-ÇQÀ'),
(2607, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(2608, '\0\0\0\0\0\0\0vÝ[‘˜rK@\\Ç¸ââhø¿'),
(2609, '\0\0\0\0\0\0\0”“x/,E@ÃÐ+\ZÈQÀ'),
(2610, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(2611, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(2612, '\0\0\0\0\0\0\0bžÅœ1E@ ƒÓ''^ÆQÀ'),
(2613, '\0\0\0\0\0\0\0€)´,E@ât’­.ÅQÀ'),
(2614, '\0\0\0\0\0\0\0FŽ¾“`''E@1¦OaÛÊQÀ'),
(2615, '\0\0\0\0\0\0\0_sX+$+E@å§''âcÍQÀ'),
(2616, '\0\0\0\0\0\0\0Ù&µ1E@ŠM ÇQÀ'),
(2617, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(2618, '\0\0\0\0\0\0\0¿]›2Ü-E@AG«ZÒËQÀ'),
(2619, '\0\0\0\0\0\0\0€²eù,E@ý0TÄQÀ'),
(2620, '\0\0\0\0\0\0\01Åf‘7-E@–K™\nÄQÀ'),
(2621, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(2622, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(2623, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(2624, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(2625, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(2626, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(2627, '\0\0\0\0\0\0\0(jÄ''ø+E@#&Ø$ÉQÀ'),
(2628, '\0\0\0\0\0\0\0gŠïz4E@q·ÚyØQÀ'),
(2629, '\0\0\0\0\0\0\0ÄB­iÞ)E@Ü×sFÄQÀ'),
(2630, '\0\0\0\0\0\0\0£s~Šã)E@_2DRÄQÀ'),
(2631, '\0\0\0\0\0\0\0¥×ª²/E@z-ÇQÀ'),
(2632, '\0\0\0\0\0\0\0¥×ª²/E@z-ÇQÀ'),
(2633, '\0\0\0\0\0\0\0bžÅœ1E@ ƒÓ''^ÆQÀ'),
(2634, '\0\0\0\0\0\0\0%µ«ë«.E@QÃjaÃQÀ'),
(2635, '\0\0\0\0\0\0\0¥×ª²/E@z-ÇQÀ'),
(2636, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(2637, '\0\0\0\0\0\0\0ÏAáýhE@vF%¸QÀ'),
(2638, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(2639, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(2640, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(2641, '\0\0\0\0\0\0\0á¶¶ð¼0E@ý£oÒ4ÆQÀ'),
(2642, '\0\0\0\0\0\0\0åÍ†¡z/E@-Šh…³ËQÀ'),
(2643, '\0\0\0\0\0\0\0ƒ§Z)E@?„\0‘ÊQÀ'),
(2644, '\0\0\0\0\0\0\0{dÊ,E@Œ:¤âÄQÀ'),
(2645, '\0\0\0\0\0\0\0‡§WÊ2,E@gÕçj+ÆQÀ'),
(2646, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(2647, '\0\0\0\0\0\0\0³ö-)-àB@‰ˆ2¯›^À'),
(2648, '\0\0\0\0\0\0\0v5yÊäB@ì¢è™^À'),
(2649, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(2650, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(2651, '\0\0\0\0\0\0\0ãÌ#ÏG@Jiì©•^À'),
(2652, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(2653, '\0\0\0\0\0\0\0ò_ ËG@OjM•^À'),
(2654, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(2655, '\0\0\0\0\0\0\0(öŒŽÒG@Çø‹4L“^À'),
(2656, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(2657, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(2658, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(2659, '\0\0\0\0\0\0\0Ú‘aÏG@&åîs|–^À'),
(2660, '\0\0\0\0\0\0\0j,´bD@’ù‘l?}RÀ'),
(2661, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(2662, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(2663, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(2664, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(2665, '\0\0\0\0\0\0\0ŒµdúÊÔG@©¤N@“^À'),
(2666, '\0\0\0\0\0\0\00‹ÔÅÏG@ö„Ûµ•^À'),
(2667, '\0\0\0\0\0\0\01Bx´qÔG@â;1ëÅ–^À'),
(2668, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(2669, '\0\0\0\0\0\0\0£ ÊÂÎG@x{ò”^À'),
(2670, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(2671, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(2672, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(2673, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(2674, '\0\0\0\0\0\0\0©FTMµíG@u‰4;Ž^À'),
(2675, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(2676, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(2677, '\0\0\0\0\0\0\0½á>rÍG@R½Â‚•^À'),
(2678, '\0\0\0\0\0\0\0\rÄ²™CÐG@¬ßñ’$–^À'),
(2679, '\0\0\0\0\0\0\0ã”ol,ÇG@ç¸df°™^À'),
(2680, '\0\0\0\0\0\0\0m‰·“áG@ù¾¸T%^À'),
(2681, '\0\0\0\0\0\0\0§>¼ÏG@ß§ªÐ@”^À'),
(2682, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(2683, '\0\0\0\0\0\0\0êæ‡¶ËG@C'':˜^À'),
(2684, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(2685, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(2686, '\0\0\0\0\0\0\0Ó\r¹¾´ÏG@WMÆç”^À'),
(2687, '\0\0\0\0\0\0\0›uÆ÷ÅÍG@Q¡º¹•^À'),
(2688, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(2689, '\0\0\0\0\0\0\0Ò6þDe×G@	¥/„œ’^À'),
(2690, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(2691, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(2692, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(2693, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(2694, '\0\0\0\0\0\0\0Õl/³`H@~òÁ|Ãž^À'),
(2695, '\0\0\0\0\0\0\01Bx´qÔG@â;1ëÅ–^À'),
(2696, '\0\0\0\0\0\0\0³(ì¢èÍG@‰–<ž–•^À'),
(2697, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(2698, '\0\0\0\0\0\0\07QKs+ÔG@_%»”^À'),
(2699, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(2700, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(2701, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(2702, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(2703, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(2704, '\0\0\0\0\0\0\0\\Ï‡ÕG@øªðÂ±˜^À'),
(2705, '\0\0\0\0\0\0\0åáóy{ÇG@x,¸™^À'),
(2706, '\0\0\0\0\0\0\0§>¼ÏG@ß§ªÐ@”^À'),
(2707, '\0\0\0\0\0\0\0;¡|æQXA@Miö€]À'),
(2708, '\0\0\0\0\0\0\0eõXD^ G@å:×Aoœ^À'),
(2709, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(2710, '\0\0\0\0\0\0\0-²ï§ÖG@q=\n×£˜^À'),
(2711, '\0\0\0\0\0\0\0åŸt}zÓG@ŸÏÛ3¦–^À'),
(2712, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(2713, '\0\0\0\0\0\0\0²™è˜˜ÎG@@°a<–^À'),
(2714, '\0\0\0\0\0\0\0œŒ*Ã¸×G@öÑ©+•^À'),
(2715, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(2716, '\0\0\0\0\0\0\0„bÕ ÎG@t\0ë×Œ^À'),
(2717, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(2718, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(2719, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(2720, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(2721, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(2722, '\0\0\0\0\0\0\0Ô@ÐÅG@\n¬ÒÌÉ˜^À'),
(2723, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(2724, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(2725, '\0\0\0\0\0\0\0mÅþ²{ÎG@Z›ÆöZ•^À'),
(2726, '\0\0\0\0\0\0\0mV}®¶>:@$ÛT8]TÀ'),
(2727, '\0\0\0\0\0\0\0²/Ùx°ÔG@ðÖk”^À'),
(2728, '\0\0\0\0\0\0\0_§¢Â"ÏG@üä(@”•^À'),
(2729, '\0\0\0\0\0\0\0ÿQœHÛG@Ó*ŸŠ”^À'),
(2730, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(2731, '\0\0\0\0\0\0\0}>ÊˆÎG@e¡Ø•^À'),
(2732, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(2733, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(2734, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(2735, '\0\0\0\0\0\0\0\0‘~û:×G@TÁMë[^À'),
(2736, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(2737, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(2738, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(2739, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(2740, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(2741, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(2742, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(2743, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(2744, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(2745, '\0\0\0\0\0\0\0Þ-Ú-ºG@Ö‰p8˜”^À'),
(2746, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(2747, '\0\0\0\0\0\0\0„bÕ ÎG@t\0ë×Œ^À'),
(2748, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(2749, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(2750, '\0\0\0\0\0\0\0HÂ¾ÍG@s÷9>Z•^À'),
(2751, '\0\0\0\0\0\0\0„bÕ ÎG@t\0ë×Œ^À'),
(2752, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(2753, '\0\0\0\0\0\0\0„bÕ ÎG@t\0ë×Œ^À'),
(2754, '\0\0\0\0\0\0\0\0‘~û:×G@TÁMë[^À'),
(2755, '\0\0\0\0\0\0\0…¶œKqÍG@¯²¶)Œ^À'),
(2756, '\0\0\0\0\0\0\0\0‘~û:×G@TÁMë[^À'),
(2757, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(2758, '\0\0\0\0\0\0\0Oz0ÐG@HT(!^À'),
(2759, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(2760, '\0\0\0\0\0\0\0î=\\rÜÍG@Œ¾‚4c•^À'),
(2761, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(2762, '\0\0\0\0\0\0\0Œ±]ëœÎG@ð½dˆˆ•^À'),
(2763, '\0\0\0\0\0\0\0(Ñ7aÎG@XÈ\\T•^À'),
(2764, '\0\0\0\0\0\0\0¾-ýð˜ÍG@#ÒÛDÒ•^À'),
(2765, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(2766, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(2767, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(2768, '\0\0\0\0\0\0\0„bÕ ÎG@t\0ë×Œ^À'),
(2769, '\0\0\0\0\0\0\0eõXD^ G@å:×Aoœ^À'),
(2770, '\0\0\0\0\0\0\0eõXD^ G@å:×Aoœ^À'),
(2771, '\0\0\0\0\0\0\0ÛG”GÂG@\rcú’^À'),
(2772, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(2773, '\0\0\0\0\0\0\0Û+˜êA@÷ð½?‰]À'),
(2774, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(2775, '\0\0\0\0\0\0\04ZXkê@@¬ïŽ’]À'),
(2776, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(2777, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(2778, '\0\0\0\0\0\0\0ò€\rãÉA@«²ïŠà]À'),
(2779, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(2780, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(2781, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(2782, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(2783, '\0\0\0\0\0\0\0"úZ<a8C@z>¹­^À'),
(2784, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(2785, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(2786, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(2787, '\0\0\0\0\0\0\0å£{Œ¨³B@;ŒIÿ}^À'),
(2788, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(2789, '\0\0\0\0\0\0\0Ÿvøk²äB@í›û«Ç™^À'),
(2790, '\0\0\0\0\0\0\0™ÒŸ¢¸B@-ÌB;''‰^À'),
(2791, '\0\0\0\0\0\0\0è`¢æP@C@—Îâ ü^À'),
(2792, '\0\0\0\0\0\0\0ŽÙHÈöíB@·óXŸ^À'),
(2793, '\0\0\0\0\0\0\0Xiœ—ÔLB@Ò€‹_By^À'),
(2794, '\0\0\0\0\0\0\0D“zC@¶Íž•ˆ^À'),
(2795, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(2796, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(2797, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(2798, '\0\0\0\0\0\0\0âg«õæB@þªmÔT‘^À'),
(2799, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(2800, '\0\0\0\0\0\0\0¸|Þ¯|B@ŸU‘ø^À'),
(2801, '\0\0\0\0\0\0\0s™ýp«B@ønóFy^À'),
(2802, '\0\0\0\0\0\0\0s™ýp«B@ønóFy^À'),
(2803, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(2804, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(2805, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(2806, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(2807, '\0\0\0\0\0\0\0âg«õæB@þªmÔT‘^À'),
(2808, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(2809, '\0\0\0\0\0\0\0‰a‡1éáB@íc¿š^À'),
(2810, '\0\0\0\0\0\0\0€FéÒ¿äB@—o}Xo™^À'),
(2811, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(2812, '\0\0\0\0\0\0\0\ZVŸç@@''œ‚!{]À'),
(2813, '\0\0\0\0\0\0\0?å˜,îãD@Ù—l<ØVÀ'),
(2814, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(2815, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(2816, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(2817, '\0\0\0\0\0\0\0Ü$«Ç"úD@Ò•¾ÆäëUÀ'),
(2818, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(2819, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(2820, '\0\0\0\0\0\0\0°òº44ñD@¨MA#}éUÀ'),
(2821, '\0\0\0\0\0\0\0·aôD@¿M•9ëUÀ'),
(2822, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(2823, '\0\0\0\0\0\0\0ZrËýÄñD@þ";JèUÀ'),
(2824, '\0\0\0\0\0\0\0Å8\nóD@¥×fc%éUÀ'),
(2825, '\0\0\0\0\0\0\0È©çî„ýD@.1àv²ëUÀ'),
(2826, '\0\0\0\0\0\0\0š™™™™ùD@ìQ¸…ëUÀ'),
(2827, '\0\0\0\0\0\0\0{ö\\¦&íD@4Ÿs·ëéUÀ'),
(2828, '\0\0\0\0\0\0\0ãaëcOE@ÒÅ¦•ÂþUÀ'),
(2829, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(2830, '\0\0\0\0\0\0\0*ÿZ^øD@£x•µÍéUÀ'),
(2831, '\0\0\0\0\0\0\0‚É"kõD@…µ1vÂèUÀ'),
(2832, '\0\0\0\0\0\0\0jm\ZÛkûD@k¶ò’ÿîUÀ'),
(2833, '\0\0\0\0\0\0\0îéêŽÅøD@F6ŽéUÀ'),
(2834, '\0\0\0\0\0\0\0ãaëcOE@ÒÅ¦•ÂþUÀ'),
(2835, '\0\0\0\0\0\0\0ñ¬“é†òD@TTýJçèUÀ'),
(2836, '\0\0\0\0\0\0\0”HGÞÞåD@ðùa„pþUÀ'),
(2837, '\0\0\0\0\0\0\0Tcø>YD@BâhØ¹}RÀ'),
(2838, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(2839, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(2840, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(2841, '\0\0\0\0\0\0\0ìay¡ÊåD@¥…Ë*låUÀ'),
(2842, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(2843, '\0\0\0\0\0\0\0ç4´;&E@ØeøO7ýUÀ'),
(2844, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(2845, '\0\0\0\0\0\0\0ñøQh´ðD@)õÜéUÀ'),
(2846, '\0\0\0\0\0\0\0éÁ“Ì øD@ôýÔxéêUÀ'),
(2847, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(2848, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(2849, '\0\0\0\0\0\0\0…‡RÂùD@}5¬NëUÀ'),
(2850, '\0\0\0\0\0\0\0Þ”M|áD@Ò,\Z|+	VÀ'),
(2851, '\0\0\0\0\0\0\0~ÁDE@4÷ë)ìUÀ'),
(2852, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(2853, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(2854, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(2855, '\0\0\0\0\0\0\0³z‡Û¡ûD@¦Óº\rjìUÀ'),
(2856, '\0\0\0\0\0\0\0Ã·°n¼óD@œj-ÌBèUÀ'),
(2857, '\0\0\0\0\0\0\0ÀiÑñðD@" ºû÷çUÀ'),
(2858, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(2859, '\0\0\0\0\0\0\0ý¿êÈ‘øD@‰BËºéUÀ'),
(2860, '\0\0\0\0\0\0\0"cÿ†šóD@Šb¨yýêUÀ'),
(2861, '\0\0\0\0\0\0\0Å+ÿÑE@•tÞtûUÀ'),
(2862, '\0\0\0\0\0\0\0Qqw1(óD@’q)éUÀ'),
(2863, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(2864, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(2865, '\0\0\0\0\0\0\0¥¤‡¡ÕîD@·køÌÈçUÀ'),
(2866, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(2867, '\0\0\0\0\0\0\0Ã(­dlöD@ã4ôOìUÀ'),
(2868, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(2869, '\0\0\0\0\0\0\0Ýð£	ôD@ÂÈ\r>ëUÀ'),
(2870, '\0\0\0\0\0\0\0õfÔ|•ôD@åí§ëUÀ'),
(2871, '\0\0\0\0\0\0\0F²G¨øD@µ¿³êUÀ'),
(2872, '\0\0\0\0\0\0\0Ë5`ë­øD@(CUL¥éUÀ'),
(2873, '\0\0\0\0\0\0\0Î¨ù*ùV@@Ý_=î[?XÀ'),
(2874, '\0\0\0\0\0\0\0ù1æ®%úD@•nWèìUÀ'),
(2875, '\0\0\0\0\0\0\0Œ§y"ãòD@¥W¹èUÀ'),
(2876, '\0\0\0\0\0\0\0Ì@®ÃõD@¹Õ½_ëUÀ'),
(2877, '\0\0\0\0\0\0\0éH‰¸”õD@âñ£ÐèèUÀ'),
(2878, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(2879, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(2880, '\0\0\0\0\0\0\0øé.?&ýD@B½Ï§ÄêUÀ'),
(2881, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(2882, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(2883, '\0\0\0\0\0\0\0ë_H=úõD@ŽóívéUÀ'),
(2884, '\0\0\0\0\0\0\0/™tC@êß?''Î"VÀ'),
(2885, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(2886, '\0\0\0\0\0\0\0Ï4¼´<ÎG@’ù‘l¿\r\\À'),
(2887, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(2888, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(2889, '\0\0\0\0\0\0\0!ßJ³òD@$K%—êUÀ'),
(2890, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(2891, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(2892, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(2893, '\0\0\0\0\0\0\0Þ`}}ñD@º2L·éUÀ'),
(2894, '\0\0\0\0\0\0\0MÅ!vöD@%–ïtÂéUÀ'),
(2895, '\0\0\0\0\0\0\0”z`\r¬C@¸{	_UÀ'),
(2896, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(2897, '\0\0\0\0\0\0\0¬sÈ^÷D@GéUÀ'),
(2898, '\0\0\0\0\0\0\0Ì5»¤ øD@Fª9Š=éUÀ'),
(2899, '\0\0\0\0\0\0\0 Qºô/ñD@[	Ý%qéUÀ'),
(2900, '\0\0\0\0\0\0\0ÈF­Õ\rE@Ž’WçïUÀ'),
(2901, '\0\0\0\0\0\0\0\0‘Ù´­øD@e‘—ôêUÀ'),
(2902, '\0\0\0\0\0\0\0]Ž²ÙìñD@ÁÉ–@èUÀ'),
(2903, '\0\0\0\0\0\0\0\n0,¾÷D@ò%TpéUÀ'),
(2904, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(2905, '\0\0\0\0\0\0\0ç§èH©C@ú`¨hWÀ'),
(2906, '\0\0\0\0\0\0\0ùrUêñD@•ô0´:èUÀ'),
(2907, '\0\0\0\0\0\0\0]bv`JÿD@	@’HêUÀ'),
(2908, '\0\0\0\0\0\0\0&Â+îäñD@—qSèUÀ'),
(2909, '\0\0\0\0\0\0\07bwËùD@á©‘§öéUÀ'),
(2910, '\0\0\0\0\0\0\0ÌìóåñD@6ŽXèUÀ'),
(2911, '\0\0\0\0\0\0\0ÞÉ§Ç¶ìD@á\n(ÔüUÀ'),
(2912, '\0\0\0\0\0\0\0PIç\rAñD@ªÜ_âçUÀ'),
(2913, '\0\0\0\0\0\0\0`Ç•ôD@šÒú[éUÀ'),
(2914, '\0\0\0\0\0\0\0÷éxÌ@÷D@ùMa¥‚éUÀ'),
(2915, '\0\0\0\0\0\0\0ÃOwù1¬C@(Qåjš_UÀ'),
(2916, '\0\0\0\0\0\0\0,çœéo[D@øIÿÜa€RÀ'),
(2917, '\0\0\0\0\0\0\0,çœéo[D@øIÿÜa€RÀ'),
(2918, '\0\0\0\0\0\0\0,çœéo[D@øIÿÜa€RÀ'),
(2919, '\0\0\0\0\0\0\0,çœéo[D@øIÿÜa€RÀ'),
(2920, '\0\0\0\0\0\0\0,çœéo[D@øIÿÜa€RÀ'),
(2921, '\0\0\0\0\0\0\0OXâeaD@‘·±ÙRÀ'),
(2922, '\0\0\0\0\0\0\0Ðò<¸;E@h?RD†ëUÀ'),
(2923, '\0\0\0\0\0\0\0Xl8Ñ\\D@i*z–Öø[À'),
(2924, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(2925, '\0\0\0\0\0\0\0.ôÒ^Ž¼D@œÇ¼éÃUÀ'),
(2926, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(2927, '\0\0\0\0\0\0\0ãµ\\Gf‹D@wt\0RIUÀ'),
(2928, '\0\0\0\0\0\0\0vÚ¿WòD@FE÷¥èUÀ'),
(2929, '\0\0\0\0\0\0\0òAÏföD@¤øËùèUÀ'),
(2930, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(2931, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(2932, '\0\0\0\0\0\0\0ÿµ,0ëE@eÕ1øÅCUÀ'),
(2933, '\0\0\0\0\0\0\0nMº-‘óD@X}wëUÀ'),
(2934, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(2935, '\0\0\0\0\0\0\0\Zkg{ùD@{ãÿéáéUÀ'),
(2936, '\0\0\0\0\0\0\0\Zkg{ùD@{ãÿéáéUÀ'),
(2937, '\0\0\0\0\0\0\0¿´¨OdD@¤q¨ß…tUÀ'),
(2938, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(2939, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(2940, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(2941, '\0\0\0\0\0\0\0C¡¯jZõD@àÛôg¿èUÀ'),
(2942, '\0\0\0\0\0\0\0Êb¬€ŒöD@ÿ‹™éUÀ'),
(2943, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(2944, '\0\0\0\0\0\0\0ž×(óD@‡§WÊ²èUÀ'),
(2945, '\0\0\0\0\0\0\0DÍFoE@ihM=VÀ'),
(2946, '\0\0\0\0\0\0\0S{mÇøD@	pzïêUÀ'),
(2947, '\0\0\0\0\0\0\0œˆ~m÷D@p[[x^éUÀ'),
(2948, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(2949, '\0\0\0\0\0\0\0á	½þ$øD@Œž[èJéUÀ'),
(2950, '\0\0\0\0\0\0\0Š}"OòD@Àyqâ«çUÀ'),
(2951, '\0\0\0\0\0\0\01„Ê	òD@P•¥ŒnèUÀ'),
(2952, '\0\0\0\0\0\0\0_ñ_ÅñD@Þ°È\nÙòUÀ'),
(2953, '\0\0\0\0\0\0\0ÔåÞ\r³¬@@•«i(ÿ¥VÀ'),
(2954, '\0\0\0\0\0\0\0‘(´¬û—4@=~oÓŸ½S@'),
(2955, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(2956, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(2957, '\0\0\0\0\0\0\0¤§ÝùÉ9@ÝCû}TÀ'),
(2958, '\0\0\0\0\0\0\0›sðLhÊ9@|_\\ªRTÀ'),
(2959, '\0\0\0\0\0\0\0‚:åÑ´9@ŒC¶bTÀ'),
(2960, '\0\0\0\0\0\0\0t¢øyº9@ñ]ï£¿TÀ'),
(2961, '\0\0\0\0\0\0\0¥1ZGU—;@ö®æ¥TÀ'),
(2962, '\0\0\0\0\0\0\0®ršO:@|o-	TÀ'),
(2963, '\0\0\0\0\0\0\0 êãF6Æ9@…LèdTÀ'),
(2964, '\0\0\0\0\0\0\09MúÖâî9@~¥˜(g\nTÀ'),
(2965, '\0\0\0\0\0\0\0¤§ÝùÉ9@ÝCû}TÀ'),
(2966, '\0\0\0\0\0\0\0þDeÃšÀF@h‘í|?©^À'),
(2967, '\0\0\0\0\0\0\0¥1ZGU—;@ö®æ¥TÀ'),
(2968, '\0\0\0\0\0\0\0¤§ÝùÉ9@ÝCû}TÀ'),
(2969, '\0\0\0\0\0\0\0LÛdù_ñ9@UþvåTÀ'),
(2970, '\0\0\0\0\0\0\0K–î	m¶9@´ïå™rTÀ'),
(2971, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(2972, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(2973, '\0\0\0\0\0\0\0iú‘ÇxÎG@´)"Ã•^À'),
(2974, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(2975, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(2976, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(2977, '\0\0\0\0\0\0\0ôsžéÎG@l#v–^À'),
(2978, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(2979, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(2980, '\0\0\0\0\0\0\0.€ßuìÓG@2ÑÖ÷”^À'),
(2981, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(2982, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(2983, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(2984, '\0\0\0\0\0\0\0Ì`ŒHÉG@°¼˜^À'),
(2985, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(2986, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(2987, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(2988, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(2989, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(2990, '\0\0\0\0\0\0\0gñ}qÎG@õh¥Z•^À'),
(2991, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(2992, '\0\0\0\0\0\0\0ûz ,ÏG@óÉŠáê”^À'),
(2993, '\0\0\0\0\0\0\0§>¼ÏG@ß§ªÐ@”^À'),
(2994, '\0\0\0\0\0\0\0ôsžéÎG@l#v–^À'),
(2995, '\0\0\0\0\0\0\0ûWVš”ÎG@]›”^À'),
(2996, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(2997, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(2998, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(2999, '\0\0\0\0\0\0\0"ò§×wÓG@Üš¢¯™^À'),
(3000, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(3001, '\0\0\0\0\0\0\0ôsžéÎG@l#v–^À'),
(3002, '\0\0\0\0\0\0\0ôsžéÎG@l#v–^À'),
(3003, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(3004, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(3005, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(3006, '\0\0\0\0\0\0\0èóöŒéÍG@¶ìZŒË•^À'),
(3007, '\0\0\0\0\0\0\0ôsžéÎG@l#v–^À'),
(3008, '\0\0\0\0\0\0\0[z4ÕÍG@,¹ŠÅo•^À'),
(3009, '\0\0\0\0\0\0\0·H5G±ÎG@Nö*ó•^À'),
(3010, '\0\0\0\0\0\0\0i×ÎAÑG@aÝxwä‘^À'),
(3011, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(3012, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(3013, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(3014, '\0\0\0\0\0\0\0''ÒG*ÕG@\n0,>•^À'),
(3015, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(3016, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(3017, '\0\0\0\0\0\0\0~2kÎÖG@$§À“•^À'),
(3018, '\0\0\0\0\0\0\0“QewÎG@ËjX[•^À'),
(3019, '\0\0\0\0\0\0\0£ ÊÂÎG@x{ò”^À'),
(3020, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(3021, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(3022, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(3023, '\0\0\0\0\0\0\0›ZŠÎG@Ðk¢…:–^À'),
(3024, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(3025, '\0\0\0\0\0\0\0¼š—¨ÑG@Ò-…QÚ–^À'),
(3026, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(3027, '\0\0\0\0\0\0\0ÊNäîÎG@,øÈAä•^À'),
(3028, '\0\0\0\0\0\0\0(Z^^%ÒG@¤‘*å”^À'),
(3029, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(3030, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(3031, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(3032, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(3033, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(3034, '\0\0\0\0\0\0\0ZHÀètF@s	ßûQWÀ'),
(3035, '\0\0\0\0\0\0\0¢Òˆ™}ÎG@ÖÆØ	–^À'),
(3036, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(3037, '\0\0\0\0\0\0\0ôsžéÎG@l#v–^À'),
(3038, '\0\0\0\0\0\0\0	4ØÔÍG@âKº•^À'),
(3039, '\0\0\0\0\0\0\0êøä«ÑG@Å	\ZÛ–^À'),
(3040, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(3041, '\0\0\0\0\0\0\0ü¢©CÎG@yÞ2Ì•^À'),
(3042, '\0\0\0\0\0\0\0.€ßuìÓG@2ÑÖ÷”^À'),
(3043, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(3044, '\0\0\0\0\0\0\0;\Z‡úÍG@v¥e¤ÞŒ^À'),
(3045, '\0\0\0\0\0\0\0„bÕ ÎG@t\0ë×Œ^À'),
(3046, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(3047, '\0\0\0\0\0\0\0zm6VbÎG@ÚTÝ#›•^À'),
(3048, '\0\0\0\0\0\0\05øÅ\0ÚG@OÙŸzÚ”^À'),
(3049, '\0\0\0\0\0\0\0Äh)ÆG@Ñ˜¤\r˜^À'),
(3050, '\0\0\0\0\0\0\0|®\0ð™ÎG@r52~”^À'),
(3051, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(3052, '\0\0\0\0\0\0\0-²ï§ÖG@q=\n×£˜^À'),
(3053, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(3054, '\0\0\0\0\0\0\0„bÕ ÎG@t\0ë×Œ^À'),
(3055, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(3056, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(3057, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(3058, '\0\0\0\0\0\0\0ùrUêáB@œÅæ>”™^À'),
(3059, '\0\0\0\0\0\0\0Â7¨XïB@AEÕ¯t‘^À'),
(3060, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(3061, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(3062, '\0\0\0\0\0\0\0¸|Þ¯|B@ŸU‘ø^À'),
(3063, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(3064, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(3065, '\0\0\0\0\0\0\0áz®GáB@{®Gáš^À'),
(3066, '\0\0\0\0\0\0\0V]ûäB@:vP‰ëš^À'),
(3067, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(3068, '\0\0\0\0\0\0\0ö>U*¹E@/ÌxXÀ'),
(3069, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(3070, '\0\0\0\0\0\0\0y6P…äáB@e\ZÇ#›^À'),
(3071, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(3078, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(3079, '\0\0\0\0\0\0\0€H¿}ù@@vL‚ÜjUÀ'),
(3080, '\0\0\0\0\0\0\0âõO&$ôC@!Ôû|JÆRÀ'),
(3081, '\0\0\0\0\0\0\01(Óhrå@@+Üò‘”UÀ'),
(3082, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(3083, '\0\0\0\0\0\0\0Ûmšë´:@&ŒfTÀ'),
(3084, '\0\0\0\0\0\0\0¿˜-í@@,ôÁ26UÀ'),
(3085, '\0\0\0\0\0\0\0q!ê™¹ã@@µwüÍzUÀ'),
(3086, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(3087, '\0\0\0\0\0\0\0¥k&ßlã@@¤q¨ß…UÀ'),
(3088, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(3089, '\0\0\0\0\0\0\06Vå"è@@nÀç‡UÀ'),
(3090, '\0\0\0\0\0\0\0V\rÂÜîù@@`ì2#UÀ'),
(3091, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(3092, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(3093, '\0\0\0\0\0\0\0+£‘Ïë@@6=((EUÀ'),
(3094, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(3095, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(3096, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(3097, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(3098, '\0\0\0\0\0\0\0øse«&ñ@@Ö»‰ë UÀ'),
(3099, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(3100, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(3101, '\0\0\0\0\0\0\0Éòdí¥	A@_¥q^ÒUÀ'),
(3102, '\0\0\0\0\0\0\0I[¦pNö@@ú2÷9UÀ'),
(3103, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(3104, '\0\0\0\0\0\0\0©±s‰Ùä@@¶ˆƒßUÀ'),
(3105, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(3106, '\0\0\0\0\0\0\0oÖà}Uê@@]Þ®ÕUÀ'),
(3107, '\0\0\0\0\0\0\0ª‚QIä@@‘Íú9UÀ'),
(3108, '\0\0\0\0\0\0\0ÃxròÇâ@@(ÄÔ\ZUÀ'),
(3109, '\0\0\0\0\0\0\0¤Ámmáá@@@AsçÓUÀ'),
(3110, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(3111, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(3112, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(3113, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(3114, '\0\0\0\0\0\0\0¸`èRì@@[ìöÙUÀ'),
(3115, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(3116, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(3117, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(3118, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(3119, '\0\0\0\0\0\0\0øse«&ñ@@Ö»‰ë UÀ'),
(3120, '\0\0\0\0\0\0\0øse«&ñ@@Ö»‰ë UÀ'),
(3121, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(3122, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(3123, '\0\0\0\0\0\0\0æWÇíä@@×Si¡UÀ'),
(3124, '\0\0\0\0\0\0\0%ËI(}ã@@Ü¼qR˜UÀ'),
(3125, '\0\0\0\0\0\0\0Í€iè@@òá½UÀ'),
(3126, '\0\0\0\0\0\0\0)îÓLRá@@p¯q¢‚UÀ'),
(3127, '\0\0\0\0\0\0\08}ØÁä@@!>°ã¿UÀ'),
(3128, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(3129, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(3130, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(3131, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(3132, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(3133, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(3134, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(3135, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(3136, '\0\0\0\0\0\0\0?c%×ä@@B1h×óUÀ'),
(3137, '\0\0\0\0\0\0\0\\ùa)JF@)¥pÎVÀ'),
(3138, '\0\0\0\0\0\0\0®»yªCä@@€ã|û„UÀ'),
(3139, '\0\0\0\0\0\0\0I[¦pNö@@ú2÷9UÀ'),
(3140, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(3141, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(3142, '\0\0\0\0\0\0\0QäÿDã@@;1MGUÀ'),
(3143, '\0\0\0\0\0\0\0—Ûˆá@@á†Î!ßUÀ'),
(3144, '\0\0\0\0\0\0\0y‚³JŸç@@òlEQVUÀ'),
(3145, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(3146, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(3147, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(3148, '\0\0\0\0\0\0\0°=³$@ï@@õ»°5[UÀ'),
(3149, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(3150, '\0\0\0\0\0\0\0mXSYâ@@øÂdª`UÀ'),
(3151, '\0\0\0\0\0\0\0ñøQh´â@@1 r§OUÀ'),
(3152, '\0\0\0\0\0\0\0o À;ùà@@Øh”‰6UÀ'),
(3153, '\0\0\0\0\0\0\0ô¥·?ë@@$›«æ9UÀ'),
(3154, '\0\0\0\0\0\0\0­ùñ—é@@EÔDŸUÀ'),
(3155, '\0\0\0\0\0\0\0È®YÓaí@@Ì¤<©å\rUÀ'),
(3156, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(3157, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(3158, '\0\0\0\0\0\0\0ÃxròÇâ@@(ÄÔ\ZUÀ'),
(3159, '\0\0\0\0\0\0\0ù g³êÑ@@)˜1kUÀ'),
(3160, '\0\0\0\0\0\0\0A‹vÔ@@e4òyÅUÀ'),
(3161, '\0\0\0\0\0\0\0®»yªCä@@€ã|û„UÀ'),
(3162, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(3163, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(3164, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(3165, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(3166, '\0\0\0\0\0\0\0²	Õrà@@çµÈ,1UÀ'),
(3167, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(3168, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(3169, '\0\0\0\0\0\0\0N<±˜"á@@*Ä#ñòUÀ'),
(3170, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(3171, '\0\0\0\0\0\0\0"‰^F±ä@@Ú®ÐËUÀ'),
(3172, '\0\0\0\0\0\0\0k­yŸôaD@àV0à›RÀ'),
(3173, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(3174, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(3175, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(3176, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(3177, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(3178, '\0\0\0\0\0\0\0èA‹¶å@@×1®¸UÀ'),
(3179, '\0\0\0\0\0\0\0¾…uãÝã@@å(@ÌUÀ'),
(3180, '\0\0\0\0\0\0\0³éàì@@“Žr0›UÀ'),
(3181, '\0\0\0\0\0\0\0NE*Œ-ã@@ÃyÝÇöUÀ'),
(3182, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(3183, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(3184, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(3185, '\0\0\0\0\0\0\0Ç’ƒä@@5=ÍnÒUÀ'),
(3186, '\0\0\0\0\0\0\0¬''©¤Ó@@1Îß„ÂUÀ'),
(3187, '\0\0\0\0\0\0\0Ã$U%ä@@~„«M­UÀ'),
(3188, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(3189, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(3190, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(3214, '\0\0\0\0\0\0\0„aÀ’óD@!Ë‚‰?ëUÀ'),
(3192, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(3193, '\0\0\0\0\0\0\0,çœéo[D@øIÿÜa€RÀ'),
(3194, '\0\0\0\0\0\0\0û±I~Ä_D@˜2p@€RÀ'),
(3195, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(3196, '\0\0\0\0\0\0\0‘(´¬û—4@=~oÓŸ½S@'),
(3197, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(3753, '\0\0\0\0\0\0\0ìQ¸…ÓE@9ž*:mØSÀ'),
(3200, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(3201, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(3202, '\0\0\0\0\0\0\0]GÁøß@@üÐ»g“UÀ'),
(3203, '\0\0\0\0\0\0\0(%©ñwä@@©ëšÚã\ZUÀ'),
(3204, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(3205, '\0\0\0\0\0\0\0$Dù‚Ü@@LÅÆ¼ŽUÀ'),
(3206, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(3207, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(3208, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(3209, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(3210, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(3211, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(3212, '\0\0\0\0\0\0\0”™ˆvå@@¯è{²‡UÀ'),
(3213, '\0\0\0\0\0\0\0Äïï"ë@@»:UÀ'),
(3215, '\0\0\0\0\0\0\0qN`fE@Á\0Â‡RÀ'),
(3216, '\0\0\0\0\0\0\0Bx´qÄøD@ðRê’qëUÀ'),
(3217, '\0\0\0\0\0\0\0½\0ûèÔõD@7ßˆîYëUÀ'),
(3218, '\0\0\0\0\0\0\0dNáRðD@\\ÜëIVÀ'),
(3219, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(3220, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(3221, '\0\0\0\0\0\0\0!ÛC…&E@ùçX”HýUÀ'),
(3222, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(3223, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(3224, '\0\0\0\0\0\0\0›¬QÑðD@ŸçOÕéUÀ'),
(3225, '\0\0\0\0\0\0\05™ñ¶Ò÷D@ç«äcwéUÀ'),
(3226, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(3227, '\0\0\0\0\0\0\0r‹ßúD@øùïÁkëUÀ'),
(3228, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(3229, '\0\0\0\0\0\0\0™ƒû\\ÈøD@šª «€êUÀ'),
(3230, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(3231, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(3232, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(3233, '\0\0\0\0\0\0\0g4¨ìðD@BQêÜþèUÀ'),
(3234, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(3235, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(3236, '\0\0\0\0\0\0\0c–âOùùD@ôºíFêUÀ'),
(3237, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(3238, '\0\0\0\0\0\0\0<&œ''èõD@.1àv²ëUÀ'),
(3239, '\0\0\0\0\0\0\0¥J&§%B@‡å*qxŸTÀ'),
(3240, '\0\0\0\0\0\0\0£)ño†êD@Åy“:\\éUÀ'),
(3241, '\0\0\0\0\0\0\0J«kþ©òD@†òô\0LëUÀ'),
(3242, '\0\0\0\0\0\0\0mg©«øD@Ü	›¦ôêUÀ'),
(3243, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(3244, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(3245, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(3246, '\0\0\0\0\0\0\0€»ì×òD@;òÏèUÀ'),
(3247, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(3248, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(3249, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(3250, '\0\0\0\0\0\0\0/\\sG÷B@OàBÃ‡l^À'),
(3251, '\0\0\0\0\0\0\0óuþÓþ@@„…îíq]À'),
(3252, '\0\0\0\0\0\0\0i®.¾A@#ÌþŠF¢]À'),
(3253, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(3254, '\0\0\0\0\0\0\0Ôkk…A@ì€Ñ&—]À'),
(3255, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(3256, '\0\0\0\0\0\0\0‚6ÞÂ_A@£ûƒ’ ]À'),
(3257, '\0\0\0\0\0\0\0¡ž>î@@VñFæ‘™]À'),
(3258, '\0\0\0\0\0\0\0¨!á A@¼P\nK‘]À'),
(3259, '\0\0\0\0\0\0\0\09aÂhÎ9@Ÿ”I\rmTÀ'),
(3260, '\0\0\0\0\0\0\0¤§ÝùÉ9@ÝCû}TÀ'),
(3261, '\0\0\0\0\0\0\0›sðLhÊ9@|_\\ªRTÀ'),
(3262, '\0\0\0\0\0\0\0›sðLhÊ9@|_\\ªRTÀ'),
(3263, '\0\0\0\0\0\0\0xD…êæâ9@°èÖkzTÀ'),
(3264, '\0\0\0\0\0\0\0¤§ÝùÉ9@ÝCû}TÀ'),
(3265, '\0\0\0\0\0\0\0›sðLhÊ9@|_\\ªRTÀ'),
(3266, '\0\0\0\0\0\0\0¤§ÝùÉ9@ÝCû}TÀ'),
(3267, '\0\0\0\0\0\0\0¤§ÝùÉ9@ÝCû}TÀ'),
(3268, '\0\0\0\0\0\0\0®ršO:@|o-	TÀ'),
(3269, '\0\0\0\0\0\0\0›sðLhÊ9@|_\\ªRTÀ'),
(3270, '\0\0\0\0\0\0\0cÉfXÖË9@ÊOª}:TÀ'),
(3271, '\0\0\0\0\0\0\0›sðLhÊ9@|_\\ªRTÀ'),
(3272, '\0\0\0\0\0\0\0Ÿ´ËøID@ñs2''žRÀ'),
(3273, '\0\0\0\0\0\0\0Ù?ObD@³3;AQuRÀ'),
(3274, '\0\0\0\0\0\0\0_zûsÑ`D@Ú\0l@RÀ'),
(3275, '\0\0\0\0\0\0\0,çœéo[D@øIÿÜa€RÀ'),
(3276, '\0\0\0\0\0\0\0%\nˆ¤ID@‹øóˆ~RÀ'),
(3277, '\0\0\0\0\0\0\0Ÿ´ËøID@ñs2''žRÀ'),
(3278, '\0\0\0\0\0\0\0¤Ì&ÀjD@…˜Kª6†RÀ'),
(3279, '\0\0\0\0\0\0\0Ù?ObD@³3;AQuRÀ'),
(3280, '\0\0\0\0\0\0\0,çœéo[D@øIÿÜa€RÀ'),
(3281, '\0\0\0\0\0\0\0,çœéo[D@øIÿÜa€RÀ'),
(3282, '\0\0\0\0\0\0\0,çœéo[D@øIÿÜa€RÀ'),
(3283, '\0\0\0\0\0\0\0,çœéo[D@øIÿÜa€RÀ'),
(3284, '\0\0\0\0\0\0\0,çœéo[D@øIÿÜa€RÀ'),
(3285, '\0\0\0\0\0\0\0,çœéo[D@øIÿÜa€RÀ'),
(3286, '\0\0\0\0\0\0\0,çœéo[D@øIÿÜa€RÀ'),
(3287, '\0\0\0\0\0\0\0V†ÌðúVD@l¶MLòRÀ'),
(3288, '\0\0\0\0\0\0\0,çœéo[D@øIÿÜa€RÀ'),
(3289, '\0\0\0\0\0\0\0Tb.^D@è­p:€RÀ'),
(3290, '\0\0\0\0\0\0\0´×q²Ã\\D@\0\0\0\0\0€RÀ'),
(3291, '\0\0\0\0\0\0\0œ¢Èÿ‰[D@åcw’€RÀ'),
(3292, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(3293, '\0\0\0\0\0\0\0£®µ÷©^D@Ñƒ€RÀ'),
(3294, '\0\0\0\0\0\0\0œýh8_D@aÀ7òe€RÀ'),
(3295, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(3296, '\0\0\0\0\0\0\0üA6WD@ÙVX†~RÀ'),
(3297, '\0\0\0\0\0\0\0\rÀ«Š]D@…F€RÀ'),
(3298, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(3299, '\0\0\0\0\0\0\0¶Vj¬³eD@æõÅatRÀ'),
(3300, '\0\0\0\0\0\0\0€>ú_D@\0ì7nsRÀ'),
(3301, '\0\0\0\0\0\0\0,çœéo[D@øIÿÜa€RÀ'),
(3302, '\0\0\0\0\0\0\033333SD@ÍÌÌÌÌ|RÀ'),
(3303, '\0\0\0\0\0\0\0‰8çñÅUD@ÃÐ+\ZRÀ'),
(3304, '\0\0\0\0\0\0\0½U×¡š^D@Ž«‘]€RÀ'),
(3305, '\0\0\0\0\0\0\0,çœéo[D@øIÿÜa€RÀ'),
(3306, '\0\0\0\0\0\0\0,çœéo[D@øIÿÜa€RÀ'),
(3307, '\0\0\0\0\0\0\0k­yŸôaD@àV0à›RÀ'),
(3308, '\0\0\0\0\0\0\0s¹ÁP‡aD@˜À­»y~RÀ'),
(3309, '\0\0\0\0\0\0\0Ü™®Ì\0ZD@¯Øé´€RÀ'),
(3310, '\0\0\0\0\0\0\0\\«=ì…`D@ˆž”IRÀ'),
(3311, '\0\0\0\0\0\0\0Ô($™ÕcD@ëüÛe¿~RÀ'),
(3312, '\0\0\0\0\0\0\09)Ì{œaD@OË\\RÀ'),
(3313, '\0\0\0\0\0\0\0—Mõd]D@ïÚDRÀ'),
(3314, '\0\0\0\0\0\0\0Â´n(`D@íÿÒX1kRÀ'),
(3315, '\0\0\0\0\0\0\0/±èŒÞæB@‰9RÇô›^À'),
(3316, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(3317, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(3318, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(3319, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(3320, '\0\0\0\0\0\0\0@åB@`’Êó™^À'),
(3321, '\0\0\0\0\0\0\0Ÿû­HáB@\ZžpX™^À'),
(3322, '\0\0\0\0\0\0\0(í\r¾âB@œóøb”›^À'),
(3323, '\0\0\0\0\0\0\0…Ž1ÁüB@ûýýñ£^À'),
(3324, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(3325, '\0\0\0\0\0\0\0mXSYâ@@øÂdª`UÀ'),
(3326, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(3327, '\0\0\0\0\0\0\0ÃxròÇâ@@(ÄÔ\ZUÀ'),
(3328, '\0\0\0\0\0\0\0YF„“A@*ß3’~TÀ'),
(3329, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(3330, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(3331, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(3332, '\0\0\0\0\0\0\0Ôkk…A@ì€Ñ&—]À'),
(3333, '\0\0\0\0\0\0\0¡c•\nA@+j0\r˜]À'),
(3334, '\0\0\0\0\0\0\0Ôkk…A@ì€Ñ&—]À'),
(3335, '\0\0\0\0\0\0\0\n{(=B@|ƒŠ²UÀ'),
(3336, '\0\0\0\0\0\0\0žoU#A@`B`@Š™]À'),
(3337, '\0\0\0\0\0\0\0Ã(­dl	A@ØÏpŸ™]À'),
(3338, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(3339, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(3340, '\0\0\0\0\0\0\0,çœéo[D@øIÿÜa€RÀ'),
(3341, '\0\0\0\0\0\0\0¬ª—ßWD@Ig`äe~RÀ'),
(3342, '\0\0\0\0\0\0\0²t±\\D@öí$¢RÀ'),
(3343, '\0\0\0\0\0\0\033333SD@ÍÌÌÌÌ|RÀ'),
(3344, '\0\0\0\0\0\0\033333SD@ÍÌÌÌÌ|RÀ'),
(3345, '\0\0\0\0\0\0\0EO%^ùcD@#ß\0Ž}RÀ'),
(3346, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(3347, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(3348, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(3349, '\0\0\0\0\0\0\0å¹¾ãB@ÁäF‘µš^À'),
(3350, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(3351, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(3352, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(3353, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(3354, '\0\0\0\0\0\0\0âg«õæB@þªmÔT‘^À'),
(3355, '\0\0\0\0\0\0\0h5n{ÌâB@›)¼º›^À'),
(3356, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(3357, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(3358, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(3359, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(3360, '\0\0\0\0\0\0\0Â7¨XïB@AEÕ¯t‘^À'),
(3361, '\0\0\0\0\0\0\0âg«õæB@þªmÔT‘^À'),
(3362, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(3363, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(3364, '\0\0\0\0\0\0\0l>®\rãB@I÷s\nòš^À'),
(3365, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(3366, '\0\0\0\0\0\0\0ž_” ¿äB@Ý–Ègš^À'),
(3367, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(3368, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(3369, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(3370, '\0\0\0\0\0\0\0M5PuÏG@NwC?–^À'),
(3371, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(3372, '\0\0\0\0\0\0\0AeüûŒ‹B@7§’ íWÀ'),
(3373, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(3374, '\0\0\0\0\0\0\05LÈböÏG@OQšrª“^À'),
(3375, '\0\0\0\0\0\0\0\Z‹¦³“ÙG@ìr¥ù¾–^À'),
(3376, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(3377, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(3378, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(3379, '\0\0\0\0\0\0\0úñ—õÍG@Ž@¼®_•^À'),
(3380, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(3381, '\0\0\0\0\0\0\0]YX&²ÏG@F‚ I–^À'),
(3382, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(3383, '\0\0\0\0\0\0\0²×»?ÎG@ª-u×•^À'),
(3384, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(3385, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(3386, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(3387, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(3388, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(3389, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(3390, '\0\0\0\0\0\0\0û£¹_OýG@€ŒoÞîŒ^À'),
(3391, '\0\0\0\0\0\0\0-²ï§ÖG@q=\n×£˜^À'),
(3392, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(3393, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(3394, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(3395, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(3396, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(3397, '\0\0\0\0\0\0\0½á>rÍG@R½Â‚•^À'),
(3398, '\0\0\0\0\0\0\0T{Çß¬ÃG@A[3Ót^À'),
(3399, '\0\0\0\0\0\0\0T²÷=EÖG@”„DÚÆ‡^À'),
(3400, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(3401, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(3402, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(3403, '\0\0\0\0\0\0\0vÿ³AÎG@Î	WV•^À'),
(3404, '\0\0\0\0\0\0\0wâ(/èÙ>@ÖÌµÃ:ŠVÀ'),
(3405, '\0\0\0\0\0\0\06\Ze¢­ÍG@’JgW•^À'),
(3406, '\0\0\0\0\0\0\0„bÕ ÎG@t\0ë×Œ^À'),
(3407, '\0\0\0\0\0\0\0§>¼ÏG@ß§ªÐ@”^À'),
(3408, '\0\0\0\0\0\0\0þ{ðÚ¥ÍG@eU„›Œ•^À'),
(3409, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(3410, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(3411, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(3412, '\0\0\0\0\0\0\0,çœéo[D@øIÿÜa€RÀ'),
(3413, '\0\0\0\0\0\0\0,çœéo[D@øIÿÜa€RÀ'),
(3414, '\0\0\0\0\0\0\0,çœéo[D@øIÿÜa€RÀ'),
(3415, '\0\0\0\0\0\0\0,çœéo[D@øIÿÜa€RÀ'),
(3416, '\0\0\0\0\0\0\0‰8çñÅUD@ÃÐ+\ZRÀ'),
(3417, '\0\0\0\0\0\0\0,çœéo[D@øIÿÜa€RÀ'),
(3418, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(3419, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(3420, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(3421, '\0\0\0\0\0\0\0×\0\0[¹äB@Ù°¦²¨š^À'),
(3422, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(3423, '\0\0\0\0\0\0\0/±èŒÞæB@‰9RÇô›^À'),
(3424, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(3425, '\0\0\0\0\0\0\0y˜Q‡p,E@œËÃøÆQÀ'),
(3426, '\0\0\0\0\0\0\0¥×ª²/E@z-ÇQÀ'),
(3427, '\0\0\0\0\0\0\0ÜÒi6E@#M¼<ÄQÀ'),
(3428, '\0\0\0\0\0\0\0+)Á,þE@ªu,\0×ÐQÀ'),
(3429, '\0\0\0\0\0\0\0óÂBR°.E@ì`Ì›ÆQÀ'),
(3430, '\0\0\0\0\0\0\0ÁµÉ—,E@¡[ùv\\ÅQÀ'),
(3431, '\0\0\0\0\0\0\0L¦\nF%-E@†8ÖÅmÈQÀ'),
(3432, '\0\0\0\0\0\0\0±¾É/E@*ât’­ÇQÀ'),
(3433, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(3434, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(3435, '\0\0\0\0\0\0\0²¸ÿÈtÜC@-ÒÄ;ÀBZÀ'),
(3436, '\0\0\0\0\0\0\0VZwX%E@öBÛAÛQÀ'),
(3437, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(3438, '\0\0\0\0\0\0\0ç}Ò?w*E@~$ÁÇQÀ'),
(3439, '\0\0\0\0\0\0\0`ÈêVÏ-E@¡SëX€ÄQÀ'),
(3440, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(3441, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(3442, '\0\0\0\0\0\0\0(wD*1,E@Ëø÷ÆQÀ'),
(3443, '\0\0\0\0\0\0\0&þ(ê-E@.rOWÄQÀ'),
(3444, '\0\0\0\0\0\0\0bžÅœ1E@ ƒÓ''^ÆQÀ'),
(3445, '\0\0\0\0\0\0\0÷™&E@`íƒ‡ÄÄQÀ'),
(3446, '\0\0\0\0\0\0\0,ã•ÚA?E@LÝ:¤=¾QÀ'),
(3447, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(3448, '\0\0\0\0\0\0\0Ëq]ç.E@íÌNPÔÅQÀ'),
(3449, '\0\0\0\0\0\0\0TvUûÏ,E@&ÊQÀ'),
(3450, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(3451, '\0\0\0\0\0\0\0Pu#‡ã,E@ GÎØÄQÀ'),
(3452, '\0\0\0\0\0\0\0UÒø*5E@«>(ÊQÀ'),
(3453, '\0\0\0\0\0\0\0hrÖLc-E@˜¨9ÔÊÃQÀ'),
(3454, '\0\0\0\0\0\0\0U\0ç CåD@®GázzRÀ'),
(3455, '\0\0\0\0\0\0\0ôþ?N˜BE@æÊ Úà¸QÀ'),
(3456, '\0\0\0\0\0\0\0?W[±¿,E@…|Ð³YÅQÀ'),
(3457, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(3458, '\0\0\0\0\0\0\0©û[]©&E@çÀËºQÀ'),
(3459, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(3460, '\0\0\0\0\0\0\0™Kª¶›0E@ô‹ôÆQÀ'),
(3461, '\0\0\0\0\0\0\0D˜ìé4CE@¬MÂ:»QÀ'),
(3462, '\0\0\0\0\0\0\0Ê)^+E@Þá¯åÄQÀ'),
(3463, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(3464, '\0\0\0\0\0\0\0¸ó³G^ E@·Ï*3%ÀQÀ'),
(3465, '\0\0\0\0\0\0\0ÎÀm($E@^ìb?0×QÀ'),
(3466, '\0\0\0\0\0\0\0Ì£xð+E@Üf*Ä£ÄQÀ'),
(3467, '\0\0\0\0\0\0\0¼t“.E@]ÜFxÃQÀ'),
(3468, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(3469, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(3470, '\0\0\0\0\0\0\0gŠïz4E@q·ÚyØQÀ'),
(3471, '\0\0\0\0\0\0\0ç}Ò?w*E@~$ÁÇQÀ'),
(3472, '\0\0\0\0\0\0\0óèFXT@E@X}w·QÀ'),
(3473, '\0\0\0\0\0\0\0ˆWÎ*E@Óêõ8ÇQÀ'),
(3474, '\0\0\0\0\0\0\0bžÅœ1E@ ƒÓ''^ÆQÀ'),
(3475, '\0\0\0\0\0\0\0±¾É/E@*ât’­ÇQÀ'),
(3476, '\0\0\0\0\0\0\0_{fI€BE@>”hÉc¹QÀ'),
(3477, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(3478, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(3479, '\0\0\0\0\0\0\0ç}Ò?w*E@~$ÁÇQÀ'),
(3480, '\0\0\0\0\0\0\0ó[ÏkG<E@0¿.¹ºQÀ'),
(3481, '\0\0\0\0\0\0\0ÕÖã5E@¡«cËÆQÀ'),
(3482, '\0\0\0\0\0\0\0Äº§a)E@b%0çãÈQÀ'),
(3483, '\0\0\0\0\0\0\0ô©c•Ò/E@¯`ñdÆQÀ'),
(3484, '\0\0\0\0\0\0\0Äh)3E@Èé@(ÇQÀ'),
(3485, '\0\0\0\0\0\0\0óÂBR°.E@ì`Ì›ÆQÀ'),
(3486, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(3487, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(3488, '\0\0\0\0\0\0\0+"yÃ9E@\0ôEŒèÈQÀ'),
(3489, '\0\0\0\0\0\0\03úÑpÊ,E@-%ËI(ÃQÀ'),
(3490, '\0\0\0\0\0\0\0¥×ª²/E@z-ÇQÀ'),
(3491, '\0\0\0\0\0\0\0Å&,ô\\E@„ÃÁ”7ÌQÀ'),
(3492, '\0\0\0\0\0\0\0bžÅœ1E@ ƒÓ''^ÆQÀ'),
(3493, '\0\0\0\0\0\0\0NÒü1''E@´ç25	ÇQÀ'),
(3494, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(3495, '\0\0\0\0\0\0\0Þ°È\nÙ+E@Ä0p/ÄQÀ'),
(3496, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(3497, '\0\0\0\0\0\0\0ˆÑR*E@œ~š¤CÌQÀ'),
(3498, '\0\0\0\0\0\0\0Qo¡†Ê>E@?è´ÑQÀ'),
(3499, '\0\0\0\0\0\0\0.¦>5E@žÀ*ÍœÓQÀ'),
(3500, '\0\0\0\0\0\0\0Ñþ?ó%E@›-jA¹ÒQÀ'),
(3501, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(3502, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(3503, '\0\0\0\0\0\0\0ö¶™\nñE@ç/ü;ÄQÀ'),
(3504, '\0\0\0\0\0\0\0L²Ä¹-E@šÈqL;ÄQÀ'),
(3505, '\0\0\0\0\0\0\0†@‰*0E@k$®£ÏQÀ'),
(3506, '\0\0\0\0\0\0\0±(600E@ÿ;G‰‚ÂQÀ'),
(3507, '\0\0\0\0\0\0\0TvUûÏ,E@&ÊQÀ'),
(3508, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(3509, '\0\0\0\0\0\0\0¥×ª²/E@z-ÇQÀ'),
(3510, '\0\0\0\0\0\0\0ç}Ò?w*E@~$ÁÇQÀ'),
(3511, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(3512, '\0\0\0\0\0\0\0ÕÖã5E@¡«cËÆQÀ'),
(3513, '\0\0\0\0\0\0\0®Gáz.E@A‚âÇ˜ÃQÀ'),
(3514, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(3515, '\0\0\0\0\0\0\0 ž€{.E@ŸÆb@›ÃQÀ'),
(3516, '\0\0\0\0\0\0\0/HŸûÎG@Úø]"(Š^À'),
(3517, '\0\0\0\0\0\0\0''„º„ÕG@d<J%<™^À'),
(3518, '\0\0\0\0\0\0\0Ð@Â‹àG@ÕÐavŠ^À'),
(3519, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(3520, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(3521, '\0\0\0\0\0\0\0-²ï§ÖG@q=\n×£˜^À'),
(3522, '\0\0\0\0\0\0\0§>¼ÏG@ß§ªÐ@”^À'),
(3523, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(3524, '\0\0\0\0\0\0\0,çœéo[D@øIÿÜa€RÀ'),
(3525, '\0\0\0\0\0\0\0Ðši£D@¨sE)!…QÀ'),
(3526, '\0\0\0\0\0\0\0¯…Û(E@O¡© ËQÀ'),
(3527, '\0\0\0\0\0\0\0˜)³œIE@Í_ó…»QÀ'),
(3528, '\0\0\0\0\0\0\0™P›xE@\0\0\0\0\0´QÀ'),
(3529, '\0\0\0\0\0\0\0¡äÄ\r®úD@z€8Y´ªQÀ'),
(3530, '\0\0\0\0\0\0\0¶•E@Ž²Ùì#ÐQÀ'),
(3531, '\0\0\0\0\0\0\0eõXD^E@B<·uÜÏQÀ'),
(3532, '\0\0\0\0\0\0\0¯üCDE@•R†`ÎQÀ'),
(3533, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(3534, '\0\0\0\0\0\0\0eõXD^E@B<·uÜÏQÀ'),
(3535, '\0\0\0\0\0\0\0ºk	ù E@ˆ-=šêÐQÀ'),
(3536, '\0\0\0\0\0\0\0ÒÂ\n\\Ã.E@¬r¡ò¯ÆQÀ'),
(3537, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(3538, '\0\0\0\0\0\0\0bžÅœ1E@ ƒÓ''^ÆQÀ'),
(3539, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(3540, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(3541, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(3542, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(3543, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(3544, '\0\0\0\0\0\0\0¢%§å¡E@ã8ðj¹kSÀ'),
(3545, '\0\0\0\0\0\0\09”Fq3H@@ãñþ‰[rWÀ'),
(3546, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(3547, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(3548, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(3549, '\0\0\0\0\0\0\0Ù½ÜÌ½D@ß	¬ÒLÕUÀ'),
(3550, '\0\0\0\0\0\0\0ïëó•òD@¹G€ägèUÀ'),
(3551, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(3552, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(4769, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(3554, '\0\0\0\0\0\0\0#¤ng_ùD@d Ï.ßéUÀ'),
(3555, '\0\0\0\0\0\0\0ZÂ5Ò­2E@P{\0AoËQÀ'),
(3556, '\0\0\0\0\0\0\0Ñdµ¯ò9E@ÒI\0H·×QÀ'),
(3557, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(3558, '\0\0\0\0\0\0\0r^­$ÃÒE@GãP¿ÚSÀ'),
(3559, '\0\0\0\0\0\0\0ìQ¸…ÓE@9ž*:mØSÀ'),
(3560, '\0\0\0\0\0\0\0ìQ¸…ÓE@9ž*:mØSÀ'),
(3561, '\0\0\0\0\0\0\0ìQ¸…ÓE@9ž*:mØSÀ'),
(3562, '\0\0\0\0\0\0\0ìQ¸…ÓE@9ž*:mØSÀ'),
(3563, '\0\0\0\0\0\0\0ìQ¸…ÓE@9ž*:mØSÀ'),
(3564, '\0\0\0\0\0\0\0ìQ¸…ÓE@9ž*:mØSÀ'),
(3565, '\0\0\0\0\0\0\0ìQ¸…ÓE@9ž*:mØSÀ'),
(3566, '\0\0\0\0\0\0\0ìQ¸…ÓE@9ž*:mØSÀ'),
(3567, '\0\0\0\0\0\0\0×j{ÎE@qÿÁÑßSÀ'),
(3568, '\0\0\0\0\0\0\0ÀÞÒE@” ¿Ð£ÛSÀ'),
(3569, '\0\0\0\0\0\0\0ìQ¸…ÓE@9ž*:mØSÀ'),
(3570, '\0\0\0\0\0\0\0ìQ¸…ÓE@9ž*:mØSÀ'),
(3571, '\0\0\0\0\0\0\0ìQ¸…ÓE@9ž*:mØSÀ'),
(3572, '\0\0\0\0\0\0\0ìQ¸…ÓE@9ž*:mØSÀ'),
(3573, '\0\0\0\0\0\0\0ìQ¸…ÓE@9ž*:mØSÀ'),
(3574, '\0\0\0\0\0\0\0ìQ¸…ÓE@9ž*:mØSÀ'),
(3575, '\0\0\0\0\0\0\0ìQ¸…ÓE@9ž*:mØSÀ'),
(3576, '\0\0\0\0\0\0\0¨T‰²·ÒE@d•Ò3½ÜSÀ'),
(3577, '\0\0\0\0\0\0\0ìQ¸…ÓE@9ž*:mØSÀ'),
(3578, '\0\0\0\0\0\0\0dh+åkÓE@xœýÜ+ÚSÀ'),
(3579, '\0\0\0\0\0\0\0ìQ¸…ÓE@9ž*:mØSÀ'),
(3580, '\0\0\0\0\0\0\0×÷á !ÒE@Ž¿·éØSÀ'),
(3581, '\0\0\0\0\0\0\0ìQ¸…ÓE@9ž*:mØSÀ'),
(3582, '\0\0\0\0\0\0\0~"ªK!ÒE@Þ-Ú-ÙSÀ'),
(3583, '\0\0\0\0\0\0\0ìQ¸…ÓE@9ž*:mØSÀ'),
(3584, '\0\0\0\0\0\0\0áçdN<ÚE@csÊaÖSÀ');
INSERT INTO `businesspoint` (`idbusinesspoint`, `point`) VALUES
(3585, '\0\0\0\0\0\0\0»ì|ä{ŠE@ÇOºcÅSÀ'),
(3586, '\0\0\0\0\0\0\0ã\nŸ­ÚE@"= ÇƒÙSÀ'),
(3587, '\0\0\0\0\0\0\0I¥3‹«ÔE@!„‘¨aÛSÀ'),
(3588, '\0\0\0\0\0\0\0ìQ¸…ÓE@9ž*:mØSÀ'),
(3589, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(3590, '\0\0\0\0\0\0\0¡„ìE@vih¨vØSÀ'),
(3591, '\0\0\0\0\0\0\0ìQ¸…ÓE@9ž*:mØSÀ'),
(3592, '\0\0\0\0\0\0\0ìQ¸…ÓE@9ž*:mØSÀ'),
(3593, '\0\0\0\0\0\0\0ìQ¸…ÓE@9ž*:mØSÀ'),
(3594, '\0\0\0\0\0\0\0A$RÒE@;íß+ÛSÀ'),
(3595, '\0\0\0\0\0\0\0ÝésZ\\ÓE@áHûz™ØSÀ'),
(3596, '\0\0\0\0\0\0\0e |‹˜ÕE@ôÿÝ9ÙSÀ'),
(3597, '\0\0\0\0\0\0\0ìQ¸…ÓE@9ž*:mØSÀ'),
(3598, '\0\0\0\0\0\0\0ìQ¸…ÓE@9ž*:mØSÀ'),
(3599, '\0\0\0\0\0\0\07¶õÃÒE@.ÔPYƒØSÀ'),
(3600, '\0\0\0\0\0\0\0ìQ¸…ÓE@9ž*:mØSÀ'),
(3601, '\0\0\0\0\0\0\0ìQ¸…ÓE@9ž*:mØSÀ'),
(3602, '\0\0\0\0\0\0\0½ÓSšƒÓE@3‹PlØSÀ'),
(3603, '\0\0\0\0\0\0\0ýµa¹JÓE@v\nàéÖSÀ'),
(3604, '\0\0\0\0\0\0\0ìQ¸…ÓE@9ž*:mØSÀ'),
(3605, '\0\0\0\0\0\0\0ìQ¸…ÓE@9ž*:mØSÀ'),
(3606, '\0\0\0\0\0\0\0ìQ¸…ÓE@9ž*:mØSÀ'),
(3607, '\0\0\0\0\0\0\0‚•žDßÕE@Ô¿NÙSÀ'),
(3608, '\0\0\0\0\0\0\0ìQ¸…ÓE@9ž*:mØSÀ'),
(3609, '\0\0\0\0\0\0\0­!õèÝE@9ñÕŽâÙSÀ'),
(3610, '\0\0\0\0\0\0\0š/å2$ÕE@P”ßýLÚSÀ'),
(3611, '\0\0\0\0\0\0\0ãW›•ÑE@q?;;ôÚSÀ'),
(3612, '\0\0\0\0\0\0\0ìQ¸…ÓE@9ž*:mØSÀ'),
(3613, '\0\0\0\0\0\0\0ìQ¸…ÓE@9ž*:mØSÀ'),
(3614, '\0\0\0\0\0\0\0ìQ¸…ÓE@9ž*:mØSÀ'),
(3615, '\0\0\0\0\0\0\0ŸÐF	UÒE@Y¡í=ÙSÀ'),
(3616, '\0\0\0\0\0\0\0Ï¤¨Ž°¥E@j¶< \Z_À'),
(3617, '\0\0\0\0\0\0\0ÿ6Õ¤%ÓE@uÌyÆ>ÛSÀ'),
(3618, '\0\0\0\0\0\0\0ìQ¸…ÓE@9ž*:mØSÀ'),
(3619, '\0\0\0\0\0\0\0ìQ¸…ÓE@9ž*:mØSÀ'),
(3620, '\0\0\0\0\0\0\0ìQ¸…ÓE@9ž*:mØSÀ'),
(3621, '\0\0\0\0\0\0\0"–ƒýE@O"Â¿.TÀ'),
(3622, '\0\0\0\0\0\0\0ìQ¸…ÓE@9ž*:mØSÀ'),
(3623, '\0\0\0\0\0\0\0&\Z¤à)ÓE@ƒÚoíÄÛSÀ'),
(3624, '\0\0\0\0\0\0\0ìQ¸…ÓE@9ž*:mØSÀ'),
(3625, '\0\0\0\0\0\0\0­2SZÔE@æ1ÁÉÛSÀ'),
(3626, '\0\0\0\0\0\0\0Ù"i7úöD@9&‹ûéUÀ'),
(3627, '\0\0\0\0\0\0\0ßN"Â¿øD@õei§æéUÀ'),
(3628, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(3629, '\0\0\0\0\0\0\0gbº«öD@qÆÕmuêUÀ'),
(3630, '\0\0\0\0\0\0\0¿gû•óD@á6dMvëUÀ'),
(3631, '\0\0\0\0\0\0\0°N]óD@QSé''èUÀ'),
(3632, '\0\0\0\0\0\0\0ˆ}1ùD@r¥žêUÀ'),
(3633, '\0\0\0\0\0\0\0*Õ"òD@rúz¾fèUÀ'),
(3634, '\0\0\0\0\0\0\0¯$y®ïóD@@3ˆìêUÀ'),
(3635, '\0\0\0\0\0\0\0JCBðD@W˜¾×êUÀ'),
(3636, '\0\0\0\0\0\0\0àKáA³ôD@üïwÞ|ëUÀ'),
(3637, '\0\0\0\0\0\0\0ÞçøhqøD@"nN%ìUÀ'),
(3638, '\0\0\0\0\0\0\0GÿpüõøD@aü4îéUÀ'),
(3639, '\0\0\0\0\0\0\0—:ÈëÁøD@,òë‡ØéUÀ'),
(3640, '\0\0\0\0\0\0\0ÖŒrùD@2ÑÖ÷éUÀ'),
(3641, '\0\0\0\0\0\0\0`Ç•ôD@šÒú[éUÀ'),
(3642, '\0\0\0\0\0\0\0¾Y9j;÷D@…>XÆ†éUÀ'),
(3643, '\0\0\0\0\0\0\0ƒn/iŒôD@ÏÉA¿%ëUÀ'),
(3644, '\0\0\0\0\0\0\0[\\ã3ÙóD@ï¬Ýv¡èUÀ'),
(3645, '\0\0\0\0\0\0\0qvk™÷D@Éå?íUÀ'),
(3646, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(3647, '\0\0\0\0\0\0\0OÉ9±‡ùD@;±â¯$êUÀ'),
(3648, '\0\0\0\0\0\0\0)yuŽùD@¢+ÜòéUÀ'),
(3649, '\0\0\0\0\0\0\0æ}“¦óD@	þ·’ëUÀ'),
(3650, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(3651, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(3653, '\0\0\0\0\0\0\0n“ÜüC@È‘sVÀTÀ'),
(3654, '\0\0\0\0\0\0\0ÏŠO¦óD@ì¿ÎMëUÀ'),
(3655, '\0\0\0\0\0\0\0‘(´¬û—4@=~oÓŸ½S@'),
(3656, '\0\0\0\0\0\0\0‘(´¬û—4@=~oÓŸ½S@'),
(3657, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(3658, '\0\0\0\0\0\0\0eõXD^ G@å:×Aoœ^À'),
(3659, '\0\0\0\0\0\0\05FFbÝÌG@X‰S•^À'),
(3660, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(3661, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(3662, '\0\0\0\0\0\0\0u><Kã@@%"ü‹ UÀ'),
(3663, '\0\0\0\0\0\0\0‹½¼¥Aä@@ÓçYÿUÀ'),
(3664, '\0\0\0\0\0\0\0±òp§•B@oo+TÀ'),
(3665, '\0\0\0\0\0\0\0®»yªCä@@€ã|û„UÀ'),
(3666, '\0\0\0\0\0\0\0øse«&ñ@@Ö»‰ë UÀ'),
(3667, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(3668, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(3669, '\0\0\0\0\0\0\0Éòdí¥	A@_¥q^ÒUÀ'),
(3670, '\0\0\0\0\0\0\0NE*Œ-ã@@ÃyÝÇöUÀ'),
(3671, '\0\0\0\0\0\0\0ÃxròÇâ@@(ÄÔ\ZUÀ'),
(3672, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(3673, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(3674, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(3675, '\0\0\0\0\0\0\09Šb¨yø@@Þ‚}ª\rUÀ'),
(3676, '\0\0\0\0\0\0\0I[¦pNö@@ú2÷9UÀ'),
(3677, '\0\0\0\0\0\0\0øse«&ñ@@Ö»‰ë UÀ'),
(3678, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(3679, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(3680, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(3681, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(3682, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(3683, '\0\0\0\0\0\0\0èàÿA@—!é.d''UÀ'),
(3684, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(3685, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(3686, '\0\0\0\0\0\0\0Ê‘Jë@@Êçp°UÀ'),
(3687, '\0\0\0\0\0\0\0®»yªCä@@€ã|û„UÀ'),
(3688, '\0\0\0\0\0\0\0.¦>5Î@@öå UÀ'),
(3689, '\0\0\0\0\0\0\0NE*Œ-ã@@ÃyÝÇöUÀ'),
(3690, '\0\0\0\0\0\0\0Éòdí¥	A@_¥q^ÒUÀ'),
(3691, '\0\0\0\0\0\0\0ïèÚr‰\ZA@\n	bêøUÀ'),
(3692, '\0\0\0\0\0\0\0«ó²2ù@@‹\\N(UÀ'),
(3693, '\0\0\0\0\0\0\0Éòdí¥	A@_¥q^ÒUÀ'),
(3694, '\0\0\0\0\0\0\0ñ@	Ø³A@«±„µUÀ'),
(3695, '\0\0\0\0\0\0\0ÁOÁ†Lý@@-½ì\rUÀ'),
(3696, '\0\0\0\0\0\0\0î‰¿7—A@¼í,UÀ'),
(3697, '\0\0\0\0\0\0\08¸D@çâo{‚WÀ'),
(3698, '\0\0\0\0\0\0\0R½Â‚Ù@@²fd»UÀ'),
(3699, '\0\0\0\0\0\0\0“QewA@™ênC±UÀ'),
(3700, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(3701, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(3702, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(3703, '\0\0\0\0\0\0\0I[¦pNö@@ú2÷9UÀ'),
(3704, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(3705, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(3706, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(3707, '\0\0\0\0\0\0\0»ù4á@@(¯:kUÀ'),
(3708, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(3709, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(3710, '\0\0\0\0\0\0\0XH¯¼šð@@çåµUÀ'),
(3711, '\0\0\0\0\0\0\0ã>Í$Eö@@G!É¬ÞUÀ'),
(3712, '\0\0\0\0\0\0\0NE*Œ-ã@@ÃyÝÇöUÀ'),
(3713, '\0\0\0\0\0\0\0®»yªCä@@€ã|û„UÀ'),
(3714, '\0\0\0\0\0\0\0‚69|Òã@@\r©¢x•UÀ'),
(3715, '\0\0\0\0\0\0\0\\Y¢³ÌzC@è‘õŠÝÏWÀ'),
(3716, '\0\0\0\0\0\0\0ÑB]ÿ	U>@¾¥œ/öiTÀ'),
(3717, '\0\0\0\0\0\0\0eîµ#í@@|E7UÀ'),
(3718, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(3719, '\0\0\0\0\0\0\0ŽðHì@@GŽtFUÀ'),
(3720, '\0\0\0\0\0\0\0Æ‰¯vã@@7ÄxÍ«UÀ'),
(3721, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(3722, '\0\0\0\0\0\0\0:­Û öóD@;äf¸ýUÀ'),
(3723, '\0\0\0\0\0\0\0NE*Œ-ã@@ÃyÝÇöUÀ'),
(3724, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(3725, '\0\0\0\0\0\0\0\Zuc05A@§Kµ:?TÀ'),
(3726, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(3727, '\0\0\0\0\0\0\0®gÇ,ÿ@@bÚ7÷W&UÀ'),
(3728, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(3729, '\0\0\0\0\0\0\0EHÝÎ¾Þ@@¬DÎ/UÀ'),
(3730, '\0\0\0\0\0\0\0¾£Æ„˜á@@²^‚SUÀ'),
(3731, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(3732, '\0\0\0\0\0\0\0mXSYâ@@øÂdª`UÀ'),
(3733, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(3734, '\0\0\0\0\0\0\0RF\\\0\Zå@@®GázUÀ'),
(3735, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(3736, '\0\0\0\0\0\0\0«Íÿ«Žæ@@%És}UÀ'),
(3737, '\0\0\0\0\0\0\0¨ÆK7‰ÑE@^ºIÛSÀ'),
(3738, '\0\0\0\0\0\0\0ìQ¸…ÓE@9ž*:mØSÀ'),
(3739, '\0\0\0\0\0\0\0ìQ¸…ÓE@9ž*:mØSÀ'),
(3740, '\0\0\0\0\0\0\0C&Ï«ðÕE@ÈþÃ§ÊØSÀ'),
(3741, '\0\0\0\0\0\0\0×ž—Š-@ð†4*pZY@'),
(3742, '\0\0\0\0\0\0\0ìQ¸…ÓE@9ž*:mØSÀ'),
(3743, '\0\0\0\0\0\0\0ìQ¸…ÓE@9ž*:mØSÀ'),
(3744, '\0\0\0\0\0\0\0ìQ¸…ÓE@9ž*:mØSÀ'),
(3745, '\0\0\0\0\0\0\0ìQ¸…ÓE@9ž*:mØSÀ'),
(3746, '\0\0\0\0\0\0\0°ó€ÃU;F@wËÄcuÕSÀ'),
(3747, '\0\0\0\0\0\0\0SAEÕ¯L@áþ~1–ZÀ'),
(3748, '\0\0\0\0\0\0\0a5–°6âE@ëýF;nÚSÀ'),
(3749, '\0\0\0\0\0\0\0a5–°6âE@ëýF;nÚSÀ'),
(3750, '\0\0\0\0\0\0\0im\ZÛÕE@E>‘''ÙSÀ'),
(3751, '\0\0\0\0\0\0\0ìQ¸…ÓE@9ž*:mØSÀ'),
(3752, '\0\0\0\0\0\0\0:¼Ö”\ZÜE@ó„o«ÙSÀ'),
(3754, '\0\0\0\0\0\0\0q=\n×£ø@@ñ»é–š]À'),
(3755, '\0\0\0\0\0\0\0©@w“)\\D@(‚8''}RÀ'),
(3756, '\0\0\0\0\0\0\0ÞÙhJüfD@DÛ1u×}RÀ'),
(3758, '\0\0\0\0\0\0\0Å+ÿÑE@•tÞtûUÀ'),
(3759, '\0\0\0\0\0\0\0%¹²úÙ A@kŽ½(Ç]À'),
(3760, '\0\0\0\0\0\0\0ìQ¸…ÓE@9ž*:mØSÀ'),
(3761, '\0\0\0\0\0\0\0SAEÕ¯L@áþ~1–ZÀ'),
(3762, '\0\0\0\0\0\0\0ìQ¸…ÓE@9ž*:mØSÀ'),
(3763, '\0\0\0\0\0\0\0ìQ¸…ÓE@9ž*:mØSÀ'),
(3764, '\0\0\0\0\0\0\0ìQ¸…ÓE@9ž*:mØSÀ'),
(3765, '\0\0\0\0\0\0\0ìQ¸…ÓE@9ž*:mØSÀ'),
(3766, '\0\0\0\0\0\0\0ìQ¸…ÓE@9ž*:mØSÀ'),
(3767, '\0\0\0\0\0\0\0ìQ¸…ÓE@9ž*:mØSÀ'),
(3768, '\0\0\0\0\0\0\0ìQ¸…ÓE@9ž*:mØSÀ'),
(3769, '\0\0\0\0\0\0\0ìQ¸…ÓE@9ž*:mØSÀ'),
(3770, '\0\0\0\0\0\0\0ìQ¸…ÓE@9ž*:mØSÀ'),
(3771, '\0\0\0\0\0\0\0d¯w¼!F@U‡Ü7 SÀ'),
(3772, '\0\0\0\0\0\0\0ìQ¸…ÓE@9ž*:mØSÀ'),
(3773, '\0\0\0\0\0\0\0SAEÕ¯L@áþ~1–ZÀ'),
(3774, '\0\0\0\0\0\0\0ìQ¸…ÓE@9ž*:mØSÀ'),
(3775, '\0\0\0\0\0\0\0ìQ¸…ÓE@9ž*:mØSÀ'),
(3776, '\0\0\0\0\0\0\0ìQ¸…ÓE@9ž*:mØSÀ'),
(3777, '\0\0\0\0\0\0\0ycªªêE@\0\0\0\0\0àSÀ'),
(3778, '\0\0\0\0\0\0\0ìQ¸…ÓE@9ž*:mØSÀ'),
(3779, '\0\0\0\0\0\0\0ìQ¸…ÓE@9ž*:mØSÀ'),
(3780, '\0\0\0\0\0\0\0ìQ¸…ÓE@9ž*:mØSÀ'),
(3781, '\0\0\0\0\0\0\0ìQ¸…ÓE@9ž*:mØSÀ'),
(3782, '\0\0\0\0\0\0\0ìQ¸…ÓE@9ž*:mØSÀ'),
(3783, '\0\0\0\0\0\0\0+½Ûa¸ÓE@²¬EU]ØSÀ'),
(3784, '\0\0\0\0\0\0\0SAEÕ¯L@áþ~1–ZÀ'),
(3785, '\0\0\0\0\0\0\0ìQ¸…ÓE@9ž*:mØSÀ'),
(3786, '\0\0\0\0\0\0\0ìQ¸…ÓE@9ž*:mØSÀ'),
(3787, '\0\0\0\0\0\0\0Fë¨j‚ÓE@Y;å,GØSÀ'),
(3788, '\0\0\0\0\0\0\0ìQ¸…ÓE@9ž*:mØSÀ'),
(3789, '\0\0\0\0\0\0\0nn“@ÚE@¸Wæ­ºàSÀ'),
(3790, '\0\0\0\0\0\0\0SAEÕ¯L@áþ~1–ZÀ'),
(3791, '\0\0\0\0\0\0\0ìQ¸…ÓE@9ž*:mØSÀ'),
(3792, '\0\0\0\0\0\0\00­—ð•ÕE@@Z´¥ÕSÀ'),
(3793, '\0\0\0\0\0\0\0aÌñeýÜE@1vg’ýÜSÀ'),
(3794, '\0\0\0\0\0\0\0ûÚé½çÜE@ò=ÈW''ÝSÀ'),
(3795, '\0\0\0\0\0\0\0„\\óô[ÖE@©^àØSÀ'),
(3796, '\0\0\0\0\0\0\0ìQ¸…ÓE@9ž*:mØSÀ'),
(3797, '\0\0\0\0\0\0\0ã¦šÏŸH@‚sF”öÆ^À'),
(3798, '\0\0\0\0\0\0\0ìQ¸…ÓE@9ž*:mØSÀ'),
(3799, '\0\0\0\0\0\0\0ìQ¸…ÓE@9ž*:mØSÀ'),
(3800, '\0\0\0\0\0\0\0éîßaÒE@ð–õ¬µÚSÀ'),
(3801, '\0\0\0\0\0\0\0ìQ¸…ÓE@9ž*:mØSÀ'),
(3802, '\0\0\0\0\0\0\0%O£ÚñÓE@˜ýÙSÀ'),
(3803, '\0\0\0\0\0\0\0ìQ¸…ÓE@9ž*:mØSÀ'),
(3804, '\0\0\0\0\0\0\0ÞMz+ÚE@âˆÿ…/ÚSÀ'),
(3805, '\0\0\0\0\0\0\0ìQ¸…ÓE@9ž*:mØSÀ'),
(3806, '\0\0\0\0\0\0\0ìQ¸…ÓE@9ž*:mØSÀ'),
(3807, '\0\0\0\0\0\0\0|ðÚ¥\rÓE@Dë—>ªØSÀ'),
(3808, '\0\0\0\0\0\0\0\n×£p=%E@µô¼@FVÀ'),
(3809, '\0\0\0\0\0\0\0£–A{ÒE@QYJyáSÀ'),
(3811, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(3812, '\0\0\0\0\0\0\04Sò0‘D@ªµ0í\\À'),
(3813, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(3814, '\0\0\0\0\0\0\0$G:#\rA@1A\rßÂ•]À'),
(3815, '\0\0\0\0\0\0\02q« A@ÿ‡°œ]À'),
(3816, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(3817, '\0\0\0\0\0\0\0I8ãêê@@Á„:‡z]À'),
(3818, '\0\0\0\0\0\0\0)9Ì<A@ÀZµkÂ“]À'),
(3819, '\0\0\0\0\0\0\0''LÍÊâ@@æË°Š]À'),
(3820, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(3821, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(3822, '\0\0\0\0\0\0\0uÞÉÿ@@''¥ ÛK‰]À'),
(3823, '\0\0\0\0\0\0\0ÄÎ:¯A@øùï]À'),
(3824, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(3825, '\0\0\0\0\0\0\0I8ãêê@@Á„:‡z]À'),
(3826, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(3827, '\0\0\0\0\0\0\0€£xðnß@@BWÇ–Šw]À'),
(3828, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(3829, '\0\0\0\0\0\0\0¨!á A@¼P\nK‘]À'),
(3830, '\0\0\0\0\0\0\0AwòéA@JzZœ]À'),
(3831, '\0\0\0\0\0\0\0"z}A@P7­oŸ]À'),
(3832, '\0\0\0\0\0\0\0ùôØ–\rA@ÊI»Ñ”]À'),
(3833, '\0\0\0\0\0\0\0Xtë5=A@³EÒnôŽ]À'),
(3834, '\0\0\0\0\0\0\0"z}A@P7­oŸ]À'),
(3835, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(3836, '\0\0\0\0\0\0\03ßÁOA@Š}"O]À'),
(3837, '\0\0\0\0\0\0\0›Ó–A@ƒfÚ”]À'),
(3838, '\0\0\0\0\0\0\0œìU\Zç\nA@ÿ''L˜]À'),
(3839, '\0\0\0\0\0\0\0"z}A@P7­oŸ]À'),
(3840, '\0\0\0\0\0\0\0´I47•\nA@I‹Ž?¬˜]À'),
(3841, '\0\0\0\0\0\0\0ïV–è,á@@ÎŸ€7n€]À'),
(3842, '\0\0\0\0\0\0\0›Ó–A@ƒfÚ”]À'),
(3843, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(3844, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(3845, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(3846, '\0\0\0\0\0\0\0ÓNïA@[AÓ•]À'),
(3847, '\0\0\0\0\0\0\0Ôkk…A@ì€Ñ&—]À'),
(3848, '\0\0\0\0\0\0\0øC}ÜÈA@z''6“]À'),
(3849, '\0\0\0\0\0\0\0tóè¡¤B@Ÿ5äDàt^À'),
(3850, '\0\0\0\0\0\0\0†M®sâ@@’¨a	5Œ]À'),
(3851, '\0\0\0\0\0\0\0Ôkk…A@ì€Ñ&—]À'),
(3852, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(3853, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(3854, '\0\0\0\0\0\0\0KOËA@á\riTàž]À'),
(3855, '\0\0\0\0\0\0\0hEA@F#ŸW<]À'),
(3856, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(3857, '\0\0\0\0\0\0\0ðæ_žA@o n˜²˜]À'),
(3858, '\0\0\0\0\0\0\0°|·yA@.óS]À'),
(3859, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(3860, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(3861, '\0\0\0\0\0\0\0›Ó–A@ƒfÚ”]À'),
(3862, '\0\0\0\0\0\0\0›Ó–A@ƒfÚ”]À'),
(3863, '\0\0\0\0\0\0\0œìU\Zç\nA@ÿ''L˜]À'),
(3864, '\0\0\0\0\0\0\0"z}A@P7­oŸ]À'),
(3865, '\0\0\0\0\0\0\0·.û±ì@@¹ c¬Û˜]À'),
(3866, '\0\0\0\0\0\0\0©Ù­ÀA@í¶Íu£]À'),
(3867, '\0\0\0\0\0\0\0ÎR²œ„Ô@@û²´Só]À'),
(3868, '\0\0\0\0\0\0\0›Ó–A@ƒfÚ”]À'),
(3869, '\0\0\0\0\0\0\0¯!8.ãB@}n²WiIVÀ'),
(3870, '\0\0\0\0\0\0\0°µ­ÈB@Á|hÕ”^À'),
(3871, '\0\0\0\0\0\0\0A¾ßÃÊB@ÔHKåm—^À'),
(3872, '\0\0\0\0\0\0\0u?§ ?ñD@õ¾ñµgèUÀ'),
(3873, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(3874, '\0\0\0\0\0\0\0<Äš%\\àD@r€ª¹æUÀ'),
(3875, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(3876, '\0\0\0\0\0\0\0âQÏ''—äD@?£0m	VÀ'),
(3877, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(3878, '\0\0\0\0\0\0\0vÃ¶E™E@->ÀxóUÀ'),
(3879, '\0\0\0\0\0\0\0-ÎæòD@1a4+ÛèUÀ'),
(3880, '\0\0\0\0\0\0\0ØG§®ðD@àG5ì÷çUÀ'),
(3881, '\0\0\0\0\0\0\0tú01LôD@$g¼.ëUÀ'),
(3882, '\0\0\0\0\0\0\0¤ëx‚³÷D@]Â¡·xêUÀ'),
(3883, '\0\0\0\0\0\0\0’ÒÇ×ùøD@aH˜³ëUÀ'),
(3884, '\0\0\0\0\0\0\0Û™SùD@t_ŒëUÀ'),
(3885, '\0\0\0\0\0\0\0Éü\ZIøD@$¹ü‡ôëUÀ'),
(3886, '\0\0\0\0\0\0\0°XÃEîåD@ô©c•ÒÿUÀ'),
(3887, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(3888, '\0\0\0\0\0\0\0æ°ûŽá\rE@â\r¤‹ùUÀ'),
(3889, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(3890, '\0\0\0\0\0\0\0È©çî„ýD@.1àv²ëUÀ'),
(3891, '\0\0\0\0\0\0\0ðÁCE@é&1¬öUÀ'),
(3892, '\0\0\0\0\0\0\0YÎ”ŒR\0E@~\rÒñóUÀ'),
(3893, '\0\0\0\0\0\0\0¬}ªøD@e¨Š©ôêUÀ'),
(3894, '\0\0\0\0\0\0\0º¯¹YraD@áv\rŸRÀ'),
(3895, '\0\0\0\0\0\0\0,çœéo[D@øIÿÜa€RÀ'),
(3896, '\0\0\0\0\0\0\0öÑ©+ŸZD@d¥“¶‚€RÀ'),
(3897, '\0\0\0\0\0\0\0,çœéo[D@øIÿÜa€RÀ'),
(3898, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(3899, '\0\0\0\0\0\0\0,çœéo[D@øIÿÜa€RÀ'),
(3900, '\0\0\0\0\0\0\0,çœéo[D@øIÿÜa€RÀ'),
(3901, '\0\0\0\0\0\0\0rQ-"Š6H@>á¼n×^À'),
(3902, '\0\0\0\0\0\0\0x%És}aD@N+…@.~RÀ'),
(3903, '\0\0\0\0\0\0\0,çœéo[D@øIÿÜa€RÀ'),
(3904, '\0\0\0\0\0\0\0,çœéo[D@øIÿÜa€RÀ'),
(3905, '\0\0\0\0\0\0\0,‚ÿ­d_D@…0mî€RÀ'),
(3906, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(3907, '\0\0\0\0\0\0\0‰8çñÅUD@ÃÐ+\ZRÀ'),
(3908, '\0\0\0\0\0\0\0,çœéo[D@øIÿÜa€RÀ'),
(3909, '\0\0\0\0\0\0\0,çœéo[D@øIÿÜa€RÀ'),
(3910, '\0\0\0\0\0\0\0¬©,\n»^D@KHZàaRÀ'),
(3911, '\0\0\0\0\0\0\0d´éc™‹E@¦ÂŽµõ`SÀ'),
(3912, '\0\0\0\0\0\0\0¹¥Õ¸dD@¬bàoj~RÀ'),
(3913, '\0\0\0\0\0\0\0Ì|?qbD@„};‰~RÀ'),
(3914, '\0\0\0\0\0\0\0ño†ÑblD@t²Ôz?bRÀ'),
(3915, '\0\0\0\0\0\0\0þ%N“¾^D@ø,6œRÀ'),
(3916, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(3917, '\0\0\0\0\0\0\0,çœéo[D@øIÿÜa€RÀ'),
(3918, '\0\0\0\0\0\0\0,çœéo[D@øIÿÜa€RÀ'),
(3919, '\0\0\0\0\0\0\0Ì|?qbD@„};‰~RÀ'),
(3920, '\0\0\0\0\0\0\0,çœéo[D@øIÿÜa€RÀ'),
(3921, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(3922, '\0\0\0\0\0\0\0Ø”uIæ0E@°Øp¢§ÇQÀ'),
(3923, '\0\0\0\0\0\0\0¥×ª²/E@z-ÇQÀ'),
(3924, '\0\0\0\0\0\0\0ö¶™\nñE@ç/ü;ÄQÀ'),
(3925, '\0\0\0\0\0\0\0†…¤`×»E@WÑšyáVÀ'),
(3926, '\0\0\0\0\0\0\0¿5fÈg,E@rÐo©ÅQÀ'),
(3927, '\0\0\0\0\0\0\0Õ(RH*E@7Ÿ„ãCÅQÀ'),
(3928, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(3929, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(3930, '\0\0\0\0\0\0\0Ø¦g0ü+E@1qõ­ ÄQÀ'),
(3931, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(3932, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(3933, '\0\0\0\0\0\0\0:]›2E@=ð1ØÇQÀ'),
(3934, '\0\0\0\0\0\0\0ÎQÚ,E@µ¦yÇ)ÆQÀ'),
(3935, '\0\0\0\0\0\0\0:]›2E@=ð1ØÇQÀ'),
(3936, '\0\0\0\0\0\0\08ÛÜ˜ž2E@£h[ÍÇQÀ'),
(3937, '\0\0\0\0\0\0\0>”hÉ/E@0[wÃQÀ'),
(3938, '\0\0\0\0\0\0\0@aõì+E@*VRÝÇQÀ'),
(3939, '\0\0\0\0\0\0\0žßAýx''E@¹¥Õ¸ÃQÀ'),
(3940, '\0\0\0\0\0\0\0_sX+$+E@å§''âcÍQÀ'),
(3941, '\0\0\0\0\0\0\0ycªªJE@ñáHV4ÒQÀ'),
(3942, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(3943, '\0\0\0\0\0\0\0O¤…p,E@¡]Ï!:ÈQÀ'),
(3944, '\0\0\0\0\0\0\0fE#	E@ö}Ò³QÀ'),
(3945, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(3946, '\0\0\0\0\0\0\0±¾É/E@*ât’­ÇQÀ'),
(3947, '\0\0\0\0\0\0\0YnÄî–2E@\0è‹ÑÇQÀ'),
(3948, '\0\0\0\0\0\0\0‹$0Œª,E@‚RY¹<ÆQÀ'),
(3949, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(3950, '\0\0\0\0\0\0\0¥×ª²/E@z-ÇQÀ'),
(3951, '\0\0\0\0\0\0\0¥×ª²/E@z-ÇQÀ'),
(3952, '\0\0\0\0\0\0\0»¹øÛžäJ@ÆlÉªWÀ'),
(3953, '\0\0\0\0\0\0\0Š½aìÎ/E@{”[¤\ZÍQÀ'),
(3954, '\0\0\0\0\0\0\0xœ¢#¹,E@L7‰A`ÅQÀ'),
(3955, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(3956, '\0\0\0\0\0\0\0x¥Ä%E@û@Mˆ”ÅQÀ'),
(3957, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(3958, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(3959, '\0\0\0\0\0\0\0¥×ª²/E@z-ÇQÀ'),
(3960, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(3961, '\0\0\0\0\0\0\0éc> Ð+E@‰)‘D/ÄQÀ'),
(3962, '\0\0\0\0\0\0\0Ì@\nC‰&E@’ÝvâÖQÀ'),
(3963, '\0\0\0\0\0\0\0TvUûÏ,E@&ÊQÀ'),
(3964, '\0\0\0\0\0\0\0«Ð›å1E@qD­QÅQÀ'),
(3965, '\0\0\0\0\0\0\0¥×ª²/E@z-ÇQÀ'),
(3966, '\0\0\0\0\0\0\0œŠT[0E@\0\0\0\0\0ÄQÀ'),
(3967, '\0\0\0\0\0\0\0ý3ƒøÀ2E@\0©MœÜÁQÀ'),
(3968, '\0\0\0\0\0\0\0ç}Ò?w*E@~$ÁÇQÀ'),
(3969, '\0\0\0\0\0\0\0ô©c•Ò/E@¯`ñdÆQÀ'),
(3970, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(3971, '\0\0\0\0\0\0\0¥×ª²/E@z-ÇQÀ'),
(3972, '\0\0\0\0\0\0\0à?''Î›,E@	9J¹VÄQÀ'),
(3973, '\0\0\0\0\0\0\0Wz*E@ëö£ò@ÅQÀ'),
(3974, '\0\0\0\0\0\0\0÷™&E@`íƒ‡ÄÄQÀ'),
(3975, '\0\0\0\0\0\0\0ÄÚÎ­:E@‚lþ<ÄQÀ'),
(3976, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(3977, '\0\0\0\0\0\0\0ÎØæÎ9@ZM2ÍOTÀ'),
(3978, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(3979, '\0\0\0\0\0\0\0eõXD^E@B<·uÜÏQÀ'),
(3980, '\0\0\0\0\0\0\0ØÙë8Ù,E@Å5~ÄQÀ'),
(3981, '\0\0\0\0\0\0\0ŸnEÉ.E@DÌÛÇÀÃQÀ'),
(3982, '\0\0\0\0\0\0\0åÍ†¡z/E@-Šh…³ËQÀ'),
(3983, '\0\0\0\0\0\0\0ÕÖã5E@¡«cËÆQÀ'),
(3984, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(3985, '\0\0\0\0\0\0\0`gT*òE@qqTn¢ÊQÀ'),
(3986, '\0\0\0\0\0\0\0™Kª¶›0E@ô‹ôÆQÀ'),
(3987, '\0\0\0\0\0\0\0§»¡ß­*E@g4¨ì*ÃQÀ'),
(3988, '\0\0\0\0\0\0\0Q¾¾ÖNE@_”E^ªQÀ'),
(3989, '\0\0\0\0\0\0\0£s~Šã)E@_2DRÄQÀ'),
(3990, '\0\0\0\0\0\0\0Á|hÕ@E@9ïÿã„ÌQÀ'),
(3991, '\0\0\0\0\0\0\0+¾¡ðÙ,E@qÅÅQÄQÀ'),
(3992, '\0\0\0\0\0\0\0ÐÀ~>€"E@‘—toçQÀ'),
(3993, '\0\0\0\0\0\0\0ç}Ò?w*E@~$ÁÇQÀ'),
(3994, '\0\0\0\0\0\0\0˜Ô\Z”zGE@)x\n¹R¸QÀ'),
(3995, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(3996, '\0\0\0\0\0\0\0:3þÈ+E@è­pÄQÀ'),
(3997, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(3998, '\0\0\0\0\0\0\03iž,E@$ïÊPÅQÀ'),
(3999, '\0\0\0\0\0\0\0˜)³œIE@Í_ó…»QÀ'),
(4000, '\0\0\0\0\0\0\0þñ^µ2;E@Å_Ñ­¼QÀ'),
(4001, '\0\0\0\0\0\0\0FŽ¾“`''E@1¦OaÛÊQÀ'),
(4002, '\0\0\0\0\0\0\0¦Ç\0šROE@÷ž€Ü´¶QÀ'),
(4003, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(4004, '\0\0\0\0\0\0\0öb(''Ú(E@œ‚¡³ñÌQÀ'),
(4005, '\0\0\0\0\0\0\0Ìr#v·JE@R¡së½QÀ'),
(4006, '\0\0\0\0\0\0\0ô©c•Ò/E@¯`ñdÆQÀ'),
(4007, '\0\0\0\0\0\0\0_sX+$+E@å§''âcÍQÀ'),
(4008, '\0\0\0\0\0\0\0ZÂ5Ò­2E@P{\0AoËQÀ'),
(4009, '\0\0\0\0\0\0\0emø‚».E@IÒÚÙ|ÃQÀ'),
(4010, '\0\0\0\0\0\0\0¨º‘Ã,E@üŒBÅQÀ'),
(4011, '\0\0\0\0\0\0\0_{fI€BE@>”hÉc¹QÀ'),
(4012, '\0\0\0\0\0\0\0iE,b,E@¹ªì»"ÅQÀ'),
(4013, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(4014, '\0\0\0\0\0\0\0àm9ò›!E@¸ùjÇQÀ'),
(4015, '\0\0\0\0\0\0\0Êeí\0™%E@§½wŠÏQÀ'),
(4016, '\0\0\0\0\0\0\0©‚ö*0E@xè¯¡ÏQÀ'),
(4017, '\0\0\0\0\0\0\0`gT*òE@qqTn¢ÊQÀ'),
(4018, '\0\0\0\0\0\0\0M4£z''E@æ|±ÕÑQÀ'),
(4019, '\0\0\0\0\0\0\0®`À7òE@–ÂÍóñ¸QÀ'),
(4020, '\0\0\0\0\0\0\0±¾É/E@*ât’­ÇQÀ'),
(4021, '\0\0\0\0\0\0\0nœ^sX=E@ÂÜîå¾ÉQÀ'),
(4022, '\0\0\0\0\0\0\0Í«:«,E@’^ÔîWÆQÀ'),
(4023, '\0\0\0\0\0\0\0ÁG³hðE@d |»QÀ'),
(4024, '\0\0\0\0\0\0\0ZlîC9@E@ÎÄt!Ö¶QÀ'),
(4025, '\0\0\0\0\0\0\0°x²›-E@Í‚9zÃQÀ'),
(4026, '\0\0\0\0\0\0\0²`‡Ö/,E@''<WJ…ÉQÀ'),
(4027, '\0\0\0\0\0\0\0[kÞ''ýE@eX Õ»QÀ'),
(4028, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(4029, '\0\0\0\0\0\0\0Ù¤ì>ÏG@[i}•^À'),
(4030, '\0\0\0\0\0\0\0ªðgx³ÈG@T5AÔ}—^À'),
(4032, '\0\0\0\0\0\0\0ìQ¸…ÓE@9ž*:mØSÀ'),
(4033, '\0\0\0\0\0\0\0øÌí¹§ÒE@ŠÍÇµ¡ÙSÀ'),
(4034, '\0\0\0\0\0\0\0E›ˆ#´oF@P+–lBWÀ'),
(4035, '\0\0\0\0\0\0\0ìQ¸…ÓE@9ž*:mØSÀ'),
(4036, '\0\0\0\0\0\0\0*ÙYôåC@YHe/\0>SÀ'),
(4037, '\0\0\0\0\0\0\0÷_˜LÕE@úíëÀ9×SÀ'),
(4038, '\0\0\0\0\0\0\0ìQ¸…ÓE@9ž*:mØSÀ'),
(4039, '\0\0\0\0\0\0\0ìQ¸…ÓE@9ž*:mØSÀ'),
(4040, '\0\0\0\0\0\0\0¿œ3¢¬E@ØsF”òSÀ'),
(4041, '\0\0\0\0\0\0\0­Øc"ÒE@Ì½vŸÛSÀ'),
(4042, '\0\0\0\0\0\0\0ìQ¸…ÓE@9ž*:mØSÀ'),
(4043, '\0\0\0\0\0\0\0ìQ¸…ÓE@9ž*:mØSÀ'),
(4044, '\0\0\0\0\0\0\0ìQ¸…ÓE@9ž*:mØSÀ'),
(4045, '\0\0\0\0\0\0\0ìQ¸…ÓE@9ž*:mØSÀ'),
(4046, '\0\0\0\0\0\0\0ìQ¸…ÓE@9ž*:mØSÀ'),
(4047, '\0\0\0\0\0\0\0ìQ¸…ÓE@9ž*:mØSÀ'),
(4048, '\0\0\0\0\0\0\0ìQ¸…ÓE@9ž*:mØSÀ'),
(4049, '\0\0\0\0\0\0\0èŸàbEñE@¡¡‚‹ÛSÀ'),
(4050, '\0\0\0\0\0\0\0ìQ¸…ÓE@9ž*:mØSÀ'),
(4051, '\0\0\0\0\0\0\0ìQ¸…ÓE@9ž*:mØSÀ'),
(4052, '\0\0\0\0\0\0\0ìQ¸…ÓE@9ž*:mØSÀ'),
(4053, '\0\0\0\0\0\0\06Ît\nÕE@Ô¡.­aÚSÀ'),
(4054, '\0\0\0\0\0\0\0ìQ¸…ÓE@9ž*:mØSÀ'),
(4055, '\0\0\0\0\0\0\0ìQ¸…ÓE@9ž*:mØSÀ'),
(4056, '\0\0\0\0\0\0\0¥,èbxÔE@{®GáØSÀ'),
(4057, '\0\0\0\0\0\0\0ìQ¸…ÓE@9ž*:mØSÀ'),
(4058, '\0\0\0\0\0\0\0—®`ñìE@“Q\n_„ÖSÀ'),
(4059, '\0\0\0\0\0\0\0ìQ¸…ÓE@9ž*:mØSÀ'),
(4060, '\0\0\0\0\0\0\0ìQ¸…ÓE@9ž*:mØSÀ'),
(4061, '\0\0\0\0\0\0\0\r²˜}ÚE@ÎüjÙSÀ'),
(4062, '\0\0\0\0\0\0\0#ÎÔ5ðE@-èbxÜSÀ'),
(4063, '\0\0\0\0\0\0\0CûýÔE@Õ7Õÿ^ØSÀ'),
(4064, '\0\0\0\0\0\0\0Ñr[ÒE@»¼”ÛSÀ'),
(4065, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4066, '\0\0\0\0\0\0\0ž³„ÖùC@=×÷á ËRÀ'),
(4067, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4068, '\0\0\0\0\0\0\0B]Â¡ùC@dèØÊRÀ'),
(4069, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4070, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4071, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4072, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4073, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4074, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4075, '\0\0\0\0\0\0\0¢ç»\0 ùC@Ñlh\\ÊRÀ'),
(4076, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4077, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4078, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4079, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4080, '\0\0\0\0\0\0\0÷œª1×D@‰5¦q9ÈRÀ'),
(4081, '\0\0\0\0\0\0\0§¥hùC@Ê2Ä±.ÉRÀ'),
(4082, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4083, '\0\0\0\0\0\0\0t–Y„bD@ÜóüiÎRÀ'),
(4084, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4085, '\0\0\0\0\0\0\0=KëÊÂúC@™¶$¬2ÉRÀ'),
(4086, '\0\0\0\0\0\0\0Ú­e2ùC@:3PÊRÀ'),
(4087, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4088, '\0\0\0\0\0\0\0Nïâý¸ûC@Û»«ÃöÈRÀ'),
(4089, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4090, '\0\0\0\0\0\0\0R•[ÿSýC@^&/×GÊRÀ'),
(4091, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4092, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4093, '\0\0\0\0\0\0\0úÒÛŸ‹üC@@1²dŽËRÀ'),
(4094, '\0\0\0\0\0\0\0\0ä„	£ùC@5`ôiÊRÀ'),
(4095, '\0\0\0\0\0\0\0I3qšD@é0ºsLSÀ'),
(4096, '\0\0\0\0\0\0\0=\r$}\nD@lë§ÿ¬ÀRÀ'),
(4097, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4098, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4099, '\0\0\0\0\0\0\0é¸\ZÙ•øC@—‘zOåÉRÀ'),
(4100, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4101, '\0\0\0\0\0\0\0xšÌx[ùC@9ðj¹3ÊRÀ'),
(4102, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4103, '\0\0\0\0\0\0\0¸\\ýØ$ùC@LTo\rlËRÀ'),
(4104, '\0\0\0\0\0\0\0ìQ¸…ûC@Š2eñ¬ÈRÀ'),
(4105, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4106, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4107, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4108, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4109, '\0\0\0\0\0\0\0†¬nõœD@±ÁÂIšÍRÀ'),
(4110, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4111, '\0\0\0\0\0\0\0ìQ¸…ûC@Š2eñ¬ÈRÀ'),
(4112, '\0\0\0\0\0\0\0ýb[«âD@ÿ¤ëÓ;ÎRÀ'),
(4113, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4114, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4115, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4116, '\0\0\0\0\0\0\0û]3T úC@ø®œíÌRÀ'),
(4117, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4118, '\0\0\0\0\0\0\0z—AkD@éÉF1\nßRÀ'),
(4119, '\0\0\0\0\0\0\0³×ùPD@œÐ5Ýü»RÀ'),
(4120, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4121, '\0\0\0\0\0\0\0ú7yÛ–#E@Ž·KÑ\0EVÀ'),
(4122, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4123, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4124, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4125, '\0\0\0\0\0\0\0ˆ3\ZTvD@ö}ÒËRÀ'),
(4126, '\0\0\0\0\0\0\0óSûC@u“VÉRÀ'),
(4127, '\0\0\0\0\0\0\0P¹Óç´D@Q”:·?ÌRÀ'),
(4128, '\0\0\0\0\0\0\0ˆT/°÷C@Û!´ÉRÀ'),
(4129, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4130, '\0\0\0\0\0\0\0‚}*]°D@­ÑTôàRÀ'),
(4131, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4132, '\0\0\0\0\0\0\0T5æ\ZúC@#‡ˆ›SÌRÀ'),
(4133, '\0\0\0\0\0\0\0@gwíwøC@6üsÉRÀ'),
(4134, '\0\0\0\0\0\0\0†ÿtúC@ÂåÒøÊRÀ'),
(4135, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4136, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4137, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4138, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4139, '\0\0\0\0\0\0\0÷V$&¨úC@EâÔ½ËRÀ'),
(4140, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4141, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4142, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4143, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4144, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4145, '\0\0\0\0\0\0\0qxœýÜD@ÞT¤BÌRÀ'),
(4146, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4147, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4148, '\0\0\0\0\0\0\0¿\r1^óöC@…í''c|ÊRÀ'),
(4149, '\0\0\0\0\0\0\0è…;A@Ð(]ú—|SÀ'),
(4150, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4151, '\0\0\0\0\0\0\0þ 8xøC@/}ù®RÉRÀ'),
(4152, '\0\0\0\0\0\0\0B]Â¡ùC@dèØÊRÀ'),
(4153, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4154, '\0\0\0\0\0\0\0—ª´ÅùC@?''sâáÊRÀ'),
(4155, '\0\0\0\0\0\0\0Òo_ÎùC@Cå_Ë+ËRÀ'),
(4156, '\0\0\0\0\0\0\0;:®FvûC@5Cª(^ÉRÀ'),
(4157, '\0\0\0\0\0\0\0jÖ¾úC@xÂãOÉRÀ'),
(4158, '\0\0\0\0\0\0\0Eò•@JúC@íµ ÷ÌRÀ'),
(4159, '\0\0\0\0\0\0\0û²´SsùC@á·!ÆkÉRÀ'),
(4160, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4161, '\0\0\0\0\0\0\0Ë›hügùC@u*ÏrÊRÀ'),
(4162, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4163, '\0\0\0\0\0\0\0ö)ÇdqûC@¯xê‘ÉRÀ'),
(4164, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4165, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4166, '\0\0\0\0\0\0\0´ÅÚ„ úC@Ré\Z÷ÌRÀ'),
(4167, '\0\0\0\0\0\0\0}fÿòøC@¼E»ebÉRÀ'),
(4168, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4169, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4170, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4171, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4172, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4173, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4174, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4175, '\0\0\0\0\0\0\0¯³!ÿÌüC@ÔC4ºƒÌRÀ'),
(4176, '\0\0\0\0\0\0\0ŠEÂ­qûC@¿>„\0ÉRÀ'),
(4177, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(4178, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(4179, '\0\0\0\0\0\0\0ÌºÚå¶ß@@´üeœ«UÀ'),
(4180, '\0\0\0\0\0\0\0I[¦pNö@@ú2÷9UÀ'),
(4181, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(4182, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(4183, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(4184, '\0\0\0\0\0\0\0¤§ÝùÉ9@ÝCû}TÀ'),
(4185, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(4186, '\0\0\0\0\0\0\0z-äC@Ç<<•vUÀ'),
(4187, '\0\0\0\0\0\0\0’|€I…ùC@–~TÉRÀ'),
(4188, '\0\0\0\0\0\0\0/°}·/C@s¸ûÁeSXÀ'),
(4189, '\0\0\0\0\0\0\0&¶ØûC@‰—§sEËRÀ'),
(4190, '\0\0\0\0\0\0\0‘O~AÁb@@ÎÂžvxGVÀ'),
(4191, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4192, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4193, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4194, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4195, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4196, '\0\0\0\0\0\0\0h›vŒ†õC@™.ÄêÄRÀ'),
(4197, '\0\0\0\0\0\0\0…ëQ¸öC@\ZôJ~ÁRÀ'),
(4198, '\0\0\0\0\0\0\0¾…uãÝùC@ÜQ÷\\ÉRÀ'),
(4199, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4200, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4201, '\0\0\0\0\0\0\0X@üW±>D@zòúÝ…\\TÀ'),
(4202, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4203, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4204, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4205, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4206, '\0\0\0\0\0\0\0ŸÛ2àE@÷ÿqÂùUÀ'),
(4207, '\0\0\0\0\0\0\0šlM»öD@LÑ€0¦ìUÀ'),
(4208, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(4209, '\0\0\0\0\0\0\0´W}÷D@\roÖà}êUÀ'),
(4210, '\0\0\0\0\0\0\0&mO5æD@˜h‚§VÀ'),
(4211, '\0\0\0\0\0\0\0×¡š’¬!E@ht¬÷@\0VÀ'),
(4212, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(4213, '\0\0\0\0\0\0\0iÄÌ>õD@ù„ì¼éUÀ'),
(4214, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(4215, '\0\0\0\0\0\0\0.¶ÿ·HñD@VHùI5òUÀ'),
(4216, '\0\0\0\0\0\0\0á±DàìD@b×övËòUÀ'),
(4217, '\0\0\0\0\0\0\0”HGÞÞåD@ðùa„pþUÀ'),
(4218, '\0\0\0\0\0\0\0÷KÕ‡?	E@ÀþûBîUÀ'),
(4219, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(4220, '\0\0\0\0\0\0\0Î;©ŠçD@ðb«·\0VÀ'),
(4221, '\0\0\0\0\0\0\0eøô}ÝE@§><VÀ'),
(4222, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(4223, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(4224, '\0\0\0\0\0\0\0hÁÕKòD@¿X)NÿçUÀ'),
(4225, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(4226, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(4227, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(4228, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(4229, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(4230, '\0\0\0\0\0\0\0Å+ÿÑE@•tÞtûUÀ'),
(4231, '\0\0\0\0\0\0\0x$å[öD@¹ƒèíUÀ'),
(4232, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(4233, '\0\0\0\0\0\0\0§çÝXPE@ÑI¥ŽDíUÀ'),
(4234, '\0\0\0\0\0\0\05& ùD@vª×ˆ;ëUÀ'),
(4235, '\0\0\0\0\0\0\0e8žÏ€öD@6ÇeÜêUÀ'),
(4236, '\0\0\0\0\0\0\0H×ñgïD@GèÂ£èçUÀ'),
(4237, '\0\0\0\0\0\0\0å´§äœ¹E@næë5ÎUÀ'),
(4238, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(4239, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(4240, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(4241, '\0\0\0\0\0\0\0~ÁDE@4÷ë)ìUÀ'),
(4242, '\0\0\0\0\0\0\0\\-ËñD@²öw¶GèUÀ'),
(4243, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(4244, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(4245, '\0\0\0\0\0\0\00Ø\rÛbD@¶kV~RÀ'),
(4246, '\0\0\0\0\0\0\0þxT¡&nAÀ¶ê„ámMÀ'),
(4247, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(4248, '\0\0\0\0\0\0\0ÇÏëô(úD@{ˆFwêUÀ'),
(4249, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(4250, '\0\0\0\0\0\0\0aSçQñõD@…—àÔêUÀ'),
(4251, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(4252, '\0\0\0\0\0\0\0ñ1%’ôD@óv„Ó‚ëUÀ'),
(4253, '\0\0\0\0\0\0\0¥×ª²/E@z-ÇQÀ'),
(4254, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4255, '\0\0\0\0\0\0\0[ÈýXõC@×øLöÏØRÀ'),
(4256, '\0\0\0\0\0\0\0¤+"ÔVøC@JäÌÀ’ÉRÀ'),
(4257, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4258, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4259, '\0\0\0\0\0\0\0!ãöpnøC@üšöÞ©ÉRÀ'),
(4260, '\0\0\0\0\0\0\0qè-Þ\0D@¡O?EÒRÀ'),
(4261, '\0\0\0\0\0\0\0á·!ÆkøC@ÌH¿}ÉRÀ'),
(4262, '\0\0\0\0\0\0\0%!‘¶ùC@wØDf.ËRÀ'),
(4263, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4264, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4265, '\0\0\0\0\0\0\0ŸDß8„×C@€M1búïRÀ'),
(4266, '\0\0\0\0\0\0\0¾3Úª$D@E‡K³ÍRÀ'),
(4267, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4268, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4269, '\0\0\0\0\0\0\0Ld0±''D@Ë.PÈRÀ'),
(4270, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4271, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4272, '\0\0\0\0\0\0\0»Ó''žD@AÕèÕØRÀ'),
(4273, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4274, '\0\0\0\0\0\0\0æÖZNø\nD@Ä™BÙRÀ'),
(4275, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4276, '\0\0\0\0\0\0\0Gb8£´:@™†<ÝTTÀ'),
(4277, '\0\0\0\0\0\0\0‡®ŸYmD@©AâhXÙRÀ'),
(4278, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4279, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4280, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4281, '\0\0\0\0\0\0\0…ëQ¸öC@\ZôJ~ÁRÀ'),
(4282, '\0\0\0\0\0\0\0ŸDß8„×C@€M1búïRÀ'),
(4283, '\0\0\0\0\0\0\0>2gÇWD@Y§Ê÷»RÀ'),
(4284, '\0\0\0\0\0\0\0eR:ðC@l»¿0OÍRÀ'),
(4285, '\0\0\0\0\0\0\0»Å²O¶ãC@‡@äãIæRÀ'),
(4286, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4287, '\0\0\0\0\0\0\0»Ó''žD@AÕèÕØRÀ'),
(4288, '\0\0\0\0\0\0\0MÖ¨‡øC@€»ì×ÉRÀ'),
(4289, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4290, '\0\0\0\0\0\0\0[ÈýXõC@×øLöÏØRÀ'),
(4291, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4292, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4293, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4294, '\0\0\0\0\0\0\0¾…uãÝùC@ÜQ÷\\ÉRÀ'),
(4295, '\0\0\0\0\0\0\0wßÐûC@Ú¸´ÐÉRÀ'),
(4296, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4297, '\0\0\0\0\0\0\0\\‘˜ †ùC@å˜,î?ËRÀ'),
(4298, '\0\0\0\0\0\0\0àÜºö`F@€Q8q(îRÀ'),
(4299, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4300, '\0\0\0\0\0\0\0°¨-\Z×.D@»{%5Y¼RÀ'),
(4301, '\0\0\0\0\0\0\0`;±OûC@¥¿—ÂÉRÀ'),
(4302, '\0\0\0\0\0\0\0_ËÐiÛB@\0\0\0\0\0^À'),
(4303, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(4304, '\0\0\0\0\0\0\0‰E;ŒõD@øëêêUÀ'),
(4305, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(4306, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(4307, '\0\0\0\0\0\0\0\nAX×²óD@œ™ªEèUÀ'),
(4308, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(4309, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(4310, '\0\0\0\0\0\0\0€Õ‘#ñD@I…±… éUÀ'),
(4311, '\0\0\0\0\0\0\09~¨4bðD@8»µL†èUÀ'),
(4312, '\0\0\0\0\0\0\0°«ÉSVñD@erjg˜èUÀ'),
(4313, '\0\0\0\0\0\0\0 èpciñD@Êj_åõçUÀ'),
(4314, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(4315, '\0\0\0\0\0\0\05(š°òD@•·#œèUÀ'),
(4316, '\0\0\0\0\0\0\0‰îY×hòD@i»ƒèUÀ'),
(4317, '\0\0\0\0\0\0\04ç\ZöD@UÛMðMéUÀ'),
(4318, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(4319, '\0\0\0\0\0\0\0ë_H=úõD@ŽóívéUÀ'),
(4320, '\0\0\0\0\0\0\0Së!uòD@Çùö	èUÀ'),
(4321, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(4322, '\0\0\0\0\0\0\0þ&¹hmÖD@Çº¸æUÀ'),
(4323, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(4324, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(4325, '\0\0\0\0\0\0\0\nàéßøD@òÿô°áéUÀ'),
(4326, '\0\0\0\0\0\0\0|´Ý©%ñD@Î‹_íéUÀ'),
(4327, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(4328, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(4329, '\0\0\0\0\0\0\0ýÀUž@øD@NzßøÚéUÀ'),
(4330, '\0\0\0\0\0\0\0iÀÅ/aôD@kT–×€îUÀ'),
(4331, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(4332, '\0\0\0\0\0\0\0sšÿüøD@pië–SéUÀ'),
(4333, '\0\0\0\0\0\0\0¶dU„›öD@¤ü¤Ú§éUÀ'),
(4334, '\0\0\0\0\0\0\0þ°VíøD@ôˆÑsëUÀ'),
(4335, '\0\0\0\0\0\0\06ãÙŠ¢ïD@''ˆIèUÀ'),
(4336, '\0\0\0\0\0\0\0<èÈ€¢öD@–Ù	\néUÀ'),
(4337, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(4338, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(4339, '\0\0\0\0\0\0\0Së!uòD@Çùö	èUÀ'),
(4340, '\0\0\0\0\0\0\0#=û€ö÷D@œ¼è+êUÀ'),
(4341, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(4342, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(4343, '\0\0\0\0\0\0\0ÖòƒÑ¦=@“xÔóÉ”TÀ'),
(4344, '\0\0\0\0\0\0\0°8œùÕøD@SÍ¬¥€êUÀ'),
(4345, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(4346, '\0\0\0\0\0\0\0¯µ÷©*öD@W]‡jJéUÀ'),
(4347, '\0\0\0\0\0\0\0›\0ÃòçñD@kÕ®	ièUÀ'),
(4348, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(4349, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(4350, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(4351, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(4352, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(4353, '\0\0\0\0\0\0\0~ÁDE@4÷ë)ìUÀ'),
(4354, '\0\0\0\0\0\0\0¯ÛqE@Ã\røü0VÀ'),
(4355, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(4356, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(4357, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(4358, '\0\0\0\0\0\0\0tÐ%zõD@Mjh°ìUÀ'),
(4359, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(4360, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(4361, '\0\0\0\0\0\0\0`Ç•ôD@šÒú[éUÀ'),
(4362, '\0\0\0\0\0\0\0þ!G„ðD@šbi;èUÀ'),
(4363, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(4364, '\0\0\0\0\0\0\0ð³ÛxÁãD@¬òó•öëUÀ'),
(4365, '\0\0\0\0\0\0\0¥Ù<ƒõD@zŒòÌËéUÀ'),
(4366, '\0\0\0\0\0\0\0ÖF+­uòD@övÃ6èUÀ'),
(4367, '\0\0\0\0\0\0\0¡aÖ0öD@†§üÀìUÀ'),
(4368, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(4369, '\0\0\0\0\0\0\0Së!uòD@Çùö	èUÀ'),
(4370, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(4371, '\0\0\0\0\0\0\0o<éŽòD@Ñ^ØõæéUÀ'),
(4372, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(4373, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(4374, '\0\0\0\0\0\0\0×3ÂÛñD@?­¢?4èUÀ'),
(4375, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(4376, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(4377, '\0\0\0\0\0\0\0Ð\\/ñD@ˆ‘o\0ÇèUÀ'),
(4378, '\0\0\0\0\0\0\0¡aÖ0öD@†§üÀìUÀ'),
(4379, '\0\0\0\0\0\0\0Iì%üøD@ÑÎièéUÀ'),
(4380, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(4381, '\0\0\0\0\0\0\0,çœéo[D@øIÿÜa€RÀ'),
(4382, '\0\0\0\0\0\0\0ö„á^D@¾ÄFRÀ'),
(4383, '\0\0\0\0\0\0\0,çœéo[D@øIÿÜa€RÀ'),
(4384, '\0\0\0\0\0\0\0[	Ý%q\\D@ì£SW>RÀ'),
(4385, '\0\0\0\0\0\0\0²dŽå]\\D@V…aLRÀ'),
(4386, '\0\0\0\0\0\0\0,çœéo[D@øIÿÜa€RÀ'),
(4387, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(4388, '\0\0\0\0\0\0\0,çœéo[D@øIÿÜa€RÀ'),
(4389, '\0\0\0\0\0\0\0,çœéo[D@øIÿÜa€RÀ'),
(4390, '\0\0\0\0\0\0\0°ÂÒeÖ\\D@÷ ±@…RÀ'),
(4391, '\0\0\0\0\0\0\0a¬Ê]D@Ä³RÀ'),
(4392, '\0\0\0\0\0\0\0~;‰ÿ^D@L]è\0÷~RÀ'),
(4393, '\0\0\0\0\0\0\0,çœéo[D@øIÿÜa€RÀ'),
(4394, '\0\0\0\0\0\0\0qôBKh^D@½1©FTRÀ'),
(4395, '\0\0\0\0\0\0\033333SD@ÍÌÌÌÌ|RÀ'),
(4396, '\0\0\0\0\0\0\0‰8çñÅUD@ÃÐ+\ZRÀ'),
(4397, '\0\0\0\0\0\0\0‰8çñÅUD@ÃÐ+\ZRÀ'),
(4398, '\0\0\0\0\0\0\0‰8çñÅUD@ÃÐ+\ZRÀ'),
(4399, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(4400, '\0\0\0\0\0\0\0,çœéo[D@øIÿÜa€RÀ'),
(4401, '\0\0\0\0\0\0\0…ëQ¸]D@²³äRÀ'),
(4402, '\0\0\0\0\0\0\0EIH¤mXD@¹q‹ù¹RÀ'),
(4403, '\0\0\0\0\0\0\033333SD@ÍÌÌÌÌ|RÀ'),
(4404, '\0\0\0\0\0\0\0Tb.^D@è­p:€RÀ'),
(4405, '\0\0\0\0\0\0\0,çœéo[D@øIÿÜa€RÀ'),
(4406, '\0\0\0\0\0\0\0.,ÉKH¤D@›¯’]†QÀ'),
(4407, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(4408, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(4409, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(4410, '\0\0\0\0\0\0\0,çœéo[D@øIÿÜa€RÀ'),
(4411, '\0\0\0\0\0\0\0,çœéo[D@øIÿÜa€RÀ'),
(4412, '\0\0\0\0\0\0\0,çœéo[D@øIÿÜa€RÀ'),
(4413, '\0\0\0\0\0\0\0Ù\nš–XaD@´t~RÀ'),
(4414, '\0\0\0\0\0\0\0Ze¦´þ^D@y}AfB€RÀ'),
(4415, '\0\0\0\0\0\0\0ä²ó6`D@©lXSY~RÀ'),
(4416, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(4417, '\0\0\0\0\0\0\0åvAC@l­ÔXg°^À'),
(4418, '\0\0\0\0\0\0\0šÄj=]D@\rŠæ,€RÀ'),
(4419, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(4420, '\0\0\0\0\0\0\0Þ„€\\D@	ÂP¨RÀ'),
(4421, '\0\0\0\0\0\0\0,çœéo[D@øIÿÜa€RÀ'),
(4422, '\0\0\0\0\0\0\0o„EEœZD@âut€RÀ'),
(4423, '\0\0\0\0\0\0\0ü¥E}’]D@=|™(ÂRÀ'),
(4424, '\0\0\0\0\0\0\0´<îÎbD@Ï½‡KŽ{RÀ'),
(4425, '\0\0\0\0\0\0\0TE§P]D@œå\r‹,RÀ'),
(4426, '\0\0\0\0\0\0\0%"ü‹ ]D@&\0ÿ”*€RÀ'),
(4427, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(4428, '\0\0\0\0\0\0\0,çœéo[D@øIÿÜa€RÀ'),
(4429, '\0\0\0\0\0\0\0,çœéo[D@øIÿÜa€RÀ'),
(4430, '\0\0\0\0\0\0\0‰8çñÅUD@ÃÐ+\ZRÀ'),
(4431, '\0\0\0\0\0\0\033333SD@ÍÌÌÌÌ|RÀ'),
(4432, '\0\0\0\0\0\0\0e‹¤Ýè[D@){K9_RÀ'),
(4433, '\0\0\0\0\0\0\0¿¶~úÏ“E@[ÕíGegSÀ'),
(4434, '\0\0\0\0\0\0\033333SD@ÍÌÌÌÌ|RÀ'),
(4435, '\0\0\0\0\0\0\0,çœéo[D@øIÿÜa€RÀ'),
(4436, '\0\0\0\0\0\0\0,çœéo[D@øIÿÜa€RÀ'),
(4437, '\0\0\0\0\0\0\0§V¤¢\\D@››%·Ü|RÀ'),
(4438, '\0\0\0\0\0\0\0J¸GpaD@XÅ™G~RÀ'),
(4439, '\0\0\0\0\0\0\0,çœéo[D@øIÿÜa€RÀ'),
(4440, '\0\0\0\0\0\0\0‰8çñÅUD@ÃÐ+\ZRÀ'),
(4441, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(4442, '\0\0\0\0\0\0\0,çœéo[D@øIÿÜa€RÀ'),
(4443, '\0\0\0\0\0\0\0ñgÓlZD@®[©}RÀ'),
(4444, '\0\0\0\0\0\0\0ÿ®ÏœõaD@G¸˜~RÀ'),
(4445, '\0\0\0\0\0\0\0,çœéo[D@øIÿÜa€RÀ'),
(4446, '\0\0\0\0\0\0\0…ëQ¸]D@²³äRÀ'),
(4447, '\0\0\0\0\0\0\05æèõ=@ `­Ú5‹VÀ'),
(4448, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(4449, '\0\0\0\0\0\0\0­C9Ñ\\D@Ë/ƒ1"€RÀ'),
(4450, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(4451, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(4452, '\0\0\0\0\0\0\0,çœéo[D@øIÿÜa€RÀ'),
(4453, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4454, '\0\0\0\0\0\0\0êé#ð[D@eRC€€RÀ'),
(4455, '\0\0\0\0\0\0\0ˆÂÂ¤SaD@7Gh~RÀ'),
(4456, '\0\0\0\0\0\0\0,çœéo[D@øIÿÜa€RÀ'),
(4457, '\0\0\0\0\0\0\0,çœéo[D@øIÿÜa€RÀ'),
(4458, '\0\0\0\0\0\0\0è·TJt\\D@ÁNV±€RÀ'),
(4459, '\0\0\0\0\0\0\0…ëQ¸]D@²³äRÀ'),
(4460, '\0\0\0\0\0\0\0,çœéo[D@øIÿÜa€RÀ'),
(4461, '\0\0\0\0\0\0\0åÈ½]D@øiâl€RÀ'),
(4462, '\0\0\0\0\0\0\0,çœéo[D@øIÿÜa€RÀ'),
(4463, '\0\0\0\0\0\0\0,çœéo[D@øIÿÜa€RÀ'),
(4464, '\0\0\0\0\0\0\0^ ¤À^D@vâr¼€RÀ'),
(4465, '\0\0\0\0\0\0\0Æ»È©WD@Ž´¯—RÀ'),
(4466, '\0\0\0\0\0\0\0wBT†^D@þ•:m€RÀ'),
(4467, '\0\0\0\0\0\0\0=†"8‰\\D@û£¹_ORÀ'),
(4468, '\0\0\0\0\0\0\0ãàÒ1`D@/n£¼~RÀ'),
(4469, '\0\0\0\0\0\0\0,çœéo[D@øIÿÜa€RÀ'),
(4470, '\0\0\0\0\0\0\0Â‡-y^D@Ì–¬ŠpRÀ'),
(4471, '\0\0\0\0\0\0\0,çœéo[D@øIÿÜa€RÀ'),
(4472, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(4473, '\0\0\0\0\0\0\0Ûê(½%A@§Ä¿Æ“]À'),
(4474, '\0\0\0\0\0\0\0›Ó–A@ƒfÚ”]À'),
(4475, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(4476, '\0\0\0\0\0\0\0Q£dVA@ªED1y–]À'),
(4477, '\0\0\0\0\0\0\0&4îr¶A@‰›SÉ€Ÿ]À'),
(4478, '\0\0\0\0\0\0\0Ôkk…A@ì€Ñ&—]À'),
(4479, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(4480, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(4481, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(4482, '\0\0\0\0\0\0\0†Q©A@õfÔ|˜]À'),
(4483, '\0\0\0\0\0\0\0ö&†A@ut\\—]À'),
(4484, '\0\0\0\0\0\0\0›sðLhÊ9@|_\\ªRTÀ'),
(4485, '\0\0\0\0\0\0\0 êãF6Æ9@…LèdTÀ'),
(4486, '\0\0\0\0\0\0\0•Ô	h"v:@tÿ¢©TÀ'),
(4487, '\0\0\0\0\0\0\0p>u¬R´9@ÅX¦_"TÀ'),
(4488, '\0\0\0\0\0\0\0TšƒV¡<@G2õSNS@'),
(4489, '\0\0\0\0\0\0\0_«NÞ:@Ù¤ì>‘	TÀ'),
(4490, '\0\0\0\0\0\0\0ï…âÛÇ9@“ýó4`TÀ'),
(4491, '\0\0\0\0\0\0\01qõ­ ·:@ù[L}jTÀ'),
(4492, '\0\0\0\0\0\0\0_«NÞ:@Ù¤ì>‘	TÀ'),
(4493, '\0\0\0\0\0\0\0¤§ÝùÉ9@ÝCû}TÀ'),
(4494, '\0\0\0\0\0\0\0›sðLhÊ9@|_\\ªRTÀ'),
(4495, '\0\0\0\0\0\0\0 êãF6Æ9@…LèdTÀ'),
(4496, '\0\0\0\0\0\0\0 êãF6Æ9@…LèdTÀ'),
(4497, '\0\0\0\0\0\0\0›sðLhÊ9@|_\\ªRTÀ'),
(4498, '\0\0\0\0\0\0\0_«NÞ:@Ù¤ì>‘	TÀ'),
(4499, '\0\0\0\0\0\0\0çò0þw9@ªÞÐJTÀ'),
(4500, '\0\0\0\0\0\0\0¤§ÝùÉ9@ÝCû}TÀ'),
(4501, '\0\0\0\0\0\0\0›sðLhÊ9@|_\\ªRTÀ'),
(4502, '\0\0\0\0\0\0\0³ÎFñ9@§¦nx\rTÀ'),
(4503, '\0\0\0\0\0\0\0ÌgÔ×NbD@ýŠ×~RÀ'),
(4504, '\0\0\0\0\0\0\0¬OÞlZD@˜šNüâ€RÀ'),
(4505, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(4506, '\0\0\0\0\0\0\0­Žw¢\\D@>V•"žRÀ'),
(4507, '\0\0\0\0\0\0\0,çœéo[D@øIÿÜa€RÀ'),
(4508, '\0\0\0\0\0\0\0,çœéo[D@øIÿÜa€RÀ'),
(4509, '\0\0\0\0\0\0\0,çœéo[D@øIÿÜa€RÀ'),
(4510, '\0\0\0\0\0\0\0<Ú8b-^D@ìÜ´§RÀ'),
(4511, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(4512, '\0\0\0\0\0\0\0ÜÜóW#×B@Aõ"™™^À'),
(4513, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(4514, '\0\0\0\0\0\0\0âg«õæB@þªmÔT‘^À'),
(4515, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(4516, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(4517, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(4518, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(4519, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(4520, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(4521, '\0\0\0\0\0\0\0<¥ƒõ-E@NA#}ÈQÀ'),
(4522, '\0\0\0\0\0\0\0TvUûÏ,E@&ÊQÀ'),
(4523, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(4524, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(4525, '\0\0\0\0\0\0\0bžÅœ1E@ ƒÓ''^ÆQÀ'),
(4526, '\0\0\0\0\0\0\0]’^/¨''E@ÈN.|³ÇQÀ'),
(4527, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(4528, '\0\0\0\0\0\0\0\ZE ¨d.E@`Ù»õPÆQÀ'),
(4529, '\0\0\0\0\0\0\0bžÅœ1E@ ƒÓ''^ÆQÀ'),
(4530, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(4531, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(4532, '\0\0\0\0\0\0\0ç}Ò?w*E@~$ÁÇQÀ'),
(4533, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(4534, '\0\0\0\0\0\0\0cD¢Ð².E@LÅÆ¼ŽÆQÀ'),
(4535, '\0\0\0\0\0\0\0]þCúí+E@¨ÆK7‰ÅQÀ'),
(4536, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(4537, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(4538, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(4539, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(4540, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(4541, '\0\0\0\0\0\0\0N\0V­.E@?è4fíÃQÀ'),
(4542, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(4543, '\0\0\0\0\0\0\0ûñòÏg*E@!ÍX4ÇQÀ'),
(4544, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(4545, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(4546, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(4547, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(4548, '\0\0\0\0\0\0\0Qo¡†Ê>E@?è´ÑQÀ'),
(4549, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(4550, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(4551, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(4552, '\0\0\0\0\0\0\07™§)¸ÐG@Wj1ø”^À'),
(4553, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(4554, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(4555, '\0\0\0\0\0\0\0§>¼ÏG@ß§ªÐ@”^À'),
(4556, '\0\0\0\0\0\0\0„÷°rÃçG@o¾l–&˜^À'),
(4557, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(4558, '\0\0\0\0\0\0\0ÔV6½Õ·G@ä9³Í•^À'),
(4559, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(4560, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(4561, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(4562, '\0\0\0\0\0\0\0\0‘~û:×G@TÁMë[^À'),
(4563, '\0\0\0\0\0\0\0~¸š+9çG@äè;	¶’^À'),
(4564, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(4565, '\0\0\0\0\0\0\0T²÷=EÖG@”„DÚÆ‡^À'),
(4566, '\0\0\0\0\0\0\0(/º1ÓG@ûìÛ¤}–^À'),
(4567, '\0\0\0\0\0\0\0ùÓë»ÇçG@••Ëë-˜^À'),
(4568, '\0\0\0\0\0\0\0„bÕ ÎG@t\0ë×Œ^À'),
(4569, '\0\0\0\0\0\0\05ñi©îG@Çë2^À'),
(4570, '\0\0\0\0\0\0\0Ì`ŒHÉG@°¼˜^À'),
(4571, '\0\0\0\0\0\0\0§>¼ÏG@ß§ªÐ@”^À'),
(4572, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(4573, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(4574, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(4575, '\0\0\0\0\0\0\0<]''?óÎG@ÌâP+–^À'),
(4576, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(4577, '\0\0\0\0\0\0\0íV`ÈÑG@fÁÄE†^À'),
(4578, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(4579, '\0\0\0\0\0\0\0û£¹_OýG@€ŒoÞîŒ^À'),
(4580, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(4581, '\0\0\0\0\0\0\0Ð@Â‹àG@ÕÐavŠ^À'),
(4582, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(4583, '\0\0\0\0\0\0\0m	TZÚÃG@fîkn‚^À'),
(4584, '\0\0\0\0\0\0\0¤äÕ9\\7@þEÐTU@'),
(4585, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(4586, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(4587, '\0\0\0\0\0\0\0Ëlë¹ÑG@±²lœƒ—^À'),
(4588, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(4589, '\0\0\0\0\0\0\0T²÷=EÖG@”„DÚÆ‡^À'),
(4590, '\0\0\0\0\0\0\0Óø…W’ÖG@n¡+¨–^À'),
(4591, '\0\0\0\0\0\0\0ßÂºñîâ@@Yj½ßhŒ]À'),
(4592, '\0\0\0\0\0\0\09”Fq¿G@]\Z\Zª=^À'),
(4593, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(4594, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(4595, '\0\0\0\0\0\0\0Ì`ŒHÉG@°¼˜^À'),
(4596, '\0\0\0\0\0\0\0\0‘~û:×G@TÁMë[^À'),
(4597, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(4598, '\0\0\0\0\0\0\0Â0gÒG@êÚ(|”^À'),
(4599, '\0\0\0\0\0\0\0>’’†ÎG@ý÷àµK”^À'),
(4600, '\0\0\0\0\0\0\0„bÕ ÎG@t\0ë×Œ^À'),
(4601, '\0\0\0\0\0\0\0ãr¼CíB@Òg¬¢d6XÀ'),
(4602, '\0\0\0\0\0\0\0ï×®\Z•ÌG@ˆLTÊF•^À'),
(4603, '\0\0\0\0\0\0\0„bÕ ÎG@t\0ë×Œ^À'),
(4604, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(4605, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(4606, '\0\0\0\0\0\0\0~2kÎÖG@$§À“•^À'),
(4607, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(4608, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(4609, '\0\0\0\0\0\0\0™—h5ÉÎG@‘''“dŒ^À'),
(4610, '\0\0\0\0\0\0\0„bÕ ÎG@t\0ë×Œ^À'),
(4611, '\0\0\0\0\0\0\0„bÕ ÎG@t\0ë×Œ^À'),
(4612, '\0\0\0\0\0\0\0îöØ‹ÉG@Ë›hüç™^À'),
(4613, '\0\0\0\0\0\0\0m	TZÚÃG@fîkn‚^À'),
(4614, '\0\0\0\0\0\0\0„bÕ ÎG@t\0ë×Œ^À'),
(4615, '\0\0\0\0\0\0\0„÷°rÃçG@o¾l–&˜^À'),
(4616, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(4617, '\0\0\0\0\0\0\0k8všÑG@øãöË''‰^À'),
(4618, '\0\0\0\0\0\0\0 =êTžÎG@ß4}ö•^À'),
(4619, '\0\0\0\0\0\0\0IüåîÎ½G@$6iä^À'),
(4620, '\0\0\0\0\0\0\0\0‘~û:×G@TÁMë[^À'),
(4621, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(4622, '\0\0\0\0\0\0\0\0‘~û:×G@TÁMë[^À'),
(4623, '\0\0\0\0\0\0\0ÈCßÝÊÎG@š˜.ÄêŒ^À'),
(4624, '\0\0\0\0\0\0\0&*ecoH@4—ÀRˆ^À'),
(4625, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(4626, '\0\0\0\0\0\0\0›bÄôsTH@yhÿ¶^À'),
(4627, '\0\0\0\0\0\0\0Ð@Â‹àG@ÕÐavŠ^À'),
(4628, '\0\0\0\0\0\0\0nMPØG@%Æ×Cˆ^À'),
(4629, '\0\0\0\0\0\0\0\0‘~û:×G@TÁMë[^À'),
(4630, '\0\0\0\0\0\0\0„bÕ ÎG@t\0ë×Œ^À'),
(4631, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(4632, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(4633, '\0\0\0\0\0\0\0žíÑîÍG@ä½jeÂ•^À'),
(4634, '\0\0\0\0\0\0\0/R(_½G@\\:æ<c^À'),
(4635, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(4636, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(4637, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(4638, '\0\0\0\0\0\0\0ˆ)t^ÍG@¹Œ›\Zh•^À'),
(4639, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(4640, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(4641, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(4642, '\0\0\0\0\0\0\0„bÕ ÎG@t\0ë×Œ^À'),
(4643, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(4644, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(4645, '\0\0\0\0\0\0\0£ ÊÂÎG@x{ò”^À'),
(4646, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(4647, '\0\0\0\0\0\0\0ë˜Ü(ÐG@Z·Aí·•^À'),
(4648, '\0\0\0\0\0\0\0`×åJóÍG@Õ¶¼Í•^À'),
(4649, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(4650, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(4651, '\0\0\0\0\0\0\0„bÕ ÎG@t\0ë×Œ^À'),
(4652, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(4653, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(4654, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(4655, '\0\0\0\0\0\0\0>®\rã¸G@óâÄW;“^À'),
(4656, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(4657, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(4658, '\0\0\0\0\0\0\0Þ-Ú-ºG@Ö‰p8˜”^À'),
(4659, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(4660, '\0\0\0\0\0\0\0´9ÎmÂ°G@>ŒZ«^À'),
(4661, '\0\0\0\0\0\0\0M ÛèRÔG@œdõXD[]À'),
(4662, '\0\0\0\0\0\0\0~Šˆ9aH@ò¥¦?Ÿ^À'),
(4663, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(4664, '\0\0\0\0\0\0\0eõXD^ G@å:×Aoœ^À'),
(4665, '\0\0\0\0\0\0\0Þ-Ú-ºG@Ö‰p8˜”^À'),
(4666, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(4667, '\0\0\0\0\0\0\0M ÛèRÔG@œdõXD[]À'),
(4668, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(4669, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(4670, '\0\0\0\0\0\0\0ýl?tœÏG@_¬¹íŒ–^À'),
(4671, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(4672, '\0\0\0\0\0\0\0“Õ¾ÊëÍG@‘Ešø’^À'),
(4673, '\0\0\0\0\0\0\0î8ÔŒÕG@a=I ˜^À'),
(4674, '\0\0\0\0\0\0\0„bÕ ÎG@t\0ë×Œ^À'),
(4675, '\0\0\0\0\0\0\0„bÕ ÎG@t\0ë×Œ^À'),
(4676, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4677, '\0\0\0\0\0\0\0\nö_ç¦¥D@´Ke›å''WÀ'),
(4678, '\0\0\0\0\0\0\0Ó"‘ldôC@Äl8£ÊRÀ'),
(4679, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4680, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4681, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4682, '\0\0\0\0\0\0\0\\…zúùC@©÷TNûÌRÀ'),
(4683, '\0\0\0\0\0\0\0I…±… Â@@Ü±"´¯7TÀ'),
(4684, '\0\0\0\0\0\0\0G2P¾EøC@Þˆ8çñËRÀ'),
(4685, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4686, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4687, '\0\0\0\0\0\0\0VÖ6ÅãøC@aü4îÊRÀ'),
(4688, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4689, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4690, '\0\0\0\0\0\0\0#Š$ÕÒD@T‘e~ÏRÀ'),
(4691, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4692, '\0\0\0\0\0\0\0Ê4š\\ŒD@^žÎ¥ÈRÀ'),
(4693, '\0\0\0\0\0\0\0êè¸\ZÙD@AEŒSÀ'),
(4694, '\0\0\0\0\0\0\0Ház®?D@\0\0\0\0\0àRÀ'),
(4695, '\0\0\0\0\0\0\0‡ÿÏ¼wøC@X—	uGÊRÀ'),
(4696, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4697, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4698, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4699, '\0\0\0\0\0\0\0ù9ôÌùC@i%cklÊRÀ'),
(4700, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4701, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4702, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4703, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4704, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4705, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4706, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4707, '\0\0\0\0\0\0\0ìQ¸…ûC@Š2eñ¬ÈRÀ'),
(4708, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4709, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4710, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4711, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4712, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4713, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4714, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4715, '\0\0\0\0\0\0\0¤§ÝùÉ9@ÝCû}TÀ'),
(4716, '\0\0\0\0\0\0\0 êãF6Æ9@…LèdTÀ'),
(4717, '\0\0\0\0\0\0\0ñI''Lç9@•g¹Ç­	TÀ'),
(4718, '\0\0\0\0\0\0\0c™~‰xÕ9@‘A“iY\rTÀ'),
(4719, '\0\0\0\0\0\0\0¤§ÝùÉ9@ÝCû}TÀ'),
(4720, '\0\0\0\0\0\0\0Fª9Š½»9@pö½<STÀ'),
(4721, '\0\0\0\0\0\0\0¤§ÝùÉ9@ÝCû}TÀ'),
(4722, '\0\0\0\0\0\0\0¤§ÝùÉ9@ÝCû}TÀ'),
(4723, '\0\0\0\0\0\0\0d’‘³¸9@­ñ>3-TÀ'),
(4724, '\0\0\0\0\0\0\0ÖeBÝã9@-póTÀ'),
(4725, '\0\0\0\0\0\0\0Lþ''÷Ü9@ÙUí?WTÀ'),
(4726, '\0\0\0\0\0\0\0¤§ÝùÉ9@ÝCû}TÀ'),
(4727, '\0\0\0\0\0\0\0¤§ÝùÉ9@ÝCû}TÀ'),
(4728, '\0\0\0\0\0\0\0¤§ÝùÉ9@ÝCû}TÀ'),
(4729, '\0\0\0\0\0\0\0b%µ9@š‰3ÐÆTÀ'),
(4730, '\0\0\0\0\0\0\0¤§ÝùÉ9@ÝCû}TÀ'),
(4731, '\0\0\0\0\0\0\0|ä 2ª;@Ó÷\ZaTÀ'),
(4732, '\0\0\0\0\0\0\0r[ëCñ9@¡Hœº\rTÀ'),
(4733, '\0\0\0\0\0\0\0²ËÌÆÂ9@:ƒuÒ1TÀ'),
(4734, '\0\0\0\0\0\0\0¤§ÝùÉ9@ÝCû}TÀ'),
(4735, '\0\0\0\0\0\0\0ä1•ñÃ9@ÔÓGàTÀ'),
(4736, '\0\0\0\0\0\0\0®ršO:@|o-	TÀ'),
(4737, '\0\0\0\0\0\0\0 êãF6Æ9@…LèdTÀ'),
(4738, '\0\0\0\0\0\0\0®ršO:@|o-	TÀ'),
(4739, '\0\0\0\0\0\0\0©+D,:@,Î½,TÀ'),
(4740, '\0\0\0\0\0\0\0®ršO:@|o-	TÀ'),
(4741, '\0\0\0\0\0\0\0¤§ÝùÉ9@ÝCû}TÀ'),
(4742, '\0\0\0\0\0\0\0ø³ýÉÒ:@ó{ö·ßTÀ'),
(4743, '\0\0\0\0\0\0\0ˆópÓ[:@e–ó{QTÀ'),
(4744, '\0\0\0\0\0\0\0›sðLhÊ9@|_\\ªRTÀ'),
(4745, '\0\0\0\0\0\0\0X© ¢êË9@wç¨£TÀ'),
(4746, '\0\0\0\0\0\0\04…Ú%9@~É!= TÀ'),
(4747, '\0\0\0\0\0\0\0¤§ÝùÉ9@ÝCû}TÀ'),
(4748, '\0\0\0\0\0\0\0¥1ZGU—;@ö®æ¥TÀ'),
(4749, '\0\0\0\0\0\0\0_«NÞ:@Ù¤ì>‘	TÀ'),
(4750, '\0\0\0\0\0\0\0›sðLhÊ9@|_\\ªRTÀ'),
(4751, '\0\0\0\0\0\0\0s¯Ý‡ÍÑ9@þáº½TÀ'),
(4752, '\0\0\0\0\0\0\0\0n/º9@º£ÿåZTÀ'),
(4753, '\0\0\0\0\0\0\0K€*nB;@bñ@	XœTÀ'),
(4754, '\0\0\0\0\0\0\0 êãF6Æ9@…LèdTÀ'),
(4755, '\0\0\0\0\0\0\0ˆópÓ[:@e–ó{QTÀ'),
(4756, '\0\0\0\0\0\0\0\09aÂhÎ9@Ÿ”I\rmTÀ'),
(4757, '\0\0\0\0\0\0\0 êãF6Æ9@…LèdTÀ'),
(4758, '\0\0\0\0\0\0\0¿÷’!"":@ÍÌÌÌÌTÀ'),
(4759, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(4760, '\0\0\0\0\0\0\0uÇâáùC@dèØËRÀ'),
(4761, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4762, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4763, '\0\0\0\0\0\0\0ÏÂù/ôC@|‡‘ÇÊRÀ'),
(4764, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4765, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(4766, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(4767, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(4770, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4771, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4772, '\0\0\0\0\0\0\0m„Ò¶§C@¦TÓ?Ò»WÀ'),
(4773, '\0\0\0\0\0\0\0Mv}0:úC@R•[ÊRÀ'),
(4774, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ');
INSERT INTO `businesspoint` (`idbusinesspoint`, `point`) VALUES
(4775, '\0\0\0\0\0\0\0ûæþêqD@| pÑ$¶RÀ'),
(4776, '\0\0\0\0\0\0\0Ház®?D@\0\0\0\0\0àRÀ'),
(4777, '\0\0\0\0\0\0\0G®›R^ùC@¯?‰ÏÊRÀ'),
(4778, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4779, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4780, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4781, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4782, '\0\0\0\0\0\0\0“RÐí%E@aXY6N[XÀ'),
(4783, '\0\0\0\0\0\0\0ÉXmþ_ùC@5^ºIËRÀ'),
(4784, '\0\0\0\0\0\0\0N~‹N–øC@Y"§¯ÉRÀ'),
(4785, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4786, '\0\0\0\0\0\0\0S“à\riùC@c{-è=ÉRÀ'),
(4787, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4788, '\0\0\0\0\0\0\0ÆåÓ¾D@¢zk`«ÐRÀ'),
(4789, '\0\0\0\0\0\0\0\\ƒ‚ùC@/Äê0ËRÀ'),
(4790, '\0\0\0\0\0\0\0ìø/øC@¢ðÙ:8ÊRÀ'),
(4791, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4792, '\0\0\0\0\0\0\0	©ÛÙW¬C@Y£¢Ñ¡RÀ'),
(4793, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4794, '\0\0\0\0\0\0\0¾…uãÝùC@ÜQ÷\\ÉRÀ'),
(4795, '\0\0\0\0\0\0\0\Zë=ðD@&Ê9ÁÕRÀ'),
(4796, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4797, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4798, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4799, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4800, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4801, '\0\0\0\0\0\0\0”Ç‰eúC@2VtµÃRÀ'),
(4802, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4803, '\0\0\0\0\0\0\0 J{óC@ XúuÌ¿RÀ'),
(4804, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4805, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4806, '\0\0\0\0\0\0\0»Ó''žD@AÕèÕØRÀ'),
(4807, '\0\0\0\0\0\0\0½ý¹hÈD@×›b.ÎRÀ'),
(4808, '\0\0\0\0\0\0\0ÐDØðôŒC@Ô¤o-î­RÀ'),
(4809, '\0\0\0\0\0\0\0zM´P×öC@°’Ý…ÑRÀ'),
(4810, '\0\0\0\0\0\0\0u><KùC@<÷.9ÉRÀ'),
(4811, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4812, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4813, '\0\0\0\0\0\0\0­+ËD	D@¦¹p{]ÂRÀ'),
(4814, '\0\0\0\0\0\0\0¾3Úª$D@E‡K³ÍRÀ'),
(4815, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4816, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4817, '\0\0\0\0\0\0\0nT½D@ï3ÓbÜRÀ'),
(4818, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4819, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4820, '\0\0\0\0\0\0\0›.È–	D@£©ØÒRÀ'),
(4821, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4822, '\0\0\0\0\0\0\0…ëQ¸öC@\ZôJ~ÁRÀ'),
(4823, '\0\0\0\0\0\0\0½ý¹hÈD@×›b.ÎRÀ'),
(4824, '\0\0\0\0\0\0\0É\0PÅùC@7þDeCÊRÀ'),
(4825, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4826, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4827, '\0\0\0\0\0\0\02*A!D@ÈŸ&Ë/XÀ'),
(4828, '\0\0\0\0\0\0\0—ôAà’úC@p1õ©ÌRÀ'),
(4829, '\0\0\0\0\0\0\0h›vŒ†õC@™.ÄêÄRÀ'),
(4830, '\0\0\0\0\0\0\0*íÃ0úC@#‰¹ÿ#ÊRÀ'),
(4831, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4832, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4833, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4834, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4835, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(4836, '\0\0\0\0\0\0\0#A$ùD@™ú/FíUÀ'),
(4837, '\0\0\0\0\0\0\0´íï”îD@tÈþöUÀ'),
(4838, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(4839, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(4840, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(4841, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(4842, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(4843, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(4844, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(4845, '\0\0\0\0\0\0\0‡âéðkE@ºÜ»aóUÀ'),
(4846, '\0\0\0\0\0\0\0±áé•²òD@hx³ïéUÀ'),
(4847, '\0\0\0\0\0\0\0,çœéo[D@øIÿÜa€RÀ'),
(4848, '\0\0\0\0\0\0\0,çœéo[D@øIÿÜa€RÀ'),
(4849, '\0\0\0\0\0\0\0,çœéo[D@øIÿÜa€RÀ'),
(4850, '\0\0\0\0\0\0\0,çœéo[D@øIÿÜa€RÀ'),
(4851, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(4852, '\0\0\0\0\0\0\0,çœéo[D@øIÿÜa€RÀ'),
(4853, '\0\0\0\0\0\0\0,çœéo[D@øIÿÜa€RÀ'),
(4854, '\0\0\0\0\0\0\0,çœéo[D@øIÿÜa€RÀ'),
(4855, '\0\0\0\0\0\0\0é·¯aD@¿›nÙ!RÀ'),
(4856, '\0\0\0\0\0\0\0e |‹˜\\D@Ó¸Ü…€RÀ'),
(4857, '\0\0\0\0\0\0\0,çœéo[D@øIÿÜa€RÀ'),
(4858, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(4859, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(4860, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(4861, '\0\0\0\0\0\0\0™ÒŸ¢¸B@-ÌB;''‰^À'),
(4862, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(4863, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(4864, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(4865, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(4866, '\0\0\0\0\0\0\0ªÄËÓB@Öü’š^À'),
(4867, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(4868, '\0\0\0\0\0\0\0s™ýp«B@ønóFy^À'),
(4869, '\0\0\0\0\0\0\0¶ß”¨ÊB@[÷Z«™^À'),
(4870, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(4871, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(4872, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(4873, '\0\0\0\0\0\0\0¼Ì‡VÚB@°ž¤\n^À'),
(4874, '\0\0\0\0\0\0\0¶ß”¨ÊB@[÷Z«™^À'),
(4875, '\0\0\0\0\0\0\0ªÄËÓB@Öü’š^À'),
(4876, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(4877, '\0\0\0\0\0\0\0ìQ¸…ÓE@9ž*:mØSÀ'),
(4878, '\0\0\0\0\0\0\0ìQ¸…ÓE@9ž*:mØSÀ'),
(4879, '\0\0\0\0\0\0\0ìQ¸…ÓE@9ž*:mØSÀ'),
(4880, '\0\0\0\0\0\0\0ìQ¸…ÓE@9ž*:mØSÀ'),
(4881, '\0\0\0\0\0\0\0ìQ¸…ÓE@9ž*:mØSÀ'),
(4882, '\0\0\0\0\0\0\0³{ò°PÕE@ëÿf×SÀ'),
(4883, '\0\0\0\0\0\0\0ô)ò‹ÓE@áz®GØSÀ'),
(4884, '\0\0\0\0\0\0\0ìQ¸…ÓE@9ž*:mØSÀ'),
(4885, '\0\0\0\0\0\0\0ìQ¸…ÓE@9ž*:mØSÀ'),
(4886, '\0\0\0\0\0\0\0ìQ¸…ÓE@9ž*:mØSÀ'),
(4887, '\0\0\0\0\0\0\0ìQ¸…ÓE@9ž*:mØSÀ'),
(4888, '\0\0\0\0\0\0\0ìQ¸…ÓE@9ž*:mØSÀ'),
(4889, '\0\0\0\0\0\0\0ìQ¸…ÓE@9ž*:mØSÀ'),
(4890, '\0\0\0\0\0\0\0ãõ™	ÓE@ë-/\nÌÜSÀ'),
(4891, '\0\0\0\0\0\0\0ìQ¸…ÓE@9ž*:mØSÀ'),
(4892, '\0\0\0\0\0\0\0åPu~@£@@ßa$Å|VÀ'),
(4893, '\0\0\0\0\0\0\0ÊÂ××ºÓE@øk¸ÙSÀ'),
(4894, '\0\0\0\0\0\0\0{î©A=ÚE@¡ÇÞÁàSÀ'),
(4895, '\0\0\0\0\0\0\0ìQ¸…ÓE@9ž*:mØSÀ'),
(4896, '\0\0\0\0\0\0\0k÷™iÕE@{ÈJ‚¦ÙSÀ'),
(4897, '\0\0\0\0\0\0\0ìQ¸…ÓE@9ž*:mØSÀ'),
(4898, '\0\0\0\0\0\0\0ìQ¸…ÓE@9ž*:mØSÀ'),
(4899, '\0\0\0\0\0\0\0ìQ¸…ÓE@9ž*:mØSÀ'),
(4900, '\0\0\0\0\0\0\0ìQ¸…ÓE@9ž*:mØSÀ'),
(4901, '\0\0\0\0\0\0\0DIíêúê@@ú;%1ÒÃSÀ'),
(4902, '\0\0\0\0\0\0\0ìQ¸…ÓE@9ž*:mØSÀ'),
(4903, '\0\0\0\0\0\0\0ìQ¸…ÓE@9ž*:mØSÀ'),
(4904, '\0\0\0\0\0\0\0ìQ¸…ÓE@9ž*:mØSÀ'),
(4905, '\0\0\0\0\0\0\0ìQ¸…ÓE@9ž*:mØSÀ'),
(4906, '\0\0\0\0\0\0\0hªÌ9ÛE@4X‚ÖÙSÀ'),
(4907, '\0\0\0\0\0\0\0We:Ï3ÕE@ðAANÞSÀ'),
(4908, '\0\0\0\0\0\0\0ìQ¸…ÓE@9ž*:mØSÀ'),
(4909, '\0\0\0\0\0\0\0Œ „6ïùC@U£Wƒ¿RÀ'),
(4910, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4911, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4912, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4913, '\0\0\0\0\0\0\0¾…uãÝùC@ÜQ÷\\ÉRÀ'),
(4914, '\0\0\0\0\0\0\0(Ñ7aýC@–~TÉRÀ'),
(4915, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4916, '\0\0\0\0\0\0\0ºR*<ÃWD@¥Ù<ƒSÀ'),
(4917, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4918, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4919, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4920, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4921, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4922, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4923, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4924, '\0\0\0\0\0\0\0êYµ‰øC@ÌêÂ´”ÉRÀ'),
(4925, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4926, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4927, '\0\0\0\0\0\0\0¾3Úª$D@E‡K³ÍRÀ'),
(4928, '\0\0\0\0\0\0\0ìQ¸…ûC@Š2eñ¬ÈRÀ'),
(4929, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4930, '\0\0\0\0\0\0\0ìQ¸…ûC@Š2eñ¬ÈRÀ'),
(4931, '\0\0\0\0\0\0\0m:¸YüC@³	0,ÈRÀ'),
(4932, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4933, '\0\0\0\0\0\0\0i_/„D@¤ï‘áÚRÀ'),
(4934, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4935, '\0\0\0\0\0\0\0‘?½¾{ÿC@\Zýh8åÅRÀ'),
(4936, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4937, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4938, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4939, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4940, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4941, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4942, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4943, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(4944, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(4945, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(4946, '\0\0\0\0\0\0\0„bÕ ÎG@t\0ë×Œ^À'),
(4947, '\0\0\0\0\0\0\0„bÕ ÎG@t\0ë×Œ^À'),
(4948, '\0\0\0\0\0\0\0„@Ó·q¿G@¢îZr^À'),
(4949, '\0\0\0\0\0\0\0’ˆ:½œÌG@.Ö½S•^À'),
(4950, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(4951, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(4952, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(4953, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(4954, '\0\0\0\0\0\0\0£…¸†ÖG@-!ôl—^À'),
(4955, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(4956, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(4957, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(4958, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(4959, '\0\0\0\0\0\0\0Ì`ŒHÉG@°¼˜^À'),
(4960, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(4961, '\0\0\0\0\0\0\0FšxxÖG@.u×ƒ™^À'),
(4962, '\0\0\0\0\0\0\0t·ë¥)ÔG@Øà3È˜^À'),
(4963, '\0\0\0\0\0\0\0Ì`ŒHÉG@°¼˜^À'),
(4964, '\0\0\0\0\0\0\0~2kÎÖG@$§À“•^À'),
(4965, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(4966, '\0\0\0\0\0\0\0TÑnÏG@èî„¨Œ”^À'),
(4967, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(4968, '\0\0\0\0\0\0\0²/42#àG@v`Jn^/^À'),
(4969, '\0\0\0\0\0\0\0„bÕ ÎG@t\0ë×Œ^À'),
(4970, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(4971, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(4972, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(4973, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(4974, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(4975, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(4976, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(4977, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(4978, '\0\0\0\0\0\0\0’ˆ:½œÌG@.Ö½S•^À'),
(4979, '\0\0\0\0\0\0\0cë¾¿ÅG@÷[;Q’‘^À'),
(4980, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(4981, '\0\0\0\0\0\0\0wgí¶ÕG@·køÌH˜^À'),
(4982, '\0\0\0\0\0\0\0ôsžéÎG@l#v–^À'),
(4983, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(4984, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(4985, '\0\0\0\0\0\0\0¹¯@ôÎG@·D.8ƒ–^À'),
(4986, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(4987, '\0\0\0\0\0\0\0„÷°rÃçG@o¾l–&˜^À'),
(4988, '\0\0\0\0\0\0\0-²ï§ÖG@q=\n×£˜^À'),
(4989, '\0\0\0\0\0\0\0T²÷=EÖG@”„DÚÆ‡^À'),
(4990, '\0\0\0\0\0\0\0\Z‹¦³“ÙG@ìr¥ù¾–^À'),
(4991, '\0\0\0\0\0\0\0Á¡“rC@Xl8ÑSBSÀ'),
(4992, '\0\0\0\0\0\0\0’ˆ:½œÌG@.Ö½S•^À'),
(4993, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(4995, '\0\0\0\0\0\0\0èç<Ò*E@ÇëóâÊQÀ'),
(4996, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(4997, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(4998, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(4999, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5000, '\0\0\0\0\0\0\0''0ÖmD>@ª·¶JoXÀ'),
(5001, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5002, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5003, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5004, '\0\0\0\0\0\0\0{†pÌ²G>@záÎ…oXÀ'),
(5005, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5006, '\0\0\0\0\0\0\0H±’?>@n¶¿WqXÀ'),
(5007, '\0\0\0\0\0\0\0‘óþ?ND>@æv/÷oXÀ'),
(5008, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5009, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5010, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5011, '\0\0\0\0\0\0\0Hk:!D>@‚âÇ˜»oXÀ'),
(5012, '\0\0\0\0\0\0\0TÄé$[í<@¨.*ó 7TÀ'),
(5013, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5014, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5015, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5016, '\0\0\0\0\0\0\0\0œ(SC>@rR˜÷¸pXÀ'),
(5017, '\0\0\0\0\0\0\0õ*2: E>@†9A›oXÀ'),
(5018, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5019, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5020, '\0\0\0\0\0\0\0˜àÔ’C>@<Ü\r‹oXÀ'),
(5021, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5022, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5023, '\0\0\0\0\0\0\0¢¶\r£ @>@ Ý¾ýïoXÀ'),
(5024, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5025, '\0\0\0\0\0\0\0®)ÙYD>@³¿¢¢oXÀ'),
(5026, '\0\0\0\0\0\0\0æÎL0œO>@6×†ŠoXÀ'),
(5027, '\0\0\0\0\0\0\0Ã¤Rì@>@ë˜ÜpXÀ'),
(5028, '\0\0\0\0\0\0\0iàì{yD>@÷%''noXÀ'),
(5029, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5030, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5031, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5032, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5033, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5034, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5035, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5036, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5037, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5038, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5039, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5040, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5041, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5042, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5043, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5044, '\0\0\0\0\0\0\0Ý\\ümOD>@Sul®oXÀ'),
(5045, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5046, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5047, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5048, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5049, '\0\0\0\0\0\0\0àŽ&ÍbC@‚õÉ›\rR^À'),
(5050, '\0\0\0\0\0\0\0–9] C>@…këÌoXÀ'),
(5051, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5052, '\0\0\0\0\0\0\0ú^Cp\\N>@^Ò½ó|XÀ'),
(5053, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5054, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5055, '\0\0\0\0\0\0\0t†˜‚>@§X5skXÀ'),
(5056, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5057, '\0\0\0\0\0\0\0c(''ÚUD>@[”Ù “oXÀ'),
(5058, '\0\0\0\0\0\0\0r''"\r¸^@@QO?9XÀ'),
(5059, '\0\0\0\0\0\0\0ÅÉýEA>@©¿^aÁpXÀ'),
(5060, '\0\0\0\0\0\0\0VÇ;Ñ¿{@@  ¹óNXÀ'),
(5061, '\0\0\0\0\0\0\0B°ª^~?>@B´V´9qXÀ'),
(5062, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5063, '\0\0\0\0\0\0\0Õ–:ÈëE>@`ãúwpXÀ'),
(5064, '\0\0\0\0\0\0\0t†˜‚>@§X5skXÀ'),
(5065, '\0\0\0\0\0\0\0áñHö÷?@®æJN·ùXÀ'),
(5066, '\0\0\0\0\0\0\0Õaà~A@aÎ"ÊMSWÀ'),
(5067, '\0\0\0\0\0\0\0‘p*C>@+Ý]gÃpXÀ'),
(5068, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5069, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5070, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5071, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5072, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5073, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5074, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5075, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5076, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5077, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5078, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5079, '\0\0\0\0\0\0\0ç€nyD>@ÏVe¥oXÀ'),
(5080, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5081, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5082, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5083, '\0\0\0\0\0\0\0goßYqrC@{Þè¾÷?SÀ'),
(5084, '\0\0\0\0\0\0\0A×¾€^D>@.9(aoXÀ'),
(5085, '\0\0\0\0\0\0\00óüÄI>@¿¹¿zÜoXÀ'),
(5086, '\0\0\0\0\0\0\0+Ä5ˆèD@œ&}kqçUÀ'),
(5087, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5088, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5089, '\0\0\0\0\0\0\0:ç§8T>@ƒàñí]oXÀ'),
(5090, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5091, '\0\0\0\0\0\0\0CÐ‡|>@ì4ÒRùXÀ'),
(5092, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5093, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5094, '\0\0\0\0\0\0\0áñHö÷?@®æJN·ùXÀ'),
(5095, '\0\0\0\0\0\0\0ºÛõÒ~A@©ˆÓI6SWÀ'),
(5096, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5097, '\0\0\0\0\0\0\0ÓiÝµG>@·•^›pXÀ'),
(5098, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5099, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5100, '\0\0\0\0\0\0\0õc“üˆO>@óWÈ\\oXÀ'),
(5101, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5102, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5103, '\0\0\0\0\0\0\0''D\n¯nD>@jahšoXÀ'),
(5104, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5105, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5106, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5107, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5108, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5109, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5110, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5111, '\0\0\0\0\0\0\07DËpòM>@Ô“CÕynXÀ'),
(5112, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5113, '\0\0\0\0\0\0\0ú^Cp\\N>@^Ò½ó|XÀ'),
(5114, '\0\0\0\0\0\0\0ir1Ö·C@ùrUê!SÀ'),
(5115, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5116, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5117, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5118, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5119, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5120, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5121, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5122, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5123, '\0\0\0\0\0\0\0U¸Šj¶‰A@H‘@ÅKUÀ'),
(5124, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5125, '\0\0\0\0\0\0\0³u÷ŒC@Ë‘„3®!UÀ'),
(5126, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5127, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5128, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5129, '\0\0\0\0\0\0\0¸wÍõ?>@EÅîñøoXÀ'),
(5130, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5131, '\0\0\0\0\0\0\0aTR'' Q>@J²GWoXÀ'),
(5132, '\0\0\0\0\0\0\0Á§9y‘¯=@8V{ËWÀ'),
(5133, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5134, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5135, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5136, '\0\0\0\0\0\0\0q¤}½d>@¨è£çñoXÀ'),
(5137, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5138, '\0\0\0\0\0\0\0F6¡ZŽ7>@n|±pXÀ'),
(5139, '\0\0\0\0\0\0\0ÏkìÕC>@#J{ƒ/qXÀ'),
(5140, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5141, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5142, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5143, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5144, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5145, '\0\0\0\0\0\0\0p}XoÔÞ=@;R}ç|WÀ'),
(5146, '\0\0\0\0\0\0\0U6¿«Ç<@Ÿ$¸ìëñWÀ'),
(5147, '\0\0\0\0\0\0\0ë\r­AL>@É&poXÀ'),
(5148, '\0\0\0\0\0\0\0èŸàbE&C@öŠ]‘N¼UÀ'),
(5149, '\0\0\0\0\0\0\0ZžwgQ>@•\rk*nXÀ'),
(5150, '\0\0\0\0\0\0\0™{í>lT>@aH˜³mXÀ'),
(5151, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5152, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5153, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5154, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5155, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5156, '\0\0\0\0\0\0\0Þ.Óå=>@a¥‚Š*pXÀ'),
(5157, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5158, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5159, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5160, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5161, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5162, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5163, '\0\0\0\0\0\0\0[ë‹„¶<>@2 {½ûoXÀ'),
(5164, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5165, '\0\0\0\0\0\0\0S®•u¤C>@ê{hzdpXÀ'),
(5166, '\0\0\0\0\0\0\0q:ÉV;>@R¹‰ZšpXÀ'),
(5167, '\0\0\0\0\0\0\0U¸Šj¶‰A@H‘@ÅKUÀ'),
(5168, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5169, '\0\0\0\0\0\0\0ïuR_–f>@ìk]j„nXÀ'),
(5170, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5171, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5172, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5173, '\0\0\0\0\0\0\0¸uÊ£O>@.XªxlXÀ'),
(5174, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5175, '\0\0\0\0\0\0\0áñHö÷?@®æJN·ùXÀ'),
(5176, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5177, '\0\0\0\0\0\0\0ÿo‘ D>@|ùS™˜oXÀ'),
(5178, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5179, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5180, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5181, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5182, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5183, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5184, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5185, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5186, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5187, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5188, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5189, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5190, '\0\0\0\0\0\0\0oa‚¿5>@²²"ijXÀ'),
(5191, '\0\0\0\0\0\0\0in…°\ZC>@KW°xoXÀ'),
(5192, '\0\0\0\0\0\0\0, þ«Ø)>@pSMZ‚\\XÀ'),
(5193, '\0\0\0\0\0\0\06ÙóC>@V2[\rdoXÀ'),
(5194, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5195, '\0\0\0\0\0\0\0R±Öõ°B>@j[ƒ­ÈoXÀ'),
(5196, '\0\0\0\0\0\0\0ïuR_–f>@ìk]j„nXÀ'),
(5197, '\0\0\0\0\0\0\0¬§û¥êC>@ê‘«ýBoXÀ'),
(5198, '\0\0\0\0\0\0\0k5˜D>@B)µroXÀ'),
(5199, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(5200, '\0\0\0\0\0\0\0Ç¹M¸Wú@@cÇ­xØTÀ'),
(5201, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(5202, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(5203, '\0\0\0\0\0\0\0NE*Œ-ã@@ÃyÝÇöUÀ'),
(5204, '\0\0\0\0\0\0\0.Ð¤èC@[1å‰UÀ'),
(5205, '\0\0\0\0\0\0\0·}úëë@@¹ë8UÀ'),
(5206, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(5207, '\0\0\0\0\0\0\0éU®[VE@s0›\0CÈQÀ'),
(5208, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(5209, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(5210, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(5211, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(5212, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(5213, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(5214, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(5215, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(5216, '\0\0\0\0\0\0\0@}pA@UÐþQ+UÀ'),
(5217, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(5218, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(5219, '\0\0\0\0\0\0\0®»yªCä@@€ã|û„UÀ'),
(5220, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(5221, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(5222, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(5223, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(5224, '\0\0\0\0\0\0\0sÛ¾Gýá@@6‘™\\UÀ'),
(5225, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(5226, '\0\0\0\0\0\0\0o À;ùà@@Øh”‰6UÀ'),
(5227, '\0\0\0\0\0\0\0ŽÖHß@@Š•,‚ZUÀ'),
(5228, '\0\0\0\0\0\0\0ÃxròÇâ@@(ÄÔ\ZUÀ'),
(5229, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5230, '\0\0\0\0\0\0\0žCªbZ>@’-JËmXÀ'),
(5231, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5232, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5233, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5234, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5235, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5236, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5237, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5238, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5239, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5240, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5241, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5242, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5243, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5244, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5245, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5246, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(5247, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(5248, '\0\0\0\0\0\0\0±¾É/E@ ¦–­ÇQÀ'),
(5249, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(5250, '\0\0\0\0\0\0\0aO#ä@@J§dï{UÀ'),
(5251, '\0\0\0\0\0\0\0“¦AÑ<â@@_\nš]UÀ'),
(5252, '\0\0\0\0\0\0\0®»yªCä@@€ã|û„UÀ'),
(5253, '\0\0\0\0\0\0\0ë \\dLÃ=@Ô¶a„ØWÀ'),
(5254, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(5255, '\0\0\0\0\0\0\0ìQ¸…ÓE@9ž*:mØSÀ'),
(5256, '\0\0\0\0\0\0\0ìQ¸…ÓE@9ž*:mØSÀ'),
(5257, '\0\0\0\0\0\0\0ìQ¸…ÓE@9ž*:mØSÀ'),
(5258, '\0\0\0\0\0\0\0õËq¸ ÒE@ÑžG\nÙSÀ'),
(5259, '\0\0\0\0\0\0\0IØ·“ˆ2H@ôú“øÜRVÀ'),
(5260, '\0\0\0\0\0\0\0zEpÕE@1ÊpÚSÀ'),
(5261, '\0\0\0\0\0\0\0T''Vü•ÒE@P4´¦žÙSÀ'),
(5262, '\0\0\0\0\0\0\0ìQ¸…ÓE@9ž*:mØSÀ'),
(5263, '\0\0\0\0\0\0\0ìQ¸…ÓE@9ž*:mØSÀ'),
(5264, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(5265, '\0\0\0\0\0\0\0?ÊãÄ²öD@hB“ÄéUÀ'),
(5266, '\0\0\0\0\0\0\0,çœéo[D@øIÿÜa€RÀ'),
(5267, '\0\0\0\0\0\0\0ž^)Ë[E@ïtç‰çjRÀ'),
(5268, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(5269, '\0\0\0\0\0\0\0¢\n†7ñD@ôiºC/èUÀ'),
(5270, '\0\0\0\0\0\0\0Ýð£	ôD@ÂÈ\r>ëUÀ'),
(5271, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(5272, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(5273, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(5274, '\0\0\0\0\0\0\0‰>Ä«QøD@ƒ®3t¢éUÀ'),
(5275, '\0\0\0\0\0\0\0dÏù„GE@FÑÎQÀ'),
(5276, '\0\0\0\0\0\0\0`¼Õ)EE@È2³…VVÀ'),
(5277, '\0\0\0\0\0\0\0Ùƒÿc×ÓE@Ì}r ÚSÀ'),
(5278, '\0\0\0\0\0\0\0P8»µLÓE@v$MrvÚSÀ'),
(5279, '\0\0\0\0\0\0\0ìQ¸…ÓE@9ž*:mØSÀ');

-- --------------------------------------------------------

--
-- Table structure for table `business_searches`
--

CREATE TABLE IF NOT EXISTS `business_searches` (
  `id` int(11) NOT NULL auto_increment,
  `idbusiness` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=233 ;

--
-- Dumping data for table `business_searches`
--

INSERT INTO `business_searches` (`id`, `idbusiness`) VALUES
(230, 3103),
(231, 5500),
(232, 5249);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `idcategory` int(11) NOT NULL auto_increment,
  `name` varchar(100) character set utf8 collate utf8_unicode_ci NOT NULL,
  `totaldeals` int(11) NOT NULL,
  `totalvisits` int(11) NOT NULL,
  `status` int(1) NOT NULL,
  PRIMARY KEY  (`idcategory`),
  KEY `category_status` (`status`),
  KEY `category_name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='This will be the base categories in the system' AUTO_INCREMENT=14 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`idcategory`, `name`, `totaldeals`, `totalvisits`, `status`) VALUES
(5, 'Shopping', 0, 0, 1),
(6, 'Fun', 0, 0, 1),
(8, 'Wellness', 0, 0, 1),
(9, 'Travel', 0, 0, 1),
(10, 'Family', 0, 0, 1),
(11, 'Bars & Clubs', 0, 0, 1),
(12, 'Dining', 0, 0, 1),
(13, 'Services', 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `category_market`
--

CREATE TABLE IF NOT EXISTS `category_market` (
  `idcategorymarket` int(11) NOT NULL auto_increment,
  `idcategory` int(11) NOT NULL,
  `idmarket` int(11) NOT NULL,
  PRIMARY KEY  (`idcategorymarket`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=140 ;

--
-- Dumping data for table `category_market`
--

INSERT INTO `category_market` (`idcategorymarket`, `idcategory`, `idmarket`) VALUES
(3, 1, 2),
(4, 1, 1),
(10, 5, 3),
(11, 6, 1),
(12, 6, 2),
(13, 6, 3),
(20, 6, 4),
(21, 5, 4),
(25, 6, 5),
(26, 5, 5),
(27, 6, 6),
(29, 5, 6),
(31, 6, 7),
(33, 5, 7),
(35, 8, 3),
(36, 8, 7),
(37, 8, 5),
(38, 8, 4),
(39, 8, 6),
(40, 9, 3),
(41, 9, 7),
(42, 9, 5),
(43, 9, 4),
(44, 9, 6),
(45, 10, 3),
(46, 10, 7),
(47, 10, 5),
(48, 10, 4),
(49, 10, 6),
(50, 11, 3),
(51, 11, 7),
(52, 11, 5),
(53, 11, 4),
(54, 11, 6),
(55, 12, 3),
(56, 12, 7),
(57, 12, 5),
(58, 12, 4),
(59, 12, 6),
(60, 13, 3),
(61, 13, 7),
(62, 13, 5),
(63, 13, 4),
(64, 13, 6),
(65, 11, 8),
(66, 12, 8),
(67, 10, 8),
(68, 13, 8),
(69, 9, 8),
(70, 11, 9),
(71, 12, 9),
(72, 9, 9),
(73, 6, 8),
(74, 6, 9),
(75, 10, 9),
(76, 5, 8),
(77, 5, 9),
(78, 8, 8),
(79, 8, 9),
(80, 13, 9),
(81, 12, 10),
(82, 11, 10),
(83, 9, 10),
(84, 5, 10),
(85, 8, 10),
(86, 10, 10),
(87, 13, 10),
(88, 11, 11),
(89, 6, 10),
(90, 6, 11),
(91, 12, 11),
(92, 9, 11),
(93, 8, 11),
(94, 13, 11),
(95, 10, 11),
(96, 5, 11),
(97, 11, 12),
(98, 12, 12),
(99, 8, 12),
(100, 6, 12),
(101, 5, 12),
(102, 11, 13),
(103, 12, 13),
(104, 6, 13),
(105, 5, 13),
(106, 9, 12),
(107, 9, 13),
(108, 8, 13),
(109, 10, 12),
(110, 10, 13),
(111, 11, 14),
(112, 12, 14),
(113, 9, 14),
(114, 8, 14),
(115, 5, 14),
(117, 10, 14),
(118, 11, 15),
(119, 12, 15),
(120, 8, 15),
(121, 6, 15),
(122, 5, 15),
(123, 9, 15),
(124, 11, 16),
(125, 8, 16),
(126, 9, 16),
(127, 12, 16),
(128, 6, 16),
(129, 12, 17),
(130, 11, 17),
(131, 6, 14),
(133, 8, 17),
(134, 5, 17),
(135, 5, 16),
(136, 9, 17),
(137, 6, 17),
(138, 12, 18),
(139, 11, 18);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE IF NOT EXISTS `countries` (
  `id` int(11) NOT NULL auto_increment,
  `code` char(2) character set utf8 collate utf8_unicode_ci NOT NULL,
  `name` varchar(50) character set utf8 collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=241 ;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `code`, `name`) VALUES
(1, 'AF', 'AFGHANISTAN'),
(2, 'AL', 'ALBANIA'),
(3, 'DZ', 'ALGERIA'),
(4, 'AS', 'AMERICAN SAMOA'),
(5, 'AD', 'ANDORRA'),
(6, 'AO', 'ANGOLA'),
(7, 'AI', 'ANGUILLA'),
(8, 'AQ', 'ANTARCTICA'),
(9, 'AG', 'ANTIGUA AND BARBUDA'),
(10, 'AR', 'ARGENTINA'),
(11, 'AM', 'ARMENIA'),
(12, 'AW', 'ARUBA'),
(13, 'AU', 'AUSTRALIA'),
(14, 'AT', 'AUSTRIA'),
(15, 'AZ', 'AZERBAIJAN'),
(16, 'BS', 'BAHAMAS'),
(17, 'BH', 'BAHRAIN'),
(18, 'BD', 'BANGLADESH'),
(19, 'BB', 'BARBADOS'),
(20, 'BY', 'BELARUS'),
(21, 'BE', 'BELGIUM'),
(22, 'BZ', 'BELIZE'),
(23, 'BJ', 'BENIN'),
(24, 'BM', 'BERMUDA'),
(25, 'BT', 'BHUTAN'),
(26, 'BO', 'BOLIVIA'),
(27, 'BA', 'BOSNIA AND HERZEGOWINA'),
(28, 'BW', 'BOTSWANA'),
(29, 'BV', 'BOUVET ISLAND'),
(30, 'BR', 'BRAZIL'),
(31, 'IO', 'BRITISH INDIAN OCEAN TERRITORY'),
(32, 'BN', 'BRUNEI DARUSSALAM'),
(33, 'BG', 'BULGARIA'),
(34, 'BF', 'BURKINA FASO'),
(35, 'BI', 'BURUNDI'),
(36, 'KH', 'CAMBODIA'),
(37, 'CM', 'CAMEROON'),
(38, 'CA', 'CANADA'),
(39, 'CV', 'CAPE VERDE'),
(40, 'KY', 'CAYMAN ISLANDS'),
(41, 'CF', 'CENTRAL AFRICAN REPUBLIC'),
(42, 'TD', 'CHAD'),
(43, 'CL', 'CHILE'),
(44, 'CN', 'CHINA'),
(45, 'CX', 'CHRISTMAS ISLAND'),
(46, 'CC', 'COCOS (KEELING) ISLANDS'),
(47, 'CO', 'COLOMBIA'),
(48, 'KM', 'COMOROS'),
(49, 'CG', 'CONGO'),
(50, 'CD', 'CONGO, THE DEMOCRATIC REPUBLIC OF THE'),
(51, 'CK', 'COOK ISLANDS'),
(52, 'CR', 'COSTA RICA'),
(53, 'CI', 'COTE D''IVOIRE'),
(54, 'HR', 'CROATIA (local name: Hrvatska)'),
(55, 'CU', 'CUBA'),
(56, 'CY', 'CYPRUS'),
(57, 'CZ', 'CZECH REPUBLIC'),
(58, 'DK', 'DENMARK'),
(59, 'DJ', 'DJIBOUTI'),
(60, 'DM', 'DOMINICA'),
(61, 'DO', 'DOMINICAN REPUBLIC'),
(62, 'TP', 'EAST TIMOR'),
(63, 'EC', 'ECUADOR'),
(64, 'EG', 'EGYPT'),
(65, 'SV', 'EL SALVADOR'),
(66, 'GQ', 'EQUATORIAL GUINEA'),
(67, 'ER', 'ERITREA'),
(68, 'EE', 'ESTONIA'),
(69, 'ET', 'ETHIOPIA'),
(70, 'FK', 'FALKLAND ISLANDS (MALVINAS)'),
(71, 'FO', 'FAROE ISLANDS'),
(72, 'FJ', 'FIJI'),
(73, 'FI', 'FINLAND'),
(74, 'FR', 'FRANCE'),
(75, 'FX', 'FRANCE, METROPOLITAN'),
(76, 'GF', 'FRENCH GUIANA'),
(77, 'PF', 'FRENCH POLYNESIA'),
(78, 'TF', 'FRENCH SOUTHERN TERRITORIES'),
(79, 'GA', 'GABON'),
(80, 'GM', 'GAMBIA'),
(81, 'GE', 'GEORGIA'),
(82, 'DE', 'GERMANY'),
(83, 'GH', 'GHANA'),
(84, 'GI', 'GIBRALTAR'),
(85, 'GR', 'GREECE'),
(86, 'GL', 'GREENLAND'),
(87, 'GD', 'GRENADA'),
(88, 'GP', 'GUADELOUPE'),
(89, 'GU', 'GUAM'),
(90, 'GT', 'GUATEMALA'),
(91, 'GN', 'GUINEA'),
(92, 'GW', 'GUINEA-BISSAU'),
(93, 'GY', 'GUYANA'),
(94, 'HT', 'HAITI'),
(95, 'HM', 'HEARD AND MC DONALD ISLANDS'),
(96, 'VA', 'HOLY SEE (VATICAN CITY STATE)'),
(97, 'HN', 'HONDURAS'),
(98, 'HK', 'HONG KONG'),
(99, 'HU', 'HUNGARY'),
(100, 'IS', 'ICELAND'),
(101, 'IN', 'INDIA'),
(102, 'ID', 'INDONESIA'),
(103, 'IR', 'IRAN (ISLAMIC REPUBLIC OF)'),
(104, 'IQ', 'IRAQ'),
(105, 'IE', 'IRELAND'),
(106, 'IL', 'ISRAEL'),
(107, 'IT', 'ITALY'),
(108, 'JM', 'JAMAICA'),
(109, 'JP', 'JAPAN'),
(110, 'JO', 'JORDAN'),
(111, 'KZ', 'KAZAKHSTAN'),
(112, 'KE', 'KENYA'),
(113, 'KI', 'KIRIBATI'),
(114, 'KP', 'KOREA, DEMOCRATIC PEOPLE''S REPUBLIC OF'),
(115, 'KR', 'KOREA, REPUBLIC OF'),
(116, 'KW', 'KUWAIT'),
(117, 'KG', 'KYRGYZSTAN'),
(118, 'LA', 'LAO PEOPLE''S DEMOCRATIC REPUBLIC'),
(119, 'LV', 'LATVIA'),
(120, 'LB', 'LEBANON'),
(121, 'LS', 'LESOTHO'),
(122, 'LR', 'LIBERIA'),
(123, 'LY', 'LIBYAN ARAB JAMAHIRIYA'),
(124, 'LI', 'LIECHTENSTEIN'),
(125, 'LT', 'LITHUANIA'),
(126, 'LU', 'LUXEMBOURG'),
(127, 'MO', 'MACAU'),
(128, 'MK', 'MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF'),
(129, 'MG', 'MADAGASCAR'),
(130, 'MW', 'MALAWI'),
(131, 'MY', 'MALAYSIA'),
(132, 'MV', 'MALDIVES'),
(133, 'ML', 'MALI'),
(134, 'MT', 'MALTA'),
(135, 'MH', 'MARSHALL ISLANDS'),
(136, 'MQ', 'MARTINIQUE'),
(137, 'MR', 'MAURITANIA'),
(138, 'MU', 'MAURITIUS'),
(139, 'YT', 'MAYOTTE'),
(140, 'MX', 'MEXICO'),
(141, 'FM', 'MICRONESIA, FEDERATED STATES OF'),
(142, 'MD', 'MOLDOVA, REPUBLIC OF'),
(143, 'MC', 'MONACO'),
(144, 'MN', 'MONGOLIA'),
(145, 'MS', 'MONTSERRAT'),
(146, 'MA', 'MOROCCO'),
(147, 'MZ', 'MOZAMBIQUE'),
(148, 'MM', 'MYANMAR'),
(149, 'NA', 'NAMIBIA'),
(150, 'NR', 'NAURU'),
(151, 'NP', 'NEPAL'),
(152, 'NL', 'NETHERLANDS'),
(153, 'AN', 'NETHERLANDS ANTILLES'),
(154, 'NC', 'NEW CALEDONIA'),
(155, 'NZ', 'NEW ZEALAND'),
(156, 'NI', 'NICARAGUA'),
(157, 'NE', 'NIGER'),
(158, 'NG', 'NIGERIA'),
(159, 'NU', 'NIUE'),
(160, 'NF', 'NORFOLK ISLAND'),
(161, 'MP', 'NORTHERN MARIANA ISLANDS'),
(162, 'NO', 'NORWAY'),
(163, 'OM', 'OMAN'),
(164, 'PK', 'PAKISTAN'),
(165, 'PW', 'PALAU'),
(166, 'PS', 'PALESTINIAN TERRITORY, OCCUPIED'),
(167, 'PA', 'PANAMA'),
(168, 'PG', 'PAPUA NEW GUINEA'),
(169, 'PY', 'PARAGUAY'),
(170, 'PE', 'PERU'),
(171, 'PH', 'PHILIPPINES'),
(172, 'PN', 'PITCAIRN'),
(173, 'PL', 'POLAND'),
(174, 'PT', 'PORTUGAL'),
(175, 'PR', 'PUERTO RICO'),
(176, 'QA', 'QATAR'),
(177, 'RE', 'REUNION'),
(178, 'RO', 'ROMANIA'),
(179, 'RU', 'RUSSIAN FEDERATION'),
(180, 'RW', 'RWANDA'),
(181, 'KN', 'SAINT KITTS AND NEVIS'),
(182, 'LC', 'SAINT LUCIA'),
(183, 'VC', 'SAINT VINCENT AND THE GRENADINES'),
(184, 'WS', 'SAMOA'),
(185, 'SM', 'SAN MARINO'),
(186, 'ST', 'SAO TOME AND PRINCIPE'),
(187, 'SA', 'SAUDI ARABIA'),
(188, 'SN', 'SENEGAL'),
(189, 'SC', 'SEYCHELLES'),
(190, 'SL', 'SIERRA LEONE'),
(191, 'SG', 'SINGAPORE'),
(192, 'SK', 'SLOVAKIA (Slovak Republic)'),
(193, 'SI', 'SLOVENIA'),
(194, 'SB', 'SOLOMON ISLANDS'),
(195, 'SO', 'SOMALIA'),
(196, 'ZA', 'SOUTH AFRICA'),
(197, 'GS', 'SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS'),
(198, 'ES', 'SPAIN'),
(199, 'LK', 'SRI LANKA'),
(200, 'SH', 'ST. HELENA'),
(201, 'PM', 'ST. PIERRE AND MIQUELON'),
(202, 'SD', 'SUDAN'),
(203, 'SR', 'SURINAME'),
(204, 'SJ', 'SVALBARD AND JAN MAYEN ISLANDS'),
(205, 'SZ', 'SWAZILAND'),
(206, 'SE', 'SWEDEN'),
(207, 'CH', 'SWITZERLAND'),
(208, 'SY', 'SYRIAN ARAB REPUBLIC'),
(209, 'TW', 'TAIWAN, PROVINCE OF CHINA'),
(210, 'TJ', 'TAJIKISTAN'),
(211, 'TZ', 'TANZANIA, UNITED REPUBLIC OF'),
(212, 'TH', 'THAILAND'),
(213, 'TG', 'TOGO'),
(214, 'TK', 'TOKELAU'),
(215, 'TO', 'TONGA'),
(216, 'TT', 'TRINIDAD AND TOBAGO'),
(217, 'TN', 'TUNISIA'),
(218, 'TR', 'TURKEY'),
(219, 'TM', 'TURKMENISTAN'),
(220, 'TC', 'TURKS AND CAICOS ISLANDS'),
(221, 'TV', 'TUVALU'),
(222, 'UG', 'UGANDA'),
(223, 'UA', 'UKRAINE'),
(224, 'AE', 'UNITED ARAB EMIRATES'),
(225, 'GB', 'UNITED KINGDOM'),
(226, 'US', 'UNITED STATES'),
(227, 'UM', 'UNITED STATES MINOR OUTLYING ISLANDS'),
(228, 'UY', 'URUGUAY'),
(229, 'UZ', 'UZBEKISTAN'),
(230, 'VU', 'VANUATU'),
(231, 'VE', 'VENEZUELA'),
(232, 'VN', 'VIET NAM'),
(233, 'VG', 'VIRGIN ISLANDS (BRITISH)'),
(234, 'VI', 'VIRGIN ISLANDS (U.S.)'),
(235, 'WF', 'WALLIS AND FUTUNA ISLANDS'),
(236, 'EH', 'WESTERN SAHARA'),
(237, 'YE', 'YEMEN'),
(238, 'YU', 'YUGOSLAVIA'),
(239, 'ZM', 'ZAMBIA'),
(240, 'ZW', 'ZIMBABWE');

-- --------------------------------------------------------

--
-- Table structure for table `deal`
--

CREATE TABLE IF NOT EXISTS `deal` (
  `iddeal` int(11) NOT NULL auto_increment,
  `dealtype` int(1) NOT NULL COMMENT '1 - Free\n2 - Event',
  `idbusiness` int(11) NOT NULL,
  `idmarket` int(11) NOT NULL,
  `idcategory` int(11) NOT NULL,
  `idtwitter` bigint(20) unsigned default NULL,
  `title` varchar(140) character set utf8 collate utf8_unicode_ci NOT NULL,
  `description` text character set utf8 collate utf8_unicode_ci,
  `isfree` tinyint(1) NOT NULL default '0',
  `isdeal` tinyint(4) NOT NULL default '0',
  `isevent` tinyint(4) NOT NULL default '0',
  `image` varchar(100) character set utf8 collate utf8_unicode_ci default NULL,
  `thumbimage` varchar(45) character set utf8 collate utf8_unicode_ci default NULL,
  `bitlyurl` varchar(100) character set utf8 collate utf8_unicode_ci default NULL,
  `ranking` float NOT NULL,
  `createdon` datetime NOT NULL,
  `twittercreatedon` datetime NOT NULL,
  `status` int(1) NOT NULL,
  `totalviews` int(11) NOT NULL,
  `totalrating` int(11) NOT NULL,
  `avgrating` float NOT NULL,
  `totalspam` int(11) NOT NULL,
  `totalrecommend` int(11) NOT NULL,
  `totalshare` int(11) NOT NULL,
  `totalvoteup` int(11) NOT NULL,
  `totalvotedown` int(11) NOT NULL,
  `isfoursquare` tinyint(1) NOT NULL default '0',
  `md5_deal_text` varchar(256) character set utf8 collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`iddeal`),
  KEY `fk_deal_idbusiness` (`idbusiness`),
  KEY `fk_deal_idcategory` (`idcategory`),
  KEY `fk_deal_idmarket` (`idmarket`),
  KEY `deal_idtwitter` (`idtwitter`),
  KEY `deal_status` (`status`),
  KEY `deal_status_market_category_business` (`status`,`idmarket`,`idcategory`,`idbusiness`),
  KEY `deal_isdeal` (`isdeal`),
  KEY `deal_status_isdeal_market` (`status`,`isdeal`,`idmarket`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='It stores the deals' AUTO_INCREMENT=132838 ;

--
-- Dumping data for table `deal`
--

INSERT INTO `deal` (`iddeal`, `dealtype`, `idbusiness`, `idmarket`, `idcategory`, `idtwitter`, `title`, `description`, `isfree`, `isdeal`, `isevent`, `image`, `thumbimage`, `bitlyurl`, `ranking`, `createdon`, `twittercreatedon`, `status`, `totalviews`, `totalrating`, `avgrating`, `totalspam`, `totalrecommend`, `totalshare`, `totalvoteup`, `totalvotedown`, `isfoursquare`, `md5_deal_text`) VALUES
(1, 0, 14, 7, 5, 17308762435, 'Just fired up the decks at The Griffin in Atwater Village. Come have some beers and gaze at some shoes with us!', 'Just fired up the decks at The Griffin in Atwater Village. Come have some beers and gaze at some shoes with us!', 0, 1, 1, NULL, NULL, 'http://bit.ly/asfHPv', 31195.7, '2010-06-29 03:44:10', '2010-06-29 01:05:44', 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(3, 0, 50, 7, 5, 17305216173, 'For a list of FREE movies for our Movies in The Park series @TheGroveLA: http://bit.ly/aZ3pgU Thursday see #SHREK!', 'For a list of FREE movies for our Movies in The Park series @TheGroveLA: http://bit.ly/aZ3pgU Thursday see #SHREK!', 1, 1, 1, NULL, NULL, 'http://bit.ly/a5RlSp', 31194.2, '2010-06-29 03:44:11', '2010-06-29 00:04:59', 1, 6, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(4, 0, 50, 7, 5, 17304982260, 'For a list of FREE movies for our Movies in The Park series @TheGroveLA: http://bit.ly/aZ3pgU + buy picnic baskets for preferred seating!', 'For a list of FREE movies for our Movies in The Park series @TheGroveLA: http://bit.ly/aZ3pgU + buy picnic baskets for preferred seating!', 1, 1, 1, NULL, NULL, 'http://bit.ly/aIkZrw', 23694.2, '2010-06-29 03:44:12', '2010-06-29 00:01:17', 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(5, 0, 50, 7, 5, 17304921614, 'Movies in The Park - Free All-Time Favorite Movies Under The Stars! http://bit.ly/aZ3pgU', 'Movies in The Park - Free All-Time Favorite Movies Under The Stars! http://bit.ly/aZ3pgU', 1, 1, 1, NULL, NULL, 'http://bit.ly/9OdKGx', 34319.3, '2010-06-29 03:44:12', '2010-06-29 00:00:23', 1, 7, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(6, 0, 8, 7, 5, 17288193730, 'Make it Metropark for Independence Day! Take an additional 40% off all clearance this Tuesday, June 29th through... http://fb.me/u3vngv29', 'Make it Metropark for Independence Day! Take an additional 40% off all clearance this Tuesday, June 29th through... http://fb.me/u3vngv29', 1, 1, 1, NULL, NULL, 'http://bit.ly/9HMboG', 23508.5, '2010-06-29 03:44:13', '2010-06-28 19:32:05', 1, 7, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(7, 0, 8, 7, 5, 17288075939, 'Make it Metropark for Independence Day! Take Additional 40% off all clearance this Tuesday, June 29th through... http://fb.me/DmXrgcMc', 'Make it Metropark for Independence Day! Take Additional 40% off all clearance this Tuesday, June 29th through... http://fb.me/DmXrgcMc', 1, 1, 1, NULL, NULL, 'http://bit.ly/bWu8IS', 25774.1, '2010-06-29 03:44:13', '2010-06-28 19:30:09', 1, 6, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(8, 0, 12, 7, 5, 17287010535, 'Dreaming of Hogwarts wizardry? Free showing of Harry Potter at Muvico''s FREE Family Film Festival tomorrow and Wed.http://bit.ly/dD9sNF', 'Dreaming of Hogwarts wizardry? Free showing of Harry Potter at Muvico''s FREE Family Film Festival tomorrow and Wed.http://bit.ly/dD9sNF', 1, 1, 1, NULL, NULL, 'http://bit.ly/d9wWV8', 26625.2, '2010-06-29 03:44:13', '2010-06-28 19:12:11', 1, 7, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(9, 0, 14, 7, 5, 17285524212, 'We now have the @larecord 100 cards for sale at Origami Vinyl $25 + a $2 service fee. Gets you into a ton of rad shows this month!!', 'We now have the @larecord 100 cards for sale at Origami Vinyl $25 + a $2 service fee. Gets you into a ton of rad shows this month!!', 1, 1, 1, NULL, NULL, 'http://bit.ly/cxQmU9', 23562.2, '2010-06-29 03:44:14', '2010-06-28 18:46:44', 1, 6, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(10, 0, 37, 7, 5, 17274052449, '4th of july is just around the corner, stop by the store today to get the perfect attire for the occasion, plus lots of cute bikinis! xo', '4th of july is just around the corner, stop by the store today to get the perfect attire for the occasion, plus lots of cute bikinis! xo', 1, 1, 1, NULL, NULL, 'http://bit.ly/coF2gW', 24770, '2010-06-29 03:44:14', '2010-06-28 15:27:07', 1, 7, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(11, 0, 28, 7, 5, 17273785214, 'Come visit us today! http://fb.me/DHudsIYF', 'Come visit us today! http://fb.me/DHudsIYF', 1, 1, 1, NULL, NULL, 'http://bit.ly/dau6PL', 34216.4, '2010-06-29 03:44:15', '2010-06-28 15:22:54', 1, 9, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(12, 0, 17, 7, 5, 17271703745, 'Yay! RT@Lauriebstyle: Up early and at @vivaswag for some morning fashion stories!  Cutting videos today of designers @brian_wood_ and @Anamu', 'Yay! RT@Lauriebstyle: Up early and at @vivaswag for some morning fashion stories!  Cutting videos today of designers @brian_wood_ and @Anamu', 1, 1, 1, NULL, NULL, 'http://bit.ly/b54HFf', 24878.9, '2010-06-29 03:44:15', '2010-06-28 14:50:25', 1, 6, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(13, 0, 7, 7, 5, 17270540766, 'Want to win a $1,000 shopping and dining spree at H&amp;H? Enter now on our mobile website by snapping the tag here: http://bit.ly/by086A', 'Want to win a $1,000 shopping and dining spree at H&amp;H? Enter now on our mobile website by snapping the tag here: http://bit.ly/by086A', 1, 1, 1, NULL, NULL, 'http://bit.ly/ax85RK', 31229, '2010-06-29 03:44:16', '2010-06-28 14:30:13', 1, 27, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(15, 0, 8, 7, 5, 17260804203, 'Check out the new arrivals at Banana Republic this week!  Spend $100 or more and take 20% off your purchase.  Use... http://fb.me/yLuh6Iyl', 'Check out the new arrivals at Banana Republic this week!  Spend $100 or more and take 20% off your purchase.  Use... http://fb.me/yLuh6Iyl', 1, 1, 1, NULL, NULL, 'http://bit.ly/a1LdYZ', 23526.2, '2010-06-29 03:44:17', '2010-06-28 11:53:52', 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(17, 0, 50, 7, 5, 17223615841, '@TheGroveLA Presents FREE Movies in The Park Every Thursday during July and August at 8pm: http://tinyurl.com/32vqtg9', '@TheGroveLA Presents FREE Movies in The Park Every Thursday during July and August at 8pm: http://tinyurl.com/32vqtg9', 1, 1, 1, NULL, NULL, 'http://bit.ly/awvNd1', 25772.3, '2010-06-29 03:44:18', '2010-06-27 23:44:37', 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(18, 0, 14, 7, 5, 17132955300, 'Bowery Beasts about to start! Come celebrate the release of their debut 7&quot; with us!', 'Bowery Beasts about to start! Come celebrate the release of their debut 7&quot; with us!', 1, 1, 1, NULL, NULL, 'http://bit.ly/beR5YN', 31180.7, '2010-06-29 03:44:18', '2010-06-26 22:13:38', 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(19, 0, 18, 7, 5, 17120475141, 'Amazing jewelry by &quot;Fallon&quot; just in! Crystal drop earrings , cuffs and must have necklace bib. come check it out http://twitpic.co', 'Amazing jewelry by &quot;Fallon&quot; just in! Crystal drop earrings , cuffs and must have necklace bib. come check it out http://twitpic.com/208oxy', 1, 1, 1, NULL, NULL, 'http://bit.ly/b09u4t', 35096.9, '2010-06-29 03:44:19', '2010-06-26 18:00:52', 1, 6, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(20, 0, 2, 7, 5, 17118420781, 'It''s about to go down @thefastlife come chill with us 8101 W 3rd Street Los Angeles CA 90048', 'It''s about to go down @thefastlife come chill with us 8101 W 3rd Street Los Angeles CA 90048', 1, 1, 1, NULL, NULL, 'http://bit.ly/cbrPac', 33756.5, '2010-06-29 03:44:19', '2010-06-26 17:16:18', 1, 14, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(21, 0, 9, 7, 5, 17115110080, 'Visit Gap @ South Bay Galleria and take an additional 40% of sale merchandise now through tomorrow, June 27.', 'Visit Gap @ South Bay Galleria and take an additional 40% of sale merchandise now through tomorrow, June 27.', 1, 1, 1, NULL, NULL, 'http://bit.ly/c90A93', 23362.7, '2010-06-29 03:44:20', '2010-06-26 16:14:24', 1, 9, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(22, 0, 4, 7, 5, 17114625465, 'Check out DVF LA''s June Collection: http://picasaweb.google.com/101045335339648687353/DVFMELROSEJUNECOLLECTION?feat=twitter', 'Check out DVF LA''s June Collection: http://picasaweb.google.com/101045335339648687353/DVFMELROSEJUNECOLLECTION?feat=twitter', 1, 1, 1, NULL, NULL, 'http://bit.ly/c7akOp', 32214.2, '2010-06-29 03:44:20', '2010-06-26 16:04:44', 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(23, 0, 37, 7, 5, 17113417130, 'yeah come visit us soon! we miss u!!!! RT @PinkNony @SabrinaBryan nope @PetroZilliaBTQ is waaaaaay cooler... XO :)', 'yeah come visit us soon! we miss u!!!! RT @PinkNony @SabrinaBryan nope @PetroZilliaBTQ is waaaaaay cooler... XO :)', 1, 1, 1, NULL, NULL, 'http://bit.ly/9lWIeK', 31186.7, '2010-06-29 03:44:20', '2010-06-26 15:42:26', 1, 7, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(24, 0, 8, 7, 5, 17095376013, 'Meet a Baby T-Rex from the Staples Center spectacular &quot;Walking with Dinosaurs&quot; today near Zara at 4, 5, &amp; 6pm!... http://fb.me', 'Meet a Baby T-Rex from the Staples Center spectacular &quot;Walking with Dinosaurs&quot; today near Zara at 4, 5, &amp; 6pm!... http://fb.me/Cv3f39GD', 1, 1, 1, NULL, NULL, 'http://bit.ly/av1r4j', 23499.5, '2010-06-29 03:44:21', '2010-06-26 10:42:41', 1, 4, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(25, 0, 50, 7, 5, 17070190545, 'Tickets still available for The ULTIMATE @Twilight #Eclipse NIGHT OUT @TheGroveLA, 6/30! $30/pp Call 323.900.8080 http://bit.ly/anjzpV', 'Tickets still available for The ULTIMATE @Twilight #Eclipse NIGHT OUT @TheGroveLA, 6/30! $30/pp Call 323.900.8080 http://bit.ly/anjzpV', 1, 1, 1, NULL, NULL, 'http://bit.ly/d4LIbb', 23531.3, '2010-06-29 03:44:21', '2010-06-26 01:07:01', 1, 4, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(26, 0, 37, 7, 5, 17058291652, 'WE loooooove it when u come in!!!!!!!!!!! XOXO RT @AllisonMelnick    @petrozilliabtq picking out some new party dresses !!!', 'WE loooooove it when u come in!!!!!!!!!!! XOXO RT @AllisonMelnick    @petrozilliabtq picking out some new party dresses !!!', 1, 1, 1, NULL, NULL, 'http://bit.ly/b3nAl9', 25827.8, '2010-06-29 03:44:22', '2010-06-25 21:39:29', 1, 28, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(27, 0, 33, 7, 5, 17054420585, 'absolutely loving this Chanel bikini!! too bad it''s $945...must be lined in gold.  ;-) http://twitpic.com/1zydtc', 'absolutely loving this Chanel bikini!! too bad it''s $945...must be lined in gold.  ;-) http://twitpic.com/1zydtc', 1, 1, 1, NULL, NULL, 'http://bit.ly/afiBde', 6957.2, '2010-06-29 03:44:23', '2010-06-25 20:30:05', 1, 3, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(28, 0, 47, 7, 5, 17047825230, '. . . Our 3pm Item: per request is the Grai black suede Bony Shoulder jacket!! Originally $1060, but for this hour... http://fb.me/xJgvRiit', '. . . Our 3pm Item: per request is the Grai black suede Bony Shoulder jacket!! Originally $1060, but for this hour... http://fb.me/xJgvRiit', 1, 1, 1, NULL, NULL, 'http://bit.ly/czsoY7', 23559.5, '2010-06-29 03:44:23', '2010-06-25 18:25:16', 1, 24, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(29, 0, 50, 7, 5, 17046524896, 'Our friend @KathyGriffin signs her book at Barnes &amp; Noble @TheGroveLA on Wed, 6/30 at 7:30pm! Come one, come all!', 'Our friend @KathyGriffin signs her book at Barnes &amp; Noble @TheGroveLA on Wed, 6/30 at 7:30pm! Come one, come all!', 1, 1, 1, NULL, NULL, 'http://bit.ly/bgXYwa', 23497.4, '2010-06-29 03:44:23', '2010-06-25 18:00:13', 1, 4, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(30, 0, 8, 7, 5, 17044894611, 'Polish it up! All proceeds from shoe shines at Stop n'' Shine today &amp; tomorrow will be donated to the MS Society.... http://fb.me/DDG9dXf', 'Polish it up! All proceeds from shoe shines at Stop n'' Shine today &amp; tomorrow will be donated to the MS Society.... http://fb.me/DDG9dXfU', 1, 1, 1, NULL, NULL, 'http://bit.ly/9sC3Eb', 23860.1, '2010-06-29 03:44:24', '2010-06-25 17:29:03', 1, 4, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(31, 0, 30, 7, 5, 17043253903, 'PLEASE COME JOIN MY OTHER PAGE! http://fb.me/BLWC5EAa', 'PLEASE COME JOIN MY OTHER PAGE! http://fb.me/BLWC5EAa', 1, 1, 1, NULL, NULL, 'http://bit.ly/c7kMzf', 25772.3, '2010-06-29 03:44:24', '2010-06-25 16:57:24', 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(33, 0, 13, 7, 5, 17041856621, 'Additional 25% off of already marked-down prices @ Banana Republic.  Shop now thru Monday, June 28, while supplies last http://bit.ly/9guHrQ', 'Additional 25% off of already marked-down prices @ Banana Republic.  Shop now thru Monday, June 28, while supplies last http://bit.ly/9guHrQ', 1, 1, 1, NULL, NULL, 'http://bit.ly/9FHwFr', 24686.3, '2010-06-29 03:44:25', '2010-06-25 16:31:08', 1, 9, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(34, 0, 2, 7, 5, 17041230599, '1st 50 customers 2 buy the new @famoussas kicks get a free LtD exclusive T available tomorrow @thefastlife   http://tweetphoto.com/29104864', '1st 50 customers 2 buy the new @famoussas kicks get a free LtD exclusive T available tomorrow @thefastlife   http://tweetphoto.com/29104864', 1, 1, 1, NULL, NULL, 'http://bit.ly/bUdnTU', 18682.4, '2010-06-29 03:44:26', '2010-06-25 16:20:33', 1, 14, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(35, 0, 47, 7, 5, 17040786454, '. . . Our 1pm item: April 77- black Epitaph Colordrive Denim. Originally $200, but from 1pm until 2pm we''re... http://fb.me/BEDlha6I', '. . . Our 1pm item: April 77- black Epitaph Colordrive Denim. Originally $200, but from 1pm until 2pm we''re... http://fb.me/BEDlha6I', 1, 1, 1, NULL, NULL, 'http://bit.ly/dvvfbV', 25824.8, '2010-06-29 03:44:26', '2010-06-25 16:12:27', 1, 25, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(36, 0, 47, 7, 5, 17037567057, '. . . Our first item today: Zero + Maria Cornejo- gray Chunky Knit Cardigan! Originally $520, but for today from... http://fb.me/ASFSokaw', '. . . Our first item today: Zero + Maria Cornejo- gray Chunky Knit Cardigan! Originally $520, but for today from... http://fb.me/ASFSokaw', 1, 1, 1, NULL, NULL, 'http://bit.ly/cEkFaB', 34976, '2010-06-29 03:44:27', '2010-06-25 15:16:14', 1, 26, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(37, 0, 47, 7, 5, 17037061187, 'Here come our online HOURLY SPECIALS!!! Don''t miss out today . . . http://fb.me/wCz2xAHX', 'Here come our online HOURLY SPECIALS!!! Don''t miss out today . . . http://fb.me/wCz2xAHX', 1, 1, 1, NULL, NULL, 'http://bit.ly/agx8qt', 32681.9, '2010-06-29 03:44:27', '2010-06-25 15:08:06', 1, 38, 0, 0, 0, 0, 0, 0, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dealfilter`
--

CREATE TABLE IF NOT EXISTS `dealfilter` (
  `iddealfilter` int(11) NOT NULL auto_increment,
  `dealtype` int(1) NOT NULL,
  `filter` varchar(256) character set utf8 collate utf8_unicode_ci NOT NULL,
  `status` int(1) NOT NULL,
  `createdon` datetime NOT NULL,
  `createdby` int(11) NOT NULL,
  PRIMARY KEY  (`iddealfilter`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='This stores the deal filters defined by admin' AUTO_INCREMENT=73 ;

--
-- Dumping data for table `dealfilter`
--

INSERT INTO `dealfilter` (`iddealfilter`, `dealtype`, `filter`, `status`, `createdon`, `createdby`) VALUES
(20, 2, 'visit us', 1, '2010-04-01 13:11:52', 1),
(22, 3, '$', 1, '2010-04-15 16:10:52', 2),
(23, 3, 'Save', 1, '2010-04-15 16:10:57', 2),
(26, 3, 'deal', 1, '2010-04-16 13:54:38', 2),
(28, 3, 'cent', 1, '2010-04-26 19:44:34', 2),
(32, 3, '1/2 off', 1, '2010-04-28 15:52:37', 2),
(47, 3, 'free', 1, '2010-08-02 11:20:37', 3),
(48, 3, '- RT', 1, '2010-08-04 08:34:49', 3),
(49, 3, 'win a', 1, '2010-08-04 10:18:30', 3),
(50, 3, 'buy', 1, '2010-08-04 10:20:06', 3),
(51, 3, '- #FF', 1, '2010-08-27 14:52:49', 3),
(52, 3, '%', 1, '2010-09-01 07:59:03', 3),
(53, 3, 'discount', 1, '2010-09-02 08:43:08', 3),
(54, 3, 'discounts', 1, '2010-09-02 08:43:15', 3),
(56, 3, 'come in', 1, '2010-09-29 10:49:36', 3),
(57, 3, 'todays special', 1, '2010-10-01 12:49:06', 3),
(58, 3, 'games on', 1, '2010-10-01 12:49:23', 3),
(59, 3, 'menu', 1, '2010-10-01 13:29:41', 3),
(61, 3, 'join us', 1, '2010-10-03 15:37:00', 3),
(62, 3, 'come to', 1, '2010-10-09 10:16:20', 3),
(63, 3, 'reservation', 1, '2010-10-09 10:16:41', 3),
(64, 3, 'book now', 1, '2010-10-09 10:49:57', 3),
(65, 3, 'choose from', 1, '2010-10-13 13:05:33', 3),
(66, 3, 'choose from', 1, '2010-10-13 13:05:33', 3),
(67, 3, 'onsale', 1, '2010-12-23 09:40:58', 3),
(68, 3, 'tix available', 1, '2010-12-23 09:41:17', 3),
(69, 3, 'presale', 1, '2010-12-23 10:22:33', 3),
(70, 3, 'get tickets', 1, '2010-12-23 10:22:48', 3),
(71, 3, 'today''s special', 1, '2011-01-12 12:08:30', 3),
(72, 3, 'all day', 1, '2011-01-12 12:10:50', 3);

-- --------------------------------------------------------

--
-- Table structure for table `dealipview`
--

CREATE TABLE IF NOT EXISTS `dealipview` (
  `iddealipview` int(11) NOT NULL auto_increment,
  `ipaddress` varchar(15) character set utf8 NOT NULL,
  `iddeal` int(11) NOT NULL,
  `totalviews` int(11) NOT NULL,
  `lastviewedon` datetime NOT NULL,
  PRIMARY KEY  (`iddealipview`),
  KEY `ipa_idd` (`ipaddress`,`iddeal`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1026223 ;

--
-- Dumping data for table `dealipview`
--

INSERT INTO `dealipview` (`iddealipview`, `ipaddress`, `iddeal`, `totalviews`, `lastviewedon`) VALUES
(1, '66.220.153.251', 16574, 1, '2010-08-02 07:19:39'),
(2, '66.220.153.249', 16595, 1, '2010-08-02 07:19:39'),
(3, '66.220.153.247', 16668, 1, '2010-08-02 07:19:39'),
(4, '66.220.153.247', 16657, 1, '2010-08-02 07:19:39'),
(5, '66.220.153.249', 16604, 1, '2010-08-02 07:19:40'),
(6, '66.220.153.250', 16572, 1, '2010-08-02 07:19:41'),
(7, '66.220.153.244', 16563, 1, '2010-08-02 07:19:41'),
(8, '66.220.153.244', 16662, 1, '2010-08-02 07:19:43'),
(9, '66.220.153.245', 16461, 1, '2010-08-02 07:21:38'),
(10, '66.220.153.251', 16454, 1, '2010-08-02 07:21:38'),
(11, '66.220.153.247', 16436, 1, '2010-08-02 07:21:38'),
(12, '66.220.153.250', 16374, 1, '2010-08-02 07:21:40'),
(13, '66.220.153.247', 16358, 1, '2010-08-02 07:21:40'),
(14, '66.220.153.244', 16462, 1, '2010-08-02 07:21:42'),
(15, '66.220.153.245', 16381, 1, '2010-08-02 07:21:42'),
(16, '66.220.153.245', 16418, 1, '2010-08-02 07:21:43'),
(17, '122.177.166.58', 16461, 1, '2010-08-02 07:22:27'),
(18, '66.220.153.246', 16461, 1, '2010-08-02 07:22:29'),
(19, '66.220.153.244', 16562, 1, '2010-08-02 07:22:29'),
(20, '66.220.153.245', 16553, 1, '2010-08-02 07:22:36'),
(21, '69.63.189.246', 16657, 1, '2010-08-02 07:24:36'),
(22, '69.63.189.250', 16604, 1, '2010-08-02 07:24:36'),
(23, '69.63.189.246', 16574, 1, '2010-08-02 07:24:36'),
(24, '69.63.189.250', 16595, 1, '2010-08-02 07:24:36'),
(25, '66.220.153.248', 16349, 1, '2010-08-02 07:26:23'),
(26, '66.220.153.248', 16211, 1, '2010-08-02 07:26:23'),
(27, '69.63.189.246', 15808, 1, '2010-08-02 07:26:23'),
(28, '69.63.189.249', 15653, 1, '2010-08-02 07:26:23'),
(29, '69.63.189.246', 16207, 1, '2010-08-02 07:26:23'),
(30, '66.220.153.244', 15590, 1, '2010-08-02 07:26:24'),
(31, '66.220.153.251', 15499, 1, '2010-08-02 07:26:24'),
(32, '69.63.189.245', 15641, 1, '2010-08-02 07:26:25'),
(33, '69.63.189.247', 14006, 1, '2010-08-02 07:26:57'),
(34, '69.63.189.247', 14012, 1, '2010-08-02 07:26:57'),
(35, '69.63.189.244', 13751, 1, '2010-08-02 07:26:57'),
(36, '66.220.153.247', 13721, 1, '2010-08-02 07:26:58'),
(37, '66.220.153.251', 13722, 1, '2010-08-02 07:26:58'),
(38, '69.63.189.245', 13523, 1, '2010-08-02 07:26:58'),
(39, '69.63.189.245', 13460, 1, '2010-08-02 07:26:58'),
(40, '69.63.189.249', 13245, 1, '2010-08-02 07:26:58'),
(41, '122.177.166.58', 14012, 1, '2010-08-02 07:27:32'),
(42, '69.63.189.246', 16662, 1, '2010-08-02 07:27:33'),
(43, '66.220.153.249', 14012, 1, '2010-08-02 07:27:33'),
(44, '69.63.189.249', 16572, 1, '2010-08-02 07:27:33'),
(45, '69.63.189.249', 16537, 1, '2010-08-02 07:27:33'),
(46, '69.63.189.248', 16509, 1, '2010-08-02 07:27:33'),
(47, '66.220.147.244', 14012, 1, '2010-08-02 07:27:49'),
(48, '66.220.147.245', 16572, 1, '2010-08-02 07:27:49'),
(49, '66.220.147.250', 16662, 1, '2010-08-02 07:27:49'),
(50, '66.220.147.245', 16604, 1, '2010-08-02 07:27:49');

-- --------------------------------------------------------

--
-- Table structure for table `dealspamflagnumber`
--

CREATE TABLE IF NOT EXISTS `dealspamflagnumber` (
  `iddealspamflagnumber` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  PRIMARY KEY  (`iddealspamflagnumber`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Number of spams after which the deal is paused';

--
-- Dumping data for table `dealspamflagnumber`
--


-- --------------------------------------------------------

--
-- Table structure for table `deals_polled_log`
--

CREATE TABLE IF NOT EXISTS `deals_polled_log` (
  `id` int(11) NOT NULL auto_increment,
  `twitterid` bigint(20) unsigned NOT NULL,
  `twitter_screenname` varchar(100) character set utf8 collate utf8_unicode_ci NOT NULL,
  `created_on` datetime default NULL,
  `response_received` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=703305 ;

--
-- Dumping data for table `deals_polled_log`
--


-- --------------------------------------------------------

--
-- Table structure for table `dealtag`
--

CREATE TABLE IF NOT EXISTS `dealtag` (
  `iddealtag` int(11) NOT NULL auto_increment,
  PRIMARY KEY  (`iddealtag`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='This stores the deal tags' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `dealtag`
--


-- --------------------------------------------------------

--
-- Table structure for table `dnutwitteraccount`
--

CREATE TABLE IF NOT EXISTS `dnutwitteraccount` (
  `iddnutwitteraccount` int(11) NOT NULL auto_increment,
  `idcategory` int(11) NOT NULL,
  `idmarket` int(11) NOT NULL,
  `twitterid` varchar(45) character set utf8 collate utf8_unicode_ci NOT NULL,
  `twitterpwd` varchar(32) character set utf8 collate utf8_unicode_ci NOT NULL,
  `uniquekey` varchar(16) character set utf8 collate utf8_unicode_ci NOT NULL,
  `salt1` int(11) NOT NULL,
  `salt2` int(11) NOT NULL,
  `status` int(1) NOT NULL,
  `pollrate` int(11) NOT NULL,
  `lastpolledtwitterid` bigint(20) unsigned NOT NULL,
  `lastpolled` datetime default NULL,
  `isParent` tinyint(4) default '0',
  `accesskey` varchar(100) character set utf8 collate utf8_unicode_ci default NULL,
  `accesssecret` varchar(100) character set utf8 collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`iddnutwitteraccount`),
  KEY `fk_dnutwitteraccount_idcategory` (`idcategory`),
  KEY `fk_dnutwitteraccount_idmarket` (`idmarket`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='Twitter accounts in different markets and categories' AUTO_INCREMENT=207 ;

--
-- Dumping data for table `dnutwitteraccount`
--


-- --------------------------------------------------------

--
-- Table structure for table `invitefriend`
--

CREATE TABLE IF NOT EXISTS `invitefriend` (
  `id` int(11) NOT NULL auto_increment,
  `iduser` int(11) NOT NULL,
  `key_val` varchar(32) character set utf8 collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `invitefriend`
--


-- --------------------------------------------------------

--
-- Table structure for table `market`
--

CREATE TABLE IF NOT EXISTS `market` (
  `idmarket` int(11) NOT NULL auto_increment,
  `name` varchar(100) character set utf8 collate utf8_unicode_ci NOT NULL,
  `countrycode` varchar(3) character set utf8 collate utf8_unicode_ci NOT NULL,
  `longitude` double NOT NULL,
  `latitude` double NOT NULL,
  `totaldeals` int(11) NOT NULL,
  `totalvisits` int(11) NOT NULL,
  `status` int(1) NOT NULL default '1',
  PRIMARY KEY  (`idmarket`),
  KEY `market_name` (`name`),
  KEY `market_status` (`status`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='This stores the markets i.e. cities' AUTO_INCREMENT=19 ;

--
-- Dumping data for table `market`
--

INSERT INTO `market` (`idmarket`, `name`, `countrycode`, `longitude`, `latitude`, `totaldeals`, `totalvisits`, `status`) VALUES
(3, 'Chicago', 'US', -87.6500523, 41.850033, 0, 0, 1),
(4, 'New York City', 'US', -74.0059729, 40.7142691, 0, 0, 1),
(5, 'Miami', 'US', -80.1936589, 25.7742657, 0, 0, 1),
(6, 'San Francisco', 'US', -122.4194155, 37.7749295, 0, 0, 1),
(7, 'Los Angeles', 'US', -118.2436849, 34.0522342, 0, 0, 1),
(8, 'Boston', 'US', -71.0597732, 42.3584308, 0, 0, 1),
(9, 'Seattle', 'US', -122.3320708, 47.6062095, 0, 0, 1),
(10, 'Atlanta', 'US', -84.3879824, 33.7489954, 0, 0, 1),
(11, 'Toronto', 'CA', -79.3816667, 43.6525, 0, 0, 1),
(12, 'Philadelphia', 'US', -75.163789, 39.952335, 0, 0, 1),
(13, 'Austin', 'US', -97.7430608, 30.267153, 0, 0, 1),
(14, 'Washington DC', 'US', -77.0363658, 38.8951118, 0, 0, 1),
(15, 'Dallas', 'US', -96.769923, 32.802955, 0, 0, 1),
(16, 'San Diego', 'US', -117.1572551, 32.7153292, 0, 0, 1),
(17, 'Denver', 'US', -104.9847034, 39.7391536, 0, 0, 1),
(18, 'Houston', 'US', -95.3830615, 29.7628844, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `marketpoint`
--

CREATE TABLE IF NOT EXISTS `marketpoint` (
  `idmarketpoint` int(11) NOT NULL,
  `point` point NOT NULL,
  PRIMARY KEY  (`idmarketpoint`),
  SPATIAL KEY `market_point` (`point`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Market point details';

--
-- Dumping data for table `marketpoint`
--

INSERT INTO `marketpoint` (`idmarketpoint`, `point`) VALUES
(1, '\0\0\0\0\0\0\0ÌŽžl†F@ž¼~wU"@'),
(2, '\0\0\0\0\0\0\0çß.ûunG@AD!Ss@'),
(3, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(4, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(5, '\0\0\0\0\0\0\0 êãF6Æ9@…LèdTÀ'),
(6, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(7, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(8, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(9, '\0\0\0\0\0\0\0#ƒÜE˜ÍG@8}â¥@•^À'),
(10, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(11, '\0\0\0\0\0\0\0ìQ¸…ÓE@9ž*:mØSÀ'),
(12, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(13, '\0\0\0\0\0\0\0>–#dD>@"¼âNŽoXÀ'),
(14, '\0\0\0\0\0\0\0Á¡“rC@Xl8ÑSBSÀ'),
(15, '\0\0\0\0\0\0\0p”¼:Çf@@\\kF1XÀ'),
(16, '\0\0\0\0\0\0\0Úï?è[@@Eè±wJ]À'),
(17, '\0\0\0\0\0\0\0?\\Í•œÞC@¤Ðha?ZÀ'),
(18, '\0\0\0\0\0\0\0ë \\dLÃ=@Ô¶a„ØWÀ');

-- --------------------------------------------------------

--
-- Table structure for table `request_city`
--

CREATE TABLE IF NOT EXISTS `request_city` (
  `id` int(11) NOT NULL auto_increment,
  `city` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `request_date` date NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='US states' AUTO_INCREMENT=41 ;

--
-- Dumping data for table `request_city`
--

INSERT INTO `request_city` (`id`, `city`, `state`, `email`, `request_date`) VALUES
(1, 'test', 'Arizona', 'abc@rediffmail.com', '2010-07-12'),
(2, 'Milwaukee', 'Wisconsin', 'bob@bob.com', '2010-07-12'),
(3, 'Warren', 'New Jersey', 'kathie1126@gmail.com', '2010-07-29'),
(4, 'Philadelphia', 'Pennsylvania', 'dvisby602@comcast.net', '2010-07-29'),
(5, 'Raleigh', 'North Carolina', 'php.lancer.guru@gmail.com', '2010-07-30'),
(6, 'Dallas', 'Texas', 'b_chauza@yahoo.com', '2010-09-02'),
(7, 'libertyville', 'Illinois', 'anne.thompson@alliancefirepro.us', '2010-09-14'),
(8, 'Niles', 'Illinois', 'otpsusan@gmail.com', '2010-09-28'),
(9, 'Washington', 'District Of Columbia', 'osborne891@comcast.net', '2010-09-28'),
(10, 'Denver', 'Colorado', 'mylewisjd@aol.com', '2010-09-29'),
(11, 'San Diego', 'California', 'leese_sd@hotmail.com', '2010-09-29'),
(12, 'Detroit', 'Michigan', 'HieberCJ@aol.com', '2010-10-01'),
(13, 'geneva', 'Indiana', 'mmgeraty@yahoo.com', '2010-10-01'),
(14, 'geneva', 'Illinois', 'mmgeraty@yahoo.com', '2010-10-01'),
(15, 'lincolnwood', 'Illinois', 'mihaelatomuta@yahoo.com', '2010-10-07'),
(16, 'lombard', 'Illinois', 'ericsiewert@clear.net', '2010-10-08'),
(17, 'AURORA ', 'Illinois', 'leon.malinowski@sbcglobal.net', '2010-10-14'),
(18, 'wantagh', 'New York', 'vnp133@verizon.net', '2010-11-09'),
(19, 'centerport', 'New York', 'mdspeedy2001@yahoo.com', '2010-11-12'),
(20, 'Janesville', 'Wisconsin', 'tmikkim@hotmail.com', '2010-11-18'),
(21, 'mesa', 'Arizona', 'cookiebuddy3@aol.com', '2010-11-30'),
(22, 'riverside', 'California', 'jenna.monte@gmail.com', '2010-12-09'),
(23, 'warwick', 'Rhode Island', 'asshole@yahoo.com', '2010-12-12'),
(24, 'st louis', 'Missouri', 'chrisdickey@prodigy.net', '2010-12-16'),
(25, 'salem', 'New Hampshire', 'mcclurecrew@yahoo.com', '2010-12-17'),
(26, 'Kankakee', 'Illinois', 'tutt1@illinois.edu', '2010-12-23'),
(27, 'quincy', 'Massachusetts', 'elizabeth.reese@mygait.com', '2010-12-23'),
(28, 'fairfield', 'Connecticut', 'feaguilar@gmail.com', '2010-12-29'),
(29, 'Oak Brook', 'Illinois', 'blnboty55@yahoo.com', '2011-01-01'),
(30, 'killeen', 'Texas', 'kimbertravel@gmail.com', '2011-01-02'),
(31, 'santa ana', 'California', 'nunez.patricia70@gmail.com', '2011-01-03'),
(32, 'detroit', 'Michigan', 'celinge1@hfhs.org', '2011-01-09'),
(33, 'houston', 'Texas', 'hafsak08@gmail.com', '2011-01-10'),
(34, 'dayton', 'Ohio', 'jjenkins@mvcdc.org', '2011-01-14'),
(35, 'Portland', 'Maine', 'thekikachic8901@aol.com', '2011-01-14'),
(36, 'Charlotte', 'North Carolina', 'kelli@tailinggroup.com', '2011-01-16'),
(37, 'san antonio', 'Texas', 'angela@sanantoniocc.com', '2011-01-25'),
(38, 'houston', 'Texas', 'hunnypot1076@att.net', '2011-01-26'),
(39, 'Fort Worth', 'Texas', 'olgbeach142@sbcglobal.net', '2011-02-12'),
(40, 'houston', 'Texas', 'kvbryant50@gmail.com', '2011-02-14');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE IF NOT EXISTS `state` (
  `idstate` int(11) NOT NULL auto_increment,
  `name` varchar(50) character set utf8 collate utf8_unicode_ci NOT NULL,
  `code` varchar(3) character set utf8 collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`idstate`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='US states' AUTO_INCREMENT=65 ;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`idstate`, `name`, `code`) VALUES
(1, 'Alabama', 'AL'),
(2, 'Alaska', 'AK'),
(3, 'Arizona', 'AZ'),
(4, 'Arkansas', 'AR'),
(5, 'California', 'CA'),
(6, 'Colorado', 'CO'),
(7, 'Connecticut', 'CT'),
(8, 'Delaware', 'DE'),
(9, 'District Of Columbia', 'DC'),
(10, 'Florida', 'FL'),
(11, 'Georgia', 'GA'),
(12, 'Hawaii', 'HI'),
(13, 'Idaho', 'ID'),
(14, 'Illinois', 'IL'),
(15, 'Indiana', 'IN'),
(16, 'Iowa', 'IA'),
(17, 'Kansas', 'KS'),
(18, 'Kentucky', 'KY'),
(19, 'Louisiana', 'LA'),
(20, 'Maine', 'ME'),
(21, 'Maryland', 'MD'),
(22, 'Massachusetts', 'MA'),
(23, 'Michigan', 'MI'),
(24, 'Minnesota', 'MN'),
(25, 'Mississippi', 'MS'),
(26, 'Missouri', 'MO'),
(27, 'Montana', 'MT'),
(28, 'Nebraska', 'NE'),
(29, 'Nevada', 'NV'),
(30, 'New Hampshire', 'NH'),
(31, 'New Jersey', 'NJ'),
(32, 'New Mexico', 'NM'),
(33, 'New York', 'NY'),
(34, 'North Carolina', 'NC'),
(35, 'North Dakota', 'ND'),
(36, 'Ohio', 'OH'),
(37, 'Oklahoma', 'OK'),
(38, 'Oregon', 'OR'),
(39, 'Pennsylvania', 'PA'),
(40, 'Rhode Island', 'RI'),
(41, 'South Carolina', 'SC'),
(42, 'South Dakota', 'SD'),
(43, 'Tennessee', 'TN'),
(44, 'Texas', 'TX'),
(45, 'Utah', 'UT'),
(46, 'Vermont', 'VT'),
(47, 'Virginia', 'VA'),
(48, 'Washington', 'WA'),
(49, 'West Virginia', 'WV'),
(50, 'Wisconsin', 'WI'),
(51, 'Wyoming', 'WY'),
(52, 'Ontario', 'ON'),
(53, 'Quebec', 'QC'),
(54, 'British Columbia', 'BC'),
(55, 'Alberta', 'AB'),
(56, 'Manitoba', 'MB'),
(57, 'Saskatchewan', 'SK'),
(58, 'Nova Scotia', 'NS'),
(59, 'New Brunswick', 'NB'),
(60, 'Newfoundland and Labrador     ', 'NL'),
(61, 'Prince Edward Island', 'PE'),
(62, 'Northwest Territories', 'NT'),
(63, 'Yukon', 'YT'),
(64, 'Nunavut', 'NU');

-- --------------------------------------------------------

--
-- Table structure for table `tempparse`
--

CREATE TABLE IF NOT EXISTS `tempparse` (
  `id` int(11) NOT NULL auto_increment,
  `iddnutwitteraccount` int(11) NOT NULL,
  `twitterid` bigint(20) unsigned NOT NULL,
  `screenname` varchar(100) character set utf8 collate utf8_unicode_ci NOT NULL,
  `text` text character set utf8 collate utf8_unicode_ci NOT NULL,
  `bitlyurl` varchar(100) character set utf8 collate utf8_unicode_ci default NULL,
  `createdon` datetime NOT NULL,
  `isfree` tinyint(1) NOT NULL default '0',
  `isdeal` tinyint(1) NOT NULL default '0',
  `isevent` tinyint(1) NOT NULL default '0',
  `dealtype` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=141097 ;

--
-- Dumping data for table `tempparse`
--


-- --------------------------------------------------------

--
-- Table structure for table `top_deal_campaigns`
--

CREATE TABLE IF NOT EXISTS `top_deal_campaigns` (
  `idcampaign` int(11) NOT NULL auto_increment,
  `idmarket` int(11) default NULL,
  `idcategory` int(11) default NULL,
  `idbusiness` int(11) NOT NULL,
  `campaignname` varchar(256) collate utf8_unicode_ci NOT NULL,
  `createddate` datetime NOT NULL,
  `createdby` int(11) NOT NULL,
  `no_of_clicks` int(11) NOT NULL,
  `status` tinyint(3) NOT NULL,
  PRIMARY KEY  (`idcampaign`),
  KEY `idbusiness` (`idbusiness`),
  KEY `tdc_status_market` (`status`,`idmarket`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=29 ;

--
-- Dumping data for table `top_deal_campaigns`
--


-- --------------------------------------------------------

--
-- Table structure for table `top_deal_campaign_clicks`
--

CREATE TABLE IF NOT EXISTS `top_deal_campaign_clicks` (
  `idcampaign_clicks` int(11) NOT NULL auto_increment,
  `idcampaign` int(11) NOT NULL,
  `iduser` int(11) default NULL,
  `ipaddress` varchar(15) collate utf8_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY  (`idcampaign_clicks`),
  KEY `idcampaign` (`idcampaign`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=38 ;

--
-- Dumping data for table `top_deal_campaign_clicks`
--


-- --------------------------------------------------------

--
-- Table structure for table `top_deal_campaign_dates`
--

CREATE TABLE IF NOT EXISTS `top_deal_campaign_dates` (
  `id` int(11) NOT NULL auto_increment,
  `idcampaign` int(11) NOT NULL,
  `fromdate` date NOT NULL,
  `todate` date NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `idcampaign` (`idcampaign`),
  KEY `tdcd_fromdate` (`fromdate`),
  KEY `tdcd_todate` (`todate`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=32 ;

--
-- Dumping data for table `top_deal_campaign_dates`
--


-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `iduser` int(11) NOT NULL auto_increment,
  `login` varchar(50) character set utf8 collate utf8_unicode_ci NOT NULL,
  `password` varchar(32) character set utf8 collate utf8_unicode_ci NOT NULL,
  `salt` varchar(3) character set utf8 collate utf8_unicode_ci NOT NULL,
  `facebookid` double default NULL,
  `email` varchar(50) character set utf8 collate utf8_unicode_ci NOT NULL,
  `bio` text character set utf8 collate utf8_unicode_ci,
  `url` varchar(256) character set utf8 collate utf8_unicode_ci default NULL,
  `lastloggedin` datetime default NULL,
  `idmarket` int(11) NOT NULL,
  `image` varchar(45) character set utf8 collate utf8_unicode_ci default NULL,
  `thumbimage` varchar(45) character set utf8 collate utf8_unicode_ci default NULL,
  `createdon` datetime NOT NULL,
  `latitude` double default NULL,
  `totalvisits` int(11) NOT NULL,
  `status` int(1) NOT NULL,
  `address` varchar(100) character set utf8 collate utf8_unicode_ci default NULL,
  `idstate` int(11) default NULL,
  `zip` varchar(10) character set utf8 collate utf8_unicode_ci default NULL,
  `longitude` double default NULL,
  `logintoken` varchar(50) character set utf8 collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`iduser`),
  KEY `fk_user_idmarket` (`idmarket`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='This store the user records' AUTO_INCREMENT=83 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`iduser`, `login`, `password`, `salt`, `facebookid`, `email`, `bio`, `url`, `lastloggedin`, `idmarket`, `image`, `thumbimage`, `createdon`, `latitude`, `totalvisits`, `status`, `address`, `idstate`, `zip`, `longitude`, `logintoken`) VALUES
(1, 'Levi Bergovoy', '934a8ad10034f9cc92eafcae644d482c', 'ZG2', NULL, 'levibergovoy@gmail.com', 'Founder of DealsNear.me', '', '2011-02-07 11:24:18', 3, '855140601_picture', '855140601_picture', '2010-07-29 04:42:40', 41.850033, 0, 1, '', NULL, '60035', -87.6500523, 'fc46fcb61512ea9c7db4605a758eb674569b1320'),
(2, 'eleizer2', '6a49c1392152eb8e192a07581cb68a2d', 'Qb0', NULL, 'eleizer2@gmail.com', 'I love good deals', '', '2011-02-13 16:10:09', 4, '24745757_default_profile_1_normal.png', '24745757_default_profile_1_normal.png', '2010-07-29 10:16:35', 40.7142691, 0, 1, '', NULL, '', -74.0059729, '95943e0134c500a3400b21923e7a12d4ff03720d'),
(3, 'Adam Palmer', 'ccf0d247e6780738fbaee0abcd00a76e', 'zM5', NULL, 'adam@apnicsolutions.com', '', '', '2010-09-17 06:27:31', 3, '501019495_picture', '501019495_picture', '2010-07-29 10:45:51', 41.850033, 0, 1, '', NULL, '', -87.6500523, 'aa9d8c6f4d2782122e16fdcc7522ab1058cb7465'),
(4, 'Lauren Kate Robin', 'eca753eb30d266eba93c2201a4f70dc6', 'pX8', NULL, 'lkgoldstein@hotmail.com', NULL, NULL, '2010-07-29 10:49:24', 3, '755729366_picture', '755729366_picture', '2010-07-29 10:49:24', 41.850033, 0, 1, NULL, NULL, NULL, -87.6500523, '53a65b7ffe5862be2ee07a6640e61ba5c5fe8d5d'),
(5, 'Jennifer Ross', 'c153d3c8f6906394a77f9bc8fc6460f0', 'dD3', NULL, 'missross20@hotmail.com', NULL, NULL, '2010-07-29 10:55:21', 3, '506279709_picture', '506279709_picture', '2010-07-29 10:55:21', 41.850033, 0, 1, NULL, NULL, NULL, -87.6500523, NULL),
(6, 'Zalmi Duchman', 'f692b9b826369529b1924773e6ce0618', 'wR8', NULL, 'zalmi@thefreshdiet.com', NULL, NULL, '2010-07-29 12:19:33', 5, '1079751417_picture', '1079751417_picture', '2010-07-29 12:19:33', 25.7742657, 0, 1, NULL, NULL, NULL, -80.1936589, NULL),
(7, 'Ethel La Fiura Colletti', '2d23dc6f8684ee4b8c58a89d758278fc', 'YR8', NULL, 'ethelcolletti717@yahoo.com', NULL, NULL, '2010-07-29 13:01:47', 3, '539463148_picture', '539463148_picture', '2010-07-29 13:01:47', 41.850033, 0, 1, NULL, NULL, NULL, -87.6500523, '63611478e34294631e87b40c7ccb8d005dec3d5b'),
(8, 'Amy Latifi', '78be16d8574ead2281bd37ac963f0b1a', 'Oc8', NULL, 'alatifi@goldbergsegalla.com ', NULL, NULL, '2010-07-29 13:36:01', 4, '1121630047_picture', '1121630047_picture', '2010-07-29 13:36:01', 40.7142691, 0, 1, NULL, NULL, NULL, -74.0059729, NULL),
(9, 'mloksen', 'bffe10b4c89a4a0da002088dccf8f551', 'sf1', NULL, 'mloksen@gmail.com', NULL, NULL, '2010-07-29 13:42:02', 4, '657727272_picture', '657727272_picture', '2010-07-29 13:42:02', 40.7142691, 0, 1, NULL, NULL, NULL, -74.0059729, NULL),
(10, 'Tina Hurban', '7700b6ac7fb38a9016ef2bab63d63b27', 'Ch2', NULL, 'tlhurban@gmail.com', NULL, NULL, '2010-07-29 14:26:07', 7, '1208495879_picture', '1208495879_picture', '2010-07-29 14:26:07', 34.0522342, 0, 1, NULL, NULL, NULL, -118.2436849, 'c37a83aa4f0b320fe2f1b269507ddfd785b3dedc');

-- --------------------------------------------------------

--
-- Table structure for table `userdealrating`
--

CREATE TABLE IF NOT EXISTS `userdealrating` (
  `iduserdealrating` int(11) NOT NULL auto_increment,
  `iduser` int(11) NOT NULL,
  `iddeal` int(11) NOT NULL,
  `rating` tinyint(4) NOT NULL,
  `ratedon` datetime NOT NULL,
  PRIMARY KEY  (`iduserdealrating`),
  KEY `fk_iduser` (`iduser`),
  KEY `fk_iddeal` (`iddeal`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='This store the ratings given by a user for a particular deal' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `userdealrating`
--


-- --------------------------------------------------------

--
-- Table structure for table `userdealreccomend`
--

CREATE TABLE IF NOT EXISTS `userdealreccomend` (
  `iduserdealreccomend` int(11) NOT NULL auto_increment,
  `iduser` int(11) NOT NULL,
  `iddeal` int(11) NOT NULL,
  `idtouser` int(11) NOT NULL,
  `recommendedon` datetime NOT NULL,
  PRIMARY KEY  (`iduserdealreccomend`),
  KEY `fk_userdealrecommend_iduser` (`iduser`),
  KEY `fk_userdealrecommend_iddeal` (`iddeal`),
  KEY `fk_userdealrecommend_idtouser` (`idtouser`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='This stores deals recommended by the user' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `userdealreccomend`
--


-- --------------------------------------------------------

--
-- Table structure for table `userdealsave`
--

CREATE TABLE IF NOT EXISTS `userdealsave` (
  `iduserdealsave` int(11) NOT NULL auto_increment,
  `iduser` int(11) NOT NULL,
  `iddeal` int(11) NOT NULL,
  `savedon` datetime NOT NULL,
  PRIMARY KEY  (`iduserdealsave`),
  KEY `fk_userdealsave_iduser` (`iduser`),
  KEY `fk_userdealsave_iddeal` (`iddeal`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='This store user''s saved deals' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `userdealsave`
--


-- --------------------------------------------------------

--
-- Table structure for table `userdealshare`
--

CREATE TABLE IF NOT EXISTS `userdealshare` (
  `iduserdealshare` int(11) NOT NULL auto_increment,
  `iduser` int(11) NOT NULL,
  `iddeal` int(11) NOT NULL,
  `sharedon` datetime NOT NULL,
  PRIMARY KEY  (`iduserdealshare`),
  KEY `fk_userdealshare_iduser` (`iduser`),
  KEY `fk_userdealshare_iddeal` (`iddeal`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='This stores deals shared by the user' AUTO_INCREMENT=57 ;

--
-- Dumping data for table `userdealshare`
--

INSERT INTO `userdealshare` (`iduserdealshare`, `iduser`, `iddeal`, `sharedon`) VALUES
(1, 12, 802, '2010-05-12 14:15:25'),
(2, 8, 981, '2010-05-12 20:59:28'),
(3, 6, 2390, '2010-05-18 10:04:09'),
(4, 8, 4957, '2010-05-25 12:50:59'),
(5, 8, 9739, '2010-06-06 20:08:24'),
(6, 19, 17212, '2010-06-28 16:26:18'),
(7, 18, 4645, '2010-07-09 10:17:33'),
(8, 18, 4690, '2010-07-09 11:27:58'),
(9, 18, 5766, '2010-07-12 14:36:36'),
(10, 18, 5769, '2010-07-12 16:52:13'),
(11, 18, 256, '2010-07-13 07:34:35'),
(12, 18, 3072, '2010-07-13 07:34:41'),
(13, 18, 6926, '2010-07-14 11:34:05'),
(14, 18, 7750, '2010-07-15 14:40:13'),
(18, 33, 13064, '2010-07-26 17:36:03'),
(19, 74, 13943, '2010-07-27 21:22:27'),
(20, 18, 14033, '2010-07-28 08:31:42'),
(21, 18, 14502, '2010-07-28 17:08:48'),
(23, 2, 14831, '2010-07-29 10:17:39'),
(24, 1, 14914, '2010-07-29 11:36:55'),
(25, 1, 14947, '2010-07-29 12:01:26'),
(26, 6, 14970, '2010-07-29 12:19:40'),
(27, 1, 4957, '2010-07-29 14:53:05'),
(28, 1, 15235, '2010-07-29 16:37:23'),
(29, 3, 14914, '2010-07-30 07:29:40'),
(30, 1, 15491, '2010-07-30 09:28:29'),
(31, 1, 15659, '2010-07-30 12:24:40'),
(32, 3, 15790, '2010-07-30 14:46:36'),
(33, 12, 15130, '2010-07-30 16:22:36'),
(34, 1, 16191, '2010-07-31 13:33:25'),
(35, 1, 16202, '2010-07-31 13:34:44'),
(36, 1, 16785, '2010-08-02 11:31:14'),
(37, 6, 16818, '2010-08-02 11:42:59'),
(38, 1, 16810, '2010-08-02 11:55:36'),
(39, 1, 16809, '2010-08-02 12:03:33'),
(40, 1, 17605, '2010-08-03 12:51:47'),
(41, 1, 17631, '2010-08-03 13:25:21'),
(42, 1, 18082, '2010-08-04 08:02:13'),
(43, 2, 14061, '2010-08-04 16:27:38'),
(44, 12, 22720, '2010-08-16 17:29:00'),
(45, 1, 26243, '2010-08-24 17:04:19'),
(46, 33, 26903, '2010-08-25 19:22:00'),
(47, 33, 26748, '2010-08-25 19:28:04'),
(48, 3, 27955, '2010-08-27 17:43:48'),
(49, 1, 35249, '2010-09-14 16:52:26'),
(50, 40, 37256, '2010-09-18 07:10:07'),
(51, 55, 45729, '2010-10-06 01:57:57'),
(52, 55, 45728, '2010-10-06 01:58:15'),
(53, 1, 45739, '2010-10-06 09:18:31'),
(54, 60, 56218, '2010-10-26 10:51:14'),
(55, 1, 97197, '2010-12-28 12:53:02'),
(56, 1, 98979, '2010-12-30 15:27:52');

-- --------------------------------------------------------

--
-- Table structure for table `userdealspam`
--

CREATE TABLE IF NOT EXISTS `userdealspam` (
  `iduserdealspam` int(11) NOT NULL auto_increment,
  `iduser` int(11) NOT NULL,
  `iddeal` int(11) NOT NULL,
  `createdon` datetime NOT NULL,
  PRIMARY KEY  (`iduserdealspam`),
  KEY `fk_userdealspam_iduser` (`iduser`),
  KEY `fk_userdealspam_iddeal` (`iddeal`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='This stores the deals that are marked as spams' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `userdealspam`
--


-- --------------------------------------------------------

--
-- Table structure for table `userdealview`
--

CREATE TABLE IF NOT EXISTS `userdealview` (
  `iduserdealview` int(11) NOT NULL auto_increment,
  `iduser` int(11) NOT NULL,
  `iddeal` int(11) NOT NULL,
  `totalviews` int(11) NOT NULL,
  `lastviewedon` datetime NOT NULL,
  PRIMARY KEY  (`iduserdealview`),
  KEY `fk_userdealview_iduser` (`iduser`),
  KEY `fk_userdealview_iddeal` (`iddeal`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='This store the deals that are viewed by users' AUTO_INCREMENT=483 ;

--
-- Dumping data for table `userdealview`
--


-- --------------------------------------------------------

--
-- Table structure for table `userdealvotes`
--

CREATE TABLE IF NOT EXISTS `userdealvotes` (
  `iduserdealvotes` int(11) NOT NULL auto_increment,
  `iduser` int(11) NOT NULL,
  `iddeal` int(11) NOT NULL,
  `voteup` tinyint(1) NOT NULL,
  `votedown` tinyint(1) NOT NULL,
  `createdon` datetime NOT NULL,
  PRIMARY KEY  (`iduserdealvotes`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1656 ;

--
-- Dumping data for table `userdealvotes`
--

INSERT INTO `userdealvotes` (`iduserdealvotes`, `iduser`, `iddeal`, `voteup`, `votedown`, `createdon`) VALUES
(1, 1, 14747, 1, 0, '2010-07-29 04:43:33'),
(2, 1, 14718, 1, 0, '2010-07-29 04:43:55'),
(3, 1, 14738, 1, 0, '2010-07-29 09:18:55'),
(4, 1, 14797, 1, 0, '2010-07-29 09:19:08'),
(5, 1, 14778, 1, 0, '2010-07-29 09:19:25'),
(6, 1, 14764, 1, 0, '2010-07-29 09:27:04'),
(7, 1, 14777, 1, 0, '2010-07-29 09:27:06'),
(8, 1, 14769, 1, 0, '2010-07-29 09:27:16'),
(9, 1, 14792, 1, 0, '2010-07-29 09:37:37'),
(10, 1, 14813, 1, 0, '2010-07-29 09:52:31');

-- --------------------------------------------------------

--
-- Table structure for table `userexternalaccount`
--

CREATE TABLE IF NOT EXISTS `userexternalaccount` (
  `iduserexternalaccount` int(11) NOT NULL auto_increment,
  `iduser` int(11) NOT NULL,
  `externalaccounttype` int(1) NOT NULL,
  `username` varchar(45) character set utf8 collate utf8_unicode_ci default NULL,
  `iduserexternal` double default NULL,
  `accesskey` varchar(45) character set utf8 collate utf8_unicode_ci default NULL,
  `accesssecret` varchar(45) character set utf8 collate utf8_unicode_ci default NULL,
  `allowstream` int(1) NOT NULL,
  PRIMARY KEY  (`iduserexternalaccount`),
  KEY `fk_userexternalaccount_iduser` (`iduser`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='This stores the user details for external accounts' AUTO_INCREMENT=181 ;

--
-- Dumping data for table `userexternalaccount`
--

INSERT INTO `userexternalaccount` (`iduserexternalaccount`, `iduser`, `externalaccounttype`, `username`, `iduserexternal`, `accesskey`, `accesssecret`, `allowstream`) VALUES
(94, 1, 1, 'Facebook_855140601', 855140601, NULL, NULL, 0),
(95, 1, 2, 'levibergovoy', 18245765, '18245765-B2J40T9Cc7E7VutEYfaWncJpivG0VH5x5cti', 'MsZANDeCWrMaSFKgLR5adj0iqtlXz4Zj06d5nHqWeA', 0),
(96, 2, 2, 'eleizer2', 24745757, 'sq0gj02xmcQ2ZmlvmFtNxw', 'qfP1Vfo2BjTR3lA0FjbXJzeZik1JsoTgGEujbNxco', 0),
(97, 3, 1, 'Facebook_501019495', 501019495, NULL, NULL, 0),
(98, 4, 1, 'Facebook_755729366', 755729366, NULL, NULL, 0),
(99, 5, 1, 'Facebook_506279709', 506279709, NULL, NULL, 0),
(100, 6, 1, 'Facebook_1079751417', 1079751417, NULL, NULL, 0),
(101, 7, 1, 'Facebook_539463148', 539463148, NULL, NULL, 0),
(102, 8, 1, 'Facebook_1121630047', 1121630047, NULL, NULL, 0),
(103, 9, 1, 'Facebook_657727272', 657727272, NULL, NULL, 0),
(104, 10, 1, 'Facebook_1208495879', 1208495879, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `userfollows`
--

CREATE TABLE IF NOT EXISTS `userfollows` (
  `iduserfollows` int(11) NOT NULL auto_increment,
  `iduser` int(11) NOT NULL,
  `idbusiness` int(11) NOT NULL,
  PRIMARY KEY  (`iduserfollows`),
  KEY `fk_userfollows_iduser` (`iduser`),
  KEY `fk_userfollows_idbusiness` (`idbusiness`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=452 ;

--
-- Dumping data for table `userfollows`
--

INSERT INTO `userfollows` (`iduserfollows`, `iduser`, `idbusiness`) VALUES
(81, 6, 5),
(386, 1, 50);

-- --------------------------------------------------------

--
-- Table structure for table `userfriend`
--

CREATE TABLE IF NOT EXISTS `userfriend` (
  `iduserfriend` int(11) NOT NULL auto_increment,
  `iduser` int(11) NOT NULL,
  `idfriend` int(11) NOT NULL,
  `addedon` datetime NOT NULL,
  PRIMARY KEY  (`iduserfriend`),
  KEY `fk_userfriend_iduser` (`iduser`),
  KEY `fk_userfriend_idfriend` (`idfriend`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='This stores the user friends' AUTO_INCREMENT=24 ;

--
-- Dumping data for table `userfriend`
--

INSERT INTO `userfriend` (`iduserfriend`, `iduser`, `idfriend`, `addedon`) VALUES
(14, 5, 3, '2010-07-29 10:57:41'),
(15, 6, 1, '2010-07-29 12:31:27'),
(16, 6, 3, '2010-07-29 12:31:52'),
(17, 1, 2, '2010-08-09 17:36:05'),
(18, 1, 3, '2010-08-13 08:26:26');

-- --------------------------------------------------------

--
-- Table structure for table `userpoint`
--

CREATE TABLE IF NOT EXISTS `userpoint` (
  `iduserpoint` int(11) NOT NULL,
  `point` point NOT NULL,
  PRIMARY KEY  (`iduserpoint`),
  SPATIAL KEY `user_point` (`point`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='User point details';

--
-- Dumping data for table `userpoint`
--

INSERT INTO `userpoint` (`iduserpoint`, `point`) VALUES
(5, '\0\0\0\0\0\0\0®Gáz”<@…ëQ¸US@'),
(6, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(8, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(9, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(12, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(13, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(18, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(19, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(29, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(33, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(39, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(38, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(37, '\0\0\0\0\0\0\0†åÏ·eD@LnY,XÀ'),
(36, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(35, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(34, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(32, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(31, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(30, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(28, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(27, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(48, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(49, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(26, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(25, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(24, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(23, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(22, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(21, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(20, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(17, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(16, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(15, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(14, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(61, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(11, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(10, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(7, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(65, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(66, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(4, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(68, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(69, '\0\0\0\0\0\0\0t»ò´WôD@†WÅÀéUÀ'),
(3, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(2, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(1, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(73, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(74, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(75, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(76, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(40, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(42, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(43, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(44, '\0\0\0\0\0\0\0Ê]:œ¯A@Üˆ˜]À'),
(45, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(46, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(47, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(50, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(51, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(52, '\0\0\0\0\0\0\0RšÍã0ãB@ßû´×š^À'),
(53, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(54, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(55, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(60, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(58, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(59, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(62, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(63, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(64, '\0\0\0\0\0\0\0Á¡“rC@Xl8ÑSBSÀ'),
(67, '\0\0\0\0\0\0\0 êãF6Æ9@…LèdTÀ'),
(70, '\0\0\0\0\0\0\0p”¼:Çf@@\\kF1XÀ'),
(71, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(72, '\0\0\0\0\0\0\0©ÂŸáÍìD@"LötšéUÀ'),
(77, '\0\0\0\0\0\0\0‡ðyá-E@XËøRÓÃQÀ'),
(78, '\0\0\0\0\0\0\0…|+m[D@cŠ(Üa€RÀ'),
(79, '\0\0\0\0\0\0\0ëÿæùC@sœÛ„{ÊRÀ'),
(80, '\0\0\0\0\0\0\0^íÍßß@@Û!´ÔUÀ'),
(81, '\0\0\0\0\0\0\0p”¼:Çf@@\\kF1XÀ'),
(82, '\0\0\0\0\0\0\0 êãF6Æ9@…LèdTÀ');

-- --------------------------------------------------------

--
-- Table structure for table `usersearch`
--

CREATE TABLE IF NOT EXISTS `usersearch` (
  `idusersearch` int(11) NOT NULL auto_increment,
  `iduser` int(11) NOT NULL,
  `searchref` varchar(100) character set utf8 collate utf8_unicode_ci NOT NULL,
  `searchvars` text character set utf8 collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`idusersearch`),
  KEY `fk_usersearch_iduser` (`iduser`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='This stores the user searches' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `usersearch`
--


-- --------------------------------------------------------

--
-- Table structure for table `zipcode`
--

CREATE TABLE IF NOT EXISTS `zipcode` (
  `idzipcode` int(11) NOT NULL auto_increment,
  `country` varchar(45) character set utf8 collate utf8_unicode_ci NOT NULL,
  `zipcode` varchar(10) character set utf8 collate utf8_unicode_ci NOT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  PRIMARY KEY  (`idzipcode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='This stores all the zip codes' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `zipcode`
--


--
-- Constraints for dumped tables
--

--
-- Constraints for table `business`
--
ALTER TABLE `business`
  ADD CONSTRAINT `fk_business_idcategory` FOREIGN KEY (`idcategory`) REFERENCES `category` (`idcategory`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_business_idmarket` FOREIGN KEY (`idmarket`) REFERENCES `market` (`idmarket`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `businesslocation`
--
ALTER TABLE `businesslocation`
  ADD CONSTRAINT `fk_businesslocation_idbusiness` FOREIGN KEY (`idbusiness`) REFERENCES `business` (`idbusiness`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `deal`
--
ALTER TABLE `deal`
  ADD CONSTRAINT `fk_deal_idbusiness` FOREIGN KEY (`idbusiness`) REFERENCES `business` (`idbusiness`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_deal_idcategory` FOREIGN KEY (`idcategory`) REFERENCES `category` (`idcategory`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_deal_idmarket` FOREIGN KEY (`idmarket`) REFERENCES `market` (`idmarket`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `dnutwitteraccount`
--
ALTER TABLE `dnutwitteraccount`
  ADD CONSTRAINT `fk_dnutwitteraccount_idmarket` FOREIGN KEY (`idmarket`) REFERENCES `market` (`idmarket`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `top_deal_campaigns`
--
ALTER TABLE `top_deal_campaigns`
  ADD CONSTRAINT `top_deal_campaigns_ibfk_1` FOREIGN KEY (`idbusiness`) REFERENCES `business` (`idbusiness`) ON DELETE CASCADE;

--
-- Constraints for table `top_deal_campaign_clicks`
--
ALTER TABLE `top_deal_campaign_clicks`
  ADD CONSTRAINT `top_deal_campaign_clicks_ibfk_1` FOREIGN KEY (`idcampaign`) REFERENCES `top_deal_campaigns` (`idcampaign`) ON DELETE CASCADE;

--
-- Constraints for table `top_deal_campaign_dates`
--
ALTER TABLE `top_deal_campaign_dates`
  ADD CONSTRAINT `top_deal_campaign_dates_ibfk_1` FOREIGN KEY (`idcampaign`) REFERENCES `top_deal_campaigns` (`idcampaign`) ON DELETE CASCADE;

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `fk_user_idmarket` FOREIGN KEY (`idmarket`) REFERENCES `market` (`idmarket`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `userdealrating`
--
ALTER TABLE `userdealrating`
  ADD CONSTRAINT `fk_iddeal` FOREIGN KEY (`iddeal`) REFERENCES `deal` (`iddeal`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_iduser` FOREIGN KEY (`iduser`) REFERENCES `user` (`iduser`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `userdealreccomend`
--
ALTER TABLE `userdealreccomend`
  ADD CONSTRAINT `fk_userdealrecommend_iddeal` FOREIGN KEY (`iddeal`) REFERENCES `deal` (`iddeal`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_userdealrecommend_idtouser` FOREIGN KEY (`idtouser`) REFERENCES `user` (`iduser`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_userdealrecommend_iduser` FOREIGN KEY (`iduser`) REFERENCES `user` (`iduser`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `userdealsave`
--
ALTER TABLE `userdealsave`
  ADD CONSTRAINT `fk_userdealsave_iddeal` FOREIGN KEY (`iddeal`) REFERENCES `deal` (`iddeal`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_userdealsave_iduser` FOREIGN KEY (`iduser`) REFERENCES `user` (`iduser`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `userdealspam`
--
ALTER TABLE `userdealspam`
  ADD CONSTRAINT `fk_userdealspam_iddeal` FOREIGN KEY (`iddeal`) REFERENCES `deal` (`iddeal`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_userdealspam_iduser` FOREIGN KEY (`iduser`) REFERENCES `user` (`iduser`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `userdealview`
--
ALTER TABLE `userdealview`
  ADD CONSTRAINT `fk_userdealview_iddeal` FOREIGN KEY (`iddeal`) REFERENCES `deal` (`iddeal`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_userdealview_iduser` FOREIGN KEY (`iduser`) REFERENCES `user` (`iduser`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `userexternalaccount`
--
ALTER TABLE `userexternalaccount`
  ADD CONSTRAINT `fk_userexternalaccount_iduser` FOREIGN KEY (`iduser`) REFERENCES `user` (`iduser`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `userfollows`
--
ALTER TABLE `userfollows`
  ADD CONSTRAINT `fk_userfollows_idbusiness` FOREIGN KEY (`idbusiness`) REFERENCES `business` (`idbusiness`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_userfollows_iduser` FOREIGN KEY (`iduser`) REFERENCES `user` (`iduser`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `userfriend`
--
ALTER TABLE `userfriend`
  ADD CONSTRAINT `fk_userfriend_idfriend` FOREIGN KEY (`idfriend`) REFERENCES `user` (`iduser`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_userfriend_iduser` FOREIGN KEY (`iduser`) REFERENCES `user` (`iduser`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `usersearch`
--
ALTER TABLE `usersearch`
  ADD CONSTRAINT `fk_usersearch_iduser` FOREIGN KEY (`iduser`) REFERENCES `user` (`iduser`) ON DELETE CASCADE ON UPDATE NO ACTION;
