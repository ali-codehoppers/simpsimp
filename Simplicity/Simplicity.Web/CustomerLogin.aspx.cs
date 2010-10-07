using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Simplicity.Data;
using Simplicity.Web.Utilities;

using System.Web.Security;
namespace Simplicity.Web
{
    public partial class CustomerLogin : GenericPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((LoggedIsUser != null) || (User.Identity.IsAuthenticated))
            {
                Response.Redirect("Default.aspx");
            }
            else
            {
                if (Request[WebConstants.Request.NEED_LOGIN] != null)
                {
                    SetErrorMessage("Please login to continue");
                }
                else if (Request[WebConstants.Request.FROM_PAGE] != null)
                {
                    SetSuccessMessage("An email has been sent to you for your login details");
                }
            }

        }

        protected void LoginButtonClick(object sender, ImageClickEventArgs e)
        {
            String Collectpassword = Utility.GetMd5Sum(password.Text);
            Simplicity.Data.User user = (from u in DatabaseContext.Users
                                         where u.Email == username.Text
                                         && u.Password == Collectpassword 
                                         && u.Verified == true select u).FirstOrDefault();
            if (user != null)
            {
                Simplicity.Data.Session session = new Data.Session();
                session.SessionUID = System.Guid.NewGuid().ToString();
                session.User = user;
                session.StartTime = DateTime.Now;
                session.LastActivityTime = DateTime.Now;
                session.EndTime = DateTime.Now.AddMinutes(30);
                session.IP = Request.UserHostAddress;
                DatabaseContext.AddToSessions(session);
                DatabaseContext.SaveChanges();
                FormsAuthentication.SetAuthCookie(session.SessionUID, false);
                Session[WebConstants.Session.USER_ID] = user.UserID;
                if (Session[WebConstants.Session.RETURN_URL] != null)
                {
                    Response.Redirect((string)Session[WebConstants.Session.RETURN_URL]);
                }
                else
                {
                    Response.Redirect("Default.aspx");
                }

            }
            else
            {
                SetErrorMessage(WebConstants.Messages.Error.CANNOT_LOGIN);
            }
        }

        protected void RememberCheckedChanged(object sender, EventArgs e)
        {

        }

    }
}