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
    public partial class UserProducts : GenericPage
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {
                if (Request[WebConstants.Request.COMPANY_ID] != null)
                {
                    //int userId = Int32.Parse(Session["selectedUserValue"].ToString());
                    //var userProducts = from up in DatabaseContext.UserProducts where up.UserID==userId && (from p in DatabaseContext.Products select up.ProductID).Contains(up.ProductID) select new { Product = up.Product, UserProduct = up};
                    //UserProductRepeater.DataSource = userProducts;
                    //UserProductRepeater.DataBind();
                    int companyId = int.Parse(Request[WebConstants.Request.COMPANY_ID]);
                    var companyProducts = from cp in DatabaseContext.CompanyProducts where cp.CompanyID == companyId && (from p in DatabaseContext.Products select p.ProductID).Contains(cp.ProductID) select new { Product = cp.Product, CompanyProduct = cp };
                    CompanyProductsGrid.DataSource = companyProducts;
                    CompanyProductsGrid.DataBind();

                    CompanyNameLabel.Text = companyProducts.FirstOrDefault().CompanyProduct.Company.Name;
                    CompanyNameLabel.Visible = true;
                }
            }
        }

        protected void editProductDetails_btn_Click(object sender, EventArgs e) {
            String companyId = SelectedCompanyID.Value;
            String productId = SelectedProductID.Value;

            Response.Redirect("~/Admin/CompanyProductDetails.aspx?companyId=" + companyId + "&productId=" + productId);
        }

        protected void btnUpdateProduct_Click(object sender, EventArgs e) {
            if (UserProductRepeater.Items.Count != 0) {
                foreach (RepeaterItem item in UserProductRepeater.Items)
                {
                    string userProductDate = ((TextBox)item.FindControl("userProductDate")).Text;
                    int userID = Int32.Parse(((HiddenField)item.FindControl("userID")).Value);
                    int productID = Int32.Parse(((HiddenField)item.FindControl("productID")).Value);
                    string previousDate = ((HiddenField)item.FindControl("previousDate")).Value;
                    if (previousDate != userProductDate)
                    {
                        var userProducts = from up in DatabaseContext.UserProducts where up.UserID == userID && up.ProductID == productID select new { Product = up.Product, UserProduct = up };
                        userProducts.FirstOrDefault().UserProduct.EndDate = DateTime.Parse(userProductDate);
                        DatabaseContext.SaveChanges();

                        SqlConnection conn = new SqlConnection(AppSettings["HSDB"]);
                        try
                        {
                            conn.Open();
                            SqlCommand command = new SqlCommand(AppSettings["MarkHSUserDateProcedure"], conn);
                            command.CommandType = System.Data.CommandType.StoredProcedure;
                            command.Parameters.AddWithValue("@simplicity_user_id", userID);
                            command.Parameters.AddWithValue("@trial_end_date", userProductDate);
                            command.ExecuteReader();
                        }
                        finally
                        {
                            if (conn != null) conn.Close();
                        }
                    }
                }
            }
            //if (CompanyProductRepeater.Items.Count != 0) {
            //    foreach (RepeaterItem item in CompanyProductRepeater.Items)
            //    {
            //        //string companyProductDate = ((TextBox)item.FindControl("companyProductDate")).Text;
            //        int companyID = Int32.Parse(((HiddenField)item.FindControl("companyID")).Value);
            //        int productID = Int32.Parse(((HiddenField)item.FindControl("productID")).Value);
            //        //string previousDate = ((HiddenField)item.FindControl("previousDate")).Value;
            //        //string LicenseNum = ((TextBox)item.FindControl("LicenseNum")).Text;
            //        int licenseNum = Int32.Parse(LicenseNum);
            //        int activeUsers = 0;

            //        if (companyProductDate != "" && LicenseNum!="")
            //        {
            //            var companyProducts = from cp in DatabaseContext.CompanyProducts where cp.CompanyID == companyID && cp.ProductID==productID select new { Product = cp.Product, CompanyProduct = cp };
            //            companyProducts.FirstOrDefault().CompanyProduct.EndDate = DateTime.Parse(companyProductDate);
            //            companyProducts.FirstOrDefault().CompanyProduct.NumOfLicenses = Int32.Parse(LicenseNum);
            //            var noOfactiveUsers = from actUsers in DatabaseContext.Users where actUsers.CompanyID == companyID && actUsers.Enabled == true select actUsers; // select * from [PROD_SIMPLICITY].[dbo].[Users] where CompanyID = 1 and Enabled = 1;
            //            activeUsers = noOfactiveUsers.Count();

            //            if (licenseNum < activeUsers)
            //            {
            //                activeUsersCheckBoxList.DataSource = noOfactiveUsers;
            //                activeUsersCheckBoxList.DataTextField = noOfactiveUsers.FirstOrDefault().Email;
            //                activeUsersCheckBoxList.DataValueField = noOfactiveUsers.FirstOrDefault().UserID.ToString();
            //                ClientScript.RegisterStartupScript(this.GetType(), "activeUsersDialog", "$(document).ready(showDimensionDialog);", true);
            //            }

            //            DatabaseContext.SaveChanges();
            //            SqlConnection conn = new SqlConnection(AppSettings["HSDB"]);
            //            try
            //            {
            //                conn.Open();
            //                SqlCommand command = new SqlCommand(AppSettings["MarkHSCompanyDateProcedure"], conn);
            //                command.CommandType = System.Data.CommandType.StoredProcedure;
            //                command.Parameters.AddWithValue("@simplicity_company_id", companyID);
            //                command.Parameters.AddWithValue("@trial_end_date", companyProductDate);
            //                command.ExecuteReader();
            //            }
            //            finally
            //            {
            //                if (conn != null) conn.Close();
            //            }
            //        }
            //    }
            //}
        }
    }
}