using Simplicity.Web.Utilities;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Simplicity.Data;
using System.Web.UI.HtmlControls;
namespace Simplicity.Web.Admin
{
    public partial class ManageCompanies : AdminAuthenticatedPage
    {
        private Simplicity.Data.Company company = null;

        protected void Page_Load(object sender, EventArgs e)
        {
            String strCompId = Request["companyId"];
            if (strCompId != null && strCompId.CompareTo("") != 0){
                int id = Int32.Parse(strCompId);
                this.company = (from c in DatabaseContext.Companies where c.CompanyID == id select c).FirstOrDefault();
            }

            if (!IsPostBack)
            {
                ContentPlaceHolder myContent = (ContentPlaceHolder)this.Master.FindControl("BodyContentPlaceHolder");
                HtmlGenericControl gridBoxDiv = (HtmlGenericControl)myContent.FindControl("GridDiv");
                HtmlGenericControl editCompanyDiv = (HtmlGenericControl)myContent.FindControl("EditCompanyDetailsDiv");
                
                if (company != null) {
                    gridBoxDiv.Visible = false;
                    editCompanyDiv.Visible = true;

                    companyname.Text = company.Name;
                    addressno.Text = company.Address.AddressNo;
                    addressline1.Text = company.Address.AddressLine1;
                    addressline2.Text = company.Address.AddressLine2;
                    addressline3.Text = company.Address.AddressLine3;
                    addressline4.Text = company.Address.AddressLine4;
                    addressline5.Text = company.Address.AddressLine5;
                    postalcode.Text = company.Address.PostalCode;
                    town.Text = company.Address.Town;
                    County.Text = company.Address.County;
                    country.Text = company.Address.Country;
                    telephone1.Text = company.Address.Telephone1;
                    telephone2.Text = company.Address.Telephone2;
                    fax.Text = company.Address.Fax;
                    mobile.Text = company.Address.Mobile;
                }
                else {
                    gridBoxDiv.Visible = true;
                    editCompanyDiv.Visible = false;
                }
            }
            SimplicityDataSource.Where = "";
            if (SearchTextBox.Text.ToString().CompareTo("") != 0)
            {
                this.searchCompanies();
            }
        }

        private bool companyNameAlreadyExistsUsingName()
        {
            Simplicity.Data.Company company = null;
            company = (from c in DatabaseContext.Companies where c.Name == CompanyTabCompanyName.Text select c).FirstOrDefault();
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

        private bool companyNameAlreadyExists()
        {
            
            Simplicity.Data.Company existingCompany = null;
            existingCompany = (from c in DatabaseContext.Companies where c.Name == companyname.Text && c.CompanyID != this.company.CompanyID select c).FirstOrDefault();
            if (existingCompany != null)
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

        private string GetFullAddressCompanyTab()
        {
            string fullAddress = "";
            if (CompanyTabAddressNo.Text.Trim().Length > 0) fullAddress += CompanyTabAddressNo.Text + " ";
            if (CompanyTabAddressLine1.Text.Trim().Length > 0) fullAddress += CompanyTabAddressLine1.Text + " ";
            if (CompanyTabAddressLine2.Text.Trim().Length > 0) fullAddress += CompanyTabAddressLine2.Text + " ";
            if (CompanyTabAddressLine3.Text.Trim().Length > 0) fullAddress += CompanyTabAddressLine3.Text + " ";
            if (CompanyTabAddressLine4.Text.Trim().Length > 0) fullAddress += CompanyTabAddressLine4.Text + " ";
            if (CompanyTabAddressLine5.Text.Trim().Length > 0) fullAddress += CompanyTabAddressLine5.Text + " ";
            fullAddress += CompanyTabPostalCode.Text;
            return fullAddress;
        }

        protected void SearchCompanies_ButtonClickEvent(object source, EventArgs e)
        {
            this.searchCompanies();
        }

        private void searchCompanies() {
            this.SetWhereClause();
            UserGrid.DataBind();
        }

        protected void UserGrid_RowCommand(object source, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "ManageUser") {
                int id = Int32.Parse(e.CommandArgument.ToString());
                Response.Redirect("~/Admin/ManageUser.aspx?companyId="+id);
            }
            else if (e.CommandName == "EditCompanyDetails")
            {
                int id = Int32.Parse(e.CommandArgument.ToString());
                Response.Redirect("~/Admin/ManageCompanies.aspx?companyId=" + id);
            }
            else if (e.CommandName == "Delete")
            {
                int id = Int32.Parse(e.CommandArgument.ToString());
                deleteCompanyRow(id);
            }
        }

        private void deleteCompanyRow(int companyId) {
            if (companyId >= 0)
            {
                this.company = (from c in DatabaseContext.Companies where c.CompanyID == companyId select c).FirstOrDefault();//select company
                this.company.Address.Deleted = true;//delete address
                IEnumerable<Simplicity.Data.CompanyProduct> products = from cp in DatabaseContext.CompanyProducts where cp.CompanyID == companyId select cp;
                foreach (CompanyProduct product in products)
                {
                    DatabaseContext.CompanyProducts.DeleteObject(product);
                }//delete all company products.

                IEnumerable<User> users = from usrs in DatabaseContext.Users where usrs.CompanyID == companyId select usrs;
                foreach (User usr in users)
                {
                    usr.CompanyID = null;
                    usr.Deleted = true;
                }//delete users belong to the company also set company id to null so that foriegn key constraint allows company to be deleted.

                DatabaseContext.Companies.DeleteObject(this.company);
                DatabaseContext.SaveChanges();
                if (SearchTextBox.Text.ToString().CompareTo("") != 0)
                {
                    this.SetWhereClause();
                }
                else
                {
                    //SimplicityDataSource.AutoGenerateWhereClause = false;
                    UserGrid.DataBind();
                }
            }
        }

        protected void UserGrid_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            e.Cancel = true;
        }

