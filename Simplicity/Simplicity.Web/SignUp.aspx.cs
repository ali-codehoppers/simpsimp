using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Simplicity.Web.Utilities;
using Simplicity.Data;
using System.Data.SqlClient;
using System.Data;

namespace Simplicity.Web
{
    public partial class SignUp : GenericPage
    {
        public int SelectedTabElement = 1;

        List<Product> UserCompanyProduct;
        List<Product> UserProduct;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (LoggedIsUser != null && !IsPostBack)
            {

                UserAccountPanel.Visible = false;
                checkbox.Visible = false;
                firstname.Text = LoggedIsUser.Forename;
                surname.Text = LoggedIsUser.Surname;
                jobtitle.Text = LoggedIsUser.JobTitle;
                companyname.Text = LoggedIsUser.Company == null ? "" : LoggedIsUser.Company.Name;
                Address address = (from addr in LoggedIsUser.Addresses where addr.MultiAddressType == "PERSONAL" select addr).FirstOrDefault();
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
                //////////////////////////Company Panel////////////////////////////////////////
                Simplicity.Data.Company company = null;
                User Admin = null;
                
                if (LoggedIsUser.Company != null)
                    company = (from c in DatabaseContext.Companies where c.CompanyID == LoggedIsUser.CompanyID select c).First();
                if (company != null)
                {
                    if (company.Users != null && company.Users.Count > 0)
                    {
                        if (LoggedIsUser.Type == "ADMIN" || LoggedIsUser.Type == "COMPANY_ADMIN")
                        {
                            Admin = company.Users.FirstOrDefault();
                            UserProductMappingControl.company = LoggedIsUser.Company;
                        }
                        CompanyUserRepeater.DataSource = company.Users.Where(user => user.Enabled == true);
                        CompanyUserRepeater.DataBind();
                        userCompanyField.Text = company.Name;
                    }
                }
                if (Admin != null)
                {
                    CompanyPanel.Visible = true;
                    MyCompanyPanelHeader.Visible = true;
                    MyLicencePanel.Visible = true;

                }
                else
                {
                    CompanyPanel.Visible = false;
                    MyCompanyPanelHeader.Visible = false;
                    MyLicencePanel.Visible = false;
                }
                ///////////////////////////////////////////////////////////////////////////////

                if (LoggedIsUser.Company != null)
                {
                    int id = LoggedIsUser.Company.CompanyID;
                    UserCompanyProduct = BindCompanyProduct(id);
                    CompanyProductRepeater.DataSource = UserCompanyProduct;
                    CompanyProductRepeater.DataBind();
                }
                if (LoggedIsUser.UserProducts != null)
                {
                    UserProduct = BindUserProduct();
                    UserProductRepeater.DataSource = UserProduct;
                    UserProductRepeater.DataBind();
                    /*z*/
                    /*const string NAME = "NAME";
                    DataTable dt = new DataTable();
                    DataColumn dcol = new DataColumn(NAME, typeof(System.String));
                    dt.Columns.Add(dcol);



                    //Now add data for dynamic columns

                    //As the first column is auto-increment, we do not have to add any thing.

                    //Let's add some data to the second column.

                    for (int nIndex = 0; nIndex < 10; nIndex++)
                    {

                        //Create a new row

                        DataRow drow = dt.NewRow();



                        //Initialize the row data.

                        drow[NAME] = "Row-" + Convert.ToString((nIndex + 1));



                        //Add the row to the datatable.

                        dt.Rows.Add(drow);

                    }
                    *//*z*/
                }
                LoginAccount.Visible = true;
                MyProductPanel.Visible = true;
                ChangePasswordPanel.Visible = true;
                if (UserProduct.Count == 0)
                {
                    UserProductRepeaterPanel.Visible = false;
                }
                if (UserCompanyProduct.Count == 0)
                {
                    CompanyProductRepeaterPanel.Visible = false;
                }
                if (UserProduct.Count == 0 && UserCompanyProduct.Count == 0)
                {
                    SecondMyProductPanel.Visible = false;
                }

            }
            else if (LoggedIsUser != null)
            {
                //////////////////////////Company Panel////////////////////////////////////////
                Simplicity.Data.Company company = null;
                User Admin = null;
                if (LoggedIsUser.Company != null)
                    company = (from c in DatabaseContext.Companies where c.CompanyID == LoggedIsUser.CompanyID select c).First();
                if (company != null)
                {
                    if (company.Users != null && company.Users.Count > 0)
                    {
                        if (LoggedIsUser.Type == "ADMIN" || LoggedIsUser.Type == "COMPANY_ADMIN")
                        {
                            Admin = company.Users.FirstOrDefault();
                            UserProductMappingControl.company = LoggedIsUser.Company;
                        }
                        CompanyUserRepeater.DataSource = company.Users.Where(user => user.Enabled == true);
                        CompanyUserRepeater.DataBind();
                    }
                }
                if (Admin != null)
                {
                    CompanyPanel.Visible = true;
                    MyCompanyPanelHeader.Visible = true;
                    MyLicencePanel.Visible = true;
                }
                else
                {
                    CompanyPanel.Visible = false;
                    MyCompanyPanelHeader.Visible = false;
                    MyLicencePanel.Visible = false;
                }
                ///////////////////////////////////////////////////////////////////////////////

                ChangePasswordPanel.Visible = true;
                LoginAccount.Visible = true;
                MyProductPanel.Visible = true;
                if (IsUserProduct == 0)
                {
                    UserProductRepeaterPanel.Visible = false;
                }
                if (IsUserCompanyProduct == 0)
                {
                    CompanyProductRepeaterPanel.Visible = false;
                }
                if (IsUserProduct == 0 && IsUserCompanyProduct == 0)
                {
                    SecondMyProductPanel.Visible = false;
                }

            }
            else
            {
                ChangePasswordPanel.Visible = false;
                LoginAccount.Visible = false;
                MyProductPanel.Visible = false;
                CompanyPanel.Visible = false;
            }
        }
        private bool ChangeValidateFields()
        {
            if (oldpassword.Text.Equals(confirmoldPassowrd.Text) == false)
            {
                SetErrorMessage("Old Password do not match");
                return false;
            }
            if (newpasswordfield.Text.Equals(newconfirmpasswordfield.Text) == false)
            {
                SetErrorMessage("New Passwords do not match");
                return false;
            }
            String password = Utility.GetMd5Sum(oldpassword.Text);

            List<User> user = (from UserTable in DatabaseContext.Users where (UserTable.Email == LoggedIsUser.Email) && (UserTable.Password == password) select UserTable).ToList();
            if (user.Any())
            {
                return true;
            }
            else
            {
                SetErrorMessage("Old Password is not correct");
                return false;
            }

        }
        protected void ChangebtnSave_Click(object sender, ImageClickEventArgs e)
        {
            SelectedTabElement = 3;
            if (ChangeValidateFields())
            {
                User user = (from UserTable in DatabaseContext.Users where UserTable.Email == LoggedIsUser.Email select UserTable).FirstOrDefault();
                user.Password = Utility.GetMd5Sum(newpasswordfield.Text);
                DatabaseContext.SaveChanges();
                SetSuccessMessage("Password change successfully.");
            }
        }

