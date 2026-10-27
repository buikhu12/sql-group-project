
-- ============================================================
-- QUAN LY BENH VIEN - SQL SERVER
-- ANH XA MO HINH ER SANG MO HINH QUAN HE
-- ============================================================

CREATE DATABASE QuanLyBenhVien;
GO

USE QuanLyBenhVien;
GO

-- ============================================================
-- 1. BENH VIEN
-- ============================================================

CREATE TABLE BenhVien (
    MaBV VARCHAR(20) PRIMARY KEY,
    TenBV NVARCHAR(100) NOT NULL,
    DiaChi NVARCHAR(255)
);
GO

-- ============================================================
-- 2. KHOA
-- BenhVien (1) ---- (N) Khoa
-- ============================================================

CREATE TABLE Khoa (
    MaKhoa VARCHAR(20) PRIMARY KEY,
    TenKhoa NVARCHAR(100),
    MaBV VARCHAR(20) NOT NULL,

    FOREIGN KEY (MaBV) REFERENCES BenhVien(MaBV)
);
GO

-- ============================================================
-- 3. PHONG KHAM
-- Khoa (1) ---- (N) PhongKham
-- ============================================================

CREATE TABLE PhongKham (
    MaPK VARCHAR(20) PRIMARY KEY,
    TenPK NVARCHAR(100),
    MaKhoa VARCHAR(20) NOT NULL,

    FOREIGN KEY (MaKhoa) REFERENCES Khoa(MaKhoa)
);
GO

-- ============================================================
-- 4. GIUONG BENH
-- Khoa (1) ---- (N) GiuongBenh
-- ============================================================

CREATE TABLE GiuongBenh (
    MaGiuong VARCHAR(20) PRIMARY KEY,
    TrangThai NVARCHAR(50),
    MaKhoa VARCHAR(20) NOT NULL,

    FOREIGN KEY (MaKhoa) REFERENCES Khoa(MaKhoa)
);
GO

-- ============================================================
-- 5. NHAN VIEN Y TE
-- Khoa (1) ---- (N) NhanVienYTe
-- ============================================================

CREATE TABLE NhanVienYTe (
    MaNV VARCHAR(20) PRIMARY KEY,
    HoTen NVARCHAR(100),
    NgaySinh DATE,
    SDT VARCHAR(15),
    MaKhoa VARCHAR(20) NOT NULL,

    FOREIGN KEY (MaKhoa) REFERENCES Khoa(MaKhoa)
);
GO

-- ============================================================
-- 6. CHUYEN BIET HOA NHAN VIEN Y TE
-- d: cac tap con BAC SI va Y TA roi nhau
-- ============================================================

CREATE TABLE BacSi (
    MaNV VARCHAR(20) PRIMARY KEY,
    BangCap NVARCHAR(100),
    ChuyenKhoa NVARCHAR(100),

    FOREIGN KEY (MaNV) REFERENCES NhanVienYTe(MaNV)
);
GO

CREATE TABLE YTa (
    MaNV VARCHAR(20) PRIMARY KEY,
    TrinhDo NVARCHAR(100),
    KinhNghiem NVARCHAR(100),

    FOREIGN KEY (MaNV) REFERENCES NhanVienYTe(MaNV)
);
GO

-- ============================================================
-- 7. LICH LAM VIEC
-- BacSi (1) ---- (N) LichLamViec
-- PhongKham (1) ---- (N) LichLamViec
-- ============================================================

CREATE TABLE LichLamViec (
    MaLich VARCHAR(20) PRIMARY KEY,
    NgayTruc DATE,
    CaTruc NVARCHAR(50),
    MaNV VARCHAR(20) NOT NULL,
    MaPK VARCHAR(20) NOT NULL,

    FOREIGN KEY (MaNV) REFERENCES BacSi(MaNV),
    FOREIGN KEY (MaPK) REFERENCES PhongKham(MaPK)
);
GO

-- ============================================================
-- 8. BENH NHAN
-- ============================================================

CREATE TABLE BenhNhan (
    MaBN VARCHAR(20) PRIMARY KEY,
    HoTen NVARCHAR(100),
    NgaySinh DATE,
    GioiTinh NVARCHAR(10),
    DiaChi NVARCHAR(255)
);
GO

-- ============================================================
-- 9. LAN HEN KHAM
-- BenhNhan (1) ---- (N) LanHenKham
-- ============================================================

