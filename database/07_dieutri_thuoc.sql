-- YTa (1) ---- (N) PhieuChamSoc
-- BenhNhan (1) ---- (N) PhieuChamSoc
CREATE TABLE PhieuChamSoc (
    MaYT VARCHAR(20) NOT NULL,
    MaBN VARCHAR(20) NOT NULL,

    PRIMARY KEY (MaYT, MaBN),

    FOREIGN KEY (MaYT) REFERENCES YTa(MaNV),
    FOREIGN KEY (MaBN) REFERENCES BenhNhan(MaBN)
);
GO

-- BenhNhan (1) ---- (1) DonThuoc
CREATE TABLE DonThuoc (
    MaDon VARCHAR(20) PRIMARY KEY,
    NgayKe DATE,
    MaBN VARCHAR(20) NOT NULL UNIQUE,

    FOREIGN KEY (MaBN) REFERENCES BenhNhan(MaBN)
);
GO

CREATE TABLE Thuoc (
    MaThuoc VARCHAR(20) PRIMARY KEY,
    TenThuoc NVARCHAR(100)
);
GO

-- DonThuoc (1) ---- (N) ChiTietDonThuoc
-- Thuoc (1) ---- (N) ChiTietDonThuoc
-- Thuoc co thuoc tinh CachDung trong quan he
CREATE TABLE ChiTietDonThuoc (
    MaDon VARCHAR(20) NOT NULL,
    MaThuoc VARCHAR(20) NOT NULL,
    CachDung NVARCHAR(255),

    PRIMARY KEY (MaDon, MaThuoc),

    FOREIGN KEY (MaDon) REFERENCES DonThuoc(MaDon),
    FOREIGN KEY (MaThuoc) REFERENCES Thuoc(MaThuoc)
);
GO