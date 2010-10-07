<%@ Page Title="" Language="C#" MasterPageFile="~/Common/Main.Master" AutoEventWireup="true"
    CodeBehind="UserAccount.aspx.cs" Inherits="Simplicity.Web.UserAccount" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" runat="server">
    <div>
        <div style="margin-top: 30px; margin-left: 50px; margin-bottom: 10px;">
            <h2>
                <span style="color: #cccccc;">CHANGE</span> PASSWORD</h2>
        </div>
        <div>
            <img src="images/subheading_bar.jpg" alt="" width="565" height="21" /></div>
    </div>
    <div class="myChangeTabs">
        <div class="row">
            <div class="col1">
                Old Password</div>
            <div class="col2">
                <div class="forgetErrorMsg">
                    <asp:TextBox TextMode="password" CssClass="login_field_big" ID="oldpassword" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="oldpassword"
                        ErrorMessage="* Password Required" Display="Dynamic"> 
                    </asp:RequiredFieldValidator>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col1">
                Confirm Old Password</div>
            <div class="col2">
                <div class="forgetErrorMsg">
                    <asp:TextBox TextMode="password" CssClass="login_field_big" ID="confirmoldPassowrd"
                        runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="confirmoldPassowrd"
                        ErrorMessage="* Password Required" Display="Dynamic"> 
                    </asp:RequiredFieldValidator>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col1">
                New Password</div>
            <div class="col2">
                <div class="forgetErrorMsg">
                    <asp:TextBox TextMode="password" CssClass="login_field_big" ID="passwordfield" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="passwordfield"
                        ErrorMessage="* Password Required" Display="Dynamic"> 
                    </asp:RequiredFieldValidator>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col1">
                New Confirm Password</div>
            <div class="col2">
                <div class="forgetErrorMsg">
                    <asp:TextBox TextMode="password" CssClass="login_field_big" ID="confirmpasswordfield"
                        runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="confirmpasswordfield"
                        ErrorMessage="* Password Required" Display="Dynamic"> 
                    </asp:RequiredFieldValidator>
                </div>
            </div>
        </div>
    </div>
    <div class="myChangeinfoContinue">
                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="../images/btn_submit.jpg"
                        Width="107" Height="37" OnClick="btnSave_Click" />
    </div>
</asp:Content>
