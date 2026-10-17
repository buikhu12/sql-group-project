-- ============================================
-- BTL CO SO DU LIEU - HE THONG QUAN LY BENH VIEN
-- PHIEN BAN MICROSOFT SQL SERVER (T-SQL)
-- ============================================

USE [QuanLyBenhVien];
GO

-- ========================================================
-- Script chèn dữ liệu mẫu (Sample Data DML)
-- ========================================================

-- Viết các câu lệnh INSERT INTO ở đây:



-- ============================================
-- BTL CO SO DU LIEU
-- HE THONG QUAN LY BENH VIEN
-- DU LIEU MAU CHO 10 BANG
-- ============================================

-- ============================================
-- 01. DU LIEU BANG KHOA
-- ============================================

INSERT INTO dbo.KHOA (MaKhoa, TenKhoa, ViTriTang)
VALUES
(N'K_NOI', N'Khoa Nội', N'Tầng 2'),
(N'K_NGOAI', N'Khoa Ngoại', N'Tầng 3'),
(N'K_NHI', N'Khoa Nhi', N'Tầng 4'),
(N'K_CAPCUU', N'Khoa Cấp cứu', N'Tầng 1'),
(N'K_DUOC', N'Khoa Dược', N'Tầng 1');


-- ============================================
-- 02. DU LIEU BANG NHAN_SU
-- ============================================

INSERT INTO dbo.NHAN_SU
(MaNS, HoTen, SoDienThoai, LuongCoBan, MaKhoa)
VALUES
(N'NS001', N'Nguyễn Văn An', N'0901000001', 15000000, N'K_NOI'),
(N'NS002', N'Trần Thị Bình', N'0901000002', 16000000, N'K_NOI'),
(N'NS003', N'Lê Minh Đức', N'0901000003', 17000000, N'K_NGOAI'),
(N'NS004', N'Phạm Quốc Huy', N'0901000004', 18000000, N'K_NGOAI'),
(N'NS005', N'Hoàng Thị Lan', N'0901000005', 15500000, N'K_NHI'),
(N'NS006', N'Đỗ Văn Minh', N'0901000006', 17500000, N'K_CAPCUU'),
(N'NS007', N'Vũ Thu Hà', N'0901000007', 16500000, N'K_NHI'),
(N'NS008', N'Nguyễn Thị Mai', N'0901000008', 8500000, N'K_NOI'),
(N'NS009', N'Trần Văn Nam', N'0901000009', 9000000, N'K_NGOAI'),
(N'NS010', N'Lê Thị Hoa', N'0901000010', 8200000, N'K_NHI'),
(N'NS011', N'Phạm Thị Hương', N'0901000011', 9500000, N'K_CAPCUU'),
(N'NS012', N'Bùi Văn Long', N'0901000012', 8800000, N'K_NOI');



-- ============================================
-- 03. DU LIEU BANG BAC_SI
-- ============================================

INSERT INTO dbo.BAC_SI
(MaNS, ChuyenKhoa, SoChungChiHanhNghe)
VALUES
(N'NS001', N'Tim mạch', N'CCHN001'),
(N'NS002', N'Nội tổng quát', N'CCHN002'),
(N'NS003', N'Ngoại tổng quát', N'CCHN003'),
(N'NS004', N'Chấn thương chỉnh hình', N'CCHN004'),
(N'NS005', N'Nhi khoa', N'CCHN005'),
(N'NS006', N'Hồi sức cấp cứu', N'CCHN006'),
(N'NS007', N'Nhi tổng quát', N'CCHN007');



-- ============================================
-- 04. DU LIEU BANG Y_TA
-- ============================================

INSERT INTO dbo.Y_TA
(MaNS, CaTruc, KhuVucPhuTrach)
VALUES
(N'NS008', N'Sáng', N'Khoa Nội'),
(N'NS009', N'Chiều', N'Khoa Ngoại'),
(N'NS010', N'Sáng', N'Khoa Nhi'),
(N'NS011', N'Đêm', N'Khoa Cấp cứu'),
(N'NS012', N'Chiều', N'Khoa Nội');

-- ============================================
-- 05. DU LIEU BANG PHONG_KHAM
-- ============================================

