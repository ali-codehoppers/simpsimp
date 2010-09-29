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
            foreach (var n in users)
            {

                if ((n.ReminderQuestionID == listForgotPasswordQuestion.SelectedIndex) && (n.ReminderAnswer.Equals(Utility.GetMd5Sum(txtForgotPasswordAnswer.Text))))
                {

                }


            }
        }
    }
}