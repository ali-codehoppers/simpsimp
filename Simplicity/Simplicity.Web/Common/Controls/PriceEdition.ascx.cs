using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Simplicity.Web.Utilities;
using Simplicity.Web.BusinessObjects;
using System.Configuration;
using Simplicity.Data;

namespace Simplicity.Web.Common.Controls
{
    public class Version
    {
        private int versionId;
        public int VersionId
        {
            get { return versionId; }
            set { versionId = value; }
        }

        private int productDetailId;
        public int ProductDetailId
        {
            get { return productDetailId; }
            set { productDetailId = value; }
        }

        private double price;
        public double Price
        {
            get { return price; }
            set { price = value; }
        }
    }
    public partial class PriceEdition : System.Web.UI.UserControl
    {
        private ProductBO product = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request[WebConstants.Request.PRODUCT_ID] != null)
            {
                if (IsPostBack == false)
                {
                    BindData();
                    if (product != null)
                    {
                        if (Request[WebConstants.Request.PRODUCT_DETAIL_ID] != null)
                        {
                            int productDetailId = int.Parse(Request[WebConstants.Request.PRODUCT_DETAIL_ID]);
                            int versionId = int.Parse(Request[WebConstants.Request.VERSION_ID]);
                            ShoppingCart.AddProductDetail(product.ProductEnity, productDetailId, versionId);
                            if (ConfigurationSettings.AppSettings[WebConstants.Config.PAYMENT_OFFLINE].Equals("true"))
                            {
                                Response.Redirect("~/PaymentOffline.aspx");
                            }
                            else
                            {
                                Response.Redirect("~/Trolley.aspx");
                            }
                        }
                        else if (Request[WebConstants.Request.VERSION_ID] != null)
                        {
                            int versionId = int.Parse(Request[WebConstants.Request.VERSION_ID]);
                            ShoppingCart.AddProductVersion(product.ProductEnity, versionId);
                            if (ConfigurationSettings.AppSettings[WebConstants.Config.PAYMENT_OFFLINE].Equals("true"))
                            {
                                Response.Redirect("~/PaymentOffline.aspx");
                            }
                            else
                            {
                                Response.Redirect("~/Trolley.aspx");
                            }
                        }
                    }
                }
            }
            else
            {
                Response.Redirect("~/BuyProduct.aspx");
            }
        }
        private void BindData()
        {
            int productId = int.Parse(Request[WebConstants.Request.PRODUCT_ID]);
            product = new ProductBO(ProductBO.GetProduct(productId));
            if (product != null)
            {
                if (Request[WebConstants.Request.MORE] != null)
                {
                    if (product.OptionalDetails.Count > 0)
                    {
                        rptOptional.DataSource = product.OptionalDetails.GetRange(0, product.OptionalDetails.Count > WebConstants.DEFAULT_ADDONS ? WebConstants.DEFAULT_ADDONS : product.OptionalDetails.Count);
                        rptOptional.DataBind();
                    }
                    hlBack.NavigateUrl = "~/ProductPrices.aspx?" + WebConstants.Request.PRODUCT_ID + "=" + Request[WebConstants.Request.PRODUCT_ID];
                    hlBack.Visible = true;
                }
                else
                {
                    rptMandatory.DataSource = product.MandatoryDetails;
                    rptMandatory.DataBind();
                    //as we have to show the first five elements only.
                    if (product.OptionalDetails.Count > WebConstants.DEFAULT_ADDONS)
                    {
                        rptOptional.DataSource = product.OptionalDetails.GetRange(0, 5);
                        hlMore.Visible = true;
                    }
                    else if (product.OptionalDetails.Count > 0)
                    {
                        rptOptional.DataSource = product.OptionalDetails.GetRange(0, product.OptionalDetails.Count);
                    }
                    rptOptional.DataBind();
                    hlMore.NavigateUrl = "~/ProductPrices.aspx?" + WebConstants.Request.PRODUCT_ID + "=" + Request[WebConstants.Request.PRODUCT_ID]
                        + "&" + WebConstants.Request.MORE + "=true";

                }
            }
        }
        protected string GetProductImage()
        {
            if (product != null)
            {
                return "~/images/s_" + product.ProductEnity.ShortName + ".jpg";
            }
            return "";
        }
        protected void rptMandatory_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (product != null)
            {
                Repeater rptHeader = (Repeater)e.Item.FindControl("rptVersions");
                if (rptHeader != null)
                {
                    rptHeader.DataSource = product.Versions;
                    rptHeader.DataBind();
                }
            }
        }

        protected string GetVersionBuyNowURL(object versionId)
        {
            if (product != null)
            {
                return "ProductPrices.aspx?" + WebConstants.Request.PRODUCT_ID + "=" + product.ProductEnity.ProductID + "&" + WebConstants.Request.VERSION_ID + "=" + versionId;
            }
            return "#";
        }

        protected string GetProductDetailBuyNowURL(object versionId, object productDetailId, object price)
        {
            if (product != null)
            {
                return "ProductPrices.aspx?" + WebConstants.Request.PRODUCT_ID + "=" + product.ProductEnity.ProductID
                    + "&" + WebConstants.Request.VERSION_ID + "=" + versionId
                    + "&" + WebConstants.Request.PRODUCT_DETAIL_ID + "=" + productDetailId;

            }
            return "#";
        }

        protected string GetVersionPrice(object price)
        {
            double finalPrice = ((double)price) * ShoppingCart.GetCurrentCurrency().ExchangeRate1;
            return String.Format("{0:N2}", finalPrice);
        }
        protected void rptOptional_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (product != null)
            {
                if ((e.Item.ItemType == ListItemType.Item) || (e.Item.ItemType == ListItemType.AlternatingItem))
                {
                    Repeater rptHeader = (Repeater)e.Item.FindControl("rptVersions");
                    ProductDetail productDetails = (ProductDetail)e.Item.DataItem;
                    if (rptHeader != null)
                    {
                        List<Version> versions = new List<Version>();
                        foreach (var versionDS in product.Versions)
                        {
                            Version version = new Version();
                            version.VersionId = versionDS.VersionID;
                            version.ProductDetailId = productDetails.ProductDetailID;
                            if (versionDS.Discount == null)
                            {
                                version.Price = productDetails.Price;
                            }
                            else
                            {
                                version.Price = (double)(productDetails.Price - productDetails.Price * versionDS.Discount / 100);
                            }
                            version.Price *= ShoppingCart.GetCurrentCurrency().ExchangeRate1;
                            versions.Add(version);
                        }
                        rptHeader.DataSource = versions;
                        rptHeader.DataBind();
                    }
                }
            }
        }
        protected override void OnInit(EventArgs e)
        {
            this.CurrenciesControl.CurrencyClick += new EventHandler(CurrencyControl_Click);
            base.OnInit(e);
        }
        protected void CurrencyControl_Click(object sender, EventArgs e)
        {
            BindData();
        }
        protected string GetCurrencyHTMLCode()
        {
            return ShoppingCart.GetCurrentCurrency().HTMLCurrencyCode;
        }
    }
}