INSERT INTO dbo.PHONG_KHAM
(MaPhong, TenPhong, LoaiPhong, MaKhoa)
VALUES
(N'PK101', N'Phòng khám Nội tổng quát 1', N'Khám tổng quát', N'K_NOI'),
(N'PK102', N'Phòng khám Tim mạch', N'Khám chuyên khoa', N'K_NOI'),
(N'PK201', N'Phòng khám Ngoại tổng quát', N'Khám chuyên khoa', N'K_NGOAI'),
(N'PK202', N'Phòng khám Chấn thương', N'Khám chuyên khoa', N'K_NGOAI'),
(N'PK301', N'Phòng khám Nhi 1', N'Khám nhi', N'K_NHI'),
(N'PK302', N'Phòng khám Nhi 2', N'Khám nhi', N'K_NHI'),
(N'PK401', N'Phòng Cấp cứu 1', N'Cấp cứu', N'K_CAPCUU'),
(N'PK402', N'Phòng Cấp cứu 2', N'Cấp cứu', N'K_CAPCUU');


-- ============================================
-- 06. DU LIEU BANG BENH_NHAN
-- ============================================

INSERT INTO dbo.BENH_NHAN
(MaBN, HoTen, NgaySinh, GioiTinh, SoBHYT, SoDienThoai)
VALUES
(N'BN0001', N'Nguyễn Văn Hùng', N'1976-03-12', N'Nam', N'BHYT00000001', N'0912000001'),
(N'BN0002', N'Trần Thị Lan', N'2001-07-25', N'Nữ', N'BHYT00000002', N'0912000002'),
(N'BN0003', N'Lê Quốc Bảo', N'1995-11-08', N'Nam', N'BHYT00000003', N'0912000003'),
(N'BN0004', N'Phạm Thị Hoa', N'1988-02-17', N'Nữ', N'BHYT00000004', N'0912000004'),
(N'BN0005', N'Nguyễn Minh Khang', N'2018-06-20', N'Nam', N'BHYT00000005', N'0912000005'),
(N'BN0006', N'Đỗ Thị Mai', N'2004-09-14', N'Nữ', N'BHYT00000006', N'0912000006'),
(N'BN0007', N'Vũ Gia Huy', N'2019-12-01', N'Nam', N'BHYT00000007', N'0912000007'),
(N'BN0008', N'Hoàng Văn Đức', N'1968-04-05', N'Nam', N'BHYT00000008', N'0912000008'),
(N'BN0009', N'Bùi Thị Ngọc', N'1985-08-29', N'Nữ', N'BHYT00000009', N'0912000009'),
(N'BN0010', N'Nguyễn Thành Long', N'1999-01-16', N'Nam', N'BHYT00000010', N'0912000010'),
(N'BN0011', N'Trần Văn Hải', N'1983-05-22', N'Nam', N'BHYT00000011', N'0912000011'),
(N'BN0012', N'Lê Ngọc Anh', N'2017-10-10', N'Nữ', N'BHYT00000012', N'0912000012'),
(N'BN0013', N'Phạm Đức Anh', N'2000-03-30', N'Nam', N'BHYT00000013', N'0912000013'),
(N'BN0014', N'Đặng Khánh Linh', N'2020-07-07', N'Nữ', N'BHYT00000014', N'0912000014'),
(N'BN0015', N'Nguyễn Văn Nam', N'1971-09-19', N'Nam', N'BHYT00000015', N'0912000015'),
(N'BN0016', N'Trịnh Thị Hạnh', N'1992-12-26', N'Nữ', NULL, N'0912000016'),
(N'BN0017', N'Đỗ Minh Tuấn', N'1980-04-11', N'Nam', N'BHYT00000017', N'0912000017'),
(N'BN0018', N'Vũ Thị Thu', N'1979-08-03', N'Nữ', N'BHYT00000018', N'0912000018'),
(N'BN0019', N'Hoàng Gia Bảo', N'2016-02-28', N'Nam', N'BHYT00000019', N'0912000019'),
(N'BN0020', N'Bùi Thu Trang', N'2001-11-15', N'Nữ', NULL, N'0912000020');


-- ============================================
-- 07. DU LIEU BANG KHAM_BENH
-- ============================================

