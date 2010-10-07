<%@ Page Title="" Language="C#" MasterPageFile="~/Common/Main.Master" AutoEventWireup="true"
    CodeBehind="CustomerLogin.aspx.cs" Inherits="Simplicity.Web.CustomerLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" runat="server">
    <div>
        <div class="headstyle">
            <h2>
                <span style="color: #cccccc;">CUSTOMER</span> LOGIN</h2>
        </div>
        <div class="loginhead">
            <img src="../images/subheading_bar.jpg" alt="" width="565" height="21" />
        </div>
    </div>
    
    <div class="logindiv">
        <div class="loginleftbar"></div>
        <div class="logintopborder1"></div>
        <div class="logintopborder2"></div>
        <div class="floatLeft" style="padding-left: 25px;">            
            <div class="floatLeft">
            <div style="padding-top: 50px;">
                <div class="floatLeft" style="width:100px;">
                    <h3>Username:</h3>
                </div>
                <div class="floatLeft">
                    <asp:TextBox runat="server" ID="username" CssClass="login_field"></asp:TextBox>
                    <div class="ErrorMsg" style="padding:0px;">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="username"
                            ErrorMessage="* Username is required." Display="Dynamic"> 
                        </asp:RequiredFieldValidator>
                    </div>
                    <div class="ErrorMsg" style="padding:0px;">
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="username"
                            ErrorMessage="* Enter Email Address" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                            Display="Dynamic">
                        </asp:RegularExpressionValidator>
                    </div>
                </div>
                <div class="clearFloat"></div>
            </div>
            <div>
                <div class="floatLeft" style="width:100px;">
                    <h3>Password:</h3>
                </div>
                <div class="floatLeft">
                    <asp:TextBox runat="server" ID="password" CssClass="login_field" TextMode="Password"></asp:TextBox>
                    <div class="ErrorMsg" style="padding:0px;">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="* Password is required."
                            ControlToValidate="password"> 
                        </asp:RequiredFieldValidator>
                    </div>
                    <div class="ErrorMsg" style="padding:0px;">
                        <asp:Label ID="Label1" runat="server" Text="Label" Visible="false"></asp:Label>
                    </div>
                </div>
                <div class="clearFloat"></div>
            </div>
            <div style="padding-left: 100px;">
                <div>
                    <asp:HyperLink ID="HyperLink1" NavigateUrl="ForgetPassword.aspx" CssClass="login" runat="server">Forgot your password?</asp:HyperLink>
                </div>
                <div style="padding-bottom: 20px;">
                    Do not have an account?<a href="SignUp.aspx" class="login"> Sign up for free!</a></div>
                <asp:ImageButton ID="ImageButton1" ImageUrl="../images/btn_login.jpg" runat="server" OnClick="LoginButtonClick" />
            </div>            
            </div>
            <div class="floatRight" style="padding-left: 20px; padding-top: 50px; "><img src="../images/lock_icon.jpg" alt="" width="180" height="136" /></div>            
        </div>               
    </div>
    <div class="loginSeprate">
    </div>   
    <div class="loginNewMember">
        <div class="loginimgdiv">
            <img src="../images/icon_member.jpg" alt="" width="23" height="25" /></div>
        <div style="margin-left:20px">
            <h2>
                <span style="color: #cccccc;">Not a </span>member</h2>
        </div>
        <img src="../images/login_not_member.jpg" alt="" width="332" height="21" />
        <div style="margin-left:20px">
            <p>
                Then join the network now and get free access to:</p>
            <span style="color: #777777;">Personal portfolio tracking<br />
                Investor network<br />
                Compete in the Global Investor Challenge<br />
                And much more</span>
            <p>
                <a href="SignUp.aspx">
                    <img src="../images/sign_up_free.jpg" alt="" width="225" height="24" border="0" /></a></p>
        </div>
    </div> 
    <div class="clearFloat">
    </div>
</asp:Content>
