<%@ Page Title="" Language="C#" MasterPageFile="~/Common/Main.Master" AutoEventWireup="true"
    CodeBehind="ForgotPassword.aspx.cs" Inherits="Simplicity.Web.Forget" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" runat="server">
    <div>
        <div class="headstyle">
            <h2>
                <span style="color: #cccccc;">FORGOT</span> PASSWORD</h2>
        </div>
        <div class="loginhead">
            <img src="images/subheading_bar.jpg" alt="" width="565" height="21" />
        </div>
    </div>
    <div class="forgotPasswordDiv">
        <div class="loginleftbar"></div>
        <div class="floatLeft">
            <div class="forgotPasswordborder1">
            </div>
            <div class="forgotPasswordborder2">
            </div>
            <div class="clearFloat" style="padding-left: 30px;">
                <div>
                    <div class="floatLeft" style="width: 20%;">
                        <h3 class="ForgetUserName">
                            Username:</h3>
                    </div>
                    <div class="floatLeft">
                        <asp:TextBox runat="server" ID="username" CssClass="login_field_big"></asp:TextBox>
                        <div class="forgetErrorMsg">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="username"
                                ErrorMessage="* Username is required" Display="Dynamic"> 
                            </asp:RequiredFieldValidator>
                        </div>
                        <div class="forgetErrorMsg">
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="username"
                                ErrorMessage="* Enter Email Address" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                                Display="Dynamic">
                            </asp:RegularExpressionValidator>
                        </div>
                    </div>
                    <div class="clearFloat" style="padding-left: 140px;">
                        <asp:ImageButton ID="ImageButton3" ImageUrl="~/Images/btn_continue.jpg" runat="server"
                            OnClick="ForgetButtonClick" />
                    </div>
                </div>
            </div>
        </div>
        </div> 
    <div class="clearFloat">
    </div>
</asp:Content>
