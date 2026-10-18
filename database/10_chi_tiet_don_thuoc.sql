-- ============================================
-- BTL CO SO DU LIEU - HE THONG QUAN LY BENH VIEN
-- PHIEN BAN MICROSOFT SQL SERVER (T-SQL)
-- ============================================

USE [QuanLyBenhVien];
GO

-- Tao bang CHI_TIET_DON_THUOC neu chua ton tai
IF OBJECT_ID(N'dbo.CHI_TIET_DON_THUOC', N'U') IS NULL
BEGIN
    CREATE TABLE dbo.CHI_TIET_DON_THUOC (
        MaDT NVARCHAR(10) NOT NULL,
        MaThuoc NVARCHAR(10) NOT NULL,
        SoLuong INT NOT NULL,
        CachDung NVARCHAR(200) NULL,
        DonGiaBan DECIMAL(10,2) NULL,

        CONSTRAINT PK_CHI_TIET_DON_THUOC PRIMARY KEY (MaDT, MaThuoc),
        CONSTRAINT FK_CTDT_DON_THUOC FOREIGN KEY (MaDT)
            REFERENCES dbo.DON_THUOC(MaDT),
        CONSTRAINT FK_CTDT_THUOC FOREIGN KEY (MaThuoc)
            REFERENCES dbo.THUOC(MaThuoc),
        CONSTRAINT CK_CTDT_SO_LUONG CHECK (SoLuong > 0)
    );
END;
GO
