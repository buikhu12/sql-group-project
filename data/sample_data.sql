-- ========================================================
-- Script chèn dữ liệu mẫu (Sample Data DML)
-- ========================================================

-- Viết các câu lệnh INSERT INTO ở đây:



-- ============================================
-- BTL CO SO DU LIEU
-- HE THONG QUAN LY BENH VIEN
-- DU LIEU MAU CHO 10 BANG
-- ============================================

USE QuanLyBenhVien;

-- ============================================
-- 01. DU LIEU BANG KHOA
-- ============================================

INSERT INTO KHOA (MaKhoa, TenKhoa, ViTriTang)
VALUES
('K_NOI', 'Khoa Nội', 'Tầng 2'),
('K_NGOAI', 'Khoa Ngoại', 'Tầng 3'),
('K_NHI', 'Khoa Nhi', 'Tầng 4'),
('K_CAPCUU', 'Khoa Cấp cứu', 'Tầng 1'),
('K_DUOC', 'Khoa Dược', 'Tầng 1');


-- ============================================
-- 02. DU LIEU BANG NHAN_SU
-- ============================================

INSERT INTO NHAN_SU
(MaNS, HoTen, SoDienThoai, LuongCoBan, MaKhoa)
VALUES
('NS001', 'Nguyễn Văn An', '0901000001', 15000000, 'K_NOI'),
('NS002', 'Trần Thị Bình', '0901000002', 16000000, 'K_NOI'),
('NS003', 'Lê Minh Đức', '0901000003', 17000000, 'K_NGOAI'),
('NS004', 'Phạm Quốc Huy', '0901000004', 18000000, 'K_NGOAI'),
('NS005', 'Hoàng Thị Lan', '0901000005', 15500000, 'K_NHI'),
('NS006', 'Đỗ Văn Minh', '0901000006', 17500000, 'K_CAPCUU'),
('NS007', 'Vũ Thu Hà', '0901000007', 16500000, 'K_NHI'),
('NS008', 'Nguyễn Thị Mai', '0901000008', 8500000, 'K_NOI'),
('NS009', 'Trần Văn Nam', '0901000009', 9000000, 'K_NGOAI'),
('NS010', 'Lê Thị Hoa', '0901000010', 8200000, 'K_NHI'),
('NS011', 'Phạm Thị Hương', '0901000011', 9500000, 'K_CAPCUU'),
('NS012', 'Bùi Văn Long', '0901000012', 8800000, 'K_NOI');



-- ============================================
-- 03. DU LIEU BANG BAC_SI
-- ============================================

INSERT INTO BAC_SI
(MaNS, ChuyenKhoa, SoChungChiHanhNghe)
VALUES
('NS001', 'Tim mạch', 'CCHN001'),
('NS002', 'Nội tổng quát', 'CCHN002'),
('NS003', 'Ngoại tổng quát', 'CCHN003'),
('NS004', 'Chấn thương chỉnh hình', 'CCHN004'),
('NS005', 'Nhi khoa', 'CCHN005'),
('NS006', 'Hồi sức cấp cứu', 'CCHN006'),
('NS007', 'Nhi tổng quát', 'CCHN007');



-- ============================================
-- 04. DU LIEU BANG Y_TA
-- ============================================

INSERT INTO Y_TA
(MaNS, CaTruc, KhuVucPhuTrach)
VALUES
('NS008', 'Sáng', 'Khoa Nội'),
('NS009', 'Chiều', 'Khoa Ngoại'),
('NS010', 'Sáng', 'Khoa Nhi'),
('NS011', 'Đêm', 'Khoa Cấp cứu'),
('NS012', 'Chiều', 'Khoa Nội');



USE QuanLyBenhVien;

-- ============================================
-- 05. DU LIEU BANG PHONG_KHAM
-- ============================================

