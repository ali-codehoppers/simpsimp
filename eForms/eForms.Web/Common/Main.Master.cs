using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;


namespace eForms.Web.Common
{
    public partial class Main : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userName"] != null)
            {
                LoginLink.Visible = false;
                LogoutLink.Visible = true;
                MyAccountLink.Visible = true;
                String b = "You are logged in as "+ (String)Session["userName"];
                usernameLabel.Text = b;
            }
            else {
                LoginLink.Visible = true;
                LogoutLink.Visible = false;
                MyAccountLink.Visible = false;
                
                
            }
        }
    }
}