using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MovieTheater1.Models;
using System.Dynamic;
namespace MovieTheater1.Controllers
{
	public class QKTCinemaController : Controller
	{


		DB_WEB_APPEntities1 dbWebApp = new DB_WEB_APPEntities1();

		// GET: QKTCinema
		public ActionResult Index()
		{
			return View();
		}

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
			return PartialView( DataAccess.GetPhimDangChieuShort(6));
		}

		public ActionResult _PartialPhimShorcutSapChieu()
		{
			return PartialView(DataAccess.GetPhimSapChieuShort(6));
		}
		public ActionResult PhimSapChieu()
		{
			return View();
		}

		public ActionResult PhimDangChieu()
		{
			return View();
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
			return View();
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





	}
}