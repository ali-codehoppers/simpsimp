using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Simplicity.Web.Utilities;
using Simplicity.Data;

namespace Simplicity.Web.Admin
{
    public partial class ChangePassword : GenericPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        private bool ChangeValidateFields()
        {
            if (oldpassword.Text.Equals(confirmoldPassowrd.Text) == false)
            {
                SetErrorMessage("Old Password do not match");
                return false;
            }
            if (newpasswordfield.Text.Equals(newconfirmpasswordfield.Text) == false)
            {
                SetErrorMessage("New Passwords do not match");
                return false;
            }
            String password = Utility.GetMd5Sum(oldpassword.Text);

            List<User> user = (from UserTable in DatabaseContext.Users where (UserTable.Email == LoggedIsUser.Email) && (UserTable.Password == password) select UserTable).ToList();
            if (user.Any())
            {
                return true;
            }
            else
            {
                SetErrorMessage("Old Password is not correct");
                return false;
            }

        }
        protected void ChangebtnSave_Click(object sender, EventArgs e) {
            if (ChangeValidateFields())
            {
                int userId = Int32.Parse(Session["selectedUserValue"].ToString());
                User user = (from UserTable in DatabaseContext.Users where UserTable.UserID == userId select UserTable).FirstOrDefault();
                user.Password = Utility.GetMd5Sum(newpasswordfield.Text);
                DatabaseContext.SaveChanges();
                SetSuccessMessage("Password change successfully.");
            }
        }
    }
}