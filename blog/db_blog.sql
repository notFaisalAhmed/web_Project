-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 16, 2018 at 10:55 PM
-- Server version: 5.7.20-log
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `name`) VALUES
(21, 'Technology'),
(23, 'Smart phone'),
(24, 'Science'),
(25, 'Computer accessories'),
(26, 'Television');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact`
--

CREATE TABLE `tbl_contact` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_contact`
--

INSERT INTO `tbl_contact` (`id`, `firstname`, `lastname`, `email`, `body`, `status`, `date`) VALUES
(1, 'Faisal', 'Ahmed', 'fa.babu@yahoo.com', 'This is our test Msg.', 1, '2018-04-14 21:17:54'),
(2, 'Kawsar', 'Khan', 'khan@yahoo.com', 'Jui Gui Jui Gui Jui Gui Jui Gui Jui Gui Jui Gui Jui Gui Jui Gui Jui Gui JuiJui Gui Jui Gui Jui Gui Jui Gui Jui Gui Jui Gui Jui Gui Jui Gui Jui Gui JuiJui Gui Jui Gui Jui Gui Jui Gui Jui Gui Jui Gui Jui Gui Jui Gui Jui Gui JuiJui Gui Jui Gui Jui Gui Jui Gui Jui Gui Jui Gui Jui Gui Jui Gui Jui Gui JuiJui Gui Jui Gui Jui Gui Jui Gui Jui Gui Jui Gui Jui Gui Jui Gui Jui Gui JuiJui Gui Jui Gui Jui Gui Jui Gui Jui Gui Jui Gui Jui Gui Jui Gui Jui Gui JuiJui Gui Jui Gui Jui Gui Jui Gui Jui Gui Jui Gui Jui Gui Jui Gui Jui Gui JuiJui Gui Jui Gui Jui Gui Jui Gui Jui Gui Jui Gui Jui Gui Jui Gui Jui Gui JuiJui Gui Jui Gui Jui Gui Jui Gui Jui Gui Jui Gui Jui Gui Jui Gui Jui Gui JuiJui Gui Jui Gui Jui Gui Jui Gui Jui Gui Jui Gui Jui Gui Jui Gui Jui Gui JuiJui Gui Jui Gui Jui Gui Jui Gui Jui Gui Jui Gui Jui Gui Jui Gui Jui Gui JuiJui Gui Jui Gui Jui Gui Jui Gui Jui Gui Jui Gui Jui Gui Jui Gui Jui Gui Jui', 1, '2018-04-14 22:02:32'),
(6, 'Abir', 'Mahmud', 'Abir@gmail.com', 'Abir Abir Abir Abir Abir Abir Abir Abir Abir Abir Abir Abir Abir Abir Abir Abir Abir Abir Abir Abir Abir Abir Abir Abir Abir Abir Abir Abir Abir Abir Abir Abir Abir Abir Abir Abir Abir Abir Abir Abir Abir Abir Abir Abir Abir Abir Abir Abir Abir Abir Abir Abir Abir Abir Abir Abir Abir Abir Abir Abir', 1, '2018-04-14 23:22:50'),
(8, 'Abdur', 'Rashid', 'Abdur@gmail.com', 'Abdur Abdur Abdur Abdur Abdur Abdur Abdur Abdur Abdur Abdur Abdur Abdur Abdur Abdur Abdur Abdur Abdur Abdur Abdur Abdur Abdur Abdur Abdur Abdur Abdur Abdur Abdur Abdur Abdur Abdur Abdur Abdur Abdur Abdur Abdur Abdur Abdur Abdur Abdur Abdur Abdur Abdur Abdur', 0, '2018-04-14 23:35:52');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_footer`
--

CREATE TABLE `tbl_footer` (
  `id` int(11) NOT NULL,
  `note` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_footer`
--

INSERT INTO `tbl_footer` (`id`, `note`) VALUES
(1, 'Project for WEB &amp; INTERNET LAB');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_page`
--

CREATE TABLE `tbl_page` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `body` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_page`
--

INSERT INTO `tbl_page` (`id`, `name`, `body`) VALUES
(1, 'About', '<p>This website is developed by <a href="https://www.facebook.com/profile.php?id=100002140375400" target="_blank">Faisal Ahmed</a> for educational porpose.</p>'),
(2, 'Privacy Policy', '<p>Privacy Policy</p>');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_post`
--

CREATE TABLE `tbl_post` (
  `id` int(11) NOT NULL,
  `cat` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `author` varchar(50) NOT NULL,
  `tags` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_post`
--

