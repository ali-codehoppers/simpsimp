using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using eForms.Web.Utilities;

namespace eForms.Web
{
    public partial class DemoMovie : GenericPage
    {
        string videoURL = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request[WebConstants.Request.VIDEO_ID] != null)
            {
                int videoid= int.Parse(Request[WebConstants.Request.VIDEO_ID]);
                var WatchVideo = from c in DatabaseContext.Videos where c.VideoID == videoid select c;
                if (WatchVideo.Any())
                {
                    videoURL = WatchVideo.FirstOrDefault().URL;
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
    }
}