using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.Helpers;
using System.Web.Mvc;
using System.Web.UI.WebControls;
using Microsoft.Ajax.Utilities;
using Newtonsoft.Json;
using JsonResult = JShibo.JSON.JsonResult;

namespace MovieTheater1.Models
{
	public class DataAccess
	{

		public static string maphim ="phim01";
		public static DB_WEB_APPEntities1 getEntities()
		{
			return new DB_WEB_APPEntities1();
		}

		
		public static List<PHIM> GetPhimCarousel()
		{
			var db = getEntities();
			var listPhimCarousel = db.PHIMs.Take(3);
			return listPhimCarousel.ToList();
		}

		public static List<PHIM> GetPhimDangChieuShort(int number)
		{

			using (var db = getEntities())
			{
				var now = DateTime.Now;
				var result2 = db.PHIMs.SqlQuery("SELECT top 6 * FROM PHIM Where CURRENT_TIMESTAMP <= THOIGIANKT and THOIGIANBD <CURRENT_TIMESTAMP  ORDER BY  CURRENT_TIMESTAMP - THOIGIANBD");
				return result2.ToList();
			}
		}

		public static List<PHIM> GetPhimShort()
		{
			using (var db = getEntities())
			{
				var result2 = db.PHIMs.SqlQuery("SELECT top 3 * FROM PHIM Where CURRENT_TIMESTAMP <= THOIGIANKT ORDER BY  CURRENT_TIMESTAMP - THOIGIANBD");
				
				return result2.ToList();
			}
		}

		public static List<PHIM> GetPhimDangChieuAll(int number)
		{
			using (var db = getEntities())
			{
				var now = DateTime.Now;
				var result2 = db.PHIMs.SqlQuery("SELECT * FROM PHIM Where CURRENT_TIMESTAMP <= THOIGIANKT and THOIGIANBD <CURRENT_TIMESTAMP ");
				return result2.ToList();
			}
		}


		public static List<PHIM> GetPhimSapChieuShort(int number)
		{
			using (var db = getEntities())
			{
				var now = DateTime.Now;
				var result2 = db.PHIMs.SqlQuery("SELECT top 6 * FROM PHIM Where THOIGIANBD > CURRENT_TIMESTAMP ORDER BY  THOIGIANKT - CURRENT_TIMESTAMP");
				
				return result2.ToList();
			}
		}

		public static List<PHIM> GetPhimSapChieuAll(int number)
		{
			using (var db = getEntities())
			{
				var now = DateTime.Now;
				var result2 = db.PHIMs.SqlQuery("SELECT * FROM PHIM Where THOIGIANBD > CURRENT_TIMESTAMP ");
				return result2.ToList();
			}
		}

		public static List<PHIM> Get3PhimMoiNhat()
		{
			using (var db = getEntities())
			{
				var now = DateTime.Now;
				var result2 = db.PHIMs.SqlQuery("SELECT top 3 * FROM PHIM Where CURRENT_TIMESTAMP <= THOIGIANKT ");
				return result2.ToList();
			}
		}

		public static List<PHIM> Get4PhimMoiNhat()
		{
			using (var db = getEntities())
			{
				var now = DateTime.Now;
				var result2 = db.PHIMs.SqlQuery("SELECT top 4 * FROM PHIM Where CURRENT_TIMESTAMP <= THOIGIANKT ");
				return result2.ToList();
			}
		}
		public static List<VOUCHER> GetKhuyenMai()
		{
			using (var db = getEntities())
			{
				var result = db.VOUCHERs;
				return result.ToList();
			}
		}

		public static List<THONGTINCHIEU> GetThongtinchieu()
		{
			using (var db=getEntities())
			{
				var result = db.THONGTINCHIEUx;
				return result.ToList();
			}
		}

		public static List<PHIM> GetPhims()
		{
			using (var db=getEntities())
			{
				var result = db.PHIMs.SqlQuery("select * from PHIM where MAPHIM in (select MAPHIM from THONGTINCHIEU)");
				return result.ToList();
			}
		}

		public static List<RAPCHIEUPHIM> GetRaps()
		{
		
			using (var db = getEntities())
			{
				var result = db.RAPCHIEUPHIMs;
				return result.ToList();
				
			}
		}

		public static string GetTenTheLoai(string maloai)
		{
			using (var db = getEntities())
			{
				var result = db.LOAIPHIMs.SqlQuery("select * from LOAIPHIM where MALOAIPHIM = @maloai ",
					new SqlParameter("maloai", maloai));
				return result.ElementAt(0).TENLOAIPHIM;
			}
		}

		public static PHIM GetPhimById(string maPhim)
		{
			using (var db=getEntities())
			{
				var result = db.PHIMs.Where(x => x.MAPHIM == maPhim).ToList();
				return result.ElementAt(0);
			}
		}