INSERT INTO `tbl_post` (`id`, `cat`, `title`, `body`, `image`, `author`, `tags`, `date`, `userid`) VALUES
(15, 21, '5 Mini PC that you can buy in 2018', '<p>We are all familiar with large&nbsp;<a href="https://www.lifewire.com/what-is-wi-fi-2377430">Wi-Fi</a> PC casings that are very heavy and not a good option when it comes to portability. Mini PCs have all the functionalities a computer needs including built-in speakers,&nbsp;<a href="https://www.lifewire.com/what-is-wi-fi-2377430">Wi-Fi</a>, Bluetooth etc. There is also the advantage of upgrading storage capacities. Some mini PCs offer you more convenience than a laptop except for the fact that you need a monitor. Now we are going to review Top 5 Mini PC based on specifications and price which will help you choose the best one for your work or personal use.</p>\r\n<h3>1. Apple Mac Mini (MGEN2)</h3>\r\n<p>We all know about the huge cost of MacBooks. If you want to experience Mac OS within a decent budget, this Apple Mac Mini will be the perfect one. The Mac Mini has a solid aluminum body which looks very premium and unique. Both sides are only 7.7 inches wide and the height is just only 1.4 inches!! 1TB of storage, 8 gigs of 1600MHz LPDDR3 RAM, Intel Core i5 2.6GHz dual-core processor (Up to 3.1GHz with Turbo Boost) are there to meet your daily computing tasks smoothly.</p>\r\n<p>This mini PC runs on Mac&nbsp;<a href="https://www.apple.com/lae/macos/high-sierra/">OS Sierra</a>&nbsp;and weighs only 1.20 kg. Moreover, it has all the latest connectivity features such as 4 USB 3 ports, SDXC card slot, Gigabit Ethernet port, 3.5 mm headphone jack, and even an IR receiver. Apple Mac Mini has a Built-in speaker system and also an Audio-in port. Feel free to check the price of this beast in a solid aluminum case from Star Tech website if you want to buy Apple Mac Mini (MGEN2) in Bangladesh.</p>\r\n<p><a href="https://www.startech.com.bd/apple-mac-mini-cpu-mgen2-pc">Buy Apple Mac Mini (MGEN2) Now!</a></p>\r\n<h3>2. Asus TS10-Intel&reg; Atom&trade; x5-Z8300 Vivo PC</h3>\r\n<p>Here comes an incredibly sleek and small mini PC which is unbelievably cheap but compromises no essential feature of a decent computer. You will get Intel&reg; Atom&trade; x5-Z8350 Processor, 32GB eMMC as primary memory, 2GB RAM, USB, HDMI, Bluetooth, Wi-Fi and what not. It is powered by Windows 10 Home. As a bonus, you will receive 100GB ASUS web storage for 1 Year free usage. It is 5.3 inches long, 1.4 inches wide and 0.65 inches thick.</p>\r\n<p>So, this is not much bigger than your pen drive! This stick PC weighs only 75gm! You cannot guess the number of features this Mini PC can provide. So we highly recommend you to check the detailed specification and price of&nbsp;<a href="https://www.asus.com/bd/">Asus&nbsp;</a>TS10-Intel&reg; Atom&trade; x5-Z8300 Vivo PC from Star Tech website if you want to purchase it from Bangladesh.</p>\r\n<p><a href="https://www.startech.com.bd/asus-ts10-pc">Buy Asus TS10-Intel&reg; Atom&trade; x5-Z8300 Vivo PC Now!</a></p>\r\n<h3>3. Asus VM42-Intel&reg; Celeron&reg; 2957U Vivo PC</h3>\r\n<p>If you want a mini PC with the facility to add more hard drives or RAMs, this will be a perfect one. It has two storage drives and to RAM slots. Each slot supports up to 1TB of Hard drive and 16GB of DDR3 RAM. The added storage flexibility is what makes this mini PC so special.</p>\r\n<p>It comes with a wireless mouse, wireless Keyboard, Sonic Master High Definition 6 Channel Audio (2 Built-in speakers),&nbsp;<a href="https://www.vesa.org/">VESA&nbsp;</a>wall mounting kit, display to VGA dongle, and so on. As a courtesy of Asus, you will get 100GB ASUS web storage for 1 Year free usage. Check the price of Asus VM42-Intel&reg; Celeron&reg; 2957U Vivo PC from Star Tech website if you want to buy it in Bangladesh.</p>\r\n<p><a href="https://www.startech.com.bd/asus-bm42-pc">Buy Asus VM42-Intel&reg; Celeron&reg; 2957U Vivo PC Now!</a></p>\r\n<h3>4. GIGABYTE BRIXS GB-BKi3HA-7100 Portable MINI PC</h3>\r\n<p>Here comes an all-rounder mini PC with 7th generation Intel&reg; Core&trade; i3-7100U Processor (3M Cache, 2.40 GHz). It has 2 DDR4 RAM slots, and 2.5&rdquo; HDD and SSD slots. The Intel&reg; HD Graphics 620 is very good at handling multimedia and graphics. Like any high-end latest motherboards, it has USB 3.1 type C port,&nbsp;<a href="https://www.kensington.com/us/sg/home">Kensington&nbsp;</a>lock slot, Wi-Fi, Bluetooth, VESA bracket and many more.</p>\r\n<p>You can build a very powerful PC by including SSDs and DDR4 RAMs. This mini PC supports the highest resolution of 4096 x 2160 @ 60Hz (HDMI 2.0 and HDCP 2.2). You are welcome to check the price of GIGABYTE BRIXS GB-BKi3HA-7100 Portable MINI PC in Bangladesh from Star Tech and also check its details specifications from there.</p>\r\n<p><a href="https://www.startech.com.bd/gigabyte-brixs-gb-bki3ha-7100">Buy GIGABYTE BRIXS GB-BKi3HA-7100 Portable MINI PC Now!</a></p>\r\n<h3>5. Intel NUC Kit NUC6CAYH Mini PC</h3>\r\n<p>We all are familiar with Intel, the manufacturer of the most used processors on this planet. This awesome mini PC comes at a very low price. It is powered by Intel&reg;&nbsp;<a href="https://www.intel.com/content/www/us/en/products/processors/celeron.html">Celeron</a>&reg; Processor J3455 with 2M Cache,1.50 GHz up to 2.3 GHz in Turbo Boost. You have to buy the hard drive and RAM yourself, except for that, it contains all the features and connectivity options.This mini PC is a very reliable option as it is manufactured by Intel.</p>\r\n<p>Its Intel&reg; HD Graphics 500 is quite good at handling multimedia and graphic works. The mini PC also comes with a removable memory card slot- SDXC with UHS-I support. You should check the rice of Intel NUC Kit NUC6CAYH Mini PC from Star Tech website and see the reviews of this mini PC on YouTube before you purchase it from Bangladesh.</p>\r\n<p><a href="https://www.startech.com.bd/intel-nuc-kit-nuc6cayh">Buy Intel NUC Kit NUC6CAYH Mini PC Now!</a></p>\r\n<p>The above 5 mini PCs are the best among all the latest mini PCs in available in Bangladesh in 2018. You should check our Star Tech website to find out more if you are looking for more specs.</p>\r\n<p>"</p>\r\n<p>"</p>\r\n<p>"</p>', 'upload/595eb9762c.png', 'Star Tech', 'Computer, Desktop pc', '2018-04-15 18:08:25', 0),
(34, 22, ' Dummy post by Torab as Author ', '<p>&nbsp;Dummy post by Torab as Author&nbsp;&nbsp;Dummy post by Torab as Author&nbsp;&nbsp;Dummy post by Torab as Author&nbsp;&nbsp;Dummy post by Torab as Author&nbsp;&nbsp;Dummy post by Torab as Author&nbsp;&nbsp;Dummy post by Torab as Author&nbsp;&nbsp;Dummy post by Torab as Author&nbsp;&nbsp;Dummy post by Torab as Author&nbsp;&nbsp;Dummy post by Torab as Author&nbsp;&nbsp;Dummy post by Torab as Author&nbsp;&nbsp;Dummy post by Torab as Author&nbsp;&nbsp;Dummy post by Torab as Author&nbsp;&nbsp;Dummy post by Torab as Author&nbsp;&nbsp;Dummy post by Torab as Author&nbsp;&nbsp;Dummy post by Torab as Author&nbsp;&nbsp;Dummy post by Torab as Author&nbsp;&nbsp;Dummy post by Torab as Author&nbsp;&nbsp;Dummy post by Torab as Author&nbsp;&nbsp;Dummy post by Torab as Author&nbsp;&nbsp;Dummy post by Torab as Author&nbsp;&nbsp;Dummy post by Torab as Author&nbsp;&nbsp;Dummy post by Torab as Author&nbsp;&nbsp;Dummy post by Torab as Author&nbsp;&nbsp;Dummy post by Torab as Author&nbsp;&nbsp;Dummy post by Torab as Author&nbsp;&nbsp;Dummy post by Torab as Author&nbsp;&nbsp;Dummy post by Torab as Author&nbsp;&nbsp;Dummy post by Torab as Author&nbsp;&nbsp;Dummy post by Torab as Author&nbsp;&nbsp;Dummy post by Torab as Author&nbsp;&nbsp;Dummy post by Torab as Author&nbsp;&nbsp;Dummy post by Torab as Author&nbsp;&nbsp;Dummy post by Torab as Author&nbsp;&nbsp;Dummy post by Torab as Author&nbsp;&nbsp;Dummy post by Torab as Author&nbsp;&nbsp;Dummy post by Torab as Author&nbsp;&nbsp;Dummy post by Torab as Author&nbsp;&nbsp;Dummy post by Torab as Author&nbsp;&nbsp;Dummy post by Torab as Author&nbsp;&nbsp;Dummy post by Torab as Author&nbsp;&nbsp;Dummy post by Torab as Author&nbsp;</p>', 'upload/e95ee6e39c.png', 'Torab', ' Dummy post by Torab as Author ', '2018-04-16 12:20:46', 6),
(39, 26, 'Guide For Choosing The Best TV For You in 2018', '<p><span>A television is a must have for every family. No matter how addicted we all are on smartphones and computers, at the end of the day we all gather in front of a TV and gossip among family members. A Television is also a very important part of your drawing room from where your guests get to know the most about your choice, taste, and lifestyle.</span></p>\r\n<p><span>Since the technology is evolving rapidly, it is important to know about the specifications and features of all the latest TVs if you want to buy a new TV in 2018. So we have come up with a detailed guide to help you find the best TV for you within your budget.</span></p>\r\n<h3><span>Screen Size</span></h3>\r\n<p><span>Choose the size of the TV monitor based on the space on your wall where you will put it. Also, you should consider the distance between the TV and the viewers. For example, a large display would be painful and not good at all for you if your room is too small that even the maximum distance you can manage to be away from the TV makes you move your eyeballs in order to see the whole screen at once.</span></p>\r\n<p><span>You should check it in the showroom if the display size is comfortable for you from the average approximate viewing distance you will have in your room where you will put the TV.</span></p>\r\n<h3><span>Resolution</span></h3>\r\n<p><span>See the meaning of available resolutions for TVs or all types of screens/monitors. The higher is the resolution, the better is the sharpness and details of the pictures. Go for the highest possible resolution within your budget.</span><br /><span>HD: 1280&times;720</span><br /><span>Full HD/2K: 1920&times;1080</span><br /><span>Ultra HD/4K: 3840&times;2160</span></p>\r\n<p><span>Try to buy a TV with Ultra HD display even though it is smaller than you wished for. Always remember that&nbsp;<a href="https://en.wikipedia.org/wiki/Display_resolution">resolution&nbsp;</a>matters most. The more the PPI (Pixel Per Inch), the better is the picture. You can measure the PPI dividing the resolution with the area of the monitor in the square inch.</span></p>\r\n<h3><span>HDR</span></h3>\r\n<p><span>As you have just known about the highest resolution available on the market(<a href="http://www.techradar.com/news/television/ultra-hd-everything-you-need-to-know-about-4k-tv-1258884">4K</a>), if you have a budget of around BDT 40,000 and want to experience something more than Ultra HD/4K, we suggest you Sony Bravia 75 Inch 75X8500D 4K Ultra HD with Wi-Fi Smart Android TV. It is compatible with the latest HDR technology (High Dynamic Range).</span></p>\r\n<p><span>You will observe a massive difference in color, contrast, brightness, and sharpness in the picture quality on an HDR supported TV other than a normal 4K Ultra HD TV which doesn&rsquo;t support it. Note that this HDR feature is not applicable for resolutions less than 4K(3840&times;2160).</span></p>\r\n<h3><span>Features:</span></h3>\r\n<p><span>There are a lot of smart features available on the recent Televisions. If you want to get the most out of a TV, you should browse through the specifications thoroughly. Most Full HD TVs are smart TVs, if not, check the specs or search the Internet. Some models support Android apps, some support Wi-Fi streaming, while others support&nbsp;<a href="https://www.netflix.com/bd/">Netflix</a>,&nbsp;<a href="https://www.amazon.com/">Amazon&nbsp;</a>etc. Once you set your budget, you should compare among the TVs of the same price range and find out the one having more distinctive features and connectivity options.</span></p>\r\n<p><span>There are several new upcoming technologies such as a bendable or roll-able displays and OLED. OLED displays are already available on many smartphones; those displays are the best. Those are capable of creating absolute black by turning off the pixels totally. The other colors also feel more realistic because of OLED technology. Curved, bendable or rollable displays might cost huge money, but they are not worth it. The curvature of a display doesn&rsquo;t improve the viewing experience at all.</span></p>\r\n<h3><span>Warranty</span></h3>\r\n<p><span>Within the same budget range, go for the brand which offers the longest&nbsp;<a href="http://www.dictionary.com/browse/warranty">warranty</a>&nbsp;period. It will give you a peace of mind and also save you a lot of money if any part of your TV starts to malfunction within the warranty period. The same applies to return policy and guarantee.</span></p>\r\n<h3><span>Brand</span></h3>\r\n<p><span>Never buy TVs from brands other than Samsung, Sony, and LG. At present in Bangladesh, there are a lot of new brands which are making TVs with almost same features and specifications as the above mentioned 3 bands. But those TVs are being made with cheap electronic parts which result in low picture quality and shortened lifespan. Don&rsquo;t be excited seeing their low price yet huge specs. Go for quality other than quantity.</span></p>\r\n<h3><span>YouTube Reviews:</span></h3>\r\n<p><span>There is a saying that it is better to learn from others&rsquo; mistakes than learning from your own mistakes. Especially when you are going to spend a large amount of money, you cannot afford to do a mistake by choosing a TV which can make you regret later. We just told you about three brands- Samsung, Sony, and LG.</span></p>\r\n<p><span>You can find the hands-on reviews of every available Television of these brands on&nbsp;<a href="https://www.youtube.com/">YouTube</a>. But you can hardly find a good review of Televisions from other new brands. You can know the pros and cons, hidden bugs, issues and opinion/user experience for a particular TV model from the YouTube. This you can be more confident about your decision.</span></p>\r\n<h3><span>Conclusion:</span></h3>\r\n<p><span>As you have already read about the ins and outs of all the factors that should be considered while choosing your new TV in 2018, it is time to know about the final step- from where to buy. Most of us prefer to buy TVs from the nearest showrooms of the respective brand. You are most advised to visit the showroom to see the performance of your chosen TV yourself for the final decision.</span></p>\r\n<p><span>But if the showroom is too far from you or you want to save some of your hard earned money, you can order your desired&nbsp;<a href="https://www.startech.com.bd/television-startech/samsung-television">Samsung</a>,&nbsp;<a href="https://www.startech.com.bd/television-startech/sony-television">Sony&nbsp;</a>or&nbsp;<a href="https://www.startech.com.bd/television-startech/LG-TV">LG&nbsp;</a>Television from Star Tech website. Star Tech can provide you the same original product with the same warranty and other facilities at a reduced price than that of a showroom. You can check the&nbsp;<a href="https://www.startech.com.bd/television-startech">price and specifications of latest Televisions</a>available in Bangladesh from Star Tech and see for yourself!</span></p>', 'upload/ad3779f61f.jpg', 'user', 'Tv, Television', '2018-04-16 22:47:38', 1),
(40, 25, 'MacBook Pro vs. MacBook Air: Which One Should You Buy?', '<p><span>Are you thinking of bringing a change in your style? Want to get upgraded to the Apple&rsquo;s latest collections? Confused about what to choose to compliment your style and also to fulfill your demands? So many questions hover around your mind whenever you think of making a choice!</span></p>\r\n<p><span>You are just at the right place to clear up all your confusions and get properly guided towards your choice! Star Tech has all the answers to your queries as we believe in making life simple.</span></p>\r\n<p><span>Currently, the market demand is hitting on the&nbsp;<a href="https://en.wikipedia.org/wiki/MacBook">MacBook</a>&nbsp;collections where you can choose between MacBook Pro and MacBook Air. There is definitely nothing to get confused about which one to choose as we have sorted down some points to give you a clearer view towards your choice so that you find your compatible match!</span></p>\r\n<p><span>When you plan of buying a MacBook, all you think about is its performance level, the battery life, its display, the graphics, its portability and of course the last but certainly not the least is its design as of how well does it go with your style.</span></p>\r\n<p><span>MacBook comes with glossy and robust aluminium designs, outstanding keyboards and touch-pads with long battery life and a user friendly operating system which keeps your documents in sync through multiple&nbsp;<a href="http://www.apple.com/">Apple&nbsp;</a>devices.</span></p>\r\n<h3><span>Performance</span></h3>\r\n<div><span><br /></span>\r\n<p><span>Talking about the performance level, MacBook Pro has taken the lead over&nbsp;<a href="http://www.startech.com.bd/laptop-notebook/laptop/apple-macbook">MacBook Air</a>. Yes, 15-inch MacBook Pro with the combination of its quad-core Core i7 CPU and optional AMD R9 M370X graphics has scored the highest in various experiments, leaving other Mac laptops behindhand.</span></p>\r\n<p><span>This is just the right choice for the professionals who are looking for the best MacBook considering the performance level to meet their demands. Nevertheless, the 13-inch MacBook Pro can also stand up with a very good performance.</span></p>\r\n<h3><span>Battery Life</span></h3>\r\n<div><span><br /></span>\r\n<p><span>This is a very important section to put light upon. What is the benefit of having a MacBook with great performance and superb graphics if the battery life is not just up to the mark!</span></p>\r\n<p><span>Just think about your MacBook running out of battery every now and then or just imagine your MacBook to get turned off in the middle of something really important. Then how do you think you would feel? Of course, no one would ever like to face something like that.</span></p>\r\n<p><span>The updated 13-inch MacBook Air is one of the longest-running laptops. It lasted for 14 hours on the Laptop Mag battery test, which includes unremitting Web surfing over WI-Fi. The 13-inch MacBook Pro lasted a little more than 12 hours on the same test.</span></p>\r\n<p><span>The 15-inch MacBook Pro&acirc;&euro;&trade;s 9 hours of durability makes it one of the longest-running laptops with that size display. The new 12-inch MacBook lasts to some extent longer than the 11-inch MacBook Air.</span></p>\r\n<p><span>Therefore, while making your choice do think about how compatible you want your MacBook to be as per the battery life they come with.</span></p>\r\n<h3><span>Display</span></h3>\r\n<p><span>MacBooks differ in terms of display which you can notice through the resolution and colour qualities. The quality of the display can never be measured considering the size of it. For example, the 13-inch MacBook Air has a fairly low 1440 x 900 pixels while the new, smaller 12-inch MacBook sports a 2304 x 1440-pixel panel.</span></p>\r\n<p><span>Which means that, even though the MacBook has a smaller screen yet it comes up with a sharper picture. The 13-inch and 15-inch&nbsp;<a href="http://www.macworld.co.uk/feature/apple/what-retina-hd-display-are-they-worth-money-apple-3466732/">Retina</a>&nbsp;MacBooks have even sharper screens at 2560 x 1600 and 2800 x 1800 pixels, respectively. While the 15-inch MacBook Pro has a higher resolution than the 13-inch Pro. The 12-inch MacBook has a sharper display than the 13-inch Air.</span></p>\r\n<p><span>It really does not matter whether you&rsquo;re watching videos, flipping through photos on social networking sites or editing in Photoshop, colour scale plays an important role. Thus, do not just go for the size of the display as size does not matter always.</span></p>\r\n<h3><span>Graphics</span></h3>\r\n<p><span>The 15-inch MacBook Pro again takes the lead in this section with the&nbsp;</span><a href="http://www.amd.com/en-us">AMD</a><span>&nbsp;Radeon R9 M370X graphics configuration which makes quick work of photo and video editing, making the machine the best choice for creative pros. So if you are up for editing issues then this is just the one for you.</span></p>\r\n<p><span>When you are planning to buy a laptop, of course you would think about its portability as you definitely need to carry your one along with you. The 12-inch MacBook is very compact and light and seems like an iPad when it is kept closed and a weight of just 2.03 pounds makes it pretty easy to be carried around.</span></p>\r\n<p><span>The 11-inch Air is 2.4 pounds while the 13-inch MacBook Air is about a pound heavier than the 12-inch MacBook. The 3.5-pound, 13-inch MacBook Pro is rather weighty given its screen size whereas the 4.5-pound, 15-inch MacBook Pro is among the lightest in its class of 15-inch notebooks.</span></p>\r\n<p><span>Before bringing Mac in your family, go through the criteria to understand which specific model can meet your demands. The Air is for the people looking for swift performance with long battery life in a lightweight machine. Power users and photo and video editors should step up for the 13- or 15-inch MacBook Pro. While the 15-inch Pro is really the only choice for those looking for workstation-class performances.</span></p>\r\n<p><span><br /></span></p>\r\n</div>\r\n</div>', 'upload/ab18749666.png', 'Torab', 'Computer, Desktop pc, Laptop', '2018-04-16 22:51:11', 6),
(41, 25, 'MacBook Pro vs. MacBook Air: Which One Should You Buy?', '<p><span>Are you thinking of bringing a change in your style? Want to get upgraded to the Apple&rsquo;s latest collections? Confused about what to choose to compliment your style and also to fulfill your demands? So many questions hover around your mind whenever you think of making a choice!</span></p>\r\n<p><span>You are just at the right place to clear up all your confusions and get properly guided towards your choice! Star Tech has all the answers to your queries as we believe in making life simple.</span></p>\r\n<p><span>Currently, the market demand is hitting on the&nbsp;<a href="https://en.wikipedia.org/wiki/MacBook">MacBook</a>&nbsp;collections where you can choose between MacBook Pro and MacBook Air. There is definitely nothing to get confused about which one to choose as we have sorted down some points to give you a clearer view towards your choice so that you find your compatible match!</span></p>\r\n<p><span>When you plan of buying a MacBook, all you think about is its performance level, the battery life, its display, the graphics, its portability and of course the last but certainly not the least is its design as of how well does it go with your style.</span></p>\r\n<p><span>MacBook comes with glossy and robust aluminium designs, outstanding keyboards and touch-pads with long battery life and a user friendly operating system which keeps your documents in sync through multiple&nbsp;<a href="http://www.apple.com/">Apple&nbsp;</a>devices.</span></p>\r\n<h3><span>Performance</span></h3>\r\n<div><span><br /></span>\r\n<p><span>Talking about the performance level, MacBook Pro has taken the lead over&nbsp;<a href="http://www.startech.com.bd/laptop-notebook/laptop/apple-macbook">MacBook Air</a>. Yes, 15-inch MacBook Pro with the combination of its quad-core Core i7 CPU and optional AMD R9 M370X graphics has scored the highest in various experiments, leaving other Mac laptops behindhand.</span></p>\r\n<p><span>This is just the right choice for the professionals who are looking for the best MacBook considering the performance level to meet their demands. Nevertheless, the 13-inch MacBook Pro can also stand up with a very good performance.</span></p>\r\n<h3><span>Battery Life</span></h3>\r\n<div><span><br /></span>\r\n<p><span>This is a very important section to put light upon. What is the benefit of having a MacBook with great performance and superb graphics if the battery life is not just up to the mark!</span></p>\r\n<p><span>Just think about your MacBook running out of battery every now and then or just imagine your MacBook to get turned off in the middle of something really important. Then how do you think you would feel? Of course, no one would ever like to face something like that.</span></p>\r\n<p><span>The updated 13-inch MacBook Air is one of the longest-running laptops. It lasted for 14 hours on the Laptop Mag battery test, which includes unremitting Web surfing over WI-Fi. The 13-inch MacBook Pro lasted a little more than 12 hours on the same test.</span></p>\r\n<p><span>The 15-inch MacBook Pro&acirc;&euro;&trade;s 9 hours of durability makes it one of the longest-running laptops with that size display. The new 12-inch MacBook lasts to some extent longer than the 11-inch MacBook Air.</span></p>\r\n<p><span>Therefore, while making your choice do think about how compatible you want your MacBook to be as per the battery life they come with.</span></p>\r\n<h3><span>Display</span></h3>\r\n<p><span>MacBooks differ in terms of display which you can notice through the resolution and colour qualities. The quality of the display can never be measured considering the size of it. For example, the 13-inch MacBook Air has a fairly low 1440 x 900 pixels while the new, smaller 12-inch MacBook sports a 2304 x 1440-pixel panel.</span></p>\r\n<p><span>Which means that, even though the MacBook has a smaller screen yet it comes up with a sharper picture. The 13-inch and 15-inch&nbsp;<a href="http://www.macworld.co.uk/feature/apple/what-retina-hd-display-are-they-worth-money-apple-3466732/">Retina</a>&nbsp;MacBooks have even sharper screens at 2560 x 1600 and 2800 x 1800 pixels, respectively. While the 15-inch MacBook Pro has a higher resolution than the 13-inch Pro. The 12-inch MacBook has a sharper display than the 13-inch Air.</span></p>\r\n<p><span>It really does not matter whether you&rsquo;re watching videos, flipping through photos on social networking sites or editing in Photoshop, colour scale plays an important role. Thus, do not just go for the size of the display as size does not matter always.</span></p>\r\n<h3><span>Graphics</span></h3>\r\n<p><span>The 15-inch MacBook Pro again takes the lead in this section with the&nbsp;</span><a href="http://www.amd.com/en-us">AMD</a><span>&nbsp;Radeon R9 M370X graphics configuration which makes quick work of photo and video editing, making the machine the best choice for creative pros. So if you are up for editing issues then this is just the one for you.</span></p>\r\n<p><span>When you are planning to buy a laptop, of course you would think about its portability as you definitely need to carry your one along with you. The 12-inch MacBook is very compact and light and seems like an iPad when it is kept closed and a weight of just 2.03 pounds makes it pretty easy to be carried around.</span></p>\r\n<p><span>The 11-inch Air is 2.4 pounds while the 13-inch MacBook Air is about a pound heavier than the 12-inch MacBook. The 3.5-pound, 13-inch MacBook Pro is rather weighty given its screen size whereas the 4.5-pound, 15-inch MacBook Pro is among the lightest in its class of 15-inch notebooks.</span></p>\r\n<p><span>Before bringing Mac in your family, go through the criteria to understand which specific model can meet your demands. The Air is for the people looking for swift performance with long battery life in a lightweight machine. Power users and photo and video editors should step up for the 13- or 15-inch MacBook Pro. While the 15-inch Pro is really the only choice for those looking for workstation-class performances.</span></p>\r\n<p><span><br /></span></p>\r\n</div>\r\n</div>', 'upload/18a3d8d7b0.png', 'Torab', 'Computer, Desktop pc, Laptop', '2018-04-16 22:52:43', 6),
(42, 25, 'Buying Guide – Get your Best Suited Graphics Card', '<p><span>The CPU can play the role of working as the brain of your PC, but when it comes to gaming, the graphics card takes the lead playing the role of the beating heart.</span></p>\r\n<p><span>To buy the right graphics card matching your demands, you need to get along with some of few points.</span></p>\r\n<h3><span>Model number</span></h3>\r\n<p><span>The eventual performance indicator of any graphics card is its model number representing a combination of graphics processor (<a href="https://en.wikipedia.org/wiki/Graphics_processing_unit">GPU</a>), memory bandwidth and clock rates. The format is brand name + model number, i.e.&nbsp;<a href="http://www.amd.com/en-us/products/graphics">Radeon&nbsp;</a>RX 480 4G, or&nbsp;<a href="http://www.geforce.com/">GeForce&nbsp;</a>GTX 950.</span></p>\r\n<h3><span>Memory</span></h3>\r\n<p><span>Selecting a graphics card basing on memory is the biggest and the most common mistake made by gamers looking to buy graphics hardware.</span><br /><span>Only if you are running extremely large resolutions (three monitors in surround or a 4K display), you really do not need to care about the quantity of RAM. If you are playing at 1920&times;1080 or higher you should rather be looking for a high-end model in the very first place, and that will come with more memory by default.</span></p>\r\n<p><span>What you really need to pay consideration to is the bandwidth.</span></p>\r\n<h3><span>Compatibility</span></h3>\r\n<p><span>Before buying graphics card you should take a moment to measure how much physical space your case has to offer for the card because definitely you would not like to get caught in the wrong dimensions.</span></p>\r\n<p><span>There are some other issues to take under considerations as well but the mentioned are some basics better not to be looked off.</span></p>\r\n<p><span>Some of the examples of available graphics cards for outstanding performances are:</span></p>\r\n<p><span><span>Sapphire Nitro+ Radeon RX 480 4G GDDR5</span>&nbsp;Graphics Card with AMD Cross Fire Free Sync Technology AMD and Eyefinity Quality can be availed by 22,500 taka along with 2 years of warranty.</span></p>\r\n<p><span><span>ASUS ROG STRIX-RX480-O8G-GAMING</span>&nbsp;Graphics Card1330MHz with boost clock in OC mode for outstanding performances with a memory interface of 256-bit. This comes with a price tag of 31,000 taka and 2 years of warranty.</span></p>\r\n<p><span><span>Gigabyte GeForce&reg; GTX 1070 Xtreme Gaming 8G</span>&nbsp;Graphics Card powered by GeForce&reg; GTX 1070 WINDFORCE comes with Stylish Metal Back Plate and 16.8M customizable colour lighting with 2 years of warranty with the price of 47,000 taka.</span></p>\r\n<p><span>Startech has come up with a huge&nbsp;<a href="http://www.startech.com.bd/component/graphics-card">collection of graphics cards</a>&nbsp;only for you. There are different models with varieties of specifications. The collection includes the graphics cards from&nbsp;<a href="https://www.asus.com/bd/">ASUS</a>,&nbsp;<a href="http://bd.gigabyte.com/">GIGABYTE</a>,&nbsp;<a href="https://www.msi.com/index.php">MSI</a>,&nbsp;<a href="http://www.leadtek.com/eng/">Leadtek</a>,&nbsp;<a href="https://www.zotac.com/">ZOTAC&nbsp;</a>and Sapphire.</span></p>\r\n<p><span>The price range for graphics cards maintains a window frame from 3,200 taka to 190,000 taka.</span></p>', 'upload/41a837ef06.png', 'Torab', 'Computer, Desktop pc, Laptop, Computer accessories', '2018-04-16 22:53:52', 6);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_slider`
--

INSERT INTO `tbl_slider` (`id`, `title`, `image`) VALUES
(8, 'One machine can do the work of fifty ordinary men. No machine can do the work of one extraordinary man. –Elbert Hubbard', 'upload/slider9fafa08320.jpg'),
(9, 'Just because something doesn’t do what you planned it to do doesn’t mean it’s useless. –Thomas Edison', 'upload/slider/ffb774dcb3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_social`
--

