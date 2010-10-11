using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Simplicity.Web.Utilities;

namespace Simplicity.Web
{
    public partial class RedirectToProductTrial : AuthenticatedPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (int.Parse(Request[Simplicity.Web.Utilities.WebConstants.Request.PRODUCT_ID]) == 2) //Health And Safety
                Response.Redirect(AppSettings["HSURL"] + "/Register/ForTrial.aspx");
        }
    }
}