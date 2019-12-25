using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.Entity.Migrations;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using CaptchaMvc.HtmlHelpers;
using DotNetOpenAuth.AspNet.Clients;
using MovieTheater1.Models;

namespace MovieTheater1.Controllers
{
    [RequireHttps]
    public class NguoiDungController : Controller
    {
		// GET: NguoiDung

		[HttpGet]
		public ActionResult DangKi()
		{
			return View();
		}

		[HttpPost]
        public ActionResult DangKi(FormCollection collection, string Matkhau, THANHVIEN kh)
        {

			var hoten = collection["hotenkh"];
			var tendn = collection["TenDN"];
			var matkhau = collection["Matkhau"];
			string passwordMD5 = MaHoa.EncryptMD5(matkhau);
			var nhaplaimatkhau = collection["Nhaplai"];
            string QuocGia = collection["QuocGia"].ToString();
            var quocgia = DataAccess.db.QUOCGIAs.Where(x => x.MAQUOCGIA==QuocGia).ToList().ElementAt(0);
			var email = collection["email"];
            var gioitinh = collection["GioiTinh"];
			var dienthoai = collection["Dienthoai"];
			var ngaysinh = collection["Ngaysinh"];
			if (String.IsNullOrEmpty(hoten))
			{
				ViewData["Loi1"] = "Họ tên không được để trống";
			}
			else if (String.IsNullOrEmpty(tendn))
			{
				ViewData["Loi2"] = "Phải nhập tên đăng nhập";
			}
			else if (String.IsNullOrEmpty(matkhau))
			{
				ViewData["Loi3"] = "Bạn chưa nhập mật khẩu";
			}
			else if (String.IsNullOrEmpty(nhaplaimatkhau))
			{
				ViewData["Loi4"] = "Vui lòng nhập lại mật khẩu";
			}
			else if (String.IsNullOrEmpty(email))
			{
				ViewData["Loi5"] = "Email không được bỏ trống";
			}
			else if (String.IsNullOrEmpty(dienthoai))
			{
				ViewData["Loi6"] = "Vui lòng nhập số điện thoại";
			}
			else if (this.IsCaptchaValid(""))
			{
                kh = new THANHVIEN()
                {
                    EMAIL = email,
                    MALOAITV = "loaitv01",
                    GIOITINH = gioitinh,
                    QUOCGIA = quocgia,
                    HOTEN = hoten,
                    password = passwordMD5,
                    username = tendn,
                    NGAYSINH = ngaysinh,
                    SODT = dienthoai,
                    MATV = "KH0" + (DataAccess.db.THANHVIENs.Count() + 1).ToString()
                };
                DataAccess.db.THANHVIENs.Add(kh);
				DataAccess.db.SaveChanges();

                //string content = System.IO.File.ReadAllText(Server.MapPath("~/Mail.html"));

                //content = content.Replace("{{Hoten}}", hoten);
                //content = content.Replace("{{username}}", tendn);
                //content = content.Replace("{{pass}}", matkhau);
                //content = content.Replace("{{phone}}", dienthoai);
                //content = content.Replace("{{email}}", email);

                //var toEmail = ConfigurationManager.AppSettings["ToEmailAddress"].ToString();

                //new MailHelper().SendMail(email, "Thông tin đăng ký thành viên", content);
                //new MailHelper().SendMail(toEmail, "Thông tin đăng ký thành viên", content);


                return RedirectToAction("DangNhap", "Nguoidung");

			}
			else
			{
				ViewBag.Loi = "Sai mã Captcha";
			}
			return this.DangKi();
		}