CREATE TABLE `tbl_social` (
  `id` int(11) NOT NULL,
  `fb` varchar(255) NOT NULL,
  `tw` varchar(255) NOT NULL,
  `ln` varchar(255) NOT NULL,
  `gp` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_social`
--

INSERT INTO `tbl_social` (`id`, `fb`, `tw`, `ln`, `gp`) VALUES
(1, 'https://www.facebook.com/profile.php?id=100002140375400', 'http://twitter.com', 'http://linkedin.com', 'http://google.com');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_theme`
--

CREATE TABLE `tbl_theme` (
  `id` int(11) NOT NULL,
  `theme` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_theme`
--

INSERT INTO `tbl_theme` (`id`, `theme`) VALUES
(1, 'green');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(32) NOT NULL,
  `role` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `details` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `name`, `username`, `password`, `role`, `email`, `details`) VALUES
(1, 'Faisal Ahmed', 'user', 'ee11cbb19052e40b07aac0ca060c23ee', 0, 'fa.babu@yahoo.com', '<p>Hi, I\'m the admin of this blog.</p>\r\n<p>"</p>'),
(3, 'Humayun Torab', 'author', '202cb962ac59075b964b07152d234b70', 1, '', '<p>hi, I\'m&nbsp;Humayun Torab.</p>'),
(4, 'Tonmoy', 'editor', '202cb962ac59075b964b07152d234b70', 2, '', '<p>Hi, I\'m&nbsp;Tonmoy!</p>'),
(6, NULL, 'Torab', '202cb962ac59075b964b07152d234b70', 1, '', NULL),
(7, NULL, 'newuser', '202cb962ac59075b964b07152d234b70', 2, '', NULL),
(8, NULL, 'newuser', 'bd19607d36efd9e1d94a71f77faa97a3', 1, 'newuser@yahoo.com', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `title_slogan`
--

CREATE TABLE `title_slogan` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slogan` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `title_slogan`
--

INSERT INTO `title_slogan` (`id`, `title`, `slogan`, `logo`) VALUES
(1, 'Tech-Talk', 'Read to enrich your knowledge', 'upload/logo.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_footer`
--
ALTER TABLE `tbl_footer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_page`
--
ALTER TABLE `tbl_page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_post`
--
ALTER TABLE `tbl_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_social`
--
ALTER TABLE `tbl_social`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_theme`
--
ALTER TABLE `tbl_theme`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `title_slogan`
--
ALTER TABLE `title_slogan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tbl_footer`
--
ALTER TABLE `tbl_footer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_page`
--
ALTER TABLE `tbl_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tbl_post`
--
ALTER TABLE `tbl_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `tbl_social`
--
ALTER TABLE `tbl_social`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_theme`
--
ALTER TABLE `tbl_theme`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `title_slogan`
--
ALTER TABLE `title_slogan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
