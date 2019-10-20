----------------------------------------
--NHANVIEN
CREATE TABLE NHANVIEN(
	MANV		varchar(20) not null,	
	HOTEN		varchar(40),
	GIOITINH	varchar(20),
	DIACHI		varchar(40),
	SODT		varchar(20),
	MALOAINV	varchar(20),	
	constraint pk_nv primary key(MANV)
)
GO
-- Khoa ngoai cho bang NHANVIEN
ALTER TABLE NHANVIEN ADD CONSTRAINT fk01_NV FOREIGN KEY(MALOAINV) REFERENCES LOAINHANVIEN(MALOAINV)