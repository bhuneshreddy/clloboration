-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 16, 2024 at 07:30 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `collabration`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(25, 'Can add client', 7, 'add_client'),
(26, 'Can change client', 7, 'change_client'),
(27, 'Can delete client', 7, 'delete_client'),
(28, 'Can view client', 7, 'view_client'),
(29, 'Can add user note', 8, 'add_usernote'),
(30, 'Can change user note', 8, 'change_usernote'),
(31, 'Can delete user note', 8, 'delete_usernote'),
(32, 'Can view user note', 8, 'view_usernote'),
(33, 'Can add daily activity', 9, 'add_dailyactivity'),
(34, 'Can change daily activity', 9, 'change_dailyactivity'),
(35, 'Can delete daily activity', 9, 'delete_dailyactivity'),
(36, 'Can view daily activity', 9, 'view_dailyactivity'),
(37, 'Can add group team', 10, 'add_groupteam'),
(38, 'Can change group team', 10, 'change_groupteam'),
(39, 'Can delete group team', 10, 'delete_groupteam'),
(40, 'Can view group team', 10, 'view_groupteam'),
(41, 'Can add group task', 11, 'add_grouptask'),
(42, 'Can change group task', 11, 'change_grouptask'),
(43, 'Can delete group task', 11, 'delete_grouptask'),
(44, 'Can view group task', 11, 'view_grouptask');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cadmin_client`
--

CREATE TABLE `cadmin_client` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cadmin_client`
--

INSERT INTO `cadmin_client` (`id`, `name`, `company_name`, `email`, `password`) VALUES
(1, 'dhathcumah', '', 'dhatchu1810@gmail.com', 'dhatchu123'),
(2, 'meena', '', 'meena123@gmail.com', 'meena123');

-- --------------------------------------------------------

--
-- Table structure for table `cadmin_dailyactivity`
--

