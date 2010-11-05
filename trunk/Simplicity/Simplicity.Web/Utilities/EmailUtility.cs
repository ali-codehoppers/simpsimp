using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using Simplicity.Data;
using System.Net.Mail;

namespace Simplicity.Web.Utilities
{
    public class EmailUtility
    {
        private static string FROM_ADDRESS = ConfigurationSettings.AppSettings[WebConstants.Config.FROM_EMAIL_ADDRESS];
        private static string SMTP_SERVER = "smtpauth.moose.co.uk";
        private static string USER_NAME = "andrewcowie";
        private static string PASSWORD = "access";

        public static void SendEmail(string contents)
        {
            System.Net.Mail.MailMessage message = new System.Net.Mail.MailMessage();
            message.To.Add("alibinjamil@gmail.com");
            message.Subject = "This is the Subject line";
            message.From = new System.Net.Mail.MailAddress("From@online.microsoft.com");
            message.Body = "This is the message body";
            System.Net.Mail.SmtpClient smtp = new System.Net.Mail.SmtpClient("smtpauth.moose.co.uk");
            System.Net.NetworkCredential SMTPUserInfo = new System.Net.NetworkCredential("andrewcowie", "access");
            smtp.UseDefaultCredentials = false;
            smtp.Credentials = SMTPUserInfo;
            smtp.Send(message);
        }

        public static void SendEmail(MailMessage message)
        {
            try
            {
                var context = new SimplicityEntities();
                
                string toEmails = "";
                string toNames = "";
                foreach (MailAddress address in message.To)
                {
                    toNames += address.DisplayName + ",";
                    toEmails += address.Address + ",";
                }
                var email=new EmailQueue{LogTime=DateTime.Now, NumOfTries=1, FromName="Simplicity4Business", FromAddress=FROM_ADDRESS, ToNames=toNames.Substring(0, toNames.Length - 1), ToAddresses=toEmails.Substring(0, toEmails.Length),
                    Subject=message.Subject, Body=message.Body, SentTime=null};
                context.AddToEmailQueues(email);
                context.SaveChanges();

            }
            catch (Exception ex)
            {

            }
        }

        /*public static string GetAccountCreationHTML(string customerUID, string verificationCode,string html)
        {
            string url = HttpContext.Current.Request.Url.ToString();
            string[] paths = url.Split('/');
            url = url.Replace(paths[paths.Length - 1], "VerifyEmail.aspx");
            url += "?" + WebConstants.Request.USER_UID + "=" + customerUID;
            url += "&" + WebConstants.Request.VERIFICATION_CODE + "=" + Utility.GetMd5Sum(verificationCode);
            EmailTemplateFactory.Instance.Paramters.Add("##URL##", url);
            EmailTemplates.EmailTemplateEntityRow emailTemplate = EmailTemplateFactory.Instance.GetEmailContents(WebConstants.TemplateNames.ACTIVATION);
            if (emailTemplate != null)
            {
                html = emailTemplate.html.Replace(
                html = ReplaceAttributes(html);
            }
            else
            {
                html = "Thank you for registering with Simplicity4Business. <br/> <br/>"
                            + " Please click the following URL to activate your account. <br/><br/>"
                            + " <a href='" + url + "'>" + url + "</a>";
            }
            return html;
        }

        public static string GetAccountCreationHTML(string password, string html)
        {
            string url = HttpContext.Current.Request.Url.ToString();
            string[] paths = url.Split('/');
            url = url.Replace(paths[paths.Length - 1], "VerifyEmail.aspx");
            url += "?" + WebConstants.Request.USER_UID + "=" + customerUID;
            url += "&" + WebConstants.Request.VERIFICATION_CODE + "=" + Utility.GetMd5Sum(verificationCode);
            html = html.Replace("##URL##", url);
            html = ReplaceAttributes(html);
            return html;
        }*/