INSERT INTO dbo.KHAM_BENH
(MaKham, MaBS, MaBN, MaPhong, NgayKham, ChanDoan, TienKham)
VALUES
(N'KB0001', N'NS001', N'BN0001', N'PK102', N'2026-10-01 08:10:00', N'Tăng huyết áp', 150000),
(N'KB0002', N'NS002', N'BN0002', N'PK101', N'2026-10-01 09:05:00', N'Viêm họng', 120000),
(N'KB0003', N'NS003', N'BN0003', N'PK201', N'2026-10-02 08:30:00', N'Viêm mô mềm', 150000),
(N'KB0004', N'NS004', N'BN0004', N'PK202', N'2026-10-02 10:15:00', N'Đau khớp gối', 180000),
(N'KB0005', N'NS005', N'BN0005', N'PK301', N'2026-10-03 08:20:00', N'Sốt siêu vi', 100000),
(N'KB0006', N'NS006', N'BN0006', N'PK401', N'2026-10-03 14:10:00', N'Mất nước nhẹ', 200000),
(N'KB0007', N'NS007', N'BN0007', N'PK302', N'2026-10-04 09:00:00', N'Viêm mũi dị ứng', 100000),
(N'KB0008', N'NS001', N'BN0008', N'PK102', N'2026-10-04 10:30:00', N'Tăng huyết áp', 150000),
(N'KB0009', N'NS002', N'BN0009', N'PK101', N'2026-10-05 08:15:00', N'Viêm dạ dày', 120000),
(N'KB0010', N'NS003', N'BN0010', N'PK201', N'2026-10-05 09:45:00', N'Viêm da nhẹ', 150000),
(N'KB0011', N'NS004', N'BN0011', N'PK202', N'2026-10-06 08:00:00', N'Đau cơ', 180000),
(N'KB0012', N'NS005', N'BN0012', N'PK301', N'2026-10-06 10:20:00', N'Thiếu vi chất', 100000),
(N'KB0013', N'NS006', N'BN0013', N'PK402', N'2026-10-07 14:00:00', N'Cơn hen nhẹ', 200000),
(N'KB0014', N'NS007', N'BN0014', N'PK302', N'2026-10-07 15:30:00', N'Ho khan', 100000),
(N'KB0015', N'NS001', N'BN0015', N'PK102', N'2026-10-08 08:30:00', N'Tăng huyết áp', 150000),
(N'KB0016', N'NS002', N'BN0016', N'PK101', N'2026-10-08 09:20:00', N'Rối loạn tiêu hóa', 120000),
(N'KB0017', N'NS003', N'BN0017', N'PK201', N'2026-10-09 08:45:00', N'Viêm da do nấm', 150000),
(N'KB0018', N'NS004', N'BN0018', N'PK202', N'2026-10-09 10:10:00', N'Đau xương khớp', 180000),
(N'KB0019', N'NS005', N'BN0019', N'PK301', N'2026-10-10 08:10:00', N'Sốt nhẹ', 100000),
(N'KB0020', N'NS006', N'BN0020', N'PK401', N'2026-10-10 13:30:00', N'Viêm đường hô hấp', 200000),
(N'KB0021', N'NS002', N'BN0010', N'PK101', N'2026-10-11 08:20:00', N'Khám sức khỏe định kỳ', 120000),
(N'KB0022', N'NS001', N'BN0008', N'PK102', N'2026-10-11 09:15:00', N'Tái khám tim mạch', 150000),
(N'KB0023', N'NS005', N'BN0005', N'PK301', N'2026-10-12 08:30:00', N'Tái khám nhi', 100000),
(N'KB0024', N'NS007', N'BN0007', N'PK302', N'2026-10-12 10:00:00', N'Tái khám dị ứng', 100000),
(N'KB0025', N'NS003', N'BN0017', N'PK201', N'2026-10-13 08:15:00', N'Tái khám ngoại khoa', 150000),
(N'KB0026', N'NS004', N'BN0018', N'PK202', N'2026-10-13 09:40:00', N'Kiểm tra khớp', 180000),
(N'KB0027', N'NS006', N'BN0020', N'PK402', N'2026-10-14 14:20:00', N'Theo dõi hô hấp', 200000),
(N'KB0028', N'NS002', N'BN0016', N'PK101', N'2026-10-14 15:10:00', N'Tư vấn sức khỏe', 120000),
(N'KB0029', N'NS005', N'BN0019', N'PK301', N'2026-10-15 08:30:00', N'Tái khám nhi', 100000),
(N'KB0030', N'NS001', N'BN0015', N'PK102', N'2026-10-15 09:50:00', N'Kiểm tra huyết áp', 150000);