INSERT INTO PHONG_KHAM
(MaPhong, TenPhong, LoaiPhong, MaKhoa)
VALUES
('PK101', 'Phòng khám Nội tổng quát 1', 'Khám tổng quát', 'K_NOI'),
('PK102', 'Phòng khám Tim mạch', 'Khám chuyên khoa', 'K_NOI'),
('PK201', 'Phòng khám Ngoại tổng quát', 'Khám chuyên khoa', 'K_NGOAI'),
('PK202', 'Phòng khám Chấn thương', 'Khám chuyên khoa', 'K_NGOAI'),
('PK301', 'Phòng khám Nhi 1', 'Khám nhi', 'K_NHI'),
('PK302', 'Phòng khám Nhi 2', 'Khám nhi', 'K_NHI'),
('PK401', 'Phòng Cấp cứu 1', 'Cấp cứu', 'K_CAPCUU'),
('PK402', 'Phòng Cấp cứu 2', 'Cấp cứu', 'K_CAPCUU');


-- ============================================
-- 06. DU LIEU BANG BENH_NHAN
-- ============================================

INSERT INTO BENH_NHAN
(MaBN, HoTen, NgaySinh, GioiTinh, SoBHYT, SoDienThoai)
VALUES
('BN0001', 'Nguyễn Văn Hùng', '1976-03-12', 'Nam', 'BHYT00000001', '0912000001'),
('BN0002', 'Trần Thị Lan', '2001-07-25', 'Nữ', 'BHYT00000002', '0912000002'),
('BN0003', 'Lê Quốc Bảo', '1995-11-08', 'Nam', 'BHYT00000003', '0912000003'),
('BN0004', 'Phạm Thị Hoa', '1988-02-17', 'Nữ', 'BHYT00000004', '0912000004'),
('BN0005', 'Nguyễn Minh Khang', '2018-06-20', 'Nam', 'BHYT00000005', '0912000005'),
('BN0006', 'Đỗ Thị Mai', '2004-09-14', 'Nữ', 'BHYT00000006', '0912000006'),
('BN0007', 'Vũ Gia Huy', '2019-12-01', 'Nam', 'BHYT00000007', '0912000007'),
('BN0008', 'Hoàng Văn Đức', '1968-04-05', 'Nam', 'BHYT00000008', '0912000008'),
('BN0009', 'Bùi Thị Ngọc', '1985-08-29', 'Nữ', 'BHYT00000009', '0912000009'),
('BN0010', 'Nguyễn Thành Long', '1999-01-16', 'Nam', 'BHYT00000010', '0912000010'),
('BN0011', 'Trần Văn Hải', '1983-05-22', 'Nam', 'BHYT00000011', '0912000011'),
('BN0012', 'Lê Ngọc Anh', '2017-10-10', 'Nữ', 'BHYT00000012', '0912000012'),
('BN0013', 'Phạm Đức Anh', '2000-03-30', 'Nam', 'BHYT00000013', '0912000013'),
('BN0014', 'Đặng Khánh Linh', '2020-07-07', 'Nữ', 'BHYT00000014', '0912000014'),
('BN0015', 'Nguyễn Văn Nam', '1971-09-19', 'Nam', 'BHYT00000015', '0912000015'),
('BN0016', 'Trịnh Thị Hạnh', '1992-12-26', 'Nữ', NULL, '0912000016'),
('BN0017', 'Đỗ Minh Tuấn', '1980-04-11', 'Nam', 'BHYT00000017', '0912000017'),
('BN0018', 'Vũ Thị Thu', '1979-08-03', 'Nữ', 'BHYT00000018', '0912000018'),
('BN0019', 'Hoàng Gia Bảo', '2016-02-28', 'Nam', 'BHYT00000019', '0912000019'),
('BN0020', 'Bùi Thu Trang', '2001-11-15', 'Nữ', NULL, '0912000020');


-- ============================================
-- 07. DU LIEU BANG KHAM_BENH
-- ============================================