        public static void SendAccountCreationEmail(User customer, string password)
        {
            if (customer != null)
            {
                MailMessage message = new MailMessage();
                message.To.Add(new MailAddress(customer.Email));
                string url = HttpContext.Current.Request.Url.ToString();
                string[] paths = url.Split('/');
                url = url.Replace(paths[paths.Length - 1], "VerifyEmail.aspx");
                url += "?" + WebConstants.Request.USER_UID + "=" + customer.UserUID;
                url += "&" + WebConstants.Request.VERIFICATION_CODE + "=" + Utility.GetMd5Sum(customer.VerificationCode);
                EmailTemplateFactory templateFactory = new EmailTemplateFactory(customer);
                templateFactory.Paramters.Add("##PASSWORD##", password);
                templateFactory.Paramters.Add("##URL##", url);
                string Imageurl = HttpContext.Current.Request.Url.ToString();
                templateFactory.Paramters.Add("##ImageUrl##", Imageurl);
                EmailTemplate emailTemplate = templateFactory.GetEmailContents(WebConstants.TemplateNames.ACTIVATION);
                if (emailTemplate != null)
                {
                    message.Body = emailTemplate.HTML;
                    message.Subject = emailTemplate.Subject;
                }
                else
                {
                    message.Body = "Thank you for registering with Simplicity4Business. <br/> <br/>"
                                + " Please click the following URL to activate your account. <br/><br/>"
                                + " <a href=' " + url + "'>" + url + "</a>" + "Username: " + customer.Email + "<br/>Password: " + password;
                    message.Subject = "Activation Code for Simplicity for Business";
                }
                message.IsBodyHtml = true;
                SendEmail(message);
            }
        }

        public static void SendUserAccountCreationEmail(User customer, string password,string reminderAnswer)
        {
            if (customer != null)
            {
                MailMessage message = new MailMessage();
                message.To.Add(new MailAddress(customer.Email));
                string url = HttpContext.Current.Request.Url.ToString();
                string[] paths = url.Split('/');
                url = url.Replace(paths[paths.Length - 1], "VerifyEmail.aspx");
                url += "?" + WebConstants.Request.USER_UID + "=" + customer.UserUID;
                url += "&" + WebConstants.Request.VERIFICATION_CODE + "=" + Utility.GetMd5Sum(customer.VerificationCode);
                EmailTemplateFactory templateFactory = new EmailTemplateFactory(customer);
                templateFactory.Paramters.Add("##PASSWORD##", password);
                templateFactory.Paramters.Add("##URL##", url);
                templateFactory.Paramters.Add("##REMINDER_QUESTION##",customer.ReminderQuestion);
                templateFactory.Paramters.Add("##REMINDER_ANSWER##", reminderAnswer);
                string Imageurl = HttpContext.Current.Request.Url.ToString();
                templateFactory.Paramters.Add("##ImageUrl##", Imageurl);
                EmailTemplate emailTemplate = templateFactory.GetEmailContents(WebConstants.TemplateNames.USERCREATION);
                if (emailTemplate != null)
                {
                    message.Body = emailTemplate.HTML;
                    message.Subject = emailTemplate.Subject;
                }
                else
                {
                    message.Body = "Thank you for registering with Simplicity4Business. <br/> <br/>"
                                + " Please click the following URL to activate your account. <br/><br/>"
                                + " <a href=' " + url + "'>" + url + "</a>"+"Username: "+ customer.Email +"<br/>Password: "+password+"<br/> Reminder Question: "
                                + customer.ReminderQuestion +"<br/> Reminder Answer: "+reminderAnswer;
                    message.Subject = "Activation Code for Simplicity for Business";
                }
                message.IsBodyHtml = true;
                SendEmail(message);
            }
        }
        public static void SendPasswordEmail(User customer, string emailAddress, string password)
        {
            MailMessage message = new MailMessage();
            message.To.Add(new MailAddress(emailAddress));
            EmailTemplateFactory templateFactory = new EmailTemplateFactory(customer);
            templateFactory.Paramters.Add("##PASSWORD##", password);
            EmailTemplate emailTemplate = templateFactory.GetEmailContents(WebConstants.TemplateNames.PASSWORD);
            if (emailTemplate != null)
            {
                message.Body = emailTemplate.HTML;
                message.Subject = emailTemplate.Subject;
            }
            else
            {
                message.Subject = "Simplicity Account Password";
                message.Body = "Your password is " + password;
            }
            message.IsBodyHtml = true;
            //+ " Or click on the following link: <br/>" + url;
            SendEmail(message);
        }

