-- ============================================================
-- DU LIEU MAU QUAN LY BENH VIEN - SQL SERVER
-- Ban moi: moi dong INSERT chi them mot ban ghi de tranh loi dau phay
-- Moi bang co 10-20 ban ghi, cac khoa ngoai da duoc doi chieu
-- Can chay sau khi da tao cac bang theo script DDL tuong ung.
-- File nay xoa du lieu mau cu truoc khi chen lai.
-- ============================================================

USE QuanLyBenhVien;
GO

SET XACT_ABORT ON;
BEGIN TRY
    BEGIN TRANSACTION;

    -- Xoa du lieu theo thu tu tu bang con den bang cha
    DELETE FROM ThucHienXetNghiem;
    DELETE FROM LanHenXetNghiem;
    DELETE FROM ChiTietDonThuoc;
    DELETE FROM ChiTietHen;
    DELETE FROM PhieuChamSoc;
    DELETE FROM DonThuoc;
    DELETE FROM LichLamViec;
    DELETE FROM LanHenKham;
    DELETE FROM BacSi;
    DELETE FROM YTa;
    DELETE FROM PhongKham;
    DELETE FROM GiuongBenh;
    DELETE FROM XetNghiem;
    DELETE FROM Thuoc;
    DELETE FROM BenhNhan;
    DELETE FROM NhanVienYTe;
    DELETE FROM Khoa;
    DELETE FROM BenhVien;

-- 1. BenhVien: 10 ban ghi
INSERT INTO BenhVien (MaBV, TenBV, DiaChi) VALUES ('BV01', N'Bệnh viện Trung ương', N'Hà Nội');
INSERT INTO BenhVien (MaBV, TenBV, DiaChi) VALUES ('BV02', N'Bệnh viện Thành phố', N'Hồ Chí Minh');
INSERT INTO BenhVien (MaBV, TenBV, DiaChi) VALUES ('BV03', N'Bệnh viện Đa khoa Đông Đô', N'Hà Nội');
INSERT INTO BenhVien (MaBV, TenBV, DiaChi) VALUES ('BV04', N'Bệnh viện Hữu nghị', N'Đà Nẵng');
INSERT INTO BenhVien (MaBV, TenBV, DiaChi) VALUES ('BV05', N'Bệnh viện An Bình', N'Cần Thơ');
INSERT INTO BenhVien (MaBV, TenBV, DiaChi) VALUES ('BV06', N'Bệnh viện Minh Tâm', N'Hải Phòng');
INSERT INTO BenhVien (MaBV, TenBV, DiaChi) VALUES ('BV07', N'Bệnh viện Phương Nam', N'Bình Dương');
INSERT INTO BenhVien (MaBV, TenBV, DiaChi) VALUES ('BV08', N'Bệnh viện Hòa Bình', N'Nghệ An');
INSERT INTO BenhVien (MaBV, TenBV, DiaChi) VALUES ('BV09', N'Bệnh viện Đại Phúc', N'Huế');
INSERT INTO BenhVien (MaBV, TenBV, DiaChi) VALUES ('BV10', N'Bệnh viện Tân An', N'Long An');

-- 2. Khoa: 15 ban ghi
INSERT INTO Khoa (MaKhoa, TenKhoa, MaBV) VALUES ('K01', N'Nội tổng hợp', 'BV01');
INSERT INTO Khoa (MaKhoa, TenKhoa, MaBV) VALUES ('K02', N'Ngoại khoa', 'BV02');
INSERT INTO Khoa (MaKhoa, TenKhoa, MaBV) VALUES ('K03', N'Nhi khoa', 'BV03');
INSERT INTO Khoa (MaKhoa, TenKhoa, MaBV) VALUES ('K04', N'Tim mạch', 'BV04');
INSERT INTO Khoa (MaKhoa, TenKhoa, MaBV) VALUES ('K05', N'Thần kinh', 'BV05');
INSERT INTO Khoa (MaKhoa, TenKhoa, MaBV) VALUES ('K06', N'Sản phụ khoa', 'BV06');
INSERT INTO Khoa (MaKhoa, TenKhoa, MaBV) VALUES ('K07', N'Tai mũi họng', 'BV07');
INSERT INTO Khoa (MaKhoa, TenKhoa, MaBV) VALUES ('K08', N'Mắt', 'BV08');
INSERT INTO Khoa (MaKhoa, TenKhoa, MaBV) VALUES ('K09', N'Da liễu', 'BV09');
INSERT INTO Khoa (MaKhoa, TenKhoa, MaBV) VALUES ('K10', N'Ung bướu', 'BV10');
INSERT INTO Khoa (MaKhoa, TenKhoa, MaBV) VALUES ('K11', N'Hồi sức cấp cứu', 'BV01');
INSERT INTO Khoa (MaKhoa, TenKhoa, MaBV) VALUES ('K12', N'Chẩn đoán hình ảnh', 'BV02');
INSERT INTO Khoa (MaKhoa, TenKhoa, MaBV) VALUES ('K13', N'Xét nghiệm', 'BV03');
INSERT INTO Khoa (MaKhoa, TenKhoa, MaBV) VALUES ('K14', N'Phục hồi chức năng', 'BV04');
INSERT INTO Khoa (MaKhoa, TenKhoa, MaBV) VALUES ('K15', N'Răng hàm mặt', 'BV05');

