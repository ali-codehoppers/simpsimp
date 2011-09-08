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
                    var query = from c in this.Product.ProductDetails where c.Mandatory == true select c;                  
                    var totalPrice = query.Sum(price => price.Price);
                    totalPrice = totalPrice - totalPrice * this.Discount.Value / 100;
                    return totalPrice;
                }
                return 0;                
            }
        }
    }
}
