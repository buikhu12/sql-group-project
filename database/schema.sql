
-- ============================================
-- BTL CO SO DU LIEU
-- HE THONG QUAN LY BENH VIEN
-- SCHEMA TONG HOP 10 BANG
-- ============================================

-- 00. KHOI TAO DATABASE

CREATE DATABASE IF NOT EXISTS QuanLyBenhVien
CHARACTER SET utf8mb4
COLLATE utf8mb4_unicode_ci;

USE QuanLyBenhVien;


-- ============================================
-- 01. BANG KHOA
-- ============================================

CREATE TABLE IF NOT EXISTS KHOA (
    MaKhoa VARCHAR(10) NOT NULL,
    TenKhoa VARCHAR(100) NOT NULL,
    ViTriTang VARCHAR(50),

    CONSTRAINT PK_KHOA
        PRIMARY KEY (MaKhoa)
);


-- ============================================
-- 02. BANG NHAN_SU
-- ============================================

CREATE TABLE IF NOT EXISTS NHAN_SU (
    MaNS VARCHAR(10) NOT NULL,
    HoTen VARCHAR(100) NOT NULL,
    SoDienThoai VARCHAR(15),
    LuongCoBan DECIMAL(12,2) NOT NULL,
    MaKhoa VARCHAR(10) NOT NULL,

    CONSTRAINT PK_NHAN_SU
        PRIMARY KEY (MaNS),

    CONSTRAINT FK_NHAN_SU_KHOA
        FOREIGN KEY (MaKhoa)
        REFERENCES KHOA(MaKhoa),

    CONSTRAINT CK_NHAN_SU_LUONG
        CHECK (LuongCoBan > 0)
);


-- ============================================
-- 03. BANG BAC_SI
-- ============================================

CREATE TABLE IF NOT EXISTS BAC_SI (
    MaNS VARCHAR(10) NOT NULL,
    ChuyenKhoa VARCHAR(100) NOT NULL,
    SoChungChiHanhNghe VARCHAR(30),

    CONSTRAINT PK_BAC_SI
        PRIMARY KEY (MaNS),

    CONSTRAINT FK_BAC_SI_NHAN_SU
        FOREIGN KEY (MaNS)
        REFERENCES NHAN_SU(MaNS),

    CONSTRAINT UQ_BAC_SI_CHUNG_CHI
        UNIQUE (SoChungChiHanhNghe)
);


-- ============================================
-- 04. BANG Y_TA
-- ============================================

CREATE TABLE IF NOT EXISTS Y_TA (
    MaNS VARCHAR(10) NOT NULL,
    CaTruc VARCHAR(30) NOT NULL,
    KhuVucPhuTrach VARCHAR(100),

    CONSTRAINT PK_Y_TA
        PRIMARY KEY (MaNS),

    CONSTRAINT FK_Y_TA_NHAN_SU
        FOREIGN KEY (MaNS)
        REFERENCES NHAN_SU(MaNS)
);


-- ============================================
-- 05. BANG PHONG_KHAM
-- ============================================

CREATE TABLE IF NOT EXISTS PHONG_KHAM (
    MaPhong VARCHAR(10) NOT NULL,
    TenPhong VARCHAR(100) NOT NULL,
    LoaiPhong VARCHAR(50),
    MaKhoa VARCHAR(10),

    CONSTRAINT PK_PHONG_KHAM
        PRIMARY KEY (MaPhong),

    CONSTRAINT FK_PHONG_KHAM_KHOA
        FOREIGN KEY (MaKhoa)
        REFERENCES KHOA(MaKhoa)
);


-- ============================================
-- 06. BANG BENH_NHAN
-- ============================================

CREATE TABLE IF NOT EXISTS BENH_NHAN (
    MaBN VARCHAR(10) NOT NULL,
    HoTen VARCHAR(100) NOT NULL,
    NgaySinh DATE NOT NULL,
    GioiTinh VARCHAR(5),
    SoBHYT VARCHAR(20),
    SoDienThoai VARCHAR(15),

    CONSTRAINT PK_BENH_NHAN
        PRIMARY KEY (MaBN),

    CONSTRAINT CK_BENH_NHAN_GIOI_TINH
        CHECK (GioiTinh IN ('Nam', 'Nữ'))
);


