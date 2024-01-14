-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 09 Jan 2024 pada 14.59
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fproject_2`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `assignment`
--

CREATE TABLE `assignment` (
  `Assignment_ID` varchar(10) NOT NULL,
  `Course_ID` varchar(10) NOT NULL,
  `Score` int(3) NOT NULL,
  `Assignment_Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `assignment`
--

INSERT INTO `assignment` (`Assignment_ID`, `Course_ID`, `Score`, `Assignment_Name`) VALUES
('ASS1A', 'C1IDA', 90, 'Final Exam'),
('ASS1B', 'C1IDB', 95, 'Final Exam'),
('ASS1C', 'C1IDC', 85, 'Final Exam'),
('ASS1D', 'C1IDD', 90, 'Final Exam'),
('ASS1E', 'C1IDE', 80, 'Final Exam'),
('ASS1F', 'C1IDF', 90, 'Final Exam'),
('ASS2A', 'C2IDA', 85, 'Final Exam'),
('ASS2B', 'C2IDB', 90, 'Final Exam'),
('ASS2C', 'C2IDC', 90, 'Final Exam'),
('ASS2D', 'C2IDD', 85, 'Final Exam'),
('ASS2E', 'C2IDE', 90, 'Final Exam'),
('ASS2F', 'C2IDF', 95, 'Final Exam'),
('ASS3A', 'C3IDA', 80, 'Final Exam'),
('ASS3B', 'C3IDB', 75, 'Final Exam'),
('ASS3C', 'C3IDC', 100, 'Final Exam'),
('ASS3D', 'C3IDD', 90, 'Final Exam'),
('ASS3E', 'C3IDE', 80, 'Final Exam'),
('ASS3F', 'C3IDF', 100, 'Final Exam'),
('ASS4F', 'C4IDF', 80, 'Final Exam'),
('ASS5F', 'C5IDF', 85, 'Final Exam');

-- --------------------------------------------------------

--
-- Struktur dari tabel `course`
--

