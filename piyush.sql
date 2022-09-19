-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 01, 2022 at 08:35 AM
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
-- Database: `piyush`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add newuser', 7, 'add_newuser'),
(26, 'Can change newuser', 7, 'change_newuser'),
(27, 'Can delete newuser', 7, 'delete_newuser'),
(28, 'Can view newuser', 7, 'view_newuser'),
(29, 'Can add adds_property', 8, 'add_adds_property'),
(30, 'Can change adds_property', 8, 'change_adds_property'),
(31, 'Can delete adds_property', 8, 'delete_adds_property'),
(32, 'Can view adds_property', 8, 'view_adds_property'),
(33, 'Can add adds', 9, 'add_adds'),
(34, 'Can change adds', 9, 'change_adds'),
(35, 'Can delete adds', 9, 'delete_adds'),
(36, 'Can view adds', 9, 'view_adds'),
(37, 'Can add python', 10, 'add_python'),
(38, 'Can change python', 10, 'change_python'),
(39, 'Can delete python', 10, 'delete_python'),
(40, 'Can view python', 10, 'view_python');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(9, 'loona', 'adds'),
(8, 'loona', 'adds_property'),
(7, 'loona', 'newuser'),
(10, 'loona', 'python'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-08-30 05:51:07.027089'),
(2, 'auth', '0001_initial', '2022-08-30 05:51:08.217478'),
(3, 'admin', '0001_initial', '2022-08-30 05:51:08.483069'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-08-30 05:51:08.498664'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-08-30 05:51:08.498664'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-08-30 05:51:08.686331'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-08-30 05:51:08.826707'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-08-30 05:51:08.857952'),
(9, 'auth', '0004_alter_user_username_opts', '2022-08-30 05:51:08.873572'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-08-30 05:51:08.951679'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-08-30 05:51:08.967570'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-08-30 05:51:08.967570'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-08-30 05:51:08.998542'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-08-30 05:51:09.045405'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-08-30 05:51:09.061060'),
(16, 'auth', '0011_update_proxy_permissions', '2022-08-30 05:51:09.076648'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-08-30 05:51:09.107942'),
(18, 'loona', '0001_initial', '2022-08-30 05:51:09.154758'),
(19, 'loona', '0002_add_property_login', '2022-08-30 05:51:09.236801'),
(20, 'loona', '0003_rename_state_add_property_state1', '2022-08-30 05:51:09.267860'),
(21, 'loona', '0004_delete_login', '2022-08-30 05:51:09.283482'),
(22, 'loona', '0005_remove_add_property_state1', '2022-08-30 05:51:09.299105'),
(23, 'loona', '0006_login', '2022-08-30 05:51:09.361590'),
(24, 'loona', '0007_adds_property_delete_add_property', '2022-08-30 05:51:09.408721'),
(25, 'loona', '0008_add_state_alter_adds_property_mobile_and_more', '2022-08-30 05:51:09.674048'),
(26, 'loona', '0009_rename_state_add_state_state1', '2022-08-30 05:51:09.705260'),
(27, 'loona', '0010_s_state', '2022-08-30 05:51:09.767745'),
(28, 'loona', '0011_delete_add_state_delete_s_state', '2022-08-30 05:51:09.814840'),
(29, 'loona', '0012_adds_delete_login', '2022-08-30 05:51:09.877094'),
(30, 'loona', '0013_alter_newuser_mobile', '2022-08-30 05:51:09.970820'),
(31, 'sessions', '0001_initial', '2022-08-30 05:51:10.048926'),
(32, 'loona', '0014_python', '2022-08-30 08:53:54.508521');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `loona_adds`
--

CREATE TABLE `loona_adds` (
  `id` bigint(20) NOT NULL,
  `Stater` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `loona_adds`
--

INSERT INTO `loona_adds` (`id`, `Stater`) VALUES
(1, 'Punjab'),
(2, 'Haryana'),
(3, 'Sirsa');

-- --------------------------------------------------------

--
-- Table structure for table `loona_adds_property`
--

CREATE TABLE `loona_adds_property` (
  `id` bigint(20) NOT NULL,
  `Stater` longtext NOT NULL,
  `District` longtext NOT NULL,
  `Local_Address` longtext NOT NULL,
  `Description` longtext NOT NULL,
  `Rent` longtext NOT NULL,
  `Mobile` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `loona_adds_property`
--

INSERT INTO `loona_adds_property` (`id`, `Stater`, `District`, `Local_Address`, `Description`, `Rent`, `Mobile`) VALUES
(1, 'Select State', 'Fazilka', 'Guru Nnanak Colony', 'house on rent', '10000', '7071781046'),
(2, 'Punjab', 'Fazilka', 'Radha Swami colony', 'rent', '1999', '7071781046'),
(3, 'Haryana', 'Haryana', 'radha', 'rent', '2999', '7071781046'),
(4, 'Haryana', 'Fazilka', 'radha', 'rent', '1999', '7071781046'),
(5, 'Punjab', 'Fazilka', 'adarsh nagar', 'rent', '1999', '7071781046'),
(6, 'Haryana', 'Fazilka', 'adarsh nagar', 'rent', '1999', '7071781046'),
(7, 'Haryana', 'Fazilka', 'adarsh nagar', 'rent', '1999', '7071781046'),
(8, 'Haryana', 'Fazilka', 'adarsh nagar', 'rent', '1999', '7071781046'),
(9, 'Select Stater', 'Fazilka', 'adarsh nagar', 'rent', '1999', '7071781046'),
(10, 'Punjab', 'Fazilka', 'adarsh nagar', 'rent', '1999', '7071781046');

-- --------------------------------------------------------

--
-- Table structure for table `loona_newuser`
--

CREATE TABLE `loona_newuser` (
  `id` bigint(20) NOT NULL,
  `Name` longtext NOT NULL,
  `Email` varchar(254) NOT NULL,
  `Password` longtext NOT NULL,
  `Confirm_Password` longtext NOT NULL,
  `Select_Member` longtext NOT NULL,
  `Mobile` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `loona_newuser`
--

INSERT INTO `loona_newuser` (`id`, `Name`, `Email`, `Password`, `Confirm_Password`, `Select_Member`, `Mobile`) VALUES
(1, 'Piyush', 'piyushloona@gmail.com', 'Piyush', 'Piyush', 'Select Member', '7071781046'),
(2, 'pawan', 'pawanloona10@gmail.com', 'pawan', 'pawan', 'BCA', '7071781046'),
(3, 'Ram', 'Ram@gmail.com', 'ramlal', 'ramlal', 'Select Member', '7071781046');

-- --------------------------------------------------------

--
-- Table structure for table `loona_python`
--

CREATE TABLE `loona_python` (
  `id` bigint(20) NOT NULL,
  `Name` longtext NOT NULL,
  `Class` longtext NOT NULL,
  `Course` longtext NOT NULL,
  `Punjabi` longtext NOT NULL,
  `Hindi` longtext NOT NULL,
  `English` longtext NOT NULL,
  `Math` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `loona_python`
--

INSERT INTO `loona_python` (`id`, `Name`, `Class`, `Course`, `Punjabi`, `Hindi`, `English`, `Math`) VALUES
(1, 'Piyush', 'BA', 'BCA', '56', '67', '66', '66'),
(2, 'gagan', 'BCA', 'BCA', '88', '88', '88', '88');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `loona_adds`
--
ALTER TABLE `loona_adds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loona_adds_property`
--
ALTER TABLE `loona_adds_property`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loona_newuser`
--
ALTER TABLE `loona_newuser`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loona_python`
--
ALTER TABLE `loona_python`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `loona_adds`
--
ALTER TABLE `loona_adds`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `loona_adds_property`
--
ALTER TABLE `loona_adds_property`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `loona_newuser`
--
ALTER TABLE `loona_newuser`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `loona_python`
--
ALTER TABLE `loona_python`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
