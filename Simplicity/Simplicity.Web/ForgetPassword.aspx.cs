using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Simplicity.Data;


namespace Simplicity.Web
{
    public partial class Forget : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ForgetButtonClick(object sender, ImageClickEventArgs e)
        {
            var context = new Simplicity.Data.SimplicityEntities();

            var query = from c in context.Users where (c.Email == username.Text) select c;
            var users = query.ToList();
            if (users.Any())
            {

                if ((users.FirstOrDefault().ReminderQuestionID == listForgotPasswordQuestion.SelectedIndex) && (users.FirstOrDefault().ReminderAnswer.Equals(
                    Simplicity.Data.Common.Utility.GetMd5Sum(txtForgotPasswordAnswer.Text))))
                {
                    string password = Simplicity.Data.Common.Utility.RandomString(8, true);
                    users.FirstOrDefault().Password = Simplicity.Data.Common.Utility.GetMd5Sum(password);
                    Simplicity.Data.Common.EmailUtility.SendPasswordEmail(users.FirstOrDefault().Email, password);
                    context.SaveChanges();
                    Response.Redirect("~/pages/Login.aspx?" + Simplicity.Data.Common.WebConstants.Request.FROM_PAGE + "=ForgotPassword");
                }
                else
                {   
                    SetErrorMessage();
                }
            }
            else
            {
                SetErrorMessage();
            }
            
        }
        protected void SetErrorMessage()
        {
        }
    }
}