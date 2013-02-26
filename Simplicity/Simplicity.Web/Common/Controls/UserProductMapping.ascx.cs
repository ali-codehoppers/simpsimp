using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Simplicity.Data;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Simplicity.Web.Common.Controls
{
    public partial class UserProductMapping : System.Web.UI.UserControl
    {
        private Simplicity.Data.Company _Company = null;
        public Simplicity.Data.Company company
        {
            //set the person name
            set { this._Company = value; }
            //get the person name 
            get { return this._Company; }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if(company == null)//Company Id will be set for only Admin type Logged in user.
                return;
            if(!IsPostBack)
                updateUserProdMapTable();
            //foreach(Simplicity.Data.CompanyProduct prod in company.CompanyProducts) {
            //    var userUsingProduct = from usrProd in DatabaseContext.UserProducts where usrProd.User.CompanyID == companyId && usrProd.ProductID == prod.ProductID && prod.EndDate.CompareTo(DateTime.Now) >=0 && prod.StartDate.CompareTo(DateTime.Now) <= 0 select usrProd;
            //    var users = compEnabledUsers.Where(cmpUnaUsr => userUsingProduct.Where(compProdUsr => compProdUsr.UserID == cmpUnaUsr.UserID).Any());
                
            //}
        //function getCellClick(row, col) {
        //    alert(row);
        //    alert(col);
        //    var data = { row: row, col: col };

        //    $.ajax({
        //        async: false,
        //        type: "POST",
        //        contentType: "application/json; charset=utf-8",
        //        cache: false,
        //        url: "LicenseService.svc/doWork",
        //        data: JSON.stringify(data),
        //        success: function (data) {

        //            alert(data);
        //        }
        //    })

        //}
        }

        private void updateUserProdMapTable() {
            TableHeaderRow tbHeaderRow1 = new TableHeaderRow();
            TableHeaderCell tbHeaderCell = null;
            List<CompanyProduct> validCompanyProducts = company.CompanyProducts.Where(compProd=> compProd.EndDate.CompareTo(DateTime.Now) >= 0 && compProd.StartDate.CompareTo(DateTime.Now) <= 0).ToList();
            foreach(CompanyProduct prod in validCompanyProducts){
                tbHeaderCell = new TableHeaderCell();
                tbHeaderCell.BorderWidth = 1;
                tbHeaderCell.BorderColor = System.Drawing.Color.Black;
                tbHeaderCell.Text = prod.Product.Name+"<br>"+prod.NumOfLicenses;
                tbHeaderCell.Attributes.Add("licences", prod.NumOfLicenses.ToString());
                tbHeaderCell.Attributes.Add("productId", prod.ProductID.ToString());
                //tbHeaderCell.Width = 150;
                tbHeaderCell.ID = prod.ProductID.ToString();
                tbHeaderRow1.Cells.Add(tbHeaderCell);
            }
            UserProdMapTable.Rows.Add(tbHeaderRow1);
            UserProdMapTable.BorderWidth = 1;
            UserProdMapTable.BorderColor = System.Drawing.Color.Black;

            int totalProducts = validCompanyProducts.Count();
            int companyId = company.CompanyID;
            List<Simplicity.Data.User> compEnabledUsers = Utilities.DatabaseUtility.GetCompanyEnableUsers(companyId);
            SimplicityEntities DatabaseContext = new SimplicityEntities();
            int index = 0;
            foreach (Simplicity.Data.User usr in compEnabledUsers)
            {
                TableRow row = new TableRow();
                if(index % 2 == 0)
                    row.BackColor = System.Drawing.Color.FromArgb(240, 240, 240);
                index++;
                foreach(Simplicity.Data.CompanyProduct prod in validCompanyProducts) 
                {
                    var userUsingProduct = from usrProd in DatabaseContext.UserProducts where usrProd.User.CompanyID == companyId && usrProd.ProductID == prod.ProductID && usrProd.IsTrial == false select usrProd;
                    TableCell cell = new TableCell();
                    try {
                        Simplicity.Data.UserProduct productUser = (from prodUser in userUsingProduct where prodUser.UserID == usr.UserID select prodUser).FirstOrDefault();
                        if(productUser != null ){
                            cell.CssClass = "UserProdMappingTable-AssignedProd";
                        }
                    }catch(Exception ex){
                    }

                    cell.HorizontalAlign = HorizontalAlign.Center;
                    cell.VerticalAlign = VerticalAlign.Middle;
                    cell.BorderWidth = 1;
                    cell.BorderColor = System.Drawing.Color.Black;
                    cell.ID = usr.UserID + "_" + prod.ProductID;
                    cell.Text = usr.Email;
                    //cell.Text = "<div style=\"display:inline;float:left;margin-right:10px; \">" + usr.Email + "</div>" +
                    //    "<div style=\"background-color:black;float:right;display:inline-block;width:20px;border:medium none black;\">&nbsp;</div>";
                    if(cell.CssClass.CompareTo("")==0)
                        cell.CssClass = prod.ProductID.ToString();
                    else
                        cell.CssClass += " " + prod.ProductID.ToString();
                    //cell.Width = 150;
                    
                    row.Cells.Add(cell);
                }

                UserProdMapTable.Rows.Add(row);
            }

            DatabaseContext.Dispose();
        }

        protected void SetErrorMessage(string message)
        {
            SetMessage("success", "", false);
            SetMessage("error", message, true);
        }
        private void SetMessage(string type, string message, bool visible)
        {
            Panel panel = (Panel)FindControl(this.Page.Master, type + "Panel");
            Label label = (Label)FindControl(this.Page.Master, type + "Message");
            if (panel != null && label != null)
            {
                panel.Visible = visible;
                label.Text = message;
            }
        }
        protected Control FindControl(Control root, string controlId)
        {
            if (root.ID == controlId)
                return root;

            foreach (Control control in root.Controls)
            {
                Control foundControl = FindControl(control, controlId);
                if (foundControl != null)
                    return foundControl;
            }

            return null;
        }
        protected void SetSuccessMessage(string message)
        {
            SetMessage("error", "", false);
            SetMessage("success", message, true);
        }


        protected void UserProductMapDetailUpdate_Click(object sender, EventArgs e)
        {
            System.Diagnostics.Debug.WriteLine(UsrProdNewMapValues);
            SimplicityEntities DatabaseContext = new SimplicityEntities();
            int companyId = company.CompanyID;
            

            String [] selectedUsersAndProds = UsrProdNewMapValues.Value.Split(',');
            int totalSelectedUsersAndProducts = selectedUsersAndProds.Length;
            Dictionary<int, List<int>> usersGroupByProduct = new Dictionary<int, List<int>>();
            for (int i = 0; i < totalSelectedUsersAndProducts - 1; i++) {
                String[] parsedId = selectedUsersAndProds[i].Split('_');
                int userId = Int32.Parse(parsedId[2]);
                int prodId = Int32.Parse(parsedId[3]);

                
                if (usersGroupByProduct.ContainsKey(prodId) == false) {
                    List<int> usersOfSameProduct = new List<int>();
                    usersGroupByProduct.Add(prodId, usersOfSameProduct);
                }

                List<int> usersOfSameProductValue = null;
                if (usersGroupByProduct.TryGetValue(prodId, out usersOfSameProductValue) == true)
                    usersOfSameProductValue.Add(userId);
            }

            List<int> allCompanyProds = company.CompanyProducts.Select(cmpProd => cmpProd.ProductID).ToList();
            foreach (int prodId in allCompanyProds)
            {
                if (usersGroupByProduct.ContainsKey(prodId) == true)
                {
                    List<int> usersOfSameProduct = usersGroupByProduct[prodId];
                    var userUsingProductID = from usrProd in DatabaseContext.UserProducts where usrProd.User.CompanyID == companyId && usrProd.ProductID == prodId && usrProd.IsTrial == false select usrProd;
                    var userIdOdUsersUsingProductID = userUsingProductID.Select(users => users.UserID);
                    var myUsers = userIdOdUsersUsingProductID.Except(usersOfSameProduct);

                    if (myUsers != null && myUsers.Count() > 0)
                    {
                        var usersToDelete = userUsingProductID.Where(usersOfProduct => myUsers.Where(usr => usr == usersOfProduct.UserID).Any());// usersOfProduct.UserID == myUsers);
                        foreach (UserProduct userProduct in usersToDelete)
                            DatabaseContext.UserProducts.DeleteObject(userProduct);
                    }
                }
                else {
                    var companyUsersUsingProduct = from usrProd in DatabaseContext.UserProducts where usrProd.User.CompanyID == companyId && usrProd.ProductID == prodId && usrProd.IsTrial == false select usrProd;
                    foreach (UserProduct userProduct in companyUsersUsingProduct)
                        DatabaseContext.UserProducts.DeleteObject(userProduct);
                }//if there is only one user using the product and admin removes it.
            }//remove users using the products first so licences can be made available to other users.
            DatabaseContext.SaveChanges();

            foreach (int prodId in usersGroupByProduct.Keys) {
                int noOfLicencesForProduct = 0;
                var userUsingProduct = from usrProd in DatabaseContext.UserProducts where usrProd.User.CompanyID == companyId && usrProd.ProductID == prodId && usrProd.IsTrial == false select usrProd;
                var companyProd = company.CompanyProducts.Where(compProd => compProd.ProductID == prodId);

                List<int> newUsersUsingProduct = usersGroupByProduct[prodId];
                foreach (int userId in newUsersUsingProduct) {
                    var usrProd = userUsingProduct.Where(usrExist => usrExist.UserID == userId);
                    if (usrProd != null && usrProd.Count() > 0)
                    {
                        continue;
                    }
                    else {
                        
                        if (companyProd != null)
                        {
                            foreach (Simplicity.Data.CompanyProduct companyProduct in companyProd)
                            {
                                UserProduct newUsrOfProd = null;
                                noOfLicencesForProduct = companyProduct.NumOfLicenses;
                                if (userUsingProduct.Count() < noOfLicencesForProduct)
                                {
                                    newUsrOfProd = new UserProduct();
                                    newUsrOfProd.UserID = userId;
                                    newUsrOfProd.ProductID = prodId;
                                    newUsrOfProd.IsTrial = false;
                                    newUsrOfProd.StartDate = DateTime.Now;
                                    newUsrOfProd.EndDate = DateTime.Now.AddYears(1);

                                    DatabaseContext.UserProducts.AddObject(newUsrOfProd);
                                    DatabaseContext.SaveChanges();
                                }
                                else {
                                    SetErrorMessage("No. of users are greater than No. of Licenses for " + companyProduct.Product.Name);
                                }
                                break;
                            }//there should be only one product. So loop will run only once.
                        }
                    }
                }
            }
            DatabaseContext.Dispose();
            updateUserProdMapTable();
        }
    }
}