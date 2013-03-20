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
using System.Collections.Generic;
using eForms.Web.Utilities;
using eForms.Data;

/// <summary>
/// Summary description for PurchasedObject
/// </summary>
namespace  eForms.Web.BusinessObjects
{
    public static class ShoppingCart
    {
        public static ExchangeRate GetCurrentCurrency()
        {
            if (HttpContext.Current.Session[WebConstants.Session.CURRENT_CURRENCY] != null)
            {
                return (ExchangeRate)HttpContext.Current.Session[WebConstants.Session.CURRENT_CURRENCY];
            }
            else
            {
                ExchangeRate exchangeRate = ProductBO.GetExchangeRate("GBP");
                if (exchangeRate != null)
                {
                    //TODO: If there is no exchange rate for GBP, then application will crash
                    HttpContext.Current.Session[WebConstants.Session.CURRENT_CURRENCY] = exchangeRate;
                    return exchangeRate;
                }
            }
            return null;
        }

        public static void SetCurrency(string currencyCode)
        {
            ExchangeRate exchangeRate = ProductBO.GetExchangeRate(currencyCode);
            if (exchangeRate != null)
            {
                HttpContext.Current.Session[WebConstants.Session.CURRENT_CURRENCY] = exchangeRate;
            }
        }

        public static void AddProductVersion(Product product, int versionId, int quantity)
        {
            //see if already exists in cart      
            eForms.Data.Version version = ProductBO.GetVersion(versionId);
            ShoppingItem shoppingItem = new ShoppingItem();
            shoppingItem.ProductEntity = product;
            shoppingItem.VersionEntity = version;
            shoppingItem.DurationInMonths = WebConstants.DEFAULT_DURATION;
            shoppingItem.Quantity = quantity;
            AddShoppingItem(shoppingItem);
        }

        public static void AddProductVersion(Product product, int versionId)
        {
            //see if already exists in cart
            eForms.Data.Version version = ProductBO.GetVersion(versionId);
            ShoppingItem shoppingItem = new ShoppingItem();
            shoppingItem.ProductEntity = product;
            shoppingItem.VersionEntity = version;
            shoppingItem.DurationInMonths = WebConstants.DEFAULT_DURATION;
            shoppingItem.Quantity = version.MinUsers;
            AddShoppingItem(shoppingItem);
        }

        public static void AddShoppingItem(ShoppingItem shoppingItem)
        {
            List<ShoppingItem> shoppingItems = null;
            if (HttpContext.Current.Session[WebConstants.Session.TROLLEY] != null)
            {
                shoppingItems = (List<ShoppingItem>)HttpContext.Current.Session[WebConstants.Session.TROLLEY];
            }
            else
            {
                shoppingItems = new List<ShoppingItem>();
            }
            ReplaceShoppingItem(shoppingItems, shoppingItem);
            HttpContext.Current.Session[WebConstants.Session.TROLLEY] = shoppingItems;
        }

        private static void ReplaceShoppingItem(List<ShoppingItem> shoppingItems, ShoppingItem shoppingItemToAdd)
        {
            bool added = false;


            foreach (ShoppingItem shoppingItem in shoppingItems)
            {
                // if it is a product detail then it will have detail and version as well. 
                // both items should have the same set therefore it is imp to check for that.
                if (shoppingItemToAdd.ProductDetailEntity != null)
                {
                    if (shoppingItemToAdd.ProductDetailEntity != null && shoppingItemToAdd.VersionEntity != null
                        && shoppingItem.ProductDetailEntity != null && shoppingItem.VersionEntity != null)
                    {
                        if (shoppingItemToAdd.ProductDetailEntity.ProductDetailID == shoppingItem.ProductDetailEntity.ProductDetailID
                            && shoppingItemToAdd.VersionEntity.VersionID == shoppingItem.VersionEntity.VersionID)
                        {
                            shoppingItem.Quantity += shoppingItemToAdd.Quantity;
                            added = true;
                        }
                    }
                }
                else
                {
                    //if it is version the detail should be null
                    if (shoppingItemToAdd.ProductDetailEntity == null && shoppingItem.ProductDetailEntity == null
                        && shoppingItemToAdd.VersionEntity != null && shoppingItem.VersionEntity != null
                        && shoppingItemToAdd.VersionEntity.VersionID == shoppingItem.VersionEntity.VersionID)
                    {
                        shoppingItem.Quantity += shoppingItemToAdd.Quantity;
                        added = true;
                    }
                }
            }
            if (!added)
            {
                shoppingItems.Add(shoppingItemToAdd);
            }
        }

        public static void AddProductDetail(Product product, int productDetailId, int versionId)
        {
            ProductDetail productDetail = ProductBO.GetProductDetail(productDetailId);
            eForms.Data.Version version = ProductBO.GetVersion(versionId);
            ShoppingItem shoppingItem = new ShoppingItem();
            shoppingItem.ProductEntity = product;
            shoppingItem.ProductDetailEntity = productDetail;
            shoppingItem.VersionEntity = version;
            shoppingItem.DurationInMonths = WebConstants.DEFAULT_DURATION;
            shoppingItem.Quantity = version.MinUsers;
            AddShoppingItem(shoppingItem);
        }
        public static void AddProductDetail(Product product, int productDetailId, int versionId, int quantity)
        {
            //see if already exists in cart
            ProductDetail productDetail = ProductBO.GetProductDetail(productDetailId);
            eForms.Data.Version version = ProductBO.GetVersion(versionId);
            ShoppingItem shoppingItem = new ShoppingItem();
            shoppingItem.ProductEntity = product;
            shoppingItem.ProductDetailEntity = productDetail;
            shoppingItem.VersionEntity = version;
            shoppingItem.DurationInMonths = WebConstants.DEFAULT_DURATION;
            shoppingItem.Quantity = quantity;
            AddShoppingItem(shoppingItem);
        }

        public static double GetTotalAmount()
        {
            double totalAmount = 0;
            if (HttpContext.Current.Session[WebConstants.Session.TROLLEY] != null)
            {
                foreach (ShoppingItem shoppingItem in (List<ShoppingItem>)HttpContext.Current.Session[WebConstants.Session.TROLLEY])
                {
                    totalAmount += shoppingItem.Total;
                }
            }
            return totalAmount;
        }
        public static void ClearTrolley()
        {
            HttpContext.Current.Session[WebConstants.Session.TROLLEY] = null;
        }
    }
    
}