-- ============================================
-- 07. BANG KHAM_BENH
-- ============================================

CREATE TABLE IF NOT EXISTS KHAM_BENH (
    MaKham VARCHAR(10) NOT NULL,
    MaBS VARCHAR(10) NOT NULL,
    MaBN VARCHAR(10) NOT NULL,
    MaPhong VARCHAR(10) NOT NULL,
    NgayKham DATETIME NOT NULL,
    ChanDoan VARCHAR(255),
    TienKham DECIMAL(10,2),

    CONSTRAINT PK_KHAM_BENH
        PRIMARY KEY (MaKham),

    CONSTRAINT FK_KHAM_BENH_BAC_SI
        FOREIGN KEY (MaBS)
        REFERENCES BAC_SI(MaNS),

    CONSTRAINT FK_KHAM_BENH_BENH_NHAN
        FOREIGN KEY (MaBN)
        REFERENCES BENH_NHAN(MaBN),

    CONSTRAINT FK_KHAM_BENH_PHONG_KHAM
        FOREIGN KEY (MaPhong)
        REFERENCES PHONG_KHAM(MaPhong),

    CONSTRAINT CK_KHAM_BENH_TIEN
        CHECK (TienKham > 0)
);


-- ============================================
-- 08. BANG DON_THUOC
-- ============================================

CREATE TABLE IF NOT EXISTS DON_THUOC (
    MaDT VARCHAR(10) NOT NULL,
    MaKham VARCHAR(10) NOT NULL,
    NgayKeDon DATE NOT NULL,
    GhiChu VARCHAR(255),

    CONSTRAINT PK_DON_THUOC
        PRIMARY KEY (MaDT),

    CONSTRAINT FK_DON_THUOC_KHAM_BENH
        FOREIGN KEY (MaKham)
        REFERENCES KHAM_BENH(MaKham),

    CONSTRAINT UQ_DON_THUOC_MAKHAM
        UNIQUE (MaKham)
);


-- ============================================
-- 09. BANG THUOC
-- ============================================

CREATE TABLE IF NOT EXISTS THUOC (
    MaThuoc VARCHAR(10) NOT NULL,
    TenThuoc VARCHAR(150) NOT NULL,
    DonViTinh VARCHAR(30) NOT NULL,
    GiaNiemYet DECIMAL(10,2),
    SoLuongTon INT,

    CONSTRAINT PK_THUOC
        PRIMARY KEY (MaThuoc),

    CONSTRAINT CK_THUOC_GIA
        CHECK (GiaNiemYet > 0),

    CONSTRAINT CK_THUOC_SO_LUONG
        CHECK (SoLuongTon >= 0)
);


-- ============================================
-- 10. BANG CHI_TIET_DON_THUOC
-- ============================================

CREATE TABLE IF NOT EXISTS CHI_TIET_DON_THUOC (
    MaDT VARCHAR(10) NOT NULL,
    MaThuoc VARCHAR(10) NOT NULL,
    SoLuong INT NOT NULL,
    CachDung VARCHAR(200),
    DonGiaBan DECIMAL(10,2),

    CONSTRAINT PK_CHI_TIET_DON_THUOC
        PRIMARY KEY (MaDT, MaThuoc),

    CONSTRAINT FK_CTDT_DON_THUOC
        FOREIGN KEY (MaDT)
        REFERENCES DON_THUOC(MaDT),

    CONSTRAINT FK_CTDT_THUOC
        FOREIGN KEY (MaThuoc)
        REFERENCES THUOC(MaThuoc),

    CONSTRAINT CK_CTDT_SO_LUONG
        CHECK (SoLuong > 0)
);

-- ============================================
-- KET THUC SCHEMA
-- ============================================