        public ActionResult DangNhap()
        {
	        return View();
        }
		[HttpPost]
		public ActionResult DangNhap(FormCollection collection, string Matkhau)
		{
			var tendn = collection["Tendangnhap"];
			var matkhau = collection["Matkhau"];
			string passwordMD5 = MaHoa.EncryptMD5(matkhau);
			if (String.IsNullOrEmpty(tendn))
			{
				ViewData["Loi1"] = "Bạn chưa nhập tên đăng nhập";
			}
			else if (String.IsNullOrEmpty(matkhau))
			{
				ViewData["Loi2"] = "Bạn chưa nhập mật khẩu";
			}
			else if (tendn=="admin" && collection["Matkhau"].ToString()=="admin")
            {
                Session["admin"] = 1;
                System.Diagnostics.Debug.WriteLine("caccccccccc");
                return RedirectToAction("QuanLyPhim", "Admin");
            }
            else 
			{
				THANHVIEN kh = DataAccess.db.THANHVIENs.SingleOrDefault(n => n.username == tendn && n.password == passwordMD5);
				if (kh != null)
				{
					//ViewBag.Thongbao = "Đăng nhập thành công";
					Session["Taikhoan"] = kh;
					ViewBag.User = tendn;
					if (Session["MaThongTinChieu"] != null)
					{
						return RedirectToAction("MuaVe", "QKTCinema");
					}
					else if (Session["MaThongTinChieu"] == null)
					{
						return RedirectToAction("TrangChu", "QKTCinema");
					}
						
				}
				else
					ViewBag.Thongbao = "Tên đăng nhập hoặc mật khẩu không đúng";
			}
			return this.DangNhap();

		}



		public ActionResult DangXuat()
		{
			Session["Taikhoan"] = null;
			return RedirectToAction("TrangChu", "QKTCinema");
		}

        //kiem tra tai khoan ton tai
        [HttpPost]
        public JsonResult CheckUsername(string username)
		{
			bool isValid = DataAccess.db.THANHVIENs.ToList().Exists(p => p.username ==username);
			return Json(isValid);
		}

        //kiem tra email ton tai
		[HttpPost]
		public JsonResult CheckEmail(string email)
        {

            bool isValid = DataAccess.db.THANHVIENs.ToList().Exists(p => p.EMAIL.Equals(email, StringComparison.CurrentCultureIgnoreCase));
			return Json(isValid);
		}

        [HttpGet]
        public ActionResult ChinhSuaThongTin( string id)
        {
            Session["MaThanhVien"] = id;
            return View(DataAccess.db.THANHVIENs.SingleOrDefault(x=>x.MATV==id));
        }


        [HttpPost]
        public ActionResult ChinhSuaThongTin(FormCollection f)
        {
            return View();
        }

        public ActionResult DoiMatKhau()
        {
            return View();
        }

        [HttpPost]
        public ActionResult DoiMatKhau(FormCollection collection)
        {
            var oldPassword = collection["old-password"];
            var newPassword = collection["new-password"];
            var renewPassword = collection["renew-password"];

            string passwordMd5 = MaHoa.EncryptMD5(oldPassword);
            if (String.IsNullOrEmpty(oldPassword))
            {
                ViewData["Loi1"] = "Bạn chưa nhập mật khẩu cũ";
            }
            else if (String.IsNullOrEmpty(newPassword))
            {
                ViewData["Loi2"] = "Bạn chưa nhập mật khẩu mới ";
            }
            else if(newPassword!=renewPassword)
            {
                ViewData["Loi3"] = "Pass đéo giống ";
            }
            
            else
            {
                THANHVIEN currkH = (THANHVIEN) Session["Taikhoan"];
                THANHVIEN kh = DataAccess.db.THANHVIENs.SingleOrDefault(n => n.username == currkH.username && n.password == passwordMd5);
                if (kh != null)
                {
                   var newKh = new THANHVIEN();
                   newKh = currkH;
                   newKh.password = MaHoa.EncryptMD5(renewPassword);
                   DataAccess.db.THANHVIENs.AddOrUpdate(newKh);
                   DataAccess.db.SaveChanges();
                   Session["DoiPass"] = 1;
                   return RedirectToAction("DangNhap", "NguoiDung");
                }
                else
                {
                    ViewBag.Thongbao = "Mày nhập sai pass mà đổi con cặc";
                }
                   
            }
            return this.DoiMatKhau();
        }
    }
}