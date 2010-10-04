using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Simplicity.Web.BusinessObjects;

namespace Simplicity.Web.Utilities
{
    public class SessionFactory
    {
        public SessionFactory()
        {
            //
            // TODO: Add constructor logic here
            //
        }
        public static void AddPaymentDetails(string transactionId, PaymentDetails paymentDetails)
        {
            Dictionary<string, PaymentDetails> paymentHash = null;
            if (HttpContext.Current.Session[WebConstants.Session.PAYMENT_DETAILS] == null)
            {
                HttpContext.Current.Session[WebConstants.Session.PAYMENT_DETAILS] = new Dictionary<string, PaymentDetails>();
            }
            paymentHash = (Dictionary<string, PaymentDetails>)HttpContext.Current.Session[WebConstants.Session.PAYMENT_DETAILS];
            if (paymentHash.ContainsKey(transactionId))
            {
                paymentHash[transactionId] = paymentDetails;
            }
            else
            {
                paymentHash.Add(transactionId, paymentDetails);
            }
            HttpContext.Current.Session[WebConstants.Session.PAYMENT_DETAILS] = paymentHash;
        }
        public static PaymentDetails GetPaymentDetails(string transactionId)
        {
            if (HttpContext.Current.Session[WebConstants.Session.PAYMENT_DETAILS] != null)
            {
                return ((Dictionary<string, PaymentDetails>)HttpContext.Current.Session[WebConstants.Session.PAYMENT_DETAILS])[transactionId];
            }
            return null;
        }

        public static void RemovePaymentDetails(string transactionId)
        {
            if (HttpContext.Current.Session[WebConstants.Session.PAYMENT_DETAILS] != null)
            {
                ((Dictionary<string, PaymentDetails>)HttpContext.Current.Session[WebConstants.Session.PAYMENT_DETAILS]).Remove(transactionId);
            }
        }
    }
}