CREATE TABLE LanHenKham (
    MaLanHen VARCHAR(20) PRIMARY KEY,
    NgayKham DATETIME,
    MaBN VARCHAR(20) NOT NULL,

    FOREIGN KEY (MaBN) REFERENCES BenhNhan(MaBN)
);
GO

-- ============================================================
-- 10. CHI TIET HEN
-- Bang lien ket LichLamViec va LanHenKham
-- ============================================================

CREATE TABLE ChiTietHen (
    MaLich VARCHAR(20) NOT NULL,
    MaLanHen VARCHAR(20) NOT NULL,

    PRIMARY KEY (MaLich, MaLanHen),

    FOREIGN KEY (MaLich) REFERENCES LichLamViec(MaLich),
    FOREIGN KEY (MaLanHen) REFERENCES LanHenKham(MaLanHen)
);
GO

-- ============================================================
-- 11. PHIEU CHAM SOC
-- YTa (1) ---- (N) PhieuChamSoc
-- BenhNhan (1) ---- (N) PhieuChamSoc
-- ============================================================

CREATE TABLE PhieuChamSoc (
    MaYT VARCHAR(20) NOT NULL,
    MaBN VARCHAR(20) NOT NULL,

    PRIMARY KEY (MaYT, MaBN),

    FOREIGN KEY (MaYT) REFERENCES YTa(MaNV),
    FOREIGN KEY (MaBN) REFERENCES BenhNhan(MaBN)
);
GO

-- ============================================================
-- 12. DON THUOC
-- BenhNhan (1) ---- (1) DonThuoc
-- ============================================================

CREATE TABLE DonThuoc (
    MaDon VARCHAR(20) PRIMARY KEY,
    NgayKe DATE,
    MaBN VARCHAR(20) NOT NULL UNIQUE,

    FOREIGN KEY (MaBN) REFERENCES BenhNhan(MaBN)
);
GO

-- ============================================================
-- 13. THUOC
-- ============================================================

CREATE TABLE Thuoc (
    MaThuoc VARCHAR(20) PRIMARY KEY,
    TenThuoc NVARCHAR(100)
);
GO

-- ============================================================
-- 14. CHI TIET DON THUOC
-- DonThuoc (1) ---- (N) ChiTietDonThuoc
-- Thuoc (1) ---- (N) ChiTietDonThuoc
-- Thuoc co thuoc tinh CachDung trong quan he
-- ============================================================

CREATE TABLE ChiTietDonThuoc (
    MaDon VARCHAR(20) NOT NULL,
    MaThuoc VARCHAR(20) NOT NULL,
    CachDung NVARCHAR(255),

    PRIMARY KEY (MaDon, MaThuoc),

    FOREIGN KEY (MaDon) REFERENCES DonThuoc(MaDon),
    FOREIGN KEY (MaThuoc) REFERENCES Thuoc(MaThuoc)
);
GO

-- ============================================================
-- 15. XET NGHIEM
-- ============================================================

CREATE TABLE XetNghiem (
    MaXN VARCHAR(20) PRIMARY KEY,
    TenXN NVARCHAR(100)
);
GO

-- ============================================================
-- 16. QUAN HE THUC HIEN
-- LanHenKham va XetNghiem
-- Anh xa quan he N-N
-- ============================================================

CREATE TABLE LanHenXetNghiem (
    MaLanHen VARCHAR(20) NOT NULL,
    MaXN VARCHAR(20) NOT NULL,

    PRIMARY KEY (MaLanHen, MaXN),

    FOREIGN KEY (MaLanHen) REFERENCES LanHenKham(MaLanHen),
    FOREIGN KEY (MaXN) REFERENCES XetNghiem(MaXN)
);
GO

-- ============================================================
-- 17. QUAN HE TAM NGUYEN THUC HIEN XET NGHIEM
-- BacSi - LanHenKham - XetNghiem
-- ============================================================

CREATE TABLE ThucHienXetNghiem (
    MaNV VARCHAR(20) NOT NULL,
    MaLanHen VARCHAR(20) NOT NULL,
    MaXN VARCHAR(20) NOT NULL,

    PRIMARY KEY (MaNV, MaLanHen, MaXN),

    FOREIGN KEY (MaNV) REFERENCES BacSi(MaNV),
    FOREIGN KEY (MaLanHen) REFERENCES LanHenKham(MaLanHen),
    FOREIGN KEY (MaXN) REFERENCES XetNghiem(MaXN)
);
GO

-- ============================================================
-- KET THUC TAO CAC BANG
-- ============================================================
