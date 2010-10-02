using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Simplicity.Web.Utilities;

namespace Simplicity.Web
{
    public partial class WatchDemo : GenericPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session[WebConstants.Session.VIEW_DEMO] == null && LoggedIsUser == null)
            {
                Response.Redirect("~/ViewDemo.aspx");
            }
            String product_id=Request.QueryString["product_id"];
            try
            {
                if (product_id!=null)
                {
                    int id = Convert.ToInt32(product_id);
                    rptVideos.DataSource = (from c in DatabaseContext.Videos where c.ProductID == id select c).ToList();
                    rptVideos.DataBind();
                }
            }
            catch(Exception ex)
            {
            
            }
        }
        protected string GetURL(object videoId)
        {
            return "javascript:open_train(\"" + videoId + "\");";
        }
    }
}