CREATE TABLE `course` (
  `Course_ID` varchar(10) NOT NULL,
  `NIM` int(10) NOT NULL,
  `Lecture_ID` varchar(10) NOT NULL,
  `Course_Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `course`
--

INSERT INTO `course` (`Course_ID`, `NIM`, `Lecture_ID`, `Course_Name`) VALUES
('C1IDA', 221111001, 'D2476', 'CS1'),
('C1IDB', 221111002, 'D4973', 'CS2'),
('C1IDC', 221111009, 'D6821', 'CS3'),
('C1IDD', 221111017, 'D6742', 'CS4'),
('C1IDE', 221111010, 'D7648', 'CS5'),
('C1IDF', 221111003, 'D6739', 'CS6'),
('C2IDA', 221111008, 'D2479', 'CS1'),
('C2IDB', 221111004, 'D1586', 'CS2'),
('C2IDC', 221111013, 'D8194', 'CS3'),
('C2IDD', 221111018, 'D3951', 'CS4'),
('C2IDE', 221111011, 'D8142', 'CS5'),
('C2IDF', 221111007, 'D1258', 'CS6'),
('C3IDA', 221111020, 'D6135', 'CS1'),
('C3IDB', 221111005, 'D3621', 'CS2'),
('C3IDC', 221111019, 'D8914', 'CS3'),
('C3IDD', 221111006, 'D5397', 'CS4'),
('C3IDE', 221111012, 'D3815', 'CS5'),
('C3IDF', 221111014, 'D9856', 'CS6'),
('C4IDF', 221111015, 'D4923', 'CS6'),
('C5IDF', 221111016, 'D4279', 'CS6');

-- --------------------------------------------------------

--
-- Struktur dari tabel `financial`
--

CREATE TABLE `financial` (
  `Virtual_Account` int(10) NOT NULL,
  `NIM` int(10) NOT NULL,
  `Payment` int(50) NOT NULL,
  `Charge` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `financial`
--

INSERT INTO `financial` (`Virtual_Account`, `NIM`, `Payment`, `Charge`) VALUES
(136253864, 221111018, 2000000, 6500),
(213412543, 221111016, 2000000, 4500),
(234902784, 221111003, 2000000, 6500),
(261923462, 221111006, 2000000, 4500),
(278154678, 221111012, 2000000, 4500),
(278256713, 221111008, 1000000, 0),
(349253014, 221111010, 2000000, 0),
(431942051, 221111020, 2000000, 0),
(453786950, 221111017, 2000000, 0),
(537809243, 221111015, 2000000, 6500),
(543678645, 221111001, 2000000, 0),
(572013732, 221111007, 1000000, 6500),
(673024783, 221111013, 2000000, 4500),
(689053642, 221111019, 2000000, 0),
(728391232, 221111014, 2000000, 0),
(736291034, 221111005, 2000000, 1000),
(765299783, 221111002, 2000000, 6500),
(837289013, 221111004, 1000000, 0),
(881920382, 221111009, 2000000, 6500),
(940236723, 221111011, 2000000, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `lecture`
--

CREATE TABLE `lecture` (
  `Username` varchar(40) NOT NULL,
  `Lecture_ID` varchar(10) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `lecture`
--

INSERT INTO `lecture` (`Username`, `Lecture_ID`, `Name`, `Email`) VALUES
('Owen@mschool.ac.id', 'D1258', 'Owen Santoso', 'Owen@gmail.com'),
('Elijah@mschool.ac.id', 'D1586', 'Elijah Supanor', 'Elijah@gmail.com'),
('Aria@mschool.ac.id', 'D2476', 'Aria Malam', 'Aria@gmail.com'),
('Aurora@mschool.ac.id', 'D2479', 'Aurora Heyce', 'Aurora@gmail.com'),
('Ellie@mschool.ac.id', 'D3621', 'Ellie Watson', 'Ellie@gmail.com'),
('Miles@mschool.ac.id', 'D3815', 'Miles Stone', 'Miles@gmail.com'),
('Ivy@mschool.ac.id', 'D3951', 'Ivy Naive', 'Ivy@gmail.com'),
('Sebastian@mschool.ac.id', 'D4279', 'Sebastian Sigh', 'Sebastian@gmail.com'),
('Samuel@mschool.ac.id', 'D4923', 'Samuel Lord', 'Samuel@gmail.com'),
('Caleb@mschool.ac.id', 'D4973', 'Caleb Jacerson', 'Caleb@gmail.com'),
('Jack@mschool.ac.id', 'D5397', 'Jack Sparrow', 'Jack@gmail.com'),
('Wyatt@mschool.ac.id', 'D5964', 'Wyatt Blect', 'Wyatt@gmail.com'),
('Benjamin@mschool.ac.id', 'D6135', 'Benjamin Notten', 'Benjamin@gmail.com'),
('Nora@mschool.ac.id', 'D6739', 'Nora Elle', 'Nora@gmail.com'),
('Hazel@mschool.ac.id', 'D6742', 'Hazel Konier', 'Hazel@gmail.com'),
('Evan@mschool.ac.id', 'D6821', 'Evan Lethur', 'Evan@gmail.com'),
('Stella@mschool.ac.id', 'D7365', 'Stella Maries', 'Stella@gmail.com'),
('Leo@mschool.ac.id', 'D7648', 'Leo Davinci', 'Leo@gmail.com'),
('Lily@mschool.ac.id', 'D8142', 'Lily Holice', 'Lily@gmail.com'),
('Grace@mschool.ac.id', 'D8194', 'Grace Violeta', 'Grace@gmail.com'),
('Grayson@mschool.ac.id', 'D8914', 'Grayson Doe', 'Grayson@gmail.com'),
('Zoe@mschool.ac.id', 'D9183', 'Zoe Debby', 'Zoe@gmail.com'),
('Penelope@mschool.ac.id', 'D9856', 'Wong Penelope', 'Penelope@gmail.com');

-- --------------------------------------------------------

--
-- Struktur dari tabel `matkul`
--

CREATE TABLE `matkul` (
  `kode_mk` varchar(12) NOT NULL,
  `nama_mk` varchar(40) NOT NULL,
  `sks` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `matkul`
--

INSERT INTO `matkul` (`kode_mk`, `nama_mk`, `sks`) VALUES
('CS1', 'Artificial Intelligence', 4),
('CS2', 'Computational Physics', 4),
('CS3', 'Computer Networks', 3),
('CS4', 'Character Building: Agama', 2),
('CS5', 'Database Technology', 4),
('CS6', 'English', 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `student`
--

CREATE TABLE `student` (
  `Username` varchar(40) NOT NULL,
  `NIM` int(10) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Age` int(3) NOT NULL,
  `Email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `student`
--

INSERT INTO `student` (`Username`, `NIM`, `Name`, `Age`, `Email`) VALUES
('Abigail@mschool.ac.id', 221111001, 'Abigail Wicaksono', 19, 'Abby@gmail.com'),
('Ava@mschool.ac.id', 221111002, 'Ava Joyce', 19, 'AvaJoyce@gmail.com'),
('Mia@mschool.ac.id', 221111003, 'Mia Natalia', 19, 'MiaNat@gmail.com'),
('Ella@mschool.ac.id', 221111004, 'Ella Tae', 19, 'Ella@gmail.com'),
('Emma@mschool.ac.id', 221111005, 'Emma Watson', 19, 'Emma@gmail.com'),
('Liam@mschool.ac.id', 221111006, 'Liam Bosta', 19, 'Liam@gmail.com'),
('Noah@mschool.ac.id', 221111007, 'Noah Callister', 20, 'Noah@gmail.com'),
('Aiden@mschool.ac.id', 221111008, 'Aiden Belawa', 19, 'Aiden@gmail.com'),
('Ethan@mschool.ac.id', 221111009, 'Ethan Arnold', 19, 'Ethan@gmail.com'),
('Logan@mschool.ac.id', 221111010, 'Logan Paul', 19, 'Logan@gmail.com'),
('Lucas@mschool.ac.id', 221111011, 'Lucas Banana', 19, 'Lucas@gmail.com'),
('Mason@mschool.ac.id', 221111012, 'Mason Bear', 19, 'Mason@gmail.com'),
('Harper@mschool.ac.id', 221111013, 'Harper Boyle', 19, 'Harper@gmail.com'),
('Oliver@mschool.ac.id', 221111014, 'Oliver Buast', 19, 'Oliver@gmail.com'),
('Olivia@mschool.ac.id', 221111015, 'Olivia Debora', 19, 'Olivia@gmail.com'),
('Sophia@mschool.ac.id', 221111016, 'Sophia Mest', 19, 'Sophia@gmail.com'),
('Jackson@mschool.ac.id', 221111017, 'Jackson Sweet', 19, 'Jackson@gmail.com'),
('JohnDoe@mschool.ac.id', 221111018, 'John Doe', 19, 'John@gmail.com'),
('Isabella@mschool.ac.id', 221111019, 'Isabella Ruise', 19, 'Isabelle@gmail.com'),
('AlvinRicardo@mschool.ac.id', 221111020, 'Alvin Ricardo', 19, 'alvin@gmail.com');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `Username` varchar(40) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Level` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`Username`, `Password`, `Level`) VALUES
('Abigail@mschool.ac.id', '$2y$10$kDULKre37ixBfR4/zLHsPO9XWbY9.X32b2f1tEl25WNZGFWOpUcZW', 'mhs'),
('admin', '$2y$10$CLOI7rjHM78Eaf6dXie6a.qPRW2kMKNdBswe4PlDZ5V0NOD5Bqlhe', 'adm'),
('Aiden@mschool.ac.id', '$2y$10$RTZGm4Yv50YKfefHRAmB0efUZuWyGtDV56WP1ES1ddClo47hqQwsu', 'mhs'),
('AlvinRicardo@mschool.ac.id', '$2y$10$mhZMmykKRgu8om0GFkurDeAmylKSFi8c3GC/70zdQN18YavKTnmGG', 'mhs'),
('Aria@mschool.ac.id', '$2y$10$A07PVRLFFXhTsXS0nvn8o.YPndnbXwV99YKq0L/WqEH6Co2L0KlM6', 'dos'),
('Aurora@mschool.ac.id', '$2y$10$cRejONQ2fTwOQWUlCQBF0eWMLpw4G9BfC/ZI92NoNqoQ0p8zrCcNS', 'dos'),
('Ava@mschool.ac.id', '$2y$10$wzWjz0BTSwMy.yxeJ.66J.49YEcnquI8yLOCmpA9IGXk.wbnh4vLS', 'mhs'),
('Benjamin@mschool.ac.id', '$2y$10$QFwt3hiqfZOR5t09.oIPZ.dlegwdkfSigB7MvFZsTmHVkLisXhAxW', 'dos'),
('Caleb@mschool.ac.id', '$2y$10$EBxn13NV2qTtOaT7qsoi/OiIl5doYWp3UOTSd/g0VnmSXIkIhVGMG', 'dos'),
('Elijah@mschool.ac.id', '$2y$10$wX9ggW7WN/lBijje9pwSTOEgRszJEJPQOh5WUd2mDDcV8ZZJu/J9e', 'dos'),
('Ella@mschool.ac.id', '$2y$10$/ZzUepdON1QehNXgZf.xDuKpQwv2zFompwOb7o0wKOo9bMu6sWM0y', 'mhs'),
('Ellie@mschool.ac.id', '$2y$10$2LGouloXu/mt8.cFixjAvumVJxT30StAp6bT3CaEoW39mD7We366.', 'dos'),
('Emma@mschool.ac.id', '$2y$10$D19W3RVmMIUFWVdnBDLxU.oeWF3pVzZOVUEgIB/PIhD2wrqUAeRD2', 'mhs'),
('Ethan@mschool.ac.id', '$2y$10$zEV5CVMD9gFxapsTY3ZF2u7EBpjlbtNjYFRgP9XnBq2luckF35U/W', 'mhs'),
('Evan@mschool.ac.id', '$2y$10$TLXsEPHKiXdjcxEAcsmfa.a85zSY.VIPir8pi2jkSGNTCwht.GYR.', 'dos'),
('Grace@mschool.ac.id', '$2y$10$XJcMd5Wvc6E4x/81u7A/0u.O9xmZucdMMVELRUDiQ7ZV8ZLte2z1m', 'dos'),
('Grayson@mschool.ac.id', '$2y$10$qEbtaBx9E6ernLwTEceRsuh3j4x7FdoO196wKWkeQliUfDkIuiqHu', 'dos'),
('Harper@mschool.ac.id', '$2y$10$iGeuvA.gDQs2nGdtItPBhO1yG.sDr/HIXuX3qXfSkVZo4v54nv24G', 'mhs'),
('Hazel@mschool.ac.id', '$2y$10$i9iY4DV0sMTv3eKTvshAZ.fG.6qBvvrVFCaHyPsh0Vbx1msv4KP8e', 'dos'),
('Isabella@mschool.ac.id', '$2y$10$yHh77QgiLUmpKn.OkyVdk.mlr1SaNa6y61czHdmnJolmVWY8Qev1y', 'mhs'),
('Ivy@mschool.ac.id', '$2y$10$jHDz9AO43g7hMzmWj/htpeA5waDjASbEaeA5/KBHkKIdvOMcf8iOO', 'dos'),
('Jack@mschool.ac.id', '$2y$10$s5y8XzIAz8fWu8wgpn0NyuLKuupoAFnzdMlAb48UiYtOfKx7eM/KW', 'dos'),
('Jackson@mschool.ac.id', '$2y$10$cTLKofRy.i30bUrzvI3jXOA1..beDhAWWUaCOJBErD5nFEWwclOYC', 'mhs'),
('JohnDoe@mschool.ac.id', '$2y$10$X60Ne3dqadiKWn0lS2Bv5O.9zsJ.5ZE5rZlMEeExvF1dJmDYgXBW6', 'mhs'),
('Leo@mschool.ac.id', '$2y$10$KzJPX2NkUftipwDjcS59buHz7jVFAXAGw23tr.bdQzhc5jxXzrjlK', 'dos'),
('Liam@mschool.ac.id', '$2y$10$IxeLFlngyh6h9mm5MNfg9Oi4m7EUojr8QcKfA8KZuZD70tpMA2K3m', 'mhs'),
('Lily@mschool.ac.id', '$2y$10$zeiTINSSTwvjjhVoC6n2o.wKf.h9UhVfS7Dx/iGS5kI2BEkJPzpy.', 'dos'),
('Logan@mschool.ac.id', '$2y$10$TiCb0Qyko4ZXIVTNiXCxGOZS8.pRinJZoWMbLZHvGOHT0Pnk7VZOe', 'mhs'),
('Lucas@mschool.ac.id', '$2y$10$WaBW9H0qBKyxam8Btb12FumdBfD6AqDmPjruYcXR3u0uzToFWtQwW', 'mhs'),
('Mason@mschool.ac.id', '$2y$10$dT/PQzi6qpKxJqKO0QocuOhsKxsn3zZHhGreHbrzI34Vxi144zM/i', 'mhs'),
('Mia@mschool.ac.id', '$2y$10$z.VhjtiUnUNzhgh6oiS3YegLF6XiirzpV1FkqdHV5C4gKTqRorixe', 'mhs'),
('Miles@mschool.ac.id', '$2y$10$drZWT7G606Hw5tIdpMETL.bzP9yMx5d1sY6BOFWoepBjMzU26brD6', 'dos'),
('Noah@mschool.ac.id', '$2y$10$revWeQQGS4W/XQOPiglPMee2naeqzbtLv8te36.CIq27rhIihGWnq', 'mhs'),
('Nora@mschool.ac.id', '$2y$10$bQ4Ivdem8Re1sV.RFoPQQu8F.MvJafKN2zM3myUtf5kLRpYRO1iES', 'dos'),
('Oliver@mschool.ac.id', '$2y$10$gXsT4mXcCuTGHmZU7Awf6.9y9AHFIHMK/T82.AbQM.IJSYtgqIWu6', 'mhs'),
('Olivia@mschool.ac.id', '$2y$10$YwjgFC2rXqWGKRNlLWQ0Zea9nl8vwFjcVB3ruy7nCWFv8m5SsTlLW', 'mhs'),
('Owen@mschool.ac.id', '$2y$10$F9lX4j7MmfYkkMhitb6xheBV4PZo9kf3GTm5LPWVxm3HWF6.3BEUG', 'dos'),
('Penelope@mschool.ac.id', '$2y$10$JTo/OWQYXg/4mPuEOAcrwuERUb0PlDzlzNhTUquwGP6t3KdgYvh5C', 'dos'),
('Samuel@mschool.ac.id', '$2y$10$ygOM.GKPU1fMA8Nh53D3wecya0jygG2dnGK.Z5CjnnrpTP0Zad/O6', 'dos'),
('Scarlett@mschool.ac.id', '$2y$10$J4bcyYEWQZBTlFduFjGz6ODi2y26/HCB9pFx0hLrAkqvjyZYhJ8a6', 'mhs'),
('Sebastian@mschool.ac.id', '$2y$10$sUNZxsROLoaZSCeOnajE2uVA30JdpO8mVFSDZV3zyDE8LTY097nRG', 'dos'),
('Sophia@mschool.ac.id', '$2y$10$Xu0JH6.uf71SxPMApdBOvOtPKFpkFo/XGR4Nxm1e/IKw7vBXY7TAa', 'mhs'),
('Stella@mschool.ac.id', '$2y$10$narp5M8GoqIC731eRVWEi.g2.m7o8t6CRAm2NhZBX9PnZ1dFxiRvm', 'dos'),
('Wyatt@mschool.ac.id', '$2y$10$sp83OvynVWe7VugOB34qm.Hb5tdFl0s.wvnHpfKoDmG1r9ODker8y', 'dos'),
('Zoe@mschool.ac.id', '$2y$10$MpI8rla6HGMdqXus3/r6BuPKGOKcojgGUc/mTXynaJCR6lgnSfs.K', 'dos');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `assignment`
--
ALTER TABLE `assignment`
  ADD PRIMARY KEY (`Assignment_ID`),
  ADD KEY `Course_ID` (`Course_ID`);

