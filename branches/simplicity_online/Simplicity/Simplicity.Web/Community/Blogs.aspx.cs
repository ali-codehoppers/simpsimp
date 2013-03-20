using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Simplicity.Web.Classes.RSS;
using System.Xml.Linq;

namespace Simplicity.Web.Community
{
    public partial class Blogs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            FeedParser parser = new FeedParser();
            var items = parser.Parse("http://simplicity4business.blogspot.com/feeds/posts/default?alt=rss", FeedType.RSS);
            int count = 0;

           // if (items.Count > 5)
                HyperLinkMore.Visible = true;

            foreach (Item item in items)
            {
                if (item.Title.Length > 0 || item.Content.Length > 0)
                {
                    if (item.PublishDate != null)
                    {
                         TextBox1.Text += "<h2 class='date-header'><span>"+item.PublishDate.ToLongDateString()+"</span></h2>" ;
                    }

                    if (item.Title.Length > 0)
                    {
                        TextBox1.Text += "<h3 class='post-title'>";
                        TextBox1.Text += "<a href = " + item.Link + ">" + item.Title + "</a>";
                        TextBox1.Text += "</h3></br>";


                    }
                    if (item.Content.Length > 0)
                    {
                        TextBox1.Text += "<div class='post-body'>";
                        TextBox1.Text += item.Content.Trim();
                        TextBox1.Text += "</div>";
                    }
                    TextBox1.Text += "<div class='post-footer' style=\"text-align:right; min-height:20px \"> Published by "+item.Author + " at " + item.PublishDate.ToShortTimeString() + " </div></br>";

                    //foreach (XElement xelement in item.FeedXML.Elements())
                    //{
                    //    TextBox1.Text += "<br>"+xelement.Name +" : " + xelement.Value;

                    //}
                    count++;
                }
                if (count == 5)
                    break;
            }
        }
    }
}