
-- ============================================
-- BTL CO SO DU LIEU
-- HE THONG QUAN LY BENH VIEN
-- BANG 06: BENH_NHAN
-- ============================================

USE QuanLyBenhVien;

-- Tao bang BENH_NHAN
CREATE TABLE BENH_NHAN (
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
