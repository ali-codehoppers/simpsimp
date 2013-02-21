using Simplicity.Web.Utilities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Simplicity.Web.Admin
{
    public partial class UserToProductMappingAdmin : AdminAuthenticatedPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (LoggedIsAdmin == null)
            {
                RedirectToLogin();
            }
            UserProductMappingControl.company = LoggedIsAdmin.Company;
            
            if (Request["companyId"] != null)
            {
                int id = Int32.Parse(Request["companyId"]);
                Simplicity.Data.Company company = (from c in DatabaseContext.Companies where c.CompanyID == id select c).FirstOrDefault();
                UserProductMappingControl.company = company;

                CompanyNameLabel.Visible = true;
                CompanyNameLabel.Text = company.Name;

                UserProductMappingControl.Visible = true;
            }
            else
            {
                UserProductMappingControl.Visible = false;
            }
        }
    }
}