using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Simplicity.Web.Utilities;
using Simplicity.Data;

namespace Simplicity.Web.Admin
{
    public partial class EditUser : AdminAuthenticatedPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["selectedUserValue"] != null)
                {
                    selectedUserValue.Value=Session["selectedUserValue"].ToString();
                    int userId = Int32.Parse(Session["selectedUserValue"].ToString());
                    var user = (from u in DatabaseContext.Users where u.UserID == userId select u).FirstOrDefault();
                    emailfield.Text = user.Email;
                    firstname.Text = user.Forename;
                    surname.Text = user.Surname;
                    companyname.Text = user.Company.Name;
                    jobtitle.Text = user.JobTitle;
                    foreach (Address address in user.Addresses)
                    {
                        if (address.MultiAddressType == "PERSONAL")
                        {
                            addressno.Text = address.AddressNo;
                            addressline1.Text = address.AddressLine1;
                            addressline2.Text = address.AddressLine2;
                            addressline3.Text = address.AddressLine3;
                            addressline4.Text = address.AddressLine4;
                            addressline5.Text = address.AddressLine5;
                            postalcode.Text = address.PostalCode;
                            town.Text = address.Town;
                            County.Text = address.County;
                            country.Text = address.Country;
                            telephone1.Text = address.Telephone1;
                            telephone2.Text = address.Telephone2;
                            fax.Text = address.Fax;
                            mobile.Text = address.Mobile;
                        }
                    }
                    checkbox.Checked = user.ReceiveEmails;
                    if (user.Company.Name.CompareTo(WebConstants.Config.ADMIN_COMPANY_NAME) == 0)
                        userTypeList.Items.FindByValue("Admin").Enabled = true;
                    userTypeList.SelectedIndex = user.Type.ToLower() == ("Admin").ToLower() ? 0 : (user.Type.ToLower() == ("Company_Admin").ToLower() ? 1 : 2);
                }
            }
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
        protected void btnSave_Click(object sender, EventArgs e) {
            if (selectedUserValue.Value!="")
            {
                int userId = Int32.Parse(selectedUserValue.Value);
                var user = (from u in DatabaseContext.Users where u.UserID == userId select u).FirstOrDefault();
                bool isAdminComp = String.Compare(user.Company.Name, WebConstants.Config.ADMIN_COMPANY_NAME)==0? true : false;

                if (isAdminComp == true)
                {
                    IEnumerable<Simplicity.Data.User> usersCheckAdmin = (from usrs in DatabaseContext.Users where usrs.CompanyID == user.CompanyID && String.Compare(WebConstants.UserType.USER_TYPE_ADMIN, usrs.Type, true) == 0 select usrs);
                    int countAdmin = usersCheckAdmin.Count();
                    if (countAdmin <= 1)
                    {
                        if (userTypeList.SelectedValue.ToUpper().CompareTo(WebConstants.UserType.USER_TYPE_ADMIN.ToUpper()) != 0 && String.Compare(user.Type, WebConstants.UserType.USER_TYPE_ADMIN, true)==0)
                        {
                            SetErrorMessage("One Admin Must exist.");
                            return;
                        }
                    }//One Admin user must exist in Ultra nova.
                }
                else {
                    IEnumerable<Simplicity.Data.User> usersCheckCompanyAdmin = (from usrs in DatabaseContext.Users where usrs.CompanyID == user.CompanyID && String.Compare(WebConstants.UserType.USER_TYPE_COMPANY_ADMIN, usrs.Type, true) == 0 select usrs);
                    int countCompanyAdmin = usersCheckCompanyAdmin.Count();
                    if (countCompanyAdmin <= 1)
                    {
                        if (userTypeList.SelectedValue.ToUpper().CompareTo(WebConstants.UserType.USER_TYPE_COMPANY_ADMIN.ToUpper()) != 0 && String.Compare(user.Type, WebConstants.UserType.USER_TYPE_COMPANY_ADMIN, true)==0)
                        {
                            SetErrorMessage("One Company Admin Must exist.");
                            return;
                        }
                    }
                }
                

                user.Type = userTypeList.SelectedValue.ToUpper();

                user.Forename = firstname.Text;
                user.Surname = surname.Text;
                jobtitle.Text = user.JobTitle;

                foreach (Address address in user.Addresses)
                {
                    if (address.MultiAddressType == "PERSONAL")
                    {
                        address.AddressFull = GetFullAddress();
                        address.AddressNo = addressno.Text;
                        address.AddressLine1 = addressline1.Text;
                        address.AddressLine2 = addressline2.Text;
                        address.AddressLine3 = addressline3.Text;
                        address.AddressLine4 = addressline4.Text;
                        address.AddressLine5 = addressline5.Text;
                        address.PostalCode = postalcode.Text;
                        address.Telephone1 = telephone1.Text;
                        address.Telephone2 = telephone2.Text;
                        address.Fax = fax.Text;
                        address.Mobile = mobile.Text;
                        address.Town = town.Text;
                        address.County = County.Text;
                        address.Country = country.Text;
                        address.LastAmendmentDate = DateTime.Now;
                        address.AddressName = null;
                        address.LastAmendedBy = LoggedIsAdmin.UserID;
                    }
                }
                DatabaseContext.SaveChanges();
                SetSuccessMessage("Save information successfully.");
            }
        }
    }
}