        private void fillAddress(Simplicity.Data.Address companyAddress)
        {
            companyAddress.AddressFull = GetFullAddress();
            companyAddress.AddressNo = addressno.Text;
            companyAddress.AddressLine1 = addressline1.Text;
            companyAddress.AddressLine2 = addressline2.Text;
            companyAddress.AddressLine3 = addressline3.Text;
            companyAddress.AddressLine4 = addressline4.Text;
            companyAddress.AddressLine5 = addressline5.Text;
            companyAddress.PostalCode = postalcode.Text;
            companyAddress.Telephone1 = telephone1.Text;
            companyAddress.Telephone2 = telephone2.Text;
            companyAddress.Fax = fax.Text;
            companyAddress.Mobile = mobile.Text;
            companyAddress.Town = town.Text;
            companyAddress.County = County.Text;
            companyAddress.Country = country.Text;
            companyAddress.LastAmendmentDate = DateTime.Now;
            companyAddress.LastAmendedBy = LoggedIsAdmin.UserID;
        }


        protected void btnSave_Click(object sender, ImageClickEventArgs e)
        {
            if (!companyNameAlreadyExists()) {
                this.company.Name = companyname.Text;
                this.fillAddress(this.company.Address);
                DatabaseContext.SaveChanges();
                Response.Redirect("~/Admin/ManageCompanies.aspx");
            }
        }

        private void SetWhereClause()
        {
            SimplicityDataSource.Where = "";
            if (SearchTextBox.Text.Length > 0)
            {
                SimplicityDataSource.Where += "(it.Name LIKE @SearchString OR it.Address.AddressFull LIKE @SearchString OR it.Address.Telephone1 LIKE @SearchString OR it.Address.Telephone2 LIKE @SearchString)";
                if (SimplicityDataSource.WhereParameters["SearchString"] != null)
                {
                    SimplicityDataSource.WhereParameters["SearchString"].DefaultValue = "%" + SearchTextBox.Text + "%";
                }
                else
                {
                    Parameter searchStringParameter = new Parameter();
                    searchStringParameter.Name = "SearchString";

                    searchStringParameter.DbType = System.Data.DbType.String;
                    searchStringParameter.DefaultValue = "%" + SearchTextBox.Text + "%";
                    SimplicityDataSource.WhereParameters.Add(searchStringParameter);
                }
            }
            else {
                SimplicityDataSource.WhereParameters.Clear();
            }
        }

