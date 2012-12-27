using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Simplicity.Web.Utilities;
using Simplicity.Web.BusinessObjects;
using System.Collections.Specialized;
using System.Net;
using System.IO;
using System.Text;
using Simplicity.Data;

namespace Simplicity.Web
{
    public partial class PaymentDetail : AuthenticatedPage
    {       
        protected void Page_Load(object sender, EventArgs e)
        {
            lblCCMsg.Text = GetCurrencyHTMLCode() + String.Format("{0:N2}", ShoppingCart.GetTotalAmount())
                            + " will be deducted from your Card monthly starting from " + DateTime.Now.AddDays(1).ToShortDateString() + " to " + DateTime.Now.AddDays(1).AddMonths(12).ToShortDateString();
            //"
            int year = DateTime.Now.Year;
            for (int i = year; i < 2050; i++)
                txtExpiryYear.Items.Add(i.ToString());
            for (int i = 2000; i <= year; i++)
                txtStartYear.Items.Add(i.ToString());
            if (Request[WebConstants.Request.TRANSACTION_UID] != null && !IsPostBack)
            {
                PaymentDetails paymentDetails = SessionFactory.GetPaymentDetails(Request[WebConstants.Request.TRANSACTION_UID]);
                if (paymentDetails != null)
                {
                    txtBillingCountry.SelectedValue = paymentDetails.Country;
                    txtBillingCounty.Text = paymentDetails.County;
                    txtBillingStreet.Text = paymentDetails.Street;
                    txtBillingTown.Text = paymentDetails.Town;
                    txtBillingZipCode.Text = paymentDetails.PostCode;
                    txtCardNumber.Text = paymentDetails.CardNumber;
                    txtExpiryMonth.SelectedValue = paymentDetails.ExpiryMonth;
                    txtExpiryYear.SelectedValue = paymentDetails.ExpiryYear;
                    txtFirstName.Text = paymentDetails.FirstName;
                    txtLastName.Text = paymentDetails.LastName;
                    txtSecurityCode.Text = paymentDetails.SecurityCode;
                    txtStartMonth.SelectedValue = paymentDetails.StartMonth;
                    txtStartYear.SelectedValue = paymentDetails.StartYear;
                    txtTelephone.Text = paymentDetails.Telephone;
                    lstCardType.SelectedValue = paymentDetails.CardType;
                }

                if (Request[WebConstants.Request.INVALID_FIELDS] != null)
                {
                    SetErrorMessage("Some of the required fields are missing. Please provide all mandatory fields and proceed with checkout");
                    string[] invalidFields = Request[WebConstants.Request.INVALID_FIELDS].Split(',');
                    string ERROR_FIELD = "errorField";
                    foreach (string invalidField in invalidFields)
                    {
                        if (invalidField == "billTo_firstName")
                        {
                            txtFirstName.CssClass = ERROR_FIELD;
                        }
                        else if (invalidField == "billTo_lastName")
                        {
                            txtLastName.CssClass = ERROR_FIELD;
                        }
                        else if (invalidField == "card_cardType")
                        {
                            lstCardType.CssClass = ERROR_FIELD;
                        }
                        else if (invalidField == "card_accountNumber")
                        {
                            txtCardNumber.CssClass = ERROR_FIELD;
                        }
                        else if (invalidField == "card_expirationMonth" || invalidField == "card_expirationYear")
                        {
                            txtExpiryMonth.CssClass = ERROR_FIELD;
                            txtExpiryYear.CssClass = ERROR_FIELD;
                        }
                        else if (invalidField == "billTo_street1")
                        {
                            txtBillingStreet.CssClass = ERROR_FIELD;
                        }
                        else if (invalidField == "billTo_city")
                        {
                            txtBillingCounty.CssClass = ERROR_FIELD;
                        }
                        else if (invalidField == "billTo_country")
                        {
                            txtBillingCountry.CssClass = ERROR_FIELD;
                        }
                    }
                }
                if (Request[WebConstants.Request.REASON_CODE] != null)
                {
                    SetErrorMessage(CyberSourceCS.GetErrorDesc(Request[WebConstants.Request.REASON_CODE]));
                }
            }
        }

