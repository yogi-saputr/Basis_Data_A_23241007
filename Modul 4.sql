CREATE TABLE `Pengunjung` (
  `No_Pengunjung` int PRIMARY KEY,
  `FNama` varchar(255),
  `MNama` varchar(255),
  `LNama` varchar(255),
  `Alamat` varchar(255),
  `Umur` int,
  `No_Hp` varchar(255)
);

CREATE TABLE `Buku` (
  `ID_Buku` int PRIMARY KEY,
  `Nama` varchar(255),
  `Kategori` varchar(255),
  `Jenis_buku` varchar(255)
);

CREATE TABLE `Sewa` (
  `No_Pengunjung` int,
  `ID_Buku` int,
  `quantity` int,
  `selama` varchar(255),
  `biaya` float,
  `Id_admin` varchar(255)
);

CREATE TABLE `Admin` (
  `No_Admin` int,
  `Karyawan` varchar(255)
);

CREATE TABLE `Kembali` (
  `ID_BUku` int,
  `No_Pengunjung` int,
  `Denda` int
);

CREATE TABLE `Jenis_Buku` (
  `Nama_jenis` varchar(255)
);

CREATE TABLE `Kategori` (
  `Kategori_Buku` varchar(255)
);

CREATE TABLE `Karya_Terdahulu` (
  `Karya_Buku_Terdahulu` varchar(255)
);

CREATE TABLE `Penerbit` (
  `ID_Penerbit` int PRIMARY KEY,
  `FNama` varchar(255),
  `MNama` varchar(255),
  `LNama` varchar(255),
  `Tahun_Terbit` int,
  `Alamat` varchar(255),
  `Informasi_Kontak` varchar(255),
  `ID_Buku` int
);

CREATE TABLE `Penulis` (
  `ID_Penulis` int PRIMARY KEY,
  `FNama` varchar(255),
  `MNama` varchar(255),
  `LNama` varchar(255),
  `Biografi` text,
  `Karya_Terdahulu` text,
  `Kontak` varchar(255),
  `Riwayat_Pendidikan` text,
  `ID_Buku` int
);

ALTER TABLE `Sewa` ADD FOREIGN KEY (`No_Pengunjung`) REFERENCES `Pengunjung` (`No_Pengunjung`);

ALTER TABLE `Sewa` ADD FOREIGN KEY (`ID_Buku`) REFERENCES `Buku` (`ID_Buku`);

ALTER TABLE `Admin` ADD FOREIGN KEY (`No_Admin`) REFERENCES `Sewa` (`Id_admin`);

ALTER TABLE `Kembali` ADD FOREIGN KEY (`ID_BUku`) REFERENCES `Buku` (`ID_Buku`);

ALTER TABLE `Kembali` ADD FOREIGN KEY (`No_Pengunjung`) REFERENCES `Pengunjung` (`No_Pengunjung`);

ALTER TABLE `Jenis_Buku` ADD FOREIGN KEY (`Nama_jenis`) REFERENCES `Buku` (`Jenis_buku`);

ALTER TABLE `Kategori` ADD FOREIGN KEY (`Kategori_Buku`) REFERENCES `Buku` (`Kategori`);

ALTER TABLE `Karya_Terdahulu` ADD FOREIGN KEY (`Karya_Buku_Terdahulu`) REFERENCES `Penulis` (`Karya_Terdahulu`);

ALTER TABLE `Penerbit` ADD FOREIGN KEY (`ID_Buku`) REFERENCES `Buku` (`ID_Buku`);

ALTER TABLE `Penulis` ADD FOREIGN KEY (`ID_Buku`) REFERENCES `Buku` (`ID_Buku`);
