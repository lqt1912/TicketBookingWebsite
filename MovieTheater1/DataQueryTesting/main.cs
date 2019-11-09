using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MovieTheater1.Models;

namespace DataQueryTesting
{
	class main
	{
		static void Main()
		{
			Console.OutputEncoding = Encoding.UTF8;
			var db = DataAccess.getEntities();
			var now = DateTime.Now;
			var result2 = db.PHIMs.SqlQuery("SELECT top 6 * FROM PHIM Where CURRENT_TIMESTAMP <= THOIGIANKT ORDER BY  CURRENT_TIMESTAMP - THOIGIANBD").ToList();
			foreach (var item in result2 )
			{
				Console.Write(item.TENPHIM + " " + item.MAPHIM + " " + item.QUOCGIA.TENQUOCGIA + "\n");
			}

			Console.Read();
		}
	}
}
