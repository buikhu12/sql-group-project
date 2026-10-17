
-- ============================================
-- BTL CO SO DU LIEU
-- HE THONG QUAN LY BENH VIEN
-- BANG 09: THUOC
-- ============================================

USE QuanLyBenhVien;

CREATE TABLE THUOC (
    MaThuoc VARCHAR(10) NOT NULL,
    TenThuoc VARCHAR(150) NOT NULL,
    DonViTinh VARCHAR(30) NOT NULL,
    GiaNiemYet DECIMAL(10,2),
    SoLuongTon INT DEFAULT 0,

    CONSTRAINT PK_THUOC
        PRIMARY KEY (MaThuoc),

    CONSTRAINT CK_THUOC_GIA
        CHECK (GiaNiemYet > 0),

    CONSTRAINT CK_THUOC_SO_LUONG
        CHECK (SoLuongTon >= 0)
);
