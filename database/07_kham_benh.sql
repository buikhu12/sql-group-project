-- ============================================
-- BTL CO SO DU LIEU - HE THONG QUAN LY BENH VIEN
-- PHIEN BAN MICROSOFT SQL SERVER (T-SQL)
-- ============================================

USE [QuanLyBenhVien];
GO

-- Tao bang KHAM_BENH neu chua ton tai
IF OBJECT_ID(N'dbo.KHAM_BENH', N'U') IS NULL
BEGIN
    CREATE TABLE dbo.KHAM_BENH (
        MaKham NVARCHAR(10) NOT NULL,
        MaBS NVARCHAR(10) NOT NULL,
        MaBN NVARCHAR(10) NOT NULL,
        MaPhong NVARCHAR(10) NOT NULL,
        NgayKham DATETIME NOT NULL,
        ChanDoan NVARCHAR(255) NULL,
        TienKham DECIMAL(10,2) NULL,

        CONSTRAINT PK_KHAM_BENH PRIMARY KEY (MaKham),
        CONSTRAINT FK_KHAM_BENH_BAC_SI FOREIGN KEY (MaBS)
            REFERENCES dbo.BAC_SI(MaNS),
        CONSTRAINT FK_KHAM_BENH_BENH_NHAN FOREIGN KEY (MaBN)
            REFERENCES dbo.BENH_NHAN(MaBN),
        CONSTRAINT FK_KHAM_BENH_PHONG_KHAM FOREIGN KEY (MaPhong)
            REFERENCES dbo.PHONG_KHAM(MaPhong),
        CONSTRAINT CK_KHAM_BENH_TIEN CHECK (TienKham > 0)
    );
END;
GO
