-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 21, 2025 at 02:13 PM
-- Server version: 10.3.39-MariaDB
-- PHP Version: 8.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nick`
--

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `country_id`, `name`, `image`, `created_at`, `updated_at`) VALUES
(84, 58, 'New York', 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AXQCQNT9YT7D-dT5zYvXrDaXXlAyrEczIvoOHTqyAQRqjnxrt40fYiPw08t8ZTKlW9PSyIaDtqPCxXwDxmm3RrwTCb9WRcoqLl9KBLh9L1ZvqLciLKbUR0p6XbuovXFfu4DPjHGkVayUJMAeMxaQLvoCMNWjqrJHwvbWF7R4wamUlRzEeMAg5kl6xxF1gNW1qiJ4Ul8O2ednQQQD94uwVibX3ccHP4L31UdvdoNIWz4tZr5Up_JwAd63AmHtn-r967GYxTeJoAr63KNwUCf29aQbjVRq83w56nA-cecjIUPx-3gRVRH1CcxsjdCjhK-uRvN-L7dje5CyWB-q55lW7vx7NUCRubDgK4UFMGAHHmNMN9IHy7j3T-OE4OswZmIvFFHq23yj5OgyRCDO-y8UdwEMBLN1GIfgFBj18xEIvTwwOphojkivOXjwC-ACdJqFnr67o02aJi3w16xkLhCUN-jO5CcsTxGF9_WxD4AATOCFaqZCbkHB6-WpY2h1ms51OWfwn2zz_B3eoUxMtBKPwz2BhF1GG8UKHCq7x-LL78xF_7fgCECGZrf3omSmVkYY821JmovI3uKU&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', '2025-05-23 13:34:01', '2025-05-23 13:34:01'),
(85, 60, 'Abasto', 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AXQCQNQrb18SYS_lqRv8RNTiZdh1liQQWGz-XiYrV_LBLwZf_kfwBsyk094wb898C99h2wmW2J0mC5R6TDorO_WDDbAmnfR_7Ej8-mj_-9gV-IISLK2g94w6zWHMJfdOUFdIl6d8jz76dq2IirB5XAIHN6Y8e7VpmIvgkiW0OxHjhKg4I89uf7c0sjBdZlbBqkzHDOI3m7MMqSv2bQGIoMx3YhM5j5x4Zg0oQNHxk6ewFaEm9QMpvosuuDUHxnsFa1ZAPGNrl7sLKuteDlmbdbtUBPU_Eg-vc5QuZoH4TXHz6VtuuXUYNmXfol3fxWt7IUDEIenAUKowj9QdRKMpEwJYgIZce5yPP-LCAvhZGNhKbZIEMPLoqzNY9pE29zppGPy4xf-4Fu44Z5r9DONb8vHgbYqMNVLWhw6T0RPFPGCMb7M4BKhiNhTbLlqtfVHic5nzzDYXzY3m-m4PXWx8AtlDn7uCrsEwYmAiKB31NIio68y0egV-djf8razp4GPeUltzc3iFJrAtYoklqfOWxdmDtfxvfEvLfgZf1ya_j5eSckYDSE_xLJ7YLYl1YbAwqe6dun7kv0np7ttvUg&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', '2025-05-23 15:45:03', '2025-05-23 15:45:03'),
(86, 60, '28 de Noviembre', 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AXQCQNSA04KXFmCKK6wzTUrSICad-jsHom2YZrOuEB0VoKN_a8Uf-w8ilUgqX8kXjuaEjm5GpsImnYlqM5Oz8FrAp_roDJC8hed4xUmZI7qsexdOEbu9JGMpSAe26GtQmHUSE6ywf91q55LmCbr_FAl1a4vr-tyu35LHsXEGgOgle5PrWg27VPXeG89JNBU8JVSzB0mfcwV7I0lOUcfAqdyz4YchHfMozmZ4QeivbT8VPFsdKud964WcVoT8wi0AWQQJr0rZZ53OeK8NNLBGvFprZfQN5Tk8W0dka0wbyfKxfpzyWfCMm1-FceHWcsn89fYpHcgAG7zyryCOfD41i-banCS8G8Olh50RJ38usLVfz52kO95WXEmYoh1HRbytxw9UZkWH0yg4rKgr2FPB0vy1HlJnw98-LAz5gdz63lutfj3EPjJjMFNvMiMbsvKR24mi4JoKeCWJSnZFcZgMYOV7isWUnIrgZhiW3WozaB__XpmQmakCK4uG6MBX1QiWPmXFLuZ6tl3eo4mMMEs9UmxfhcFN3Qsq2RO8p19ykyecd2fo-ewerA01oWYKVhJau5lwb7o50EUfoB_EcQ&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', '2025-05-23 15:45:09', '2025-05-23 15:45:09'),
(87, 61, 'Abbottstown', 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AXQCQNSu1K0m2TNiHNSIh2edI7xa7feqXHyMqSilIWCZoU0zDsbK8SSnl623YrEEM4MuNDIDqXjdMX9nEGacoeQrp42c3kC3BB8tHs7He_yCZ_uABcHhlCf65a-4XWvLHK2R4rybTig_mL7sKDKYe6CjiKQUSm-CCL5IBfsJ35eP8wjhsyy4PwHZnOesndE2ehfUZ_PFSlJGbhzUXfEwWMJQMM6zGT49n1i2OKaOf73Nm96W9mi660mmqcP1jMEYVzba-lWku55lf4hujsHAqk3SGRgZWITLv0Lv8Q0H0kX-HbSN1FkophSobUwrVBYT9MCN7WpBdq70p6bqssmquNXfufvF0ICt-qAXEaRMr-74NumDTPkrp-DPXQyW94Nphsp3l4HajkUA3YqtIUBhxtNIKJDv72mk2f8tWib4OsZLrOjQ_DCd8gRBc0fJ-uCzMUe2aKc02kmtTgWxUWHdoh9HsdM0JmK5lap3hBjjNJ8Ssi8aFRDhwaQ3U0otSJvxbplFUAjTnS8CgOmW6_9G3IVdfsUL_KOmzYwfPXGAzV74tcdKDa2WQiRMaaCB1UbHJZM2HE8KMg&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', '2025-05-23 16:04:29', '2025-05-23 16:04:29'),
(88, 62, 'Bedok New Town', 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AXQCQNTHvCxRCkJ1M3lPY8WZ22JuqRzx4dFsqnRJQW0uFAT75PiIohjzkH9Efy51DsdAFvQuANpWIDFWUTJvnX0WJLRSeoqUQ9O2SHVPTQBHNuw4eBQf0Kqz1HmHoJbGz6FtgQXdt3c5jBjN2jcqvG1_LZXH5UFbz5Y99BgQuWYG_XM2j-jQyVsfdKDLGD9qPW-92Cd9cC8wSPHH2CZgQwaoKcm4iaG1uzknvcQ7qHTddyoUa0KM0GzRR77w-n3MeLw5GjkQRPcunzrdaBrWFzzH8jGnsLoNY_k9gEWLp2vrxyVNlEsYo-3bCAF1R0bfg7524JuMksRPFcn7B78GJ2_AP1GwMmK2fJP1ETrYyKZZJPeOmAHARalNJQZ3iJ66qeg0UsS_SivlxwRogrxCIwidiB5simX3dnzz_2yz0gCuGaRcteh2aXqkYQ38_OzIcApNYE_JAdLUsyl-CxkATk5a0-_lIxbKZTRqADD0pe_fDhLR-sej0SKYR_DmIVaiZAG0lOp7ZFmGkwzdWP4sVpyUOGs_7kcSRPwOnU6kdYeo68WwYSYFAtKlazfiFhmk8juSuKely3yVgWlhdA&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', '2025-05-26 22:02:25', '2025-05-26 22:02:25'),
(89, 62, 'Ang Mo Kio New Town', 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AXQCQNRC3aqm9yTcMHo51kH4zPf-F305_hiqQJOzd6uZdtmd8DMBfxNg0xtSKHWcgoYRHUSJ3-B4HzNaPZgW3CFW82ZHwcNDRhH9DNWQo1rRndxOBuALtfxn27by_4TjwFH8Nuvm-x8UQ0brKLtbXmaWIkhtrrwkii_HgnN8Tl0BWg7jgAt4kpU_8OHnsk3sUWN7VaXRDRMDtlB00RKfN1BkgqGH_FNzlH1iYqr_zqgY2W00r8czg8ipOpJ9kBwWbLxgZBCKNThelESiwjY2tROMySfEce-JOPhLWMpFC6bJc0NpXYxYhpt6JKA0ZzWe8uTCuEZmCj1JPRdhp-Q-M1rrEbwS6OhKgCbLl6ijvHlGuM8cDrpGUrb-3fgtqVkev3Sx_74CRX-2NH-3YPeTqfABaTw8wseCJjCb0n_cvXu2PENlHzw_gdYhZ5xPX37pc8VK8hO-xzuohSOEwRTWJGDoDtfClxqEI6u3U9R4E0dxmMlwaA7n5Jd-YzSTXQzWXEwaLRxI4-NEZDUN49wfSPA8bcpRdHZ3LfynRpsBNUfUTspBkhi7OqC1c_wDJOVeyrzHmhR7g0xeqpwrGg&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', '2025-05-26 22:02:30', '2025-05-26 22:02:30'),
(90, 63, 'Banja Luka', 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AXQCQNTK6p6nMG0MJXNr9_IPiotXpkqUFHHMEbPR4ENpR0dyIf7ZjXJhF_cOMzE3lGZHrXgXNEgpE-narWZ4U9x__qF3R45SMO2zkugtpusBmZo1-Dusth115enid3jA_rWEXCVO0itUTuwfKgVWX1dICpg5USxLy_O2795jZqG4FWVsPJIkHOieQi6GdfuDKMhXoOWH1eaUUdxVzwpp0vjEpx9DqD1FYNF2QUiVaXHiYovec3brnJ9lbDLHiMW-1m780JdT226FvB7zfssPvHyKepia0CUrCZ3wqeUQEXDglZ0uGKAelfmWDBmROllOSMl-lhLEEUO5Av2vbcafaDJnTG7CG_wiJZPKiut4Pq6U0d7WFPqSqZoceLpon08fnXwN1XwtePotmBpMPnEGK7b69F9y0jdlv6h822E66JurUMeGS3pOsLwByEZJmNs92Y8Hv7cYhSIANcpjcX6S8S7p0lTKv-EKC52RftSiYQC6JTNIgZlbKA9ojiQ-hYVBxK7m9LteAiCTOFXd-pwaCRotzlyNB8a_vVE5ijb2tydR_RyW75LSFiDFBBDuJDeYpNg6qfuxSRiml83SXrlHco5IsvFsNJNgSQ&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', '2025-05-26 22:08:27', '2025-05-26 22:08:27'),
(91, 63, 'Bijeljina', 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AXQCQNTXMzoGaMtesvJ-_rZ-xb4AncXc_rXyxV7aJAw2HSnxMU7Ii3n6su2tByvmZgM0SmU5SCRRfAwJfmw9WmXCoCRmj_bOMqD3RwnnAdLS0NNH0GdJiantPGs4Lzv-BfYfb83qekxWgf7Kf3Y0Z1kbXUUojZdUYL9ImrxLaqwogw0oGY5N0BP2G77McQjH5ltF-LaObNA6qGTFwxvlqk9LfMRqPKf6bAUpETmZWb1oG6Lyb48K5VyKtFT-pLJsUH4zFDA4ACzG79h1zsR1wWKXuuP2-JsjxgKQZVOWoLitOxcNl5rZx1irs8RE851HclvzoBERCp1jjgko10v4LoYyB2Vgdbff_j8htqtNi1AJUjFqSGJzgz1P7TFYXQgtbMTnkqIBXw-qpUUFpVWuzVV-w1ocULBKk2dKZVS3jNer4M7zZ7zSx9-Dy1Scdvm0-DRO0Q4kz1qJ9lQmmrBJaoWz6kTj39u5N-1MqxEgoEL3U9Rdv6dThWqd1IocG7MGpdVuxb5rF-SZ82QwNHZm7CxNlmw_Fc4P0v4lW5plVoWetBEN6r9BxgAURFHs6NLPyDkAk0PN25K3&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', '2025-05-26 22:08:32', '2025-05-26 22:08:32'),
(92, 65, 'New York Mills', 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AXQCQNQYlvASR0SWD4izK_DesKqWG4PoLe-a9iS88aotJlTEKy_Qta3GY_5SKAC2zkGyKinqOVV7mxdhhXzVrNWLmp7x8RgYCGm6yj88c9MIRCVCyRlNp-7q5VzwZ2Kmhn0EHmEB1ElJefvXeY1QrfP1B25M1p2rWdAwQpBchfvKbmSDW85v-V5FGS97mr-yH_YjP0Eb-ZgfQcNoDW2uhIVbcWMkxNsmp3cS9YTopLlNrQFE7KHDn42NFSf0lV96KH4RupbbJd2ykAPwUPONXPRC2P_Tcpiskj4NlkOaMiU7xmTeY6BYTXestdt68JvGAF4Kd_R4ZUgdqkAltjMDRktOdXusUW98z0uISLg7krkkxF4uP2ZGGYLhK9XP1dqihKKdjkG1vZncCNCr4m7HuClwHqio8lArznE_NypH_QhfgX6NA2zCRe0jqJuczFYYzBljyDpDcvhAY_NV5nkZ2ix3pooRBmsas8z5y24IJsOWi5D88sjYsaf081YGchcGrtN82yQeka4KwoLPUOLgLD2aPbHIoPGPlGbusVRPZwncVhiLktCF3f5pJz-vKRRFBFLb3Xd2A6e62zGAmg&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', '2025-06-20 12:48:03', '2025-06-20 12:48:03'),
(93, 58, 'Mountain View', NULL, '2025-06-20 12:53:53', '2025-06-20 12:53:53'),
(94, 58, 'San Francisco', NULL, '2025-06-20 13:03:25', '2025-06-20 13:03:25'),
(95, 66, 'Cabo San Lucas', 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=ATKogpe9A9vUWACvH2Q3SPXEyc6UeNI0sfQjvddr8muj1vY5TqNkJALjPR2PpitNr-v5B_SMCw-_AfKJX3BSUUyOEMaUUPfRzt3h2P9_mhg43IyMhpYuc5GJlzzR_BreGW45-saARpWrnyQ6oNbiq9YmtjFq9TmB53lzavxFm3QWpKGejraPrJ9sMEz8xKhM-03VN-vVjALFh6xG5j4AJVgYTXGDz6m5uq8wCWlPUvKf49YKP4aKG-6iXhHg1At1TrPusQBEcZR4GT4n1ehUE9xoipHZdvEwVD6IfMik0h8wKXLH1UD2Juw6c7V9Ryf3PXRIKxGtXAxolgpBsFAWXCJeiA-WmV5ae6-MqkeJ8jls0SW6qwbezpoACUNnfg32vblB5BVn5QylC4FMa0anWYQnx-7IdJs2tN4IRjM0jVSL3yrsuK9M9vHQeAlZTCarm-PUyyoygnyjZ3YV9qhp0cLLPm0Stlz8l2jIlyOb9Vzr4C2bUaMFO6k3_LN1NOW4FMpDN-1vZDjVJgoWdyTz4I2SnE94Yweyx2J_XpogxH2IENAESvcTR2cUPKVDv3fTouY82TE6xVXg&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', '2025-07-19 14:18:44', '2025-07-19 14:18:44'),
(96, 67, 'Canton', 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=ATKogpeKtkYZMFh2u0dVf3SVAEbBRW9pLXb5NXYc7gwtt87nGBGPV8rhC6bkBnaymXn9iQc4TAtFE1QlAQBi3XFDN3AOiEOL3MZIvOS0H1PlB59HlzanSl9ssvy5pnh7EhHtdGA1Tfoeahso6uAr1385nxjDnPlylXQ3zlrxG0oDcdV-ki8-_wxzpuHzkkuo4vADicNWcfB4gZ-TDsCowQuw3d1OKVf3RIJn9dFEMKQBvu8GyLjao0_wwqlLuyEphUf_alc4HiuBiNaodqCXnd8xOJ0o69QUfUZ0WVRgxCSJtuMFed_IqJxHceUjtfLwm35_kG5Ixr3kxOimimxIVYT_BDG85GrnkDVAGfIksDekqMB-XfGrFvpGsstdeb1mL9Zu2emZCKT9qsTDP1bRJfM-svuvuOcfZgVIa8r-OVc_KzUGaOYsm4bPWPPwh-L4TH3lkkwybW5COXSZRaaayklEe7-H2zzqUqZGRqUoPiiEVVjCm73GDy2MYcRe-ImgKRKpcK1QbYj98PBpzYzyG8tzbkmvT2kWANos6AKdVaGTYniXKNHZVHmZejO5zccsoOyxLtiquuEG&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', '2025-08-06 18:10:11', '2025-08-06 18:10:11'),
(97, 67, 'Belleville', 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=ATKogpd9lYSiLLT57T16iR0dKwPVJzFAX8wOzYqKxTet25DY8o5IFlyzaFsxyMLr-0uoDN7XE3E9ja1WOUr8rNn1QrgcX5e09UcXy9IdDdCpR6MqcKE9gh0PqS_I4stGcgfJCm5R93q49l4SN1lVsCags4AXda7xUpXh-9SZML4H8wYk2vZCUgp9_U2V0PuuV5gL4d4r_MHt9mAExPYsV9NtMyKqKRljlsWV3hdITK6Pxeg9QqiKZfhRhAYkDo3msTvvdBNGcozcqYZBaoyHG8x4UUHfBKjT8f6_qxhD5DgISQcdV0oihc1cZzRssJck8i2WdZhiJAvqpqdYoH6MvtElzQ2HqxX8zEjhexjZqkBr4bZYG8FU6ElwbHPkIHKnC99ObOHdnPR1X9My1XjpwjhvxHeNjZylXeCZwzafYYfXW0XLvLd9Wnte7Tq2AMXMdZDGTdLrGb2eCdjLodWl_KiLk-7rGbCv8wAkC72fiRB08mzxIY3JEVM2DZ79KtG8DmKdZhtP0ATy_Y7pgkU_6XCLbZ4XSR0s0IhZyUHhhwX0YVbJU4SKQepvC7EiG1erLONEkvLHoeDI&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', '2025-08-08 22:51:55', '2025-08-08 22:51:55');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `uri` varchar(255) DEFAULT NULL,
  `trip_name` varchar(255) DEFAULT NULL,
  `trip_description` text DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `user_id`, `name`, `uri`, `trip_name`, `trip_description`, `type`, `created_at`, `updated_at`) VALUES
(58, 115, 'United States', 'https://flagcdn.com/w320/us.png', NULL, NULL, 'private', '2025-05-23 13:33:44', '2025-05-23 16:51:39'),
(59, 115, 'Andorra', 'https://flagcdn.com/w320/ad.png', 'best', 'best trip', 'private', '2025-05-23 14:37:39', '2025-05-23 14:38:28'),
(60, 104, 'Argentina', 'https://flagcdn.com/w320/ar.png', '.....', '...', 'public', '2025-05-23 15:44:50', '2025-05-23 15:48:15'),
(61, 106, 'United States', 'https://flagcdn.com/w320/us.png', '....', '....', 'public', '2025-05-23 16:04:23', '2025-05-23 16:09:02'),
(62, 106, 'Singapore', 'https://flagcdn.com/w320/sg.png', '....', '...', 'public', '2025-05-26 22:02:17', '2025-05-26 22:06:13'),
(63, 104, 'Bosnia and Herzegovina', 'https://flagcdn.com/w320/ba.png', '...', '//', 'public', '2025-05-26 22:08:21', '2025-05-26 22:09:33'),
(64, 108, 'American Samoa', 'https://flagcdn.com/w320/as.png', NULL, NULL, 'public', '2025-06-10 19:59:10', '2025-06-10 19:59:23'),
(65, 88, 'United States', 'https://flagcdn.com/w320/us.png', 'best trip', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'public', '2025-06-20 12:47:43', '2025-06-20 12:49:43'),
(66, 94, 'Mexico', 'https://flagcdn.com/w320/mx.png', NULL, NULL, NULL, '2025-07-19 14:18:04', '2025-07-19 14:18:04'),
(67, 122, 'United States', 'https://flagcdn.com/w320/us.png', NULL, NULL, NULL, '2025-08-06 18:09:42', '2025-08-06 18:09:42');

-- --------------------------------------------------------

--
-- Table structure for table `diligence_verifications`
--

CREATE TABLE `diligence_verifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `receptionist_id` bigint(20) UNSIGNED DEFAULT NULL,
  `eitc` varchar(255) DEFAULT NULL,
  `ctc` varchar(255) DEFAULT NULL,
  `actc` varchar(255) DEFAULT NULL,
  `aotc` varchar(255) DEFAULT NULL,
  `irs_notes` varchar(255) DEFAULT NULL,
  `signature` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `document` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `internal_audits`
--

CREATE TABLE `internal_audits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `receptionist_id` bigint(20) UNSIGNED DEFAULT NULL,
  `failed` varchar(255) DEFAULT NULL,
  `intentional_failed` varchar(255) DEFAULT NULL,
  `passed` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `irs_status`
--

CREATE TABLE `irs_status` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `receptionist_id` bigint(20) UNSIGNED DEFAULT NULL,
  `accepted` varchar(255) DEFAULT NULL,
  `rejected` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'collage', '2023-09-14 14:13:10', '2023-09-14 14:26:47'),
(2, 'school', '2023-09-14 14:13:53', '2023-09-14 14:27:15'),
(3, 'bank', '2023-09-14 14:19:24', '2023-09-14 14:19:24'),
(4, 'University', '2024-12-06 15:40:50', '2024-12-06 15:40:50');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(10, '2022_11_03_095742_create_reset_code_passwords_table', 1),
(11, '2023_01_02_144542_create_receptionists_table', 1),
(12, '2023_01_02_175929_create_tax_payers_table', 1),
(13, '2023_01_02_181500_create_diligence_verifications_table', 1),
(14, '2023_01_02_181713_create_refund_dispersements_table', 1),
(15, '2023_01_02_181948_create_payment_methods_table', 1),
(16, '2023_01_02_182048_create_internal_audits_table', 1),
(17, '2023_01_02_182158_create_irs_statuses_table', 1),
(18, '2023_01_02_182325_create_refund_invoices_table', 1),
(19, '2023_01_02_182435_create_refferals_table', 1),
(20, '2023_05_15_145208_create_images_table', 1),
(21, '2023_05_15_145335_create_documents_table', 1),
(22, '2023_05_15_145415_create_signatures_table', 1),
(23, '2023_05_16_142201_create_permission_tables', 1),
(24, '2023_09_12_111853_create_notes_table', 2),
(25, '2023_09_12_142108_create_places_table', 3),
(26, '2023_09_27_102449_create_wish_lists_table', 4),
(27, '2025_03_07_060243_create_country_table', 4),
(28, '2025_03_07_073349_create_city_table', 5),
(29, '2025_03_24_074509_create_playlists_table', 6),
(30, '2025_03_24_081956_create_playlist_detail_table', 7),
(31, '2025_04_08_181605_create_trips_table', 8),
(32, '2025_04_08_185241_create_place_trips_table', 9),
(33, '2025_04_16_130018_create_place_saves_table', 10),
(34, '2025_04_16_135817_create_publish_trip_reviews_table', 11);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 83),
(2, 'App\\Models\\User', 88),
(2, 'App\\Models\\User', 97);

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `place_id` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notes`
--

INSERT INTO `notes` (`id`, `place_id`, `title`, `description`, `image`, `created_at`, `updated_at`) VALUES
(39, '85', 'my fav', 'my fav', NULL, '2025-04-11 17:44:15', '2025-04-11 17:44:15'),
(40, '86', 'qqq', 'qqqqq', NULL, '2025-04-11 17:54:28', '2025-04-11 17:54:28'),
(41, '82', 'notes', 'my notes', '', '2025-04-14 11:06:38', '2025-04-14 11:06:38'),
(42, '87', 'School', 'This is my school', NULL, '2025-04-15 21:05:08', '2025-04-15 21:05:08'),
(43, '88', 'hello', 'sdasdahd', NULL, '2025-04-16 14:01:18', '2025-04-16 14:01:18'),
(44, '89', 'My School', 'I went to my school after 15 years to know the progress of how the school development is taking place', '', '2025-04-16 15:58:08', '2025-04-16 15:58:08'),
(45, '90', 'testing', 'gffgfggfddgdgdgdg', NULL, '2025-04-16 16:24:51', '2025-04-16 16:24:51'),
(46, '91', 'asdasd', 'dasdasda', NULL, '2025-04-16 16:27:35', '2025-04-16 16:27:35'),
(47, '92', 'sadasd', 'sdasdasd', NULL, '2025-04-16 16:32:08', '2025-04-16 16:32:08'),
(48, '93', 'asas', 'asasa', NULL, '2025-04-16 16:34:41', '2025-04-16 16:34:41'),
(49, '94', 'gadjashgdas', 'sdgajsdhgsda', NULL, '2025-04-16 16:42:57', '2025-04-16 16:42:57'),
(50, '95', 'gadjashgdas', 'sdgajsdhgsda', NULL, '2025-04-16 16:44:26', '2025-04-16 16:44:26'),
(51, '96', 'asdajjagda', 'daskdasgjas', NULL, '2025-04-16 16:48:28', '2025-04-16 16:48:28'),
(52, '97', 'gadjashgdas', 'sdgajsdhgsda', NULL, '2025-04-16 16:51:04', '2025-04-16 16:51:04'),
(53, '98', 'gadjashgdas', 'sdgajsdhgsda', NULL, '2025-04-16 16:51:16', '2025-04-16 16:51:16'),
(54, '99', 'gadjashgdas', 'sdgajsdhgsda', NULL, '2025-04-16 16:51:40', '2025-04-16 16:51:40'),
(55, '100', 'ChIJCxP5zQ2jj4ARYFLLTPB-Y8o', 'asf ada das d', NULL, '2025-04-16 16:54:28', '2025-04-16 16:54:28'),
(56, '101', 'ChIJCxP5zQ2jj4ARYFLLTPB-Y8o', 'asf ada das d', NULL, '2025-04-16 16:55:22', '2025-04-16 16:55:22'),
(57, '102', 'gadjashgdas', 'sdgajsdhgsda', NULL, '2025-04-16 16:55:23', '2025-04-16 16:55:23'),
(58, '103', 'shedsdghas', 'ashgdhashgd', NULL, '2025-04-16 16:55:58', '2025-04-16 16:55:58'),
(59, '104', 'sdgashdasf', 'ahdgasgdhaj', NULL, '2025-04-16 16:56:49', '2025-04-16 16:56:49'),
(60, '105', 'ashdgajsdgahjsd', 'shdgasd', NULL, '2025-04-16 16:57:05', '2025-04-16 16:57:05'),
(61, '106', 'hhs', 'sdgajsdgj', NULL, '2025-04-16 16:57:43', '2025-04-16 16:57:43'),
(62, '107', 'adhasgds', 'sdhgajsdga', NULL, '2025-04-16 16:58:18', '2025-04-16 16:58:18'),
(63, '108', 'ChIJCxP5zQ2jj4ARYFLLTPB-Y8o', 'asf ada das d', NULL, '2025-04-16 16:58:50', '2025-04-16 16:58:50'),
(64, '109', 'ChIJCxP5zQ2jj4ARYFLLTPB-Y8o', 'asf ada das d', NULL, '2025-04-16 16:59:13', '2025-04-16 16:59:13'),
(65, '110', 'asdghsd', 'ajsvdad', NULL, '2025-04-16 16:59:42', '2025-04-16 16:59:42'),
(66, '111', 'dfahsgdahsd', 'asdgahd', NULL, '2025-04-16 17:00:15', '2025-04-16 17:00:15'),
(67, '112', 'sjdahsd', 'ajsndas', NULL, '2025-04-16 17:01:59', '2025-04-16 17:01:59'),
(68, '113', 'ChIJCxP5zQ2jj4ARYFLLTPB-Y8o', 'asf ada das d', NULL, '2025-04-16 17:02:50', '2025-04-16 17:02:50'),
(69, '114', 'hh', 'hh', NULL, '2025-04-16 17:35:29', '2025-04-16 17:35:29'),
(70, '115', 'asasasa', 'asdasfasf', NULL, '2025-04-17 17:31:53', '2025-04-17 17:31:53'),
(71, '116', 'My Exp', 'it was an avg', '', '2025-04-17 17:40:45', '2025-04-17 17:40:45'),
(72, '118', 'sdasd', 'dasdasd', NULL, '2025-04-24 12:00:21', '2025-04-24 12:00:21'),
(73, '119', 'aaaaaaa', 'aaaaaaa', NULL, '2025-04-24 14:48:21', '2025-04-24 14:48:21'),
(74, '120', 'jkhakshdkashdankdasd', 'adadaudguagd', NULL, '2025-04-28 15:43:06', '2025-04-28 15:43:06'),
(75, '121', NULL, NULL, NULL, '2025-05-19 21:42:28', '2025-05-19 21:42:28'),
(76, '122', 'very good meal', 'i like the meal so much', '', '2025-05-23 13:34:42', '2025-05-23 13:34:42'),
(77, '123', 'very good place', 'the place was so good', '', '2025-06-20 12:49:04', '2025-06-20 12:49:04'),
(78, '124', 'great', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', NULL, '2025-06-20 12:53:53', '2025-06-20 12:53:53'),
(79, '125', 'great', 'very good', NULL, '2025-06-20 13:03:25', '2025-06-20 13:03:25'),
(80, '126', 'notes test', 'test test test', '', '2025-08-18 00:57:58', '2025-08-18 00:57:58'),
(81, '127', 'notes test', 'test test test', '', '2025-08-18 00:58:33', '2025-08-18 00:58:33');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `secret` varchar(100) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `redirect` text NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) NOT NULL,
  `access_token_id` varchar(100) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `type` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `name`, `price`, `description`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Golden', '871', 'Non voluptatum solut', 'yearly', '2023-11-01 12:27:48', '2023-11-01 12:27:48'),
(2, 'Silver', '922', 'Culpa a voluptas fu', 'monthly', '2023-11-01 12:28:04', '2023-11-01 12:28:04');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `receptionist_id` bigint(20) UNSIGNED DEFAULT NULL,
  `out_of_pocket` varchar(255) DEFAULT NULL,
  `deduct_from_refund` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'role-list', 'web', '2023-09-11 06:42:48', '2023-09-11 06:42:48'),
(2, 'role-create', 'web', '2023-09-11 06:42:48', '2023-09-11 06:42:48'),
(3, 'role-edit', 'web', '2023-09-11 06:42:48', '2023-09-11 06:42:48'),
(4, 'role-delete', 'web', '2023-09-11 06:42:48', '2023-09-11 06:42:48'),
(5, 'user-list', 'web', '2023-09-11 06:42:48', '2023-09-11 06:42:48'),
(6, 'user-create', 'web', '2023-09-11 06:42:48', '2023-09-11 06:42:48'),
(7, 'user-edit', 'web', '2023-09-11 06:42:48', '2023-09-11 06:42:48'),
(8, 'user-delete', 'web', '2023-09-11 06:42:48', '2023-09-11 06:42:48'),
(9, 'permission-list', 'web', '2023-09-11 06:42:48', '2023-09-11 06:42:48'),
(10, 'permission-create', 'web', '2023-09-11 06:42:48', '2023-09-11 06:42:48'),
(11, 'permission-edit', 'web', '2023-09-11 06:42:48', '2023-09-11 06:42:48'),
(12, 'permission-delete', 'web', '2023-09-11 06:42:48', '2023-09-11 06:42:48'),
(13, 'change-password', 'web', '2023-09-11 06:42:48', '2023-09-11 06:42:48'),
(14, 'package-list', 'web', '2023-09-11 06:42:48', '2023-09-11 06:42:48'),
(15, 'package-create', 'web', '2023-09-11 06:42:48', '2023-09-11 06:42:48'),
(16, 'package-edit', 'web', '2023-09-11 06:42:48', '2023-09-11 06:42:48'),
(17, 'package-delete', 'web', '2023-09-11 06:42:48', '2023-09-11 06:42:48'),
(18, 'category-list', 'web', '2023-09-11 06:42:48', '2023-09-11 06:42:48'),
(19, 'category-create', 'web', '2023-09-11 06:42:48', '2023-09-11 06:42:48'),
(20, 'category-edit', 'web', '2023-09-11 06:42:48', '2023-09-11 06:42:48'),
(21, 'category-delete', 'web', '2023-09-11 06:42:48', '2023-09-11 06:42:48'),
(22, 'subcategory-list', 'web', '2023-09-11 06:42:48', '2023-09-11 06:42:48'),
(23, 'subcategory-create', 'web', '2023-09-11 06:42:48', '2023-09-11 06:42:48'),
(24, 'subcategory-edit', 'web', '2023-09-11 06:42:48', '2023-09-11 06:42:48'),
(25, 'subcategory-delete', 'web', '2023-09-11 06:42:48', '2023-09-11 06:42:48'),
(26, 'product-list', 'web', '2023-09-11 06:42:48', '2023-09-11 06:42:48'),
(27, 'product-create', 'web', '2023-09-11 06:42:49', '2023-09-11 06:42:49'),
(28, 'product-edit', 'web', '2023-09-11 06:42:49', '2023-09-11 06:42:49'),
(29, 'product-delete', 'web', '2023-09-11 06:42:49', '2023-09-11 06:42:49'),
(30, 'pages-list', 'web', '2023-09-11 06:42:49', '2023-09-11 06:42:49'),
(31, 'pages-create', 'web', '2023-09-11 06:42:49', '2023-09-11 06:42:49'),
(32, 'pages-edit', 'web', '2023-09-11 06:42:49', '2023-09-11 06:42:49'),
(33, 'pages-delete', 'web', '2023-09-11 06:42:49', '2023-09-11 06:42:49'),
(34, 'general_setting', 'web', '2023-09-11 06:42:49', '2023-09-11 06:42:49'),
(35, 'subscription-dash', 'web', '2024-11-22 17:52:27', '2024-11-22 17:52:27'),
(36, 'preferences-index', 'web', '2024-11-22 17:52:40', '2024-11-22 17:52:40'),
(37, 'preferences-create', 'web', '2024-11-22 17:53:05', '2024-11-22 17:53:05'),
(38, 'preferences-edit', 'web', '2024-11-22 17:53:17', '2024-11-22 17:53:17'),
(39, 'preferences-delete', 'web', '2024-11-22 17:53:24', '2024-11-22 17:53:24'),
(40, 'location-index', 'web', '2024-11-22 17:53:38', '2024-11-22 17:53:38'),
(41, 'location-create', 'web', '2024-11-22 17:53:48', '2024-11-22 17:53:48'),
(42, 'location-edit', 'web', '2024-11-22 17:53:56', '2024-11-22 17:53:56'),
(43, 'location-delete', 'web', '2024-11-22 17:54:01', '2024-11-22 17:54:01'),
(44, 'notes-index', 'web', '2024-11-22 17:54:17', '2024-11-22 17:54:17'),
(45, 'notes-create', 'web', '2024-11-22 17:54:23', '2024-11-22 17:54:23'),
(46, 'notes-edit', 'web', '2024-11-22 17:54:35', '2024-11-22 17:54:35'),
(47, 'notes-delete', 'web', '2024-11-22 17:54:49', '2024-11-22 17:54:49'),
(48, 'location-category-list', 'web', '2024-12-06 15:38:45', '2024-12-06 15:38:45'),
(49, 'location-category-create', 'web', '2024-12-06 15:38:53', '2024-12-06 15:38:53'),
(50, 'location-category-edit', 'web', '2024-12-06 15:39:02', '2024-12-06 15:39:02'),
(51, 'location-category-delete', 'web', '2024-12-06 15:39:11', '2024-12-06 15:39:11'),
(52, 'schedules-index', 'web', '2024-12-06 18:01:31', '2024-12-06 18:01:31'),
(53, 'schedules-create', 'web', '2024-12-06 18:01:40', '2024-12-06 18:01:40'),
(54, 'schedules-edit', 'web', '2024-12-06 18:01:49', '2024-12-06 18:01:49'),
(55, 'schedules-delete', 'web', '2024-12-06 18:01:59', '2024-12-06 18:01:59');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 6, 'MyApp', '8af9af1e9b3df3a4275bddb7748ee4a5b9d720c80e9ef1e24387ebbf5a9a5788', '[\"*\"]', NULL, NULL, '2023-09-11 07:07:43', '2023-09-11 07:07:43'),
(2, 'App\\Models\\User', 5, 'MyApp', '8093b7df5e22d7641073a7004c7d2eec8569409d3321fca62153d194b7ab3b1f', '[\"*\"]', NULL, NULL, '2023-09-11 07:08:23', '2023-09-11 07:08:23'),
(3, 'App\\Models\\User', 1, 'MyApp', '755a0259196dd70279dbb0c461a6e402c9da32786e309fd169b0bb9ecd8f5e21', '[\"*\"]', NULL, NULL, '2023-09-11 07:09:30', '2023-09-11 07:09:30'),
(4, 'App\\Models\\User', 1, 'MyApp', 'a944d7b3766ef5b8afc55856d124da4264d9a7a51065fe8c3c86c7acac4f7313', '[\"*\"]', NULL, NULL, '2023-09-11 07:14:35', '2023-09-11 07:14:35'),
(5, 'App\\Models\\User', 7, 'MyApp', 'e39fc6c652b77137c0a20fe9a01f2a07edd8f7624d7e47d7fe3a5ada6acd9b14', '[\"*\"]', NULL, NULL, '2023-09-11 07:15:08', '2023-09-11 07:15:08'),
(6, 'App\\Models\\User', 1, 'MyApp', '1b3f1f6b73cc5c3582cce6406fa45c0f91bcb082a1871a54258f6cfea63d49f8', '[\"*\"]', NULL, NULL, '2023-09-11 07:33:26', '2023-09-11 07:33:26'),
(7, 'App\\Models\\User', 8, 'MyApp', '30fd19734eafc74a35ada300b65487d89943eb75d4fb7e65f93a18f5cf9fdc1c', '[\"*\"]', NULL, NULL, '2023-09-11 07:34:51', '2023-09-11 07:34:51'),
(8, 'App\\Models\\User', 1, 'MyApp', 'e7f134e6cff5e6e86de83bfa6d7e00c64524eff31cee40effb2b7540fb12e352', '[\"*\"]', NULL, NULL, '2023-09-11 07:51:00', '2023-09-11 07:51:00'),
(9, 'App\\Models\\User', 1, 'MyApp', 'bfd5c1d134f1650b2ecacf33c0174086af8a4b2597b4115d6952c32526bf7435', '[\"*\"]', NULL, NULL, '2023-09-11 07:51:27', '2023-09-11 07:51:27'),
(10, 'App\\Models\\User', 1, 'MyApp', 'a467100ee62dc329951485db7f411e57f6052e12e041a5bc035c52a69f846a05', '[\"*\"]', NULL, NULL, '2023-09-11 07:52:31', '2023-09-11 07:52:31'),
(11, 'App\\Models\\User', 1, 'MyApp', '69cc507cd574c82941507615374ded29e597aa01b4694661694c162e53f4289f', '[\"*\"]', NULL, NULL, '2023-09-11 07:52:41', '2023-09-11 07:52:41'),
(12, 'App\\Models\\User', 1, 'MyApp', '96c48a3bb6ba773e35f49dbef45ce2e65dd681edf1bd3291bd9f6c6299ff1f41', '[\"*\"]', NULL, NULL, '2023-09-11 07:53:54', '2023-09-11 07:53:54'),
(13, 'App\\Models\\User', 1, 'MyApp', '96bcabd67d8e25014ea10e10a7f735aa8fa6dd764f91f21654a1e660b9a1508b', '[\"*\"]', NULL, NULL, '2023-09-11 07:54:38', '2023-09-11 07:54:38'),
(14, 'App\\Models\\User', 1, 'MyApp', '0090f4cb7953297e284b00582169cb3a1f515d8ffe586afed83391b3f64fe756', '[\"*\"]', NULL, NULL, '2023-09-11 07:54:59', '2023-09-11 07:54:59'),
(15, 'App\\Models\\User', 1, 'MyApp', 'cb8f7ee974df1ccdd6401478cfb83c7efb9c9b313f757031e9a6703487b6a3b0', '[\"*\"]', NULL, NULL, '2023-09-11 07:55:34', '2023-09-11 07:55:34'),
(16, 'App\\Models\\User', 9, 'MyApp', '96e93b1af19979c5f1040f1debd1689dc5bad447dd6d5127730c14aabddaada5', '[\"*\"]', NULL, NULL, '2023-09-11 08:18:27', '2023-09-11 08:18:27'),
(17, 'App\\Models\\User', 1, 'MyApp', 'c6e305a0eeab6a408943f608d450f552f01a0106139241d1fcb8e4b141ebd8ad', '[\"*\"]', NULL, NULL, '2023-09-11 08:19:21', '2023-09-11 08:19:21'),
(18, 'App\\Models\\User', 1, 'MyApp', '9ea3160a3229aad77612dfcbb783dc2b2e733fa39cc3cf54032fbe3f413fdd0e', '[\"*\"]', NULL, NULL, '2023-09-11 08:19:24', '2023-09-11 08:19:24'),
(19, 'App\\Models\\User', 1, 'MyApp', '9125cb209ca06e31c9c57ae81e756c4ec4472c8abbafecbc454d22550df46482', '[\"*\"]', NULL, NULL, '2023-09-11 09:30:01', '2023-09-11 09:30:01'),
(20, 'App\\Models\\User', 1, 'MyApp', 'd2b32ed16bd668bd7d94b842a4af0f231f9e53dfc3be14fc3c85d9de69a313f1', '[\"*\"]', NULL, NULL, '2023-09-11 09:40:46', '2023-09-11 09:40:46'),
(21, 'App\\Models\\User', 1, 'MyApp', 'f2238d7ea993be5e7afab7d8aea4a144ac28251f73f04212e1ee7479cd731694', '[\"*\"]', NULL, NULL, '2023-09-11 09:42:23', '2023-09-11 09:42:23'),
(22, 'App\\Models\\User', 1, 'MyApp', '71cf160f8de94547491b26abb64a9a2e251c09bca6c905224b5fd40134ec6251', '[\"*\"]', NULL, NULL, '2023-09-11 09:43:18', '2023-09-11 09:43:18'),
(23, 'App\\Models\\User', 1, 'MyApp', 'f0b2f2fb01d833b6286028e0c507f358654feaf6f714a919160ed2137330ba3f', '[\"*\"]', NULL, NULL, '2023-09-11 09:51:20', '2023-09-11 09:51:20'),
(24, 'App\\Models\\User', 1, 'MyApp', 'b8fdf33d9ca21a701c2b8df84d2afb13d5348740efaed2f517059972471b0166', '[\"*\"]', '2023-09-11 10:13:49', NULL, '2023-09-11 09:58:37', '2023-09-11 10:13:49'),
(25, 'App\\Models\\User', 1, 'MyApp', '2c0fdfd6b1a31f0a8c468baa12cdef34eb93f41306d51405f7a21f8368370dea', '[\"*\"]', '2023-09-11 10:22:43', NULL, '2023-09-11 10:21:05', '2023-09-11 10:22:43'),
(26, 'App\\Models\\User', 10, 'MyApp', '9cae92d6b299cb516ea11ee946150e2aad4f5e855a7cea51fc857501266c3f4d', '[\"*\"]', NULL, NULL, '2023-09-11 10:23:33', '2023-09-11 10:23:33'),
(27, 'App\\Models\\User', 1, 'MyApp', '23058fbbf620e107b86e26b11a2883cd79ef0254654669e02f6a7425adc68a14', '[\"*\"]', '2023-09-12 04:54:11', NULL, '2023-09-12 04:48:50', '2023-09-12 04:54:11'),
(28, 'App\\Models\\User', 1, 'MyApp', 'b483c9ad7cb61245c9280835dc6ceb5d669cef25bbef590e418d809ea63ffeda', '[\"*\"]', NULL, NULL, '2023-09-12 15:29:58', '2023-09-12 15:29:58'),
(29, 'App\\Models\\User', 11, 'MyApp', '9b5755a0eed3ceb4e5cac0fc6f7b24e74db69f1673e38ef7087b9d74ed1c78a5', '[\"*\"]', NULL, NULL, '2023-09-12 15:52:45', '2023-09-12 15:52:45'),
(30, 'App\\Models\\User', 12, 'MyApp', '9439c5485754fdf5a72a58cfe2d3b1f967e9186dd5264d9327a3c9ba61d57edb', '[\"*\"]', NULL, NULL, '2023-09-12 15:55:15', '2023-09-12 15:55:15'),
(31, 'App\\Models\\User', 1, 'MyApp', '8273bf04a51bed06e02383303243e93e0c8842fb38456cc05331e003a9e76c80', '[\"*\"]', NULL, NULL, '2023-09-12 16:03:48', '2023-09-12 16:03:48'),
(32, 'App\\Models\\User', 11, 'MyApp', '851197bdf14de522ac87b72d35ecf2d5312bc4026ead0c5b2a8be48625274b86', '[\"*\"]', NULL, NULL, '2023-09-12 16:07:04', '2023-09-12 16:07:04'),
(33, 'App\\Models\\User', 11, 'MyApp', '2e28051e23c9fe2d762f206bcba72530c899fc6e4345cfd96b410d072f6ef72d', '[\"*\"]', NULL, NULL, '2023-09-12 16:07:24', '2023-09-12 16:07:24'),
(34, 'App\\Models\\User', 11, 'MyApp', '0c06227bc45f4f0506567b5d4025c4f019273b50a41453b0b8c41769da5965c9', '[\"*\"]', NULL, NULL, '2023-09-12 16:09:47', '2023-09-12 16:09:47'),
(35, 'App\\Models\\User', 11, 'MyApp', '1d2b432ea237b0e5a2165665a791a2da8eb23f5f9bd2d899da4854fbace08672', '[\"*\"]', NULL, NULL, '2023-09-12 16:11:27', '2023-09-12 16:11:27'),
(36, 'App\\Models\\User', 11, 'MyApp', '1c7e1d1dc18bb8f62033e11d55c95b058ae2a88a55214724a877910cb454b957', '[\"*\"]', NULL, NULL, '2023-09-12 16:12:01', '2023-09-12 16:12:01'),
(37, 'App\\Models\\User', 11, 'MyApp', '674bf18c962022a836c3aa7e65f4a763ca8b7c428b9255464357c0abdd5ac282', '[\"*\"]', NULL, NULL, '2023-09-12 16:12:07', '2023-09-12 16:12:07'),
(38, 'App\\Models\\User', 11, 'MyApp', '80d88f53b39fa76199cff63673c9eda1b3737fdb6c34bcd1519b238217931ac9', '[\"*\"]', NULL, NULL, '2023-09-12 16:12:24', '2023-09-12 16:12:24'),
(39, 'App\\Models\\User', 11, 'MyApp', '80785fbfe879e040169050839a9c6882b348e9cf417099227c42a83a3f21a0ac', '[\"*\"]', NULL, NULL, '2023-09-12 16:12:38', '2023-09-12 16:12:38'),
(40, 'App\\Models\\User', 11, 'MyApp', '5ebe78fbba83b1476ce8617ddd3da83661549fa7afbbd171e2f424348cbb9c67', '[\"*\"]', NULL, NULL, '2023-09-12 16:12:59', '2023-09-12 16:12:59'),
(41, 'App\\Models\\User', 11, 'MyApp', '1456f7677e3c789285395c31019cc5e79c04eab0b9065499ba300ee72e186d30', '[\"*\"]', NULL, NULL, '2023-09-12 16:13:49', '2023-09-12 16:13:49'),
(42, 'App\\Models\\User', 11, 'MyApp', '2c51b0153f9a5fa91c3521a1c8b951b1daa10ecc3ec7a838e138b7d284743489', '[\"*\"]', NULL, NULL, '2023-09-12 16:15:47', '2023-09-12 16:15:47'),
(43, 'App\\Models\\User', 11, 'MyApp', 'f96015b3dc88f5096573aff54201cf164992a31ae02f6ede7b200fe4e9c7bae0', '[\"*\"]', NULL, NULL, '2023-09-12 16:16:57', '2023-09-12 16:16:57'),
(44, 'App\\Models\\User', 11, 'MyApp', 'da7d67dd37554dd212552720ea44f4112c6975fd0474896e281c12a966825bae', '[\"*\"]', NULL, NULL, '2023-09-12 16:17:32', '2023-09-12 16:17:32'),
(45, 'App\\Models\\User', 11, 'MyApp', '62c8cccaa66a8fd978ab0561013f51fc6f6c47b7e7cf1722106b8dc38f30791e', '[\"*\"]', NULL, NULL, '2023-09-12 16:19:02', '2023-09-12 16:19:02'),
(46, 'App\\Models\\User', 11, 'MyApp', 'cf56f073e1fcb239461fe8c009062ba99e597a1b51b2920b664c2b0ac8d520f7', '[\"*\"]', NULL, NULL, '2023-09-12 16:19:38', '2023-09-12 16:19:38'),
(47, 'App\\Models\\User', 11, 'MyApp', 'a3ca91697081be73ad3c25155563f2fb9f02ee91e42d8f626d9b641aeb389af2', '[\"*\"]', NULL, NULL, '2023-09-12 16:19:45', '2023-09-12 16:19:45'),
(48, 'App\\Models\\User', 11, 'MyApp', '320306a8f47cd7ee7d202419d67af0e350eddc1a0ca9764bac546ccb06f21180', '[\"*\"]', NULL, NULL, '2023-09-12 16:20:13', '2023-09-12 16:20:13'),
(49, 'App\\Models\\User', 11, 'MyApp', 'ee75dc5a9ae1a9a7fa3cdd44506822ed6cbebbf956db4f5a955d89849df208cf', '[\"*\"]', NULL, NULL, '2023-09-12 16:20:43', '2023-09-12 16:20:43'),
(50, 'App\\Models\\User', 11, 'MyApp', '8e8faf41b91da098d0fa056f669dd21b6f1e35788b3d37a1c2213657ec8d33ec', '[\"*\"]', NULL, NULL, '2023-09-12 16:21:18', '2023-09-12 16:21:18'),
(51, 'App\\Models\\User', 11, 'MyApp', '198badd92feac394b453dd8c79d97441519356aeaeb1dbc1a29dc5213e6573ca', '[\"*\"]', NULL, NULL, '2023-09-12 16:21:41', '2023-09-12 16:21:41'),
(52, 'App\\Models\\User', 11, 'MyApp', '6dc07c62bca7d1badc72f0e8db270bb1071e9e081e01e6f3a4e733d947cf7327', '[\"*\"]', NULL, NULL, '2023-09-12 16:22:06', '2023-09-12 16:22:06'),
(53, 'App\\Models\\User', 13, 'MyApp', '1c234e41e2efcd85748f8d38cb10c7d99e3bc1f268619d35e2a5a61e425f8610', '[\"*\"]', NULL, NULL, '2023-09-12 16:24:11', '2023-09-12 16:24:11'),
(54, 'App\\Models\\User', 14, 'MyApp', '190145d18943e91c944b6f536f79bf760da01118a9c21b79b34874f80fe68c8e', '[\"*\"]', NULL, NULL, '2023-09-12 16:32:57', '2023-09-12 16:32:57'),
(55, 'App\\Models\\User', 15, 'MyApp', 'd3798929633909f8e39da2769d9ef8e08e4f9cc56f00e4394618c36542ae8f47', '[\"*\"]', NULL, NULL, '2023-09-12 16:33:56', '2023-09-12 16:33:56'),
(56, 'App\\Models\\User', 11, 'MyApp', '119905823ce00b75172575a94e25df80261371f20374b738c4599a05f1e735f7', '[\"*\"]', '2023-09-12 16:38:10', NULL, '2023-09-12 16:37:48', '2023-09-12 16:38:10'),
(57, 'App\\Models\\User', 1, 'MyApp', 'c1193fb76909e01eec2313bf7aac7511832868251b9709800086c8a601dccf79', '[\"*\"]', NULL, NULL, '2023-09-12 16:55:16', '2023-09-12 16:55:16'),
(58, 'App\\Models\\User', 16, 'MyApp', '11694084dd70f108e58e15169dad1f43769313e21587b943ee946b894833a57d', '[\"*\"]', NULL, NULL, '2023-09-12 16:58:53', '2023-09-12 16:58:53'),
(59, 'App\\Models\\User', 16, 'MyApp', 'd4c8b40e91307ad4a0c1c8b8ea39e740de94f5336fa73d5d0dd107494330cd43', '[\"*\"]', NULL, NULL, '2023-09-12 16:59:08', '2023-09-12 16:59:08'),
(60, 'App\\Models\\User', 1, 'MyApp', '9977b7a66fea6cda59a4b746203bec1fdde8cab99309d4d12bd78750c1de2d26', '[\"*\"]', NULL, NULL, '2023-09-12 17:05:42', '2023-09-12 17:05:42'),
(61, 'App\\Models\\User', 1, 'MyApp', '30c1b4993b8b466d4d66d47f74340d632cd081a91ac503724b8e01e8e94355b9', '[\"*\"]', NULL, NULL, '2023-09-12 17:41:55', '2023-09-12 17:41:55'),
(62, 'App\\Models\\User', 11, 'MyApp', '366fc7b8a4769a525294c0a8c338c6f8756eb177c77613a995df24fcaf9889fe', '[\"*\"]', NULL, NULL, '2023-09-12 18:45:01', '2023-09-12 18:45:01'),
(63, 'App\\Models\\User', 11, 'MyApp', 'd6e9549d25392d5f9ba1ab3ec6a3f4dcaa003ddad299b9e30eb18ab8599bba4f', '[\"*\"]', NULL, NULL, '2023-09-12 18:52:23', '2023-09-12 18:52:23'),
(64, 'App\\Models\\User', 11, 'MyApp', 'b74d7fe92d792cec4431fac067d15255f63f15bdce55f6139f00cad746c0d76a', '[\"*\"]', '2023-09-13 20:43:23', NULL, '2023-09-12 19:00:36', '2023-09-13 20:43:23'),
(65, 'App\\Models\\User', 1, 'MyApp', 'dd089b3edc84f2485224cc3de59b5a8ae7a47dcd83be1f26020d195361c514c8', '[\"*\"]', NULL, NULL, '2023-09-12 19:10:46', '2023-09-12 19:10:46'),
(66, 'App\\Models\\User', 1, 'MyApp', '0cfeb1f8afb496d58d8c5fdcb55264a2a6780709b1f7dca6121f25b47ad0d362', '[\"*\"]', NULL, NULL, '2023-09-13 14:19:56', '2023-09-13 14:19:56'),
(67, 'App\\Models\\User', 1, 'MyApp', '2917c2d07c099b70e46e1bcfc7dc9e1472f162a6997f7f01b9bfc370ac7eebac', '[\"*\"]', NULL, NULL, '2023-09-13 14:36:37', '2023-09-13 14:36:37'),
(68, 'App\\Models\\User', 1, 'MyApp', 'c25259d57be958efdef9eb7a206bc6eabc175355c2f90a169dfb57dbe1208e0f', '[\"*\"]', NULL, NULL, '2023-09-13 15:07:25', '2023-09-13 15:07:25'),
(69, 'App\\Models\\User', 1, 'MyApp', 'eb6a8ba825d1c901ae47c6a2ebb8d650bcfe32782146a8474576be163c39a19d', '[\"*\"]', NULL, NULL, '2023-09-13 15:07:34', '2023-09-13 15:07:34'),
(70, 'App\\Models\\User', 1, 'MyApp', '706b782ac9809be0c792121e1e2760764edfd31093e7b9cfd15bb97824e85e0c', '[\"*\"]', NULL, NULL, '2023-09-13 15:18:44', '2023-09-13 15:18:44'),
(71, 'App\\Models\\User', 1, 'MyApp', 'cb8f76329f91bb8ee6c100c8058586f36dfb239f22ba90bc0f4ab6bf63a7b710', '[\"*\"]', '2023-09-13 20:20:39', NULL, '2023-09-13 15:39:12', '2023-09-13 20:20:39'),
(72, 'App\\Models\\User', 11, 'MyApp', '4fa1c49ab7be4fff47035e8cc6190bf3967f3e080a9508e3d77886d51d433c21', '[\"*\"]', NULL, NULL, '2023-09-14 12:59:50', '2023-09-14 12:59:50'),
(73, 'App\\Models\\User', 11, 'MyApp', '1675bb48a31492fd4f929625da8472b506f1e8e875179de91f680a0b8e4887b9', '[\"*\"]', NULL, NULL, '2023-09-14 13:12:58', '2023-09-14 13:12:58'),
(74, 'App\\Models\\User', 11, 'MyApp', '5036a77c8c5bb35082b7ce597e97b500ae92584ea76ae221a09d2433c6d8b855', '[\"*\"]', NULL, NULL, '2023-09-14 13:19:10', '2023-09-14 13:19:10'),
(75, 'App\\Models\\User', 11, 'MyApp', '05346a372b0345f004337275d48c41246135d19e6c8b6017adc6191e4dc6c676', '[\"*\"]', '2023-09-14 15:08:56', NULL, '2023-09-14 13:35:21', '2023-09-14 15:08:56'),
(76, 'App\\Models\\User', 1, 'MyApp', '252a7958326671fab070b505f9b4b8e77aae137ae9a46d933f753862a884d496', '[\"*\"]', '2023-09-14 14:27:15', NULL, '2023-09-14 14:07:42', '2023-09-14 14:27:15'),
(77, 'App\\Models\\User', 1, 'MyApp', 'd4d1ea363a273ec1ab04537e48b3bf06db68f5d419d36cafb6465a19174dd434', '[\"*\"]', '2023-09-14 14:32:15', NULL, '2023-09-14 14:18:32', '2023-09-14 14:32:15'),
(78, 'App\\Models\\User', 11, 'MyApp', '62e4ab86b5c1e420b298223e424e6f73efc35be600745d5688c480486796517c', '[\"*\"]', '2023-09-14 18:39:07', NULL, '2023-09-14 16:21:32', '2023-09-14 18:39:07'),
(79, 'App\\Models\\User', 1, 'MyApp', 'd1580dc868f2255fcfda20f660b5477b240657592a1de7bb43d528ec458eb219', '[\"*\"]', '2023-09-14 16:39:10', NULL, '2023-09-14 16:37:49', '2023-09-14 16:39:10'),
(80, 'App\\Models\\User', 1, 'MyApp', 'c970f439ddfeedf4ec942f9a09ba34c21bc4adfd3285cd3cd4d771b97107f220', '[\"*\"]', '2023-09-14 17:02:53', NULL, '2023-09-14 16:59:51', '2023-09-14 17:02:53'),
(81, 'App\\Models\\User', 1, 'MyApp', '4c35d27952c74e30b22409f016a908e114db76a1a755f4097484b3dd34a39386', '[\"*\"]', NULL, NULL, '2023-09-14 17:03:10', '2023-09-14 17:03:10'),
(82, 'App\\Models\\User', 1, 'MyApp', 'a2df860b01a9dd368faf48cc8e4764b1bbc380302f0ec58757f893dc2cab9d06', '[\"*\"]', NULL, NULL, '2023-09-14 17:04:15', '2023-09-14 17:04:15'),
(83, 'App\\Models\\User', 1, 'MyApp', 'f0b2649cfda4bf21c2ef59816ad74eb167ae63b3dec5f1c86b58779d5d006020', '[\"*\"]', NULL, NULL, '2023-09-14 17:06:11', '2023-09-14 17:06:11'),
(84, 'App\\Models\\User', 1, 'MyApp', 'ac9879d057b405cf83ce0dc3afb8121c1318765bf5391afd34694aabdc31955e', '[\"*\"]', NULL, NULL, '2023-09-14 17:06:26', '2023-09-14 17:06:26'),
(85, 'App\\Models\\User', 1, 'MyApp', '3ec052c56408b063bbce47796499056e227b6a10781b2f12fa094a7ceb82c141', '[\"*\"]', NULL, NULL, '2023-09-14 17:06:34', '2023-09-14 17:06:34'),
(86, 'App\\Models\\User', 1, 'MyApp', '1c4d59327d092404dcc58791bddfd2b35f95f6c498f3d5b14ef7278b7a20c33c', '[\"*\"]', NULL, NULL, '2023-09-14 17:07:01', '2023-09-14 17:07:01'),
(87, 'App\\Models\\User', 1, 'MyApp', '7af282769b281d3d24d4796c990dff83617a4f9817e5a1a0798c664093097871', '[\"*\"]', NULL, NULL, '2023-09-14 17:07:29', '2023-09-14 17:07:29'),
(88, 'App\\Models\\User', 1, 'MyApp', '0b4ac830641a034ea3e444853cd4027b24a5da3369ee8b07db7cf44122bf1858', '[\"*\"]', NULL, NULL, '2023-09-14 17:14:14', '2023-09-14 17:14:14'),
(89, 'App\\Models\\User', 1, 'MyApp', 'ae45c8e506a148acf4d743c0438d7f699e4ddacfb3da6485041c5ee1a92a7c08', '[\"*\"]', NULL, NULL, '2023-09-14 17:14:39', '2023-09-14 17:14:39'),
(90, 'App\\Models\\User', 1, 'MyApp', '5b35bf789d4fb5fbc103700aafe48b915f1475b464613ac5bed0c929412d2f7b', '[\"*\"]', '2023-09-14 17:31:19', NULL, '2023-09-14 17:14:58', '2023-09-14 17:31:19'),
(91, 'App\\Models\\User', 1, 'MyApp', '21e53885847b0c6b1b8bb7f56c9f7cd8a5e604bfeb235816c21bfc6969eab529', '[\"*\"]', NULL, NULL, '2023-09-14 18:08:46', '2023-09-14 18:08:46'),
(92, 'App\\Models\\User', 1, 'MyApp', '472e75aa6425fb7617d8e8e223c2a59a277c51bfafbeea2f633f2b8019f4b0ff', '[\"*\"]', '2023-09-22 17:37:26', NULL, '2023-09-14 18:12:25', '2023-09-22 17:37:26'),
(93, 'App\\Models\\User', 17, 'MyApp', '03200f0e08af8c249f241b7c06deeb37bd43c96885447bcd6646e97bf2bc3e36', '[\"*\"]', NULL, NULL, '2023-09-14 18:52:05', '2023-09-14 18:52:05'),
(94, 'App\\Models\\User', 18, 'MyApp', 'd5e4208d64a1229ff05c7fbd8822655450cfc6365fa132fa47b17a1a4788356f', '[\"*\"]', NULL, NULL, '2023-09-14 18:55:31', '2023-09-14 18:55:31'),
(95, 'App\\Models\\User', 18, 'MyApp', 'e49b808cc0e48322198aaa66c2dffcf960f8a39bea37e3ac51be9d0b6bdd3be5', '[\"*\"]', NULL, NULL, '2023-09-14 18:58:02', '2023-09-14 18:58:02'),
(96, 'App\\Models\\User', 18, 'MyApp', '68e18aff10cbb7948b8fbe6558b4227e7d4e08e13171ca2251dc513e29fd9c71', '[\"*\"]', '2023-09-14 19:02:30', NULL, '2023-09-14 18:59:34', '2023-09-14 19:02:30'),
(97, 'App\\Models\\User', 19, 'MyApp', '7e3d64e2a02a88c8a14380bb130d0b91c053cce964e2339de207533678881bf4', '[\"*\"]', '2023-09-14 19:07:52', NULL, '2023-09-14 19:03:14', '2023-09-14 19:07:52'),
(98, 'App\\Models\\User', 19, 'MyApp', '279e4afb6bc77a59ce302c76afa2a877d4de7d24d0f25d217c887b40c790a932', '[\"*\"]', '2023-09-14 19:47:19', NULL, '2023-09-14 19:09:13', '2023-09-14 19:47:19'),
(99, 'App\\Models\\User', 11, 'MyApp', 'a89ca69ee7c46f348f8f06a80d09302acc802f46b55f73f9503266669c2e7083', '[\"*\"]', '2023-09-14 21:02:40', NULL, '2023-09-14 20:06:36', '2023-09-14 21:02:40'),
(100, 'App\\Models\\User', 11, 'MyApp', '7f25204bdb27936620344b13e7127207ff051226e6f512d5008123ed0495d70f', '[\"*\"]', '2023-09-14 21:06:49', NULL, '2023-09-14 21:04:40', '2023-09-14 21:06:49'),
(101, 'App\\Models\\User', 20, 'MyApp', '23a197ee268ea1c68553d39e865ff069f41f13d5560d7c2064d764b404b3a4b3', '[\"*\"]', NULL, NULL, '2023-09-15 20:32:51', '2023-09-15 20:32:51'),
(102, 'App\\Models\\User', 20, 'MyApp', '1e5e7c2d8db89f213dcebbcef50de5faf6589ca2768f771d93f89dd368bec0d7', '[\"*\"]', '2023-09-15 20:45:48', NULL, '2023-09-15 20:33:43', '2023-09-15 20:45:48'),
(103, 'App\\Models\\User', 21, 'MyApp', '12752ee3cc9784e58abbef4264cadfc12658a027e3ae6152042d478a1c8e4c79', '[\"*\"]', NULL, NULL, '2023-09-15 20:55:17', '2023-09-15 20:55:17'),
(104, 'App\\Models\\User', 21, 'MyApp', 'd46c8d9cae4e2bf06168a44da96a1cf076a64428429c5556f5e13f69ad785aaa', '[\"*\"]', '2023-09-15 20:57:10', NULL, '2023-09-15 20:56:09', '2023-09-15 20:57:10'),
(105, 'App\\Models\\User', 21, 'MyApp', 'a8033e2e4e6e7670de15e0aacf463e38bed0518063f45118dccc014807e505cf', '[\"*\"]', '2023-09-15 21:16:09', NULL, '2023-09-15 20:58:29', '2023-09-15 21:16:09'),
(106, 'App\\Models\\User', 22, 'MyApp', '0afd63a4f5f73b79b42c6ec6f457ef4279e118d3afb173d74e43b11ff30f037d', '[\"*\"]', '2023-09-22 17:14:34', NULL, '2023-09-22 17:11:38', '2023-09-22 17:14:34'),
(107, 'App\\Models\\User', 22, 'MyApp', 'ff54b2bfd4fa83135248c5d7e00b7c9df37956a7302657efb10567ac63a8e682', '[\"*\"]', NULL, NULL, '2023-09-22 17:22:44', '2023-09-22 17:22:44'),
(108, 'App\\Models\\User', 1, 'MyApp', '8f7ea203ed905e7cf8689115df41073585a37e41fd36a67eca25577e725b04e8', '[\"*\"]', NULL, NULL, '2023-09-22 17:24:40', '2023-09-22 17:24:40'),
(109, 'App\\Models\\User', 23, 'MyApp', '9b6c3161d90a8c10e9bc59d990335b88a70e3d3a610469d27992eba7c4a21bb8', '[\"*\"]', NULL, NULL, '2023-09-22 17:24:50', '2023-09-22 17:24:50'),
(110, 'App\\Models\\User', 22, 'MyApp', '93b07570507cd607bc38ae394be3c68db02143602138a7a3c4c1ded38046f79c', '[\"*\"]', NULL, NULL, '2023-09-22 17:25:03', '2023-09-22 17:25:03'),
(111, 'App\\Models\\User', 24, 'MyApp', 'e3544ae107edaf0e82c6d1740605c0fb7aca3be0c43969c2024767138c5ed6bc', '[\"*\"]', NULL, NULL, '2023-09-22 17:25:11', '2023-09-22 17:25:11'),
(112, 'App\\Models\\User', 25, 'MyApp', '05cd0d19fa4169cf0e84ac85e84ce9fad36e5dc2b794ade8770b7ffee00a2599', '[\"*\"]', NULL, NULL, '2023-09-22 17:25:29', '2023-09-22 17:25:29'),
(113, 'App\\Models\\User', 22, 'MyApp', 'e3fc250d76ea5d4122e5d844481339962112ccabd2996df1d79353cb357383cb', '[\"*\"]', NULL, NULL, '2023-09-22 17:37:00', '2023-09-22 17:37:00'),
(114, 'App\\Models\\User', 26, 'MyApp', '6cd6e084f8e5d3af4ed575fc01d53f475f9fb4bedeb17074700b51579f419c6f', '[\"*\"]', NULL, NULL, '2023-09-22 17:39:07', '2023-09-22 17:39:07'),
(115, 'App\\Models\\User', 27, 'MyApp', '76ac16d4623b185208b64dbdf4ef2cac618c84cc350081cb2b8adcf7cce207b0', '[\"*\"]', NULL, NULL, '2023-09-22 17:40:16', '2023-09-22 17:40:16'),
(116, 'App\\Models\\User', 28, 'MyApp', '91e17cd38ddbe4417598d3142ebf52564e969d47a3cb874016e9f4765049093a', '[\"*\"]', NULL, NULL, '2023-09-22 17:40:28', '2023-09-22 17:40:28'),
(117, 'App\\Models\\User', 29, 'MyApp', 'b584979265d437c2236785c40d37ef03c08d3dbc819d71ee4f3e17b72b282a90', '[\"*\"]', NULL, NULL, '2023-09-22 17:40:59', '2023-09-22 17:40:59'),
(118, 'App\\Models\\User', 30, 'MyApp', '668f81c32b746d323c3499b6c1f2e493bd52aa0cc725a0e57f549c4429281340', '[\"*\"]', NULL, NULL, '2023-09-22 17:41:55', '2023-09-22 17:41:55'),
(119, 'App\\Models\\User', 31, 'MyApp', 'b761c98ce22c95c35b7de02173c0a2d9eaa14ab81feed0c4503f51df85759303', '[\"*\"]', NULL, NULL, '2023-09-22 19:00:54', '2023-09-22 19:00:54'),
(120, 'App\\Models\\User', 32, 'MyApp', '04d68e3ed0ba92dba6c3d2bd83a61ed2a0f5995cb03477bd8b96a3ec0420d82e', '[\"*\"]', NULL, NULL, '2023-09-22 19:01:14', '2023-09-22 19:01:14'),
(121, 'App\\Models\\User', 33, 'MyApp', '505ef8c5015315f53a6dfb32b828128b9309129d5021155f97bc911ae2d90c5a', '[\"*\"]', '2023-09-22 20:22:12', NULL, '2023-09-22 19:02:22', '2023-09-22 20:22:12'),
(122, 'App\\Models\\User', 22, 'MyApp', '3bf502f5c83bb81721ab8fa65119c218d1fd93afb8d437e13aeb632722e92ef5', '[\"*\"]', '2023-09-22 21:16:27', NULL, '2023-09-22 20:36:57', '2023-09-22 21:16:27'),
(123, 'App\\Models\\User', 12, 'MyApp', '48c386fc701f69ab0b9ac7b5b42772f02afe6cdbe329c42b4be85b1903c65f00', '[\"*\"]', '2023-09-22 21:33:54', NULL, '2023-09-22 21:25:38', '2023-09-22 21:33:54'),
(124, 'App\\Models\\User', 12, 'MyApp', 'ba9533843e445fb3990b1be0bd8da7b9ac8981b233c47fbf5f806f2cc0a2a8ff', '[\"*\"]', '2023-09-22 22:10:24', NULL, '2023-09-22 21:38:02', '2023-09-22 22:10:24'),
(125, 'App\\Models\\User', 33, 'MyApp', 'ee0586847b6c3be09e89d52659a15dce8ea15f1d81ec3477d0b08d9f50c0f9c4', '[\"*\"]', '2023-09-22 22:26:29', NULL, '2023-09-22 22:12:43', '2023-09-22 22:26:29'),
(126, 'App\\Models\\User', 1, 'MyApp', 'c92c72d224042a02dfec3c9b7833f0400458ad1734fbf751e1483288d998e89a', '[\"*\"]', '2023-09-26 20:46:44', NULL, '2023-09-22 22:27:34', '2023-09-26 20:46:44'),
(127, 'App\\Models\\User', 34, 'MyApp', 'f3a4e925d3d1762d2940af0e26dd3c7c86c4f6d525a93e18b7335f4319e3dad1', '[\"*\"]', '2023-09-26 22:29:06', NULL, '2023-09-26 20:19:16', '2023-09-26 22:29:06'),
(128, 'App\\Models\\User', 1, 'MyApp', '832de9e26668af1af38b57d2b7a139d8c9e955020b6aa0b1514fa2a6887b1244', '[\"*\"]', NULL, NULL, '2023-09-26 20:22:43', '2023-09-26 20:22:43'),
(129, 'App\\Models\\User', 1, 'MyApp', '6deec4ad865ca2546afce0b673405e896df851b6aaede0bca601408453e53145', '[\"*\"]', '2023-09-26 22:31:35', NULL, '2023-09-26 20:28:36', '2023-09-26 22:31:35'),
(130, 'App\\Models\\User', 34, 'MyApp', 'f605c46061d3482ca578190f2d8c9d1890fbe101569b766fe3bd1a84445856f8', '[\"*\"]', '2023-09-27 21:50:22', NULL, '2023-09-26 22:30:11', '2023-09-27 21:50:22'),
(131, 'App\\Models\\User', 35, 'MyApp', 'a2e1cedacd4c776fd9a0f45bd9c927b6db0ac308e3d44e4f5bc0ae8dda28e349', '[\"*\"]', '2023-09-26 23:18:36', NULL, '2023-09-26 23:16:25', '2023-09-26 23:18:36'),
(132, 'App\\Models\\User', 36, 'MyApp', '4efb1a2694ad4a77f323bc312cc01d4323e0fe5bac46d990642a24e30db0c657', '[\"*\"]', '2023-09-26 23:28:04', NULL, '2023-09-26 23:22:09', '2023-09-26 23:28:04'),
(133, 'App\\Models\\User', 1, 'MyApp', 'e1637de45d6a3715dec91762377c017bd9efe2556569e61b6a29de4d2107d900', '[\"*\"]', '2023-09-27 16:18:55', NULL, '2023-09-27 15:16:32', '2023-09-27 16:18:55'),
(134, 'App\\Models\\User', 1, 'MyApp', '74573fb3d9839a5e31232bdc53fea4ae95a45d6dd2e6120d2461ac99b40bf1f7', '[\"*\"]', '2023-09-27 17:52:04', NULL, '2023-09-27 16:57:02', '2023-09-27 17:52:04'),
(135, 'App\\Models\\User', 1, 'MyApp', 'baeb85ea8240e4dd05324c1591b75b2137fd310bd99702b763ef1be3909a6886', '[\"*\"]', NULL, NULL, '2023-09-27 18:41:33', '2023-09-27 18:41:33'),
(136, 'App\\Models\\User', 1, 'MyApp', 'a91ca23d686f3aa41ce8d2db18afbaa7719f7d8c51db38e9b17e9680b1df5722', '[\"*\"]', '2023-09-27 21:32:03', NULL, '2023-09-27 18:53:10', '2023-09-27 21:32:03'),
(137, 'App\\Models\\User', 1, 'MyApp', 'f5221fbddd5a3ed297a6736fab0f7c950e2e356adb5839b7256c7454e6540364', '[\"*\"]', '2023-09-27 21:28:01', NULL, '2023-09-27 19:13:49', '2023-09-27 21:28:01'),
(138, 'App\\Models\\User', 1, 'MyApp', 'a92fdd65b193cbabdbd26ffcd94d03ccf1d644e4ec34e8fb701398626979364f', '[\"*\"]', '2023-09-27 22:02:36', NULL, '2023-09-27 20:50:10', '2023-09-27 22:02:36'),
(139, 'App\\Models\\User', 37, 'MyApp', '9ba89d6f1cb51e37f39c0629a1bcf3066c535f293fe5c44a6195d4ad2311d59c', '[\"*\"]', '2023-09-27 21:43:03', NULL, '2023-09-27 21:10:08', '2023-09-27 21:43:03'),
(140, 'App\\Models\\User', 37, 'MyApp', 'f36c7eea294a65e04c3c31606f340a96102731c1685bc541906665255ed101f2', '[\"*\"]', '2023-09-27 21:56:04', NULL, '2023-09-27 21:51:01', '2023-09-27 21:56:04'),
(141, 'App\\Models\\User', 38, 'MyApp', '3eae5ac69e8b3464f37818c98fb84bd697a00159830a672d5ead88cd787b6f2e', '[\"*\"]', '2023-09-29 21:35:27', NULL, '2023-09-29 21:32:34', '2023-09-29 21:35:27'),
(142, 'App\\Models\\User', 39, 'MyApp', 'c3b950cfe9da2e84e9ba968f5eec4d95bfba84a9c16b3320f634473a708a7006', '[\"*\"]', NULL, NULL, '2023-10-03 02:27:58', '2023-10-03 02:27:58'),
(143, 'App\\Models\\User', 40, 'MyApp', '9d40632affb5f3e7e533815153da81355026da3c06690ab50b1f7a79aba884da', '[\"*\"]', '2023-10-03 18:09:31', NULL, '2023-10-03 18:09:13', '2023-10-03 18:09:31'),
(144, 'App\\Models\\User', 41, 'MyApp', '47d3a7a7fb1f0918b598eff903b9fd7df68d9ab21553a0b674ea78fe3e75c3b2', '[\"*\"]', '2023-10-03 22:29:03', NULL, '2023-10-03 22:25:04', '2023-10-03 22:29:03'),
(145, 'App\\Models\\User', 1, 'MyApp', 'e5176676882c9986362da03ce7d4bff3b6694c392cda6cdb4fdfbe8e9e81aed1', '[\"*\"]', NULL, NULL, '2023-10-09 19:12:22', '2023-10-09 19:12:22'),
(146, 'App\\Models\\User', 1, 'MyApp', 'ad539d360bc592cf1c328b1632c39a3d7084fdff959edf34bdf2c5b300a6d049', '[\"*\"]', NULL, NULL, '2023-10-09 19:13:17', '2023-10-09 19:13:17'),
(147, 'App\\Models\\User', 13, 'MyApp', 'a45bca63a22973252aed6545525590a6f814b6a105259fb2935c09b5cf36ad79', '[\"*\"]', NULL, NULL, '2023-10-09 19:13:50', '2023-10-09 19:13:50'),
(148, 'App\\Models\\User', 1, 'MyApp', '1275e9178ae07b794d4b9371998f8380a746bb6324ada2e70dd611dcc1d8b38f', '[\"*\"]', NULL, NULL, '2023-10-09 19:20:45', '2023-10-09 19:20:45'),
(149, 'App\\Models\\User', 1, 'MyApp', '9fe3640296821315116778057e5d260831f35a5884ae4e5b103ba078eba61e9c', '[\"*\"]', '2023-10-09 19:25:12', NULL, '2023-10-09 19:24:09', '2023-10-09 19:25:12'),
(150, 'App\\Models\\User', 13, 'MyApp', '70cbb5686c2e8d34ac719f7b802a09f95bc73f29d3710adb4eb83e3ae77cd452', '[\"*\"]', '2023-10-09 19:25:52', NULL, '2023-10-09 19:25:44', '2023-10-09 19:25:52'),
(151, 'App\\Models\\User', 13, 'MyApp', '24490f75c62e6055cae729629d8417e7e8b34945bdd914c34797b3bb70b44020', '[\"*\"]', '2023-10-12 03:30:23', NULL, '2023-10-09 22:15:28', '2023-10-12 03:30:23'),
(152, 'App\\Models\\User', 42, 'MyApp', '3d232bbb2c7d0cdd9986cd582b6623a42d2b6a17c0d1c40a42948ee16c9f733d', '[\"*\"]', '2023-10-11 20:49:47', NULL, '2023-10-11 20:49:27', '2023-10-11 20:49:47'),
(153, 'App\\Models\\User', 42, 'MyApp', '8dcbd47e11ca9418bb6e11132d371475d1927816f43278cca9916afc329ae576', '[\"*\"]', '2023-10-11 20:51:23', NULL, '2023-10-11 20:50:36', '2023-10-11 20:51:23'),
(154, 'App\\Models\\User', 43, 'MyApp', '939d78f5c1b041594a2c85ef2fa4958b628be311f6f3dc43b6d110d43e7c1eed', '[\"*\"]', '2023-10-11 21:50:47', NULL, '2023-10-11 21:07:20', '2023-10-11 21:50:47'),
(155, 'App\\Models\\User', 44, 'MyApp', '12e8501cd74011bb40f77176db254fc776f61931b1d7945cda4e17fdc595e3e3', '[\"*\"]', '2023-10-12 03:29:00', NULL, '2023-10-12 01:00:21', '2023-10-12 03:29:00'),
(156, 'App\\Models\\User', 13, 'MyApp', '6079537e2bf9e311da6d1d49781ea59bd6983e30295b039df8674bb1f2879aa0', '[\"*\"]', '2023-10-12 03:39:45', NULL, '2023-10-12 03:37:08', '2023-10-12 03:39:45'),
(157, 'App\\Models\\User', 13, 'MyApp', 'ddec734e4d35dabe6938eebc650a244a12d4b781e60fa975e1bd839b1eeda032', '[\"*\"]', NULL, NULL, '2023-10-12 03:40:52', '2023-10-12 03:40:52'),
(158, 'App\\Models\\User', 13, 'MyApp', 'f2ef13905197e0cf5555af26127b8a4ecf5d3136ddedc1ed8837b4069b5a1add', '[\"*\"]', NULL, NULL, '2023-10-12 03:48:46', '2023-10-12 03:48:46'),
(159, 'App\\Models\\User', 13, 'MyApp', 'c61e430ef638efd55caa77c749431c54036e6e2ab84fc3edaf14ff1f20965b3c', '[\"*\"]', NULL, NULL, '2023-10-12 04:00:24', '2023-10-12 04:00:24'),
(160, 'App\\Models\\User', 45, 'MyApp', '42ebff794576482d1c0817f642d3a74b5f650c5ac2ffff7a06e1d88d33d0e9d1', '[\"*\"]', '2023-10-12 18:49:22', NULL, '2023-10-12 18:36:33', '2023-10-12 18:49:22'),
(161, 'App\\Models\\User', 46, 'MyApp', '4a1433d5dc25673975a5edd51c1968f6fa8f925fc80bdc8186298af3c3666362', '[\"*\"]', '2023-10-12 20:23:00', NULL, '2023-10-12 19:52:46', '2023-10-12 20:23:00'),
(162, 'App\\Models\\User', 46, 'MyApp', '414bbe247a2315ca1d53181fa64488832f4fbb234d9eab36f07d0ac89c189dd0', '[\"*\"]', NULL, NULL, '2023-10-12 20:24:11', '2023-10-12 20:24:11'),
(163, 'App\\Models\\User', 13, 'MyApp', '0deea6823240690df797a7f19092af3796869b0048ccb4bb5846eac3335707d1', '[\"*\"]', NULL, NULL, '2023-10-12 21:37:01', '2023-10-12 21:37:01'),
(164, 'App\\Models\\User', 46, 'MyApp', '49784d90a00d675fc72eab484c5f932314845da2c0e79fe713dfdd4bfe611c2a', '[\"*\"]', NULL, NULL, '2023-10-14 00:42:25', '2023-10-14 00:42:25'),
(165, 'App\\Models\\User', 22, 'MyApp', '9fd27b2816d77bb05a139e35f01466e1d3c6e0642fb52ef7e7d83ecd12fb3052', '[\"*\"]', '2023-10-20 15:42:50', NULL, '2023-10-19 17:33:29', '2023-10-20 15:42:50'),
(166, 'App\\Models\\User', 47, 'MyApp', '3ad93390ca6109cb6a2bd24bdd179446961e093d4bf7c8478cf8480af8ff08d7', '[\"*\"]', '2023-10-20 16:55:15', NULL, '2023-10-20 16:51:03', '2023-10-20 16:55:15'),
(167, 'App\\Models\\User', 48, 'MyApp', '0b6db4fb97914ca6888686059579e4999ac5d61abe13e445f10ae9c92fbb77a8', '[\"*\"]', '2023-11-03 20:44:41', NULL, '2023-11-03 20:42:04', '2023-11-03 20:44:41'),
(168, 'App\\Models\\User', 2, 'MyApp', '4b4dce395eeffcf6be3038a9d74f99791693863bc861970b82fd78941ea5b31f', '[\"*\"]', '2023-11-03 22:55:17', NULL, '2023-11-03 22:08:46', '2023-11-03 22:55:17'),
(169, 'App\\Models\\User', 49, 'MyApp', '0de1f3e2a138b3dfcc08392210dd1d5502cc8935a18aa961d877761e1ab16771', '[\"*\"]', NULL, NULL, '2023-11-08 13:42:46', '2023-11-08 13:42:46'),
(170, 'App\\Models\\User', 50, 'MyApp', 'fbbe0f59be37a3860861e64e404a86ace3ee1e1120eccb36dccf1ae4a624c585', '[\"*\"]', '2023-11-08 15:29:30', NULL, '2023-11-08 14:00:05', '2023-11-08 15:29:30'),
(171, 'App\\Models\\User', 51, 'MyApp', 'd9e7988bbb52eedb611302defd3ad4d73f7cc8abcab2bbf06f4aa477f93ba70b', '[\"*\"]', '2023-11-08 16:11:54', NULL, '2023-11-08 15:31:31', '2023-11-08 16:11:54'),
(172, 'App\\Models\\User', 52, 'MyApp', 'ae98502b7f54966969a345be6fb845288d00a1f817b2d993da2aed637d767b09', '[\"*\"]', NULL, NULL, '2023-11-08 18:39:54', '2023-11-08 18:39:54'),
(173, 'App\\Models\\User', 52, 'MyApp', 'f68a9c5455dc23e96270280777c31ba3cf7f6d01f87546982b3dd5b0f03cd56d', '[\"*\"]', '2023-11-08 19:09:58', NULL, '2023-11-08 18:41:03', '2023-11-08 19:09:58'),
(174, 'App\\Models\\User', 52, 'MyApp', '34a0ebcb89133a5967e47a8089913316cae2d67411498ce976e3d257710445c1', '[\"*\"]', '2023-11-09 14:33:48', NULL, '2023-11-08 19:15:16', '2023-11-09 14:33:48'),
(175, 'App\\Models\\User', 49, 'MyApp', '123a73df20b95aa19c64cf76cfd0c8e5738b6695c7fe6d9d7ef850fb23384b28', '[\"*\"]', '2023-11-08 21:22:14', NULL, '2023-11-08 21:21:36', '2023-11-08 21:22:14'),
(176, 'App\\Models\\User', 53, 'MyApp', '303cf3fbd1075a9093208f5e16c87af128cdf1655d0de4f017c948c0c9471e57', '[\"*\"]', '2023-11-08 22:25:52', NULL, '2023-11-08 21:43:01', '2023-11-08 22:25:52'),
(177, 'App\\Models\\User', 54, 'MyApp', 'a64942095c7caa42a3a5fa2c03b3ecbf2c5bd7d75e5dd368566711c86f1ff64c', '[\"*\"]', '2023-11-09 00:24:31', NULL, '2023-11-08 22:55:02', '2023-11-09 00:24:31'),
(178, 'App\\Models\\User', 55, 'MyApp', 'ac94c30ddba02f2f75b29c7fa06d839e0a17782dffcc3ba4d719deecff076a39', '[\"*\"]', '2023-11-09 14:35:27', NULL, '2023-11-09 14:35:21', '2023-11-09 14:35:27'),
(179, 'App\\Models\\User', 55, 'MyApp', '03da41d1b8d02a7c8f84c6901e73a2e5d31190da297ce9eb161f7e9a087f75b3', '[\"*\"]', NULL, NULL, '2023-11-09 14:42:27', '2023-11-09 14:42:27'),
(180, 'App\\Models\\User', 55, 'MyApp', 'fa03fc2e8bcda3d994c427eaa893d07d13bf4720001d785d18c23ca4b4796130', '[\"*\"]', NULL, NULL, '2023-11-09 14:44:16', '2023-11-09 14:44:16'),
(181, 'App\\Models\\User', 55, 'MyApp', 'e703d64e72a5ee0a08f65632cf33dcab86e3de711ecc26ec3a0f37575c4cdafa', '[\"*\"]', '2023-11-09 14:50:07', NULL, '2023-11-09 14:46:22', '2023-11-09 14:50:07'),
(182, 'App\\Models\\User', 56, 'MyApp', 'f7f745e0be52c9e393d584629b449a5c2b0a5c9964f1072f3b26cfb3c8037db4', '[\"*\"]', '2023-11-14 21:53:05', NULL, '2023-11-14 21:51:01', '2023-11-14 21:53:05'),
(183, 'App\\Models\\User', 57, 'MyApp', '022c1abd565e34221d812710445666d29fa58a3eac54229443167b268934fcb8', '[\"*\"]', '2023-11-21 00:15:19', NULL, '2023-11-21 00:15:11', '2023-11-21 00:15:19'),
(184, 'App\\Models\\User', 58, 'MyApp', 'aed03b0f3d8839950153301b539e61b3bfaf8bd3f1e942712121c874db89238f', '[\"*\"]', '2023-11-21 00:16:50', NULL, '2023-11-21 00:16:46', '2023-11-21 00:16:50'),
(185, 'App\\Models\\User', 59, 'MyApp', 'aa9c8fe65a7fdd44fe8ecf5ccff3ea9a360da7d0c9a35f128bb4cfa9f1db5942', '[\"*\"]', '2023-11-23 13:35:54', NULL, '2023-11-23 13:26:07', '2023-11-23 13:35:54'),
(186, 'App\\Models\\User', 60, 'MyApp', '1c4c8f0a3b65112c854c39b8d48c3d59a93a3bd22ce6aeb8c63b88c855c87683', '[\"*\"]', '2023-11-27 15:40:00', NULL, '2023-11-27 15:35:12', '2023-11-27 15:40:00'),
(187, 'App\\Models\\User', 47, 'MyApp', '77b7352d603db24bef9767a44f64cc24abe667b4d2f4b6332189a7a40f34731d', '[\"*\"]', NULL, NULL, '2023-11-27 15:40:10', '2023-11-27 15:40:10'),
(188, 'App\\Models\\User', 47, 'MyApp', 'ad0b51ccecb4cfa32ca7f612e15d97cfcfa3d192ff35fc0e39010364d13a31aa', '[\"*\"]', '2023-11-27 16:00:14', NULL, '2023-11-27 15:40:34', '2023-11-27 16:00:14'),
(189, 'App\\Models\\User', 61, 'MyApp', 'e30d0ad56e6a6ed354015fafd319a58d7ced4013f6e999659ddf2de42fa891a2', '[\"*\"]', NULL, NULL, '2023-11-27 16:51:36', '2023-11-27 16:51:36'),
(190, 'App\\Models\\User', 62, 'MyApp', '1ec17ed4aec4cbb5235a4e1c2f3a1df82d298ced72198e6131d15797c5b594e2', '[\"*\"]', '2023-12-13 14:28:55', NULL, '2023-11-27 17:54:03', '2023-12-13 14:28:55'),
(191, 'App\\Models\\User', 47, 'MyApp', '1504ee9c464227d1fe304fd67326bd1e436b791afc641bd4027d3c65efee3826', '[\"*\"]', NULL, NULL, '2023-11-27 17:55:57', '2023-11-27 17:55:57'),
(192, 'App\\Models\\User', 63, 'MyApp', '7f7d43d66d7da3bc6adaadd32d932adf689065eb828a3c67324e137845c874a9', '[\"*\"]', '2023-11-27 18:34:23', NULL, '2023-11-27 17:56:50', '2023-11-27 18:34:23'),
(193, 'App\\Models\\User', 64, 'MyApp', '9302c2e86ec89fc59e0ab723363b7a6278744a4d7c00cf5bf1efd65bb9f59312', '[\"*\"]', '2023-12-08 01:52:36', NULL, '2023-12-08 01:51:41', '2023-12-08 01:52:36'),
(194, 'App\\Models\\User', 59, 'MyApp', '09b02af072318f27b76aecc6e2bce4c7a0dc47fd586ca14b5bfb20a2618d5d45', '[\"*\"]', '2025-04-04 04:36:48', NULL, '2023-12-09 00:45:19', '2025-04-04 04:36:48'),
(195, 'App\\Models\\User', 65, 'MyApp', 'fda4f64063e5552651bc09427fdceba7751a7ee36224b75e275c5320f53a8a3b', '[\"*\"]', '2023-12-13 17:04:21', NULL, '2023-12-13 14:35:34', '2023-12-13 17:04:21'),
(196, 'App\\Models\\User', 62, 'MyApp', '4fec0f176665df5f7d667dccb6fddc638ae96f7fdf1e5c0427f47d1626e2205b', '[\"*\"]', '2023-12-13 15:05:20', NULL, '2023-12-13 15:00:47', '2023-12-13 15:05:20'),
(197, 'App\\Models\\User', 65, 'MyApp', 'c9ad5003f6f1bdd65137f1089faa3eaeca91f0e19e854e4b6173f91e53f3c925', '[\"*\"]', '2023-12-13 16:33:29', NULL, '2023-12-13 15:07:01', '2023-12-13 16:33:29'),
(198, 'App\\Models\\User', 65, 'MyApp', '69f272c50f8b03955f03ac14c6d2cfcd1c62c3b0bab19dedea0361c05d52a078', '[\"*\"]', '2023-12-27 19:09:35', NULL, '2023-12-13 18:31:26', '2023-12-27 19:09:35'),
(199, 'App\\Models\\User', 65, 'MyApp', '46051d807b61bccd5747bf33b93544cdb4d77d1b5e12ce3c5a554e9995dd1317', '[\"*\"]', '2023-12-27 19:52:54', NULL, '2023-12-27 14:28:45', '2023-12-27 19:52:54'),
(200, 'App\\Models\\User', 66, 'MyApp', '5d00acbb936e07f7d53b783f7d45a093823392fa6c64bc966e58f1ed967fb759', '[\"*\"]', '2024-01-15 22:52:12', NULL, '2024-01-15 22:51:41', '2024-01-15 22:52:12'),
(201, 'App\\Models\\User', 67, 'MyApp', '3da158477cc6be4765d22be8bdbf97f87bd331b78da3e192b54a20bcb6588143', '[\"*\"]', '2024-01-30 16:47:56', NULL, '2024-01-30 16:35:12', '2024-01-30 16:47:56'),
(202, 'App\\Models\\User', 2, 'MyApp', '356648fed0a1731ee51ab4329080cd614175147f57778c9046d0111704649682', '[\"*\"]', '2024-03-22 12:48:09', NULL, '2024-03-07 13:14:41', '2024-03-22 12:48:09'),
(203, 'App\\Models\\User', 2, 'MyApp', 'ee85501f418292d270115e76833fffa074802f7eb1b7131454efe2073cc3b415', '[\"*\"]', NULL, NULL, '2024-03-07 15:33:26', '2024-03-07 15:33:26'),
(204, 'App\\Models\\User', 2, 'MyApp', '0ba8150a17faa350fe7c33283ef4c921ce38fe230c73da31ac0465ed8a411941', '[\"*\"]', '2024-03-07 15:37:54', NULL, '2024-03-07 15:37:41', '2024-03-07 15:37:54'),
(205, 'App\\Models\\User', 2, 'MyApp', 'd97e86742fcdd2bbc32193b017e6eac2bb782fc6fa1d4a4fef98bf3d9fb6354e', '[\"*\"]', NULL, NULL, '2024-03-22 13:28:04', '2024-03-22 13:28:04'),
(206, 'App\\Models\\User', 2, 'MyApp', 'd49a339de88c1474d43a83ca2472c61bcb98bb242dda2737db6b90947b111653', '[\"*\"]', NULL, NULL, '2024-03-22 13:30:35', '2024-03-22 13:30:35'),
(207, 'App\\Models\\User', 2, 'MyApp', '102248555921f42471be31be7f11f3f43535df37c97e6f066cebdd2651b566bd', '[\"*\"]', NULL, NULL, '2024-03-22 13:33:45', '2024-03-22 13:33:45'),
(208, 'App\\Models\\User', 2, 'MyApp', '5cdd3dba05b7eef81eff8c4a8d2a9d599fa6f0c1bb3a3a3e37528344243245b4', '[\"*\"]', '2024-03-26 04:43:50', NULL, '2024-03-22 13:34:21', '2024-03-26 04:43:50'),
(209, 'App\\Models\\User', 2, 'MyApp', '106f939de0545bd21a3e4debeccb2596e0a0d12f48e9cd8f430401437c7a9597', '[\"*\"]', '2024-03-25 12:02:28', NULL, '2024-03-25 11:40:52', '2024-03-25 12:02:28'),
(210, 'App\\Models\\User', 2, 'MyApp', 'af05aae29ba12fd96da929713a1090e46f5bb49bfd14b8401eccd80cbae7222d', '[\"*\"]', '2024-03-28 05:34:57', NULL, '2024-03-26 05:29:33', '2024-03-28 05:34:57'),
(211, 'App\\Models\\User', 68, 'MyApp', '957e58de25c1ddc8098af3d0f29608e3759cc3483a7da9821e8b5ecad949d82d', '[\"*\"]', NULL, NULL, '2024-04-17 10:28:08', '2024-04-17 10:28:08'),
(212, 'App\\Models\\User', 69, 'MyApp', '4d13853371d0853b0e73aab1e315613d68ca5933d3afe1bbb1803dc5c0222ef5', '[\"*\"]', '2024-04-17 11:39:44', NULL, '2024-04-17 11:00:28', '2024-04-17 11:39:44'),
(213, 'App\\Models\\User', 70, 'MyApp', 'cafbc9d0cad1aaef70a9f9c332bdf0050178bde0da8b1d0f8bde9eb91f48bbe5', '[\"*\"]', '2024-04-24 19:55:10', NULL, '2024-04-18 16:42:55', '2024-04-24 19:55:10'),
(214, 'App\\Models\\User', 71, 'MyApp', 'c615567adae0d256b7af9062d421c40475bc236332222571132459fe4bb8ef63', '[\"*\"]', NULL, NULL, '2024-04-25 09:44:21', '2024-04-25 09:44:21'),
(215, 'App\\Models\\User', 71, 'MyApp', '1aeaa5623c10851ad50ba0148f97950c26ac3fc0755fc1ab5261374e88f64b53', '[\"*\"]', '2024-04-25 11:37:59', NULL, '2024-04-25 09:49:10', '2024-04-25 11:37:59'),
(216, 'App\\Models\\User', 71, 'MyApp', '208bc1ef0eafd0b78f74f5b550db233cbfe5265f42f2b65481ef8c4ef2392085', '[\"*\"]', NULL, NULL, '2024-04-25 11:42:53', '2024-04-25 11:42:53'),
(217, 'App\\Models\\User', 71, 'MyApp', '74eb84d9f5f1ebac67ea2592209989418d0ed50d4e28ef15e77bb58cd2a22ca0', '[\"*\"]', NULL, NULL, '2024-04-25 11:43:54', '2024-04-25 11:43:54'),
(218, 'App\\Models\\User', 72, 'MyApp', '849f945492bbee22df3ea59b6dcf58f1e36027660f07ec8344110296ece02484', '[\"*\"]', NULL, NULL, '2024-04-25 12:34:33', '2024-04-25 12:34:33'),
(219, 'App\\Models\\User', 73, 'MyApp', '60728ee1d05017501d0fecba165e1721a6e28263f80733d19f30e5e25431cbeb', '[\"*\"]', NULL, NULL, '2024-04-25 13:03:51', '2024-04-25 13:03:51'),
(220, 'App\\Models\\User', 74, 'MyApp', 'a1111acf0a4005d8fe8c6a8451be0f2dd4592db15468423f9e95a6322572d5af', '[\"*\"]', '2024-04-25 16:24:02', NULL, '2024-04-25 13:06:52', '2024-04-25 16:24:02'),
(221, 'App\\Models\\User', 74, 'MyApp', '65dab4d47da1307206804dd82aa4ba993fd0b14517119729d72c3a426cdae4bd', '[\"*\"]', NULL, NULL, '2024-04-25 15:02:52', '2024-04-25 15:02:52'),
(222, 'App\\Models\\User', 75, 'MyApp', '3febfcf4802236f768bc5a1ae986aec595717a7424f920dc557c67e041870657', '[\"*\"]', NULL, NULL, '2024-04-29 08:00:38', '2024-04-29 08:00:38'),
(223, 'App\\Models\\User', 75, 'MyApp', 'ea8b505855d34a5bdbd58ad2ddac0781181dd960364e6f8c20af0410bfb74d21', '[\"*\"]', NULL, NULL, '2024-04-29 08:01:51', '2024-04-29 08:01:51'),
(224, 'App\\Models\\User', 76, 'MyApp', '4e9d2cb9800bbe3b406790819b8cd7066a9d2bc3f07fdac3b3cf342cd2f757db', '[\"*\"]', '2024-04-29 08:13:06', NULL, '2024-04-29 08:07:31', '2024-04-29 08:13:06'),
(225, 'App\\Models\\User', 77, 'MyApp', 'e0715cfbe92bdc0bfad225e99f02c4d2f74c03dba204d00b553f6ff02b4b40fa', '[\"*\"]', '2024-04-29 08:36:26', NULL, '2024-04-29 08:34:15', '2024-04-29 08:36:26'),
(226, 'App\\Models\\User', 76, 'MyApp', '6f32ed351b3979128ed1ea7fc395880db71f47ed064c285b7d827268517262ab', '[\"*\"]', NULL, NULL, '2024-04-29 09:29:37', '2024-04-29 09:29:37'),
(227, 'App\\Models\\User', 59, 'MyApp', '351a37add488596b295d376c7d6e9f153893a3a63350d48be56f782cde56c0fe', '[\"*\"]', NULL, NULL, '2024-05-17 16:49:48', '2024-05-17 16:49:48'),
(228, 'App\\Models\\User', 78, 'MyApp', '506d143265ff3ee211e29b703be9d4d866d0ac19a1fcdf5fb21a3591a8c951d5', '[\"*\"]', '2024-05-20 08:34:03', NULL, '2024-05-20 08:30:40', '2024-05-20 08:34:03'),
(229, 'App\\Models\\User', 79, 'MyApp', 'd2863f5b6d5996be2c2f6cc06a35d3fc6681b5cfb5cad5821d50ec5d5aa16d3d', '[\"*\"]', '2024-05-21 08:18:12', NULL, '2024-05-20 09:27:40', '2024-05-21 08:18:12'),
(230, 'App\\Models\\User', 79, 'MyApp', '047fb0732b538478e3399842a6c357085a7943d0785176a61b7ea6f9b80d651b', '[\"*\"]', NULL, NULL, '2024-05-20 09:49:29', '2024-05-20 09:49:29'),
(231, 'App\\Models\\User', 79, 'MyApp', '21ea55271ec2d7e1ce798638750c9f1a9d5415af056d8a2e10ec71ac52ca7317', '[\"*\"]', '2024-05-23 12:16:42', NULL, '2024-05-20 10:01:11', '2024-05-23 12:16:42'),
(232, 'App\\Models\\User', 79, 'MyApp', '76a5cc99daf8c31b30f8d5b777408052f386950ed8774229cc0c8d5aa585cdd5', '[\"*\"]', NULL, NULL, '2024-05-20 11:25:59', '2024-05-20 11:25:59'),
(233, 'App\\Models\\User', 80, 'MyApp', '2500db6b68bc9056c55eb4d0704e34bb11bb22714de1ed1770f92b1fe0e031ca', '[\"*\"]', '2024-05-20 12:06:21', NULL, '2024-05-20 11:42:20', '2024-05-20 12:06:21'),
(234, 'App\\Models\\User', 80, 'MyApp', 'd9ca26c5c9df405f2b850ca6a1cb62c9743d42f3115d7f23d40f349d4de21ee3', '[\"*\"]', '2024-05-20 13:19:04', NULL, '2024-05-20 12:08:58', '2024-05-20 13:19:04'),
(235, 'App\\Models\\User', 59, 'MyApp', '442b15ef4e15509c16f56a9850a2b8be78720803eb8b8ff9bc8450f30bec1d96', '[\"*\"]', NULL, NULL, '2024-05-20 18:02:55', '2024-05-20 18:02:55'),
(236, 'App\\Models\\User', 2, 'MyApp', 'a5862b51c5aa028eba7a652bd82291c9673b02444db8831d69c104313f35d22a', '[\"*\"]', '2024-05-23 11:38:51', NULL, '2024-05-23 11:11:41', '2024-05-23 11:38:51'),
(237, 'App\\Models\\User', 79, 'MyApp', 'e93f63881b8589acc411d84586712c4c36485a84d407558d1d8eae016f7f3430', '[\"*\"]', '2024-05-24 08:36:45', NULL, '2024-05-24 08:34:11', '2024-05-24 08:36:45'),
(238, 'App\\Models\\User', 79, 'MyApp', 'd75a053c50a939ff480126982dbf5b1489f0b89924b48eed36f548bce1c7386e', '[\"*\"]', '2024-05-24 08:40:55', NULL, '2024-05-24 08:39:41', '2024-05-24 08:40:55'),
(239, 'App\\Models\\User', 79, 'MyApp', '3b52b9158cc9478410739dec51a87a3520fa7c1f88588386da06ec3f5fa2e633', '[\"*\"]', '2024-05-24 08:59:24', NULL, '2024-05-24 08:41:40', '2024-05-24 08:59:24'),
(240, 'App\\Models\\User', 79, 'MyApp', 'c8a5d3dd4a426c60e2a157834511f43a428ecbc32e7a410c788ed64987a1c57e', '[\"*\"]', '2024-05-24 09:27:24', NULL, '2024-05-24 09:24:46', '2024-05-24 09:27:24'),
(241, 'App\\Models\\User', 79, 'MyApp', 'aebe79e0e74cdd2bea375b95005cc14fd78d833ec6a248882d7348b2e13848f8', '[\"*\"]', '2024-05-24 15:31:46', NULL, '2024-05-24 09:28:19', '2024-05-24 15:31:46'),
(242, 'App\\Models\\User', 79, 'MyApp', '781862cfd3f6d010205ef3f1d003c8e64d5a8e3f2ea0ca66fefcf5b0e2b59e8a', '[\"*\"]', '2024-05-24 09:52:39', NULL, '2024-05-24 09:47:53', '2024-05-24 09:52:39'),
(243, 'App\\Models\\User', 59, 'MyApp', '528454f65221f3e020e3a7cfdadccd20f2bb2daba09f44e3aa2e10e4da3c9776', '[\"*\"]', NULL, NULL, '2024-05-24 16:26:36', '2024-05-24 16:26:36'),
(244, 'App\\Models\\User', 81, 'MyApp', '19b81faee6655418d80d7af707dba0200b8a484410951535cafb8bdb289a37a3', '[\"*\"]', NULL, NULL, '2024-05-24 16:30:01', '2024-05-24 16:30:01'),
(245, 'App\\Models\\User', 81, 'MyApp', '0e30dcf6c5325dfbec73d8a7f3f0574d9619eb5832212bf007a17fda09a77d87', '[\"*\"]', '2024-08-06 19:02:50', NULL, '2024-05-24 16:31:18', '2024-08-06 19:02:50'),
(246, 'App\\Models\\User', 59, 'MyApp', '5eba486ad1ed8e995bcfa696434edd643fa05e2721f6e305b93deccff23150cd', '[\"*\"]', NULL, NULL, '2024-05-25 18:28:21', '2024-05-25 18:28:21'),
(247, 'App\\Models\\User', 82, 'MyApp', '4c9476fceec39c6d745310eb3a8891f13833b7145111a5b11dc62a94d0db682c', '[\"*\"]', '2024-10-05 00:02:51', NULL, '2024-05-25 23:32:31', '2024-10-05 00:02:51'),
(248, 'App\\Models\\User', 74, 'MyApp', '8eb4a71daf505d31bd4fe03b41661774ad2a265204e1ee09baa23f73e367a5d5', '[\"*\"]', NULL, NULL, '2024-06-25 08:19:40', '2024-06-25 08:19:40'),
(249, 'App\\Models\\User', 74, 'MyApp', '25c3454ead016f6bdebbba87d878dbdc60e39eb15cc8b778d013795e0843c2e9', '[\"*\"]', '2024-08-14 07:41:33', NULL, '2024-06-25 10:45:56', '2024-08-14 07:41:33'),
(250, 'App\\Models\\User', 74, 'MyApp', 'd66ca5002ccc3df07112d86505a0f3948fd486827423c2f1687c74c67d8753c5', '[\"*\"]', NULL, NULL, '2024-06-25 10:45:56', '2024-06-25 10:45:56'),
(251, 'App\\Models\\User', 74, 'MyApp', '96803a14903bab8e3c6ec85089c84e15c25440da486cbea2bd47123102fd687e', '[\"*\"]', NULL, NULL, '2024-06-25 10:45:56', '2024-06-25 10:45:56'),
(252, 'App\\Models\\User', 74, 'MyApp', '6659166197c61eb9b91d913b490dd124b8f9e178ab3b0619e84b0faa3436ea4d', '[\"*\"]', NULL, NULL, '2024-06-25 10:45:57', '2024-06-25 10:45:57'),
(253, 'App\\Models\\User', 74, 'MyApp', '3ffb64ce01a90a9099b88c7c8ec1323a1ef623f293ca430c9982cc3c79d7058e', '[\"*\"]', '2024-08-02 11:04:39', NULL, '2024-06-25 13:40:31', '2024-08-02 11:04:39'),
(254, 'App\\Models\\User', 74, 'MyApp', 'cae99911712f3c69dc28c4af392745f76e16431ec694da2679a0d8c460cc9384', '[\"*\"]', NULL, NULL, '2024-06-25 14:22:35', '2024-06-25 14:22:35'),
(255, 'App\\Models\\User', 74, 'MyApp', '9f43a4a2190cb9b83b82b4debc1fd729368050501aca363c2146103a256adb16', '[\"*\"]', '2025-04-03 13:16:20', NULL, '2024-07-23 10:49:17', '2025-04-03 13:16:20'),
(256, 'App\\Models\\User', 83, 'MyApp', '80b73b3cc9c393d5a902bb6b6e9518c1ba7db41a0e6b969dd91f3c67026739a8', '[\"*\"]', '2024-08-02 17:08:47', NULL, '2024-08-02 16:57:13', '2024-08-02 17:08:47'),
(257, 'App\\Models\\User', 83, 'MyApp', '749dd835dc2ad3c74385c36662913a21a4346eecdacee041abc8deb9e5afdaf6', '[\"*\"]', NULL, NULL, '2024-08-02 17:23:58', '2024-08-02 17:23:58'),
(258, 'App\\Models\\User', 74, 'MyApp', '4bbb46f0630ca1c8a58708858c3dd6d1968c6fc4f37abc9a2f2e54440121c7f7', '[\"*\"]', '2024-08-13 08:25:32', NULL, '2024-08-13 08:21:31', '2024-08-13 08:25:32'),
(259, 'App\\Models\\User', 74, 'MyApp', '6bcf1f1b958bb02339db7190f588b8226eda82fef1f9ff1fce7a8ea6c7ca7b9a', '[\"*\"]', '2024-08-13 09:50:04', NULL, '2024-08-13 09:40:39', '2024-08-13 09:50:04'),
(260, 'App\\Models\\User', 74, 'MyApp', 'a56b1f9b37a1cceac2bba536d3ea73524aa7cb76dc642f340ae6956a53cf0a85', '[\"*\"]', '2024-08-13 09:53:11', NULL, '2024-08-13 09:50:16', '2024-08-13 09:53:11'),
(261, 'App\\Models\\User', 1, 'MyApp', '0fb7fb99245d42bfe24007247f5edb5d63980f4824e61df9f7a0599da8b9f6ec', '[\"*\"]', NULL, NULL, '2024-08-13 17:52:50', '2024-08-13 17:52:50'),
(262, 'App\\Models\\User', 74, 'MyApp', 'da92485e8bce978ff7a07b3f8e4c41d59143888c12f34147ccfbac49d5deb124', '[\"*\"]', '2024-08-14 07:45:42', NULL, '2024-08-14 07:42:03', '2024-08-14 07:45:42'),
(263, 'App\\Models\\User', 84, 'MyApp', '17292faeb5d58f6d9a053d22c6d89316069827c1043d5b293904c9068ff6238d', '[\"*\"]', '2024-08-14 09:47:15', NULL, '2024-08-14 08:00:00', '2024-08-14 09:47:15'),
(264, 'App\\Models\\User', 74, 'MyApp', '7729a98e9a91e749c50e695ba578940d94edc90cfae8a82b25e2ef0582748519', '[\"*\"]', '2024-08-14 08:33:53', NULL, '2024-08-14 08:32:30', '2024-08-14 08:33:53'),
(265, 'App\\Models\\User', 84, 'MyApp', '8721300e649bb75819711e24cd037bec557aee19ace9f908db4fd947b4be88e4', '[\"*\"]', '2024-08-14 09:49:29', NULL, '2024-08-14 09:48:01', '2024-08-14 09:49:29'),
(266, 'App\\Models\\User', 85, 'MyApp', '83e919bc470af9dec41125418486a999a5003eb4f8fb43fecfa42dbf0b0b8d1c', '[\"*\"]', '2024-08-19 02:24:58', NULL, '2024-08-14 21:21:48', '2024-08-19 02:24:58'),
(267, 'App\\Models\\User', 74, 'MyApp', 'ea85081734e2150a54ec3d2e1a686e7b9fa9ce5e0ab135ef605f44402ed9f27e', '[\"*\"]', '2024-08-19 15:20:24', NULL, '2024-08-19 14:56:19', '2024-08-19 15:20:24'),
(268, 'App\\Models\\User', 86, 'MyApp', '4a537e256bfc5bb226df8908e271c1e926accd80dc484476b52dc63ca201632e', '[\"*\"]', '2024-08-19 15:12:30', NULL, '2024-08-19 15:10:33', '2024-08-19 15:12:30'),
(269, 'App\\Models\\User', 74, 'MyApp', '8b8eb5af50cd81197559d946bd7f6c7d33be323ba6bdc6a4fcb97c6656ca2105', '[\"*\"]', '2024-11-29 19:20:37', NULL, '2024-08-19 15:21:08', '2024-11-29 19:20:37'),
(270, 'App\\Models\\User', 74, 'MyApp', '43a7d3b0e2ebff45f52f19e826a934de4a87fd532f308e4d6e888a1d06ced891', '[\"*\"]', '2024-08-19 15:34:07', NULL, '2024-08-19 15:31:42', '2024-08-19 15:34:07'),
(271, 'App\\Models\\User', 74, 'MyApp', '0aa792f7b7af6cbe0ccf8106d92c89ceed7dc440e9caee5932de8b1daa0ff7fb', '[\"*\"]', '2025-04-16 16:58:19', NULL, '2024-09-10 15:39:58', '2025-04-16 16:58:19');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(272, 'App\\Models\\User', 74, 'MyApp', '3753b48cd71470a6897ed446d7098992b8f55304dde2304d5e11ef1dd749d2ea', '[\"*\"]', '2024-11-11 17:06:22', NULL, '2024-11-11 17:00:23', '2024-11-11 17:06:22'),
(273, 'App\\Models\\User', 74, 'MyApp', 'b26cb6ba7dd86a83186f7b3dbd9efac5ce4d4eb7e4342493faf6b66cff41f57b', '[\"*\"]', '2024-11-11 17:07:09', NULL, '2024-11-11 17:06:53', '2024-11-11 17:07:09'),
(274, 'App\\Models\\User', 74, 'MyApp', 'a873b5f1175a63c5e00b1ee0b4646edba98163d0b1a3f5cfb3ea27b3ea279698', '[\"*\"]', '2024-11-29 10:15:52', NULL, '2024-11-11 17:07:52', '2024-11-29 10:15:52'),
(275, 'App\\Models\\User', 87, 'MyApp', 'cf6c53aeadd9aa967bbb6aca70964de6297f08c07ae792f26336cd04181f9865', '[\"*\"]', '2024-11-11 19:49:34', NULL, '2024-11-11 19:47:50', '2024-11-11 19:49:34'),
(276, 'App\\Models\\User', 87, 'MyApp', '52dd90d71521745e3d6cae38562a2ab3fa378bcd3dd25d6714fb09ccf9557879', '[\"*\"]', '2024-11-21 23:25:53', NULL, '2024-11-21 17:55:48', '2024-11-21 23:25:53'),
(277, 'App\\Models\\User', 74, 'MyApp', 'f8e8f11536966925336fade80ae8cd46789f275f1acdd58ba981892b51342aab', '[\"*\"]', NULL, NULL, '2024-11-27 09:58:59', '2024-11-27 09:58:59'),
(278, 'App\\Models\\User', 1, 'MyApp', '3cbdfe5980692b443c7dd896f782074bebecb7e38ef30de2fb6dd72bf38cec26', '[\"*\"]', NULL, NULL, '2024-11-28 17:18:43', '2024-11-28 17:18:43'),
(279, 'App\\Models\\User', 1, 'MyApp', 'f171f6608d9f96069e11f5f8c5de7fc4c6fe4ebff131409c1f38cfebff7a8412', '[\"*\"]', NULL, NULL, '2024-11-28 17:19:40', '2024-11-28 17:19:40'),
(280, 'App\\Models\\User', 1, 'MyApp', 'b99321e2fa052928943e13957a5da479f3e9fada1a850e8f0cb611ed5e0862d8', '[\"*\"]', '2024-11-28 17:31:36', NULL, '2024-11-28 17:31:10', '2024-11-28 17:31:36'),
(281, 'App\\Models\\User', 59, 'MyApp', '1b3c5df2134ab2d74475144d29d364047abafae767f1c6ece32e22a562308d9a', '[\"*\"]', NULL, NULL, '2024-12-02 19:50:45', '2024-12-02 19:50:45'),
(282, 'App\\Models\\User', 89, 'MyApp', '41ab23e3077235b8636e46ca5e75529ae2b2999feafc03ce5b0389a4b3a92392', '[\"*\"]', NULL, NULL, '2024-12-02 19:53:52', '2024-12-02 19:53:52'),
(283, 'App\\Models\\User', 89, 'MyApp', '14ed2b987e6a205283d5a952f8be665ef75098eee5da379bc5c27112ca951265', '[\"*\"]', NULL, NULL, '2024-12-02 20:06:47', '2024-12-02 20:06:47'),
(284, 'App\\Models\\User', 59, 'MyApp', '960e9c2b4365c98e4cce27db106b93130eca2491f5426e9dd3efdf444c6f46b9', '[\"*\"]', NULL, NULL, '2024-12-02 20:06:51', '2024-12-02 20:06:51'),
(285, 'App\\Models\\User', 82, 'MyApp', '7d12821085c3c2e3b08e70a68a62810d5881a1ea467ed776bae495553401d86d', '[\"*\"]', '2025-06-16 02:43:07', NULL, '2024-12-02 20:16:12', '2025-06-16 02:43:07'),
(286, 'App\\Models\\User', 90, 'MyApp', 'bb561717dd2c0d4334db3f345de7952d2092bb33837b046b052570eec3e31a81', '[\"*\"]', '2025-05-20 00:13:49', NULL, '2024-12-02 20:57:22', '2025-05-20 00:13:49'),
(287, 'App\\Models\\User', 91, 'MyApp', '46586ec0d425bac2d8efefcc43adf23b039b0e974aa452d4f66c6d85ea07bd3d', '[\"*\"]', NULL, NULL, '2024-12-04 22:02:33', '2024-12-04 22:02:33'),
(288, 'App\\Models\\User', 92, 'MyApp', '6a4ca4a0077b5639e2f7997164b0bd56951784aeceb13c9789787f8890b82a48', '[\"*\"]', '2025-01-10 22:05:38', NULL, '2024-12-04 22:04:31', '2025-01-10 22:05:38'),
(289, 'App\\Models\\User', 13, 'MyApp', '3a2de833b00ce857cacb1a65d6909d3ce5b7fd49129f2d403b85b2ae9da1114d', '[\"*\"]', NULL, NULL, '2024-12-05 16:12:50', '2024-12-05 16:12:50'),
(290, 'App\\Models\\User', 93, 'MyApp', 'a95b866f26e7d20a685240915f32f35de1fc3f3b18f7e8aa4f8fb18add3de870', '[\"*\"]', '2025-01-15 17:11:37', NULL, '2024-12-05 16:14:28', '2025-01-15 17:11:37'),
(291, 'App\\Models\\User', 94, 'MyApp', '4424afd297c8ee5feaecd45f0bb442e0a910e20f62f15d85ca539dd5cc18feb0', '[\"*\"]', '2024-12-17 21:04:48', NULL, '2024-12-09 18:56:32', '2024-12-17 21:04:48'),
(292, 'App\\Models\\User', 95, 'MyApp', 'ca35b06066a92102f7a3a13125b300f8e87bd5325afc4f1ee0ea07b166a3fbfe', '[\"*\"]', '2025-04-17 00:25:17', NULL, '2024-12-12 23:51:30', '2025-04-17 00:25:17'),
(293, 'App\\Models\\User', 96, 'MyApp', '6ebadd40b93834d00067ef4ff7b531a036fceed2f186f6c252925aa8b06f92bd', '[\"*\"]', '2025-05-19 15:23:57', NULL, '2024-12-17 20:41:04', '2025-05-19 15:23:57'),
(294, 'App\\Models\\User', 74, 'MyApp', '69d87647ef4416a8519648266c8c810dc3883b9eda6ab4e8d35de3be48359d07', '[\"*\"]', '2025-01-14 07:31:34', NULL, '2024-12-19 07:58:36', '2025-01-14 07:31:34'),
(295, 'App\\Models\\User', 74, 'MyApp', '928476863dd1b71def3eeb166ac0557d995445a73738cc787f89f6d4cb84a4ee', '[\"*\"]', '2025-06-20 11:51:52', NULL, '2024-12-19 08:19:13', '2025-06-20 11:51:52'),
(296, 'App\\Models\\User', 94, 'MyApp', '95564013c4315019ac679b21ad6456beea5bd16c26b77198919bb9faa751a6f3', '[\"*\"]', '2025-07-21 03:04:04', NULL, '2025-01-03 19:31:54', '2025-07-21 03:04:04'),
(297, 'App\\Models\\User', 97, 'MyApp', 'bf75cab41c8b714168b90e5f0c4ff4cdb3ae956659d3b6e6f62997c0a5173940', '[\"*\"]', '2025-01-28 15:51:43', NULL, '2025-01-10 21:58:02', '2025-01-28 15:51:43'),
(298, 'App\\Models\\User', 74, 'MyApp', '6393407eed802509611a2ba3fda65f114338ef9cb0b8fc82e74fcb5253f686b7', '[\"*\"]', '2025-01-14 09:16:33', NULL, '2025-01-14 08:17:20', '2025-01-14 09:16:33'),
(299, 'App\\Models\\User', 74, 'MyApp', '785f341dceb6b02d95e80eba2e759383525f898cd494f053df0ef03f849e4ba8', '[\"*\"]', NULL, NULL, '2025-01-14 09:48:20', '2025-01-14 09:48:20'),
(300, 'App\\Models\\User', 98, 'MyApp', '3242338bf86f316fc1edd0e7338bd3b3880c25444dc6f9c6e58baca7d6ccea22', '[\"*\"]', NULL, NULL, '2025-01-14 11:19:56', '2025-01-14 11:19:56'),
(301, 'App\\Models\\User', 74, 'MyApp', '89a332e9d017df4f8cf6b808a6dcc70880e88d163bc1c2408c74353ef4511a61', '[\"*\"]', NULL, NULL, '2025-01-14 11:33:27', '2025-01-14 11:33:27'),
(302, 'App\\Models\\User', 88, 'MyApp', 'bb8b045c70b5ee286b6337bdf67084554901b8ccc6d307ef99f8eee60d3f9b52', '[\"*\"]', '2025-02-07 19:06:14', NULL, '2025-01-15 17:37:17', '2025-02-07 19:06:14'),
(303, 'App\\Models\\User', 74, 'MyApp', '8242aaa756957eec0f8fa1d1673b2faad6873f4d560e067b609d178622fd0dce', '[\"*\"]', NULL, NULL, '2025-01-17 10:13:26', '2025-01-17 10:13:26'),
(304, 'App\\Models\\User', 88, 'MyApp', '81309368e177dbdb300bdadc38c18ddb6a72391bfa2d9524f65241b4bacdaa51', '[\"*\"]', NULL, NULL, '2025-01-17 19:39:38', '2025-01-17 19:39:38'),
(305, 'App\\Models\\User', 99, 'MyApp', '5ff075510363c3f7d1f28e78e732f3fa92ec5c79802d736e645f0f9a2872f0ef', '[\"*\"]', '2025-01-23 21:11:11', NULL, '2025-01-23 20:58:38', '2025-01-23 21:11:11'),
(306, 'App\\Models\\User', 100, 'MyApp', 'e3954e3dcd4e1c29f82617b2db3c0f3738fe06f592b27fa0e4f652eb673e6c19', '[\"*\"]', '2025-01-29 11:07:32', NULL, '2025-01-28 17:30:33', '2025-01-29 11:07:32'),
(307, 'App\\Models\\User', 42, 'MyApp', '07d1be7f068d120d341fde37161d6f33c651980c96d86eefb129b42a0cf7dbea', '[\"*\"]', NULL, NULL, '2025-01-31 08:35:07', '2025-01-31 08:35:07'),
(308, 'App\\Models\\User', 101, 'MyApp', '21b3c131c445f600515dcce6b3a1783ae8b1c4ad588cf691f232d7916aa82eb0', '[\"*\"]', '2025-02-06 01:06:26', NULL, '2025-01-31 17:44:56', '2025-02-06 01:06:26'),
(309, 'App\\Models\\User', 102, 'MyApp', 'c939aa6c02b14e10c780ddf3b6e8850598dc3dde9a3566e5305755a781feb86e', '[\"*\"]', '2025-02-05 17:42:14', NULL, '2025-01-31 21:24:42', '2025-02-05 17:42:14'),
(310, 'App\\Models\\User', 103, 'MyApp', '777a4c71307cd2f38cb05ab6ef7c29ae5923874ae6966823712905cda736a3a7', '[\"*\"]', '2025-02-06 01:08:01', NULL, '2025-02-06 01:07:28', '2025-02-06 01:08:01'),
(311, 'App\\Models\\User', 88, 'MyApp', '4adbdab84b5953ae94b6ccd526dc2af37a56b0525fc3d54c398ebbfa070d1b6c', '[\"*\"]', '2025-02-07 19:14:31', NULL, '2025-02-07 18:58:08', '2025-02-07 19:14:31'),
(312, 'App\\Models\\User', 74, 'MyApp', '34fb2b41458084d798c337c0874fd66f8d991def9e4d29954ecfa81d27e95712', '[\"*\"]', '2025-02-28 09:27:32', NULL, '2025-02-28 09:20:55', '2025-02-28 09:27:32'),
(313, 'App\\Models\\User', 74, 'MyApp', 'bce901a012cf47b8e5cb2a524c663958aa534ed3a0e652e750c3d15e8b3a0d3f', '[\"*\"]', '2025-02-28 12:37:04', NULL, '2025-02-28 12:08:43', '2025-02-28 12:37:04'),
(314, 'App\\Models\\User', 74, 'MyApp', '677861d3d76a26966322fe87fc7f067ecbff2b24a4caddd9dc22e36fe25847bf', '[\"*\"]', '2025-05-23 14:56:06', NULL, '2025-02-28 13:01:00', '2025-05-23 14:56:06'),
(315, 'App\\Models\\User', 74, 'MyApp', '208b7183e91ffde3dba6740fac0de3a928033049a191f0647defb32a40892a06', '[\"*\"]', '2025-03-03 07:23:36', NULL, '2025-03-03 04:57:37', '2025-03-03 07:23:36'),
(316, 'App\\Models\\User', 74, 'MyApp', '96b2f3c86a2b24ce2fc1eed3a1cf68b1eb8a6afdd1012c068fe93b25ba600174', '[\"*\"]', '2025-03-11 10:37:09', NULL, '2025-03-06 05:59:26', '2025-03-11 10:37:09'),
(317, 'App\\Models\\User', 1, 'MyApp', 'c14d1c17e56d9d97540e392dde5248f54216b4e1b61c29562f0ccb5ad49872e4', '[\"*\"]', NULL, NULL, '2025-03-07 06:25:14', '2025-03-07 06:25:14'),
(318, 'App\\Models\\User', 1, 'MyApp', 'de5940c0890cd5d80eb816e52479dc35560540fafeacafa75d960c5acab17cb1', '[\"*\"]', '2025-04-03 14:32:39', NULL, '2025-03-07 06:25:20', '2025-04-03 14:32:39'),
(319, 'App\\Models\\User', 1, 'MyApp', '298d2113d44484c48041015672b13f2089cd1fa705dea883958a3f23ee70adcf', '[\"*\"]', '2025-03-07 11:40:40', NULL, '2025-03-07 07:06:32', '2025-03-07 11:40:40'),
(320, 'App\\Models\\User', 74, 'MyApp', '9e13fe957a96434570b17ab3e9c8bc98230152e9197a6869e85c8fb031baf092', '[\"*\"]', '2025-03-17 07:47:09', NULL, '2025-03-10 05:46:35', '2025-03-17 07:47:09'),
(321, 'App\\Models\\User', 104, 'MyApp', 'f66e070b2ba702a26eca78163eeffab16414457502618ad5e4bcc49990ae4119', '[\"*\"]', '2025-03-11 18:47:11', NULL, '2025-03-11 18:37:08', '2025-03-11 18:47:11'),
(322, 'App\\Models\\User', 105, 'MyApp', '0837bd56fe14ecc30f203f4f12c452bb604ad4cd0862e87d1b0b5227dcd765ad', '[\"*\"]', NULL, NULL, '2025-03-11 19:10:26', '2025-03-11 19:10:26'),
(323, 'App\\Models\\User', 74, 'MyApp', 'f4f864d39b33717689edb9969465b204c6913e1d1ab20ac937decf9378c2e270', '[\"*\"]', '2025-03-18 05:55:54', NULL, '2025-03-12 06:04:13', '2025-03-18 05:55:54'),
(324, 'App\\Models\\User', 87, 'MyApp', 'ea06fa0083ece75a317513ed65da866c2d11633a2487dd11f093c5224b46cbf6', '[\"*\"]', NULL, NULL, '2025-03-12 19:41:23', '2025-03-12 19:41:23'),
(325, 'App\\Models\\User', 106, 'MyApp', '0f7750bad6e5e81bae3ba4a87bcc6178696821837cb0102fd9d2e11d0c96f854', '[\"*\"]', '2025-03-16 15:16:50', NULL, '2025-03-16 14:21:50', '2025-03-16 15:16:50'),
(326, 'App\\Models\\User', 74, 'MyApp', '079f393dd2f59e7086253a47add29339b32432233f7f625a8ce1efcffd49c26c', '[\"*\"]', NULL, NULL, '2025-03-19 05:04:08', '2025-03-19 05:04:08'),
(327, 'App\\Models\\User', 74, 'MyApp', '50744cdad3266e5d50681ef8057557ba221d42e2dc759027f264b45fb71cfca9', '[\"*\"]', '2025-05-23 16:51:10', NULL, '2025-03-19 05:07:58', '2025-05-23 16:51:10'),
(328, 'App\\Models\\User', 74, 'MyApp', 'd1fe38e8996f1e245f54aca53d033bfe8cbb7722642b7be3339ec8511d4d1ddd', '[\"*\"]', '2025-03-19 05:40:11', NULL, '2025-03-19 05:39:05', '2025-03-19 05:40:11'),
(329, 'App\\Models\\User', 74, 'MyApp', 'df44ea9819d9c2a43f73c9ed0b06b506cddb0b9d5de5777862a51ea27d0b10bc', '[\"*\"]', '2025-03-19 06:56:45', NULL, '2025-03-19 06:54:36', '2025-03-19 06:56:45'),
(330, 'App\\Models\\User', 107, 'MyApp', '8a21eab571e00b0c8efa48e92d6240323675119a3a185656b2fc209cb66c199e', '[\"*\"]', '2025-03-19 07:05:22', NULL, '2025-03-19 07:02:54', '2025-03-19 07:05:22'),
(331, 'App\\Models\\User', 87, 'MyApp', '7a8919bc3925e1907fe589d64e60329cffa5e337e0cb53a32272fac5f33bc578', '[\"*\"]', NULL, NULL, '2025-03-19 07:05:12', '2025-03-19 07:05:12'),
(332, 'App\\Models\\User', 107, 'MyApp', 'bd6d771147504dc0bbacdbb37c3d63d69c1dd58dee69ee5c9e0f7462dde7ee1b', '[\"*\"]', NULL, NULL, '2025-03-19 09:31:35', '2025-03-19 09:31:35'),
(333, 'App\\Models\\User', 107, 'MyApp', 'c5f531fe8f1bbf24205317c1b995123deee6dbfffa33ae1227d1565cd849225e', '[\"*\"]', '2025-03-25 11:56:50', NULL, '2025-03-19 09:34:50', '2025-03-25 11:56:50'),
(334, 'App\\Models\\User', 87, 'MyApp', 'aa2647d800fab48f29a9dad00c0a9ae1ba9cb353de9a559c331ae28b6a2d340c', '[\"*\"]', '2025-03-24 19:20:25', NULL, '2025-03-19 10:02:11', '2025-03-24 19:20:25'),
(335, 'App\\Models\\User', 74, 'MyApp', 'd0a84a1f0368efbefcd31391a132754f25fe20a0173378a757be3aa29cfc66c8', '[\"*\"]', NULL, NULL, '2025-03-20 07:45:44', '2025-03-20 07:45:44'),
(336, 'App\\Models\\User', 74, 'MyApp', '9b4a2d619a53a543c6a0e398f17661081b0308e7a660688864866e363b1a857e', '[\"*\"]', '2025-03-25 11:46:01', NULL, '2025-03-24 05:26:51', '2025-03-25 11:46:01'),
(337, 'App\\Models\\User', 74, 'MyApp', '72131e17480d182c85981dccbb8147068e1dcf57c83422cc9236f13e5b1bc8da', '[\"*\"]', '2025-04-24 12:12:18', NULL, '2025-03-24 07:31:08', '2025-04-24 12:12:18'),
(338, 'App\\Models\\User', 87, 'MyApp', '373573ea768e0c98744a55af8bef5c9589e34de1c47b9caa32da73c5ca10a765', '[\"*\"]', '2025-03-25 11:33:43', NULL, '2025-03-25 11:30:57', '2025-03-25 11:33:43'),
(339, 'App\\Models\\User', 87, 'MyApp', '576d15ca8c218e923878d64269f28ada8b5a59df5536d7783ba3f1dd5b8603db', '[\"*\"]', '2025-03-27 06:26:48', NULL, '2025-03-25 11:46:50', '2025-03-27 06:26:48'),
(340, 'App\\Models\\User', 87, 'MyApp', '7700e5e45c10af277e545d509fa129c3392b13d810a7a30b1529e0184e1a7dc7', '[\"*\"]', '2025-05-15 12:57:01', NULL, '2025-03-25 12:03:31', '2025-05-15 12:57:01'),
(341, 'App\\Models\\User', 87, 'MyApp', '7c5050af89a1c024ef4cfa2a721df8b0e0d8a111c43acfadf85fc0eab6eb636f', '[\"*\"]', '2025-03-25 17:34:44', NULL, '2025-03-25 17:04:49', '2025-03-25 17:34:44'),
(342, 'App\\Models\\User', 87, 'MyApp', 'e64073937365b9398ac97b1da29d99f924892370e4c6e5abccd3ba2b11a88fb6', '[\"*\"]', NULL, NULL, '2025-03-25 17:27:23', '2025-03-25 17:27:23'),
(343, 'App\\Models\\User', 87, 'MyApp', 'dc1b75576ade9136b3043ad7d54a5fa4a9105229d67d34faf7f15d00910abc7c', '[\"*\"]', '2025-03-27 07:22:33', NULL, '2025-03-26 11:54:50', '2025-03-27 07:22:33'),
(344, 'App\\Models\\User', 87, 'MyApp', 'dac7df7fcdc0c5495be2f830e5590c4bb95d070fbd91290bd1da371fc8d7b224', '[\"*\"]', '2025-03-28 19:23:55', NULL, '2025-03-27 07:35:44', '2025-03-28 19:23:55'),
(345, 'App\\Models\\User', 108, 'MyApp', '60415e364c830ee5c2e1a9fb79b16743b3f23acda78321f12711fd5ff067e53f', '[\"*\"]', '2025-07-01 22:46:31', NULL, '2025-03-27 19:47:32', '2025-07-01 22:46:31'),
(346, 'App\\Models\\User', 106, 'MyApp', '0a9204e15f08ec9e2ddce7d38c572fe3fac86762ae42dd0ba0bf2214f6a7873c', '[\"*\"]', '2025-04-02 20:58:20', NULL, '2025-04-02 19:42:08', '2025-04-02 20:58:20'),
(347, 'App\\Models\\User', 88, 'MyApp', '401e236d58a3ecde48a11bea00ee4416f31436a5630c303b3c6bf6d2c1bb35da', '[\"*\"]', '2025-04-03 11:41:51', NULL, '2025-04-03 11:41:15', '2025-04-03 11:41:51'),
(348, 'App\\Models\\User', 109, 'MyApp', '723b857bda4f96e93df8b7bd03f123a643cb39820d02595d526d10a4f677d1dc', '[\"*\"]', '2025-07-02 18:52:56', NULL, '2025-04-03 13:17:43', '2025-07-02 18:52:56'),
(349, 'App\\Models\\User', 74, 'MyApp', 'c5351401573c934f1675cdb75d8e298251bec8402b40193c41e164e7c324a978', '[\"*\"]', '2025-04-16 12:45:40', NULL, '2025-04-04 08:39:12', '2025-04-16 12:45:40'),
(350, 'App\\Models\\User', 110, 'MyApp', '6bca71fdfd5fdaf41fa222dd1017db9c932c803df70bb2ff4ffd8ebfd3bcadd8', '[\"*\"]', '2025-04-11 17:36:48', NULL, '2025-04-04 15:50:51', '2025-04-11 17:36:48'),
(351, 'App\\Models\\User', 106, 'MyApp', 'b621758ff191dcedba4027581dd18ee91fae21c1f846c91bd446a22628db8282', '[\"*\"]', '2025-04-11 18:56:36', NULL, '2025-04-11 17:53:13', '2025-04-11 18:56:36'),
(352, 'App\\Models\\User', 111, 'MyApp', 'bf040fab5b62ab7c5ddb28c2ca3e5e25f3c0604a307dfe51a2176898a0a8db29', '[\"*\"]', '2025-04-11 18:58:27', NULL, '2025-04-11 18:58:25', '2025-04-11 18:58:27'),
(353, 'App\\Models\\User', 106, 'MyApp', 'aa4ed16a47adfb7f3326e0d97c04c80f43ade37c66ebf2cc3957363da15a961a', '[\"*\"]', '2025-04-15 21:52:02', NULL, '2025-04-14 15:15:33', '2025-04-15 21:52:02'),
(354, 'App\\Models\\User', 112, 'MyApp', '0eb9829c6ff942187ab9323442ba7fe5db2883faa319a4420cbb269b24adf14c', '[\"*\"]', '2025-04-16 16:26:06', NULL, '2025-04-16 12:46:33', '2025-04-16 16:26:06'),
(355, 'App\\Models\\User', 106, 'MyApp', 'bc19ff695836941de1f6c082a007899d3e0a9435ee3438b96afaa4acd6c7e56a', '[\"*\"]', '2025-04-16 15:58:46', NULL, '2025-04-16 15:56:14', '2025-04-16 15:58:46'),
(356, 'App\\Models\\User', 74, 'MyApp', 'ec101a35c9c5d8d530376f20fed4d2d67702d30cf0cd1a20e3f51d56bdb4c9ef', '[\"*\"]', '2025-05-23 13:13:06', NULL, '2025-04-16 16:26:37', '2025-05-23 13:13:06'),
(357, 'App\\Models\\User', 106, 'MyApp', 'edaddedff4f3b1f6ed2c1a4be8ceabec7ee24ba6fe92780d9f1b8fd41f305aad', '[\"*\"]', '2025-04-16 16:30:43', NULL, '2025-04-16 16:28:36', '2025-04-16 16:30:43'),
(358, 'App\\Models\\User', 106, 'MyApp', 'cd369526f68d690a1a97f03e7b52f2689a9590af03c04dd5aa9e8ea95e62a316', '[\"*\"]', '2025-04-17 17:33:25', NULL, '2025-04-16 16:34:20', '2025-04-17 17:33:25'),
(359, 'App\\Models\\User', 112, 'MyApp', 'fb81a85818086976c43e5f3c0ed575a2f20a8e703b98af07647099d3fe01dcee', '[\"*\"]', '2025-04-16 17:00:37', NULL, '2025-04-16 16:59:20', '2025-04-16 17:00:37'),
(360, 'App\\Models\\User', 113, 'MyApp', '888fdca64ae940ba15b91d8f312e3c16e411f28b10a77789d376614966f0138d', '[\"*\"]', '2025-04-24 17:05:24', NULL, '2025-04-16 17:01:40', '2025-04-24 17:05:24'),
(361, 'App\\Models\\User', 114, 'MyApp', '7a2b328ec9d4d79cb32c0aee735f3e9342ed29308400192203cf1e406fcf1ec1', '[\"*\"]', '2025-04-17 17:36:45', NULL, '2025-04-17 17:34:27', '2025-04-17 17:36:45'),
(362, 'App\\Models\\User', 106, 'MyApp', '8fe7fbfd8a29b45b526b2b2b67ba2128e4846777e190c33d08093ac21112f751', '[\"*\"]', '2025-04-17 17:47:18', NULL, '2025-04-17 17:38:42', '2025-04-17 17:47:18'),
(363, 'App\\Models\\User', 106, 'MyApp', '2e15fdb282ef300d818c21476b03917b4febe1afd610d1fb48e278ec45554233', '[\"*\"]', '2025-04-18 16:17:58', NULL, '2025-04-17 17:48:32', '2025-04-18 16:17:58'),
(364, 'App\\Models\\User', 106, 'MyApp', 'e628b8dad92db90e41ca2a228ee9ea80a98d219ec0c82a1db880a6b375b86abc', '[\"*\"]', '2025-04-24 14:56:54', NULL, '2025-04-24 14:46:45', '2025-04-24 14:56:54'),
(365, 'App\\Models\\User', 106, 'MyApp', '6e648359d3fa01aab56c1c20aea47dfe90046a17720d000db4e8bc615b2caa76', '[\"*\"]', '2025-05-21 18:54:53', NULL, '2025-04-25 17:36:16', '2025-05-21 18:54:53'),
(366, 'App\\Models\\User', 88, 'MyApp', '68e0abba80ad5fb10ef36096df780c7b147fa38cd16c0e5ebb9e584be2fac3b9', '[\"*\"]', '2025-07-21 17:00:13', NULL, '2025-05-08 21:50:32', '2025-07-21 17:00:13'),
(367, 'App\\Models\\User', 104, 'MyApp', 'b5a70b80d12f3d2e54084b37dee08c32ad317a972af393e92906e4d1c6c2d3a0', '[\"*\"]', '2025-05-21 18:57:44', NULL, '2025-05-21 18:55:23', '2025-05-21 18:57:44'),
(368, 'App\\Models\\User', 106, 'MyApp', '8a3df88ae76562147003d2ce7a798c8f714f9c623010d2cf5a7233414ed186e7', '[\"*\"]', '2025-05-21 18:58:37', NULL, '2025-05-21 18:58:13', '2025-05-21 18:58:37'),
(369, 'App\\Models\\User', 104, 'MyApp', '260ac70dac5d588c4d2800d7933249ebba3c4f0c8e0910d4f4d20aef28b1790a', '[\"*\"]', '2025-05-21 18:59:37', NULL, '2025-05-21 18:59:26', '2025-05-21 18:59:37'),
(370, 'App\\Models\\User', 106, 'MyApp', '641cfc5bf6e17f7363424d4998b66498ff2ff05be07831a71284572e92fa78a5', '[\"*\"]', '2025-05-21 19:13:15', NULL, '2025-05-21 19:02:49', '2025-05-21 19:13:15'),
(371, 'App\\Models\\User', 104, 'MyApp', 'e8761d300eb6e1fb36285a2e6648dcb555458e1eedccb243fc68491c6929f86f', '[\"*\"]', '2025-05-21 19:26:17', NULL, '2025-05-21 19:25:14', '2025-05-21 19:26:17'),
(372, 'App\\Models\\User', 115, 'MyApp', 'ba84c598c0291f8531caecb3953d747514c213dca4d292de69edd8c867093341', '[\"*\"]', '2025-06-20 12:46:46', NULL, '2025-05-23 13:20:52', '2025-06-20 12:46:46'),
(373, 'App\\Models\\User', 104, 'MyApp', '8ca0f7ae8b0a7c6680d0cf0e4d1540c7f95df4cf08a6c819d8d26b2cc28c13c0', '[\"*\"]', '2025-05-23 15:45:17', NULL, '2025-05-23 15:44:32', '2025-05-23 15:45:17'),
(374, 'App\\Models\\User', 106, 'MyApp', 'f05d8a0b4496ef7c91b911fb600e20b5b2cf6c44ce1b2dac04b005833fe3fe0e', '[\"*\"]', '2025-05-23 15:45:44', NULL, '2025-05-23 15:45:42', '2025-05-23 15:45:44'),
(375, 'App\\Models\\User', 104, 'MyApp', '2ff4bb0e6c15f1a26bd37506c3a462cbb8fef5b28dc2ccfd8fb21fa2c53ed759', '[\"*\"]', '2025-05-23 15:46:22', NULL, '2025-05-23 15:46:06', '2025-05-23 15:46:22'),
(376, 'App\\Models\\User', 106, 'MyApp', 'b4d106f9ad6639f62353bdf817bb48af8f8e670a36e7e68d963607fb40a4a421', '[\"*\"]', '2025-05-23 15:47:07', NULL, '2025-05-23 15:46:41', '2025-05-23 15:47:07'),
(377, 'App\\Models\\User', 104, 'MyApp', 'd1ca65559938525fe78102b41b2b0b140441a822f51f3621e773a713092cb920', '[\"*\"]', '2025-05-23 15:48:15', NULL, '2025-05-23 15:47:53', '2025-05-23 15:48:15'),
(378, 'App\\Models\\User', 106, 'MyApp', '2260dc2692a0540dc9622216c509fd19acc9291fe6853e168adaa77895023191', '[\"*\"]', '2025-05-23 16:04:42', NULL, '2025-05-23 15:48:36', '2025-05-23 16:04:42'),
(379, 'App\\Models\\User', 104, 'MyApp', '06536e0cda521d77ad92b391b555fdd39325f91bda43f23e1fd72b90678df3bd', '[\"*\"]', '2025-05-23 16:06:47', NULL, '2025-05-23 16:05:02', '2025-05-23 16:06:47'),
(380, 'App\\Models\\User', 106, 'MyApp', '8e1ca4026d7c9e3392203481b545880880f216992792629aa0190bc35a0aa81e', '[\"*\"]', '2025-05-23 16:09:08', NULL, '2025-05-23 16:07:29', '2025-05-23 16:09:08'),
(381, 'App\\Models\\User', 104, 'MyApp', '16b4b8530b2cbb9b3977323fd355d12a394a6324f3338ee4bc85e311aa153eea', '[\"*\"]', '2025-05-23 16:09:43', NULL, '2025-05-23 16:09:32', '2025-05-23 16:09:43'),
(382, 'App\\Models\\User', 106, 'MyApp', 'd1dad008d22dbeeddecde9b418eb6939e51dd00a1c1318d5cbe228c3b49e214e', '[\"*\"]', '2025-05-23 16:10:18', NULL, '2025-05-23 16:10:05', '2025-05-23 16:10:18'),
(383, 'App\\Models\\User', 106, 'MyApp', 'b27e78af1c45d18357ff62e883605572f5dcd93df78b3dbe1e4ca410236fc5eb', '[\"*\"]', '2025-05-26 22:02:32', NULL, '2025-05-26 22:01:46', '2025-05-26 22:02:32'),
(384, 'App\\Models\\User', 104, 'MyApp', '22a743d6b54c3e5cb6732c013cbe41d5ea5a8ba22220494811042b6b535edfb1', '[\"*\"]', '2025-05-26 22:02:54', NULL, '2025-05-26 22:02:51', '2025-05-26 22:02:54'),
(385, 'App\\Models\\User', 106, 'MyApp', '610c00ba7f091520a0a1237ca9d556f0e7f0d2c81366e39ff59801b19fb6dab4', '[\"*\"]', '2025-05-26 22:03:33', NULL, '2025-05-26 22:03:12', '2025-05-26 22:03:33'),
(386, 'App\\Models\\User', 106, 'MyApp', '0d84411494f84f4549c5ee68fc9e34c4fddcf9fb47416c0ff6f94e53c1c1fc91', '[\"*\"]', '2025-05-26 22:03:49', NULL, '2025-05-26 22:03:48', '2025-05-26 22:03:49'),
(387, 'App\\Models\\User', 106, 'MyApp', '7c4109924fa0ee78d06e92eb18b6a22fb8b04a5b922bdf8e2d9b2d791a74fe12', '[\"*\"]', '2025-05-26 22:03:55', NULL, '2025-05-26 22:03:49', '2025-05-26 22:03:55'),
(388, 'App\\Models\\User', 104, 'MyApp', 'ab10a6a5a6eb133895015790ef8c05d875b8a0222d209dff6380109623b2078d', '[\"*\"]', '2025-05-26 22:05:30', NULL, '2025-05-26 22:04:11', '2025-05-26 22:05:30'),
(389, 'App\\Models\\User', 106, 'MyApp', '8e85e2834702e16919bdb1574aecac377499203022f1d6eba47681d3fb07c319', '[\"*\"]', '2025-05-26 22:06:14', NULL, '2025-05-26 22:05:57', '2025-05-26 22:06:14'),
(390, 'App\\Models\\User', 104, 'MyApp', 'f70c31d85320ffa3e41820ae65b454593ab6e25506d9215409bf9aff91fc50cd', '[\"*\"]', '2025-05-26 22:08:34', NULL, '2025-05-26 22:06:31', '2025-05-26 22:08:34'),
(391, 'App\\Models\\User', 106, 'MyApp', 'fb8741334e63e3a6f414c8415be72f4992239b102a7ca29374f15b97c4fd5d36', '[\"*\"]', '2025-05-26 22:08:56', NULL, '2025-05-26 22:08:55', '2025-05-26 22:08:56'),
(392, 'App\\Models\\User', 104, 'MyApp', 'afde541e78bcccf8142f4a0367f85891fec4cfead24ca7afbd1182b25494215e', '[\"*\"]', '2025-05-26 22:09:33', NULL, '2025-05-26 22:09:15', '2025-05-26 22:09:33'),
(393, 'App\\Models\\User', 106, 'MyApp', 'dba346015299fe58e02a91bebb04408e7ea1e6bc003475de37ac2cf302b40598', '[\"*\"]', '2025-07-29 19:38:23', NULL, '2025-05-26 22:09:50', '2025-07-29 19:38:23'),
(394, 'App\\Models\\User', 88, 'MyApp', '49ecd0f640c204c5b653ac1974b04e6d62ca9f9576e44fc2771601c0687bf5cd', '[\"*\"]', '2025-06-20 11:53:28', NULL, '2025-06-20 11:53:22', '2025-06-20 11:53:28'),
(395, 'App\\Models\\User', 88, 'MyApp', '2f0453a9101f17c77e6640577110c91d4dfc376ee4d2c17f360dc583d2f33d9e', '[\"*\"]', '2025-06-20 12:58:50', NULL, '2025-06-20 12:47:17', '2025-06-20 12:58:50'),
(396, 'App\\Models\\User', 116, 'MyApp', 'cc88f3c4bd2c9a8649dd7530ebdebf2c67fb8b2f8f094735333a5da3db3f68e5', '[\"*\"]', '2025-07-02 22:23:29', NULL, '2025-07-01 22:47:09', '2025-07-02 22:23:29'),
(397, 'App\\Models\\User', 117, 'MyApp', 'f200b08763a916ac3cec43aa4dc033f0b09f6374a1882fe8a5c30c0d0e4037c1', '[\"*\"]', '2025-07-17 20:18:06', NULL, '2025-07-02 20:08:17', '2025-07-17 20:18:06'),
(398, 'App\\Models\\User', 116, 'MyApp', 'f4e7cf2ad9b5c2a79458e7af8da3fca407abedc39797648feae9286349a820de', '[\"*\"]', '2025-07-18 20:39:03', NULL, '2025-07-02 22:24:48', '2025-07-18 20:39:03'),
(399, 'App\\Models\\User', 88, 'MyApp', '21e7132853fa2907ea4477431bb5c7db6ffdc1a63c4c2e52db2fffa2101051e8', '[\"*\"]', '2025-07-17 20:39:51', NULL, '2025-07-17 20:23:00', '2025-07-17 20:39:51'),
(400, 'App\\Models\\User', 59, 'MyApp', '768a9772b718fd955a0fa47d49bc1e862d4a4b3715d0a178ed3f6e83f950a116', '[\"*\"]', '2025-07-18 19:29:56', NULL, '2025-07-18 19:26:24', '2025-07-18 19:29:56'),
(401, 'App\\Models\\User', 59, 'MyApp', 'ad618b1ef7b76c7f48ad62784c67d834f50674e7858d87379e6874ed5465057f', '[\"*\"]', '2025-07-18 20:18:58', NULL, '2025-07-18 20:18:58', '2025-07-18 20:18:58'),
(402, 'App\\Models\\User', 59, 'MyApp', 'cacf7129bf1bb294706fd280cc2b76b58fda4da6a53bd2dece4c522eac82c1c5', '[\"*\"]', '2025-07-18 20:22:10', NULL, '2025-07-18 20:22:10', '2025-07-18 20:22:10'),
(403, 'App\\Models\\User', 59, 'MyApp', 'c1090464e738cd425609f1b3e8acfbf34c60bcaea6871c06206d1d373b019d2e', '[\"*\"]', '2025-07-18 20:23:56', NULL, '2025-07-18 20:23:55', '2025-07-18 20:23:56'),
(404, 'App\\Models\\User', 118, 'MyApp', '9beb7d4fdbf6e0c59ea012dc3bcf2825f1850003e5fed46a84fe2accf3f6365f', '[\"*\"]', '2025-07-18 20:40:10', NULL, '2025-07-18 20:39:53', '2025-07-18 20:40:10'),
(405, 'App\\Models\\User', 118, 'MyApp', 'cff8bbdc5546086c29ff6ac37e76d915698c44f0b6ac2c73b947be57b9da2684', '[\"*\"]', '2025-07-18 20:40:33', NULL, '2025-07-18 20:40:32', '2025-07-18 20:40:33'),
(406, 'App\\Models\\User', 118, 'MyApp', '2706dbcfb2957af942f874f30ac7667bdbeb50543074eb6e39b88143dab5855b', '[\"*\"]', '2025-07-21 03:02:40', NULL, '2025-07-18 20:42:26', '2025-07-21 03:02:40'),
(407, 'App\\Models\\User', 119, 'MyApp', '45929770f6fe6c03696eeeafa607629369d036689e7f032b64e3a68d16d6726b', '[\"*\"]', '2025-07-21 19:09:45', NULL, '2025-07-18 20:45:21', '2025-07-21 19:09:45'),
(408, 'App\\Models\\User', 120, 'MyApp', 'ef127b50ce66bf2b22708eec7375f44ed73ac5aa2d8da8c08d11ee7d9afad85e', '[\"*\"]', '2025-07-21 17:01:12', NULL, '2025-07-21 17:01:11', '2025-07-21 17:01:12'),
(409, 'App\\Models\\User', 120, 'MyApp', '8c7ac8151a49d9927ad35edc81d4f8cf7ae9cd1656dac1331794e5abf61c8b0c', '[\"*\"]', '2025-07-21 18:50:58', NULL, '2025-07-21 17:07:35', '2025-07-21 18:50:58'),
(410, 'App\\Models\\User', 120, 'MyApp', '3ed642301f88f8019de2a5890d97c2bc5ca6a87283603070daa29c72900efb0d', '[\"*\"]', '2025-07-21 19:00:08', NULL, '2025-07-21 18:51:42', '2025-07-21 19:00:08'),
(411, 'App\\Models\\User', 120, 'MyApp', 'a3a0c420e8162204167df5dfa48ad67c6b8303e48dd06deec361fcd1b6ad5e92', '[\"*\"]', '2025-07-21 19:04:46', NULL, '2025-07-21 19:04:16', '2025-07-21 19:04:46'),
(412, 'App\\Models\\User', 120, 'MyApp', '3f26c96fd3b21e498d79eaa6079f9827afc9fa8c3d580b6ba0d84d3afba41b61', '[\"*\"]', '2025-07-24 19:06:32', NULL, '2025-07-21 19:06:39', '2025-07-24 19:06:32'),
(413, 'App\\Models\\User', 59, 'MyApp', '5e8792dca11a77e39a3218c886773fe00e0a57dcb142c2ac6f8e27275d995b88', '[\"*\"]', '2025-07-21 22:32:05', NULL, '2025-07-21 22:32:04', '2025-07-21 22:32:05'),
(414, 'App\\Models\\User', 121, 'MyApp', '9b0aa29a7cada8774387b33bf3255d52915e50499a4d697ffb5d9b0f55d4844d', '[\"*\"]', '2025-08-12 21:18:00', NULL, '2025-07-21 22:35:56', '2025-08-12 21:18:00'),
(415, 'App\\Models\\User', 122, 'MyApp', '15f1ff0511bb3f93776722d0fccaff6ca24d1cd11cd8330c20a7810dcf219412', '[\"*\"]', '2025-08-19 19:53:05', NULL, '2025-08-06 18:04:50', '2025-08-19 19:53:05');

-- --------------------------------------------------------

--
-- Table structure for table `places`
--

CREATE TABLE `places` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `image` longtext DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `flag` varchar(255) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `location_name` text DEFAULT NULL,
  `lat` varchar(250) DEFAULT NULL,
  `lng` varchar(250) DEFAULT NULL,
  `publish` int(5) NOT NULL DEFAULT 0,
  `trip_name` varchar(250) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `places`
--

INSERT INTO `places` (`id`, `user_id`, `title`, `image`, `country`, `city`, `flag`, `notes`, `location_name`, `lat`, `lng`, `publish`, `trip_name`, `created_at`, `updated_at`) VALUES
(81, 74, 'KFC Yum! Center, Arena Plaza, Louisville, KY, USA', 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AeeoHcJsRAN8Vdvv18JtMOWtQ_flMixkLgZD6BmLoQYEs1ZlOwmHmiz-qd_FmIyuM7jQd2t0N4sWTeLkyKSZBfSWxKIwsWQfGwvcbTOw4lIDQCWQeXzFOdgQo6Eapud_rKOcJ0ZRliXJR1fwCBRn3uT8fJvQj1FFHBFDoPT-W4146XIj9UMAAB1UhaehdN4qfQfd01ujLgZPpmq2rdij2IhQ3IlOqzozg1wB1KFy0sSePMA-eX3hOmJmSLcaebFv0B-oDKCYQ9jptl8mpXfQbxe7-umDzXtp4lS7i50m7z2U3mYop0dajIfumYI5k6HJnUZk75FOQLE-g9qAhuDITPVFEkAhoLQWSJuOioFYbsIGpOQTCGNKJRFoPf978o1Z4AHQRnbeaLqiNrpz_tE44HSL4Pxt2cPglLiez4yBbrIpIKAiEBFCXE4URxc64EnqMFGEzw-jub2Y48A4TjAZbJc77nOniy-4ro2TCDawqwA6nQe0ddbhx_5d1d6XCX2WcNcm-VMvc65hnLHl1Ab40wZEDBe7GUSN7j2xKOphN1-GVZ-bCGjQXw6v6O0Wxl26DRPvbxxAubk8Rg97Hw&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 'United States', 'Abbeville', NULL, NULL, 'place 1', '38.2578201', '-85.7538681', 0, '', '2025-04-09 17:38:52', '2025-04-11 14:43:56'),
(82, 74, 'Hillsboro, OR, USA', 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AeeoHcJsRAN8Vdvv18JtMOWtQ_flMixkLgZD6BmLoQYEs1ZlOwmHmiz-qd_FmIyuM7jQd2t0N4sWTeLkyKSZBfSWxKIwsWQfGwvcbTOw4lIDQCWQeXzFOdgQo6Eapud_rKOcJ0ZRliXJR1fwCBRn3uT8fJvQj1FFHBFDoPT-W4146XIj9UMAAB1UhaehdN4qfQfd01ujLgZPpmq2rdij2IhQ3IlOqzozg1wB1KFy0sSePMA-eX3hOmJmSLcaebFv0B-oDKCYQ9jptl8mpXfQbxe7-umDzXtp4lS7i50m7z2U3mYop0dajIfumYI5k6HJnUZk75FOQLE-g9qAhuDITPVFEkAhoLQWSJuOioFYbsIGpOQTCGNKJRFoPf978o1Z4AHQRnbeaLqiNrpz_tE44HSL4Pxt2cPglLiez4yBbrIpIKAiEBFCXE4URxc64EnqMFGEzw-jub2Y48A4TjAZbJc77nOniy-4ro2TCDawqwA6nQe0ddbhx_5d1d6XCX2WcNcm-VMvc65hnLHl1Ab40wZEDBe7GUSN7j2xKOphN1-GVZ-bCGjQXw6v6O0Wxl26DRPvbxxAubk8Rg97Hw&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 'United States', 'Abbeville', NULL, NULL, 'place 2', '45.5201367', '-122.9898246', 0, '', '2025-04-09 17:39:09', '2025-04-11 14:43:56'),
(83, 74, 'KFC, 8th Avenue, New York, NY, USA', 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AeeoHcJ_dLM1tcPAXdYLt4dcbowQ45dPs-HLMUHL36DDCIwMHMrjny6Tebp2U-7NWOquoWnFPRu1SR81WTKqzFJe2ePv9MapbWrdlVhMcUHHo7oHEXvABHjgMgiNcZOmyS_inx9lHkcVsWyCMy21m00dVd-82JeRP_zKYLuw3XOBaI6kaI4pPDrEE3PCma8gEAl_6UX0M8TbzDTHxZjfDa4ghwXpYijFwH9VUCWvO_1e0KsTgwMv-yNjuNcFQN7E-0KSJFg6n6_VCe6WjuXetp2qa9p21uAMNUxtTQoDyFwpYp_XS5-QZFEYzJN_Vcc-8Lm0--v38s8WSEZ1A5_B9ggWyiJYReganrhx28Z7k8fIae8julDNaq52vNGjS7YARZJjjeB8iuTUMI62zOfnI_N1cMJYqVdtxP5ZGFRYXmwoh7sJMzVR308yD-uGwSe_4esIpdZ0xCJhExROm4--lPP7RP1VIzjj8d8EEryNDgrthkYItpaendY--4PKORLV1fH-tVQTermThP_t9VqV8iL76TuR8ryyNkxYcvPepdn4I1vEJ0PYJSeKEnsSlhHAMyPt2sCOyalP&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 'United States', 'New York', NULL, NULL, 'place 1', '40.74981', '-73.994784', 0, '', '2025-04-09 17:39:44', '2025-04-24 16:32:45'),
(84, 87, 'KFC - DHA Phase 6, Sector J DHA Phase 6, Lahore, Pakistan', 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AeeoHcKKbVCYXGQG4nGMogdt-so3h3xTq6qq_Na30qGkykEtb_M-Vy26YNfVCNaz6HHz4WFU1V5Om1518jZ_1m8B1xha9bb5dgisxsIu2G5I9skyJYqLVlkOCBwj2BofKkM4OAclE_NvWrvw7hd8leaOdNPIoAhq_VHQv2CcDpUPZf_fUJ6Q11nrgIY4sNbVnMltfomjZTRtftBjPDWe5On2ayyQgAyHVcAhzbtVjRkNcsyasDO7ugXMWdey1DqiMc1pPsa6vWV-JlzZTEbbWtSzYNLrOnhteERT7OhirF0y0N3oM-sJ1xg&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 'Pakistan', 'Karachi', NULL, NULL, 'kfc', '31.482857', '74.4557239', 0, '', '2025-04-11 13:53:43', '2025-04-11 13:54:10'),
(85, 74, 'my fav', NULL, 'United States', 'Mountain View', 'https://flagcdn.com/w320/us.png', NULL, 'Monta Loma Lassen Ave Little Free Library', '37.4071356', '37.4071356', 0, '', '2025-04-11 17:44:15', '2025-04-11 17:44:15'),
(86, 106, 'qqq', NULL, 'United States', 'Boston', 'https://flagcdn.com/w320/us.png', NULL, 'All Business Marketing', '42.35855', '42.35855', 1, '....', '2025-04-11 17:54:28', '2025-05-23 16:09:02'),
(87, 106, 'School', NULL, 'United States', 'Boston', 'https://flagcdn.com/w320/us.png', NULL, 'All ONLINE Real Estate Academy', '42.3503034', '42.3503034', 1, '....', '2025-04-15 21:05:07', '2025-05-23 16:09:03'),
(88, 112, 'hello', NULL, 'United States', 'Redwood City', 'https://flagcdn.com/w320/us.png', NULL, 'All American Muffler and Auto Repair', '37.4768579', '37.4768579', 0, '', '2025-04-16 14:01:18', '2025-04-16 14:01:18'),
(89, 106, 'Boston School District, Boston, MA, USA', 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AeeoHcIthuq0oK8IgPAU2ToQvPbmo6cRNNDaT1oRi3cG7a1RbNknEMUH8qVqG6lHUb0PddKXEls5vS1lahffj2eISR_TaVVdtSSHTPCE9ecXD9vwBykx32_I6VG4JGIwhb6QSNaH80OgIX1tNRHuUCS05FsX6kXZuznpLiRi8QrWFRmdSSXQXRzvBSIRcG-chnMDxMJ2v71IdCed2Dbs5eeVYdPKAyGqo43VKaZAAwexGwaRleauWpqtNj5_J8zsIrLzSfzpWyZaelhrxXUeCPcIt7RoFBSqmgcHWny13xMkOsagCWt5ptA&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 'United States', 'Abbottstown', NULL, NULL, 'Schools', '42.3284483', '-71.0854325', 1, '....', '2025-04-16 15:57:23', '2025-05-23 16:09:03'),
(90, 112, 'testing', NULL, 'Canada', 'Hamilton', 'https://flagcdn.com/w320/ca.png', NULL, 'All Ford Parts', '37.2628067', '-121.9557157', 0, '', '2025-04-16 16:24:51', '2025-04-16 16:24:51'),
(91, 74, 'asdasd', NULL, 'Canada', 'Hamilton', 'https://flagcdn.com/w320/ca.png', NULL, 'Care For All Family Therapy Inc.', '37.2611519', '-121.9705061', 0, '', '2025-04-16 16:27:35', '2025-04-24 16:10:54'),
(92, 74, 'sadasd', NULL, 'Canada', 'Hamilton', 'https://flagcdn.com/w320/ca.png', NULL, 'All Automotive', '37.4147236', '-122.0871027', 0, '', '2025-04-16 16:32:08', '2025-04-24 16:10:54'),
(93, 106, 'asas', NULL, 'Canada', 'Hamilton', 'https://flagcdn.com/w320/ca.png', NULL, 'Health Care For All', '42.3557482', '-71.0580874', 0, '', '2025-04-16 16:34:41', '2025-04-16 16:34:41'),
(94, 74, 'gadjashgdas', NULL, 'Canada', 'Hamilton', 'https://flagcdn.com/w320/ca.png', NULL, 'All Thai Restaurant', '3.0820186', '101.6701125', 0, '', '2025-04-16 16:42:57', '2025-04-24 16:10:54'),
(95, 74, 'gadjashgdas', NULL, 'Canada', 'Hamilton', 'https://flagcdn.com/w320/ca.png', NULL, 'All Thai Restaurant', '3.0820186', '101.6701125', 0, '', '2025-04-16 16:44:26', '2025-04-24 16:10:54'),
(96, 74, 'asdajjagda', NULL, 'Canada', 'Hamilton', 'https://flagcdn.com/w320/ca.png', NULL, 'All VW & Japanese Shop', '37.4140575', '-122.0954988', 0, '', '2025-04-16 16:48:28', '2025-04-24 16:10:54'),
(97, 74, 'gadjashgdas', NULL, 'Canada', 'Hamilton', 'https://flagcdn.com/w320/ca.png', NULL, 'All Thai Restaurant', '3.0820186', '101.6701125', 0, '', '2025-04-16 16:51:04', '2025-04-24 16:10:54'),
(98, 74, 'gadjashgdas', NULL, 'Canada', 'Hamilton', 'https://flagcdn.com/w320/ca.png', NULL, 'All Thai Restaurant', '3.0820186', '101.6701125', 0, '', '2025-04-16 16:51:15', '2025-04-24 16:10:54'),
(99, 74, 'gadjashgdas', NULL, 'Canada', 'Hamilton', 'https://flagcdn.com/w320/ca.png', NULL, 'All Thai Restaurant', '3.0820186', '101.6701125', 0, '', '2025-04-16 16:51:40', '2025-04-24 16:10:54'),
(100, 74, 'ChIJCxP5zQ2jj4ARYFLLTPB-Y8o', NULL, 'Canada', 'Hamilton', 'https://flagcdn.com/w320/ca.png', 'All American Muffler and Auto Repair', 'All VW & Japanese Shop\", \"title\": \"asdajjagda', '37.4140575', '-122.0954988', 0, '', '2025-04-16 16:54:28', '2025-04-24 16:10:54'),
(101, 74, 'ChIJCxP5zQ2jj4ARYFLLTPB-Y8o', NULL, 'Canada', 'Hamilton', 'https://flagcdn.com/w320/ca.png', 'All American Muffler and Auto Repair', 'All VW & Japanese Shop\", \"title\": \"asdajjagda', '37.4140575', '-122.0954988', 0, '', '2025-04-16 16:55:22', '2025-04-24 16:10:54'),
(102, 74, 'gadjashgdas', NULL, 'Canada', 'Hamilton', 'https://flagcdn.com/w320/ca.png', NULL, 'All Thai Restaurant', '3.0820186', '101.6701125', 0, '', '2025-04-16 16:55:23', '2025-04-24 16:10:54'),
(103, 74, 'shedsdghas', NULL, 'Canada', 'Hamilton', 'https://flagcdn.com/w320/ca.png', NULL, 'All Gadget Sdn. Bhd.', '3.1022106', '101.7075321', 0, '', '2025-04-16 16:55:58', '2025-04-24 16:10:54'),
(104, 74, 'sdgashdasf', NULL, 'Canada', 'Hamilton', 'https://flagcdn.com/w320/ca.png', NULL, 'Archident Dental Clinic Old Klang Road, Kuala Lumpur', '3.0902187', '101.6738538', 0, '', '2025-04-16 16:56:49', '2025-04-24 16:10:55'),
(105, 74, 'ashdgajsdgahjsd', NULL, 'Canada', 'Hamilton', 'https://flagcdn.com/w320/ca.png', NULL, 'Vogue Clinic', '3.0833452', '101.6698502', 0, '', '2025-04-16 16:57:05', '2025-04-24 16:10:55'),
(106, 74, 'hhs', NULL, 'Canada', 'Hamilton', 'https://flagcdn.com/w320/ca.png', NULL, 'Klinik Metromedic Kuchai Lama KL Kuala Lumpur 24 JAM FAMILY AND CHILD CLINIC 24 HOURS CLINIC', '3.0860401', '101.6899659', 0, '', '2025-04-16 16:57:43', '2025-04-24 16:10:55'),
(107, 74, 'adhasgds', NULL, 'Canada', 'Hamilton', 'https://flagcdn.com/w320/ca.png', NULL, 'My Beauty Centre', '3.083303', '101.6731355', 0, '', '2025-04-16 16:58:18', '2025-04-24 16:10:55'),
(108, 74, 'ChIJCxP5zQ2jj4ARYFLLTPB-Y8o', NULL, 'Canada', 'Hamilton', 'https://flagcdn.com/w320/ca.png', 'All American Muffler and Auto Repair', 'All VW & Japanese Shop\", \"title\": \"asdajjagda', '37.4140575', '-122.0954988', 0, '', '2025-04-16 16:58:50', '2025-04-24 16:10:55'),
(109, 74, 'ChIJCxP5zQ2jj4ARYFLLTPB-Y8o', NULL, 'Canada', 'Hamilton', 'https://flagcdn.com/w320/ca.png', 'All American Muffler and Auto Repair', 'All VW & Japanese Shop\", \"title\": \"asdajjagda', '37.4140575', '-122.0954988', 0, '', '2025-04-16 16:59:13', '2025-04-24 16:10:55'),
(110, 112, 'asdghsd', NULL, 'Canada', 'Hamilton', 'https://flagcdn.com/w320/ca.png', NULL, 'Chase Bank', '37.7902337', '-122.402374', 0, '', '2025-04-16 16:59:42', '2025-04-16 16:59:42'),
(111, 112, 'dfahsgdahsd', NULL, 'Canada', 'Hamilton', 'https://flagcdn.com/w320/ca.png', NULL, 'East West Bank', '37.7945249', '-122.403481', 0, '', '2025-04-16 17:00:15', '2025-04-16 17:00:15'),
(112, 113, 'sjdahsd', NULL, 'Canada', 'Hamilton', 'https://flagcdn.com/w320/ca.png', NULL, 'AllSaints', '37.7878003', '-122.4057595', 0, '', '2025-04-16 17:01:59', '2025-04-16 17:01:59'),
(113, 74, 'ChIJCxP5zQ2jj4ARYFLLTPB-Y8o', NULL, 'Canada', 'Hamilton', 'https://flagcdn.com/w320/ca.png', 'All American Muffler and Auto Repair', 'All VW & Japanese Shop\", \"title\": \"asdajjagda', '37.4140575', '-122.0954988', 0, '', '2025-04-16 17:02:50', '2025-04-24 16:10:55'),
(114, 106, 'hh', NULL, 'Canada', 'Hamilton', 'https://flagcdn.com/w320/ca.png', NULL, 'Health Care For All', '42.3557482', '-71.0580874', 0, '', '2025-04-16 17:35:29', '2025-04-16 17:35:29'),
(115, 106, 'asasasa', NULL, 'Canada', 'Hamilton', 'https://flagcdn.com/w320/ca.png', NULL, 'All Eye Care Doctors', '42.3869704', '-71.1189448', 0, '', '2025-04-17 17:31:53', '2025-04-17 17:31:53'),
(116, 106, 'Soup Chicken Restaurant, Cao County, Heze, Shandong, China', 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AeeoHcLtp36ma5yCIE3uc8MPvHmUuzXa5u3DTyJimGSgkGdl_yiFNbX7VBP1BgIsDNbB4RGJE1t8yPRMUKu6NSQYlVizq6HNoppgbF89GQOslOrWn3AuhUuhh3MPEbV13pvxBi6OrGZamH-r43dMqX7CHdesE7Qp9vj9LyTy7-focC93XVXvsPg8X-N7CweBtnJqG16vZfyA2zzexzFEgyH7GWzgLhhW8t15oSriAKVRhaViudf3ss1RLMIPSJ0lCzeAprey0FVZFPDlOz2e3qcUk587f9s9my0WWQbpYwpdcRF-nxnHE1oiqcum3y-1cXgXhEEumk6iDTapQoKq9-S0wagskds6gM6dXwanAYfCdANTIw7NN537YVqshaIs9lJuPSO6jOEjXTxh94953Ut84nDCxmW8xej4X553ZHJlTwCFeLAs2MnUZkhDO5Kjz0y8Y0gTcbakokL6qXurRqK6zsieyIDy9STA0qi14oeo8WMivN1UjGNP6RhP4l0LbidyLLhG7_0NnNmwNmZ1qy1A4gP2an4UqCnCezH4qIOLv2OgU_d-txwjMol3MLKMHPTDVthQpo-Z&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 'China', 'Beijing', NULL, NULL, 'My fav Soup', '35.01003', '115.19164', 0, '', '2025-04-17 17:40:28', '2025-05-21 18:48:23'),
(117, 106, 'Food Hall - Open Air Mall, Second New Cairo, Egypt', 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AeeoHcJvLRvNY3LJC21x5616xVQR3d-b-ORxCNtlt6Ez39TRY5yvQAGAOV40A6Nfq4O6zjOr7sTsSOwfyM8esKEHDQ2bc6g8y3yWMk8mcCwqCRoMjjzsXKrfsGxdcJ9jdEZVk_lUbtxMxO10vGTliWxKwEVl3xcWM2hY4ZBZevqpEXWaR6biWrheoG-0lpP_ubBDDh8yWilF7iM-fjOm6orBS1KPI_5cnE4wexOvp0Xj4INjMHxePIcpjVw_NtvK0dFxjyI5XPSN8SpwQ0XcIvwkHfxNkvkqBixR7DzOatvVGRj7S5v-x4qNN3Vp7CxHSn4Vt3Gflj5y2DZE_OZ8-Pxi58Lbj3Dgs_sbn1MV7jUnxvwhblUgcgp9tTrJYqYRWhR6xPgZ25E6hqDj0QkV_2hgJvFlkTXUpXRD9VRZDUERcD4sYZHjk341qomgQ9857OHN2-nGp_dEZCqverXhkGJjskvDvDeE-G_BuL1qFg_G_DbZzkKOaRkKZ3pOH2gdgoNCZHP4QF1Js6AkQ9dq45auTcOVVvW9eDFZMLCR612vsp3xsU7Xbp-niHyOv2nl0WiJAw4Crg&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 'Egypt', 'Al Mansurah', NULL, NULL, 'Food Spot', '30.1066564', '31.6261773', 0, '', '2025-04-17 17:45:24', '2025-05-21 18:45:35'),
(118, 74, 'sdasd', NULL, 'United States', 'Mountain View', 'https://flagcdn.com/w320/us.png', NULL, 'Allure Dental Center', '37.4025856', '-122.0794597', 0, '', '2025-04-24 12:00:21', '2025-04-24 12:00:21'),
(119, 106, 'aaaaaaa', NULL, 'United States', 'New York', 'https://flagcdn.com/w320/us.png', NULL, 'Cartova', '40.7114063', '-74.0058597', 1, '....', '2025-04-24 14:48:21', '2025-05-23 16:09:03'),
(120, 74, 'jkhakshdkashdankdasd', NULL, 'United States', 'Mountain View', 'https://flagcdn.com/w320/us.png', NULL, 'Interstate All Battery Center', '37.488893', '-122.2386952', 0, '', '2025-04-28 15:43:06', '2025-04-28 15:43:06'),
(121, 108, NULL, NULL, 'Pakistan', 'Karachi', 'https://flagcdn.com/w320/pk.png', NULL, 'MCB', '24.8766785', '67.0703461', 0, '', '2025-05-19 21:42:28', '2025-05-19 21:42:28'),
(122, 115, 'KFC Yum! Center, Arena Plaza, Louisville, KY, USA', 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AXQCQNT9YT7D-dT5zYvXrDaXXlAyrEczIvoOHTqyAQRqjnxrt40fYiPw08t8ZTKlW9PSyIaDtqPCxXwDxmm3RrwTCb9WRcoqLl9KBLh9L1ZvqLciLKbUR0p6XbuovXFfu4DPjHGkVayUJMAeMxaQLvoCMNWjqrJHwvbWF7R4wamUlRzEeMAg5kl6xxF1gNW1qiJ4Ul8O2ednQQQD94uwVibX3ccHP4L31UdvdoNIWz4tZr5Up_JwAd63AmHtn-r967GYxTeJoAr63KNwUCf29aQbjVRq83w56nA-cecjIUPx-3gRVRH1CcxsjdCjhK-uRvN-L7dje5CyWB-q55lW7vx7NUCRubDgK4UFMGAHHmNMN9IHy7j3T-OE4OswZmIvFFHq23yj5OgyRCDO-y8UdwEMBLN1GIfgFBj18xEIvTwwOphojkivOXjwC-ACdJqFnr67o02aJi3w16xkLhCUN-jO5CcsTxGF9_WxD4AATOCFaqZCbkHB6-WpY2h1ms51OWfwn2zz_B3eoUxMtBKPwz2BhF1GG8UKHCq7x-LL78xF_7fgCECGZrf3omSmVkYY821JmovI3uKU&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 'United States', 'New York', NULL, NULL, 'kfc', '38.2578201', '-85.7538681', 1, NULL, '2025-05-23 13:34:15', '2025-05-23 16:51:39'),
(123, 88, 'Restaurants Reimagined, Malcolm X Boulevard, New York, NY, USA', 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AXQCQNQYlvASR0SWD4izK_DesKqWG4PoLe-a9iS88aotJlTEKy_Qta3GY_5SKAC2zkGyKinqOVV7mxdhhXzVrNWLmp7x8RgYCGm6yj88c9MIRCVCyRlNp-7q5VzwZ2Kmhn0EHmEB1ElJefvXeY1QrfP1B25M1p2rWdAwQpBchfvKbmSDW85v-V5FGS97mr-yH_YjP0Eb-ZgfQcNoDW2uhIVbcWMkxNsmp3cS9YTopLlNrQFE7KHDn42NFSf0lV96KH4RupbbJd2ykAPwUPONXPRC2P_Tcpiskj4NlkOaMiU7xmTeY6BYTXestdt68JvGAF4Kd_R4ZUgdqkAltjMDRktOdXusUW98z0uISLg7krkkxF4uP2ZGGYLhK9XP1dqihKKdjkG1vZncCNCr4m7HuClwHqio8lArznE_NypH_QhfgX6NA2zCRe0jqJuczFYYzBljyDpDcvhAY_NV5nkZ2ix3pooRBmsas8z5y24IJsOWi5D88sjYsaf081YGchcGrtN82yQeka4KwoLPUOLgLD2aPbHIoPGPlGbusVRPZwncVhiLktCF3f5pJz-vKRRFBFLb3Xd2A6e62zGAmg&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 'United States', 'New York Mills', NULL, NULL, 'resturants', '40.8124039', '-73.9424366', 1, 'best trip', '2025-06-20 12:48:37', '2025-06-20 12:49:43'),
(124, 88, 'great', NULL, 'United States', 'Mountain View', 'https://flagcdn.com/w320/us.png', NULL, 'All VW & Japanese Shop', '37.4140575', '-122.0954988', 0, NULL, '2025-06-20 12:53:53', '2025-06-20 12:53:53'),
(125, 88, 'great', NULL, 'United States', 'San Francisco', 'https://flagcdn.com/w320/us.png', NULL, 'AllSaints', '37.7877893', '-122.4057506', 0, NULL, '2025-06-20 13:03:25', '2025-06-20 13:03:25'),
(126, 122, 'Meijer, Belleville Road, Belleville, MI, USA', 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=ATKogpd9lYSiLLT57T16iR0dKwPVJzFAX8wOzYqKxTet25DY8o5IFlyzaFsxyMLr-0uoDN7XE3E9ja1WOUr8rNn1QrgcX5e09UcXy9IdDdCpR6MqcKE9gh0PqS_I4stGcgfJCm5R93q49l4SN1lVsCags4AXda7xUpXh-9SZML4H8wYk2vZCUgp9_U2V0PuuV5gL4d4r_MHt9mAExPYsV9NtMyKqKRljlsWV3hdITK6Pxeg9QqiKZfhRhAYkDo3msTvvdBNGcozcqYZBaoyHG8x4UUHfBKjT8f6_qxhD5DgISQcdV0oihc1cZzRssJck8i2WdZhiJAvqpqdYoH6MvtElzQ2HqxX8zEjhexjZqkBr4bZYG8FU6ElwbHPkIHKnC99ObOHdnPR1X9My1XjpwjhvxHeNjZylXeCZwzafYYfXW0XLvLd9Wnte7Tq2AMXMdZDGTdLrGb2eCdjLodWl_KiLk-7rGbCv8wAkC72fiRB08mzxIY3JEVM2DZ79KtG8DmKdZhtP0ATy_Y7pgkU_6XCLbZ4XSR0s0IhZyUHhhwX0YVbJU4SKQepvC7EiG1erLONEkvLHoeDI&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 'United States', 'Belleville', 'https://flagcdn.com/w320/us.png', NULL, 'Meijer', '42.2320789', '-83.4831806', 0, NULL, '2025-08-09 01:27:47', '2025-08-09 01:27:47'),
(127, 122, 'Black Rock Bar & Grill, Ford Road, Canton Township, MI, USA', 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=ATKogpeKtkYZMFh2u0dVf3SVAEbBRW9pLXb5NXYc7gwtt87nGBGPV8rhC6bkBnaymXn9iQc4TAtFE1QlAQBi3XFDN3AOiEOL3MZIvOS0H1PlB59HlzanSl9ssvy5pnh7EhHtdGA1Tfoeahso6uAr1385nxjDnPlylXQ3zlrxG0oDcdV-ki8-_wxzpuHzkkuo4vADicNWcfB4gZ-TDsCowQuw3d1OKVf3RIJn9dFEMKQBvu8GyLjao0_wwqlLuyEphUf_alc4HiuBiNaodqCXnd8xOJ0o69QUfUZ0WVRgxCSJtuMFed_IqJxHceUjtfLwm35_kG5Ixr3kxOimimxIVYT_BDG85GrnkDVAGfIksDekqMB-XfGrFvpGsstdeb1mL9Zu2emZCKT9qsTDP1bRJfM-svuvuOcfZgVIa8r-OVc_KzUGaOYsm4bPWPPwh-L4TH3lkkwybW5COXSZRaaayklEe7-H2zzqUqZGRqUoPiiEVVjCm73GDy2MYcRe-ImgKRKpcK1QbYj98PBpzYzyG8tzbkmvT2kWANos6AKdVaGTYniXKNHZVHmZejO5zccsoOyxLtiquuEG&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 'United States', 'Canton', 'https://flagcdn.com/w320/us.png', NULL, 'black rock restaurant canton', '42.3222427', '-83.4513056', 0, NULL, '2025-08-11 00:59:12', '2025-08-11 00:59:12'),
(128, 122, 'Meijer, Belleville Road, Belleville, MI, USA', 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=ATKogpeKtkYZMFh2u0dVf3SVAEbBRW9pLXb5NXYc7gwtt87nGBGPV8rhC6bkBnaymXn9iQc4TAtFE1QlAQBi3XFDN3AOiEOL3MZIvOS0H1PlB59HlzanSl9ssvy5pnh7EhHtdGA1Tfoeahso6uAr1385nxjDnPlylXQ3zlrxG0oDcdV-ki8-_wxzpuHzkkuo4vADicNWcfB4gZ-TDsCowQuw3d1OKVf3RIJn9dFEMKQBvu8GyLjao0_wwqlLuyEphUf_alc4HiuBiNaodqCXnd8xOJ0o69QUfUZ0WVRgxCSJtuMFed_IqJxHceUjtfLwm35_kG5Ixr3kxOimimxIVYT_BDG85GrnkDVAGfIksDekqMB-XfGrFvpGsstdeb1mL9Zu2emZCKT9qsTDP1bRJfM-svuvuOcfZgVIa8r-OVc_KzUGaOYsm4bPWPPwh-L4TH3lkkwybW5COXSZRaaayklEe7-H2zzqUqZGRqUoPiiEVVjCm73GDy2MYcRe-ImgKRKpcK1QbYj98PBpzYzyG8tzbkmvT2kWANos6AKdVaGTYniXKNHZVHmZejO5zccsoOyxLtiquuEG&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 'United States', 'Canton', 'https://flagcdn.com/w320/us.png', NULL, 'Meijer', '42.2320789', '-83.4831806', 0, NULL, '2025-08-18 00:56:51', '2025-08-18 00:56:51');

-- --------------------------------------------------------

--
-- Table structure for table `place_saves`
--

CREATE TABLE `place_saves` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `playlist_id` bigint(20) UNSIGNED NOT NULL,
  `place_id` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `types` longtext DEFAULT NULL,
  `rating` decimal(3,2) DEFAULT NULL,
  `totalRatings` int(11) DEFAULT NULL,
  `openNow` enum('Yes','No') DEFAULT NULL,
  `image` text DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `sub_category` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `place_saves`
--

INSERT INTO `place_saves` (`id`, `user_id`, `playlist_id`, `place_id`, `created_at`, `updated_at`, `name`, `address`, `types`, `rating`, `totalRatings`, `openNow`, `image`, `latitude`, `longitude`, `sub_category`) VALUES
(1, 112, 33, 'ChIJCxP5zQ2jj4ARYFLLTPB-Y8o', '2025-04-16 13:55:15', '2025-04-16 13:55:15', 'All American Muffler and Auto Repair', '2701 Middlefield Rd, Redwood City', 'car_repair,store,point_of_interest,establishment', 4.30, 50, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AeeoHcInHAhuhD2DsfCqCl0B2s8t7TEebvqhuRxnCV_6B1HrsVf58vIAWUR8YRpUxKapUGuAMAYu_IjwLMTiS87VdAA_8f9gHAxwIfxYApHz_h5Y8_yhQyDKQ3LlY9Kxs1XUMB0Br00g8dJuWOw4yB9I_rY2GWEZrn4DpMxBCBP7cKJM7KfQk-3BEQbEl4ZsOkb-0kGlFXPCtv26NhnE15sGiUkQRyEa7ifRfW9XS2yZPbAKXFa701xbTHuVYkPF0LH3acG2raSy9h_QAriF2EEyC47z0JYCe2Ysmz8iIkpIbPHGRXScs1M&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', NULL, '37.4768579', 0),
(2, 112, 33, 'ChIJCxP5zQ2jj4ARYFLLTPB-Y8o', '2025-04-16 13:59:50', '2025-04-16 13:59:50', 'All American Muffler and Auto Repair', '2701 Middlefield Rd, Redwood City', 'car_repair,store,point_of_interest,establishment', 4.30, 50, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AeeoHcInHAhuhD2DsfCqCl0B2s8t7TEebvqhuRxnCV_6B1HrsVf58vIAWUR8YRpUxKapUGuAMAYu_IjwLMTiS87VdAA_8f9gHAxwIfxYApHz_h5Y8_yhQyDKQ3LlY9Kxs1XUMB0Br00g8dJuWOw4yB9I_rY2GWEZrn4DpMxBCBP7cKJM7KfQk-3BEQbEl4ZsOkb-0kGlFXPCtv26NhnE15sGiUkQRyEa7ifRfW9XS2yZPbAKXFa701xbTHuVYkPF0LH3acG2raSy9h_QAriF2EEyC47z0JYCe2Ysmz8iIkpIbPHGRXScs1M&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', NULL, '37.4768579', 0),
(3, 112, 32, 'ChIJCxP5zQ2jj4ARYFLLTPB-Y8o', '2025-04-16 14:00:21', '2025-04-16 14:00:21', 'All American Muffler and Auto Repair', '2701 Middlefield Rd, Redwood City', 'car_repair,store,point_of_interest,establishment', 4.30, 50, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AeeoHcInHAhuhD2DsfCqCl0B2s8t7TEebvqhuRxnCV_6B1HrsVf58vIAWUR8YRpUxKapUGuAMAYu_IjwLMTiS87VdAA_8f9gHAxwIfxYApHz_h5Y8_yhQyDKQ3LlY9Kxs1XUMB0Br00g8dJuWOw4yB9I_rY2GWEZrn4DpMxBCBP7cKJM7KfQk-3BEQbEl4ZsOkb-0kGlFXPCtv26NhnE15sGiUkQRyEa7ifRfW9XS2yZPbAKXFa701xbTHuVYkPF0LH3acG2raSy9h_QAriF2EEyC47z0JYCe2Ysmz8iIkpIbPHGRXScs1M&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', NULL, '37.4768579', 0),
(4, 112, 32, 'ChIJraLJ8SfJj4ARaMG3h5mLzlo', '2025-04-16 14:09:00', '2025-04-16 14:09:00', 'All Care Plus, Inc', '999 Commercial St #108, Palo Alto', 'health,point_of_interest,establishment', 4.90, 23, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AeeoHcJW6XwIFhLgcYaNVbwDcREWP4rZ8be0B--qxWPjt3r1mNre5wOYLqHNtBdj-DZEHVlZLW63iEysdeHe1_TAH2aUYRRYXAkGd2Vt0KOqXrAfoTHqDL3eBO6s8JUGiSvrjhcJn1RNfsXgzGBqWPH36oH7OpGM5wvCtGFlleKReCrIwpPYR1iJXfLG0A_El1Rn2VNIQIyeyz_pjN3p1an3nJlkBHo9REzHVuaE_Ikk-NgmMspa6g0Csu2OjUX3EHcFgfk7eXunp0irmPLVrSXh_23brO-zt2GT21rcn-Tvyl2kJGwAXxXgWZRHgQq6AiAMQ-RwEmjmlFBEQUNQcGDVn6s4SuDfaiKHP75Gsk3QNXKk0M06xTu4bQNQlvBSVGCOworv7MUlJ9geWpM334gs31BhMNkbPiFpd3fN3eBuqyQySB3m0seyEzgn12tN-pq8Ja8Mo3oR_MIIR-j2HVNoea9sI0ceo1ZbAmGOOG6-qKmK92-MHYdVjqmVpk8agl8OLqahMis6AAuqLXe_120Tv-ar7OBLHzwNgSwrQnRAP2YmUIlXfKvSy1Y4my8A-Jpt3CHiE2yv&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', NULL, '37.4253135', 0),
(5, 112, 31, 'ChIJA8vQfQi6j4ARflqhrRaPfxY', '2025-04-16 14:23:32', '2025-04-16 14:23:32', 'All VW & Japanese Shop', '2239 Old Middlefield Way, Mountain View', 'car_repair,point_of_interest,establishment', 4.30, 20, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AeeoHcK_wfkqof4E8oxqcsy37Zvh-ekeijsM8KjXVqEfvqadMo_laQ8l2KoTW4MmTQYIDRtJHKsBrfcznXtdr8I16oARJd2iORLte3Pp53aBeFsw2B6kURZFbrk-OT6jSQ_IWNhIOZIcu2kPCJOshe3mIjpHRU_Kd3_9XWnnAcfEXfpUZTsCfV73CfFp0o4Dn1Ed-zU-nKRBVEAFbgMQIfYMcXhCnenqbHP42m3XgDb0AABkN34_9lo3cyb2b7JvW0FhluQmQYm99htcFWN1OrAyAGAnNgboZRZVXk9-pZWFMA7zCugbXT6ZLCthx1SQz2O9gq7rBR1lj2pTPE-zg1HKSfPaiNd1bzbcQIH9xfHrZ7hnoD_huPPFK-OXuB016rEnTwPPORI-SvfxT0NZ8lfIYJpTdOFXeXWEyG6Oke4reWe2-hEspdkuyjOP2kaDYzMt0SqsPG6O8atYvqnBod_9QbZX0plRItu5Nayv8Mqwld54hRr5ig-nIYwVz1MMD8bNFVtYnDzrAaxDVR4LL5_4-MtL6Op5o-tYEOfOWWG45IrBusiGA3JM9Q50IJqLrIRaxAm8O--J-T4J9Q&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', NULL, '37.4140575', 0),
(6, 112, 31, 'ChIJA8vQfQi6j4ARflqhrRaPfxY', '2025-04-16 14:23:36', '2025-04-16 14:23:36', 'All VW & Japanese Shop', '2239 Old Middlefield Way, Mountain View', 'car_repair,point_of_interest,establishment', 4.30, 20, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AeeoHcK_wfkqof4E8oxqcsy37Zvh-ekeijsM8KjXVqEfvqadMo_laQ8l2KoTW4MmTQYIDRtJHKsBrfcznXtdr8I16oARJd2iORLte3Pp53aBeFsw2B6kURZFbrk-OT6jSQ_IWNhIOZIcu2kPCJOshe3mIjpHRU_Kd3_9XWnnAcfEXfpUZTsCfV73CfFp0o4Dn1Ed-zU-nKRBVEAFbgMQIfYMcXhCnenqbHP42m3XgDb0AABkN34_9lo3cyb2b7JvW0FhluQmQYm99htcFWN1OrAyAGAnNgboZRZVXk9-pZWFMA7zCugbXT6ZLCthx1SQz2O9gq7rBR1lj2pTPE-zg1HKSfPaiNd1bzbcQIH9xfHrZ7hnoD_huPPFK-OXuB016rEnTwPPORI-SvfxT0NZ8lfIYJpTdOFXeXWEyG6Oke4reWe2-hEspdkuyjOP2kaDYzMt0SqsPG6O8atYvqnBod_9QbZX0plRItu5Nayv8Mqwld54hRr5ig-nIYwVz1MMD8bNFVtYnDzrAaxDVR4LL5_4-MtL6Op5o-tYEOfOWWG45IrBusiGA3JM9Q50IJqLrIRaxAm8O--J-T4J9Q&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', NULL, '37.4140575', 0),
(7, 112, 33, 'ChIJsa2Ew9DLj4ARKxUZcTfU1ao', '2025-04-16 14:29:05', '2025-04-16 14:29:05', 'All Natural Stone', '2504 Seaboard Ave, San Jose', 'home_goods_store,store,point_of_interest,establishment', 4.50, 61, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AeeoHcKf8IEY4-QVdmwqTgJxIkkO5KhSPvzrwyiEncSgL6OrgDf66NODLzdgd89xcRrzupZylDId7F5mcMPE91cCxN7V7zUx_BOynTh_9_oUN6da94uV5-gzbC_4_koR2w34qSMd-Bq1afhba1W6ZRwh3LnJBxx1TS_LiUetonmoHU6bsk1DGkBZNIBkrPfbN6xs1iOh0in0xO_Gy1xx93h0jCkyo-r9hGH7TTO2Xml3dzv-HeVkpuuknIoNzc5BYmww9ZIiV7NCdmcaFacSsc7sK0jTHOHqEtkPNrzN0GTbGI6S33si7sM&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', NULL, '37.3767366', 0),
(8, 112, 33, 'ChIJsa2Ew9DLj4ARKxUZcTfU1ao', '2025-04-16 14:29:05', '2025-04-16 14:29:05', 'All Natural Stone', '2504 Seaboard Ave, San Jose', 'home_goods_store,store,point_of_interest,establishment', 4.50, 61, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AeeoHcKf8IEY4-QVdmwqTgJxIkkO5KhSPvzrwyiEncSgL6OrgDf66NODLzdgd89xcRrzupZylDId7F5mcMPE91cCxN7V7zUx_BOynTh_9_oUN6da94uV5-gzbC_4_koR2w34qSMd-Bq1afhba1W6ZRwh3LnJBxx1TS_LiUetonmoHU6bsk1DGkBZNIBkrPfbN6xs1iOh0in0xO_Gy1xx93h0jCkyo-r9hGH7TTO2Xml3dzv-HeVkpuuknIoNzc5BYmww9ZIiV7NCdmcaFacSsc7sK0jTHOHqEtkPNrzN0GTbGI6S33si7sM&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', NULL, '37.3767366', 0),
(9, 112, 33, 'ChIJsa2Ew9DLj4ARKxUZcTfU1ao', '2025-04-16 14:29:06', '2025-04-16 14:29:06', 'All Natural Stone', '2504 Seaboard Ave, San Jose', 'home_goods_store,store,point_of_interest,establishment', 4.50, 61, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AeeoHcKf8IEY4-QVdmwqTgJxIkkO5KhSPvzrwyiEncSgL6OrgDf66NODLzdgd89xcRrzupZylDId7F5mcMPE91cCxN7V7zUx_BOynTh_9_oUN6da94uV5-gzbC_4_koR2w34qSMd-Bq1afhba1W6ZRwh3LnJBxx1TS_LiUetonmoHU6bsk1DGkBZNIBkrPfbN6xs1iOh0in0xO_Gy1xx93h0jCkyo-r9hGH7TTO2Xml3dzv-HeVkpuuknIoNzc5BYmww9ZIiV7NCdmcaFacSsc7sK0jTHOHqEtkPNrzN0GTbGI6S33si7sM&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', NULL, '37.3767366', 0),
(10, 112, 31, 'ChIJsa2Ew9DLj4ARKxUZcTfU1ao', '2025-04-16 14:43:33', '2025-04-16 14:43:33', 'All Natural Stone', '2504 Seaboard Ave, San Jose', 'home_goods_store,store,point_of_interest,establishment', 4.50, 61, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AeeoHcKf8IEY4-QVdmwqTgJxIkkO5KhSPvzrwyiEncSgL6OrgDf66NODLzdgd89xcRrzupZylDId7F5mcMPE91cCxN7V7zUx_BOynTh_9_oUN6da94uV5-gzbC_4_koR2w34qSMd-Bq1afhba1W6ZRwh3LnJBxx1TS_LiUetonmoHU6bsk1DGkBZNIBkrPfbN6xs1iOh0in0xO_Gy1xx93h0jCkyo-r9hGH7TTO2Xml3dzv-HeVkpuuknIoNzc5BYmww9ZIiV7NCdmcaFacSsc7sK0jTHOHqEtkPNrzN0GTbGI6S33si7sM&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', NULL, '37.3767366', 0),
(11, 112, 31, 'ChIJuZIHdQc1joAR7cfU99ipBdw', '2025-04-16 16:24:25', '2025-04-16 16:24:25', 'All Ford Parts', '1600 Dell Ave A, Campbell', 'car_repair,store,point_of_interest,establishment', 4.50, 32, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AeeoHcKgD4sLpU8GucF2f1ySIDABufovaAeJm65KLfJVXUNlYhYMY1WH-QxI6f8h9Eur5YXe0VqWOHMSrEXhPGIOBzYosMgSn4dJB-ayJYJk527i88-_A64p05krPfzwfq2PMzjlsglZb2Q_QXEVJ7l9vfdpjWRIEnpNxABccHkMmmPEPtolCp4vHhKPgwjZmOlHpS1p-PM4kI8TdEG5I272d1B2g3tjNNPkqJCB9mGZpQK27QYKyu7_4MONGZaJNz0NHLwuXzxuLBb8P5UCe5vpo-vAvX8rsSAP6_7vuQ3_ESrKGWciFWk&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', NULL, '37.2628067', 0),
(12, 112, 31, 'ChIJuZIHdQc1joAR7cfU99ipBdw', '2025-04-16 16:24:29', '2025-04-16 16:24:29', 'All Ford Parts', '1600 Dell Ave A, Campbell', 'car_repair,store,point_of_interest,establishment', 4.50, 32, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AeeoHcKgD4sLpU8GucF2f1ySIDABufovaAeJm65KLfJVXUNlYhYMY1WH-QxI6f8h9Eur5YXe0VqWOHMSrEXhPGIOBzYosMgSn4dJB-ayJYJk527i88-_A64p05krPfzwfq2PMzjlsglZb2Q_QXEVJ7l9vfdpjWRIEnpNxABccHkMmmPEPtolCp4vHhKPgwjZmOlHpS1p-PM4kI8TdEG5I272d1B2g3tjNNPkqJCB9mGZpQK27QYKyu7_4MONGZaJNz0NHLwuXzxuLBb8P5UCe5vpo-vAvX8rsSAP6_7vuQ3_ESrKGWciFWk&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', NULL, '37.2628067', 0),
(13, 74, 29, 'ChIJne81Q5S3PWkRp174kLY310Y', '2025-04-16 16:27:31', '2025-04-16 16:27:31', 'Care For All Family Therapy Inc.', '800 Pollard Rd B-201, Los Gatos', 'health,point_of_interest,establishment', 5.00, 4, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AeeoHcIGUv22mS13oqUUgcTdtciPSEAa-5GBRv9ogjgscO7cMfcWWvvg7TmdN8_EA1JJYIcSDQhcItkk7CsGJ5A24CSte52DzsSmgJVTVQ3igqdVAgiK6yCq5hRJNhJPBmZVekA4L1YuLJ7JLYYra49Jh61JEcTMQ7gitMogdQ3SrveheyLqznokQ9RjlKiK7rZs0lSmfbRcI8bVV6DUFyEwXQggSkGziYMojFRGMPMCVYlYkyqhOpnde3AfRxHBWNXzFKVZlBj381Ihn0pAnu_TvgZGmQ0fXalci1SsIsodxnRUNbgvg3s&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', NULL, '37.2611519', 0),
(14, 74, 12, 'ChIJc5Fy7ha6j4AR9vtGV3tdcnA', '2025-04-16 16:31:39', '2025-04-16 16:31:39', 'All Automotive', '1900 Old Middlefield Way Suite f, Mountain View', 'car_repair,point_of_interest,establishment', 4.80, 18, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AeeoHcL2VfSx8_z7It5D4MmLWZfmCtD-FTEQWKX0tey5FNZBZmutRT2fWUOb4fRTS-H2887NUS1ZnHNa9UKV2X7JNUYb-WLAfEEIH-P5OySGv4t2k11O27kIxQ4eTQx0NUWP4ne5z2ySSJAoZjh5ry0uh6rrmi0_v2OB9pTqnITV7eMIZqsMmeEjguGNgL6CIq6eUwoZb6TjJSwPjWGHHe6EumCveiYg6StnXp_1KUIf0Us_DgveWNc_5ZGi7tPwzADieGon7m66rJUtZuQmda_59tLPEr8tSUkkcEB7qb9r7PvJKzyyodHMBDAyOZf41zPoFLipIEQb9TWDCzM4SiDvbPdhC6KVu2xcDSKOyuqJ1NzygGEsH4pVnwnyJVfJopDwsMTL2oiC0VRbdkQs5rBIkLBqNL_oEpTCEQvwXCE3ZlJjehqGL6swlWjPye9bSiSS-TSHYx1ux8hRVbGQedUoX8fwinulHZHB6vgO0RvNS7QnqCHEdYfz6DvJUNayhyEi-Vjyjhklb9fT35pct9iVflk8P1QiA6m5TqFUENIrbUYufUc7TtbJNJZjwpjzazmwQaQzOUBO8WykYQ&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', NULL, '37.4147236', 0),
(15, 74, 12, 'ChIJc5Fy7ha6j4AR9vtGV3tdcnA', '2025-04-16 16:31:39', '2025-04-16 16:31:39', 'All Automotive', '1900 Old Middlefield Way Suite f, Mountain View', 'car_repair,point_of_interest,establishment', 4.80, 18, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AeeoHcL2VfSx8_z7It5D4MmLWZfmCtD-FTEQWKX0tey5FNZBZmutRT2fWUOb4fRTS-H2887NUS1ZnHNa9UKV2X7JNUYb-WLAfEEIH-P5OySGv4t2k11O27kIxQ4eTQx0NUWP4ne5z2ySSJAoZjh5ry0uh6rrmi0_v2OB9pTqnITV7eMIZqsMmeEjguGNgL6CIq6eUwoZb6TjJSwPjWGHHe6EumCveiYg6StnXp_1KUIf0Us_DgveWNc_5ZGi7tPwzADieGon7m66rJUtZuQmda_59tLPEr8tSUkkcEB7qb9r7PvJKzyyodHMBDAyOZf41zPoFLipIEQb9TWDCzM4SiDvbPdhC6KVu2xcDSKOyuqJ1NzygGEsH4pVnwnyJVfJopDwsMTL2oiC0VRbdkQs5rBIkLBqNL_oEpTCEQvwXCE3ZlJjehqGL6swlWjPye9bSiSS-TSHYx1ux8hRVbGQedUoX8fwinulHZHB6vgO0RvNS7QnqCHEdYfz6DvJUNayhyEi-Vjyjhklb9fT35pct9iVflk8P1QiA6m5TqFUENIrbUYufUc7TtbJNJZjwpjzazmwQaQzOUBO8WykYQ&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', NULL, '37.4147236', 0),
(16, 74, 12, 'ChIJc5Fy7ha6j4AR9vtGV3tdcnA', '2025-04-16 16:31:41', '2025-04-16 16:31:41', 'All Automotive', '1900 Old Middlefield Way Suite f, Mountain View', 'car_repair,point_of_interest,establishment', 4.80, 18, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AeeoHcL2VfSx8_z7It5D4MmLWZfmCtD-FTEQWKX0tey5FNZBZmutRT2fWUOb4fRTS-H2887NUS1ZnHNa9UKV2X7JNUYb-WLAfEEIH-P5OySGv4t2k11O27kIxQ4eTQx0NUWP4ne5z2ySSJAoZjh5ry0uh6rrmi0_v2OB9pTqnITV7eMIZqsMmeEjguGNgL6CIq6eUwoZb6TjJSwPjWGHHe6EumCveiYg6StnXp_1KUIf0Us_DgveWNc_5ZGi7tPwzADieGon7m66rJUtZuQmda_59tLPEr8tSUkkcEB7qb9r7PvJKzyyodHMBDAyOZf41zPoFLipIEQb9TWDCzM4SiDvbPdhC6KVu2xcDSKOyuqJ1NzygGEsH4pVnwnyJVfJopDwsMTL2oiC0VRbdkQs5rBIkLBqNL_oEpTCEQvwXCE3ZlJjehqGL6swlWjPye9bSiSS-TSHYx1ux8hRVbGQedUoX8fwinulHZHB6vgO0RvNS7QnqCHEdYfz6DvJUNayhyEi-Vjyjhklb9fT35pct9iVflk8P1QiA6m5TqFUENIrbUYufUc7TtbJNJZjwpjzazmwQaQzOUBO8WykYQ&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', NULL, '37.4147236', 0),
(17, 74, 12, 'ChIJc5Fy7ha6j4AR9vtGV3tdcnA', '2025-04-16 16:31:41', '2025-04-16 16:31:41', 'All Automotive', '1900 Old Middlefield Way Suite f, Mountain View', 'car_repair,point_of_interest,establishment', 4.80, 18, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AeeoHcL2VfSx8_z7It5D4MmLWZfmCtD-FTEQWKX0tey5FNZBZmutRT2fWUOb4fRTS-H2887NUS1ZnHNa9UKV2X7JNUYb-WLAfEEIH-P5OySGv4t2k11O27kIxQ4eTQx0NUWP4ne5z2ySSJAoZjh5ry0uh6rrmi0_v2OB9pTqnITV7eMIZqsMmeEjguGNgL6CIq6eUwoZb6TjJSwPjWGHHe6EumCveiYg6StnXp_1KUIf0Us_DgveWNc_5ZGi7tPwzADieGon7m66rJUtZuQmda_59tLPEr8tSUkkcEB7qb9r7PvJKzyyodHMBDAyOZf41zPoFLipIEQb9TWDCzM4SiDvbPdhC6KVu2xcDSKOyuqJ1NzygGEsH4pVnwnyJVfJopDwsMTL2oiC0VRbdkQs5rBIkLBqNL_oEpTCEQvwXCE3ZlJjehqGL6swlWjPye9bSiSS-TSHYx1ux8hRVbGQedUoX8fwinulHZHB6vgO0RvNS7QnqCHEdYfz6DvJUNayhyEi-Vjyjhklb9fT35pct9iVflk8P1QiA6m5TqFUENIrbUYufUc7TtbJNJZjwpjzazmwQaQzOUBO8WykYQ&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', NULL, '37.4147236', 0),
(18, 74, 12, 'ChIJc5Fy7ha6j4AR9vtGV3tdcnA', '2025-04-16 16:31:41', '2025-04-16 16:31:41', 'All Automotive', '1900 Old Middlefield Way Suite f, Mountain View', 'car_repair,point_of_interest,establishment', 4.80, 18, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AeeoHcL2VfSx8_z7It5D4MmLWZfmCtD-FTEQWKX0tey5FNZBZmutRT2fWUOb4fRTS-H2887NUS1ZnHNa9UKV2X7JNUYb-WLAfEEIH-P5OySGv4t2k11O27kIxQ4eTQx0NUWP4ne5z2ySSJAoZjh5ry0uh6rrmi0_v2OB9pTqnITV7eMIZqsMmeEjguGNgL6CIq6eUwoZb6TjJSwPjWGHHe6EumCveiYg6StnXp_1KUIf0Us_DgveWNc_5ZGi7tPwzADieGon7m66rJUtZuQmda_59tLPEr8tSUkkcEB7qb9r7PvJKzyyodHMBDAyOZf41zPoFLipIEQb9TWDCzM4SiDvbPdhC6KVu2xcDSKOyuqJ1NzygGEsH4pVnwnyJVfJopDwsMTL2oiC0VRbdkQs5rBIkLBqNL_oEpTCEQvwXCE3ZlJjehqGL6swlWjPye9bSiSS-TSHYx1ux8hRVbGQedUoX8fwinulHZHB6vgO0RvNS7QnqCHEdYfz6DvJUNayhyEi-Vjyjhklb9fT35pct9iVflk8P1QiA6m5TqFUENIrbUYufUc7TtbJNJZjwpjzazmwQaQzOUBO8WykYQ&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', NULL, '37.4147236', 0),
(19, 74, 12, 'ChIJc5Fy7ha6j4AR9vtGV3tdcnA', '2025-04-16 16:31:42', '2025-04-16 16:31:42', 'All Automotive', '1900 Old Middlefield Way Suite f, Mountain View', 'car_repair,point_of_interest,establishment', 4.80, 18, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AeeoHcL2VfSx8_z7It5D4MmLWZfmCtD-FTEQWKX0tey5FNZBZmutRT2fWUOb4fRTS-H2887NUS1ZnHNa9UKV2X7JNUYb-WLAfEEIH-P5OySGv4t2k11O27kIxQ4eTQx0NUWP4ne5z2ySSJAoZjh5ry0uh6rrmi0_v2OB9pTqnITV7eMIZqsMmeEjguGNgL6CIq6eUwoZb6TjJSwPjWGHHe6EumCveiYg6StnXp_1KUIf0Us_DgveWNc_5ZGi7tPwzADieGon7m66rJUtZuQmda_59tLPEr8tSUkkcEB7qb9r7PvJKzyyodHMBDAyOZf41zPoFLipIEQb9TWDCzM4SiDvbPdhC6KVu2xcDSKOyuqJ1NzygGEsH4pVnwnyJVfJopDwsMTL2oiC0VRbdkQs5rBIkLBqNL_oEpTCEQvwXCE3ZlJjehqGL6swlWjPye9bSiSS-TSHYx1ux8hRVbGQedUoX8fwinulHZHB6vgO0RvNS7QnqCHEdYfz6DvJUNayhyEi-Vjyjhklb9fT35pct9iVflk8P1QiA6m5TqFUENIrbUYufUc7TtbJNJZjwpjzazmwQaQzOUBO8WykYQ&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', NULL, '37.4147236', 0),
(20, 74, 12, 'ChIJc5Fy7ha6j4AR9vtGV3tdcnA', '2025-04-16 16:31:42', '2025-04-16 16:31:42', 'All Automotive', '1900 Old Middlefield Way Suite f, Mountain View', 'car_repair,point_of_interest,establishment', 4.80, 18, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AeeoHcL2VfSx8_z7It5D4MmLWZfmCtD-FTEQWKX0tey5FNZBZmutRT2fWUOb4fRTS-H2887NUS1ZnHNa9UKV2X7JNUYb-WLAfEEIH-P5OySGv4t2k11O27kIxQ4eTQx0NUWP4ne5z2ySSJAoZjh5ry0uh6rrmi0_v2OB9pTqnITV7eMIZqsMmeEjguGNgL6CIq6eUwoZb6TjJSwPjWGHHe6EumCveiYg6StnXp_1KUIf0Us_DgveWNc_5ZGi7tPwzADieGon7m66rJUtZuQmda_59tLPEr8tSUkkcEB7qb9r7PvJKzyyodHMBDAyOZf41zPoFLipIEQb9TWDCzM4SiDvbPdhC6KVu2xcDSKOyuqJ1NzygGEsH4pVnwnyJVfJopDwsMTL2oiC0VRbdkQs5rBIkLBqNL_oEpTCEQvwXCE3ZlJjehqGL6swlWjPye9bSiSS-TSHYx1ux8hRVbGQedUoX8fwinulHZHB6vgO0RvNS7QnqCHEdYfz6DvJUNayhyEi-Vjyjhklb9fT35pct9iVflk8P1QiA6m5TqFUENIrbUYufUc7TtbJNJZjwpjzazmwQaQzOUBO8WykYQ&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', NULL, '37.4147236', 0),
(21, 106, 30, 'ChIJGTLOMoNw44kRWI2Y-w8r-ww', '2025-04-16 16:34:38', '2025-04-16 16:34:38', 'Health Care For All', '70 Franklin St Suite 500, Boston', 'point_of_interest,establishment', 3.30, 12, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AeeoHcLO5R0G1ttvmVZhJmWPrsvFb_rxNYyCjGL_kdTYebcJkXuZa4hnbSa3SKLv5aZn54yfPWfWAO2HGy6pl6ay6jZrBoJERDilDA8OWjLp0wwgqTVnJztr-z2LEX8hv6c6O90iA9-2KGHQY2g6c16dmsONukaUsrRublNHv_VZhtwYx71wnxeXtbL-kWPSOyM8r5GqdYxo3xkHlWjwj5j1gZvgEWOdxk9-BCU7xSjFSSca-ru4Ecc89K0mJ9KSnbWtH3C4kTZS6j0CDsFC7nMKU1s7srESH6jvDy8Ha4KxckhiubYDJTY&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', NULL, '42.3557482', 0),
(22, 74, 12, 'ChIJCxP5zQ2jj4ARYFLLTPB-Y8o', '2025-04-16 16:40:51', '2025-04-16 16:40:51', 'All American Muffler and Auto Repair', '2701 Middlefield Rd, Redwood City', 'car_repair,store', 4.30, 50, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AeeoHcInHAhuhD2DsfCqCl0B2s8t7TEebvqhuRxnCV_6B1HrsVf58vIAWUR8YRpUxKapUGuAMAYu_IjwLMTiS87VdAA_8f9gHAxwIfxYApHz_h5Y8_yhQyDKQ3LlY9Kxs1XUMB0Br00g8dJuWOw4yB9I_rY2GWEZrn4DpMxBCBP7cKJM7KfQk-3BEQbEl4ZsOkb-0kGlFXPCtv26NhnE15sGiUkQRyEa7ifRfW9XS2yZPbAKXFa701xbTHuVYkPF0LH3acG2raSy9h_QAriF2EEyC47z0JYCe2Ysmz8iIkpIbPHGRXScs1M&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', '37.4768579', '37.4768579', 2),
(23, 74, 12, 'ChIJAbDitVFKzDERqfd2ayXCh2Q', '2025-04-16 16:42:26', '2025-04-16 16:42:26', 'All Thai Restaurant', '10, Jalan Awan Hijau, Taman Overseas Union, Kuala Lumpur', 'restaurant,point_of_interest,food,establishment', 4.00, 375, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AeeoHcLRCqNzFuHbb_RVnTx2sglhkm95L-u1jN4nIErfTOOMWup0A5D2Dq3QQw0gOEQrrVHja-q47362MujGx1Z4o_vXRtaI7xCr2qNsNr9JwB8aCI9Y7tj0Q7jBT24_9eb3l-CY-HnEC1HW15hDHtTUKMlptCUorRpFpyHfa58zkCLhL8zEjllhqmYlXQffQz84PnbDikJ1puCXG8iF93ePl2NZ7E-uGZqt9Vy8Ysi3tesb_CweWVo4rw45uzyVEZVKrs_tzjja40DQp6v2XQFy8ebJdikFXyFFGtpHp9OGtoHWbNuqf8xD0TJZGAw8UYcrhNsFPPchgHtslZVGW_YAeP35L_SwX0BrpocghoCTqfDt6spgHfZhbTMHGRrDjqA0xvSwmc26ZeiiM9uyYBvVEi0k40oRrpH3cj28xuHhlVGtiraf8c9SLL7omhcXstKCAfL5YKAeoNEkzXSqdLkCfJhrT8ChyBFH3Fi5LBBuGinmW7Ht2qEDZgTd6VaNKdhKwLCkCYNef5K0izYVBiOuEgUDP0Vayq8eHgL7T9OnxsjxL6yP6-4COuavHmohK1A2WYNCJ7AeXPNQ8A&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', NULL, '3.0820186', 0),
(24, 74, 13, 'ChIJAbDitVFKzDERqfd2ayXCh2Q', '2025-04-16 16:43:49', '2025-04-16 16:43:49', 'All Thai Restaurant', '10, Jalan Awan Hijau, Taman Overseas Union, Kuala Lumpur', 'restaurant,point_of_interest,food,establishment', 4.00, 375, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AeeoHcLRCqNzFuHbb_RVnTx2sglhkm95L-u1jN4nIErfTOOMWup0A5D2Dq3QQw0gOEQrrVHja-q47362MujGx1Z4o_vXRtaI7xCr2qNsNr9JwB8aCI9Y7tj0Q7jBT24_9eb3l-CY-HnEC1HW15hDHtTUKMlptCUorRpFpyHfa58zkCLhL8zEjllhqmYlXQffQz84PnbDikJ1puCXG8iF93ePl2NZ7E-uGZqt9Vy8Ysi3tesb_CweWVo4rw45uzyVEZVKrs_tzjja40DQp6v2XQFy8ebJdikFXyFFGtpHp9OGtoHWbNuqf8xD0TJZGAw8UYcrhNsFPPchgHtslZVGW_YAeP35L_SwX0BrpocghoCTqfDt6spgHfZhbTMHGRrDjqA0xvSwmc26ZeiiM9uyYBvVEi0k40oRrpH3cj28xuHhlVGtiraf8c9SLL7omhcXstKCAfL5YKAeoNEkzXSqdLkCfJhrT8ChyBFH3Fi5LBBuGinmW7Ht2qEDZgTd6VaNKdhKwLCkCYNef5K0izYVBiOuEgUDP0Vayq8eHgL7T9OnxsjxL6yP6-4COuavHmohK1A2WYNCJ7AeXPNQ8A&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', '3.0820186', '3.0820186', 0),
(25, 74, 14, 'ChIJAbDitVFKzDERqfd2ayXCh2Q', '2025-04-16 16:44:09', '2025-04-16 16:44:09', 'All Thai Restaurant', '10, Jalan Awan Hijau, Taman Overseas Union, Kuala Lumpur', 'restaurant,point_of_interest,food,establishment', 4.00, 375, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AeeoHcLRCqNzFuHbb_RVnTx2sglhkm95L-u1jN4nIErfTOOMWup0A5D2Dq3QQw0gOEQrrVHja-q47362MujGx1Z4o_vXRtaI7xCr2qNsNr9JwB8aCI9Y7tj0Q7jBT24_9eb3l-CY-HnEC1HW15hDHtTUKMlptCUorRpFpyHfa58zkCLhL8zEjllhqmYlXQffQz84PnbDikJ1puCXG8iF93ePl2NZ7E-uGZqt9Vy8Ysi3tesb_CweWVo4rw45uzyVEZVKrs_tzjja40DQp6v2XQFy8ebJdikFXyFFGtpHp9OGtoHWbNuqf8xD0TJZGAw8UYcrhNsFPPchgHtslZVGW_YAeP35L_SwX0BrpocghoCTqfDt6spgHfZhbTMHGRrDjqA0xvSwmc26ZeiiM9uyYBvVEi0k40oRrpH3cj28xuHhlVGtiraf8c9SLL7omhcXstKCAfL5YKAeoNEkzXSqdLkCfJhrT8ChyBFH3Fi5LBBuGinmW7Ht2qEDZgTd6VaNKdhKwLCkCYNef5K0izYVBiOuEgUDP0Vayq8eHgL7T9OnxsjxL6yP6-4COuavHmohK1A2WYNCJ7AeXPNQ8A&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', '3.0820186', '3.0820186', 0),
(26, 74, 34, 'ChIJAbDitVFKzDERqfd2ayXCh2Q', '2025-04-16 16:55:17', '2025-04-16 16:55:17', 'All Thai Restaurant', '10, Jalan Awan Hijau, Taman Overseas Union, Kuala Lumpur', 'restaurant,point_of_interest,food,establishment', 4.00, 375, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AeeoHcLRCqNzFuHbb_RVnTx2sglhkm95L-u1jN4nIErfTOOMWup0A5D2Dq3QQw0gOEQrrVHja-q47362MujGx1Z4o_vXRtaI7xCr2qNsNr9JwB8aCI9Y7tj0Q7jBT24_9eb3l-CY-HnEC1HW15hDHtTUKMlptCUorRpFpyHfa58zkCLhL8zEjllhqmYlXQffQz84PnbDikJ1puCXG8iF93ePl2NZ7E-uGZqt9Vy8Ysi3tesb_CweWVo4rw45uzyVEZVKrs_tzjja40DQp6v2XQFy8ebJdikFXyFFGtpHp9OGtoHWbNuqf8xD0TJZGAw8UYcrhNsFPPchgHtslZVGW_YAeP35L_SwX0BrpocghoCTqfDt6spgHfZhbTMHGRrDjqA0xvSwmc26ZeiiM9uyYBvVEi0k40oRrpH3cj28xuHhlVGtiraf8c9SLL7omhcXstKCAfL5YKAeoNEkzXSqdLkCfJhrT8ChyBFH3Fi5LBBuGinmW7Ht2qEDZgTd6VaNKdhKwLCkCYNef5K0izYVBiOuEgUDP0Vayq8eHgL7T9OnxsjxL6yP6-4COuavHmohK1A2WYNCJ7AeXPNQ8A&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', '3.0820186', '3.0820186', 0),
(27, 74, 34, 'ChIJ4zZ-h1E1zDERSxl9McUPfVk', '2025-04-16 16:55:42', '2025-04-16 16:55:42', 'All Gadget Sdn. Bhd.', '24, Jalan Sri Permaisuri 9, Bandar Sri Permaisuri, Kuala Lumpur', 'store,point_of_interest,establishment', 5.00, 359, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AeeoHcItz2Ui5Hq7XjlOF-ljRJ0P7-7XU7buQFvzM_h5jf_cyOW6IU01CXnejIxgFuolepcuu3AeEqtvij3nM86yWs528swrlf-q0UyuEuGk1zGOg8WWMwsvhHNPLOy7nVudGniE5qHR102NeNndwGXVO4pUuKA1Y5SkUpbjQnhwwYIMrjO1wxFtQc86FSfU3YCbAJekwvWnYTPZ12DnjlTK0i1I8uZOKZOrz93FD1g96j3b5DNEX6BRXyAJ6TFr8hDAROXQ_DJu4HtrcXCl0OAx2H1FyYvPrKPzpQHrcbj4I26y-JN7ow8&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', '3.1022106', '3.1022106', 0),
(28, 106, 25, 'ChIJGTLOMoNw44kRWI2Y-w8r-ww', '2025-04-16 17:35:09', '2025-04-16 17:35:09', 'Health Care For All', '70 Franklin St Suite 500, Boston', 'point_of_interest,establishment', 3.30, 12, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AeeoHcIoLym1LmM2oc2T962c6Gu59sxuJQEojDevjm8nFs1p5jVX54zIKZrpQ3ODDh9jfGmvalqIbTQb4nmz1LHbCpci5MNmT4Zu5GWu5s949oXjpIa_2HBgvkh3tzQ8I_Ls4Et7XV6ENXGSpGgSUuOsAr4uqXBVa_QBBS0DaXzy5NymI77yMfh6vCcY3wXnc9xc0uRsCHMglmz7ffdfPNEcrLhzNQB8IYJht0UK6klNGk_iksVsXdes-eRraia86QmOveA3uujCnY3nSOjBMEsMwPTDYxP0si95r4m33Me8JRW3-nW_6o4&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', NULL, '42.3557482', 0),
(29, 106, 30, 'ChIJ7_rF2j1344kREr49hs3e5KU', '2025-04-17 17:31:34', '2025-04-17 17:31:34', 'All Eye Care Doctors', '1815 Massachusetts Ave, Cambridge', 'doctor,health,store,point_of_interest,establishment', 4.40, 369, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AeeoHcIuJZHtlpT5LZXMFNuCs3cMPHYHlsPBR6vCaiikMys8fnIMkMzIc1qIu0w4OCX7vwPlnrEc0u8Vqwe_bIEPbTXKO6OgnPic9On4HWDtwQPof8Dr_ypWN_459hI3GT0VZOmELoIcjC3pSq5h2LTFmFbo2XTlSHxy-MVy5-qEP0tSoLgHiXehvor8MTxVNhpYdH4P_scI074TxNm9knzFAicXfp2ZET7b1nbdg7dYdThzAwbmHnvhL85xuB5qs0OK_0jJPK5BUt2r9RXA6xFMkxqrSG4HnBRS7WZwcOIEarTVxPMetZg&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', NULL, '42.3869704', 0),
(30, 106, 30, 'ChIJ71Igx1JbwokRJzwKQfbEiEU', '2025-04-18 16:17:58', '2025-04-18 16:17:58', 'Federal Gourmet (all orders allowed)', '325 Broadway, New York', 'store,point_of_interest,food,establishment', 5.00, 41, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AeeoHcKUVCjmJe0r4G-MBkNvtKSelwVoCwkLDiV4kxEVxbMtHs3JSG2-BULJBQVmPNjhtKe24EkjA6yjB4Vjsdea_5AIjW28QMvIFnQ4eJNSHgfa32JPZXwc4zQw3Z0GSQEtuRv1zjwcpwFCraoAoUyb17ZEKqxyyYoUP2-MED8f-pKQ_rPE7T23Tq_RFhactc8h54ChL2wDluGhnbKE7XuBB2qPfWxWonOF4fVXw6y4SSaRwwjrPYpcacoXp4zbKBDXUxQeJQzBqrGQkH5wjzAeAWODvhWYWlYZn1xetF3664jSBiX4tEE&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', NULL, '40.716076', 0),
(31, 74, 12, 'ChIJEeTdUF3Lj4ARY1JyMuzkkPM', '2025-04-23 16:42:47', '2025-04-23 16:42:47', 'All American Fitness', '1223 The Alameda, San Jose', 'point_of_interest,store,establishment', 4.60, 71, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AeeoHcK27WzjrMTt9_cXwdLCAPWeqsUPeh17i3a9tlhGiCGYa90AtH3MQcgWEzZd9iR-1GiG5FCijmSlo_c98AaijnDtKD34AFskERk12TfGbGcrs0vXqDoFge4691vDFjOV7iN3WDb5irITaNdUw7y0qHNRXcMUx6oWFMRhaNMKcwnAd4yWDYjxXWlPJqurn3UAgQNpBkK2hCfOhzcSO8qscfAaSLCkE377dskG2AeXsHum_x6dwQAFO_oLW5y8eFKGbYlUgDP4UlCQI2ulRwSVjebnRgA9BYt0jKOtdBrFGhg81VUEVQw&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', '37.331887', '37.331887', 0),
(32, 74, 12, 'ChIJraLJ8SfJj4ARaMG3h5mLzlo', '2025-04-24 11:57:57', '2025-04-24 11:57:57', 'All Care Plus, Inc', '999 Commercial St #108, Palo Alto', 'health,point_of_interest,establishment', 4.90, 23, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AeeoHcK7seReJ1wq4I3eVCq776mkQsG4gMfOjqduM1klgpv_atZI84c8J4FwRgU0kbSDEK_q99nHegKuDo3N0dhiYiO2XJuQsxcRZ1Cv1k-aPr73VXm683VFUFTyfzLE31AZ7IAvEXQB1187lS8RmHM_dqtfcXVHdnHK5FKRPgQQ_dxLZklRpTIoJAY92pTo0mcuLpUdsbqMwCI4yDQGVY92A2S1SEOMoPpuMIGXjDObPzdiAhcR5Lj9VCqDv_GPyrtv4I8o7V8Z5uS2rnbD6W5jpTHPTbR6-yMxLPNqMv-C5gzdX1fmsLg&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', '37.4253135', '37.4253135', 0),
(33, 74, 35, 'ChIJJQZADky3j4AR64avU1FQ3YQ', '2025-04-24 12:00:13', '2025-04-24 12:00:13', 'Allure Dental Center', '570 N Shoreline Blvd, Mountain View', 'dentist,doctor,point_of_interest,health,establishment', 4.80, 330, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AeeoHcIpzeu_6iJqnSK3RTXovcAB3DrLIkraTHmsuSnmcVBCBHWczoi8AemfkGui4V9uOgib1UP1sGqVWEW1rTaNWZib2EbmrRiq1EPhCmADK7KeWM5iPbuy0_AQ2Zm-mPe47VgvBAplrFlP3rAif3TBIp-Rn6_69HrVDpxBMyShs4lJnH2gYgRUjhv0haXl1NVTt9_pDDRrJlV7iyLAzJ0qg7DSDdYwmxAMIzlqx-L_o_2bD3yxHR2vQ9GkoS3071h1a2xFNpjmq-1hUwcAOzYbmWGrim44lCQrd9h7CaoWsNNHW1q22kc&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', '37.4025856', '37.4025856', 0),
(34, 74, 12, 'ChIJk4vMl1e6j4ARWE0TKdr5ip8', '2025-04-24 12:10:27', '2025-04-24 12:10:27', 'Palo Alto Oral Health', '2875 Middlefield Rd # 1, Palo Alto', 'dentist,doctor,health,point_of_interest,establishment', 4.60, 19, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AeeoHcJCpI64ktFUGGelnXVM1jR_kTnvOf_uQ9YEsvRU1UD_C9Q9_4tfYrJ2kI8vEjZSmeSTwMxr-reITduZuM9kSsBNHLEGZ1K-2fB2nOzcNH9Qjux5QpuksaoNIushjo7VMtluIy0E6pGAMv06dsfU1MhrdTQFdz1emsNotCTQ_O-910wqgJGkAZzgleeW5i7mQCPEypOM30FqLYQWvW4tc_MvkxLOtnTVgamIOrq4-9l3HPIDPzF6SzHVrq_ob3Ljadl3runVagUCD-liTDB_D31_GqSlyXCUP5PUeQqTrJK0DkBE1CM&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', '37.4322682', '37.4322682', 0),
(35, 74, 34, 'ChIJC8qELlK7j4ARGgtzDV3oTBA', '2025-04-24 12:24:00', '2025-04-24 12:24:00', 'Mike Counsil Plumbing and Rooter - Mountain View', '2263 Old Middlefield Way, Mountain View', 'plumber,point_of_interest,store,establishment', 5.00, 5, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AeeoHcKE2rb5ror--fBpB8yyz0RxiNVTxaD7YF0TK_S0dbAa3UI_OTbPR4L9cr6QDUfSPYTIvxUPzFv_f-hwNNtPbKs4wFYQz3v0YGzoz6O3UnnHikBtfyR8cvKol855QGbvBSjRmJApF7ctxbRzYy5Kqia8OqoaS60ng4hZd6SUpxzXgVZkWZmmAjRPTBXeiSt-5hqVsIp63YMKjTwB1zl_jSPk_UqXh9uAICukKOzfXOSeP5hd2f9sx1et_Pg5OfBoLYGNuQUFzRbJpwz5tUhfwjJ2oUn2ztlCZVBHLKdyqf3q3si67iw&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', '37.414365', '37.414365', 0),
(36, 106, 25, 'ChIJ_xd0fSJawokRpUAC-pDBYq8', '2025-04-24 14:48:07', '2025-04-24 14:48:07', 'Cartova', '150 Nassau St, New York', 'car_rental,point_of_interest,establishment', 5.00, 1, NULL, NULL, '40.7114063', '40.7114063', 0),
(37, 74, 26, 'ChIJ5VX0aEmij4ARy9cHZID6Juw', '2025-04-28 15:43:02', '2025-04-28 15:43:02', 'Interstate All Battery Center', '570 W El Camino Real, Redwood City', 'store,car_repair,point_of_interest,establishment', 4.60, 57, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AeeoHcL0s_T4syImJrwtBPGA7XWCsVpa1Pfe3H_RemmE6DEBYuVXiqt4vi9xPo367tIMZSaHF8wG4ooqsGrZgENDZyjhv6WOgnFXzensr3ilBCZ-Oeh96Nj2aacvsJFRImHv_i5mpkVz9yl0gpzSfNr4zON4CfuKWdcSy3YQp5JU0OP9nWCPcqvwgSbIN8G4OlZbEDUVr0AaDGEyydAWdcaVKsALTfktFIWXmpwVJYnCcH6OhvaLAiegvFA1sWWBWGm42chTlP_NRY7BokxFifRuK33Aij19DVolOn_enFDD4OIjxk8i80c&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', '37.488893', '37.488893', 0),
(38, 108, 23, 'ChIJJdtf2L8-sz4RKfIzVrvcZ0o', '2025-05-19 21:40:23', '2025-05-19 21:40:23', 'MCB', 'V3GC+M5R, Delhi Mercantile Society, Karachi', 'bank,atm,finance,point_of_interest,establishment', 3.80, 5, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AXQCQNQYm2xxA0f_i6klYeH-jqgK2oE8C-jErEnbb77WnPClNbpOoqL-Bvay1VM9QfAP69F0aN2MYStRZdNHmCKjli1o7IEVmsZQo099xZB4WUJViIAH2kCOGL5THTd39MdehL0CwLWW8ppNLQO7ufgKw1FN1hLZiBixTGmgNeBlwnFsc4mWZtex877mQIT4JUbWltfS1IQHFM92rqlO9SXmsmzgcAOHKebbq_l3L--LSFG9o53o_rsVZg53MfJ8FcTO2jw9XSc88QGYJbwW5j6IkTQVrQ-jTA2sF0ljJITQvV3JOeqlfSUd_WvimKguvicAk2GEYz6oL5fViAM1eRuwIOexeh3vW89tE4giPNZYuhULZeBEgyRMe2ABMVhje6XsBJXa7h9VZIYWewvFRS5HZYenw5UdFSbDrh-BrMDpW2haw1SlKeyIzPjI1I0qQ-RE9Fm43cbOLaB9HRqAJ-xYiij6f0fU8oQuPJaJ6q1ch9b2BUflULzeYeZcvAwEtDGtY-MiMbqyP08uoC3PJa-XAS79gKxJE5riP8YeyabkXCNRO-1VeSLhgL7dAkIwH4_oO4tXaND1&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', '24.8766785', '24.8766785', 0),
(39, 88, 37, 'ChIJA8vQfQi6j4ARflqhrRaPfxY', '2025-06-20 12:50:27', '2025-06-20 12:50:27', 'All VW & Japanese Shop', '2239 Old Middlefield Way, Mountain View', 'car_repair,point_of_interest,establishment', 4.30, 20, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AXQCQNTVPE3Q6WSdYAjIbZNrl3iqT8jjAFIhiFpCnd75Vn8gFB-X8AZwHhld4SgtUHM1McGnUjkXlkW1T7tn8Y0tg6aBD4JI3hoDyf_9yHxDddjEhFbMRTTY7qkd8L6S0B888vRnxTneIhp_HcaJjKjQYix0jDC3L-qk21CYieimPSLOo0qciStQJVS3f0tAgrflph51dz0dif48zSaisfdJzjRBk7e_MdDshjlcigdz88lwyS6nxxOH4V1AzbnUt4v8cNTNJB83PU9v-oR3J5tZerVWUNoCocSHKxfG6vBpYJgGEE9ePrUcoFqAdJ9Mhzyxkh6zsOGv6q-t5wI8ucfi4luV4EYiiJQZEUnHfRm1fRUcvTLNMYS2CJJPgR4hvRLRI2JyOLk9U9YlurSii5cRiOhXc9cuyMn5D8R9uIag2n4HLaUf0ca9ObvWvFb6q_cIpvaomAUdruQYWDPeafe9izQcAfm6IeeCFhCO5-u-089mGOEjsin7pzIZ-f_z2A4q9wow_wiJR76KEdZnyb2TqPTcd74BizfBu2SvSLpcSl2QIgnKeKIzM2HXW1SUmjzhmV7c5gLAnEs5HA&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', '37.4140575', '37.4140575', 0);

-- --------------------------------------------------------

--
-- Table structure for table `place_trips`
--

CREATE TABLE `place_trips` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `trip_id` bigint(20) UNSIGNED NOT NULL,
  `place_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `playlists`
--

CREATE TABLE `playlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `playlists`
--

INSERT INTO `playlists` (`id`, `user_id`, `name`, `created_at`, `updated_at`) VALUES
(12, 74, 'schools', '2025-03-25 10:04:13', '2025-03-25 10:04:13'),
(13, 74, 'schools 2', '2025-03-25 10:08:54', '2025-03-25 10:08:54'),
(14, 74, 'schools 3', '2025-03-25 10:11:39', '2025-03-25 10:11:39'),
(15, 87, 'Karachi', '2025-03-25 11:32:10', '2025-03-25 11:32:10'),
(16, 107, 'gyms', '2025-03-25 11:52:45', '2025-03-25 11:52:45'),
(17, 87, 'list 1', '2025-03-25 12:05:51', '2025-03-25 12:05:51'),
(18, 87, 'a', '2025-03-25 17:11:31', '2025-03-25 17:11:31'),
(19, 87, 'b', '2025-03-26 04:46:17', '2025-03-26 04:46:17'),
(20, 87, 'c', '2025-03-26 04:46:27', '2025-03-26 04:46:27'),
(21, 87, '5', '2025-03-26 07:07:58', '2025-03-26 07:07:58'),
(22, 87, '6', '2025-03-26 08:34:06', '2025-03-26 08:34:06'),
(23, 108, 'Khi', '2025-03-28 22:18:30', '2025-03-28 22:18:30'),
(24, 106, 'Brrooklyn Trip', '2025-04-02 19:44:47', '2025-04-02 19:44:47'),
(25, 106, 'Brooklyn Casinos', '2025-04-02 20:45:29', '2025-04-02 20:45:29'),
(26, 74, 'furniture', '2025-04-03 11:24:06', '2025-04-03 11:24:06'),
(27, 109, 'bank', '2025-04-03 15:40:48', '2025-04-03 15:40:48'),
(28, 110, 'Karachi', '2025-04-04 15:52:39', '2025-04-04 15:52:39'),
(29, 74, 'airpots', '2025-04-04 17:18:24', '2025-04-04 17:18:24'),
(30, 106, 'Manchusets', '2025-04-11 17:54:08', '2025-04-11 17:54:08'),
(31, 112, 'my fav', '2025-04-16 12:50:44', '2025-04-16 12:50:44'),
(32, 112, 'my fav', '2025-04-16 13:05:07', '2025-04-16 13:05:07'),
(33, 112, 'my fav', '2025-04-16 13:05:25', '2025-04-16 13:05:25'),
(34, 74, 'new', '2025-04-16 16:55:13', '2025-04-16 16:55:13'),
(35, 74, 'dentist', '2025-04-24 12:00:05', '2025-04-24 12:00:05'),
(36, 74, 'dentist', '2025-04-24 12:00:09', '2025-04-24 12:00:09'),
(37, 88, 'my trip', '2025-06-20 12:50:24', '2025-06-20 12:50:24');

-- --------------------------------------------------------

--
-- Table structure for table `playlist_detail`
--

CREATE TABLE `playlist_detail` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `playlist_id` bigint(20) UNSIGNED NOT NULL,
  `wishlist_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `playlist_detail`
--

INSERT INTO `playlist_detail` (`id`, `playlist_id`, `wishlist_id`, `created_at`, `updated_at`) VALUES
(32, 15, 62, '2025-03-25 12:18:43', '2025-03-25 12:18:43'),
(33, 15, 63, '2025-03-25 12:21:09', '2025-03-25 12:21:09'),
(34, 15, 64, '2025-03-25 12:22:24', '2025-03-25 12:22:24'),
(35, 15, 65, '2025-03-25 17:05:20', '2025-03-25 17:05:20'),
(36, 18, 66, '2025-03-25 17:11:36', '2025-03-25 17:11:36'),
(37, 15, 67, '2025-03-25 17:32:23', '2025-03-25 17:32:23'),
(38, 15, 68, '2025-03-25 17:34:44', '2025-03-25 17:34:44'),
(39, 18, 70, '2025-03-26 05:03:21', '2025-03-26 05:03:21'),
(40, 17, 71, '2025-03-26 05:14:48', '2025-03-26 05:14:48'),
(41, 19, 72, '2025-03-26 05:26:28', '2025-03-26 05:26:28'),
(42, 20, 73, '2025-03-26 05:40:44', '2025-03-26 05:40:44'),
(43, 19, 74, '2025-03-26 05:41:31', '2025-03-26 05:41:31'),
(44, 19, 75, '2025-03-26 05:51:51', '2025-03-26 05:51:51'),
(45, 17, 76, '2025-03-26 06:51:16', '2025-03-26 06:51:16'),
(46, 21, 78, '2025-03-26 07:27:34', '2025-03-26 07:27:34'),
(47, 19, 79, '2025-03-26 07:46:24', '2025-03-26 07:46:24'),
(48, 21, 80, '2025-03-26 07:53:52', '2025-03-26 07:53:52'),
(49, 18, 81, '2025-03-26 07:54:44', '2025-03-26 07:54:44'),
(50, 20, 82, '2025-03-26 08:15:30', '2025-03-26 08:15:30'),
(51, 22, 83, '2025-03-26 08:34:15', '2025-03-26 08:34:15'),
(52, 17, 84, '2025-03-26 08:42:25', '2025-03-26 08:42:25'),
(53, 19, 85, '2025-03-26 08:51:14', '2025-03-26 08:51:14'),
(54, 15, 86, '2025-03-26 11:55:44', '2025-03-26 11:55:44'),
(55, 15, 87, '2025-03-26 21:12:07', '2025-03-26 21:12:07'),
(56, 15, 89, '2025-03-27 22:21:32', '2025-03-27 22:21:32'),
(57, 17, 90, '2025-03-27 22:22:35', '2025-03-27 22:22:35'),
(58, 23, 94, '2025-03-28 22:18:41', '2025-03-28 22:18:41'),
(59, 24, 97, '2025-04-02 19:44:51', '2025-04-02 19:44:51'),
(60, 23, 98, '2025-04-02 19:45:54', '2025-04-02 19:45:54'),
(61, 24, 99, '2025-04-02 19:46:49', '2025-04-02 19:46:49'),
(62, 24, 100, '2025-04-02 19:49:44', '2025-04-02 19:49:44'),
(63, 24, 101, '2025-04-02 19:51:33', '2025-04-02 19:51:33'),
(64, 24, 102, '2025-04-02 19:54:59', '2025-04-02 19:54:59'),
(65, 25, 104, '2025-04-02 20:45:34', '2025-04-02 20:45:34'),
(66, 26, 106, '2025-04-03 11:24:10', '2025-04-03 11:24:10'),
(67, 27, 107, '2025-04-03 15:41:02', '2025-04-03 15:41:02'),
(68, 28, 108, '2025-04-04 15:52:43', '2025-04-04 15:52:43'),
(69, 26, 110, '2025-04-04 16:43:54', '2025-04-04 16:43:54'),
(70, 29, 111, '2025-04-04 17:18:37', '2025-04-04 17:18:37'),
(71, 29, 113, '2025-04-11 17:43:53', '2025-04-11 17:43:53'),
(72, 30, 114, '2025-04-11 17:54:11', '2025-04-11 17:54:11'),
(73, 29, 117, '2025-04-14 11:14:00', '2025-04-14 11:14:00'),
(74, 12, 120, '2025-04-14 15:48:14', '2025-04-14 15:48:14'),
(75, 12, 124, '2025-04-14 16:03:08', '2025-04-14 16:03:08'),
(76, 14, 125, '2025-04-14 16:03:24', '2025-04-14 16:03:24'),
(77, 13, 127, '2025-04-14 16:40:24', '2025-04-14 16:40:24'),
(78, 30, 128, '2025-04-15 21:04:35', '2025-04-15 21:04:35'),
(79, 29, 131, '2025-04-16 09:34:35', '2025-04-16 09:34:35'),
(80, 13, 132, '2025-04-16 10:38:10', '2025-04-16 10:38:10'),
(81, 12, 133, '2025-04-16 11:11:34', '2025-04-16 11:11:34'),
(82, 12, 134, '2025-04-16 11:23:54', '2025-04-16 11:23:54'),
(83, 31, 135, '2025-04-16 12:53:42', '2025-04-16 12:53:42');

-- --------------------------------------------------------

--
-- Table structure for table `preferences_to_users`
--

CREATE TABLE `preferences_to_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `preferences` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `preferences_to_users`
--

INSERT INTO `preferences_to_users` (`id`, `user_id`, `preferences`, `created_at`, `updated_at`) VALUES
(20, 11, '\"Food\"', '2023-09-14 18:38:30', '2023-09-14 18:38:30'),
(21, 11, '\"Restaurant\"', '2023-09-14 18:38:30', '2023-09-14 18:38:30'),
(22, 11, '\"Finance\"', '2023-09-14 18:38:30', '2023-09-14 18:38:30'),
(23, 11, '\"Hospital\"', '2023-09-14 18:38:30', '2023-09-14 18:38:30'),
(24, 11, '\"Bank\"', '2023-09-14 18:38:30', '2023-09-14 18:38:30'),
(25, 11, '\"Cinema\"', '2023-09-14 18:38:30', '2023-09-14 18:38:30'),
(26, 11, '\"Park\"', '2023-09-14 18:38:30', '2023-09-14 18:38:30'),
(31, 18, '\"Restaurant\"', '2023-09-14 19:02:30', '2023-09-14 19:02:30'),
(32, 18, '\"Hospital\"', '2023-09-14 19:02:30', '2023-09-14 19:02:30'),
(33, 18, '\"Park\"', '2023-09-14 19:02:30', '2023-09-14 19:02:30'),
(34, 18, '\"Shopping mall\"', '2023-09-14 19:02:30', '2023-09-14 19:02:30'),
(35, 19, '\"Restaurant\"', '2023-09-14 19:07:52', '2023-09-14 19:07:52'),
(36, 19, '\"Food\"', '2023-09-14 19:07:52', '2023-09-14 19:07:52'),
(37, 19, '\"Hospital\"', '2023-09-14 19:07:52', '2023-09-14 19:07:52'),
(38, 19, '\"Bank\"', '2023-09-14 19:07:52', '2023-09-14 19:07:52'),
(39, 20, '\"Restaurant\"', '2023-09-15 20:35:29', '2023-09-15 20:35:29'),
(40, 20, '\"Food\"', '2023-09-15 20:35:29', '2023-09-15 20:35:29'),
(41, 20, '\"Hospital\"', '2023-09-15 20:35:29', '2023-09-15 20:35:29'),
(42, 20, '\"Park\"', '2023-09-15 20:35:29', '2023-09-15 20:35:29'),
(43, 21, '\"Hospital\"', '2023-09-15 21:11:53', '2023-09-15 21:11:53'),
(55, 33, '\"Food\"', '2023-09-22 19:26:31', '2023-09-22 19:26:31'),
(56, 33, '\"Hospital\"', '2023-09-22 19:26:31', '2023-09-22 19:26:31'),
(57, 33, '\"Bank\"', '2023-09-22 19:26:31', '2023-09-22 19:26:31'),
(62, 12, '\"Hospital\"', '2023-09-22 22:10:24', '2023-09-22 22:10:24'),
(63, 12, '\"Cinema\"', '2023-09-22 22:10:24', '2023-09-22 22:10:24'),
(86, 35, '\"Restaurant\"', '2023-09-26 23:16:43', '2023-09-26 23:16:43'),
(87, 35, '\"Food\"', '2023-09-26 23:16:43', '2023-09-26 23:16:43'),
(88, 35, '\"Hospital\"', '2023-09-26 23:16:43', '2023-09-26 23:16:43'),
(89, 35, '\"Bank\"', '2023-09-26 23:16:43', '2023-09-26 23:16:43'),
(90, 35, '\"Finance\"', '2023-09-26 23:16:43', '2023-09-26 23:16:43'),
(91, 35, '\"Cinema\"', '2023-09-26 23:16:43', '2023-09-26 23:16:43'),
(92, 35, '\"Park\"', '2023-09-26 23:16:43', '2023-09-26 23:16:43'),
(93, 35, '\"Shopping mall\"', '2023-09-26 23:16:43', '2023-09-26 23:16:43'),
(94, 35, '\"Cafe\"', '2023-09-26 23:16:43', '2023-09-26 23:16:43'),
(95, 35, '\"Bar\"', '2023-09-26 23:16:43', '2023-09-26 23:16:43'),
(101, 36, '\"Restaurant\"', '2023-09-26 23:24:09', '2023-09-26 23:24:09'),
(102, 36, '\"Shopping mall\"', '2023-09-26 23:24:10', '2023-09-26 23:24:10'),
(103, 36, '\"Cafe\"', '2023-09-26 23:24:10', '2023-09-26 23:24:10'),
(104, 36, '\"Bar\"', '2023-09-26 23:24:10', '2023-09-26 23:24:10'),
(105, 36, '\"Museum\"', '2023-09-26 23:24:10', '2023-09-26 23:24:10'),
(106, 36, '\"Hospital\"', '2023-09-26 23:24:10', '2023-09-26 23:24:10'),
(107, 36, '\"Bank\"', '2023-09-26 23:24:10', '2023-09-26 23:24:10'),
(110, 34, '\"Bar\"', '2023-09-27 18:55:22', '2023-09-27 18:55:22'),
(111, 34, '\"University\"', '2023-09-27 18:55:22', '2023-09-27 18:55:22'),
(112, 34, '\"Cinema\"', '2023-09-27 18:55:23', '2023-09-27 18:55:23'),
(116, 37, '\"Hospital\"', '2023-09-27 21:12:20', '2023-09-27 21:12:20'),
(117, 37, '\"Cinema\"', '2023-09-27 21:12:20', '2023-09-27 21:12:20'),
(118, 37, '\"Finance\"', '2023-09-27 21:12:20', '2023-09-27 21:12:20'),
(119, 38, '\"Food\"', '2023-09-29 21:32:56', '2023-09-29 21:32:56'),
(120, 38, '\"Coffee Shop\"', '2023-09-29 21:32:56', '2023-09-29 21:32:56'),
(121, 38, '\"Shopping mall\"', '2023-09-29 21:32:56', '2023-09-29 21:32:56'),
(122, 38, '\"Hospital\"', '2023-09-29 21:32:56', '2023-09-29 21:32:56'),
(123, 38, '\"Bank\"', '2023-09-29 21:32:56', '2023-09-29 21:32:56'),
(124, 40, '\"Hospital\"', '2023-10-03 18:09:31', '2023-10-03 18:09:31'),
(125, 40, '\"Bank\"', '2023-10-03 18:09:31', '2023-10-03 18:09:31'),
(126, 40, '\"Finance\"', '2023-10-03 18:09:31', '2023-10-03 18:09:31'),
(127, 41, '\"Food\"', '2023-10-03 22:25:24', '2023-10-03 22:25:24'),
(128, 41, '\"Cinema\"', '2023-10-03 22:25:24', '2023-10-03 22:25:24'),
(129, 41, '\"Park\"', '2023-10-03 22:25:24', '2023-10-03 22:25:24'),
(130, 41, '\"Shopping mall\"', '2023-10-03 22:25:24', '2023-10-03 22:25:24'),
(135, 42, '\"Food\"', '2023-10-11 20:49:47', '2023-10-11 20:49:47'),
(136, 42, '\"Shopping mall\"', '2023-10-11 20:49:47', '2023-10-11 20:49:47'),
(137, 43, '\"Food\"', '2023-10-11 21:07:48', '2023-10-11 21:07:48'),
(138, 43, '\"Hospital\"', '2023-10-11 21:07:48', '2023-10-11 21:07:48'),
(139, 43, '\"Finance\"', '2023-10-11 21:07:48', '2023-10-11 21:07:48'),
(140, 43, '\"Cinema\"', '2023-10-11 21:07:48', '2023-10-11 21:07:48'),
(141, 43, '\"Museum\"', '2023-10-11 21:07:48', '2023-10-11 21:07:48'),
(142, 13, '\"Park\"', '2023-10-12 00:26:08', '2023-10-12 00:26:08'),
(143, 13, '\"Food\"', '2023-10-12 00:26:08', '2023-10-12 00:26:08'),
(144, 13, '\"Cinema\"', '2023-10-12 00:26:08', '2023-10-12 00:26:08'),
(145, 13, '\"Cafe\"', '2023-10-12 00:26:08', '2023-10-12 00:26:08'),
(148, 44, '\"Bank\"', '2023-10-12 02:32:47', '2023-10-12 02:32:47'),
(149, 44, '\"Cinema\"', '2023-10-12 02:32:47', '2023-10-12 02:32:47'),
(150, 44, '\"Finance\"', '2023-10-12 02:32:47', '2023-10-12 02:32:47'),
(151, 44, '\"Hospital\"', '2023-10-12 02:32:47', '2023-10-12 02:32:47'),
(152, 45, '\"Hospital\"', '2023-10-12 18:36:40', '2023-10-12 18:36:40'),
(153, 45, '\"Finance\"', '2023-10-12 18:36:40', '2023-10-12 18:36:40'),
(157, 46, '\"Food\"', '2023-10-12 20:04:16', '2023-10-12 20:04:16'),
(158, 46, '\"Cafe\"', '2023-10-12 20:04:16', '2023-10-12 20:04:16'),
(159, 46, '\"Shopping mall\"', '2023-10-12 20:04:16', '2023-10-12 20:04:16'),
(160, 22, '\"Food\"', '2023-10-20 14:53:51', '2023-10-20 14:53:51'),
(161, 22, '\"Bank\"', '2023-10-20 14:53:51', '2023-10-20 14:53:51'),
(162, 22, '\"Finance\"', '2023-10-20 14:53:51', '2023-10-20 14:53:51'),
(168, 48, '\"Food\"', '2023-11-03 20:44:42', '2023-11-03 20:44:42'),
(169, 48, '\"Finance\"', '2023-11-03 20:44:42', '2023-11-03 20:44:42'),
(170, 48, '\"Park\"', '2023-11-03 20:44:42', '2023-11-03 20:44:42'),
(173, 50, '\"Food\"', '2023-11-08 14:00:20', '2023-11-08 14:00:20'),
(174, 50, '\"Bank\"', '2023-11-08 14:00:20', '2023-11-08 14:00:20'),
(175, 50, '\"Cinema\"', '2023-11-08 14:00:20', '2023-11-08 14:00:20'),
(176, 51, '\"Cinema\"', '2023-11-08 15:31:39', '2023-11-08 15:31:39'),
(177, 51, '\"Finance\"', '2023-11-08 15:31:39', '2023-11-08 15:31:39'),
(189, 49, '\"Finance\"', '2023-11-08 21:21:41', '2023-11-08 21:21:41'),
(190, 49, '\"Cinema\"', '2023-11-08 21:21:41', '2023-11-08 21:21:41'),
(191, 49, '\"Shopping mall\"', '2023-11-08 21:21:41', '2023-11-08 21:21:41'),
(192, 53, '\"Cinema\"', '2023-11-08 21:43:07', '2023-11-08 21:43:07'),
(193, 53, '\"Finance\"', '2023-11-08 21:43:07', '2023-11-08 21:43:07'),
(194, 53, '\"Bank\"', '2023-11-08 21:43:07', '2023-11-08 21:43:07'),
(195, 54, '\"Park\"', '2023-11-08 22:55:07', '2023-11-08 22:55:07'),
(196, 54, '\"Cinema\"', '2023-11-08 22:55:07', '2023-11-08 22:55:07'),
(197, 54, '\"Finance\"', '2023-11-08 22:55:07', '2023-11-08 22:55:07'),
(201, 52, '\"Food\"', '2023-11-09 14:33:48', '2023-11-09 14:33:48'),
(202, 52, '\"Cinema\"', '2023-11-09 14:33:48', '2023-11-09 14:33:48'),
(203, 52, '\"Park\"', '2023-11-09 14:33:48', '2023-11-09 14:33:48'),
(207, 55, '\"Finance\"', '2023-11-09 14:48:16', '2023-11-09 14:48:16'),
(208, 55, '\"Bank\"', '2023-11-09 14:48:16', '2023-11-09 14:48:16'),
(209, 55, '\"Cinema\"', '2023-11-09 14:48:16', '2023-11-09 14:48:16'),
(210, 55, '\"Cafe\"', '2023-11-09 14:48:16', '2023-11-09 14:48:16'),
(211, 56, '\"Food\"', '2023-11-14 21:53:05', '2023-11-14 21:53:05'),
(212, 56, '\"Cinema\"', '2023-11-14 21:53:05', '2023-11-14 21:53:05'),
(213, 56, '\"Park\"', '2023-11-14 21:53:05', '2023-11-14 21:53:05'),
(214, 56, '\"Shopping mall\"', '2023-11-14 21:53:05', '2023-11-14 21:53:05'),
(215, 56, '\"Cafe\"', '2023-11-14 21:53:05', '2023-11-14 21:53:05'),
(216, 56, '\"Bar\"', '2023-11-14 21:53:05', '2023-11-14 21:53:05'),
(217, 56, '\"Coffee Shop\"', '2023-11-14 21:53:05', '2023-11-14 21:53:05'),
(218, 56, '\"Museum\"', '2023-11-14 21:53:05', '2023-11-14 21:53:05'),
(219, 56, '\"lodging\"', '2023-11-14 21:53:05', '2023-11-14 21:53:05'),
(220, 57, '\"Park\"', '2023-11-21 00:15:19', '2023-11-21 00:15:19'),
(221, 57, '\"Shopping mall\"', '2023-11-21 00:15:19', '2023-11-21 00:15:19'),
(222, 58, '\"Park\"', '2023-11-21 00:16:50', '2023-11-21 00:16:50'),
(223, 58, '\"Shopping mall\"', '2023-11-21 00:16:50', '2023-11-21 00:16:50'),
(231, 60, '\"Shopping mall\"', '2023-11-27 15:35:30', '2023-11-27 15:35:30'),
(232, 60, '\"Coffee Shop\"', '2023-11-27 15:35:30', '2023-11-27 15:35:30'),
(233, 60, '\"Food\"', '2023-11-27 15:35:30', '2023-11-27 15:35:30'),
(246, 47, '\"Hospital\"', '2023-11-27 16:00:08', '2023-11-27 16:00:08'),
(247, 47, '\"Bank\"', '2023-11-27 16:00:08', '2023-11-27 16:00:08'),
(248, 47, '\"Food\"', '2023-11-27 16:00:08', '2023-11-27 16:00:08'),
(249, 47, '\"Cafe\"', '2023-11-27 16:00:08', '2023-11-27 16:00:08'),
(250, 47, '\"Bar\"', '2023-11-27 16:00:08', '2023-11-27 16:00:08'),
(251, 47, '\"Park\"', '2023-11-27 16:00:09', '2023-11-27 16:00:09'),
(276, 63, '\"Bar\"', '2023-11-27 18:29:33', '2023-11-27 18:29:33'),
(277, 63, '\"Bar\"', '2023-11-27 18:29:33', '2023-11-27 18:29:33'),
(278, 63, '\"Coffee Shop\"', '2023-11-27 18:29:33', '2023-11-27 18:29:33'),
(279, 63, '\"Coffee Shop\"', '2023-11-27 18:29:34', '2023-11-27 18:29:34'),
(280, 63, '\"Cafe\"', '2023-11-27 18:29:34', '2023-11-27 18:29:34'),
(281, 63, '\"Cafe\"', '2023-11-27 18:29:34', '2023-11-27 18:29:34'),
(282, 63, '\"Shopping mall\"', '2023-11-27 18:29:34', '2023-11-27 18:29:34'),
(283, 63, '\"Shopping mall\"', '2023-11-27 18:29:34', '2023-11-27 18:29:34'),
(284, 63, '\"Food\"', '2023-11-27 18:29:34', '2023-11-27 18:29:34'),
(285, 63, '\"Food\"', '2023-11-27 18:29:34', '2023-11-27 18:29:34'),
(286, 64, '\"Park\"', '2023-12-08 01:51:51', '2023-12-08 01:51:51'),
(287, 64, '\"Shopping mall\"', '2023-12-08 01:51:51', '2023-12-08 01:51:51'),
(288, 62, '\"Finance\"', '2023-12-13 14:28:55', '2023-12-13 14:28:55'),
(289, 62, '\"Cinema\"', '2023-12-13 14:28:55', '2023-12-13 14:28:55'),
(290, 62, '\"Park\"', '2023-12-13 14:28:55', '2023-12-13 14:28:55'),
(291, 62, '\"Shopping mall\"', '2023-12-13 14:28:55', '2023-12-13 14:28:55'),
(292, 62, '\"Bank\"', '2023-12-13 14:28:56', '2023-12-13 14:28:56'),
(355, 65, '\"Churches\"', '2023-12-27 19:18:45', '2023-12-27 19:18:45'),
(356, 65, '\"Studios\"', '2023-12-27 19:18:45', '2023-12-27 19:18:45'),
(357, 65, '\"moneyexchange\"', '2023-12-27 19:18:45', '2023-12-27 19:18:45'),
(358, 65, '\"mosques\"', '2023-12-27 19:18:46', '2023-12-27 19:18:46'),
(359, 65, '\"Radio Station\"', '2023-12-27 19:18:46', '2023-12-27 19:18:46'),
(360, 65, '\"Bank\"', '2023-12-27 19:18:46', '2023-12-27 19:18:46'),
(361, 65, '\"University\"', '2023-12-27 19:18:46', '2023-12-27 19:18:46'),
(362, 65, '\"ATM\"', '2023-12-27 19:18:46', '2023-12-27 19:18:46'),
(363, 65, '\"Food\"', '2023-12-27 19:18:46', '2023-12-27 19:18:46'),
(370, 59, '\"Finance\"', '2023-12-27 22:51:37', '2023-12-27 22:51:37'),
(371, 59, '\"Churches\"', '2023-12-27 22:51:37', '2023-12-27 22:51:37'),
(372, 59, '\"Radio Station\"', '2023-12-27 22:51:37', '2023-12-27 22:51:37'),
(373, 59, '\"Park\"', '2023-12-27 22:51:37', '2023-12-27 22:51:37'),
(374, 59, '\"Food\"', '2023-12-27 22:51:37', '2023-12-27 22:51:37'),
(375, 59, '\"Museum\"', '2023-12-27 22:51:37', '2023-12-27 22:51:37'),
(376, 59, '\"Shopping mall\"', '2023-12-27 22:51:37', '2023-12-27 22:51:37'),
(377, 59, '\"Cafe\"', '2023-12-27 22:51:38', '2023-12-27 22:51:38'),
(378, 59, '\"Bar\"', '2023-12-27 22:51:38', '2023-12-27 22:51:38'),
(379, 59, '\"Coffee Shop\"', '2023-12-27 22:51:38', '2023-12-27 22:51:38'),
(380, 66, '\"Food\"', '2024-01-15 22:52:12', '2024-01-15 22:52:12'),
(381, 66, '\"Bank\"', '2024-01-15 22:52:12', '2024-01-15 22:52:12'),
(382, 66, '\"Radio Station\"', '2024-01-15 22:52:12', '2024-01-15 22:52:12'),
(383, 66, '\"Sports\"', '2024-01-15 22:52:12', '2024-01-15 22:52:12'),
(384, 66, '\"Cinema\"', '2024-01-15 22:52:12', '2024-01-15 22:52:12'),
(385, 66, '\"Park\"', '2024-01-15 22:52:12', '2024-01-15 22:52:12'),
(386, 66, '\"Shopping Mall\"', '2024-01-15 22:52:12', '2024-01-15 22:52:12'),
(387, 66, '\"Cafe\"', '2024-01-15 22:52:12', '2024-01-15 22:52:12'),
(388, 66, '\"Bar\"', '2024-01-15 22:52:12', '2024-01-15 22:52:12'),
(389, 66, '\"Coffee Shop\"', '2024-01-15 22:52:12', '2024-01-15 22:52:12'),
(390, 66, '\"Museum\"', '2024-01-15 22:52:12', '2024-01-15 22:52:12'),
(391, 66, '\"University\"', '2024-01-15 22:52:12', '2024-01-15 22:52:12'),
(392, 66, '\"Lodging\"', '2024-01-15 22:52:12', '2024-01-15 22:52:12'),
(393, 66, '\"Hospital\"', '2024-01-15 22:52:13', '2024-01-15 22:52:13'),
(394, 66, '\"MoneyExchange\"', '2024-01-15 22:52:13', '2024-01-15 22:52:13'),
(395, 66, '\"ATM\"', '2024-01-15 22:52:13', '2024-01-15 22:52:13'),
(396, 66, '\"Churches\"', '2024-01-15 22:52:13', '2024-01-15 22:52:13'),
(397, 66, '\"Studios\"', '2024-01-15 22:52:13', '2024-01-15 22:52:13'),
(398, 66, '\"Mosques\"', '2024-01-15 22:52:13', '2024-01-15 22:52:13'),
(399, 66, '\"Golf Courses\"', '2024-01-15 22:52:13', '2024-01-15 22:52:13'),
(490, 2, '{\"id\":\"f1\",\"name\":\"restaurant\",\"label\":\"Restaurant\",\"icon\":\"coffee-outline\",\"preferences\":[{\"id\":\"ChIJ8QWjWLxyaYgR5MYIpV71c0c\",\"name\":\"kfc\",\"photo\":\"https:\\/\\/maps.gstatic.com\\/mapfiles\\/place_api\\/icons\\/v1\\/png_71\\/generic_business-71.png\"},{\"id\":\"ChIJvf4Z1yW0vJURbbSsI1T0Fhk\",\"name\":\"mc donald\",\"photo\":\"https:\\/\\/maps.gstatic.com\\/mapfiles\\/place_api\\/icons\\/v1\\/png_71\\/restaurant-71.png\"},{\"id\":\"ChIJyW-u9iZawokRY1sHXGzZHGI\",\"name\":\"chinese\",\"photo\":\"https:\\/\\/maps.gstatic.com\\/mapfiles\\/place_api\\/icons\\/v1\\/png_71\\/restaurant-71.png\"}]}', '2024-03-26 05:41:10', '2024-03-26 05:41:10'),
(491, 2, '{\"id\":\"t8\",\"name\":\"museum\",\"label\":\"Museum\",\"icon\":\"museum\",\"preferences\":[{\"id\":\"ChIJI5I4mFI5sz4RYD8z8WZMOfI\",\"name\":\"pad museum\",\"photo\":\"https:\\/\\/maps.gstatic.com\\/mapfiles\\/place_api\\/icons\\/v1\\/png_71\\/museum-71.png\"}]}', '2024-03-26 05:41:10', '2024-03-26 05:41:10'),
(494, 69, '{\"id\":\"f1\",\"name\":\"restaurant\",\"label\":\"Restaurant\",\"icon\":\"coffee-outline\",\"preferences\":[{\"id\":\"ChIJ8QWjWLxyaYgR5MYIpV71c0c\",\"name\":\"kfc\",\"photo\":\"https:\\/\\/maps.gstatic.com\\/mapfiles\\/place_api\\/icons\\/v1\\/png_71\\/generic_business-71.png\"},{\"id\":\"ChIJyW-u9iZawokRY1sHXGzZHGI\",\"name\":\"Chinese\",\"photo\":\"https:\\/\\/maps.gstatic.com\\/mapfiles\\/place_api\\/icons\\/v1\\/png_71\\/restaurant-71.png\"}]}', '2024-04-17 11:37:06', '2024-04-17 11:37:06'),
(495, 69, '{\"id\":\"f2\",\"name\":\"cafe\",\"label\":\"Cafe\",\"icon\":\"coffee-outline\",\"preferences\":[{\"id\":\"ChIJq537gddx5kcR_3PhRd2muxg\",\"name\":\"cafe\",\"photo\":\"https:\\/\\/maps.gstatic.com\\/mapfiles\\/place_api\\/icons\\/v1\\/png_71\\/restaurant-71.png\"}]}', '2024-04-17 11:37:06', '2024-04-17 11:37:06'),
(496, 69, '{\"id\":\"t8\",\"name\":\"museum\",\"label\":\"Museum\",\"icon\":\"museum\",\"preferences\":[{\"id\":\"ChIJX-2rTqEJxkcRhjlIZp4bqFk\",\"name\":\"maritime\",\"photo\":\"https:\\/\\/maps.gstatic.com\\/mapfiles\\/place_api\\/icons\\/v1\\/png_71\\/museum-71.png\"}]}', '2024-04-17 11:37:06', '2024-04-17 11:37:06'),
(503, 70, '{\"id\":\"f1\",\"name\":\"restaurant\",\"label\":\"Restaurant\",\"icon\":\"coffee-outline\",\"preferences\":[{\"id\":\"ChIJ8QWjWLxyaYgR5MYIpV71c0c\",\"name\":\"kfc\",\"photo\":\"https:\\/\\/maps.gstatic.com\\/mapfiles\\/place_api\\/icons\\/v1\\/png_71\\/generic_business-71.png\"}]}', '2024-04-24 19:55:10', '2024-04-24 19:55:10'),
(504, 70, '{\"id\":\"t5\",\"name\":\"night_club\",\"label\":\"Night Club\",\"icon\":\"musical-note\",\"preferences\":[]}', '2024-04-24 19:55:10', '2024-04-24 19:55:10'),
(505, 70, '{\"id\":\"f2\",\"name\":\"cafe\",\"label\":\"Cafe\",\"icon\":\"coffee-outline\",\"preferences\":[]}', '2024-04-24 19:55:10', '2024-04-24 19:55:10'),
(506, 70, '{\"id\":\"f5\",\"name\":\"bar\",\"label\":\"Bar\",\"icon\":\"local-bar\",\"preferences\":[]}', '2024-04-24 19:55:10', '2024-04-24 19:55:10'),
(507, 70, '{\"id\":\"t3\",\"name\":\"art_gallery\",\"label\":\"Art Gallery\",\"icon\":\"image-frame\",\"preferences\":[]}', '2024-04-24 19:55:10', '2024-04-24 19:55:10'),
(2231, 71, '{\"id\":\"f1\",\"name\":\"restaurant\",\"label\":\"Restaurant\",\"icon\":\"coffee-outline\",\"preferences\":[{\"id\":\"ChIJ8QWjWLxyaYgR5MYIpV71c0c\",\"name\":\"kfc\",\"photo\":\"https:\\/\\/maps.gstatic.com\\/mapfiles\\/place_api\\/icons\\/v1\\/png_71\\/generic_business-71.png\"},{\"id\":\"ChIJb6Pkis7p5zsR4PmSvz5uc2A\",\"name\":\"mcdonlad\",\"photo\":\"https:\\/\\/maps.gstatic.com\\/mapfiles\\/place_api\\/icons\\/v1\\/png_71\\/restaurant-71.png\"}]}', '2024-04-25 11:31:11', '2024-04-25 11:31:11'),
(2232, 71, '{\"id\":\"f2\",\"name\":\"cafe\",\"label\":\"Cafe\",\"icon\":\"coffee-outline\",\"preferences\":[{\"id\":\"ChIJq537gddx5kcR_3PhRd2muxg\",\"name\":\"cafe\",\"photo\":\"https:\\/\\/maps.gstatic.com\\/mapfiles\\/place_api\\/icons\\/v1\\/png_71\\/restaurant-71.png\"}]}', '2024-04-25 11:31:11', '2024-04-25 11:31:11'),
(2233, 71, '{\"id\":\"s3\",\"name\":\"shopping_mall\",\"label\":\"Shopping Mall\",\"icon\":\"local-mall\",\"preferences\":[{\"id\":\"ChIJiWA-GqB-yUARz9BdwUvXe4s\",\"name\":\"shoppingmall\",\"photo\":\"https:\\/\\/maps.gstatic.com\\/mapfiles\\/place_api\\/icons\\/v1\\/png_71\\/shopping-71.png\"}]}', '2024-04-25 11:31:11', '2024-04-25 11:31:11'),
(2234, 71, '{\"id\":\"t4\",\"name\":\"amusement_park\",\"label\":\"Amusement Park\",\"icon\":\"attractions\",\"preferences\":[]}', '2024-04-25 11:31:11', '2024-04-25 11:31:11'),
(2235, 71, '{\"id\":\"sa2\",\"name\":\"atm\",\"label\":\"ATM\",\"icon\":\"atm\",\"preferences\":[]}', '2024-04-25 11:31:11', '2024-04-25 11:31:11'),
(2236, 71, '{\"id\":\"sa10\",\"name\":\"parking\",\"label\":\"Parking\",\"icon\":\"local-parking\",\"preferences\":[]}', '2024-04-25 11:31:11', '2024-04-25 11:31:11'),
(2237, 71, '{\"id\":\"sa42\",\"name\":\"church\",\"label\":\"Church\",\"icon\":\"church\",\"preferences\":[{\"id\":\"ChIJ1-ftGS_ORT4Rj-J_nzeRyoM\",\"name\":\"catholicchurch\",\"photo\":\"https:\\/\\/maps.gstatic.com\\/mapfiles\\/place_api\\/icons\\/v1\\/png_71\\/worship_general-71.png\"}]}', '2024-04-25 11:31:11', '2024-04-25 11:31:11'),
(2238, 71, '{\"id\":\"sa47\",\"name\":\"beauty_salon\",\"label\":\"Beauty Salon\",\"icon\":\"spa\",\"preferences\":[]}', '2024-04-25 11:31:11', '2024-04-25 11:31:11'),
(2239, 71, '{\"id\":\"s9\",\"name\":\"jewelry_store\",\"label\":\"Jewelry Store\",\"icon\":\"necklace\",\"preferences\":[{\"id\":\"ChIJC-RQitUVrjsRLgNVNXkx_ko\",\"name\":\"jewellery\",\"photo\":\"https:\\/\\/maps.gstatic.com\\/mapfiles\\/place_api\\/icons\\/v1\\/png_71\\/shopping-71.png\"}]}', '2024-04-25 11:31:11', '2024-04-25 11:31:11'),
(2240, 71, '{\"id\":\"t5\",\"name\":\"night_club\",\"label\":\"Night Club\",\"icon\":\"musical-note\",\"preferences\":[{\"id\":\"ChIJK69z3qO22YgROBJC2vDIXAI\",\"name\":\"club\",\"photo\":\"https:\\/\\/maps.gstatic.com\\/mapfiles\\/place_api\\/icons\\/v1\\/png_71\\/bar-71.png\"},{\"id\":\"ChIJqRqljBGVlTkRuzoTHX-ltRA\",\"name\":\"clubsix\",\"photo\":\"https:\\/\\/maps.gstatic.com\\/mapfiles\\/place_api\\/icons\\/v1\\/png_71\\/bar-71.png\"}]}', '2024-04-25 11:31:11', '2024-04-25 11:31:11'),
(2241, 71, '{\"id\":\"sa31\",\"name\":\"laundry\",\"label\":\"Laundry\",\"icon\":\"local-laundry-service\",\"preferences\":[{\"id\":\"ChIJoZ0u297Oj4AR-qPereXEbMY\",\"name\":\"victorialaundry\",\"photo\":\"https:\\/\\/maps.gstatic.com\\/mapfiles\\/place_api\\/icons\\/v1\\/png_71\\/generic_business-71.png\"}]}', '2024-04-25 11:31:11', '2024-04-25 11:31:11'),
(2242, 71, '{\"id\":\"sa22\",\"name\":\"rv_park\",\"label\":\"RV Park\",\"icon\":\"directions-car\",\"preferences\":[{\"id\":\"ChIJT3s9UTUFBYgRQK2Mc2FKtSA\",\"name\":\"rvpark\",\"photo\":\"https:\\/\\/maps.gstatic.com\\/mapfiles\\/place_api\\/icons\\/v1\\/png_71\\/lodging-71.png\"}]}', '2024-04-25 11:31:11', '2024-04-25 11:31:11'),
(2243, 71, '{\"id\":\"sa25\",\"name\":\"plumber\",\"label\":\"Plumber\",\"icon\":\"pipe\",\"preferences\":[]}', '2024-04-25 11:31:11', '2024-04-25 11:31:11'),
(2244, 71, '{\"id\":\"sa43\",\"name\":\"cemetery\",\"label\":\"Cemetery\",\"icon\":\"grave-stone\",\"preferences\":[]}', '2024-04-25 11:31:11', '2024-04-25 11:31:11'),
(2245, 71, '{\"id\":\"s2\",\"name\":\"clothing_store\",\"label\":\"Clothing Store\",\"icon\":\"shirt\",\"preferences\":[{\"id\":\"ChIJ61rohPGZqTMRRqGHIE9YjFk\",\"name\":\"clothingstore\",\"photo\":\"https:\\/\\/maps.gstatic.com\\/mapfiles\\/place_api\\/icons\\/v1\\/png_71\\/shopping-71.png\"}]}', '2024-04-25 11:31:11', '2024-04-25 11:31:11'),
(2246, 71, '{\"id\":\"s6\",\"name\":\"convenience_store\",\"label\":\"Convenience Store\",\"icon\":\"local-convenience-store\",\"preferences\":[]}', '2024-04-25 11:31:11', '2024-04-25 11:31:11'),
(2247, 71, '{\"id\":\"s7\",\"name\":\"liquor_store\",\"label\":\"Liquor Store\",\"icon\":\"local-bar\",\"preferences\":[]}', '2024-04-25 11:31:11', '2024-04-25 11:31:11'),
(2248, 71, '{\"id\":\"s11\",\"name\":\"furniture_store\",\"label\":\"Furniture Store\",\"icon\":\"weekend\",\"preferences\":[{\"id\":\"ChIJd4JqgUtQqEcRc3XmeprhXKs\",\"name\":\"furniturestore\",\"photo\":\"https:\\/\\/maps.gstatic.com\\/mapfiles\\/place_api\\/icons\\/v1\\/png_71\\/shopping-71.png\"}]}', '2024-04-25 11:31:11', '2024-04-25 11:31:11'),
(2249, 71, '{\"id\":\"s14\",\"name\":\"book_store\",\"label\":\"Book Store\",\"icon\":\"menu-book\",\"preferences\":[{\"id\":\"ChIJp2dDeBko1i0RGx_0WUR83eg\",\"name\":\"bookstore\",\"photo\":\"https:\\/\\/maps.gstatic.com\\/mapfiles\\/place_api\\/icons\\/v1\\/png_71\\/shopping-71.png\"}]}', '2024-04-25 11:31:11', '2024-04-25 11:31:11'),
(2250, 71, '{\"id\":\"sa4\",\"name\":\"car_rental\",\"label\":\"Car Rental\",\"icon\":\"car-rental\",\"preferences\":[]}', '2024-04-25 11:31:11', '2024-04-25 11:31:11'),
(2251, 71, '{\"id\":\"sa6\",\"name\":\"gas_station\",\"label\":\"Gas Station\",\"icon\":\"local-gas-station\",\"preferences\":[{\"id\":\"ChIJqUerOcG3woAR9Bg14dRBRVI\",\"name\":\"gasstation\",\"photo\":\"https:\\/\\/maps.gstatic.com\\/mapfiles\\/place_api\\/icons\\/v1\\/png_71\\/gas_station-71.png\"}]}', '2024-04-25 11:31:11', '2024-04-25 11:31:11'),
(2252, 71, '{\"id\":\"sa8\",\"label\":\"Libraries\",\"name\":\"library\",\"icon\":\"local-library\",\"preferences\":[]}', '2024-04-25 11:31:11', '2024-04-25 11:31:11'),
(2253, 71, '{\"id\":\"sa12\",\"label\":\"Veterinary Care\",\"name\":\"veterinary_care\",\"icon\":\"clinic-medical\",\"preferences\":[]}', '2024-04-25 11:31:11', '2024-04-25 11:31:11'),
(2254, 71, '{\"id\":\"sa14\",\"name\":\"university\",\"label\":\"University\",\"icon\":\"school\",\"preferences\":[]}', '2024-04-25 11:31:11', '2024-04-25 11:31:11'),
(2255, 71, '{\"id\":\"sa16\",\"name\":\"synagogue\",\"label\":\"Synagogue\",\"icon\":\"star-of-david\",\"preferences\":[]}', '2024-04-25 11:31:11', '2024-04-25 11:31:11'),
(2256, 71, '{\"id\":\"sa18\",\"name\":\"storage\",\"label\":\"Storage\",\"icon\":\"storage\",\"preferences\":[]}', '2024-04-25 11:31:11', '2024-04-25 11:31:11'),
(2257, 71, '{\"id\":\"sa20\",\"name\":\"roofing_contractor\",\"label\":\"Roofing Contractor\",\"icon\":\"construction\",\"preferences\":[]}', '2024-04-25 11:31:11', '2024-04-25 11:31:11'),
(2258, 71, '{\"id\":\"sa24\",\"name\":\"police\",\"label\":\"Police\",\"icon\":\"local-police\",\"preferences\":[{\"id\":\"ChIJe-FOubztbDkRdsqVKyf63Vc\",\"name\":\"policestation\",\"photo\":\"https:\\/\\/maps.gstatic.com\\/mapfiles\\/place_api\\/icons\\/v1\\/png_71\\/civic_building-71.png\"}]}', '2024-04-25 11:31:11', '2024-04-25 11:31:11'),
(2259, 71, '{\"id\":\"sa26\",\"name\":\"physiotherapist\",\"label\":\"Physiotherapist\",\"icon\":\"accessible\",\"preferences\":[]}', '2024-04-25 11:31:11', '2024-04-25 11:31:11'),
(2260, 71, '{\"id\":\"sa28\",\"name\":\"moving_company\",\"label\":\"Moving Company\",\"icon\":\"local-shipping\",\"preferences\":[]}', '2024-04-25 11:31:11', '2024-04-25 11:31:11'),
(2261, 71, '{\"id\":\"sa30\",\"name\":\"lodging\",\"label\":\"Lodging\",\"icon\":\"hotel\",\"preferences\":[]}', '2024-04-25 11:31:11', '2024-04-25 11:31:11'),
(2262, 71, '{\"id\":\"sa32\",\"name\":\"lawyer\",\"label\":\"Lawyer\",\"icon\":\"gavel\",\"preferences\":[]}', '2024-04-25 11:31:11', '2024-04-25 11:31:11'),
(2263, 71, '{\"id\":\"sa34\",\"name\":\"hindu_temple\",\"label\":\"Hindu Temple\",\"icon\":\"place-of-worship\",\"preferences\":[]}', '2024-04-25 11:31:11', '2024-04-25 11:31:11'),
(2264, 71, '{\"id\":\"sa36\",\"name\":\"fire_station\",\"label\":\"Fire Station\",\"icon\":\"local-fire-department\",\"preferences\":[{\"id\":\"ChIJF3vevIenGToR-azllGgan8Q\",\"name\":\"firestation\",\"photo\":\"https:\\/\\/maps.gstatic.com\\/mapfiles\\/place_api\\/icons\\/v1\\/png_71\\/civic_building-71.png\"}]}', '2024-04-25 11:31:11', '2024-04-25 11:31:11'),
(2265, 71, '{\"id\":\"sa38\",\"name\":\"electrician\",\"label\":\"Electrician\",\"icon\":\"power-plug\",\"preferences\":[]}', '2024-04-25 11:31:11', '2024-04-25 11:31:11'),
(2266, 71, '{\"id\":\"sa41\",\"name\":\"doctor\",\"label\":\"Doctor\",\"icon\":\"doctor\",\"preferences\":[]}', '2024-04-25 11:31:11', '2024-04-25 11:31:11'),
(2267, 71, '{\"id\":\"sa44\",\"name\":\"car_repair\",\"label\":\"Car Repair\",\"icon\":\"car-repair\",\"preferences\":[]}', '2024-04-25 11:31:11', '2024-04-25 11:31:11'),
(2268, 71, '{\"id\":\"sa46\",\"name\":\"bank\",\"label\":\"Bank\",\"icon\":\"bank\",\"preferences\":[]}', '2024-04-25 11:31:11', '2024-04-25 11:31:11'),
(2269, 71, '{\"id\":\"sa48\",\"name\":\"local_government_office\",\"label\":\"Court\",\"icon\":\"building\",\"preferences\":[{\"id\":\"ChIJufN1rzCSOxARjUj9YlsRQQI\",\"name\":\"localgovermentoffice\",\"photo\":\"https:\\/\\/maps.gstatic.com\\/mapfiles\\/place_api\\/icons\\/v1\\/png_71\\/civic_building-71.png\"}]}', '2024-04-25 11:31:11', '2024-04-25 11:31:11'),
(2270, 71, '{\"id\":\"s13\",\"name\":\"bicycle_store\",\"label\":\"Bicycle Store\",\"icon\":\"directions-bike\",\"preferences\":[]}', '2024-04-25 11:31:11', '2024-04-25 11:31:11'),
(2271, 71, '{\"id\":\"s15\",\"name\":\"department_store\",\"label\":\"Department Store\",\"icon\":\"store\",\"preferences\":[{\"id\":\"ChIJycCPldpRqEcRfMLcEbRi55o\",\"name\":\"departmentstore\",\"photo\":\"https:\\/\\/maps.gstatic.com\\/mapfiles\\/place_api\\/icons\\/v1\\/png_71\\/shopping-71.png\"}]}', '2024-04-25 11:31:11', '2024-04-25 11:31:11'),
(2272, 71, '{\"id\":\"s5\",\"name\":\"sporting_goods\",\"label\":\"Sporting Goods\",\"icon\":\"football\",\"preferences\":[]}', '2024-04-25 11:31:11', '2024-04-25 11:31:11'),
(2273, 71, '{\"id\":\"f5\",\"name\":\"bar\",\"label\":\"Bar\",\"icon\":\"local-bar\",\"preferences\":[]}', '2024-04-25 11:31:11', '2024-04-25 11:31:11'),
(2274, 71, '{\"id\":\"t3\",\"name\":\"art_gallery\",\"label\":\"Art Gallery\",\"icon\":\"image-frame\",\"preferences\":[]}', '2024-04-25 11:31:11', '2024-04-25 11:31:11'),
(2275, 71, '{\"id\":\"t9\",\"name\":\"library\",\"label\":\"Library\",\"icon\":\"local-library\",\"preferences\":[]}', '2024-04-25 11:31:11', '2024-04-25 11:31:11'),
(2276, 71, '{\"id\":\"t12\",\"name\":\"campground\",\"label\":\"Campground\",\"icon\":\"tent\",\"preferences\":[]}', '2024-04-25 11:31:11', '2024-04-25 11:31:11'),
(2277, 71, '{\"id\":\"t14\",\"name\":\"night_club\",\"label\":\"Night_Club\",\"icon\":\"musical-note\",\"preferences\":[{\"id\":\"ChIJK69z3qO22YgROBJC2vDIXAI\",\"name\":\"club\",\"photo\":\"https:\\/\\/maps.gstatic.com\\/mapfiles\\/place_api\\/icons\\/v1\\/png_71\\/bar-71.png\"}]}', '2024-04-25 11:31:11', '2024-04-25 11:31:11'),
(2278, 71, '{\"id\":\"t16\",\"name\":\"stadium\",\"label\":\"Stadium\",\"icon\":\"stadium\",\"preferences\":[]}', '2024-04-25 11:31:11', '2024-04-25 11:31:11'),
(2279, 71, '{\"id\":\"t18\",\"name\":\"movie_rental\",\"label\":\"Movie Rental\",\"icon\":\"local-movies\",\"preferences\":[]}', '2024-04-25 11:31:11', '2024-04-25 11:31:11'),
(2280, 71, '{\"id\":\"s1\",\"name\":\"home_goods_store\",\"label\":\"Home Goods Store\",\"icon\":\"home\",\"preferences\":[{\"id\":\"ChIJVTKVD-oVVBMRrWOSHIlYpmY\",\"name\":\"homegoodstore\",\"photo\":\"https:\\/\\/maps.gstatic.com\\/mapfiles\\/place_api\\/icons\\/v1\\/png_71\\/shopping-71.png\"}]}', '2024-04-25 11:31:11', '2024-04-25 11:31:11'),
(2281, 71, '{\"id\":\"f3\",\"label\":\"Takeout\",\"name\":\"meal_takeaway\",\"icon\":\"food-takeout-box-outline\",\"preferences\":[{\"id\":\"ChIJVVVFa_9E1moRVqkuRVgPj0c\",\"name\":\"takeaway\",\"photo\":\"https:\\/\\/maps.gstatic.com\\/mapfiles\\/place_api\\/icons\\/v1\\/png_71\\/restaurant-71.png\"}]}', '2024-04-25 11:31:11', '2024-04-25 11:31:11'),
(2282, 71, '{\"id\":\"t2\",\"name\":\"gym\",\"label\":\"Gyms\",\"icon\":\"fitness-center\",\"preferences\":[]}', '2024-04-25 11:31:11', '2024-04-25 11:31:11'),
(2283, 71, '{\"id\":\"t8\",\"name\":\"museum\",\"label\":\"Museum\",\"icon\":\"museum\",\"preferences\":[]}', '2024-04-25 11:31:11', '2024-04-25 11:31:11'),
(2284, 71, '{\"id\":\"t13\",\"name\":\"bowling_alley\",\"label\":\"Bowling Alley\",\"icon\":\"bowling\",\"preferences\":[]}', '2024-04-25 11:31:11', '2024-04-25 11:31:11'),
(2285, 71, '{\"id\":\"t15\",\"name\":\"casino\",\"label\":\"Casino\",\"icon\":\"dice-6\",\"preferences\":[]}', '2024-04-25 11:31:11', '2024-04-25 11:31:11'),
(2286, 71, '{\"id\":\"t17\",\"name\":\"zoo\",\"label\":\"Zoo\",\"icon\":\"pets\",\"preferences\":[]}', '2024-04-25 11:31:11', '2024-04-25 11:31:11'),
(2287, 71, '{\"id\":\"t19\",\"name\":\"movie_theater\",\"label\":\"Movie Theater\",\"icon\":\"theaters\",\"preferences\":[{\"id\":\"ChIJZd8FSojVwoARsDy0ePKiAdc\",\"name\":\"movietheater\",\"photo\":\"https:\\/\\/maps.gstatic.com\\/mapfiles\\/place_api\\/icons\\/v1\\/png_71\\/movies-71.png\"}]}', '2024-04-25 11:31:11', '2024-04-25 11:31:11'),
(2288, 71, '{\"id\":\"s4\",\"name\":\"electronics\",\"label\":\"Electronics\",\"icon\":\"devices\",\"preferences\":[]}', '2024-04-25 11:31:11', '2024-04-25 11:31:11'),
(2289, 71, '{\"id\":\"s8\",\"name\":\"shoe_store\",\"label\":\"Shoe Store\",\"icon\":\"shoe-sneaker\",\"preferences\":[{\"id\":\"ChIJVZRDeXluLZAREk5DDLrRDv8\",\"name\":\"shoestore\",\"photo\":\"https:\\/\\/maps.gstatic.com\\/mapfiles\\/place_api\\/icons\\/v1\\/png_71\\/shopping-71.png\"}]}', '2024-04-25 11:31:11', '2024-04-25 11:31:11'),
(2290, 71, '{\"id\":\"s10\",\"name\":\"supermarket\",\"label\":\"SuperMarket\",\"icon\":\"local-convenience-store\",\"preferences\":[]}', '2024-04-25 11:31:11', '2024-04-25 11:31:11'),
(2291, 71, '{\"id\":\"s12\",\"name\":\"hardware_store\",\"label\":\"Hardware Store\",\"icon\":\"hardware-chip\",\"preferences\":[]}', '2024-04-25 11:31:11', '2024-04-25 11:31:11'),
(2292, 71, '{\"id\":\"sa1\",\"name\":\"accounting\",\"label\":\"Accounting\",\"icon\":\"local-hotel\",\"preferences\":[]}', '2024-04-25 11:31:11', '2024-04-25 11:31:11'),
(2293, 71, '{\"id\":\"sa3\",\"name\":\"spa\",\"label\":\"Beauty Supplies\",\"icon\":\"spa\",\"preferences\":[]}', '2024-04-25 11:31:11', '2024-04-25 11:31:11'),
(2294, 71, '{\"id\":\"sa5\",\"name\":\"car_wash\",\"label\":\"car wash\",\"icon\":\"local-car-wash\",\"preferences\":[]}', '2024-04-25 11:31:11', '2024-04-25 11:31:11'),
(2295, 71, '{\"id\":\"sa7\",\"name\":\"hospital\",\"label\":\"Hospital\",\"icon\":\"local-hospital\",\"preferences\":[]}', '2024-04-25 11:31:11', '2024-04-25 11:31:11'),
(2296, 71, '{\"id\":\"sa9\",\"name\":\"airport\",\"label\":\"Airport\",\"icon\":\"local-airport\",\"preferences\":[]}', '2024-04-25 11:31:11', '2024-04-25 11:31:11'),
(2297, 71, '{\"id\":\"sa11\",\"name\":\"pharmacy\",\"label\":\"Pharmacy\",\"icon\":\"local-pharmacy\",\"preferences\":[]}', '2024-04-25 11:31:11', '2024-04-25 11:31:11'),
(2298, 71, '{\"id\":\"sa13\",\"name\":\"transit_station\",\"label\":\"Transit Station\",\"icon\":\"train\",\"preferences\":[]}', '2024-04-25 11:31:11', '2024-04-25 11:31:11'),
(2299, 71, '{\"id\":\"sa15\",\"name\":\"taxi_stand\",\"label\":\"Taxi Stand\",\"icon\":\"local-taxi\",\"preferences\":[]}', '2024-04-25 11:31:11', '2024-04-25 11:31:11'),
(2300, 71, '{\"id\":\"sa17\",\"name\":\"store\",\"label\":\"Store\",\"icon\":\"store\",\"preferences\":[]}', '2024-04-25 11:31:11', '2024-04-25 11:31:11'),
(2301, 71, '{\"id\":\"sa19\",\"name\":\"school\",\"label\":\"School\",\"icon\":\"school\",\"preferences\":[]}', '2024-04-25 11:31:11', '2024-04-25 11:31:11'),
(2302, 71, '{\"id\":\"sa21\",\"name\":\"real_estate_agency\",\"label\":\"Real Estate Agency\",\"icon\":\"home\",\"preferences\":[]}', '2024-04-25 11:31:11', '2024-04-25 11:31:11'),
(2303, 71, '{\"id\":\"sa23\",\"name\":\"post_office\",\"label\":\"Post Office\",\"icon\":\"local-post-office\",\"preferences\":[{\"id\":\"ChIJtRNpZPOtEmsRcNRf67NzWYw\",\"name\":\"postoffice\",\"photo\":\"https:\\/\\/maps.gstatic.com\\/mapfiles\\/place_api\\/icons\\/v1\\/png_71\\/civic_building-71.png\"}]}', '2024-04-25 11:31:11', '2024-04-25 11:31:11'),
(2304, 71, '{\"id\":\"sa27\",\"name\":\"locksmith\",\"label\":\"Locksmith\",\"icon\":\"lock\",\"preferences\":[]}', '2024-04-25 11:31:11', '2024-04-25 11:31:11'),
(2305, 71, '{\"id\":\"sa29\",\"name\":\"mosque\",\"label\":\"Mosque\",\"icon\":\"mosque\",\"preferences\":[]}', '2024-04-25 11:31:11', '2024-04-25 11:31:11'),
(2306, 71, '{\"id\":\"sa33\",\"name\":\"insurance_agency\",\"label\":\"Insurance Agency\",\"icon\":\"account-balance\",\"preferences\":[]}', '2024-04-25 11:31:11', '2024-04-25 11:31:11'),
(2307, 71, '{\"id\":\"sa35\",\"name\":\"florist\",\"label\":\"Florist\",\"icon\":\"local-florist\",\"preferences\":[]}', '2024-04-25 11:31:11', '2024-04-25 11:31:11'),
(2308, 71, '{\"id\":\"sa37\",\"name\":\"embassy\",\"label\":\"Embassy\",\"icon\":\"account-balance\",\"preferences\":[]}', '2024-04-25 11:31:11', '2024-04-25 11:31:11'),
(2309, 71, '{\"id\":\"sa39\",\"name\":\"dentist\",\"label\":\"Dentist\",\"icon\":\"doctor\",\"preferences\":[]}', '2024-04-25 11:31:11', '2024-04-25 11:31:11'),
(2310, 71, '{\"id\":\"sa45\",\"name\":\"city_hall\",\"label\":\"City Hall\",\"icon\":\"town-hall\",\"preferences\":[]}', '2024-04-25 11:31:11', '2024-04-25 11:31:11'),
(2341, 76, '{\"id\":\"s14\",\"name\":\"book_store\",\"label\":\"Book Store\",\"icon\":\"menu-book\",\"preferences\":[{\"id\":\"ChIJp2dDeBko1i0RGx_0WUR83eg\",\"name\":\"bookstore\",\"photo\":\"https:\\/\\/maps.gstatic.com\\/mapfiles\\/place_api\\/icons\\/v1\\/png_71\\/shopping-71.png\"}]}', '2024-04-29 08:11:14', '2024-04-29 08:11:14'),
(2342, 76, '{\"id\":\"sa31\",\"name\":\"laundry\",\"label\":\"Laundry\",\"icon\":\"local-laundry-service\",\"preferences\":[{\"id\":\"ChIJWR2to0nvaS4RoY7kS3fNPGI\",\"name\":\"laundry\",\"photo\":\"https:\\/\\/maps.gstatic.com\\/mapfiles\\/place_api\\/icons\\/v1\\/png_71\\/generic_business-71.png\"}]}', '2024-04-29 08:11:14', '2024-04-29 08:11:14'),
(2343, 76, '{\"id\":\"sa20\",\"name\":\"roofing_contractor\",\"label\":\"Roofing Contractor\",\"icon\":\"construction\",\"preferences\":[]}', '2024-04-29 08:11:14', '2024-04-29 08:11:14'),
(2344, 76, '{\"id\":\"s13\",\"name\":\"bicycle_store\",\"label\":\"Bicycle Store\",\"icon\":\"directions-bike\",\"preferences\":[]}', '2024-04-29 08:11:14', '2024-04-29 08:11:14'),
(2346, 77, '{\"id\":\"sa31\",\"name\":\"laundry\",\"label\":\"Laundry\",\"icon\":\"local-laundry-service\",\"preferences\":[{\"id\":\"ChIJWR2to0nvaS4RoY7kS3fNPGI\",\"name\":\"laundry\",\"photo\":\"https:\\/\\/maps.gstatic.com\\/mapfiles\\/place_api\\/icons\\/v1\\/png_71\\/generic_business-71.png\"}]}', '2024-04-29 08:35:21', '2024-04-29 08:35:21'),
(2347, 77, '{\"id\":\"s14\",\"name\":\"book_store\",\"label\":\"Book Store\",\"icon\":\"menu-book\",\"preferences\":[{\"id\":\"ChIJp2dDeBko1i0RGx_0WUR83eg\",\"name\":\"bookstore\",\"photo\":\"https:\\/\\/maps.gstatic.com\\/mapfiles\\/place_api\\/icons\\/v1\\/png_71\\/shopping-71.png\"}]}', '2024-04-29 08:35:21', '2024-04-29 08:35:21'),
(2348, 78, '{\"id\":\"sa18\",\"name\":\"storage\",\"label\":\"Storage\",\"icon\":\"storage\",\"preferences\":[{\"id\":\"ChIJm1GdmJWxEmsR03V72J6GQ4s\",\"name\":\"storage\",\"photo\":\"https:\\/\\/maps.gstatic.com\\/mapfiles\\/place_api\\/icons\\/v1\\/png_71\\/generic_business-71.png\"}]}', '2024-05-20 08:32:30', '2024-05-20 08:32:30'),
(2428, 80, '{\"id\":\"sa19\",\"name\":\"school\",\"label\":\"School\",\"icon\":\"school\",\"preferences\":[{\"id\":\"ChIJeWLOw3_MD4gR-lf1pD9rtZA\",\"name\":\"st patric high school\",\"photo\":\"https:\\/\\/maps.gstatic.com\\/mapfiles\\/place_api\\/icons\\/v1\\/png_71\\/school-71.png\"}]}', '2024-05-20 13:19:04', '2024-05-20 13:19:04'),
(2429, 80, '{\"id\":\"s9\",\"name\":\"jewelry_store\",\"label\":\"Jewelry Store\",\"icon\":\"necklace\",\"preferences\":[{\"id\":\"ChIJ8W1rLkxZwokRAUKlxpUyfew\",\"name\":\"jewelry store\",\"photo\":\"https:\\/\\/maps.gstatic.com\\/mapfiles\\/place_api\\/icons\\/v1\\/png_71\\/shopping-71.png\"}]}', '2024-05-20 13:19:04', '2024-05-20 13:19:04'),
(2430, 80, '{\"id\":\"t14\",\"name\":\"night_club\",\"label\":\"Night_Club\",\"icon\":\"musical-note\",\"preferences\":[{\"id\":\"ChIJEVu6neRDXz4Rv1Oj_H-_mq4\",\"name\":\"night club\",\"photo\":\"https:\\/\\/maps.gstatic.com\\/mapfiles\\/place_api\\/icons\\/v1\\/png_71\\/bar-71.png\"}]}', '2024-05-20 13:19:04', '2024-05-20 13:19:04'),
(2431, 80, '{\"id\":\"f1\",\"name\":\"restaurant\",\"label\":\"Restaurant\",\"icon\":\"coffee-outline\",\"preferences\":[{\"id\":\"ChIJ8QWjWLxyaYgR5MYIpV71c0c\",\"name\":\"kfc\",\"photo\":\"https:\\/\\/maps.gstatic.com\\/mapfiles\\/place_api\\/icons\\/v1\\/png_71\\/generic_business-71.png\"}]}', '2024-05-20 13:19:04', '2024-05-20 13:19:04'),
(2432, 80, '{\"id\":\"sa42\",\"name\":\"church\",\"label\":\"Church\",\"icon\":\"church\",\"preferences\":[{\"id\":\"ChIJqdKJYEEFdkgRPQ4l8JtVt5E\",\"name\":\"holy trinty\",\"photo\":\"https:\\/\\/maps.gstatic.com\\/mapfiles\\/place_api\\/icons\\/v1\\/png_71\\/worship_general-71.png\"},{\"id\":\"ChIJF-WVwViPSxYRC3_sd3EBlTs\",\"name\":\"st geroge church\",\"photo\":\"https:\\/\\/maps.gstatic.com\\/mapfiles\\/place_api\\/icons\\/v1\\/png_71\\/worship_general-71.png\"}]}', '2024-05-20 13:19:04', '2024-05-20 13:19:04'),
(2433, 80, '{\"id\":\"t17\",\"name\":\"zoo\",\"label\":\"Zoo\",\"icon\":\"pets\",\"preferences\":[{\"id\":\"ChIJi_M-BQBX7TkRYd8EGC__OjE\",\"name\":\"elephant cage\",\"photo\":\"https:\\/\\/maps.gstatic.com\\/mapfiles\\/place_api\\/icons\\/v1\\/png_71\\/generic_business-71.png\"}]}', '2024-05-20 13:19:04', '2024-05-20 13:19:04'),
(2434, 80, '{\"id\":\"sa31\",\"name\":\"laundry\",\"label\":\"Laundry\",\"icon\":\"local-laundry-service\",\"preferences\":[{\"id\":\"ChIJWR2to0nvaS4RoY7kS3fNPGI\",\"name\":\"laundry\",\"photo\":\"https:\\/\\/maps.gstatic.com\\/mapfiles\\/place_api\\/icons\\/v1\\/png_71\\/generic_business-71.png\"}]}', '2024-05-20 13:19:04', '2024-05-20 13:19:04'),
(2435, 80, '{\"id\":\"sa46\",\"name\":\"bank\",\"label\":\"Bank\",\"icon\":\"bank\",\"preferences\":[]}', '2024-05-20 13:19:04', '2024-05-20 13:19:04'),
(2436, 79, '{\"id\":\"f1\",\"name\":\"restaurant\",\"label\":\"Restaurant\",\"icon\":\"coffee-outline\",\"preferences\":[{\"id\":\"ChIJ8QWjWLxyaYgR5MYIpV71c0c\",\"name\":\"kfc\",\"photo\":\"https:\\/\\/maps.gstatic.com\\/mapfiles\\/place_api\\/icons\\/v1\\/png_71\\/generic_business-71.png\"}]}', '2024-05-24 15:30:29', '2024-05-24 15:30:29'),
(2437, 79, '{\"id\":\"f2\",\"name\":\"cafe\",\"label\":\"Cafe\",\"icon\":\"coffee-outline\",\"preferences\":[{\"id\":\"ChIJq537gddx5kcR_3PhRd2muxg\",\"name\":\"cafe\",\"photo\":\"https:\\/\\/maps.gstatic.com\\/mapfiles\\/place_api\\/icons\\/v1\\/png_71\\/restaurant-71.png\"}]}', '2024-05-24 15:30:29', '2024-05-24 15:30:29'),
(2489, 81, '{\"id\":\"f1\",\"name\":\"restaurant\",\"label\":\"Restaurant\",\"icon\":\"coffee-outline\",\"preferences\":[{\"id\":\"ChIJyW-u9iZawokRY1sHXGzZHGI\",\"name\":\"chinese\",\"photo\":\"https:\\/\\/maps.gstatic.com\\/mapfiles\\/place_api\\/icons\\/v1\\/png_71\\/restaurant-71.png\"},{\"id\":\"ChIJw3eQJaYpTIYRVx5AmCOP6cQ\",\"name\":\"mexican\",\"photo\":\"https:\\/\\/maps.gstatic.com\\/mapfiles\\/place_api\\/icons\\/v1\\/png_71\\/restaurant-71.png\"},{\"id\":\"ChIJLf8zWebR5zsRkVxdjd6rbKI\",\"name\":\"pizza\",\"photo\":\"https:\\/\\/maps.gstatic.com\\/mapfiles\\/place_api\\/icons\\/v1\\/png_71\\/restaurant-71.png\"},{\"id\":\"ChIJ0d6-fCwbdkgR5sHshEw964M\",\"name\":\"italian\",\"photo\":\"https:\\/\\/maps.gstatic.com\\/mapfiles\\/place_api\\/icons\\/v1\\/png_71\\/generic_business-71.png\"}]}', '2024-08-01 20:22:12', '2024-08-01 20:22:12'),
(2490, 81, '{\"id\":\"f2\",\"name\":\"cafe\",\"label\":\"Cafe\",\"icon\":\"coffee-outline\",\"preferences\":[{\"id\":\"ChIJz3IXEgRakWsRY-ejbZd5w70\",\"name\":\"coffee\",\"photo\":\"https:\\/\\/maps.gstatic.com\\/mapfiles\\/place_api\\/icons\\/v1\\/png_71\\/cafe-71.png\"}]}', '2024-08-01 20:22:12', '2024-08-01 20:22:12'),
(2491, 81, '{\"id\":\"t5\",\"name\":\"night_club\",\"label\":\"Night Club\",\"icon\":\"musical-note\",\"preferences\":[{\"id\":\"ChIJEVu6neRDXz4Rv1Oj_H-_mq4\",\"name\":\"night club\",\"photo\":\"https:\\/\\/maps.gstatic.com\\/mapfiles\\/place_api\\/icons\\/v1\\/png_71\\/bar-71.png\"}]}', '2024-08-01 20:22:12', '2024-08-01 20:22:12'),
(2492, 81, '{\"id\":\"s6\",\"name\":\"convenience_store\",\"label\":\"Convenience Store\",\"icon\":\"local-convenience-store\",\"preferences\":[]}', '2024-08-01 20:22:12', '2024-08-01 20:22:12'),
(2493, 81, '{\"id\":\"sa16\",\"name\":\"synagogue\",\"label\":\"Synagogue\",\"icon\":\"star-of-david\",\"preferences\":[]}', '2024-08-01 20:22:12', '2024-08-01 20:22:12'),
(2494, 81, '{\"id\":\"sa30\",\"name\":\"lodging\",\"label\":\"Lodging\",\"icon\":\"hotel\",\"preferences\":[]}', '2024-08-01 20:22:12', '2024-08-01 20:22:12'),
(2495, 81, '{\"id\":\"f5\",\"name\":\"bar\",\"label\":\"Bar\",\"icon\":\"local-bar\",\"preferences\":[]}', '2024-08-01 20:22:12', '2024-08-01 20:22:12'),
(2496, 81, '{\"id\":\"s3\",\"name\":\"shopping_mall\",\"label\":\"Shopping Mall\",\"icon\":\"local-mall\",\"preferences\":[]}', '2024-08-01 20:22:12', '2024-08-01 20:22:12'),
(2497, 81, '{\"id\":\"t2\",\"name\":\"gym\",\"label\":\"Gyms\",\"icon\":\"fitness-center\",\"preferences\":[]}', '2024-08-01 20:22:12', '2024-08-01 20:22:12'),
(2498, 81, '{\"id\":\"s10\",\"name\":\"supermarket\",\"label\":\"SuperMarket\",\"icon\":\"local-convenience-store\",\"preferences\":[]}', '2024-08-01 20:22:12', '2024-08-01 20:22:12'),
(2499, 81, '{\"id\":\"t13\",\"name\":\"bowling_alley\",\"label\":\"Bowling Alley\",\"icon\":\"bowling\",\"preferences\":[]}', '2024-08-01 20:22:12', '2024-08-01 20:22:12'),
(2516, 84, '{\"id\":\"f5\",\"name\":\"bar\",\"label\":\"Bar\",\"icon\":\"local-bar\",\"preferences\":[]}', '2024-08-14 09:45:52', '2024-08-14 09:45:52'),
(2517, 84, '{\"id\":\"t2\",\"name\":\"gym\",\"label\":\"Gyms\",\"icon\":\"fitness-center\",\"preferences\":[{\"id\":\"ChIJR6a_Hc4K44kRAMLZkbaKlFE\",\"name\":\"gyms\",\"photo\":\"https:\\/\\/maps.gstatic.com\\/mapfiles\\/place_api\\/icons\\/v1\\/png_71\\/school-71.png\"}]}', '2024-08-14 09:45:52', '2024-08-14 09:45:52'),
(2518, 84, '{\"id\":\"f1\",\"name\":\"restaurant\",\"label\":\"Restaurant\",\"icon\":\"coffee-outline\",\"preferences\":[{\"id\":\"ChIJ8QWjWLxyaYgR5MYIpV71c0c\",\"name\":\"kfc\",\"photo\":\"https:\\/\\/maps.gstatic.com\\/mapfiles\\/place_api\\/icons\\/v1\\/png_71\\/generic_business-71.png\"}]}', '2024-08-14 09:45:52', '2024-08-14 09:45:52'),
(2519, 85, '{\"id\":\"t4\",\"name\":\"amusement_park\",\"label\":\"Amusement Park\",\"icon\":\"attractions\",\"preferences\":[]}', '2024-08-19 02:09:09', '2024-08-19 02:09:09'),
(2520, 85, '{\"id\":\"f5\",\"name\":\"bar\",\"label\":\"Bar\",\"icon\":\"local-bar\",\"preferences\":[]}', '2024-08-19 02:09:09', '2024-08-19 02:09:09'),
(2521, 85, '{\"id\":\"t2\",\"name\":\"gym\",\"label\":\"Gyms\",\"icon\":\"fitness-center\",\"preferences\":[]}', '2024-08-19 02:09:09', '2024-08-19 02:09:09'),
(2522, 85, '{\"id\":\"s7\",\"name\":\"liquor_store\",\"label\":\"Liquor Store\",\"icon\":\"local-bar\",\"preferences\":[]}', '2024-08-19 02:09:09', '2024-08-19 02:09:09'),
(2523, 85, '{\"id\":\"sa30\",\"name\":\"lodging\",\"label\":\"Lodging\",\"icon\":\"hotel\",\"preferences\":[]}', '2024-08-19 02:09:09', '2024-08-19 02:09:09'),
(2524, 85, '{\"id\":\"t14\",\"name\":\"night_club\",\"label\":\"Night_Club\",\"icon\":\"musical-note\",\"preferences\":[]}', '2024-08-19 02:09:09', '2024-08-19 02:09:09'),
(2525, 85, '{\"id\":\"sa10\",\"name\":\"parking\",\"label\":\"Parking\",\"icon\":\"local-parking\",\"preferences\":[]}', '2024-08-19 02:09:09', '2024-08-19 02:09:09'),
(2526, 85, '{\"id\":\"t5\",\"name\":\"night_club\",\"label\":\"Night Club\",\"icon\":\"musical-note\",\"preferences\":[]}', '2024-08-19 02:09:09', '2024-08-19 02:09:09'),
(2527, 85, '{\"id\":\"f1\",\"name\":\"restaurant\",\"label\":\"Restaurant\",\"icon\":\"coffee-outline\",\"preferences\":[]}', '2024-08-19 02:09:09', '2024-08-19 02:09:09'),
(2572, 1, '\"{\\\"id\\\":\\\"1\\\",\\\"name\\\":\\\"collage\\\",\\\"label\\\":\\\"Colorado College\\\",\\\"icon\\\":\\\"https:\\\\\\/\\\\\\/maps.gstatic.com\\\\\\/mapfiles\\\\\\/place_api\\\\\\/icons\\\\\\/v1\\\\\\/png_71\\\\\\/school-71.png\\\",\\\"preferences\\\":[{\\\"id\\\":\\\"1\\\",\\\"name\\\":\\\"collage\\\",\\\"photo\\\":\\\"https:\\\\\\/\\\\\\/maps.googleapis.com\\\\\\/maps\\\\\\/api\\\\\\/place\\\\\\/photo?maxwidth=400&photoreference=AdDdOWpREang5Sglu5CZpeMZonfKBf70iafxZj9Swvgi3C2UoKWBk1NXykVx8VqXl6UK-jEz8hEKxC5iURHvnvnyv8p3kWyUIlPEbbw94QTavswbbTNFgsmkb244XIkA3ED2XlsdMeluMhTYKN-oYt-EcdX6kAewCN9olOqUJceUHH9OCocS&key=AIzaSyAa9BJa70uf_20IoTJfAiK_3wz5Vr_I7wM\\\"}]}\"', '2024-12-06 15:41:36', '2024-12-06 15:41:36'),
(2573, 1, '\"{\\\"id\\\":\\\"2\\\",\\\"name\\\":\\\"school\\\",\\\"label\\\":\\\"Unknown Location\\\",\\\"icon\\\":\\\"https:\\\\\\/\\\\\\/maps.gstatic.com\\\\\\/mapfiles\\\\\\/place_api\\\\\\/icons\\\\\\/v1\\\\\\/png_71\\\\\\/generic_business-71.png\\\",\\\"preferences\\\":[{\\\"id\\\":\\\"2\\\",\\\"name\\\":\\\"school\\\",\\\"photo\\\":\\\"https:\\\\\\/\\\\\\/maps.gstatic.com\\\\\\/mapfiles\\\\\\/place_api\\\\\\/icons\\\\\\/v1\\\\\\/png_71\\\\\\/generic_business-71.png\\\"}]}\"', '2024-12-06 15:41:36', '2024-12-06 15:41:36'),
(2574, 1, '\"{\\\"id\\\":\\\"3\\\",\\\"name\\\":\\\"bank\\\",\\\"label\\\":\\\"Axos Bank\\\",\\\"icon\\\":\\\"https:\\\\\\/\\\\\\/maps.gstatic.com\\\\\\/mapfiles\\\\\\/place_api\\\\\\/icons\\\\\\/v1\\\\\\/png_71\\\\\\/bank-71.png\\\",\\\"preferences\\\":[{\\\"id\\\":\\\"3\\\",\\\"name\\\":\\\"bank\\\",\\\"photo\\\":\\\"https:\\\\\\/\\\\\\/maps.googleapis.com\\\\\\/maps\\\\\\/api\\\\\\/place\\\\\\/photo?maxwidth=400&photoreference=AdDdOWr9dsoEb187i2maqke6faCF75kkUdfk96TNK8-0JwdzfON7Ea_6r9rn8DjJjI5Qp2Z9SsIRQPOShoGKpEloQi2CBX3tqEc5SGWEJgz4HwHPKIXVkPSXPpAxPXTA-26F1OtbZ94Qi1M1yipsZHRUxd7AvczCJBPatiON844WqgLfyJ9f&key=AIzaSyAa9BJa70uf_20IoTJfAiK_3wz5Vr_I7wM\\\"}]}\"', '2024-12-06 15:41:36', '2024-12-06 15:41:36'),
(2575, 1, '\"{\\\"id\\\":\\\"4\\\",\\\"name\\\":\\\"University\\\",\\\"label\\\":\\\"University of Denver\\\",\\\"icon\\\":\\\"https:\\\\\\/\\\\\\/maps.gstatic.com\\\\\\/mapfiles\\\\\\/place_api\\\\\\/icons\\\\\\/v1\\\\\\/png_71\\\\\\/school-71.png\\\",\\\"preferences\\\":[{\\\"id\\\":\\\"4\\\",\\\"name\\\":\\\"University\\\",\\\"photo\\\":\\\"https:\\\\\\/\\\\\\/maps.googleapis.com\\\\\\/maps\\\\\\/api\\\\\\/place\\\\\\/photo?maxwidth=400&photoreference=AdDdOWppR7YLVcPY3GXfR-DrfASRzToc9-yoWGysbk2v59sEiAPjmEuphQ140bcrMhIxzz6ZWAdFNLMX3b7Nw05FFbIGkgkt_Ar4LG7YqjhtkjuSj06arenEwE2pNJcXzyVok1tasNyL4g4qrC_y5CeoQ4A_EHOBwQAPNC6gtqHgsfNu4SYW&key=AIzaSyAa9BJa70uf_20IoTJfAiK_3wz5Vr_I7wM\\\"}]}\"', '2024-12-06 15:41:36', '2024-12-06 15:41:36'),
(2583, 94, '{\"id\":\"sa46\",\"name\":\"bank\",\"label\":\"Bank\",\"icon\":\"bank\",\"preferences\":[{\"id\":\"ChIJGUCsronVwoARmtwnAivOOew\",\"name\":\"chase\",\"photo\":\"https:\\/\\/maps.gstatic.com\\/mapfiles\\/place_api\\/icons\\/v1\\/png_71\\/bank-71.png\"}]}', '2024-12-11 04:28:34', '2024-12-11 04:28:34'),
(2584, 94, '{\"id\":\"t19\",\"name\":\"movie_theater\",\"label\":\"Movie Theater\",\"icon\":\"theaters\",\"preferences\":[{\"id\":\"ChIJRylI5hLV3IAR2trFzQKcy_8\",\"name\":\"regal\",\"photo\":\"https:\\/\\/maps.gstatic.com\\/mapfiles\\/place_api\\/icons\\/v1\\/png_71\\/movies-71.png\"}]}', '2024-12-11 04:28:34', '2024-12-11 04:28:34'),
(2585, 94, '{\"id\":\"f1\",\"name\":\"restaurant\",\"label\":\"Restaurant\",\"icon\":\"coffee-outline\",\"preferences\":[{\"id\":\"ChIJ_6mp7eorw4ARWWJKsmS6dGU\",\"name\":\"sushi\",\"photo\":\"https:\\/\\/maps.gstatic.com\\/mapfiles\\/place_api\\/icons\\/v1\\/png_71\\/restaurant-71.png\"},{\"id\":\"ChIJ8_fvi_vW3IARboKTlmeRdgI\",\"name\":\"Italian\",\"photo\":\"https:\\/\\/maps.gstatic.com\\/mapfiles\\/place_api\\/icons\\/v1\\/png_71\\/restaurant-71.png\"},{\"id\":\"ChIJh4FxWzq7woARjU9yUObKUps\",\"name\":\"steak\",\"photo\":\"https:\\/\\/maps.gstatic.com\\/mapfiles\\/place_api\\/icons\\/v1\\/png_71\\/restaurant-71.png\"},{\"id\":\"ChIJf6YJ704p3YAR9UoGzAWfF6s\",\"name\":\"mexican\",\"photo\":\"https:\\/\\/maps.gstatic.com\\/mapfiles\\/place_api\\/icons\\/v1\\/png_71\\/restaurant-71.png\"},{\"id\":\"ChIJD4YludDV3IARBArnJystkuM\",\"name\":\"Thai\",\"photo\":\"https:\\/\\/maps.gstatic.com\\/mapfiles\\/place_api\\/icons\\/v1\\/png_71\\/restaurant-71.png\"}]}', '2024-12-11 04:28:34', '2024-12-11 04:28:34'),
(2586, 94, '{\"id\":\"f5\",\"name\":\"bar\",\"label\":\"Bar\",\"icon\":\"local-bar\",\"preferences\":[{\"id\":\"ChIJS3c19xLV3IARwlY4eqSs0KQ\",\"name\":\"yardhouse\",\"photo\":\"https:\\/\\/maps.gstatic.com\\/mapfiles\\/place_api\\/icons\\/v1\\/png_71\\/restaurant-71.png\"}]}', '2024-12-11 04:28:34', '2024-12-11 04:28:34'),
(2587, 94, '{\"id\":\"sa2\",\"name\":\"atm\",\"label\":\"ATM\",\"icon\":\"atm\",\"preferences\":[{\"id\":\"ChIJmYwhk8crw4ARSreV2GEVh9E\",\"name\":\"Chase\",\"photo\":\"https:\\/\\/maps.gstatic.com\\/mapfiles\\/place_api\\/icons\\/v1\\/png_71\\/bank-71.png\"}]}', '2024-12-11 04:28:34', '2024-12-11 04:28:34'),
(2588, 94, '{\"id\":\"s15\",\"name\":\"department_store\",\"label\":\"Department Store\",\"icon\":\"store\",\"preferences\":[{\"id\":\"ChIJ0R0r6_e7woARs6iiobquQKc\",\"name\":\"Neiman Marcus\",\"photo\":\"https:\\/\\/maps.gstatic.com\\/mapfiles\\/place_api\\/icons\\/v1\\/png_71\\/shopping-71.png\"},{\"id\":\"ChIJwYbN6AXV3IARydWbi8nU0Eg\",\"name\":\"Nordstrom\",\"photo\":\"https:\\/\\/maps.gstatic.com\\/mapfiles\\/place_api\\/icons\\/v1\\/png_71\\/shopping-71.png\"},{\"id\":\"ChIJ59pBbtDXwoARhtbJw4bGcC8\",\"name\":\"macys\",\"photo\":\"https:\\/\\/maps.gstatic.com\\/mapfiles\\/place_api\\/icons\\/v1\\/png_71\\/shopping-71.png\"}]}', '2024-12-11 04:28:34', '2024-12-11 04:28:34');
INSERT INTO `preferences_to_users` (`id`, `user_id`, `preferences`, `created_at`, `updated_at`) VALUES
(2589, 94, '{\"id\":\"sa41\",\"name\":\"doctor\",\"label\":\"Doctor\",\"icon\":\"doctor\",\"preferences\":[{\"id\":\"ChIJMU339ZYrw4ARmRraRuiRYf8\",\"name\":\"chiropractor\",\"photo\":\"https:\\/\\/maps.gstatic.com\\/mapfiles\\/place_api\\/icons\\/v1\\/png_71\\/generic_business-71.png\"}]}', '2024-12-11 04:28:34', '2024-12-11 04:28:34'),
(2590, 94, '{\"id\":\"s1\",\"name\":\"home_goods_store\",\"label\":\"Home Goods Store\",\"icon\":\"home\",\"preferences\":[{\"id\":\"ChIJfy_Hnn4tw4ARJjaNmOngk28\",\"name\":\"home depot\",\"photo\":\"https:\\/\\/maps.gstatic.com\\/mapfiles\\/place_api\\/icons\\/v1\\/png_71\\/shopping-71.png\"},{\"id\":\"ChIJCe23hfMrw4ARM_VV9ypD2xE\",\"name\":\"home goods\",\"photo\":\"https:\\/\\/maps.gstatic.com\\/mapfiles\\/place_api\\/icons\\/v1\\/png_71\\/shopping-71.png\"}]}', '2024-12-11 04:28:34', '2024-12-11 04:28:34'),
(2591, 94, '{\"id\":\"sa7\",\"name\":\"hospital\",\"label\":\"Hospital\",\"icon\":\"local-hospital\",\"preferences\":[{\"id\":\"ChIJ0_dZKBLXwoARzUJbJrF5nGU\",\"name\":\"Kaiser\",\"photo\":\"https:\\/\\/maps.gstatic.com\\/mapfiles\\/place_api\\/icons\\/v1\\/png_71\\/hospital-71.png\"}]}', '2024-12-11 04:28:34', '2024-12-11 04:28:34'),
(2592, 94, '{\"id\":\"f3\",\"label\":\"Takeout\",\"name\":\"meal_takeaway\",\"icon\":\"food-takeout-box-outline\",\"preferences\":[{\"id\":\"ChIJ1YpUb2gsw4AR9SBnzjue9B4\",\"name\":\"taco bell\",\"photo\":\"https:\\/\\/maps.gstatic.com\\/mapfiles\\/place_api\\/icons\\/v1\\/png_71\\/restaurant-71.png\"},{\"id\":\"ChIJ3_s0sI0sw4AR2VB7Yys_2Y4\",\"name\":\"subway\",\"photo\":\"https:\\/\\/maps.gstatic.com\\/mapfiles\\/place_api\\/icons\\/v1\\/png_71\\/restaurant-71.png\"}]}', '2024-12-11 04:28:34', '2024-12-11 04:28:34'),
(2595, 95, '{\"id\":\"s7\",\"name\":\"liquor_store\",\"label\":\"Liquor Store\",\"icon\":\"local-bar\",\"preferences\":[]}', '2024-12-13 03:45:51', '2024-12-13 03:45:51'),
(2596, 95, '{\"id\":\"f1\",\"name\":\"restaurant\",\"label\":\"Restaurant\",\"icon\":\"coffee-outline\",\"preferences\":[]}', '2024-12-13 03:45:51', '2024-12-13 03:45:51'),
(2597, 95, '{\"id\":\"t14\",\"name\":\"night_club\",\"label\":\"Night_Club\",\"icon\":\"musical-note\",\"preferences\":[]}', '2024-12-13 03:45:51', '2024-12-13 03:45:51'),
(2598, 95, '{\"id\":\"sa17\",\"name\":\"store\",\"label\":\"Store\",\"icon\":\"store\",\"preferences\":[]}', '2024-12-13 03:45:51', '2024-12-13 03:45:51'),
(2599, 95, '{\"id\":\"sa6\",\"name\":\"gas_station\",\"label\":\"Gas Station\",\"icon\":\"local-gas-station\",\"preferences\":[]}', '2024-12-13 03:45:51', '2024-12-13 03:45:51'),
(2637, 82, '{\"id\":\"t2\",\"name\":\"gym\",\"label\":\"Gyms\",\"icon\":\"fitness-center\",\"preferences\":[{\"id\":\"ChIJp3lRPYWcwoARjaxdDiTWFME\",\"name\":\"gym\",\"photo\":\"https:\\/\\/maps.gstatic.com\\/mapfiles\\/place_api\\/icons\\/v1\\/png_71\\/school-71.png\"}]}', '2025-01-01 18:49:23', '2025-01-01 18:49:23'),
(2638, 82, '{\"id\":\"t5\",\"name\":\"night_club\",\"label\":\"Night Club\",\"icon\":\"musical-note\",\"preferences\":[]}', '2025-01-01 18:49:23', '2025-01-01 18:49:23'),
(2639, 82, '{\"id\":\"s2\",\"name\":\"clothing_store\",\"label\":\"Clothing Store\",\"icon\":\"shirt\",\"preferences\":[]}', '2025-01-01 18:49:23', '2025-01-01 18:49:23'),
(2640, 82, '{\"id\":\"f5\",\"name\":\"bar\",\"label\":\"Bar\",\"icon\":\"local-bar\",\"preferences\":[]}', '2025-01-01 18:49:23', '2025-01-01 18:49:23'),
(2641, 82, '{\"id\":\"f1\",\"name\":\"restaurant\",\"label\":\"Restaurant\",\"icon\":\"coffee-outline\",\"preferences\":[]}', '2025-01-01 18:49:23', '2025-01-01 18:49:23'),
(2642, 82, '{\"id\":\"sa9\",\"name\":\"airport\",\"label\":\"Airport\",\"icon\":\"local-airport\",\"preferences\":[]}', '2025-01-01 18:49:23', '2025-01-01 18:49:23'),
(2643, 82, '{\"id\":\"sa4\",\"name\":\"car_rental\",\"label\":\"Car Rental\",\"icon\":\"car-rental\",\"preferences\":[]}', '2025-01-01 18:49:23', '2025-01-01 18:49:23'),
(2644, 82, '{\"id\":\"s7\",\"name\":\"liquor_store\",\"label\":\"Liquor Store\",\"icon\":\"local-bar\",\"preferences\":[]}', '2025-01-01 18:49:23', '2025-01-01 18:49:23'),
(2645, 82, '{\"id\":\"sa32\",\"name\":\"lawyer\",\"label\":\"Lawyer\",\"icon\":\"gavel\",\"preferences\":[]}', '2025-01-01 18:49:23', '2025-01-01 18:49:23'),
(2646, 82, '{\"id\":\"sa10\",\"name\":\"parking\",\"label\":\"Parking\",\"icon\":\"local-parking\",\"preferences\":[]}', '2025-01-01 18:49:23', '2025-01-01 18:49:23'),
(2647, 82, '{\"id\":\"r14\",\"name\":\"radio_broadcaster\",\"label\":\"Radio\",\"icon\":\"radio\",\"preferences\":[]}', '2025-01-01 18:49:23', '2025-01-01 18:49:23'),
(2648, 82, '{\"id\":\"sa29\",\"name\":\"mosque\",\"label\":\"Mosque\",\"icon\":\"mosque\",\"preferences\":[]}', '2025-01-01 18:49:23', '2025-01-01 18:49:23'),
(2649, 82, '{\"id\":\"t14\",\"name\":\"night_club\",\"label\":\"Night_Club\",\"icon\":\"musical-note\",\"preferences\":[]}', '2025-01-01 18:49:23', '2025-01-01 18:49:23'),
(2650, 93, '{\"id\":\"f1\",\"name\":\"restaurant\",\"label\":\"Restaurant\",\"icon\":\"coffee-outline\",\"preferences\":[]}', '2025-01-15 17:11:37', '2025-01-15 17:11:37'),
(2652, 101, '{\"id\":\"sa9\",\"name\":\"airport\",\"label\":\"Airport\",\"icon\":\"local-airport\",\"preferences\":[{\"id\":\"ChIJZWbHLsc5sz4RiMlTFIIdXew\",\"name\":\"karachi\",\"photo\":\"https:\\/\\/maps.gstatic.com\\/mapfiles\\/place_api\\/icons\\/v1\\/png_71\\/airport-71.png\"}]}', '2025-02-06 00:57:44', '2025-02-06 00:57:44'),
(2653, 74, '{\"id\":\"t5\",\"name\":\"night_club\",\"label\":\"Night Club\",\"icon\":\"musical-note\",\"preferences\":[{\"id\":\"ChIJK69z3qO22YgROBJC2vDIXAI\",\"name\":\"club\",\"photo\":\"https:\\/\\/maps.gstatic.com\\/mapfiles\\/place_api\\/icons\\/v1\\/png_71\\/bar-71.png\"}]}', '2025-03-18 11:25:15', '2025-03-18 11:25:15'),
(2654, 74, '{\"id\":\"sa6\",\"name\":\"gas_station\",\"label\":\"Gas Station\",\"icon\":\"local-gas-station\",\"preferences\":[{\"id\":\"ChIJqUerOcG3woAR9Bg14dRBRVI\",\"name\":\"gasstation\",\"photo\":\"https:\\/\\/maps.gstatic.com\\/mapfiles\\/place_api\\/icons\\/v1\\/png_71\\/gas_station-71.png\"}]}', '2025-03-18 11:25:16', '2025-03-18 11:25:16'),
(2655, 74, '{\"id\":\"s9\",\"name\":\"jewelry_store\",\"label\":\"Jewelry Store\",\"icon\":\"necklace\",\"preferences\":[{\"id\":\"ChIJC-RQitUVrjsRLgNVNXkx_ko\",\"name\":\"jewellery\",\"photo\":\"https:\\/\\/maps.gstatic.com\\/mapfiles\\/place_api\\/icons\\/v1\\/png_71\\/shopping-71.png\"}]}', '2025-03-18 11:25:16', '2025-03-18 11:25:16'),
(2656, 74, '{\"id\":\"f1\",\"name\":\"restaurant\",\"label\":\"Restaurant\",\"icon\":\"coffee-outline\",\"preferences\":[{\"id\":\"ChIJ8QWjWLxyaYgR5MYIpV71c0c\",\"name\":\"kfc\",\"photo\":\"https:\\/\\/maps.gstatic.com\\/mapfiles\\/place_api\\/icons\\/v1\\/png_71\\/generic_business-71.png\"}]}', '2025-03-18 11:25:16', '2025-03-18 11:25:16'),
(2657, 74, '{\"id\":\"sa14\",\"name\":\"university\",\"label\":\"University\",\"icon\":\"school\",\"preferences\":[{\"id\":\"ChIJ6zWFnZIUkFQRoyu4AXksdGs\",\"name\":\"university\",\"photo\":\"https:\\/\\/maps.gstatic.com\\/mapfiles\\/place_api\\/icons\\/v1\\/png_71\\/school-71.png\"}]}', '2025-03-18 11:25:16', '2025-03-18 11:25:16'),
(2658, 74, '{\"id\":\"sa15\",\"name\":\"taxi_stand\",\"label\":\"Taxi Stand\",\"icon\":\"local-taxi\",\"preferences\":[{\"id\":\"ChIJZ-QvpBWl5jkRYDghEiBXC3s\",\"name\":\"taxi stop\",\"photo\":\"https:\\/\\/maps.gstatic.com\\/mapfiles\\/place_api\\/icons\\/v1\\/png_71\\/generic_business-71.png\"}]}', '2025-03-18 11:25:16', '2025-03-18 11:25:16'),
(2659, 74, '{\"id\":\"sa9\",\"name\":\"airport\",\"label\":\"Airport\",\"icon\":\"local-airport\",\"preferences\":[{\"id\":\"ChIJJwbLdXj9oUcRL_qcuGv8ynI\",\"name\":\"airport\",\"photo\":\"https:\\/\\/maps.gstatic.com\\/mapfiles\\/place_api\\/icons\\/v1\\/png_71\\/airport-71.png\"}]}', '2025-03-18 11:25:16', '2025-03-18 11:25:16'),
(2660, 74, '{\"id\":\"f5\",\"name\":\"bar\",\"label\":\"Bar\",\"icon\":\"local-bar\",\"preferences\":[]}', '2025-03-18 11:25:16', '2025-03-18 11:25:16'),
(2661, 74, '{\"id\":\"sa46\",\"name\":\"bank\",\"label\":\"Bank\",\"icon\":\"bank\",\"preferences\":[]}', '2025-03-18 11:25:16', '2025-03-18 11:25:16'),
(2662, 74, '{\"id\":\"sa4\",\"name\":\"car_rental\",\"label\":\"Car Rental\",\"icon\":\"car-rental\",\"preferences\":[]}', '2025-03-18 11:25:16', '2025-03-18 11:25:16'),
(2663, 74, '{\"id\":\"sa42\",\"name\":\"church\",\"label\":\"Church\",\"icon\":\"church\",\"preferences\":[{\"id\":\"ChIJqdKJYEEFdkgRPQ4l8JtVt5E\",\"name\":\"holy trinity\",\"photo\":\"https:\\/\\/maps.gstatic.com\\/mapfiles\\/place_api\\/icons\\/v1\\/png_71\\/worship_general-71.png\"}]}', '2025-03-18 11:25:16', '2025-03-18 11:25:16'),
(2664, 74, '{\"id\":\"t3\",\"name\":\"art_gallery\",\"label\":\"Art Gallery\",\"icon\":\"image-frame\",\"preferences\":[]}', '2025-03-18 11:25:16', '2025-03-18 11:25:16'),
(2665, 74, '{\"id\":\"sa5\",\"name\":\"car_wash\",\"label\":\"car wash\",\"icon\":\"local-car-wash\",\"preferences\":[{\"id\":\"ChIJdfqjyQYXrjsR2p70EhZp6gY\",\"name\":\"car wash\",\"photo\":\"https:\\/\\/maps.gstatic.com\\/mapfiles\\/place_api\\/icons\\/v1\\/png_71\\/generic_business-71.png\"}]}', '2025-03-18 11:25:16', '2025-03-18 11:25:16'),
(2693, 106, '{\"id\":\"sa42\",\"name\":\"church\",\"label\":\"Church\",\"icon\":\"church\",\"preferences\":[]}', '2025-07-02 16:12:20', '2025-07-02 16:12:20'),
(2694, 106, '{\"id\":\"sa48\",\"name\":\"local_government_office\",\"label\":\"Court\",\"icon\":\"building\",\"preferences\":[]}', '2025-07-02 16:12:20', '2025-07-02 16:12:20'),
(2695, 106, '{\"id\":\"sa41\",\"name\":\"doctor\",\"label\":\"Doctor\",\"icon\":\"doctor\",\"preferences\":[]}', '2025-07-02 16:12:20', '2025-07-02 16:12:20'),
(2699, 117, '{\"id\":\"sa46\",\"name\":\"bank\",\"label\":\"Bank\",\"icon\":\"bank\",\"preferences\":[]}', '2025-07-02 20:11:00', '2025-07-02 20:11:00'),
(2700, 117, '{\"id\":\"f2\",\"name\":\"cafe\",\"label\":\"Cafe\",\"icon\":\"coffee-outline\",\"preferences\":[]}', '2025-07-02 20:11:00', '2025-07-02 20:11:00'),
(2701, 117, '{\"id\":\"sa5\",\"name\":\"car_wash\",\"label\":\"car wash\",\"icon\":\"local-car-wash\",\"preferences\":[]}', '2025-07-02 20:11:01', '2025-07-02 20:11:01'),
(2719, 116, '{\"id\":\"f2\",\"name\":\"cafe\",\"label\":\"Cafe\",\"icon\":\"coffee-outline\",\"preferences\":[]}', '2025-07-18 20:37:16', '2025-07-18 20:37:16'),
(2720, 116, '{\"id\":\"sa1\",\"name\":\"accounting\",\"label\":\"Accounting\",\"icon\":\"local-hotel\",\"preferences\":[]}', '2025-07-18 20:37:16', '2025-07-18 20:37:16'),
(2721, 116, '{\"id\":\"sa2\",\"name\":\"atm\",\"label\":\"ATM\",\"icon\":\"atm\",\"preferences\":[]}', '2025-07-18 20:37:16', '2025-07-18 20:37:16'),
(2722, 116, '{\"id\":\"t4\",\"name\":\"amusement_park\",\"label\":\"Amusement Park\",\"icon\":\"attractions\",\"preferences\":[]}', '2025-07-18 20:37:16', '2025-07-18 20:37:16'),
(2723, 116, '{\"id\":\"s6\",\"name\":\"convenience_store\",\"label\":\"Convenience Store\",\"icon\":\"local-convenience-store\",\"preferences\":[]}', '2025-07-18 20:37:16', '2025-07-18 20:37:16'),
(2734, 118, '{\"id\":\"t13\",\"name\":\"bowling_alley\",\"label\":\"Bowling Alley\",\"icon\":\"bowling\",\"preferences\":[]}', '2025-07-18 20:46:56', '2025-07-18 20:46:56'),
(2735, 118, '{\"id\":\"t12\",\"name\":\"aquarium\",\"label\":\"Aquarium\",\"icon\":\"dolphin\",\"preferences\":[]}', '2025-07-18 20:46:56', '2025-07-18 20:46:56'),
(2736, 118, '{\"id\":\"s6\",\"name\":\"convenience_store\",\"label\":\"Convenience Store\",\"icon\":\"local-convenience-store\",\"preferences\":[]}', '2025-07-18 20:46:56', '2025-07-18 20:46:56'),
(2737, 118, '{\"id\":\"sa41\",\"name\":\"doctor\",\"label\":\"Doctor\",\"icon\":\"doctor\",\"preferences\":[]}', '2025-07-18 20:46:56', '2025-07-18 20:46:56'),
(2738, 118, '{\"id\":\"sa42\",\"name\":\"church\",\"label\":\"Church\",\"icon\":\"church\",\"preferences\":[]}', '2025-07-18 20:46:56', '2025-07-18 20:46:56'),
(2739, 118, '{\"id\":\"sa39\",\"name\":\"dentist\",\"label\":\"Dentist\",\"icon\":\"doctor\",\"preferences\":[]}', '2025-07-18 20:46:56', '2025-07-18 20:46:56'),
(2769, 88, '{\"id\":\"f1\",\"name\":\"restaurant\",\"label\":\"Restaurant\",\"icon\":\"coffee-outline\",\"preferences\":[{\"id\":\"ChIJCShkYPmMaS4R3pNBQBdmAls\",\"name\":\"kfc\",\"photo\":\"https:\\/\\/maps.gstatic.com\\/mapfiles\\/place_api\\/icons\\/v1\\/png_71\\/restaurant-71.png\"}]}', '2025-07-21 13:41:50', '2025-07-21 13:41:50'),
(2770, 119, '{\"id\":\"sa9\",\"name\":\"airport\",\"label\":\"Airport\",\"icon\":\"local-airport\",\"preferences\":[]}', '2025-07-21 16:51:14', '2025-07-21 16:51:14'),
(2771, 119, '{\"id\":\"sa2\",\"name\":\"atm\",\"label\":\"ATM\",\"icon\":\"atm\",\"preferences\":[]}', '2025-07-21 16:51:14', '2025-07-21 16:51:14'),
(2772, 119, '{\"id\":\"t4\",\"name\":\"amusement_park\",\"label\":\"Amusement Park\",\"icon\":\"attractions\",\"preferences\":[]}', '2025-07-21 16:51:15', '2025-07-21 16:51:15'),
(2773, 119, '{\"id\":\"sa3\",\"name\":\"spa\",\"label\":\"Beauty Supplies\",\"icon\":\"spa\",\"preferences\":[]}', '2025-07-21 16:51:15', '2025-07-21 16:51:15'),
(2774, 119, '{\"id\":\"sa1\",\"name\":\"accounting\",\"label\":\"Accounting\",\"icon\":\"local-hotel\",\"preferences\":[]}', '2025-07-21 16:51:15', '2025-07-21 16:51:15'),
(2775, 119, '{\"id\":\"t3\",\"name\":\"art_gallery\",\"label\":\"Art Gallery\",\"icon\":\"image-frame\",\"preferences\":[]}', '2025-07-21 16:51:15', '2025-07-21 16:51:15'),
(2791, 120, '{\"id\":\"s13\",\"name\":\"bicycle_store\",\"label\":\"Bicycle Store\",\"icon\":\"directions-bike\",\"preferences\":[]}', '2025-07-21 18:59:05', '2025-07-21 18:59:05'),
(2792, 120, '{\"id\":\"sa46\",\"name\":\"bank\",\"label\":\"Bank\",\"icon\":\"bank\",\"preferences\":[]}', '2025-07-21 18:59:06', '2025-07-21 18:59:06'),
(2793, 120, '{\"id\":\"s15\",\"name\":\"department_store\",\"label\":\"Department Store\",\"icon\":\"store\",\"preferences\":[]}', '2025-07-21 18:59:06', '2025-07-21 18:59:06'),
(2794, 120, '{\"id\":\"sa42\",\"name\":\"church\",\"label\":\"Church\",\"icon\":\"church\",\"preferences\":[]}', '2025-07-21 18:59:06', '2025-07-21 18:59:06'),
(2795, 120, '{\"id\":\"s6\",\"name\":\"convenience_store\",\"label\":\"Convenience Store\",\"icon\":\"local-convenience-store\",\"preferences\":[]}', '2025-07-21 18:59:06', '2025-07-21 18:59:06'),
(2796, 120, '{\"id\":\"sa47\",\"name\":\"beauty_salon\",\"label\":\"Beauty Salon\",\"icon\":\"spa\",\"preferences\":[]}', '2025-07-21 18:59:06', '2025-07-21 18:59:06'),
(2797, 120, '{\"id\":\"f2\",\"name\":\"cafe\",\"label\":\"Cafe\",\"icon\":\"coffee-outline\",\"preferences\":[]}', '2025-07-21 18:59:06', '2025-07-21 18:59:06'),
(2837, 121, '{\"id\":\"sa5\",\"name\":\"car_wash\",\"label\":\"car wash\",\"icon\":\"local-car-wash\",\"preferences\":[]}', '2025-08-05 17:32:37', '2025-08-05 17:32:37'),
(2838, 121, '{\"id\":\"f2\",\"name\":\"cafe\",\"label\":\"Cafe\",\"icon\":\"coffee-outline\",\"preferences\":[]}', '2025-08-05 17:32:37', '2025-08-05 17:32:37'),
(2839, 122, '{\"id\":\"sa17\",\"name\":\"store\",\"label\":\"Store\",\"icon\":\"store\",\"preferences\":[]}', '2025-08-09 01:08:02', '2025-08-09 01:08:02'),
(2840, 122, '{\"id\":\"sa9\",\"name\":\"airport\",\"label\":\"Airport\",\"icon\":\"local-airport\",\"preferences\":[{\"id\":\"ChIJBbPw2l1PO4gR-5i_Jc_AQSM\",\"name\":\"detroit metro airport\",\"photo\":\"https:\\/\\/maps.gstatic.com\\/mapfiles\\/place_api\\/icons\\/v1\\/png_71\\/airport-71.png\"}]}', '2025-08-09 01:08:03', '2025-08-09 01:08:03'),
(2841, 122, '{\"id\":\"s2\",\"name\":\"clothing_store\",\"label\":\"Clothing Store\",\"icon\":\"shirt\",\"preferences\":[{\"id\":\"ChIJlybgmxyTOIgR_2NCth6911U\",\"name\":\"kohls\",\"photo\":\"https:\\/\\/maps.gstatic.com\\/mapfiles\\/place_api\\/icons\\/v1\\/png_71\\/shopping-71.png\"}]}', '2025-08-09 01:08:03', '2025-08-09 01:08:03'),
(2842, 122, '{\"id\":\"f5\",\"name\":\"bar\",\"label\":\"Bar\",\"icon\":\"local-bar\",\"preferences\":[{\"id\":\"ChIJ-WQ45R9SOogRZI1po5h9Xr4\",\"name\":\"crow\\u2019s nest\",\"photo\":\"https:\\/\\/maps.gstatic.com\\/mapfiles\\/place_api\\/icons\\/v1\\/png_71\\/restaurant-71.png\"}]}', '2025-08-09 01:08:03', '2025-08-09 01:08:03'),
(2843, 122, '{\"id\":\"sa46\",\"name\":\"bank\",\"label\":\"Bank\",\"icon\":\"bank\",\"preferences\":[{\"id\":\"ChIJvfprfBD1OIgR_kodtbFQBNM\",\"name\":\"bank of tom duly\",\"photo\":\"https:\\/\\/maps.gstatic.com\\/mapfiles\\/place_api\\/icons\\/v1\\/png_71\\/bank-71.png\"}]}', '2025-08-09 01:08:03', '2025-08-09 01:08:03');

-- --------------------------------------------------------

--
-- Table structure for table `publish_trip_reviews`
--

CREATE TABLE `publish_trip_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `trip_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `text` longtext DEFAULT NULL,
  `rating` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `receptionists`
--

CREATE TABLE `receptionists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `ssn` varchar(255) DEFAULT NULL,
  `cross_link` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `refferals`
--

CREATE TABLE `refferals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `receptionist_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `refund_dispersements`
--

CREATE TABLE `refund_dispersements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `receptionist_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product` varchar(255) DEFAULT NULL,
  `check` varchar(255) DEFAULT NULL,
  `direct_deposit` varchar(255) DEFAULT NULL,
  `green_card` varchar(255) DEFAULT NULL,
  `account_no` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `refund_invoices`
--

CREATE TABLE `refund_invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `receptionist_id` bigint(20) UNSIGNED DEFAULT NULL,
  `federal_amount` varchar(255) DEFAULT NULL,
  `state_amount` varchar(255) DEFAULT NULL,
  `preparation_fee` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reset_code_passwords`
--

CREATE TABLE `reset_code_passwords` (
  `email` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reset_code_passwords`
--

INSERT INTO `reset_code_passwords` (`email`, `code`, `created_at`, `updated_at`) VALUES
('umarf4929@gmail.com', '8848', '2023-09-12 17:17:25', '2023-09-12 17:17:25'),
('admin@gmail.com', '4690', '2023-09-12 17:42:49', '2023-09-12 17:42:49'),
('user@gmail.com', '4148', '2023-09-12 18:06:39', '2023-09-12 18:06:39'),
('rlsakanick@aol.com', '2118', '2023-11-20 22:35:01', '2023-11-20 22:35:01'),
('f@gmail.com', '9423', '2023-11-21 00:17:11', '2023-11-21 00:17:11');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `place_id` text DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `review` text NOT NULL,
  `rating` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `place_id`, `user_id`, `review`, `rating`, `created_at`, `updated_at`) VALUES
(1, 'ChIJS5AX96E-sz4RDtPb6DI3cNc', 1, 'yes you are good work', 2, '2024-11-28 10:41:25', '2024-11-28 10:41:25'),
(2, 'ChIJe04ERAk5QIcRSM3DdPUjg-s', 1, 'as', 2, '2024-12-05 14:36:05', '2024-12-05 14:36:05'),
(3, '1', 74, 'test', 5, '2025-04-08 12:39:04', '2025-04-08 12:39:04');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'web', '2023-09-11 06:42:49', '2023-09-11 06:42:49'),
(2, 'User', 'web', '2023-09-11 06:42:49', '2023-09-11 06:42:49');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(35, 2),
(36, 1),
(36, 2),
(37, 1),
(37, 2),
(38, 1),
(38, 2),
(39, 1),
(39, 2),
(40, 1),
(40, 2),
(41, 1),
(41, 2),
(42, 1),
(42, 2),
(43, 1),
(43, 2),
(44, 1),
(45, 1),
(45, 2),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1);

-- --------------------------------------------------------

--
-- Table structure for table `schedules`
--

CREATE TABLE `schedules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `start_time` varchar(255) NOT NULL,
  `end_time` varchar(255) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `schedules`
--

INSERT INTO `schedules` (`id`, `name`, `start_time`, `end_time`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Smith', '12:20', '13:50', 'images/HBl1OVxmnPOXHW3U24G1zeiGzqk0wyJUgWBw2e4s.jpg', '2024-11-25 12:11:42', '2024-12-05 15:05:43'),
(2, 'David', '22:28', '14:50', 'images/qsaduep3IZLt4GVziG1awzv1J1BxI54UQMWSIryy.jpg', '2024-11-25 12:28:30', '2024-12-05 15:00:40'),
(3, 'Ammar', '13:29', '15:50', 'images/cEKBSEeFomneDXmaK9VHxHB5wm52aXWPfAMPt0Ah.jpg', '2024-11-25 12:29:36', '2024-12-05 15:00:32'),
(4, 'Ashar', '13:50', '16:50', 'images/aocm6U076NlkloVKVmZrUPTbWYJ1DeGxKxLexbo7.jpg', '2024-11-25 12:50:16', '2024-12-05 15:00:24'),
(5, 'Lance Barnett', '13:06', '10:23', 'images/c3gkP6LZaSgN9oGTFg9RYtRbFoGPbkro8XUY9jel.jpg', '2024-12-05 15:00:16', '2024-12-05 15:00:16');

-- --------------------------------------------------------

--
-- Table structure for table `signatures`
--

CREATE TABLE `signatures` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `signature` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tax_payers`
--

CREATE TABLE `tax_payers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `receptionist_id` bigint(20) UNSIGNED DEFAULT NULL,
  `spouse_information` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `dependent` varchar(255) DEFAULT NULL,
  `tax_document` varchar(255) DEFAULT NULL,
  `paystub` varchar(255) DEFAULT NULL,
  `w2` varchar(255) DEFAULT NULL,
  `nec` varchar(255) DEFAULT NULL,
  `morgage` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `trips`
--

CREATE TABLE `trips` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `country` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `is_admin` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `image`, `name`, `email`, `email_verified_at`, `password`, `is_admin`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'umar', 'farooq', NULL, 'Admin', 'admin@gmail.com', '2023-09-11 06:42:49', '$2y$10$bBBgsg6GWDXOmew6pHfi9eRVLdRvlRovUAl30cquUzxtVM3M35BMe', NULL, NULL, '2023-09-11 06:42:49', '2023-10-09 19:24:20'),
(2, 'saad', NULL, 'https://nearplace.ad-wize.net/uploads/users/faff2325cc58e3656f4438fe91b041a3PayMefirst.jpg', 'saad', 'saad@gmail.com', NULL, '$2a$12$LcneQ9nRUZyxXLZb21k3I.El38hwKCcA0dvJxleBuNbZGdIgvTW0i', NULL, NULL, '2023-09-11 06:45:03', '2024-05-23 11:38:51'),
(9, NULL, NULL, NULL, 'mehmood', 'mehmood@gmail.com', NULL, '$2y$10$MGfWfdeqjbSSYJKNWhJ9ouzzgI9KhjBVIpJqIIG9vW..FdgOUiIzy', NULL, NULL, '2023-09-11 08:18:27', '2023-09-11 08:18:27'),
(10, NULL, NULL, NULL, 'anita', 'anita@gmail.com', NULL, '$2y$10$lAafqReXyfIynrcmaDFU6ek7oeMaSF0P0GcuQzt5lLqvt21nVv67i', NULL, NULL, '2023-09-11 10:23:33', '2023-09-11 10:23:33'),
(11, NULL, NULL, NULL, 'user12', 'user1212@gmail.com', NULL, '$2y$10$4A6qu4AttKdUJcQRp3OQRuZ9xuyNaTUZ9utGnsDtIrf/CS5lI0.1a', NULL, NULL, '2023-09-12 15:52:45', '2023-09-14 21:06:49'),
(12, NULL, NULL, NULL, 'name', 'user2@gmail.com', NULL, '$2y$10$K3DmSyczyI.SQ67CKpyJFO2ZMbF6US4JuqOdevvhf/JL0erGo7CGq', NULL, NULL, '2023-09-12 15:55:15', '2023-09-12 15:55:15'),
(13, NULL, NULL, NULL, 'abc', 'abc@gmail.com', NULL, '$2y$10$ibqPBDVkLhD0UTEZG6TkLePX42in4jLNKveKtINr626mvFmm1/yCi', NULL, NULL, '2023-09-12 16:24:11', '2023-10-12 03:39:43'),
(14, NULL, NULL, NULL, 'abc', 'abc1@gmail.com', NULL, '$2y$10$aNLn66JC0v.eF5o09R6Z2uIdH7ENDLQRSfW//axVASfIRpJdKBgRm', NULL, NULL, '2023-09-12 16:32:56', '2023-09-12 16:32:56'),
(15, NULL, NULL, NULL, 'abc12', 'abc12@gmail.com', NULL, '$2y$10$MQkyMFBj/IaJXAFGGlPsrOF5yp8JYjD/byozCD1r943Z6s69cU9P2', NULL, NULL, '2023-09-12 16:33:55', '2023-09-12 16:33:55'),
(16, NULL, NULL, NULL, 'umarf', 'umarf4929@gmail.com', NULL, '$2y$10$Ce2aosjds8.qLZVWblHJUuKnfjtxNq2OBt0yUPC.1LiLDOqZbQpNC', NULL, NULL, '2023-09-12 16:58:52', '2023-09-12 16:58:52'),
(17, NULL, NULL, NULL, 'user1', 'tester@gmail.com', NULL, '$2y$10$en7G9nH1dytAwDJvAFMapeJDCKo/WQ3giuMu.yu4C3WTUQCSSeZwm', NULL, NULL, '2023-09-14 18:52:05', '2023-09-14 18:52:05'),
(18, NULL, NULL, NULL, 'user', 'testerr@gmail.com', NULL, '$2y$10$5OeW1nJrsLfWO7yaBDzY2eBfpG9ODgNs4vcF6jrmPEZhOZoHKHzke', NULL, NULL, '2023-09-14 18:55:31', '2023-09-14 18:55:31'),
(19, NULL, NULL, NULL, 'userr', 'userr@gmail.com', NULL, '$2y$10$73crs9S.WYjKh/v4IubekOkpEmqOXO.NyQBRWG/xRfRV8c4fqx6ya', NULL, NULL, '2023-09-14 19:03:14', '2023-09-14 19:33:35'),
(20, NULL, NULL, NULL, 'Alex', 'Alex23@gmail.com', NULL, '$2y$10$AVK8Sv9mg8EPjhXtE7TfrOLVsNqlZGGttf7xj164WmDKv3NjMYSLi', NULL, NULL, '2023-09-15 20:32:51', '2023-09-15 20:45:48'),
(21, NULL, NULL, NULL, 'userr', 'tester1@gmail.com', NULL, '$2y$10$H./xQ5g2V2EasSxpZ6BLvu4sqy.asktgd6UWhAWzZFeYwyROePguu', NULL, NULL, '2023-09-15 20:55:17', '2023-09-15 21:03:36'),
(22, NULL, NULL, NULL, 'new user', 'user1@gmail.com', NULL, '$2y$10$WpFvf7ci.j5F7NmPiu2hTeLgVjJ3MyXsBXlXeSefZ7nbcHHFYhhVe', NULL, NULL, '2023-09-22 17:11:38', '2023-09-22 17:11:38'),
(23, NULL, NULL, NULL, 'nomanali', 'noman@gmail.com', NULL, '$2y$10$mSmd0Z84YxWydvQlR8lES.DEaikpPV66gxCCe1jSeo7A8f.aW1YRG', NULL, NULL, '2023-09-22 17:24:50', '2023-09-22 17:24:50'),
(24, NULL, NULL, NULL, 'nomanali', 'usama@gmail.com', NULL, '$2y$10$EGOOd5kgEKDDiMyeZ6EpluuKlMIv.82ygBF1gZVd5EZIqAiUr3D6a', NULL, NULL, '2023-09-22 17:25:11', '2023-09-22 17:25:11'),
(25, NULL, NULL, NULL, 'dasda', 'user4@gmail.com', NULL, '$2y$10$AbEOrpntMfg9llnSs95zCu6NL.CuSgJ/zp.Z7pgHPWNRQ2mkRjMYO', NULL, NULL, '2023-09-22 17:25:29', '2023-09-22 17:25:29'),
(26, NULL, NULL, NULL, 'user24', 'user14@gmail.com', NULL, '$2y$10$mEMuLykC3mFUeVqSymhzZelbn6eV2TFDulCkv2.EQU9YQbbPY94LO', NULL, NULL, '2023-09-22 17:39:07', '2023-09-22 17:39:07'),
(27, NULL, NULL, NULL, 'nomanali', 'usama1@gmail.com', NULL, '$2y$10$LxOXYVp4agySFWmr6HIr6eMMfqTtUTInngh3I0uFzEZqKQYDJa6fq', NULL, NULL, '2023-09-22 17:40:16', '2023-09-22 17:40:16'),
(28, NULL, NULL, NULL, 'user24', 'user141@gmail.com', NULL, '$2y$10$Ks8SM.29Rmp2RxJt/VLLbuWnLmGSkEc9D0Ryl5OalWXiFBAknUBVe', NULL, NULL, '2023-09-22 17:40:28', '2023-09-22 17:40:28'),
(29, NULL, NULL, NULL, 'user24', 'user11@gmail.com', NULL, '$2y$10$GljDP.GCqweolmfAL.SD4.yRs5WZ03uMmzuUqq//BZ9JUYdg8KCe.', NULL, NULL, '2023-09-22 17:40:59', '2023-09-22 17:40:59'),
(30, NULL, NULL, NULL, 'user24', 'user12@gmail.com', NULL, '$2y$10$AGhQU/nKYZ/Lfg/PJk1gte7BM6ZaPuhymxcNtjxWx6OQ0nHllMiTu', NULL, NULL, '2023-09-22 17:41:55', '2023-09-22 17:41:55'),
(31, NULL, NULL, NULL, 'dsda', 'uu@gmail.com', NULL, '$2y$10$5LK7YueKuggmFhsZ1AM0.ePjTHmdpuCb0n7nhqmEYrXT.DwB/VqL6', NULL, NULL, '2023-09-22 19:00:53', '2023-09-22 19:00:53'),
(32, NULL, NULL, NULL, 'dsda', 'uuu@gmail.com', NULL, '$2y$10$kGzIJGsQAm9M7PyoBd29deVzBBfrhBoXd2WVf0FUvdXRwoFDKfFla', NULL, NULL, '2023-09-22 19:01:14', '2023-09-22 19:01:14'),
(33, NULL, NULL, NULL, 'ddsad', 'dd@gmail.com', NULL, '$2y$10$PXAoxa1HX.FhoUYupHI1gOThnW4rVmXOa4WwO1N1FkkxCgsS.2o2.', NULL, NULL, '2023-09-22 19:02:22', '2023-09-22 19:02:22'),
(34, NULL, NULL, NULL, 'data2', 'data2@gmail.com', NULL, '$2y$10$RubFg0rBg1mTJWz371yGT.D1s9MTU8hrkJ6GdhRwwUGEp04VWY8w6', NULL, NULL, '2023-09-26 20:19:16', '2023-09-26 22:28:45'),
(35, NULL, NULL, NULL, 'xyz@gmail.com', 'test@gmail.com', NULL, '$2y$10$iTR86dq9ywWS84F0In8vUOnwVtKtIzALo.lDmIBZ5cO9/z.Zwy9sy', NULL, NULL, '2023-09-26 23:16:25', '2023-09-26 23:16:25'),
(36, NULL, NULL, NULL, 'xyz', 'xyz@gmail.com', NULL, '$2y$10$kxeRj8A4N1M5oJWtafS5Z.XuDuGp.HR62xL8bhOpF7UmgzryH18RS', NULL, NULL, '2023-09-26 23:22:09', '2023-09-26 23:22:09'),
(37, NULL, NULL, NULL, 'user420', 'user420@gmail.com', NULL, '$2y$10$Hh4DTuz8cOFOKxv4DjJTveDfMopYqEm5YH1NfCjsyFdqhyTdsSvJm', NULL, NULL, '2023-09-27 21:10:08', '2023-09-27 21:10:08'),
(38, NULL, NULL, NULL, 'gyg', 'gygf@gmsil.com', NULL, '$2y$10$j1YGVZqezi5Qc39Xb1.tOucctMqAAk/H1FKricpkLxij91UHF8sYG', NULL, NULL, '2023-09-29 21:32:33', '2023-09-29 21:32:33'),
(39, NULL, NULL, NULL, 'gfb', 'gfb@gmail.com', NULL, '$2y$10$KB33S1f7fAdFgGwGV4.Jfu0Gpdr6FmIGf6OW/7gf8iiWKNRP.AFxK', NULL, NULL, '2023-10-03 02:27:58', '2023-10-03 02:27:58'),
(40, NULL, NULL, NULL, 'test11', 'test11@gmail.com', NULL, '$2y$10$U9NN7pFBKX69bm63w7Taxez4d6LtXdnRQdsY9m9OUm9d376vVBNx.', NULL, NULL, '2023-10-03 18:09:13', '2023-10-03 18:09:13'),
(41, NULL, NULL, NULL, 'noramiller', 'noram@gmail.com', NULL, '$2y$10$mlhbm9kUlvQvLNsUE2eW9.ubNb9VhAjHoWkEVjhwgaLrwhePmUHee', NULL, NULL, '2023-10-03 22:25:04', '2023-10-03 22:25:04'),
(42, NULL, NULL, NULL, 'alex', 'alex@gmail.com', NULL, '$2y$10$/g43Nufbe9IGeXyK40Yl2uC9jyN3BtBHqYOhOvsoOdsw/BL8FsAwa', NULL, NULL, '2023-10-11 20:49:27', '2023-10-11 20:49:27'),
(43, NULL, NULL, NULL, 'Jason Smith', 'Jason@gmail.com', NULL, '$2y$10$YDthVJPzH3EDYtqvOh69je4El0XGf38.1NuPx8pRDQxWJ6Axs3VqS', NULL, NULL, '2023-10-11 21:07:20', '2023-10-11 21:07:20'),
(44, NULL, NULL, NULL, 'newUser', 'newuser@gmail.com', NULL, '$2y$10$pFrzpJkojQXkAEjAlpXdNe56D/iKU2WdiP7Mubgsy5nk6rZjh4vr6', NULL, NULL, '2023-10-12 01:00:21', '2023-10-12 01:00:21'),
(45, NULL, NULL, NULL, 'fd', 'fd@gmail.com', NULL, '$2y$10$OOKNEg.2PhmgKnL/p4lUteEzEvC4vGto81drVCPl8SFqGJRq0BKT6', NULL, NULL, '2023-10-12 18:36:33', '2023-10-12 18:36:33'),
(46, NULL, NULL, NULL, 'mg', 'mg@gmail.com', NULL, '$2y$10$zPbbALRcSZe7NWWomL9uNuGmU35nK.C5uaKQJoaSvktgIsQ3QRTAK', NULL, NULL, '2023-10-12 19:52:46', '2023-10-12 20:12:47'),
(47, NULL, NULL, NULL, 'user', 'user22@gmail.com', NULL, '$2y$10$N.GgZFtK664tqD6G.Uli4ecqeBUYoEenDHksS13.ROAXXIeNhYlee', NULL, NULL, '2023-10-20 16:51:03', '2023-10-20 16:51:03'),
(48, NULL, NULL, NULL, 'user12', 'user121@gmail.com', NULL, '$2y$10$ha2n9YKoUqGGQ8sKfePW3.G9n1BkV6MAYnHaBVnwj/Aj5z8bROvci', NULL, NULL, '2023-11-03 20:42:03', '2023-11-03 20:42:03'),
(49, NULL, NULL, NULL, 'hello', 'hello@gmail.com', NULL, '$2y$10$UXQRf2Pji1.77MkMQzIGZeHjUWN4/U2KHFkNoq6KHZOIjT2QjZeE.', NULL, NULL, '2023-11-08 13:42:46', '2023-11-08 13:42:46'),
(50, NULL, NULL, NULL, 'hello1', 'hello1@gmail.com', NULL, '$2y$10$pCUECI3.SIMYwABztAhc6ucmjLyvpLLfOZtP7D.OLlaNbXLEiBWVO', NULL, NULL, '2023-11-08 14:00:04', '2023-11-08 14:00:04'),
(51, NULL, NULL, NULL, 'name', 'name2@gmail.com', NULL, '$2y$10$Yr.RAwj00xrGISNvCirtTOpQBQpXIWIkA2YQt8UwPjyQyi4JhyuPe', NULL, NULL, '2023-11-08 15:31:31', '2023-11-08 15:31:31'),
(52, NULL, NULL, NULL, 'hello', 'hello11@gmail.com', NULL, '$2y$10$Nc9GVHE6KjxHAsDLDg9e0OMujNsDqzpvxNU94RvobT28FrP41o.Tu', NULL, NULL, '2023-11-08 18:39:54', '2023-11-08 19:09:56'),
(53, NULL, NULL, NULL, 'men1', 'men1@gmail.com', NULL, '$2y$10$maMRjif/VKUL868owPTI2eY8zuJ9iw1ioshXP.ODb3wpsbMf7Nnru', NULL, NULL, '2023-11-08 21:43:01', '2023-11-08 21:43:01'),
(54, NULL, NULL, NULL, 'g', 'g@gmail.com', NULL, '$2y$10$gi3IqAYhSOyvKJChfB.W1Oqp5iwUOxOMDBalo4DXFXw8iUqeaA.Ny', NULL, NULL, '2023-11-08 22:55:02', '2023-11-08 22:55:02'),
(55, NULL, NULL, NULL, 'user', 'userrr@gmail.com', NULL, '$2y$10$ezMczXRoxPuWToyxsr0Xr.xffzB3gKRYNqxOw8Kh7Abv4v9hUF9Yy', NULL, NULL, '2023-11-09 14:35:21', '2023-11-09 14:35:21'),
(57, NULL, NULL, NULL, 'g', 'd@gmail.com', NULL, '$2y$10$zzKJdRaeUyfvuH/er1ZjNuoSAwFykqBe9rtGWDbKQmx9P5v6e0B.K', NULL, NULL, '2023-11-21 00:15:10', '2023-11-21 00:15:10'),
(58, NULL, NULL, NULL, 'g', 'f@gmail.com', NULL, '$2y$10$vWGStfEwPtKr7MtkTwXXT.JvUFYA9MuETADxJaAiQMYO0YFyGqLsy', NULL, NULL, '2023-11-21 00:16:46', '2023-11-21 00:16:46'),
(59, NULL, NULL, NULL, 'Nicknick112', 'rlsakanick@aol.com', NULL, '$2y$10$YuBc9pXjgoVuNGHbuszq9OsDx.GQkMflkBiqIezb.3XSXNdKxtY7O', NULL, NULL, '2023-11-23 13:26:07', '2023-11-23 13:26:07'),
(60, NULL, NULL, NULL, 'user', 'user23@gmail.com', NULL, '$2y$10$kER9B/Lr7y40UzQMKp.qZe14/58vGyVfvw64BsS5WUbA.Rt3eOwxe', NULL, NULL, '2023-11-27 15:35:12', '2023-11-27 15:35:12'),
(61, NULL, NULL, NULL, 'tester', 'tester55@gmail.com', NULL, '$2y$10$2ZpT/3HmmjIoZDa0fhS/I.nNEnue3dIMEkQA78SQoahHBsSHZpqZS', NULL, NULL, '2023-11-27 16:51:36', '2023-11-27 16:51:36'),
(62, NULL, NULL, NULL, 'username', 'username11@gmail.com', NULL, '$2y$10$eBlIOe3WPpNJqFv1hu08Eeh3dbIvSrAFzneP8nEKPgIa/5guoxpP2', NULL, NULL, '2023-11-27 17:54:03', '2023-11-27 17:54:03'),
(63, NULL, NULL, NULL, 'user', 'userr11@gmail.com', NULL, '$2y$10$yCmnyT6SijNbYmXjS7nc5O.fVf9OHwcSIbbvcnHUf9Q7FqMuyku1i', NULL, NULL, '2023-11-27 17:56:49', '2023-11-27 17:56:49'),
(64, NULL, NULL, NULL, 'tt', 'tt@gmail.com', NULL, '$2y$10$oqfyB0WVH36caOSEU2cRU.Lqi0YmcnDTjUT98SEgB0oC6CmHzAkh2', NULL, NULL, '2023-12-08 01:51:40', '2023-12-08 01:51:40'),
(65, NULL, NULL, NULL, 'username', 'name@gmail.com', NULL, '$2y$10$iapmRU.xgVhKkaDRLYvQyO7mvF7uliQAO4HIvbWdfcDp/mS5unLeq', NULL, NULL, '2023-12-13 14:35:34', '2023-12-13 14:35:34'),
(66, NULL, NULL, NULL, 'adas dasfa', 'user123@gmail.com', NULL, '$2y$10$V.Mh8W6JT30XNeXZ6250QueSu/LSCWQtIsYPWGMH69b6s3xBaGADO', NULL, NULL, '2024-01-15 22:51:41', '2024-01-15 22:51:41'),
(67, NULL, NULL, NULL, 'test', 'testuser@gmail.com', NULL, '$2y$10$7x6NOMtjPSjhMC/QcUCUSumtXg6JgJOuBtk1pQBHTCyIiFA5fCFJm', NULL, NULL, '2024-01-30 16:35:11', '2024-01-30 16:35:11'),
(68, NULL, NULL, NULL, 'newuser', 'nreuser@gmail.com', NULL, '$2y$10$5L/8GZEULtvvUhp1plDHLOnEUJWZF.837vEhUqKc71bn3S/h/P.we', NULL, NULL, '2024-04-17 10:28:08', '2024-04-17 10:28:08'),
(69, NULL, NULL, NULL, 'user1', 'mg1@gmail.com', NULL, '$2y$10$mFO8KttLrffMT3HCQVOuTOD4Z2MW.KONq0/HMI7cGIR.0LkEU3.jG', NULL, NULL, '2024-04-17 11:00:28', '2024-04-17 11:39:43'),
(70, NULL, NULL, NULL, 'Nora Miller', 'nora.miller@digitalneststudio.com', NULL, '$2y$10$fHGKyUwGNu/PPvCTY03haup.VCNOnxIys23GrKujV/HlHrKKDUqvO', NULL, NULL, '2024-04-18 16:42:55', '2024-04-18 16:42:55'),
(71, NULL, NULL, NULL, 'user777', 'user777@gmail.com', NULL, '$2y$10$8xG7g/JngRXfN9LOGpcQ..CFpxZVQCrV7EyXHTnU6OHiE7rqEzkHK', NULL, NULL, '2024-04-25 09:44:21', '2024-04-25 11:37:59'),
(72, NULL, NULL, NULL, 'david', 'david@gmail.com', NULL, '$2y$10$C5wPT0xn.Q1yR0gv41/W4uGkbvzU24Afjj55oSqtzy.z38H8SpWuO', NULL, NULL, '2024-04-25 12:34:33', '2024-04-25 12:34:33'),
(73, NULL, NULL, NULL, 'newbb', 'newb@gmail.com', NULL, '$2y$10$LGTrsCPFpmPscRu2RE.MC.Fndva7.o7fJK/zqyVZEkmEle/rTnVk.', NULL, NULL, '2024-04-25 13:03:51', '2024-04-25 13:03:51'),
(74, NULL, NULL, 'https://nick.cstmpanel.com/uploads/users/869651799ba9ead806c94d367bcd0957PayMefirst.jpg', 'chris adam', 'adam@gmail.com', NULL, '$2y$10$sdRl6iGftZI/xINY7APPoe9mLOlkjezhw5pLfaCYqX6rMZFNJjmR2', NULL, NULL, '2024-04-25 13:06:52', '2024-11-11 17:07:09'),
(75, NULL, NULL, NULL, 'eve', 'eve@gmail.com', NULL, '$2y$10$E7Fm./PxarQSQc/mZrTKveCG.aRjTTA6Icx5PvsJXxyKDBwU7A8I.', NULL, NULL, '2024-04-29 08:00:38', '2024-04-29 08:00:38'),
(76, NULL, NULL, NULL, 'chris', 'chris@gmail.com', NULL, '$2y$10$PwBGDdBhcWzgMrk9DuWML.z1y9AE20J8hX.dfoosAstiZka8R93pC', NULL, NULL, '2024-04-29 08:07:31', '2024-04-29 08:07:31'),
(77, NULL, NULL, NULL, 'john', 'john@gmail.com', NULL, '$2y$10$xyrnuj.pNdbU9PkAW0QtW.02SMLrEhJPhg6V0JgWgSkOezA5csX86', NULL, NULL, '2024-04-29 08:34:15', '2024-04-29 08:34:15'),
(78, NULL, NULL, NULL, 'roy', 'roy@gmail.com', NULL, '$2y$10$TzXowxADcbkE/RQqYSpiIuVVVrIvReXxNrHO8AlzRNFyp5O08oSty', NULL, NULL, '2024-05-20 08:30:40', '2024-05-20 08:30:40'),
(79, NULL, NULL, 'https://nearplace.ad-wize.net/uploads/users/f9e96af164b5dd081992f52c11d192aePayMefirst.jpg', 'florence11', 'florence@gmail.com', NULL, '$2y$10$Y9Mj3BdYS6J/XHs1LhcmIuOM.Cq5jrHhU0fsDvEB3LYbboJWX5MzO', NULL, NULL, '2024-05-20 09:27:40', '2024-05-24 09:59:09'),
(80, NULL, NULL, NULL, 'christina', 'christina@gmail.com', NULL, '$2y$10$qm0BFN9SKxbzJAykmvhXOO8sB0MQ9xbEPGlxtqH4puhNijHsBxJWW', NULL, NULL, '2024-05-20 11:42:20', '2024-05-20 12:06:08'),
(81, NULL, NULL, NULL, 'Nora Miller', 'nora.miller@onestopdesigning.com', NULL, '$2y$10$4KzYoLn5fVyXMIGbreq2SuT/zR0LwOlV0LfnF/koJGZ4BRzNUbSqm', NULL, NULL, '2024-05-24 16:30:01', '2024-05-24 16:30:01'),
(82, NULL, NULL, NULL, 'Nicknick112', 'ceo@cchawaii.com', NULL, '$2y$10$QxvA4CSQsja7xCsKDB6w3escfDd2VIdVQYhuLnKvHbLPhEoWpOCmO', NULL, NULL, '2024-05-25 23:32:31', '2024-05-25 23:32:31'),
(83, NULL, NULL, NULL, 'vx', 'vx@gmail.com', NULL, '$2y$10$bS8le.CZnwWELwjTPU7WzuZedsj1mFuisLEgsIDB6UAUbFnI2iZQW', NULL, NULL, '2024-08-02 16:57:13', '2024-12-05 14:40:35'),
(84, NULL, NULL, 'https://nick.cstmpanel.com/uploads/users/a9058a101a3651bbcb9371d547b86bc8PayMefirst.jpg', 'Chris', 'barvo@gmail.com', NULL, '$2y$10$qUkjhxWUJWRD9wnYqTwdUeAT9IiHljeVcS2FD4upMvUei4dJJAsny', NULL, NULL, '2024-08-14 08:00:00', '2024-08-14 09:47:15'),
(85, NULL, NULL, NULL, 'Butta', 'ed1975watson@gmail.com', NULL, '$2y$10$1bQPrtW6/X.5Bvu.0yYeJufCEI2iCT2.g7/DT8wiwCno5/pz/lKP2', NULL, NULL, '2024-08-14 21:21:48', '2024-08-14 21:21:48'),
(86, NULL, NULL, NULL, 'test', 'testinguser@gmail.com', NULL, '$2y$10$extrOxtudTATpuPwAEF50ePXcMeijFtaayBWfp3TjBMDhePvcYcjy', NULL, NULL, '2024-08-19 15:10:32', '2024-08-19 15:10:32'),
(87, NULL, NULL, NULL, 'Mo', 'mo@gmail.com', NULL, '$2y$10$O5hLlrJqbldic9ZRRC31nulUk3PkXnFEohoU7Y2.2UNZE8H6fK2AG', NULL, NULL, '2024-11-11 19:47:50', '2024-11-11 19:47:50'),
(88, NULL, NULL, NULL, 'user', 'user@gmail.com', NULL, '$2y$10$jfr5FpXiOr.vR7J0rAgex.lk/F.IZKRnL6EfPCEHFIbyU/RVCt0PG', NULL, NULL, '2024-11-22 17:57:11', '2024-11-22 17:57:11'),
(89, NULL, NULL, NULL, 'uaiahbb', 'frankmillerdesigns860@gmail.com', NULL, '$2y$10$jNZGIo8qTFARw3itwXQQVuhnocr66RU2QGucTdv4IAATr2k0qNVD.', NULL, NULL, '2024-12-02 19:53:52', '2024-12-02 19:53:52'),
(90, NULL, NULL, NULL, 'a', 'az@gmail.com', NULL, '$2y$10$gtVO6WJ2wg5pd4HsfiwvHegN.Q2gfTSBKbrSmAnJCk2xK.vuUyioW', NULL, NULL, '2024-12-02 20:57:22', '2024-12-02 20:57:22'),
(91, NULL, NULL, NULL, 'hahHBb', 'jajaj@gmail.com', NULL, '$2y$10$CGUE.NaCbKQc9A08X5kbw.oQPWLh53BMxGs7LglSSwsHMZnFaItsW', NULL, NULL, '2024-12-04 22:02:33', '2024-12-04 22:02:33'),
(92, NULL, NULL, NULL, 'hkbv', 'okjhh@gmail.com', NULL, '$2y$10$j3HE4SZQxRwcPCywYKOccuXliYJVUWj/xtsa1n2j2BbkPk3ivE4hG', NULL, NULL, '2024-12-04 22:04:31', '2024-12-04 22:04:31'),
(93, NULL, NULL, NULL, 'a', 'f1@gmail.com', NULL, '$2y$10$Vw3Ni8UVpK4fof2ZKBDv2.uGVcAFepxCTqDxrqWv6AHCBTAWixNfi', NULL, NULL, '2024-12-05 16:14:28', '2024-12-05 16:14:28'),
(94, NULL, NULL, 'https://nick.cstmpanel.com/uploads/users/ea368075d3cf54fc6d29f31ca2a997a9PayMefirst.jpg', 'MaryY', 'myscope2015@gmail.com', NULL, '$2y$10$eNUb1jx0W9uMuP6wEwLZNOUX5mmmwlZTEaVJw/gqZ4BjkClGgB9tG', NULL, NULL, '2024-12-09 18:56:32', '2024-12-11 04:31:33'),
(95, NULL, NULL, NULL, 'lisasimone', 'lisawells90@gmail.com', NULL, '$2y$10$OY22Ool1/6d9mC97O8gTJePkDE.jPYKF0HsmCwFEmIkCy4am/Evxm', NULL, NULL, '2024-12-12 23:51:30', '2024-12-12 23:51:30'),
(96, NULL, NULL, NULL, 'gsmallwood', 'cchgregsmallwood@gmail.com', NULL, '$2y$10$hBycNfLbaaKEwv1A1YaFBuRgvQIpBcbNtoyoEk5GNNbo1PMJISEXq', NULL, NULL, '2024-12-17 20:41:04', '2024-12-17 20:41:04'),
(97, NULL, NULL, NULL, 'Alex', 'alex1@gmail.com', NULL, '$2y$10$Pf7U3jJyaZ4R6aWhYoVTGeIhuedQMKzMCgAxz2y5Y/Tc4.M4x7l/O', NULL, NULL, '2025-01-10 21:57:34', '2025-01-10 21:57:34'),
(98, NULL, NULL, NULL, 'mary', 'mary@gmail.com', NULL, '$2y$10$sjwOutIhxvaplsHrevLfy.VorN84gqE7elzCuZ0WgzY3wASVOzj5y', NULL, NULL, '2025-01-14 11:19:56', '2025-01-14 11:19:56'),
(99, NULL, NULL, NULL, 'Frankk', 'bsmhhzgm@gmail.com', NULL, '$2y$10$aHeCSyBK8jMif5bR/j5O0e/SAq9c.K8LDm.HTT2ULVqKbSGxGMHRa', NULL, NULL, '2025-01-23 20:58:38', '2025-01-23 20:58:38'),
(100, NULL, NULL, NULL, 'Aftab', 'aftab@gmail.com', NULL, '$2y$10$rNskM2MQiChENgvE0NWIxe7P5a6xeKHXMa1y1YBuTfE0dvFx7qEHS', NULL, NULL, '2025-01-28 17:30:32', '2025-01-28 17:30:32'),
(101, NULL, NULL, NULL, 'jajababba', 'nakanabab@gmail.com', NULL, '$2y$10$PJG9VQBLXFYYh6qfdip1F.tAf0wyPOYtR5B9QazI9JJ8shPCCfwn.', NULL, NULL, '2025-01-31 17:44:56', '2025-01-31 17:44:56'),
(102, NULL, NULL, NULL, 'Mo', 'mo1@gmail.com', NULL, '$2y$10$/zB11qQsAnDpD.Vdrqy4cOoJ1S2iim1KmjIKZ85MPg0Nx2AItaFZu', NULL, NULL, '2025-01-31 21:24:42', '2025-01-31 21:24:42'),
(103, NULL, NULL, NULL, 'gkzgkxgkxhks', 'nc@gmail.com', NULL, '$2y$10$jObHLjyJ2GRJL7tcuE3SGeSqgcyMuhEpojGWuuaKAIU7RYuEGyrje', NULL, NULL, '2025-02-06 01:07:28', '2025-02-06 01:07:28'),
(104, NULL, NULL, NULL, 'frank', 'frank@gmail.com', NULL, '$2y$10$y67/HERbvuZOQwtvfqbHNe.D4IqlTphFeX0hKL97.sgzKrZZWolMG', NULL, NULL, '2025-03-11 18:37:08', '2025-03-11 18:37:08'),
(105, NULL, NULL, NULL, 'Do', 'do@gmail.com', NULL, '$2y$10$RG//SYpW8SV4t8iiCoR6susaJkr7wK6NSapJHDwIy4arm5sglYKla', NULL, NULL, '2025-03-11 19:10:26', '2025-03-11 19:10:26'),
(106, NULL, NULL, NULL, 'moo', 'moo@gmail.com', NULL, '$2y$10$RUJ8EN7sYn28.4YSWrFGbOQJgVG/.RS6BXMG.9TRSG98h5SjXLBSy', NULL, NULL, '2025-03-16 14:21:49', '2025-03-16 14:21:49'),
(107, NULL, NULL, NULL, 'jack', 'jack@gmail.com', NULL, '$2y$10$YNPLw5tTu/dhef8k0gV4V.tvNwvy/4hi/nMW5bs468kjWExKUONFC', NULL, NULL, '2025-03-19 07:02:54', '2025-03-19 07:02:54'),
(108, NULL, NULL, NULL, 'Frankky', 'Frank@test.com', NULL, '$2y$10$YRWofLyFCeT7M.e8i8EFLOQH8sAwzob/CwO7NMtvYuXu2xPP.vavC', NULL, NULL, '2025-03-27 19:47:32', '2025-03-27 19:47:32'),
(109, NULL, NULL, NULL, 'test', 'testinguuser@gmail.com', NULL, '$2y$10$TKgHYghDNdziiDAabYInler3ciCdE7PtQSWFkH1CgnTmaKUdNuOOG', NULL, NULL, '2025-04-03 13:17:43', '2025-04-03 13:17:43'),
(110, NULL, NULL, NULL, 'david', 'dav@gmail.com', NULL, '$2y$10$Aqm9dIYvn9viNRwzhQ8uk.nkV9hBEI9Bpw5i2YSb./7APGMNUDjWy', NULL, NULL, '2025-04-04 15:50:51', '2025-04-04 15:50:51'),
(111, NULL, NULL, NULL, '1', '1@gmail.com', NULL, '$2y$10$9eHV1V5CWHWE.lf.lb8VZ.DGPizO2JE9KFG0X5RZewDP9/mJ59DLi', NULL, NULL, '2025-04-11 18:58:25', '2025-04-11 18:58:25'),
(112, NULL, NULL, NULL, 'jony', 'jony@gmail.com', NULL, '$2y$10$NvB8pezly32Yi.rPbBZbyuvkgg0BuoV7cmDiTs.eB5aShmDAnFbRa', NULL, NULL, '2025-04-16 12:46:33', '2025-04-16 12:46:33'),
(113, NULL, NULL, NULL, 'kelly', 'Kelly@gmail.com', NULL, '$2y$10$fIRrWcP2X5LtaX8BkVa3cOkpiBljqAR6ASuWElB70WDjBizh//omG', NULL, NULL, '2025-04-16 17:01:40', '2025-04-16 17:01:40'),
(114, NULL, NULL, NULL, 'Frank', 'frank1@gmail.com', NULL, '$2y$10$HJq2IxCwPTDux7BBsEVHpOG//eS5F7r.PtVZv3M.HG2qtyF5esXoe', NULL, NULL, '2025-04-17 17:34:27', '2025-04-17 17:34:27'),
(115, NULL, NULL, NULL, 'merry', 'merry@gmail.com', NULL, '$2y$10$GbR1uG5OBqXwDZO53ScwBOnUxB/oJujUcUtjG/V.QRuCo94.TGo9.', NULL, NULL, '2025-05-23 13:20:52', '2025-05-23 13:20:52'),
(116, NULL, NULL, NULL, 'daniel.russel', 'haha@gmail.com', NULL, '$2y$10$1vaJF1kKz47ihjazVZnvROONGOHZPB/e4JYGb4H5sSvQ7hbAzKD72', NULL, NULL, '2025-07-01 22:47:09', '2025-07-01 22:47:09'),
(117, NULL, NULL, NULL, 'daniel', 'daniel@gmail.com', NULL, '$2y$10$25Qgan6lSrkzPRggZKo67.RdvKMai9mDzfGfyrbRtKEGDBJ5GV4Dy', NULL, NULL, '2025-07-02 20:08:17', '2025-07-02 20:08:17'),
(118, NULL, NULL, NULL, 'Frank123', 'Frankmiller1@gmail.com', NULL, '$2y$10$cb9hDPmXRmCW7ndugT/jMe4XQGPbBy4NuxQEQwLpEZOvQN7uzDzjS', NULL, NULL, '2025-07-18 20:39:53', '2025-07-18 20:39:53'),
(119, NULL, NULL, NULL, 'Daniel', 'Danieltesting@gmail.com', NULL, '$2y$10$M3lTUZVtp13dH9zqaZK.QOy2UVixDUI9AcN57gq/EOcyFEvA8AUaC', NULL, NULL, '2025-07-18 20:45:20', '2025-07-18 20:45:20'),
(120, NULL, NULL, NULL, 'Final Tester', 'finaltester@gmail.com', NULL, '$2y$10$gMRb/2Zj5fRrNQyHmApNvuZa4TgWIQhnWbobIQizaDiEBD5539ZYi', NULL, NULL, '2025-07-21 17:01:11', '2025-07-21 17:01:11'),
(121, NULL, NULL, NULL, 'Daniel', 'danielplayer@gmail.com', NULL, '$2y$10$u7w3zOl7yX7UBT5Y5MVKCuFi7IKVtOdFwvSOZo5MwLKUaQacUhhwm', NULL, NULL, '2025-07-21 22:35:56', '2025-07-21 22:35:56'),
(122, NULL, NULL, NULL, 'luckyyou', 'bcustard@hotmail.com', NULL, '$2y$10$dddx4S1G25dD0SE7/JAnmulWq/s0C1m/eJCvAoyBl3r2GhXUe7GaS', NULL, NULL, '2025-08-06 18:04:50', '2025-08-09 01:08:42');

-- --------------------------------------------------------

--
-- Table structure for table `user_plans`
--

CREATE TABLE `user_plans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `plan_id` bigint(20) UNSIGNED NOT NULL,
  `plan_type` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_plans`
--

INSERT INTO `user_plans` (`id`, `user_id`, `plan_id`, `plan_type`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'monthly', '2024-12-05 11:55:01', '2024-12-05 11:55:01'),
(2, 1, 1, 'yearly', '2024-12-06 15:13:22', '2024-12-06 15:13:22'),
(3, 83, 2, 'monthly', '2024-12-06 15:43:35', '2024-12-06 15:43:35'),
(4, 1, 1, 'yearly', '2024-12-06 17:21:20', '2024-12-06 17:21:20'),
(5, 1, 1, 'yearly', '2025-04-30 23:30:36', '2025-04-30 23:30:36');

-- --------------------------------------------------------

--
-- Table structure for table `wish_lists`
--

CREATE TABLE `wish_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `place_id` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `sub_category` tinyint(1) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `types` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `rating` decimal(3,2) DEFAULT NULL,
  `totalRatings` int(11) NOT NULL,
  `openNow` enum('Yes','No') DEFAULT NULL,
  `image` text DEFAULT NULL,
  `latitude` decimal(10,7) DEFAULT NULL,
  `longitude` decimal(10,7) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wish_lists`
--

INSERT INTO `wish_lists` (`id`, `place_id`, `user_id`, `sub_category`, `name`, `address`, `types`, `rating`, `totalRatings`, `openNow`, `image`, `latitude`, `longitude`, `created_at`, `updated_at`) VALUES
(1, 'ChIJXXbbn125j4ARgUeHOO17oJI', 74, 1, 'One Medical Group', '1674 N Shoreline Blvd, Mountain View', 'doctor,health,point_of_interest,establishment', 2.50, 2, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AUy1YQ1g-DUe0goxsGKZecWL6recrlv_eiYUNLmAGzwhKlNHFhe-YI9JmMkiFQ2B1U5-txGqL6w7ZylSGyYAqqqjfo4UqS9V1iOB0BJhO6bccqxRUt72FHr4b2jWx89oFjfONpAn0OLmoXjZa6gWe6CJyJw0jwY4M9KK-dKcSapX_Gfb9fhLW2xit2UY1d6KYo3nRRmXIXjwtftZX5PARbJ7n0Y2O8r_4FRORcNxrdL973iJa7AauwQ2Gr7WNAJCGSKw-ER2_WRufm1UOo8QIFuCprLzfVSW0jwQ84xNd0VNu7ToK16UT8ojVU6cbyicbJoz0Za2wCgCV-QDDCom5ZM4GW-VaFo9_ek9bksQ-04-SZkKehT6tWoxDxCZgTstBeyfiVQ3oZeJHbkbj8MbncnpKnYUzy1GL5XWidAvkwFYJlvLFsYJ-uOrmGzvLuhmHLeNPcGrIbFiaMvy9ETefA0bQwzmrMFFJhNyaoG915RnU5PiWwP1-Z4kdEIuze-cjcovhDXTgGkCn29eW1hQeVNpopL1by3pN-jsuIosVA8s7Kyk2ipg4oP4mysMjLXEkFNAw9IhYAi5&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 37.4173886, -122.0789925, '2025-03-12 06:44:37', '2025-03-12 06:44:37'),
(2, 'ChIJN5Nz71W3j4ARhx5bwpTQEGg', 74, 1, 'Sports Page', '1431 Plymouth St, Mountain View', 'bar,restaurant,food,point_of_interest,establishment', 4.20, 3289, 'Yes', 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AUy1YQ2UEDw15YlA6HppKBScM5OQN8kqjvtJ_uIlqD2gRcWW0j1roQxomhylDRjDiS-Sr6DB9dNgT9tBvvKgAAdXweNemgOfYKrAq1vxUgDiiwEhR8ze_YW66df8Yhla08MgdyDsoe9xCxRCUPcIz32oATFFSeidkGeGNDp5dcrI4BeL9ytvjLak97quFaQ9D7r4anFqU06PcFHl00feQnCmvyR3wgE6uDwsk7hHj6-ZHl8XZwhMiasgnH_H1q6B_hDPX5s_MBhBMQ3pUivZ6KMv9S7-gvAf2Y7IFPod6pz-AH_WbHLjUPI&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 37.4161493, -122.0786363, '2025-03-18 05:22:37', '2025-03-18 05:22:37'),
(3, 'ChIJQdgqhjy3j4ARpiK08gPTor4', 74, 1, 'The Emerald Hour', '1625 N Shoreline Blvd, Mountain View', 'bar,restaurant,food,point_of_interest,establishment', 4.50, 137, 'Yes', 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AUy1YQ0slPQAqaaTpwXhmKQ4f3_SBXrCey4ywdSQ-ao6PinEFiIZbPO1yFV10FAzNWyfOctE6JVzzjZxudTciZNyvH9t-qmQ52-XmHAjtfJRJflgklspP-FpqyuJWG3sO1WR5I_5QmeanMh9GQXoy7UtKbKOzBORvPBD0HvZ1un2mwNUv_DLgGytK8OSjdl9Ro8mhSV9ppN9PZaaN8y_JpgJvZwpK23d9YqKm0mkLuy1MVdra3gxXCHiOIh0lcwA1AGE78ZxMI9f5kgK5rv0miWtHFGvJszGbtBqNep_4J0R36t3J4fpQLg&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 37.4168531, -122.0775775, '2025-03-18 05:55:44', '2025-03-18 05:55:44'),
(4, 'ChIJaSwZpn8_sz4RfkrifDmTGgg', 74, 1, 'Water World water park', 'Office # A-5, 2nd Floor, 5 star plaza Block 13-C, Gulshan-e-Iqbal, Karachi', 'amusement_park,point_of_interest,establishment', 4.30, 35, 'Yes', 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AUy1YQ13dGQP8pekhw7KJckYRz8FodqJE5FL7jrDbVUKVL8hVY2aHLbs_qd7QzuEDtROh93w9juej93lR-NqJXZj-GSvvNgWbQzPYeKHLvt_ToU0DPCoIz6yOZw6ss3AfWUEXpHYjzPB-KbRRREV34bwpeBwZeIJXXuz3QdD2tPXrZ7F4kB05vxEQuHfC7QOEZxgAI-q7PLwm5YNl7iK0wFyXNVk2W4Go0W8bMinrXgMqJCOg4YOVDJg5YUUr1P4JFeEtDDYKPaet4nXuOqd4ZIEIggPzhMC8-170UUGzOmBZ4om1Sq865g&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 24.8802872, 67.0232306, '2025-03-19 05:39:57', '2025-03-19 05:39:57'),
(5, 'ChIJm3pCDpw-sz4Rj6Qm9iE1Emc', 74, 1, 'The Bank Of Punjab (BOP) - Shahrah-e-Faisal Br. 247', '9 Shahra-e-Faisal, PECHS Extension Block 6 P.E.C.H.S., Karachi', 'bank,atm,finance,point_of_interest,establishment', 2.90, 9, 'Yes', 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AUy1YQ38GZeyrx2vU74RL65htoI1C0t4SiNsPku2TP13At54LFdFOod-LE2PFrh6KW1aWNIqgcmcM9jiaXjFW250ykETMfP7xTAx3tbQFCWdwDBdUVDeEqyAr46ZmqlhRvpfhIMrrTg2MnbtnAfMSZBsnCXYk3r6SGvOp6KhQC_dbcubpdOnHsYHcn49NKfjw2bRpeY9uAp3pfinE6DdTMIDycna8F3OC1weBfMUZrDdxLYZUBdMq8xzmj5YndLpHFSXET1eesVgf1_EhSZ4bGMsW2ikODyD0UUBD1A_YNS87wz_tQ95_1M&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 24.8600958, 67.0631365, '2025-03-19 06:55:03', '2025-03-19 06:55:03'),
(6, 'ChIJ6-NqVZk-sz4RWwR3zyR4Ivk', 107, 1, 'Me\'nu Cafe', 'V367+9QV, Block 6 P.E.C.H.S., Karachi', 'restaurant,food,point_of_interest,establishment', 3.90, 14, 'Yes', 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AUy1YQ2dw5F15db4I0B9KFHiFhg__UXlPXuSdz-iLqhCbqiqYRELkhAOwy2f87crB8h3rDzDNWEOqkbTa0O86qOdlrYk08kUw_q__hRba5mOtlwar4HHAyW_ya27laQZKmvmlcE5S8_E2Tows3EbLKnmcdV9X8ABU6JszzHFnLxbKvqa86PP2B1avLbf0-B5aHc6zliKRO2lX01vn0o4JeHzYAHg9j3C1oQtQmYA40gAVCjd6U-m6zJqX7kPCHVfS5JYzsEN_mjKWpL5rrmj9k4cAFu1gMf449zyhWxOi-XDBMfQMGQ8TcA&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 24.8609966, 67.0644170, '2025-03-19 07:05:17', '2025-03-19 07:05:17'),
(7, 'ChIJz-FfqQ8_sz4R3kWim15-aCE', 107, 1, 'Ajwa Cafe', 'Plot 14 B, Pakistan Employees Co-Operative Housing Society, Block-6 Block 6 P.E.C.H.S., Karachi', 'restaurant,food,point_of_interest,establishment', 4.80, 5, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AUy1YQ20HYf-f7jVEmjGStEj9d0DrqAu0ZfmCWVf2lU-YHDhsDwnxsLTidv9s2vjVrvjgzOsrR0Ya9k52PBVd0dZhzlqhXr9DvR6B66VFVqQB28ADe69SJQVyQ0xhN2vXVUBTw4DFFZKrfxYCTeNKpGrnBzkC45HXEZbjx-ks8-8_W714KEPwQ-D6vtOL64vmHZ9MK61OUcmBMUltC3dXYF_yDHuX5BOzShRMldH83u0C3xgwBAx82IdcptbC2FAD31QqhnJfbLORWp9aj7wqAbBKYuR2c0oEQt-_LvYGVmuwUbkzile6LM&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 24.8602738, 67.0652882, '2025-03-19 07:05:22', '2025-03-19 07:05:22'),
(8, 'ChIJo40E4Bw9sz4R051R9DkcV6U', 107, 1, 'Cafe Madina Hotel۔ کیفے مدینہ ہوٹل', 'Plot 142 E, Block 6 P.E.C.H.S., Karachi', 'restaurant,food,point_of_interest,establishment', 4.30, 131, 'Yes', 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AUy1YQ1disajFmtfcxruN4UOI8ABxS2C_9SRCxks7wx4r2AgeQmuGmoFreDfUcOyAsk5rZcLR--QEQyX_PFwi3dSrsBWGXaaUW043_JFBIK32PfiyOAVqVRxxcr0-PiY0DVsQtUhVngalbLk0UYHQD8a984_9yMpI3MTw5-NA9jpW3PxExnGGdTdvnXrjMZiwX98c-Wk8wced-wbcqCrbP6D2HEb6Yau4gDW8WewVG6vmbgAOge7yNK_TvuRHXv8moBrcNOebIw48BwzYepUZ7aNnROKHENH0nVvX5Np0Vyr18qzNvqKRPY&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 24.8550268, 67.0634152, '2025-03-19 09:36:57', '2025-03-19 09:36:57'),
(9, 'ChIJraLJ8SfJj4ARaMG3h5mLzlo', 74, 0, 'All Care Plus, Inc', NULL, 'health,point_of_interest,establishment', 4.80, 5, NULL, NULL, NULL, NULL, '2025-03-24 06:18:42', '2025-03-24 06:18:42'),
(10, 'ChIJc5Fy7ha6j4AR9vtGV3tdcnA', 74, 0, 'All Automotive', NULL, 'car_repair,point_of_interest,establishment', 4.80, 5, NULL, NULL, NULL, NULL, '2025-03-24 10:25:50', '2025-03-24 10:25:50'),
(11, 'ChIJA8vQfQi6j4ARflqhrRaPfxY', 74, 0, 'All VW & Japanese Shop', NULL, 'car_repair,point_of_interest,establishment', 4.30, 4, NULL, NULL, NULL, NULL, '2025-03-24 10:30:46', '2025-03-24 10:30:46'),
(12, 'ChIJf5op2rm7j4ARDO63dEfEct8', 74, 0, 'All Things Asphalt Inc', NULL, 'general_contractor,point_of_interest,establishment', 5.00, 5, NULL, NULL, NULL, NULL, '2025-03-24 10:38:49', '2025-03-24 10:38:49'),
(13, 'ChIJo9VUSzexj4ARBY1dWKsjRak', 74, 0, 'All Care Pediatrics: Molly Rad, M.D.', NULL, 'doctor,health,point_of_interest,establishment', 4.60, 5, NULL, NULL, NULL, NULL, '2025-03-24 10:40:14', '2025-03-24 10:40:14'),
(14, 'ChIJIV3iygmjj4ARLrej4fnKACg', 74, 0, 'Stor-All Storage', NULL, 'storage,store,point_of_interest,establishment', 4.60, 5, NULL, NULL, NULL, NULL, '2025-03-24 11:03:42', '2025-03-24 11:03:42'),
(15, 'ChIJF3JK-YjKj4ARSKO1JTc5I78', 74, 0, 'All Smiles Family Dentistry & Emergency Services', NULL, 'doctor,dentist,health,point_of_interest,establishment', 4.70, 5, NULL, NULL, NULL, NULL, '2025-03-24 11:21:59', '2025-03-24 11:21:59'),
(16, 'ChIJ-T4M1RI1joAR5YV_I57ZaXk', 74, 0, 'All Star Auto Group', NULL, 'car_dealer,point_of_interest,store,establishment', 0.00, 0, NULL, NULL, NULL, NULL, '2025-03-24 11:37:02', '2025-03-24 11:37:02'),
(17, 'ChIJs-JGWqiwj4ARSCUZWmywZ_Q', 74, 1, 'Meriwest Credit Union', '580 N Rengstorff Ave, Mountain View', 'bank,point_of_interest,finance,establishment', 3.70, 4, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AUy1YQ17N54bc40g5v5VIJQMTAqnZcD5L8YQlXZAT1VzPcG7NA03szCoEiPrHBvBkpqcwKMmbou8r-2eJVad_wkDmpWzpdIFjA1ndL-97iCZHn-4tSVJHpEtLa1RYwu5NqrAueZlt4crmsaA1rl1kK9EWAMQKAP55m-pECeiMsfYoAU68gmMLiV8yjLGoHGPgcZ39BjC402bEe42d5wh3NECHqgllCthnam4bSCJSyuEFf6sLY9-aKesnoihZywVwHmjnzf1bxNAWwgRJjgikeSINaehNcewYM_XffjTQCdS08787pkiY1U&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 37.4114017, -122.0936527, '2025-03-24 11:41:46', '2025-03-24 11:41:46'),
(18, 'ChIJIZVz2xq_j4ARffJLRFXvzzQ', 74, 0, 'All Smile Dental Care', NULL, 'dentist,health,point_of_interest,establishment', 4.20, 4, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AUy1YQ3w0M36r7IWOLOf-G1luZfIqvU6uv6Ct8qOAonb7wFBAArA0P7wyovB1FS9iQvE8LbZmopUjGpvP5TYMYkHb86lyHtHFBPFWStlutTp6FGgMKKYK2fGCl0A1dOZ16zdtqxGg9hS_HAPoTzofW4rewmSK9lFaYeWTCIvM5QnVdTEXXrTP76FqiBStHl2BfitdX2zeVIFVE4g6m2sQWJYztggD_Xa1EsB_8lCUxB8zg2965U8dK_i3J7QNWwc6MbKs4tD3b1KeOwpO_vok2h4Ple-B9GVJLeS0SThI8qbcSNdvxVwP10&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', NULL, NULL, '2025-03-24 11:42:59', '2025-03-24 11:42:59'),
(19, 'ChIJV0UJcJ6wj4ARItiTAWrbofY', 74, 0, 'Bank of America Financial Center', '384 San Antonio Rd, Mountain View', 'bank,finance,point_of_interest,establishment', 2.40, 2, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AUy1YQ3qBQYqtGpkrPGm4G4UDIeEv6KkDBcVG0tT4T3tBebCETzZHibq680SZyFAJUtXFaTv6H3KPAVMs93pmk2qgkU4MfLXf1Wm6SUHzcFOFnEVr5g36eSbaURO_mbxWISmOPOdrdzzNoRjYauamn2m5l5Ng6u1-AUuqYZHm5o5_acNTJg1wJWeLwFxrKHno-tmQu3NprUqGuNdduY1LiPX8o_XXlCYS3lpp7QdUPPaw8Kqwh9Kl8HlCiubr_7a2AS3lMHAucGVRsfKjPp7R8TNbpt8aJt-cDsFp0dQhAwGJSnz5-zraEo&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 37.4054450, 37.4054450, '2025-03-24 11:48:23', '2025-03-24 11:48:23'),
(20, 'ChIJaVvPDMA-sz4RMMu2XOplN3c', 87, 1, 'Quetta Alamgir Hotel main branch 1', 'Alamgir Rd, Bahadurabad Delhi Mercantile Society, Karachi', 'cafe,restaurant,food,point_of_interest,establishment', 4.30, 5293, 'Yes', 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AUy1YQ1f-EG87PRv4LSqMLia7RfzrfhFkrwPCucRjWzdS-koEzU6ww8eTec0Sa7-tRTx2gd67Hc5UazT4J9CLlwdNXWkVTu3nxOWE8_HJkl6iBYyzXwfPrPzCRAmWR97JhBT3FlOqA-_dMXw0iOuNuOvRO6Yh47imcJIlcNdMOp2jbc1pc8PWTdzy1WqJlDWJ1Y-lSEx4TnIsIjHgKOP9uG5gF7OQtxEoEKmWTgxlG-zb1-HgccRUZpUrOlYwi7Be0UHcVzqmghgXy1SCHinnCR9mqHQYOhTQa69ebqn5XDhKmg_lZWiNPA&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 24.8792570, 67.0717673, '2025-03-24 19:13:51', '2025-03-24 19:13:51'),
(21, 'ChIJOZipky8_sz4RXsKHzEu7Lx4', 87, 1, 'cafe afridi', '3 block, Bahadurabad Gulshan-e-Iqbal, Karachi', 'restaurant,food,point_of_interest,establishment', 3.30, 3, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AUy1YQ2wkh8yRtBetE2IsctexVGfxj4Fs77lUa09AdevpEieJSqRKiJ4v_mVJDV6haoISGP1X-kYVeks3_xaOp2812W7ncKuWm06j0q-7thUzZlHzrAuuuXwndfkGv5RoiXzuHelEnTqLZRf1nluW0ZMI0ECLePUJToGMSXBQlngqaCPUc0auFFUzbZh3D4PKD0MJb_BS8wxswt9nOb6tAP4pFCYZLWCmdwlgg8pRiIPONf8z4ivIezBQiik3p4CnQxAzlOCjHJLMslpfxsSYLM0QYGHSpFlrNLpd7is-oJmab1x3mMH&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 24.8785184, 67.0678599, '2025-03-24 19:13:55', '2025-03-24 19:13:55'),
(22, 'ChIJrVFuXgA_sz4R_RnOmobwVMk', 87, 1, 'Sizzle Snax Cafe', 'Plot No, SNPA-66 Siraj ud-Daulah Rd, opp. Naheed super market, Bahadurabad Bahadur Yar Jang CHS, Karachi', 'restaurant,food,point_of_interest,establishment', 4.60, 19, 'Yes', 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AUy1YQ2u2suM-2nfJJjsM6hSnW4oSO955E0bqRPJj-CxMgxLKI6vW3uliYoFo_H7jTE_AJuTYSbrJvBbOP3FA-W0qVG64t0nx7I0v2LuchPjvu0YizUO6nGm3uZys7FGdTCMjY6LqD6hO22pSHaNF3v1SdAHW4FPaQkE6QmdFONdJ7V7nlSimbIlrgd04O0e8zANNIVxt3Ye9JTpFwSemG0d4iVidmowW2fte-DYuajiakvYKFFF9EsCnyBP4J6F6oH4CbefDK47c9sG03Q3lEWnPnmVAcmgPvFtoVggGjM0aHmIzdCelWY&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 24.8788007, 67.0677848, '2025-03-24 19:13:58', '2025-03-24 19:13:58'),
(23, 'ChIJMw6Cfq6wj4ARxoadsSjJ0-U', 74, 0, 'New System Electrical Services', '345 Sierra Vista Ave, Mountain View', 'electrician,point_of_interest,establishment', 5.00, 5, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AUy1YQ3VcqtkCaNrnPwnW1AqhOP_wgCx7SDi4Fidif005xpLzmJxC96gX9-JwdR7YPYfDULMWnp2RG2akkzGO-FfA46EQtdxGkt0iTpS2g8hl4Ho23EEvc2WfI4PXd1u4SkUsGRo4c2FA2GGUh10oocedBMlMqo3zc5bY17C0AP1MBgKZHJcBo6iciG6We7Ox8TomoWpPMGKtswQtpODBREslLeU9oHUeScCt-U5dqj6aiyokb6n61DVRVMkQfhZt5qAFnDRbNeMKz9levO6TsLLFJPS5KxMhczNF1GLo4GrIADgCMLRGBw&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 37.4064032, 37.4064032, '2025-03-25 04:25:40', '2025-03-25 04:25:40'),
(24, 'ChIJsW6nE1_Lj4ARoXa0k0ghfnA', 74, 0, 'Flores Electric', '3687 Enochs St, Santa Clara', 'electrician,point_of_interest,establishment', 4.90, 5, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AUy1YQ1tpelqtIu3JE-4ADwvyt1gyo4wWt-bAwEO594b8IKItBdnQ8guyZqTYozQ3pQrsqfvljLhR5qfjDT2vtbB31PDcf8S-Cy6tebxRXYSXotCRkmp9t0ec4Ey5oKld_3zeQ9s0Hw00BqrFCO_yGfOI36GZmP6iNV_iBz0_nphvzSbDNC5E5z55sUdkIYvRumCA33m5a0wgKrz0QnxQ1zC7b3eWgirwOHR1XMpUYuLzVVHCddV9nQtqSch-_5aLzgktlKDlQ_TdcCU78xkNUCoQQ9jxKOfS6vkFWUexs_W8NPpmRD0oR8&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 37.3771585, 37.3771585, '2025-03-25 04:31:39', '2025-03-25 04:31:39'),
(25, 'ChIJ3a3HrlCij4AR9OZVyinL_7g', 74, 0, 'Go Brilliant Electrician Redwood City', '635 Bair Island Rd, Redwood City', 'electrician,point_of_interest,establishment', 5.00, 5, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AUy1YQ33kKrJd-e5Ft6fDzzctidn4K1mO5wiVI9ByaIk2Us7SdOC4b9C4PYfoL4Yzzdn7d5s23cTircZmPlp4FU19PzictX5wsaOXLSx1W5LY8WJtktDaOu9NecBtW4GD062wB-wmIZSbHSVdp-H5adLN2rE6YGW6UTFAASQtdYhAJOH8E9wjWYpF3seSoZPWdYYNlpGn7Sn7jEdgZpzyQ0AmD5h181NGnODypIE85AfXNSaHptb40SZ-8rMm_epcAJQyMt7AgtY2didmMKqACwKGXEPgqWzGnntzxh9F9DElGhzhi0_Pcg&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 37.4969141, 37.4969141, '2025-03-25 04:33:23', '2025-03-25 04:33:23'),
(26, 'ChIJq3OfguvLj4AR2DtTe7qqOH4', 74, 0, 'Casino M8trix', '1887 Matrix Blvd, San Jose', 'casino,tourist_attraction,bar,point_of_interest,establishment', 3.90, 4, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AUy1YQ3oY5BVZLCSWVc31hcwG93s0C7OPTWMcOCVvFd78J72AhgDtaqfNPdGHhNzkVfG9HSHMs25mJ5w6e6bk5AUerY6496-mWZY3mLL-T1FRQA5IloCYtaKUaaXawWp7vjH0okWdSgHgn7ApvU2HPlmTmDzAtkpVexo96mj2Yk6wLH85yo-uLHiSxd2enLdAGaYMPQSnGD7c1nfpnEa12mpfl3Lnoapb53BbqEQeTF2HL1YisZsfq3jj3yiEBkrul7Uc5RBnyy4N25Fyp6yCdR-485t-3xwkt5Qjm1Sxtc08tYlDUP3SBk&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 37.3712423, 37.3712423, '2025-03-25 04:34:20', '2025-03-25 04:34:20'),
(27, 'ChIJT7lnnvLLj4AR3ip7z_6eqrI', 74, 0, 'Bay 101', '1788 N First St, San Jose', 'casino,tourist_attraction,point_of_interest,establishment', 3.80, 4, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AUy1YQ1UMqYHVcF8YGooM9sTbFgRXOG2eF0uUaHGgI3OYlCiHa3cjFB6luWUVPlVjUCXCE9AwF-HePeZNM7uU63ckVoiY27OL53MuX3v_23d8knNmKNEfWp8GOGj2_-o6lHsfBLY7_K4aOEu8lZOzeg_swG4ePlceMGEWAdSSe8F3telysqNqhYyd6LWACwPtL2UPxvkssonHyJYeQ-Gii09XTeK-j1-Fem15XjPLvV5OwWQmP9QuZFOfznVXJlOp3RMs1swukiJscBaHLe8-iI9bW4ujQ6RJ7lsGLARy53inCJa24C81gA&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 37.3696404, 37.3696404, '2025-03-25 04:35:17', '2025-03-25 04:35:17'),
(28, 'ChIJLb5hFteQj4AR0varXOZtIpU', 74, 0, 'Aces Up Casino Parties', '3233 Whipple Rd, Union City', 'point_of_interest,establishment', 4.90, 5, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AUy1YQ1KEoCWSR1eLsZ-DnZqhOI7iFw59GIzT9NHOCRJ6nJS-DQVo4BtW5uD5zRUXKN7PIdn5sSlF7Jqj0jH-govO9lqJDLgt_E0oaKat9nAzRiGgnAwWKi2E90AtDGACzUOyW72HW-IfD3a9fSglL7ULyMBPz765F_GjN_-4AlX3LwHrc_fLtP-L4eEq-3V90Y70Rcb-1ZdguC_mOx9o66AaXO6Z_Dfl6xMmbF1yQt7lkAiSpWURQcw38gfvLOu7EocADT9kpo-xEW1No4ZnNMY_cv0dDmTWsJx0c0FqRKaNNrnMzMYS6I&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 37.6060543, 37.6060543, '2025-03-25 04:46:01', '2025-03-25 04:46:01'),
(29, 'ChIJ5VX0aEmij4ARy9cHZID6Juw', 74, 0, 'Interstate All Battery Center', '570 W El Camino Real, Redwood City', 'car_repair,point_of_interest,store,establishment', 4.70, 5, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AUy1YQ1wR_xv4yT3Wjh3aqSh4PRkFmQJQsCMs506BbSRHehzv3K-9B-NLUMLfA55qKdb7DjTCqiBPP3X5Yn-A7_Y0Tr-b8XNdQUfjA77BDTy3AR1ESwj9wCD8Sy_dba98VeU_DclhKAIP6lI-cfiT2gj7xwJnH12ANhhc3wuCWDRpW1GwBUbP-CESrnCfPiaP2_QKbKlxmxuljlJUiMCf9zpwFNXDNo3H3kyYzsGCj_4ohSLeH1ohJibVYHt-rRmzr6rgAzoN5b4IBENKtQoQJ40BIls0XibAsOEzl2ODfj0i-u_ZrgLX6w&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 37.4888432, 37.4888432, '2025-03-25 07:17:14', '2025-03-25 07:17:14'),
(30, 'ChIJg5Qfgjm7j4ARe7BWaXqVl3Q', 74, 0, 'Bella Beauty Salon', '315 Hamilton Ave, Palo Alto', 'beauty_salon,hair_care,point_of_interest,establishment', 4.40, 4, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AUy1YQ1INQRW9e9M_KWfTANNOIhZKNY_JQNn-2zADo0so5HJTkDBz964SU0TouNtkF-rEXS80Fhpt5ZJtC51tGHElMFR2kKeBqGJLwtVxTL_l4eMKaYbQsQKCZn46Sz7jvO5Kd4IvsjfrJnVuRPzzoH1khLC6O6cW4FstbsW54eAUv4jcxLUgxTVhzDKonh6pjTRa3YZnuCTMPX0egqz-XG-WyDGagVl3Ko3nLSyG2VRPinIyBz1-nLA7warjlhpZkg6tfzdjWtYA6U6xB158ztW2vPe3BDeyoC_sVpwIUemza9Gj4vU-Ss&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 37.4453963, 37.4453963, '2025-03-25 07:24:15', '2025-03-25 07:24:15'),
(31, 'ChIJGUI2Q0G3j4AReKMPEJb1pE0', 74, 0, 'Leo\'s Beauty Salon', '829 Leong Dr #2025, Mountain View', 'beauty_salon,hair_care,point_of_interest,establishment', 4.60, 5, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AUy1YQ3h09nKRq3LnmXGaYIK-SQn0_fOXDYjLb3WBF7OGwhx6xs1XMl041zk7V9cSiZIjMzCaX05qVZrr6zLbQRZl2UpA_kdLtxjH26pT521avksQnbRFop2KqOyfWwPU8_IVnfc8M73Rwd_zUrMV7A4EUPk4YHkSRordAt9iZLpYau2rmbrTr9nauuiZW1xwENfGf2c3qHn-eUtlD-ZZKka89IPKsnX6Jm-5e-jeKs6tEMC_hwYVryIyW8yQx7LKZZ7IMq5q1yHHgYhktgkexWA5gfqQMxSVEv-x0vlBboqdQbtvJaH2i0&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 37.4056937, 37.4056937, '2025-03-25 07:29:57', '2025-03-25 07:29:57'),
(32, 'ChIJqdBD-u-1j4ARr9Z7sbQFuj4', 74, 0, 'Clean & Beauty Salon', '1053 E El Camino Real STE 3, Sunnyvale', 'beauty_salon,hair_care,point_of_interest,establishment', 3.50, 4, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AUy1YQ2A28gEWWjdGfk9RD1t96_0ytIJ03bRREGx1rwOmsR-4GPw-tYdoo6stGVPfIRCCc6qfp4RFSH6zWNai4CN72JXWMoT0C7Sg2TF48YLUCE4x_bw5ZD028exmh-nzcyhdxKgY-ANHsiWM3KrGM6cBN02y0vdYlGM7l6Ybaf3KpdHtMGA62J0GzugtHcbiS9zbwEXPfgACLnkknbXTuZngXNikr9i_r9xJERP6gXeGs1ZC69Ae2FZSFJcvLceJdaOq1nhmirJFZ2fk4I06OYCzIc_VHTvfl7GmSvrflbOPJ9znaYBlU0&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 37.3529805, 37.3529805, '2025-03-25 07:35:39', '2025-03-25 07:35:39'),
(33, 'ChIJHawgZi4_sz4RDMjKoe4t5U0', 107, 0, 'Rajpal Dental Clinic & Implant Center', '61-F, Block-6 Karachi', 'health,point_of_interest,establishment', 4.80, 5, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AUy1YQ0XPvphOHj5c-RzttSHH9nE-YdL7LS5qKwzVUMWIP1OHfMq78kj4oKc-LtLA40aHj1r__xuJse0Vm_3NQRuEMDf_hOYwWACEtRSXj0Eq_zx1Ma_LOsHxyQZx84pLuvdqNJKvmh95giiZg1JoZzqxbgDjn_-Hb1fv1UtYbpwLoDloqV0GKPaB1RgCbhMhcFREhIC7NIqLONuaKyKLMvaTMcILvTfq2g0BC1D_CUGewmftQhmmoZIwUygoTv8-d8R5WqmVtIowhA8QJ_34pFcjZeYrDlPSVxls9f85KAts1h3wE1JAug&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 24.8558235, 24.8558235, '2025-03-25 08:21:57', '2025-03-25 08:21:57'),
(34, 'ChIJH2ayZ4Q-sz4RAJFsIcsndHk', 107, 0, 'Dental Diagnostic Centre', 'Captain Fareed Bukhari Shaheed Road, Sindhi Muslim Cooperative Housing Society Block A Sindhi Muslim CHS (SMCHS), Karachi', 'dentist,health,point_of_interest,establishment', 4.80, 5, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AUy1YQ22rR1BpSaEQqrjczde5A502w6-TPJOaudMI5usYr8VszcZBMl_fqvYQcWGY21C01B1v_5vloLp_48DkOJceVXSDyZTm55sMk1zw-Vh_5RkyiLTtx2ZuwT_mNbONdqOgTWnbvyX0tqmCRlgePIwKWUg8rv1PVm9Kt_24zOsbTlW3r0L_K3hg9VIsplgKo64CNDgYcwy064DRiTzQ9Aa7yWW7BK_i10i5HQml2tOEK1yh-4mbJ_aqqWYukWuQZCqtA4D5tr2Vr0RMXZ1ifrKM65l02vjte54SnbljLUgpxgiG2SHL1Y&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 24.8605455, 24.8605455, '2025-03-25 08:23:13', '2025-03-25 08:23:13'),
(35, 'ChIJTdzOu-W6j4ARgg_5a01UTyg', 74, 0, 'PerformanceGaines', '3788 Fabian Way, Palo Alto', 'gym,health,point_of_interest,establishment', 4.80, 5, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AUy1YQ1iNSQMlYwyht-Ij0fd3zKIor7Fs4u3COOi1EykC3sz_clCrbJRUaflqRiHe56u0PyzEe8FC3F6DhqNIeHPzfo9cAtxbnbuxDNvQemoTsgCabpQCnPQa4aBK4BPUPGGgDyDqSFydLxZlf_knQvBPbVkXbxLi1X669X3z0DmlWOjEn7p6649uG5GzbAjW9BKgBTkhL3nvT4GldHmNDKMBsgrV01XTVXxYd8_UKnFqsnV5SANosDtAZAL6fv7JKaanDPpA70_r34B2UWC9CrY7n7et2jaNFOkkoj7cjGH4A74AOvRVGA&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 37.4301546, 37.4301546, '2025-03-25 08:43:56', '2025-03-25 08:43:56'),
(36, 'ChIJrSNqOOW6j4ARZSjAYoVsGrw', 74, 0, 'CrossFit Palo Alto', '2598 W Middlefield Rd, Mountain View', 'gym,health,point_of_interest,establishment', 4.70, 5, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AUy1YQ2UJM5eRYbQ2Vj0D-R_vxXsCVqjF0Z7STuQGpSnlJ_eJX2kDcj6xkxgpQiHtffgVcl7LpSvInh6o6z_Ru9zR1i-ElXLb1fzdRvtqT_IOfO9P6qt-JG97k6LCgZmwTvYwr7dY-lgtvL0WV1kP0DnSGgpQowhjHejX0V1p_yC-ewKjJNOt9PN2fqf1hzycY-3Q1nArutk29ENGf73AJKMcAyf5UU0pqwHrdoeSh6u2LTxpA8hMHWum9FtFKoWUeCCtkU3Cc-g4yheQ4zpB3T3fOLNUmnuiDlcvkyelP4QLOizn3YkxT0&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 37.4158819, 37.4158819, '2025-03-25 08:55:52', '2025-03-25 08:55:52'),
(37, 'ChIJ299w1Uq3j4ARCa59ztFS2Bo', 74, 0, 'Boss Barbell Club', '241 Polaris Ave, Mountain View', 'gym,health,point_of_interest,establishment', 4.60, 5, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AUy1YQ32eUbKcWG3CsLp3qBVxFgGvtEOX9JW9gOPMldwOvkGsczdCG90DW_7TnfmSUFA_6-4jnRc9jJa0q3SBNGYyrFnv0U-zZAJqEKQkO-zpsgn7jHB6Pjqz49QJEgrLn-J6EEDsFSNMeeowzS2KTM9612e4Oyo3AiCkr7OxgLnY7vSV_X2gLyfjQRUCnxIi5tCDuntpQi6nwZavaZZPVhfPsHOU92vz-ysvZdlv-8IXImyFhJrnJKUl_ennuY35dA70TFoSY3-Cf1mD1qzmFJf_v2jFw_JtrG8-eIWf--UfpjMyzyd4mI&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 37.3986660, 37.3986660, '2025-03-25 08:57:15', '2025-03-25 08:57:15'),
(38, 'ChIJ2eqIXUO6j4AR7nbAZeXR9Fk', 74, 0, 'Palo Alto Family YMCA', '3412 Ross Rd, Palo Alto', 'gym,health,point_of_interest,establishment', 4.40, 4, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AUy1YQ2ryFmYopbFJ_IsLRgfDYlvuV8SLqoDIH6UeLlLXfZuNPaGVp0m_p_iVID3LQQT5CQW5gRVtgkhiqvyZGRbpAmeSeeTLtWnT48APqSQP-JpfVVX95r4vnGDq8nrgCOQTPKh-CRSwO7-rklHdLJ4izJPcFcdodna_-22rXiLf0hAnSyDmSivoCp0SZPCvppDLCMMqBCtoUhci6DskMzES79KEthCiPAuO5wty4ypMMafPaDdgKGWNwMDqzskogOuojNuxlxWJRrehT_giCTPHnz9M7UJ0CBiXJb52HcbMm7EzSCJYVk&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 37.4283512, 37.4283512, '2025-03-25 08:57:51', '2025-03-25 08:57:51'),
(39, 'ChIJ08aX4Zewj4ARmLfgZV1hcJI', 74, 0, 'Palo Alto Medical Foundation', '701 E El Camino Real, Mountain View', 'hospital,health,point_of_interest,establishment', 2.90, 3, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AUy1YQ3Zu2z20MDDemORICXlXrTdzCnCPUEU_ZvaPOFc8tCQzhmgd1u2MUfq0T_3J_iRWKzAAXtk1k4eWu9RTfXpK37Xcqn6Q-z49u4CdVfxKheX_OrJpVjUWy-jwd4QBaOGZgERTt0pigWy67edYT83mhRYRI9aapxit6JU1PAJPxjGoE6uyUv9KS48_Y9h5JDJqlZFWEc753LgP5hPbbq9dVrFv6BB-J0hnNOe5iZFhWbGlAtT6GaK-NhQP9X6quiRw5lw4uFlgHSAlAjAl36dqmNuX9RlL3ZlnyYmBzxaB86gwYn_L18&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 37.3766062, 37.3766062, '2025-03-25 09:01:01', '2025-03-25 09:01:01'),
(40, 'ChIJyQF0r1m7j4ARnoJU9meS3X0', 74, 0, 'Menlo Park VA Medical Center', '795 Willow Rd, Menlo Park', 'hospital,health,point_of_interest,establishment', 4.20, 4, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AUy1YQ2Pst8f4w0kG0FxN-WtbpVN4Fwwl0XzW3ZECcwB0RRZCY5sj9hPbkQOIpjMsOsvbkWnuxtzbPtcM6Ohc__HbDBWJbbzDTa2T4_PmhIOx8n7cOKaH4UcdYMRHzMw8uDzrv-aq_AGI0k1uk59OpGjamWnWe7V8RDiTOw_apo6FNsyzJamBaS1P709GiXTx_06HunZTxv7ufGOJZyA4P3Od8Wxlmk7xac8qwzeXrIizvydPlCfV8W8qVKPMeKZokiJEYjjLp_HLFImBuxFIhj3rL70_vwtSGaAPtT9JprxQbFc0IOGwHw&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 37.4653720, 37.4653720, '2025-03-25 09:02:33', '2025-03-25 09:02:33'),
(41, 'ChIJRQXW2NKkj4ARXdMFzNTkSug', 74, 0, 'Stanford Hospital Y Clinics', 'Lane Building, 300 Pasteur Dr, Palo Alto', 'hospital,health,point_of_interest,establishment', 3.00, 3, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AUy1YQ0jZq4yYi9DdgGAmspvHa5s65PLMkOnAfv0vdm5Yd9oAXnhaZtE1iX8UqxgcnBSsQanmR_iuDcG_l9TBd_AKklgf7pWRRh1lefPgLC9cG7P2WyVbmK2h-YekhKGc-FgQqocdOjUWYL2JIZLK87akdSC6yh6C-bPayQNaLITEfj1DmXKEregw5mjGwmtKHNP5emqQwv5cjFB7f0d2h63aNcEV5Ki1VOYPI5sEUITTFxilx9aC4dZoMPp7K4hulsEkIXXgn0vVUtFXZs3Cq5BDHI-74uurV4GrBURBmUutJeAhnUtNzE&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 37.4330746, 37.4330746, '2025-03-25 09:03:48', '2025-03-25 09:03:48'),
(42, 'ChIJhx8-Ts2kj4ARSjW_bZorKCw', 74, 0, 'Lucile Packard Children\'s Hospital Stanford', '725 Welch Rd, Palo Alto', 'hospital,health,point_of_interest,establishment', 4.10, 4, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AUy1YQ270aSDZh9rzolW5OPey7DT_U_HuWe5Ll7NppDjFB1-NAktj-iGad_0aIZbI0veWgOinjQ8wg52nd5UUFw3ORQxwz6iP_6-d4Ky8EpfG0iiiolBtw5TCIBjcMntofzYzBMllTARkyx_8uSm44dsHKVUBL_E18uCWXYXkS19hJM1525siClMZfTM3Et1AkroQiEDR8hkTQ5nBwsXRxEMVjfiETNEaq7q2ComRt6gWO8clcsaDwWvttcgYetEmiBOCdDrLr2eWo_Pw_ddrM2xXK_5iup8Hpqq3V5H-5VH4y87buK16_g&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 37.4360294, 37.4360294, '2025-03-25 09:06:05', '2025-03-25 09:06:05'),
(43, 'ChIJIcxylQs1joARim8WD0JxZYA', 74, 0, 'El Camino Health - Los Gatos Hospital', '815 Pollard Rd, Los Gatos', 'hospital,health,point_of_interest,establishment', 3.40, 3, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AUy1YQ3ck7QTUwiunY0cStWouLqGIcOHeJW-r92M-kTMAkPok1oxtI1saGauFoLtsohZMw2LUwJxM8gm7nvi7qwpQT_wfbVh6ZUCvx6jFFj5SnNlwuD8Ug273sxACjdbeOlAFJxwnKUz166_xZ7snD4jtq5PRvFzUu1utjShuJpalS61DargZHk1GT3K8d0oaD1sQR67MqbLYQQBDQCG8wo1pi2a79ULu7jgp6ChRwscfCuNGSURJbsVmGdAI5-XLQTGVJuxsUhNJbiOXZsmlmknAX-A7cxn5ZOeRcsefHOMIVPmeO5rfK4&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 37.2627564, 37.2627564, '2025-03-25 09:11:22', '2025-03-25 09:11:22'),
(44, 'ChIJe2mDoRnLj4ARcPZDNq1NLCo', 74, 0, 'O\'Connor Hospital', '2105 Forest Ave, San Jose', 'hospital,health,point_of_interest,establishment', 3.00, 3, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AUy1YQ3P9W9RlcZQhkH3yCHWy-tzI8i0kevctVK0NBKnDS4MoIZWSnvSbu4RpzfnepYJfh4lswsZwewrgiWobczDP-xwooIY2AU58iHcvQYurrldGyqCkIYaiZRueDN3Xko-DwGNOj7I6zOUATHA_s4LunhLLTxHmfWKQKmHm73W5Wry_nvKNemBCOneyA-3mYpx7qqzkMb_eYzZUtywcCco9CDctUBmvoeZUTMsFoc_F3SBHQFyGgdxrzKumbKdBPvAbKfO-CcnrV8mbFPruP76yCsACPMJI8NunRIIQHgK3bohdwd85V0&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 37.3282354, 37.3282354, '2025-03-25 09:12:16', '2025-03-25 09:12:16'),
(45, 'ChIJlakyqda7j4ARjA0i8RpbsI0', 74, 0, 'Little Free Library', '4126 Sutherland Dr, Palo Alto', 'library,point_of_interest,establishment', 0.00, 0, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AUy1YQ0Om8ALViE89JLexY5IMKn1zPoVMFmDfGYmBwmQFjs3_FLlEjmbZ8NhBaGJhjEI5V016BY9EqfCEDHjnuLkmTqNqlBJzAO3lox5GuVTzmdrhiWcPlW-qzh4eq5TQZv4O0PRpnJ1db-HF7o16_X5-5VtSmmtU_yRTqVAjsz8dGkUbPFjbW4cLzc-xUbYUFtiVV_gvrYH_PuPD5FKUznhjIIzvky_qiFZAirTJxlb5G88FHCh36GsedTn37sLd6rFpmkY7OUSEiV1XBxdcj6laXzV_W0ENPdMJL5uwqm6M4UCWa0dDQE&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 37.4177404, 37.4177404, '2025-03-25 09:19:19', '2025-03-25 09:19:19'),
(46, 'ChIJS0-orXK6j4ARqC-00N_JIhs', 74, 0, 'Palo Alto Preparatory School', '2462 Wyandotte St, Mountain View', 'secondary_school,school,point_of_interest,establishment', 4.10, 4, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AUy1YQ2ug90Bzi29kM3aydpsZQqzZ3VXiEhpilP11smeomHGuEciN-_iSGspNRtmGrIkqX_GHfYvx3ZneuBg099BHYgnHsc52GmEmScHXBMZiPyEqPTO98VMEl9aGaPV3aKAuwJN7HoRVJbvcclFUQ-yBnQX40edb-H0gAKqRj0dQ7JiLtEgXcwdc4vLftQVZYAaBpCaYPQPspBWQyXVeAvTmzYxW87SkA-kF-q74BEdHyPPO-kiDjYwmlKLfG9t29GnSFtX3f8rrat2OPWmA3Q2EbWJTxYYcTDzRvW-UO0QNpVPPezgHjM&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 37.4170648, 37.4170648, '2025-03-25 10:03:54', '2025-03-25 10:03:54'),
(47, 'ChIJzYV7oqWwj4ARR9XIiQ2ffbE', 74, 0, 'The Girls\' Middle School', '3400 W Bayshore Rd, Palo Alto', 'school,point_of_interest,establishment', 5.00, 5, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AUy1YQ2Yxawvtd6RW-8vZIoZKPOIu7x28FtJJ9vhVmmd3TrPzlh03y_xKPnKffuAS1eyTFrZi7z6wRBPVeMuVeWW4BPodO86K9tRSKRuW0dOFQUUH204gi2pu0WbfwCEi_5kAD4m4Vi5olbZu5fxSYhAJu33MwcMNtKtmLnSGpbfruki5ahuj-OOhs57v0bfcHmQR6jqWnRbwn4PBGMltQysFg5s5xQSfJs2gQmqbrZ60rHQ32iGkiSP4vzkZjDGCLERyHgLQmvxCrMZzN7iC6TqPTyNPzzE-PIZbP_UbzZ2Rq91GqMfgN8&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 37.4355321, 37.4355321, '2025-03-25 10:08:38', '2025-03-25 10:08:38'),
(48, 'ChIJbQVzThUBMhUR-8Imy1RO-HI', 74, 0, 'Imagination Lab School', '4050 Middlefield Rd, Palo Alto', 'primary_school,school,point_of_interest,establishment', 5.00, 5, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AUy1YQ0RPPmAun0aXsyaGV4Dvt3bFqpQf4FWWASeX9FbkjrsOnIvJae4kU153dmA2Ej3P3heBBY-km8HtKtG0qG5Nt7TwVZYSKz5Gpij8LUe0AGK32CksPOTNkIqlVLTzg0fOrzP-u38eRUNx_GIFa5zA1T7cYqlznZUKEbIpgNTRSGRF2Oe2ai3KDrOb9WW8cFbw8Xi7zo7wGJG6zDR3HbSEZo8dq3TWjhJWP4MQa8kB5aR7tj99HXE6K6BQBNVSytMar02csSF-OF4o3i2PKuNq-8207IbmfLbHn8zq_ETUk8PCeT3Who&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 37.4176110, 37.4176110, '2025-03-25 10:10:27', '2025-03-25 10:10:27'),
(49, 'ChIJUYyXlKWwj4AREsO3zlYA0I4', 74, 0, 'Waldorf School of the Peninsula - Mountain View Campus', '180 N Rengstorff Ave, Mountain View', 'secondary_school,school,point_of_interest,establishment', 3.30, 3, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AUy1YQ19WeklLwXX37uVNSDvP-YKW1KPMGAoxUIDHNTB-opexCWT5aYxn-weqm1ne5-O-o98G4epJouzTdeg9IDgL52hTpNWHJBAiO-xlrkVZQdWeJnzw9EgAAapmgajvBTfyzKgfvpYGmb-R9kWExz3l3rKbdwbSStydMcNu0M_Gjzjb-aO0EX4MrTR_Ev58HYBXM0UE9IC-ZaX78kF8XEo-parGEO-H3wolR-1tfZC66EdfbhZBapgEMYKZIqDowNY2baS7p_J0Bzk8m_f2-bhXOeCY3Xu7hRpXeurS26TjAmanNyRd3s&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 37.4056494, 37.4056494, '2025-03-25 10:13:20', '2025-03-25 10:13:20'),
(50, 'ChIJJyF0kFO6j4ARAK1_v6eevCw', 74, 0, 'Ohlone Elementary School', '950 Amarillo Ave, Palo Alto', 'primary_school,school,point_of_interest,establishment', 4.90, 5, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AUy1YQ2f-MoP26rJQ0oeX64B6A3cyJ6owIQiF6YCICcnL4LFKUYkb90Qt9xSMQ1korMbBdVr6noRZH8lDHWKVABvfL1z8nqTJALil4Sk2We5NQkaiLrPWugPZRXC3Zdj1ZvSJmciU72TSScBkwKx2U6_2hf9xGfJwcWPQ6UKKwxXewEqsZIBhKmz22AUzjnP2qgTEWW39DEnVVkXm_Mfero4aKlyFQ_-wvLshLKE0PUbn18p_UVLYV6r9lJE6QIppbZn_VzSfo1j2cBvRzf0mrxkjUhethLJnPPE_ydioezYCirLtf9Idas&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 37.4392177, 37.4392177, '2025-03-25 10:14:16', '2025-03-25 10:14:16'),
(51, 'ChIJmU2HiwY-sz4R2B7Ial1OC10', 87, 0, 'Cafe Victory', 'V224+6WG, Hasrat Mohani Rd, Seari Quarters, Karachi', 'restaurant,point_of_interest,food,establishment', 3.90, 4, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AUy1YQ14yhiJE7SXCwwLz58G2GdAlq9KGKA6Pr9GYovHAdHcqGutw7ibvVPpKd0Rofl2TCiH50pC458EsjGYGxs9tLTwRU6Tf-3Bq_8tpvlFBWYXl65kl_WbvBdamutLhYBOldjW3PpA6yz80tf4wK9NmCcGpXqPWc_P04cA5Ky1WwnX3gQgLKS9hyD3FynawlzrgiRMMYy4pJHjFQaXVn6Akt-a5o-1mCvB1N9R-A0YQehuM9uK5yQkIetpAuY-p2vpqxrFNR0L90qZFlCifus-kBFIPcmfTFqvjN0bGmBEGiJnD-Pb47U&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 24.8505569, 24.8505569, '2025-03-25 11:32:00', '2025-03-25 11:32:00'),
(52, 'ChIJO2T58Y0_sz4Rp22Xr9Ioai8', 107, 0, 'Ellipse Fitness Club', '4-J, Block-6 Karachi', 'gym,health,point_of_interest,establishment', 4.00, 4, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AUy1YQ1kJy3NtaraQjUp1ON7HJnnp4kBeTvHAY9xoU8MlaY6WW1nnwtU7wMbhS1LT9RTcNFiPKBsYI13J3yxQTW9Ti6iEUZ904-Nhrb_dWaskObsrC9_t3AsYcpJ0E57evgl_7ilmCemxb4InuVGU3Y_AXN6Q7n3GcCaBT4su7s2Z9hYbz-ZU7lQsDVdef9fCFZG26T_65tKLpOxfBpMuxY8YkHKwy2SUoKIJCtaCGycgEvqx1VW3QUDxnxmbndObChnVLbZOyxO61P2a9c7DebltOrnN__bw5KnM-CN5KOl2i2r9sRsb-E&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 24.8585855, 24.8585855, '2025-03-25 11:52:31', '2025-03-25 11:52:31'),
(53, 'ChIJc5Fy7ha6j4AR9vtGV3tdcnA', 87, 0, 'All Automotive', '1900 Old Middlefield Way Suite f, Mountain View', 'car_repair,point_of_interest,establishment', 4.80, 5, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AUy1YQ05ORoKuSpdImKHB8YLtBoAvvCvoTvgNOdUjMsAiDr7188PsASwJFzI0ESSXoY0aPESvEzcOb0aTvbFxBsgrXPL1xUil4SD9655iTouMPt5xforx7h74dxPlN-rg-229WxOz5pjd1Ng77mOkZyExQu0FKwT-DyuOSCgn92-uHPHdiPyaEucWCdKQvIhD6A0apDI608_9nU20NCiSeozfd0sBXf4x19hilkWIYAoD4WXiODqBw8o_N1Us8_KjTH4-7klK8PbRRRE2ujQZRB8d9YIMpAK_6yHKo-fkqxBS190TzKGPlg&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 37.4147236, 37.4147236, '2025-03-25 11:55:58', '2025-03-25 11:55:58'),
(54, 'ChIJrb8rKgC5j4ARC8tyXckFZE4', 87, 0, 'Cafe at Mountain View', '2000 N Shoreline Blvd Ground Floor, Mountain View', 'cafe,food,point_of_interest,store,establishment', 4.40, 4, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AUy1YQ2OxaxN7wpIa7NW_H4RR-y5-usWJwm590OYPpWJMt8FbuAUkaJJ_KfHxbhzhoP8LoDRfaeSP528d2fejxeCKTcw4F5W1GffVxXVmuv6EP2NWqmbC-BtiGQ6GBkt7RSfYieg0HWuHmWD9fjI-NkWIKUw3sWR7hXiM0lUsNC0J15EX9NOsSGBtsB1K2sy-4OrR44WKJmycxN_646UHIHAJhQhvUybc-XE-l_ldV4lLb90dsuvIqMYRf_dxSskt2kpqHZswXGcuTJTykFfZ5-yBtSOVleQLmvUzcVifbFfn4YXgDbL1QA&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 37.4213642, 37.4213642, '2025-03-25 11:56:57', '2025-03-25 11:56:57'),
(55, 'ChIJA8vQfQi6j4ARflqhrRaPfxY', 87, 0, 'All VW & Japanese Shop', '2239 Old Middlefield Way, Mountain View', 'car_repair,point_of_interest,establishment', 4.30, 4, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AUy1YQ0laAiBuanrXtysSGhMXRsKHENPJnsTHgP-K-IswcjE-VnOb_fR1JW7LPrAylZVDIMCky4r6NN48Cif8Yw0_wW84rDNDXk0wyrz6uK0A1xEYo4gFQoek8DRa_lFzjMqnkDfzOj7r5Pd7h7ckRUwmUmDxVnWIF8hvByr0XSVC-U6ZdzAqRMq0V001IukSzmozSwKBfxUJ9zcsBEIG7rCOLj9pOF5CPy65hU51l07HTJgnxJ_huT8UtE25JyCMEo-ld4yZYBkCy5KwixzRhMe94TQj1fXtKtN4H_9j14OghoCRsvz1do&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 37.4140575, 37.4140575, '2025-03-25 11:59:06', '2025-03-25 11:59:06'),
(56, 'ChIJrzxQplGxj4ARPGJG4ViqdL8', 87, 0, 'Mail All Center - Live Scan, Fingerprinting, Notary & Apostille', '809 Cuesta Dr B, Mountain View', 'finance,store,point_of_interest,establishment', 4.90, 5, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AUy1YQ3FFltPcYoWm8DYT3h3ynvDhxfYspjawBBKn8NrQ-VFkbNTBukw9B2_f1vS4q6PE19T5t2Y8AFb992Fp2l4G9IwdabjTm7fcemeJJbjZYXOkvt8aKxSOFChqouzeIk1yP5NN1KI_YS3u24Wiy4NunTdH8mslnCB1CL8O9X_WWLfX-Oj6l52cNt1NO-Hai-XBTDTy2cBe0q4zSnMoY6fXGetTxLj1woUqWzUgyzxCoa_qVYhHQlfY2RHAnqSekN1MrQzX7IsIkGVxB7yZW3-mipSnG6EXda8R57LaL9-CP82xOLFxWQ&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 37.3729440, 37.3729440, '2025-03-25 12:01:07', '2025-03-25 12:01:07'),
(57, 'ChIJ7_u_CtU9sz4Rvo0Ck3mZ_sI', 87, 0, 'Heartbeat with EECP ( Karachi, Islamabad and Peshawer with all US-FDA approved machines) Since 2003 (Pioneer in Pakistan)', 'H-44 Razi Rd, near FEDEX NURSERY, Block-6 Block 6 P.E.C.H.S., Karachi', 'doctor,health,point_of_interest,establishment', 4.80, 5, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AUy1YQ0aRfhii87WHt23jUx2SKbUFP1J0FYFbwdhnt-OVuU6yXpJ5TWMz-1gQ72tI3PvFLtqOk0ak7He7PrADPOB9EPlwdiS_KY_qDl4U5841KdKGd3unFXMOT4sdEzG8pzpiBwiDiWyqfP2pKisl6Et2WyFso6rh897F3DrFXGzg20_Q33s0xFDamgJDYhb65lTbXv10csFrwHy_ncHZswOg3GF8KnKllsdQ68v37ieMYa0BbKEtHJhedF_eLLgFD6Tu6nhM-wCUyR-VniHV_miV8_zGmia-cDlB71Vgm54pzFL0J49B3Y&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 24.8642664, 24.8642664, '2025-03-25 12:04:14', '2025-03-25 12:04:14'),
(58, 'ChIJtY7-QgA_sz4RNOx2bcetAH8', 87, 0, 'All Tyres', 'SHOP NO 3, PLOT 6 A 1/2, P.E.C.H.S., Karachi', 'car_repair,store,point_of_interest,establishment', 0.00, 0, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AUy1YQ0i4ovLfzAiUGJASyxb5wlSr3p8XmBIjaC9nGsnAPv3ALFuKZfUNXGhr6moaomTfPTyUJrUyUgKZ_PeDapTZV-z6aZwD3Y6baMVesBVgm4-ftsQDe9jmFh1qF7tOsnrfQJyCz5a0RgWbFV6Kmx7K6SXi2lsAGx7EL0Z1RJjJgxeRE3TWqUSV0QdAuOLCaF7f0FHuYSAKBaQNYdhkU_30ccEn_74dg-MwohGZTlhv5RRb6VbXX5JOXQmlXOdPp0-5aCGwcHCUubNPGlb1h7EaNVVGbcYykVUHzYLHxsPYalW_t6AUEc&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 24.8692308, 24.8692308, '2025-03-25 12:05:37', '2025-03-25 12:05:37'),
(59, 'ChIJtSaB9qk0joARrvkACPEQa7I', 87, 0, 'All Natural Day Spa', '1042 Lincoln Ave, San Jose', 'beauty_salon,hair_care,spa,health,point_of_interest,establishment', 4.50, 5, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AUy1YQ1kwteFaZvKBD-6jq3OTwgbPnbeIlzbomNhD-EmIegYYXldel9nPCOecx2K9hZs4XkjWdQDyfks_pc0PcdLrHJMuZsRS5LGkrv9ID0__yWAhPbHPTCzHdaXgs3nPyLpqr4TXQxYW1vQb1UAnneiTjDA6pDpgwccuL6CWEi2WgPt9yq0jUeaIkH59rI0_J4aHt6K8UkdWyDXIJQdN9JZvmRvTrqN4wM-DUtsH-rldeUyBdG_qEauzdjV9TfY55K8ZoPg8PNggWexh0hhWj9Fy0r0a_A6I-5Yoqcd3xGIo-lW0SdXXZs&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 37.3111658, 37.3111658, '2025-03-25 12:06:56', '2025-03-25 12:06:56'),
(60, 'ChIJdZWpqyzKj4ARu4x7ocFratk', 87, 0, 'all auto dismantling', '750-C, 750 Comstock St, Santa Clara', 'car_repair,point_of_interest,store,establishment', 4.40, 4, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AUy1YQ2seKZVhomwmQxhy8iLgrkgI0kaHgSDhlXimQRMVSRBEJNhqkF1mdDJOWiDoRMoak3RSkuhaUeSDHIfSEt5rjNXx-mbTEkcujZVF0cKgE-mdx622_V5sv2TXh2lyYcq7mX90_PROh7BfUAKqXs_wt0gU_Bp2VECK9gIAyeIOeW2KmuzZYAElGQ7a266XhFbzYf0hgrLC2q-ad8tVWiWnv67BEpkRR-xRyjPXpV4mj6l-yrf__5RA6k6ZF0Oq9ImbyJVln-m75t4IsehNRExVMIH7JTfBoXB5sDGVon_4pbJOw_32b4&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 37.3743536, 37.3743536, '2025-03-25 12:15:42', '2025-03-25 12:15:42'),
(61, 'ChIJo9VUSzexj4ARBY1dWKsjRak', 87, 0, 'All Care Pediatrics: Molly Rad, M.D.', '763 Altos Oaks Dr # 4, Los Altos', 'doctor,health,point_of_interest,establishment', 4.60, 5, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AUy1YQ3A1r-rUiYkeEodzC7ha5x8gOha0bbLJKycYoSfpAX6eA5TMy8mq4jfVxQpxhLlwYiaUO4kPLEZv59WY5bzJrU4qmPciNxAskGh5UAVfCG0NbV_jraFNullobwYcOqMiI_gIJH4WmaioVINJtPh-PloaFkO3dxAxajTYNNhtZikj8AlJTWTCSc_9cNxQJwEer-zEZP-7LK9mDSIKtSnAjVDeDDwu0uudMFn4gI5YElWTU-3T8wh4sqKgVRxkvXLBun5PN47WePxlDuk6vuat12G-xH1hJLdNdxYU85RtJqDUmPoCKA&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 37.3595178, 37.3595178, '2025-03-25 12:17:37', '2025-03-25 12:17:37'),
(62, 'ChIJsa2Ew9DLj4ARKxUZcTfU1ao', 87, 0, 'All Natural Stone', '2504 Seaboard Ave, San Jose', 'home_goods_store,point_of_interest,store,establishment', 4.50, 5, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AUy1YQ061Us6bqXojLzeGB93f87MiNxkE2YMlXQJRBPiYjYKy5jaxSYhjWLHB6sH-Kqa09XgJ3DH-ORLOg8xJiML2H784ZTwJsOC53XBTeqK-MzauuD1fOwTCSZPQgiJ-EJP5LluvZAMbn4YlhjXxo_er8U7f-rIoch_AuweHm85uaLo63SBPE7HwP8haP7BBJY08rIvfloGKvesCFk3vJH5uMJdGFeRqcStyIk4X9WHaohcITNExM83Tmlh3R6fDFONfHgwlw2rr9BledS-5KNCLTa1366LOqcPdnYGx_I9W0DwOMLrA-w&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 37.3767366, 37.3767366, '2025-03-25 12:18:34', '2025-03-25 12:18:34'),
(63, 'ChIJc4Chu0S_j4AR-DiTSvR2q1w', 87, 0, 'All Raw Fizz', '37383 Fremont Blvd, Fremont', 'convenience_store,food,point_of_interest,store,establishment', 5.00, 5, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AUy1YQ2ymIOXSgXI99oxIcxJzfa7NDmST16UIMJuNrl6JhQ5e0jublvUW1sIA5cwn3IEuJrDfsSqqeBoEzBxRg4n6ZzvP8Zdtie3akQc-h0_4JTv4e6GmA6Y2JCw3OiHqj1XZd29C8gnum58F5yrugaWvtb5QT3VMdeJ5Xyg76g7j1T1lMxtnYWvIj3nPPXWWbcUNqKEJRQ7jv2ap_B1TMYT2JajTqc6TW0crOjWceFEGFcUHfCbWKtE0BswYOnS9SO7a7pX0td0aoJSQGdJgiNybRbGZKVtPP2bAykRziVhZiNB1wFJMSQ&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 37.5577521, 37.5577521, '2025-03-25 12:20:49', '2025-03-25 12:20:49'),
(64, 'ChIJIV3iygmjj4ARLrej4fnKACg', 87, 0, 'Stor-All Storage', '136 Willow St, Redwood City', 'storage,point_of_interest,store,establishment', 4.60, 5, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AUy1YQ3_JwLAtlnxDCWMqQ2ZuA2UAf95UbB6b6ClAUNJs5RyvaZYKPF4UdM59oOEFGwgRov7P9w-63KY-hMiAnDkeiD1fzmooe8lD2LtBsZes3SMKV951RlWmRYMEOFtQqSkJF86_Df6WI4zqNkVLVFmKOwhcjurKjgLzOB2eXypheSqZxp5oqyKTtGTE8pLrUJUiKVROvIPgzWLYGqPQv9N6H373f_EnwiFhqsdTd6ML9GJOcxUl7BSmLUe5crvMzRga5jJLLi5mH7EGE0zzX7m9XyjNeakQxe1Gu15Lb51LIDm1vq8y64&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 37.4772360, 37.4772360, '2025-03-25 12:22:04', '2025-03-25 12:22:04'),
(65, 'ChIJ2y5FuA8_sz4Rm9wE57hFo6s', 87, 0, 'Lazzo de cafe', 'V262+7FR, Napier Quarter, Karachi', 'restaurant,point_of_interest,food,establishment', 4.00, 4, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AUy1YQ1ZT0u8n8PtJ3uLZ1o0cMXwpJ32GTaUlGQ9QKqAYwgrQoxfsmaIVPdxAwRMAvBpWL9hy0BvodbQHDagm2q0isqPOOODG0V3L_YpIak7TdmH95eF3oKgL9hWYk-IjbXasVbs__l-tLK5uIyVz7IhdH5s0kQqe1BxY32FGq6oxXvylPThDf6KBrt8emTaZHZMbsYQI2PU1dJIhpecXhQjHrgJqfdl0mAVkVe6xzXhn586TR-xfuMLHoQjk93ITwsiK27mSyDFSxI8JtFrAJJOvjAq4GNuOA8LNBKJ3JG_8Nvrzh_bi74&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 24.8607343, 24.8607343, '2025-03-25 17:05:16', '2025-03-25 17:05:16'),
(66, 'ChIJW7pPzDs_sz4R1spAunStW4s', 87, 0, 'SALT CAFE', 'Plot R 993, Napier Quarter, Karachi', 'restaurant,food,point_of_interest,establishment', 4.50, 5, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AUy1YQ3tYvtj0ctH7kMHB5bfL0t_ah1v0_DRPUJ0FwN9dVEa7eEo61BsI7kReT9fA6QZqkYMXPVNQ__T23ChOyJzLmw1VsgH38APh-4F5SyDXRl2ZwxxzMgueOCNvATK_d2zH493I5OexMunoWw_STwqSaXepRjbq9l1FygUWoP4aoe72TbMRwbtAEVTbFwNgT1A1zf0jQyK7HXsEISp7WuwwZNmqlrYrT-kaZQhLSGSS9ap4oozpaav4ah9772Z0JwpKDIm-uSBcAumzB-vFv88W1iN4LwznR-dafyD3xKgAirXS8KhUWY&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 24.8607343, 24.8607343, '2025-03-25 17:10:21', '2025-03-25 17:10:21'),
(67, 'ChIJiZqakPI_sz4Rfsl6e_UIxmo', 87, 0, 'Cafe Subhanallah Restaurant', 'Plot no 151 A 16 K, I.A Karachi', 'restaurant,food,point_of_interest,establishment', 5.00, 5, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AUy1YQ1zVCBJrwWEcL2JK34GJSkcvKPJgn7CapfhJuKQ_O-Ejlf9IeypydVQywZEYVMlnbkfxQkWg4wneGeFvk6t63aNnOcg7s2ETXShUhqYDsIKx0wOXY3gKAI6t8CquRL5su5xXKOM4rxHc5_UitMuKOqHh8q91_T7A31NnD9cTKC0grKaSIsqKgWCbY7n7eJkKUrzHvb40FY4EIFpJVHfNQHxehC73EjbNQX3vS7q8XKAZQ_W-gAq4mjlfjbWMK8Nh8jWL-Mp4stz8L5G_SVbP1wLSLN2FXittZ-K4XqofRcYqGB5ZqI&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 24.8607343, 24.8607343, '2025-03-25 17:32:14', '2025-03-25 17:32:14'),
(68, 'ChIJadIEKAAVsz4RH643KHFj8ys', 87, 0, 'AB Café', 'Chakiwara Gul Muhammadi Line, Karachi', 'restaurant,food,point_of_interest,establishment', 4.60, 5, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AUy1YQ3iCwxOB-yLiYLhg6yYNse1IjxiXWRh3NPhuy8VaNYxsbpinkyjC6PIUq-sm3nqW5Eq9wWA98I2f7yde_kPTJqpZc71OTkqrvu5giyDrqLmYMmd8Nu2XVXeO4l0A51RkIOC6MgoD-FAmY12ERoXpzsitRYCuUEsrEjPughEeo5VcNan_-EtZ96as1c0AX5C6LwQDQJIyArATbHPBSenUrWGl8K9RMQDQYUXTULCPP5C7Eqb6Q12RbiQ87m0Nz3jRnHBiTtYGWCXIeTBrGaktny8hbGuS9xa31MDuKZOrfjZ5k1fXck&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 24.8647886, 24.8647886, '2025-03-25 17:34:40', '2025-03-25 17:34:40'),
(69, 'ChIJbxiHqu-wj4ARz-EClgpCE-Y', 87, 0, 'Stuart\'s Apparel', '157 Main St, Los Altos', 'clothing_store,store,point_of_interest,establishment', 4.50, 5, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AUy1YQ1yYcWMKh4TrI5WITlYhYqu_KEjc_EZg7RNV72HSCR7R_BQ1ULfCFZK20wy4cF0guoG6HMh8379-FP6AePACksYhuJoGi2pUgTwI8bV6B2M5N5rWmm5wmH8-kp7sHrcchp5juUoVAWRVv6_Kpghf1vbcSQlKEDLB-IXg5qwKYBLGBX7lKk850rpFFk8P3EpTBEBqvuCMjTdevKkWAjatj2US2xgEnQ4ZF9yliv2ZFC-gPK37MThq3jXDIc6WCFfuHfRnAOQMMIXEVyTcCmkvqrS_PkaVs_YiiFsNz5m0AT0kmV7D5U&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 37.3793420, 37.3793420, '2025-03-26 04:46:06', '2025-03-26 04:46:06'),
(70, 'ChIJ1Yam3EClj4ARsvTBeGUJiFs', 87, 0, 'Wells Fargo ATM', '570 N Shoreline Blvd, Mountain View', 'atm,finance,point_of_interest,establishment', 3.00, 3, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AUy1YQ1Xfvk7v4l1cy3V9_Nu5cgaBzCmGZ6cDXuYWhpq313Icxh4qmduZgA6C6M7T9EEdell0VuybuHqVGnBF0jCgj7ibnNFCwbwnY2c6ygMwhwILbsPh_1dZZSZeGIUdctGiOHF9xIOMJk6EuKaYRMNNwyASZxKQgegXfKRCxzSnDNLClDuUqNNleNlTu7ha4AlktzNXCdH5Il8tWgM_PtKxcr_wKCTC9FEXXav0PuFAxfMa_MKvulMOvwtwD-7qU5efqEuNauRL948jTexBnQ31-ceB2iaEKlAVND6HqCFT66iMEFCD3UyTge2RVLeor2YZ98oGhI5pfxni6iQailPXogmVHis96Y7dPO2iteVPWSk-fTBw2HFAd6iuph-02lkOBj_P8eJpByLM7zVP6INWkX759YegTDKhfjDFcMhXR1mFjv98XG0ZyfzOU883wJ2XC1Uzxv5CoasrLBEu13VIXgIv1_UgGKCFRf7a7Di3hHsYnTP1AzIE4p6PyfOrYZDCC0rR_JtmLbmVB2rL5aX6v4r4GcJLVwqEXQcbge66q15WHJnkeqq4kv7wffPoTvK2SqIXQ&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 37.4029895, 37.4029895, '2025-03-26 05:02:58', '2025-03-26 05:02:58'),
(71, 'ChIJO7sZcJ6wj4ARLli8ycsfZu4', 87, 0, 'Bank of America ATM', '384 San Antonio Rd, Mountain View', 'atm,finance,point_of_interest,establishment', 2.70, 3, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AUy1YQ3OlHu4i1i6BVPLjS2qDqIi9VE3NVNyyZniWeQ7WKR1p_1IBfina9HRLMeuxEAtmNKe2bD_kuMgOhT412JcmdKugl751AlUMPNHHI3T-f1yGq5p1PSKH6j8McxPUOGcPN6xvcNZ9iQjZvhGj7Y0W2r35xLb8bsDJ8pJer83kE_hIm4ZB_ZTlGXUIaMG3lpXItEhkROl7_QBRfnwr2we1Q3pY7CU664LIlZShz6zvoAe76y4jAcGu1vVcUDxbiRxaJ8FGkuZtThlwCZ-S24dJUKtjmK9A52eIhoImvOzVZtF-zxuF1gKY0XXFXZV_6RoLeR3HDBSMScU1Snxx6mKU9lAZV3AyzAu95k9OGdCb_Y9Lecz_x3TRa51Z8LEyAxA2oalCqSZAZ54flPy8qbAWJXUvLZx2mUrsyk96xeT6VUUvF3FEWNKXktSDKGeqSS8glqTYD4P9h3NUVhHIFzQc2oBhuBXVGmnG00OTjUeobNJD-oHG1EJDClYNoeRvUBU7FnyERr4uzsAqSLgRvEyomTB-NN1JuxOucm9KdQyXahvTqtC4XslFNEiKIHzgtS-yE7g1-zQ&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 37.4054621, 37.4054621, '2025-03-26 05:14:31', '2025-03-26 05:14:31'),
(72, 'ChIJf5op2rm7j4ARDO63dEfEct8', 87, 0, 'All Things Asphalt Inc', '360 Portage Ave, Palo Alto', 'general_contractor,point_of_interest,establishment', 5.00, 5, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AUy1YQ3hQLZ9QRwdkk3CUGyvxlUHqlKPDlQ6Ezcr_lBRClFxmGTXcX0_RokoMeCQHZ5Lz9O_mkimZFb6bN-de8t1lX_BPnzZjbTb5lv0zFhGswZYGusB17-_8MYdjnYrK8t25i9ltHp97kpoDXiysBcMZLzsOkDQxLj1OHwcWXa-UmH8uwCMBechsuyCIWVHRwvmzky5I0rMy1neaA33RLkyzDUHG0ZZqpbiQKe4EZpMoEdW4eeKqapScR1JLWm1fXIedSM_FkvkeeNDfFQS0Hp0HiP_4tMBmefGEpWfixQ37xafF3kgxeI&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 37.4229848, 37.4229848, '2025-03-26 05:25:39', '2025-03-26 05:25:39'),
(73, 'ChIJx2ma7QO7j4ARV8nE1vzVd6w', 87, 0, 'Ada\'s Cafe', '3700 Middlefield Rd, Palo Alto', 'cafe,restaurant,point_of_interest,food,establishment', 4.60, 5, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AUy1YQ043U4YNnlTIfSf_p4fyJBZRueT_GkN_QyDvKnbaquBlGWjzfn9zmh6G6Q7NdfW3x4q7Ty494IG7chFsjKNJfQi81rx9SMNx-8WisNkVeBWZ6mwWM0T450vUHuPKZXWOVIdzPkK-D5cwIRis8e9vAZgUzPmEUjL8jPzrHw7raMtgftqmSEsMsG1RdyofANTHtsJqJwkR9qRkdnJnAW81gQhDo7HAGtNKvdMUsaNETkSx377H4wvT3xLbJhW1oOsjK2LL8OhqhRJ0AfLexS1My_0q8iIVWonlZGw_FYu6CaP7lrJJD0&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 37.4221946, 37.4221946, '2025-03-26 05:40:34', '2025-03-26 05:40:34'),
(74, 'ChIJa6U406-7j4ARZietsfdP6dE', 87, 0, 'Plaza deli cafe', '2680 Bayshore Pkwy, Mountain View', 'restaurant,point_of_interest,food,establishment', 4.80, 5, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AUy1YQ1x2iXVHH8kJMaOhFAa8juw-Fka-3djSd3QFKVXBBVarEtWkh38bMsxUzyxJIs2rCDZbHhzi-tbN99hv1JRSEPZHVfP90DMEkkTWNagFVsM21-mFHdBghHDBJIbOzHsjQbugLCxoubm_Rj63hHsMDttmj5CFXn6Y__vJbFKFl8GHNkmu57QlfQj2vM9ZVeVh8zOPRkmPyFfWesWJRmsIzcC21GMBtWLwhQcQCx5KJrYf3k7PcNd4CxGfv8Srnn-Q8i3YNKgd0glR_Wym8milVN5OBVwgHTRO2A_CTL3tJaUMpZwmv0&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 37.4297762, 37.4297762, '2025-03-26 05:41:21', '2025-03-26 05:41:21'),
(75, 'ChIJpTcruo6AhYARPLo5QdmBOrQ', 87, 0, 'Philippine Consulate General in San Francisco', '447 Sutter St, San Francisco', 'embassy,point_of_interest,establishment', 4.30, 4, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AUy1YQ1IrqtxbI9uho6F1xm_YOnnlm8gWolM8ofHPp5LosEhgnKmOe-JYcUTG-BOBAnMmb3A9mzFpPDYVyVJASolObad_PHTHGbq4OumaNAIQUM4Z4R5G3eid6pNnNt9CMVqqw7nYywWeskJ_TFndYKTcxD3ltdJwpwedjyRFpevGMM0Ay2JIGv5se0oPk6TyOtNEmvBRamggEtJLpVI4idUHBTcn4wWuD7gOegINjtvT0PfjRqWbq2Y74AlvJlZO1K2RsVfF_m156_jcRdZw68BiXNmMQhFneyhfwih67UGOrwLPsgUnjmnlMgl-SlPnkn8byEjfALPWB7he_APB6Gmv_j05qt-zWdI8CNedI3jHZc3ulg1mFOv8myfroLc6t_So6PLFWUTdMbB4c_VYzjkmkcYtRYd5TZKNWHpWjO6lMwS6GDl5cYiWqRg3JnlE3N9ASCsDNt9_DwwoE1wUKNNc1IoPBfJnvbLfQuzW85sB-TjctqSJodsPRHNbKqE7_uxwnNj0f3ujdBHyvMpDaOGnrr9OJtmnq9JEwVRdMIV9uMlFrUjdYfUUdjsollA4GK9kqH6xDgO&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 37.7890470, 37.7890470, '2025-03-26 05:51:42', '2025-03-26 05:51:42'),
(76, 'ChIJneqLZyq7j4ARf2j8RBrwzSk', 87, 0, 'Stanford University', '450 Jane Stanford Way, Stanford', 'university,point_of_interest,establishment', 4.70, 5, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AUy1YQ0B3rN3FYXyS80PXEfj1Zxt-93w8Cx0er-lyedF8H9uzwtTsIocjD-W2cB8fvQO9FUdq_afojHPnpU2xLtRHlU0Kn-r7rYKa19-KA5mBHWB8tvynJxODhJ-eW1HnPEm61RBQK7G4N_hkBUxCaLda6VMWK0z03pe2VW8_FjdDvaoH4NqPF7yyA8FKqnGB0iTWx4P703hDMxXl2aFjIHJ-_06dSnRW8sHHPCp4y39FhjdOAaO-ibdRMfe3Gl52xEEcBMX3XKdvKfjlkcZ47N119nVTXtJqseT-Mb-A6om2l3PlRydjmg&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 37.4276600, 37.4276600, '2025-03-26 06:51:04', '2025-03-26 06:51:04');
INSERT INTO `wish_lists` (`id`, `place_id`, `user_id`, `sub_category`, `name`, `address`, `types`, `rating`, `totalRatings`, `openNow`, `image`, `latitude`, `longitude`, `created_at`, `updated_at`) VALUES
(77, 'ChIJWw4GHKTMj4AR0RD8L8FL8Nk', 87, 0, 'International Technological University (ITU)', '3120 Scott Blvd, Santa Clara', 'university,point_of_interest,establishment', 3.80, 4, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AUy1YQ1I_dRigaiqQqJg47eZHxlMRn6HeDOo3lWYUefP5Zr3ddMRnYF4hunUv1nyRsh0Thj0_kHFWPSoDOtN1eGgMgvslf8k2KdC8lv93w8os0iRUF06pMUY870sZ9SNxBZ1zvGiTqYmkFO0RwxOQAaVUilC_965VQkMVQ3FXQTbYHA0Q1L3HZjeMmKLiDCNa-zErxBmGHoEJDsRAFKkgBlWNE1qjx4kBCldTEwJpQRvkwT7xwIQpD6aWA5nEMQ1HwK8hOkHB18PBfP9S4VJuE3A28rCiwud1CXXlS1Q4J566ax5h9-qVz8&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 37.3771463, 37.3771463, '2025-03-26 07:06:42', '2025-03-26 07:06:42'),
(78, 'ChIJp3ZIhwjJj4ARoSAWA7xTbVk', 87, 0, 'University of Phoenix - San Jose Learning Center', '3590 N First St, San Jose', 'university,point_of_interest,establishment', 4.00, 4, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AUy1YQ3D9Z0HheqwChGLMZt6gnK35-HikDWDfRGOZsIT4EdECvdq0j0K-N67SzdFuqom1XN9s1DSKURroWjC_5sfYDBRY1_4KHAaHvG_NXmiiT5ogcbxGmGPXamo6npEIBima-UWMeXj1Rg4ZVQ7LF7ivAeo2tdx1KDU4al5GxgYFbdbKQiP7FUlA6TAGO5VetYDkPMo6xeNBOE1QHV0l36KDdUEDurvhtYv-4myYHd24uAhj4w2T53eEuhfh-MIuRugiEc0jhNBFg7TYRM9UxG8KdtlEn469-OnKOkErVQToIpIviFBYhM&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 37.4087691, 37.4087691, '2025-03-26 07:27:24', '2025-03-26 07:27:24'),
(79, 'ChIJb748wlu6j4ARlKL1cb39wms', 87, 0, 'Dr. Bradford C. Rabin, MD', '3200 Middlefield Rd suite c, Palo Alto', 'doctor,health,point_of_interest,establishment', 4.70, 5, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AUy1YQ3GfhYuN3BCWOBNg50CYNmz-cqaxIyIel3UuAhco7u9xMON_3isHxYlMSzNQymNlGjY2l0y5lgLcObdiWQNDR_2kRszBfcxKT-wQUcrj6yUccF6nJzsr-T1hNiOewUoObmrD04u0R9uzajJRQX2BUoQiFReqdqL3ogFszihiDaXJMOoXrDsmavZVcAXb1CNViGC8uPJMVqvHvbIPT-uih3GicDq44Q3_HityKzuuGh2glHUKEYY6lSazqIKazdXIyMDU2o0AP3kwAX9FQSvDWz8LlO6SKX89RSsF-XQteppS3dG9ss&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 37.4287836, 37.4287836, '2025-03-26 07:46:13', '2025-03-26 07:46:13'),
(80, 'ChIJEd_DQdy2j4ARgfRO5KK9Q0I', 87, 0, 'Veko Vahamaki, D.O.', '701 E El Camino Real floor 2, Mountain View', 'doctor,point_of_interest,health,establishment', 5.00, 5, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AUy1YQ3QrW347sEeHN6v5s47rMPdK70KL4JtNXgO3r8Oq-XsFrYJnczMxbqesaCnLYHvZf9gWpLS_p7baPfAzc9FKqzLe71dqpyTzSvOUC9qiaodIpscTFfhqud6LeECKVeH70CDjt2rsW7fjuj3BQnhBwjNl0TSGV5WPeVE6T5AcL-AxqgyGmfPFMwXjOVIkl10yYFdh8iw3fqmo-W-MmKOFfTBOBvHgMWY5xrRQsUFgZZh95eTrG6MWC4p_1PEpMeQF9E-AxQHUjQa-oGXfG3T3FhU5jF9N-2uwefF6ByP7CG9S1iUkOg&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 37.3766062, 37.3766062, '2025-03-26 07:53:42', '2025-03-26 07:53:42'),
(81, 'ChIJe5wrk72wj4AR675KAvVSZFI', 87, 0, 'Melissa Stenberg, M.D.', '370 Distel Cir, Los Altos', 'doctor,point_of_interest,health,establishment', 5.00, 5, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AUy1YQ008cHqEbHWITBcOoTXoJbwZI1okFhbCY43ceqfC3lEbTv3oC2pRFccPs8N6tsMNcwDB95-uzu9xR3MMcu7N36f7QT_bjZj1ISW7fTamXBxMnvgqMcjK8Ia16RAd6p5eMV3MJAx_a2gSr-Qn9zO7imMWhYx9WG63sINZHIrr6EbBBQaJv5776RUyWhapbaqBncSEDnp1XKRz2ms84NnevSWLfNRe-9Sy3YGgKBuztd3EtW088phfPbKH0xUrZOtr4gtRriYK8Idv9RsB3QLCDIICEfDB9XqjpXpynM_gDj_m7My4rg&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 37.3957153, 37.3957153, '2025-03-26 07:54:36', '2025-03-26 07:54:36'),
(82, 'ChIJw_Gqiymxj4ARaXOEwoGk5ZE', 87, 0, 'Heba Yassin-Jioussy, M.D.', '370 Distel Cir, Los Altos', 'doctor,health,point_of_interest,establishment', 4.90, 5, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AUy1YQ24W5_SSzNuzdqjiM_-TyqQfKM-8xvmM4FukmL2MglQHz9uwJ4xm9st2g4VmVe2vKEcQ7jK7kXod34XNVNx1V6gJVQqkw7JAqQL0unwhDcfg-ZwNro5dmt-ELlDILslPzmoA2sO0v_8V_suwY1WBe7oFDZINs5QmrD4-27K5qaYsfS_XlbTPqxlAsnDIdIqBa8wIN_UZSCGbjSQj8KAK7kxxzsM-3fBNSIqfkCK42i2w44XyoyNcSdO8NWxMNiAqp1EojhNRty1BssJK0KD2upWZjSFbiB_wYb-VWSbpVmxDNTj608&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 37.3955434, 37.3955434, '2025-03-26 08:14:41', '2025-03-26 08:14:41'),
(83, 'ChIJG3_LCom3j4ARWNAjFd6-akI', 87, 0, 'Feihong Ding, M.D. M.S.', 'North Wing, 701 E El Camino Real floor 2, Mountain View', 'doctor,health,point_of_interest,establishment', 4.90, 5, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AUy1YQ3s2Q-5w81eDWO6oxLgb4lHOzGSnNd9_7pL9Ji3UjdjQPdu5Eo1BxAOnhpsDqOX7X8aEGpT3tidgiqpN-fFgwiogyb4eDXAvDloqjCi2nK_w6C5vC7DM14YPxhWc8dGCodvNkDLthGH02NX7csSOAd4DcjhnCSqKzqoDvICX547QR2EqvEwW_NOHvNbkcr3DYkIIhmtzJ3M2A7OAZxrUBZypgLhSzPD_DVvt6oq0JjbXTAefYpEHS83nqE6umRgkPS7oIr_IRfxjTAAgoyz_3X3UGB_BNCAeL6dRooLUBspn8iIQM4&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 37.3765268, 37.3765268, '2025-03-26 08:32:04', '2025-03-26 08:32:04'),
(84, 'ChIJEd_DQdy2j4ARdzJ7cbfZaoU', 87, 0, 'Steven Prescop, M.D.', '701 E El Camino Real floor 2, Mountain View', 'doctor,health,point_of_interest,establishment', 4.80, 5, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AUy1YQ2-THpDO29FqAAyYSXi5B7vlO8_yTxHqu0ozPk5uSx2x8BrAxpDthdQhP2yPvfFC3m2nO6U82JqDECKQmP3vRO5bf9LLRG8yAoT8Pn4uy7TkL27AvaMJqndbSL3aXH2zYU_c-WtEvkOlbfxq7XexWUEX8PXiGsFozJBUumLEkvlEif7XgQGilZtHGoR2T49RNf-L_pvuGbz_ZrwNVook05-Dq7r5VVCofPKfJml15B-t9DIZcKjxPI7Wr2ghag75po9lUEpnLyr7RrLkBvs8pboFYuYFCSPQ-61fcIGzDi5AgLunWM&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 37.3766062, 37.3766062, '2025-03-26 08:42:15', '2025-03-26 08:42:15'),
(85, 'ChIJe5wrk72wj4ARbNOh_l7DmzY', 87, 0, 'Julia Jodi Marx, M.D.', '370 Distel Cir, Los Altos', 'doctor,health,point_of_interest,establishment', 5.00, 5, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AUy1YQ1HMJUiEuSJkCA-0HVSZ_2rhglWpb3nkBmXAx4gSC5M-fFpOyvbfEQD3IglDxV3DZG1mRz-LKih8952bOkGT9i31C95PqaEbcSafDFofxiYagQz0sL9u8M9G7w0z6YRSnrqwYW8GXnspjUdMLck23-EjkqJCoc4Y__r9RCCmLkVq0MT7zr8BkLluv-BY8gLeNwSxNbI_OJyYnua3Q2evqr4F1clNmCUIfsBTjwmVTy5uuSLyXP85Y0IJxqgK-b0GRV_w_OqeLwFtXjOXte2kM7h8ZUxZNOzFgB2QK4iiYoOx1N1wxQ&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 37.3957153, 37.3957153, '2025-03-26 08:50:42', '2025-03-26 08:50:42'),
(86, 'ChIJ0_f6CAA9sz4RGhcKIMSn0v0', 87, 0, 'Diamond Lodge ڈائمنڈ لاج', '35 Khayaban-e-Mujahid, DHA Phase 5 Defence V Defence Housing Authority, Karachi', 'lodging,point_of_interest,establishment', 4.30, 4, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AUy1YQ1FvGJFUAJAa0OIZQ3P-wHgBnfv4GXiSZuCNHKpvoSuNGUBKQ-52EkCtROiUIt8HKHZQuFBorV698tWEyW5XHWt97qhftRNBMzpaF8zlJVd0-yrMlZKHupx34uMEjPXw5GWT_5QnSvr8hJqihxd5sBPYpzJotqkjycF5THiym97kztHY3d_ywMWPpgUNekREU305NXoroBZ-uStY5uTK9ds2z6qu3O096kVx4ZkDMWN81tCyBsEQo4u71uW3nEpnt_h6zC2ogR5zsWEpFivXnJ_1NFnbr3tC6CASqgateWKkrSHuzg&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 24.8123906, 24.8123906, '2025-03-26 11:55:40', '2025-03-26 11:55:40'),
(87, 'ChIJk5pDbIY_sz4RplWxt8spkTE', 87, 0, 'Cafe Time Square کیفے ٹائم اِسکوائر', 'Shop number 5, Imam Heights, main Khalid Bin Walid Rd, Block 2 P.E.C.H.S., Karachi', 'restaurant,food,point_of_interest,establishment', 4.30, 4, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AUy1YQ3UmTdXcQjx_rK_KltMSoOViN9LZkC017WTp8MTAF0UkuYd5jCTyAkSQRidrFoJULm7VXI70ef621Ee1HFvGZf5DyxVBIDQfFmoqXWyiKlsuj-g2mH_g9CHduXQ_GEIFEG5ndq_u-glNDpfSKEMEhfMTyz8lx14qb57ZU67Eny8Vd2sCQEVjTr7olTW-x3IzOVoOK4VDe61WNT40WrNhAHWfsIIG-7_kU-FHcO6gp4oCumqCfhtrRMqGT2op-HKMLQU337ZUPUL27jLoxnSjnQUmHZEeksvhK8QkXhj6uq2gZ1Izmk&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 24.8769850, 24.8769850, '2025-03-26 21:11:48', '2025-03-26 21:11:48'),
(88, 'ChIJZXyrocE_sz4RhroFPTXpT-E', 108, 0, 'Picnic Wala - All Karachi Farmhouse', 'Office No: Z49, 7/8 Block, Hill Park Rd, Karachi Memon Co-operative Housing Society Karachi Memon Society Karachi', 'point_of_interest,establishment', 4.80, 5, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AUy1YQ0fuOBkvriYQXvur79Leq-Awf8Zp_Ovjr--1xWXCoBy0HAJwDj59ZvNOWvfXC15IeQ8By4VJXilaI4zThwhZGxbeVm2Zmj4UC2DFkGaAoEOv8qfG0zc6tl92R19swrhNO3AN0yZzzFjj8KkPS1avxCJ9e3cDBmJjtNZ3lm9N00_L_s87yRUewt4fBhKKFkUz0ofS35zpFUfoMFRVtOShVJqyfjtrTxJJVZHos7642ABEHKE9qq6-p7HWccA_OlQhVrjxxXSu0ynheLT833MXTtqMhdXA8xkQSxPsA6oLW0ZNMy7v8A&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 24.8671600, 24.8671600, '2025-03-27 19:49:54', '2025-03-27 19:49:54'),
(89, 'ChIJiTLRjtREwokRUa7hUDALGPs', 87, 0, 'All Time Trading', '2240 E 17th St, Brooklyn', 'clothing_store,point_of_interest,store,establishment', 3.20, 3, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AUy1YQ00xjEDQoA1MJW-TVXkSPU8Aaf2DL34aN3oT-5rQGzKI7ccvImEFKRpAM2tHp4w1XaDLzA_v91ZLMHZoNQKBFpQeZH03bt6Z_jT1mNnE9TNfdeOgvFOJlLHBb7NopTwWvvXaewS6mVBcyvGwhjl74jSBhckZMkcCgjRuf9apoCunrcSV4M0vz6xUoP8r_LDx6R1hoLZWXYAhqn0ODpUaGY58O_zjpYx8XYXUYNwiDhFnuM1l8YsXLsxnxdyyoW8wWrB7_2cbhgv1QsVW7jnkBI1sbVldJ3piWlmg7R7HMMYuvH3ncQ&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 40.5958509, 40.5958509, '2025-03-27 22:21:26', '2025-03-27 22:21:26'),
(90, 'ChIJ-VNK1ItEwokRuMc9y3l8a3E', 87, 0, 'Emil\'s All Tire', '1701 Gravesend Neck Rd, Brooklyn', 'car_repair,point_of_interest,store,establishment', 4.40, 4, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AUy1YQ0Zr07jQxTu6xFQ_TG-IPgkKRzK2Wyz7tsoYgNGNSme0MDBBCdfuZ4TafCV95JwJuZWkYeRg28GHxO1QIabBOTLf81PEQmrfED2Eke6XwfZTLvGyE0lqEwGZcu5OaSo2cr1ycMlGRPOqOxzJ7bt5lA1SJ039PEWcGonbXuKVxRfanoGh6XR2znTR3rUZ9an4BghJqC2YDQblL1sZoYz9jMa6bgDWnaouLb7P4pvAu7M2xg-cDNpm_wesCCkzFolg_NWT-_Zj7AzlSmpTqPU5jAazEwHbkpU894u3g4htd8GGG0FmXY&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 40.5957560, 40.5957560, '2025-03-27 22:22:16', '2025-03-27 22:22:16'),
(91, 'ChIJyzZ7xDw_sz4R1pQSTjN2kf0', 108, 0, 'Car Rental Service Karachi', 'Khalid Bin Waleed Rd, Block 2 P.E.C.H.S., Karachi', 'car_rental,point_of_interest,establishment', 4.60, 5, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AUy1YQ2dVs5zGmG1WA7Tvdgbwbk3p0INFNCMldLjze0XQoNTPZVmC4eR6uS2cUxaiXhEE_iPUo8-umzipmqpW4Gnn8pAgGErguAIulDx4Bp4hgaaddAC2sdWMUyn7dcpQBOZ3LDlCr4iCxZCj7EOUeqX_gzQPsAUtAJoKSXSXd34KJ6tt2yjS8iVckNDPgg6_TVznRK0zx6hKcU1Idjc9q6fNUidbXv_Fe1xSPb2jiIY232tC4c4mNu64Myze12rjIWiaF1hrQ5A_AeK0OCK7kXlocb7h_DZGV98IIpPRHjab8dbwOtwb7E&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 24.8729257, 24.8729257, '2025-03-27 22:23:34', '2025-03-27 22:23:34'),
(92, 'ChIJzXMA8Jw_sz4RaKtAU8j5v9I', 108, 0, 'Rent-A-RIDE KARACHI', 'Office No 2, Bait-Ul-Mukarram Masjid, Bait-Ul-Mukarram, Road, Block 8 Gulshan-e-Iqbal, Karachi', 'car_rental,point_of_interest,establishment', 5.00, 5, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AUy1YQ1N5CZhBK_fZaMHeGR7FcetGxjjRad94tIW-k5xLgk1ypTVMbo_SLsrgU7P09RxAlCvdxXNEOibATfGAmdshsVXlSX_nJq-rIAjA4W7ZetbD0MkGARdYNJhGl3hnQwd7gabC9_2WcadZKekVfV3zvgH5Qnd8zHP9aoa7BUW-WKee3ClGnjOf_nhv86lO1Wk1vcmQ15WGis3fEu9OAsKEi9XS4AriG1qVez1fqTm4ZS2Wu_czXEDFWzRQcgjAdeGjMea113DhcPp9vEXZaia886rhSKNWGWDT5tC8-KBftmzAHCD1KQ&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 24.9071650, 24.9071650, '2025-03-27 22:23:35', '2025-03-27 22:23:35'),
(93, 'ChIJO95SaPw9sz4RDDe2gmej-VU', 108, 0, 'Karachi Rental Car Service', 'Shop No. 45, Block No. 40 Defence Garden apartments Main Korangi Rd, near UBL Defence Garden branch Sector, 17 Karachi', 'car_rental,point_of_interest,establishment', 5.00, 5, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AUy1YQ087ApULIHUfjPKfONYhGhcLSuIyy6eo452AHMa5ggmWNnMMPlu39YlRY6TUEpdgnjIVKXWHG__gZsJXLCzlZBxFrsRJ8IICwMzAHtPJ87xcdDM0cEOfmzUaGBqFwkUAewgTbJVLB30HbcqtBVj10BuitpfE83Nrm1ucKmx9h6qJJk66zNMdUVBhBU8Xe9adLKRxZBiCyUdXF8YrkSdckSUNS5a5Qe-D8Ip4LIsV1Mz8ElhduNsq1otzs7-akulPdGuaQenyjiQE-yhn0X8kKo8ks4IMlGPLQyCbTnZEGWBdX1qx7M&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 24.8454633, 24.8454633, '2025-03-27 22:23:35', '2025-03-27 22:23:35'),
(94, 'ChIJM-3Rc8A-sz4R-_IoziXrYNY', 108, 0, 'Zameer Ansari BBQ & Grill', 'Alamgir Rd, Bahadur Yar Jang CHS, Karachi', 'restaurant,food,point_of_interest,establishment', 4.10, 4, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AUy1YQ1uL3ARWBwFbBzZAxehiGx7R2U5seEd6shCLG4l67uHqwNTNFp2JamseqQs5YPdiZXDmmGrsIpVlI3VIAhTX4I-H_f1Q99ibnW8OA0cCjJ0Vn5onKFVkIzUAsjRIsMzz-thrjLTEJWgaULIF7GtDUt9-KxS9kbe-FxMh3FYQZykllUoP9zFdPGF0bQBglJ5XDeaYqCEx2jKtmEU9rqCpLt2gMay2EmYYxMO53hdgOofFSnnLOLDkUXUpFnP7FM_neBDg4pJlleS_YYoz0oSl4p-QUO5zaKniBc4FERP8-pADDV33D4&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 24.8793631, 24.8793631, '2025-03-28 22:18:16', '2025-03-28 22:18:16'),
(95, 'ChIJ2wZTmetEwokRM9SOdRm-aEw', 106, 0, 'My Grill Bar', '1022 Avenue P, Brooklyn', 'restaurant,food,point_of_interest,establishment', 4.20, 4, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AUy1YQ0WomnP4x6CD2kCcr5m2VGnZ4dHUCOO1k6-2jTpgUfM6KFkmhnFutW1Z8hLoXUDrtAxZMJHYuTK6xpeUbsem93NGDGSTkB-W6XuBPqOhp52yPqU8wYXuP7pyMU5lZ-A-Ovhojmb_Xe_8r6Z3jiYkt2kLQUUmUg8KAJEeBorZWf2M4pGrUwYt8wmYdadjwFyDZ78xwJXnggozAcV_ZC7pk5c2k0hbjqEmzscZL3qHcl-_BfzdsmsbYaJ0t-fHodirzM8DDyfHlhNKgT7JOWWeGJqmseL9oWY27iECalD80XoGrFjk7M&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 40.6097770, 40.6097770, '2025-04-02 19:42:54', '2025-04-02 19:42:54'),
(96, 'ChIJH57QputEwokRd7vQHeJmxYU', 106, 0, 'Subsational', '1928 Coney Island Ave, Brooklyn', 'restaurant,food,point_of_interest,establishment', 4.00, 4, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AUy1YQ0JPaT5L3p4_apff-5xb4N7DEFA3nYrPu8sGWAmcCu7mGDDtRJK3em_qql9WVqcuJUn3MV56Tx-U6YzLyOT0I0ZnrZFuEYDBz-wZBRpkOwp4i3oltnvrvBV-71Qp1sXjjBOd6x_D2GwgnUjVnvmO2bBiXGmFzJrKx6AqYSJTcrzpZDhUe2DZ3KCFuyKqMafMPZrOrGARI3Nnqn7-93xkPw2RxFkPfq2pqVmYjlu_gKGzzhHZO-R5jFbqf0wlG2kaI9EFslGTGBakQQrDgP_-lWPzuyMzU4HMa1gTjSKYsQKFVElKMY&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 40.6103576, 40.6103576, '2025-04-02 19:43:09', '2025-04-02 19:43:09'),
(97, 'ChIJTWBiRyRFwokRISxI83s0RL8', 106, 0, 'Moldova', '1827 Coney Island Ave, Brooklyn', 'restaurant,food,point_of_interest,establishment', 4.40, 4, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AUy1YQ1aql92PxUnXjlZsl4YrXzSyhqOl0eOSKM7_pmG52k_5Pl_uWgwP-0AvTvZHX-BeS9CxLFl7k8Y_evW7iFpRwq32-r5qGoW3iwICFVMqYLP57Df6xII2fCNRt4ODsjf69z-Lv1oXGX9rq6LVTVk6PrwBmo8AN7t63rW6nRtyazYT0zdX_2Bw4idXOvuUuC5F6EGhL4CEBSnszuH8iVSg2RX58ozFuQKaHwXHqCLKLzTIO8c2Qw0xQp7OmEbNRGfua5qwomyKYenYwaRgIcE7CIOnuyWxonZ-XEtiBGV32YmpvSwy3c&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 40.6129611, 40.6129611, '2025-04-02 19:44:27', '2025-04-02 19:44:27'),
(98, 'ChIJBeL_pIg_sz4RKIzIVd3GlOQ', 108, 0, 'Mitthu Gola & limca point', 'Bahadurabad Karachi City، Karachi', 'bar,point_of_interest,establishment', 4.20, 4, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AUy1YQ0PE8tex5JoCMTDTShVLQ9wfdYNnmHlBcjOgugmXnk7STvPshjYL1FrQ34uu6O0pn4YEzvMlqbMfJ-CM_ADEfvv5q6UJlCQcfQNX3RpyWYdpFM8P8ny74L4A7n4E9T9Wroh6DhRjbCwLONyyFnk2A85VqcD2cbaZwv_S_iWhBXzAdG8Wavmfw76flQygwn9KZ1xJm7xErxzz9bCamiAmdezkLBgjPYbcD-dQtyZ9kB9Ma98pkLhQSptVHgGUkCgz8s8rXuKob_LLjJQIVM_n5cYZpt-LTzO0GLE6fc4XKEV0QYoW9M&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 24.8820610, 24.8820610, '2025-04-02 19:45:49', '2025-04-02 19:45:49'),
(99, 'ChIJgyDCUOtEwokR7kMLC5jEfRQ', 106, 0, 'Allhealth Diagnostic & Treatment Center', '1655 E 13th St, Brooklyn', 'hospital,health,point_of_interest,establishment', 4.30, 4, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AUy1YQ0NFsqGXF2YkA34NHFhnYc56nl2VfvcPLLXOYBnP-p-_oxeK4ztRPhxGFiXz5tLznACmqtXEFzjP7DWioaKkYITVs_OtMIpZVyqje8NHQJrcGVZyON6_AF9Ek-aXPMEvTORH0_6jLpFazMfYqAPC0znYJIJgDtg3-mGs7cGsU8ppb0x--dS08NloQ5Z9KnOCm3fjr_t013Htwe-v_PYdfTrYA_tdls5LIfPVbUmf_S5s3Jl-bu1ycKqb_y1GmUsFU4C79XDka_jsxD3MFI70BOg5KkLlZY85gwpKleU05YgFjO4-3lSdZiCm9ErWTurf1fa6jEU-NGE4hWmagj43QB7DYGiPGgkmO-XRpzenSYnGqdw9qj1BNvG0BErTk9pB8ZtOB8frx7CSoEsiJHwKWFjOAkFkxm6Y3uALbos2oZ_GxjfjvfAACnTKUicaWE53pd79wbQOTYSSvJwUjlyZs4D2f7x2MUYmXGeaMl8YtlSx17SRZp0x4nmVbtepkl3an9l_ON2xTVKQ--sUYrkY4KkdZZDURmNRHFHmPH9U6AFS7MAtMdrDo1c45CcAA82ZASbH9F13DjA1Q&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 40.6087834, 40.6087834, '2025-04-02 19:46:45', '2025-04-02 19:46:45'),
(100, 'ChIJXXtqM2RbwokRWf72Elqdtmo', 106, 0, 'University Hospital-Brooklyn', '450 Clarkson Ave, Brooklyn', 'hospital,doctor,health,point_of_interest,establishment', 3.50, 4, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AUy1YQ0Pf_rDW0RoaluF33qr8Oo-v0g6lIDU5XckFtw5u2NOBGm0kyqPh7doQ_-T3MFf6FwOj0V0LjQyp8maMiXq32sj9UZoi9KC97OyybH0ADD0ZLczw6dQc20vPTqTU938Q0ZtermM3NkrVlHQNwkrUZ2w3gH26Bt12-X1LudCpfKPYbbeyEN99D_vRD5CVFvG84iHYbgpMWnsvsuMhI9_bYVCDHAw4yYcR_kG0rUxqn2b7QGqy2NFsBpd0EMqDfm04ratWIS-hMhdMqKMudn7R9-UEMQ6utXuwqiPXCll_bmIAksVL3HdYQR4ZmCxk2vY_MiaeQ5UafxmuyRErUpcJASABaZWESBOclYsq6uJR60L2Ksh9-8rIziapEwYceVptwJyOGllqfD41z0XY9y4iC7_wDWwnQ2Wc65owDMSW6DMFKRExzhBbnAidXRbNs4wx-AY9ow67IOU9FUVnwBrL9qv8O4Ec_0rIxqDuG01FX1ZndpBwyqcUmdQXgpFp-2LEPpNpbEEAO-NhmjF6DzPxfgFD7_r8B0Nr-WTzc1Vj6YiTvPKgQfX-qSLV2sgXyblEeNWEA&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 40.6550768, 40.6550768, '2025-04-02 19:49:40', '2025-04-02 19:49:40'),
(101, 'ChIJTWjMKqxawokR2UXmaZ6inJE', 106, 0, 'NYU Langone Hospital Brooklyn', '150 55th St, Brooklyn', 'hospital,health,point_of_interest,establishment', 4.10, 4, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AUy1YQ3qponR17redw5ZWu2icj_nAoApOZenCKviD_ZRquBCJqL3VtbW_lOCY-w5-uE4aDd6Zt8rl6pmHMp1I-Uj5vfrUchIEOs9qyaYtV97EuFPhuaESKaKRa0L4dhNl1M52hS2bJa-1uPCf618vjFxr7zbgHGeK_vu2gjUr6stMqSVEl3-GDviYmhv70oEu-IIH4A_FMPDWM7sMG8eOIn8JL5rdg6uyUjjRtwciyljJcsYpof_m-ubvIpO6EX9tAPMjfHoEHGqi1qGodJf3ZOYegpwnNRb16pfUxgAr0232CSbV8JO1tU&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 40.6465591, 40.6465591, '2025-04-02 19:51:28', '2025-04-02 19:51:28'),
(102, 'ChIJCQGqpfBbwokRmdgPurJ5qqo', 106, 0, 'NYC Health + Hospitals/Woodhull', '760 Broadway, Brooklyn', 'hospital,health,point_of_interest,establishment', 2.40, 2, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AUy1YQ24ucnik38G40xRS9w_c2f9XToBjVDqOKfXaydmGiRygSsweIe4sBBP8mvRhwIN6NH-p-jex4Oor57lsMXFKzKoMSorvUA-xP1rjpUM-Escofp31Qg03sd_PSW-GZEsKN-f-HsLvROSprmBFpKrLZcKvnkEmQ1KWuFgUNubvh3RdjSD0KKUd2CsQ6OrNMJvdrkbEyE3S18iHhyiHZSe0-yq5DlgTMqMboQaqvB2vmat7HCwsl6iwq6SmfXogMkL-C3CfVCAeHAyZIyANRsibSDsRr012XRUP3tFcP6rxDC5Nx88zY1tb34mhGvjUXXEKYy5w7r5su1sIUWDKmknGAYtNQm-XjVys8C-HGaSV75j_kF-rv70YB5wOBR3TpkxRLG9LI3Zw90cieYKqW-T9BUM3bvWO5pzqth9Iuu-YUrXPAE9WRd4xa2buzljnjRbbGnnCGd9yW0xB3Lo8ELM2f_nDWi8L7DJyjpsMS8o1aZ9yFQUFHXS_ZkHX4HJSuDnXrBWGeortjrLZsB_ED6IrbXNdsFYLm6GByOWFZo_OIzg5UVT53cIWHXSGDu8KqKI-SLaDA&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 40.6994835, 40.6994835, '2025-04-02 19:54:56', '2025-04-02 19:54:56'),
(103, 'ChIJHW0gtkdawokRehZY3jO0ewE', 106, 0, 'Heights Casino', '75 Montague St, Brooklyn', 'point_of_interest,establishment', 4.40, 4, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AUy1YQ0vRCSQ0P--n2l09btguI3mguZdhnD6lrqRvdH5NM7DZD4K5_r33RwzbGdqIA5xEZ73lf4u6xCZdTXzxlcaDWuOXk1TG-zaGYa_EzgO_OpCukulHXvlYoawIZsrFPUWhJFkvRRM4egrXCJ7yCR1w-YIFZdW1pzYhNu0XGlFEmi4sWwz7T9pst0gyu8lYLANLu8ypB6UBrbTc2cmbIJaONM9O3jjQKsAhfJorJqY8kPcKE9crTLOe_jhpEHqUpjnPd9oaLVcw2OodpF92gG6vbMyAo4yycXb2Dse06AO-OZkgWvK0CM&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 40.6954927, 40.6954927, '2025-04-02 20:44:17', '2025-04-02 20:44:17'),
(104, 'ChIJM_QQQL5bwokRMo0UoSSL4Yg', 106, 0, 'Casino', '171 E Broadway, New York', 'restaurant,point_of_interest,food,establishment', 4.10, 4, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AUy1YQ2EKHzitNs8PX76D2EIbGmzXcvaaDSZcfdmpEKx9OBJroEnRM7QMMuBjw7xBvZ6cbiyqts9VA0Ub_QymqB5iLrH3at9IzI3pxkjFFQ9kMfMJ09_7iBo0l3iY0gxNTXOczHDQUM8R051gnEbpD3IMFTavR9M2FLZVYJJN5fy8k30UuUhmUW-ulsVtI-HYDwW0LTZnoyDubtIGa3Xe1EeSpQnhlwQT-ucnYf4C_Dkc9DsbBYR8pTwD0NtUKVpvp3injtJ3rHD39t8HTK-7V5OuwyBuakZj7Xk1iWaWupg3HrRY3jeSNg&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 40.7139823, 40.7139823, '2025-04-02 20:45:12', '2025-04-02 20:45:12'),
(105, 'ChIJpeEL17hEwokR5uZxwzsYwmQ', 106, 0, 'Outside the Box Shipping 11230 (UPS, FedEx, USPS) All Drop-Offs Accepted.', '1820 Avenue M, Brooklyn', 'post_office,finance,store,point_of_interest,establishment', 4.80, 5, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AUy1YQ1hAUf1HDk-TXlHFbUe5KkFDHCrHgsuqIbZRYyebxvWQAPuU8dsU_4WBfLRoW8u3i9O7I45_Cco9R6oBtSxMD1R_9yBNvLAbaMQac0Z7s0nOTrIIuABcfc_SGqEv7XM7EKDwXyIVDLXfvdR457Be6UpPMan_utqmOE4I5rSkCKS6It2bZpO_hEVrBsTfciLALNUhShN7tGsQP5vPqFYvpfCTim7xXZ43VOEdIwjOoGYTiHuku6zHYhwmwiE4-u7CsFiFxGgjPnMd2YsZdXw78rh1GXhvjKQzRDwGNHSAvvZquEG134&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 40.6182392, 40.6182392, '2025-04-02 20:58:19', '2025-04-02 20:58:19'),
(106, 'ChIJw9768jO3j4ARNRtDR_9UAlk', 74, 0, 'Star Modern Furniture', '747 W Dana St, Mountain View', 'furniture_store,home_goods_store,point_of_interest,store,establishment', 4.30, 4, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AUy1YQ2_kb2gNy8YoZGSGDiyr0LKlgqHhh7lyK_EC69xLL5QSkMfi_hKqx9eTgP_37Hmqmh6Hw2hQq02x-I-J6Q3NyOCIzwp5y5tV9-PV4844_zuLsKo4V-si0SPSAwkE-Cd6qndNM-Zdlg9Hlm0kgWbKRuioLIdAPHlPt99iIoUsdu_U2-4qE-scQWSoXtxOLFB6E8ewbTrLnRZF7koRpxkE1nD4H8WayYBXkUmqwCgy4xRGpIGz4_0HPLBa2ZrZFZqQ2YZXXIHOAjIZEtkAdg4bc3KhVe9uckd1A-PzTIBmZpfz3rztFzNN0ZixOszofPOfNbM3QbufIAoK3BGRBsSkc2oyi-sb7UVXR4pQwGjIZEeETf-xAIQXAKwJSGybDrFFuwvH0EpOkvBaIOsjH1TLUyTGuMz_C5WRy9bJbsCa9zlxQdyOK4RAe3dHAi3kTOxN1oixo75RrVaLF3Huyq7EcYsjHRV1Q4YG0PyUbGmJxxSzpWfVpa-Y8MvouWeuLA7K7YYgdchrhfyIGq-VGMfkiuG_dyg_gpG626yglSLQv0Nc_TFSI8FW-4z8_-rzS0nrHSJ2IlWff1QQQ&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 37.3921969, 37.3921969, '2025-04-03 11:23:51', '2025-04-03 11:23:51'),
(107, 'ChIJ537Muo6AhYAR20-a-jpOR1c', 109, 0, 'Wells Fargo Bank', '460 Sutter St, San Francisco', 'bank,atm,finance,point_of_interest,establishment', 3.50, 4, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AUy1YQ0m6CoIHfwifYGzLE3zaFfUnLodOd7diJ7sLXbUKeZcbrKKyrbJBVLjL6RUiSFMWkvndSfJV7RoQ7dwCkTZVoOllI6hsOgVehwAYVoE6mcC60ROOzNgc5MmPVDATFZl2YaDuG0Y2giB_hGpAJncjGTkLHiRB1nJUWjuSLziLmjdyC5UhXcq_dYpm6Dz2muNYZ0jZY3SXRLp6YkbJn5pFLW7oiHjIsmRbD1JEBJc2Nw7FmIL4HxqvPyIalFuA88J2DEqz2V74o-tFzi9QrB2bX4COfIbS6NepHChskYT4O9djkonNXc&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 37.7894290, 37.7894290, '2025-04-03 15:40:24', '2025-04-03 15:40:24'),
(108, 'ChIJ-3rcY3Q_sz4Ru01MM078F18', 110, 0, 'icon art gallery', 'Lahore and, Napier Quarter, Karachi', 'art_gallery,point_of_interest,establishment', 5.00, 5, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AeeoHcJhYPZqZ0F2HamhX40cHgv-Vd1BEfMbpwQucQ2emVAUGSwFmuAcnobEXzsOd3IDcX0tUtrqC8enXrf8FUgMN-mZqTSA0NEsHiERfPoKMFpMjIjwHzG3u-XC4QJuNM5qE67lbE9BcTFV9hVEy7iG9FBydLE4flejbYl1UnDB5bpyQza6KqQpzjMw4eGdnMZ8GFgUI0Og95mNCSmCYu4bDgMClIEdgeaEBp2fqYTzbqr3J580gPhelstdhQpNAFJUrodomeE7nbObscxlA09m81EpvsJ1abZQrpdU_tLoX8ydIYJhF2Q&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 24.8607343, 24.8607343, '2025-04-04 15:52:27', '2025-04-04 15:52:27'),
(109, 'ChIJu9XeYC2ij4ARYHlMycBCb64', 74, 0, 'Dignity Health Sequoia Hospital', '170 Alameda de las Pulgas, Redwood City', 'hospital,health,point_of_interest,establishment', 4.60, 5, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AeeoHcIoZPOQHrRGjpKFmjKDfcJrHoggHMPKy6nwjZVSqO3Nw4JCl2dfALpchsqktwayvRzZLLx_oNdkdEQ2d2pFolVNW36zHC5GDPOnsBCCdQTeduZvOcQN6CcOLYImqDC-GyjNn0IiNvujpIdZiRvCXwjTVVkS5_dBUusBVkedPcl88HTU6ZpvfKvpPnI4m8coxpb22QhJWDb7bChfo5lFp_XsRlwyGjHmfXQPoyL9laRQhI62kEu7OgJmMZij_5V8B9gQ2mDptwY0pGequHKAq-wMx6d3Fs1WCvHUUQ0b2o4xozuA7F8&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 37.4797150, 37.4797150, '2025-04-04 16:38:41', '2025-04-04 16:38:41'),
(110, 'ChIJzRhcPzClj4ARGb-ZTiskueA', 74, 0, 'Stanford Plastic and Reconstructive Surgery Clinic', '1000 Welch Rd, Palo Alto', 'hospital,health,point_of_interest,establishment', 1.00, 1, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AeeoHcJQ-iKAuaHlWDb0Uvym1azOMQgeAUnfnQAzelcVNYrInoKxtX10n7So3vZbmbnr0vQ4YorWOPdlTTWbehLdopcoSqWsbWYvw83M3enA4FilNnOmUF9bHRLUSHVJR4RjIE1qcuQ-UmxZuLGp7Ks96YuqZ57bMI-6r9QY_vZiA4r_EzyMYCOxJbBASZFz2JqVfV2AEFINc-5bROl2ziKumwecf9fCzrdu1CaLEkgBAkW-cxSWcNayp0OJOuiaFzVhLVe0yLbF9uhrlUciu6VBzslo0QKssua_Z9ZEQyvHzzxl7u2O2r4&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 37.4359753, 37.4359753, '2025-04-04 16:39:18', '2025-04-04 16:39:18'),
(111, 'ChIJtx6ljEK3j4ARsyq3xr9dRUs', 74, 0, 'Moffett Field', '26 Clark Rd, Mountain View', 'airport,point_of_interest,establishment', 4.40, 4, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AeeoHcKn-p4SSc7kTLMu9G6L-Y61tLcYQZJTZKK8gNAPqEP-2LdWozpAjBexd0chSSWbCPRxqkOKIOzXbQcSkWqKvLkEsVcOxiaAbAIPTjJCLRMugjtO1m29lJCKtJrP4Dn-Zh5bVaPjCEw8UCKnNu-Y2TCExqaqOdtoBnGs2NT3JpCb7zSxXIVqMD_AtpPmx2Z4UmPZ1K6LM1VyBrlXcIuVvRkcuNx3ofKVKgkELjkhxjQomiWIGijwNBZWwvLNmFS7JAASkKO-YXnYhr4c5YHDxOy5P9thEgFzAznZ5l9rV2NcROfScHr8aT2U_tVroKPms8_osSGjkzUimNQMyxBD9Nz_cKWef3Pc-AjUvGc1VgNilaZxBHKO-hqSETMs8xXerw29VlhEqr-SKbtyrXXK1-55VtK1k_3uARGoqkTiN2eARYB7FnxBGYN_os2zBcAowbaukrUHXxt2v_HCiXeQkEg4juCp5qjLv8p7UYHeEScU3pVmft_m5CP43ThsyPTzumTgpEuurrXRi17nWbU3xfa3Mik9uKQIUe0rdgEFiIlj1ZX6IBKI0XyF5rson1CaULjmOQ&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 37.4144423, 37.4144423, '2025-04-04 17:17:47', '2025-04-04 17:17:47'),
(112, 'ChIJqzT9ukK7j4ARo0xz5jG3pT4', 74, 0, 'Monta Loma Mardell Little Free Library', '2527 Mardell Way, Mountain View', 'library,point_of_interest,establishment', 5.00, 5, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AeeoHcKs43zofUziPBpJA2EL2JMXOt_0Fq8SWqi-f5CfitYAEiEiQ74DOc5SdLWMfKodXQNN51YFeq14q_LJuwrpzi-bXG9uDfjgjfvA2bAFyVgjLA4mP4pmsIlORXqyge5o9xUa9wYXepalG1xzRVG5D-0888gslo44Ug9tLZTfynfvA3rHhzdj8qf-s2Nq5x75zWp-Npdp8QvAUtfhuZXisy9FTg3Lud3lhvxOtCOkalyfEyj5wP5OpqDka_b8NCQs5OLFAIwlQIuzwFXnPjlLosW_aYNVFnEwrj00eaeItEp6C7yUDJ4&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 37.4123420, 37.4123420, '2025-04-11 17:43:13', '2025-04-11 17:43:13'),
(113, 'ChIJkdpC31yxj4ARW6H0_MqsF8w', 74, 0, 'Monta Loma Lassen Ave Little Free Library', '254 Lassen Ave, Mountain View', 'library,point_of_interest,establishment', 5.00, 5, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AeeoHcLkjyBrgyiQ5VLQXnCnWokEshKtKtFi4wIvZxd_XrSiArnZ0ILBd0pHDd866O5-fsjxQRvUVviIlvdb92CXMlyzoIA1h66_RxVej3NGCacoUXXlY6aosPblm5GEb35AfeWT1dXs1KIhtlYXODSMkycJpDp1itTciCbmwK5gaSxG1v2COQ2LOodN86tEEWl4d2ySIiRMuaNcXSMKzzs3t5TIa7yy7m1ZegXd-OAKuOI71gkI43yhfbAA9H2ymUlJeSyTDhXWVHI9aOzmLaWbiJiIktCmlbWzgrYMCosoUPuTI_rrVXk&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 37.4071356, 37.4071356, '2025-04-11 17:43:27', '2025-04-11 17:43:27'),
(114, 'ChIJ6SiwXoRw44kRRZdCkCBjHrQ', 106, 0, 'All Business Marketing', 'One Boston Place, 201 Washington St Suite 2620, Boston', 'point_of_interest,establishment', 5.00, 5, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AeeoHcKjT8Z4Sa3LxlzCGbOG1Bvv5zlx4AuL26t98lrFF1yN0u6ys-VOJeqbijurV8Rt0rW2gduNj0TGuvHeBNoSYpOM-WKNyjCFmY-HwcvkGqhy5UK4MzcTzA3PFjA4RK70o6A3TNku_bMlHcvjBgTYjUGFKYjcLwAcIu-abxq5dU1TGvzH878PomDv2DjipoSIvva_sbLEgArSFcLgnXmEJgWLHqQpBgWahYtOALfcgNI8MOXXbMe8K9QYE9S6uzzpJh2hL8j2wlfzUS2A2E3x8iZPOrSwvy1yWETCRTWg5_xkv4voGto&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 42.3585500, 42.3585500, '2025-04-11 17:53:54', '2025-04-11 17:53:54'),
(115, 'ChIJ3UaU7QZx44kRmUmfC2rtjXc', 106, 0, 'Cover All Masonry And Construction', '201 Washington St Suite 2600, Boston', 'roofing_contractor,general_contractor,point_of_interest,establishment', 5.00, 5, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AeeoHcJed8ZHvSAe4WosudYjcefW2EFrHZA7j8W8TSzXSNp6YKO5to8k_IU4-c328T9ijFn1-gxQf-eeWxh4_89O5pRo5gNVtsDjii0WBwNBqFWbfLvHrq4wD-04t_aClVtPc7Q7_Xa3CJaLG1ZWBWoPv6Dp0ino6CwhzAAjQN8TjlfAG4YMtx7fx78WPhgVMpMbIGHjpMHVE-Bu2TRNBTq3agDRJ9qlXkrLKMLvKpcuhL0v8cufSBFZI-uwIfdDSm79AfR6JQaJoepavx9atC49-jV9IEe6WvWKSpgerhIUKgss206HUPk&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 42.3585490, 42.3585490, '2025-04-11 17:55:33', '2025-04-11 17:55:33'),
(116, 'ChIJ_49Wzj21j4ARxMOCieOXWbI', 74, 0, 'Beauty Threading Salon', '942 E El Camino Real, Sunnyvale', 'beauty_salon,point_of_interest,establishment', 5.00, 5, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AeeoHcKp-A9N5npD7oorxEFD2G1qgcL6xc0MDE3C1yDiAs4vr3FyICHhAIBdHU3BOTfl4ppi8uZhcLilA1pYwTCNSjSjoipZ1fjtwe72V9Vkl4EYaqRPFuCB_-wq00a9oGZuYqYDCL-Ilf1WKUsftZhtZywHIZLN0bN8kETtMO_u0lvn1iDXDrANnjddRAnE1JKReAutLp5NbdCRn2Pm-abblhUnLdY-HdhFVCn4GPTLcUQ6dUe8HebNR9XCbGZ-wA7IFj8mbZIGk8uK7ZFHIpVGJl0jPiLGyJhWP6x8TjWLQjKxFPXgbEA&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 37.3519953, 37.3519953, '2025-04-14 11:08:14', '2025-04-14 11:08:14'),
(117, 'ChIJa6U406-7j4ARZietsfdP6dE', 74, 0, 'Plaza deli cafe', '2680 Bayshore Pkwy, Mountain View', 'restaurant,food,point_of_interest,establishment', 4.80, 5, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AeeoHcJkm1Kd8cJWw40e0Q6hsNaHT5L265cQ5X7P9WAH6PePXFTBCWfqRWdTs9xRFw37msmcZ6jQ-Em-K0JMMbRoEq8OpdnBFqSrLZuWcPLyFpbr_oGlBrnwOlt3aW9QwtQaGROnDMxk7f-MBbpqSxkanPRz7I_y9YlK2VupPZN58TbO5TOZPIT8FEdXxMdaRzhjKuVYvHKe9iz5_HFZCkwOlm-UcDZ5FF_VbS0u1G85_S1scD31eldDGJW8KaD3l22Shti8jOfWs6aSD1jBk1QuyQHVPMkMJMgBbYt5rmBnq5xKy80RlqI&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 37.4297762, 37.4297762, '2025-04-14 11:12:03', '2025-04-14 11:12:03'),
(118, 'ChIJ4zZ-h1E1zDERSxl9McUPfVk', 74, 0, 'All Gadget Sdn. Bhd.', '24, Jalan Sri Permaisuri 9, Bandar Sri Permaisuri, Kuala Lumpur', 'store,point_of_interest,establishment', 5.00, 359, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AeeoHcI6rvbgu8EOJKSWNTpk_pqrwO8BXS-X0BT5hi9oRU-Z0_Qiad6aCOFUcCUssA89xog4H7NRqXScmtHbGOF5GMKVCCriSMcq-c_2UmE9uQLJfw-eBLNRrZ5KyCMacXjVG4YM_phYvk_tAUJadTHSl0U1X0l1P8aOEbXmy9mPE7iR-pVErPn3UpVliY3WJKqq1C_TQE0mcqNg-d1orUo6aL0VlYw2sfJX6gkNdG3CyUYcTed6Okbg0zbjjMOrI7ylE0Pz2RXzw_xeapMgDnU8PiuAhNue6wrTVStFswNQpoDpG_JL8hY&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 3.1022106, 3.1022106, '2025-04-14 15:37:52', '2025-04-14 15:37:52'),
(119, 'ChIJhX_H5WpLzDERtF7H2E4xHik', 74, 0, 'One All Solutions', 'Jalan Kuchai Maju 11, Kuchai Entrepreneurs Park, Kuala Lumpur', 'point_of_interest,establishment', 5.00, 2, NULL, NULL, 3.0896784, 3.0896784, '2025-04-14 15:47:23', '2025-04-14 15:47:23'),
(120, 'ChIJIxqtEgRMzDERccmb7mZrR_0', 74, 0, 'All Office Solution Sdn Bhd', 'Block A, 3A13, Kelana SquareJalan SS7/26,, Kelana Jaya,, Petaling Jaya', 'store,point_of_interest,establishment', 5.00, 1, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AeeoHcLqXYfXanuDGkBfJRRF0qkYXHM-WJB2sfzfLu3snn86u9_JzQSBUnJBEVqqPtImImOnokeAIrDuiWi0VSm9bG44_3lJR-L8ZlyycZ9ATIqAonVoQgCABloQaBW-Ok6XjiAu9ioYyheNyMbpLDCCZUsVt_NxH_j76ktzzRPvPIr-GmVCDfSA-A0lA4Ja7yKlJTuzTYJmEIUPWdLwBCJ3LneTDDKvlnGQ0uWrn81Zzzjoy_1PL6lkY8uWwGz1HvUyVCIKonpJHT5ooPZ3kFUydKC8xdWaqVtD1TXbukr7iBoWmb490Ao&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 3.0931257, 3.0931257, '2025-04-14 15:48:00', '2025-04-14 15:48:00'),
(121, 'ChIJ5UpWYgBLzDERnOIWbd3l44M', 74, 0, '撞墙 Byond Walls Pizza Bar & Cafe', '8th floor podium level 08-06, Millerz Square by MyKey Global, 357, Old Klang Rd, Kuala Lumpur', 'restaurant,cafe,bar,bakery,food,store,point_of_interest,establishment', 4.70, 296, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AeeoHcLp9I_xhZ2252VYqfC6uppCtDU3gO8vPV_uljjaScxx4HIhqEbkz0NnqazvmhxhNlmLoZ4Lai_1UTVkHBAHk3tGJtWsrxWGTPhcQ7jpeigsSDSe0umL4C4ehcjTgCTvYrSF5hVTbS_y-B9FQ8IuNpmjJs1iMsvo-2-Ps0rJp96yWLlosDLHD1GuZehMQHnEBabxD8X2y7HgxB90JIffgM9VyhrxEcMR90S5-St4FD6JOSjdOEfPjQvu0eaCdS9b-dKiJxz7o1gP8NNgEdii0dObRz73nJlT6AsYZOPU-BxPfN2m&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 3.0905224, 3.0905224, '2025-04-14 15:50:49', '2025-04-14 15:50:49'),
(122, 'ChIJfXH-BBdKzDERJM5UDfM7Jro', 74, 0, 'SINCE 18\'S', '0113A FIRST FLOOR BLOCK D NO 357 MEGAN LEGASI MILLERZ SQUARE @OLD KLANG ROAD, Jln Klang Lama, Kuala Lumpur', 'restaurant,cafe,food,store,point_of_interest,establishment', 4.30, 244, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AeeoHcLeOn_xTge6mrAVA30DbEmGSYl5FivyB5A97_7FpWJ7Qg7p7y4R5IGZsOOvtBrElgqaTQSti3QKGkyaP_CssVMl1WPWBRKZjYtYZb8lAYIZRrdnr-J9FbTpmBYhHY-hGO9BrM-HuGgC-dHQgGmbP3C_adTFSxkoL9lWQT3jInf4dJvpXXrTMceNcFppAPzm9IyMld4uYk9k_XxnNuCXX32Lt7X6aoNyy-0dfGQKqwx1yRE0H4STEZT8Qv1qpFOiWV50ODDq9xmBzi82v_m1JY-zZrrcXjWbILXoArhIz54wtEqH1L4&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 3.0893716, 3.0893716, '2025-04-14 15:53:56', '2025-04-14 15:53:56'),
(123, 'ChIJ-5PhyTBLzDEROEoBpOTJuQY', 74, 0, 'Little Jungle Coffee House', '79, Jalan Rukun 4, Taman Gembira, Kuala Lumpur', 'cafe,restaurant,food,store,point_of_interest,establishment', 3.60, 836, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AeeoHcLetq1qkMhqVfxnpzLVOdnbE5qmoQasU24MLyHKCvawwLFcKcowccs9U0raNadCmJQQU4fuSd8V8TcpZxSj4SFAQgnxH4pTm4_UXoUJx18hpRAYX8OD5zwpqHyjtY5TXyI8S5jZYnx_pdB4qJsUDOtUKcnnbC7sLxTZ2LmfhsF9jwrDOjtjoaukSTtLMZHAGbHCM7hUOPlCSSJnVdfl5rSWLpqpDQO41f-Tp8MeQxrHPYBNGp1SUDxtRJ_tfHUjr3vMOsx7IknH0eEeuc1mcbwOv0sZLQFToapFb3MFfMixBaAM8wE&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 3.0879930, 3.0879930, '2025-04-14 15:54:50', '2025-04-14 15:54:50'),
(124, 'ChIJ-a9mTjlKzDERJBCbgO1cyZQ', 74, 0, 'Front Room', '16-1 Jalan 1/109E, Desa Business Park, Taman Desa, Kuala Lumpur', 'cafe,restaurant,food,point_of_interest,establishment', 4.80, 1096, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AeeoHcLPHjZq7Yc3DJp62EfrSMJPba-_lxQpXx1YcdcKvnVR3ouLlc3hWzRVxrfmN1likZ0vTL6ss0--HbboDKkS1442ELpzvEXUmazcNyYAJPK6zJS4oD_Nb7v65RFvnDY4TDpGzGS8d73Zyz8CuInGuIIjbZihgfxJgW8EeJSsWXOZ7WXCHtVqQdZfpLFKlcV6sonHoMiJLd2XaShvWNviEk0dXssi0sVAn0eAD9H2SfIbHopJE5dzY_s2BwqaYk11Qiasnc2wnoUbUPu_1bCxckJS86xXHii75ITtKpCkz4Osj5PJx8M&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 3.0968449, 3.0968449, '2025-04-14 15:59:40', '2025-04-14 15:59:40'),
(125, 'ChIJgXnQs_hLzDERhJ__J1AHdz0', 74, 0, 'BaoBao Cafe', '213, Jalan Sepadu, Taman United, Kuala Lumpur', 'restaurant,cafe,food,point_of_interest,establishment', 4.70, 907, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AeeoHcJ_Aadt0cMfSmlKdyd6N-kgNchwvljqT7r8i3m1HArBYfvpIDRFgHwc1pq_dL5zIyIK4LoWT6Te9JtHAA5i90O1Zli59SVt0s2zpk2NBtSyYANEcfPz-CoaYqxfI5BCszt0y4HcirV3JYddBQNIW_p2MF6Scd-FrLj7IfgYWvGWs6iwZ-NTcLk4ggwlkzyFs6t6xX0Zi4wv8wmn6wd0cpO5ksOM-rQaVmITQUus33AK3oN3q6BaNu7RENN8ihPhbdd3E-8xiV2fm7i1IgIO_nlbhaMO_TpU-XbzR4KbwIxDnk9L7ck&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 3.0817445, 3.0817445, '2025-04-14 16:03:19', '2025-04-14 16:03:19'),
(126, 'ChIJ-z-8FvhLzDER0gscofIZYAQ', 74, 0, 'Lights House Cafe', 'Spring Avenue, 3, Jalan 9/116B, Kuchai Lama, Kuala Lumpur', 'cafe,art_gallery,restaurant,food,point_of_interest,establishment', 4.90, 102, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AeeoHcK83avOoS4IzBHpXy--IbO1ik-pHNnnJOR-iJP6C2A_YVM4n8f3rE3IYojN1AUqVnfFuPnfGlht8_uzHs97cRPiVcjp_s1Do_T7hcr3U27HbuC4XCONaG_v_1VZU_bhh2_UNqrCDtsRIg6hE1BmSxbaApzn5fBeQ1iJm8a1WLVihEmKQeW-r3Pam8kizbqQxrzs-rwbCqJ02oz2r1T-HVs8Bs445ie3pTPawaIoSLZ_jKlGaCnd9nBkoTcb1DagyY4qEwOny9Aj-gqQ2O66Jyi5eYLWgragn_EBRxFgAMvKt5QHphQ&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 3.0867532, 3.0867532, '2025-04-14 16:22:15', '2025-04-14 16:22:15'),
(127, 'ChIJK_YDGqpLzDER3vYrTRao0BY', 74, 0, 'Sunsan Bake', '216, Jalan Pisang, Taman Shanghai, Kuala Lumpur', 'cafe,restaurant,food,point_of_interest,establishment', 3.40, 417, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AeeoHcL2sV599tGChFimx2YvSTD2CfGQLNPYZ6rTK9wBbVuMBraNHZ2v319cqNE7LRYFTJWxwANiTCCkiYhelKR5g3k65RxgKKV1bPFLODSJDPA2z1qNXxoZMMbO9RTPo6jwszkoLRwZ1a3E9SHs4Z_aWFFz1cN9Flikjfa0jZBbXzNltiioBhvTK4KuyZ_nOKBThxw0HBzDAQuG97-rYufsGUUvbkZDMpV22PsinM7sWtiB4_1pZvkW7K8jmcOAIGtJ1tUlgjQKf62DswQbWvr3Pnnzo0tTabuNE0Andy6fIoee9uX2cM0GfgPNnEnRRIge9SWuga5yWVlfY9FyjRA6y1vnCIZXphnhgNWzR8WSzav9UY8TD-2bvLjIx8pr7G4YRVta08STiesZv3lvFEJtQzJNtCVfCSm-9fosQoCZ_SdvVsL8XDZr7JNi7Yy9zzV7ofMpH1wyPYCueFfE699VKHhzkR4yGiuWXNNFkmt7sp5P8XQ74HtYyGvqd0fMZfSZosIhd-jFIg_yHIU2fFwVwyAYvynlFl5SA13XL2Tk1YHdAc12lRup528cUaSQE9VggfrxK8p4jvq3-g&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 3.1013315, 3.1013315, '2025-04-14 16:40:15', '2025-04-14 16:40:15'),
(128, 'ChIJq0o43Xh644kR4wmLmDs_TMw', 106, 0, 'All ONLINE Real Estate Academy', '745 Atlantic Ave 8th Fl, Boston', 'point_of_interest,establishment', 5.00, 5, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AeeoHcIAxF2sbEpBkKZmElgCwaPCUEZWWzuxaxZLTywcvpVGhjAvVFf_6ondBjP1sLdk_qMI7preyt7pUsc5Yw8ZFKhqCFSyYy_yQPCLFDEsC7jXoPHKWdCBYDwBBfAfVCq95jN1NvVuQ8R1xlQDhAXStDT_HPqlIf7jZd-E1ZXwL8_L_mqtX58c6OzbDWA7PjacfEHKeAK-taNjpIXG6Hj3G8SjPXHEnS4NWBC2iqSLR4NH3v6gTlaPDTehFr1BEzpKWlnFJfd8aKwNI8QEwM0untqXJIepCFbaiJ0LRBPOOBfBaFBU4Lo&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 42.3503034, 42.3503034, '2025-04-15 21:03:45', '2025-04-15 21:03:45'),
(129, 'ChIJo9SSkCg2zDERQHHK8boro8c', 74, 0, 'All Watches', 'Berjaya Times Square, 01-63, Jln Imbi, Imbi, Kuala Lumpur', 'store,point_of_interest,establishment', 4.10, 60, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AeeoHcKyEXpBmM732RRDvcQzxBTVVNxo7v17g8Zsmd2JYFCOu8dZEhPac0Xkvg4Umgmn_oR7VSFP4uCRfIn_19Zz2dU2I9ZQN9kcJP4VcBF_TuNZokA4UiGxeOne9N4r24rVUt8P11rnxlhjEAjELIF02XRywJOfzSvnFSqLe39dM6Q5VhoM8VZIw5hmS0Iodgc2SolQ4EugW8cLOmSv0F07UTnlJs9m4LqyjLHVGsQitDD2N09FBJwnYLP4n_m0Iqy7fC1DeIZgDZg8McQ62FCiWNcSMgHXZJGUBw8KTPJNYPXiJy4VZYI&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 3.1421613, 3.1421613, '2025-04-16 09:19:10', '2025-04-16 09:19:10'),
(130, 'ChIJFanzCVhJzDER1NN-YnwiE40', 74, 0, 'ALL IT Hypermarket @ Pavilion Damansara Heights', 'LOT 4.23, LEVEL 4, Pavilion Damansara Height, 3, Jalan Damanlela, Pusat Bandar Damansara, Kuala Lumpur', 'store,point_of_interest,establishment', 4.90, 149, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AeeoHcKibZx6wqLqw9AbiTdJIqje5DGPpMv4wviAnibnIre92B3400d2Laqp2i6HBQknqUKHLtJTpFVnKXNh3IwftM4nq1uEnSoTQ2BrOP7TW5kg6RYgHSVyUepxBvqYj7RRhYaRW-BER6E5n5DyBrya6qqxws8bYr-g5_N1ADsMFiESMPQDyW4x8wHYvPRZQuvIgzZA1gXw_od180BVK-cbVtpRegj39fhyGaJHQGJQIJ_WJg7irfo-qHTjuXX7lrLnk83od--HkpVEwwh1c40nn6rJczxQXSZtPzVrDCMPJwmUEh1OOE8&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 3.1465431, 3.1465431, '2025-04-16 09:25:23', '2025-04-16 09:25:23'),
(131, 'ChIJmSGBBBQ2zDERtu8-sWCUuz0', 74, 0, 'ALL IT Xpress @ Sunway Velocity Mall', 'Lot 3-08, 3rd Floor, Sunway Velocity Mall, Lingkaran SV, Sunway Velocity, Kuala Lumpur', 'electronics_store,store,point_of_interest,establishment', 3.50, 27, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AeeoHcLYCr_i1u9k4_GV_rddz9-cxFH1O-Z0_IE5jCH8r7oYDljNUT0NOj4Y3Lce_U_g31_b_A0thGl2o8mcFO4vwwSoTKTKpUL95OfzR3fslUKDJS3Qe7tvrD9icz75EV2tF4w64N_wLHDyzEvt_lnx6wO5jkTpXD-gFxlJ1mK3WWoV6vNgVs70Uwks8mYvvLTQWi_9bly6yrBShprBFq_K6tWpVAVtWkPwoenQ41OtOT4upHM-zdHodSZoTonu1xTkrFyhPZH4bq49NBBTGkYYViBa2pQ5ftgzsnAzDjeEfOEMrZV-1nk&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 3.1280357, 3.1280357, '2025-04-16 09:34:28', '2025-04-16 09:34:28'),
(132, 'ChIJL0G1cX1JzDERzhbsgvhsjK4', 74, 0, 'All Terrain Backpack and Gear', 'G66, Pertama Complex, Jalan Tuanku Abdul Rahman, City Centre, Kuala Lumpur', 'store,point_of_interest,establishment', 3.80, 21, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AeeoHcLs3lCG0UdvdTP0cOPgymra1z_Ae9c3KOEnL7USQgcg-DCk6Oi8cFxcKGMvnQITHo6_cZASsIBn-lVTWReRt1EWgLHiFcCXNLodMPmN4R_WPMmDZ5w2mq1hik1JsXR4f9jHE4jqt0g6uq7J9wMcfMQ-BWvDIl7Zut6OB4tSzpvkDvynsy0mVQLFsR2bNoftxo0QalffTiS_-GJ4dNWsGUj2nLsoRH6tpczvW-EaoIhv6u6sarpqp5VLbDpLEJ_stGLcfy3UZdOQlcBP4LI1WtTlLsxcK3oGgVX0rJuGTwMmbXPbPI0&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 3.1570770, 3.1570770, '2025-04-16 10:38:06', '2025-04-16 10:38:06'),
(133, 'ChIJS0uD7olJzDERBBaP-vvoeS8', 74, 0, 'Sai Art Gallery', '27, Jalan Tun Sambanthan 4, Wilayah Persekutuan', 'art_gallery,point_of_interest,establishment', 5.00, 24, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AeeoHcJMpOyrlEhTPwgskXgat4huVdmbY_3ciH8XOq6YYL9XH77_57rkAYpZZN6U-s23Pex-x8cWl0Hn-voIAq4TRrfMha_xcKyTBDv4dI-0UXKG3KTgFRUIaOZRAxqzN4q0o5deYxaPzefvvdb0QBN7-jaO1LurAqIbiBYkwXpAOUGjHH4y4gwf1J1tUjASste-0SwG5wzxNN4B3Vcuaprvee_iJc7lGx-WL2WY5emwjIDzgIAKsLC6CdRrGxmaoHAUSZigLGo3x4V60Ycj1ZxKduSQqnVLKo78i3QnKmlrbRF59lH-x1A&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 3.1326036, 3.1326036, '2025-04-16 11:11:31', '2025-04-16 11:11:31'),
(134, 'ChIJR52B18s3zDERUVOUJ30vYl8', 74, 0, 'Travel For All @ MyTown Shopping Centre', 'Lot 1-065, Level 1, My Town Shopping Centre, Jalan Cochrane, Maluri, Kuala Lumpur', 'store,point_of_interest,establishment', 2.00, 4, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AeeoHcK2JfqOyegxcTcAQ6LMZ7CtCtZzjd0xa4aySWNxoXzpVTkUxmUokRHKLoBcyajcqhfnJpF8NNPm9CjpWGZTaeuPqtRSuUEifz6LwDS8ZiFcrwT1dnpx0mMb14iinzXv4AQZMrE5EJsdy4Yh4cF6KuMvS_aRaKMY1rISCw8twgRq0PrQ-qSfSsgkBeeN1DyGDR2zVrA_eOFNJaMoPhhKvCUZPiYVBRvKsbRwf3Ev28AWuTcel1nyMQOK_JY0WVHkav1xaoos0w39E1H15vS5XmtVnwLSsxbZiNIo0XwbvKJH61JaTdM&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 3.1340884, 3.1340884, '2025-04-16 11:23:51', '2025-04-16 11:23:51'),
(135, 'ChIJW_Oq9XSxj4ARrD-RpCzrM9M', 112, 0, 'Fremont Bank', '565 San Antonio Rd Suite 21, Mountain View', 'bank,atm,finance,point_of_interest,establishment', 5.00, 5, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AeeoHcLLY7TcD-VYHm6_XGycZ31bXkMVlU_inSgLzXXjQqgwuRQkzec1Q46oOYDzgHNBowcNHhs4Tu5-tHUZ7FLoIP-FcljXIBRZCoB2LzpeKul_zelqq5V7SpsUCu4xv669QEuKOUgVcZ6r4mSRbthrtv5Lt3YFR62uwB_Qq3Opn4572cW06UgOf7GE_xa0ziBVxvj_VT6dxB4uK6SXJjbw9z59G_fwNNHCChvhreTu72Sw1e1kzRkQQmCVHrc3dZ7o_d-1AeUyiJdU61J_OhrUMoBxL5sioAwek5gKRUj9Zl2lDMjcqBg&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 37.4027428, 37.4027428, '2025-04-16 12:48:38', '2025-04-16 12:48:38'),
(136, 'ChIJraLJ8SfJj4ARaMG3h5mLzlo', 112, 0, 'All Care Plus, Inc', '999 Commercial St #108, Palo Alto', 'point_of_interest,health,establishment', 4.90, 23, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AeeoHcKagJ61Dla5zhKoxWUP0jniGCCUUh_btWvkCr4w8wyyz7x-f4YlOQ-_F2EN_m-Igz_oDvOa_jYXv0lxj5xbBdxb_7JoYS4ohHWlcL7YbhTy9dXmhr6ipwsd74zKEaooMuofy06Gon1HzIQHW34tlfnq1lI7bVSBig7telewnsUy2iOgRun0ZMPs5ZkwpRhzHi2G81uJSLHk2lPVo31Dcf2VrXnhmh6sJ0dQFQSKYpt-Hh9O2fTX3T4mRv1_RNqC8IXedf5JgbrFdPUD-V0b0V1OCM9RumaO6fRUwgmX8b36YzmqWKiw8AC4ImEcCrPKa23XzTLP6cEx4AGAAk1Ynebuk0QDOUsUCIE_uKxzgK7ewkOzBwKhb1haowZZhdGuKR0PWXTadcaiGWYns-NNgymQG7OcFmrwgJQfeRKGXNQXPxhgKe6nbAm_rz_gQ7kEBg_KoVXcw6p9gXNLxWHzVk39IxAUpDpNjsfrc18kJfPGDaflncV4QBsVkVDYiA_VwcoejDBpJMXnEzVtQXmK2a9TkS8XW_0NDn6YNyrwXmFMD_sTYx2v7Al2yLXv2jSMROVHHgr8&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 37.4253135, 37.4253135, '2025-04-16 12:57:59', '2025-04-16 12:57:59'),
(137, 'ChIJ-Wzrxnm2j4ARBs62LG7G2oI', 112, 0, 'AllYou Medical Spa', '2500 Hospital Dr Bldg 1, Mountain View', 'beauty_salon,spa,hair_care,store,point_of_interest,health,establishment', 4.60, 43, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AeeoHcKNg_kMp4v1jLgemvnWRwiu7hLH-xe5RMS9MP_yshzUz8v-Y6gjgDNSBhNu1eCE60HUBO1Kg9P4qLWUN3q6z9sEhQKvjRfnPczgq6ytomduA9_c0mlHEUHk06cHMbYaygDc1X__v_9YImbZK_R4NTZnSxOtTwsVRcdjYOtaU9wHCWnSfVeofkPJu9VgaAUzuYXzNu2K4kcwH2dNZXuQU32ffSHOul4yQlVWP29_hByDiks8KtfjJz5JOJ8Jo94hUk3jg3psnshqS6GHckJicrZ2A9VOfPn77dnZ6qoVsfZmJMsG6Uo&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 37.3675449, 37.3675449, '2025-04-16 12:58:22', '2025-04-16 12:58:22'),
(138, 'ChIJIZVz2xq_j4ARffJLRFXvzzQ', 112, 0, 'All Smile Dental Care', '37070 Newark Blvd e, Newark', 'dentist,point_of_interest,health,establishment', 4.20, 20, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AeeoHcIb3DFObmi2gnieIOXIRDbUPgMdLYGOcpJcxYKSlhskKv5fxlzaaThdUr-9HFNIwFj3oGaZaNc1XnYHl40A1DZRccWcumoK0tM7PRX3zBNq2nAYgJsJOf4BQtikf7I0HN8bC130ZMlCIcIRztIKJZ5j8rmXOWLWZGKl6W4fmo55xBTq5f_lx7n_DU1m3WFg-hXqev1-7MpJ1FwdXPFRJs1H-zTPX4-BzLK9nVX71qgHM7bU8BV_BMxGX8C1v89Mr-KMzbt8tQwCAPNOLM3OeZ7ZTbKj3lSiU9hDj1cv7HTVdqBbo4gFizrIZ-bP4Gy1Wz7HF7-S73KlVwq6i2MK2pjvsy_Prpxkv9t1tJifIimAgNSn8wgZccussZED1bDDWCBLHoFcbPPp0XKO_MRPwq73L4GDGw2GAlDep-_FwaKAab5Jp48jeGo_Yl3pYYEB77MoMpLCxODTVCGVE9m8GuGaMRhWQ2xxNmsobUN5PcmTvmn39eOQc1v8gHHib-fY4bYYHnofAsM6IUuunAf2VOsK9V2IEUElslUrvJwIH0-ftEUtGQzkeR8KpJI07vHpiDpBH0l705Fetw&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 37.5367282, 37.5367282, '2025-04-16 12:58:29', '2025-04-16 12:58:29'),
(139, 'ChIJrzxQplGxj4ARPGJG4ViqdL8', 112, 0, 'Mail All Center - Live Scan, Fingerprinting, Notary & Apostille', '809 Cuesta Dr B, Mountain View', 'finance,store,point_of_interest,establishment', 4.90, 182, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AeeoHcLoeppZIjddnZ33GGSvCCToG8wNM12V-qPWVaZcc1-b45H_l09SifVTq3MGD1lx5CAZ4p6NsfU9k4N_qs6iJ14hEUxfmlo5y0-niaRkbCJMUSqVO-PCwvqoFmSYpBtcUc5eGJE-lCICmhVYrW2h-cwNTnR3qCe-haxLDZ8uKMycEkBzA4vKzubj0XzOBSk5C7EwSoPPM_l5qInnLV8Ki0zwntQdm5vXrOBuWFiA4kgbSRqwnjDrAosCk6wJpHvbg3EhxUS2YWtTbnMtkYFNFosE0u5yvydoi3Iczu-vMFGSzKW8F9g&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 37.3729440, 37.3729440, '2025-04-16 12:59:35', '2025-04-16 12:59:35'),
(140, 'ChIJc5Fy7ha6j4AR9vtGV3tdcnA', 112, 0, 'All Automotive', '1900 Old Middlefield Way Suite f, Mountain View', 'car_repair,point_of_interest,establishment', 4.80, 18, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AeeoHcKLNHEgF1e63QxCodCZ5VnHUeDw27AfLcmtXBxnFvZH5ootjsZ20VNYsMlW6ig4bJofH44GKWMEOqMdZGAxRJrP6wtSZdm72AF0cTyD0oZNlFQ7dEALBWI0KT8YSNb39ScPyRo_dNHNbKtPMfe8Occv3dnuyvCJF-Q6qqNmzLQIwpU9OgFfzkq68FJaCh_dsJozXjMcqTrbLSoiCgBnoUPx2-ZpCtDS3mBpGQp72sjUkGm2j6H2BGT6al7vTDqFU1J9tl1PgIlVgumFdEKuxhCTeArSI2C87XTroVJTDleAsf2B7mA&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 37.4147236, 37.4147236, '2025-04-16 13:00:57', '2025-04-16 13:00:57'),
(141, 'ChIJCxP5zQ2jj4ARYFLLTPB-Y8o', 112, 0, 'All American Muffler and Auto Repair', '2701 Middlefield Rd, Redwood City', 'car_repair,store,point_of_interest,establishment', 4.30, 50, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AeeoHcInHAhuhD2DsfCqCl0B2s8t7TEebvqhuRxnCV_6B1HrsVf58vIAWUR8YRpUxKapUGuAMAYu_IjwLMTiS87VdAA_8f9gHAxwIfxYApHz_h5Y8_yhQyDKQ3LlY9Kxs1XUMB0Br00g8dJuWOw4yB9I_rY2GWEZrn4DpMxBCBP7cKJM7KfQk-3BEQbEl4ZsOkb-0kGlFXPCtv26NhnE15sGiUkQRyEa7ifRfW9XS2yZPbAKXFa701xbTHuVYkPF0LH3acG2raSy9h_QAriF2EEyC47z0JYCe2Ysmz8iIkpIbPHGRXScs1M&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 37.4768579, 37.4768579, '2025-04-16 13:02:48', '2025-04-16 13:02:48'),
(142, 'ChIJIV3iygmjj4ARLrej4fnKACg', 112, 0, 'Stor-All Storage', '136 Willow St, Redwood City', 'storage,store,point_of_interest,establishment', 4.70, 37, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AeeoHcKbbFaMCY5mX3bBgkbtH8IcR2kRKC0g2GtBQmNtbIFISqDSdW9amIgZR1LYST9c37uY63SfE-BQFk_2GV2wK01UE6p8dF2sVSCCg4fzkaD_PfEEn3caGa0BB-SzXfVJNDMozs5X2w6lRqwTAWHB7i0aAjjlLDhIAie1kha65vPg9jvwtQrB49vaUoAjd_iE_AV83ELpZOTpgC3CzN87F9A8ezzlrkpzuIRfR5xTq2JTSUMp6pqxgKQkYQs31zkgE1mi0ZGBpdV8m3wP2S6nlXAzE_UDgoTa8p4b55JqR2Cm96RBGt8&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 37.4772360, 37.4772360, '2025-04-16 13:03:24', '2025-04-16 13:03:24'),
(143, 'ChIJc5Fy7ha6j4AR9vtGV3tdcnA', 115, 0, 'All Automotive', NULL, 'car_repair,point_of_interest,establishment', 4.80, 5, NULL, NULL, NULL, NULL, '2025-06-20 12:36:46', '2025-06-20 12:36:46'),
(144, 'ChIJ1TqpNzxLr4YRRb9bsTNTjKU', 118, 0, 'All Ways Cabo Transportation', NULL, 'point_of_interest,establishment', 4.90, 5, NULL, NULL, NULL, NULL, '2025-07-21 03:02:29', '2025-07-21 03:02:29');

-- --------------------------------------------------------

--
-- Table structure for table `wish_listss`
--

CREATE TABLE `wish_listss` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `place_id` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `sub_category` tinyint(1) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `types` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `rating` decimal(3,2) DEFAULT NULL,
  `totalRatings` int(11) DEFAULT NULL,
  `openNow` varchar(255) DEFAULT NULL,
  `image` text DEFAULT NULL,
  `latitude` decimal(10,7) DEFAULT NULL,
  `longitude` decimal(10,7) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wish_listss`
--

INSERT INTO `wish_listss` (`id`, `place_id`, `user_id`, `sub_category`, `name`, `address`, `types`, `rating`, `totalRatings`, `openNow`, `image`, `latitude`, `longitude`, `created_at`, `updated_at`) VALUES
(1, 'ChIJyffzLL9kAHwR3GwXU5Kybxc', 34, NULL, 'ʻEwa Makai Middle School', '91-6291 Kapolei Parkway, Ewa Beach', 'school,point_of_interest,establishment', 3.90, 17, 'No', 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=ATJ83zheJFuAHJHmp6q6NoG0deRDkh_qKaS_qaw2PpY0H3GXEirRbGy1_t5QFzTwyHCA2jiFacuuyGFGtl-R7IVXSZhI1l9J1AFgpt-vboSSFZuZ06OLcTJW3ahWB9H9B9oorAiCti8tfewDpV9IhpooqERcHZBIb40zazrgmZe9cani2LMX&key=AIzaSyDqnUWO38RJMjRlwsY1imxqB1WI8ZWsU3M', 21.3231452, -158.0268623, '2023-09-27 20:13:31', '2023-09-27 20:13:31'),
(2, 'ChIJzTyQS5RkAHwRl-ne5X6RDoo', 34, NULL, 'Geiger Community Park', '91-1129 Kahiuka Street, Ewa Beach', 'park,point_of_interest,establishment', 3.90, 183, 'No', 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=ATJ83zhERycgs1xHWC5MOdYzvBjGKFIrpTbmVayYRR4EOJw9DdWagZ-X4AEYufN4I3oahrRa26Zv4HTZlHQAG-CEysFyPmSg0I5hv0TlDgsewwLJ0llpQbC4FH48PZqNsakhXX-CNvG0tMzZEpMV8Yy6BkjF61wcK2gGEgvy2r9LTGo-XPU1&key=AIzaSyDqnUWO38RJMjRlwsY1imxqB1WI8ZWsU3M', 21.3334562, -158.0277907, '2023-09-27 20:18:20', '2023-09-27 20:18:20'),
(3, 'ChIJPzZMU-xkAHwRV2ym_LFuO2U', 37, NULL, 'Safeway', '91-1119 Keaunui Drive, Ewa Beach', 'grocery_or_supermarket,bakery,supermarket,florist,food,store,point_of_interest,establishment', 4.40, 1359, 'Yes', 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=ATJ83zgVprhABrZtXSn9INNrfjZ7VccbNhzG8F4ZQcM4of3LW8GqHmCfkg3EqNzzeV_ypi23fXh1VNqV80DuofvKn_m_5cuwsQDmh_QBrumD4ijoxfecTRw4qxFoVgvEpFFOQu_IT1Co5kPaQLWxvoHY_VVbDMoq8INdc1VqvPg-lrHBEzKK&key=AIzaSyDqnUWO38RJMjRlwsY1imxqB1WI8ZWsU3M', 21.3269102, -158.0201791, '2023-09-27 21:11:04', '2023-09-27 21:11:04'),
(4, 'ChIJA20turdkAHwRfGW4E5NVeeg', 37, NULL, 'My Personal CPA and Financial Planner LLC', '1001 Kamokila Blvd #100, Kapolei', 'accounting,finance,point_of_interest,establishment', 4.70, 13, 'No', 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=ATJ83zgHluVoQ4fAPIwtcXx19QR28kFeTxxS8EGuPjpH8bVAnKf7HvWG2uTvNiCanplice87p4XOpmkonETnwlTgt9jh9C3t2HmuJ_L2dC_u5zIgGO5PsLhfKeeITsSbR-OpXF_CPIQTqnKGZ8rcSTT_-7OVkIv5B2HzhtU4upXB-2FhUn7J&key=AIzaSyDqnUWO38RJMjRlwsY1imxqB1WI8ZWsU3M', 21.3348463, -158.0805227, '2023-09-27 21:12:38', '2023-09-27 21:12:38'),
(5, 'ChIJnZG6SO8-sz4RONi04evRqSE', 1, NULL, 'ʻEwa Makai Middle School', '91-6291 Kapolei Parkway, Ewa Beach', 'school', 3.90, NULL, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=ATJ83zgJvPnJWN7zcUSBVFxWh7Vx5V0KljsJankZjUcnSdvOQy_Mm02Vd3s8s1bO7xH81lCeIAzkNr1kQp-7zjnSlRxfVi3wlVFlFGl49jKwFatcEskAr-l0OpAQFEsm1PnWR9F7leCpJ2qKb42HRrVifv3p4Vq4cxHSEBy0jsyH9-ZQpKjD&key=AIzaSyDqnUWO38RJMjRlwsY1imxqB1WI8ZWsU3M', 21.3231452, -158.0268623, '2023-09-27 21:32:54', '2023-09-27 21:32:54'),
(6, 'ChIJq6qqqhpjAHwRlYutnVzCjRE', 37, NULL, 'Edward Jones - Financial Advisor: Kevin M O\'Keefe', '1001 Kamokila Blvd Suite 327, Kapolei', 'finance,point_of_interest,establishment', 4.30, 4, 'Unknown', 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=ATJ83zhsTENAS5FEg5VbnAeEurbCPvWjSqitlVAmiFRB4dhCUxqVfzmmv1Rcr4Nj_wMf9qdpu5Scwr9qVzZhWZOBFH0ZPadmvHjeBTcSHzUtldNidj4T47-pnz2TgOBQp9hSJwWI_xyFT0ueIrV2t_eDIHD-Q-Kt1GZfa0bpm66MVzM8qm8r&key=AIzaSyDqnUWO38RJMjRlwsY1imxqB1WI8ZWsU3M', 21.3347226, -158.0803807, '2023-09-27 21:42:24', '2023-09-27 21:42:24'),
(7, 'ChIJQ90kNBRjAHwRwzZkuh_QrwA', 37, NULL, 'West Oʻahu Community Health (Kapolei)', '599 Farrington Hwy, Kapolei', 'hospital,point_of_interest,doctor,health,establishment', 3.20, 23, 'No', 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=ATJ83zi_9H3N810T6DTBiDpBDmrIkmJGVvlw5hiYQopA_rOtrHI14KzXweK-e_RkZ4a0udS1ok9VtXF8BEpevqELrgeN1_C-JGB-Q7cVR0v26fhNY3Ncw7aiMTXHX4w7fGltKFNyT9oP7GCGzUj4ZorZqcAcvhAPB9mOUBWfVzpHz9j4Q5Fl&key=AIzaSyDqnUWO38RJMjRlwsY1imxqB1WI8ZWsU3M', 21.3392433, -158.0759075, '2023-09-27 21:42:59', '2023-09-27 21:42:59'),
(8, 'ChIJf8cAKm4-sz4Rs2Fu8306j0Y', NULL, NULL, 'ʻEwa Makai Middle School', '91-6291 Kapolei Parkway, Ewa Beach', 'School', 3.90, NULL, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=ATJ83zgJvPnJWN7zcUSBVFxWh7Vx5V0KljsJankZjUcnSdvOQy_Mm02Vd3s8s1bO7xH81lCeIAzkNr1kQp-7zjnSlRxfVi3wlVFlFGl49jKwFatcEskAr-l0OpAQFEsm1PnWR9F7leCpJ2qKb42HRrVifv3p4Vq4cxHSEBy0jsyH9-ZQpKjD&key=AIzaSyDqnUWO38RJMjRlwsY1imxqB1WI8ZWsU3M', 21.3231452, -158.0268623, '2023-09-27 21:46:55', '2023-09-27 21:46:55'),
(12, 'ChIJf8cAKm4-sz4Rs2Fu8306j0Y', NULL, NULL, 'ʻEwa Makai Middle School', '91-6291 Kapolei Parkway, Ewa Beach', 'School', 3.90, NULL, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=ATJ83zgJvPnJWN7zcUSBVFxWh7Vx5V0KljsJankZjUcnSdvOQy_Mm02Vd3s8s1bO7xH81lCeIAzkNr1kQp-7zjnSlRxfVi3wlVFlFGl49jKwFatcEskAr-l0OpAQFEsm1PnWR9F7leCpJ2qKb42HRrVifv3p4Vq4cxHSEBy0jsyH9-ZQpKjD&key=AIzaSyDqnUWO38RJMjRlwsY1imxqB1WI8ZWsU3M', 21.3231452, -158.0268623, '2023-09-27 21:48:56', '2023-09-27 21:48:56'),
(13, 'ChIJx4olKCBlAHwR63PLDegG2hU', 34, NULL, 'Barbers Point Golf Course', '2249 Essex Road, Kapolei', 'point_of_interest,establishment', 4.10, 235, 'Yes', 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=ATJ83ziyQ0fDbqye21VnXzxphDT7T9-LRf3V8XMgaCXTgWrrddhwKny3kKvBvUGLoIGAy-NMpwlVuPo-uP0LkEnIX-6z0e_6s9kuPsb1XYqraRX3J0-6kgQj5tNJoNG0HKVX8N0n9-ddPySa5dVvndGIDWj3fe-kMOYNLdGmCutWcRO0rTfc&key=AIzaSyDqnUWO38RJMjRlwsY1imxqB1WI8ZWsU3M', 21.3247222, -158.0388889, '2023-09-27 21:49:25', '2023-09-27 21:49:25'),
(14, 'ChIJyffzLL9kAHwR3GwXU5Kybxc', 37, NULL, 'ʻEwa Makai Middle School', '91-6291 Kapolei Parkway, Ewa Beach', 'school,point_of_interest,establishment', 3.90, 17, 'No', 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=ATJ83zgUoRJvRM3w6Bg4Aaapzri3iGNrHt4wlPh-PQgc7CMCEoV0xuCT1clj2EaJsd-5O4mmWXE2grdEayVNbU-LZ6ICtV2ND7DAq438KO2XRuKntNE0mvNTlI9bCTqWkIdpnPn-pvZxJRauUd5DdvDuJqjshFpvH5XIxDIA90Ow4-EtifYP&key=AIzaSyDqnUWO38RJMjRlwsY1imxqB1WI8ZWsU3M', 21.3231452, -158.0268623, '2023-09-27 21:51:14', '2023-09-27 21:51:14'),
(15, 'ChIJ63R8asVkAHwR1b_7uJVgi6w', 37, NULL, 'Public Storage', '91-923 Fort Weaver Road, Ewa Beach', 'storage,point_of_interest,store,establishment', 4.80, 446, 'No', 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=ATJ83zjALlxM3UY2R9VUMkBhIsyZNjufVI4-_t3xWqr32IohGsO5TLNfM9VV3HFPbAzFA3KAnRYGI8Ii2SsebprPpIeAnPHdhtjuwdABnSXZMUGiOKSS4A0PjrUNIw5FqDcZstKz9dLWZkL9ak9imjCjB0zefYxxEJyP7IdvBTvQ4uXm6gY6&key=AIzaSyDqnUWO38RJMjRlwsY1imxqB1WI8ZWsU3M', 21.3182269, -158.0141836, '2023-09-27 21:51:47', '2023-09-27 21:51:47'),
(23, '1', 1, NULL, 'ʻEwa Makai Middle School', '91-6291 Kapolei Parkway, Ewa Beach', 'School', 3.90, NULL, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=ATJ83zgJvPnJWN7zcUSBVFxWh7Vx5V0KljsJankZjUcnSdvOQy_Mm02Vd3s8s1bO7xH81lCeIAzkNr1kQp-7zjnSlRxfVi3wlVFlFGl49jKwFatcEskAr-l0OpAQFEsm1PnWR9F7leCpJ2qKb42HRrVifv3p4Vq4cxHSEBy0jsyH9-ZQpKjD&key=AIzaSyDqnUWO38RJMjRlwsY1imxqB1WI8ZWsU3M', 21.3231452, -158.0268623, '2023-09-27 22:02:17', '2023-09-27 22:02:17'),
(24, 'ChIJPzZMU-xkAHwRV2ym_LFuO2U', 38, NULL, 'Safeway', '91-1119 Keaunui Drive, Ewa Beach', 'grocery_or_supermarket,supermarket,bakery,florist,store,point_of_interest,food,establishment', 4.40, 1359, 'Yes', 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=ATJ83zjJECHii-JSqDOk_nLkzBhdyYl-k_hhRkkeoBKMZRkD84isPx8U3kMMEz5vdaCDq6if277Y6h8FbjG6kUBYQPxGYDpYSgzPqn3u10O_Le-YTMy_2NnmfXokmx60-sDMdMY83ahAWTqL_U8oJGUf9Dd3pLU5pYKO68hNdQ7d6JoWbLsN&key=AIzaSyDqnUWO38RJMjRlwsY1imxqB1WI8ZWsU3M', 21.3269102, -158.0201791, '2023-09-29 21:33:22', '2023-09-29 21:33:22'),
(25, 'ChIJyffzLL9kAHwR3GwXU5Kybxc', 41, NULL, 'ʻEwa Makai Middle School', '91-6291 Kapolei Parkway, Ewa Beach', 'school,point_of_interest,establishment', 3.90, 17, 'No', 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=ATJ83ziRoBNILQrlhBf2kPtOaMsPhPLi0AwZtaV6BSDlqd3QjkZTUUePGu2rd5zkC6VH4demsHOWQJEjXJ_SyBV53f9-SOTrr8B-jGqbzEtfdj0hSkoxzFHF1phRsWYq9c9uGcln8EfUroJvcva28bXB0OIKh7M3BnPRYQH0lv9lO21sT8Pi&key=AIzaSyDqnUWO38RJMjRlwsY1imxqB1WI8ZWsU3M', 21.3231452, -158.0268623, '2023-10-03 22:25:54', '2023-10-03 22:25:54'),
(26, 'ChIJ7Rjdic9kAHwRAZv2uSo3iJM', 43, NULL, 'Loco Moco Drive Inn Ewa Beach', '91-919 Fort Weaver Rd, Ewa Beach', 'restaurant,point_of_interest,food,establishment', 4.30, 153, 'No', 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=ATJ83zj_3cnHtsuyyN_RkihixTfRiRstfRiEI1UDJX4hFxQhZr0GlDQr7QVUQeWi7K09htar5sXVFVfgEogg2q252oUGVD_PtcKtH3daNyID5UFA2bJ6PbS2CyBIMhtL3j6UPe2FXq8vMJZDjcxtcRljCuheP0-UMTFdCubS1jpJ8Hx0GOxC&key=AIzaSyDqnUWO38RJMjRlwsY1imxqB1WI8ZWsU3M', 21.3163776, -158.0138397, '2023-10-11 21:13:37', '2023-10-11 21:13:37'),
(27, 'ChIJIWR5xee9vUcRruRpaMh5DYU', 44, NULL, 'Dorint Pallas Wiesbaden', 'Auguste-Viktoria-Straße 15, Wiesbaden', 'bar,lodging,spa,restaurant,food,point_of_interest,establishment', 4.20, 1450, 'Unknown', 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=ATJ83zh0rlwVf6qNZMCTdIEH0iDbNT-qF98cifQSwNtckVre_P8Qa52pmBzgZPC15AV83-Zwf174EV5BLfX82DIWHNDv0HtLddDnfekHs2HD16d8iTw0MmvkoIbJg379-2Y_aXQ0LT9OngEJe_E6LtYBR6EbE_9LDb5r43tuUhy6A0Wdayxq&key=AIzaSyDqnUWO38RJMjRlwsY1imxqB1WI8ZWsU3M', 50.0741968, 8.2464159, '2023-10-12 03:28:04', '2023-10-12 03:28:04'),
(28, 'ChIJ75XRUww_sz4RjpXMeK8_G1k', 46, NULL, 'United King Karimabad', 'W394+324, Karimabad Block 3 Gulberg Town, Karachi', 'bakery,point_of_interest,store,food,establishment', 4.30, 3371, 'Yes', 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=ATJ83zgQLpD1TdTUpPE4J0QCK77UJhgqsg_SuAOap_2hlnfuJ5P1xy1n056MSKp1TgXA4je1gdBHPsmeos7l6sHMf8cWwMAIckn2FuWaSZZAA2ldawDcydQOtu9mXpPyFLNEkTxKsibZDmyjArpPXguyIzWWPFt9EXpfAlwnLnlIWtKNWwNy&key=AIzaSyDqnUWO38RJMjRlwsY1imxqB1WI8ZWsU3M', 24.9176407, 67.0550705, '2023-10-12 20:07:33', '2023-10-12 20:07:33'),
(29, 'ChIJaVvU5SA8sz4RngGIwLpEvIM', 22, NULL, 'Mona Clinic', 'V338+8F8, Block 6 PECHS, Karachi', 'hospital,point_of_interest,health,establishment', 5.00, 1, 'Unknown', NULL, 24.8532926, 67.0662165, '2023-10-20 14:54:09', '2023-10-20 14:54:09'),
(30, 'ChIJeztG1cc-sz4RZgLaTiYts_0', 47, NULL, 'Zubaida Medical Centre (ZMC)', '437/C Ghazi Salahuddin Road, C.P. & Berar Society Cp & Berar Chs, Karachi', 'hospital,health,point_of_interest,establishment', 3.90, 183, 'Yes', 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AcJnMuH3L-iUuBNsGchmUg92KFGwtIR0qT_MnKaUx_HG_XLm_wwl-4RQ0ju4Rm27zInAU2NBM0PWwaeAfbHT1fzpmufaQtrGkq0vCR30BYepkVWZmz1Bo5L_XTBdYxSMAaYD7jccqw4hp7BlpmET_5bJDkBJqJrlRaGfVumk2RxFfstF066G&key=AIzaSyDqnUWO38RJMjRlwsY1imxqB1WI8ZWsU3M', 24.8832302, 67.0821474, '2023-10-20 16:52:19', '2023-10-20 16:52:19'),
(33, 'ChIJaVvU5SA8sz4RngGIwLpEvIM', 50, NULL, 'Mona Clinic', 'V338+8F8, Block 6 PECHS, Karachi', 'hospital,health,point_of_interest,establishment', 5.00, 1, 'Unknown', NULL, 24.8532926, 67.0662165, '2023-11-08 14:07:21', '2023-11-08 14:07:21'),
(34, 'ChIJrVIdRNd_j4AR9iWPfvg92b8', 52, NULL, 'Project Finance Advisory Limited', '16A Funston Ave, San Francisco', 'finance,point_of_interest,establishment', 5.00, 1, 'Yes', 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AcJnMuF9cHrJLeDKD78PH_4FnJv5RsnnDuQO2K_Djm8GyNphrkwydnnxdoEPU_qzjAw4VDlFc5CF3PmugqPwggqxgN7PFl6F9I-bB0jzXk1S1dBVWK4qCiTLzULar3lu8Ba2bWlUc9ADGFWFVU3p3Lz8_nsmfqnfbdD2RHZuQfmk3FCIuOBT&key=AIzaSyDqnUWO38RJMjRlwsY1imxqB1WI8ZWsU3M', 37.7973600, -122.4575305, '2023-11-08 18:42:04', '2023-11-08 18:42:04'),
(35, 'ChIJjc-4touAhYARh2JawpFyvCY', 52, NULL, 'Wells Fargo Capital Finance', '601 California St # 704, San Francisco', 'atm,bank,finance,point_of_interest,establishment', 2.00, 4, 'Unknown', 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AcJnMuFEX8aoZwfBY_G-WrGhytyADilYAreLX8sbozKFI9x4PAXjdswPP-CfmIBPU4LznValeKxi3mWzQazUfaQPghXi1jm_PlgPJ3fPqVnia26XU6ggv-GqOxUM2iemwF77oQe8qLrJG1bVsOIG-C2ZEYCAWpx9J3r1NsOa8w564c-u-kKv&key=AIzaSyDqnUWO38RJMjRlwsY1imxqB1WI8ZWsU3M', 37.7923621, -122.4047437, '2023-11-08 18:42:48', '2023-11-08 18:42:48'),
(36, 'ChIJjfdYMWGAhYARtaFBwg1q15A', 52, NULL, 'Lazard Financial Advisory', '4 Embarcadero Ctr 24th floor, San Francisco', 'finance,point_of_interest,establishment', 1.00, 1, 'Yes', 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AcJnMuGLxLUCyFT6fiiuOP7haY65NPxo9byP2Hih53X7ZX2YCCjbki-j1ev1JjhU-NwjvzjDIjsRp33sh4FSV_UadBFfTAn0VYB297EcQM0ItYBwyBwzwYUH4ICEakhQzPEyr3i13pOQ_icmgm279RqUue8B_sR13UQ8gSEBCR9ntizXaU1l&key=AIzaSyDqnUWO38RJMjRlwsY1imxqB1WI8ZWsU3M', 37.7952508, -122.3961077, '2023-11-08 18:42:52', '2023-11-08 18:42:52'),
(38, 'ChIJmQIReYaAhYAR7_GwZ4EYByY', 52, NULL, 'Hotel Zetta', '55 5th Street, San Francisco', 'lodging,point_of_interest,establishment', 4.30, 880, 'Yes', 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AcJnMuGWoeg1H9nTTjY35qnXJCoe2V_-t0OxvR81dPfOraRjamyZ4OBzMxNBeBqKxW9W3VFPcdGngft-YJRw4iVbv8B9Atqd3soIrXhWBs9q_IzjebEdjwPwLH6iRkZtt5090MWRvD2Dq2HJZeRAjW1laduC9x43ke3i5sgCm4c-Hvno4wTH&key=AIzaSyDqnUWO38RJMjRlwsY1imxqB1WI8ZWsU3M', 37.7835369, -122.4068652, '2023-11-08 19:15:53', '2023-11-08 19:15:53'),
(39, 'ChIJMU_KRJ4-sz4RhH6OdLH-d-4', 53, NULL, 'Jilani Guest House', 'near kfc jilani Guest house, 245, 1/d nursery, near kfc jilani Guest house, Shahrah-e-Faisal Road, 245 1\\d Block 6 PECHS, Karachi', 'lodging,point_of_interest,establishment', 3.70, 143, 'Yes', 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AcJnMuHgr9zVr3QjePjTWqeezDpczLxlNpmlmKC4QUKfxPsOFr_tGcYjlmkOv3G-RZFTwDiVpagGS9ksCK5eSr5PRjH-f1dyIjvCWkJACVe6zHz8fpmrN23a9ZgK5JY2gsWPGiMBowS44Fuu1at43ZfwtyiVSDEe-Yv9YZcS-WQwX8ECYG88&key=AIzaSyDqnUWO38RJMjRlwsY1imxqB1WI8ZWsU3M', 24.8575693, 67.0664135, '2023-11-08 21:43:53', '2023-11-08 21:43:53'),
(42, 'ChIJ26pSzBdjAHwRzxw_TUjvH9k', 60, NULL, 'Kapolei Shopping Center', '590 Farrington Hwy, Kapolei', 'shopping_mall,point_of_interest,establishment', 4.30, 2199, 'No', 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AWU5eFgW4xLXdk1zIlW6OKnCBBrF3Mx1NW5dfUE1ZxQqaCTeHxRy53K9LMHx4b1qr1oQzqjZbFyMgTsTlT0fBpdfF4LMnE4h4EZObXS-l-D7SBwPU_gwGmyBpt3PWKwu1Gt-uj4XNbW8Pgu17ksJJzr4sxQrhPbhfp01om8o7M6_JgSKuhUQ&key=AIzaSyDqnUWO38RJMjRlwsY1imxqB1WI8ZWsU3M', 21.3378694, -158.0803944, '2023-11-27 15:36:18', '2023-11-27 15:36:18'),
(43, 'ChIJs0yjUetkAHwR9y46sgR4tW8', 60, NULL, 'Ewa Town Center', '91-1401 Fort Weaver Rd, Ewa Beach', 'shopping_mall,point_of_interest,establishment', 4.30, 763, 'No', 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AWU5eFjRhTCaOZ3jwz_wZfr9osKoMBPuo3-QKFHr7_8xtkdKClS7a-GBDxlGReAxNqgEG_VUT6sH7rZ_qskHZk39zoJpPJifweQkbr3qdt9TcZ3De6bW30zXk1mtDRLGjpDVrZTQJxzsyBAu0sxk7KwjPeD367maADA2fbK4kBPMaJHQzM5C&key=AIzaSyDqnUWO38RJMjRlwsY1imxqB1WI8ZWsU3M', 21.3344099, -158.0240410, '2023-11-27 15:36:36', '2023-11-27 15:36:36'),
(44, 'ChIJbyYLroxjAHwRjMdlbvpWEQs', 60, NULL, 'Starbucks', '4960 Kapolei Pkwy, Kapolei', 'cafe,restaurant,food,point_of_interest,store,establishment', 4.30, 156, 'No', 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AWU5eFiQ2x70l1nOmMib98Twu5ublJEd0DkY8N-C1IGL3Kvb6wPTOHEercoi6P1pdbxoCiF4vJ-8FYmtSY3fiDS31qZqMd0TKMAWrtX3ZtFLVBxKooqg47AiL6sD4c3NjqG060mCefat3NrXQ2ZPoYvDtJgSKc4QVMKWoU3JI1xO6SRI3N9U&key=AIzaSyDqnUWO38RJMjRlwsY1imxqB1WI8ZWsU3M', 21.3296775, -158.0731469, '2023-11-27 15:36:49', '2023-11-27 15:36:49'),
(45, 'ChIJJ3vCr5RkAHwRYD-cjQJY3z8', 60, NULL, 'The Coffee Bean & Tea Leaf Ewa Beach', '91-1401 Fort Weaver Rd, Ewa Beach', 'cafe,food,point_of_interest,store,establishment', 4.50, 137, 'No', 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AWU5eFhDCtqToBJ6w3eBt6B1DOBPZcqLhjE_noFzSfpCPdCcHEPk2AxEHwk560XZfjZUmnS-Nl7B58tc9rxNM2rwjTFUpRiZ5ruDtjGbmvf35BeaGgDSBvdpDsPTXswiuBMNrWLynlbelN54KwH8nlWrvIpIfyrbmTPTHjLwAnX3SsygOJiP&key=AIzaSyDqnUWO38RJMjRlwsY1imxqB1WI8ZWsU3M', 21.3343820, -158.0245530, '2023-11-27 15:36:51', '2023-11-27 15:36:51'),
(46, 'ChIJt18zpGBjAHwRzAE594mJNCE', 60, NULL, 'The Coffee Bean & Tea Leaf Ka Makana Ali\'i', '91-5431 Kapolei Pkwy, Kapolei', 'cafe,food,point_of_interest,store,establishment', 4.30, 134, 'No', 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AWU5eFh_qpVaZ0IjDDvmTbKbm_jTmMCchh6ETwKrzGEpqGejnPKFNyQmkcR-pp5GlBeNzNSjVXptSc6bwJqsyyh7xrnPyTo2TBO5Q2Ns6euHbrc-QjMIUgUBl7z0w6fDAFy5ri77LNU1bVhuK2vOvDE-3Dlxl0fKoGtUa2bhkPFyELUIAN6G&key=AIzaSyDqnUWO38RJMjRlwsY1imxqB1WI8ZWsU3M', 21.3326944, -158.0517389, '2023-11-27 15:36:56', '2023-11-27 15:36:56'),
(47, 'ChIJ2SZ9oyZKcEgRPgwWYw9fA5Y', 63, NULL, 'Premier Inn Hereford Holmer hotel', 'Holmer Road, Hereford', 'lodging,restaurant,food,point_of_interest,establishment', 4.20, 765, 'Unknown', 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AWU5eFgSFSaBMzSIeerpxj2N2MXE-pEvMg-IzWg6Rnp9NEjHA_csmLOqIteWhWINmdqKRYBi5U7Vy8eQX7uOZQbO799LxQBiYJQ-v_M9w5qgyxWpedlQMWxZu0yezX3aHsPVUJtXhaGHFAAJlCzOFmGWjY437zLfjK2IBjcC00-gBlisx8QP&key=AIzaSyDqnUWO38RJMjRlwsY1imxqB1WI8ZWsU3M', 52.0741945, -2.7224582, '2023-11-27 18:27:24', '2023-11-27 18:27:24'),
(48, 'ChIJHVHtLEhKcEgR0Ny1pAm1H_o', 63, NULL, 'Castle House Hotel', 'Castle Street, Hereford', 'cafe,lodging,restaurant,food,store,point_of_interest,establishment', 4.70, 349, 'Yes', 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AWU5eFgKogk2eOS5ACq9RhQLrcl3jBTJnA3wHaLYq2lI5R7VbSPD_qwXBv6oUucMzzGls5UPu6CMmscw096BtjxJm6l2STzFlF-YhiOjw0Yr3DltaTHNauOYr0Sx-PQE6-Ax0P8VJPTnLJdV4HFHSAntSfiujUdIhIMAZVmffOKjnpxC_4aj&key=AIzaSyDqnUWO38RJMjRlwsY1imxqB1WI8ZWsU3M', 52.0535665, -2.7122119, '2023-11-27 18:27:24', '2023-11-27 18:27:24'),
(49, 'ChIJZ934S0KuEmsR_0lxV3PTR4M', 63, NULL, 'Four Seasons Hotel Sydney', '199 George Street, The Rocks', 'lodging,point_of_interest,establishment', 4.50, 4711, 'Yes', 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AWU5eFgtLyf0gC8HB3_IQ451lXsVkQH6K__0QwdBRlDVKl23Fcqj0rZH3FrUxH8yCQ9Bm5nJGvTH74-qUf80mMj7CzQaCC3FE-IZAg46pDiEpvAeND7Jj4p_0enG9W_1AdGEgvgAfxIGdvpLR5yDJRi0E4roaxhD-JIEE7NyLrpxl8iSOTwi&key=AIzaSyDqnUWO38RJMjRlwsY1imxqB1WI8ZWsU3M', -33.8615815, 151.2076503, '2023-11-27 18:27:52', '2023-11-27 18:27:52'),
(50, 'ChIJ2X1PrGmuEmsRrgRKqd4bb9I', 63, NULL, 'Sir Stamford at Circular Quay', '93 Macquarie Street, Sydney', 'bar,lodging,restaurant,food,point_of_interest,establishment', 4.40, 1214, 'Yes', 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AWU5eFjDc4mCQZ_iJZzdI2ryNzk5NCq31XHqSQaXKhyMJXt38m0e6x5C9879JHKM7DeT4VR8hCRk3qJFcmFVIA4bvaW-kN858U2smljYpLLj-I5zgekk9N6HEc6wuRZA9Cb7yVGZDg-iX9h0cNgu-0C7VX0s4uGIrsLbql0xV6dvPj3L6aoe&key=AIzaSyDqnUWO38RJMjRlwsY1imxqB1WI8ZWsU3M', -33.8622452, 151.2127828, '2023-11-27 18:27:52', '2023-11-27 18:27:52'),
(51, 'ChIJNVXAlDyuEmsRac_JSKH8i_w', 63, NULL, 'Cheers Sports Bar & Grill', '561 George St, Sydney', 'bar,restaurant,food,point_of_interest,establishment', 4.10, 946, 'Yes', 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AWU5eFjny_V2ohkLLpSJ0vqcnlwJOMn_3n9RvkZEqm4pazhW6V91V0UPjMvkLD5lw4JZP-hlqf-QdhW_sq2GWSoH80rXDbvIbSTOSAFKEsN-bhwI_syI0T3MHXWw02mwedZ9ylObD7XfYXqBkf_276K6zTyJKSJ8qwSEBm1aU8iC6IpSDVlS&key=AIzaSyDqnUWO38RJMjRlwsY1imxqB1WI8ZWsU3M', -33.8765984, 151.2058398, '2023-11-27 18:28:40', '2023-11-27 18:28:40'),
(52, 'ChIJ23v2MoNkEmsRelBk875ih3E', 63, NULL, 'Establishment Bar', 'Ground Floor, 252 George St, Sydney', 'bar,point_of_interest,establishment', 3.70, 1645, 'Yes', 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AWU5eFj6lonhUMr1YMt35gATb50P5IvBpPUrL-2ktFsTQgMFi3tHD9tTQPxS7oePSeviAZc0wIqImvzbS1Ejl1hoetl80xe8HNTGeA7ueXava_KAC7TKeLuBJA6L2naRDP4TZzrptAVFBnUiEh2vjbMjfmfMDPFVVaoOcGG1NA77Z2azuIj6&key=AIzaSyDqnUWO38RJMjRlwsY1imxqB1WI8ZWsU3M', -33.8640815, 151.2075994, '2023-11-27 18:28:50', '2023-11-27 18:28:50'),
(68, 'ChIJ1Sko3YmAhYARauDzf_eZXL8', 65, NULL, 'Proper Food', '116 Montgomery St, San Francisco', 'restaurant,food,point_of_interest,establishment', 4.50, 53, 'Yes', 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AWU5eFjUiY2953cwuAm1SJr_jRRXsbPiqNll9fSruiL6_HRf-lfF7ZdTO1dQp4hhlLO8PCQYePWjpA379ajsxDv79KBOfBzGgjBpSl2SyOTayZvbv6rFwEXTwqS9JyJXbKISL3aEw-0QDDr3T60WiJcDiBgNaoEmAZdy1s41i7r-5aYpnLtP&key=AIzaSyDqnUWO38RJMjRlwsY1imxqB1WI8ZWsU3M', 37.7903812, -122.4020921, '2023-12-21 20:43:58', '2023-12-21 20:43:58'),
(69, 'ChIJQw2mP-PHwoARQDVdrJjCAc0', 65, NULL, 'KXSC Radio', '3607 Trousdale Pkwy, Los Angeles', 'point_of_interest,establishment', 5.00, 2, 'No', NULL, 34.0203566, -118.2863414, '2023-12-27 19:28:51', '2023-12-27 19:28:51'),
(70, 'ChIJg-XaWWnHwoARhWSKfalsyi4', 65, NULL, 'KBLA-AM', '1745 N Alvarado St, Los Angeles', 'point_of_interest,establishment', 5.00, 1, 'Unknown', 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AWU5eFj5o3OJOTLKkr2Q6QGbLqPKI1JsD86G8Ysn6r7g5LdJSyY4yOBHJ6oRGESqpDgTs1-4iw-NF6TwFoJJzVV0TBe_9mYhc-K-XJTithGZjdZ5Ll9B165m5lINiT8B2GRhY25CWgcPczMqIPIh_faxThHHKRssyNeJpLHartxjuy_Jjkgf&key=AIzaSyDqnUWO38RJMjRlwsY1imxqB1WI8ZWsU3M', 34.0865211, -118.2582276, '2023-12-27 19:28:52', '2023-12-27 19:28:52'),
(83, 'ChIJH5OnGGs8sz4RzEchMfXaEro', 2, 1, 'KFC', 'Khayaban-e-Ittehad Road, Phase 2 Commercial Area Defence Housing Authority, Karachi', 'restaurant,food,point_of_interest,establishment', 4.20, 4183, '0', 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=ATplDJb7U3Fl7HcfZEEAcGq1yPXU9qIbi0eV_gYIBcyYoEPu6AoDLQ7O-0cZY0oOBeem5-UlQyRjDJq1StGxPC2V3RZr73pUMEKYs-1p5_lfT00ZevsOe45Quvj5w5S1rHYwzhIhY8PJToC7SR_dQeSXckhqyrpod3gEtIjScOoYR0K-xEC6&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 24.8328199, 67.0735372, '2024-03-26 05:39:01', '2024-03-26 05:39:01'),
(84, 'ChIJpROMYA89sz4RDCzZKsW1F6k', 2, 1, 'McDonald\'s', 'Plot No. P، DHA Beach، 58 Park Road, DHA Phase 5 Sea View Apartments Defence V Ext،, Karachi', 'restaurant,food,point_of_interest,establishment', 4.30, 14891, '1', 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=ATplDJa2juhwMU9kBGDGuv6VrEQKF07CON3cuX7h8yMNIovONebPtmcQHUhczKfoV9OEbNn7B9ai0JFJRCHBdNLcCjnxh-SDoAKpOr_3QKhZdLGTB44W-hiwKltSIJK4Bf-cLsFpAacrFrUCL2W0512y4JscJdQiDXmNHH0EzXyHwwxKo1A6&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 24.7985777, 67.0343253, '2024-03-26 05:39:29', '2024-03-26 05:39:29'),
(85, 'ChIJI5I4mFI5sz4RYD8z8WZMOfI', 2, 1, 'Pakistan Air Force Museum', 'PAF Faisal Base, Shahrah-e-Faisal Rd, Karsaz Flyover, Karachi', 'museum,tourist_attraction,point_of_interest,establishment', 4.60, 24741, '1', 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=ATplDJaDrJnYflsgXHtlvxc2S8bH7xHB-9kaIcS41YZK28UR5GAb5Smf7bZMa-U72qFEGmllSOigHVZnKXr7g0Rvo5NVZ95UJ5nRgj7LwqHmWpMe9bTYp1qWU1rNloOQMDY0H9cQdMilWrYVO-uHDT3k-rdA2yVaOYJQqR6MFgxggmYQ6spO&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 24.8711218, 67.0960808, '2024-03-26 05:41:39', '2024-03-26 05:41:39'),
(86, 'ChIJHWTEWFy2j4ARDlnCKI5B6h0', 69, 1, 'Coffee & More Cafe', '100 S Murphy Ave #1, Sunnyvale', 'cafe,restaurant,point_of_interest,store,food,establishment', 4.50, 686, '0', 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=ATplDJZDLZRhNDrVrZVPvX5kaqAlWQPck0T4xxf_qO6ISXm4NxuP57KoREXf5QN5lFUfen5Mq8iYBY3HD6iy1K_J9UxuVkKaVrnx_KQ4Nx5vbi8aOTMwyTR0BB-lmCD17suEavaOUnn9hEZsMyKnb7ssUnMj1E8JADjmF8S_SEZjFVW28Vcq&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 37.3773400, -122.0296609, '2024-04-17 11:31:29', '2024-04-17 11:31:29'),
(87, 'ChIJV6VDG5qAhYARserDluVJPWk', 69, 1, 'Cafe 450', '450 Golden Gate Ave, San Francisco', 'cafe,point_of_interest,food,establishment', 3.00, 6, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=ATplDJYDOOnG4jOoFCI93eRs0PUFTD-EPoMDFKxJ8exPqHWXr0q8okZKgD3bKbzS4qZ2OOw6aqlUmCWQzVQOvxn81c4GYPKM6K2W-pf68gs-ZpFnVyLucuVlsR6Wz9Qoze14YFwDoBkNyNgO4hGPABMs5nJm776oDBYZ7WV9t2eaz5dJ1Fud&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 37.7819473, -122.4181453, '2024-04-17 11:34:04', '2024-04-17 11:34:04'),
(88, 'ChIJG5Qwtitu5kcR2CNEsYy9cdA', 69, 0, 'Musée d\'Orsay', 'Esplanade Valéry Giscard d\'Estaing, Paris', 'tourist_attraction,museum,point_of_interest,establishment', 4.80, 90501, 'Yes', 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=ATplDJYb82IPGBlp8n2Z566Rt0us4bJNgmJBkKcWPjIr95XNG5XpWu4RMmcf-_SW3O2r6_MH6pnUTzpD_wMdLH5VREY3hNyBEmk9zo2gWcyedoRrTNh8ysRr6w0BU7Xy5K4uvlSVg70rcZcmOGo6FPfPiOaFx-Ups9n2nQDjwOqKYXYChjUJ&key=AIzaSyDqnUWO38RJMjRlwsY1imxqB1WI8ZWsU3M', 48.8599614, 2.3265614, '2024-04-17 11:38:16', '2024-04-17 11:38:16'),
(89, 'ChIJcROz_crOj4AR3blv_XtAWJM', 71, 1, 'Great Mall', '447 Great Mall Dr, Milpitas', 'shopping_mall,point_of_interest,establishment', 4.30, 21860, '0', 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=ATplDJaodvedZG42zokZr_2bQW0dYAgDNULx_jqTxxCEAwREYKYBvJYicSuJHKNFSC7uOMMs8G2fhaka_wlouQG83ehRgXIPmtjwRyPpe3tU14YpyrbctRoEwPn14UluL4ynHaGZ4HuYyOeNpWJpXJStCGWVFC-GVKSD45xtHXJ9NdUfFvBc&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 37.4157380, -121.8974120, '2024-04-25 09:56:45', '2024-04-25 09:56:45'),
(90, 'ChIJVXUTKQ_Mj4ARVUlNs23a4sA', 71, 1, 'McDonald\'s', '1702 Oakland Rd, San Jose', 'restaurant,food,point_of_interest,establishment', 3.80, 1239, '0', 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=ATplDJaOmlR3vI2RDwGrFOMsDIv0QnK-bzPGftp4b9Zztc7K7N2337OH5kXo0o0W44O3HJyiGDgtYrljJfFp130w0DtdWBOT-Y6ZJM1Pty7_5QnNd9kTTIxt1oBYlo4lmLCaI1aW2RKMKOfe1UzFZHtpCjj5DLF7jrNJwC2i7vdoZQGmIb1o&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 37.3832213, -121.8955898, '2024-04-25 09:56:55', '2024-04-25 09:56:55'),
(92, 'ChIJKbhl8sWAhYARItPz4kPqC-s', 76, 0, '7x7 Roofing', '2443 Fillmore St, San Francisco', 'roofing_contractor,point_of_interest,establishment', 5.00, 132, 'No', 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=ATplDJYkRyVDSwt_mYHdbMS1S4he0h0TbnOlYcKdqCjoZ735GubQ_CZqwrTa0eg6YNVoQ9ov1GIlKEaesheZOIq4NYj2RQPJQAfC7Qd2Sek0C6E9qDKFkHB6p3fem_Axj2kxEAP93zXPuKpnSyNJr0JyNh4cG5wUh2k_WoY4w1s21IHsXW28&key=AIzaSyDqnUWO38RJMjRlwsY1imxqB1WI8ZWsU3M', 37.7922160, -122.4347520, '2024-04-29 08:10:01', '2024-04-29 08:10:01'),
(93, 'ChIJK6j75jt-j4ARswrUZR6hMjE', 76, 1, 'Fiesta Laundromat', '898 S Van Ness Ave, San Francisco', 'laundry,point_of_interest,establishment', 4.20, 421, '1', 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=ATplDJY80C3Aj_izbq_X0X7aamOFRJSFMSbHOUKccY-0AmTNcmNevlaOlEc8GB9J_KptXRPG3HxgJAIl69JjWZpIyphPDw_snwbyyPWQyPRsc4tKy9n9Lef1g2xuzJ01F9bqPvdBt9l47-HUPOwKweLHcJswC6SaJUkDroyxfuoLicGJf359&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 37.7588719, -122.4172704, '2024-04-29 08:10:10', '2024-04-29 08:10:10'),
(94, 'ChIJ_Xn_BJKAhYAR15zhOq5zJHE', 77, 0, 'Argonaut Book Shop', '786 Sutter St, San Francisco', 'book_store,store,point_of_interest,establishment', 4.50, 45, 'Unknown', 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=ATplDJYn4udALfHGjSrryalyKvC1x9aLynhOokjMLHdhzvwP9AZ3pJ70Xyab00Bf3Ljv5XdE3kRbq4rh365s1iXc1wrKlGdxV8Xm6WSP5C7SGTZR5vduC2EUXm4jIiUZPi5lsgVBdxSTJZjWefi5aBF6y5wN2OQSffz0eFM5y7w7NI73EjPH&key=AIzaSyDqnUWO38RJMjRlwsY1imxqB1WI8ZWsU3M', 37.7887517, -122.4132820, '2024-04-29 08:35:52', '2024-04-29 08:35:52'),
(95, 'ChIJo_sHMwK2j4ARN3kQ6qKPK1w', 78, 1, 'Extra Space Storage', '106 Lawrence Station Rd, Sunnyvale', 'storage,moving_company,point_of_interest,store,establishment', 4.90, 851, '0', 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AUGGfZnD_T-E1ALvwY78jZB4_4QJntiqxZLatx6OuixjqtrTpkNzrMoNusE_JK6qza_rmciY1bY7r_D-yFnIaXV_kN2IHvSuLq_IZeaMZeC_b2OXgZYxcZn0FWoP8c8akrg4hlNx2Ygh1zhB2zoPzlOaIncWZdFEVvMHuBAEihhMnmdXk_ci&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 37.3708782, -121.9955510, '2024-05-20 08:33:42', '2024-05-20 08:33:42'),
(96, 'ChIJV85dHtI9sz4RWecqpaYPto4', 80, 0, 'Pompei Italian Restaurant', 'Shapes Compound، 139 McNeil Rd, Karachi Cantonment, Karachi', 'restaurant,food,point_of_interest,establishment', 4.20, 1223, 'Yes', 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AUGGfZkJSspZWB2kID6bjpbqnwRpNS7aezscDIgPbCf9a_9z5-0gI8TEJaH4A8YuPdqNR9D006nhdZMRRcpmAMO8fFgz7CCCr-pHnPHgjvc9DGSTJWsUWGw0L9uVkIqd0EyZUAMefhjs0mxyE0-c8u0FsC9Gk8D8cHWlrfUBj3RP1Ow0HYbW&key=AIzaSyDqnUWO38RJMjRlwsY1imxqB1WI8ZWsU3M', 24.8414485, 67.0403914, '2024-05-20 11:53:38', '2024-05-20 11:53:38'),
(97, 'ChIJIdm0EiE5sz4RiHA9rtX1mi8', 80, 0, 'Marhaba Restaurant', 'W437+HPF, Abul Asar Hafeez Jalandhari Rd, Block 19 Gulistan-e-Johar, Karachi', 'restaurant,point_of_interest,food,establishment', 4.00, 147, 'Yes', 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AUGGfZkBqSGpRhd3Fazo7ULVNM1enBPyUNvK2LROXbZyjA83LXfzwhgUB2ArSEoMr5E2MHyTNyy7mAqY5T8TVf563dlVpJj2MNVdU8B_rlIxYe9fZ5sdFQG8x4iogiMpTgZ1uEFIQymcEFQiNm37aZIVF_s1LG_qQBRj7QEgaLsaYiTch_n4&key=AIzaSyDqnUWO38RJMjRlwsY1imxqB1WI8ZWsU3M', 24.9039715, 67.1143279, '2024-05-20 11:54:07', '2024-05-20 11:54:07'),
(99, 'ChIJOfSnyDU5sz4RyG_PZ4xex0k', 80, 1, 'KFC - Shahrah-e-Faisal', 'Shah، Kfc shah faisal, Star Gate Rd، near colony gate pso Pump, Faisal Cantonment, Karachi', 'restaurant,food,point_of_interest,establishment', 4.10, 1484, '1', 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AUGGfZlPSll9GXPn9UtGZd3K5ZMax76npESeiFuxCt-ZXU5gL4UWZUtRC3nBQIKOJuELqwND6YTiTY8xvmto3UDy4lhhCKboGOCR8HybmyJO_IWuKCDOyuLZJ777FNVF5mHj_rmTFqkLwKzQTeTof51YH1wFF2AxDrpz5j-egkUAnb6DDNce&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 24.8866651, 67.1463052, '2024-05-20 12:42:52', '2024-05-20 12:42:52'),
(100, 'ChIJHxNwm1M8sz4R6pxmfjTcQy4', 80, 1, 'Mercury Cleaners', 'Stadium Lane 1, DHA Phase 5 Stadium Commercial Area Defence V Defence Housing Authority, Karachi', 'laundry,point_of_interest,establishment', 4.30, 84, '1', 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AUGGfZkdFZt3LBPLx-EUEJL4Q9qPekGx2uMBkrd44-GM4wj-bpeP61aoxfPeLV4rgkgEpws-unqub5joonkpPdlZDz3Knu6pEmaZxWOynmVJ95QPKLLtpN6SGJItiSIAwjI8O6pR0wt9V2G0pAvyoAIg3is_ZIFdn3_T0O2Prbr-tYPBEKGl&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 24.8146282, 67.0498945, '2024-05-20 13:17:58', '2024-05-20 13:17:58'),
(111, 'ChIJwZMnsji32YgRqwXnEPLhJb8', 81, 0, 'i think she is', '169 SW 7th St, Miami', 'bakery,cafe,restaurant,food,point_of_interest,store,establishment', 4.60, 372, 'Yes', 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AelY_CtqJnwkUbGfJgsnP019ELGwvWKXgxrFwJx0ZpfXj3tKMzKqKNAGZC03NrqOJAi3L4sck1pA-wdaOWKxAllOU8Vxp_GuAgA2m4cfeI1-84usFrz0nMiz8q_fXZnardqJa_z2LCcZmSZrxRXQ_55DQIelcgT_b9kcreI6XMBBBwL9MTFV&key=AIzaSyDqnUWO38RJMjRlwsY1imxqB1WI8ZWsU3M', 25.7674042, -80.1964572, '2024-08-01 20:15:37', '2024-08-01 20:15:37'),
(114, 'ChIJdw-2uaWp2YgR_dGLS6cnVsw', 81, 1, 'Cali Coffee', '3600 N University Dr #411, Cooper City', 'cafe,store,food,point_of_interest,establishment', 4.80, 48, '1', 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AelY_Csy4cbl_ArOiZfjBhFL8P0iMosYpZkDtXC86Na7jgxQLA2hUens4qI3el-MCSZYWifwucXGACyFbA44Ve5F19iuYWBZzl1IXSp3PcyLdGurtatfD3gfoyRzo-EDI9BxuXEklvOHKUKuQp9PtfFZ7NSO_E-v0PQ5I4WXvclrHaJZ58z0&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 26.0391054, -80.2507878, '2024-08-06 19:02:40', '2024-08-06 19:02:40'),
(116, 'ChIJ2xXFAWU_sz4RIgEkSNeu_JU', 84, 1, 'Body Evolution', 'Shop No.10, Al Bari Exclusive Towers, Bahadurabad Bahadur Yar Jang CHS, Karachi', 'gym,health,point_of_interest,establishment', 4.90, 351, '1', 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AelY_Ct0dw-q3CbCL0fmDZmbR4RiqHc3hs-jxaJmyTpp9M2paMnkhiElxwEA8kFCSGpHx0305jCYdFWHNtRrmfeVbWDmblKuZYtt2Ugzi7V7wXU9RPb9wJ-Tp5jeMwTnF0knmZVqJcLW64g8O42M5ADGv_q6ML-D3-5KySjRW-QEjf0zQnDG&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 24.8822997, 67.0681689, '2024-08-14 08:03:47', '2024-08-14 08:03:47'),
(118, 'ChIJo3ON135dAHwRp-xDGTvjAU4', 85, 0, 'Hawaii Pot Shabu Shabu House', '554 Olive Ave, Wahiawa', 'restaurant,food,point_of_interest,establishment', 4.60, 125, 'Yes', 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AelY_CsbxnMoaZv5tCTFpQx0cBh02K835X-DuGp_pL0WBiWhH8tNScvCWyaBTvHiTBwwExoUg4rYH2srqqENa4l3Acv19SwZaDo6TePCmVpetddy3CQ9WZBBtK3-2Hfvzxxel0FPn5BNQJDHCI8WyPLhW9dq1B7bSX-F-7QMBKg1VRgNCjsC&key=AIzaSyDqnUWO38RJMjRlwsY1imxqB1WI8ZWsU3M', 21.4950314, -158.0284551, '2024-08-19 02:14:52', '2024-08-19 02:14:52'),
(119, 'ChIJb-WF8OdvAHwRNnolSlFTEdg', 85, 0, 'Public Parking', '2612 Waiwai Loop, Honolulu', 'point_of_interest,establishment', 4.50, 2, 'Yes', NULL, 21.3311221, -157.9014368, '2024-08-19 02:21:20', '2024-08-19 02:21:20'),
(120, 'ChIJAzHdinY-sz4RSJM_idVCVnI', 74, 1, 'Holy Trinity Cathedral, Karachi', 'Zainab Market, Fatima Jinnah Rd, Near Civil Lines, Karachi', 'church,place_of_worship,point_of_interest,establishment', 4.50, 152, NULL, 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AelY_Ctc9YEbok2NVBZpBnaY2FlgZWCQ_4lWOE29paH1_7QCw54JcsB6fv_pKzjxteXe7TqnSZW0pCwxYwMOm4MZcjzEsntlO_-LZgQF-_YrAQQZHcZCySLh9UgO_I_uPsWJe49qbaafqQt8bwdFog_a9unghYrITk4Yr0XybUyoDJ8DRRjf&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 24.8526816, 67.0298879, '2024-08-19 14:59:12', '2024-08-19 14:59:12'),
(123, 'ChIJMZg_i29lAHwRHGpKP7fBSqU', 95, 0, 'Ahi and Vegetable - Ewa Beach', '91-1087 Keaunui Dr, Ewa Beach', 'restaurant,food,point_of_interest,establishment', 4.30, 41, 'Yes', 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AWYs27wBAn5YykGrHf3l-c-9J0JSeWT-M6UNeEjCFTs8pdcuzIPNb2AivUytZB7lfyjayRElY08v57EsMKblWrZHa3WwCwYAxAZIL-6c1puEGcgKlhiSxjd6WRQIp65YaA4umPOPPBIaQ9PNt7F2BIXm81WAiM4O4Mwt-kGD1Xy_YLMYab_T&key=AIzaSyDqnUWO38RJMjRlwsY1imxqB1WI8ZWsU3M', 21.3264435, -158.0210998, '2024-12-12 23:56:47', '2024-12-12 23:56:47'),
(124, 'ChIJax6DqsVkAHwRjQr_cInz3qY', 95, 0, 'Ewa Pantry', '91-1001 Kaimalie St, Ewa Beach', 'liquor_store,food,point_of_interest,store,establishment', 4.50, 241, 'Yes', 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AWYs27yz6RRiOgZKnQG2N2r8aeVivjjQhpu_kQ9r5ypj8XUrel9ttAWMM6c26O7bP6JpjjitzZY0gvigRvaobhDNY-6ZR3_yfEV187LDy0Er_qW4CkGqaLD5W-y2cYgAV2h4ZEM1bapcZfvrkf8hXsCBKvQCp_J6q4xkD3yGkCCqwu6IVKAM&key=AIzaSyDqnUWO38RJMjRlwsY1imxqB1WI8ZWsU3M', 21.3189495, -158.0153004, '2024-12-13 00:13:40', '2024-12-13 00:13:40'),
(125, 'ChIJCaDLYmxjAHwR1WhWE2HEsc0', 95, 0, 'Foodland Farms', '91-5431 Kapolei Pkwy Suite 1704, Kapolei', 'grocery_or_supermarket,point_of_interest,food,store,establishment', 4.60, 506, 'Yes', 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AWYs27wR3NrP-d_aPmPYA5qoiF7RvMAmAyPOoB6PtpTXOTxUbi8R9WKc8oApRHKBFs4KpW_qQLW53icU3XAmI5rIQRuX96YzUMGglVn8eE2NNYNDt2yXrkqQ_V1sO8_nR-czlKVrXTzQC80ObS0FvIZYCFkXddz7680__0e0487syYqQ5sdO&key=AIzaSyDqnUWO38RJMjRlwsY1imxqB1WI8ZWsU3M', 21.3335412, -158.0540482, '2024-12-13 00:16:44', '2024-12-13 00:16:44'),
(126, 'ChIJHZ_zsJzV3IARkneIKjEIQcE', 94, 1, 'OLD BREA CHOP HOUSE', '180 S Brea Blvd, Brea', 'restaurant,food,point_of_interest,establishment', 4.60, 833, '1', 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AWYs27yAjxyoqZE6cQJ2zzjU50ivYbAXNAeXbJYuSiMgAgWanmocJQfrZiMEXRE8LREnHRk3hwGJOYKI9DNw38McWEcqwnpxS46oAo1fYvDvG10wAB3_HPbgSaWl5qfC21Qrd3w4Tub33V7CgHNwHcwS60xbsaM3JPgfG34wx2v8F76H8zs&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 33.9183414, -117.8988406, '2024-12-17 21:02:52', '2024-12-17 21:02:52'),
(127, 'ChIJ8dwoW6XHwoAR5gv7xgCA3Bc', 94, 1, 'The Capital Grille', '700 W 9th St Unit B, Los Angeles', 'bar,restaurant,food,point_of_interest,establishment', 4.60, 339, '1', 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AWYs27wBlxDI7MsJMddfUaCPPvNHyoN6jaiAHWx89RjcuWsnzqqn8L1iJMxXDmzmIkrnhYnD4yvX6dk-Wf_VXwCziT_mctjLXm6afFqySVOHAZnb4pfHAsAQteJgSyZqwsaHBDdlKA_PLpeEaPQCpUDl_GMaIPF7AKjv8Mzc6xEBcGmsxtH7&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 34.0461174, -118.2626504, '2024-12-17 21:03:21', '2024-12-17 21:03:21'),
(129, 'ChIJO1nZYlvtj4ARiQWiuZPTI1w', 74, 1, 'Touche Dorée', '6200 Stoneridge Mall Rd 3rd floor, Pleasanton', 'jewelry_store,point_of_interest,store,establishment', 5.00, 23, '1', 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AWYs27zpZ_-IDTG2fqWKcuRIdVvi0uRRLpNsnkIzhIoi322dTptZgOfZDmMtbX9uqNJ8wlTl_e5rqAcBN9ajKFxvDf4BU900z5ybtjb3FRcNjioQcSfCUTzuAPEM6qQhg_enJlpvZruzToKdAuyhSuZbZ9F13-p2wJP6zvy351xpHfzfyM54&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 37.6958805, -121.9245177, '2024-12-19 08:05:16', '2024-12-19 08:05:16'),
(130, 'ChIJH8zzqIbNTDkRGeAjKaqTb_Y', 74, 1, 'KFC - Nursery', 'Plot No. 14/A-1/6, Sector 5 Block 6 P.E.C.H.S., Karachi', 'restaurant,food,point_of_interest,establishment', 4.10, 3621, '1', 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AWYs27zNH_oMYPT-9jgS46tKHBHp4lXd6pD1bSnfkP4IXsMHc7scgYfeWApzs0PHcP-SWs8XriUlfWFKcEXp-w11N03xcL42wA-5OKQ9tarXgSPL29XEmpXY4Pv7tzk7G7pybAZn99vjF5z1SO76ls6VdAZZgnogjA2oH5rDa1nezfQqZ1qt&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 24.8604626, 67.0652399, '2024-12-19 08:35:03', '2024-12-19 08:35:03'),
(131, 'ChIJw___j5g-sz4RUObcZ7rCHJg', 74, 1, 'Aawaz Institute Of Media & Management Sciences AIMS', 'V378+MWH, 12 K Shahra-e-Faisal, P.E.C.H.S Block 2 Block 6 PECHS, Karachi', 'university,school,point_of_interest,establishment', 4.50, 156, '1', 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AWYs27xW-KwJDAK4ueuzrsOe0KLGfrx3JjlLqNtHLSRcBwF4FplOsUc89P_OJzaruAa_NTKfTRSzIPciq6j-cj77XWpqHhUT52MWclIVaWMrp6Dxzj1KBEMO-IVn2bpduYt-_lThK4TTAdy2jLFOQqRnm4sFiVUx3ReYPx2DU7XG-nAfHRJK&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 24.8582047, 67.0648910, '2024-12-19 09:08:09', '2024-12-19 09:08:09'),
(132, 'ChIJoYOOptg9sz4R2G_UJ4AgHdk', 74, 1, 'Serene Air', 'Ground Floor، Shafi Chambers, Club Rd، opposite Qasar-e-Naz (Federal Government Hostel, Civil Lines, Karachi', 'point_of_interest,establishment', 4.20, 504, '1', 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AWYs27wPNjYhvoWfqo-yi2D7j0P5EQVCdCqkEwV-ZXHUG_WemIOGOvZGlBtVX4lIZeNqKn45moUrcwe0FdGO733MtBDvxKvZAwfNkKmSmTHiRUtqRTWKmmvQAPBZrMcQ7fll5eGe1F1FnDKvvTEb_kumxGRR5bOyhadbOXhbKRLOAN6lVG-v&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 24.8495814, 67.0295846, '2024-12-19 09:08:37', '2024-12-19 09:08:37'),
(133, 'ChIJDULROZI-sz4RbWe6iSv7tgY', 74, 1, 'ARY Jewellers', 'Shop No 1, AMIR Trade Centre, Allah Walli Chowk, Tariq Rd, Block 2 P.E.C.H.S., Karachi', 'jewelry_store,point_of_interest,store,establishment', 4.20, 1449, '1', 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AWYs27xW0uiOdlRf4ed-IIKlmt8SEz5mUsSugBVtaOC8igH2A8Y3rr05IUsZGjqcptN-pplGf-ua7YiWOq3rutkoATd2b-3265oo-W5j8VQwrl45DuduD15nNqF_12CboM4BGa78p5YXXLGO2LLF0RWjRHBuZCQvch5lG1QRN8DnepxQ5zjH&key=AIzaSyCHuiMaFjSnFTQfRmAfTp9nZ9VpTICgNrc', 24.8646899, 67.0555912, '2024-12-19 09:09:20', '2024-12-19 09:09:20'),
(134, 'ChIJgTlmOBZtAHwRpI0UYZGqHHU', 82, 0, 'Allsaints Bloomingdale\'s Ala Moana', '1450 Ala Moana Blvd Bloomingdales, #2900, Honolulu', 'clothing_store,point_of_interest,store,establishment', 4.20, 5, 'No', 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AWYs27yCmxnksX_0_m78UFoWkuoijLnbxX2P0PbQ4L9lCEYqCr3a__sAfMDpwb5QHJKIFDquTt4DWs9FlHKM7HfTsCKlQ2ihHNq_rc5nMNA93uQNyL0AD7fvkANkhWo3KVr0QSH1svTjxblrov4uyLoh4QxKuiv4NRp2s9_SJEtt4dfD-Oxb&key=AIzaSyDqnUWO38RJMjRlwsY1imxqB1WI8ZWsU3M', 21.2904694, -157.8440036, '2024-12-19 09:18:41', '2024-12-19 09:18:41'),
(135, 'ChIJWbZpgPtvAHwREfsvCFyr7F4', 82, 0, 'All Saints Anglican Church', '1775 S Beretania St., Honolulu', 'church,place_of_worship,point_of_interest,establishment', 5.00, 10, 'No', 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AWYs27yriYYh7__ap-pSJmIk0p2DMG6c7jwMShPFreQ-xBi01L_gPm2Trc8nyCIyte1eJSY8IDNN6wv8DAMO2o2ZqLdkvH_3vaqS9XJKUO-KVyZGToFjN0ZOzcgsDYTpBqRphtGkcItk7MsRP99kn3Z8O4UMNwTO3x82vwNgxHNCIfe0JpPL&key=AIzaSyDqnUWO38RJMjRlwsY1imxqB1WI8ZWsU3M', 21.2973272, -157.8323892, '2024-12-19 09:18:44', '2024-12-19 09:18:44'),
(136, 'ChIJMbusTv1tAHwRVHnEfDoomUk', 82, 0, 'Tiare Teiti and All Things Tahiti', '1200 Ala Moana Blvd, Honolulu', 'clothing_store,point_of_interest,store,establishment', 4.60, 7, 'No', 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AWYs27z_1OsAuh-4mimFCNTx0YLAd5w0M6af2_AAenqS9SYp1T2D_4y9kKEfygi3-KeLtbsmiYmjzTOA7TIkZha5vAR-1ztZq4HOIc6FbjYBAMCQQKHa1YFjJCbd6ImHLSWpMy_h556om1Kg60Pbfiw443J9me6YH63clpXQKFk31_k74f7i&key=AIzaSyDqnUWO38RJMjRlwsY1imxqB1WI8ZWsU3M', 21.2927340, -157.8528390, '2024-12-19 09:18:46', '2024-12-19 09:18:46'),
(137, 'ChIJCf3IbX49sz4RXJ9u5E6bsD0', 92, 0, 'All Product Here', 'ho no, 26 Street Number 3, Sector E Manzoor Colony, Karachi', 'store,food,point_of_interest,establishment', 3.50, 2, 'Yes', 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AWYs27zETn25rjndjktcfaTyjD6VGndFVL8zZGqxVHvSjvGk7bGubLrGjc5gu4-hXSnZtR5Fima_A_RT186gonUM8U4U9uW15G3HaZgiqE3M1rianqtDPGTyt_z9ksNGTLPkNmI9hlyGylk6UNRyjMCjzfMXDjBnxJ3wPLcVJeSRuR9zkgU&key=AIzaSyDqnUWO38RJMjRlwsY1imxqB1WI8ZWsU3M', 24.8484760, 67.0845901, '2025-01-10 21:24:54', '2025-01-10 21:24:54'),
(138, 'ChIJA3Z2Km9wcVMRWx1-2rOVqwY', 92, 0, 'Allsold.ca Calgary\'s Used Office Furniture Store', '514 42 Ave SE, Calgary', 'furniture_store,home_goods_store,finance,point_of_interest,store,establishment', 3.90, 44, 'Yes', 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AWYs27wrvlUp8I3SAlQwLN3tSgCvxr2w59CnVO8wCD_ufk9Kj4xk2urOi92lS_sdz6k3YhLdxCzSukabu2JWMMCODSdRhpc9565CWoOOzERoR4DkuyJ7F-0Lm9ZOqNCY-sYBOKucPn3DwkYQO3CMakcMFJCbGeHFnZI4O6FlXnVTVMfDgegT&key=AIzaSyDqnUWO38RJMjRlwsY1imxqB1WI8ZWsU3M', 51.0161570, -114.0517570, '2025-01-10 21:26:30', '2025-01-10 21:26:30'),
(139, 'ChIJQ0zWMsQtKIYRYIjbT9hdDLo', 99, 0, 'Complete Mobile Home Supply', '2855 US-80, Pearl', 'hardware_store,point_of_interest,store,establishment', 4.20, 56, 'Yes', 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AVzFdbnHkJfIZcYxrEr3nK46eMY7_CBcAptPVHhJ96DISsrHrk-vRLuTyFqeG5RgkEMegsd4aSoDoIL8ymcx9_5wilw_3guVYk5p00LSZC5vbwbwIWS-wGTDvFRqaM0UQe2uLvc-wulu-JF5V1BwJb9R7L-JebKWIGMoWSPyr6Q0VvWKeTHc&key=AIzaSyDqnUWO38RJMjRlwsY1imxqB1WI8ZWsU3M', 32.2815396, -90.1237324, '2025-01-23 21:10:06', '2025-01-23 21:10:06'),
(140, 'ChIJkR4vAkqf-DkRWJ_j6who4oY', 97, 0, 'Modern Electronics | Best Mobile Phone shops in Dumdum', '66, Italgacha Road, Airport 1no. gate, bottala, Kolkata', 'store,point_of_interest,establishment', 5.00, 86, 'Yes', 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AVzFdbnrxvPKex1l9OADF8b0OrZxRUu_leaGHOLDZ8FsK4Ldi-FKFBS3uMLPVbErVsih9SFRK3R0DMVtogiyw2bQjQQkTqQGk07010RwjTvtGKC9TRma7h6e8D3HDTcdu9OOqe-C6DV_KRXel38w7Fvll0x6unTC8x_Mg0Qkf1sTgCFB6o2L&key=AIzaSyDqnUWO38RJMjRlwsY1imxqB1WI8ZWsU3M', 22.6425761, 88.4299403, '2025-01-28 15:47:52', '2025-01-28 15:47:52'),
(141, 'ChIJzWXfXGWSpEcR7m0Tfra0x6E', 97, 0, 'Edeka Andreas Motz', 'Eisenacher Landstraße 7, Vogtei', 'supermarket,grocery_or_supermarket,food,store,point_of_interest,establishment', 4.40, 567, 'Yes', 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AVzFdblc1p996y84WiYuxN83J1QT8FVPEkFW0HEU8zXb50qFXyu5A4f_5xAo_L03U0j8L7acQQf0r2-_0ugryC_udWuOgQnnchIUt9ylN_mEud8EiliaP10oaD2qCggwx-rxbAo0CgYFTybx-Bs3cLfTsJGTFchnqUhGj-iOfMLu_Va8UmiY&key=AIzaSyDqnUWO38RJMjRlwsY1imxqB1WI8ZWsU3M', 51.1651680, 10.4374522, '2025-01-28 15:51:26', '2025-01-28 15:51:26'),
(142, 'ChIJY4G5uKE_sz4R7BpRrsTFd0k', 102, 0, 'All Rounder Work Online Store', 'Flat#H2, Karachi', 'clothing_store,point_of_interest,store,establishment', 5.00, 1, 'No', 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AVzFdbkiP3SZaFuc_RrgREeDCK9KKfWRAAYj_cMPPIThuFs-TVVo10uwAi81XY7xE6wlYtjcUPUKcRLgqnXfPY7D_02C_EdYlYQ9jktyxLi0Ne95h-XqoEFm_I4Y1R8fLfgjy2Jc-FMfH5NjcLURnIx7r-QPn60MUQodUJTxfSpvV-e1XAxB&key=AIzaSyDqnUWO38RJMjRlwsY1imxqB1WI8ZWsU3M', 24.8607343, 67.0011364, '2025-01-31 21:27:06', '2025-01-31 21:27:06'),
(143, 'ChIJrUnePXs_sz4RewE2duahupI', 101, 0, 'Airport Limousine Services (Pvt.) Ltd', 'Office No: 101/103, 1st Floor, Anum Estate Building, Main Shahra-e-Faisal, adjacent Silk Bank Eman Tower, 7/8 Umar Colony, Karachi', 'point_of_interest,establishment', 4.50, 2, 'Yes', 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AVzFdbnJxtCE9skzhyuanaCGfnm1deBP2vIW_HeBiw8iqBatLbDBrwUArf7DX3PnT_5niIF0UI_to0pl0udgvV-FOqO2cYourlywn7VqnNpz8CRsHLcd-mbqBy4qyBpGJSuXOyao0v9ugM2arrc18M9X_IeuoP12Y9iw_lNywHgGzbeIOclK&key=AIzaSyDqnUWO38RJMjRlwsY1imxqB1WI8ZWsU3M', 24.8658280, 67.0811338, '2025-02-06 01:04:18', '2025-02-06 01:04:18'),
(144, 'ChIJR0ZcGJk-sz4RZv4yMS6xYJY', 101, 0, 'ASF Airport Residential Office', '43/1/E (B) RAZI ROAD, BLOCK-6 43rd St, Block-6 Block 6 P.E.C.H.S., Karachi', 'point_of_interest,establishment', 4.50, 10, 'Unknown', NULL, 24.8627750, 67.0667306, '2025-02-06 01:04:42', '2025-02-06 01:04:42'),
(145, 'ChIJxeJMUkM5sz4R-4_pbPKPP4Y', 101, 0, 'Pakistan Airforce Base, Faisal', 'Main شاہراہ فیصل،، فیصل چھاؤنی،, Karachi', 'point_of_interest,establishment', 4.50, 537, 'Yes', 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AVzFdbkMY80xhF4Xr3xXjD-BLfn85GqzeefFNlsYQTt_c9KREBHDfxFWGfYhFJ6_ae0kx1_ztxfJnPJ7LAg8qbEYJ7kEYHPJTMh1NxRyjlGX7BVJDH4V7Osl1y0Sk7jjqhXGItJuiEU0DxN06K5AUm6dSiTPAtsiXxPDpmkauB-GAFzEe4pe&key=AIzaSyDqnUWO38RJMjRlwsY1imxqB1WI8ZWsU3M', 24.8797519, 67.1157236, '2025-02-06 01:04:45', '2025-02-06 01:04:45'),
(146, 'ChIJY4G5uKE_sz4R7BpRrsTFd0k', 88, 0, 'All Rounder Work Online Store', 'Flat#H2, Karachi', 'clothing_store,store,point_of_interest,establishment', 5.00, 1, 'No', 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AVzFdblrcqQCnKz3wCs0xt8d4imOAMI2CawMFYSHttJ0hzNvbjSWeo-Y6aKnkP3An9q8vo9I9Q65EOeb9yvdYycjmmcTm3OkCKlhYYNFDz3mWyW8FNxN68soJN9GoWgbbzYBqQwFbgKOgmZ4uIwrrGxfG8SljqVw1zLpG3_SwUmNmSqvEQHX&key=AIzaSyDqnUWO38RJMjRlwsY1imxqB1WI8ZWsU3M', 24.8607343, 67.0011364, '2025-02-07 19:13:30', '2025-02-07 19:13:30'),
(147, 'ChIJb2icSRI_sz4RMI1laRanNQg', 88, 0, 'Quetta All MAKKHA Hotel', 'V262+7FR punjab ada, Napier Quarter, Karachi', 'lodging,point_of_interest,establishment', 5.00, 1, 'Unknown', 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=AVzFdbmJtHyhhtTDh7yunfVBY5rvxXG5u7d75iDJmwvpF2jIWdFZOi8o9IPs-ok0KBZ-kJRgtiM90EDtqzKchSsQOGJaWNKLebhvQumHzEGB2c0aGLV-vrYEqFtxSJa3YpyGQ3eE4nyYje84metgIRlLd6pwp5LSY6_ejnw676FxIUGaWV8&key=AIzaSyDqnUWO38RJMjRlwsY1imxqB1WI8ZWsU3M', 24.8607343, 67.0011364, '2025-02-07 19:13:46', '2025-02-07 19:13:46');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cities_country_id_foreign` (`country_id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `diligence_verifications`
--
ALTER TABLE `diligence_verifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `diligence_verifications_receptionist_id_foreign` (`receptionist_id`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `internal_audits`
--
ALTER TABLE `internal_audits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `internal_audits_receptionist_id_foreign` (`receptionist_id`);

--
-- Indexes for table `irs_status`
--
ALTER TABLE `irs_status`
  ADD PRIMARY KEY (`id`),
  ADD KEY `irs_status_receptionist_id_foreign` (`receptionist_id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_methods_receptionist_id_foreign` (`receptionist_id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `places`
--
ALTER TABLE `places`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `place_saves`
--
ALTER TABLE `place_saves`
  ADD PRIMARY KEY (`id`),
  ADD KEY `place_saves_playlist_id_foreign` (`playlist_id`);

--
-- Indexes for table `place_trips`
--
ALTER TABLE `place_trips`
  ADD PRIMARY KEY (`id`),
  ADD KEY `place_trips_trip_id_foreign` (`trip_id`),
  ADD KEY `place_trips_place_id_foreign` (`place_id`);

--
-- Indexes for table `playlists`
--
ALTER TABLE `playlists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `playlists_user_id_foreign` (`user_id`);

--
-- Indexes for table `playlist_detail`
--
ALTER TABLE `playlist_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `playlist_detail_playlist_id_foreign` (`playlist_id`),
  ADD KEY `playlist_detail_wishlist_id_foreign` (`wishlist_id`);

--
-- Indexes for table `preferences_to_users`
--
ALTER TABLE `preferences_to_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `publish_trip_reviews`
--
ALTER TABLE `publish_trip_reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `publish_trip_reviews_user_id_foreign` (`user_id`),
  ADD KEY `publish_trip_reviews_trip_id_foreign` (`trip_id`);

--
-- Indexes for table `receptionists`
--
ALTER TABLE `receptionists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `refferals`
--
ALTER TABLE `refferals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `refferals_receptionist_id_foreign` (`receptionist_id`);

--
-- Indexes for table `refund_dispersements`
--
ALTER TABLE `refund_dispersements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `refund_dispersements_receptionist_id_foreign` (`receptionist_id`);

--
-- Indexes for table `refund_invoices`
--
ALTER TABLE `refund_invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `refund_invoices_receptionist_id_foreign` (`receptionist_id`);

--
-- Indexes for table `reset_code_passwords`
--
ALTER TABLE `reset_code_passwords`
  ADD KEY `reset_code_passwords_email_index` (`email`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_user_id_foreign` (`user_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `schedules`
--
ALTER TABLE `schedules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `signatures`
--
ALTER TABLE `signatures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tax_payers`
--
ALTER TABLE `tax_payers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tax_payers_receptionist_id_foreign` (`receptionist_id`);

--
-- Indexes for table `trips`
--
ALTER TABLE `trips`
  ADD PRIMARY KEY (`id`),
  ADD KEY `trips_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_plans`
--
ALTER TABLE `user_plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wish_lists`
--
ALTER TABLE `wish_lists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wish_listss`
--
ALTER TABLE `wish_listss`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `diligence_verifications`
--
ALTER TABLE `diligence_verifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `internal_audits`
--
ALTER TABLE `internal_audits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `irs_status`
--
ALTER TABLE `irs_status`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=416;

--
-- AUTO_INCREMENT for table `places`
--
ALTER TABLE `places`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT for table `place_saves`
--
ALTER TABLE `place_saves`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `place_trips`
--
ALTER TABLE `place_trips`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `playlists`
--
ALTER TABLE `playlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `playlist_detail`
--
ALTER TABLE `playlist_detail`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `preferences_to_users`
--
ALTER TABLE `preferences_to_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2844;

--
-- AUTO_INCREMENT for table `publish_trip_reviews`
--
ALTER TABLE `publish_trip_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `receptionists`
--
ALTER TABLE `receptionists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `refferals`
--
ALTER TABLE `refferals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `refund_dispersements`
--
ALTER TABLE `refund_dispersements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `refund_invoices`
--
ALTER TABLE `refund_invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `schedules`
--
ALTER TABLE `schedules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `signatures`
--
ALTER TABLE `signatures`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tax_payers`
--
ALTER TABLE `tax_payers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trips`
--
ALTER TABLE `trips`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `user_plans`
--
ALTER TABLE `user_plans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wish_lists`
--
ALTER TABLE `wish_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

--
-- AUTO_INCREMENT for table `wish_listss`
--
ALTER TABLE `wish_listss`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cities`
--
ALTER TABLE `cities`
  ADD CONSTRAINT `cities_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `diligence_verifications`
--
ALTER TABLE `diligence_verifications`
  ADD CONSTRAINT `diligence_verifications_receptionist_id_foreign` FOREIGN KEY (`receptionist_id`) REFERENCES `receptionists` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `internal_audits`
--
ALTER TABLE `internal_audits`
  ADD CONSTRAINT `internal_audits_receptionist_id_foreign` FOREIGN KEY (`receptionist_id`) REFERENCES `receptionists` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `irs_status`
--
ALTER TABLE `irs_status`
  ADD CONSTRAINT `irs_status_receptionist_id_foreign` FOREIGN KEY (`receptionist_id`) REFERENCES `receptionists` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD CONSTRAINT `payment_methods_receptionist_id_foreign` FOREIGN KEY (`receptionist_id`) REFERENCES `receptionists` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `place_saves`
--
ALTER TABLE `place_saves`
  ADD CONSTRAINT `place_saves_playlist_id_foreign` FOREIGN KEY (`playlist_id`) REFERENCES `playlists` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `place_trips`
--
ALTER TABLE `place_trips`
  ADD CONSTRAINT `place_trips_place_id_foreign` FOREIGN KEY (`place_id`) REFERENCES `places` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `place_trips_trip_id_foreign` FOREIGN KEY (`trip_id`) REFERENCES `trips` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `playlists`
--
ALTER TABLE `playlists`
  ADD CONSTRAINT `playlists_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `playlist_detail`
--
ALTER TABLE `playlist_detail`
  ADD CONSTRAINT `playlist_detail_playlist_id_foreign` FOREIGN KEY (`playlist_id`) REFERENCES `playlists` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `playlist_detail_wishlist_id_foreign` FOREIGN KEY (`wishlist_id`) REFERENCES `wish_lists` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `publish_trip_reviews`
--
ALTER TABLE `publish_trip_reviews`
  ADD CONSTRAINT `publish_trip_reviews_trip_id_foreign` FOREIGN KEY (`trip_id`) REFERENCES `trips` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `publish_trip_reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `refferals`
--
ALTER TABLE `refferals`
  ADD CONSTRAINT `refferals_receptionist_id_foreign` FOREIGN KEY (`receptionist_id`) REFERENCES `receptionists` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `refund_dispersements`
--
ALTER TABLE `refund_dispersements`
  ADD CONSTRAINT `refund_dispersements_receptionist_id_foreign` FOREIGN KEY (`receptionist_id`) REFERENCES `receptionists` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `refund_invoices`
--
ALTER TABLE `refund_invoices`
  ADD CONSTRAINT `refund_invoices_receptionist_id_foreign` FOREIGN KEY (`receptionist_id`) REFERENCES `receptionists` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tax_payers`
--
ALTER TABLE `tax_payers`
  ADD CONSTRAINT `tax_payers_receptionist_id_foreign` FOREIGN KEY (`receptionist_id`) REFERENCES `receptionists` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `trips`
--
ALTER TABLE `trips`
  ADD CONSTRAINT `trips_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
