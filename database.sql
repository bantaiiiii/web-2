-- Tabel Pengguna
CREATE TABLE Pengguna (
    NIK INT PRIMARY KEY,
    Nama VARCHAR(100),
    Email VARCHAR(100),
    HP VARCHAR(20)
);

-- Tabel Vaksin
CREATE TABLE Vaksin (
    Kode_vaksin INT PRIMARY KEY,
    Nama_vaksin VARCHAR(100),
    dosis INT
);

-- Tabel CatatanKesehatan
CREATE TABLE CatatanKesehatan (
    kodevaksin INT,
    NIK INT,
    tanggal DATE,
    dosis INT,
    id_faskes INT,
    PRIMARY KEY (kodevaksin, NIK),
    FOREIGN KEY (kodevaksin) REFERENCES Vaksin(Kode_vaksin),
    FOREIGN KEY (NIK) REFERENCES Pengguna(NIK)
);

-- Tabel Rumah Sakit
CREATE TABLE RumahSakit (
    id_faskes INT PRIMARY KEY,
    nama_faskes VARCHAR(100),
    alamat VARCHAR(200)
);
