INSERT INTO BENH_VIEN (MaBV, TenBV, DiaChi) VALUES
('BV01', N'Bệnh viện Đa khoa Trung Ương', N'123 Đường Nguyễn Huệ, Quận 1, TP.HCM'),
('BV02', N'Bệnh viện Chợ Rẫy', N'201B Nguyễn Chí Thanh, Phường 12, Quận 5, TP.HCM'),
('BV03', N'Bệnh viện Bạch Mai', N'78 Giải Phóng, Phương Mai, Đống Đa, Hà Nội'),
('BV04', N'Bệnh viện Việt Đức', N'40 Tràng Thi, Hoàn Kiếm, Hà Nội'),
('BV05', N'Bệnh viện Nhi Đồng 1', N'341 Sư Vạn Hạnh, Phường 10, Quận 10, TP.HCM'),
('BV06', N'Bệnh viện Từ Dũ', N'284 Cống Quỳnh, Phường Phạm Ngũ Lão, Quận 1, TP.HCM'),
('BV07', N'Bệnh viện Nhân dân 115', N'527 Sư Vạn Hạnh, Phường 12, Quận 10, TP.HCM'),
('BV08', N'Bệnh viện Đại học Y Dược TP.HCM', N'215 Hồng Bàng, Phường 11, Quận 5, TP.HCM'),
('BV09', N'Bệnh viện K', N'30 Phố Cầu Bươu, Tân Triều, Thanh Trì, Hà Nội'),
('BV10', N'Bệnh viện Mắt Trung Ương', N'85 Bà Triệu, Nguyễn Du, Hai Bà Trưng, Hà Nội'),
('BV11', N'Bệnh viện Tai Mũi Họng Trung Ương', N'78 Giải Phóng, Phương Mai, Đống Đa, Hà Nội'),
('BV12', N'Bệnh viện Phổi Trung Ương', N'463 Hoàng Hoa Thám, Ba Đình, Hà Nội'),
('BV13', N'Bệnh viện Tim Hà Nội', N'92 Trần Hưng Đạo, Hoàn Kiếm, Hà Nội'),
('BV14', N'Bệnh viện Đa khoa Tâm Anh', N'2B Phổ Quang, Phường 2, Tân Bình, TP.HCM'),
('BV15', N'Bệnh viện Đa khoa Hoàn Mỹ', N'124 Trần Hưng Đạo, Ninh Kiều, Cần Thơ');
GO

INSERT INTO KHOA (MaKhoa, TenKhoa, MaBV) VALUES
('K01', N'Khoa Khám bệnh', 'BV01'),
('K02', N'Khoa Nội tổng hợp', 'BV01'),
('K03', N'Khoa Ngoại tổng quát', 'BV02'),
('K04', N'Khoa Cấp cứu', 'BV02'),
('K05', N'Khoa Nhi', 'BV05'),
('K06', N'Khoa Phụ sản', 'BV06'),
('K07', N'Khoa Tim mạch', 'BV08'),
('K08', N'Khoa Mắt', 'BV10'),
('K09', N'Khoa Tai Mũi Họng', 'BV11'),
('K10', N'Khoa Ung bướu', 'BV09'),
('K11', N'Khoa Chẩn đoán hình ảnh', 'BV01'),
('K12', N'Khoa Xét nghiệm', 'BV01'),
('K13', N'Khoa Y học cổ truyền', 'BV07'),
('K14', N'Khoa Răng Hàm Mặt', 'BV08'),
('K15', N'Khoa Da liễu', 'BV03');
GO