-- 3. PhongKham: 15 ban ghi
INSERT INTO PhongKham (MaPK, TenPK, MaKhoa) VALUES ('PK01', N'Phòng khám Nội 1', 'K01');
INSERT INTO PhongKham (MaPK, TenPK, MaKhoa) VALUES ('PK02', N'Phòng khám Ngoại 1', 'K02');
INSERT INTO PhongKham (MaPK, TenPK, MaKhoa) VALUES ('PK03', N'Phòng khám Nhi', 'K03');
INSERT INTO PhongKham (MaPK, TenPK, MaKhoa) VALUES ('PK04', N'Phòng khám Tim mạch', 'K04');
INSERT INTO PhongKham (MaPK, TenPK, MaKhoa) VALUES ('PK05', N'Phòng khám Thần kinh', 'K05');
INSERT INTO PhongKham (MaPK, TenPK, MaKhoa) VALUES ('PK06', N'Phòng khám Sản', 'K06');
INSERT INTO PhongKham (MaPK, TenPK, MaKhoa) VALUES ('PK07', N'Phòng khám Tai mũi họng', 'K07');
INSERT INTO PhongKham (MaPK, TenPK, MaKhoa) VALUES ('PK08', N'Phòng khám Mắt', 'K08');
INSERT INTO PhongKham (MaPK, TenPK, MaKhoa) VALUES ('PK09', N'Phòng khám Da liễu', 'K09');
INSERT INTO PhongKham (MaPK, TenPK, MaKhoa) VALUES ('PK10', N'Phòng khám Ung bướu', 'K10');
INSERT INTO PhongKham (MaPK, TenPK, MaKhoa) VALUES ('PK11', N'Phòng cấp cứu', 'K11');
INSERT INTO PhongKham (MaPK, TenPK, MaKhoa) VALUES ('PK12', N'Phòng chẩn đoán hình ảnh', 'K12');
INSERT INTO PhongKham (MaPK, TenPK, MaKhoa) VALUES ('PK13', N'Phòng xét nghiệm', 'K13');
INSERT INTO PhongKham (MaPK, TenPK, MaKhoa) VALUES ('PK14', N'Phòng phục hồi chức năng', 'K14');
INSERT INTO PhongKham (MaPK, TenPK, MaKhoa) VALUES ('PK15', N'Phòng Răng hàm mặt', 'K15');

-- 4. GiuongBenh: 15 ban ghi
INSERT INTO GiuongBenh (MaGiuong, TrangThai, MaKhoa) VALUES ('GB01', N'Trống', 'K01');
INSERT INTO GiuongBenh (MaGiuong, TrangThai, MaKhoa) VALUES ('GB02', N'Đang sử dụng', 'K02');
INSERT INTO GiuongBenh (MaGiuong, TrangThai, MaKhoa) VALUES ('GB03', N'Đang vệ sinh', 'K03');
INSERT INTO GiuongBenh (MaGiuong, TrangThai, MaKhoa) VALUES ('GB04', N'Trống', 'K04');
INSERT INTO GiuongBenh (MaGiuong, TrangThai, MaKhoa) VALUES ('GB05', N'Đang sử dụng', 'K05');
INSERT INTO GiuongBenh (MaGiuong, TrangThai, MaKhoa) VALUES ('GB06', N'Trống', 'K06');
INSERT INTO GiuongBenh (MaGiuong, TrangThai, MaKhoa) VALUES ('GB07', N'Đang sử dụng', 'K07');
INSERT INTO GiuongBenh (MaGiuong, TrangThai, MaKhoa) VALUES ('GB08', N'Đang vệ sinh', 'K08');
INSERT INTO GiuongBenh (MaGiuong, TrangThai, MaKhoa) VALUES ('GB09', N'Trống', 'K09');
INSERT INTO GiuongBenh (MaGiuong, TrangThai, MaKhoa) VALUES ('GB10', N'Đang sử dụng', 'K10');
INSERT INTO GiuongBenh (MaGiuong, TrangThai, MaKhoa) VALUES ('GB11', N'Trống', 'K11');
INSERT INTO GiuongBenh (MaGiuong, TrangThai, MaKhoa) VALUES ('GB12', N'Đang sử dụng', 'K12');
INSERT INTO GiuongBenh (MaGiuong, TrangThai, MaKhoa) VALUES ('GB13', N'Đang vệ sinh', 'K13');
INSERT INTO GiuongBenh (MaGiuong, TrangThai, MaKhoa) VALUES ('GB14', N'Trống', 'K14');
INSERT INTO GiuongBenh (MaGiuong, TrangThai, MaKhoa) VALUES ('GB15', N'Đang sử dụng', 'K15');