CREATE TABLE `cadmin_dailyactivity` (
  `id` bigint(20) NOT NULL,
  `userid` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `date_added` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cadmin_dailyactivity`
--

INSERT INTO `cadmin_dailyactivity` (`id`, `userid`, `title`, `date_added`) VALUES
(1, '1', 'home page design should be done', '2024-05-09'),
(2, '1', 'going to meet my love', '2024-05-10');

-- --------------------------------------------------------

--
-- Table structure for table `cadmin_grouptask`
--

CREATE TABLE `cadmin_grouptask` (
  `id` bigint(20) NOT NULL,
  `cId` varchar(255) NOT NULL,
  `groupname` varchar(255) NOT NULL,
  `taskdetails` varchar(255) NOT NULL,
  `taskstatus` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cadmin_grouptask`
--

INSERT INTO `cadmin_grouptask` (`id`, `cId`, `groupname`, `taskdetails`, `taskstatus`) VALUES
(1, '1', 'love', 'hooo', 'Verified');

-- --------------------------------------------------------

--
-- Table structure for table `cadmin_groupteam`
--

CREATE TABLE `cadmin_groupteam` (
  `id` bigint(20) NOT NULL,
  `collabId` varchar(255) NOT NULL,
  `groupname` varchar(255) NOT NULL,
  `TeamMembers` varchar(255) NOT NULL,
  `date_added` date NOT NULL,
  `createdby` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cadmin_groupteam`
--

INSERT INTO `cadmin_groupteam` (`id`, `collabId`, `groupname`, `TeamMembers`, `date_added`, `createdby`) VALUES
(1, '123', 'love', '\"dhathcumah\"', '2024-05-09', 'dhathcumah');

-- --------------------------------------------------------

--
-- Table structure for table `cadmin_usernote`
--

CREATE TABLE `cadmin_usernote` (
  `id` bigint(20) NOT NULL,
  `username` varchar(255) NOT NULL,
  `userid` varchar(255) NOT NULL,
  `note` varchar(255) NOT NULL,
  `date_add` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cadmin_usernote`
--

INSERT INTO `cadmin_usernote` (`id`, `username`, `userid`, `note`, `date_add`) VALUES
(1, 'dhathcumah', '1', 'hii hellooo', '2024-05-09');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(7, 'cadmin', 'client'),
(9, 'cadmin', 'dailyactivity'),
(11, 'cadmin', 'grouptask'),
(10, 'cadmin', 'groupteam'),
(8, 'cadmin', 'usernote'),
(5, 'contenttypes', 'contenttype'),
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-05-09 00:26:35.734534'),
(2, 'auth', '0001_initial', '2024-05-09 00:26:35.948226'),
(3, 'admin', '0001_initial', '2024-05-09 00:26:36.017325'),
(4, 'admin', '0002_logentry_remove_auto_add', '2024-05-09 00:26:36.023933'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2024-05-09 00:26:36.031039'),
(6, 'contenttypes', '0002_remove_content_type_name', '2024-05-09 00:26:36.080050'),
(7, 'auth', '0002_alter_permission_name_max_length', '2024-05-09 00:26:36.106046'),
(8, 'auth', '0003_alter_user_email_max_length', '2024-05-09 00:26:36.117149'),
(9, 'auth', '0004_alter_user_username_opts', '2024-05-09 00:26:36.122149'),
(10, 'auth', '0005_alter_user_last_login_null', '2024-05-09 00:26:36.146834'),
(11, 'auth', '0006_require_contenttypes_0002', '2024-05-09 00:26:36.148875'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2024-05-09 00:26:36.153870'),
(13, 'auth', '0008_alter_user_username_max_length', '2024-05-09 00:26:36.164898'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2024-05-09 00:26:36.177874'),
(15, 'auth', '0010_alter_group_name_max_length', '2024-05-09 00:26:36.193866'),
(16, 'auth', '0011_update_proxy_permissions', '2024-05-09 00:26:36.201873'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2024-05-09 00:26:36.212999'),
(18, 'cadmin', '0001_initial', '2024-05-09 00:26:36.224577'),
(19, 'cadmin', '0002_notes', '2024-05-09 00:26:36.235694'),
(20, 'cadmin', '0003_rename_name_notes_username', '2024-05-09 00:26:36.245689'),
(21, 'cadmin', '0004_rename_notes_usernote', '2024-05-09 00:26:36.262714'),
(22, 'cadmin', '0005_delete_usernote', '2024-05-09 00:26:36.270694'),
(23, 'cadmin', '0006_usernote', '2024-05-09 00:26:36.279686'),
(24, 'cadmin', '0007_dailyactivity', '2024-05-09 00:26:36.288696'),
(25, 'cadmin', '0008_groupteam', '2024-05-09 00:26:36.297694'),
(26, 'cadmin', '0009_groupteam_createdby', '2024-05-09 00:26:36.309815'),
(27, 'cadmin', '0010_alter_groupteam_date_added', '2024-05-09 00:26:36.334535'),
(28, 'cadmin', '0011_grouptask', '2024-05-09 00:26:36.344538'),
(29, 'sessions', '0001_initial', '2024-05-09 00:26:36.362537');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('9tg5aab1oz6d88x5vn3o0062tratjfrz', '.eJyrVkrNTczMUbJSyk1NzUs0NDJ2SAcJ6CXn5yrpKJUWpxbFZ6YoWRlB2XmJuakwxUq1AIRTFJA:1s4rjM:dEoNEVcCrwbVBAosTtD6eW_6Uuu2WDS7wdFNQIdH4mU', '2024-05-23 00:33:52.083201');

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
-- Indexes for table `cadmin_client`
--
ALTER TABLE `cadmin_client`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cadmin_dailyactivity`
--
ALTER TABLE `cadmin_dailyactivity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cadmin_grouptask`
--
ALTER TABLE `cadmin_grouptask`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cadmin_groupteam`
--
ALTER TABLE `cadmin_groupteam`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cadmin_usernote`
--
ALTER TABLE `cadmin_usernote`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

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
-- AUTO_INCREMENT for table `cadmin_client`
--
ALTER TABLE `cadmin_client`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cadmin_dailyactivity`
--
ALTER TABLE `cadmin_dailyactivity`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cadmin_grouptask`
--
ALTER TABLE `cadmin_grouptask`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cadmin_groupteam`
--
ALTER TABLE `cadmin_groupteam`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cadmin_usernote`
--
ALTER TABLE `cadmin_usernote`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

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
