using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Simplicity.Web.Utilities;
using Simplicity.Data;
using System.Data.SqlClient;

namespace Simplicity.Web.Admin
{
    public partial class AdminDefault : GenericPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {
                if (Request["companyId"] != null) {
                    companyname.Enabled = false;
                    int id = Int32.Parse(Request["companyId"]);
                    Simplicity.Data.Company company = (from c in DatabaseContext.Companies where c.CompanyID == id select c).FirstOrDefault();
                    companyname.Text = company.Name;
                }
            }
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
                if (company.Users != null && company.Users.Count > 0)
                    SetErrorMessage("Company already exist. Please Contact " + company.Users.FirstOrDefault().Email);
                else
                    SetErrorMessage("Company already exist");
                return true;
            }
            else return false;
        }

        private string GetFullName()
        {
            return surname.Text + ", " + firstname.Text;
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
            if (emailfield.Text.Length < 8)
            {
                SetErrorMessage("Email must have atleast 8 characters");
                return false;
            }
            if (emailfield.Text.ToLower().Equals(confirmemailfield.Text.ToLower()) == false)
            {
                SetErrorMessage("Email Addresses do not match");
                return false;
            }
            if (passwordfield.Text.Equals(confirmpasswordfield.Text) == false)
            {
                SetErrorMessage("Passwords do not match");
                return false;
            }

            List<User> user = (from UserTable in DatabaseContext.Users where UserTable.Email == emailfield.Text select UserTable).ToList();
            if (user.Any())
            {
                SetErrorMessage("Email address already resgistered with Simplicity");
                return false;
            }
            return true;
        }
        private Address fillAddress(User user, Enums.ADDRESS_TYPE addrType)
        {
            Address addr = new Address
            {
                Deleted = false,
                AddressFull = GetFullAddress(),
                AddressNo = addressno.Text,
                AddressLine1 = addressline1.Text,
                AddressLine2 = addressline2.Text,
                AddressLine3 = addressline3.Text,
                AddressLine4 = addressline4.Text,
                AddressLine5 = addressline5.Text,
                PostalCode = postalcode.Text,
                Telephone1 = telephone1.Text,
                Telephone2 = telephone2.Text,
                Fax = fax.Text,
                Mobile = mobile.Text,
                Town = town.Text,
                County = County.Text,
                Country = country.Text,
                UserId = user.UserID,
                SameAsCustomer = false,
                SameAsBilling = false,
                MultiAddressType = Enum.GetName(typeof(Enums.ADDRESS_TYPE), addrType),
                CreationDate = DateTime.Now,
                LastAmendmentDate = DateTime.Now,
                AddressName = null,
                CreatedBy = user.UserID,
                LastAmendedBy = null
            };
            return addr;
        }
        
        protected void btnSave_Click(object sender, ImageClickEventArgs e)
        {
            //if (LoggedIsAdmin == null)//means its sign-up process
           // {

                if (ValidateFields())
                {
                    String CompanyType = Enum.GetName(typeof(Enums.ENTITY_TYPE), Enums.ENTITY_TYPE.USER);
                    if (!companyNameAlreadyExists())
                    {
                        CompanyType = Enum.GetName(typeof(Enums.ENTITY_TYPE), Enums.ENTITY_TYPE.COMPANY_ADMIN);
                        User user = new User
                        {
                            ReceiveEmails = checkbox.Checked,
                            FullName = GetFullName(),
                            Surname = surname.Text,
                            Forename = firstname.Text,
                            JobTitle = jobtitle.Text,
                            Email = emailfield.Text,
                            Password = Utility.GetMd5Sum(passwordfield.Text),
                            ReminderQuestionID = byte.Parse(listForgotPasswordQuestion.SelectedValue),
                            ReminderQuestion = listForgotPasswordQuestion.SelectedItem.Text,
                            ReminderAnswer = Utility.GetMd5Sum(txtForgotPasswordAnswer.Text),
                            CreationDate = DateTime.Now,
                            LastAmendmentDate = DateTime.Now,
                            Type = CompanyType,
                            Deleted = false,
                            OnHold = false,
                            Verified = false,
                            Enabled = true,
                            UserUID = Guid.NewGuid().ToString(),
                            VerificationCode = Guid.NewGuid().ToString(),
                            Approved = 0,
                            PaymentType = 0,
                            LoginAttempts = 0
                        };

                        Address address = fillAddress(user, Enums.ADDRESS_TYPE.PERSONAL);
                        Address companyAddress = fillAddress(user, Enums.ADDRESS_TYPE.COMPANY);
                        user.Addresses.Add(address);
                        user.Addresses.Add(companyAddress);
                        //Simplicity.Data.Company company = (from c in DatabaseContext.Companies where c.Name == companyname.Text select c).FirstOrDefault();
                        Simplicity.Data.Company company = new Simplicity.Data.Company();
                        company.Name = companyname.Text;
                        company.Address = companyAddress;
                        DatabaseContext.AddToCompanies(company);
                        DatabaseContext.SaveChanges();

                        user.CompanyID = company.CompanyID;
                        //DatabaseContext.Users.AddObject(user);
                        DatabaseContext.SaveChanges();

                        //call health and safety stored procedure over here to insert company there as well
                        DatabaseUtility.addCompanyToHS(user);
                        EmailUtility.SendAccountCreationEmail(user, passwordfield.Text);
                        SetSuccessMessage("User added successfully.");
                        Response.Redirect("~/Admin/ManageUser.aspx");
                    }
                    else {
                        User user = new User
                        {
                            ReceiveEmails = checkbox.Checked,
                            FullName = GetFullName(),
                            Surname = surname.Text,
                            Forename = firstname.Text,
                            JobTitle = jobtitle.Text,
                            Email = emailfield.Text,
                            Password = Utility.GetMd5Sum(passwordfield.Text),
                            ReminderQuestionID = byte.Parse(listForgotPasswordQuestion.SelectedValue),
                            ReminderQuestion = listForgotPasswordQuestion.SelectedItem.Text,
                            ReminderAnswer = Utility.GetMd5Sum(txtForgotPasswordAnswer.Text),
                            CreationDate = DateTime.Now,
                            LastAmendmentDate = DateTime.Now,
                            Type = CompanyType,
                            Deleted = false,
                            OnHold = false,
                            Verified = false,
                            Enabled = true,
                            UserUID = Guid.NewGuid().ToString(),
                            VerificationCode = Guid.NewGuid().ToString(),
                            Approved = 0,
                            PaymentType = 0,
                            LoginAttempts = 0
                        };

                        Address address = fillAddress(user, Enums.ADDRESS_TYPE.PERSONAL);
                        user.Addresses.Add(address);
                        Simplicity.Data.Company company = (from c in DatabaseContext.Companies where c.Name == companyname.Text select c).FirstOrDefault();
                        user.CompanyID = company.CompanyID;
                        user.Company = company;
                        DatabaseContext.Users.AddObject(user);
                        DatabaseContext.SaveChanges();

                        //call health and safety stored procedure over here to insert company there as well
                        DatabaseUtility.addCompanyToHS(user);
                        EmailUtility.SendAccountCreationEmail(user, passwordfield.Text);
                        SetSuccessMessage("User added successfully.");
                        Response.Redirect("~/Admin/ManageUser.aspx?companyId="+company.CompanyID);
                    }
                }
          //  }
            /*else
            {
                if (companyNameAlreadyExists())
                {
                    return;
                }
                bool newCompanyAdded = false;
                User user = (from c in DatabaseContext.Users where c.UserID == LoggedIsAdmin.UserID select c).FirstOrDefault();

                user.FullName = GetFullName();
                user.Surname = surname.Text;
                user.Forename = firstname.Text;
                user.JobTitle = jobtitle.Text;
                if (user.Company == null)//it means i am an old user and i dont have any company attached yet
                {
                    Simplicity.Data.Company company = new Simplicity.Data.Company();
                    company.Name = companyname.Text;
                    Address companyAddr = fillAddress(user, Enums.ADDRESS_TYPE.COMPANY);
                    company.Address = companyAddr;
                    user.Company = company;
                    newCompanyAdded = true;
                }
                user.Company.Name = companyname.Text;
                user.LastAmendmentDate = DateTime.Now;

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
                        address.LastAmendedBy = null;
                    }
                }
                DatabaseContext.SaveChanges();
                SetSuccessMessage("Save information successfully.");
                if (newCompanyAdded) addCompanyToHS(user);
            }*/
        }

        protected void UserRepeater_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "Subscribe")
            {
                int id = Int32.Parse(e.CommandArgument.ToString());
                Session["subscribeID"] = id;
                Response.Redirect("~/Admin/Products.aspx");
            }
            else if(e.CommandName=="Delete"){

            }
        }
        protected void btnEditListItem_Click(object sender, EventArgs e) 
        {
            Session["selectedUserValue"] = SelectedUserValue.Value;
            if (EditCheckList.SelectedValue == "1") 
            {
                Response.Redirect("~/Admin/EditUser.aspx");
            }
            else if (EditCheckList.SelectedValue == "2") {
                Response.Redirect("~/Admin/ChangePassword.aspx");
            }
            else if (EditCheckList.SelectedValue == "3")
            {
                Response.Redirect("~/Admin/UserProducts.aspx");
            }
            else if (EditCheckList.SelectedValue == "4")
            {
                Response.Redirect("~/Admin/Products.aspx");
            }   
        }
    }
}