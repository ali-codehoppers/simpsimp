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
        <div style="padding-left: 8px;">
            <img src="images/subheading_bar.jpg" alt="" width="565" height="21" />
        </div>
    </div>
    <div class="floatRight" style="width: 34%;">
        <div class="floatRight" style="padding-right: 30px; padding-bottom: 10px;">
            <img src="images/icon_member.jpg" alt="" width="23" height="25" /></div>
        <div>
            <h2>
                <span style="color: #cccccc;">Not a </span>member</h2>
        </div>
        <img src="images/login_not_member.jpg" alt="" width="332" height="21" />
        <div>
            <p>
                Then join the network now and get free access to:</p>
            <span style="color: #777777;">Personal portfolio tracking<br />
                Investor network<br />
                Compete in the Global Investor Challenge<br />
                And much more</span>
            <p>
                <a href="#">
                    <img src="images/sign_up_free.jpg" alt="" width="225" height="24" border="0" /></a></p>
        </div>
    </div>
    <div style="background: url(images/login_sep_bar.jpg) 0 0 no-repeat; height: 290px;
        width: 30px; float: right;">
        &nbsp;
    </div>
    <div style="padding-left: 15px; padding-top: 45px; width: 60%;">
        <div>
            <div style="border-bottom: 1px solid #e7e7e7; width: 75%; float: left;">
            </div>
            <div style="background: url(images/login_btm_line.jpg) bottom left no-repeat; float: left;
                width: 25%; padding-top: 1px;">
            </div>
        </div>
        <div style="background: url(images/login_lft_line.jpg) 0 0 no-repeat; float: left;
            height: 280px">
            &nbsp;</div>
        <div style="padding-left: 30px;">
            <form id="form1" name="form1" method="post">
            <div class="floatRight" style="padding-top: 50px;">
                <img src="images/lock_icon.jpg" alt="" width="180" height="136" /></div>
            <div style="padding-top: 50px;">
                <div class="floatLeft" style="padding-right: 50px;">
                    <h3>
                        Username:</h3>
                </div>
                <div>
                    
                    <asp:TextBox runat="server" ID="username" CssClass="login_field"></asp:TextBox>

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="username"
                        ErrorMessage="User ID is required."> *
                    </asp:RequiredFieldValidator>

                </div>
            </div>
            <div style="padding-top: 2px;">
                <div class="floatLeft" style="padding-right: 52px;">
                    <h3>
                        Password:</h3>
                </div>
                <div>
                    
                    <asp:TextBox runat="server" ID="password" CssClass="login_field"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="password"
                        ErrorMessage="Password is required."> *
                    </asp:RequiredFieldValidator>
                    </div>
            </div>
            <div style="padding-left: 120px;">
                <div style="padding-top: 10px; padding-bottom: 10px;">
                    <label>
                        <input type="checkbox" name=" " id="dfd" />
                        Remember me</label></div>
                <div>
                    <a href="#" class="login">Forgot your password?</a></div>
                <div style="padding-bottom: 20px;">
                    Do not have an account?<a href="#" class="login"> Sign up for free!</a></div>
                <asp:ImageButton ImageUrl="images/btn_login.jpg" runat="server" OnClick="SubmitButton"/>
            </div>
            </form>
        </div>
    </div>
</asp:Content>