        protected void btnContinue_Click(object sender, ImageClickEventArgs e)
        {
            string url = AppSettings[WebConstants.Config.CYBER_SOURCE_URL];
            HttpWebRequest req = (HttpWebRequest)WebRequest.Create(url);
            string proxy = null;
            //clear it from session to keep the session as min as possible
            if (Request[WebConstants.Request.TRANSACTION_ID] != null)
            {
                SessionFactory.RemovePaymentDetails(Request[WebConstants.Request.TRANSACTION_ID]);
            }
            string transactionUId = InsertTransaction();
            if (transactionUId != null)
            {
                PaymentDetails paymentDetails = new PaymentDetails();
                paymentDetails.CardNumber = txtCardNumber.Text;
                paymentDetails.CardType = lstCardType.SelectedValue;
                paymentDetails.Country = txtBillingCountry.Text;
                paymentDetails.County = txtBillingCounty.Text;
                paymentDetails.ExpiryMonth = txtExpiryMonth.SelectedValue;
                paymentDetails.ExpiryYear = txtExpiryYear.SelectedValue;
                paymentDetails.FirstName = txtFirstName.Text;
                paymentDetails.LastName = txtLastName.Text;
                paymentDetails.PostCode = txtBillingZipCode.Text;
                paymentDetails.SecurityCode = txtSecurityCode.Text;
                paymentDetails.StartMonth = txtStartMonth.SelectedValue;
                paymentDetails.StartYear = txtStartYear.SelectedValue;
                paymentDetails.Street = txtBillingStreet.Text;
                paymentDetails.Telephone = txtTelephone.Text;
                paymentDetails.Town = txtBillingTown.Text;
                SessionFactory.AddPaymentDetails(transactionUId, paymentDetails);

                string data = "amount=" + Server.UrlEncode(Request["amount"]);
                data += "&orderNumber=" + Server.UrlEncode(transactionUId);
                data += "&currency=" + Server.UrlEncode(Request["currency"]);
                data += "&orderPage_timestamp=" + Server.UrlEncode(Request["orderPage_timestamp"]);
                data += "&merchantID=" + Server.UrlEncode(Request["merchantID"]);
                data += "&orderPage_transactionType=" + Server.UrlEncode(Request["orderPage_transactionType"]);
                data += "&orderPage_version=" + Server.UrlEncode(Request["orderPage_version"]);
                data += "&orderPage_serialNumber=" + Server.UrlEncode(Request["orderPage_serialNumber"]);
                data += "&orderPage_signaturePublic=" + Server.UrlEncode(Request["orderPage_signaturePublic"]);
                data += "&billTo_city=" + Server.UrlEncode(txtBillingCounty.Text);
                data += "&billTo_country=" + Server.UrlEncode(txtBillingCountry.Text);
                data += "&billTo_firstName=" + Server.UrlEncode(txtFirstName.Text);
                data += "&billTo_lastName=" + Server.UrlEncode(txtLastName.Text);
                data += "&billTo_street1=" + Server.UrlEncode(txtBillingStreet.Text);
                data += "&billTo_street2=" + Server.UrlEncode(txtBillingTown.Text);
                data += "&billTo_phoneNumber=" + Server.UrlEncode(txtTelephone.Text);
                data += "&billTo_postalCode=" + Server.UrlEncode(txtBillingZipCode.Text);
                data += "&card_accountNumber=" + Server.UrlEncode(txtCardNumber.Text);
                data += "&card_cardType=" + Server.UrlEncode(lstCardType.Text);
                data += "&card_cvNumber=" + Server.UrlEncode(txtSecurityCode.Text);
                data += "&card_expirationMonth=" + Server.UrlEncode(txtExpiryMonth.Text);
                data += "&card_expirationYear=" + Server.UrlEncode(txtExpiryYear.Text);
                data += "&card_startMonth=" + Server.UrlEncode(txtStartMonth.Text);
                data += "&card_startYear=" + Server.UrlEncode(txtStartYear.Text);
                data += "&orderPage_requestToken=" + Server.UrlEncode(System.Guid.NewGuid().ToString());


                data += "&recurringSubscriptionInfo_amount=" + Server.UrlEncode(Request["recurringSubscriptionInfo_amount"]);
                data += "&recurringSubscriptionInfo_numberOfPayments=" + Server.UrlEncode(Request["recurringSubscriptionInfo_numberOfPayments"]);
                data += "&recurringSubscriptionInfo_frequency=" + Server.UrlEncode(Request["recurringSubscriptionInfo_frequency"]);
                data += "&recurringSubscriptionInfo_automaticRenew=" + Server.UrlEncode(Request["recurringSubscriptionInfo_automaticRenew"]);
                data += "&recurringSubscriptionInfo_startDate=" + Server.UrlEncode(Request["recurringSubscriptionInfo_startDate"]);
                data += "&recurringSubscriptionInfo_signaturePublic=" + Server.UrlEncode(Request["recurringSubscriptionInfo_signaturePublic"]);


                byte[] buffer = Encoding.UTF8.GetBytes(data);
                try
                {
                    req.Method = "POST";
                    req.ContentType = "application/x-www-form-urlencoded";
                    req.ContentLength = buffer.Length;
                    req.Proxy = new WebProxy(proxy, true);
                    req.CookieContainer = new CookieContainer();

                    Stream reqst = req.GetRequestStream();
                    reqst.Write(buffer, 0, buffer.Length);

                    reqst.Flush();
                    reqst.Close();
                }
                catch (Exception ex)
                {

                    ex.StackTrace.ToString();
                }


                HttpWebResponse res = (HttpWebResponse)req.GetResponse();

                Stream resst = res.GetResponseStream();
                StreamReader sr = new StreamReader(resst);
                string response = sr.ReadToEnd();
 //               Response.Write(response);
            }
        }