-- 5. NhanVienYTe: 20 ban ghi
INSERT INTO NhanVienYTe (MaNV, HoTen, NgaySinh, SDT, MaKhoa) VALUES ('BS01', N'Nguyễn Minh Anh', '1981-02-02', '0901374921', 'K01');
INSERT INTO NhanVienYTe (MaNV, HoTen, NgaySinh, SDT, MaKhoa) VALUES ('BS02', N'Trần Quốc Bảo', '1982-03-03', '0902749842', 'K02');
INSERT INTO NhanVienYTe (MaNV, HoTen, NgaySinh, SDT, MaKhoa) VALUES ('BS03', N'Lê Thu Hà', '1983-04-04', '0904124763', 'K03');
INSERT INTO NhanVienYTe (MaNV, HoTen, NgaySinh, SDT, MaKhoa) VALUES ('BS04', N'Phạm Gia Huy', '1984-05-05', '0905499684', 'K04');
INSERT INTO NhanVienYTe (MaNV, HoTen, NgaySinh, SDT, MaKhoa) VALUES ('BS05', N'Hoàng Ngọc Lan', '1985-06-06', '0906874605', 'K05');
INSERT INTO NhanVienYTe (MaNV, HoTen, NgaySinh, SDT, MaKhoa) VALUES ('BS06', N'Vũ Đức Long', '1986-07-07', '0908249526', 'K06');
INSERT INTO NhanVienYTe (MaNV, HoTen, NgaySinh, SDT, MaKhoa) VALUES ('BS07', N'Đặng Phương Mai', '1987-08-08', '0909624447', 'K07');
INSERT INTO NhanVienYTe (MaNV, HoTen, NgaySinh, SDT, MaKhoa) VALUES ('BS08', N'Bùi Tuấn Nam', '1988-09-09', '0910999368', 'K08');
INSERT INTO NhanVienYTe (MaNV, HoTen, NgaySinh, SDT, MaKhoa) VALUES ('BS09', N'Đỗ Khánh Ngân', '1989-10-10', '0912374289', 'K09');
INSERT INTO NhanVienYTe (MaNV, HoTen, NgaySinh, SDT, MaKhoa) VALUES ('BS10', N'Ngô Hoàng Phúc', '1990-11-11', '0913749210', 'K10');
INSERT INTO NhanVienYTe (MaNV, HoTen, NgaySinh, SDT, MaKhoa) VALUES ('YT01', N'Dương Thanh Sơn', '1991-12-12', '0915124131', 'K11');
INSERT INTO NhanVienYTe (MaNV, HoTen, NgaySinh, SDT, MaKhoa) VALUES ('YT02', N'Lý Mỹ Tâm', '1992-01-13', '0916499052', 'K12');
INSERT INTO NhanVienYTe (MaNV, HoTen, NgaySinh, SDT, MaKhoa) VALUES ('YT03', N'Mai Quang Vinh', '1993-02-14', '0917873973', 'K13');
INSERT INTO NhanVienYTe (MaNV, HoTen, NgaySinh, SDT, MaKhoa) VALUES ('YT04', N'Đinh Bảo Yến', '1994-03-15', '0919248894', 'K14');
INSERT INTO NhanVienYTe (MaNV, HoTen, NgaySinh, SDT, MaKhoa) VALUES ('YT05', N'Phan Trọng Kiên', '1980-04-16', '0920623815', 'K15');
INSERT INTO NhanVienYTe (MaNV, HoTen, NgaySinh, SDT, MaKhoa) VALUES ('YT06', N'Hồ Hải Đăng', '1981-05-17', '0921998736', 'K01');
INSERT INTO NhanVienYTe (MaNV, HoTen, NgaySinh, SDT, MaKhoa) VALUES ('YT07', N'Võ Kim Chi', '1982-06-18', '0923373657', 'K02');
INSERT INTO NhanVienYTe (MaNV, HoTen, NgaySinh, SDT, MaKhoa) VALUES ('YT08', N'Tạ Anh Dũng', '1983-07-19', '0924748578', 'K03');
INSERT INTO NhanVienYTe (MaNV, HoTen, NgaySinh, SDT, MaKhoa) VALUES ('YT09', N'Cao Thùy Linh', '1984-08-20', '0926123499', 'K04');
INSERT INTO NhanVienYTe (MaNV, HoTen, NgaySinh, SDT, MaKhoa) VALUES ('YT10', N'Lâm Nhật Minh', '1985-09-21', '0927498420', 'K05');

-- 6. BacSi: 10 ban ghi
INSERT INTO BacSi (MaNV, BangCap, ChuyenKhoa) VALUES ('BS01', N'Bác sĩ đa khoa', N'Nội khoa');
INSERT INTO BacSi (MaNV, BangCap, ChuyenKhoa) VALUES ('BS02', N'Thạc sĩ y học', N'Ngoại khoa');
INSERT INTO BacSi (MaNV, BangCap, ChuyenKhoa) VALUES ('BS03', N'Tiến sĩ y khoa', N'Nhi khoa');
INSERT INTO BacSi (MaNV, BangCap, ChuyenKhoa) VALUES ('BS04', N'Bác sĩ chuyên khoa I', N'Tim mạch');
INSERT INTO BacSi (MaNV, BangCap, ChuyenKhoa) VALUES ('BS05', N'Bác sĩ chuyên khoa II', N'Thần kinh');
INSERT INTO BacSi (MaNV, BangCap, ChuyenKhoa) VALUES ('BS06', N'Bác sĩ đa khoa', N'Sản phụ khoa');
INSERT INTO BacSi (MaNV, BangCap, ChuyenKhoa) VALUES ('BS07', N'Thạc sĩ y học', N'Tai mũi họng');
INSERT INTO BacSi (MaNV, BangCap, ChuyenKhoa) VALUES ('BS08', N'Tiến sĩ y khoa', N'Mắt');
INSERT INTO BacSi (MaNV, BangCap, ChuyenKhoa) VALUES ('BS09', N'Bác sĩ chuyên khoa I', N'Da liễu');
INSERT INTO BacSi (MaNV, BangCap, ChuyenKhoa) VALUES ('BS10', N'Bác sĩ chuyên khoa II', N'Cấp cứu');

