using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web.UI.WebControls;

namespace MovieTheater1.Models
{
	public class DataAccess
	{

		public static PhimDangChieu phimDangChieu = new PhimDangChieu();

		public static QTKCinemaEntities2 getEntities()
		{
			return new QTKCinemaEntities2();
		}

		public static QTKCinemaEntities2 db = getEntities();

		public static List<PHIM> GetPhimCarousel()
		{

			var listPhimCarousel = db.PHIMs.Take(3);
			return listPhimCarousel.ToList();
		}

		public static List<PHIM> GetPhimDangChieuShort()
		{

			 
			{
				var now = DateTime.Now;
				var result2 = db.PHIMs.Where(x => x.THOIGIANBD <= now).Take(6);
				return result2.ToList();
			}
		}

		public static List<PHIM> GetPhimShort()
		{
			 
			{
				var result2 = db.PHIMs.SqlQuery("SELECT top 3 * FROM PHIM Where CURRENT_TIMESTAMP <= THOIGIANKT ORDER BY  CURRENT_TIMESTAMP - THOIGIANBD");

				return result2.ToList();
			}
		}

		public static List<PHIM> GetPhimDangChieuAll(int number)
		{
			 
			{
				var now = DateTime.Now;
				var result2 = db.PHIMs.SqlQuery("SELECT * FROM PHIM Where CURRENT_TIMESTAMP <= THOIGIANKT and THOIGIANBD <CURRENT_TIMESTAMP ");
				return result2.ToList();
			}
		}


		public static List<PHIM> GetPhimSapChieuShort()
		{
			 
			{
				var now = DateTime.Now;
				var result2 = db.PHIMs.Where(x=>x.THOIGIANBD>=now).Take(6);

				return result2.ToList();
			}
		}

		public static List<PHIM> GetPhimSapChieuAll(int number)
		{
			 
			{
				var now = DateTime.Now;
				var result2 = db.PHIMs.SqlQuery("SELECT * FROM PHIM Where THOIGIANBD > CURRENT_TIMESTAMP ");
				return result2.ToList();
			}
		}

		public static List<PHIM> Get3PhimMoiNhat()
		{
			 
			{
				var now = DateTime.Now;
				var result2 = db.PHIMs.SqlQuery("SELECT top 3 * FROM PHIM Where CURRENT_TIMESTAMP <= THOIGIANKT ");
				return result2.ToList();
			}
		}

		public static List<PHIM> Get4PhimMoiNhat()
		{
			 
			{
				var now = DateTime.Now;
				var result2 = db.PHIMs.SqlQuery("SELECT top 4 * FROM PHIM Where CURRENT_TIMESTAMP <= THOIGIANKT ");
				return result2.ToList();
			}
		}
		public static List<VOUCHER> GetKhuyenMai()
		{
			 
			{
				var result = db.VOUCHERs;
				return result.ToList();
			}
		}

		public static List<THONGTINCHIEU> GetThongtinchieu()
		{
			 
			{
				var result = db.THONGTINCHIEUx;
				return result.ToList();
			}
		}

		public static List<PHIM> GetPhims()
		{
			 
			{
				var result = db.PHIMs.SqlQuery("select * from PHIM where MAPHIM in (select MAPHIM from THONGTINCHIEU)");
				return result.ToList();
			}
		}

		public static List<RAPCHIEUPHIM> GetRaps()
		{

			 
			{
				var result = db.RAPCHIEUPHIMs;
				return result.ToList();

			}
		}

		public static string GetTenTheLoai(string maloai)
		{
			 
			{
				var result = db.LOAIPHIMs.SqlQuery("select * from LOAIPHIM where MALOAIPHIM = @maloai ",
					new SqlParameter("maloai", maloai));
				return result.ElementAt(0).TENLOAIPHIM;
			}
		}

		public static PHIM GetPhimById(string maPhim)
		{
			 
			{
				var result = db.PHIMs.Where(x => x.MAPHIM == maPhim).ToList();
				return result.ElementAt(0);
			}
		}


