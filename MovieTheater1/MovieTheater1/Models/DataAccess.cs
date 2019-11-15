using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;

namespace MovieTheater1.Models
{
	public class DataAccess
	{
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
		
	}
}