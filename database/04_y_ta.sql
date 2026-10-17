
-- ============================================
-- BTL CO SO DU LIEU
-- HE THONG QUAN LY BENH VIEN
-- BANG 04: Y_TA
-- ============================================

USE QuanLyBenhVien;

CREATE TABLE Y_TA (
    MaNS VARCHAR(10) NOT NULL,
    CaTruc VARCHAR(30) NOT NULL,
    KhuVucPhuTrach VARCHAR(100),

    CONSTRAINT PK_Y_TA
        PRIMARY KEY (MaNS),

    CONSTRAINT FK_Y_TA_NHAN_SU
        FOREIGN KEY (MaNS)
        REFERENCES NHAN_SU(MaNS)
);