--
-- Indeks untuk tabel `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`Course_ID`),
  ADD KEY `NIM` (`NIM`,`Lecture_ID`),
  ADD KEY `Course_Name` (`Course_Name`),
  ADD KEY `Lecture_ID` (`Lecture_ID`);

--
-- Indeks untuk tabel `financial`
--
ALTER TABLE `financial`
  ADD PRIMARY KEY (`Virtual_Account`),
  ADD KEY `NIM` (`NIM`);

--
-- Indeks untuk tabel `lecture`
--
ALTER TABLE `lecture`
  ADD PRIMARY KEY (`Lecture_ID`),
  ADD UNIQUE KEY `Username` (`Username`);

--
-- Indeks untuk tabel `matkul`
--
ALTER TABLE `matkul`
  ADD PRIMARY KEY (`kode_mk`);

--
-- Indeks untuk tabel `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`NIM`),
  ADD UNIQUE KEY `Username` (`Username`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`Username`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `course`
--
ALTER TABLE `course`
  ADD CONSTRAINT `course_ibfk_1` FOREIGN KEY (`Course_Name`) REFERENCES `matkul` (`kode_mk`),
  ADD CONSTRAINT `course_ibfk_2` FOREIGN KEY (`NIM`) REFERENCES `student` (`NIM`),
  ADD CONSTRAINT `course_ibfk_3` FOREIGN KEY (`Lecture_ID`) REFERENCES `lecture` (`Lecture_ID`);

--
-- Ketidakleluasaan untuk tabel `lecture`
--
ALTER TABLE `lecture`
  ADD CONSTRAINT `lecture_ibfk_1` FOREIGN KEY (`Username`) REFERENCES `users` (`Username`);

--
-- Ketidakleluasaan untuk tabel `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`Username`) REFERENCES `users` (`Username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