        private string GetFullName()
        {
            return surname.Text + ", " + firstname.Text;
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

        private Address fillAddressUser(User user, Enums.ADDRESS_TYPE addrType)
        {
            Address addr = new Address
            {
                Deleted = false,
                AddressFull = GetFullAddressCompanyTab(),
                AddressNo = CompanyTabAddressNo.Text,
                AddressLine1 = CompanyTabAddressLine1.Text,
                AddressLine2 = CompanyTabAddressLine2.Text,
                AddressLine3 = CompanyTabAddressLine3.Text,
                AddressLine4 = CompanyTabAddressLine4.Text,
                AddressLine5 = CompanyTabAddressLine5.Text,
                PostalCode = CompanyTabPostalCode.Text,
                Telephone1 = CompanyTabTelephone1.Text,
                Telephone2 = CompanyTabTelephone2.Text,
                Fax = CompanyTabFax.Text,
                Mobile = CompanyTabMobile.Text,
                Town = CompanyTabTown.Text,
                County = CompanyTabCounty.Text,
                Country = CompanyTabCountry.Text,
                UserId = user.UserID,
                SameAsCustomer = false,
                SameAsBilling = false,
                MultiAddressType = Enum.GetName(typeof(Enums.ADDRESS_TYPE), addrType),
                CreationDate = DateTime.Now,
                LastAmendmentDate = DateTime.Now,
                AddressName = null,
                CreatedBy = LoggedIsAdmin.UserID,
                LastAmendedBy = LoggedIsAdmin.UserID
            };
            return addr;
        }

        protected void AddCompanyAdmin_Click(object source, EventArgs e)
        {
            if (ValidateFields())
            {
                String CompanyType = Enum.GetName(typeof(Enums.ENTITY_TYPE), Enums.ENTITY_TYPE.USER);
                if (!companyNameAlreadyExistsUsingName())
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
                        Verified = true,
                        Enabled = true,
                        UserUID = Guid.NewGuid().ToString(),
                        VerificationCode = Guid.NewGuid().ToString(),
                        Approved = 0,
                        PaymentType = 0,
                        LoginAttempts = 0
                    };

                    Address address = fillAddressUser(user, Enums.ADDRESS_TYPE.PERSONAL);
                    Address companyAddress = fillAddressUser(user, Enums.ADDRESS_TYPE.COMPANY);
                    user.Addresses.Add(address);
                    user.Addresses.Add(companyAddress);
                    //Simplicity.Data.Company company = (from c in DatabaseContext.Companies where c.Name == companyname.Text select c).FirstOrDefault();
                    Simplicity.Data.Company company = new Simplicity.Data.Company();
                    company.Name = CompanyTabCompanyName.Text;
                    company.Address = companyAddress;
                    DatabaseContext.AddToCompanies(company);
                    DatabaseContext.SaveChanges();

                    user.CompanyID = company.CompanyID;
                    //DatabaseContext.Users.AddObject(user);
                    DatabaseContext.SaveChanges();

                    //call health and safety stored procedure over here to insert company there as well
                    DatabaseUtility.addCompanyToHS(user);
//                    EmailUtility.SendAccountCreationEmail(user, passwordfield.Text);
                    SetSuccessMessage("Company added successfully.");
                    Response.Redirect("~/Admin/ManageCompanies.aspx");
                }
            }
        }

        protected void AddAdminPopUpButton_Click(object source, EventArgs e) {
            AddAdminPopUP_Button.Visible = false;
            AddCompanyAdminButton.Visible = true;


            if (ValidateFields())
            {
                String CompanyType = Enum.GetName(typeof(Enums.ENTITY_TYPE), Enums.ENTITY_TYPE.ADMIN);
                if (!companyNameAlreadyExistsUsingName())
                {
                    SetErrorMessage("Error in adding New Admin.");
                }
                else
                {
                    SetErrorMessage("");

                    User user = new User
                    {
                        ReceiveEmails = false,
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
                        Verified = true,
                        Enabled = true,
                        UserUID = Guid.NewGuid().ToString(),
                        VerificationCode = Guid.NewGuid().ToString(),
                        Approved = 0,
                        PaymentType = 0,
                        LoginAttempts = 0
                    };

                    Address address = fillAddressUser(user, Enums.ADDRESS_TYPE.PERSONAL);
                    user.Addresses.Add(address);
                    Simplicity.Data.Company company = (from c in DatabaseContext.Companies where c.Name == WebConstants.Config.ADMIN_COMPANY_NAME select c).FirstOrDefault();
                    user.CompanyID = company.CompanyID;
                    user.Company = company;
                    DatabaseContext.Users.AddObject(user);
                    DatabaseContext.SaveChanges();

                    //call health and safety stored procedure over here to insert company there as well
                    DatabaseUtility.addCompanyToHS(user);
//                    EmailUtility.SendAccountCreationEmail(user, passwordfield.Text);
                    SetSuccessMessage("Admin added successfully.");
                    Response.Redirect("~/Admin/ManageCompanies.aspx");
                }
            }
        }


        protected void AddAdminButton_Click(object source, EventArgs e) {
            CompanyTabCompanyName.Text = WebConstants.Config.ADMIN_COMPANY_NAME;
            CompanyTabCompanyName.Enabled = false;
            AddAdminPopUP_Button.Visible = true;
            AddCompanyAdminButton.Visible = false;

            ClientScript.RegisterStartupScript(this.GetType(), "openAddCompany", "$(document).ready(openAddCompany);", true);
        }

        protected void AddCompanyPopUpButton_Click(object source, EventArgs e)
        {
            CompanyTabCompanyName.Text = "";
            CompanyTabCompanyName.Enabled = true;
            AddAdminPopUP_Button.Visible = false;
            AddCompanyAdminButton.Visible = true;

            ClientScript.RegisterStartupScript(this.GetType(), "openAddNewCompany", "$(document).ready(openAddNewCompany);", true);
        }
    }
}