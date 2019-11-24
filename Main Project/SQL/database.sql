-- create the main database
CREATE SCHEMA `news` DEFAULT CHARACTER SET utf8;
USE news;

-- create news table
CREATE TABLE `news`.`article` (
  `id` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `active` tinyint(4) NOT NULL DEFAULT 1,
  `slug` varchar(250) NOT NULL,
  `title` varchar(250) NOT NULL,
  `body` text NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `edited_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `article` (`active`, `slug`, `title`, `body`, `created_at`, `edited_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, 'intel-core-i9-9900ks-up-to-5-2-ghz-all-core-oc-cpu-available-on-silicon-lottery-for-1199-99-us-5-1-ghz-for-749-99-us', 'Intel Core i9-9900KS Up To 5.2 GHz All-Core OC CPU Available on Silicon Lottery For $1199.99 US, 5.1 GHz For $749.99 US', 'Intel\'s recently launched Core i9-9900KS which offers a 5 GHz clock speed across all its 8 cores is now available on Silicon Lottery with pre-tested frequencies of up to 5.2 GHz. Silicon Lottery has also shown stats that reveal that only a few golden samples can reach up to 200 MHz overclocks.\r\n\r\nSilicon Lottery Reveals That Only Top 3% Intel Core i9-9900KS CPUs Can Hit 5.2 GHz, Priced at $1199.99 US\r\nThe retailer has also shared some interesting pre-binning statistics which show that Intel has squeezed every last drop of frequency themselves, leaving users with little overclock head-room to exploit. All pre-binned processors were qualified based on their AVX2 frequency which is the max stable frequency for AVX2 workloads.\r\n\r\nThere are three variants listed on Silicon Lottery which start at 5.0 GHz and go all the way up to 5.2 GHz. Now you must be wondering, why do I need a 5.0 GHz pre-binned chip when Intel themselves said the Core i9-9900KS can hit 5 GHz across all cores at all times. Well, the difference is that Silicon Lottery\'s chip is overclocked for 5 GHz all-time unlike the regular variant which hits 4.0 GHz at base frequency. Then again, should you buy this chip for $100 US more than the regular box chip? I would suggest not to as according to Silicon Lottery themselves, 100% of the Core i9-9900KS chips were able to hit 5.0 GHz or greater which means even the standard one you buy off a retail shelve will give you the same performance and for $100 US less.\r\n\r\nBut if you want better overclock speeds, the higher-binned chips range from 5.1 GHz ($749.99 US) and 5.2 GHz ($1199.99 US). These are some pretty hefty prices you would have to pay for a meager 100-200 MHz overclock. According to Silicon Lottery, only the top 31% Core i9-9900KS chips can hit 5.1 GHz while only the top 3% chips can hit 5.2 GHz or greater frequencies. For achieving 5.1 GHz, Silicon Lottery pushed the voltage to 1.287V with an AVX Offset of 2 while the 5.2 GHz overclock is achieved using a voltage supply of 1.325V.\r\n\r\nNow here\'s the interesting part, while Silicon Lottery has no 5.2 GHz pre-binned chips listed for Core i9-9900K and Core i9-9900KF, they do have 5.1 GHz models listed. Compared to the 5.1 GHz Core i9-9900KS which is being sold for $749.99 US, the Core i9-9900K 5.1 GHz was priced at $930 US while the Core i9-9900KF 5.1 GHz was priced at $850 US. The main reason for the higher price compared to the Core i9-9900KS is because only 5-8 percent of the top tier chips were able to hit 5.1 GHz while with the Core i9-9900KS, you\'re always guaranteed a 5.1 GHz overclock.\\n\r\n\r\nBy the time I was working on this post, the Core i9-9900KS 5.2 GHz chips have been sold out. These chips may probably have been picked up by enthusiasts and overclockers considering that they are golden samples. Still, paying $1199.99 US for 200 MHz is quite insane but I guess people are willing to pay that much for special binned chips. Since we are talking about the Core i9-9900KS, you may as well check out our own review of the processor which we overclocked to 5.3 GHz (1.350V) across all 8 cores.', '2019-11-04 10:18:53', '2019-11-24 14:24:47', 1, NULL, NULL),
