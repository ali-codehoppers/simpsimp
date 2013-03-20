using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using eForms.Web.Utilities;

namespace eForms.Web
{
    public partial class WatchDemo : GenericPage
    {
        string videoURL = "";
        protected void Page_Load(object sender, EventArgs e)
        {            
            if (Session[WebConstants.Session.VIEW_DEMO] == null && LoggedIsUser == null)
            {
                Response.Redirect("~/ViewDemo.aspx");
            }
            //SetSuccessMessage("Request submitted sucessfully.");
            //String product_id=Request.QueryString["product_id"];
            //try
            //{
            //    if (product_id != null)
            //    {
            //        int id = Convert.ToInt32(product_id);
            //        rptVideos.DataSource = (from c in DatabaseContext.Videos where c.ProductID == id select c).ToList();
            //        rptVideos.DataBind();
            //    }
            //    else
            //    {
            //        SetSuccessMessage("Please select a product to view its Videos");
            //    }
            //}
            //catch(Exception ex)
            //{
            
            //}
            //if (Request[WebConstants.Request.VIDEO_ID] != null)
            //{
            //    int videoid = int.Parse(Request[WebConstants.Request.VIDEO_ID]);
            //    var WatchVideo = from c in DatabaseContext.Videos where c.VideoID == videoid select c;
            //    if (WatchVideo.Any())
            //    {
            //        videoURL = WatchVideo.FirstOrDefault().URL;
            //        videoPanel.Visible = true;
            //    }
            //}
        }
        protected string VideoURL
        {
            get
            {
                return videoURL;
            }
        }
        protected object GetURL(object videoId)
        {
            return videoId;
        }
    }
}