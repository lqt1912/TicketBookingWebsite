----------------------------------------
--HOADON
CREATE TABLE HOADON(
	MAHOADON	varchar(20) not null,	
	MAVE		varchar(20),
	THANHVIEN	int,
	constraint pk_hd primary key(MAHOADON)
)
GO
-- Khoa ngoai cho bang HOADON
ALTER TABLE HOADON ADD CONSTRAINT fk01_HD FOREIGN KEY(MAVE) REFERENCES VE(MAVE)