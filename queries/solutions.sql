-- ========================================================
-- Script các câu truy vấn bài tập (Queries / Solutions)
-- ============================================================
-- HỆ THỐNG QUẢN LÝ BỆNH VIỆN - TỔNG HỢP CÁC TRUY VẤN THỐNG KÊ
-- ============================================================

-- ------------------------------------------------------------
-- TRUY VẤN 1: TỔNG QUAN NGUỒN LỰC TỪNG KHOA
-- Tác dụng : Thống kê số phòng khám, số giường, số nhân viên y tế
--            của từng khoa. Giúp ban giám đốc nắm quy mô khoa.
-- Bảng dùng: Khoa, BenhVien, PhongKham, GiuongBenh, NhanVienYTe
-- ------------------------------------------------------------
SELECT 
    bv.TenBV,
    k.MaKhoa,
    k.TenKhoa,
    COUNT(DISTINCT pk.MaPK)    AS SoPhongKham,
    COUNT(DISTINCT g.MaGiuong) AS SoGiuong,
    COUNT(DISTINCT nv.MaNV)    AS SoNhanVien
FROM Khoa k
JOIN BenhVien bv          ON bv.MaBV = k.MaBV
LEFT JOIN PhongKham pk    ON pk.MaKhoa = k.MaKhoa
LEFT JOIN GiuongBenh g    ON g.MaKhoa = k.MaKhoa
LEFT JOIN NhanVienYTe nv  ON nv.MaKhoa = k.MaKhoa
GROUP BY bv.TenBV, k.MaKhoa, k.TenKhoa
ORDER BY bv.TenBV, k.TenKhoa;
GO

-- ------------------------------------------------------------
-- TRUY VẤN 2: TÌNH TRẠNG GIƯỜNG BỆNH THEO KHOA
-- Tác dụng : Đếm giường trống, giường đang dùng và tỷ lệ sử dụng
--            của từng khoa. Giúp điều phối giường, phát hiện khoa quá tải.
-- Bảng dùng: GiuongBenh, Khoa
-- ------------------------------------------------------------
SELECT 
    k.TenKhoa,
    COUNT(*) AS TongGiuong,
    SUM(CASE WHEN g.TrangThai = N'Trống' THEN 1 ELSE 0 END)        AS GiuongTrong,
    SUM(CASE WHEN g.TrangThai = N'Đang sử dụng' THEN 1 ELSE 0 END) AS GiuongDangDung,
    CONCAT(
        CAST(
             100.0 * SUM(CASE WHEN g.TrangThai = N'Đang sử dụng' THEN 1 ELSE 0 END) 
             / COUNT(*) AS DECIMAL(5,2)), '%') AS TyLeSuDung
FROM GiuongBenh g
JOIN Khoa k ON k.MaKhoa = g.MaKhoa
GROUP BY k.MaKhoa, k.TenKhoa
ORDER BY
    100.0 * SUM(CASE WHEN g.TrangThai = N'Đang sử dụng'
                     THEN 1 ELSE 0 END) / COUNT(*) DESC;
GO

-- ------------------------------------------------------------
-- TRUY VẤN 3: THỐNG KÊ BỆNH NHÂN THEO NHÓM TUỔI
-- Tác dụng : Thống kê cơ cấu bệnh nhân theo độ tuổi, hỗ trợ lập kế hoạch phục vụ.
-- Bảng dùng: BenhNhan
-- ------------------------------------------------------------
SELECT
    CASE
        WHEN DATEDIFF(YEAR, NgaySinh, GETDATE()) < 18 THEN N'Dưới 18 tuổi'
        WHEN DATEDIFF(YEAR, NgaySinh, GETDATE()) < 60 THEN N'Từ 18 đến 59 tuổi'
        ELSE N'Từ 60 tuổi trở lên'
    END AS NhomTuoi,
    COUNT(*) AS SoBenhNhan
