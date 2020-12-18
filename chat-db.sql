
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


-- Création de la Base de données :  `chat-db`
--
CREATE DATABASE IF NOT EXISTS `chat-db` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `chat-db`;

-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cration de la table `messages`
--

DROP TABLE IF EXISTS `messages`;
CREATE TABLE IF NOT EXISTS `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author` varchar(50) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=75 DEFAULT CHARSET=utf8 COMMENT='La table qui va contenir tous les messages voyons !';

--
-- Déchargement des données de la table `messages`
--

INSERT INTO `messages` (`id`, `author`, `content`, `created_at`) VALUES
(39, 'Destini Ortiz', 'Consequatur et dolorem ab quidem quam maiores voluptas corporis assumenda unde voluptas sint dolores eos sapiente suscipit commodi accusantium exercitationem.', '2017-07-23 23:28:31'),
(40, 'Destini Ortiz', 'Itaque vel molestiae aut aut ut esse necessitatibus voluptatum assumenda vel eaque ad neque quisquam ipsam.', '2017-07-24 04:59:15'),
(41, 'Destini Ortiz', 'Aut velit libero sequi qui dignissimos sit omnis beatae omnis temporibus ut aut similique officia est autem suscipit consectetur.', '2017-07-24 13:20:52'),
(42, 'Isidro Hilpert', 'Et sed sed aut amet molestias repellendus inventore ipsa ut earum incidunt beatae voluptas voluptate magnam.', '2017-07-24 01:20:52'),
(43, 'Isidro Hilpert', 'Voluptas voluptas eos ullam similique quis architecto laboriosam mollitia laboriosam nostrum a voluptatibus molestiae.', '2017-07-24 04:29:34'),
(44, 'Isidro Hilpert', 'Odio porro ex molestias et sed velit qui ducimus maiores totam non atque nihil iure pariatur voluptas eligendi nisi.', '2017-07-24 15:48:05'),
(45, 'Mr. Chandler Reinger', 'Voluptatem quisquam dolor impedit nihil possimus iure eum qui suscipit.', '2017-07-24 01:24:46'),
(46, 'Mr. Chandler Reinger', 'Sint quis autem aut voluptas temporibus eos velit fuga facere porro est dolorum quam quos quo enim.', '2017-07-24 21:13:49'),
(47, 'Mr. Chandler Reinger', 'Officiis porro labore consectetur ratione et qui amet asperiores voluptatem dolorem.', '2017-07-24 12:48:06'),
(50, 'Joseph', 'Bonjour à tous !', '2017-07-25 01:23:55'),
(49, 'Lior', 'Mon message trop bien !', '2017-07-25 01:01:28'),
(51, 'Jeanne', 'Salut les amis !', '2017-07-25 01:24:54'),
(52, 'Lior', 'Est-ce que ça marche ?', '2017-07-25 01:41:13'),
(53, 'Lior', 'nouveau test', '2017-07-25 01:42:04'),
(54, 'Lior', 'Nouveau test encore', '2017-07-25 01:42:15'),
(55, 'Lior', 'et encore', '2017-07-25 01:42:16'),
(56, 'Lior', 'et encore !', '2017-07-25 01:42:18'),
(57, 'Joseph', 'Bonjour à tous !', '2017-07-25 01:42:47'),
(58, 'Jeanne', 'Bien salut mon Joseph !', '2017-07-25 01:44:00'),
(59, 'Lior', 'Bonjour à tous !', '2017-07-25 01:44:13'),
(60, 'Jeanne', 'Salut Lior, comment vas-tu ?', '2017-07-25 01:44:19'),
(61, 'China', 'On commence le jeu ?', '2020-05-07 19:40:58'),
(62, 'China', 'Tu es ready?', '2020-05-07 19:41:16'),
(63, 'Adama', 'Bien sûr !', '2020-05-07 19:41:30'),
(64, 'China', 'Allons-y', '2020-05-07 19:46:43'),
(66, 'Adama', 'Je te vois derrière moi', '2020-05-07 20:15:41');
--
-- Base de données :  `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