INSERT INTO KHAM_BENH
(MaKham, MaBS, MaBN, MaPhong, NgayKham, ChanDoan, TienKham)
VALUES
('KB0001', 'NS001', 'BN0001', 'PK102', '2026-10-01 08:10:00', 'Tăng huyết áp', 150000),
('KB0002', 'NS002', 'BN0002', 'PK101', '2026-10-01 09:05:00', 'Viêm họng', 120000),
('KB0003', 'NS003', 'BN0003', 'PK201', '2026-10-02 08:30:00', 'Viêm mô mềm', 150000),
('KB0004', 'NS004', 'BN0004', 'PK202', '2026-10-02 10:15:00', 'Đau khớp gối', 180000),
('KB0005', 'NS005', 'BN0005', 'PK301', '2026-10-03 08:20:00', 'Sốt siêu vi', 100000),
('KB0006', 'NS006', 'BN0006', 'PK401', '2026-10-03 14:10:00', 'Mất nước nhẹ', 200000),
('KB0007', 'NS007', 'BN0007', 'PK302', '2026-10-04 09:00:00', 'Viêm mũi dị ứng', 100000),
('KB0008', 'NS001', 'BN0008', 'PK102', '2026-10-04 10:30:00', 'Tăng huyết áp', 150000),
('KB0009', 'NS002', 'BN0009', 'PK101', '2026-10-05 08:15:00', 'Viêm dạ dày', 120000),
('KB0010', 'NS003', 'BN0010', 'PK201', '2026-10-05 09:45:00', 'Viêm da nhẹ', 150000),
('KB0011', 'NS004', 'BN0011', 'PK202', '2026-10-06 08:00:00', 'Đau cơ', 180000),
('KB0012', 'NS005', 'BN0012', 'PK301', '2026-10-06 10:20:00', 'Thiếu vi chất', 100000),
('KB0013', 'NS006', 'BN0013', 'PK402', '2026-10-07 14:00:00', 'Cơn hen nhẹ', 200000),
('KB0014', 'NS007', 'BN0014', 'PK302', '2026-10-07 15:30:00', 'Ho khan', 100000),
('KB0015', 'NS001', 'BN0015', 'PK102', '2026-10-08 08:30:00', 'Tăng huyết áp', 150000),
('KB0016', 'NS002', 'BN0016', 'PK101', '2026-10-08 09:20:00', 'Rối loạn tiêu hóa', 120000),
('KB0017', 'NS003', 'BN0017', 'PK201', '2026-10-09 08:45:00', 'Viêm da do nấm', 150000),
('KB0018', 'NS004', 'BN0018', 'PK202', '2026-10-09 10:10:00', 'Đau xương khớp', 180000),
('KB0019', 'NS005', 'BN0019', 'PK301', '2026-10-10 08:10:00', 'Sốt nhẹ', 100000),
('KB0020', 'NS006', 'BN0020', 'PK401', '2026-10-10 13:30:00', 'Viêm đường hô hấp', 200000),
('KB0021', 'NS002', 'BN0010', 'PK101', '2026-10-11 08:20:00', 'Khám sức khỏe định kỳ', 120000),
('KB0022', 'NS001', 'BN0008', 'PK102', '2026-10-11 09:15:00', 'Tái khám tim mạch', 150000),
('KB0023', 'NS005', 'BN0005', 'PK301', '2026-10-12 08:30:00', 'Tái khám nhi', 100000),
('KB0024', 'NS007', 'BN0007', 'PK302', '2026-10-12 10:00:00', 'Tái khám dị ứng', 100000),
('KB0025', 'NS003', 'BN0017', 'PK201', '2026-10-13 08:15:00', 'Tái khám ngoại khoa', 150000),
('KB0026', 'NS004', 'BN0018', 'PK202', '2026-10-13 09:40:00', 'Kiểm tra khớp', 180000),
('KB0027', 'NS006', 'BN0020', 'PK402', '2026-10-14 14:20:00', 'Theo dõi hô hấp', 200000),
('KB0028', 'NS002', 'BN0016', 'PK101', '2026-10-14 15:10:00', 'Tư vấn sức khỏe', 120000),
('KB0029', 'NS005', 'BN0019', 'PK301', '2026-10-15 08:30:00', 'Tái khám nhi', 100000),
('KB0030', 'NS001', 'BN0015', 'PK102', '2026-10-15 09:50:00', 'Kiểm tra huyết áp', 150000);


