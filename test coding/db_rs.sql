-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 16, 2023 at 03:26 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_rs`
--

-- --------------------------------------------------------

--
-- Table structure for table `pasien`
--

CREATE TABLE `pasien` (
  `no_rec` varchar(100) NOT NULL,
  `status_enable` varchar(100) NOT NULL,
  `jenis_kelamin` varchar(100) NOT NULL,
  `tanggal_register` datetime NOT NULL,
  `no_cm` int(11) NOT NULL,
  `no_cmfk` int(11) NOT NULL,
  `no_registrasi` int(50) DEFAULT NULL,
  `nama_ruangan` varchar(100) NOT NULL,
  `nama_pasien` varchar(100) NOT NULL,
  `kelompok_pasien` varchar(100) NOT NULL,
  `nama_rekanan` varchar(100) NOT NULL,
  `nama_dokter` varchar(100) NOT NULL,
  `tanggal_pulang` datetime NOT NULL,
  `status_pasien` varchar(100) DEFAULT NULL,
  `ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pasien`
--

INSERT INTO `pasien` (`no_rec`, `status_enable`, `jenis_kelamin`, `tanggal_register`, `no_cm`, `no_cmfk`, `no_registrasi`, `nama_ruangan`, `nama_pasien`, `kelompok_pasien`, `nama_rekanan`, `nama_dokter`, `tanggal_pulang`, `status_pasien`, `ID`) VALUES
('53c41c30-3fa5-11ed-9706-cb3e77b0', 'True', 'Laki-Laki', '2022-09-29 10:16:42', 72853, 4964, 209000004, 'Poliklinik Kebidanan & Kandungan ', 'TESTING BAYI', 'Umum/Pribadi', 'Umum / Diri Sendiri', 'dr. MOHAMMAD WAHYU F. Sp. OG', '2022-09-29 10:16:42', 'Baru', 1),
('a516faf0-1980-11ed-85c9-5d3d2533', 'True', 'Perempuan', '2022-09-12 00:00:00', 72782, 4893, 208001735, 'IGD UMUM', 'CHAERUNNISA', 'BPJS', 'BPJS KETENAGAKERJAAN - NON POLRI', 'dr. DERYANT IMAGODEI NORON', '2022-09-12 00:00:00', 'BARU', 2),
('a565e9a0-3f97-11ed-b717-635bc9ec', 'True', 'Laki-Laki', '2022-09-29 08:39:29', 72779, 4890, 209000001, 'Poliklinik Penyakit Dalam', 'HARI MULYONO', 'Umum/Pribadi', 'Umum/Diri Sendiri', 'dr. PANJI GUGAH BHASKARA, Sp. PD', '2022-09-29 08:39:29', 'LAMA', 3),
('bb5c3c30-3f9c-11ed-920d-a3e252d9', 'True', 'Laki-Laki', '2022-09-29 09:15:49', 72852, 4963, 209000002, 'Poliklinik Penyakit Dalam', 'TEST', 'Umum/Pribadi', 'Umum / Diri Sendiri', 'dr. PANJI GUGAH BHASKARA, Sp. PD', '2022-09-29 09:15:49', 'Baru\r\n', 4),
('befb9dd0-3fa3-11ed-942b-79197053', 'True', 'Laki-Laki', '2022-09-29 10:05:55', 1822, 1824, 209000003, 'Poliklinik Penyakit Dalam', 'MOCHAMAD RAGA PERBAWA', 'Umum/Pribadi', 'Umum / Diri Sendiri', 'dr. PANJI GUGAH BHASKARA, Sp. PD', '2022-09-29 10:05:55', 'LAMA', 5);

-- --------------------------------------------------------

--
-- Table structure for table `ruangan`
--

CREATE TABLE `ruangan` (
  `norec_pa` varchar(100) NOT NULL,
  `objekasuransi_pasien` int(11) NOT NULL,
  `pg_id` int(11) NOT NULL,
  `objectasuransi_last` int(11) NOT NULL,
  `no_sep` varchar(100) NOT NULL,
  `norec_br` int(11) DEFAULT NULL,
  `nostruk_last` varchar(100) NOT NULL,
  `no_reservasi` int(11) DEFAULT NULL,
  `kelas_ditanggung` varchar(100) NOT NULL,
  `nama_kelas` varchar(100) NOT NULL,
  `tanggal_lahir` datetime DEFAULT NULL,
  `object_departemen` int(11) NOT NULL,
  `object_kelas` int(11) NOT NULL,
  `dept_id` int(11) NOT NULL,
  `ppk_rujukan` int(11) DEFAULT NULL,
  `istel_medicine` int(11) DEFAULT NULL,
  `jaminan_khusus` int(11) DEFAULT NULL,
  `no_identitas` int(50) NOT NULL,
  `status_schedule` int(11) NOT NULL,
  `is_diagnosis` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ruangan`
--

INSERT INTO `ruangan` (`norec_pa`, `objekasuransi_pasien`, `pg_id`, `objectasuransi_last`, `no_sep`, `norec_br`, `nostruk_last`, `no_reservasi`, `kelas_ditanggung`, `nama_kelas`, `tanggal_lahir`, `object_departemen`, `object_kelas`, `dept_id`, `ppk_rujukan`, `istel_medicine`, `jaminan_khusus`, `no_identitas`, `status_schedule`, `is_diagnosis`) VALUES
('', 0, 30002, 552, '', NULL, '', NULL, '', 'Non Kelas', '2022-09-01 00:00:00', 18, 6, 18, NULL, NULL, NULL, 0, 209000004, 'False'),
('', 0, 30007, 33, '', NULL, '', NULL, '', 'Non Kelas', '1994-12-16 00:00:00', 18, 6, 18, NULL, NULL, NULL, 0, 209000001, 'False'),
('-', 0, 30008, 0, '', NULL, 'de560240-5118-11ed-82be-0d2df1a9', NULL, '', 'Non Kelas', '1980-01-01 00:00:00', 18, 6, 18, NULL, NULL, NULL, 0, 209000003, 'Other Specified Counselling'),
('', 0, 30009, 33, '', NULL, '', NULL, '', 'Non Kelas', '2022-09-01 00:00:00', 18, 6, 18, NULL, NULL, NULL, 0, 209000002, 'False'),
('5578d8d0-3249-11ed-bab5-f989f98e', 253705, 30017, 569, '0119R0040922V000240', NULL, '66607a50-510d-11ed-bd42-e78e480c', NULL, 'Kelas II', 'Non Kelas', '1997-07-14 00:00:00', 24, 6, 24, NULL, NULL, NULL, 0, 0, 'Other Specified Counselling');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pasien`
--
ALTER TABLE `pasien`
  ADD PRIMARY KEY (`no_rec`);

--
-- Indexes for table `ruangan`
--
ALTER TABLE `ruangan`
  ADD PRIMARY KEY (`pg_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ruangan`
--
ALTER TABLE `ruangan`
  MODIFY `pg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30018;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