INSERT INTO PHONG_KHAM (MaPK, TenPK, MaKhoa) VALUES
('PK101', N'Phòng khám Nội 1', 'K02'),
('PK102', N'Phòng khám Nội 2', 'K02'),
('PK201', N'Phòng khám Ngoại tổng hợp', 'K03'),
('PK301', N'Phòng khám Cấp cứu A', 'K04'),
('PK302', N'Phòng khám Cấp cứu B', 'K04'),
('PK401', N'Phòng khám Nhi chất lượng cao', 'K05'),
('PK501', N'Phòng khám Sản phụ khoa', 'K06'),
('PK601', N'Phòng khám Tim mạch', 'K07'),
('PK701', N'Phòng khám Mắt kỹ thuật cao', 'K08'),
('PK801', N'Phòng khám Tai Mũi Họng', 'K09'),
('PK901', N'Phòng khám Ung bướu', 'K10'),
('PK1001', N'Phòng Siêu âm - X-Quang', 'K11'),
('PK1101', N'Phòng lấy mẫu xét nghiệm', 'K12'),
('PK1201', N'Phòng khám Răng Hàm Mặt', 'K14'),
('PK1301', N'Phòng khám Da liễu', 'K15');
GO

INSERT INTO BENH_NHAN (MaBN, HoTen, NgaySinh, GioiTinh, DiaChi, SoDienThoai) VALUES
('BN01', N'Nguyễn Văn An', '1985-05-12', N'Nam', N'Hà Nội', '0901112233'),
('BN02', N'Trần Thị Bình', '1990-08-20', N'Nữ', N'Hải Phòng', '0912223344'),
('BN03', N'Lê Hoàng Cường', '1975-02-15', N'Nam', N'Đà Nẵng', '0983334455'),
('BN04', N'Phạm Thị Dung', '2000-11-05', N'Nữ', N'TP.HCM', '0974445566'),
('BN05', N'Hoàng Văn Em', '1962-12-30', N'Nam', N'Cần Thơ', '0935556677'),
('BN06', N'Vũ Thị Phương', '1995-03-22', N'Nữ', N'Nam Định', '0946667788'),
('BN07', N'Bùi Văn Giáp', '1988-07-14', N'Nam', N'Nghệ An', '0927778899'),
('BN08', N'Đặng Thị Hoa', '2012-09-09', N'Nữ', N'Bình Dương', '0968889900'),
('BN09', N'Ngô Văn Inh', '2005-04-18', N'Nam', N'Đồng Nai', '0909990011'),
('BN10', N'Dương Thị Kim', '1955-10-01', N'Nữ', N'Hà Nội', '0910001122'),
('BN11', N'Lý Văn Long', '1992-06-25', N'Nam', N'Quảng Ninh', '0981112233'),
('BN12', N'Hồ Thị Mai', '1983-01-19', N'Nữ', N'Thanh Hóa', '0972223344'),
('BN13', N'Đỗ Văn Nam', '1998-08-11', N'Nam', N'Hưng Yên', '0933334455'),
('BN14', N'Tạ Thị Oanh', '2003-12-25', N'Nữ', N'Bắc Ninh', '0944445566'),
('BN15', N'Mai Văn Phúc', '1970-04-30', N'Nam', N'Vĩnh Phúc', '0925556677');
GO

INSERT INTO THUOC (MaThuoc, TenThuoc, DonGia, DonViTinh) VALUES
('T01', N'Paracetamol 500mg', 500.00, N'Viên'),
('T02', N'Amoxicillin 500mg', 2000.00, N'Viên'),
('T03', N'Ibuprofen 400mg', 1200.00, N'Viên'),
('T04', N'Omeprazol 20mg', 3000.00, N'Viên'),
('T05', N'Vitamin C 500mg', 300.00, N'Viên'),
('T06', N'Aspirin 81mg', 1000.00, N'Viên'),
('T07', N'Cefuroxim 500mg', 5000.00, N'Viên'),
('T08', N'Cetirizin 10mg', 800.00, N'Viên'),
('T09', N'Berberin', 400.00, N'Viên'),
('T10', N'Siro Ho Acemol', 35000.00, N'Chai'),
('T11', N'Natri Clorid 0.9%', 10000.00, N'Chai'),
('T12', N'Insulin Injection', 150000.00, N'Lọ'),
('T13', N'Salbutamol 4mg', 600.00, N'Viên'),
('T14', N'Glucophage 850mg', 2500.00, N'Viên'),
('T15', N'Smecta', 4000.00, N'Gói');
GO

