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
        string videoURL = "";
        protected void Page_Load(object sender, EventArgs e)
        {            
            if (Session[WebConstants.Session.VIEW_DEMO] == null && LoggedIsUser == null)
            {
                Response.Redirect("~/ViewDemo.aspx");
            }
            String product_id=Request.QueryString["product_id"];
            //if (product_id == null || product_id .Equals("")) {
                product_id = "2";
            //}
            try
            {
                if (product_id != null)
                {
                    int id = Convert.ToInt32(product_id);
                    rptVideos.DataSource = (from c in DatabaseContext.Videos where c.ProductID == id select c).ToList();
                    rptVideos.DataBind();
                }
                else
                {
                    //SetSuccessMessage("Please select a product to view its Videos");
                }
            }
            catch(Exception ex)
            {
            
            }
            int videoid=2;
            if ((Request[WebConstants.Request.VIDEO_ID] == null || Request[WebConstants.Request.VIDEO_ID].Equals("")) && product_id.Equals("2"))
            {
                var WatchVideo = from c in DatabaseContext.Videos where c.VideoID == videoid select c;
                if (WatchVideo.Any())
                {
                    videoURL = WatchVideo.FirstOrDefault().URL;
                    videoPanel.Visible = true;
                }
            }
            if (Request[WebConstants.Request.VIDEO_ID] != null)
            {
                videoid = int.Parse(Request[WebConstants.Request.VIDEO_ID]);
                var WatchVideo = from c in DatabaseContext.Videos where c.VideoID == videoid select c;
                if (WatchVideo.Any())
                {
                    videoURL = WatchVideo.FirstOrDefault().URL;
                    videoPanel.Visible = true;
                }
            }
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