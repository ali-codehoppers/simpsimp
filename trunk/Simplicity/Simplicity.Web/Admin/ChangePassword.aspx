<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true"
    CodeBehind="ChangePassword.aspx.cs" Inherits="Simplicity.Web.Admin.ChangePassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" runat="server">
    <div id="MyPasswordTab" style="display:block">
        <div class="myChangeTabs">
            <div style="padding-bottom:20px;">
                <h2>
                    Change User Password.
                </h2>
            </div>
            <div class="row">
                <div class="col1">
                    New Password</div>
                <div class="col2">
                    <div class="forgetErrorMsg">
                        <asp:TextBox TextMode="password" CssClass="login_field_big" MaxLength="50" ID="newpasswordfield"
                            runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator113" runat="server" ControlToValidate="newpasswordfield"
                            ErrorMessage="* Password required" Display="Dynamic" ValidationGroup="ChangePasswordGroup"> 
                        </asp:RequiredFieldValidator>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col1">
                    New Confirm Password</div>
                <div class="col2">
                    <div class="forgetErrorMsg">
                        <asp:TextBox TextMode="password" CssClass="login_field_big" MaxLength="50" ID="newconfirmpasswordfield"
                            runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator114" runat="server" ControlToValidate="newconfirmpasswordfield"
                            ErrorMessage="* Password required" Display="Dynamic" ValidationGroup="ChangePasswordGroup"> 
                        </asp:RequiredFieldValidator>
                    </div>
                </div>
            </div>
        </div>
        <div class="myChangeinfoContinue">
            <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/Images/btn_submit.jpg"
                Width="107" Height="37" OnClick="ChangebtnSave_Click" ValidationGroup="ChangePasswordGroup" />
        </div>
    </div>
</asp:Content>
