using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

using Simplicity.Data;

/// <summary>
/// Summary description for PurchasedObject
/// </summary>

namespace  Simplicity.Web.BusinessObjects
{
    public class ShoppingItem
    {
        private Product productEntity;
        public Product ProductEntity
        {
            get { return productEntity; }
            set { productEntity = value; }
        }

        private ProductDetail productDetailEntity;
        public ProductDetail ProductDetailEntity
        {
            get { return productDetailEntity; }
            set { productDetailEntity = value; }
        }

        private Simplicity.Data.Version versionEntity;
        public Simplicity.Data.Version VersionEntity
        {
            get { return versionEntity; }
            set { versionEntity = value; }
        }

        private int durationInMonths;
        public int DurationInMonths
        {
            get { return durationInMonths; }
            set { durationInMonths = value; }
        }

        public string DurationString
        {
            get
            {
                string durationString = string.Empty;
                int months = durationInMonths % 12;
                int years = durationInMonths / 12;
                if (years > 0)
                {
                    durationString = years.ToString() + " year(s) ";
                }
                if (months > 0)
                {
                    durationString += months.ToString() + " month(s)";
                }
                return durationString;
            }
        }

        private int quantity;
        public int Quantity
        {
            get { return quantity; }
            set { quantity = value; }
        }


        public double Price
        {
            get
            {
                if (this.ProductDetailEntity != null)
                {
                    if (this.VersionEntity != null && this.VersionEntity.Discount.HasValue)
                    {
                        return (this.ProductDetailEntity.Price - this.ProductDetailEntity.Price * this.VersionEntity.Discount.Value / 100) * ShoppingCart.GetCurrentCurrency().ExchangeRate1;
                    }
                    return this.productDetailEntity.Price * ShoppingCart.GetCurrentCurrency().ExchangeRate1;
                }
                else
                {
                    return this.versionEntity.Price * ShoppingCart.GetCurrentCurrency().ExchangeRate1;
                }
            }
        }

        

        public double Total
        {
            get { return this.Price * quantity; }
        }

        public ShoppingItem()
        {
            //
            // TODO: Add constructor logic here
            //
        }

        public static ShoppingItem Load(WishList wishList)
        {
            ShoppingItem shoppingItem = new ShoppingItem();
            shoppingItem.ProductEntity = wishList.Product;
            shoppingItem.DurationInMonths = wishList.Duration;
            shoppingItem.Quantity = wishList.Quantity;
            shoppingItem.WishListItemId = wishList.WishListID;
            shoppingItem.VersionEntity =  wishList.Version;
            shoppingItem.ProductDetailEntity = wishList.ProductDetail;
            return shoppingItem;
        }

        private int wishListItemId;
        public int WishListItemId
        {
            get { return wishListItemId; }
            set { wishListItemId = value; }
        }

    }
    
}