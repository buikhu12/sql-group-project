-- ============================================
-- BTL CO SO DU LIEU - HE THONG QUAN LY BENH VIEN
-- PHIEN BAN MICROSOFT SQL SERVER (T-SQL)
-- ============================================

USE [QuanLyBenhVien];
GO

-- Tao bang THUOC neu chua ton tai
IF OBJECT_ID(N'dbo.THUOC', N'U') IS NULL
BEGIN
    CREATE TABLE dbo.THUOC (
        MaThuoc NVARCHAR(10) NOT NULL,
        TenThuoc NVARCHAR(150) NOT NULL,
        DonViTinh NVARCHAR(30) NOT NULL,
        GiaNiemYet DECIMAL(10,2) NULL,
        SoLuongTon INT NULL CONSTRAINT DF_THUOC_SoLuongTon DEFAULT (0),

        CONSTRAINT PK_THUOC PRIMARY KEY (MaThuoc),
        CONSTRAINT CK_THUOC_GIA CHECK (GiaNiemYet > 0),
        CONSTRAINT CK_THUOC_SO_LUONG CHECK (SoLuongTon >= 0)
    );
END;
GO
