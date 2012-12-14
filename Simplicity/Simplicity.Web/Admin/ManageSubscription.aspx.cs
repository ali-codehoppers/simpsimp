using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Simplicity.Web.Utilities;
using System.Data;
using Simplicity.Data;

namespace Simplicity.Web.Admin
{
    public partial class ManageSubscription : GenericPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var subscribe = from u in DatabaseContext.Users select u;
            SubscribeRepeater.DataSource = subscribe;
            SubscribeRepeater.DataBind();
        }
        protected void DataItemBound(object sender, RepeaterItemEventArgs e) {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                int userId = Int32.Parse(((HiddenField)e.Item.FindControl("userID")).Value);
                Repeater TrialRepeater = (Repeater)(Repeater)e.Item.FindControl("TrialRepeater");
                var userProducts = from up in DatabaseContext.UserProducts where up.UserID == userId && (from p in DatabaseContext.Products select up.ProductID).Contains(up.ProductID) select new { Product = up.Product, UserProduct = up };
                TrialRepeater.DataSource = userProducts;
                TrialRepeater.DataBind();
                Repeater CompanyRepeater = (Repeater)(Repeater)e.Item.FindControl("CompanyRepeater");
                var userCompanyId = (from u in DatabaseContext.Users where u.UserID == userId select u.CompanyID).FirstOrDefault();
                var companyProducts = from cp in DatabaseContext.CompanyProducts where cp.CompanyID == userCompanyId && (from p in DatabaseContext.Products select p.ProductID).Contains(cp.ProductID) select new { Product = cp.Product, CompanyProduct = cp };
                CompanyRepeater.DataSource = companyProducts;
                CompanyRepeater.DataBind();
            }

            //int userId = Int32.Parse(((HiddenField)((Repeater)sender).FindControl("userID")).Value);
            //Repeater TrialRepeater = (Repeater)((Repeater)sender).FindControl("TrialRepeater");
            //var userProducts = from up in DatabaseContext.UserProducts where up.UserID == userId && (from p in DatabaseContext.Products select up.ProductID).Contains(up.ProductID) select new { Product = up.Product, UserProduct = up };
            //TrialRepeater.DataSource = userProducts;
            //TrialRepeater.DataBind();
        }
    }
}