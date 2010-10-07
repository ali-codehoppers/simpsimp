using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Simplicity.Web.Utilities;

namespace Simplicity.Web
{
    public partial class UserAccount : GenericPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (LoggedIsUser == null)
            {
                RedirectToLogin();
            }
        }
        private bool ValidateFields()
        {
            if (oldpassword.Text.Equals(confirmoldPassowrd.Text) == false)
            {
                SetErrorMessage("Old Password do not match");
                return false;
            }
            if (passwordfield.Text.Equals(confirmpasswordfield.Text) == false)
            {
                SetErrorMessage("New Passwords do not match");
                return false;
            }
            String password=Utility.GetMd5Sum(oldpassword.Text);
            var query = from c in DatabaseContext.Users where (c.Email==LoggedIsUser.Email)&&(c.Password == password) select c;
            if (query.Any())
            {
                return true;
            }
            else{
                SetErrorMessage("Old Password is not correct");
                return false;
            }
            
        }
        protected void btnSave_Click(object sender, ImageClickEventArgs e)
        {
            if (ValidateFields())
            {
                var user = (from c in DatabaseContext.Users where c.Email == LoggedIsUser.Email select c).FirstOrDefault();
                user.Password = Utility.GetMd5Sum(passwordfield.Text);
                DatabaseContext.SaveChanges();
            }
        }
    }
}