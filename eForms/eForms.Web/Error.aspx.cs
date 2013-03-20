using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using eForms.Web.Utilities;

namespace eForms.Web
{
    public partial class Error : GenericPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SetErrorMessage(Request["message"]);
        }
    }
}