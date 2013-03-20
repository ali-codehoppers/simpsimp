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

using eForms.Data;
using eForms.Web.BusinessObjects;
using System.Collections.Specialized;
using System.Collections.Generic;

/// <summary>
/// Summary description for GenericPage
/// </summary>
namespace eForms.Web.Utilities
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
                    LoggedUserCompanyProduct =loggedInUser.Company.CompanyProducts.Count;
                    LoggedUserProduct =loggedInUser.UserProducts.Count;
                    session.LastActivityTime = DateTime.Now;
                    session.EndTime = DateTime.Now.AddMinutes(30);
                    session.IP = Request.UserHostAddress;
                    session.ProductID = null;
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
        private eForms.Data.User loggedInUser;
        protected eForms.Data.User LoggedIsUser
        {
            get
            {
                return loggedInUser;
            }
        }
        private int LoggedUserCompanyProduct;
        protected int IsUserCompanyProduct
        {
            get
            {
                return LoggedUserCompanyProduct;
            }
        }
        private int LoggedUserProduct;
        protected int IsUserProduct
        {
            get
            {
                return LoggedUserProduct;
            }
        }

        protected void RedirectToLogin()
        {
            Session[WebConstants.Session.RETURN_URL] = Request.AppRelativeCurrentExecutionFilePath;
            Response.Redirect("~/CustomerLogin.aspx?" + WebConstants.Request.NEED_LOGIN + "=true");
        }

        private SIMPLICITY_eFORMSEntities dbContenxt = null;
        protected SIMPLICITY_eFORMSEntities DatabaseContext
        {
            get
            {
                if (dbContenxt == null)
                {
                    dbContenxt = new SIMPLICITY_eFORMSEntities();
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