-- ============================================
-- 08. DU LIEU BANG DON_THUOC
-- ============================================

INSERT INTO dbo.DON_THUOC
(MaDT, MaKham, NgayKeDon, GhiChu)
VALUES
(N'DT0001', N'KB0001', N'2026-10-01', N'Theo dõi huyết áp'),
(N'DT0002', N'KB0002', N'2026-10-01', N'Uống đủ nước'),
(N'DT0003', N'KB0003', N'2026-10-02', N'Theo dõi vùng da tổn thương'),
(N'DT0004', N'KB0004', N'2026-10-02', N'Hạn chế vận động mạnh'),
(N'DT0005', N'KB0005', N'2026-10-03', N'Nghỉ ngơi và theo dõi nhiệt độ'),
(N'DT0006', N'KB0006', N'2026-10-03', N'Theo dõi tình trạng mất nước'),
(N'DT0007', N'KB0007', N'2026-10-04', N'Tránh tác nhân gây dị ứng'),
(N'DT0008', N'KB0008', N'2026-10-04', N'Đo huyết áp định kỳ'),
(N'DT0009', N'KB0009', N'2026-10-05', N'Ăn uống điều độ'),
(N'DT0010', N'KB0010', N'2026-10-05', N'Giữ vệ sinh vùng da'),
(N'DT0011', N'KB0011', N'2026-10-06', N'Nghỉ ngơi và vận động phù hợp'),
(N'DT0012', N'KB0012', N'2026-10-06', N'Bổ sung dinh dưỡng hợp lý'),
(N'DT0013', N'KB0013', N'2026-10-07', N'Theo dõi triệu chứng hô hấp'),
(N'DT0014', N'KB0014', N'2026-10-07', N'Theo dõi tình trạng ho'),
(N'DT0015', N'KB0015', N'2026-10-08', N'Tái khám tim mạch'),
(N'DT0016', N'KB0016', N'2026-10-08', N'Ăn uống hợp vệ sinh'),
(N'DT0017', N'KB0017', N'2026-10-09', N'Giữ vùng da sạch và khô'),
(N'DT0018', N'KB0018', N'2026-10-09', N'Hạn chế mang vác nặng'),
(N'DT0019', N'KB0019', N'2026-10-10', N'Theo dõi nhiệt độ'),
(N'DT0020', N'KB0020', N'2026-10-10', N'Theo dõi tình trạng hô hấp');


-- ============================================
-- 09. DU LIEU BANG THUOC
-- ============================================

INSERT INTO dbo.THUOC
(MaThuoc, TenThuoc, DonViTinh, GiaNiemYet, SoLuongTon)
VALUES
(N'TH001', N'Paracetamol 500mg', N'Viên', 1500, 500),
(N'TH002', N'Amoxicillin 500mg', N'Viên', 3500, 300),
(N'TH003', N'Omeprazole 20mg', N'Viên', 2500, 250),
(N'TH004', N'Cetirizine 10mg', N'Viên', 1800, 350),
(N'TH005', N'Ibuprofen 400mg', N'Viên', 2200, 300),
(N'TH006', N'Vitamin C 500mg', N'Viên', 1200, 800),
(N'TH007', N'Oresol', N'Gói', 5000, 180),
(N'TH008', N'Azithromycin 250mg', N'Viên', 9500, 160),
(N'TH009', N'Loratadine 10mg', N'Viên', 2800, 200),
(N'TH010', N'Acetylcysteine 200mg', N'Gói', 4000, 210),
(N'TH011', N'Salbutamol 2mg', N'Viên', 2100, 200),
(N'TH012', N'Metformin 500mg', N'Viên', 1800, 400),
(N'TH013', N'Amlodipine 5mg', N'Viên', 2200, 350),
(N'TH014', N'Losartan 50mg', N'Viên', 3500, 300),
(N'TH015', N'Diclofenac 50mg', N'Viên', 2000, 260),
(N'TH016', N'Dextromethorphan 15mg', N'Viên', 2700, 300),
(N'TH017', N'Zinc 20mg', N'Viên', 1400, 220),
(N'TH018', N'Calcium D3', N'Viên', 4000, 330),
(N'TH019', N'Mupirocin 2%', N'Tuýp', 35000, 85),
(N'TH020', N'Clotrimazole 1%', N'Tuýp', 28000, 120);


