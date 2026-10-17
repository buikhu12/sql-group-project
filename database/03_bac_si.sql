
-- ============================================
-- BTL CO SO DU LIEU
-- HE THONG QUAN LY BENH VIEN
-- BANG 03: BAC_SI
-- ============================================

USE QuanLyBenhVien;

-- Tao bang BAC_SI
CREATE TABLE BAC_SI (
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