FROM BenhNhan
WHERE NgaySinh IS NOT NULL
GROUP BY
    CASE
        WHEN DATEDIFF(YEAR, NgaySinh, GETDATE()) < 18 THEN N'Dưới 18 tuổi'
        WHEN DATEDIFF(YEAR, NgaySinh, GETDATE()) < 60 THEN N'Từ 18 đến 59 tuổi'
        ELSE N'Từ 60 tuổi trở lên'
    END;
GO

-- ------------------------------------------------------------
-- TRUY VẤN 4: LƯỢT KHÁM THEO KHOA VÀ THEO THÁNG
-- Tác dụng : Thống kê số lượt khám và số bệnh nhân của từng khoa theo tháng.
--            Là số liệu nền cho báo cáo hoạt động định kỳ và đánh giá công suất khoa.
-- Bảng dùng: Khoa, PhongKham, LichLamViec, ChiTietHen, LanHenKham
-- ------------------------------------------------------------
SELECT 
    k.TenKhoa,
    YEAR(lh.NgayKham)  AS Nam,
    MONTH(lh.NgayKham) AS Thang,
    COUNT(DISTINCT lh.MaLanHen) AS SoLuotKham,
    COUNT(DISTINCT lh.MaBN)     AS SoBenhNhan
FROM Khoa k
JOIN PhongKham pk   ON pk.MaKhoa = k.MaKhoa
JOIN LichLamViec l  ON l.MaPK = pk.MaPK
JOIN ChiTietHen ct  ON ct.MaLich = l.MaLich
JOIN LanHenKham lh  ON lh.MaLanHen = ct.MaLanHen
GROUP BY k.TenKhoa, YEAR(lh.NgayKham), MONTH(lh.NgayKham)
ORDER BY Nam, Thang, SoLuotKham DESC;
GO

-- ------------------------------------------------------------
-- TRUY VẤN 5: THỐNG KÊ SỐ LƯỢT KHÁM CỦA BÁC SĨ
-- Tác dụng : Thống kê và xếp hạng bác sĩ theo số lượt khám giảm dần.
--            Dùng để theo dõi khối lượng công việc và hỗ trợ cân bằng tải khám.
--            Không dùng để đánh giá chất lượng bác sĩ.
-- Bảng dùng: BacSi, NhanVienYTe, LichLamViec, ChiTietHen
-- ------------------------------------------------------------
SELECT 
    nv.MaNV,
    nv.HoTen,
    bs.ChuyenKhoa,
    COUNT(DISTINCT ct.MaLanHen) AS SoLuotKham
FROM BacSi bs
JOIN NhanVienYTe nv ON nv.MaNV = bs.MaNV
JOIN LichLamViec l  ON l.MaNV = bs.MaNV
JOIN ChiTietHen ct  ON ct.MaLich = l.MaLich
GROUP BY nv.MaNV, nv.HoTen, bs.ChuyenKhoa
ORDER BY SoLuotKham DESC;
GO

-- ------------------------------------------------------------
-- TRUY VẤN 6: BỆNH NHÂN TÁI KHÁM NHIỀU LẦN
-- Tác dụng : Liệt kê bệnh nhân khám từ 2 lần trở lên, kèm lần khám
--            đầu, lần khám gần nhất và số ngày theo dõi. Hỗ trợ
--            theo dõi bệnh mạn tính, nhắc lịch tái khám.
-- Bảng dùng: BenhNhan, LanHenKham
-- ------------------------------------------------------------
SELECT 
    bn.MaBN,
    bn.HoTen,
    COUNT(lh.MaLanHen) AS SoLanKham,
    MIN(lh.NgayKham)   AS LanKhamDauTien,
    MAX(lh.NgayKham)   AS LanKhamGanNhat,
    DATEDIFF(DAY, MIN(lh.NgayKham), MAX(lh.NgayKham)) AS SoNgayTheoDoi
FROM BenhNhan bn
JOIN LanHenKham lh ON lh.MaBN = bn.MaBN
GROUP BY bn.MaBN, bn.HoTen
HAVING COUNT(lh.MaLanHen) >= 2
ORDER BY SoLanKham DESC, LanKhamGanNhat DESC;
GO

