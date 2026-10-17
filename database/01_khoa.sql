-- ============================================
-- BTL CO SO DU LIEU - HE THONG QUAN LY BENH VIEN
-- PHIEN BAN MICROSOFT SQL SERVER (T-SQL)
-- ============================================

USE [QuanLyBenhVien];
GO

-- Tao bang KHOA neu chua ton tai
IF OBJECT_ID(N'dbo.KHOA', N'U') IS NULL
BEGIN
    CREATE TABLE dbo.KHOA (
        MaKhoa NVARCHAR(10) NOT NULL,
        TenKhoa NVARCHAR(100) NOT NULL,
        ViTriTang NVARCHAR(50) NULL,

        CONSTRAINT PK_KHOA PRIMARY KEY (MaKhoa)
    );
END;
GO
