using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace MovieTheater1.Models
{
	public class PhimDangChieu
	{
		public string MaThongTinChieu { get; set; }
		
		public string TenPhim { get; set; }
		public string TenRap  { get; set; }
		public  string PhongChieu { get; set; }
		public string NgayChieu { get; set; }
		public string GioChieu { get; set; }

	}
}