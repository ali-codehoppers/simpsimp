using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Simplicity.Data;

namespace Simplicity.Web
{
    public partial class CustomerLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.Cookies["myCookie"] != null)
                {
                    HttpCookie cookie = Request.Cookies.Get("myCookie");
                    username.Text = cookie.Values["username"];
                    password.Text = cookie.Values["password"];
                    var check = new UserClass(); ;
                    Boolean result = check.checkUser(username.Text, password.Text);
                    if (result)
                    {
                        Response.Redirect("Login.aspx");
                    }
                    else
                    {
                        Label1.Visible = true;
                        Label1.Text = "Username or Password is Incorrect";
                    }
                }
            }
        }

        protected void LoginButtonClick(object sender, ImageClickEventArgs e)
        {
            var check = new UserClass(); 
            Boolean result=check.checkUser(username.Text, password.Text);
            if (result)
            {
                Response.Redirect("Login.aspx");
            }
            else {
                Label1.Visible = true;
                Label1.Text="Username or Password is Incorrect";
            }
        }

        protected void RememberCheckedChanged(object sender, EventArgs e)
        {
            HttpCookie myCookie = new HttpCookie("myCookie");
            if (CheckBox1.Checked)
            {
                myCookie.Values.Add("username", username.Text);
                myCookie.Values.Add("password", password.Text);
                myCookie.Expires = DateTime.Now.AddDays(15);
            }
            else
            {
                myCookie.Values.Add("username", string.Empty);
                myCookie.Values.Add("password", string.Empty);
                myCookie.Expires = DateTime.Now.AddMinutes(5);
            }
            Response.Cookies.Add(myCookie);
        }
        
    }
}