-- ============================================
-- 08. DU LIEU BANG DON_THUOC
-- ============================================

INSERT INTO DON_THUOC
(MaDT, MaKham, NgayKeDon, GhiChu)
VALUES
('DT0001', 'KB0001', '2026-10-01', 'Theo dõi huyết áp'),
('DT0002', 'KB0002', '2026-10-01', 'Uống đủ nước'),
('DT0003', 'KB0003', '2026-10-02', 'Theo dõi vùng da tổn thương'),
('DT0004', 'KB0004', '2026-10-02', 'Hạn chế vận động mạnh'),
('DT0005', 'KB0005', '2026-10-03', 'Nghỉ ngơi và theo dõi nhiệt độ'),
('DT0006', 'KB0006', '2026-10-03', 'Theo dõi tình trạng mất nước'),
('DT0007', 'KB0007', '2026-10-04', 'Tránh tác nhân gây dị ứng'),
('DT0008', 'KB0008', '2026-10-04', 'Đo huyết áp định kỳ'),
('DT0009', 'KB0009', '2026-10-05', 'Ăn uống điều độ'),
('DT0010', 'KB0010', '2026-10-05', 'Giữ vệ sinh vùng da'),
('DT0011', 'KB0011', '2026-10-06', 'Nghỉ ngơi và vận động phù hợp'),
('DT0012', 'KB0012', '2026-10-06', 'Bổ sung dinh dưỡng hợp lý'),
('DT0013', 'KB0013', '2026-10-07', 'Theo dõi triệu chứng hô hấp'),
('DT0014', 'KB0014', '2026-10-07', 'Theo dõi tình trạng ho'),
('DT0015', 'KB0015', '2026-10-08', 'Tái khám tim mạch'),
('DT0016', 'KB0016', '2026-10-08', 'Ăn uống hợp vệ sinh'),
('DT0017', 'KB0017', '2026-10-09', 'Giữ vùng da sạch và khô'),
('DT0018', 'KB0018', '2026-10-09', 'Hạn chế mang vác nặng'),
('DT0019', 'KB0019', '2026-10-10', 'Theo dõi nhiệt độ'),
('DT0020', 'KB0020', '2026-10-10', 'Theo dõi tình trạng hô hấp');


-- ============================================
-- 09. DU LIEU BANG THUOC
-- ============================================

INSERT INTO THUOC
(MaThuoc, TenThuoc, DonViTinh, GiaNiemYet, SoLuongTon)
VALUES
('TH001', 'Paracetamol 500mg', 'Viên', 1500, 500),
('TH002', 'Amoxicillin 500mg', 'Viên', 3500, 300),
('TH003', 'Omeprazole 20mg', 'Viên', 2500, 250),
('TH004', 'Cetirizine 10mg', 'Viên', 1800, 350),
('TH005', 'Ibuprofen 400mg', 'Viên', 2200, 300),
('TH006', 'Vitamin C 500mg', 'Viên', 1200, 800),
('TH007', 'Oresol', 'Gói', 5000, 180),
('TH008', 'Azithromycin 250mg', 'Viên', 9500, 160),
('TH009', 'Loratadine 10mg', 'Viên', 2800, 200),
('TH010', 'Acetylcysteine 200mg', 'Gói', 4000, 210),
('TH011', 'Salbutamol 2mg', 'Viên', 2100, 200),
('TH012', 'Metformin 500mg', 'Viên', 1800, 400),
('TH013', 'Amlodipine 5mg', 'Viên', 2200, 350),
('TH014', 'Losartan 50mg', 'Viên', 3500, 300),
('TH015', 'Diclofenac 50mg', 'Viên', 2000, 260),
('TH016', 'Dextromethorphan 15mg', 'Viên', 2700, 300),
('TH017', 'Zinc 20mg', 'Viên', 1400, 220),
('TH018', 'Calcium D3', 'Viên', 4000, 330),
('TH019', 'Mupirocin 2%', 'Tuýp', 35000, 85),
('TH020', 'Clotrimazole 1%', 'Tuýp', 28000, 120);


