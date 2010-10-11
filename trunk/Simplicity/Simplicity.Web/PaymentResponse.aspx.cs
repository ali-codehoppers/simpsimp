using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Simplicity.Web.Utilities;
using Simplicity.Data;
using Simplicity.Web.BusinessObjects;
using System.Data.SqlClient;

namespace Simplicity.Web
{
    public partial class PaymentResponse : AuthenticatedPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!verifyTransactionSignature(Request))
            {
                panelSignature.Visible = true;
            }
            else
            {
                string transactionUId = Request["orderNumber"];
                Transaction transaction = (from tr in DatabaseContext.Transactions where tr.TransactionUID == transactionUId select tr).FirstOrDefault();
                if (Request.Form.Get("decision") == "ACCEPT" || Request.Form.Get("decision") == "REVIEW")
                {
                    lblAmountText.Text = GetAmountText();
                    panelSuccess.Visible = true;

                    transaction.GWDecision = Request.Form.Get("decision");
                    transaction.GatewayID = transactionUId;
                    transaction.CompletionTime = DateTime.Now;

                    DatabaseContext.SaveChanges();

                    EmailUtility.SendPaymentEmail(Request.Form.Get("billTo_firstName"), Request.Form.Get("billTo_lastName"), Request.Form.Get("card_accountNumber"),
                    Request.Form.Get("card_expirationMonth"), Request.Form.Get("card_expirationYear"), Utility.GetCardType(Request.Form.Get("card_cardType")),
                    lblAmountText.Text, LoggedIsUser.Email);

                    bool healthAndSafetyPurchased = false;
                    if (LoggedIsUser.Company != null)
                    {
                        foreach (TransactionDetail detail in transaction.TransactionDetails)
                        {
                            CompanyProduct companyProduct = new CompanyProduct();
                            companyProduct.Company = LoggedIsUser.Company;
                            companyProduct.ProductID = detail.ProductID;
                            companyProduct.VersionID = detail.VersionID.Value;
                            if (detail.ProductDetailID > 0)
                                companyProduct.ProductDetailID = detail.ProductDetailID.Value;
                            companyProduct.NumOfLicenses = detail.Quantity;
                            companyProduct.StartDate = DateTime.Now;
                            companyProduct.EndDate = DateTime.Now.AddMonths(detail.Duration);
                            DatabaseContext.AddToCompanyProducts(companyProduct);

                            if (detail.ProductID == 2) healthAndSafetyPurchased = true;
                        }
                        DatabaseContext.SaveChanges();
                        //we need to mark Health And Safety as purchased if its already in trial mode
                        if (healthAndSafetyPurchased)
                        {
                            SqlConnection conn = new SqlConnection(AppSettings["HSDB"]);
                            try
                            {
                                conn.Open();
                                SqlCommand command = new SqlCommand(AppSettings["MarkHSPurchasedProcedure"], conn);
                                command.CommandType = System.Data.CommandType.StoredProcedure;
                                command.Parameters.AddWithValue("@simplicity_company_id", LoggedIsUser.Company.CompanyID);
                                command.Parameters.AddWithValue("@flg_trial", false);
                                command.ExecuteReader();
                            }
                            finally
                            {
                                if (conn != null) conn.Close();
                            }
                        }
                    }


                    ShoppingCart.ClearTrolley();
                    productsLogin.Visible = true;
                    //add to user products                    
                }
                else
                {
                    transaction.GWDecision = Request.Form.Get("decision");
                    transaction.GatewayID = transactionUId;
                    transaction.CompletionTime = DateTime.Now;
                    transaction.GWReasonCode = int.Parse(Request.Form.Get("reasonCode"));
                    DatabaseContext.SaveChanges();

                    if (Request.Form.Get("reasonCode") == "102")
                    {
                        HashSet<string> fields = new HashSet<string>();
                        for (int i = 0; i < 100; i++)
                        {
                            if (Request["InvalidField" + i] != null)
                                fields.Add(Request["InvalidField" + i]);
                            else
                                break;
                        }

                        for (int i = 0; i < 100; i++)
                        {
                            if (Request["MissingField" + i] != null)
                                fields.Add(Request["MissingField" + i]);
                            else
                                break;
                        }
                        string fieldValues = "";
                        foreach (string field in fields)
                        {
                            fieldValues += field + ",";
                        }
                        Response.Redirect("~/PaymentDetail.aspx?" + WebConstants.Request.TRANSACTION_UID + "=" + transactionUId
                            + "&" + WebConstants.Request.INVALID_FIELDS + "=" + fieldValues);
                    }
                    else
                    {
                        Response.Redirect("~/pages/PaymentDetail.aspx?" + WebConstants.Request.TRANSACTION_UID + "=" + transactionUId
                            + "&" + WebConstants.Request.REASON_CODE + "=" + Request.Form.Get("reasonCode"));         
                    }
                }
            }
        }

        protected string GetAmountText()
        {
            return GetCurrency(Request.Form.Get("orderCurrency")) + String.Format("{0:N2}", Request.Form.Get("orderAmount")) + " will be charged each month starting from " + DateTime.Now.AddDays(1).ToShortDateString() + " for the next " + WebConstants.DEFAULT_DURATION + " months";
        }

        protected Boolean verifyTransactionSignature(System.Web.HttpRequest map)
        {
            return CyberSourceCS.verifyTransactionSignature(map);
        }

        private string GetCurrency(string currency)
        {
            if (currency.ToLower().Equals("usd"))
            {
                return "$";
            }
            else if (currency.ToLower().Equals("eur"))
            {
                return "&euro;";
            }
            else
            {
                return "&pound;";
            }
        }
    }
}