-- ============================================
-- BTL CO SO DU LIEU - HE THONG QUAN LY BENH VIEN
-- PHIEN BAN MICROSOFT SQL SERVER (T-SQL)
-- ============================================

USE [QuanLyBenhVien];
GO

-- Tao bang Y_TA neu chua ton tai
IF OBJECT_ID(N'dbo.Y_TA', N'U') IS NULL
BEGIN
    CREATE TABLE dbo.Y_TA (
        MaNS NVARCHAR(10) NOT NULL,
        CaTruc NVARCHAR(30) NOT NULL,
        KhuVucPhuTrach NVARCHAR(100) NULL,

        CONSTRAINT PK_Y_TA PRIMARY KEY (MaNS),
        CONSTRAINT FK_Y_TA_NHAN_SU FOREIGN KEY (MaNS)
            REFERENCES dbo.NHAN_SU(MaNS)
    );
END;
GO