-- ============================================
-- 10. DU LIEU BANG CHI_TIET_DON_THUOC
-- ============================================

INSERT INTO CHI_TIET_DON_THUOC
(MaDT, MaThuoc, SoLuong, CachDung, DonGiaBan)
VALUES
('DT0001', 'TH013', 14, 'Theo chỉ định bác sĩ', 2200),
('DT0001', 'TH014', 14, 'Theo chỉ định bác sĩ', 3500),

('DT0002', 'TH001', 10, 'Theo chỉ định bác sĩ', 1500),
('DT0002', 'TH010', 10, 'Theo chỉ định bác sĩ', 4000),

('DT0003', 'TH002', 10, 'Theo chỉ định bác sĩ', 3500),
('DT0003', 'TH019', 1, 'Dùng ngoài da theo chỉ định', 35000),

('DT0004', 'TH005', 10, 'Theo chỉ định bác sĩ', 2200),
('DT0004', 'TH018', 20, 'Theo chỉ định bác sĩ', 4000),

('DT0005', 'TH001', 10, 'Theo chỉ định bác sĩ', 1500),
('DT0005', 'TH006', 10, 'Theo chỉ định bác sĩ', 1200),

('DT0006', 'TH007', 5, 'Theo chỉ định bác sĩ', 5000),
('DT0006', 'TH017', 10, 'Theo chỉ định bác sĩ', 1400),

('DT0007', 'TH004', 10, 'Theo chỉ định bác sĩ', 1800),
('DT0007', 'TH006', 10, 'Theo chỉ định bác sĩ', 1200),

('DT0008', 'TH013', 14, 'Theo chỉ định bác sĩ', 2200),
('DT0008', 'TH014', 14, 'Theo chỉ định bác sĩ', 3500),

('DT0009', 'TH003', 14, 'Theo chỉ định bác sĩ', 2500),
('DT0009', 'TH006', 10, 'Theo chỉ định bác sĩ', 1200),

('DT0010', 'TH019', 1, 'Dùng ngoài da theo chỉ định', 35000),
('DT0010', 'TH006', 10, 'Theo chỉ định bác sĩ', 1200),

('DT0011', 'TH015', 10, 'Theo chỉ định bác sĩ', 2000),
('DT0011', 'TH018', 20, 'Theo chỉ định bác sĩ', 4000),

('DT0012', 'TH017', 10, 'Theo chỉ định bác sĩ', 1400),
('DT0012', 'TH006', 10, 'Theo chỉ định bác sĩ', 1200),

('DT0013', 'TH011', 10, 'Theo chỉ định bác sĩ', 2100),
('DT0013', 'TH010', 10, 'Theo chỉ định bác sĩ', 4000),

('DT0014', 'TH016', 10, 'Theo chỉ định bác sĩ', 2700),
('DT0014', 'TH006', 10, 'Theo chỉ định bác sĩ', 1200),

('DT0015', 'TH013', 14, 'Theo chỉ định bác sĩ', 2200),
('DT0015', 'TH014', 14, 'Theo chỉ định bác sĩ', 3500),

('DT0016', 'TH007', 5, 'Theo chỉ định bác sĩ', 5000),
('DT0016', 'TH017', 10, 'Theo chỉ định bác sĩ', 1400),

('DT0017', 'TH020', 1, 'Dùng ngoài da theo chỉ định', 28000),
('DT0017', 'TH006', 10, 'Theo chỉ định bác sĩ', 1200),

('DT0018', 'TH005', 10, 'Theo chỉ định bác sĩ', 2200),
('DT0018', 'TH018', 20, 'Theo chỉ định bác sĩ', 4000),

('DT0019', 'TH001', 10, 'Theo chỉ định bác sĩ', 1500),
('DT0019', 'TH006', 10, 'Theo chỉ định bác sĩ', 1200),

('DT0020', 'TH010', 10, 'Theo chỉ định bác sĩ', 4000),
('DT0020', 'TH016', 10, 'Theo chỉ định bác sĩ', 2700);
