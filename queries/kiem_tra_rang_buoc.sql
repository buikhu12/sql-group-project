-- ============================================
-- BTL CO SO DU LIEU - HE THONG QUAN LY BENH VIEN
-- PHIEN BAN MICROSOFT SQL SERVER (T-SQL)
-- ============================================

-- CAC BAI TEST DUOC BAO TRONG TRANSACTION VA ROLLBACK.
-- Vi vay khong de lai du lieu thu nghiem trong database.
USE [QuanLyBenhVien];
GO

-- TEST 01: PRIMARY KEY. Mong doi: SQL Server error 2627.
BEGIN TRY
    BEGIN TRANSACTION;
    INSERT INTO dbo.KHOA (MaKhoa, TenKhoa)
    VALUES (N'KT001', N'Khoa kiem thu 1'), (N'KT001', N'Khoa kiem thu 2');
    ROLLBACK TRANSACTION;
    PRINT N'TEST 01 FAIL: PRIMARY KEY khong chan ma khoa trung.';
END TRY
BEGIN CATCH
    IF XACT_STATE() <> 0 ROLLBACK TRANSACTION;
    IF ERROR_NUMBER() IN (2627, 2601)
        PRINT N'TEST 01 PASS: PRIMARY KEY da chan ma khoa trung.';
    ELSE
        PRINT CONCAT(N'TEST 01 ERROR ', ERROR_NUMBER(), N': ', ERROR_MESSAGE());
END CATCH;
GO

-- TEST 02: FOREIGN KEY. Mong doi: SQL Server error 547.
BEGIN TRY
    BEGIN TRANSACTION;
    INSERT INTO dbo.NHAN_SU (MaNS, HoTen, LuongCoBan, MaKhoa)
    VALUES (N'KT_NS01', N'Nhan su kiem thu', 10000000, N'KHONG_CO');
    ROLLBACK TRANSACTION;
    PRINT N'TEST 02 FAIL: FOREIGN KEY khong chan MaKhoa khong ton tai.';
END TRY
BEGIN CATCH
    IF XACT_STATE() <> 0 ROLLBACK TRANSACTION;
    IF ERROR_NUMBER() = 547
        PRINT N'TEST 02 PASS: FOREIGN KEY da chan MaKhoa khong ton tai.';
    ELSE
        PRINT CONCAT(N'TEST 02 ERROR ', ERROR_NUMBER(), N': ', ERROR_MESSAGE());
END CATCH;
GO

-- TEST 03: CHECK. Mong doi: SQL Server error 547.
BEGIN TRY
    BEGIN TRANSACTION;
    INSERT INTO dbo.THUOC (MaThuoc, TenThuoc, DonViTinh, GiaNiemYet, SoLuongTon)
    VALUES (N'KT_TH01', N'Thuoc kiem thu', N'Vien', 5000, -10);
    ROLLBACK TRANSACTION;
    PRINT N'TEST 03 FAIL: CHECK khong chan SoLuongTon am.';
END TRY
BEGIN CATCH
    IF XACT_STATE() <> 0 ROLLBACK TRANSACTION;
    IF ERROR_NUMBER() = 547
        PRINT N'TEST 03 PASS: CHECK da chan SoLuongTon am.';
    ELSE
        PRINT CONCAT(N'TEST 03 ERROR ', ERROR_NUMBER(), N': ', ERROR_MESSAGE());
END CATCH;
GO

-- TEST 04: NOT NULL. Mong doi: SQL Server error 515.
BEGIN TRY
    BEGIN TRANSACTION;
    INSERT INTO dbo.KHOA (MaKhoa, TenKhoa)
    VALUES (N'KT002', NULL);
    ROLLBACK TRANSACTION;
    PRINT N'TEST 04 FAIL: NOT NULL khong chan TenKhoa NULL.';
END TRY
BEGIN CATCH
    IF XACT_STATE() <> 0 ROLLBACK TRANSACTION;
    IF ERROR_NUMBER() = 515
        PRINT N'TEST 04 PASS: NOT NULL da chan TenKhoa NULL.';
    ELSE
        PRINT CONCAT(N'TEST 04 ERROR ', ERROR_NUMBER(), N': ', ERROR_MESSAGE());
END CATCH;
GO

-- TEST 05: UNIQUE. Mong doi: co hai dong unique index.
SELECT
    t.name AS TABLE_NAME,
    i.name AS INDEX_NAME,
    c.name AS COLUMN_NAME,
    CAST(0 AS bit) AS NON_UNIQUE,
    i.is_unique AS IS_UNIQUE,
    i.has_filter AS HAS_FILTER,
    i.filter_definition AS FILTER_DEFINITION
FROM sys.indexes AS i
JOIN sys.tables AS t ON t.object_id = i.object_id
JOIN sys.index_columns AS ic
    ON ic.object_id = i.object_id AND ic.index_id = i.index_id
JOIN sys.columns AS c
    ON c.object_id = ic.object_id AND c.column_id = ic.column_id
WHERE i.is_unique = 1
  AND ic.key_ordinal = 1
  AND (
      (t.name = N'BAC_SI' AND c.name = N'SoChungChiHanhNghe')
      OR
      (t.name = N'DON_THUOC' AND c.name = N'MaKham')
  )
ORDER BY t.name, c.name;
GO
