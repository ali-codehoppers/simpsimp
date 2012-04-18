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
        private void addCompanyToHS(User user)
        {
            SqlConnection conn = new SqlConnection(AppSettings["HSDB"]);
            try
            {
                conn.Open();
                SqlCommand command = new SqlCommand(AppSettings["CopyDataToHSProcedure"], conn);
                command.CommandType = System.Data.CommandType.StoredProcedure;
                command.Parameters.AddWithValue("@co_name_short", user.Company.Name.Length > 16 ? user.Company.Name.Substring(0, 16) : user.Company.Name);
                command.Parameters.AddWithValue("@co_name_long", user.Company.Name.Length > 60 ? user.Company.Name.Substring(0, 60) : user.Company.Name);
                command.Parameters.AddWithValue("@contact_forename", user.Forename);
                command.Parameters.AddWithValue("@contact_surname", user.Surname);
                command.Parameters.AddWithValue("@address_no", user.Company.Address.AddressNo);
                command.Parameters.AddWithValue("@address_line1", user.Company.Address.AddressLine1);
                command.Parameters.AddWithValue("@address_line2", user.Company.Address.AddressLine2);
                command.Parameters.AddWithValue("@address_line3", user.Company.Address.AddressLine3);
                command.Parameters.AddWithValue("@address_line4", user.Company.Address.AddressLine4);
                command.Parameters.AddWithValue("@address_line5", user.Company.Address.AddressLine5);
                command.Parameters.AddWithValue("@address_post_code", user.Company.Address.PostalCode);
                command.Parameters.AddWithValue("@address_full", user.Company.Address.AddressFull);
                command.Parameters.AddWithValue("@tel_1", user.Company.Address.Telephone1);
                command.Parameters.AddWithValue("@tel_2", user.Company.Address.Telephone2);
                command.Parameters.AddWithValue("@tel_fax", user.Company.Address.Fax);
                command.Parameters.AddWithValue("@created_by", user.UserID);
                command.Parameters.AddWithValue("@date_created", DateTime.Now);
                command.Parameters.AddWithValue("@simplicity_company_id", user.Company.CompanyID);
                command.Parameters.AddWithValue("@simplicity_user_id", user.UserID);
                command.Parameters.AddWithValue("@user_email", user.Email);
                command.Parameters.AddWithValue("@user_password", user.Password);
                command.ExecuteReader();
            }
            finally
            {
                if (conn != null) conn.Close();
            }
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
                    }
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
                        Enabled = false,
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
                    Simplicity.Data.Company company = (from c in DatabaseContext.Companies where c.Name == companyname.Text select c).FirstOrDefault();
                    if (!companyNameAlreadyExists())
                    {
                         company = new Simplicity.Data.Company();
                        company.Name = companyname.Text;
                        company.Address = companyAddress;
                        DatabaseContext.AddToCompanies(company);
                        DatabaseContext.SaveChanges();
                    }
                    user.CompanyID = company.CompanyID;
                    DatabaseContext.AddToUsers(user);
                    DatabaseContext.SaveChanges();

                    //call health and safety stored procedure over here to insert company there as well
                    addCompanyToHS(user);
                    EmailUtility.SendAccountCreationEmail(user, passwordfield.Text);
                    Response.Redirect("~/Admin/ManageUser.aspx");
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
            if (e.CommandName == "Subscribe") {
                int id = Int32.Parse(e.CommandArgument.ToString());
                Session["subscribeID"] = id;
                Response.Redirect("~/Admin/Products.aspx");
            }
        }
    }
}