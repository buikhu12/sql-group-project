-- ============================================
-- BTL CO SO DU LIEU - HE THONG QUAN LY BENH VIEN
-- PHIEN BAN MICROSOFT SQL SERVER (T-SQL)
-- ============================================

USE [QuanLyBenhVien];
GO

-- Tao bang BENH_NHAN neu chua ton tai
IF OBJECT_ID(N'dbo.BENH_NHAN', N'U') IS NULL
BEGIN
    CREATE TABLE dbo.BENH_NHAN (
        MaBN NVARCHAR(10) NOT NULL,
        HoTen NVARCHAR(100) NOT NULL,
        NgaySinh DATE NOT NULL,
        GioiTinh NVARCHAR(5) NULL,
        SoBHYT NVARCHAR(20) NULL,
        SoDienThoai NVARCHAR(15) NULL,

        CONSTRAINT PK_BENH_NHAN PRIMARY KEY (MaBN),
        CONSTRAINT CK_BENH_NHAN_GIOI_TINH CHECK (GioiTinh IN (N'Nam', N'Nữ'))
    );
END;
GO
