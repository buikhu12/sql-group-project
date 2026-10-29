CREATE TABLE BenhNhan (
    MaBN VARCHAR(20) PRIMARY KEY,
    HoTen NVARCHAR(100),
    NgaySinh DATE,
    GioiTinh NVARCHAR(10),
    DiaChi NVARCHAR(255)
);
GO

-- BenhNhan (1) ---- (N) LanHenKham
CREATE TABLE LanHenKham (
    MaLanHen VARCHAR(20) PRIMARY KEY,
    NgayKham DATETIME,
    MaBN VARCHAR(20) NOT NULL,

    FOREIGN KEY (MaBN) REFERENCES BenhNhan(MaBN)
);
GO

-- Bang lien ket LichLamViec va LanHenKham
CREATE TABLE ChiTietHen (
    MaLich VARCHAR(20) NOT NULL,
    MaLanHen VARCHAR(20) NOT NULL,

    PRIMARY KEY (MaLich, MaLanHen),

    FOREIGN KEY (MaLich) REFERENCES LichLamViec(MaLich),
    FOREIGN KEY (MaLanHen) REFERENCES LanHenKham(MaLanHen)
);
GO