-- ============================================
-- 10. DU LIEU BANG CHI_TIET_DON_THUOC
-- ============================================

INSERT INTO dbo.CHI_TIET_DON_THUOC
(MaDT, MaThuoc, SoLuong, CachDung, DonGiaBan)
VALUES
(N'DT0001', N'TH013', 14, N'Theo chỉ định bác sĩ', 2200),
(N'DT0001', N'TH014', 14, N'Theo chỉ định bác sĩ', 3500),

(N'DT0002', N'TH001', 10, N'Theo chỉ định bác sĩ', 1500),
(N'DT0002', N'TH010', 10, N'Theo chỉ định bác sĩ', 4000),

(N'DT0003', N'TH002', 10, N'Theo chỉ định bác sĩ', 3500),
(N'DT0003', N'TH019', 1, N'Dùng ngoài da theo chỉ định', 35000),

(N'DT0004', N'TH005', 10, N'Theo chỉ định bác sĩ', 2200),
(N'DT0004', N'TH018', 20, N'Theo chỉ định bác sĩ', 4000),

(N'DT0005', N'TH001', 10, N'Theo chỉ định bác sĩ', 1500),
(N'DT0005', N'TH006', 10, N'Theo chỉ định bác sĩ', 1200),

(N'DT0006', N'TH007', 5, N'Theo chỉ định bác sĩ', 5000),
(N'DT0006', N'TH017', 10, N'Theo chỉ định bác sĩ', 1400),

(N'DT0007', N'TH004', 10, N'Theo chỉ định bác sĩ', 1800),
(N'DT0007', N'TH006', 10, N'Theo chỉ định bác sĩ', 1200),

(N'DT0008', N'TH013', 14, N'Theo chỉ định bác sĩ', 2200),
(N'DT0008', N'TH014', 14, N'Theo chỉ định bác sĩ', 3500),

(N'DT0009', N'TH003', 14, N'Theo chỉ định bác sĩ', 2500),
(N'DT0009', N'TH006', 10, N'Theo chỉ định bác sĩ', 1200),

(N'DT0010', N'TH019', 1, N'Dùng ngoài da theo chỉ định', 35000),
(N'DT0010', N'TH006', 10, N'Theo chỉ định bác sĩ', 1200),

(N'DT0011', N'TH015', 10, N'Theo chỉ định bác sĩ', 2000),
(N'DT0011', N'TH018', 20, N'Theo chỉ định bác sĩ', 4000),

(N'DT0012', N'TH017', 10, N'Theo chỉ định bác sĩ', 1400),
(N'DT0012', N'TH006', 10, N'Theo chỉ định bác sĩ', 1200),

(N'DT0013', N'TH011', 10, N'Theo chỉ định bác sĩ', 2100),
(N'DT0013', N'TH010', 10, N'Theo chỉ định bác sĩ', 4000),

(N'DT0014', N'TH016', 10, N'Theo chỉ định bác sĩ', 2700),
(N'DT0014', N'TH006', 10, N'Theo chỉ định bác sĩ', 1200),

(N'DT0015', N'TH013', 14, N'Theo chỉ định bác sĩ', 2200),
(N'DT0015', N'TH014', 14, N'Theo chỉ định bác sĩ', 3500),

(N'DT0016', N'TH007', 5, N'Theo chỉ định bác sĩ', 5000),
(N'DT0016', N'TH017', 10, N'Theo chỉ định bác sĩ', 1400),

(N'DT0017', N'TH020', 1, N'Dùng ngoài da theo chỉ định', 28000),
(N'DT0017', N'TH006', 10, N'Theo chỉ định bác sĩ', 1200),

(N'DT0018', N'TH005', 10, N'Theo chỉ định bác sĩ', 2200),
(N'DT0018', N'TH018', 20, N'Theo chỉ định bác sĩ', 4000),

(N'DT0019', N'TH001', 10, N'Theo chỉ định bác sĩ', 1500),
(N'DT0019', N'TH006', 10, N'Theo chỉ định bác sĩ', 1200),

(N'DT0020', N'TH010', 10, N'Theo chỉ định bác sĩ', 4000),
(N'DT0020', N'TH016', 10, N'Theo chỉ định bác sĩ', 2700);
