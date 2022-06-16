-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 16, 2022 at 02:22 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `api`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `admins` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`admins`, `name`, `email`, `password`) VALUES
(1, 'ali mohamed', 'ali@gmail.com', '$2y$10$mdBkj4JNA2jPntaJi89PeeQ.AtJQXppJMZGQCyahHypGXgVcbeMmG');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name_ar` varchar(255) NOT NULL,
  `name_en` varchar(255) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name_ar`, `name_en`, `active`) VALUES
(1, 'ali', 'ali1', 1),
(2, 'abdo', 'abdo', 1);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(11, '2014_10_12_000000_create_users_table', 1),
(12, '2014_10_12_100000_create_password_resets_table', 1),
(13, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(14, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(15, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(16, '2016_06_01_000004_create_oauth_clients_table', 1),
(17, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(18, '2019_08_19_000000_create_failed_jobs_table', 1),
(19, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(20, '2021_12_14_125757_create_products_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
('9682041d-15a3-4d1b-bce8-8a8396830b34', NULL, 'Laravel Personal Access Client', 'FE6syzat8wZZ14wNvUV5vdOomA6HIX9CJsEqWCVJ', NULL, 'http://localhost', 1, 0, 0, '2022-06-10 06:59:49', '2022-06-10 06:59:49'),
('9682041d-7180-4643-be6c-2832c5516737', NULL, 'Laravel Password Grant Client', '4fMOjsVr03I3z1qUsIAhoLOcfzJjLtoFKBREP5PP', 'users', 'http://localhost', 0, 1, 0, '2022-06-10 06:59:49', '2022-06-10 06:59:49');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, '9682041d-15a3-4d1b-bce8-8a8396830b34', '2022-06-10 06:59:49', '2022-06-10 06:59:49');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `body` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`) VALUES
(2, 'this is update', 'ths is body'),
(3, 'Prof.', 'Fuga sit facere architecto velit qui et mollitia. Facilis et veritatis dolor possimus saepe.'),
(4, 'Dr.', 'Explicabo dolores nisi voluptatum quo deserunt non. Culpa modi perferendis maxime magnam. Labore facilis distinctio totam et sit.'),
(5, 'Dr.', 'Maiores ducimus aut eum suscipit voluptates et nihil. Harum architecto veniam itaque sunt. Dolor exercitationem impedit illo ut sit nisi.'),
(6, 'Miss', 'Ipsam molestiae sint ut id. Rem eos id sequi temporibus dicta illo corrupti exercitationem. Quia labore perferendis quod iure molestiae non.'),
(7, 'Miss', 'Modi rerum deserunt libero. Rerum officiis et repellendus molestias maiores vel debitis. In animi vero iste voluptatibus est consequatur hic. Provident accusantium qui doloribus vel et.'),
(8, 'Mr.', 'Eos voluptate voluptas sed est. Suscipit deserunt autem ut repudiandae soluta. Et corrupti necessitatibus nostrum quia eius in quo.'),
(9, 'Ms.', 'Nihil quisquam tempore aspernatur ex repudiandae impedit sunt. Qui quibusdam sit quia ipsa et voluptas sunt. Est repudiandae sapiente praesentium expedita nobis sit sed.'),
(10, 'Mrs.', 'Aliquid doloribus adipisci nihil quia voluptas. Et quia natus sequi reiciendis voluptatem quisquam voluptatem. Autem repellendus et enim eaque excepturi repudiandae et. Ut in aliquam dolorem et.'),
(11, 'Dr.', 'Sunt eos officiis ut enim ex et. Dolorem cumque saepe est id. Aliquam dolor eum dolorum maiores eligendi tenetur. Totam illum et ipsum quibusdam maiores similique fugiat ea.'),
(12, 'Mrs.', 'Ut dolores ipsum veritatis itaque enim reiciendis. Beatae minus odit consequatur facere laudantium reiciendis sit aliquid. Omnis expedita est vero esse. Eius voluptates dolore tempora et.'),
(13, 'Mr.', 'Vel voluptatum adipisci animi molestias placeat ipsa numquam alias. Rerum sunt culpa hic. Rerum vel harum facere est nulla necessitatibus.'),
(14, 'Miss', 'Vero reiciendis harum quam error. Magnam itaque sequi error ipsam. Temporibus aut at sequi non velit quia labore provident. Dolor ut qui aut.'),
(15, 'Ms.', 'Aperiam praesentium repellendus a vel. Voluptatibus quia earum quidem officiis tempora. Voluptates quibusdam voluptatem voluptas illo quibusdam veniam.'),
(16, 'Prof.', 'Ipsum sit labore ut dolorem culpa quasi dolores doloribus. Saepe assumenda voluptas non nam a deleniti ea. Voluptatum amet iste id voluptas magni commodi autem.'),
(17, 'Prof.', 'Aliquid exercitationem a quod ut iure magni et. In laboriosam aut sit est. Quidem et ratione nesciunt quam.'),
(18, 'Prof.', 'Itaque rerum eaque soluta assumenda culpa velit mollitia. Eveniet adipisci repudiandae laboriosam perferendis dolorem amet architecto. Cupiditate voluptatem ad praesentium et et.'),
(19, 'Mrs.', 'Aut et ipsum rerum magnam ut omnis similique consequatur. Est magni est quos vel vitae et. Voluptatum suscipit quam sed atque cumque porro dolor.'),
(20, 'Prof.', 'Enim qui ipsam quo molestias ipsa eos molestiae. Consequuntur beatae accusantium provident voluptatibus commodi. Fuga consequatur tenetur quod nulla voluptatem.'),
(21, 'Mrs.', 'Quidem officia autem fuga nulla iure. Cupiditate aspernatur delectus et dolores. Dolores numquam at nostrum facere esse aspernatur adipisci. Perspiciatis tempore non ut veniam.'),
(22, 'Miss', 'Enim magnam dicta soluta cum consequatur aut. Cupiditate in cum quas quis velit iste. Consectetur numquam et consequatur temporibus aut.'),
(23, 'Ms.', 'Aut excepturi magni commodi quas corrupti qui qui. Et qui atque repellat dolorem in sed qui. A id dolores voluptate et.'),
(24, 'Ms.', 'Quidem nobis eligendi laudantium eius inventore sed et. Possimus eum magnam beatae est. Libero occaecati rerum nostrum laudantium rerum. Quod voluptate quia esse sint ea ipsa.'),
(25, 'Dr.', 'Et aliquid laboriosam perspiciatis architecto. Molestias voluptatem et id non et error sapiente quas. Dolorem et velit quis incidunt omnis quia qui.'),
(26, 'Prof.', 'Temporibus esse voluptatem odit ratione enim accusantium qui aliquam. Ea non error unde sed consequatur hic sunt. Eum tempore sit corrupti et sed deserunt.'),
(27, 'Dr.', 'Ab neque repellat sed distinctio voluptate velit. Sed modi tenetur modi sequi recusandae ex aut. Unde libero harum adipisci eius. Voluptatem ipsum expedita ipsam illum.'),
(28, 'Dr.', 'Repudiandae voluptatibus aliquam maxime libero. Ea eius alias nihil temporibus vitae. Et quas accusantium ut. Non ut laborum omnis hic culpa.'),
(29, 'Ms.', 'Ullam dolores alias voluptatum ab et dicta. Dolorum sint nihil repellendus totam quidem harum et. Ut officiis aut quia rerum et. Unde laborum et ut id maxime ea vel.'),
(30, 'Mr.', 'Nostrum labore vel ullam expedita dolor non. Reprehenderit aut omnis sint aut. Esse sit ut occaecati debitis.'),
(31, 'Dr.', 'Magnam qui amet animi impedit fugit. Reprehenderit adipisci sint cupiditate aut dolores voluptates sint. Omnis sint blanditiis eaque ut dolorem expedita.'),
(32, 'Ms.', 'Dolorem porro iste praesentium labore. Veniam expedita molestiae ut minima possimus. Unde et maiores in est cumque officiis est. Cumque voluptates aut enim est.'),
(33, 'Mr.', 'Occaecati est doloribus neque exercitationem quia neque. Commodi alias porro sit laudantium optio. Qui facilis qui quibusdam facilis et. Optio et dolorum et.'),
(34, 'Dr.', 'Quaerat enim vitae maxime fugiat. Ut totam accusantium vel hic et sunt aliquid. Laudantium porro enim cumque iusto at et.'),
(35, 'Prof.', 'Quidem aut sit mollitia id recusandae accusantium voluptas voluptatem. Tempora quidem eius magnam qui. Laborum quisquam voluptatem tempore quaerat. Nobis maiores alias cupiditate ipsum quae.'),
(36, 'Mrs.', 'Voluptatibus dignissimos veniam tempora minus officia. Quia dignissimos similique delectus atque modi aut eaque.'),
(37, 'Prof.', 'Beatae deserunt ut consequuntur quidem eos ut. Deserunt maiores laboriosam qui quae ea sint. Facilis rem consequatur id tempora.'),
(38, 'Mr.', 'Non magni est animi excepturi ut architecto omnis velit. Aut excepturi est eum vero pariatur rem minima.'),
(39, 'Dr.', 'Error molestias omnis excepturi. Illum tempora non voluptatem tempora placeat. Natus fugiat enim et nihil eaque aspernatur voluptate.'),
(40, 'Prof.', 'Necessitatibus cum dolorum corrupti et id voluptatem non. Non nulla autem repudiandae et est. Amet repellat et enim aut facilis iste. Deleniti quisquam voluptas ut facilis aut et dicta.'),
(41, 'Dr.', 'Eum est illum sed fugit tempore id ipsa. Aut ut facilis autem qui ut. Debitis fuga quidem veniam. Fuga atque modi ut reprehenderit nemo omnis pariatur.'),
(42, 'Ms.', 'Dolor voluptate exercitationem sit maxime consequatur dolor eos. Sunt nam sint et iste aut. Ex adipisci eum molestias optio veritatis. Ut sint non dolores quae earum.'),
(43, 'Prof.', 'Animi voluptatem doloribus dicta illum. Dolorum et mollitia non eveniet commodi minus. Voluptatem voluptatem amet sapiente quia commodi. Porro omnis pariatur id vitae.'),
(44, 'Mr.', 'Sed sint sint eligendi aut. Voluptates aperiam iste temporibus et aut hic provident.'),
(45, 'Prof.', 'Placeat possimus est at soluta expedita. Exercitationem dolores repellat et voluptatem reprehenderit et impedit. Aspernatur ut omnis dolorum doloribus. Nihil eum ipsum velit id possimus.'),
(46, 'Prof.', 'Qui quisquam harum eum suscipit non ad. Sed nihil reprehenderit modi delectus reprehenderit exercitationem sit autem. Est velit amet enim rerum neque illum animi.'),
(47, 'Mrs.', 'Et sit qui nostrum non id facilis. Sit consequatur vel nam. Eum eaque dolorem et et totam quia tempora.'),
(48, 'Dr.', 'Ullam autem eaque esse. Laborum non earum dolor modi totam. Et est odit minus ut in delectus.'),
(49, 'Mr.', 'Dolore consequatur in laborum velit labore similique. Quia quo velit sed rerum. Accusamus in ut laudantium libero fuga qui.'),
(50, 'Prof.', 'Quasi et velit expedita laborum dolorem magnam at. Quidem delectus consequuntur non libero autem porro quo. Pariatur eligendi ut eum illo assumenda. Est recusandae nesciunt autem libero.'),
(51, 'Dr.', 'Architecto unde minus ut et assumenda unde sit. Sequi et ut ut. Commodi eius quia molestiae velit hic placeat eos. Rerum quo molestias perspiciatis eos.'),
(52, 'Dr.', 'Voluptates perspiciatis sunt sint quia amet et nam. Quaerat voluptates est fugit labore sunt. Et odit animi et aut dignissimos illo aut. Illo ducimus iure est fuga. Magni eius corrupti quaerat est.'),
(53, 'Dr.', 'Eos libero ipsam saepe aspernatur. Culpa ullam voluptate magnam eos. Numquam magnam non facilis omnis provident nesciunt.'),
(54, 'Prof.', 'Omnis error sit ea. Unde amet dignissimos omnis magni. Numquam omnis voluptatibus libero doloremque tempore occaecati.'),
(55, 'Mr.', 'Magni sunt est tempora voluptas recusandae sed corrupti. Placeat eligendi ratione dolorem consequatur laudantium est eius. Cum esse repellat qui quia aliquam hic.'),
(56, 'Mrs.', 'Ut corporis et optio et rerum officia ut quod. Rerum earum veniam eum magnam. Modi a voluptatum dolorem ab sed veritatis.'),
(57, 'Prof.', 'Dicta porro necessitatibus harum et inventore excepturi dolores. Accusamus pariatur beatae doloremque sapiente dolore et amet. Reprehenderit sit repudiandae quasi maxime.'),
(58, 'Ms.', 'Pariatur doloribus ducimus aut. Consequatur aliquam non reprehenderit expedita. Unde praesentium dignissimos eligendi debitis ex eum alias molestiae.'),
(59, 'Miss', 'Non magni quis porro. Qui numquam nisi voluptas nisi autem libero dignissimos. Repellendus distinctio a nobis iste. Atque non exercitationem eaque harum fuga eos.'),
(60, 'Miss', 'Aut accusamus dolor quam ipsa commodi pariatur distinctio. Cupiditate vel tempora maxime voluptas dignissimos necessitatibus reiciendis. Sint qui et sequi non.'),
(61, 'Dr.', 'Magnam et cum sed est. Et cumque sint non quaerat dolores quia vitae quaerat. A amet tempore sapiente quidem minus recusandae omnis.'),
(62, 'Mr.', 'Rerum in nihil quod laudantium aliquam. Dolores atque vel tenetur similique. Dicta dignissimos ipsa totam exercitationem non.'),
(63, 'Ms.', 'Temporibus est unde deleniti amet et. Quia et fuga facere veniam rerum est quo. Voluptatem exercitationem voluptas omnis minima.'),
(64, 'Dr.', 'Quas quae dolorum voluptatem eveniet facere. Rerum iusto fuga omnis similique provident autem repellendus ut. Quisquam est veritatis et facilis.'),
(65, 'Miss', 'Dolorum vel possimus accusantium ratione. Voluptates qui suscipit repudiandae libero eveniet repellat eos est. Ipsam aut atque rerum vel autem nesciunt.'),
(66, 'Prof.', 'Non eum qui repudiandae quidem esse reiciendis nam. Deserunt qui voluptatem labore molestiae adipisci ea voluptas. Quis est cumque nihil cumque facilis.'),
(67, 'Mr.', 'Deserunt hic magnam dolores ut occaecati. Nisi sit eius quaerat repellendus quia est. Quo libero earum distinctio quis et aut excepturi consequatur.'),
(68, 'Dr.', 'Est quae asperiores vitae. Possimus quasi est impedit sit similique reprehenderit. Quasi quod delectus architecto labore. Qui dolor aut fuga quo saepe officia ea.'),
(69, 'Prof.', 'Nam exercitationem et tempore illo incidunt nihil. Vel iusto itaque et laborum. Illo laboriosam vitae sed sapiente vitae. Voluptatum nesciunt blanditiis ea debitis et quos facere.'),
(70, 'Mr.', 'Hic in adipisci commodi temporibus reiciendis. Nihil quod sint similique. Aut quos aut qui et.'),
(71, 'Dr.', 'Quia facilis aliquid eveniet velit. Repellendus rem ipsa eaque sit. Ut placeat beatae voluptatem in quia ea saepe.'),
(72, 'Mr.', 'Voluptatem illo nemo aliquid. Cumque iure repudiandae dolorem dolorem autem. Commodi in temporibus voluptatem.'),
(73, 'Prof.', 'Alias modi voluptates nihil aliquam itaque ex sit. Voluptatem rerum illum iusto eos et. Consectetur ut ut eligendi quia quia. Consequatur laudantium rerum officiis aut.'),
(74, 'Dr.', 'Sequi quia asperiores fugiat. Et qui reiciendis quibusdam tempora vel omnis dolore. Quisquam quae et et nam modi quis reprehenderit. Qui dignissimos inventore et sed dolores.'),
(75, 'Dr.', 'Atque voluptatem veritatis voluptas provident. Omnis soluta culpa et ut.'),
(76, 'Dr.', 'Qui et ut sit vel natus sint. Velit nulla est debitis reprehenderit dolorem magnam ipsam. Illo repellat aspernatur dolorem consequatur non asperiores explicabo. Nisi minima et dolorem dolorem.'),
(77, 'Dr.', 'Cum animi doloribus asperiores in. Rem nisi laboriosam sint optio. Voluptas consectetur similique doloribus consequatur. Dolores amet sequi in delectus quia aut.'),
(78, 'Dr.', 'In exercitationem nisi recusandae nobis. Qui repellat commodi nostrum et voluptas maiores et at. Vitae esse at a id doloremque odio blanditiis.'),
(79, 'Miss', 'Sit non officiis aut quia aut voluptas. Sunt id quia natus quos est non ducimus. Suscipit cum et voluptatibus sit totam. Non aut at tenetur. Architecto corrupti sequi enim doloremque.'),
(80, 'Mrs.', 'Ea voluptas nemo in quam. Voluptatum iste fugiat voluptatem vel reiciendis quo. Rem nam ut omnis quisquam ab. Quis id qui est commodi.'),
(81, 'Dr.', 'Quibusdam iure quo vero ad tempore velit. Aut odit optio et omnis praesentium possimus quia. Atque vitae consequatur cum reiciendis. Molestias vel omnis asperiores unde deleniti quis asperiores.'),
(82, 'Ms.', 'Hic perferendis quaerat vel omnis corporis. Doloremque qui est illum ad nemo quibusdam voluptatem. Perferendis dolorem qui distinctio soluta. Laboriosam et et cum minus repellat.'),
(83, 'Dr.', 'Mollitia tempore nisi dolores ea quisquam qui quia. Amet ut qui eius placeat ut facilis. Debitis quibusdam odit dolorem dignissimos nihil. Veritatis quidem ut ullam voluptatem enim ad nemo.'),
(84, 'Dr.', 'Necessitatibus qui debitis voluptatem voluptatem id quis. Repellat perspiciatis tempore ex natus voluptatem inventore aut ut. Autem eos et voluptas dolores aut rerum.'),
(85, 'Dr.', 'Itaque in iste nihil quod. Quidem culpa odio voluptatem molestiae earum et aspernatur. Omnis sequi nobis et. Fugiat accusamus aut voluptas provident quibusdam perferendis perspiciatis quisquam.'),
(86, 'Mr.', 'Culpa enim consectetur omnis sequi nesciunt illo. Dolorem asperiores qui recusandae aperiam. Aut sapiente reprehenderit amet autem animi et quisquam.'),
(87, 'Prof.', 'Ex eum omnis vel nihil nisi voluptatem. Blanditiis et voluptate sit rem. Vero magni vitae illum.'),
(88, 'Mr.', 'Velit possimus fugit consequatur perspiciatis pariatur. Omnis cupiditate voluptatem enim sint dignissimos. Autem excepturi beatae sunt. Nulla voluptatem est laborum autem sit id.'),
(89, 'Dr.', 'Minima recusandae nulla quae. Amet eveniet odio magni quia sequi. Non consequatur est nihil omnis voluptatem modi. Suscipit quae voluptas repellat quas.'),
(90, 'Prof.', 'Est temporibus consequuntur voluptates ad aut. Modi quod ab nostrum consectetur. Veritatis molestias explicabo ut facere et.'),
(91, 'Prof.', 'Dolorum ex dicta enim. Nihil totam qui in reprehenderit maiores. Veniam sapiente aut ipsum nobis quia ipsa officia.'),
(92, 'Dr.', 'Impedit inventore occaecati aliquid placeat et quia expedita. Rerum quisquam inventore eveniet labore natus minima. Consequatur ratione qui animi et et. Voluptas quam et et.'),
(93, 'Dr.', 'At sint et ut quis illum provident libero eligendi. Expedita et adipisci dolores ad officia. Necessitatibus perspiciatis error officia similique est. Excepturi et ut sapiente occaecati eos et.'),
(94, 'Dr.', 'Quia consequatur reiciendis necessitatibus et ullam. Laudantium error natus harum sequi. Quasi tempora fugit consectetur corrupti accusamus.'),
(95, 'Prof.', 'Porro reiciendis et nobis. Nobis sit provident aut eos velit velit. Aut minus quia est placeat et ut. Eligendi accusantium ratione dicta. Voluptas porro illum voluptatum.'),
(96, 'Prof.', 'Sit qui itaque minima voluptates. Ut deserunt molestiae ex debitis velit natus. Voluptate consequatur est adipisci quidem rerum consequatur animi.'),
(97, 'Dr.', 'Commodi et necessitatibus veniam quisquam nihil voluptas facere aut. Incidunt cupiditate numquam quis libero tempora.'),
(98, 'Ms.', 'Temporibus similique repellat sit atque adipisci. Dolores voluptatem harum in recusandae. Maiores deleniti iure voluptas quia. Sed nisi consequuntur porro qui officiis molestiae nihil.'),
(99, 'Prof.', 'Rerum quidem ipsa esse ratione molestiae impedit. Hic error tempora eligendi consequatur non. Dolorum quisquam minus doloremque.'),
(100, 'Mr.', 'Minus mollitia eos placeat molestiae. Quia cupiditate consequatur aut et qui voluptatem. Labore quibusdam quas molestiae ullam iure tempore.'),
(101, 'thisi is post man', 'this is postman'),
(102, 'thisi is post man', 'this is postman');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `file`, `created_at`, `updated_at`) VALUES
(1, 'dfyujk', 'guhjlk;l/.,mn', '1654852296.jpeg', '2022-06-10 07:11:36', '2022-06-10 07:11:36');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admins`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
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
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `admins` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
