using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Simplicity.Web.Utilities;

namespace Simplicity.Web.Admin
{
    public partial class Products : GenericPage
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
                return "/Admin/Price.aspx?productId=" + indexInt + "&" + WebConstants.Request.COMPANY_ID + "=" + Request[WebConstants.Request.COMPANY_ID];
            }
            else if (indexInt == 2)
            {
                return "/Admin/Price.aspx?productId=" + indexInt + "&" + WebConstants.Request.COMPANY_ID + "=" + Request[WebConstants.Request.COMPANY_ID];
            }
            else if (indexInt == 3)
            {
                return "/Admin/Price.aspx?productId=" + indexInt + "&" + WebConstants.Request.COMPANY_ID + "=" + Request[WebConstants.Request.COMPANY_ID];
            }
            else if (indexInt == 4)
            {
                return "/Admin/Price.aspx?productId=" + indexInt + "&" + WebConstants.Request.COMPANY_ID + "=" + Request[WebConstants.Request.COMPANY_ID];
            }
            else if (indexInt == 5)
            {
                return "/Admin/Price.aspx?productId=" + indexInt+"&"+WebConstants.Request.COMPANY_ID+"="+Request[WebConstants.Request.COMPANY_ID];
            }
            else
            {
                return "#";
            }
        }
    }
}