-- 7. YTa: 10 ban ghi
INSERT INTO YTa (MaNV, TrinhDo, KinhNghiem) VALUES ('YT01', N'Trung cấp điều dưỡng', N'1 năm');
INSERT INTO YTa (MaNV, TrinhDo, KinhNghiem) VALUES ('YT02', N'Cao đẳng điều dưỡng', N'2 năm');
INSERT INTO YTa (MaNV, TrinhDo, KinhNghiem) VALUES ('YT03', N'Cử nhân điều dưỡng', N'3 năm');
INSERT INTO YTa (MaNV, TrinhDo, KinhNghiem) VALUES ('YT04', N'Điều dưỡng chuyên khoa', N'5 năm');
INSERT INTO YTa (MaNV, TrinhDo, KinhNghiem) VALUES ('YT05', N'Trung cấp điều dưỡng', N'7 năm');
INSERT INTO YTa (MaNV, TrinhDo, KinhNghiem) VALUES ('YT06', N'Cao đẳng điều dưỡng', N'8 năm');
INSERT INTO YTa (MaNV, TrinhDo, KinhNghiem) VALUES ('YT07', N'Cử nhân điều dưỡng', N'10 năm');
INSERT INTO YTa (MaNV, TrinhDo, KinhNghiem) VALUES ('YT08', N'Điều dưỡng chuyên khoa', N'4 năm');
INSERT INTO YTa (MaNV, TrinhDo, KinhNghiem) VALUES ('YT09', N'Trung cấp điều dưỡng', N'6 năm');
INSERT INTO YTa (MaNV, TrinhDo, KinhNghiem) VALUES ('YT10', N'Cao đẳng điều dưỡng', N'12 năm');

-- 8. LichLamViec: 15 ban ghi
INSERT INTO LichLamViec (MaLich, NgayTruc, CaTruc, MaNV, MaPK) VALUES ('LL01', '2026-10-01', N'Ca sáng', 'BS01', 'PK01');
INSERT INTO LichLamViec (MaLich, NgayTruc, CaTruc, MaNV, MaPK) VALUES ('LL02', '2026-10-02', N'Ca chiều', 'BS02', 'PK02');
INSERT INTO LichLamViec (MaLich, NgayTruc, CaTruc, MaNV, MaPK) VALUES ('LL03', '2026-10-03', N'Ca tối', 'BS03', 'PK03');
INSERT INTO LichLamViec (MaLich, NgayTruc, CaTruc, MaNV, MaPK) VALUES ('LL04', '2026-10-04', N'Ca sáng', 'BS04', 'PK04');
INSERT INTO LichLamViec (MaLich, NgayTruc, CaTruc, MaNV, MaPK) VALUES ('LL05', '2026-10-05', N'Ca chiều', 'BS05', 'PK05');
INSERT INTO LichLamViec (MaLich, NgayTruc, CaTruc, MaNV, MaPK) VALUES ('LL06', '2026-10-06', N'Ca tối', 'BS06', 'PK06');
INSERT INTO LichLamViec (MaLich, NgayTruc, CaTruc, MaNV, MaPK) VALUES ('LL07', '2026-10-07', N'Ca sáng', 'BS07', 'PK07');
INSERT INTO LichLamViec (MaLich, NgayTruc, CaTruc, MaNV, MaPK) VALUES ('LL08', '2026-10-08', N'Ca chiều', 'BS08', 'PK08');
INSERT INTO LichLamViec (MaLich, NgayTruc, CaTruc, MaNV, MaPK) VALUES ('LL09', '2026-10-09', N'Ca tối', 'BS09', 'PK09');
INSERT INTO LichLamViec (MaLich, NgayTruc, CaTruc, MaNV, MaPK) VALUES ('LL10', '2026-10-10', N'Ca sáng', 'BS10', 'PK10');
INSERT INTO LichLamViec (MaLich, NgayTruc, CaTruc, MaNV, MaPK) VALUES ('LL11', '2026-10-11', N'Ca chiều', 'BS01', 'PK11');
INSERT INTO LichLamViec (MaLich, NgayTruc, CaTruc, MaNV, MaPK) VALUES ('LL12', '2026-10-12', N'Ca tối', 'BS02', 'PK12');
INSERT INTO LichLamViec (MaLich, NgayTruc, CaTruc, MaNV, MaPK) VALUES ('LL13', '2026-10-13', N'Ca sáng', 'BS03', 'PK13');
INSERT INTO LichLamViec (MaLich, NgayTruc, CaTruc, MaNV, MaPK) VALUES ('LL14', '2026-10-14', N'Ca chiều', 'BS04', 'PK14');
INSERT INTO LichLamViec (MaLich, NgayTruc, CaTruc, MaNV, MaPK) VALUES ('LL15', '2026-10-15', N'Ca tối', 'BS05', 'PK15');

