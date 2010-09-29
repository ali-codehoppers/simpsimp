using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Simplicity.Data;

namespace Simplicity.UserGuide.Web.Controllers
{
    public class ModuleController : Controller
    {
        //
        // GET: /Module/
        SimplicityEntities db = new SimplicityEntities();

        public ActionResult Index(int? id)
        {
            ViewData.Model = (from m in db.Modules where m.ProductID == id && m.ParentModuleID.HasValue == false select m);
            return View();
        }

        public ActionResult Details(int? id)
        {
            if (id.HasValue == false)
            {
                RedirectToAction("Index");
            }
            ViewData.Model = (from m in db.Modules where m.ModuleID == id select m).First();
            return View();
        }

    }
}
