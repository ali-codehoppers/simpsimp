using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

using Simplicity.Web.BusinessObjects;
using Simplicity.Data;

namespace Simplicity.Web.TestPages
{
    public partial class AddTrollery_TEST : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SimplicityEntities dbContext = new SimplicityEntities();
            Product p = ProductBO.GetProduct(1);
            Product p1 = ProductBO.GetProduct(2);
            //Simplicity.Data.Version v = ProductBO.GetVersion(1);
            //ProductDetail pd = ProductBO.GetProductDetail(3);
            ShoppingCart.AddProductDetail(p, 3, 2);
          //  ShoppingCart.AddProductDetail(p1, 2, 1);
            //FormsAuthentication.SetAuthCookie("0F296D30-48E6-4FB9-ADBD-A670A6147A1A", false);
            int debug = 0;
            Response.Redirect("~/Trolley.aspx");
        }
    }
}