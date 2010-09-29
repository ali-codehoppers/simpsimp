<%@ Page Title="" Language="C#" MasterPageFile="~/Common/Main.Master" AutoEventWireup="true"
    CodeBehind="Forget.aspx.cs" Inherits="Simplicity.Web.Forget" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" runat="server">
    <div>
        <div class="headstyle">
            <h2>
                <span style="color: #cccccc;">FORGET</span> PASSWORD</h2>
        </div>
        <div class="loginhead">
            <img src="images/subheading_bar.jpg" alt="" width="565" height="21" />
        </div>
    </div>
    <div class="loginNewMember">
        <div class="loginimgdiv">
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
    <div class="loginSeprate">
        &nbsp;
    </div>
    <div class="logindiv">
        <div>
            <div class="logintopborder1">
            </div>
            <div class="logintopborder2">
            </div>
        </div>
        <div class="loginleftbar">
            &nbsp;</div>
        <div style="padding-left: 30px;">
            <form id="form1" name="form1" method="post" action="CustomerLogin.aspx">
            <div style="padding-top: 50px;">
                <div class="floatLeft">
                    <h3>
                        Username:</h3>
                </div>
                <div>
                    <br />
                    <br />
                    <asp:TextBox runat="server" ID="username" CssClass="login_field"></asp:TextBox>
                    <div class="forgetErrorMsg">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="username"
                            ErrorMessage="* Username is required." Display="Dynamic"> 
                        </asp:RequiredFieldValidator>
                    </div>
                    <div class="forgetErrorMsg">
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="username"
                            ErrorMessage="* Enter Email Address" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                            Display="Dynamic">
                        </asp:RegularExpressionValidator>
                    </div>
                </div>
                <br />
                <div class="floatLeft">
                    <h3>
                        <asp:Label ID="lblForgotPasswordQuestion" runat="server" Text="Forgot Password Question:"></asp:Label></h3>
                    <br />
                </div>
                <div>
                    <asp:DropDownList ID="listForgotPasswordQuestion" runat="server">
                        <asp:ListItem Text="--- Choose a question ---" Value="#"></asp:ListItem>
                        <asp:ListItem Text="What was your childhood nickname?" Value="1"></asp:ListItem>
                        <asp:ListItem Text="In what city did you meet your spouse/significant other?" Value="2"></asp:ListItem>
                        <asp:ListItem Text="What is the name of your favorite childhood friend?" Value="3"></asp:ListItem>
                        <asp:ListItem Text="What is your oldest sibling’s birthday month and year? (e.g., January 1900)"
                            Value="4"></asp:ListItem>
                        <asp:ListItem Text="What is the middle name of your youngest child?" Value="5"></asp:ListItem>
                        <asp:ListItem Text="What is your oldest sibling's middle name?" Value="6"></asp:ListItem>
                        <asp:ListItem Text="What school did you attend in fifth year?" Value="7"></asp:ListItem>
                        <asp:ListItem Text="What was your childhood phone number including area code? (e.g., 000-000-0000)"
                            Value="8"></asp:ListItem>
                        <asp:ListItem Text="What was the name of your first pet?" Value="9"></asp:ListItem>
                        <asp:ListItem Text="In what city or town did your mother and father meet?" Value="10"></asp:ListItem>
                        <asp:ListItem Text="Where were you when you had your first kiss?" Value="11"></asp:ListItem>
                        <asp:ListItem Text="What is the first name of the boy or girl that you first kissed?"
                            Value="12"></asp:ListItem>
                        <asp:ListItem Text="What was the last name of your third grade teacher?" Value="13"></asp:ListItem>
                        <asp:ListItem Text="In what city does your nearest sibling live?" Value="14"></asp:ListItem>
                        <asp:ListItem Text="What is your youngest brother’s birthday month and year? (e.g., January 1900)"
                            Value="15"></asp:ListItem>
                        <asp:ListItem Text="What is your maternal grandmother's maiden name?" Value="16"></asp:ListItem>
                        <asp:ListItem Text="In what city or town was your first job?" Value="17"></asp:ListItem>
                        <asp:ListItem Text="What is the name of the place your wedding reception was held?"
                            Value="18"></asp:ListItem>
                        <asp:ListItem Text="What is the name of a college you applied to but didn't attend?"
                            Value="19"></asp:ListItem>
                        <asp:ListItem Text="Where were you when you first heard about 9/11?" Value="20"></asp:ListItem>
                    </asp:DropDownList>
                    <div class="forgetErrorMsg">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" InitialValue="#" runat="server"
                            ErrorMessage="* Select Forget Password Question" ControlToValidate="listForgotPasswordQuestion"
                            Display="Dynamic"></asp:RequiredFieldValidator>
                    </div>
                    <br />
                </div>
                <div class="floatLeft">
                    <h3>
                        <asp:Label ID="Label1" runat="server" Text="Forgot Password Answer:"></asp:Label></h3>
                </div>
                <div>
                    <br />
                    <br />
                    <asp:TextBox ID="txtForgotPasswordAnswer" CssClass="login_field" runat="server"></asp:TextBox>
                    <div class="forgetErrorMsg">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="* Enter Forget Password Answer"
                            ControlToValidate="txtForgotPasswordAnswer" CssClass="errorMessage"></asp:RequiredFieldValidator>
                    </div>
                </div>
            </div>
            <div style="padding-left: 120px;">
                <div style="padding-bottom: 20px;">
                    Do not have an account?<a href="#" class="login"> Sign up for free!</a></div>
                <asp:ImageButton ID="ImageButton1" ImageUrl="images/btn_Submit.jpg" 
                    runat="server" onclick="ForgetButtonClick" />
            </div>
            </form>
        </div>
    </div>
</asp:Content>
