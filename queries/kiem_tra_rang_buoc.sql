
-- ============================================
-- KIEM THU RANG BUOC CO SO DU LIEU
-- HE THONG QUAN LY BENH VIEN
-- ============================================

USE QuanLyBenhVien_Test;

-- ============================================
-- TEST 01: KHOA CHINH (PRIMARY KEY)
-- Thu them 2 khoa co cung MaKhoa
-- Mong doi: Error Code 1062
-- ============================================

INSERT INTO KHOA (MaKhoa, TenKhoa)
VALUES
('KT001', 'Khoa kiem thu 1'),
('KT001', 'Khoa kiem thu 2');


-- ============================================
-- TEST 02: KHOA NGOAI (FOREIGN KEY)
-- MaKhoa khong ton tai trong bang KHOA
-- Mong doi: Error Code 1452
-- ============================================

INSERT INTO NHAN_SU
(MaNS, HoTen, LuongCoBan, MaKhoa)
VALUES
('KT_NS01', 'Nhan su kiem thu', 10000000, 'KHONG_CO');


-- ============================================
-- TEST 03: RANG BUOC CHECK
-- SoLuongTon khong duoc am
-- Mong doi: Error Code 3819
-- ============================================

INSERT INTO THUOC
(MaThuoc, TenThuoc, DonViTinh, GiaNiemYet, SoLuongTon)
VALUES
('KT_TH01', 'Thuoc kiem thu', 'Vien', 5000, -10);


-- ============================================
-- TEST 04: RANG BUOC NOT NULL
-- TenKhoa khong duoc NULL
-- Mong doi: Error Code 1048
-- ============================================

INSERT INTO KHOA
(MaKhoa, TenKhoa)
VALUES
('KT002', NULL);


-- ============================================
-- TEST 05: RANG BUOC UNIQUE
-- Kiem tra cac chi muc duy nhat
-- ============================================

SELECT
    TABLE_NAME,
    INDEX_NAME,
    COLUMN_NAME,
    NON_UNIQUE
FROM information_schema.STATISTICS
WHERE TABLE_SCHEMA = DATABASE()
  AND NON_UNIQUE = 0
  AND (
      (TABLE_NAME = 'BAC_SI'
       AND COLUMN_NAME = 'SoChungChiHanhNghe')
      OR
      (TABLE_NAME = 'DON_THUOC'
       AND COLUMN_NAME = 'MaKham')
  );
