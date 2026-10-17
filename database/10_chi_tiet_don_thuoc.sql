
-- ============================================
-- BTL CO SO DU LIEU
-- HE THONG QUAN LY BENH VIEN
-- BANG 10: CHI_TIET_DON_THUOC
-- ============================================

USE QuanLyBenhVien;

CREATE TABLE CHI_TIET_DON_THUOC (
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
