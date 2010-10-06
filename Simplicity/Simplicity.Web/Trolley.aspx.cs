using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Simplicity.Web.BusinessObjects;
using Simplicity.Web.Utilities;

using Simplicity.Data;
namespace Simplicity.Web
{
    public partial class Trolley : GenericPage
    {
        protected override void  OnInit(EventArgs e)
        {
            this.CurrenciesControl.CurrencyClick += new EventHandler(CurrencyControl_Click);
 	        base.OnInit(e);
        }

        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (GetShoppingTrolley().Count == 0)
            {
                SetErrorMessage("There are no items in your trolley. Please click continue shopping to purchase products");
            }
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

        protected void rptItems_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName.Equals("Remove"))
            {
                List<ShoppingItem> trolley = GetShoppingTrolley();
                trolley.RemoveAt(int.Parse(e.CommandArgument.ToString()));
                Session[WebConstants.Session.TROLLEY] = trolley;
                BindRepeater();
            }
            else if (e.CommandName.Equals("Save"))
            {
                if (LoggedIsUser != null)
                {
                    int index = int.Parse(e.CommandArgument.ToString());
                    ShoppingItem currentItem = GetShoppingTrolley()[index];
                    //Save record for current user
                    
                    WishList wishList = null;
                    if (currentItem.ProductDetailEntity != null)
                    {
                        wishList = (from wl in DatabaseContext.WishLists
                                        where wl.UserID == LoggedIsUser.UserID
                                        && wl.ProductID == currentItem.ProductEntity.ProductID
                                        && wl.ProductDetailID == currentItem.ProductDetailEntity.ProductDetailID
                                        && wl.VersionID == currentItem.VersionEntity.VersionID
                                        select wl).FirstOrDefault();
                    }
                    else
                    {
                        wishList = (from wl in DatabaseContext.WishLists
                                        where wl.UserID == LoggedIsUser.UserID
                                        && wl.ProductID == currentItem.ProductEntity.ProductID
                                        && wl.ProductDetailID == null
                                        && wl.VersionID == currentItem.VersionEntity.VersionID
                                        select wl).FirstOrDefault();
                    }
                    
                    if (wishList != null)
                    {
                        wishList.Quantity += currentItem.Quantity;
                        DatabaseContext.SaveChanges();
                    }
                    else
                    {
                        wishList = new WishList();
                        wishList.Duration = currentItem.DurationInMonths;
                        if (currentItem.ProductDetailEntity != null)
                        {
                            wishList.ProductDetailID = currentItem.ProductDetailEntity.ProductDetailID;
                        }
                        wishList.ProductID = currentItem.ProductEntity.ProductID;
                        wishList.Quantity = currentItem.Quantity;
                        wishList.UserID = LoggedIsUser.UserID;
                        wishList.VersionID = currentItem.VersionEntity.VersionID;

                        DatabaseContext.AddToWishLists(wishList);
                        DatabaseContext.SaveChanges();
                    }
                    GetShoppingTrolley().RemoveAt(index);
                    SetSuccessMessage("Item successfully added to your wishlist");
                    BindRepeater(); 
                }
                else
                {
                    RedirectToLogin();
                }
            }
        }

        protected void tbQuantity_OnTextChanged(object sender, EventArgs e)
        {
            TextBox tbQuantity = ((TextBox)(sender));
            int qty = int.Parse(tbQuantity.Text);
            RepeaterItem repeaterItem = ((RepeaterItem)(tbQuantity.NamingContainer));
            if (GetShoppingTrolley()[repeaterItem.ItemIndex].VersionEntity != null
                && qty < GetShoppingTrolley()[repeaterItem.ItemIndex].VersionEntity.MinUsers)
            {
                tbQuantity.Text = GetShoppingTrolley()[repeaterItem.ItemIndex].VersionEntity.MinUsers.ToString();
                SetErrorMessage("Number of licenses must be atleast " + GetShoppingTrolley()[repeaterItem.ItemIndex].VersionEntity.MinUsers + ". Changes have not been comitted to the Trolley");
            }
            else
            {
                Label lblTotalPrice = (Label)repeaterItem.FindControl("totalPrice");
                GetShoppingTrolley()[repeaterItem.ItemIndex].Quantity = Convert.ToInt32(tbQuantity.Text);
                lblTotalPrice.Text = String.Format("{0:N2}", GetShoppingTrolley()[repeaterItem.ItemIndex].Total);
            }
        }

        
        

        protected void btnContinueShopping_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/BuyProduct.aspx");
        }

        protected void btnCheckout_Click(object sender, ImageClickEventArgs e)
        {
            if (GetShoppingTrolley().Count == 0)
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