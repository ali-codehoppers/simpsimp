using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;


namespace Simplicity.Web.Common
{
    public partial class Main : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.User.Identity.IsAuthenticated)
            {
                LoginLink.Visible = false;
                LogoutLink.Visible = true;
            }
            else {
                LoginLink.Visible = true;
                LogoutLink.Visible = false;
            }
        }
    }
}