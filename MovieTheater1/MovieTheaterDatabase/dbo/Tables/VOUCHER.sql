----------------------------------------
--VOUCHER
CREATE TABLE VOUCHER(
	MAVOUCHER	varchar(20) not null,	
	TENVOUCHER	varchar(40),
	NOIDUNG		varchar(100),
	NGAYBD		date,
	NGAYKT		date,
	GIAMGIA		int,
	GHICHU		varchar(100),
	constraint pk_voucher primary key(MAVOUCHER)
)