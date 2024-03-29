﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace Simplicity.Web
{
    public partial class Logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            FormsAuthentication.SignOut();
            if (User.Identity.IsAuthenticated)
            {
                Simplicity.Data.SimplicityEntities DatabaseContext = new Data.SimplicityEntities();
                Data.Session session = (from s in DatabaseContext.Sessions where s.SessionUID == User.Identity.Name select s).FirstOrDefault();
                if (session != null)
                {
                    DatabaseContext.DeleteObject(session);
                    //DatabaseContext.Detach(session);
                    DatabaseContext.SaveChanges();
                }
            }
            Session.Clear();
            Response.Redirect("Default.aspx");
        }
    }
}