using Simplicity.Web.Utilities;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Simplicity.Web.Admin
{
    public partial class CompanyProductDetails : AdminAuthenticatedPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int companyID = Int32.Parse(Request["companyId"]);
                int productID = Int32.Parse(Request["productId"]);

                var companyProducts = from cp in DatabaseContext.CompanyProducts where cp.CompanyID == companyID && cp.ProductID == productID select cp;
                companyProductDate.Text = companyProducts.FirstOrDefault().EndDate.ToString("dd/MM/yyyy");
                LicenseNum.Text = companyProducts.FirstOrDefault().NumOfLicenses.ToString();
                CompanyNameLabel.Text = companyProducts.FirstOrDefault().Company.Name;
                ProductNameLabel.Text = companyProducts.FirstOrDefault().Product.Name;
            }
            
        }

        protected void updateCompanyProductDetials_Click(object sender, EventArgs e)
        {
            int activeUsers = 0;
            int totalLicenses = 0;
            int companyID = Int32.Parse(Request["companyId"]);
            int productID = Int32.Parse(Request["productId"]);

            var noOfactiveUsers = from actUsers in DatabaseContext.UserProducts where actUsers.ProductID == productID && actUsers.IsTrial == false && actUsers.EndDate.CompareTo(DateTime.Now) >= 0 && actUsers.User.CompanyID == companyID && actUsers.User.Enabled == true && actUsers.User.Verified == true select new { UserID = actUsers.UserID, Email = actUsers.User.Email};
       //     var noOfactiveUsers = from actUsers in DatabaseContext.Users where actUsers.CompanyID == companyID && actUsers.Enabled == true select actUsers; // select * from [PROD_SIMPLICITY].[dbo].[Users] where CompanyID = 1 and Enabled = 1;
            activeUsers = noOfactiveUsers.Count();
            totalLicenses = int.Parse(LicenseNum.Text);
            if (totalLicenses < activeUsers)
            {
                activeUsersCheckBoxList.DataSource = noOfactiveUsers.ToList();
                activeUsersCheckBoxList.DataBind();
                ClientScript.RegisterStartupScript(this.GetType(), "activeUsersDialog", "$(document).ready(showDimensionDialog);", true);
            }
            else { 
                var companyProducts = from cp in DatabaseContext.CompanyProducts where cp.CompanyID == companyID && cp.ProductID == productID select cp;
                companyProducts.FirstOrDefault().EndDate = DateTime.ParseExact(companyProductDate.Text, "dd/MM/yyyy", CultureInfo.InvariantCulture);
                companyProducts.FirstOrDefault().NumOfLicenses = totalLicenses;
                DatabaseContext.SaveChanges();
            }
        }

        protected void deleteSelectedUser_Click(object sender, EventArgs e)
        {
            String selectedUsers = selectedUsersToDelete.Value;
            String[] arrayOfSelectedUsers = selectedUsers.Split(',');
            int companyID = Int32.Parse(Request["companyId"]);
            int productID = Int32.Parse(Request["productId"]);

            for (int i = 0; i < arrayOfSelectedUsers.Length - 1; i++)
            {
                int userGoingToBeDisabled = int.Parse(arrayOfSelectedUsers[i]);
                var deassignUserFromProduct = from userToDeassign in DatabaseContext.UserProducts where userToDeassign.UserID == userGoingToBeDisabled && userToDeassign.ProductID == productID && userToDeassign.IsTrial == false && DateTime.Now.CompareTo(userToDeassign.EndDate) <=0 && userToDeassign.User.CompanyID == companyID select userToDeassign;
                //var userToDelete = from userToDel in DatabaseContext.Users where userToDel.CompanyID == companyID && userToDel.UserID == userGoingToBeDisabled select userToDel;
                //userToDelete.FirstOrDefault().Enabled = false;
                DatabaseContext.UserProducts.DeleteObject(deassignUserFromProduct.FirstOrDefault());
                DatabaseContext.SaveChanges();
            }
            updateCompanyProductDetials_Click(sender, e);
        }
    }
}