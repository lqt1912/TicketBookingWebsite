CREATE TABLE [dbo].[GHE](
	[MaPhong] [varchar](20) NOT NULL,
	[MaRap] [varchar](10) NOT NULL,
	[Id] [varchar](20) NOT NULL,
	[IsUsed] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC,
	[MaPhong] ASC,
	[MaRap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HOADON]    Script Date: 12/13/2019 1:26:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOADON](
	[MAHOADON] [varchar](20) NOT NULL,
	[MAVE] [varchar](20) NULL,
	[THANHVIEN] [nvarchar](20) NULL,
 CONSTRAINT [pk_hd] PRIMARY KEY CLUSTERED 
(
	[MAHOADON] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOAIGHE]    Script Date: 12/13/2019 1:26:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAIGHE](
	[MALOAIGHE] [varchar](20) NOT NULL,
	[TENLOAIGHE] [nvarchar](40) NULL,
 CONSTRAINT [pk_lghe] PRIMARY KEY CLUSTERED 
(
	[MALOAIGHE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOAINHANVIEN]    Script Date: 12/13/2019 1:26:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAINHANVIEN](
	[MALOAINV] [varchar](20) NOT NULL,
	[TENLOAINV] [nvarchar](40) NULL,
 CONSTRAINT [pk_lnv] PRIMARY KEY CLUSTERED 
(
	[MALOAINV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOAIPHIM]    Script Date: 12/13/2019 1:26:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAIPHIM](
	[MALOAIPHIM] [varchar](20) NOT NULL,
	[TENLOAIPHIM] [nvarchar](40) NULL,
 CONSTRAINT [pk_lphim] PRIMARY KEY CLUSTERED 
(
	[MALOAIPHIM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOAIPHONG]    Script Date: 12/13/2019 1:26:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAIPHONG](
	[MALOAIPHONG] [varchar](20) NOT NULL,
	[TENLOAIPHONG] [nvarchar](40) NULL,
 CONSTRAINT [pk_lphong] PRIMARY KEY CLUSTERED 
(
	[MALOAIPHONG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOAITHANHVIEN]    Script Date: 12/13/2019 1:26:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAITHANHVIEN](
	[MALOAITV] [varchar](20) NOT NULL,
	[TENLOAITV] [nvarchar](40) NULL,
 CONSTRAINT [pk_ltv] PRIMARY KEY CLUSTERED 
(
	[MALOAITV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHANVIEN]    Script Date: 12/13/2019 1:26:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHANVIEN](
	[MANV] [varchar](20) NOT NULL,
	[HOTEN] [nvarchar](40) NULL,
	[GIOITINH] [nvarchar](20) NULL,
	[DIACHI] [nvarchar](40) NULL,
	[SODT] [varchar](20) NULL,
	[MALOAINV] [varchar](20) NULL,
 CONSTRAINT [pk_nv] PRIMARY KEY CLUSTERED 
(
	[MANV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHIM]    Script Date: 12/13/2019 1:26:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHIM](
	[MAPHIM] [varchar](20) NOT NULL,
	[TENPHIM] [nvarchar](40) NULL,
	[MAQUOCGIA] [varchar](20) NULL,
	[MALOAIPHIM] [varchar](20) NULL,
	[THOIGIANBD] [smalldatetime] NULL,
	[THOIGIANKT] [smalldatetime] NULL,
	[THOILUONG] [varchar](20) NULL,
	[SOLUONGSUAT] [smallint] NULL,
	[GHICHU] [nvarchar](100) NULL,
	[MABINHLUAN] [varchar](20) NULL,
	[ANHDAIDIEN] [nvarchar](100) NULL,
	[TENTIENGANH] [varchar](100) NULL,
	[DANHGIA] [int] NULL,
	[DAODIEN] [nvarchar](50) NULL,
	[DIENVIEN] [nvarchar](100) NULL,
	[MOTA] [ntext] NULL,
 CONSTRAINT [pk_phim] PRIMARY KEY CLUSTERED 
(
	[MAPHIM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHONG]    Script Date: 12/13/2019 1:26:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHONG](
	[MaPhong] [varchar](20) NOT NULL,
	[MARAP] [varchar](10) NOT NULL,
	[MaLoaiPhong] [varchar](20) NULL,
	[SoCho] [int] NULL,
	[TenPhong] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPhong] ASC,
	[MARAP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QUOCGIA]    Script Date: 12/13/2019 1:26:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QUOCGIA](
	[MAQUOCGIA] [varchar](20) NOT NULL,
	[TENQUOCGIA] [nvarchar](40) NULL,
 CONSTRAINT [pk_qg] PRIMARY KEY CLUSTERED 
(
	[MAQUOCGIA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RAPCHIEUPHIM]    Script Date: 12/13/2019 1:26:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RAPCHIEUPHIM](
	[MARAP] [varchar](10) NOT NULL,
	[TENRAP] [nvarchar](50) NULL,
	[DIACHI] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MARAP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[THANHVIEN]    Script Date: 12/13/2019 1:26:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[THANHVIEN](
	[MATV] [varchar](20) NOT NULL,
	[HOTEN] [nvarchar](40) NULL,
	[GIOITINH] [nvarchar](20) NULL,
	[SODT] [varchar](20) NULL,
	[EMAIL] [varchar](40) NULL,
	[MALOAITV] [varchar](20) NULL,
	[MAQUOCGIA] [varchar](20) NULL,
 CONSTRAINT [pk_tv] PRIMARY KEY CLUSTERED 
(
	[MATV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[THONGTINCHIEU]    Script Date: 12/13/2019 1:26:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[THONGTINCHIEU](
	[MATHONGTINCHIEU] [varchar](20) NOT NULL,
	[MAPHIM] [varchar](20) NULL,
	[THOIGIANCHIEU] [nvarchar](200) NULL,
	[NGAYCHIEU] [smalldatetime] NULL,
	[MAPHONG] [varchar](20) NULL,
	[MARAP] [varchar](10) NULL,
 CONSTRAINT [pk_ttchieu] PRIMARY KEY CLUSTERED 
(
	[MATHONGTINCHIEU] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TINHTRANGVE]    Script Date: 12/13/2019 1:26:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TINHTRANGVE](
	[MATINHTRANGVE] [varchar](20) NOT NULL,
	[TENTINHTRANGVE] [nvarchar](40) NULL,
 CONSTRAINT [pk_ttve] PRIMARY KEY CLUSTERED 
(
	[MATINHTRANGVE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VE]    Script Date: 12/13/2019 1:26:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VE](
	[MAVE] [varchar](20) NOT NULL,
	[MANV] [varchar](20) NULL,
	[MATV] [varchar](20) NULL,
	[MATHONGTINCHIEU] [varchar](20) NULL,
	[MASOGHE] [varchar](20) NULL,
	[MAVOUCHER] [varchar](20) NULL,
	[TENLOAINV] [nvarchar](40) NULL,
	[DONGIA] [int] NULL,
	[MATINHTRANGVE] [varchar](20) NULL,
 CONSTRAINT [pk_ve] PRIMARY KEY CLUSTERED 
(
	[MAVE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VOUCHER]    Script Date: 12/13/2019 1:26:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VOUCHER](
	[MAVOUCHER] [varchar](20) NOT NULL,
	[TENVOUCHER] [nvarchar](360) NULL,
	[NOIDUNG] [ntext] NULL,
	[NGAYBD] [nvarchar](20) NULL,
	[NGAYKT] [nvarchar](20) NULL,
	[GIAMGIA] [int] NULL,
	[GHICHU] [ntext] NULL,
	[ANHDAIDIEN] [varchar](50) NULL,
 CONSTRAINT [pk_voucher] PRIMARY KEY CLUSTERED 
(
	[MAVOUCHER] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[BINHLUAN] ([MABINHLUAN], [MATHANHVIEN], [MAPHIM], [NOIDUNG]) VALUES (N'binhluan01', N'thanhvien01', N'phim01', N'Phim quá hay')
INSERT [dbo].[BINHLUAN] ([MABINHLUAN], [MATHANHVIEN], [MAPHIM], [NOIDUNG]) VALUES (N'binhluan02', N'thanhvien02', N'phim02', N'Phim quá dở')
INSERT [dbo].[BINHLUAN] ([MABINHLUAN], [MATHANHVIEN], [MAPHIM], [NOIDUNG]) VALUES (N'binhluan03', N'thanhvien03', N'phim03', N'Phim bình thường')
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap02', N'A1', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap03', N'A1', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap04', N'A1', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap01', N'A1', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap02', N'A1', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap03', N'A1', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap04', N'A1', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap01', N'A10', 1)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap02', N'A10', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap03', N'A10', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap04', N'A10', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap01', N'A10', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap02', N'A10', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap03', N'A10', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap04', N'A10', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap01', N'A11', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap02', N'A11', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap03', N'A11', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap04', N'A11', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap01', N'A12', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap02', N'A12', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap03', N'A12', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap04', N'A12', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap01', N'A2', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap02', N'A2', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap03', N'A2', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap04', N'A2', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap01', N'A2', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap02', N'A2', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap03', N'A2', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap04', N'A2', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap01', N'A3', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap02', N'A3', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap03', N'A3', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap04', N'A3', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap01', N'A3', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap02', N'A3', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap03', N'A3', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap04', N'A3', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap01', N'A4', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap02', N'A4', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap03', N'A4', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap04', N'A4', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap01', N'A4', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap02', N'A4', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap03', N'A4', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap04', N'A4', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap01', N'A5', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap02', N'A5', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap03', N'A5', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap04', N'A5', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap01', N'A5', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap02', N'A5', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap03', N'A5', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap04', N'A5', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap01', N'A6', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap02', N'A6', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap03', N'A6', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap04', N'A6', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap01', N'A6', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap02', N'A6', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap03', N'A6', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap04', N'A6', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap01', N'A7', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap02', N'A7', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap03', N'A7', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap04', N'A7', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap01', N'A7', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap02', N'A7', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap03', N'A7', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap04', N'A7', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap01', N'A8', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap02', N'A8', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap03', N'A8', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap04', N'A8', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap01', N'A8', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap02', N'A8', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap03', N'A8', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap04', N'A8', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap01', N'A9', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap02', N'A9', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap03', N'A9', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap04', N'A9', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap01', N'A9', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap02', N'A9', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap03', N'A9', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap04', N'A9', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap01', N'B1', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap02', N'B1', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap03', N'B1', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap04', N'B1', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap01', N'B1', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap02', N'B1', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap03', N'B1', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap04', N'B1', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap01', N'B10', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap02', N'B10', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap03', N'B10', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap04', N'B10', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap01', N'B10', 0)
GO
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap02', N'B10', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap03', N'B10', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap04', N'B10', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap01', N'B11', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap02', N'B11', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap03', N'B11', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap04', N'B11', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap01', N'B12', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap02', N'B12', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap03', N'B12', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap04', N'B12', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap01', N'B2', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap02', N'B2', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap03', N'B2', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap04', N'B2', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap01', N'B2', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap02', N'B2', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap03', N'B2', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap04', N'B2', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap01', N'B3', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap02', N'B3', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap03', N'B3', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap04', N'B3', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap01', N'B3', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap02', N'B3', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap03', N'B3', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap04', N'B3', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap01', N'B4', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap02', N'B4', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap03', N'B4', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap04', N'B4', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap01', N'B4', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap02', N'B4', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap03', N'B4', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap04', N'B4', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap01', N'B5', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap02', N'B5', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap03', N'B5', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap04', N'B5', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap01', N'B5', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap02', N'B5', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap03', N'B5', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap04', N'B5', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap01', N'B6', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap02', N'B6', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap03', N'B6', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap04', N'B6', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap01', N'B6', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap02', N'B6', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap03', N'B6', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap04', N'B6', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap01', N'B7', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap02', N'B7', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap03', N'B7', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap04', N'B7', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap01', N'B7', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap02', N'B7', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap03', N'B7', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap04', N'B7', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap01', N'B8', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap02', N'B8', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap03', N'B8', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap04', N'B8', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap01', N'B8', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap02', N'B8', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap03', N'B8', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap04', N'B8', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap01', N'B9', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap02', N'B9', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap03', N'B9', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap04', N'B9', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap01', N'B9', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap02', N'B9', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap03', N'B9', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap04', N'B9', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap01', N'C1', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap02', N'C1', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap03', N'C1', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap04', N'C1', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap01', N'C1', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap02', N'C1', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap03', N'C1', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap04', N'C1', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap01', N'C10', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap02', N'C10', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap03', N'C10', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap04', N'C10', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap01', N'C10', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap02', N'C10', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap03', N'C10', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap04', N'C10', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap01', N'C11', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap02', N'C11', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap03', N'C11', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap04', N'C11', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap01', N'C12', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap02', N'C12', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap03', N'C12', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap04', N'C12', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap01', N'C2', 0)
GO
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap02', N'C2', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap03', N'C2', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap04', N'C2', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap01', N'C2', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap02', N'C2', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap03', N'C2', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap04', N'C2', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap01', N'C3', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap02', N'C3', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap03', N'C3', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap04', N'C3', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap01', N'C3', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap02', N'C3', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap03', N'C3', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap04', N'C3', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap01', N'C4', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap02', N'C4', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap03', N'C4', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap04', N'C4', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap01', N'C4', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap02', N'C4', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap03', N'C4', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap04', N'C4', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap01', N'C5', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap02', N'C5', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap03', N'C5', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap04', N'C5', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap01', N'C5', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap02', N'C5', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap03', N'C5', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap04', N'C5', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap01', N'C6', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap02', N'C6', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap03', N'C6', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap04', N'C6', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap01', N'C6', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap02', N'C6', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap03', N'C6', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap04', N'C6', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap01', N'C7', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap02', N'C7', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap03', N'C7', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap04', N'C7', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap01', N'C7', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap02', N'C7', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap03', N'C7', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap04', N'C7', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap01', N'C8', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap02', N'C8', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap03', N'C8', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap04', N'C8', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap01', N'C8', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap02', N'C8', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap03', N'C8', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap04', N'C8', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap01', N'C9', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap02', N'C9', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap03', N'C9', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap04', N'C9', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap01', N'C9', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap02', N'C9', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap03', N'C9', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap04', N'C9', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap01', N'D1', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap02', N'D1', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap03', N'D1', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap04', N'D1', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap01', N'D1', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap02', N'D1', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap03', N'D1', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap04', N'D1', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap01', N'D10', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap02', N'D10', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap03', N'D10', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap04', N'D10', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap01', N'D10', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap02', N'D10', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap03', N'D10', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap04', N'D10', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap01', N'D11', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap02', N'D11', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap03', N'D11', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap04', N'D11', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap01', N'D12', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap02', N'D12', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap03', N'D12', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap04', N'D12', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap01', N'D2', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap02', N'D2', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap03', N'D2', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap04', N'D2', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap01', N'D2', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap02', N'D2', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap03', N'D2', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap04', N'D2', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap01', N'D3', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap02', N'D3', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap03', N'D3', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap04', N'D3', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap01', N'D3', 0)
GO
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap02', N'D3', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap03', N'D3', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap04', N'D3', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap01', N'D4', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap02', N'D4', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap03', N'D4', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap04', N'D4', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap01', N'D4', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap02', N'D4', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap03', N'D4', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap04', N'D4', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap01', N'D5', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap02', N'D5', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap03', N'D5', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap04', N'D5', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap01', N'D5', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap02', N'D5', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap03', N'D5', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap04', N'D5', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap01', N'D6', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap02', N'D6', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap03', N'D6', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap04', N'D6', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap01', N'D6', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap02', N'D6', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap03', N'D6', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap04', N'D6', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap01', N'D7', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap02', N'D7', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap03', N'D7', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap04', N'D7', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap01', N'D7', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap02', N'D7', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap03', N'D7', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap04', N'D7', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap01', N'D8', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap02', N'D8', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap03', N'D8', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap04', N'D8', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap01', N'D8', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap02', N'D8', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap03', N'D8', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap04', N'D8', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap01', N'D9', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap02', N'D9', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap03', N'D9', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap04', N'D9', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap01', N'D9', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap02', N'D9', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap03', N'D9', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap04', N'D9', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap01', N'E1', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap02', N'E1', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap03', N'E1', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap04', N'E1', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap01', N'E1', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap02', N'E1', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap03', N'E1', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap04', N'E1', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap01', N'E10', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap02', N'E10', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap03', N'E10', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap04', N'E10', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap01', N'E10', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap02', N'E10', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap03', N'E10', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap04', N'E10', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap01', N'E11', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap02', N'E11', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap03', N'E11', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap04', N'E11', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap01', N'E12', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap02', N'E12', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap03', N'E12', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap04', N'E12', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap01', N'E2', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap02', N'E2', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap03', N'E2', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap04', N'E2', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap01', N'E2', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap02', N'E2', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap03', N'E2', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap04', N'E2', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap01', N'E3', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap02', N'E3', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap03', N'E3', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap04', N'E3', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap01', N'E3', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap02', N'E3', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap03', N'E3', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap04', N'E3', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap01', N'E4', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap02', N'E4', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap03', N'E4', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap04', N'E4', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap01', N'E4', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap02', N'E4', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap03', N'E4', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap04', N'E4', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap01', N'E5', 0)
GO
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap02', N'E5', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap03', N'E5', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap04', N'E5', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap01', N'E5', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap02', N'E5', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap03', N'E5', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap04', N'E5', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap01', N'E6', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap02', N'E6', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap03', N'E6', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap04', N'E6', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap01', N'E6', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap02', N'E6', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap03', N'E6', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap04', N'E6', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap01', N'E7', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap02', N'E7', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap03', N'E7', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap04', N'E7', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap01', N'E7', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap02', N'E7', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap03', N'E7', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap04', N'E7', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap01', N'E8', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap02', N'E8', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap03', N'E8', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap04', N'E8', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap01', N'E8', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap02', N'E8', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap03', N'E8', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap04', N'E8', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap01', N'E9', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap02', N'E9', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap03', N'E9', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap04', N'E9', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap01', N'E9', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap02', N'E9', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap03', N'E9', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap04', N'E9', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap01', N'F1', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap02', N'F1', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap03', N'F1', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap04', N'F1', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap01', N'F1', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap02', N'F1', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap03', N'F1', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap04', N'F1', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap01', N'F10', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap02', N'F10', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap03', N'F10', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap04', N'F10', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap01', N'F10', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap02', N'F10', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap03', N'F10', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap04', N'F10', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap01', N'F11', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap02', N'F11', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap03', N'F11', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap04', N'F11', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap01', N'F12', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap02', N'F12', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap03', N'F12', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap04', N'F12', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap01', N'F2', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap02', N'F2', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap03', N'F2', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap04', N'F2', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap01', N'F2', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap02', N'F2', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap03', N'F2', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap04', N'F2', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap01', N'F3', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap02', N'F3', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap03', N'F3', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap04', N'F3', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap01', N'F3', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap02', N'F3', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap03', N'F3', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap04', N'F3', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap01', N'F4', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap02', N'F4', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap03', N'F4', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap04', N'F4', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap01', N'F4', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap02', N'F4', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap03', N'F4', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap04', N'F4', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap01', N'F5', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap02', N'F5', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap03', N'F5', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap04', N'F5', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap01', N'F5', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap02', N'F5', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap03', N'F5', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap04', N'F5', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap01', N'F6', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap02', N'F6', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap03', N'F6', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap04', N'F6', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap01', N'F6', 0)
GO
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap02', N'F6', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap03', N'F6', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap04', N'F6', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap01', N'F7', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap02', N'F7', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap03', N'F7', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap04', N'F7', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap01', N'F7', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap02', N'F7', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap03', N'F7', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap04', N'F7', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap01', N'F8', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap02', N'F8', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap03', N'F8', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap04', N'F8', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap01', N'F8', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap02', N'F8', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap03', N'F8', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap04', N'F8', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap01', N'F9', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap02', N'F9', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap03', N'F9', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap04', N'F9', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap01', N'F9', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap02', N'F9', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap03', N'F9', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap04', N'F9', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap01', N'G1', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap02', N'G1', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap03', N'G1', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap04', N'G1', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap01', N'G1', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap02', N'G1', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap03', N'G1', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap04', N'G1', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap01', N'G10', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap02', N'G10', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap03', N'G10', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap04', N'G10', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap01', N'G10', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap02', N'G10', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap03', N'G10', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap04', N'G10', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap01', N'G11', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap02', N'G11', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap03', N'G11', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap04', N'G11', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap01', N'G12', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap02', N'G12', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap03', N'G12', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap04', N'G12', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap01', N'G2', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap02', N'G2', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap03', N'G2', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap04', N'G2', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap01', N'G2', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap02', N'G2', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap03', N'G2', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap04', N'G2', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap01', N'G3', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap02', N'G3', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap03', N'G3', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap04', N'G3', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap01', N'G3', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap02', N'G3', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap03', N'G3', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap04', N'G3', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap01', N'G4', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap02', N'G4', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap03', N'G4', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap04', N'G4', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap01', N'G4', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap02', N'G4', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap03', N'G4', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap04', N'G4', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap01', N'G5', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap02', N'G5', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap03', N'G5', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap04', N'G5', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap01', N'G5', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap02', N'G5', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap03', N'G5', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap04', N'G5', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap01', N'G6', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap02', N'G6', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap03', N'G6', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap04', N'G6', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap01', N'G6', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap02', N'G6', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap03', N'G6', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap04', N'G6', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap01', N'G7', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap02', N'G7', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap03', N'G7', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap04', N'G7', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap01', N'G7', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap02', N'G7', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap03', N'G7', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap04', N'G7', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap01', N'G8', 0)
GO
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap02', N'G8', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap03', N'G8', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap04', N'G8', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap01', N'G8', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap02', N'G8', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap03', N'G8', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap04', N'G8', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap01', N'G9', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap02', N'G9', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap03', N'G9', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap04', N'G9', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap01', N'G9', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap02', N'G9', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap03', N'G9', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap04', N'G9', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap01', N'H1', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap02', N'H1', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap03', N'H1', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap04', N'H1', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap01', N'H1', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap02', N'H1', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap03', N'H1', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap04', N'H1', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap01', N'H10', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap02', N'H10', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap03', N'H10', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap04', N'H10', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap01', N'H10', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap02', N'H10', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap03', N'H10', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap04', N'H10', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap01', N'H11', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap02', N'H11', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap03', N'H11', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap04', N'H11', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap01', N'H12', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap02', N'H12', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap03', N'H12', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap04', N'H12', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap01', N'H2', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap02', N'H2', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap03', N'H2', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap04', N'H2', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap01', N'H2', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap02', N'H2', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap03', N'H2', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap04', N'H2', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap01', N'H3', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap02', N'H3', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap03', N'H3', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap04', N'H3', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap01', N'H3', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap02', N'H3', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap03', N'H3', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap04', N'H3', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap01', N'H4', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap02', N'H4', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap03', N'H4', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap04', N'H4', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap01', N'H4', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap02', N'H4', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap03', N'H4', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap04', N'H4', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap01', N'H5', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap02', N'H5', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap03', N'H5', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap04', N'H5', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap01', N'H5', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap02', N'H5', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap03', N'H5', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap04', N'H5', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap01', N'H6', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap02', N'H6', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap03', N'H6', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap04', N'H6', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap01', N'H6', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap02', N'H6', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap03', N'H6', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap04', N'H6', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap01', N'H7', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap02', N'H7', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap03', N'H7', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap04', N'H7', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap01', N'H7', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap02', N'H7', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap03', N'H7', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap04', N'H7', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap01', N'H8', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap02', N'H8', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap03', N'H8', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap04', N'H8', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap01', N'H8', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap02', N'H8', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap03', N'H8', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap04', N'H8', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap01', N'H9', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap02', N'H9', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap03', N'H9', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap04', N'H9', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap01', N'H9', 0)
GO
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap02', N'H9', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap03', N'H9', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap04', N'H9', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap01', N'I1', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap02', N'I1', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap03', N'I1', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap04', N'I1', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap01', N'I1', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap02', N'I1', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap03', N'I1', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap04', N'I1', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap01', N'I10', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap02', N'I10', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap03', N'I10', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap04', N'I10', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap01', N'I10', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap02', N'I10', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap03', N'I10', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap04', N'I10', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap01', N'I11', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap02', N'I11', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap03', N'I11', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap04', N'I11', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap01', N'I12', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap02', N'I12', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap03', N'I12', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap04', N'I12', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap01', N'I2', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap02', N'I2', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap03', N'I2', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap04', N'I2', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap01', N'I2', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap02', N'I2', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap03', N'I2', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap04', N'I2', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap01', N'I3', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap02', N'I3', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap03', N'I3', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap04', N'I3', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap01', N'I3', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap02', N'I3', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap03', N'I3', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap04', N'I3', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap01', N'I4', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap02', N'I4', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap03', N'I4', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap04', N'I4', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap01', N'I4', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap02', N'I4', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap03', N'I4', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap04', N'I4', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap01', N'I5', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap02', N'I5', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap03', N'I5', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap04', N'I5', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap01', N'I5', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap02', N'I5', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap03', N'I5', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap04', N'I5', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap01', N'I6', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap02', N'I6', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap03', N'I6', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap04', N'I6', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap01', N'I6', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap02', N'I6', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap03', N'I6', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap04', N'I6', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap01', N'I7', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap02', N'I7', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap03', N'I7', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap04', N'I7', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap01', N'I7', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap02', N'I7', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap03', N'I7', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap04', N'I7', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap01', N'I8', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap02', N'I8', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap03', N'I8', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap04', N'I8', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap01', N'I8', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap02', N'I8', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap03', N'I8', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap04', N'I8', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap01', N'I9', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap02', N'I9', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap03', N'I9', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p01', N'rap04', N'I9', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap01', N'I9', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap02', N'I9', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap03', N'I9', 0)
INSERT [dbo].[GHE] ([MaPhong], [MaRap], [Id], [IsUsed]) VALUES (N'p02', N'rap04', N'I9', 0)
INSERT [dbo].[HOADON] ([MAHOADON], [MAVE], [THANHVIEN]) VALUES (N'hoadon01', N've01', N'Lê Quốc Thắng')
INSERT [dbo].[LOAIGHE] ([MALOAIGHE], [TENLOAIGHE]) VALUES (N'loaighe01', N'Ghế thường')
INSERT [dbo].[LOAIGHE] ([MALOAIGHE], [TENLOAIGHE]) VALUES (N'loaighe02', N'Ghế Vip')
INSERT [dbo].[LOAINHANVIEN] ([MALOAINV], [TENLOAINV]) VALUES (N'loainv01', N'Quản trị viên')
INSERT [dbo].[LOAINHANVIEN] ([MALOAINV], [TENLOAINV]) VALUES (N'loainv02', N'Nhân viên bán hàng')
INSERT [dbo].[LOAIPHIM] ([MALOAIPHIM], [TENLOAIPHIM]) VALUES (N'loaiphim01', N'Hành động')
INSERT [dbo].[LOAIPHIM] ([MALOAIPHIM], [TENLOAIPHIM]) VALUES (N'loaiphim02', N'Tình cảm')
INSERT [dbo].[LOAIPHIM] ([MALOAIPHIM], [TENLOAIPHIM]) VALUES (N'loaiphim03', N'Chiến tranh')
INSERT [dbo].[LOAIPHONG] ([MALOAIPHONG], [TENLOAIPHONG]) VALUES (N'loaiphong01', N'2D')
INSERT [dbo].[LOAIPHONG] ([MALOAIPHONG], [TENLOAIPHONG]) VALUES (N'loaiphong02', N'3D')
INSERT [dbo].[LOAITHANHVIEN] ([MALOAITV], [TENLOAITV]) VALUES (N'loaitv01', N'Thành viên Đồng')
INSERT [dbo].[LOAITHANHVIEN] ([MALOAITV], [TENLOAITV]) VALUES (N'loaitv02', N'Thành viên Bạc')
INSERT [dbo].[LOAITHANHVIEN] ([MALOAITV], [TENLOAITV]) VALUES (N'loaitv03', N'Thành viên Kim Cương')
INSERT [dbo].[NHANVIEN] ([MANV], [HOTEN], [GIOITINH], [DIACHI], [SODT], [MALOAINV]) VALUES (N'nv01', N'Lê Quốc Thắng', N'Nam', N'HCM', N'0937186594', N'loainv01')
INSERT [dbo].[NHANVIEN] ([MANV], [HOTEN], [GIOITINH], [DIACHI], [SODT], [MALOAINV]) VALUES (N'nv02', N'Đặng Thành Quyên', N'Nam', N'HCM', N'01234567789', N'loainv01')
INSERT [dbo].[NHANVIEN] ([MANV], [HOTEN], [GIOITINH], [DIACHI], [SODT], [MALOAINV]) VALUES (N'nv03', N'Phạm Phúc Khải', N'Nam', N'HCM', N'024681012', NULL)
INSERT [dbo].[PHIM] ([MAPHIM], [TENPHIM], [MAQUOCGIA], [MALOAIPHIM], [THOIGIANBD], [THOIGIANKT], [THOILUONG], [SOLUONGSUAT], [GHICHU], [MABINHLUAN], [ANHDAIDIEN], [TENTIENGANH], [DANHGIA], [DAODIEN], [DIENVIEN], [MOTA]) VALUES (N'phim01', N'Pháp sư mù', N'quocgia01', N'loaiphim01', CAST(N'2019-01-03T00:00:00' AS SmallDateTime), CAST(N'2020-11-03T00:00:00' AS SmallDateTime), N'90', 3, N'', N'binhluan01', N'PHAPSUMU', N'Blind Wizard', NULL, N'Vũ Ngọc Phượng
', N'Kiều Minh Tuấn, Isaac, Diệu Nhi, Phi Phụng

', N'<p class="ng-scope"><span style="font-size:14px;"><span style="font-family:Arial,Helvetica,sans-serif;"><span style="line-height:115%">Nội dung phim kể về Lâm và Phong, hai anh em cùng cha khác mẹ. Do bị chấn thương trong lúc thi đấu Judo nên Lâm bị mất thị giác. Lúc này Phong ở trong tù nên đã tranh thủ cơ hội xin ân xá để về chăm sóc em trai. Những mâu thuẫn và tình huống hài hước đã xảy ra khi hai người sống chung một nhà.</span></span></span><!--| --></p>

						<p class="ng-scope"><span style="font-size:14px;"><span style="font-family:Arial,Helvetica,sans-serif;"><span style="line-height:115%"><a href="https://www.galaxycine.vn/phim-dang-chieu">Phim mới</a> Anh Trai Yêu Quái, ra mắt tại các <a href="https://www.galaxycine.vn/">rạp chiếu phim</a> từ ngày 29.11.2019</span></span></span></p>
					')
INSERT [dbo].[PHIM] ([MAPHIM], [TENPHIM], [MAQUOCGIA], [MALOAIPHIM], [THOIGIANBD], [THOIGIANKT], [THOILUONG], [SOLUONGSUAT], [GHICHU], [MABINHLUAN], [ANHDAIDIEN], [TENTIENGANH], [DANHGIA], [DAODIEN], [DIENVIEN], [MOTA]) VALUES (N'phim02', N'Kẻ hủy diệt: Vận mệnh đen tối', N'quocgia02', N'loaiphim01', CAST(N'2019-01-04T00:00:00' AS SmallDateTime), CAST(N'2020-01-04T00:00:00' AS SmallDateTime), N'90', 4, N' ', N'binhluan02', N'TERMINATORDARKFATE', N'Terminator: Dark fate', NULL, N'Vũ Ngọc Phượng
', N'Kiều Minh Tuấn, Isaac, Diệu Nhi, Phi Phụng

', N'<p class="ng-scope"><span style="font-size:14px;"><span style="font-family:Arial,Helvetica,sans-serif;"><span style="line-height:115%">Nội dung phim kể về Lâm và Phong, hai anh em cùng cha khác mẹ. Do bị chấn thương trong lúc thi đấu Judo nên Lâm bị mất thị giác. Lúc này Phong ở trong tù nên đã tranh thủ cơ hội xin ân xá để về chăm sóc em trai. Những mâu thuẫn và tình huống hài hước đã xảy ra khi hai người sống chung một nhà.</span></span></span><!--| --></p>

						<p class="ng-scope"><span style="font-size:14px;"><span style="font-family:Arial,Helvetica,sans-serif;"><span style="line-height:115%"><a href="https://www.galaxycine.vn/phim-dang-chieu">Phim mới</a> Anh Trai Yêu Quái, ra mắt tại các <a href="https://www.galaxycine.vn/">rạp chiếu phim</a> từ ngày 29.11.2019</span></span></span></p>
					')
INSERT [dbo].[PHIM] ([MAPHIM], [TENPHIM], [MAQUOCGIA], [MALOAIPHIM], [THOIGIANBD], [THOIGIANKT], [THOILUONG], [SOLUONGSUAT], [GHICHU], [MABINHLUAN], [ANHDAIDIEN], [TENTIENGANH], [DANHGIA], [DAODIEN], [DIENVIEN], [MOTA]) VALUES (N'phim03', N'Ký ức kinh hoàng', N'quocgia02', N'loaiphim01', CAST(N'2019-01-05T00:00:00' AS SmallDateTime), CAST(N'2020-01-05T00:00:00' AS SmallDateTime), N'90', 5, N' ', N'binhluan03', N'DOCTORSLEEP', N'DOctor sleep', NULL, N'Vũ Ngọc Phượng
', N'Kiều Minh Tuấn, Isaac, Diệu Nhi, Phi Phụng

', N'<p class="ng-scope"><span style="font-size:14px;"><span style="font-family:Arial,Helvetica,sans-serif;"><span style="line-height:115%">Nội dung phim kể về Lâm và Phong, hai anh em cùng cha khác mẹ. Do bị chấn thương trong lúc thi đấu Judo nên Lâm bị mất thị giác. Lúc này Phong ở trong tù nên đã tranh thủ cơ hội xin ân xá để về chăm sóc em trai. Những mâu thuẫn và tình huống hài hước đã xảy ra khi hai người sống chung một nhà.</span></span></span><!--| --></p>

						<p class="ng-scope"><span style="font-size:14px;"><span style="font-family:Arial,Helvetica,sans-serif;"><span style="line-height:115%"><a href="https://www.galaxycine.vn/phim-dang-chieu">Phim mới</a> Anh Trai Yêu Quái, ra mắt tại các <a href="https://www.galaxycine.vn/">rạp chiếu phim</a> từ ngày 29.11.2019</span></span></span></p>
					')
INSERT [dbo].[PHIM] ([MAPHIM], [TENPHIM], [MAQUOCGIA], [MALOAIPHIM], [THOIGIANBD], [THOIGIANKT], [THOILUONG], [SOLUONGSUAT], [GHICHU], [MABINHLUAN], [ANHDAIDIEN], [TENTIENGANH], [DANHGIA], [DAODIEN], [DIENVIEN], [MOTA]) VALUES (N'phim04', N'Đại dịch tử thần', N'quocgia03', N'loaiphim02', CAST(N'2019-01-06T00:00:00' AS SmallDateTime), CAST(N'2020-01-03T00:00:00' AS SmallDateTime), N'90', 6, NULL, NULL, N'INFECTION', N'Infection', NULL, N'Vũ Ngọc Phượng
', N'Kiều Minh Tuấn, Isaac, Diệu Nhi, Phi Phụng

', N'<p class="ng-scope"><span style="font-size:14px;"><span style="font-family:Arial,Helvetica,sans-serif;"><span style="line-height:115%">Nội dung phim kể về Lâm và Phong, hai anh em cùng cha khác mẹ. Do bị chấn thương trong lúc thi đấu Judo nên Lâm bị mất thị giác. Lúc này Phong ở trong tù nên đã tranh thủ cơ hội xin ân xá để về chăm sóc em trai. Những mâu thuẫn và tình huống hài hước đã xảy ra khi hai người sống chung một nhà.</span></span></span><!--| --></p>

						<p class="ng-scope"><span style="font-size:14px;"><span style="font-family:Arial,Helvetica,sans-serif;"><span style="line-height:115%"><a href="https://www.galaxycine.vn/phim-dang-chieu">Phim mới</a> Anh Trai Yêu Quái, ra mắt tại các <a href="https://www.galaxycine.vn/">rạp chiếu phim</a> từ ngày 29.11.2019</span></span></span></p>
					')
INSERT [dbo].[PHIM] ([MAPHIM], [TENPHIM], [MAQUOCGIA], [MALOAIPHIM], [THOIGIANBD], [THOIGIANKT], [THOILUONG], [SOLUONGSUAT], [GHICHU], [MABINHLUAN], [ANHDAIDIEN], [TENTIENGANH], [DANHGIA], [DAODIEN], [DIENVIEN], [MOTA]) VALUES (N'phim05', N'BÚP BÊ KÝ ỨC: VIOLET EVERGARDEN', N'quocgia01', N'loaiphim02', CAST(N'2019-01-07T00:00:00' AS SmallDateTime), CAST(N'2020-01-04T00:00:00' AS SmallDateTime), N'120', 7, NULL, NULL, N'VIOLETEVERGARDEN', N'Memories Doll', NULL, N'Vũ Ngọc Phượng
', N'Kiều Minh Tuấn, Isaac, Diệu Nhi, Phi Phụng

', N'<p class="ng-scope"><span style="font-size:14px;"><span style="font-family:Arial,Helvetica,sans-serif;"><span style="line-height:115%">Nội dung phim kể về Lâm và Phong, hai anh em cùng cha khác mẹ. Do bị chấn thương trong lúc thi đấu Judo nên Lâm bị mất thị giác. Lúc này Phong ở trong tù nên đã tranh thủ cơ hội xin ân xá để về chăm sóc em trai. Những mâu thuẫn và tình huống hài hước đã xảy ra khi hai người sống chung một nhà.</span></span></span><!--| --></p>

						<p class="ng-scope"><span style="font-size:14px;"><span style="font-family:Arial,Helvetica,sans-serif;"><span style="line-height:115%"><a href="https://www.galaxycine.vn/phim-dang-chieu">Phim mới</a> Anh Trai Yêu Quái, ra mắt tại các <a href="https://www.galaxycine.vn/">rạp chiếu phim</a> từ ngày 29.11.2019</span></span></span></p>
					')
INSERT [dbo].[PHIM] ([MAPHIM], [TENPHIM], [MAQUOCGIA], [MALOAIPHIM], [THOIGIANBD], [THOIGIANKT], [THOILUONG], [SOLUONGSUAT], [GHICHU], [MABINHLUAN], [ANHDAIDIEN], [TENTIENGANH], [DANHGIA], [DAODIEN], [DIENVIEN], [MOTA]) VALUES (N'phim06', N'Thiên sứ không phép màu', N'quocgia01', N'loaiphim02', CAST(N'2019-01-08T00:00:00' AS SmallDateTime), CAST(N'2020-01-05T00:00:00' AS SmallDateTime), N'150', 7, NULL, NULL, N'THIENSUKHONGPHEPMAU', N'Angel with no soul ', NULL, N'Vũ Ngọc Phượng
', N'Kiều Minh Tuấn, Isaac, Diệu Nhi, Phi Phụng

', N'<p class="ng-scope"><span style="font-size:14px;"><span style="font-family:Arial,Helvetica,sans-serif;"><span style="line-height:115%">Nội dung phim kể về Lâm và Phong, hai anh em cùng cha khác mẹ. Do bị chấn thương trong lúc thi đấu Judo nên Lâm bị mất thị giác. Lúc này Phong ở trong tù nên đã tranh thủ cơ hội xin ân xá để về chăm sóc em trai. Những mâu thuẫn và tình huống hài hước đã xảy ra khi hai người sống chung một nhà.</span></span></span><!--| --></p>

						<p class="ng-scope"><span style="font-size:14px;"><span style="font-family:Arial,Helvetica,sans-serif;"><span style="line-height:115%"><a href="https://www.galaxycine.vn/phim-dang-chieu">Phim mới</a> Anh Trai Yêu Quái, ra mắt tại các <a href="https://www.galaxycine.vn/">rạp chiếu phim</a> từ ngày 29.11.2019</span></span></span></p>
					')
INSERT [dbo].[PHIM] ([MAPHIM], [TENPHIM], [MAQUOCGIA], [MALOAIPHIM], [THOIGIANBD], [THOIGIANKT], [THOILUONG], [SOLUONGSUAT], [GHICHU], [MABINHLUAN], [ANHDAIDIEN], [TENTIENGANH], [DANHGIA], [DAODIEN], [DIENVIEN], [MOTA]) VALUES (N'phim07', N'KHUN PHAEN HUYỀN THOẠI BẮT ĐẦU', N'quocgia01', N'loaiphim02', CAST(N'2019-11-07T00:00:00' AS SmallDateTime), CAST(N'2020-06-04T00:00:00' AS SmallDateTime), N'150', 2, NULL, NULL, N'THIENSUKHONGPHEPMAU', N'KHUN PHAEN BEGINS
', NULL, N'Vũ Ngọc Phượng
', N'Kiều Minh Tuấn, Isaac, Diệu Nhi, Phi Phụng

', N'<p class="ng-scope"><span style="font-size:14px;"><span style="font-family:Arial,Helvetica,sans-serif;"><span style="line-height:115%">Nội dung phim kể về Lâm và Phong, hai anh em cùng cha khác mẹ. Do bị chấn thương trong lúc thi đấu Judo nên Lâm bị mất thị giác. Lúc này Phong ở trong tù nên đã tranh thủ cơ hội xin ân xá để về chăm sóc em trai. Những mâu thuẫn và tình huống hài hước đã xảy ra khi hai người sống chung một nhà.</span></span></span><!--| --></p>

						<p class="ng-scope"><span style="font-size:14px;"><span style="font-family:Arial,Helvetica,sans-serif;"><span style="line-height:115%"><a href="https://www.galaxycine.vn/phim-dang-chieu">Phim mới</a> Anh Trai Yêu Quái, ra mắt tại các <a href="https://www.galaxycine.vn/">rạp chiếu phim</a> từ ngày 29.11.2019</span></span></span></p>
					')
INSERT [dbo].[PHIM] ([MAPHIM], [TENPHIM], [MAQUOCGIA], [MALOAIPHIM], [THOIGIANBD], [THOIGIANKT], [THOILUONG], [SOLUONGSUAT], [GHICHU], [MABINHLUAN], [ANHDAIDIEN], [TENTIENGANH], [DANHGIA], [DAODIEN], [DIENVIEN], [MOTA]) VALUES (N'phim08', N'ĐIỀU ƯỚC CUỐI CỦA MẸ
', N'quocgia01', N'loaiphim02', CAST(N'2019-12-11T00:00:00' AS SmallDateTime), CAST(N'2020-06-05T00:00:00' AS SmallDateTime), N'90', 5, NULL, NULL, N'VIOLETEVERGARDEN', N'the big shot', NULL, N'Vũ Ngọc Phượng
', N'Kiều Minh Tuấn, Isaac, Diệu Nhi, Phi Phụng

', N'<p class="ng-scope"><span style="font-size:14px;"><span style="font-family:Arial,Helvetica,sans-serif;"><span style="line-height:115%">Nội dung phim kể về Lâm và Phong, hai anh em cùng cha khác mẹ. Do bị chấn thương trong lúc thi đấu Judo nên Lâm bị mất thị giác. Lúc này Phong ở trong tù nên đã tranh thủ cơ hội xin ân xá để về chăm sóc em trai. Những mâu thuẫn và tình huống hài hước đã xảy ra khi hai người sống chung một nhà.</span></span></span><!--| --></p>

						<p class="ng-scope"><span style="font-size:14px;"><span style="font-family:Arial,Helvetica,sans-serif;"><span style="line-height:115%"><a href="https://www.galaxycine.vn/phim-dang-chieu">Phim mới</a> Anh Trai Yêu Quái, ra mắt tại các <a href="https://www.galaxycine.vn/">rạp chiếu phim</a> từ ngày 29.11.2019</span></span></span></p>
					')
INSERT [dbo].[PHIM] ([MAPHIM], [TENPHIM], [MAQUOCGIA], [MALOAIPHIM], [THOIGIANBD], [THOIGIANKT], [THOILUONG], [SOLUONGSUAT], [GHICHU], [MABINHLUAN], [ANHDAIDIEN], [TENTIENGANH], [DANHGIA], [DAODIEN], [DIENVIEN], [MOTA]) VALUES (N'phim09', N'Đại thần tử dịch ', N'quocgia03', N'loaiphim02', CAST(N'2019-12-08T00:00:00' AS SmallDateTime), CAST(N'2020-06-05T00:00:00' AS SmallDateTime), N'90', 14, NULL, NULL, N'INFECTION', N'Nearly Infection', NULL, N'Vũ Ngọc Phượng
', N'Kiều Minh Tuấn, Isaac, Diệu Nhi, Phi Phụng

', N'<p class="ng-scope"><span style="font-size:14px;"><span style="font-family:Arial,Helvetica,sans-serif;"><span style="line-height:115%">Nội dung phim kể về Lâm và Phong, hai anh em cùng cha khác mẹ. Do bị chấn thương trong lúc thi đấu Judo nên Lâm bị mất thị giác. Lúc này Phong ở trong tù nên đã tranh thủ cơ hội xin ân xá để về chăm sóc em trai. Những mâu thuẫn và tình huống hài hước đã xảy ra khi hai người sống chung một nhà.</span></span></span><!--| --></p>

						<p class="ng-scope"><span style="font-size:14px;"><span style="font-family:Arial,Helvetica,sans-serif;"><span style="line-height:115%"><a href="https://www.galaxycine.vn/phim-dang-chieu">Phim mới</a> Anh Trai Yêu Quái, ra mắt tại các <a href="https://www.galaxycine.vn/">rạp chiếu phim</a> từ ngày 29.11.2019</span></span></span></p>
					')
INSERT [dbo].[PHIM] ([MAPHIM], [TENPHIM], [MAQUOCGIA], [MALOAIPHIM], [THOIGIANBD], [THOIGIANKT], [THOILUONG], [SOLUONGSUAT], [GHICHU], [MABINHLUAN], [ANHDAIDIEN], [TENTIENGANH], [DANHGIA], [DAODIEN], [DIENVIEN], [MOTA]) VALUES (N'phim10', N'GIA ĐÌNH ADDAMs', N'quocgia02', N'loaiphim01', CAST(N'2019-12-09T00:00:00' AS SmallDateTime), CAST(N'2020-06-03T00:00:00' AS SmallDateTime), N'134', 4, NULL, NULL, N'DOCTORSLEEP', N'The adda, family', NULL, N'Vũ Ngọc Phượng
', N'Kiều Minh Tuấn, Isaac, Diệu Nhi, Phi Phụng

', N'<p class="ng-scope"><span style="font-size:14px;"><span style="font-family:Arial,Helvetica,sans-serif;"><span style="line-height:115%">Nội dung phim kể về Lâm và Phong, hai anh em cùng cha khác mẹ. Do bị chấn thương trong lúc thi đấu Judo nên Lâm bị mất thị giác. Lúc này Phong ở trong tù nên đã tranh thủ cơ hội xin ân xá để về chăm sóc em trai. Những mâu thuẫn và tình huống hài hước đã xảy ra khi hai người sống chung một nhà.</span></span></span><!--| --></p>

						<p class="ng-scope"><span style="font-size:14px;"><span style="font-family:Arial,Helvetica,sans-serif;"><span style="line-height:115%"><a href="https://www.galaxycine.vn/phim-dang-chieu">Phim mới</a> Anh Trai Yêu Quái, ra mắt tại các <a href="https://www.galaxycine.vn/">rạp chiếu phim</a> từ ngày 29.11.2019</span></span></span></p>
					')
INSERT [dbo].[PHIM] ([MAPHIM], [TENPHIM], [MAQUOCGIA], [MALOAIPHIM], [THOIGIANBD], [THOIGIANKT], [THOILUONG], [SOLUONGSUAT], [GHICHU], [MABINHLUAN], [ANHDAIDIEN], [TENTIENGANH], [DANHGIA], [DAODIEN], [DIENVIEN], [MOTA]) VALUES (N'phim11', N'2012', N'quocgia02', N'loaiphim01', CAST(N'2019-12-10T00:00:00' AS SmallDateTime), CAST(N'2020-06-04T00:00:00' AS SmallDateTime), N'120', 5, NULL, NULL, N'TERMINATORDARKFATE', N'2012', NULL, N'Vũ Ngọc Phượng
', N'Kiều Minh Tuấn, Isaac, Diệu Nhi, Phi Phụng

', N'<p class="ng-scope"><span style="font-size:14px;"><span style="font-family:Arial,Helvetica,sans-serif;"><span style="line-height:115%">Nội dung phim kể về Lâm và Phong, hai anh em cùng cha khác mẹ. Do bị chấn thương trong lúc thi đấu Judo nên Lâm bị mất thị giác. Lúc này Phong ở trong tù nên đã tranh thủ cơ hội xin ân xá để về chăm sóc em trai. Những mâu thuẫn và tình huống hài hước đã xảy ra khi hai người sống chung một nhà.</span></span></span><!--| --></p>

						<p class="ng-scope"><span style="font-size:14px;"><span style="font-family:Arial,Helvetica,sans-serif;"><span style="line-height:115%"><a href="https://www.galaxycine.vn/phim-dang-chieu">Phim mới</a> Anh Trai Yêu Quái, ra mắt tại các <a href="https://www.galaxycine.vn/">rạp chiếu phim</a> từ ngày 29.11.2019</span></span></span></p>
					')
INSERT [dbo].[PHIM] ([MAPHIM], [TENPHIM], [MAQUOCGIA], [MALOAIPHIM], [THOIGIANBD], [THOIGIANKT], [THOILUONG], [SOLUONGSUAT], [GHICHU], [MABINHLUAN], [ANHDAIDIEN], [TENTIENGANH], [DANHGIA], [DAODIEN], [DIENVIEN], [MOTA]) VALUES (N'phim12', N'Đùa với lửa ', N'quocgia01', N'loaiphim01', CAST(N'2019-12-11T00:00:00' AS SmallDateTime), CAST(N'2020-06-05T00:00:00' AS SmallDateTime), N'87', 8, NULL, NULL, N'PHAPSUMU', N'Playing with fire', NULL, N'Vũ Ngọc Phượng
', NULL, N'<p class="ng-scope"><span style="font-size:14px;"><span style="font-family:Arial,Helvetica,sans-serif;"><span style="line-height:115%">Nội dung phim kể về Lâm và Phong, hai anh em cùng cha khác mẹ. Do bị chấn thương trong lúc thi đấu Judo nên Lâm bị mất thị giác. Lúc này Phong ở trong tù nên đã tranh thủ cơ hội xin ân xá để về chăm sóc em trai. Những mâu thuẫn và tình huống hài hước đã xảy ra khi hai người sống chung một nhà.</span></span></span><!--| --></p>

						<p class="ng-scope"><span style="font-size:14px;"><span style="font-family:Arial,Helvetica,sans-serif;"><span style="line-height:115%"><a href="https://www.galaxycine.vn/phim-dang-chieu">Phim mới</a> Anh Trai Yêu Quái, ra mắt tại các <a href="https://www.galaxycine.vn/">rạp chiếu phim</a> từ ngày 29.11.2019</span></span></span></p>
					')
INSERT [dbo].[PHONG] ([MaPhong], [MARAP], [MaLoaiPhong], [SoCho], [TenPhong]) VALUES (N'p01', N'rap01', N'loaiphong01', 100, N'PHONG 1')
INSERT [dbo].[PHONG] ([MaPhong], [MARAP], [MaLoaiPhong], [SoCho], [TenPhong]) VALUES (N'p01', N'rap02', N'loaiphong01', 100, N'PHONG 1')
INSERT [dbo].[PHONG] ([MaPhong], [MARAP], [MaLoaiPhong], [SoCho], [TenPhong]) VALUES (N'p01', N'rap03', N'loaiphong01', 100, N'PHONG 1')
INSERT [dbo].[PHONG] ([MaPhong], [MARAP], [MaLoaiPhong], [SoCho], [TenPhong]) VALUES (N'p01', N'rap04', N'loaiphong01', 100, N'PHONG 1')
INSERT [dbo].[PHONG] ([MaPhong], [MARAP], [MaLoaiPhong], [SoCho], [TenPhong]) VALUES (N'p02', N'rap01', N'loaiphong02', 120, N'PHONG 2')
INSERT [dbo].[PHONG] ([MaPhong], [MARAP], [MaLoaiPhong], [SoCho], [TenPhong]) VALUES (N'p02', N'rap02', N'loaiphong02', 120, N'PHONG 2')
INSERT [dbo].[PHONG] ([MaPhong], [MARAP], [MaLoaiPhong], [SoCho], [TenPhong]) VALUES (N'p02', N'rap03', N'loaiphong02', 120, N'PHONG 2')
INSERT [dbo].[PHONG] ([MaPhong], [MARAP], [MaLoaiPhong], [SoCho], [TenPhong]) VALUES (N'p02', N'rap04', N'loaiphong02', 120, N'PHONG 2')
INSERT [dbo].[QUOCGIA] ([MAQUOCGIA], [TENQUOCGIA]) VALUES (N'quocgia01', N'Việt Nam')
INSERT [dbo].[QUOCGIA] ([MAQUOCGIA], [TENQUOCGIA]) VALUES (N'quocgia02', N'Mỹ')
INSERT [dbo].[QUOCGIA] ([MAQUOCGIA], [TENQUOCGIA]) VALUES (N'quocgia03', N'Hàn Quốc')
INSERT [dbo].[RAPCHIEUPHIM] ([MARAP], [TENRAP], [DIACHI]) VALUES (N'rap01', N'TQK Eaon Mall Tân Bình', N'Tân Bình, Hồ Chí Minh')
INSERT [dbo].[RAPCHIEUPHIM] ([MARAP], [TENRAP], [DIACHI]) VALUES (N'rap02', N'TQK Nivcom Thủ Đức', N'Thủ Đức, Hồ Chí Minh')
INSERT [dbo].[RAPCHIEUPHIM] ([MARAP], [TENRAP], [DIACHI]) VALUES (N'rap03', N'TQK Loote Láng Hạ', N'Cầu Giấy, Hà Nội')
INSERT [dbo].[RAPCHIEUPHIM] ([MARAP], [TENRAP], [DIACHI]) VALUES (N'rap04', N'TQK HBD Star ', N'Thanh Xuân, Hà Nội ')
INSERT [dbo].[THANHVIEN] ([MATV], [HOTEN], [GIOITINH], [SODT], [EMAIL], [MALOAITV], [MAQUOCGIA]) VALUES (N'thanhvien01', N'Lê Quốc Thắng', N'Nam', N'012344567', N'mail@gmail.com', N'loaitv01', N'quocgia01')
INSERT [dbo].[THANHVIEN] ([MATV], [HOTEN], [GIOITINH], [SODT], [EMAIL], [MALOAITV], [MAQUOCGIA]) VALUES (N'thanhvien02', N'Nguyễn Ngọc Thư', N'Nữ', N'099888899', N'mail@outlook.com', N'loaitv02', N'quocgia01')
INSERT [dbo].[THANHVIEN] ([MATV], [HOTEN], [GIOITINH], [SODT], [EMAIL], [MALOAITV], [MAQUOCGIA]) VALUES (N'thanhvien03', N'Phạm Nguyễn Phúc Khải', N'Nữ', N'0123456798', N'mail@youtube.com', N'loaitv02', N'quocgia02')
INSERT [dbo].[THONGTINCHIEU] ([MATHONGTINCHIEU], [MAPHIM], [THOIGIANCHIEU], [NGAYCHIEU], [MAPHONG], [MARAP]) VALUES (N'thongtinchieu01', N'phim01', N'10h30', CAST(N'2019-05-03T00:00:00' AS SmallDateTime), N'p01', N'rap01')
INSERT [dbo].[THONGTINCHIEU] ([MATHONGTINCHIEU], [MAPHIM], [THOIGIANCHIEU], [NGAYCHIEU], [MAPHONG], [MARAP]) VALUES (N'thongtinchieu02', N'phim01', N'12h30', CAST(N'2019-05-03T00:00:00' AS SmallDateTime), N'p01', N'rap02')
INSERT [dbo].[THONGTINCHIEU] ([MATHONGTINCHIEU], [MAPHIM], [THOIGIANCHIEU], [NGAYCHIEU], [MAPHONG], [MARAP]) VALUES (N'thongtinchieu03', N'phim03', N'11h30', CAST(N'2019-05-03T00:00:00' AS SmallDateTime), N'p02', N'rap01')
INSERT [dbo].[THONGTINCHIEU] ([MATHONGTINCHIEU], [MAPHIM], [THOIGIANCHIEU], [NGAYCHIEU], [MAPHONG], [MARAP]) VALUES (N'thongtinchieu04', N'phim04', N'15h30', CAST(N'2019-05-03T00:00:00' AS SmallDateTime), N'p01', N'rap04')
INSERT [dbo].[THONGTINCHIEU] ([MATHONGTINCHIEU], [MAPHIM], [THOIGIANCHIEU], [NGAYCHIEU], [MAPHONG], [MARAP]) VALUES (N'thongtinchieu05', N'phim02', N'16h30', CAST(N'2019-05-03T00:00:00' AS SmallDateTime), N'p01', N'rap03')
INSERT [dbo].[THONGTINCHIEU] ([MATHONGTINCHIEU], [MAPHIM], [THOIGIANCHIEU], [NGAYCHIEU], [MAPHONG], [MARAP]) VALUES (N'thongtinchieu06', N'phim05', N'17h30', CAST(N'2019-06-03T00:00:00' AS SmallDateTime), N'p01', N'rap02')
INSERT [dbo].[THONGTINCHIEU] ([MATHONGTINCHIEU], [MAPHIM], [THOIGIANCHIEU], [NGAYCHIEU], [MAPHONG], [MARAP]) VALUES (N'thongtinchieu07
', N'phim06', N'18h30', CAST(N'2019-07-03T00:00:00' AS SmallDateTime), N'p02', N'rap01')
INSERT [dbo].[THONGTINCHIEU] ([MATHONGTINCHIEU], [MAPHIM], [THOIGIANCHIEU], [NGAYCHIEU], [MAPHONG], [MARAP]) VALUES (N'thongtinchieu08
', N'phim07', N'19h30', CAST(N'2019-08-03T00:00:00' AS SmallDateTime), N'p02', N'rap04')
INSERT [dbo].[THONGTINCHIEU] ([MATHONGTINCHIEU], [MAPHIM], [THOIGIANCHIEU], [NGAYCHIEU], [MAPHONG], [MARAP]) VALUES (N'thongtinchieu09
', N'phim02', N'20h30', CAST(N'2019-10-03T00:00:00' AS SmallDateTime), N'p01', N'rap01')
INSERT [dbo].[THONGTINCHIEU] ([MATHONGTINCHIEU], [MAPHIM], [THOIGIANCHIEU], [NGAYCHIEU], [MAPHONG], [MARAP]) VALUES (N'thongtinchieu10
', N'phim01', N'21h30', CAST(N'2019-10-03T00:00:00' AS SmallDateTime), N'p02', N'rap02')
INSERT [dbo].[THONGTINCHIEU] ([MATHONGTINCHIEU], [MAPHIM], [THOIGIANCHIEU], [NGAYCHIEU], [MAPHONG], [MARAP]) VALUES (N'thongtinchieu11
', N'phim05', N'22h30', CAST(N'2019-10-03T00:00:00' AS SmallDateTime), N'p01', N'rap04')
INSERT [dbo].[THONGTINCHIEU] ([MATHONGTINCHIEU], [MAPHIM], [THOIGIANCHIEU], [NGAYCHIEU], [MAPHONG], [MARAP]) VALUES (N'thongtinchieu12
', N'phim04', N'23h30', CAST(N'2019-10-03T00:00:00' AS SmallDateTime), N'p01', N'rap03')
INSERT [dbo].[THONGTINCHIEU] ([MATHONGTINCHIEU], [MAPHIM], [THOIGIANCHIEU], [NGAYCHIEU], [MAPHONG], [MARAP]) VALUES (N'thongtinchieu13
', N'phim03', N'7h30', CAST(N'2019-09-03T00:00:00' AS SmallDateTime), N'p02', N'rap04')
INSERT [dbo].[THONGTINCHIEU] ([MATHONGTINCHIEU], [MAPHIM], [THOIGIANCHIEU], [NGAYCHIEU], [MAPHONG], [MARAP]) VALUES (N'thongtinchieu14', N'phim01', N'15h30', CAST(N'2019-09-03T00:00:00' AS SmallDateTime), N'p01', N'rap03')
INSERT [dbo].[TINHTRANGVE] ([MATINHTRANGVE], [TENTINHTRANGVE]) VALUES (N'tinhtrang01', N'Đã Thanh toán ')
INSERT [dbo].[TINHTRANGVE] ([MATINHTRANGVE], [TENTINHTRANGVE]) VALUES (N'tinhtrang02', N'Chưa Thanh toán')
INSERT [dbo].[TINHTRANGVE] ([MATINHTRANGVE], [TENTINHTRANGVE]) VALUES (N'tinhtrang03', N'Đã hủy')
INSERT [dbo].[VE] ([MAVE], [MANV], [MATV], [MATHONGTINCHIEU], [MASOGHE], [MAVOUCHER], [TENLOAINV], [DONGIA], [MATINHTRANGVE]) VALUES (N've01', N'nv01', N'thanhvien01', N'thongtinchieu01', N'ghe01', N'voucher01', N'loainv01', 45000, N'tinhtrang01')
INSERT [dbo].[VOUCHER] ([MAVOUCHER], [TENVOUCHER], [NOIDUNG], [NGAYBD], [NGAYKT], [GIAMGIA], [GHICHU], [ANHDAIDIEN]) VALUES (N'voucher01', N'Cập Nhật Thông Tin T-Star 2019', N' ', N'30/10/2019', N'31/10/2019', 20, N'<span style="font-size:14px;"><span style="font-family:Arial,Helvetica,sans-serif;"><!--| --><span style="line-height:115%"><span style="line-height:115%">Để <b>Galaxy Cinema</b> có thể trao thêm nhiều ưu đãi tới các khách hàng thành viên Gstars, từ 14.06-07.07.2019, quý khách hàng vui lòng cập nhật đầy đủ những thông tin cần có.</span></span></span></span>', N'gstar2019.jpg')
INSERT [dbo].[VOUCHER] ([MAVOUCHER], [TENVOUCHER], [NOIDUNG], [NGAYBD], [NGAYKT], [GIAMGIA], [GHICHU], [ANHDAIDIEN]) VALUES (N'voucher02', N'Ngày Tri Ân Của Galaxy Cinema - Ngày Thứ Hai ĐẦU TIÊN Mỗi Tháng', NULL, N'30/10/2019', N'31/10/2019', 50, N'<span style="font-size:11pt"><span style="line-height:115%"><span style="font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;"><span style="font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">Từ lâu, chương trình Ngày Tri Ân Nhằm tạo điều kiện thuận lợi hơn cho các khách hàng thả ga xem phim đã trở nên quen thuộc với các khách hàng thân yêu của Galaxy Cinema.</span></span></span></span>', N'galaween.jpg')
INSERT [dbo].[VOUCHER] ([MAVOUCHER], [TENVOUCHER], [NOIDUNG], [NGAYBD], [NGAYKT], [GIAMGIA], [GHICHU], [ANHDAIDIEN]) VALUES (N'voucher03', N'Bắt Kịp Thời Đại 4.0: Bye Bye Thẻ Thành Viên Nhựa', NULL, N'30/10/2019', N'31/10/2019', 60, N'<span style="font-size:14px;"><span style="font-family:Arial,Helvetica,sans-serif;"><span style="line-height:normal">Không cần thẻ nhựa rườm rà nữa! Khi đến Galaxy Cinema mọi thao tác đều được đơn giản hóa chỉ với một chiếc điện thoại di động.</span></span></span>', N'byethenhua.jpg')
INSERT [dbo].[VOUCHER] ([MAVOUCHER], [TENVOUCHER], [NOIDUNG], [NGAYBD], [NGAYKT], [GIAMGIA], [GHICHU], [ANHDAIDIEN]) VALUES (N'voucher04', N'Say Yes To Free Snacks', NULL, NULL, NULL, 70, N'<span style="font-size:14px;"><span style="font-family:Arial,Helvetica,sans-serif;">Ưu đãi tháng 11 dành cho các Stars khi mua một phần combo 1, combo 2 hoặc combo phim sẽ được tặng kèm một gói snacks bất kỳ.</span></span>', N'qrcode.jpg')
INSERT [dbo].[VOUCHER] ([MAVOUCHER], [TENVOUCHER], [NOIDUNG], [NGAYBD], [NGAYKT], [GIAMGIA], [GHICHU], [ANHDAIDIEN]) VALUES (N'voucher05', N'NULLMua 2 Vé Tính Tiền 1', NULL, NULL, NULL, NULL, N'<span style="font-size:14px;"><span style="font-family:Arial,Helvetica,sans-serif;"></span></span>', N'trian45k.jpg')
ALTER TABLE [dbo].[GHE]  WITH CHECK ADD  CONSTRAINT [FK_01] FOREIGN KEY([MaPhong], [MaRap])
REFERENCES [dbo].[PHONG] ([MaPhong], [MARAP])
GO
ALTER TABLE [dbo].[GHE] CHECK CONSTRAINT [FK_01]
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD  CONSTRAINT [fk01_HD] FOREIGN KEY([MAVE])
REFERENCES [dbo].[VE] ([MAVE])
GO
ALTER TABLE [dbo].[HOADON] CHECK CONSTRAINT [fk01_HD]
GO
ALTER TABLE [dbo].[NHANVIEN]  WITH CHECK ADD  CONSTRAINT [fk01_NV] FOREIGN KEY([MALOAINV])
REFERENCES [dbo].[LOAINHANVIEN] ([MALOAINV])
GO
ALTER TABLE [dbo].[NHANVIEN] CHECK CONSTRAINT [fk01_NV]
GO
ALTER TABLE [dbo].[PHIM]  WITH CHECK ADD  CONSTRAINT [fk01_PHIM] FOREIGN KEY([MAQUOCGIA])
REFERENCES [dbo].[QUOCGIA] ([MAQUOCGIA])
GO
ALTER TABLE [dbo].[PHIM] CHECK CONSTRAINT [fk01_PHIM]
GO
ALTER TABLE [dbo].[PHIM]  WITH CHECK ADD  CONSTRAINT [fk02_PHIM] FOREIGN KEY([MALOAIPHIM])
REFERENCES [dbo].[LOAIPHIM] ([MALOAIPHIM])
GO
ALTER TABLE [dbo].[PHIM] CHECK CONSTRAINT [fk02_PHIM]
GO
ALTER TABLE [dbo].[PHIM]  WITH CHECK ADD  CONSTRAINT [fk03_PHIM] FOREIGN KEY([MABINHLUAN])
REFERENCES [dbo].[BINHLUAN] ([MABINHLUAN])
GO
ALTER TABLE [dbo].[PHIM] CHECK CONSTRAINT [fk03_PHIM]
GO
ALTER TABLE [dbo].[PHONG]  WITH CHECK ADD  CONSTRAINT [FK_PHONG_LOAIPHONG] FOREIGN KEY([MaLoaiPhong])
REFERENCES [dbo].[LOAIPHONG] ([MALOAIPHONG])
GO
ALTER TABLE [dbo].[PHONG] CHECK CONSTRAINT [FK_PHONG_LOAIPHONG]
GO
ALTER TABLE [dbo].[PHONG]  WITH CHECK ADD  CONSTRAINT [FK_PHONG_RAPCHIEUPHIM] FOREIGN KEY([MARAP])
REFERENCES [dbo].[RAPCHIEUPHIM] ([MARAP])
GO
ALTER TABLE [dbo].[PHONG] CHECK CONSTRAINT [FK_PHONG_RAPCHIEUPHIM]
GO
ALTER TABLE [dbo].[THANHVIEN]  WITH CHECK ADD  CONSTRAINT [fk01_TV] FOREIGN KEY([MALOAITV])
REFERENCES [dbo].[LOAITHANHVIEN] ([MALOAITV])
GO
ALTER TABLE [dbo].[THANHVIEN] CHECK CONSTRAINT [fk01_TV]
GO
ALTER TABLE [dbo].[THANHVIEN]  WITH CHECK ADD  CONSTRAINT [fk02_TV] FOREIGN KEY([MAQUOCGIA])
REFERENCES [dbo].[QUOCGIA] ([MAQUOCGIA])
GO
ALTER TABLE [dbo].[THANHVIEN] CHECK CONSTRAINT [fk02_TV]
GO
ALTER TABLE [dbo].[THONGTINCHIEU]  WITH CHECK ADD  CONSTRAINT [FK_THONGTINCHIEU_PHIM] FOREIGN KEY([MAPHIM])
REFERENCES [dbo].[PHIM] ([MAPHIM])
GO
ALTER TABLE [dbo].[THONGTINCHIEU] CHECK CONSTRAINT [FK_THONGTINCHIEU_PHIM]
GO
ALTER TABLE [dbo].[THONGTINCHIEU]  WITH CHECK ADD  CONSTRAINT [FK_THONGTINCHIEU_PHONG] FOREIGN KEY([MAPHONG], [MARAP])
REFERENCES [dbo].[PHONG] ([MaPhong], [MARAP])
GO
ALTER TABLE [dbo].[THONGTINCHIEU] CHECK CONSTRAINT [FK_THONGTINCHIEU_PHONG]
GO
ALTER TABLE [dbo].[VE]  WITH CHECK ADD  CONSTRAINT [fk01_VE] FOREIGN KEY([MANV])
REFERENCES [dbo].[NHANVIEN] ([MANV])
GO
ALTER TABLE [dbo].[VE] CHECK CONSTRAINT [fk01_VE]
GO
ALTER TABLE [dbo].[VE]  WITH CHECK ADD  CONSTRAINT [fk02_VE] FOREIGN KEY([MATHONGTINCHIEU])
REFERENCES [dbo].[THONGTINCHIEU] ([MATHONGTINCHIEU])
GO
ALTER TABLE [dbo].[VE] CHECK CONSTRAINT [fk02_VE]
GO
ALTER TABLE [dbo].[VE]  WITH CHECK ADD  CONSTRAINT [fk03_VE] FOREIGN KEY([MAVOUCHER])
REFERENCES [dbo].[VOUCHER] ([MAVOUCHER])
GO
ALTER TABLE [dbo].[VE] CHECK CONSTRAINT [fk03_VE]
GO
ALTER TABLE [dbo].[VE]  WITH CHECK ADD  CONSTRAINT [fk04_VE] FOREIGN KEY([MATINHTRANGVE])
REFERENCES [dbo].[TINHTRANGVE] ([MATINHTRANGVE])
GO
ALTER TABLE [dbo].[VE] CHECK CONSTRAINT [fk04_VE]
GO
USE [master]
GO
ALTER DATABASE [QTKCinema] SET  READ_WRITE 
GO
