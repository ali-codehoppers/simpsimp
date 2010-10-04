using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Simplicity.Web.Utilities;
using Simplicity.Web.BusinessObjects;

namespace Simplicity.Web
{
    public partial class PaymentDetail : GenericPage
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
            if (Request[WebConstants.Request.TRANSACTION_ID] != null)
            {
                PaymentDetails paymentDetails = SessionFactory.GetPaymentDetails(Request[WebConstants.Request.TRANSACTION_ID]);
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
    }
}