INSERT INTO XET_NGHIEM (MaXN, TenXN, ChiPhi) VALUES
('XN01', N'Xét nghiệm máu tổng quát', 150000.00),
('XN02', N'Đường huyết (Glucose)', 50000.00),
('XN03', N'Cholesterol toàn phần', 70000.00),
('XN04', N'Men gan (AST, ALT)', 120000.00),
('XN05', N'Chức năng thận (Ure, Creatinin)', 90000.00),
('XN06', N'Tổng phân tích nước tiểu', 60000.00),
('XN07', N'Điện giải đồ', 100000.00),
('XN08', N'Test nhanh SARS-CoV-2', 80000.00),
('XN09', N'Siêu âm tổng quát ổ bụng', 200000.00),
('XN10', N'Chụp X-Quang Phổi thẳng', 180000.00),
('XN11', N'Điện tâm đồ (ECG)', 120000.00),
('XN12', N'Siêu âm tim', 350000.00),
('XN13', N'Nội soi dạ dày', 500000.00),
('XN14', N'Chụp cộng hưởng từ (MRI)', 2500000.00),
('XN15', N'Chụp cắt lớp vi tính (CT Scan)', 1500000.00);
GO

INSERT INTO BAC_SI (MaBS, HoTen, ChuyenKhoa, SoDienThoai, MaKhoa) VALUES
('BS01', N'PGS.TS Nguyễn Văn Khoa', N'Nội tổng hợp', '0911122334', 'K02'),
('BS02', N'TS.BS Trần Thị Thảo', N'Nội tiết', '0922233445', 'K02'),
('BS03', N'BS.CKI Lê Văn Hùng', N'Ngoại tổng quát', '0933344556', 'K03'),
('BS04', N'ThS.BS Phạm Minh Tuấn', N'Cấp cứu', '0944455667', 'K04'),
('BS05', N'BS.CKII Hoàng Thị Lan', N'Nhi khoa', '0955566778', 'K05'),
('BS06', N'PGS.TS Vũ Văn Minh', N'Sản phụ khoa', '0966677889', 'K06'),
('BS07', N'TS.BS Bùi Quốc Huy', N'Tim mạch', '0977788990', 'K07'),
('BS08', N'BS.CKI Đặng Văn Hùng', N'Mắt', '0988899001', 'K08'),
('BS09', N'ThS.BS Ngô Thị Mai', N'Tai Mũi Họng', '0999001122', 'K09'),
('BS10', N'PGS.TS Dương Công Thành', N'Ung bướu', '0900112233', 'K10'),
('BS11', N'BS.CKI Lý Văn Nam', N'Chẩn đoán hình ảnh', '0911223344', 'K11'),
('BS12', N'BS.CKI Hồ Thị Hương', N'Xét nghiệm', '0922334455', 'K12'),
('BS13', N'ThS.BS Đỗ Văn Phúc', N'Y học cổ truyền', '0933445566', 'K13'),
('BS14', N'BS.CKI Tạ Minh Tâm', N'Răng Hàm Mặt', '0944556677', 'K14'),
('BS15', N'TS.BS Mai Văn Đức', N'Da liễu', '0955667788', 'K15');
GO

INSERT INTO Y_TA (MaYT, HoTen, SoDienThoai) VALUES
('YT01', N'Nguyễn Thị Hồng', '0912345678'),
('YT02', N'Trần Văn Nam', '0923456789'),
('YT03', N'Lê Thị Ngọc', '0934567890'),
('YT04', N'Phạm Văn Bình', '0945678901'),
('YT05', N'Hoàng Thị Dung', '0956789012'),
('YT06', N'Vũ Văn Hải', '0967890123'),
('YT07', N'Bùi Thị Hoa', '0978901234'),
('YT08', N'Đặng Văn Khoa', '0989012345'),
('YT09', N'Ngô Thị Lan', '0990123456'),
('YT10', N'Dương Văn Minh', '0901234567'),
('YT11', N'Lý Thị Nga', '0912345670'),
('YT12', N'Hồ Văn Phúc', '0923456701'),
('YT13', N'Đỗ Thị Quỳnh', '0934567012'),
('YT14', N'Tạ Văn Sơn', '0945670123'),
('YT15', N'Mai Thị Thủy', '0956701234');
GO

