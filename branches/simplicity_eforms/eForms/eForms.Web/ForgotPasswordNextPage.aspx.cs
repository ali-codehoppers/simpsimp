using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using eForms.Web.Utilities;
using eForms.Data;

namespace eForms.Web
{
    public partial class ForgotPasswordNextPage : GenericPage
    {
        User user = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["FORGOT_PASSWORD_USER"]==null)
            {
                Response.Redirect("~/ForgotPassword.aspx");
            }
            String username = (String)Session["FORGOT_PASSWORD_USER"];
            List<User> users = (from User in DatabaseContext.Users where (User.Email == username) select User).ToList();
            if (users.Any())
            {
                user = users.FirstOrDefault();
                listForgotPasswordQuestionText.Text = user.ReminderQuestion;
            }
        }


        protected void ForgetButtonClick(object sender, ImageClickEventArgs e)
        {
            if (user != null)
            {

                if ((user.ReminderAnswer.Equals(Utility.GetMd5Sum(txtForgotPasswordAnswer.Text))))
                {
                    string password = Utility.RandomString(8, true);
                    user.Password = Utility.GetMd5Sum(password);
                    EmailUtility.SendPasswordEmail(user, user.Email, password);
                    DatabaseContext.SaveChanges();
                    Session.Remove("FORGOT_PASSWORD_USER");
                    Response.Redirect("~/CustomerLogin.aspx?" + WebConstants.Request.FROM_PAGE + "=ForgotPassword");
                }
                else
                {
                    SetErrorMessage("Answer is not Correct");
                }

            }
            else
            {
                SetErrorMessage("User does not exist");
            }

        }
    }
}