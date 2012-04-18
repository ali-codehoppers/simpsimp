using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Simplicity.Web.Admin
{
    public partial class AdminMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] != null)
            {

            }
            else {
                Response.Redirect("~/CustomerLogin.aspx");
            }
        }
    }
}