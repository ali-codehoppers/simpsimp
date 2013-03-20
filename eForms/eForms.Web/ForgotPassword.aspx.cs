using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using eForms.Data;
using eForms.Web.Utilities;


namespace eForms.Web
{
    public partial class Forget : GenericPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ForgetButtonClick(object sender, ImageClickEventArgs e)
        {

            List<User> users = (from UserTable in DatabaseContext.Users where UserTable.Email == username.Text select UserTable).ToList();
            //var users = query.ToList();
            if (users.Any())
            {
                Session["FORGOT_PASSWORD_USER"] = username.Text;
                Response.Redirect("~/ForgotPasswordNextPage.aspx");
            }
            else
            {
                SetErrorMessage("Username does not exists in Simplicity.");
            }
            
        }
    }
}