-- 9. BenhNhan: 15 ban ghi
INSERT INTO BenhNhan (MaBN, HoTen, NgaySinh, GioiTinh, DiaChi) VALUES ('BN01', N'Nguyễn Văn An', '1968-02-03', N'Nam', N'Hà Nội');
INSERT INTO BenhNhan (MaBN, HoTen, NgaySinh, GioiTinh, DiaChi) VALUES ('BN02', N'Trần Thị Bình', '1971-03-05', N'Nữ', N'Hồ Chí Minh');
INSERT INTO BenhNhan (MaBN, HoTen, NgaySinh, GioiTinh, DiaChi) VALUES ('BN03', N'Lê Hoàng Cường', '1974-04-07', N'Nam', N'Đà Nẵng');
INSERT INTO BenhNhan (MaBN, HoTen, NgaySinh, GioiTinh, DiaChi) VALUES ('BN04', N'Phạm Thu Dung', '1977-05-09', N'Nữ', N'Hải Phòng');
INSERT INTO BenhNhan (MaBN, HoTen, NgaySinh, GioiTinh, DiaChi) VALUES ('BN05', N'Hoàng Minh Đức', '1980-06-11', N'Nam', N'Cần Thơ');
INSERT INTO BenhNhan (MaBN, HoTen, NgaySinh, GioiTinh, DiaChi) VALUES ('BN06', N'Vũ Ngọc Hà', '1983-07-13', N'Nữ', N'Hà Nội');
INSERT INTO BenhNhan (MaBN, HoTen, NgaySinh, GioiTinh, DiaChi) VALUES ('BN07', N'Đặng Quốc Huy', '1986-08-15', N'Nam', N'Hồ Chí Minh');
INSERT INTO BenhNhan (MaBN, HoTen, NgaySinh, GioiTinh, DiaChi) VALUES ('BN08', N'Bùi Thanh Lan', '1989-09-17', N'Nữ', N'Đà Nẵng');
INSERT INTO BenhNhan (MaBN, HoTen, NgaySinh, GioiTinh, DiaChi) VALUES ('BN09', N'Đỗ Anh Minh', '1992-10-19', N'Nam', N'Hải Phòng');
INSERT INTO BenhNhan (MaBN, HoTen, NgaySinh, GioiTinh, DiaChi) VALUES ('BN10', N'Ngô Phương Nga', '1995-11-21', N'Nữ', N'Cần Thơ');
INSERT INTO BenhNhan (MaBN, HoTen, NgaySinh, GioiTinh, DiaChi) VALUES ('BN11', N'Dương Đức Phúc', '1998-12-23', N'Nam', N'Hà Nội');
INSERT INTO BenhNhan (MaBN, HoTen, NgaySinh, GioiTinh, DiaChi) VALUES ('BN12', N'Lý Bảo Trâm', '2001-01-25', N'Nữ', N'Hồ Chí Minh');
INSERT INTO BenhNhan (MaBN, HoTen, NgaySinh, GioiTinh, DiaChi) VALUES ('BN13', N'Mai Quang Vũ', '2004-02-27', N'Nam', N'Đà Nẵng');
INSERT INTO BenhNhan (MaBN, HoTen, NgaySinh, GioiTinh, DiaChi) VALUES ('BN14', N'Đinh Thùy Vy', '1967-03-02', N'Nữ', N'Hải Phòng');
INSERT INTO BenhNhan (MaBN, HoTen, NgaySinh, GioiTinh, DiaChi) VALUES ('BN15', N'Phan Gia Khánh', '1970-04-04', N'Nam', N'Cần Thơ');

-- 10. LanHenKham: 15 ban ghi
INSERT INTO LanHenKham (MaLanHen, NgayKham, MaBN) VALUES ('LH01', '2026-10-01 09:30:00', 'BN01');
INSERT INTO LanHenKham (MaLanHen, NgayKham, MaBN) VALUES ('LH02', '2026-10-02 10:30:00', 'BN02');
INSERT INTO LanHenKham (MaLanHen, NgayKham, MaBN) VALUES ('LH03', '2026-10-03 11:30:00', 'BN03');
INSERT INTO LanHenKham (MaLanHen, NgayKham, MaBN) VALUES ('LH04', '2026-10-04 12:30:00', 'BN04');
INSERT INTO LanHenKham (MaLanHen, NgayKham, MaBN) VALUES ('LH05', '2026-10-05 13:30:00', 'BN05');
INSERT INTO LanHenKham (MaLanHen, NgayKham, MaBN) VALUES ('LH06', '2026-10-06 14:30:00', 'BN06');
INSERT INTO LanHenKham (MaLanHen, NgayKham, MaBN) VALUES ('LH07', '2026-10-07 15:30:00', 'BN07');
INSERT INTO LanHenKham (MaLanHen, NgayKham, MaBN) VALUES ('LH08', '2026-10-08 16:30:00', 'BN08');
INSERT INTO LanHenKham (MaLanHen, NgayKham, MaBN) VALUES ('LH09', '2026-10-09 08:30:00', 'BN09');
INSERT INTO LanHenKham (MaLanHen, NgayKham, MaBN) VALUES ('LH10', '2026-10-10 09:30:00', 'BN10');
INSERT INTO LanHenKham (MaLanHen, NgayKham, MaBN) VALUES ('LH11', '2026-10-11 10:30:00', 'BN11');
INSERT INTO LanHenKham (MaLanHen, NgayKham, MaBN) VALUES ('LH12', '2026-10-12 11:30:00', 'BN12');
INSERT INTO LanHenKham (MaLanHen, NgayKham, MaBN) VALUES ('LH13', '2026-10-13 12:30:00', 'BN13');
INSERT INTO LanHenKham (MaLanHen, NgayKham, MaBN) VALUES ('LH14', '2026-10-14 13:30:00', 'BN14');
INSERT INTO LanHenKham (MaLanHen, NgayKham, MaBN) VALUES ('LH15', '2026-10-15 14:30:00', 'BN15');

