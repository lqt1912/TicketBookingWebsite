﻿using System;
using System.Collections.Generic;
using System.Data.Entity.Migrations;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MovieTheater1.Models;
namespace MovieTheater1.Controllers
{
    public class AdminController : Controller
    {
        // GET: Admin
        [HttpGet]
        public ActionResult Index()
        {
            if (Session["admin"] != null)
                return View();
            else
                return RedirectToAction("Index", "Login");
        }

        public ActionResult AddImage()
        {
            return View();
        }
        // manage screen
        public ActionResult QuanLyPhim()
        {
            return View(DataAccess.db.PHIMs.ToList());
        }
        public ActionResult QuanLyRap()
        {
            return View(DataAccess.db.RAPCHIEUPHIMs.ToList());
        }
        public ActionResult QuanLyKhuyenMai()
        {
            return View(DataAccess.db.VOUCHERs.ToList());
        }
        public ActionResult ThemRap()
        {
            return View();
        }
        public ActionResult QuanLyThanhVien()
        {
            return View();
        }
        public ActionResult QuanLyThongTinChieu()
        {

            return View(DataAccess.db.THONGTINCHIEUx.ToList());
        }

        public ActionResult QuanLyVe()
        {
            return View(DataAccess.db.VEs.ToList());
        }
        // add screen
        public ActionResult ThemFilm()
        {
            return View();
        }

        [HttpPost]
        [ValidateInput(false)]
        public ActionResult ThemFilm(FormCollection f, HttpPostedFileBase file, HttpPostedFileBase file2)
        {
            string fileName = Path.GetFileNameWithoutExtension(file.FileName);
            string fileName2 = Path.GetFileNameWithoutExtension(file.FileName);
            var path = "";
            var path2 = "";

            if (file != null && file2 != null)
            {
                if (file.ContentLength > 0 && file2.ContentLength > 0)
                {
                    if (Path.GetExtension(file.FileName).ToLower() == ".jpg" && Path.GetExtension(file2.FileName).ToLower() == ".jpg")
                    {
                        path = Path.Combine(Server.MapPath("~/Content/Images/300x450xphim"), file.FileName);
                        path2 = Path.Combine(Server.MapPath("~/Content/Images/450x300"), file2.FileName);
                        file.SaveAs(path);
                        file2.SaveAs(path2);

                    }
                }
            }
            string maPhim = "phim00" + (DataAccess.db.PHIMs.Count() + 2).ToString();
            var phim = new PHIM()
            {
                ANHDAIDIEN = fileName,
                MAPHIM = maPhim,
                TENPHIM = f["TenPhim"],
                MALOAIPHIM = f["TheLoai"],
                DIENVIEN = f["DienVien"],
                THOILUONG = f["ThoiLuong"],
                DAODIEN = f["DaoDien"],
                MAQUOCGIA = f["QuocGia"],
                THOIGIANBD = DateTime.Parse(f["NgayBatDau"]),
                THOIGIANKT = DateTime.Parse(f["NgayKetThuc"]),
                GHICHU = f["GhiChu"],
                MOTA = f["MoTa"]
            };

            DataAccess.db.PHIMs.Add(phim);
            DataAccess.db.SaveChanges();

            return RedirectToAction("QuanLyPhim", "Admin");
        }

        public ActionResult ThemThongTinChieu()
        {
            return View();
        }
        public ActionResult QuanLyPhong()
        {
            return View(DataAccess.db.PHONGs.ToList());
        }
        public ActionResult ThemKhuyenMai()
        {
            return View();
        }
        public ActionResult ThemVe()
        {
            return View();
        }
        public ActionResult ThemPhong()
        {
            return View();
        }
        [HttpPost]
        [ValidateInput(false)]
        public ActionResult ThemKhuyenMai(FormCollection f, HttpPostedFileBase file)
        {
            var path = "";

            if (file != null)
            {
                if (file.ContentLength > 0)
                {
                    if (Path.GetExtension(file.FileName).ToLower() == ".jpg")
                    {
                        path = Path.Combine(Server.MapPath("~/Content/Images/300x450xkhuyenmai"), file.FileName);
                        file.SaveAs(path);

                    }
                }
            }
            string id = "khuyenmai00" + (DataAccess.db.VOUCHERs.Count() + 2).ToString();
            var km = new VOUCHER()
            {
                ANHDAIDIEN = file.FileName,
                MAVOUCHER = id,
                TENVOUCHER = f["TenKhuyenMai"],
                NGAYBD = f["NgayBatDau"],
                NGAYKT = f["NgayKetThuc"],
                GIAMGIA = (int?)int.Parse(f["GiamGia"]),
                NOIDUNG = f["NoiDung"],
                GHICHU = f["GhiChu"]
            };
            DataAccess.db.VOUCHERs.Add(km);
            DataAccess.db.SaveChanges();

            return RedirectToAction("QuanLyKhuyenMai", "Admin");
        }

