using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Simplicity.Web.Utilities;

namespace Simplicity.Web
{
    public partial class VerifyEmail : GenericPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request["USER_UID"] != null && Request["VERIFICATION_CODE"] != null)
            {
                string userUID = Request["USER_UID"];
                Simplicity.Data.User user = (from u in DatabaseContext.Users where u.UserUID == userUID select u).FirstOrDefault();
                if (user != null)
                {
                    if (user.Verified)
                    {
                        SetErrorMessage("Your account is already verified");
                    }
                    else
                    {
                        user.Verified = true;
                        user.LastAmendmentDate = DateTime.Now;
                        DatabaseContext.SaveChanges();
                        SetSuccessMessage("Account verified successfully");
                    }
                }
                else
                {
                    SetErrorMessage("Your account can not be verified. Please contact administrator");
                }
            }
        }
    }
}