INSERT INTO GIUONG_BENH (MaGiuong, TrangThai, MaBN) VALUES
('GB01', N'Đang sử dụng', 'BN01'),
('GB02', N'Đang sử dụng', 'BN03'),
('GB03', N'Đang sử dụng', 'BN05'),
('GB04', N'Đang sử dụng', 'BN08'),
('GB05', N'Đang sử dụng', 'BN10'),
('GB06', N'Trống', NULL),
('GB07', N'Trống', NULL),
('GB08', N'Trống', NULL),
('GB09', N'Trống', NULL),
('GB10', N'Trống', NULL),
('GB11', N'Bảo trì', NULL),
('GB12', N'Đang khử khuẩn', NULL),
('GB13', N'Trống', NULL),
('GB14', N'Đang sử dụng', 'BN12'),
('GB15', N'Trống', NULL);
GO

INSERT INTO LICH_LAM_VIEC (MaLich, NgayLamViec, CaLamViec, MaBS) VALUES
('L01', '2026-03-01', N'Ca Sáng', 'BS01'),
('L02', '2026-03-01', N'Ca Chiều', 'BS02'),
('L03', '2026-03-01', N'Ca Trực Đêm', 'BS04'),
('L04', '2026-03-02', N'Ca Sáng', 'BS03'),
('L05', '2026-03-02', N'Ca Chiều', 'BS05'),
('L06', '2026-03-02', N'Ca Trực Đêm', 'BS06'),
('L07', '2026-03-03', N'Ca Sáng', 'BS07'),
('L08', '2026-03-03', N'Ca Chiều', 'BS08'),
('L09', '2026-03-03', N'Ca Trực Đêm', 'BS09'),
('L10', '2026-03-04', N'Ca Sáng', 'BS10'),
('L11', '2026-03-04', N'Ca Chiều', 'BS11'),
('L12', '2026-03-04', N'Ca Trực Đêm', 'BS12'),
('L13', '2026-03-05', N'Ca Sáng', 'BS13'),
('L14', '2026-03-05', N'Ca Chiều', 'BS14'),
('L15', '2026-03-05', N'Ca Trực Đêm', 'BS15');
GO

INSERT INTO KHAM_BENH (MaLanKham, MaBN, MaBS, NgayKham, TrieuChung, ChanDoan) VALUES
('LK01', 'BN01', 'BS01', '2026-03-01 08:30:00', N'Sốt, ho, đau họng', N'Viêm họng cấp'),
('LK02', 'BN02', 'BS02', '2026-03-01 09:15:00', N'Mệt mỏi, khát nước nhiều', N'Đái tháo đường type 2'),
('LK03', 'BN03', 'BS03', '2026-03-01 10:00:00', N'Đau nhói vùng hố chậu phải', N'Viêm ruột thừa cấp'),
('LK04', 'BN04', 'BS04', '2026-03-01 11:00:00', N'Khó thở, tức ngực sau va chạm', N'Chấn thương ngực kín'),
('LK05', 'BN05', 'BS05', '2026-03-02 08:00:00', N'Sốt cao, co giật nhẹ', N'Sốt cao co giật / Viêm amidan'),
('LK06', 'BN06', 'BS06', '2026-03-02 08:45:00', N'Đau bụng âm ỉ, chậm kinh', N'Thai nghén bình thường 8 tuần'),
('LK07', 'BN07', 'BS07', '2026-03-02 09:30:00', N'Đau tức ngực trái lan ra tay', N'Thiếu máu cơ tim cục bộ'),
('LK08', 'BN08', 'BS08', '2026-03-02 10:15:00', N'Mờ mắt, mỏi mắt khi nhìn xa', N'Cận thị học đường'),
('LK09', 'BN09', 'BS09', '2026-03-03 08:00:00', N'Ù tai, đau nhức tai phải', N'Viêm tai giữa cấp'),
('LK10', 'BN10', 'BS10', '2026-03-03 08:30:00', N'Sụt cân không rõ nguyên nhân', N'Theo dõi u xơ tuyến giáp'),
('LK11', 'BN11', 'BS11', '2026-03-03 09:00:00', N'Đau lưng dữ dội sau khi bê nặng', N'Thoát vị đĩa đệm cột sống thắt lưng'),
('LK12', 'BN12', 'BS12', '2026-03-03 09:30:00', N'Sốt xuất huyết ngày thứ 3', N'Theo dõi sốt xuất huyết Dengue'),
('LK13', 'BN13', 'BS13', '2026-03-04 08:00:00', N'Đau mỏi vai gáy, mất ngủ', N'Hội chứng cổ vai gáy'),
('LK14', 'BN14', 'BS14', '2026-03-04 08:30:00', N'Đau nhức răng số 8 hàm dưới', N'Viêm lợi trùm răng khôn'),
('LK15', 'BN15', 'BS15', '2026-03-04 09:00:00', N'Ngứa da, nổi mẩn đỏ từng mảng', N'Mày đay cấp tính');
GO

