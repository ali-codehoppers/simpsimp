using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Simplicity.Data
{
    public partial class Version
    {
        public double Price
        {
            get 
            {
                if (this.Product != null)
                {                    
                    var totalPrice = this.Product.ProductDetails.Sum(price => price.Price);
                    totalPrice = totalPrice - totalPrice * this.Discount.Value / 100;
                    return totalPrice;
                }
                return 0;                
            }
        }
    }
}