		public static string GetTenQuocGia(string maquocgia)
		{
			using (var db = getEntities())
			{
				var result = db.QUOCGIAs.Where(x => x.MAQUOCGIA == maquocgia).ToList();
				return result.ElementAt(0).TENQUOCGIA;
			}
		}
		public static List<PhimDangChieu> GetPhimDangChieusByMaPhim(string maPhim)
		{
			using (var db = getEntities())
			{
				var result1 =
					db.PHIMs.SqlQuery(
						"select * from PHIM, RAPCHIEUPHIM, THONGTINCHIEU where PHIM.MAPHIM = THONGTINCHIEU.MAPHIM and THONGTINCHIEU.MARAP= RAPCHIEUPHIM.MARAP and PHIM.MAPHIM=@MaPhim",new SqlParameter("MaPhim", maPhim)).ToList();
				var result2 = db.RAPCHIEUPHIMs.SqlQuery(
					"select  * from PHIM, RAPCHIEUPHIM, THONGTINCHIEU where PHIM.MAPHIM = THONGTINCHIEU.MAPHIM and THONGTINCHIEU.MARAP= RAPCHIEUPHIM.MARAP and PHIM.MAPHIM=@MaPhim", new SqlParameter("MaPhim", maPhim)).ToList();
				var result3 = db.THONGTINCHIEUx.SqlQuery(
					"select * from PHIM, RAPCHIEUPHIM, THONGTINCHIEU where PHIM.MAPHIM = THONGTINCHIEU.MAPHIM and THONGTINCHIEU.MARAP= RAPCHIEUPHIM.MARAP and PHIM.MAPHIM=@MaPhim", new SqlParameter("MaPhim", maPhim)).ToList();
				var result4 = db.THONGTINCHIEUx.SqlQuery(
					"select * from PHIM, RAPCHIEUPHIM, THONGTINCHIEU where PHIM.MAPHIM = THONGTINCHIEU.MAPHIM and THONGTINCHIEU.MARAP= RAPCHIEUPHIM.MARAP and PHIM.MAPHIM=@MaPhim", new SqlParameter("MaPhim", maPhim)).ToList();
				var result5= db.THONGTINCHIEUx.SqlQuery(
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
			using (var db = getEntities())
			{
				var result = db.RAPCHIEUPHIMs.Where(x => x.MARAP == maThongTinChieu).ToList();
				return result;
			}
		}

		public static List<RAPCHIEUPHIM> GetRapsByMaPhim(string maPhim)
		{
			using (var db = getEntities())
			{
				var result2 = db.RAPCHIEUPHIMs.SqlQuery(
					"select  * from PHIM, RAPCHIEUPHIM, THONGTINCHIEU where PHIM.MAPHIM = THONGTINCHIEU.MAPHIM and THONGTINCHIEU.MARAP= RAPCHIEUPHIM.MARAP and PHIM.MAPHIM=@MaPhim", new SqlParameter("MaPhim", maPhim)).ToList();
				return result2;
			}
		}

		public static List<THONGTINCHIEU> GetThongtinchieusByMaRapMaPhim(string maRap, string maPhim)
		{
			using (var db = getEntities())
			{
				var result = db.THONGTINCHIEUx.SqlQuery("select * from THONGTINCHIEU where THONGTINCHIEU.MAPHIM = @MaPhim and THONGTINCHIEU.MARAP = @MaRap", new SqlParameter("MaPhim", maPhim), new  SqlParameter("MaRap", maRap)).ToList();
				return result;
			}
		}

		public static List<THONGTINCHIEU> GetSuatChieu(DateTime? ngayChieu, string maPhim, string maRap)
		{
			using (var db = getEntities())
			{

				var result = db.THONGTINCHIEUx.SqlQuery("select * from THONGTINCHIEU where THONGTINCHIEU.MAPHIM = @MaPhim and THONGTINCHIEU.MARAP = @MaRap and THONGTINCHIEU.NGAYCHIEU=@NgayChieu", new SqlParameter("MaPhim", maPhim), new SqlParameter("MaRap", maRap), new SqlParameter("NgayChieu", ngayChieu)).ToList();
				return result;
			}
		}

		public static string GetTenLoaiPhongByMaTTC(string maTTC)
		{
			using (var db = getEntities())
			{
				var result = db.LOAIPHONGs.SqlQuery(
					"select * from THONGTINCHIEU, PHONG, LOAIPHONG where THONGTINCHIEU.MAPHONG  = PHONG.MAPHONG and PHONG.MALOAIPHONG = LOAIPHONG.MALOAIPHONG and THONGTINCHIEU.MATHONGTINCHIEU=@MaTTC",
					new SqlParameter("MaTTC", maTTC)).ToList();

				return result.ElementAt(0).TENLOAIPHONG;
			}
		}

	}
}