-- 11. ChiTietHen: 20 ban ghi
INSERT INTO ChiTietHen (MaLich, MaLanHen) VALUES ('LL01', 'LH01');
INSERT INTO ChiTietHen (MaLich, MaLanHen) VALUES ('LL02', 'LH02');
INSERT INTO ChiTietHen (MaLich, MaLanHen) VALUES ('LL03', 'LH03');
INSERT INTO ChiTietHen (MaLich, MaLanHen) VALUES ('LL04', 'LH04');
INSERT INTO ChiTietHen (MaLich, MaLanHen) VALUES ('LL05', 'LH05');
INSERT INTO ChiTietHen (MaLich, MaLanHen) VALUES ('LL06', 'LH06');
INSERT INTO ChiTietHen (MaLich, MaLanHen) VALUES ('LL07', 'LH07');
INSERT INTO ChiTietHen (MaLich, MaLanHen) VALUES ('LL08', 'LH08');
INSERT INTO ChiTietHen (MaLich, MaLanHen) VALUES ('LL09', 'LH09');
INSERT INTO ChiTietHen (MaLich, MaLanHen) VALUES ('LL10', 'LH10');
INSERT INTO ChiTietHen (MaLich, MaLanHen) VALUES ('LL11', 'LH11');
INSERT INTO ChiTietHen (MaLich, MaLanHen) VALUES ('LL12', 'LH12');
INSERT INTO ChiTietHen (MaLich, MaLanHen) VALUES ('LL13', 'LH13');
INSERT INTO ChiTietHen (MaLich, MaLanHen) VALUES ('LL14', 'LH14');
INSERT INTO ChiTietHen (MaLich, MaLanHen) VALUES ('LL15', 'LH15');
INSERT INTO ChiTietHen (MaLich, MaLanHen) VALUES ('LL01', 'LH02');
INSERT INTO ChiTietHen (MaLich, MaLanHen) VALUES ('LL02', 'LH03');
INSERT INTO ChiTietHen (MaLich, MaLanHen) VALUES ('LL03', 'LH04');
INSERT INTO ChiTietHen (MaLich, MaLanHen) VALUES ('LL04', 'LH05');
INSERT INTO ChiTietHen (MaLich, MaLanHen) VALUES ('LL05', 'LH06');

-- 12. PhieuChamSoc: 15 ban ghi
INSERT INTO PhieuChamSoc (MaYT, MaBN) VALUES ('YT01', 'BN01');
INSERT INTO PhieuChamSoc (MaYT, MaBN) VALUES ('YT02', 'BN02');
INSERT INTO PhieuChamSoc (MaYT, MaBN) VALUES ('YT03', 'BN03');
INSERT INTO PhieuChamSoc (MaYT, MaBN) VALUES ('YT04', 'BN04');
INSERT INTO PhieuChamSoc (MaYT, MaBN) VALUES ('YT05', 'BN05');
INSERT INTO PhieuChamSoc (MaYT, MaBN) VALUES ('YT06', 'BN06');
INSERT INTO PhieuChamSoc (MaYT, MaBN) VALUES ('YT07', 'BN07');
INSERT INTO PhieuChamSoc (MaYT, MaBN) VALUES ('YT08', 'BN08');
INSERT INTO PhieuChamSoc (MaYT, MaBN) VALUES ('YT09', 'BN09');
INSERT INTO PhieuChamSoc (MaYT, MaBN) VALUES ('YT10', 'BN10');
INSERT INTO PhieuChamSoc (MaYT, MaBN) VALUES ('YT01', 'BN11');
INSERT INTO PhieuChamSoc (MaYT, MaBN) VALUES ('YT02', 'BN12');
INSERT INTO PhieuChamSoc (MaYT, MaBN) VALUES ('YT03', 'BN13');
INSERT INTO PhieuChamSoc (MaYT, MaBN) VALUES ('YT04', 'BN14');
INSERT INTO PhieuChamSoc (MaYT, MaBN) VALUES ('YT05', 'BN15');

-- 13. DonThuoc: 10 ban ghi
INSERT INTO DonThuoc (MaDon, NgayKe, MaBN) VALUES ('DT01', '2026-10-01', 'BN01');
INSERT INTO DonThuoc (MaDon, NgayKe, MaBN) VALUES ('DT02', '2026-10-02', 'BN02');
INSERT INTO DonThuoc (MaDon, NgayKe, MaBN) VALUES ('DT03', '2026-10-03', 'BN03');
INSERT INTO DonThuoc (MaDon, NgayKe, MaBN) VALUES ('DT04', '2026-10-04', 'BN04');
INSERT INTO DonThuoc (MaDon, NgayKe, MaBN) VALUES ('DT05', '2026-10-05', 'BN05');
INSERT INTO DonThuoc (MaDon, NgayKe, MaBN) VALUES ('DT06', '2026-10-06', 'BN06');
INSERT INTO DonThuoc (MaDon, NgayKe, MaBN) VALUES ('DT07', '2026-10-07', 'BN07');
INSERT INTO DonThuoc (MaDon, NgayKe, MaBN) VALUES ('DT08', '2026-10-08', 'BN08');
INSERT INTO DonThuoc (MaDon, NgayKe, MaBN) VALUES ('DT09', '2026-10-09', 'BN09');
INSERT INTO DonThuoc (MaDon, NgayKe, MaBN) VALUES ('DT10', '2026-10-10', 'BN10');

-- 14. Thuoc: 15 ban ghi
INSERT INTO Thuoc (MaThuoc, TenThuoc) VALUES ('TH01', N'Paracetamol');
INSERT INTO Thuoc (MaThuoc, TenThuoc) VALUES ('TH02', N'Amoxicillin');
INSERT INTO Thuoc (MaThuoc, TenThuoc) VALUES ('TH03', N'Vitamin C');
INSERT INTO Thuoc (MaThuoc, TenThuoc) VALUES ('TH04', N'Ibuprofen');
INSERT INTO Thuoc (MaThuoc, TenThuoc) VALUES ('TH05', N'Loratadine');
INSERT INTO Thuoc (MaThuoc, TenThuoc) VALUES ('TH06', N'Omeprazole');
INSERT INTO Thuoc (MaThuoc, TenThuoc) VALUES ('TH07', N'Metformin');
INSERT INTO Thuoc (MaThuoc, TenThuoc) VALUES ('TH08', N'Amlodipine');
INSERT INTO Thuoc (MaThuoc, TenThuoc) VALUES ('TH09', N'Atorvastatin');
INSERT INTO Thuoc (MaThuoc, TenThuoc) VALUES ('TH10', N'Cetirizine');
INSERT INTO Thuoc (MaThuoc, TenThuoc) VALUES ('TH11', N'ORS');
INSERT INTO Thuoc (MaThuoc, TenThuoc) VALUES ('TH12', N'Cefixime');
INSERT INTO Thuoc (MaThuoc, TenThuoc) VALUES ('TH13', N'Salbutamol');
INSERT INTO Thuoc (MaThuoc, TenThuoc) VALUES ('TH14', N'Esomeprazole');
INSERT INTO Thuoc (MaThuoc, TenThuoc) VALUES ('TH15', N'Acetylcysteine');