        [HttpPost]
        public ActionResult ThemThongTinChieu(FormCollection f)
        {
            string id = "thongtinchieu" + (DataAccess.db.THONGTINCHIEUx.Count() + 2).ToString();
            var tt = new THONGTINCHIEU()
            {
                MATHONGTINCHIEU = id,
                MAPHIM = f["TenPhim"],
                THOIGIANCHIEU = f["ThoiGianChieu"],
                NGAYCHIEU = DateTime.Parse(f["NgayChieu"]),
                MAPHONG = f["MaPhong"],
                MARAP = f["MaRap"]
            };
            DataAccess.db.THONGTINCHIEUx.Add(tt);
            DataAccess.db.SaveChanges();

            return RedirectToAction("QuanLyThongTinChieu", "Admin");
        }

        [HttpPost]
        public ActionResult ThemVe(FormCollection f)
        {
            try
            {
                string id = "ve000" + (DataAccess.db.VEs.Count() + 2).ToString();
                var ve = new VE()
                {
                    MAVE = id,
                    MATHONGTINCHIEU = f["MaThongTinChieu"],
                    MATV = f["MaThanhVien"],
                    MATINHTRANGVE = f["MaTinhTrangVe"],
                    MAVOUCHER = f["MaVoucher"],
                    DONGIA = (int?)int.Parse(f["DonGia"]),
                };
                DataAccess.db.VEs.Add(ve);
                DataAccess.db.SaveChanges();

                return RedirectToAction("QuanLyVe", "Admin");
            }
            catch (Exception e)
            {
                //throw
                return RedirectToAction("QuanLyVe", "Admin");
            }
        }

        [HttpPost]
        public ActionResult ThemRap(FormCollection f)
        {
            string id = "rap0" + (DataAccess.db.RAPCHIEUPHIMs.Count() + 2).ToString();
            var rap = new RAPCHIEUPHIM()
            {
                MARAP = id,
                TENRAP = f["TenRap"],
                DIACHI = f["DiaChi"]
            };
            DataAccess.db.RAPCHIEUPHIMs.Add(rap);
            DataAccess.db.SaveChanges();

            return RedirectToAction("QuanLyRap", "Admin");
        }


        [HttpPost]
        public ActionResult ThemPhong(FormCollection f)
        {

            var phong = new PHONG()
            {
                MARAP = f["MaRap"],
                MaPhong = f["MaPhong"],
                MaLoaiPhong = f["MaLoaiPhong"],
                SoCho = (int?)int.Parse(f["SoCho"]),
                TenPhong = f["TenPhong"]
            };
            DataAccess.db.PHONGs.Add(phong);
            DataAccess.db.SaveChanges();

            return RedirectToAction("QuanLyPhong", "Admin");
        }

        //[HttpPost]
        //public ActionResult AddImage()
        //{
        //    st
        //}
 
       
        public ActionResult UpdateVe(string id)
        {
            var ve = DataAccess.db.VEs.SingleOrDefault(x => x.MAVE == id);
            var veNew = new VE();
            veNew = ve;
            if(ve!=null)
            {
                if(ve.TINHTRANGVE.MATINHTRANGVE=="tinhtrang01")
                {
                    veNew.MATINHTRANGVE = "tinhtrang02";
                    DataAccess.db.VEs.AddOrUpdate(veNew);
                    DataAccess.db.SaveChanges();
                    return RedirectToAction("QuanLyVe", "Admin");
                }
                else return RedirectToAction("QuanLyVe", "Admin");
            }
            else return RedirectToAction("QuanLyVe", "Admin");
        }
    }
}