using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using eForms.Web.Utilities;

namespace eForms.Web
{
    public partial class BuyProduct : GenericPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected string GetBuyOrTry()
        {
            if (Request[WebConstants.Request.TRY] != null)
            {
                return "Try";
            }
            return "Buy";
        }
        protected string GetColNumber(object index)
        {
            int indexInt = int.Parse(index.ToString());
            return (indexInt % 3).ToString();
        }
        protected string GetSeperatorHTML(object index)
        {
            int indexInt = int.Parse(index.ToString());
            if (indexInt % 3 == 2)
            {
                return "</div><div class='row'>";
            }
            return "";
        }
        protected string GetHyperLink(object index)
        {
            int indexInt = int.Parse(index.ToString());
            if (indexInt == 1)
            {
                return "/Products/EAS/EASPrice.aspx?productId=" + indexInt;
            }
            else if (indexInt == 2)
            {
                return "/Products/HS/HSPrice.aspx?productId=" + indexInt;
            }else if (indexInt == 3)
            {
                return "/Products/HandyGas/HandyGasPrice.aspx?productId=" + indexInt;
            }else if (indexInt == 4)
            {
                return "/Products/HandyServe/HandyServePrice.aspx?productId=" + indexInt;
            }
            else if (indexInt == 5)
            {
                return "/Products/HandyLEC/HandyLECPrice.aspx?productId=" + indexInt;
            }
            else {
                return "#";
            }
        }
    }
}