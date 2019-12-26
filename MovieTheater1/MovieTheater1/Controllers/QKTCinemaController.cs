using System;
using System.Activities.Statements;
using MovieTheater1.Models;
using System.Linq;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.Entity.Migrations;
using System.Globalization;
using System.Runtime.CompilerServices;
using System.Text;
using System.Text.RegularExpressions;
using System.Web.Mvc;
using Microsoft.Ajax.Utilities;
using System.Transactions;
using IsolationLevel = System.Transactions.IsolationLevel;
using TransactionScope = System.Transactions.TransactionScope;

namespace MovieTheater1.Controllers
{
    [RequireHttps]
    public class QKTCinemaController : Controller
    {

        // GET: QKTCinema
        public ActionResult MuaVe()
        {
            return View();
        }

        public ActionResult ChiTietKhuyenMai(string id = "voucher01")
        {
            return View(DataAccess.db.VOUCHERs.SingleOrDefault(x => x.MAVOUCHER == id));
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
            return PartialView(DataAccess.GetPhimDangChieuShort());
        }

        public ActionResult _PartialPhimShorcutSapChieu()
        {
            return PartialView(DataAccess.GetPhimSapChieuShort());
        }
        public ActionResult PhimSapChieu()
        {

            return View(DataAccess.GetPhimSapChieuAll(6));
        }