        protected string InsertTransaction()
        {
            if (LoggedIsUser != null && Session[WebConstants.Session.TROLLEY] != null)
            {
                Transaction transaction = new Transaction();
                transaction.UserId = LoggedIsUser.UserID;
                transaction.CountryCode = ShoppingCart.GetCurrentCurrency().CountryCode;
                transaction.ExchangeRate = ShoppingCart.GetCurrentCurrency().ExchangeRate1;
                transaction.CreationTime = DateTime.Now;
                transaction.TransactionUID = System.Guid.NewGuid().ToString();
                transaction.TransactionDetails = new System.Data.Objects.DataClasses.EntityCollection<TransactionDetail>();
                foreach (ShoppingItem shoppingItem in (List<ShoppingItem>)Session[WebConstants.Session.TROLLEY])
                {
                    TransactionDetail detail = new TransactionDetail();
                    detail.ProductID = shoppingItem.ProductEntity.ProductID;
                    detail.ProductName = shoppingItem.ProductEntity.Name;
                    detail.Quantity = shoppingItem.Quantity;
                    detail.Duration = shoppingItem.DurationInMonths;
                    detail.Price = shoppingItem.Price;
                    if (shoppingItem.VersionEntity != null)
                    {
                        detail.VersionID = shoppingItem.VersionEntity.VersionID;
                        detail.VersionName = shoppingItem.VersionEntity.Name;
                    }
                    if (shoppingItem.ProductDetailEntity != null)
                    {
                        detail.ProductDetailID = shoppingItem.ProductDetailEntity.ProductDetailID;
                        detail.ProductDetailName = shoppingItem.ProductDetailEntity.ProductDetail1;
                    }
                    transaction.TransactionDetails.Add(detail);
                }
                DatabaseContext.AddToTransactions(transaction);
                DatabaseContext.SaveChanges();
                return transaction.TransactionUID;
            }
            return null;
        }

        protected void insertSignature3()
        {
            CyberSourceCS.insertSignature3(Response, GetTotalAmount().ToString(), ShoppingCart.GetCurrentCurrency().CountryCode, "subscription");
        }

        protected void insertSubscriptionSignature()
        {
            string today = String.Format("{0:yyyyMMdd}", DateTime.Now);
            CyberSourceCS.insertSubscriptionSignature(Response, GetTotalAmount().ToString(), today, "monthly", WebConstants.DEFAULT_DURATION.ToString(), "false");
        }


        protected double GetTotalAmount()
        {
            return ShoppingCart.GetTotalAmount();
        }

    }
}