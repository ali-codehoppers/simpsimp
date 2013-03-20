using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using eForms.Web.BusinessObjects;
using eForms.Web.Utilities;
namespace eForms.Web.Common.Controls
{
    public partial class Currencies : System.Web.UI.UserControl
    {
        public event EventHandler CurrencyClick;

        

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Sterling_Click(object sender, ImageClickEventArgs e)
        {
            ShoppingCart.SetCurrency(WebConstants.Currencies.GBP);
            OnClickEvent();
        }

        protected void Euro_Click(object sender, ImageClickEventArgs e)
        {
            ShoppingCart.SetCurrency(WebConstants.Currencies.EUR);
            OnClickEvent();
        }

        protected void Dollar_Click(object sender, ImageClickEventArgs e)
        {
            ShoppingCart.SetCurrency(WebConstants.Currencies.USD);
            OnClickEvent();            
        }

        protected void OnClickEvent()
        {
            CurrencyClick(this, new EventArgs());
        } 
    }
}