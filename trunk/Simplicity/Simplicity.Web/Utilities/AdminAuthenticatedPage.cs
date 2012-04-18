using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Simplicity.Web.Utilities
{
    public class AdminAuthenticatedPage : GenericPage
    {
        public AdminAuthenticatedPage()
        {
            //
            // TODO: Add constructor logic here
            //
        }
        protected override void OnLoad(EventArgs e)
        {
            base.OnLoad(e);
            if (LoggedIsAdmin == null)
            {
                RedirectToLogin();
            }            
        }
    }
}