        public static void SendCallMeEmailToAdmin(CallUser customer,string contents, string request)
        {
            SendCallMeEmailToAdmin(customer, contents, "Simplicity Call Me Request", request);
        }

        public static void SendViewDemoEmailToAdmin(CallUser customer, string contents, string request)
        {
            SendCallMeEmailToAdmin(customer, contents, "Simplicity View Demo Request", request);
        }

        private static void SendCallMeEmailToAdmin(CallUser customer,string contents, string subject, string request)
        {
            MailMessage message = new MailMessage();
            string[] adminEmailAddresses = ConfigurationSettings.AppSettings[WebConstants.Config.ADMIN_EMAIL_ADDRESSES].Split(',');
            foreach (string adminEmailAddress in adminEmailAddresses)
            {
                message.To.Add(new MailAddress(adminEmailAddress));
            }
            EmailTemplateFactory templateFactory = new EmailTemplateFactory(customer);
            templateFactory.Paramters.Add("##REQUEST##", request);
            templateFactory.Paramters.Add("##FIRSTNAME##",customer.Forename);
            templateFactory.Paramters.Add("##SURNAME##",customer.Surname);
            templateFactory.Paramters.Add("##USEREMAIL##",customer.Email);
            templateFactory.Paramters.Add("##CONTENTS##",contents);
            EmailTemplate emailTemplate;
            if (request == "Call ME")
            {
                emailTemplate = templateFactory.GetEmailContents(WebConstants.TemplateNames.CALLADMIN);
            }
            else{
                emailTemplate = templateFactory.GetEmailContents(WebConstants.TemplateNames.VIEWDEMOADMIN);
            }
            if (emailTemplate != null)
            {
                message.Body = emailTemplate.HTML;
                message.Subject = emailTemplate.Subject;
            }
            else
            {
                message.Subject = subject;
                message.Body = contents;
            }
            message.IsBodyHtml = true;
            SendEmail(message);
        }

        public static void SendCallMeEmailToUser(CallUser customer,string email)
        {
            MailMessage message = new MailMessage();
            message.To.Add(new MailAddress(email));
            EmailTemplateFactory templateFactory = new EmailTemplateFactory(customer);
            EmailTemplate emailTemplate = templateFactory.GetEmailContents(WebConstants.TemplateNames.CALLUSER);
            if (emailTemplate != null)
            {
                message.Body = emailTemplate.HTML;
                message.Subject = emailTemplate.Subject;
            }
            else
            {
                message.Subject = "Simplicity Call Me Request";
                message.Body = "Thank you for submitting your request. We will call you back shortly.";
            }
            message.IsBodyHtml = true;
            SendEmail(message);
        }

