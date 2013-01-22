using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Simplicity.Web.Utilities;
using Simplicity.Web.BusinessObjects;
using Simplicity.Data;

namespace Simplicity.Web.Admin
{
    public partial class SubscribeUserProduct : GenericPage
    {
        private ProductBO product = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Response.Cache.SetCacheability(HttpCacheability.NoCache);
                BindRepeater();
            }
        }

        private void BindRepeater()
        {
            
            rptItems.DataSource = GetItems();
            rptItems.DataBind();
        }

        private List<ShoppingItem> GetItems() {

            List<ShoppingItem> shoppingItems = new List<ShoppingItem>();

            ShoppingItem shoppingItem = new ShoppingItem();
            
            int productId = int.Parse(Request[WebConstants.Request.PRODUCT_ID]);
            product = new ProductBO(ProductBO.GetProduct(productId));
            shoppingItem.ProductEntity = product.ProductEnity;
            if (Request[WebConstants.Request.VERSION_ID] != null)
            {
                Simplicity.Data.Version version = ProductBO.GetVersion(int.Parse(Request[WebConstants.Request.VERSION_ID]));
                shoppingItem.VersionEntity = version;
                shoppingItem.Quantity = version.MinUsers;
            }
            shoppingItem.DurationInMonths = WebConstants.DEFAULT_DURATION;

            if (Request[WebConstants.Request.PRODUCT_DETAIL_ID] != null) {
                int productDetailId = int.Parse(Request[WebConstants.Request.PRODUCT_DETAIL_ID]);
                ProductDetail productDetail = ProductBO.GetProductDetail(productDetailId);
                shoppingItem.ProductDetailEntity = productDetail;
            }

            shoppingItems.Add(shoppingItem);
            return shoppingItems;
        }


        protected void tbQuantity_OnTextChanged(object sender, EventArgs e)
        {
            TextBox tbQuantity = ((TextBox)(sender));
            try
            {
                int qty = int.Parse(tbQuantity.Text);

                RepeaterItem repeaterItem = ((RepeaterItem)(tbQuantity.NamingContainer));
                if (GetItems()[repeaterItem.ItemIndex].VersionEntity != null
                    && qty < GetItems()[repeaterItem.ItemIndex].VersionEntity.MinUsers)
                {
                    tbQuantity.Text = GetItems()[repeaterItem.ItemIndex].VersionEntity.MinUsers.ToString();
                    SetErrorMessage("Number of licenses must be atleast " + GetItems()[repeaterItem.ItemIndex].VersionEntity.MinUsers + ". Changes have not been entered in the system.");
                }
                else
                {
                    GetItems()[repeaterItem.ItemIndex].Quantity = Convert.ToInt32(tbQuantity.Text);
                }
            }
            catch (FormatException ex)
            {
                SetErrorMessage("Quantity must be integer");
            }
        }

        protected void btnCheckout_Click(object sender, ImageClickEventArgs e)
        {
            ShoppingItem shopItem = GetItems()[0];//there will always be one item returned from GetItems.
            CompanyProduct compProd = null;

            int companyId = int.Parse(Request[WebConstants.Request.COMPANY_ID]);
            IEnumerable<CompanyProduct> existingCompProds = (from prods in DatabaseContext.CompanyProducts where prods.CompanyID == companyId select prods);
            foreach (CompanyProduct existingProd in existingCompProds){
                if (existingProd.ProductID == shopItem.ProductEntity.ProductID && existingProd.EndDate.CompareTo(DateTime.Now) > 0) {
                    SetErrorMessage("The Company has already subscribed for this product.");
                    return;
                }
                else if (existingProd.ProductID == shopItem.ProductEntity.ProductID && existingProd.EndDate.CompareTo(DateTime.Now) < 0) {
                    compProd = existingProd;
                    break;
                }
            }

            if (compProd == null)
            {
                compProd = new CompanyProduct();
                compProd.StartDate = DateTime.Now;
                DatabaseContext.AddToCompanyProducts(compProd);
            }
            compProd.CompanyID = companyId;
            if(shopItem.ProductEntity != null)
                compProd.ProductID = shopItem.ProductEntity.ProductID;
            if(shopItem.VersionEntity != null)
                compProd.VersionID = shopItem.VersionEntity.VersionID;
            if (shopItem.ProductDetailEntity != null)
                compProd.ProductDetailID = shopItem.ProductDetailEntity.ProductDetailID;
            if(compProd.StartDate == null)
                compProd.StartDate = DateTime.Now;

            TextBox licenseNo = rptItems.Items[0].FindControl("tbQuantity") as TextBox;
            if (licenseNo.Text.ToString().CompareTo("") != 0)
                compProd.NumOfLicenses = int.Parse(licenseNo.Text.ToString());
            compProd.EndDate = DateTime.Now.AddYears(1);
            
            DatabaseContext.SaveChanges();

            SetSuccessMessage("Product Subscribed for company "+ compProd.Company.Name +" for 1 year period starting from now.");
        }

    }
}