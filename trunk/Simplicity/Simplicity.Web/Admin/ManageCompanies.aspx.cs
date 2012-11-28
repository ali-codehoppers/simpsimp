using Simplicity.Web.Utilities;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Simplicity.Web.Admin
{
    public partial class ManageCompanies : GenericPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private bool companyNameAlreadyExists()
        {
            Simplicity.Data.Company company = null;
            //if (LoggedIsAdmin != null && LoggedIsAdmin.Company != null)
            //    company = (from c in DatabaseContext.Companies where c.Name == companyname.Text && c.CompanyID != LoggedIsAdmin.CompanyID select c).FirstOrDefault();
            //else
            company = (from c in DatabaseContext.Companies where c.Name == companyname.Text select c).FirstOrDefault();
            if (company != null)
            {
                SetErrorMessage("Company already exist");
                return true;
            }
            else return false;
        }

        private string GetFullAddress()
        {
            string fullAddress = "";
            if (addressno.Text.Trim().Length > 0) fullAddress += addressno.Text + " ";
            if (addressline1.Text.Trim().Length > 0) fullAddress += addressline1.Text + " ";
            if (addressline2.Text.Trim().Length > 0) fullAddress += addressline2.Text + " ";
            if (addressline3.Text.Trim().Length > 0) fullAddress += addressline3.Text + " ";
            if (addressline4.Text.Trim().Length > 0) fullAddress += addressline4.Text + " ";
            if (addressline5.Text.Trim().Length > 0) fullAddress += addressline5.Text + " ";
            fullAddress += postalcode.Text;
            return fullAddress;
        }

        private bool ValidateFields()
        {
            //if (emailfield.Text.Length < 8)
            //{
            //    SetErrorMessage("Email must have atleast 8 characters");
            //    return false;
            //}
            //if (emailfield.Text.ToLower().Equals(confirmemailfield.Text.ToLower()) == false)
            //{
            //    SetErrorMessage("Email Addresses do not match");
            //    return false;
            //}
            //if (passwordfield.Text.Equals(confirmpasswordfield.Text) == false)
            //{
            //    SetErrorMessage("Passwords do not match");
            //    return false;
            //}

            //List<User> user = (from UserTable in DatabaseContext.Users where UserTable.Email == emailfield.Text select UserTable).ToList();
            //if (user.Any())
            //{
            //    SetErrorMessage("Email address already resgistered with Simplicity");
            //    return false;
            //}
            return true;
        }


        protected void UserRepeater_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            Debug.WriteLine(e.CommandName);
            int id = Int32.Parse(e.CommandArgument.ToString());
            Debug.WriteLine(id);
        }

        protected void btnSave_Click(object sender, ImageClickEventArgs e)
        {
        }
    }
}