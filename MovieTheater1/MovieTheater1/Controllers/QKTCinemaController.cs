using System;
using MovieTheater1.Models;
using System.Linq;
using System.Collections.Generic;
using System.Runtime.CompilerServices;
using System.Web.Mvc;
namespace MovieTheater1.Controllers
{
	public class QKTCinemaController : Controller
	{




		// GET: QKTCinema



		public ActionResult MuaVe()
		{
			return View();
		}

		public ActionResult TrangChu()
		{
			return View();
		}

		public ActionResult _PartialCarousel()
		{
			return PartialView(DataAccess.GetPhimCarousel());
		}
		public ActionResult _PartialPhimShortcut()
		{
			return PartialView();
		}

		public ActionResult _PartialPhimShorcutDangChieu()
		{
			return PartialView(DataAccess.GetPhimDangChieuShort(6));
		}

		public ActionResult _PartialPhimShorcutSapChieu()
		{
			return PartialView(DataAccess.GetPhimSapChieuShort(6));
		}
		public ActionResult PhimSapChieu()
		{
		
			return View(DataAccess.GetPhimSapChieuAll(6));
		}

		public ActionResult PhimDangChieu()
		{
			return View(DataAccess.GetPhimDangChieuAll(6));
		}

		public ActionResult TheLoaiPhim()
		{
			return View();
		}

		public ActionResult DienVien()
		{
			return View();
		}

		public ActionResult BlogDienAnh()
		{
			return View();
		}

		public ActionResult SuKien()
		{
			return View(DataAccess.GetKhuyenMai());
		}

		public ActionResult RapGiaVe()
		{
			return View();
		}



		public ActionResult HoTro()
		{
			return View();
		}

		public ActionResult ThanhVien()
		{
			return View();
		}

		public ActionResult _PartialKhuyenMai()
		{
			return PartialView(DataAccess.GetKhuyenMai());
		}

		public ActionResult _PartialPhim_KhuyenMai()
		{
			return PartialView(DataAccess.Get3PhimMoiNhat());
		}

		public ActionResult _PartialPhim_HoTro()
		{
			return PartialView(DataAccess.Get4PhimMoiNhat());
		}

		public ActionResult _Partial_DatVeNhanh(FormCollection f)
		{

			
			return PartialView(DataAccess.GetThongtinchieu() );
		}

		public ActionResult ChiTiet(string id="phim01")
		{
			return View(DataAccess.GetPhimById(id));
		}



		public ActionResult _Partial_ChonPhim(string maRap, string maPhim)
		{
			return View(DataAccess.GetValueFromId(maPhim, maRap));
		}
		public ActionResult _Partial_ChonRap(string id="phim01")
		{
			return View(DataAccess.GetRapsByMaPhim(id));
		}


		public ActionResult Booking(string tenPhim, string tenRap, string ngayChieu, string gioChieu, string phongChieu, string maThongTinChieu)
		{
			var phimDangChieu = new PhimDangChieu();
			phimDangChieu.TenPhim = tenPhim;
			phimDangChieu.TenRap = tenRap;
			phimDangChieu.NgayChieu = ngayChieu;
			phimDangChieu.GioChieu = gioChieu;
			phimDangChieu.PhongChieu = phongChieu;
			phimDangChieu.MaThongTinChieu = maThongTinChieu;
			return View(phimDangChieu);
		}

		public ActionResult Update_DatVeNhanh(FormCollection f)
		{

	

			var val = DataAccess.GetTTCByTenRapNgaySuat(f["tenPhim"].ToString(), f["tenRap"].ToString(), f["ngayChieu"].ToString(), f["suatChieu"].ToString());
			
			return RedirectToAction("Booking", "QKTCinema", new{
				tenPhim = DataAccess.GetPhimById(val.MAPHIM).TENPHIM,
				tenRap = DataAccess.GetRapById(val.MARAP).TENRAP,
				ngayChieu = val.NGAYCHIEU.ToString(),
				gioChieu = val.THOIGIANCHIEU,
				phongChieu = val.MAPHONG,
				maThongTinChieu = val.MATHONGTINCHIEU
			}
			);
		}

		public ActionResult Btn_Filter_Clicked(FormCollection f)
		{
			return RedirectToAction("PhimTheoRap", "QKTCinema", new {maRap = f["tenRap"], ngayChieu = f["ngayChieu"]});
		}

		public ActionResult PhimTheoRap(string maRap, DateTime? ngayChieu)
		{
			return View(DataAccess.GetTtcByRapNgay(maRap, ngayChieu));
		}
	}
}

