
-- ============================================
-- BTL CO SO DU LIEU
-- HE THONG QUAN LY BENH VIEN
-- BANG 05: PHONG_KHAM
-- ============================================

USE QuanLyBenhVien;

CREATE TABLE PHONG_KHAM (
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
