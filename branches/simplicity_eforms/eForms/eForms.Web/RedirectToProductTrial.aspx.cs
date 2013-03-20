using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using eForms.Web.Utilities;

namespace eForms.Web
{
    public partial class RedirectToProductTrial : AuthenticatedPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (User.Identity.IsAuthenticated)
            {
                if (int.Parse(Request[eForms.Web.Utilities.WebConstants.Request.PRODUCT_ID]) == 2) //Health And Safety
                    Response.Redirect(AppSettings["HSURL"] + "/Register/ForTrial.aspx");
            }
            else {
                RedirectToLogin();
            }
        } 
    }
}