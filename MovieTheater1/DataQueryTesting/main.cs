using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Globalization;
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
        public string MaThongTinChieu { get; set; }

        public string TenPhim { get; set; }
        public string TenRap { get; set; }
        public string PhongChieu { get; set; }
        public string NgayChieu { get; set; }
        public string GioChieu { get; set; }
    }



    class main
    {
        static void Main()
        {
            Console.OutputEncoding = Encoding.UTF8;

            //foreach (var ttc in DataAccess.GetThongtinchieu())
            //{
            //	if (ttc.PHONG.MaLoaiPhong == "loaiphong01")
            //	{
            //		for (int i = 65; i < 65 + 15; i++)
            //		{
            //			for (int j = 1; j < 15; j++)
            //			{
            //				Console.WriteLine(" insert into GHE values ('" + Convert.ToChar(i).ToString() +
            //				                  j.ToString() + "','" + ttc.MATHONGTINCHIEU + "',null,0, null)");
            //			}
            //		}
            //	}
            //	else if (ttc.PHONG.MaLoaiPhong == "loaiphong02")
            //	{
            //		for (int i = 65; i < 65 + 15; i++)
            //		{
            //			for (int j = 1; j < 20; j++)
            //			{
            //				Console.WriteLine(" insert into GHE values ('" + Convert.ToChar(i).ToString() +
            //				                  j.ToString() + "','" + ttc.MATHONGTINCHIEU + "',null,0,null)");
            //			}
            //		}
            //	}


            //}
            Console.WriteLine(DataAccess.db.PHIMs.SingleOrDefault(x => x.MAPHIM == "phim01")?.TRAILER);
          
            Console.Read();
        }
    }
}
