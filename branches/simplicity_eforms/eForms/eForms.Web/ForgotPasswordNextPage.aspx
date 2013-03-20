<%@ Page Title="" Language="C#" MasterPageFile="~/Common/Main.Master" AutoEventWireup="true"
    CodeBehind="ForgotPasswordNextPage.aspx.cs" Inherits="eForms.Web.ForgotPasswordNextPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" runat="server">
    <div>
        <div class="headstyle">
            <h2>
                <span style="color: #666666;">FORGOT</span> PASSWORD</h2>
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
                    <div class="floatLeft" style="width:30%">
                        <h3 class="ForgetQuestion">
                            <asp:Label ID="lblForgotPasswordQuestion" runat="server" Text="Forgot Password Question:"></asp:Label></h3>
                    </div>
                    <div class="floatLeft" >
                        <asp:TextBox ID="listForgotPasswordQuestionText" CssClass="login_field_big" runat="server" ReadOnly="true"></asp:TextBox>
                    </div>
                </div>
                <div class="clearFloat"></div>
            <div>
                <div class="floatLeft" style="width:30%">
                    <h3 class="ForgetAnswer">
                        <asp:Label ID="Label1" runat="server" Text="Forgot Password Answer:"></asp:Label></h3>
                </div>
                <div class="floatLeft" >
                    <asp:TextBox ID="txtForgotPasswordAnswer" CssClass="login_field_big" MaxLength="50" runat="server"></asp:TextBox>
                    <div class="forgetErrorMsg">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="* Enter Forget Password Answer"
                            ControlToValidate="txtForgotPasswordAnswer" CssClass="errorMessage"></asp:RequiredFieldValidator>
                    </div>
                </div>
            </div>
            <div class="clearFloat" style="padding-left: 210px;">
                <asp:ImageButton ID="ImageButton1" ImageUrl="images/btn_Submit.jpg" runat="server"
                    OnClick="ForgetButtonClick" />
            </div>
        </div>
        </div>
    </div>
    <div class="clearFloat">
    </div>
    
</asp:Content>
