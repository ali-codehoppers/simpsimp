using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

using Simplicity.Data;


/// <summary>
/// Summary description for GenericPage
/// </summary>
namespace Simplicity.Web.Utilities
{
    public class GenericPage : System.Web.UI.Page
    {
        public GenericPage()
        {
            //
            // TODO: Add constructor logic here
            //
        }
        protected override void OnLoad(EventArgs e)
        {
            SetMessage("error", "", false);
            SetMessage("success", "", false);
            base.OnLoad(e);
        }

        protected void SetSuccessMessage(string message)
        {
            SetMessage("success", message, true);
        }
        protected void SetErrorMessage(string message)
        {
            SetMessage("error", message, true);
        }
        private void SetMessage(string type, string message, bool visible)
        {
            Panel panel = (Panel)this.Page.Master.FindControl(type + "Panel");
            Label label = (Label)this.Page.Master.FindControl(type + "Message");
            if (panel != null && label != null)
            {
                panel.Visible = visible;
                label.Text = message;
            }
        }
        protected Simplicity.Data.User LoggedIsUser
        {
            get
            {
                if(User.Identity.IsAuthenticated)
                {
                    SimplicityEntities dbEntities = new SimplicityEntities();
                    return (from u in dbEntities.Users where u.UserUID == User.Identity.Name select u).FirstOrDefault();
                }
                return null;
            }
        }
        
        protected void RedirectToLogin()
        {
            Session[WebConstants.Session.RETURN_URL] = Request.AppRelativeCurrentExecutionFilePath;
            Response.Redirect("~/Login.aspx?" + WebConstants.Request.NEED_LOGIN + "=true");
        }

        private SimplicityEntities dbContenxt = null;
        protected SimplicityEntities DatabaseContext
        {
            get
            {
                if (dbContenxt == null)
                {
                    dbContenxt = new SimplicityEntities();
                }
                return dbContenxt;
            }
        }
    } 
}
