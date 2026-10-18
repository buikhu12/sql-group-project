-- ============================================
-- BTL CO SO DU LIEU - HE THONG QUAN LY BENH VIEN
-- PHIEN BAN MICROSOFT SQL SERVER (T-SQL)
-- ============================================

USE [QuanLyBenhVien];
GO

-- Tao bang PHONG_KHAM neu chua ton tai
IF OBJECT_ID(N'dbo.PHONG_KHAM', N'U') IS NULL
BEGIN
    CREATE TABLE dbo.PHONG_KHAM (
        MaPhong NVARCHAR(10) NOT NULL,
        TenPhong NVARCHAR(100) NOT NULL,
        LoaiPhong NVARCHAR(50) NULL,
        MaKhoa NVARCHAR(10) NULL,

        CONSTRAINT PK_PHONG_KHAM PRIMARY KEY (MaPhong),
        CONSTRAINT FK_PHONG_KHAM_KHOA FOREIGN KEY (MaKhoa)
            REFERENCES dbo.KHOA(MaKhoa)
    );
END;
GO
