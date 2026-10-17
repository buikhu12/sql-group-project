
-- ============================================
-- BTL CO SO DU LIEU
-- HE THONG QUAN LY BENH VIEN
-- KIEM TRA DU LIEU MAU
-- ============================================

USE QuanLyBenhVien;

-- 01. Kiem tra so ban ghi cua 10 bang

SELECT 'KHOA' AS TenBang, COUNT(*) AS SoBanGhi FROM KHOA
UNION ALL
SELECT 'NHAN_SU', COUNT(*) FROM NHAN_SU
UNION ALL
SELECT 'BAC_SI', COUNT(*) FROM BAC_SI
UNION ALL
SELECT 'Y_TA', COUNT(*) FROM Y_TA
UNION ALL
SELECT 'PHONG_KHAM', COUNT(*) FROM PHONG_KHAM
UNION ALL
SELECT 'BENH_NHAN', COUNT(*) FROM BENH_NHAN
UNION ALL
SELECT 'KHAM_BENH', COUNT(*) FROM KHAM_BENH
UNION ALL
SELECT 'DON_THUOC', COUNT(*) FROM DON_THUOC
UNION ALL
SELECT 'THUOC', COUNT(*) FROM THUOC
UNION ALL
SELECT 'CHI_TIET_DON_THUOC', COUNT(*)
FROM CHI_TIET_DON_THUOC;


-- 02. Kiem tra lien ket bac si va nhan su

SELECT
    bs.MaNS,
    ns.HoTen,
    bs.ChuyenKhoa,
    k.TenKhoa
FROM BAC_SI bs
JOIN NHAN_SU ns ON bs.MaNS = ns.MaNS
JOIN KHOA k ON ns.MaKhoa = k.MaKhoa
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
FROM KHAM_BENH kb
JOIN BENH_NHAN bn ON kb.MaBN = bn.MaBN
JOIN BAC_SI bs ON kb.MaBS = bs.MaNS
JOIN NHAN_SU ns ON bs.MaNS = ns.MaNS
JOIN PHONG_KHAM pk ON kb.MaPhong = pk.MaPhong
ORDER BY kb.MaKham;


-- 04. Kiem tra chi tiet don thuoc

SELECT
    dt.MaDT,
    bn.HoTen AS TenBenhNhan,
    t.TenThuoc,
    ct.SoLuong,
    ct.DonGiaBan,
    ct.SoLuong * ct.DonGiaBan AS ThanhTien
FROM CHI_TIET_DON_THUOC ct
JOIN DON_THUOC dt ON ct.MaDT = dt.MaDT
JOIN KHAM_BENH kb ON dt.MaKham = kb.MaKham
JOIN BENH_NHAN bn ON kb.MaBN = bn.MaBN
JOIN THUOC t ON ct.MaThuoc = t.MaThuoc
ORDER BY dt.MaDT, t.MaThuoc;


-- 05. Tong doanh thu kham benh

SELECT
    COUNT(*) AS TongLuotKham,
    SUM(TienKham) AS TongDoanhThuKham
FROM KHAM_BENH;
