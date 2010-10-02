using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Simplicity.Data;
using Simplicity.Web.Utilities;


namespace Simplicity.Web
{
    public partial class Forget : GenericPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ForgetButtonClick(object sender, ImageClickEventArgs e)
        {

            var query = from c in DatabaseContext.Users where (c.Email == username.Text) select c;
            var users = query.ToList();
            if (users.Any())
            {

                if ((users.FirstOrDefault().ReminderQuestionID == listForgotPasswordQuestion.SelectedIndex) && (users.FirstOrDefault().ReminderAnswer.Equals(
                    Utility.GetMd5Sum(txtForgotPasswordAnswer.Text))))
                {
                    string password = Utility.RandomString(8, true);
                    users.FirstOrDefault().Password = Utility.GetMd5Sum(password);
                    EmailUtility.SendPasswordEmail(users.FirstOrDefault().Email, password);
                    DatabaseContext.SaveChanges();
                    Response.Redirect("~/CustomerLogin.aspx?" + WebConstants.Request.FROM_PAGE + "=ForgotPassword");
                }
                else
                {
                    SetErrorMessage(WebConstants.Messages.Error.INVALID_CREDENTIALS);
                }
            }
            else
            {
                SetErrorMessage(WebConstants.Messages.Error.INVALID_CREDENTIALS);
            }
            
        }
    }
}