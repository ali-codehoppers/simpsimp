using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections.Specialized;
using eForms.Web.Utilities;

namespace eForms.Web
{
    public partial class RedirectToProduct : AuthenticatedPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (int.Parse(Request[eForms.Web.Utilities.WebConstants.Request.PRODUCT_ID]) == 2)  
                Response.Redirect(AppSettings["HSURL"] + "/TermsConditions.aspx",false);
        }
    }
}