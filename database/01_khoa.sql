
-- ============================================
-- BTL CO SO DU LIEU
-- HE THONG QUAN LY BENH VIEN
-- BANG 01: KHOA
-- ============================================

USE QuanLyBenhVien;

-- Tao bang KHOA
CREATE TABLE KHOA (
    MaKhoa VARCHAR(10) NOT NULL,
    TenKhoa VARCHAR(100) NOT NULL,
    ViTriTang VARCHAR(50),

    CONSTRAINT PK_KHOA
      PRIMARY KEY (MaKhoa)
);