		public static string GetTenQuocGia(string maquocgia)
		{
			 
			{
				var result = db.QUOCGIAs.Where(x => x.MAQUOCGIA == maquocgia).ToList();
				return result.ElementAt(0).TENQUOCGIA;
			}
		}
		public static List<PhimDangChieu> GetPhimDangChieusByMaPhim(string maPhim)
		{
			 
			{
				var result1 =
					db.PHIMs.SqlQuery(
						"select * from PHIM, RAPCHIEUPHIM, THONGTINCHIEU where PHIM.MAPHIM = THONGTINCHIEU.MAPHIM and THONGTINCHIEU.MARAP= RAPCHIEUPHIM.MARAP and PHIM.MAPHIM=@MaPhim", new SqlParameter("MaPhim", maPhim)).ToList();
				var result2 = db.RAPCHIEUPHIMs.SqlQuery(
					"select  * from PHIM, RAPCHIEUPHIM, THONGTINCHIEU where PHIM.MAPHIM = THONGTINCHIEU.MAPHIM and THONGTINCHIEU.MARAP= RAPCHIEUPHIM.MARAP and PHIM.MAPHIM=@MaPhim", new SqlParameter("MaPhim", maPhim)).ToList();
				var result3 = db.THONGTINCHIEUx.SqlQuery(
					"select * from PHIM, RAPCHIEUPHIM, THONGTINCHIEU where PHIM.MAPHIM = THONGTINCHIEU.MAPHIM and THONGTINCHIEU.MARAP= RAPCHIEUPHIM.MARAP and PHIM.MAPHIM=@MaPhim", new SqlParameter("MaPhim", maPhim)).ToList();
				var result4 = db.THONGTINCHIEUx.SqlQuery(
					"select * from PHIM, RAPCHIEUPHIM, THONGTINCHIEU where PHIM.MAPHIM = THONGTINCHIEU.MAPHIM and THONGTINCHIEU.MARAP= RAPCHIEUPHIM.MARAP and PHIM.MAPHIM=@MaPhim", new SqlParameter("MaPhim", maPhim)).ToList();
				var result5 = db.THONGTINCHIEUx.SqlQuery(
					"select * from PHIM, RAPCHIEUPHIM, THONGTINCHIEU where PHIM.MAPHIM = THONGTINCHIEU.MAPHIM and THONGTINCHIEU.MARAP= RAPCHIEUPHIM.MARAP and PHIM.MAPHIM=@MaPhim", new SqlParameter("MaPhim", maPhim)).ToList();

				List<PhimDangChieu> res = new List<PhimDangChieu>();
				int i = 0;

				while (i < result1.Count)
				{
					PhimDangChieu pd = new PhimDangChieu();
					;
					pd.TenPhim = result1[i].TENPHIM;
					pd.TenRap = result2[i].TENRAP;
					pd.GioChieu = result4[i].THOIGIANCHIEU;
					pd.NgayChieu = result3[i].NGAYCHIEU.ToString().Substring(0, 9);
					pd.MaThongTinChieu = result5[i].MATHONGTINCHIEU;
					res.Add(pd);
					i++;
				}

				return res;
			}
		}

		public static List<RAPCHIEUPHIM> GetRapsByMaThongTinChieu(string maThongTinChieu)
		{
			 
			{
				var result = db.RAPCHIEUPHIMs.Where(x => x.MARAP == maThongTinChieu).ToList();
				return result;
			}
		}

		public static List<RAPCHIEUPHIM> GetRapsByMaPhim(string maPhim)
		{
			 
			{
				var result2 = db.RAPCHIEUPHIMs.SqlQuery(
					"select  * from PHIM, RAPCHIEUPHIM, THONGTINCHIEU where PHIM.MAPHIM = THONGTINCHIEU.MAPHIM and THONGTINCHIEU.MARAP= RAPCHIEUPHIM.MARAP and PHIM.MAPHIM=@MaPhim", new SqlParameter("MaPhim", maPhim)).ToList();
				return result2;
			}
		}

		public static List<THONGTINCHIEU> GetThongtinchieusByMaRapMaPhim(string maRap, string maPhim)
		{
			 
			{
				var result = db.THONGTINCHIEUx.SqlQuery("select * from THONGTINCHIEU where THONGTINCHIEU.MAPHIM = @MaPhim and THONGTINCHIEU.MARAP = @MaRap", new SqlParameter("MaPhim", maPhim), new SqlParameter("MaRap", maRap)).ToList();
				return result;
			}
		}

