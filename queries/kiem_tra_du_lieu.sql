-- ============================================
-- BTL CO SO DU LIEU - HE THONG QUAN LY BENH VIEN
-- PHIEN BAN MICROSOFT SQL SERVER (T-SQL)
-- ============================================

USE [QuanLyBenhVien];
GO

-- ============================================
-- BTL CO SO DU LIEU
-- HE THONG QUAN LY BENH VIEN
-- KIEM TRA DU LIEU MAU
-- ============================================

-- 01. Kiem tra so ban ghi cua 10 bang

SELECT N'KHOA' AS TenBang, COUNT(*) AS SoBanGhi FROM dbo.KHOA
UNION ALL
SELECT N'NHAN_SU', COUNT(*) FROM dbo.NHAN_SU
UNION ALL
SELECT N'BAC_SI', COUNT(*) FROM dbo.BAC_SI
UNION ALL
SELECT N'Y_TA', COUNT(*) FROM dbo.Y_TA
UNION ALL
SELECT N'PHONG_KHAM', COUNT(*) FROM dbo.PHONG_KHAM
UNION ALL
SELECT N'BENH_NHAN', COUNT(*) FROM dbo.BENH_NHAN
UNION ALL
SELECT N'KHAM_BENH', COUNT(*) FROM dbo.KHAM_BENH
UNION ALL
SELECT N'DON_THUOC', COUNT(*) FROM dbo.DON_THUOC
UNION ALL
SELECT N'THUOC', COUNT(*) FROM dbo.THUOC
UNION ALL
SELECT N'CHI_TIET_DON_THUOC', COUNT(*)
FROM dbo.CHI_TIET_DON_THUOC;


-- 02. Kiem tra lien ket bac si va nhan su

SELECT
    bs.MaNS,
    ns.HoTen,
    bs.ChuyenKhoa,
    k.TenKhoa
FROM dbo.BAC_SI bs
JOIN dbo.NHAN_SU ns ON bs.MaNS = ns.MaNS
JOIN dbo.KHOA k ON ns.MaKhoa = k.MaKhoa
ORDER BY bs.MaNS;


-- 03. Kiem tra lien ket kham benh 3 ngoi

SELECT
    kb.MaKham,
    bn.HoTen AS TenBenhNhan,
    ns.HoTen AS TenBacSi,
    pk.TenPhong,
    kb.NgayKham,
    kb.ChanDoan,
    kb.TienKham
FROM dbo.KHAM_BENH kb
JOIN dbo.BENH_NHAN bn ON kb.MaBN = bn.MaBN
JOIN dbo.BAC_SI bs ON kb.MaBS = bs.MaNS
JOIN dbo.NHAN_SU ns ON bs.MaNS = ns.MaNS
JOIN dbo.PHONG_KHAM pk ON kb.MaPhong = pk.MaPhong
ORDER BY kb.MaKham;


-- 04. Kiem tra chi tiet don thuoc

SELECT
    dt.MaDT,
    bn.HoTen AS TenBenhNhan,
    t.TenThuoc,
    ct.SoLuong,
    ct.DonGiaBan,
    ct.SoLuong * ct.DonGiaBan AS ThanhTien
FROM dbo.CHI_TIET_DON_THUOC ct
JOIN dbo.DON_THUOC dt ON ct.MaDT = dt.MaDT
JOIN dbo.KHAM_BENH kb ON dt.MaKham = kb.MaKham
JOIN dbo.BENH_NHAN bn ON kb.MaBN = bn.MaBN
JOIN dbo.THUOC t ON ct.MaThuoc = t.MaThuoc
ORDER BY dt.MaDT, t.MaThuoc;


-- 05. Tong doanh thu kham benh

SELECT
    COUNT(*) AS TongLuotKham,
    SUM(TienKham) AS TongDoanhThuKham
FROM dbo.KHAM_BENH;
