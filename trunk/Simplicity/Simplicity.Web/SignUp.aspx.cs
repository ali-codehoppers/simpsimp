using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Simplicity.Web.Utilities;
using Simplicity.Data;

namespace Simplicity.Web
{
    public partial class SignUp : GenericPage
    {
        private int CompanyID;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (LoggedIsUser != null && !IsPostBack)
            {
                UserAccountPanel.Visible = false;
                checkbox.Visible = false;
                var query = (from c in DatabaseContext.Users where c.UserID == LoggedIsUser.UserID select c).FirstOrDefault();
                firstname.Text = query.Forename;
                surname.Text = query.Surname;
                jobtitle.Text = query.JobTitle;
                companyname.Text = query.Company.Company_Name;
                var address= (from c in query.Addresses where c.MultiAddressType=="PERSONAL" select c).FirstOrDefault();
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
                mobile.Text = mobile.Text;
            }
        }
        private bool ValidateFields()
        {
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
            
            var query = from c in DatabaseContext.Users where c.Email==emailfield.Text select c;
            if (query.Any())
            {
                SetErrorMessage("Email address already resgistered with Simplicity");
                return false;
            }
            /*UserTableAdapters.un_co_user_detailsTableAdapter userTA = new UserTableAdapters.un_co_user_detailsTableAdapter();
            if (userTA.GetUserByLogonName(txtEmail.Text, null).GetEnumerator().MoveNext())
            {
                SetErrorMessage("Email address already resgistered with Health&Safety");
                return false;
            }*/
            return true;
        }
        protected void btnSave_Click(object sender, ImageClickEventArgs e)
        {
            if (LoggedIsUser == null)
            {
                if (ValidateFields() && GetCompanyID())
                {
                    //try
                    {

                        var user = new User
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
                            Type = Enum.GetName(typeof(Enums.ENTITY_TYPE), Enums.ENTITY_TYPE.USER),
                            Deleted = false,
                            OnHold = false,
                            Verified = false,
                            Enabled = false,
                            UserUID = Guid.NewGuid().ToString(),
                            VerificationCode = Guid.NewGuid().ToString(),
                            Approved = 0,
                            PaymentType = 0,
                            LoginAttempts = 0,
                            Company_ID = CompanyID
                        };
                        var address = new Address
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
                            MultiAddressType = Enum.GetName(typeof(Enums.ADDRESS_TYPE), Enums.ADDRESS_TYPE.PERSONAL),
                            CreationDate = DateTime.Now,
                            LastAmendmentDate = DateTime.Now,
                            AddressName = null,
                            CreatedBy = null,
                            LastAmendedBy = null
                        };
                        var address1 = new Address
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
                            MultiAddressType = Enum.GetName(typeof(Enums.ADDRESS_TYPE), Enums.ADDRESS_TYPE.COMPANY),
                            CreationDate = DateTime.Now,
                            LastAmendmentDate = DateTime.Now,
                            AddressName = null,
                            CreatedBy = null,
                            LastAmendedBy = null
                        };
                        user.Addresses.Add(address);
                        user.Addresses.Add(address1);

                        //insert record in HS
                        /******/
                        /*
                HSCompanyTableAdapters.HSCompanyTableAdapter companyTA = new HSCompanyTableAdapters.HSCompanyTableAdapter();
                IEnumerator ieCo = companyTA.InsertAndReturn(false, txtCompanyName.Text, txtCompanyName.Text, txtJobTitle.Text, "", txtFirstName.Text, txtSurname.Text, txtAddressNo.Text, txtAddressLine1.Text,
                    txtAddressLine2.Text, txtAddressLine3.Text, txtAddressLine4.Text, txtAddressLine5.Text, txtPostCode.Text, GetFullAddress(), txtTele1.Text, txtTele2.Text, txtFax.Text, txtEmail.Text, "Added from Shopping Cart",
                    null, null, null, null, DateTime.Now, null, DateTime.Now, true, "Fire Warden", "First Aider", false, "Supervisor", false, 1, null, null, null, null, true).GetEnumerator();
                if (ieCo.MoveNext())
                {
                    HSCompany.HSCompanyEntityRow company = (HSCompany.HSCompanyEntityRow)ieCo.Current;

                    DepartmentTableAdapters.DepartmentSelectCommandTableAdapter deptTA = new DepartmentTableAdapters.DepartmentSelectCommandTableAdapter();
                    deptTA.Insert(company.co_id, false, txtCompanyName.Text, txtCompanyName.Text, txtJobTitle.Text, "", txtFirstName.Text, txtSurname.Text, txtAddressNo.Text, txtAddressLine1.Text,
                    txtAddressLine2.Text, txtAddressLine3.Text, txtAddressLine4.Text, txtAddressLine5.Text, txtPostCode.Text, GetFullAddress(), txtTele1.Text, txtTele2.Text, txtFax.Text, txtEmail.Text,
                    "Added from Shopping Cart", null, DateTime.Now, null, DateTime.Now);

                    UserTableAdapters.un_co_user_detailsTableAdapter userTA = new UserTableAdapters.un_co_user_detailsTableAdapter();
                    userTA.Insert(false, company.co_id, 1, txtFirstName.Text, txtEmail.Text, Utility.GetMd5Sum(txtPassword.Text), listForgotPasswordQuestion.SelectedItem.Text,
                        txtTele1.Text, "", txtTele2.Text, txtEmail.Text, txtCompanyName.Text, txtCountry.Text, null, DateTime.Now, null, DateTime.Now, "User");
                }
                */
                        DatabaseContext.Users.AddObject(user);
                        DatabaseContext.SaveChanges();
                        user.Company.Address_ID = address1.AddressID;
                        DatabaseContext.SaveChanges();
                        /******/
                        EmailUtility.SendAccountCreationEmail(user, passwordfield.Text);
                        Response.Redirect("~/ConfirmMail.aspx");
                        //}

                    }
                    /*catch
                    {
                        SetErrorMessage("Unable to process your transaction, please contact the administrator");
                    }*/
                }
            }
            else
            {
                    var query = (from c in DatabaseContext.Users where c.UserID == LoggedIsUser.UserID select c).FirstOrDefault();

                    query.FullName = GetFullName();
                    query.Surname = surname.Text;
                    query.Forename = firstname.Text;
                    query.JobTitle = jobtitle.Text;
                    if (GetEditCompanyID(query))
                    {
                        query.Company_ID = CompanyID;
                    }
                    query.LastAmendmentDate = DateTime.Now;
                    var address = (from c in query.Addresses where c.MultiAddressType == "PERSONAL" select c).FirstOrDefault();

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
                    DatabaseContext.SaveChanges();

            }
        }
        private bool GetCompanyID()
        {
            var query = (from c in DatabaseContext.Company1 where c.Company_Name == companyname.Text select c).FirstOrDefault();
            if (query != null)
            {
                SetErrorMessage("Company already exist. Please Contact " + query.Users.FirstOrDefault().Email);
                return false;
            }
            else
            {

                var Company = new Company1 { Company_Name = companyname.Text };
                DatabaseContext.AddToCompany1(Company);
                DatabaseContext.SaveChanges();
                CompanyID = Company.Company_ID;
                return true;
            }
        }
        private bool GetEditCompanyID(User user)
        {
            var query = (from c in DatabaseContext.Company1 where c.Company_Name == companyname.Text && c.Company_ID==user.Company_ID select c).FirstOrDefault();
            if (query != null)
            {
                return false;
            }
            else
            {

                var Company = new Company1 { Company_Name = companyname.Text };
                DatabaseContext.AddToCompany1(Company);
                DatabaseContext.SaveChanges();
                CompanyID = Company.Company_ID;
                return true;
            }
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
    }
}