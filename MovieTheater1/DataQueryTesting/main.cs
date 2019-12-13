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

			var lst = DataAccess.GetThongtinchieu();
			foreach (var VARIABLE in lst)
			{
				
				Console.WriteLine(VARIABLE.PHONG.RAPCHIEUPHIM.TENRAP);

			}

			Console.Read();
		}
	}
}