        private List<Product> BindCompanyProduct(int CompanyID)
        {
            return ((from CompanyProductTable in DatabaseContext.CompanyProducts where CompanyProductTable.CompanyID == CompanyID && CompanyProductTable.EndDate >= DateTime.Now select CompanyProductTable.Product).Distinct()).ToList();
        }
        private List<Product> BindUserProduct()
        {
            return ((from UserProductTable in DatabaseContext.UserProducts where UserProductTable.UserID == LoggedIsUser.UserID && UserProductTable.EndDate >= DateTime.Now select UserProductTable.Product).Distinct()).ToList();
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
        protected void btnSave_Click(object sender, ImageClickEventArgs e)
        {
            SelectedTabElement = 1;
            if (LoggedIsUser == null)//means its sign-up process
            {

                if (ValidateFields() && !companyNameAlreadyExists())
                {
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
                        Type = Enum.GetName(typeof(Enums.ENTITY_TYPE), Enums.ENTITY_TYPE.COMPANY_ADMIN),
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

                    Simplicity.Data.Company company = new Simplicity.Data.Company();
                    company.Name = companyname.Text;
                    company.Address = companyAddress;
                    DatabaseContext.AddToCompanies(company);
                    DatabaseContext.SaveChanges();

                    user.CompanyID = company.CompanyID;
                    DatabaseContext.SaveChanges();

                    //call health and safety stored procedure over here to insert company there as well
                    addCompanyToHS(user);
                    EmailUtility.SendAccountCreationEmail(user, passwordfield.Text);
                    Response.Redirect("~/ConfirmMail.aspx");
                }
            }
            else
            {
                if (companyNameAlreadyExists())
                {
                    return;
                }
                bool newCompanyAdded = false;
                User user = (from c in DatabaseContext.Users where c.UserID == LoggedIsUser.UserID select c).FirstOrDefault();

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
            }
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
                command.Parameters.AddWithValue("@address_no", user.Company.Address.AddressNo == null ? "" : user.Company.Address.AddressNo);
                command.Parameters.AddWithValue("@address_line1", user.Company.Address.AddressLine1 == null ? "" : user.Company.Address.AddressLine1);
                command.Parameters.AddWithValue("@address_line2", user.Company.Address.AddressLine2 == null ? "" : user.Company.Address.AddressLine2);
                command.Parameters.AddWithValue("@address_line3", user.Company.Address.AddressLine3 == null ? "" : user.Company.Address.AddressLine3);
                command.Parameters.AddWithValue("@address_line4", user.Company.Address.AddressLine4 == null ? "" : user.Company.Address.AddressLine4);
                command.Parameters.AddWithValue("@address_line5", user.Company.Address.AddressLine5 == null ? "" : user.Company.Address.AddressLine5);
                command.Parameters.AddWithValue("@address_post_code", user.Company.Address.PostalCode == null ? "" : user.Company.Address.PostalCode);
                command.Parameters.AddWithValue("@address_full", user.Company.Address.AddressFull == null ? "" : user.Company.Address.AddressFull);
                command.Parameters.AddWithValue("@tel_1", user.Company.Address.Telephone1 == null ? "" : user.Company.Address.Telephone1);
                command.Parameters.AddWithValue("@tel_2", user.Company.Address.Telephone2 == null ? "" : user.Company.Address.Telephone2);
                command.Parameters.AddWithValue("@tel_fax", user.Company.Address.Fax == null ? "" : user.Company.Address.Fax);
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

        private bool companyNameAlreadyExists()
        {
            Simplicity.Data.Company company = null;
            if (LoggedIsUser != null && LoggedIsUser.Company != null)
                company = (from c in DatabaseContext.Companies where c.Name == companyname.Text && c.CompanyID != LoggedIsUser.CompanyID select c).FirstOrDefault();
            else
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
        protected void ChangeRowCreated(object sender, GridViewRowEventArgs e)
        {
            //e.Row.Cells[1].Visible = false;
            //e.Row.Cells[2].Visible = false;
            //e.Row.Cells[3].Visible = false;
            //e.Row.Cells[4].Visible = false;
            //e.Row.Cells[5].Visible = false;
            //e.Row.Cells[6].Visible = false;
            //e.Row.Cells[7].Visible = false;
            //e.Row.Cells[9].Visible = false;
            //e.Row.Cells[10].Visible = false;
            //e.Row.Cells[15].Visible = false;
            //e.Row.Cells[16].Visible = false;
            //e.Row.Cells[17].Visible = false;
            //e.Row.Cells[18].Visible = false;
            //e.Row.Cells[19].Visible = false;
            //e.Row.Cells[20].Visible = false;
            //e.Row.Cells[21].Visible = false;
            //e.Row.Cells[22].Visible = false;
            //e.Row.Cells[23].Visible = false;
            //e.Row.Cells[24].Visible = false;
            //e.Row.Cells[25].Visible = false;
            //e.Row.Cells[26].Visible = false;
            //e.Row.Cells[27].Visible = false;
            //e.Row.Cells[28].Visible = false;
            //e.Row.Cells[29].Visible = false;
            //e.Row.Cells[30].Visible = false;
        }

        protected String GetUserType(String userType){
            if (userType.CompareTo("COMPANY_ADMIN") == 0)
                return "Company Admin";
            else if (userType.CompareTo("ADMIN") == 0)
                return "Ultra Nova Admin";
            else
                return "User";
        }

        protected void addUser_Click(object sender, EventArgs e)
        {
            SelectedTabElement = 4;
            newUserPanel.Visible = true;
            addUser.Visible = false;
        }

        protected void userSubmitButton_Click(object sender, ImageClickEventArgs e)
        {
            //var allUsersofCompany = (from UserTable in DatabaseContext.Users where UserTable.CompanyID == LoggedIsUser.CompanyID && UserTable.Enabled == true select UserTable);
            //int totalEnabledUsers = allUsersofCompany.Count();
            //if(totalEnabledUsers == allUsersofCompany.)

            SelectedTabElement = 4;
            newUserPanel.Visible = false;
            addUser.Visible = true;
            List<User> checkuser = (from UserTable in DatabaseContext.Users where UserTable.Email == userEmailField.Text select UserTable).ToList();
            if (checkuser.Any())
            {
                SetErrorMessage("Email address already resgistered with Simplicity");
            }
            else
            {
                Address Companyaddress = (from addr in LoggedIsUser.Addresses where addr.MultiAddressType == "COMPANY" select addr).FirstOrDefault();
                User user = new User
                {
                    FullName = userSurNameField.Text + ", " + userFirstNameField.Text,
                    Surname = userSurNameField.Text,
                    Forename = userFirstNameField.Text,
                    JobTitle = userJobTitle.Text,
                    Email = userEmailField.Text,
                    Password = Utility.GetMd5Sum(userPasswordField.Text),
                    ReminderQuestionID = byte.Parse(userlistForgotPasswordQuestion.SelectedValue),
                    ReminderQuestion = userlistForgotPasswordQuestion.SelectedItem.Text,
                    ReminderAnswer = Utility.GetMd5Sum(usertxtForgotPasswordAnswer.Text),
                    CreationDate = DateTime.Now,
                    LastAmendmentDate = DateTime.Now,
                    Type = Enum.GetName(typeof(Enums.ENTITY_TYPE), Enums.ENTITY_TYPE.USER),
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

                Address address = new Address
                {
                    Deleted = Companyaddress.Deleted,
                    AddressFull = Companyaddress.AddressFull,
                    AddressNo = Companyaddress.AddressNo,
                    AddressLine1 = Companyaddress.AddressLine1,
                    AddressLine2 = Companyaddress.AddressLine2,
                    AddressLine3 = Companyaddress.AddressLine3,
                    AddressLine4 = Companyaddress.AddressLine4,
                    AddressLine5 = Companyaddress.AddressLine5,
                    PostalCode = Companyaddress.PostalCode,
                    Telephone1 = Companyaddress.Telephone1,
                    Telephone2 = Companyaddress.Telephone2,
                    Fax = Companyaddress.Fax,
                    Mobile = Companyaddress.Mobile,
                    Town = Companyaddress.Town,
                    County = Companyaddress.County,
                    Country = Companyaddress.Country,
                    UserId = user.UserID,
                    SameAsCustomer = Companyaddress.SameAsCustomer,
                    SameAsBilling = Companyaddress.SameAsBilling,
                    MultiAddressType = Enum.GetName(typeof(Enums.ADDRESS_TYPE), Enums.ADDRESS_TYPE.PERSONAL),
                    CreationDate = DateTime.Now,
                    LastAmendmentDate = DateTime.Now,
                    AddressName = Companyaddress.AddressName,
                    CreatedBy = LoggedIsUser.UserID,
                    LastAmendedBy = Companyaddress.LastAmendedBy
                };

                Address companyAddress = new Address
                {
                    Deleted = Companyaddress.Deleted,
                    AddressFull = Companyaddress.AddressFull,
                    AddressNo = Companyaddress.AddressNo,
                    AddressLine1 = Companyaddress.AddressLine1,
                    AddressLine2 = Companyaddress.AddressLine2,
                    AddressLine3 = Companyaddress.AddressLine3,
                    AddressLine4 = Companyaddress.AddressLine4,
                    AddressLine5 = Companyaddress.AddressLine5,
                    PostalCode = Companyaddress.PostalCode,
                    Telephone1 = Companyaddress.Telephone1,
                    Telephone2 = Companyaddress.Telephone2,
                    Fax = Companyaddress.Fax,
                    Mobile = Companyaddress.Mobile,
                    Town = Companyaddress.Town,
                    County = Companyaddress.County,
                    Country = Companyaddress.Country,
                    UserId = user.UserID,
                    SameAsCustomer = Companyaddress.SameAsCustomer,
                    SameAsBilling = Companyaddress.SameAsBilling,
                    MultiAddressType = Enum.GetName(typeof(Enums.ADDRESS_TYPE), Enums.ADDRESS_TYPE.COMPANY),
                    CreationDate = DateTime.Now,
                    LastAmendmentDate = DateTime.Now,
                    AddressName = Companyaddress.AddressName,
                    CreatedBy = LoggedIsUser.UserID,
                    LastAmendedBy = Companyaddress.LastAmendedBy
                };

                user.Addresses.Add(address);
                user.Addresses.Add(companyAddress);
                user.CompanyID = LoggedIsUser.CompanyID;
                DatabaseContext.AddToUsers(user);
                DatabaseContext.SaveChanges();

                //call health and safety stored procedure over here to insert company there as well
                addCompanyToHS(user);
                EmailUtility.SendUserAccountCreationEmail(user, userPasswordField.Text,usertxtForgotPasswordAnswer.Text);
                Response.Redirect("~/SignUp.aspx?SelectedTabElement="+SelectedTabElement);
            }
        }
    }
}