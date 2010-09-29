using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Simplicity.Data;

namespace Simplicity.UserGuide.Web.Controllers
{
    public class ProductController : Controller
    {
        SimplicityEntities db = new SimplicityEntities();
        //
        // GET: /Product/

        public ActionResult Index()
        {
            ViewData.Model = db.Products.ToList();
            //db.Products.
            return View();
        }

        public ActionResult Details(int? id)
        {
            if (id.HasValue == false)
            {
                RedirectToAction("Index");
            }
            ViewData.Model = (from p in db.Products where p.ProductID == id select p).First();
            //product.Modules = product.Modules.Where(module => module.ParentModuleID.HasValue == false);
            return View();
        }

    }
}