-- ------------------------------------------------------------
-- TRUY VẤN 7: DANH SÁCH XÉT NGHIỆM TỪNG LẦN KHÁM
-- Tác dụng : Liệt kê các xét nghiệm được chỉ định trong từng lần
--            hẹn khám, kèm tên bệnh nhân và ngày khám. Giúp bộ phận
--            xét nghiệm và bác sĩ tra cứu nhanh hồ sơ của bệnh nhân.
-- Bảng dùng: LanHenKham, BenhNhan, LanHenXetNghiem, XetNghiem
-- ------------------------------------------------------------
SELECT
    bn.MaBN,
    bn.HoTen    AS BenhNhan,
    h.MaLanHen,
    h.NgayKham,
    xn.MaXN,
    xn.TenXN
FROM LanHenKham h
JOIN BenhNhan bn         ON bn.MaBN    = h.MaBN
JOIN LanHenXetNghiem lx  ON lx.MaLanHen = h.MaLanHen
JOIN XetNghiem xn   ON xn.MaXN    = lx.MaXN
ORDER BY h.NgayKham, bn.HoTen;
GO

-- ------------------------------------------------------------
-- TRUY VẤN 8: THUỐC ĐƯỢC KÊ NHIỀU HƠN MỨC TRUNG BÌNH
-- Tác dụng : Tìm các loại thuốc có số đơn kê vượt mức trung bình
--            của toàn bệnh viện. Làm căn cứ dự trù nhập thuốc,
--            tránh thiếu hụt hoặc tồn kho quá mức.
-- Bảng dùng: Thuoc, ChiTietDonThuoc
-- ------------------------------------------------------------
SELECT 
    t.MaThuoc,
    t.TenThuoc,
    COUNT(ct.MaDon) AS SoDonDuocKe
FROM Thuoc t
JOIN ChiTietDonThuoc ct ON ct.MaThuoc = t.MaThuoc
GROUP BY t.MaThuoc, t.TenThuoc
HAVING COUNT(ct.MaDon) > (
    SELECT AVG(CAST(x.SoDon AS FLOAT))
    FROM (
        SELECT COUNT(*) AS SoDon
        FROM ChiTietDonThuoc
        GROUP BY MaThuoc
    ) AS x
)
ORDER BY SoDonDuocKe DESC;
GO

-- ------------------------------------------------------------
-- TRUY VẤN 9: THỐNG KÊ MỨC ĐỘ SỬ DỤNG TỪNG LOẠI THUỐC
-- Tác dụng : Thống kê số lần kê, tỷ lệ so với tổng lượt kê, phân loại mức độ
--            sử dụng của từng loại thuốc. Hỗ trợ khoa Dược dự trù, lập kế hoạch
--            nhập thuốc và phát hiện thuốc ít hoặc chưa từng được sử dụng.
-- Bảng dùng: Thuoc, ChiTietDonThuoc, DonThuoc
-- ------------------------------------------------------------
SELECT
    t.MaThuoc,
    t.TenThuoc,
    COUNT(ct.MaDon)      AS SoLanKe,
    ROUND(COUNT(ct.MaDon) * 100.0
          / (SELECT COUNT(*) FROM ChiTietDonThuoc), 1) AS TyLePhanTram,
    MAX(dt.NgayKe)       AS LanKeGanNhat,
    CASE
        WHEN COUNT(ct.MaDon) = 0 THEN N'Chưa sử dụng'
        WHEN COUNT(ct.MaDon) <= 2 THEN N'Ít sử dụng'
        ELSE N'Sử dụng nhiều'
    END                  AS MucDoSuDung
FROM Thuoc t
LEFT JOIN ChiTietDonThuoc ct ON ct.MaThuoc = t.MaThuoc
LEFT JOIN DonThuoc dt        ON dt.MaDon   = ct.MaDon
GROUP BY t.MaThuoc, t.TenThuoc
ORDER BY SoLanKe DESC, t.TenThuoc;
GO

