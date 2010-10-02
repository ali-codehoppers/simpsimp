using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Simplicity.Web.Utilities;

namespace Simplicity.Web
{
    public partial class ConfirmMail : GenericPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SetSuccessMessage("Instructions have been sent to your email address. Please follow them to activate your account.");
        }

        protected void btnSave_Click(object sender, ImageClickEventArgs e)
        {
            if (Session[WebConstants.Session.RETURN_URL] != null)
            {
                Response.Redirect((string)Session[WebConstants.Session.RETURN_URL]);
            }
            else
            {
                Response.Redirect("~/Default.aspx");
            }
        }
    }
}