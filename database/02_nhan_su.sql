-- ============================================
-- BTL CO SO DU LIEU - HE THONG QUAN LY BENH VIEN
-- PHIEN BAN MICROSOFT SQL SERVER (T-SQL)
-- ============================================

USE [QuanLyBenhVien];
GO

-- Tao bang NHAN_SU neu chua ton tai
IF OBJECT_ID(N'dbo.NHAN_SU', N'U') IS NULL
BEGIN
    CREATE TABLE dbo.NHAN_SU (
        MaNS NVARCHAR(10) NOT NULL,
        HoTen NVARCHAR(100) NOT NULL,
        SoDienThoai NVARCHAR(15) NULL,
        LuongCoBan DECIMAL(12,2) NOT NULL,
        MaKhoa NVARCHAR(10) NOT NULL,

        CONSTRAINT PK_NHAN_SU PRIMARY KEY (MaNS),
        CONSTRAINT FK_NHAN_SU_KHOA FOREIGN KEY (MaKhoa)
            REFERENCES dbo.KHOA(MaKhoa),
        CONSTRAINT CK_NHAN_SU_LUONG CHECK (LuongCoBan > 0)
    );
END;
GO
