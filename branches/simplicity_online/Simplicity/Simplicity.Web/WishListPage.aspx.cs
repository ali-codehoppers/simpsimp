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
            if (LoggedIsUser == null)
            {
                RedirectToLogin();
                
            }
            if (!IsPostBack)
            {
                BindRepeater();
            }
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
                try
                {
                    int wishListId = int.Parse(e.CommandArgument.ToString());
                    WishList wishList = (from wl in DatabaseContext.WishLists where wl.WishListID == wishListId select wl).FirstOrDefault();
                    DatabaseContext.DeleteObject(wishList);
                    DatabaseContext.SaveChanges();
                    BindRepeater();
                
                }
                catch (FormatException ex)
                {
                        SetErrorMessage("Quantity must be integer");
                }
            }
        }
        protected void tbQuantity_OnTextChanged(object sender, EventArgs e)
        {
            TextBox tbQuantity = ((TextBox)(sender));
            try
            {
                int qty = int.Parse(tbQuantity.Text);
                RepeaterItem repeaterItem = ((RepeaterItem)(tbQuantity.NamingContainer));
                if (GetWishList()[repeaterItem.ItemIndex].VersionEntity != null
                    && qty < GetWishList()[repeaterItem.ItemIndex].VersionEntity.MinUsers)
                {
                    tbQuantity.Text = GetWishList()[repeaterItem.ItemIndex].VersionEntity.MinUsers.ToString();
                    SetErrorMessage("Number of licenses must be atleast " + GetWishList()[repeaterItem.ItemIndex].VersionEntity.MinUsers + ". Changes have not been comitted to the Trolley");
                }
                else
                {
                    Label lblTotalPrice = (Label)repeaterItem.FindControl("totalPrice");
                    GetWishList()[repeaterItem.ItemIndex].Quantity = Convert.ToInt32(tbQuantity.Text);
                    lblTotalPrice.Text = String.Format("{0:N2}", GetWishList()[repeaterItem.ItemIndex].Total);
                }
            }
            catch (FormatException ex)
            {
                SetErrorMessage("Quantity must be integer");
            }
        }
        protected void imbBtnContinue_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/BuyProduct.aspx");
        }
        protected void imbBtnCheckout_Click(object sender, ImageClickEventArgs e)
        {
            if (GetWishList().Count == 0)
            {
                SetErrorMessage("Please select alteast one item before checking out");
            }
            else
            {
                //chckec for authentication on the respective page so it is redirected there
                Response.Redirect("~/AccountAddress.aspx");
            }
        }
        protected void CurrencyControl_Click(object sender, EventArgs e)
        {
            BindRepeater();
        }
    }
}