<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CallMeUserControl.ascx.cs"
    Inherits="Simplicity.Web.Common.Controls.CallMeUserControl" %>
<div class="headstyle">
    <h2>
        <span style="color: #666666;">
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
            Name
        </div>
        <div class="col2">
            <div class="forgetErrorMsg">
                <asp:TextBox ID="txtFirstName" CssClass="callme_field_big" MaxLength="60" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rf10" runat="server" ErrorMessage="* Enter First Name"
                    ControlToValidate="txtFirstName" CssClass="CallMeErrorMsg" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="txtFirstName"
                    ErrorMessage="* First Name have atleast 3 characters" ValidationExpression="[A-za-z]{3,60}"
                    Display="Dynamic">
                </asp:RegularExpressionValidator>
            </div>
        </div>
    </div>
    <div class="row" style="display:none;">
        <div class="col1">
            Surname
        </div>
        <div class="col2">
            <div class="forgetErrorMsg">
                <asp:TextBox ID="txtSurName" Text="" CssClass="callme_field_big" MaxLength="60" runat="server"></asp:TextBox>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col1">
            Telephone</div>
        <div class="col2">
            <div class="forgetErrorMsg">
                <asp:TextBox ID="txtTelephone" CssClass="callme_field_big" MaxLength="30" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rf12" runat="server" ErrorMessage="* Enter Telephone"
                    ControlToValidate="txtTelephone" CssClass="CallMeErrorMsg" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="txtTelephone"
                    ErrorMessage="* Telephone must have atleast 5 digits" ValidationExpression="[\s\w]*[\w\s]*\d{5,30}[\s\w]*[\w\s]*"
                    Display="Dynamic">
                </asp:RegularExpressionValidator>
            </div>
        </div>
    </div>
    <div class="row" style="visibility:hidden;display:none">
        <div class="col1">
            Mobile</div>
        <div class="col2">
            <div class="forgetErrorMsg">
                <asp:TextBox ID="txtMobile" CssClass="callme_field_big" MaxLength="30" runat="server" Text="11111"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txtMobile"
                    ErrorMessage="* Mobile must have atleast 5 digits" ValidationExpression="[\s\w]*[\w\s]*\d{5,30}[\s\w]*[\w\s]*"
                    Display="Dynamic">
                </asp:RegularExpressionValidator>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col1">
            Email</div>
        <div class="col2">
            <div class="forgetErrorMsg">
                <asp:TextBox ID="txtEmail" CssClass="callme_field_big" MaxLength="60" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rf1" runat="server" ErrorMessage="* Enter Email"
                    ControlToValidate="txtEmail" CssClass="CallMeErrorMsg" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="* Enter Email."
                    ControlToValidate="txtEmail" CssClass="CallMeErrorMsg" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" ErrorMessage=" Must be 8 characters."
                    ControlToValidate="txtEmail" CssClass="CallMeErrorMsg" ValidationExpression=".{8,60}"></asp:RegularExpressionValidator>
            </div>
        </div>
    </div>

</div>
<div class="dotted_line" style="margin-top: 5px; width: 70%; margin-left: 90px;">
</div>
<div id="CallMeProduct">
    <div style="font-weight: bold; padding-bottom: 10px;">
        <h4>
            Select Products interested in</h4>
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
    <div style="clear: both; padding-top: 10px;">
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
    <div style="clear: both; padding-top: 10px;">
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
