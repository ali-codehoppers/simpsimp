<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CallMeUserControl.ascx.cs"
    Inherits="Simplicity.Web.Common.Controls.CallMeUserControl" %>
<div class="headstyle">
    <h2>
        <span style="color: #cccccc;">
            <%=PageName%></h2>
</div>
<asp:Panel ID="errorPanel" runat="server" CssClass="error" Visible="false" Style="margin-top: 75px;
    margin-left: 0px;">
    <div style="float: left">
        <asp:Image ID="Image1" ImageUrl="~/Images/error.png" runat="server" />
    </div>
    <div style="float: left; margin-left: 5px; margin-top: 5px;">
        <asp:Label runat="server" ID="errorMessage"></asp:Label>
    </div>
    <div style="clear: both">
    </div>
</asp:Panel>
<asp:Panel ID="successPanel" runat="server" CssClass="success" Visible="false" Style="margin-top: 75px;
    margin-left: 0px;">
    <div style="float: left">
        <asp:Image ID="Image2" ImageUrl="~/Images/success.png" runat="server" />
    </div>
    <div style="float: left; margin-left: 5px; margin-top: 5px;">
        <asp:Label runat="server" ID="successMessage"></asp:Label>
    </div>
    <div style="clear: both">
    </div>
</asp:Panel>
<div class="loginhead">
    <img src="../../Images/subheading_bar.jpg" alt="" width="565" height="21" />
</div>
<div id="CallMe">
    <div class="row">
        <div class="col1">
            First Name
        </div>
        <div class="col2">
            <asp:TextBox ID="txtFirstName" CssClass="callme_field_big" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rf10" runat="server" ErrorMessage="* Enter First Name"
                ControlToValidate="txtFirstName" CssClass="CallMeErrorMsg"></asp:RequiredFieldValidator>
        </div>
    </div>
    <div class="row">
        <div class="col1">
            Surname
        </div>
        <div class="col2">
            <asp:TextBox ID="txtSurName" CssClass="callme_field_big" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rf11" runat="server" ErrorMessage="* Enter Surname"
                ControlToValidate="txtSurName" CssClass="CallMeErrorMsg"></asp:RequiredFieldValidator>
        </div>
    </div>
    <div class="row">
        <div class="col1">
            Telephone</div>
        <div class="col2">
            <asp:TextBox ID="txtTelephone" CssClass="callme_field_big" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rf12" runat="server" ErrorMessage="* Enter Telephone"
                ControlToValidate="txtTelephone" CssClass="CallMeErrorMsg"></asp:RequiredFieldValidator>
        </div>
    </div>
    <div class="row">
        <div class="col1">
            Mobile</div>
        <div class="col2">
            <asp:TextBox ID="txtMobile" CssClass="callme_field_big" runat="server"></asp:TextBox>
        </div>
    </div>
    <div class="row">
        <div class="col1">
            Email</div>
        <div class="col2">
            <asp:TextBox ID="txtEmail" CssClass="callme_field_big" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rf1" runat="server" ErrorMessage="* Enter Email"
                ControlToValidate="txtEmail" CssClass="CallMeErrorMsg"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="* Enter Email Address"
                ControlToValidate="txtEmail" CssClass="CallMeErrorMsg" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </div>
    </div>
    <div class="row">
        <div class="col1">
            Confirm Email</div>
        <div class="col2">
            <asp:TextBox ID="txtConfirmEmail" CssClass="callme_field_big" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rf2" runat="server" ErrorMessage="* Enter Confirm Email"
                ControlToValidate="txtConfirmEmail" CssClass="CallMeErrorMsg"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="* Enter Email Address"
                ControlToValidate="txtConfirmEmail" CssClass="CallMeErrorMsg" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </div>
    </div>
</div>
<div class="dotted_line" style="margin-top: 5px; width: 70%; margin-left: 90px;">
</div>
<div id="CallMeProduct">
    <div style="font-weight: bold; padding-bottom: 10px;">
        <h4>Select Products interested in</h4>
    </div>
    <div class="row">
        <div class="col2">
            <asp:CheckBox ID="cbEAS" runat="server" Text="" Selected="false" />
        </div>
        <div class="col1">
            Simplicity EAS</div>
        <div class="col2">
            <asp:CheckBox ID="cbHS" runat="server" Text="" Selected="false" />
        </div>
        <div class="col1">
            Simplicity H&S live</div>
    </div>
    <div style="clear:both;padding-top: 10px;">
    </div>
    <div class="row">
        <div class="col2">
            <asp:CheckBox ID="cbHandyGas" runat="server" Text="" Selected="false" />
        </div>
        <div class="col1">
            Simplicity Handy Gas</div>
        <div class="col2">
            <asp:CheckBox ID="cbHandyServe" runat="server" Text="" Selected="false" />
        </div>
        <div class="col1">
            Simplicity Handy Serve</div>
    </div>
        <div style="clear:both;padding-top: 10px;">
    </div>
    <div class="row">
        <div class="col2">
            <asp:CheckBox ID="cbHandyLEC" runat="server" Text="" Selected="false" />
        </div>
        <div class="col1">
            Simplicity Handy LEC</div>
    </div>
</div>
<div class="dotted_line" style="margin-top: 20px; width: 70%; margin-left: 90px;">
</div>
<div id="callMeBack">
    <div class="row">
        <div class="col1">
            Company Name</div>
        <div class="col2">
            <asp:TextBox ID="txtCompanyName" CssClass="callme_field_big" runat="server"></asp:TextBox></div>
    </div>
    <div class="row">
        <div class="col1">
            Company website</div>
        <div class="col2">
            <asp:TextBox ID="txtCompanyWebsite" CssClass="callme_field_big" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="* Enter Company Website"
                ControlToValidate="txtCompanyWebsite" CssClass="CallMeErrorMsg" ValidationExpression="http(s)?://([\w-]+\.)+[\w-]+(/[\w- ./?%&amp;=]*)?"></asp:RegularExpressionValidator>
        </div>
    </div>
    <div class="row">
        <div class="col1">
            Postal Address</div>
        <div class="col2">
            <asp:TextBox ID="txtPostalAddress" CssClass="callme_field_big" runat="server"></asp:TextBox></div>
    </div>
    <div class="row">
        <div class="col1">
            Postcode</div>
        <div class="col2">
            <asp:TextBox ID="txtPostCode" CssClass="callme_field_big" runat="server"></asp:TextBox></div>
    </div>
    <div class="row">
        <div class="col1">
            Comments</div>
        <div class="col2">
            <asp:TextBox ID="txtComments" CssClass="callme_textfield_big" runat="server" TextMode="MultiLine"></asp:TextBox></div>
    </div>
    <div class="row" style="margin-top: 20px;">
        <asp:CheckBox ID="cbEmails" runat="server" CssClass="col5" Text="Please indicate if you would like to receives further updates for products"
            Checked="true" />
    </div>
    <div class="row" style="margin-top: 10px; margin-left: 220px; margin-bottom: 20px;">
        <div style="padding-top: 10px; padding-right: 25px;">
            <asp:ImageButton ID="imgBtnSubmit" runat="server" ImageUrl="~/Images/btn_submit.jpg"
                OnClick="imgBtnSubmit_Click" />
        </div>
    </div>
</div>
<div>
</div>