        public static void SendPaymentEmailtoClient(User customer,string firstName, string lastName, string cardNumber, string expiryMonth, string expiryYear, string cardType, string amountText, string userEmail)
        {
            MailMessage message = new MailMessage();
            message.To.Add(new MailAddress(userEmail));
            EmailTemplateFactory templateFactory = new EmailTemplateFactory(customer);
            templateFactory.Paramters.Add("##FIRSTNAME##", firstName);
            templateFactory.Paramters.Add("##LASTNAME##", lastName);
            templateFactory.Paramters.Add("##CARDNUMBER##", cardNumber);
            templateFactory.Paramters.Add("##EXPIRYMONTH##", expiryMonth);
            templateFactory.Paramters.Add("##EXPIRYYEAR##", expiryYear);
            templateFactory.Paramters.Add("##CARDTYPE##", cardType);
            templateFactory.Paramters.Add("##AMOUNTTEXT##", amountText);
            EmailTemplate emailTemplate = templateFactory.GetEmailContents(WebConstants.TemplateNames.PAYMENT);
            if (emailTemplate != null)
            {
                message.Body = emailTemplate.HTML;
                message.Subject = emailTemplate.Subject;
            }
            else
            {
                message.Subject = "Simplicity Payment Receipt";
                message.Body = "<b>Card holder's name:</b>" + firstName + "&nbsp;" + lastName + "<br/>";
                message.Body += "<b>Card Number:</b>" + cardNumber + "<br/>";
                message.Body += "<b>Card Expiry:</b>" + expiryMonth + "/" + expiryYear + "<br/>";
                message.Body += "<b>Cart Type:</b>" + cardType + "<br/>";
                message.Body += "<b>Amount Charged:</b>" + amountText + "<br/>";
            }
            message.IsBodyHtml = true;
            SendEmail(message);
        }
        public static void SendPaymentEmailtoAdmin(User customer, string firstName, string lastName, string cardNumber, string expiryMonth, string expiryYear, string cardType, string amountText, string userEmail)
        {
            MailMessage message = new MailMessage();
            string[] adminEmailAddresses = ConfigurationSettings.AppSettings[WebConstants.Config.ADMIN_EMAIL_ADDRESSES].Split(',');
            foreach (string adminEmailAddress in adminEmailAddresses)
            {
                message.To.Add(new MailAddress(adminEmailAddress));
            }
            EmailTemplateFactory templateFactory = new EmailTemplateFactory(customer);
            templateFactory.Paramters.Add("##FIRSTNAME##", firstName);
            templateFactory.Paramters.Add("##LASTNAME##", lastName);
            templateFactory.Paramters.Add("##CARDNUMBER##", cardNumber);
            templateFactory.Paramters.Add("##EXPIRYMONTH##", expiryMonth);
            templateFactory.Paramters.Add("##EXPIRYYEAR##", expiryYear);
            templateFactory.Paramters.Add("##CARDTYPE##", cardType);
            templateFactory.Paramters.Add("##AMOUNTTEXT##", amountText);
            EmailTemplate emailTemplate = templateFactory.GetEmailContents(WebConstants.TemplateNames.PAYMENT);
            if (emailTemplate != null)
            {
                message.Body = emailTemplate.HTML;
                message.Subject = "Copy of Customer "+emailTemplate.Subject;
            }
            else
            {
                message.Subject = "Copy of Customer Simplicity Payment Receipt";
                message.Body = "<b>Card holder's name:</b>" + firstName + "&nbsp;" + lastName + "<br/>";
                message.Body += "<b>Card Number:</b>" + cardNumber + "<br/>";
                message.Body += "<b>Card Expiry:</b>" + expiryMonth + "/" + expiryYear + "<br/>";
                message.Body += "<b>Cart Type:</b>" + cardType + "<br/>";
                message.Body += "<b>Amount Charged:</b>" + amountText + "<br/>";
            }
            message.IsBodyHtml = true;
            SendEmail(message);
        }
        public static void SendViewDemoEmailToUser(CallUser customer,string email)
        {
            MailMessage message = new MailMessage();
            message.To.Add(new MailAddress(email));
            EmailTemplateFactory templateFactory = new EmailTemplateFactory(customer);
            EmailTemplate emailTemplate = templateFactory.GetEmailContents(WebConstants.TemplateNames.VIEWDEMO);
            if (emailTemplate != null)
            {
                message.Body = emailTemplate.HTML;
                message.Subject = emailTemplate.Subject;
            }
            else
            {
                message.Subject = "Simplicity View Demo Request";
                message.Body = "Thank you for Viewing Demo.";
            }
            message.IsBodyHtml = true;
            
            SendEmail(message);
        }
    }
}