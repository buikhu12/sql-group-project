-- BacSi (1) ---- (N) LichLamViec
-- PhongKham (1) ---- (N) LichLamViec
CREATE TABLE LichLamViec (
    MaLich VARCHAR(20) PRIMARY KEY,
    NgayTruc DATE,
    CaTruc NVARCHAR(50),
    MaNV VARCHAR(20) NOT NULL,
    MaPK VARCHAR(20) NOT NULL,

    FOREIGN KEY (MaNV) REFERENCES BacSi(MaNV),
    FOREIGN KEY (MaPK) REFERENCES PhongKham(MaPK)
);
GO