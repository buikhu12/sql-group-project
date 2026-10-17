
-- ============================================
-- BTL CO SO DU LIEU
-- HE THONG QUAN LY BENH VIEN
-- BANG 08: DON_THUOC
-- ============================================

USE QuanLyBenhVien;

CREATE TABLE DON_THUOC (
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