(1, 'half-life-alyx-is-just-the-beginning-of-valves-return-to-the-series', 'Half-Life: Alyx is just the beginning of Valve\'s return to the series', 'A new Half-Life is coming, and while it\'s not Half-Life 3, or even Episode 3, it feels very good to type that out. Half-Life: Alyx is a VR spin-off set before Half-Life 2, though, so what about the series\' future and other platforms? While we probably won\'t see Alyx appear outside of VR, Valve still has plans for Half-Life beyond the latest outing. \r\n\r\nThe Verge asked designer David Speyrer if this was a full return to Half-Life and if we could expect more games in the series now that Valve has finally brought it out of stasis. He confirmed that it was, adding that Valve\'s found news ways to tell stories and make games through Half-Life: Alyx\'s development that it wants to continue to explore.\r\n\r\n\"It’s probably no surprise that many people at Valve have been wanting to get back to the Half-Life universe for a long time, and this experience has only reinforced that,\" he said. \"In the process of creating Half-Life: Alyx, we’ve had to explore new ways to tell stories with these characters and this world, and we’ve discovered a lot of new gameplay experiences that go beyond what we’ve been able to do before. Of course, we’ll have to wait and see how people react to Half-Life: Alyx once it’s out, but we’d love to continue pushing forward.\"\r\n\r\nAfter years of waiting, it feels like we\'re closer than ever to Half-Life 3, but for all the anticipation I\'m increasingly glad that Valve\'s return to the series is something a bit different, rather than the sequel we\'ve been hungering for. While some might rankle at the thought of shelling out £300 for a headset, at the low end, it\'s about time VR had a system-selling game.  ', '2019-11-24 14:27:54', '2019-11-24 14:27:54', 1, NULL, NULL);


-- create all necessary tables for Ion Auth

DROP TABLE IF EXISTS `groups`;

#
# Table structure for table 'groups'
#

CREATE TABLE `groups` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Dumping data for table 'groups'
#

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
     (1,'admin','Administrator'),
     (2,'writers','Writers');



DROP TABLE IF EXISTS `users`;

#
# Table structure for table 'users'
#

CREATE TABLE `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(45) NOT NULL,
  `username` varchar(100) NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(254) NOT NULL,
  `activation_selector` varchar(255) DEFAULT NULL,
  `activation_code` varchar(255) DEFAULT NULL,
  `forgotten_password_selector` varchar(255) DEFAULT NULL,
  `forgotten_password_code` varchar(255) DEFAULT NULL,
  `forgotten_password_time` int(11) unsigned DEFAULT NULL,
  `remember_selector` varchar(255) DEFAULT NULL,
  `remember_code` varchar(255) DEFAULT NULL,
  `created_on` int(11) unsigned NOT NULL,
  `last_login` int(11) unsigned DEFAULT NULL,
  `active` tinyint(1) unsigned DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `uc_email` UNIQUE (`email`),
  CONSTRAINT `uc_activation_selector` UNIQUE (`activation_selector`),
  CONSTRAINT `uc_forgotten_password_selector` UNIQUE (`forgotten_password_selector`),
  CONSTRAINT `uc_remember_selector` UNIQUE (`remember_selector`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


#
# Dumping data for table 'users'
#

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `email`, `activation_code`, `forgotten_password_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`) VALUES
     ('1','127.0.0.1','administrator','$2y$08$200Z6ZZbp3RAEXoaWcMA6uJOFicwNZaqk4oDhqTUiFXFe63MG.Daa','admin@admin.com','',NULL,'1268889823','1268889823','1', 'Admin','Istrator','ADMIN','0');

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `email`, `activation_code`, `forgotten_password_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`) VALUES
     ('2','127.0.0.1','jhonnyboi','$2y$08$200Z6ZZbp3RAEXoaWcMA6uJOFicwNZaqk4oDhqTUiFXFe63MG.Daa','jhonnyboi@dasnewssite.com','',NULL,'1268889823','1268889823','1', 'Jhonny','Meritos','-','0');


DROP TABLE IF EXISTS `users_groups`;

#
# Table structure for table 'users_groups'
#

CREATE TABLE `users_groups` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `group_id` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_users_groups_users1_idx` (`user_id`),
  KEY `fk_users_groups_groups1_idx` (`group_id`),
  CONSTRAINT `uc_users_groups` UNIQUE (`user_id`, `group_id`),
  CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
     (1,1,1),
     (2,1,2),
     (3,2,2);


DROP TABLE IF EXISTS `login_attempts`;

#
# Table structure for table 'login_attempts'
#

CREATE TABLE `login_attempts` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(45) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
