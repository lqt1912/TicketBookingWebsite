using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MovieTheater1.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult IndexView()
        {
            return View();
        }

        public ActionResult ViewPage1()
        {
            return View();
        }
    }
}