USE QuanLyBenhVien;
GO

-- ====================================================================
-- 1. TRIGGER: Tự động cập nhật trạng thái Giường Bệnh thành "Đang sử dụng"
--    khi có bệnh nhân được phân bổ giường bệnh.
-- ====================================================================
CREATE OR ALTER TRIGGER TRG_CapNhatTrangThaiGiuong
ON GIUONG_BENH
AFTER UPDATE
AS
BEGIN
    SET NOCOUNT ON;
    -- Kiểm tra nếu cột MaBN được cập nhật (có giá trị khác NULL) thì đổi trạng thái
    UPDATE GIUONG_BENH
    SET TrangThai = N'Đang sử dụng'
    FROM GIUONG_BENH g
    JOIN inserted i ON g.MaGiuong = i.MaGiuong
    WHERE i.MaBN IS NOT NULL AND (g.TrangThai = N'Trống' OR g.TrangThai IS NULL);
END;
GO

-- ====================================================================
-- 2. STORED PROCEDURE: Thêm một lần khám bệnh mới kèm theo đơn thuốc mẫu
-- ====================================================================
CREATE OR ALTER PROCEDURE SP_ThemLanKhamVaKeDon
    @MaLanKham VARCHAR(10),
    @MaBN VARCHAR(10),
    @MaBS VARCHAR(10),
    @TrieuChung NVARCHAR(255),
    @ChanDoan NVARCHAR(255),
    @MaDonThuoc VARCHAR(10),
    @MaThuoc VARCHAR(10),
    @SoLuong INT,
    @CachDung NVARCHAR(255)
AS
BEGIN
    -- Khởi tạo Transaction đảm bảo tính toàn vẹn dữ liệu
    BEGIN TRANSACTION;
    
    BEGIN TRY
        -- Bước 1: Thêm mới lần khám bệnh
        INSERT INTO KHAM_BENH (MaLanKham, MaBN, MaBS, NgayKham, TrieuChung, ChanDoan)
        VALUES (@MaLanKham, @MaBN, @MaBS, GETDATE(), @TrieuChung, @ChanDoan);

        -- Bước 2: Thêm mới đơn thuốc tương ứng với lần khám
        INSERT INTO DON_THUOC (MaDonThuoc, MaLanKham, NgayLap)
        VALUES (@MaDonThuoc, @MaLanKham, GETDATE());

        -- Bước 3: Thêm chi tiết đơn thuốc
        INSERT INTO CHI_TIET_DON_THUOC (MaDonThuoc, MaThuoc, SoLuong, CachDung)
        VALUES (@MaDonThuoc, @MaThuoc, @SoLuong, @CachDung);

        -- Nếu mọi câu lệnh thành công, tiến hành COMMIT
        COMMIT TRANSACTION;
        PRINT N'Thêm lịch khám và kê đơn thuốc thành công!';
    END TRY
    BEGIN CATCH
        -- Nếu xảy ra lỗi bất kỳ, ROLLBACK toàn bộ giao dịch
        ROLLBACK TRANSACTION;
        
        -- In ra thông báo lỗi chi tiết từ hệ thống SQL Server
        DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
        RAISERROR (@ErrorMessage, 16, 1);
    END CATCH
END;
GO

-- ====================================================================
-- 3. VÍ DỤ SỬ DỤNG TRANSACTION / GỌI STORED PROCEDURE
-- ====================================================================
-- Bạn có thể chạy lệnh thử nghiệm dưới đây:
/*
EXEC SP_ThemLanKhamVaKeDon 
    @MaLanKham = 'LK99', 
    @MaBN = 'BN06', 
    @MaBS = 'BS01', 
    @TrieuChung = N'Đau đầu chóng mặt', 
    @ChanDoan = N'Thiếu máu não nhẹ', 
    @MaDonThuoc = 'DT99', 
    @MaThuoc = 'T01', 
    @SoLuong = 10, 
    @CachDung = N'Ngày uống 1 viên sáng';
*/
