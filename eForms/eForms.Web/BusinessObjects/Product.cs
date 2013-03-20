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

using eForms.Data;


/// <summary>
/// Summary description for Product
/// </summary>
///                                                                                                                                   
namespace eForms.Web.BusinessObjects
{
    public class ProductBO
    {
        public ProductBO()
        {
            //
            // TODO: Add constructor logic here
            //
        }
        public ProductBO(Product productEntity)
        {
            this.productEntity = productEntity;
        }
        private Product productEntity;
        public Product ProductEnity
        {
            get { return productEntity; }
            set { productEntity = value; }
        }
        

        
        public List<eForms.Data.Version> Versions
        {
            get 
            { 
                return this.productEntity.Versions.ToList(); 
            }            
        }

        
        public List<ProductDetail> MandatoryDetails
        {
            get 
            {
                return (from d in this.productEntity.ProductDetails where d.Mandatory == true select d).ToList();
            }            
        }

        
        public List<ProductDetail> OptionalDetails
        {
            get 
            {
                return (from d in this.productEntity.ProductDetails where d.Mandatory == false select d).ToList();
            }        
        }

        public eForms.Data.Version GetLoadedVersion(int versionId)
        {
            return (from v in this.productEntity.Versions where v.VersionID == versionId select v).FirstOrDefault();
        }

        public ProductDetail GetLoadedProductDetail(int productDetailId)
        {
            return (from pd in this.productEntity.ProductDetails where pd.ProductDetailID == productDetailId select pd).FirstOrDefault();
        }

        public static Product GetProduct(int productId)
        {
            var dbContext = new SIMPLICITY_eFORMSEntities();
            return (from p in dbContext.Products where p.ProductID == productId select p).FirstOrDefault();
        }

        public static eForms.Data.Version GetVersion(int versionId)
        {
            var dbContext = new SIMPLICITY_eFORMSEntities();
            return (from v in dbContext.Versions where v.VersionID == versionId select v).FirstOrDefault();
        }

        public static ProductDetail GetProductDetail(int productDetailId)
        {
            var dbContext = new SIMPLICITY_eFORMSEntities();
            return (from pd in dbContext.ProductDetails where pd.ProductDetailID == productDetailId select pd).FirstOrDefault();
        }

        /*public static SimplicityCommLib.DataSets.Common.Products.ProductsRow GetProduct(int productId)
        {
            //Products.ProductEntityRow product = null;
            SimplicityCommLib.DataSets.Common.ProductsTableAdapters.ProductsTableAdapter prodTA = new SimplicityCommLib.DataSets.Common.ProductsTableAdapters.ProductsTableAdapter();
            IEnumerator<SimplicityCommLib.DataSets.Common.Products.ProductsRow> products = prodTA.GetProductById(productId).GetEnumerator();
            if (products.MoveNext())
            {
                return products.Current;                
            }
            else
                return null;
            
        }*/

        public static ExchangeRate GetExchangeRate(string countryCode)
        {
            var dbContext = new SIMPLICITY_eFORMSEntities();
            return (from er in dbContext.ExchangeRates where er.CountryCode == countryCode select er).FirstOrDefault();
        }
    }
}