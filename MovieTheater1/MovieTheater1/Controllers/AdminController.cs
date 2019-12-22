using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MovieTheater1.Models;
namespace MovieTheater1.Controllers
{
    public class AdminController : Controller
    {
        // GET: Admin
        public ActionResult Index()
        {
            return View();
        }
        // manage screen
        public ActionResult QuanLyPhim()
        {
            return View(DataAccess.GetPhims());
        }
        public ActionResult QuanLyRap()
        {
            return View(DataAccess.GetRaps());
        }
        public ActionResult QuanLyKhuyenMai()
        {
            return View(DataAccess.GetKhuyenMai());
        }
        public ActionResult QuanLyThanhVien()
        {
            return View();
        }
        public ActionResult QuanLyThongTinChieu()
        {
           
            return View(DataAccess.GetThongtinchieu());
        }
       
        public ActionResult QuanLyVe()
        {
            return View();
        }
        // add screen
        public ActionResult ThemFilm()
        {
            return View();
        }
        public ActionResult ThemKhuyenMai()
        {
            return View();
        }

    }
}