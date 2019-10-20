----------------------------------------
--BINHLUAN
CREATE TABLE BINHLUAN(
	MABINHLUAN	varchar(20) not null,	
	MATHANHVIEN	varchar(20),
	MAPHIM		varchar(20),
	NOIDUNG		varchar(200),
	constraint pk_bl primary key(MABINHLUAN)
)