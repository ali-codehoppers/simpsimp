using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Xml.Linq;

namespace eForms.Web.Classes.RSS
{
    public class Item
    {
        public string Link { get; set; }
        public string Title { get; set; }
        public string Content { get; set; }
        public string AuthorFull { get; set; }
        public DateTime PublishDate { get; set; }
        public FeedType FeedType { get; set; }
        public XElement FeedXML { get; set; }


        public string Author
        {
            get
            {
                if(AuthorFull!=null &&  AuthorFull.Length>0)
                {
                    return AuthorFull.Substring(AuthorFull.IndexOf('(') + 1, AuthorFull.IndexOf(')') - AuthorFull.IndexOf('(')-1);

                }
                return "";
            }

        }
        public Item()
        {
            Link = "";
            Title = "";
            Content = "";
            AuthorFull = "";
            PublishDate = DateTime.Today;
            FeedType = FeedType.RSS;
            FeedXML = null;
        }
    }
}