-- ------------------------------------------------------------
-- TRUY VẤN 10: XÉT NGHIỆM ĐƯỢC CHỈ ĐỊNH NHƯNG CHƯA THỰC HIỆN
-- Tác dụng : Tìm các xét nghiệm đã chỉ định trong lần hẹn khám
--            nhưng chưa có bản ghi thực hiện, kèm số ngày chờ.
--            Giúp theo dõi xét nghiệm tồn đọng, tránh chậm trễ
--            chẩn đoán và điều trị.
-- Bảng dùng: LanHenXetNghiem, LanHenKham, BenhNhan, XetNghiem,
--            ThucHienXetNghiem
-- ------------------------------------------------------------
SELECT 
    lh.MaLanHen,
    lh.NgayKham,
    bn.MaBN,
    bn.HoTen,
    xn.TenXN,
    DATEDIFF(DAY, lh.NgayKham, GETDATE()) AS SoNgayChoXetNghiem
FROM LanHenXetNghiem lx
JOIN LanHenKham lh ON lh.MaLanHen = lx.MaLanHen
JOIN BenhNhan bn   ON bn.MaBN = lh.MaBN
JOIN XetNghiem xn  ON xn.MaXN = lx.MaXN
WHERE NOT EXISTS (
    SELECT 1
    FROM ThucHienXetNghiem th
    WHERE th.MaLanHen = lx.MaLanHen
      AND th.MaXN     = lx.MaXN
)
ORDER BY SoNgayChoXetNghiem DESC;
GO

-- ------------------------------------------------------------
-- TRUY VẤN 11: KHỐI LƯỢNG CHĂM SÓC CỦA Y TÁ
-- Tác dụng : Đếm số bệnh nhân mà mỗi y tá đang chăm sóc, gồm cả
--            y tá chưa được phân công (số lượng = 0). Phục vụ
--            phân công và cân bằng khối lượng công việc.
-- Bảng dùng: YTa, NhanVienYTe, Khoa, PhieuChamSoc
-- ------------------------------------------------------------
SELECT 
    nv.MaNV,
    nv.HoTen,
    k.TenKhoa,
    yt.TrinhDo,
    COUNT(DISTINCT pc.MaBN) AS SoBenhNhanChamSoc
FROM YTa yt
JOIN NhanVienYTe nv        ON nv.MaNV = yt.MaNV
JOIN Khoa k                ON k.MaKhoa = nv.MaKhoa
LEFT JOIN PhieuChamSoc pc  ON pc.MaYT = yt.MaNV
GROUP BY nv.MaNV, nv.HoTen, k.TenKhoa, yt.TrinhDo
ORDER BY SoBenhNhanChamSoc DESC, nv.HoTen;
GO

-- ------------------------------------------------------------
-- TRUY VẤN 12: HIỆU SUẤT SỬ DỤNG LỊCH TRỰC THEO PHÒNG KHÁM
-- Tác dụng : Thống kê số ca trực có bệnh nhân, ca trực bỏ trống
--            và tỷ lệ lấp đầy để hỗ trợ tối ưu lịch trực.
-- Bảng dùng: PhongKham, Khoa, LichLamViec, ChiTietHen
-- ------------------------------------------------------------
SELECT 
    k.TenKhoa,
    pk.MaPK,
    pk.TenPK,
    COUNT(DISTINCT l.MaLich) AS TongCaTruc,
    COUNT(DISTINCT ct.MaLich) AS CaTrucCoBenhNhan,
    COUNT(DISTINCT l.MaLich) - COUNT(DISTINCT ct.MaLich) AS CaTrucBoTrong,
    CONCAT(
        CAST(100.0 * COUNT(DISTINCT ct.MaLich)
        / COUNT(DISTINCT l.MaLich) AS DECIMAL(5,2)), '%'
    ) AS TyLeLapDay
FROM PhongKham pk
JOIN Khoa k ON k.MaKhoa = pk.MaKhoa
JOIN LichLamViec l ON l.MaPK = pk.MaPK
LEFT JOIN ChiTietHen ct ON ct.MaLich = l.MaLich
GROUP BY k.TenKhoa, pk.MaPK, pk.TenPK
ORDER BY
    100.0 * COUNT(DISTINCT ct.MaLich)
    / COUNT(DISTINCT l.MaLich) ASC;
GO
