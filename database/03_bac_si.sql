-- ============================================
-- BTL CO SO DU LIEU - HE THONG QUAN LY BENH VIEN
-- PHIEN BAN MICROSOFT SQL SERVER (T-SQL)
-- ============================================

USE [QuanLyBenhVien];
GO

-- Tao bang BAC_SI neu chua ton tai
IF OBJECT_ID(N'dbo.BAC_SI', N'U') IS NULL
BEGIN
    CREATE TABLE dbo.BAC_SI (
        MaNS NVARCHAR(10) NOT NULL,
        ChuyenKhoa NVARCHAR(100) NOT NULL,
        SoChungChiHanhNghe NVARCHAR(30) NULL,

        CONSTRAINT PK_BAC_SI PRIMARY KEY (MaNS),
        CONSTRAINT FK_BAC_SI_NHAN_SU FOREIGN KEY (MaNS)
            REFERENCES dbo.NHAN_SU(MaNS)
    );
END;
GO

-- Dung unique filtered index de cho phep nhieu NULL, nhung khong cho trung so chung chi.
IF NOT EXISTS (
    SELECT 1
    FROM sys.indexes
    WHERE object_id = OBJECT_ID(N'dbo.BAC_SI')
      AND name = N'UQ_BAC_SI_CHUNG_CHI'
)
BEGIN
    CREATE UNIQUE INDEX UQ_BAC_SI_CHUNG_CHI
        ON dbo.BAC_SI(SoChungChiHanhNghe)
        WHERE SoChungChiHanhNghe IS NOT NULL;
END;
GO
