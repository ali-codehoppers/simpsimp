using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Simplicity.Web.Utilities;
using Simplicity.Data;
using System.Text;


namespace Simplicity.Web.Common.Controls
{
    public partial class CallMeUserControl : System.Web.UI.UserControl
    {
        private string pageName;
        public string PageName
        {
            get { return pageName; }
            set { pageName = value; }
        }
        private bool viewDemo;
        public bool ViewDemo
        {
            get { return viewDemo; }
            set { viewDemo = value; }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void imgBtnSubmit_Click(object sender, ImageClickEventArgs e)
        {
            if (ValidateFields())
            {
                string emailContents = null;
                var context = new SimplicityEntities();
                var user = new CallUser{Forename=txtFirstName.Text,Surname=txtSurName.Text,CellNumber=txtMobile.Text,Telephone=txtTelephone.Text,Email=txtEmail.Text,CompanyName=txtCompanyName.Text,CompanyWebsite=txtCompanyWebsite.Text,
                   AddressFull=txtPostalAddress.Text,PostalCode= txtPostCode.Text,Comments=txtComments.Text,ViewDemo= viewDemo,ReceiveEmails=(Request[WebConstants.Request.RECEIVE_EMAILS] != "") ? true : false};
                var product = new CallUserProduct();
                
                    if (cbHS.Checked)
                    {
                        product.CallMeID=user.CallMeID;
                        product.ProductName="Simplicity H&S Live";
                        emailContents += "<B> Product: </B>Simplicity H&S Live<BR/>";
                    }
                    if (cbHandyGas.Checked)
                    {
                        product.CallMeID=user.CallMeID;
                        product.ProductName="SimplicityHandyGas";
                        emailContents += "<B> Product: </B>SimplicityHandyGas<BR/>";
                    }
                    if (cbHandyLEC.Checked)
                    {
                        product.CallMeID = user.CallMeID;
                        product.ProductName="SimplicityHandyLEC";
                        emailContents += "<B> Product: </B>SimplicityHandyLEC<BR/>";
                    }
                    if (cbHandyServe.Checked)
                    {
                        product.CallMeID = user.CallMeID;
                        product.ProductName="SimplicityHandyServe";
                        emailContents += "<B> Product: </B>SimplicityHandyServe<BR/>";
                    }
                    if (cbEAS.Checked)
                    {
                        product.CallMeID = user.CallMeID;
                        product.ProductName= "SimplicityEAS";
                        emailContents += "<B> Product: </B>SimplicityEAS<BR/>";
                    }
                    user.CallUserProducts.Add(product);
                    context.CallUsers.AddObject(user);
                    context.SaveChanges();
                if (ViewDemo)
                {
                    Session[WebConstants.Session.VIEW_DEMO] = true;
                    EmailUtility.SendViewDemoEmailToUser(txtEmail.Text);
                    EmailUtility.SendViewDemoEmailToAdmin(emailContents);
                    Response.Redirect("~/WatchDemo.aspx");
                }
               
                {
                    SetSuccessMessage("Your request has been submited.");
                    EmailUtility.SendCallMeEmailToAdmin(emailContents);
                    EmailUtility.SendCallMeEmailToUser(txtEmail.Text);
                    Response.Redirect("~/Default.aspx");
                }
            }
        }
        private string GetEmailContent(CallUser callMe)
        {
            StringBuilder email = new StringBuilder();
            email.Append("<B> First Name: </B>").Append(callMe.Forename).Append("<BR/>");
            email.Append("<B> SurName: </B>").Append(callMe.Surname).Append("<BR/>");
            email.Append("<B> Telephone: </B>").Append(callMe.Telephone).Append("<BR/>");
            email.Append("<B> Mobile: </B>").Append(callMe.CellNumber).Append("<BR/>");
            email.Append("<B> EMail: </B>").Append(callMe.Email).Append("<BR/>");
            email.Append("<B> Company Name: </B>").Append(callMe.CompanyName).Append("<BR/>");
            email.Append("<B> Company Website: </B>").Append(callMe.CompanyWebsite).Append("<BR/>");
            email.Append("<B> Postal Address: </B>").Append(callMe.AddressFull).Append("<BR/>");
            email.Append("<B> Postcode: </B>").Append(callMe.PostalCode).Append("<BR/>");
            email.Append("<B> Comments: </B>").Append(callMe.Comments).Append("<BR/>");
            return email.ToString();
        }
        private bool ValidateFields()
        {
            if (txtEmail.Text.ToLower().Equals(txtConfirmEmail.Text.ToLower()) == false)
            {
                SetErrorMessage("Email Addresses do not match");
                return false;
            }
            if (cbEAS.Checked == false && cbHandyGas.Checked == false && cbHandyLEC.Checked == false && cbHandyServe.Checked == false && cbHS.Checked == false)
            {
                SetErrorMessage("Atleast one product must be selected.");
                return false;
            }
            return true;
        }
        protected void SetErrorMessage(string message)
        {
            SetMessage("success", "", false);
            SetMessage("error", message, true);
        }
        private void SetMessage(string type, string message, bool visible)
        {
            Panel panel = (Panel)FindControl(this.Page.Master, type + "Panel");
            Label label = (Label)FindControl(this.Page.Master, type + "Message");
            if (panel != null && label != null)
            {
                panel.Visible = visible;
                label.Text = message;
            }
        }
        protected Control FindControl(Control root, string controlId)
        {
            if (root.ID == controlId)
                return root;

            foreach (Control control in root.Controls)
            {
                Control foundControl = FindControl(control, controlId);
                if (foundControl != null)
                    return foundControl;
            }

            return null;
        }
        protected void SetSuccessMessage(string message)
        {
            SetMessage("error", "", false);
            SetMessage("success", message, true);
        }
    }
    
}