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
using Simplicity.Web.BusinessObjects;
using System.Collections.Specialized;

/// <summary>
/// Summary description for GenericPage
/// </summary>
namespace Simplicity.Web.Utilities
{
    public class GenericPage : System.Web.UI.Page
    {
        public static NameValueCollection AppSettings = System.Configuration.ConfigurationManager.AppSettings;
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
            if (User.Identity.IsAuthenticated)
            {
                Data.Session session = (from s in DatabaseContext.Sessions where s.SessionUID == User.Identity.Name select s).FirstOrDefault();
                if (session != null && session.User != null)
                {
                    loggedInUser = session.User;
                    session.LastActivityTime = DateTime.Now;
                    session.EndTime = DateTime.Now.AddMinutes(30);
                    session.IP = Request.UserHostAddress;
                    DatabaseContext.SaveChanges();
                }
            }
            base.OnLoad(e);
        }

        protected void SetSuccessMessage(string message)
        {
            SetMessage("error", "", false);
            SetMessage("success", message, true);
        }
        protected void SetErrorMessage(string message)
        {
            SetMessage("success", "", false);
            SetMessage("error", message, true);
        }
        private void SetMessage(string type, string message, bool visible)
        {
            Panel panel = (Panel)FindControl(this.Page.Master, type + "Panel");
            Label label = (Label)FindControl(this.Page.Master,type + "Message");
            if (panel != null && label != null)
            {
                panel.Visible = visible;
                label.Text = message;
            }
        }
        private Simplicity.Data.User loggedInUser;
        protected Simplicity.Data.User LoggedIsUser
        {
            get
            {
                return loggedInUser;
            }
        }
        
        protected void RedirectToLogin()
        {
            Session[WebConstants.Session.RETURN_URL] = Request.AppRelativeCurrentExecutionFilePath;
            Response.Redirect("~/CustomerLogin.aspx?" + WebConstants.Request.NEED_LOGIN + "=true");
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

        protected Control FindControl(Control root, string controlId)
        {

            if (root != null)
            {
                if (root.ID == controlId)
                {
                    return root;
                }
                foreach (Control control in root.Controls)
                {
                    Control foundControl = FindControl(control, controlId);
                    if (foundControl != null)
                        return foundControl;
                }
            }
            return null;            
        }
        protected string GetCurrencyHTMLCode()
        {
            return ShoppingCart.GetCurrentCurrency().HTMLCurrencyCode;
        }
    } 
}
