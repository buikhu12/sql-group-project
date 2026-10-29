-- Khoa (1) ---- (N) PhongKham
CREATE TABLE PhongKham (
    MaPK VARCHAR(20) PRIMARY KEY,
    TenPK NVARCHAR(100),
    MaKhoa VARCHAR(20) NOT NULL,

    FOREIGN KEY (MaKhoa) REFERENCES Khoa(MaKhoa)
);
GO

-- Khoa (1) ---- (N) GiuongBenh
CREATE TABLE GiuongBenh (
    MaGiuong VARCHAR(20) PRIMARY KEY,
    TrangThai NVARCHAR(50),
    MaKhoa VARCHAR(20) NOT NULL,

    FOREIGN KEY (MaKhoa) REFERENCES Khoa(MaKhoa)
);
GO