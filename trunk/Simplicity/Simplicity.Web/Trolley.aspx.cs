using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Simplicity.Web.BusinessObjects;
using Simplicity.Web.Utilities;

namespace Simplicity.Web
{
    public partial class Trolley : GenericPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SetSuccessMessage("Success Message");
            SetErrorMessage("Error Message");
            if (!IsPostBack)
            {
                Response.Cache.SetCacheability(HttpCacheability.NoCache);
                BindRepeater();
            }
        }
        private void BindRepeater()
        {
            rptItems.DataSource = GetShoppingTrolley();
            rptItems.DataBind();
        }

        protected List<ShoppingItem> GetShoppingTrolley()
        {
            if (Session[WebConstants.Session.TROLLEY] == null)
            {
                Session[WebConstants.Session.TROLLEY] = new List<ShoppingItem>();
            }
            return (List<ShoppingItem>)Session[WebConstants.Session.TROLLEY];
        }
    }
}