INSERT INTO DON_THUOC (MaDonThuoc, MaLanKham, NgayLap) VALUES
('DT01', 'LK01', '2026-03-01 09:00:00'),
('DT02', 'LK02', '2026-03-01 09:45:00'),
('DT03', 'LK03', '2026-03-01 10:30:00'),
('DT04', 'LK04', '2026-03-01 11:30:00'),
('DT05', 'LK05', '2026-03-02 08:30:00'),
('DT06', 'LK06', '2026-03-02 09:15:00'),
('DT07', 'LK07', '2026-03-02 10:00:00'),
('DT08', 'LK08', '2026-03-02 10:45:00'),
('DT09', 'LK09', '2026-03-03 08:30:00'),
('DT10', 'LK10', '2026-03-03 09:00:00'),
('DT11', 'LK11', '2026-03-03 09:30:00'),
('DT12', 'LK12', '2026-03-03 10:00:00'),
('DT13', 'LK13', '2026-03-04 08:30:00'),
('DT14', 'LK14', '2026-03-04 09:00:00'),
('DT15', 'LK15', '2026-03-04 09:30:00');
GO

INSERT INTO CHI_TIET_DON_THUOC (MaDonThuoc, MaThuoc, SoLuong, CachDung) VALUES
('DT01', 'T01', 20, N'Ngày uống 2 lần, mỗi lần 1 viên sau ăn'),
('DT01', 'T05', 10, N'Ngày uống 1 viên sủi pha loãng'),
('DT02', 'T04', 30, N'Uống trước ăn sáng 30 phút'),
('DT02', 'T14', 60, N'Uống trong bữa ăn'),
('DT03', 'T02', 20, N'Uống theo chỉ định sau phẫu thuật'),
('DT04', 'T03', 15, N'Uống khi đau, cách nhau ít nhất 6 tiếng'),
('DT05', 'T01', 10, N'Uống khi sốt trên 38.5 độ'),
('DT05', 'T10', 1, N'Uống ngày 3 lần, mỗi lần 10ml'),
('DT06', 'T05', 30, N'Bổ sung vitamin hàng ngày'),
('DT07', 'T06', 30, N'Uống 1 viên sau ăn sáng'),
('DT08', 'T11', 2, N'Dùng để nhỏ mắt hàng ngày'),
('DT09', 'T02', 14, N'Uống sáng 1 viên, chiều 1 viên'),
('DT10', 'T05', 30, N'Uống tăng cường sức đề kháng'),
('DT11', 'T03', 20, N'Uống sau ăn no để giảm đau lưng'),
('DT12', 'T01', 15, N'Uống khi sốt, kết hợp bù điện giải Oresol'),
('DT13', 'T03', 10, N'Uống khi đau cơ, xương khớp'),
('DT14', 'T02', 10, N'Uống kháng sinh chống bội nhiễm'),
('DT15', 'T08', 20, N'Uống buổi tối trước khi đi ngủ');
GO
