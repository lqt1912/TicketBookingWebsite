using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web;
using MovieTheater1.Models;
namespace DataQueryTesting
{
	public class PhimDangChieu
	{
		public string TenPhim { get; set; }
		public string TenRap { get; set; }
		public string NgayChieu { get; set; }
		public string GioChieu { get; set; }

	}

	class main
	{
		static void Main()
		{
			Console.OutputEncoding = Encoding.UTF8;
			//var db = DataAccess.getEntities();
			//var now = DateTime.Now;
			//var result2 = db.PHIMs.SqlQuery("SELECT top 6 * FROM PHIM Where CURRENT_TIMESTAMP <= THOIGIANKT ORDER BY  CURRENT_TIMESTAMP - THOIGIANBD").ToList();
			//foreach (var item in result2 )
			//{
			//	Console.Write(item.TENPHIM + " " + item.MAPHIM + " " + item.QUOCGIA.TENQUOCGIA + "\n");
			//}


			//using (var db = DataAccess.getEntities())
			//{
			//	var result1 =
			//		db.PHIMs.SqlQuery(
			//			" select * from PHIM, RAPCHIEUPHIM, THONGTINCHIEU where PHIM.MAPHIM = THONGTINCHIEU.MAPHIM and THONGTINCHIEU.MARAP= RAPCHIEUPHIM.MARAP").ToList();
			//	var result2 = db.RAPCHIEUPHIMs.SqlQuery(
			//		"select  * from PHIM, RAPCHIEUPHIM, THONGTINCHIEU where PHIM.MAPHIM = THONGTINCHIEU.MAPHIM and THONGTINCHIEU.MARAP= RAPCHIEUPHIM.MARAP").ToList();
			//	var result3 = db.THONGTINCHIEUx.SqlQuery(
			//		"select * from PHIM, RAPCHIEUPHIM, THONGTINCHIEU where PHIM.MAPHIM = THONGTINCHIEU.MAPHIM and THONGTINCHIEU.MARAP= RAPCHIEUPHIM.MARAP").ToList();
			//	var result4 = db.THONGTINCHIEUx.SqlQuery(
			//		"select * from PHIM, RAPCHIEUPHIM, THONGTINCHIEU where PHIM.MAPHIM = THONGTINCHIEU.MAPHIM and THONGTINCHIEU.MARAP= RAPCHIEUPHIM.MARAP").ToList();
			//	List<PhimDangChieu> res = new List<PhimDangChieu>();
			//	int i = 0;

			//	while (i < result1.Count)
			//	{
			//		PhimDangChieu pd = new PhimDangChieu();
			//		;
			//		pd.TenPhim = result1[i].TENPHIM;
			//		pd.TenRap = result2[i].TENRAP;
			//		pd.GioChieu = result4[i].THOIGIANCHIEU;
			//		pd.NgayChieu = result3[i].NGAYCHIEU.ToString().Substring(0,9);
			//		res.Add(pd);
			//		i++;
			//	}

			//	foreach (var item in res )
			//	{
			//		Console.WriteLine(item.TenPhim + "       " + item.TenRap + "       " + item.GioChieu + "         " + item.NgayChieu );
			//		//Console.WriteLine(item.TENPHIM);
			//	}
			//}

			var input = Console.ReadLine();
			using (var db = DataAccess.getEntities())
			{
				var result = db.LOAIPHIMs.SqlQuery("select * from LOAIPHIM where MALOAIPHIM = @maloai ",
					new SqlParameter("maloai", input));
				Console.WriteLine(result.ElementAt(0).TENLOAIPHIM);
			}

				Console.Read();
		}
	}
}
