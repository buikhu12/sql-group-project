-- ============================================
-- BTL CO SO DU LIEU - HE THONG QUAN LY BENH VIEN
-- PHIEN BAN MICROSOFT SQL SERVER (T-SQL)
-- ============================================

USE [QuanLyBenhVien];
GO

-- Tao bang DON_THUOC neu chua ton tai
IF OBJECT_ID(N'dbo.DON_THUOC', N'U') IS NULL
BEGIN
    CREATE TABLE dbo.DON_THUOC (
        MaDT NVARCHAR(10) NOT NULL,
        MaKham NVARCHAR(10) NOT NULL,
        NgayKeDon DATE NOT NULL,
        GhiChu NVARCHAR(255) NULL,

        CONSTRAINT PK_DON_THUOC PRIMARY KEY (MaDT),
        CONSTRAINT FK_DON_THUOC_KHAM_BENH FOREIGN KEY (MaKham)
            REFERENCES dbo.KHAM_BENH(MaKham),
        CONSTRAINT UQ_DON_THUOC_MAKHAM UNIQUE (MaKham)
    );
END;
GO
