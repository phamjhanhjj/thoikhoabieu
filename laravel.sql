-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th2 28, 2025 lúc 05:31 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `laravel`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `accounts`
--

CREATE TABLE `accounts` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('pdt','department','professor') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `accounts`
--

INSERT INTO `accounts` (`username`, `password`, `role`, `created_at`, `updated_at`) VALUES
('24000000', '$2y$12$y2VbVuftcY0ay9GvpgMHpevYjLbEid6AF7M6Lf1ImGfStfXLexX2G', 'professor', '2025-02-27 00:30:54', '2025-02-27 00:30:54'),
('24000001', '$2y$12$y78ZApAvH6haQznNLNkUO.2GFLmjTnjazVnqN5dO.4KN7bYcXPv5S', 'professor', '2025-02-27 20:03:46', '2025-02-27 20:03:46'),
('24000002', '$2y$12$oJni/6kEFxFr68Ok/x3cr.dq1XzkKqgBIFll817kCI37RpuPD8wny', 'professor', '2025-02-27 20:04:16', '2025-02-27 20:04:16'),
('24000003', '$2y$12$AfURK9s.BsO7DxnquUEnSOhjnhUGRP7IH1vz196Ykhe04uCTvwc3.', 'professor', '2025-02-27 21:07:16', '2025-02-27 21:07:16'),
('aaa', '$2y$10$8WtSe05293rIQydvKDhMLuD6uGMn.0GcpgfBbhsOB96bb/koEXWL6', 'pdt', NULL, NULL),
('cokhivacodientu', '$2y$12$kCgAAmQKhhFGLERUAS31f.JYwmGSexcJOAITLjicj0rT9wNgGmUiS', 'department', '2025-02-27 09:53:30', '2025-02-27 09:53:30'),
('congnghesoliennganh', '$2y$12$u3RcwdkBAg5EtyamCPAOl.t3RaqBCUns9vdoQ7LybzpzCPzFRc/SC', 'department', '2025-02-27 09:54:59', '2025-02-27 09:54:59'),
('congnghethongtin', '$2y$12$0zWJTIIjqB.e1lqi30m0K.DORMQdrZ0yO666H5NhUzj0oLZ1N2GVO', 'department', '2025-02-24 23:43:23', '2025-02-27 09:44:15'),
('diendientu', '$2y$12$zsuZYhv.gbAMjgHBWoafHePurr8DF3cOrI1nFTcA8nhTtj1RxmIfu', 'department', '2025-02-27 09:53:52', '2025-02-27 09:53:52'),
('dulich', '$2y$12$VCLyp4sUwMJfjyZAPTnTVuHmgdrCx3HE1vaBZlAQY4LdmTNjRcbfa', 'department', '2025-02-27 09:52:23', '2025-02-27 09:52:23'),
('duoc', '$2y$12$s/4bB2mfvNt0h8t3ZjOoGevQPsw6./TBGmLRdc7Jf.D48oj08paLy', 'department', '2025-02-27 09:55:44', '2025-02-27 09:55:44'),
('khoahockithuatvavatlieu', '$2y$12$XJHnfE0EcK32LmBepcQAXOnAeMt/57QinJZuCG3Iu//Fy6unHZdxK', 'department', '2025-02-27 09:52:46', '2025-02-27 09:52:46'),
('kinhtevakinhdoanh', '$2y$12$n5xTsdKj2RC4JLXVENBJU.lxGGAH2gkKlY6ITtpgkXSgzM7xBMJkm', 'department', '2025-02-27 09:52:04', '2025-02-27 09:52:04'),
('kithuatotovanangluong', '$2y$12$eZ/grZp3nSYN52KUa3XPve6yZwZkR5foktvCIzP5svJlF0BgLdNcC', 'department', '2025-02-27 09:54:32', '2025-02-27 09:54:32'),
('ngonngu', '$2y$12$yO7xhE6TEM3HFMxpB.757Oh2ZEuJGswD7.iYUN0W4tALl.Buv07tS', 'department', '2025-02-27 21:02:39', '2025-02-27 21:02:39'),
('ngonnguhanquoc', '$2y$12$6S6wvvfELDQUbjd7ncaE4OrbehtmP/04gRvJJTk4NUoxRyIGqkAGK', 'department', '2025-02-27 09:44:55', '2025-02-27 09:44:55'),
('pdt', '$2y$10$XqPRA6Go6eNehbFQ7Pj.5O.tDONmohzFcMY6ex9189HRRAw0cCg9e', 'pdt', '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `departments`
--

CREATE TABLE `departments` (
  `DepartmentID` varchar(255) NOT NULL,
  `DepartmentName` varchar(255) NOT NULL,
  `DepartmentAddress` varchar(255) NOT NULL,
  `LeaderDepartmentID` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `departments`
--

INSERT INTO `departments` (`DepartmentID`, `DepartmentName`, `DepartmentAddress`, `LeaderDepartmentID`, `created_at`, `updated_at`) VALUES
('cokhivacodientu', 'Cơ khí và cơ điện tử', 'Tầng 5 A9', NULL, '2025-02-27 09:53:29', '2025-02-27 09:53:29'),
('congnghesoliennganh', 'Công nghệ số liên ngành', 'Tầng 8 A9', NULL, '2025-02-27 09:54:59', '2025-02-27 09:54:59'),
('congnghethongtin', 'Công nghệ thông tin', 'Tầng 1 A9', NULL, '2025-02-27 09:50:40', '2025-02-27 09:50:40'),
('diendientu', 'Điện điện tử', 'Tầng 6 A9', NULL, '2025-02-27 09:53:51', '2025-02-27 09:53:51'),
('dulich', 'Du lịch', 'Tầng 3 A9', NULL, '2025-02-27 09:52:22', '2025-02-27 09:52:22'),
('duoc', 'Dược', 'Tầng 10 A9', NULL, '2025-02-27 09:55:44', '2025-02-27 09:55:44'),
('khoahockithuatvavatlieu', 'Khoa học kĩ thuật và vật liệu', 'Tầng 4 A9', NULL, '2025-02-27 09:52:46', '2025-02-27 09:52:46'),
('kinhtevakinhdoanh', 'Kinh tế và kinh doanh', 'Tầng 2 A9', NULL, '2025-02-27 09:52:03', '2025-02-27 09:52:03'),
('kithuatotovanangluong', 'Kĩ thuật ô tô và năng lượng', 'Tầng 7 A9', NULL, '2025-02-27 09:54:31', '2025-02-27 09:54:31'),
('ngonngu', 'ngonngu', 'Tang 19 A9', NULL, '2025-02-27 21:02:39', '2025-02-27 21:02:39');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `education_programs`
--

CREATE TABLE `education_programs` (
  `EducationProgramID` bigint(20) UNSIGNED NOT NULL,
  `EducationProgramName` varchar(255) NOT NULL,
  `MajorID` bigint(20) UNSIGNED NOT NULL,
  `SubjectList` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`SubjectList`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `education_programs`
--

INSERT INTO `education_programs` (`EducationProgramID`, `EducationProgramName`, `MajorID`, `SubjectList`, `created_at`, `updated_at`) VALUES
(1, 'An Toàn Bảo Mật', 2, '\"[\\\"2\\\"]\"', '2025-02-27 20:07:04', '2025-02-27 20:07:04'),
(2, 'An toàn bảo mật CLC', 3, '\"[\\\"3\\\",\\\"4\\\",\\\"5\\\"]\"', '2025-02-27 20:10:54', '2025-02-27 20:10:54'),
(3, 'Khoa học máy tính', 3, '\"[\\\"3\\\",\\\"4\\\",\\\"5\\\"]\"', '2025-02-27 21:03:54', '2025-02-27 21:03:54');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `majors`
--

CREATE TABLE `majors` (
  `MajorID` bigint(20) UNSIGNED NOT NULL,
  `MajorName` varchar(255) NOT NULL,
  `DepartmentID` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `majors`
--

INSERT INTO `majors` (`MajorID`, `MajorName`, `DepartmentID`, `created_at`, `updated_at`) VALUES
(2, 'Kỹ thuật phần mềm', 'congnghethongtin', '2025-02-27 20:05:57', '2025-02-27 20:05:57'),
(3, 'Khoa học máy tính', 'congnghethongtin', '2025-02-27 20:10:11', '2025-02-27 20:10:11');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2024_11_09_060925_create_accounts_table', 1),
(3, '2024_11_09_061034_create_professors_table', 1),
(4, '2024_11_09_061036_create_departments_table', 1),
(5, '2024_11_09_061200_create_majors_table', 1),
(6, '2024_11_09_061213_create_education_programs_table', 1),
(7, '2024_11_09_061228_create_subjects_table', 1),
(8, '2024_11_09_062257_add_foreign_keys', 1),
(9, '2024_11_09_081004_add_department_id_to_professors_table', 1),
(10, '2024_11_09_082727_create_rooms_table', 1),
(11, '2024_11_09_101336_create_schedules_table', 1),
(12, '2024_11_11_064147_create_subject_professor_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
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

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `professors`
--

CREATE TABLE `professors` (
  `ProfessorID` varchar(255) NOT NULL,
  `ProfessorName` varchar(255) NOT NULL,
  `ProfessorGmail` varchar(255) NOT NULL,
  `ProfessorPhone` varchar(255) NOT NULL,
  `DepartmentID` varchar(255) NOT NULL,
  `isLeaderDepartment` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `professors`
--

INSERT INTO `professors` (`ProfessorID`, `ProfessorName`, `ProfessorGmail`, `ProfessorPhone`, `DepartmentID`, `isLeaderDepartment`, `created_at`, `updated_at`) VALUES
('24000000', 'Phạm Ngọc Hưng', '24000000@gmail.com', '0123456789', 'congnghethongtin', 0, '2025-02-27 20:03:19', '2025-02-27 20:03:19'),
('24000001', 'Ngô Hồng Sơn', '24000001@gmail.com', '02345678912', 'congnghethongtin', 0, '2025-02-27 20:03:46', '2025-02-27 20:03:46'),
('24000002', 'Nguyễn Thị Lệ Thu', '24000002@gmail.com', '0126738292', 'congnghethongtin', 0, '2025-02-27 20:04:16', '2025-02-27 20:04:16'),
('24000003', '1234', '24000003@gmail.com', '01232333', 'congnghethongtin', 0, '2025-02-27 21:07:16', '2025-02-27 21:07:16');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rooms`
--

CREATE TABLE `rooms` (
  `RoomID` varchar(255) NOT NULL,
  `floor` int(11) NOT NULL,
  `building` varchar(255) NOT NULL,
  `scale` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `rooms`
--

INSERT INTO `rooms` (`RoomID`, `floor`, `building`, `scale`, `created_at`, `updated_at`) VALUES
('A1-101', 1, 'A1', 100, '2025-02-27 20:01:42', '2025-02-27 20:45:32'),
('A1-102', 1, 'A1', 100, '2025-02-27 20:01:50', '2025-02-27 20:01:50'),
('A1-201', 2, 'A1', 100, '2025-02-27 20:02:02', '2025-02-27 20:02:02'),
('A2-101', 1, 'A2', 40, '2025-02-27 20:02:10', '2025-02-27 20:02:10'),
('A2-103', 1, 'A2', 60, '2025-02-27 20:02:20', '2025-02-27 20:02:20'),
('A3-302', 3, 'A3', 120, '2025-02-27 20:02:31', '2025-02-27 20:02:31'),
('A6-103', 1, 'A6', 100, '2025-02-27 21:03:03', '2025-02-27 21:03:03');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `schedules`
--

CREATE TABLE `schedules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `RoomID` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `session_number` tinyint(3) UNSIGNED NOT NULL,
  `subject_id` bigint(20) UNSIGNED DEFAULT NULL,
  `professor_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `schedules`
--

INSERT INTO `schedules` (`id`, `RoomID`, `date`, `session_number`, `subject_id`, `professor_id`, `created_at`, `updated_at`) VALUES
(11, 'A1-101', '2025-03-03', 4, 5, '24000000', '2025-02-27 20:11:23', '2025-02-27 20:11:23'),
(12, 'A1-101', '2025-03-04', 1, 5, '24000001', '2025-02-27 20:11:23', '2025-02-27 20:11:23'),
(13, 'A3-302', '2025-03-03', 3, 4, '24000002', '2025-02-27 20:11:23', '2025-02-27 20:11:23'),
(14, 'A1-102', '2025-03-04', 4, 4, '24000000', '2025-02-27 20:11:23', '2025-02-27 20:11:23'),
(15, 'A1-102', '2025-03-05', 4, 4, '24000001', '2025-02-27 20:11:23', '2025-02-27 20:11:23'),
(16, 'A2-101', '2025-03-03', 3, 3, '24000000', '2025-02-27 20:11:23', '2025-02-27 20:11:23'),
(17, 'A2-103', '2025-03-04', 3, 3, '24000002', '2025-02-27 20:11:23', '2025-02-27 20:11:23'),
(18, 'A1-101', '2025-03-03', 3, 2, '24000001', '2025-02-27 20:11:23', '2025-02-27 20:11:23'),
(19, 'A1-102', '2025-03-04', 2, 2, '24000002', '2025-02-27 20:11:23', '2025-02-27 20:11:23'),
(20, 'A2-103', '2025-03-05', 1, 2, '24000000', '2025-02-27 20:11:23', '2025-02-27 20:11:23'),
(21, 'A1-201', '2025-03-10', 1, 5, '24000001', '2025-02-27 20:11:23', '2025-02-27 20:11:23'),
(22, 'A1-101', '2025-03-11', 2, 5, '24000002', '2025-02-27 20:11:23', '2025-02-27 20:11:23'),
(23, 'A1-201', '2025-03-10', 4, 4, '24000000', '2025-02-27 20:11:23', '2025-02-27 20:11:23'),
(24, 'A1-102', '2025-03-11', 4, 4, '24000001', '2025-02-27 20:11:23', '2025-02-27 20:11:23'),
(25, 'A3-302', '2025-03-12', 2, 4, '24000002', '2025-02-27 20:11:23', '2025-02-27 20:11:23'),
(26, 'A3-302', '2025-03-10', 4, 3, '24000001', '2025-02-27 20:11:23', '2025-02-27 20:11:23'),
(27, 'A1-201', '2025-03-11', 3, 3, '24000000', '2025-02-27 20:11:23', '2025-02-27 20:11:23'),
(28, 'A1-101', '2025-03-10', 3, 2, '24000002', '2025-02-27 20:11:23', '2025-02-27 20:11:23'),
(29, 'A1-201', '2025-03-11', 1, 2, '24000000', '2025-02-27 20:11:23', '2025-02-27 20:11:23'),
(30, 'A1-102', '2025-03-12', 1, 2, '24000001', '2025-02-27 20:11:23', '2025-02-27 20:11:23'),
(31, 'A1-101', '2025-03-17', 1, 5, '24000002', '2025-02-27 20:11:23', '2025-02-27 20:11:23'),
(32, 'A1-101', '2025-03-17', 2, 4, '24000000', '2025-02-27 20:11:23', '2025-02-27 20:11:23'),
(33, 'A2-101', '2025-03-18', 4, 4, '24000001', '2025-02-27 20:11:23', '2025-02-27 20:11:23'),
(34, 'A2-101', '2025-03-19', 4, 4, '24000002', '2025-02-27 20:11:23', '2025-02-27 20:11:23'),
(35, 'A2-101', '2025-03-17', 3, 3, '24000000', '2025-02-27 20:11:23', '2025-02-27 20:11:23'),
(36, 'A2-101', '2025-03-17', 1, 2, '24000001', '2025-02-27 20:11:23', '2025-02-27 20:11:23'),
(37, 'A1-201', '2025-03-24', 2, 4, '24000002', '2025-02-27 20:11:23', '2025-02-27 20:11:23');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `subjects`
--

CREATE TABLE `subjects` (
  `SubjectID` bigint(20) UNSIGNED NOT NULL,
  `SubjectName` varchar(255) NOT NULL,
  `DepartmentID` varchar(255) NOT NULL,
  `SubjectCredit` int(11) NOT NULL,
  `SubjectLessons` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `subjects`
--

INSERT INTO `subjects` (`SubjectID`, `SubjectName`, `DepartmentID`, `SubjectCredit`, `SubjectLessons`, `created_at`, `updated_at`) VALUES
(2, 'Đại số tuyến tính', 'congnghethongtin', 3, 20, '2025-02-27 20:06:22', '2025-02-27 20:06:22'),
(3, 'Giải tích', 'congnghethongtin', 2, 15, '2025-02-27 20:07:23', '2025-02-27 20:07:23'),
(4, 'Thị giác máy tính', 'congnghethongtin', 3, 30, '2025-02-27 20:07:42', '2025-02-27 20:07:42'),
(5, 'Hệ nhúng', 'congnghethongtin', 2, 15, '2025-02-27 20:07:56', '2025-02-27 20:07:56');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `subject_professor`
--

CREATE TABLE `subject_professor` (
  `SubjectID` bigint(20) UNSIGNED NOT NULL,
  `ProfessorID` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`username`);

--
-- Chỉ mục cho bảng `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`DepartmentID`),
  ADD KEY `departments_leaderdepartmentid_foreign` (`LeaderDepartmentID`);

--
-- Chỉ mục cho bảng `education_programs`
--
ALTER TABLE `education_programs`
  ADD PRIMARY KEY (`EducationProgramID`),
  ADD KEY `education_programs_majorid_foreign` (`MajorID`);

--
-- Chỉ mục cho bảng `majors`
--
ALTER TABLE `majors`
  ADD PRIMARY KEY (`MajorID`),
  ADD KEY `majors_departmentid_foreign` (`DepartmentID`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `professors`
--
ALTER TABLE `professors`
  ADD PRIMARY KEY (`ProfessorID`),
  ADD UNIQUE KEY `professors_professorgmail_unique` (`ProfessorGmail`),
  ADD UNIQUE KEY `professors_professorphone_unique` (`ProfessorPhone`),
  ADD KEY `professors_departmentid_foreign` (`DepartmentID`);

--
-- Chỉ mục cho bảng `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`RoomID`);

--
-- Chỉ mục cho bảng `schedules`
--
ALTER TABLE `schedules`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `schedules_roomid_date_session_number_unique` (`RoomID`,`date`,`session_number`),
  ADD KEY `schedules_subject_id_foreign` (`subject_id`),
  ADD KEY `schedules_professor_id_foreign` (`professor_id`);

--
-- Chỉ mục cho bảng `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`SubjectID`),
  ADD KEY `subjects_departmentid_foreign` (`DepartmentID`);

--
-- Chỉ mục cho bảng `subject_professor`
--
ALTER TABLE `subject_professor`
  ADD PRIMARY KEY (`SubjectID`,`ProfessorID`),
  ADD KEY `subject_professor_professorid_foreign` (`ProfessorID`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `education_programs`
--
ALTER TABLE `education_programs`
  MODIFY `EducationProgramID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `majors`
--
ALTER TABLE `majors`
  MODIFY `MajorID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `schedules`
--
ALTER TABLE `schedules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT cho bảng `subjects`
--
ALTER TABLE `subjects`
  MODIFY `SubjectID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `departments`
--
ALTER TABLE `departments`
  ADD CONSTRAINT `departments_leaderdepartmentid_foreign` FOREIGN KEY (`LeaderDepartmentID`) REFERENCES `professors` (`ProfessorID`) ON DELETE SET NULL;

--
-- Các ràng buộc cho bảng `education_programs`
--
ALTER TABLE `education_programs`
  ADD CONSTRAINT `education_programs_majorid_foreign` FOREIGN KEY (`MajorID`) REFERENCES `majors` (`MajorID`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `majors`
--
ALTER TABLE `majors`
  ADD CONSTRAINT `majors_departmentid_foreign` FOREIGN KEY (`DepartmentID`) REFERENCES `departments` (`DepartmentID`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `professors`
--
ALTER TABLE `professors`
  ADD CONSTRAINT `professors_departmentid_foreign` FOREIGN KEY (`DepartmentID`) REFERENCES `departments` (`DepartmentID`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `schedules`
--
ALTER TABLE `schedules`
  ADD CONSTRAINT `schedules_professor_id_foreign` FOREIGN KEY (`professor_id`) REFERENCES `professors` (`ProfessorID`) ON DELETE SET NULL,
  ADD CONSTRAINT `schedules_roomid_foreign` FOREIGN KEY (`RoomID`) REFERENCES `rooms` (`RoomID`) ON DELETE CASCADE,
  ADD CONSTRAINT `schedules_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`SubjectID`) ON DELETE SET NULL;

--
-- Các ràng buộc cho bảng `subjects`
--
ALTER TABLE `subjects`
  ADD CONSTRAINT `subjects_departmentid_foreign` FOREIGN KEY (`DepartmentID`) REFERENCES `departments` (`DepartmentID`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `subject_professor`
--
ALTER TABLE `subject_professor`
  ADD CONSTRAINT `subject_professor_professorid_foreign` FOREIGN KEY (`ProfessorID`) REFERENCES `professors` (`ProfessorID`) ON DELETE CASCADE,
  ADD CONSTRAINT `subject_professor_subjectid_foreign` FOREIGN KEY (`SubjectID`) REFERENCES `subjects` (`SubjectID`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
