using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Xml.Linq;
using System.Collections.Generic;

namespace Simplicity.Data.Common
{
    class DatabaseUtility
    {
        public static User GetLoggedInCustomer()
        {
            if (HttpContext.Current.Session[WebConstants.Session.USER_ID] != null)
            {
                int userId = (int)HttpContext.Current.Session[WebConstants.Session.USER_ID];
                var context = new SimplicityEntities();
                var query = from c in context.Users where (c.UserID == userId) select c;
                if (query.Any())
                {
                    return query.FirstOrDefault();
                }
            }
            return null;
        }

        public static EmailTemplate GetEmailTemplate(string name)
        {
            var context = new SimplicityEntities();
            var query = from c in context.EmailTemplates where c.Name == name select c;
            if (query.Any())
            {
                return query.FirstOrDefault();
            }
            return null;
        }
    }
}