-- 15. ChiTietDonThuoc: 20 ban ghi
INSERT INTO ChiTietDonThuoc (MaDon, MaThuoc, CachDung) VALUES ('DT01', 'TH01', N'Uống sau ăn theo chỉ định');
INSERT INTO ChiTietDonThuoc (MaDon, MaThuoc, CachDung) VALUES ('DT02', 'TH02', N'Uống sau ăn theo chỉ định');
INSERT INTO ChiTietDonThuoc (MaDon, MaThuoc, CachDung) VALUES ('DT03', 'TH03', N'Uống sau ăn theo chỉ định');
INSERT INTO ChiTietDonThuoc (MaDon, MaThuoc, CachDung) VALUES ('DT04', 'TH04', N'Uống sau ăn theo chỉ định');
INSERT INTO ChiTietDonThuoc (MaDon, MaThuoc, CachDung) VALUES ('DT05', 'TH05', N'Uống sau ăn theo chỉ định');
INSERT INTO ChiTietDonThuoc (MaDon, MaThuoc, CachDung) VALUES ('DT06', 'TH06', N'Uống sau ăn theo chỉ định');
INSERT INTO ChiTietDonThuoc (MaDon, MaThuoc, CachDung) VALUES ('DT07', 'TH07', N'Uống sau ăn theo chỉ định');
INSERT INTO ChiTietDonThuoc (MaDon, MaThuoc, CachDung) VALUES ('DT08', 'TH08', N'Uống sau ăn theo chỉ định');
INSERT INTO ChiTietDonThuoc (MaDon, MaThuoc, CachDung) VALUES ('DT09', 'TH09', N'Uống sau ăn theo chỉ định');
INSERT INTO ChiTietDonThuoc (MaDon, MaThuoc, CachDung) VALUES ('DT10', 'TH10', N'Uống sau ăn theo chỉ định');
INSERT INTO ChiTietDonThuoc (MaDon, MaThuoc, CachDung) VALUES ('DT01', 'TH06', N'Dùng theo đơn của bác sĩ');
INSERT INTO ChiTietDonThuoc (MaDon, MaThuoc, CachDung) VALUES ('DT02', 'TH07', N'Dùng theo đơn của bác sĩ');
INSERT INTO ChiTietDonThuoc (MaDon, MaThuoc, CachDung) VALUES ('DT03', 'TH08', N'Dùng theo đơn của bác sĩ');
INSERT INTO ChiTietDonThuoc (MaDon, MaThuoc, CachDung) VALUES ('DT04', 'TH09', N'Dùng theo đơn của bác sĩ');
INSERT INTO ChiTietDonThuoc (MaDon, MaThuoc, CachDung) VALUES ('DT05', 'TH10', N'Dùng theo đơn của bác sĩ');
INSERT INTO ChiTietDonThuoc (MaDon, MaThuoc, CachDung) VALUES ('DT06', 'TH11', N'Dùng theo đơn của bác sĩ');
INSERT INTO ChiTietDonThuoc (MaDon, MaThuoc, CachDung) VALUES ('DT07', 'TH12', N'Dùng theo đơn của bác sĩ');
INSERT INTO ChiTietDonThuoc (MaDon, MaThuoc, CachDung) VALUES ('DT08', 'TH13', N'Dùng theo đơn của bác sĩ');
INSERT INTO ChiTietDonThuoc (MaDon, MaThuoc, CachDung) VALUES ('DT09', 'TH14', N'Dùng theo đơn của bác sĩ');
INSERT INTO ChiTietDonThuoc (MaDon, MaThuoc, CachDung) VALUES ('DT10', 'TH15', N'Dùng theo đơn của bác sĩ');

-- 16. XetNghiem: 12 ban ghi
INSERT INTO XetNghiem (MaXN, TenXN) VALUES ('XN01', N'Công thức máu');
INSERT INTO XetNghiem (MaXN, TenXN) VALUES ('XN02', N'Đường huyết');
INSERT INTO XetNghiem (MaXN, TenXN) VALUES ('XN03', N'Chức năng gan');
INSERT INTO XetNghiem (MaXN, TenXN) VALUES ('XN04', N'Chức năng thận');
INSERT INTO XetNghiem (MaXN, TenXN) VALUES ('XN05', N'Tổng phân tích nước tiểu');
INSERT INTO XetNghiem (MaXN, TenXN) VALUES ('XN06', N'X-quang ngực');
INSERT INTO XetNghiem (MaXN, TenXN) VALUES ('XN07', N'Siêu âm ổ bụng');
INSERT INTO XetNghiem (MaXN, TenXN) VALUES ('XN08', N'Điện tim');
INSERT INTO XetNghiem (MaXN, TenXN) VALUES ('XN09', N'Cholesterol');
INSERT INTO XetNghiem (MaXN, TenXN) VALUES ('XN10', N'HbA1c');
INSERT INTO XetNghiem (MaXN, TenXN) VALUES ('XN11', N'CRP');
INSERT INTO XetNghiem (MaXN, TenXN) VALUES ('XN12', N'Đông máu');

