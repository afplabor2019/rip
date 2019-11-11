CREATE SCHEMA `news` DEFAULT CHARACTER SET utf8;
USE news;


CREATE TABLE `news`.`article` (
  `id` int(11) NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT 1,
  `slug` varchar(250) NOT NULL,
  `title` varchar(250) NOT NULL,
  `body` text NOT NULL,
  `create_at` datetime DEFAULT current_timestamp(),
  `edited_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

ALTER TABLE `article`
  ADD PRIMARY KEY (`id`);

INSERT INTO `article` (`id`, `active`, `slug`, `title`, `body`, `created_by`) VALUES
(1,
 1,
 'Intel-Core-i9-9900KS-Up-To-5.2-GHz-All-Core-OC-CPU-Available-on-Silicon-Lottery-For-$1199.99-US,-5.1-GHz-For-$749.99-US',
 'intel-core-i9-9900ks-up-to-5-2-ghz-all-core-oc-cpu-available-on-silicon-lottery-for-1199-99-us-5-1-ghz-for-749-99-us',
 'Intel\'s recently launched Core i9-9900KS which offers a 5 GHz clock speed across all its 8 cores is now available on Silicon Lottery with pre-tested frequencies of up to 5.2 GHz. Silicon Lottery has also shown stats that reveal that only a few golden samples can reach up to 200 MHz overclocks.\r\n\r\nSilicon Lottery Reveals That Only Top 3% Intel Core i9-9900KS CPUs Can Hit 5.2 GHz, Priced at $1199.99 US\r\nThe retailer has also shared some interesting pre-binning statistics which show that Intel has squeezed every last drop of frequency themselves, leaving users with little overclock head-room to exploit. All pre-binned processors were qualified based on their AVX2 frequency which is the max stable frequency for AVX2 workloads.\r\n\r\nThere are three variants listed on Silicon Lottery which start at 5.0 GHz and go all the way up to 5.2 GHz. Now you must be wondering, why do I need a 5.0 GHz pre-binned chip when Intel themselves said the Core i9-9900KS can hit 5 GHz across all cores at all times. Well, the difference is that Silicon Lottery\'s chip is overclocked for 5 GHz all-time unlike the regular variant which hits 4.0 GHz at base frequency. Then again, should you buy this chip for $100 US more than the regular box chip? I would suggest not to as according to Silicon Lottery themselves, 100% of the Core i9-9900KS chips were able to hit 5.0 GHz or greater which means even the standard one you buy off a retail shelve will give you the same performance and for $100 US less.\r\n\r\nBut if you want better overclock speeds, the higher-binned chips range from 5.1 GHz ($749.99 US) and 5.2 GHz ($1199.99 US). These are some pretty hefty prices you would have to pay for a meager 100-200 MHz overclock. According to Silicon Lottery, only the top 31% Core i9-9900KS chips can hit 5.1 GHz while only the top 3% chips can hit 5.2 GHz or greater frequencies. For achieving 5.1 GHz, Silicon Lottery pushed the voltage to 1.287V with an AVX Offset of 2 while the 5.2 GHz overclock is achieved using a voltage supply of 1.325V.\r\n\r\nNow here\'s the interesting part, while Silicon Lottery has no 5.2 GHz pre-binned chips listed for Core i9-9900K and Core i9-9900KF, they do have 5.1 GHz models listed. Compared to the 5.1 GHz Core i9-9900KS which is being sold for $749.99 US, the Core i9-9900K 5.1 GHz was priced at $930 US while the Core i9-9900KF 5.1 GHz was priced at $850 US. The main reason for the higher price compared to the Core i9-9900KS is because only 5-8 percent of the top tier chips were able to hit 5.1 GHz while with the Core i9-9900KS, you\'re always guaranteed a 5.1 GHz overclock.\r\n\r\nBy the time I was working on this post, the Core i9-9900KS 5.2 GHz chips have been sold out. These chips may probably have been picked up by enthusiasts and overclockers considering that they are golden samples. Still, paying $1199.99 US for 200 MHz is quite insane but I guess people are willing to pay that much for special binned chips. Since we are talking about the Core i9-9900KS, you may as well check out our own review of the processor which we overclocked to 5.3 GHz (1.350V) across all 8 cores.',
 1);