        public ActionResult PhimDangChieu()
        {
            return View(DataAccess.GetPhimDangChieuAll(6));
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

        public ActionResult ThanhVien(string id)
        {
            if (!id.IsNullOrWhiteSpace())
                return View(DataAccess.db.THANHVIENs.SingleOrDefault(x => x.MATV == id));
            else return RedirectToAction("DangNhap", "NguoiDung");
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
            return PartialView(DataAccess.GetThongtinchieu());
        }

        public ActionResult ChiTiet(string id = "phim01")
        {
            return View(DataAccess.GetPhimById(id));
        }

        public ActionResult _Partial_ChonPhim(string maRap, string maPhim)
        {
            return View(DataAccess.GetValueFromId(maPhim, maRap));
        }
        public ActionResult _Partial_ChonRap(string id = "phim01")
        {
            return View(DataAccess.GetRapsByMaPhim(id));
        }

        public ActionResult Booking(string infoId = "thongtinchieu01")
        {


            if (infoId.IsNullOrWhiteSpace())
            {
                return RedirectToAction("TrangChu", "QKTCinema");
            }
            else
            {
                var ttc = DataAccess.db.THONGTINCHIEUx.SingleOrDefault(x => x.MATHONGTINCHIEU == infoId);
                var phimDangChieu = new PhimDangChieu();
                phimDangChieu.TenPhim = ttc?.PHIM.TENPHIM;
                if (ttc != null)
                {
                    phimDangChieu.TenRap = ttc.PHONG.RAPCHIEUPHIM.TENRAP;
                    phimDangChieu.NgayChieu = ttc.NGAYCHIEU.ToString().Substring(0, 9);
                    phimDangChieu.GioChieu = ttc.THOIGIANCHIEU;
                    phimDangChieu.PhongChieu = ttc.MAPHONG;
                }

                phimDangChieu.MaThongTinChieu = infoId;

                Session["TenPhim"] = ttc?.PHIM.TENPHIM;
                Session["TenRap"] = ttc?.PHONG.RAPCHIEUPHIM.TENRAP;
                if (ttc != null)
                {
                    Session["NgayChieu"] = ttc.NGAYCHIEU.ToString().Substring(0, 9);
                    Session["GioChieu"] = ttc.THOIGIANCHIEU;
                    Session["PhongChieu"] = ttc.MAPHONG;
                }

                Session["MaThongTinChieu"] = infoId;

                return View(phimDangChieu);
            }

        }

        public ActionResult Update_DatVeNhanh(FormCollection f)
        {
            var val = DataAccess.GetTTCByTenRapNgaySuat(f["tenPhim"].ToString(), f["tenRap"].ToString(), f["ngayChieu"].ToString(), f["suatChieu"].ToString());
            return RedirectToAction("Booking", "QKTCinema", new {infoId = val.MATHONGTINCHIEU });
        }

        public ActionResult Btn_Filter_Clicked(FormCollection f)
        {
            return RedirectToAction("PhimTheoRap", "QKTCinema", new { cineId = f["tenRap"], time = f["ngayChieu"] });
        }

        public ActionResult PhimTheoRap(string cineId, DateTime? time)
        {
            return View(DataAccess.GetTtcByRapNgay(cineId, time));
        }

        public ActionResult Confirm(FormCollection f)
        {
            if (f["Voucher"].ToString() != String.Empty)
            {
                string vcId = f["Voucher"];
                VOUCHER vc = DataAccess.db.VOUCHERs.SingleOrDefault(x => x.MAVOUCHER == vcId);
                Session["MaVoucher"] = vc.MAVOUCHER;
                int? giamGia = 100 - vc.GIAMGIA;

                int? thanhTien = Int32.Parse(f["ThanhTien"].ToString()) * giamGia;
                Session["ThanhTien"] = (thanhTien / 100).ToString();
            }
            else
            {
                int? thanhTien = Int32.Parse(f["ThanhTien"].ToString());
                Session["ThanhTien"] = (thanhTien).ToString();
                Session["MaVoucher"] = "";
            }
            Session["Ghe"] = f["Ghe"];
            return RedirectToAction("MuaVe", "QKTCinema");
        }

        public ActionResult SuccessResult()
        {
            if (Session["Taikhoan"] != null)
            {
                var kh = (THANHVIEN)Session["Taikhoan"];
                if (Session["MaVoucher"].ToString() == "")
                {
                    var ve = new VE()
                    {
                        MAVE = "ve000" + (DataAccess.db.VEs.Count() + 2).ToString(),
                        DONGIA = Int32.Parse(Session["ThanhTien"].ToString()),
                        MATHONGTINCHIEU = Session["MaThongTinChieu"].ToString(),
                        MATV = kh.MATV,
                        MATINHTRANGVE = "tinhtrang01"

                    };
                    Session["MaVe"] = ve.MAVE;
                    DataAccess.db.VEs.Add(ve);
                    string sIn = Session["Ghe"].ToString();

                    Regex lineSplitter = new Regex(@"[\s*\*]*\|[\s*\*]*");
                    var columns = lineSplitter.Split(sIn).Where(s => s != String.Empty);
                    foreach (var s1 in sIn.Split(' '))
                    {
                        if (s1.Length >= 2)
                        {
                            var ghe = DataAccess.GetGheByKey(Session["MaThongTinChieu"].ToString(), s1);
                            ghe.MAVE = ve.MAVE;
                            ghe.IsUsed = 1;
                            DataAccess.db.GHEs.AddOrUpdate(ghe);

                            DataAccess.db.SaveChanges();
                        }
                    }
                }
                else
                {
                    var ve = new VE()
                    {
                        MAVE = "ve000" + (DataAccess.db.VEs.Count() + 2).ToString(),
                        MAVOUCHER = Session["MaVoucher"].ToString(),
                        DONGIA = Int32.Parse(Session["ThanhTien"].ToString()),
                        MATHONGTINCHIEU = Session["MaThongTinChieu"].ToString(),
                        MATV = kh.MATV,
                        MATINHTRANGVE = "tinhtrang01"
                    };
                    Session["MaVe"] = ve.MAVE;
                    DataAccess.db.VEs.Add(ve);
                    string sIn = Session["Ghe"].ToString();

                    Regex lineSplitter = new Regex(@"[\s*\*]*\|[\s*\*]*");
                    var columns = lineSplitter.Split(sIn).Where(s => s != String.Empty);
                    foreach (var s1 in sIn.Split(' '))
                    {
                        if (s1.Length >= 2)
                        {
                            var ghe = DataAccess.GetGheByKey(Session["MaThongTinChieu"].ToString(), s1);
                            ghe.MAVE = ve.MAVE;
                            ghe.IsUsed = 1;
                            DataAccess.db.GHEs.AddOrUpdate(ghe);
                            DataAccess.db.SaveChanges();
                        }
                    }
                }

                string content = System.IO.File.ReadAllText(Server.MapPath("~/Mail-Booking.html"));

                content = content.Replace("{{mave}}", Session["MaVe"].ToString());
                content = content.Replace("{{tenphim}}", Session["TenPhim"].ToString());
                content = content.Replace("{{tenrap}}", Session["TenRap"].ToString());
                content = content.Replace("{{phong}}", Session["PhongChieu"].ToString());
                content = content.Replace("{{ghe}}", Session["Ghe"].ToString());
                content = content.Replace("{{ngaychieu}}", Session["NgayChieu"].ToString().Substring(0, 9));
                content = content.Replace("{{suatchieu}}", Session["GioChieu"].ToString());

                new MailHelper().SendMail(kh.EMAIL, "Thông tin đặt vé ", content);

                Session["MaVe"] = null;
                Session["TenPhim"] = null;
                Session["MaThongTinChieu"] = null;
                Session["TenRap"] = null;
                Session["NgayChieu"] = null;
                Session["GioChieu"] = null;
                Session["PhongChieu"] = null;
                Session["MaVoucher"] = null;
                return View();
            }
            else
            {
                return RedirectToAction("DangNhap", "NguoiDung");
            }

        }


        //kiem tra voucher ton tai
        [HttpPost]
        public JsonResult CheckVoucher(string voucher)
        {
            if (voucher.IsNullOrWhiteSpace())
                return Json(false);
            else if (!DataAccess.db.VOUCHERs.ToList().Exists(p => p.MAVOUCHER == voucher))
            {
                return Json(true);
            }
            else
            {
                var vc = DataAccess.db.VOUCHERs.SingleOrDefault(x => x.MAVOUCHER == voucher);

                var dateString = vc.NGAYKT;
                string format = "dd/MM/yyyy";
                var ngayKt = DateTime.ParseExact(dateString, format, CultureInfo.InvariantCulture);

                if (ngayKt < DateTime.Now)
                    return Json(true);
                else return Json(false);
            }
        }
    }
}

