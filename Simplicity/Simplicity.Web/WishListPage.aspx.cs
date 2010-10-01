using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


using Simplicity.Web.Utilities;
using Simplicity.Web.BusinessObjects;
using Simplicity.Data;
namespace Simplicity.Web
{
    public partial class WishListPage : GenericPage
    {
        protected override void OnInit(EventArgs e)
        {
            this.CurrenciesControl.CurrencyClick += new EventHandler(CurrencyControl_Click);
            base.OnInit(e);
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindRepeater();
            }
        }

        protected void CurrencyControl_Click(object sender, EventArgs e)
        {
            BindRepeater();
        }
        private void BindRepeater()
        {
            if (LoggedIsUser != null)
            {
                rpt.DataSource = GetWishList();
                rpt.DataBind();
            }
        }

        List<ShoppingItem> GetWishList()
        {
            List<ShoppingItem> shoppingItems = new List<ShoppingItem>();
            if (LoggedIsUser != null)
            {
                List<WishList> wishLists = (from wl in DatabaseContext.WishLists
                                            where wl.UserID == LoggedIsUser.UserID
                                            select wl).ToList();
                foreach (WishList wishList in wishLists)
                {
                    shoppingItems.Add(ShoppingItem.Load(wishList));
                }
            }
            return shoppingItems;
        }

        protected void rptItems_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName.Equals("Remove"))
            {
                int wishListId = int.Parse(e.CommandArgument.ToString());
                WishList wishList = (from wl in DatabaseContext.WishLists where wl.WishListID == wishListId select wl).FirstOrDefault();
                DatabaseContext.DeleteObject(wishList);
                DatabaseContext.SaveChanges();
                BindRepeater();                
            }
        }
        protected void imbBtnContinue_Click(object sender, ImageClickEventArgs e)
        {
        }
        protected void imbBtnCheckout_Click(object sender, ImageClickEventArgs e)
        {
        }
    }
}