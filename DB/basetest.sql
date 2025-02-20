-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 20, 2024 at 06:59 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `basetest`
--

-- --------------------------------------------------------

--
-- Table structure for table `cellule2g`
--

CREATE TABLE `cellule2g` (
  `idCel` int NOT NULL,
  `codeCellule` varchar(50) NOT NULL,
  `nomCellule` varchar(100) NOT NULL,
  `lac` varchar(50) NOT NULL,
  `bcch` varchar(50) NOT NULL,
  `power` varchar(50) NOT NULL,
  `mlt` varchar(50) NOT NULL,
  `azimuth` varchar(50) NOT NULL,
  `bande` int DEFAULT NULL,
  `idSite` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cellule3g`
--

CREATE TABLE `cellule3g` (
  `idcel` int NOT NULL,
  `codeCellule` varchar(50) NOT NULL,
  `nomCellule` varchar(100) NOT NULL,
  `tac` varchar(50) NOT NULL,
  `sc` varchar(50) DEFAULT NULL,
  `power` varchar(50) NOT NULL,
  `mlt` varchar(50) NOT NULL,
  `azimuth` varchar(50) NOT NULL,
  `bande` int NOT NULL,
  `idSite` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cellule4g`
--

CREATE TABLE `cellule4g` (
  `idCel` int NOT NULL,
  `codeCellule` varchar(50) NOT NULL,
  `nomCellule` varchar(100) NOT NULL,
  `EnodB` varchar(100) NOT NULL,
  `tac` varchar(50) NOT NULL,
  `sc` varchar(50) NOT NULL,
  `power` varchar(50) NOT NULL,
  `mlt` varchar(50) NOT NULL,
  `azimuth` varchar(50) NOT NULL,
  `bande` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `idSite` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `cellule4g`
--

INSERT INTO `cellule4g` (`idCel`, `codeCellule`, `nomCellule`, `EnodB`, `tac`, `sc`, `power`, `mlt`, `azimuth`, `bande`, `created_at`, `updated_at`, `idSite`) VALUES
(1, 'C4776', 'CelluleName2', 'EnodB456', 'TAC456', 'SC456', '60', '20', '270', 2600, '2024-05-20 21:04:49', '2024-05-20 21:05:09', 17),
(4, '5', 'Cel4', 'ENOB4', 'tac1', 'sc1', '4729', 'mlt', 'AZ158', 1350, '2024-07-09 15:51:28', '2024-07-09 15:51:28', 18);

-- --------------------------------------------------------

--
-- Table structure for table `delegation`
--

CREATE TABLE `delegation` (
  `idDel` int NOT NULL,
  `codeDel` varchar(255) NOT NULL,
  `libelleDel` varchar(255) NOT NULL,
  `region_id` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `delegation`
--

INSERT INTO `delegation` (`idDel`, `codeDel`, `libelleDel`, `region_id`, `created_at`, `updated_at`) VALUES
(8, 'BN1', 'Bizerte Nord', 13, '2024-09-11 06:42:02', '2024-09-11 06:42:02'),
(9, 'BC1', 'Bizerte', 13, '2024-09-11 06:42:34', '2024-09-11 06:42:34'),
(10, 'SC1', 'Sfax Ville', 8, '2024-09-11 06:46:55', '2024-09-11 06:46:55'),
(11, 'AC1', 'Ariana Ville', 16, '2024-09-11 06:47:22', '2024-09-11 06:47:22'),
(12, 'J1', 'Ain Draham', 15, '2024-09-11 06:47:47', '2024-09-11 06:47:47');

-- --------------------------------------------------------

--
-- Table structure for table `docfinanciere`
--

CREATE TABLE `docfinanciere` (
  `iddocfin` int NOT NULL,
  `contract` varchar(255) DEFAULT NULL,
  `propritere` varchar(255) DEFAULT NULL,
  `montant` int DEFAULT NULL,
  `datecontract` date DEFAULT NULL,
  `datemaj` date DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `docfinanciere`
--

INSERT INTO `docfinanciere` (`iddocfin`, `contract`, `propritere`, `montant`, `datecontract`, `datemaj`, `created_at`, `updated_at`) VALUES
(11, 'contracts/mayssemoption.pdf', 'John Doe', 4000, '2024-05-19', '2024-09-04', '2024-05-19 15:15:53', '2024-09-04 21:48:25'),
(25, 'contracts/mayssemoption.pdf', 'MAYARPROP', 1000, NULL, NULL, '2024-06-12 21:13:56', '2024-06-27 13:48:11'),
(26, 'fiche/xMbc2Rcy8y91ctIH6b1INMgRGIAxk7lTk9073iDV.pdf', 'P1', 67777, '2024-07-01', '2024-07-07', '2024-07-09 15:27:15', '2024-08-30 01:58:32');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fournisseurs`
--

CREATE TABLE `fournisseurs` (
  `idFourn` bigint UNSIGNED NOT NULL,
  `codeFourn` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomFournisseur` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fournisseurs`
--

INSERT INTO `fournisseurs` (`idFourn`, `codeFourn`, `nomFournisseur`, `created_at`, `updated_at`) VALUES
(1, 'F12345', 'Fournisseur 1', '2024-07-17 23:11:33', '2024-07-17 23:11:33'),
(3, 'F123456', 'Fournisseur 2', '2024-07-17 23:25:54', '2024-07-17 23:39:04'),
(4, 'F12346666', 'Fournisseur 3', '2024-07-17 23:29:24', '2024-07-17 23:29:24');

-- --------------------------------------------------------

--
-- Table structure for table `ingenieur`
--

CREATE TABLE `ingenieur` (
  `idIng` int NOT NULL,
  `nom` varchar(254) DEFAULT NULL,
  `prenom` varchar(254) DEFAULT NULL,
  `adresse` varchar(254) DEFAULT NULL,
  `tel` varchar(254) DEFAULT NULL,
  `email` varchar(254) DEFAULT NULL,
  `fax` varchar(254) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_03_26_114605_create_users1_table', 2),
(6, '2024_04_01_131507_create_utilisateur_table', 3),
(7, '2024_04_01_133608_create_utilisateurs_table', 4),
(8, '2024_05_04_144515_add_image_user_path_to_utilisateurs_table', 5),
(9, '2024_05_04_144747_add_image_user_path_to_utilisateurs_table', 6),
(10, '2024_07_18_000140_create_fournisseurs_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `paramarchive`
--

CREATE TABLE `paramarchive` (
  `idArchive` int NOT NULL,
  `ficheMisService` varchar(255) DEFAULT NULL,
  `APD` varchar(255) DEFAULT NULL,
  `ficheExp` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `paramarchive`
--

INSERT INTO `paramarchive` (`idArchive`, `ficheMisService`, `APD`, `ficheExp`, `created_at`, `updated_at`) VALUES
(7, 'fiche/sZ82QqEISLW6QLfbYCiVONcYfvlTdLWWg9oxawP3.pdf', 'fiche/YpBet8cWqDE3hIrRFcBim9HqqDdduTdoSNbEG2J5.pdf', 'fiche/JD66AQZhudsy3Q1rXKofhIwY0SY5tmrafxxggwYq.pdf', '2024-05-09 11:17:59', '2024-05-09 11:17:59'),
(8, 'fiche/e8MLTCzq51WsENvlKlvmtdlmO2JF6v3KOK0ZdkJ2.pdf', 'fiche/1lCdUOEfA8uP90cDFR5XBWBahQoSiQ1M7nWUjarR.pdf', 'fiche/Nk7yLm5XhjyL6yiH8YVxsU6ayDi8o0sOQ4yY55fQ.pdf', '2024-05-09 11:35:27', '2024-05-09 11:35:27'),
(12, 'fiche/OHubFr9gY0wCTaaykaZwHPjWSBYkwpoxILpNbwZw.pdf', 'fiche/MaSk1zTUuG7NzP3Z2d8JB6cHOrVePfILPO6DBtg8.pdf', 'fiche/IfV8e2fDX8nqqo6ViYoJOnaEnsNep6ZAzQQdOfsO.pdf', '2024-05-12 16:27:50', '2024-05-12 16:27:50'),
(123, 'fiche/Aei8ANu77B6t4NDqYaX7QXwu6Zb6QE5eMbDT8Cui.pdf', 'fiche/oOKRuUUBY5Va82hSCyCpKQUELGlDW0LjkKmpBDrL.pdf', 'fiche/9QZRXm0oC2lvmJsTABzHkfk0Yj9Zx4vxBAzLpRn2.pdf', '2024-05-09 12:02:27', '2024-05-09 12:02:27');

-- --------------------------------------------------------

--
-- Table structure for table `paramarchive2`
--

CREATE TABLE `paramarchive2` (
  `idArchive2` int NOT NULL,
  `ficheMisService` varchar(255) DEFAULT NULL,
  `APD` varchar(255) DEFAULT NULL,
  `ficheExp` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `paramarchive2`
--

INSERT INTO `paramarchive2` (`idArchive2`, `ficheMisService`, `APD`, `ficheExp`, `created_at`, `updated_at`) VALUES
(19, NULL, 'fiche/image.png.pdf', 'fiche/image.png.pdf', '2024-07-06 11:52:02', '2024-07-06 11:52:02'),
(20, NULL, 'fiche/image.png.pdf', 'fiche/image.png.pdf', '2024-07-06 11:53:20', '2024-07-06 11:53:20'),
(21, NULL, 'fiche/image.png.pdf', NULL, '2024-07-09 15:25:41', '2024-07-09 15:25:41'),
(22, NULL, 'fiche/image.png.pdf', NULL, '2024-07-10 08:34:04', '2024-07-10 08:34:04');

-- --------------------------------------------------------

--
-- Table structure for table `paramlogique`
--

CREATE TABLE `paramlogique` (
  `idLogique` int NOT NULL,
  `x` int DEFAULT NULL,
  `y` int DEFAULT NULL,
  `HBA` int DEFAULT NULL,
  `azimuth` int DEFAULT NULL,
  `tilt` int DEFAULT NULL,
  `ci` varchar(254) DEFAULT NULL,
  `bande` varchar(254) DEFAULT NULL,
  `frequence` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `paramphysique`
--

CREATE TABLE `paramphysique` (
  `idPhysique` int NOT NULL,
  `idType` int DEFAULT NULL,
  `sectionVideo` varchar(254) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `region`
--

CREATE TABLE `region` (
  `idReg` int NOT NULL,
  `codeReg` int DEFAULT NULL,
  `libelleReg` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `region`
--

INSERT INTO `region` (`idReg`, `codeReg`, `libelleReg`, `created_at`, `updated_at`) VALUES
(5, 4, 'Gafsa', '2024-07-14 14:09:57', '2024-07-16 14:19:43'),
(6, 1, 'Tunis', '2024-07-16 13:03:30', '2024-07-16 13:03:30'),
(8, 3, 'Sfax', '2024-07-16 13:51:26', '2024-07-16 13:51:26'),
(10, 2, 'Ben Arous', '2024-07-16 14:18:47', '2024-07-16 14:18:47'),
(13, 5, 'Bizerte', '2024-09-11 06:38:02', '2024-09-11 06:38:02'),
(14, 6, 'Tabarka', '2024-09-11 06:38:17', '2024-09-11 06:38:17'),
(15, 7, 'Jendouba', '2024-09-11 06:38:33', '2024-09-11 06:38:33'),
(16, 8, 'Ariana', '2024-09-11 06:38:51', '2024-09-11 06:38:51'),
(17, 9, 'SOUSSE', '2024-09-11 06:40:59', '2024-09-11 06:40:59');

-- --------------------------------------------------------

--
-- Table structure for table `secteur`
--

CREATE TABLE `secteur` (
  `idSecteur` int NOT NULL,
  `codeSec` varchar(255) NOT NULL,
  `libelleSec` varchar(255) NOT NULL,
  `delegation_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `idLogique` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `secteur`
--

INSERT INTO `secteur` (`idSecteur`, `codeSec`, `libelleSec`, `delegation_id`, `created_at`, `updated_at`, `idLogique`) VALUES
(5, 'SBC1', 'El Medina', 9, '2024-09-11 06:45:26', '2024-09-11 06:45:26', NULL),
(6, 'SBC2', 'El Houidh', 9, '2024-09-11 06:45:53', '2024-09-11 06:45:53', NULL),
(7, 'SBN1', 'Habib Bougatfa', 8, '2024-09-11 06:46:21', '2024-09-11 06:46:21', NULL),
(8, 'SSC1', 'El Bassatine', 10, '2024-09-11 06:48:58', '2024-09-11 06:48:58', NULL),
(9, 'SAC1', 'El Menzah VI', 11, '2024-09-11 06:49:33', '2024-09-11 06:49:33', NULL),
(10, 'JC1', 'Ain Draham Banlieue', 12, '2024-09-11 06:50:00', '2024-09-11 06:50:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sitegsm`
--

CREATE TABLE `sitegsm` (
  `idSite` int NOT NULL,
  `idPhysique` int DEFAULT NULL,
  `idTech` int DEFAULT NULL,
  `idLogique` int DEFAULT NULL,
  `idArchive` int DEFAULT NULL,
  `idReg` int DEFAULT NULL,
  `libelleSite` varchar(255) DEFAULT NULL,
  `codesite` varchar(255) DEFAULT NULL,
  `nomsite` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `delegotion` varchar(255) DEFAULT NULL,
  `secteur` varchar(255) DEFAULT NULL,
  `x` float DEFAULT NULL,
  `y` float DEFAULT NULL,
  `fournisseur` varchar(255) DEFAULT NULL,
  `HBA` varchar(255) DEFAULT NULL,
  `antenne` varchar(255) DEFAULT NULL,
  `alimentation` varchar(255) DEFAULT NULL,
  `acces` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `idArchive2` int DEFAULT NULL,
  `iddocfin` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `sitegsm`
--

INSERT INTO `sitegsm` (`idSite`, `idPhysique`, `idTech`, `idLogique`, `idArchive`, `idReg`, `libelleSite`, `codesite`, `nomsite`, `region`, `delegotion`, `secteur`, `x`, `y`, `fournisseur`, `HBA`, `antenne`, `alimentation`, `acces`, `created_at`, `updated_at`, `idArchive2`, `iddocfin`) VALUES
(16, NULL, NULL, NULL, NULL, NULL, NULL, 'SB1', 'Station-Bi - 1', '13', '8', '7', 9.86666, 37.2746, 'Fournisseur 1', '18.4', '1800', 'Solaire', 'Terrestre', '2024-09-11 09:10:26', '2024-09-20 17:42:49', 19, 25),
(17, NULL, NULL, NULL, NULL, NULL, NULL, 'SSC1', 'Station-Sf - 7', '8', '10', '8', 10.7619, 34.7455, 'Fournisseur 2', '25', '1900', 'Diesel', 'Restreint', '2024-09-11 09:16:16', '2024-09-20 17:57:56', 20, 25),
(18, NULL, NULL, NULL, NULL, NULL, NULL, 'SJC1', 'Station-Ta - 2', '15', '12', '10', 8.70049, 36.7697, 'Fournisseur 3', '27', '1800', 'Lithium', 'Terrestre', '2024-09-11 09:18:52', '2024-09-20 17:58:10', 22, 26);

-- --------------------------------------------------------

--
-- Table structure for table `technologie`
--

CREATE TABLE `technologie` (
  `idTech` int NOT NULL,
  `libelleTech` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `typesupport`
--

CREATE TABLE `typesupport` (
  `idType` int NOT NULL,
  `libelleType` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `utilisateurs`
--

CREATE TABLE `utilisateurs` (
  `id` bigint UNSIGNED NOT NULL,
  `nom` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `profil` enum('ingénieur','directeur','manager','user','financier') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ImageUserPath` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `utilisateurs`
--

INSERT INTO `utilisateurs` (`id`, `nom`, `prenom`, `email`, `password`, `profil`, `ImageUserPath`, `created_at`, `updated_at`) VALUES
(12, 'admin', 'admin', 'admin@gmail.com', '$2y$10$VkZLE/GabyaKbIwKN2aUxuH.dnFpzjovInB3HWW5nriNps78gFWW6', 'directeur', NULL, '2024-07-29 14:37:28', '2024-07-29 14:48:47'),
(13, 'financier', 'financier', 'financier@gmail.com', '$2y$10$gjGnkj7P8sAOHOrsM1FgXuopRWP6/p3A3e2vnUlpubU9qlNKdZG0m', 'financier', NULL, '2024-07-30 07:19:13', '2024-07-30 07:32:47'),
(14, 'ingRadio', 'ingRadio', 'ingRadio@gmail.com', '$2y$10$06/HJnXbJD9hn8hgxbI46eYz81hC.vDeHcZ3n5Ff.vmdbDf5K2eMW', 'ingénieur', NULL, '2024-07-30 07:19:52', '2024-07-30 07:21:36'),
(15, 'manager', 'manager', 'manager@gmail.com', '$2y$10$0xSMx11JA8cAxeGpFkWlROXfNvv/3XPgtokKplIS29QnKVf4e7oyq', 'manager', NULL, '2024-07-30 07:21:12', '2024-07-30 07:21:52'),
(17, 'mayar', 'nefzi', 'mayar.nefzi@gmail.com', '$2y$10$1G6A9Kc0s73VjwvcaK8MyO/DVeJ7Aybl4Zget7SxfMD28n3WGqgsG', 'ingénieur', NULL, '2024-07-30 08:07:33', '2024-08-20 13:09:27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cellule2g`
--
ALTER TABLE `cellule2g`
  ADD PRIMARY KEY (`idCel`),
  ADD UNIQUE KEY `odeCellule` (`codeCellule`),
  ADD KEY `idSite` (`idSite`);

--
-- Indexes for table `cellule3g`
--
ALTER TABLE `cellule3g`
  ADD PRIMARY KEY (`idcel`),
  ADD KEY `idSite` (`idSite`);

--
-- Indexes for table `cellule4g`
--
ALTER TABLE `cellule4g`
  ADD PRIMARY KEY (`idCel`),
  ADD KEY `idSite` (`idSite`);

--
-- Indexes for table `delegation`
--
ALTER TABLE `delegation`
  ADD PRIMARY KEY (`idDel`),
  ADD UNIQUE KEY `codeDel` (`codeDel`),
  ADD KEY `region_id` (`region_id`);

--
-- Indexes for table `docfinanciere`
--
ALTER TABLE `docfinanciere`
  ADD PRIMARY KEY (`iddocfin`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `fournisseurs`
--
ALTER TABLE `fournisseurs`
  ADD PRIMARY KEY (`idFourn`),
  ADD UNIQUE KEY `fournisseurs_codefourn_unique` (`codeFourn`);

--
-- Indexes for table `ingenieur`
--
ALTER TABLE `ingenieur`
  ADD PRIMARY KEY (`idIng`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paramarchive`
--
ALTER TABLE `paramarchive`
  ADD PRIMARY KEY (`idArchive`);

--
-- Indexes for table `paramarchive2`
--
ALTER TABLE `paramarchive2`
  ADD PRIMARY KEY (`idArchive2`);

--
-- Indexes for table `paramlogique`
--
ALTER TABLE `paramlogique`
  ADD PRIMARY KEY (`idLogique`);

--
-- Indexes for table `paramphysique`
--
ALTER TABLE `paramphysique`
  ADD PRIMARY KEY (`idPhysique`),
  ADD KEY `idType` (`idType`);

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
-- Indexes for table `region`
--
ALTER TABLE `region`
  ADD PRIMARY KEY (`idReg`),
  ADD KEY `idIng` (`codeReg`);

--
-- Indexes for table `secteur`
--
ALTER TABLE `secteur`
  ADD PRIMARY KEY (`idSecteur`),
  ADD UNIQUE KEY `codeSec` (`codeSec`),
  ADD KEY `idLogique` (`idLogique`),
  ADD KEY `fk_delegation_id` (`delegation_id`);

--
-- Indexes for table `sitegsm`
--
ALTER TABLE `sitegsm`
  ADD PRIMARY KEY (`idSite`),
  ADD KEY `idPhysique` (`idPhysique`),
  ADD KEY `idTech` (`idTech`),
  ADD KEY `idLogique` (`idLogique`),
  ADD KEY `idArchive` (`idArchive`),
  ADD KEY `idReg` (`idReg`),
  ADD KEY `fk_sitegsm_idArchive2` (`idArchive2`),
  ADD KEY `fk_sitegsm_iddocfin` (`iddocfin`);

--
-- Indexes for table `technologie`
--
ALTER TABLE `technologie`
  ADD PRIMARY KEY (`idTech`);

--
-- Indexes for table `typesupport`
--
ALTER TABLE `typesupport`
  ADD PRIMARY KEY (`idType`);

--
-- Indexes for table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `utilisateurs_email_unique` (`email`),
  ADD UNIQUE KEY `utilisateurs_password_unique` (`password`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cellule2g`
--
ALTER TABLE `cellule2g`
  MODIFY `idCel` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `cellule3g`
--
ALTER TABLE `cellule3g`
  MODIFY `idcel` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `cellule4g`
--
ALTER TABLE `cellule4g`
  MODIFY `idCel` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `delegation`
--
ALTER TABLE `delegation`
  MODIFY `idDel` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `docfinanciere`
--
ALTER TABLE `docfinanciere`
  MODIFY `iddocfin` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fournisseurs`
--
ALTER TABLE `fournisseurs`
  MODIFY `idFourn` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `paramarchive2`
--
ALTER TABLE `paramarchive2`
  MODIFY `idArchive2` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `region`
--
ALTER TABLE `region`
  MODIFY `idReg` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `secteur`
--
ALTER TABLE `secteur`
  MODIFY `idSecteur` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `sitegsm`
--
ALTER TABLE `sitegsm`
  MODIFY `idSite` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cellule2g`
--
ALTER TABLE `cellule2g`
  ADD CONSTRAINT `cellule2g_ibfk_1` FOREIGN KEY (`idSite`) REFERENCES `sitegsm` (`idSite`) ON DELETE CASCADE;

--
-- Constraints for table `cellule3g`
--
ALTER TABLE `cellule3g`
  ADD CONSTRAINT `cellule3g_ibfk_1` FOREIGN KEY (`idSite`) REFERENCES `sitegsm` (`idSite`) ON DELETE CASCADE;

--
-- Constraints for table `cellule4g`
--
ALTER TABLE `cellule4g`
  ADD CONSTRAINT `cellule4g_ibfk_1` FOREIGN KEY (`idSite`) REFERENCES `sitegsm` (`idSite`);

--
-- Constraints for table `delegation`
--
ALTER TABLE `delegation`
  ADD CONSTRAINT `delegation_ibfk_1` FOREIGN KEY (`region_id`) REFERENCES `region` (`idReg`);

--
-- Constraints for table `paramphysique`
--
ALTER TABLE `paramphysique`
  ADD CONSTRAINT `paramphysique_ibfk_1` FOREIGN KEY (`idType`) REFERENCES `typesupport` (`idType`);

--
-- Constraints for table `secteur`
--
ALTER TABLE `secteur`
  ADD CONSTRAINT `fk_delegation_id` FOREIGN KEY (`delegation_id`) REFERENCES `delegation` (`idDel`),
  ADD CONSTRAINT `secteur_ibfk_1` FOREIGN KEY (`idLogique`) REFERENCES `paramlogique` (`idLogique`);

--
-- Constraints for table `sitegsm`
--
ALTER TABLE `sitegsm`
  ADD CONSTRAINT `fk_sitegsm_idArchive2` FOREIGN KEY (`idArchive2`) REFERENCES `paramarchive2` (`idArchive2`),
  ADD CONSTRAINT `fk_sitegsm_iddocfin` FOREIGN KEY (`iddocfin`) REFERENCES `docfinanciere` (`iddocfin`),
  ADD CONSTRAINT `sitegsm_ibfk_1` FOREIGN KEY (`idPhysique`) REFERENCES `paramphysique` (`idPhysique`),
  ADD CONSTRAINT `sitegsm_ibfk_2` FOREIGN KEY (`idTech`) REFERENCES `technologie` (`idTech`),
  ADD CONSTRAINT `sitegsm_ibfk_3` FOREIGN KEY (`idLogique`) REFERENCES `paramlogique` (`idLogique`),
  ADD CONSTRAINT `sitegsm_ibfk_4` FOREIGN KEY (`idArchive`) REFERENCES `paramarchive` (`idArchive`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
