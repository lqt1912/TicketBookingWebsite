----------------------------------------
--THONGTINCHIEU
CREATE TABLE THONGTINCHIEU(
	MATHONGTINCHIEU	varchar(20) not null,	
	MAPHIM			varchar(20),
	THOIGIANCHIEU	time,
	MAPHONG			varchar(20),
	constraint pk_ttchieu primary key(MATHONGTINCHIEU)
)