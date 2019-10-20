﻿----------------------------------------
--VE
CREATE TABLE VE(
	MAVE			varchar(20) not null,	
	MANV			varchar(20),
	MATV			varchar(20),
	MATHONGTINCHIEU varchar(20),
	MASOGHE			varchar(20),
	MAVOUCHER		varchar(20),
	TENLOAINV		varchar(40),
	DONGIA			int,
	MATINHTRANGVE	varchar(20),
	constraint pk_ve primary key(MAVE)
)
GO
-- Khoa ngoai cho bang VE
ALTER TABLE VE ADD CONSTRAINT fk01_VE FOREIGN KEY(MANV) REFERENCES NHANVIEN(MANV)
GO
ALTER TABLE VE ADD CONSTRAINT fk02_VE FOREIGN KEY(MATHONGTINCHIEU) REFERENCES THONGTINCHIEU(MATHONGTINCHIEU)
GO
ALTER TABLE VE ADD CONSTRAINT fk03_VE FOREIGN KEY(MAVOUCHER) REFERENCES VOUCHER(MAVOUCHER)
GO
ALTER TABLE VE ADD CONSTRAINT fk04_VE FOREIGN KEY(MATINHTRANGVE) REFERENCES TINHTRANGVE(MATINHTRANGVE)