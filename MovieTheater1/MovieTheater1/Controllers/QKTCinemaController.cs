using MovieTheater1.Models;
using System.Linq;
using System.Collections.Generic;
using System.Runtime.CompilerServices;
using System.Web.Mvc;
namespace MovieTheater1.Controllers
{
	public class QKTCinemaController : Controller
	{


		DB_WEB_APPEntities1 dbWebApp = new DB_WEB_APPEntities1();

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

		public ActionResult _Partial_DatVeNhanh()
		{

			
			return PartialView(DataAccess.GetThongtinchieu() );
		}

		public ActionResult ChiTiet(string id="phim01")
		{
			return View(DataAccess.GetPhimById(id));
		}
	}
}