-- 17. LanHenXetNghiem: 20 ban ghi
INSERT INTO LanHenXetNghiem (MaLanHen, MaXN) VALUES ('LH01', 'XN01');
INSERT INTO LanHenXetNghiem (MaLanHen, MaXN) VALUES ('LH02', 'XN02');
INSERT INTO LanHenXetNghiem (MaLanHen, MaXN) VALUES ('LH03', 'XN03');
INSERT INTO LanHenXetNghiem (MaLanHen, MaXN) VALUES ('LH04', 'XN04');
INSERT INTO LanHenXetNghiem (MaLanHen, MaXN) VALUES ('LH05', 'XN05');
INSERT INTO LanHenXetNghiem (MaLanHen, MaXN) VALUES ('LH06', 'XN06');
INSERT INTO LanHenXetNghiem (MaLanHen, MaXN) VALUES ('LH07', 'XN07');
INSERT INTO LanHenXetNghiem (MaLanHen, MaXN) VALUES ('LH08', 'XN08');
INSERT INTO LanHenXetNghiem (MaLanHen, MaXN) VALUES ('LH09', 'XN09');
INSERT INTO LanHenXetNghiem (MaLanHen, MaXN) VALUES ('LH10', 'XN10');
INSERT INTO LanHenXetNghiem (MaLanHen, MaXN) VALUES ('LH11', 'XN11');
INSERT INTO LanHenXetNghiem (MaLanHen, MaXN) VALUES ('LH12', 'XN12');
INSERT INTO LanHenXetNghiem (MaLanHen, MaXN) VALUES ('LH13', 'XN01');
INSERT INTO LanHenXetNghiem (MaLanHen, MaXN) VALUES ('LH14', 'XN02');
INSERT INTO LanHenXetNghiem (MaLanHen, MaXN) VALUES ('LH15', 'XN03');
INSERT INTO LanHenXetNghiem (MaLanHen, MaXN) VALUES ('LH01', 'XN07');
INSERT INTO LanHenXetNghiem (MaLanHen, MaXN) VALUES ('LH02', 'XN08');
INSERT INTO LanHenXetNghiem (MaLanHen, MaXN) VALUES ('LH03', 'XN09');
INSERT INTO LanHenXetNghiem (MaLanHen, MaXN) VALUES ('LH04', 'XN10');
INSERT INTO LanHenXetNghiem (MaLanHen, MaXN) VALUES ('LH05', 'XN11');

-- 18. ThucHienXetNghiem: 20 ban ghi
INSERT INTO ThucHienXetNghiem (MaNV, MaLanHen, MaXN) VALUES ('BS01', 'LH01', 'XN01');
INSERT INTO ThucHienXetNghiem (MaNV, MaLanHen, MaXN) VALUES ('BS02', 'LH02', 'XN02');
INSERT INTO ThucHienXetNghiem (MaNV, MaLanHen, MaXN) VALUES ('BS03', 'LH03', 'XN03');
INSERT INTO ThucHienXetNghiem (MaNV, MaLanHen, MaXN) VALUES ('BS04', 'LH04', 'XN04');
INSERT INTO ThucHienXetNghiem (MaNV, MaLanHen, MaXN) VALUES ('BS05', 'LH05', 'XN05');
INSERT INTO ThucHienXetNghiem (MaNV, MaLanHen, MaXN) VALUES ('BS06', 'LH06', 'XN06');
INSERT INTO ThucHienXetNghiem (MaNV, MaLanHen, MaXN) VALUES ('BS07', 'LH07', 'XN07');
INSERT INTO ThucHienXetNghiem (MaNV, MaLanHen, MaXN) VALUES ('BS08', 'LH08', 'XN08');
INSERT INTO ThucHienXetNghiem (MaNV, MaLanHen, MaXN) VALUES ('BS09', 'LH09', 'XN09');
INSERT INTO ThucHienXetNghiem (MaNV, MaLanHen, MaXN) VALUES ('BS10', 'LH10', 'XN10');
INSERT INTO ThucHienXetNghiem (MaNV, MaLanHen, MaXN) VALUES ('BS01', 'LH11', 'XN11');
INSERT INTO ThucHienXetNghiem (MaNV, MaLanHen, MaXN) VALUES ('BS02', 'LH12', 'XN12');
INSERT INTO ThucHienXetNghiem (MaNV, MaLanHen, MaXN) VALUES ('BS03', 'LH13', 'XN01');
INSERT INTO ThucHienXetNghiem (MaNV, MaLanHen, MaXN) VALUES ('BS04', 'LH14', 'XN02');
INSERT INTO ThucHienXetNghiem (MaNV, MaLanHen, MaXN) VALUES ('BS05', 'LH15', 'XN03');
INSERT INTO ThucHienXetNghiem (MaNV, MaLanHen, MaXN) VALUES ('BS04', 'LH01', 'XN07');
INSERT INTO ThucHienXetNghiem (MaNV, MaLanHen, MaXN) VALUES ('BS05', 'LH02', 'XN08');
INSERT INTO ThucHienXetNghiem (MaNV, MaLanHen, MaXN) VALUES ('BS06', 'LH03', 'XN09');
INSERT INTO ThucHienXetNghiem (MaNV, MaLanHen, MaXN) VALUES ('BS07', 'LH04', 'XN10');
INSERT INTO ThucHienXetNghiem (MaNV, MaLanHen, MaXN) VALUES ('BS08', 'LH05', 'XN11');

    COMMIT TRANSACTION;
    PRINT N'Da chen xong du lieu mau QuanLyBenhVien.';
END TRY
BEGIN CATCH
    IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION;
    THROW;
END CATCH;
GO
