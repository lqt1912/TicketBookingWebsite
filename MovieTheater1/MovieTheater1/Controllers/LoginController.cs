using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MovieTheater1.Controllers
{
    public class LoginController : Controller
    {
        // GET: Login
        public ActionResult Index()
        {
            return View();
        }



        [HttpPost]
        public ActionResult Index(FormCollection f)
        {
            if (f["TaiKhoan"] == "admin" && f["MatKhau"] == "admin")
            {
                return RedirectToAction("Index", "Admin");
            }
            else
                {
                ViewData["Loi1"] = "Sai Tài khoản hoặc mật khẩu!!!! Vui lòng nhập lại";
                return this.Index();
            } 
        }
    }
}