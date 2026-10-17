
-- ============================================
-- BTL CO SO DU LIEU
-- HE THONG QUAN LY BENH VIEN
-- BANG 02: NHAN_SU
-- ============================================

USE QuanLyBenhVien;

-- Tao bang NHAN_SU
CREATE TABLE NHAN_SU (
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