		public static List<THONGTINCHIEU> GetSuatChieu(DateTime? ngayChieu, string maPhim, string maRap)
		{
			 
			{

				var result = db.THONGTINCHIEUx.SqlQuery("select * from THONGTINCHIEU where THONGTINCHIEU.MAPHIM = @MaPhim and THONGTINCHIEU.MARAP = @MaRap and THONGTINCHIEU.NGAYCHIEU=@NgayChieu", new SqlParameter("MaPhim", maPhim), new SqlParameter("MaRap", maRap), new SqlParameter("NgayChieu", ngayChieu)).ToList();
				return result;
			}
		}

		public static string GetTenLoaiPhongByMaTTC(string maTTC)
		{
			 
			{
				var result = db.LOAIPHONGs.SqlQuery(
					"select * from THONGTINCHIEU, PHONG, LOAIPHONG where THONGTINCHIEU.MAPHONG  = PHONG.MAPHONG and PHONG.MALOAIPHONG = LOAIPHONG.MALOAIPHONG and THONGTINCHIEU.MATHONGTINCHIEU=@MaTTC",
					new SqlParameter("MaTTC", maTTC)).ToList();

				return result.ElementAt(0).TENLOAIPHONG;
			}
		}

		public static List<THONGTINCHIEU> GetValueFromId(string maPhim, string maRap)
		{
			if (maRap == null)
			{
				 
				{
					var result = db.THONGTINCHIEUx.Where(x => x.MAPHIM == maPhim);
					return result.ToList();
				}
			}
			else
			{
				 
				{
					var result = db.THONGTINCHIEUx.Where(x => x.MARAP == maRap && x.MAPHIM == maPhim);
					return result.ToList();
				}
			}
		}

		public static RAPCHIEUPHIM GetRapById(string id)
		{
			 
			{
				return db.RAPCHIEUPHIMs.Where(x => x.MARAP == id).ToList().ElementAt(0);

			}
		}

		public static PHIM GetPhimByTen(string name)
		{
			 
			{
				return db.PHIMs.Where(x => x.TENPHIM == name).ToList().ElementAt(0);
			}
		}

		public static PHONG GetPhongByPrimaryKey(string maPhong, string maRap)
		{
			 
			{
				return db.PHONGs.Where(x => x.MaPhong == maPhong && x.MARAP == maRap).ToList().ElementAt(0);

			}
		}


		public static THONGTINCHIEU GetTTCByTenRapNgaySuat(string ten, string rap, string ngay, string suat)
		{

			try
			{
				 
				{
					return db.THONGTINCHIEUx
						.Where(x => x.MARAP == rap &&
						            x.THOIGIANCHIEU == suat && x.MAPHIM == ten
						).ToList().ElementAt(0);
				}
			}
			catch (DataException)
			{
				 
				{
					return db.THONGTINCHIEUx.ToList().ElementAt(0);
				}
			}


		}

		public static List<THONGTINCHIEU> GetTtcByRapNgay(string maRap, DateTime ? ngayChieu)
		{
			return db.THONGTINCHIEUx.Where(x => x.MARAP == maRap && x.NGAYCHIEU == ngayChieu).ToList();
		}

		public static THONGTINCHIEU GetThongtinchieuById(string id)
		{
			return db.THONGTINCHIEUx.Where(x => x.MATHONGTINCHIEU == id).ToList().ElementAt(0);
		}

		public static bool IsUsed(GHE ghe)
		{
			if (ghe.IsUsed == 1)
				return true;
			else return false;
		}

		public static List<THONGTINCHIEU> GetThongtinchieusByPhim(string maPhim)
		{
			return db.THONGTINCHIEUx.Where(x => x.MAPHIM == maPhim).ToList();
		}

		public static GHE GetGheByKey(string maPhong, string maRap, string Id)
		{
			return db.GHEs.Where(x => x.MaPhong == maPhong && x.MaRap == maRap && x.Id==Id).ToList().ElementAt(0);
		}
	}
}