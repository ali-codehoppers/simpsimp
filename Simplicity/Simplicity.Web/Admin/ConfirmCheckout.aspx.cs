using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Simplicity.Web.Utilities;
using Simplicity.Web.BusinessObjects;

namespace Simplicity.Web.Admin
{
    public partial class ConfirmCheckout : AdminAuthenticatedPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == false)
            {
                BindRepeater();
                double total = 0;
                if (Session[WebConstants.Session.TROLLEY] != null)
                {

                    List<ShoppingItem> items = (List<ShoppingItem>)Session[WebConstants.Session.TROLLEY];
                    foreach (ShoppingItem item in items)
                    {
                        total += item.Total;
                    }
                }
                this.paymentMsg.Text = "You will be paying " + GetCurrencyHTMLCode() + " " + String.Format("{0:N2}", total) + " amount per month for a year from " + DateTime.Now.AddDays(1).ToShortDateString() + " to " + DateTime.Now.AddDays(1).AddMonths(12).ToShortDateString();
            }
        }
        private void BindRepeater()
        {
            rptItems.DataSource = (List<ShoppingItem>)Session[WebConstants.Session.TROLLEY];
            rptItems.DataBind();
        }
        protected void btnCheckout_Click(object sender, ImageClickEventArgs e)
        {
            bool anyError = false;

            foreach (RepeaterItem rpItem in rptItems.Items)
            {
                CheckBox cb = (CheckBox)rpItem.FindControl("cbTerms");
                if (cb.Checked == false)
                {
                    SetErrorMessage("Terms and Conditions must be accepted for all the selected products");
                    anyError = true;
                }
            }
            if (!anyError)
            {
                Response.Redirect("~/Admin/PaymentDetail.aspx");
            }
        }
    }
}