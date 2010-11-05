<%@ Page Title="" Language="C#" MasterPageFile="~/Common/Main.Master" AutoEventWireup="true"
    CodeBehind="SignUp.aspx.cs" Inherits="Simplicity.Web.SignUp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolder" runat="server">
    <script type="text/javascript" src='<%=Page.ResolveClientUrl("~/Scripts/jquery.cycle.all.min.js")%>'></script>
    <script language="javascript" type='text/javascript'>

        var selectedTab = '<%=SelectedTabElement%>';
        var selectedTabforredirect = '<%=Request.QueryString["SelectedTabElement"] %>';
        if (selectedTabforredirect == 4) 
            selectedTab = selectedTabforredirect;


        function showHideElementById(status, elementId) {
            var element = document.getElementById(elementId);
            if (element != null) {
                if (status == 1) {
                    element.style.visibility = "visible";
                    element.style.display = "";
                }
                else {
                    element.style.visibility = "hidden";
                    element.style.display = "none";
                }
            }
        }

    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" runat="server">
    <div>
        <div>
            <div style="margin-top: 30px; margin-left: 50px; margin-bottom: 10px;">
                <h2>
                    <span style="color: #cccccc;">MY</span> ACCOUNT</h2>
            </div>
            <div>
                <img src="images/subheading_bar.jpg" alt="" width="565" height="21" /></div>
        </div>
        <asp:TextBox runat="server" ClientIDMode="Static" Visible="false" AutoPostBack="true"
            ID="SelectTabName"></asp:TextBox>
        <div class="myAccountTabs">
            <div id='tabPersonalInfo' class="myPersonalInfoTabOnMouseOver">
                <div style="padding-top: 10px">
                    My Personal Info</div>
            </div>
            <div class="floatLeft" style="height: 35px; width: 5px; border-bottom: 1px solid #e5e5e5;">
                &nbsp;</div>
            <asp:Panel ID="MyProductPanel" runat="server">
                <asp:Panel ID="SecondMyProductPanel" runat="server">
                    <div id="tabProducts" class="myProductsTab">
                        <div style="padding-top: 10px">
                            My Products</div>
                    </div>
                    <div class="floatLeft" style="height: 35px; width: 5px; border-bottom: 1px solid #e5e5e5;">
                    </div>
                </asp:Panel>
                <div id="tabPassword" class="myChangeTab">
                    <div style="padding-top: 10px">
                        Change Password</div>
                </div>
                <div class="floatLeft" style="height: 35px; width: 5px; border-bottom: 1px solid #e5e5e5;">
                </div>
                <asp:Panel runat="server" ID="MyCompanyPanelHeader">
                    <div id="tabCompany" class="myCompanyTab">
                        <div style="padding-top: 10px">
                            User Admin</div>
                    </div>
                </asp:Panel>
            </asp:Panel>
            <div class="floatLeft" style="height: 35px; width: 150px; border-bottom: 1px solid #e5e5e5;">
                &nbsp;</div>
            <div class="floatLeft" style="width: 117px; height: 36px; background: url(Images/login_btm_line.jpg) bottom left no-repeat;">
                &nbsp;</div>
            <div id="myAccountMyPersonalInfoTab" class="clearFloat">
                <asp:Panel ID="UserAccountPanel" runat="server">
                    <div id="Emailrow" class="row">
                        <div class="col1">
                            <asp:Label ID="EmailLabel" runat="server">Email</asp:Label></div>
                        <div class="col2">
                            <div class="forgetErrorMsg">
                                <asp:TextBox runat="server" CssClass="login_field_big" MaxLength="60" ID="emailfield"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="emailfield"
                                    ErrorMessage="* Email required" Display="Dynamic" ValidationGroup="PersonalInfoGroup"> 
                                </asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="emailfield"
                                    ErrorMessage="* Enter Email." ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                                    Display="Dynamic" ValidationGroup="PersonalInfoGroup">
                                </asp:RegularExpressionValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server" ControlToValidate="emailfield"
                                    ErrorMessage=" Must be 8 characters" ValidationExpression=".{8,60}" Display="Dynamic"
                                    ValidationGroup="PersonalInfoGroup">
                                </asp:RegularExpressionValidator>
                                <asp:Label runat="server" ID="emailLength" Visible="false"></asp:Label>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col1">
                            <asp:Label ID="ConfirmEmailLabel" runat="server">Confirm Email</asp:Label></div>
                        <div class="col2">
                            <div class="forgetErrorMsg">
                                <asp:TextBox runat="server" CssClass="login_field_big" MaxLength="60" ID="confirmemailfield"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="confirmemailfield"
                                    ErrorMessage="* Email required" Display="Dynamic" ValidationGroup="PersonalInfoGroup"> 
                                </asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="confirmemailfield"
                                    ErrorMessage="* Enter Email." ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                                    Display="Dynamic" ValidationGroup="PersonalInfoGroup">
                                </asp:RegularExpressionValidator>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col1">
                            Password</div>
                        <div class="col2">
                            <div class="forgetErrorMsg">
                                <asp:TextBox TextMode="password" CssClass="login_field_big" MaxLength="50" ID="passwordfield"
                                    runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="passwordfield"
                                    ErrorMessage="* Password required" Display="Dynamic" ValidationGroup="PersonalInfoGroup"> 
                                </asp:RequiredFieldValidator>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col1">
                            Confirm Password</div>
                        <div class="col2">
                            <div class="forgetErrorMsg">
                                <asp:TextBox TextMode="password" MaxLength="50" CssClass="login_field_big" ID="confirmpasswordfield"
                                    runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="confirmpasswordfield"
                                    ErrorMessage="* Password required" Display="Dynamic" ValidationGroup="PersonalInfoGroup"> 
                                </asp:RequiredFieldValidator>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col1">
                            <asp:Label ID="lblForgotPasswordQuestion" runat="server" Text="Forgot Password Question"></asp:Label>
                        </div>
                        <div class="col2">
                            <div class="forgetErrorMsg">
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
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" InitialValue="#" runat="server"
                                    ErrorMessage="* Select Question" ControlToValidate="listForgotPasswordQuestion"
                                    Display="Dynamic" ValidationGroup="PersonalInfoGroup"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col1">
                            <asp:Label ID="Label1" runat="server" Text="Forgot Password Answer"></asp:Label>
                        </div>
                        <div class="col2">
                            <div class="forgetErrorMsg">
                                <asp:TextBox ID="txtForgotPasswordAnswer" MaxLength="50" CssClass="login_field_big"
                                    runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="* Enter Forget Password Answer"
                                    ControlToValidate="txtForgotPasswordAnswer" CssClass="errorMessage" Display="Dynamic"
                                    ValidationGroup="PersonalInfoGroup"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                    </div>
                    <div class="dotted_line" style="margin-top: 10px;">
                    </div>
                </asp:Panel>
                <div class="row">
                    <div class="col1">
                        <asp:Label ID="Label2" runat="server" Text="First Name"></asp:Label>
                    </div>
                    <div class="col2">
                        <div class="forgetErrorMsg">
                            <asp:TextBox ID="firstname" CssClass="login_field_big" MaxLength="60" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="* Enter First Name"
                                ControlToValidate="firstname" CssClass="errorMessage" Display="Dynamic" ValidationGroup="PersonalInfoGroup"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="firstname"
                                ErrorMessage="* First Name have atleast 3 characters" ValidationExpression="[A-za-z]{3,60}"
                                Display="Dynamic" ValidationGroup="PersonalInfoGroup">
                            </asp:RegularExpressionValidator>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col1">
                        <asp:Label ID="Label3" runat="server" Text="Surname"></asp:Label>
                    </div>
                    <div class="col2">
                        <div class="forgetErrorMsg">
                            <asp:TextBox ID="surname" CssClass="login_field_big" MaxLength="60" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="* Enter Surname"
                                ControlToValidate="surname" CssClass="errorMessage" Display="Dynamic" ValidationGroup="PersonalInfoGroup"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" ControlToValidate="surname"
                                ErrorMessage="* Surname must have atleast 3 characters" ValidationExpression="[A-za-z]{3,60}"
                                Display="Dynamic" ValidationGroup="PersonalInfoGroup">
                            </asp:RegularExpressionValidator>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col1">
                        <asp:Label ID="Label4" runat="server" Text="Company Name"></asp:Label>
                    </div>
                    <div class="col2">
                        <div class="forgetErrorMsg">
                            <asp:TextBox ID="companyname" CssClass="login_field_big" MaxLength="100" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="* Enter Company Name"
                                ControlToValidate="companyname" CssClass="errorMessage" Display="Dynamic" ValidationGroup="PersonalInfoGroup"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col1">
                        <asp:Label ID="Label5" runat="server" Text="Job Title"></asp:Label>
                    </div>
                    <div class="col2">
                        <asp:TextBox ID="jobtitle" CssClass="login_field_big" MaxLength="255" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="dotted_line" style="margin-top: 5px;">
                </div>
                <div class="row">
                    <div class="col1">
                        <asp:Label ID="Label6" runat="server" Text="Address No."></asp:Label>
                    </div>
                    <div class="col2">
                        <asp:TextBox ID="addressno" MaxLength="32" CssClass="login_field_big" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col1">
                        <asp:Label ID="Label7" runat="server" Text="Address Line 1"></asp:Label>
                    </div>
                    <div class="col2">
                        <div class="forgetErrorMsg">
                            <asp:TextBox ID="addressline1" CssClass="login_field_big" MaxLength="60" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="addressline1"
                                ErrorMessage="* Address Line 1 required" Display="Dynamic" ValidationGroup="PersonalInfoGroup"> 
                            </asp:RequiredFieldValidator>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col1">
                        <asp:Label ID="Label8" runat="server" Text="Address Line 2"></asp:Label>
                    </div>
                    <div class="col2">
                        <asp:TextBox ID="addressline2" CssClass="login_field_big" MaxLength="60" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col1">
                        <asp:Label ID="Label9" runat="server" Text="Address Line 3"></asp:Label>
                    </div>
                    <div class="col2">
                        <asp:TextBox ID="addressline3" CssClass="login_field_big" MaxLength="60" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col1">
                        <asp:Label ID="Label10" runat="server" Text="Address Line 4"></asp:Label>
                    </div>
                    <div class="col2">
                        <asp:TextBox ID="addressline4" CssClass="login_field_big" MaxLength="60" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col1">
                        <asp:Label ID="Label11" runat="server" Text="Address Line 5"></asp:Label>
                    </div>
                    <div class="col2">
                        <asp:TextBox ID="addressline5" CssClass="login_field_big" MaxLength="60" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col1">
                        <asp:Label ID="Label12" runat="server" Text="Postal Code"></asp:Label>
                    </div>
                    <div class="col2">
                        <div class="forgetErrorMsg">
                            <asp:TextBox ID="postalcode" CssClass="login_field_big" MaxLength="9" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="* Enter Postal Code"
                                ControlToValidate="postalcode" CssClass="errorMessage" Display="Dynamic" ValidationGroup="PersonalInfoGroup"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col1">
                        <asp:Label ID="Label13" runat="server" Text="Town"></asp:Label>
                    </div>
                    <div class="col2">
                        <asp:TextBox ID="town" CssClass="login_field_big" MaxLength="60" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col1">
                        <asp:Label ID="Label19" runat="server" Text="County"></asp:Label>
                    </div>
                    <div class="col2">
                        <asp:TextBox ID="County" CssClass="login_field_big" MaxLength="60" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col1">
                        <asp:Label ID="Label14" runat="server" Text="Country"></asp:Label>
                    </div>
                    <div class="col2">
                        <asp:TextBox ID="country" CssClass="login_field_big" MaxLength="60" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col1">
                        <asp:Label ID="Label15" runat="server" Text="Telephone 1"></asp:Label>
                    </div>
                    <div class="col2">
                        <div class="forgetErrorMsg">
                            <asp:TextBox ID="telephone1" CssClass="login_field_big" MaxLength="30" runat="server"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="telephone1"
                                ErrorMessage="* Telephone 1 must have atleast 5 digits" ValidationExpression="[\s\w]*[\w\s]*\d{5,30}[\s\w]*[\w\s]*"
                                Display="Dynamic" ValidationGroup="PersonalInfoGroup">
                            </asp:RegularExpressionValidator>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col1">
                        <asp:Label ID="Label16" runat="server" Text="Telephone 2"></asp:Label>
                    </div>
                    <div class="col2">
                        <div class="forgetErrorMsg">
                            <asp:TextBox ID="telephone2" CssClass="login_field_big" MaxLength="30" runat="server"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="telephone2"
                                ErrorMessage="* Telephone 2 must have atleast 5 digits" ValidationExpression="[\s\w]*[\w\s]*\d{5,30}[\s\w]*[\w\s]*"
                                Display="Dynamic" ValidationGroup="PersonalInfoGroup">
                            </asp:RegularExpressionValidator>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col1">
                        <asp:Label ID="Label18" runat="server" Text="Fax"></asp:Label>
                    </div>
                    <div class="col2">
                        <div class="forgetErrorMsg">
                            <asp:TextBox ID="fax" CssClass="login_field_big" MaxLength="30" runat="server"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="fax"
                                ErrorMessage="* Fax must have atleast 5 digits" ValidationExpression="[\s\w]*[\w\s]*\d{5,30}[\s\w]*[\w\s]*"
                                Display="Dynamic" ValidationGroup="PersonalInfoGroup">
                            </asp:RegularExpressionValidator>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col1">
                        <asp:Label ID="Label17" runat="server" Text="Mobile"></asp:Label>
                    </div>
                    <div class="col2">
                        <div class="forgetErrorMsg">
                            <asp:TextBox ID="mobile" CssClass="login_field_big" MaxLength="30" runat="server"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="mobile"
                                ErrorMessage="* Mobile must have atleast 5 digits" ValidationExpression="[\s\w]*[\w\s]*\d{5,30}[\s\w]*[\w\s]*"
                                Display="Dynamic" ValidationGroup="PersonalInfoGroup">
                            </asp:RegularExpressionValidator>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <asp:CheckBox runat="server" ID="checkbox" Text="Please indicate if you would like to receives further updates for products"
                        Checked="true" />
                </div>
                <div class="clearFloat">
                </div>
                <div class="myaccountinfoContinue">
                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="../images/btn_continue.jpg"
                        Width="107" Height="37" OnClick="btnSave_Click" ValidationGroup="PersonalInfoGroup" />
                    <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="../images/btn_reset.jpg"
                        Width="107" Height="37" OnClientClick="document.location.href=document.location.href;" />
                </div>
            </div>
            <asp:Panel runat="server" ID="LoginAccount">
                <div id="myAccountMyProductsTab" class="clearFloat">
                    <div style="padding: 10px;">
                        <asp:Panel runat="server" ID="CompanyProductRepeaterPanel">
                            <asp:Repeater ID="CompanyProductRepeater" runat="server">
                                <ItemTemplate>
                                    <div style="float: left; padding-bottom: 10px; padding-right: 10px;">
                                        <a href="RedirectToProduct.aspx?productId=<%# DataBinder.Eval(Container.DataItem, "ProductID")%>">
                                            <img src='../Images/Buy_products_img_<%# DataBinder.Eval(Container.DataItem, "ProductID")%>.jpg' />
                                        </a>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
                        </asp:Panel>
                    </div>
                    <div class="clearFloat">
                    </div>
                    <div style="padding: 10px;">
                        <asp:Panel runat="server" ID="UserProductRepeaterPanel">
                            <asp:Repeater ID="UserProductRepeater" runat="server">
                                <HeaderTemplate>
                                    <div style="padding: 5px;">
                                        <h2>
                                            Trial Products</h2>
                                    </div>
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <div style="float: left; padding-bottom: 10px; padding-right: 10px;">
                                        <a href="RedirectToProduct.aspx?productId=<%# DataBinder.Eval(Container.DataItem, "ProductID")%>">
                                            <img src='../Images/Buy_products_img_<%# DataBinder.Eval(Container.DataItem, "ProductID")%>.jpg' />
                                        </a>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
                        </asp:Panel>
                    </div>
                    <div class="clearFloat">
                    </div>
                </div>
            </asp:Panel>
            <asp:Panel runat="server" ID="ChangePasswordPanel">
                <div id="MyPasswordTab" class="clearFloat">
                    <div class="myChangeTabs">
                        <div class="row">
                            <div class="col1">
                                Old Password</div>
                            <div class="col2">
                                <div class="forgetErrorMsg">
                                    <asp:TextBox TextMode="password" CssClass="login_field_big" MaxLength="50" ID="oldpassword"
                                        runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator111" runat="server" ControlToValidate="oldpassword"
                                        ErrorMessage="* Password required" Display="Dynamic" ValidationGroup="ChangePasswordGroup"> 
                                    </asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col1">
                                Confirm Old Password</div>
                            <div class="col2">
                                <div class="forgetErrorMsg">
                                    <asp:TextBox TextMode="password" CssClass="login_field_big" MaxLength="50" ID="confirmoldPassowrd"
                                        runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator112" runat="server" ControlToValidate="confirmoldPassowrd"
                                        ErrorMessage="* Password required" Display="Dynamic" ValidationGroup="ChangePasswordGroup"> 
                                    </asp:RequiredFieldValidator>
                                </div>
                            </div>
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
            </asp:Panel>
            <asp:Panel ID="CompanyPanel" runat="server">
                <div id="MyCompanyTab" class="clearFloat">
                    <div style="padding-top:10px; padding-bottom:15px;"><h2>
                        Company Users</h2>
                    </div>
                    <asp:GridView ID="CompanyUserRepeater" runat="server" 
                        OnRowCreated="ChangeRowCreated" Width="601px">
                        
                    </asp:GridView>
                    <div style="padding-top:10px; padding-bottom:20px; padding-left:230px;">
                    <asp:ImageButton ID="addUser" ImageUrl="~/Images/add_user.png"  runat="server" OnClick="addUser_Click" />
                    </div>
                    <asp:Panel ID="newUserPanel" Visible="false" runat="server">
                        <div class="row">
                        <h2>Add New User Information</h2>
                        </div>
                        <div id="userEmail" class="row">
                            <div class="col1">
                                <asp:Label ID="userEmailLabel" runat="server">Email</asp:Label></div>
                            <div class="col2">
                                <div class="forgetErrorMsg">
                                    <asp:TextBox runat="server" CssClass="login_field_big" MaxLength="60" ID="userEmailField"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="userEmailField"
                                        ErrorMessage="* Email required" Display="Dynamic" ValidationGroup="UserInfoGroup"> 
                                    </asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator10" runat="server"
                                        ControlToValidate="userEmailField" ErrorMessage="* Enter Email." ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                                        Display="Dynamic" ValidationGroup="UserInfoGroup">
                                    </asp:RegularExpressionValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator11" runat="server"
                                        ControlToValidate="userEmailField" ErrorMessage=" Must be 8 characters" ValidationExpression=".{8,60}"
                                        Display="Dynamic" ValidationGroup="UserInfoGroup">
                                    </asp:RegularExpressionValidator>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col1">
                                Password</div>
                            <div class="col2">
                                <div class="forgetErrorMsg">
                                    <asp:TextBox TextMode="password" CssClass="login_field_big" MaxLength="50" ID="userPasswordField"
                                        runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="userPasswordField"
                                        ErrorMessage="* Password required" Display="Dynamic" ValidationGroup="UserInfoGroup"> 
                                    </asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                        <div class="col1">
                            <asp:Label ID="Label24" runat="server" Text="Forgot Password Question"></asp:Label>
                        </div>
                        <div class="col2">
                            <div class="forgetErrorMsg">
                                <asp:DropDownList ID="userlistForgotPasswordQuestion" runat="server">
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
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator17" InitialValue="#" runat="server"
                                    ErrorMessage="* Select Question" ControlToValidate="userlistForgotPasswordQuestion"
                                    Display="Dynamic" ValidationGroup="UserInfoGroup"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col1">
                            <asp:Label ID="Label25" runat="server" Text="Forgot Password Answer"></asp:Label>
                        </div>
                        <div class="col2">
                            <div class="forgetErrorMsg">
                                <asp:TextBox ID="usertxtForgotPasswordAnswer" MaxLength="50" CssClass="login_field_big"
                                    runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ErrorMessage="* Enter Forget Password Answer"
                                    ControlToValidate="usertxtForgotPasswordAnswer" CssClass="errorMessage" Display="Dynamic"
                                    ValidationGroup="UserInfoGroup"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                    </div>
                    
                        <div class="row">
                            <div class="col1">
                                <asp:Label ID="Label20" runat="server" Text="First Name"></asp:Label>
                            </div>
                            <div class="col2">
                                <div class="forgetErrorMsg">
                                    <asp:TextBox ID="userFirstNameField" CssClass="login_field_big" MaxLength="60" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ErrorMessage="* Enter First Name"
                                        ControlToValidate="userFirstNameField" CssClass="errorMessage" Display="Dynamic"
                                        ValidationGroup="UserInfoGroup"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator12" runat="server"
                                        ControlToValidate="userFirstNameField" ErrorMessage="* First Name have atleast 3 characters"
                                        ValidationExpression="[A-za-z]{3,60}" Display="Dynamic" ValidationGroup="UserInfoGroup">
                                    </asp:RegularExpressionValidator>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col1">
                                <asp:Label ID="Label21" runat="server" Text="Surname"></asp:Label>
                            </div>
                            <div class="col2">
                                <div class="forgetErrorMsg">
                                    <asp:TextBox ID="userSurNameField" CssClass="login_field_big" MaxLength="60" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ErrorMessage="* Enter Surname"
                                        ControlToValidate="userSurNameField" CssClass="errorMessage" Display="Dynamic"
                                        ValidationGroup="UserInfoGroup"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator13" runat="server"
                                        ControlToValidate="userSurNameField" ErrorMessage="* Surname must have atleast 3 characters"
                                        ValidationExpression="[A-za-z]{3,60}" Display="Dynamic" ValidationGroup="UserInfoGroup">
                                    </asp:RegularExpressionValidator>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col1">
                                <asp:Label ID="Label22" runat="server" Text="Company Name"></asp:Label>
                            </div>
                            <div class="col2">
                                <div class="forgetErrorMsg">
                                    <asp:TextBox ID="userCompanyField" CssClass="login_field_big" MaxLength="100" runat="server"
                                        ReadOnly="true"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ErrorMessage="* Enter Company Name"
                                        ControlToValidate="userCompanyField" CssClass="errorMessage" Display="Dynamic"
                                        ValidationGroup="UserInfoGroup"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col1">
                                <asp:Label ID="Label23" runat="server" Text="Job Title"></asp:Label>
                            </div>
                            <div class="col2">
                                <asp:TextBox ID="userJobTitle" CssClass="login_field_big" MaxLength="255" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="myChangeinfoContinue">
                            <asp:ImageButton ID="userSubmitButton" runat="server" ImageUrl="~/Images/btn_submit.jpg"
                                Width="107" Height="37" ValidationGroup="UserInfoGroup" OnClick="userSubmitButton_Click" />
                        </div>
                    </asp:Panel>
                </div>
            </asp:Panel>
        </div>
    </div>
    <script type="text/javascript">
        $(document).ready(function () {

            if (selectedTab == 1) {
                infoTab();
            }
            if (selectedTab == 2) {
                productTab();
            }
            if (selectedTab == 3) {
                passwordTab();
            }
            if (selectedTab == 4) {
                companyTab();
            }
            $('#tabPersonalInfo').click(function () {
                selectedTab = 1;
                //document.getElementById('SelectTabName').value = selectedTab;
                infoTab();
            });
            $('#tabPersonalInfo').mouseover(function () {
                $('#tabPersonalInfo').addClass('myPersonalInfoTabOnMouseOver');
                $('#tabPersonalInfo').removeClass('myPersonalInfoTab');
            });
            $('#tabPersonalInfo').mouseout(function () {
                if (selectedTab == 1) {
                    $('#tabPersonalInfo').addClass('myPersonalInfoTabOnMouseOver');
                    $('#tabPersonalInfo').removeClass('myPersonalInfoTab');
                }
                else {
                    $('#tabPersonalInfo').removeClass('myPersonalInfoTabOnMouseOver');
                    $('#tabPersonalInfo').addClass('myPersonalInfoTab');
                }
            });
            $('#tabProducts').click(function () {
                selectedTab = 2;
                //document.getElementById('SelectTabName').value = selectedTab;
                productTab();
            });
            $('#tabProducts').mouseover(function () {
                $('#tabProducts').addClass('myProductsTabOnMouseOver');
                $('#tabProducts').removeClass('myProductsTab');
            });
            $('#tabProducts').mouseout(function () {
                if (selectedTab == 2) {
                    $('#tabProducts').addClass('myProductsTabOnMouseOver');
                    $('#tabProducts').removeClass('myProductsTab');
                }
                else {
                    $('#tabProducts').removeClass('myProductsTabOnMouseOver');
                    $('#tabProducts').addClass('myProductsTab');
                }
            });
            $('#tabPassword').click(function () {
                selectedTab = 3;
                //document.getElementById('SelectTabName').value = selectedTab;
                //
                passwordTab();
                //var flag = Page_ClientValidate('ChangePasswordGroup');
            });
            $('#tabPassword').mouseover(function () {
                $('#tabPassword').addClass('myChangeTabOnMouseOver');
                $('#tabPassword').removeClass('myChangeTab');
            });
            $('#tabPassword').mouseout(function () {
                if (selectedTab == 3) {
                    $('#tabPassword').addClass('myChangeTabOnMouseOver');
                    $('#tabPassword').removeClass('myChangeTab');
                }
                else {
                    $('#tabPassword').removeClass('myChangeTabOnMouseOver');
                    $('#tabPassword').addClass('myChangeTab');
                }
            });

            $('#tabCompany').click(function () {
                selectedTab = 4;
                //document.getElementById('SelectTabName').value = selectedTab;
                //
                companyTab();
                //var flag = Page_ClientValidate('ChangePasswordGroup');
            });
            $('#tabCompany').mouseover(function () {
                $('#tabCompany').addClass('myCompanyTabOnMouseOver');
                $('#tabCompany').removeClass('myCompanyTab');
            });
            $('#tabCompany').mouseout(function () {
                if (selectedTab == 4) {
                    $('#tabCompany').addClass('myCompanyTabOnMouseOver');
                    $('#tabCompany').removeClass('myCompanyTab');
                }
                else {
                    $('#tabCompany').removeClass('myCompanyTabOnMouseOver');
                    $('#tabCompany').addClass('myCompanyTab');
                }
            });
            function infoTab() {
                $('#tabPersonalInfo').addClass('myPersonalInfoTabOnMouseOver');
                $('#tabPersonalInfo').removeClass('myPersonalInfoTab');
                $('#tabProducts').removeClass('myProductsTabOnMouseOver');
                $('#tabProducts').addClass('myProductsTab');
                $('#tabPassword').removeClass('myChangeTabOnMouseOver');
                $('#tabPassword').addClass('myChangeTab');
                $('#tabCompany').removeClass('myCompanyTabOnMouseOver');
                $('#tabCompany').addClass('myCompanyTab');
                $('#myAccountMyPersonalInfoTab').show();
                $('#myAccountMyProductsTab').hide();
                $('#MyPasswordTab').hide();
                $('#MyCompanyTab').hide();
            }
            function productTab() {
                $('#tabPersonalInfo').removeClass('myPersonalInfoTabOnMouseOver');
                $('#tabPersonalInfo').addClass('myPersonalInfoTab');
                $('#tabProducts').addClass('myProductsTabOnMouseOver');
                $('#tabProducts').removeClass('myProductsTab');
                $('#tabPassword').removeClass('myChangeTabOnMouseOver');
                $('#tabPassword').addClass('myChangeTab');
                $('#tabCompany').removeClass('myCompanyTabOnMouseOver');
                $('#tabCompany').addClass('myCompanyTab');
                $('#myAccountMyPersonalInfoTab').hide();
                $('#MyPasswordTab').hide();
                $('#myAccountMyProductsTab').show();
                $('#MyCompanyTab').hide();
            }
            function passwordTab() {
                $('#tabPersonalInfo').removeClass('myPersonalInfoTabOnMouseOver');
                $('#tabPersonalInfo').addClass('myPersonalInfoTab');
                $('#tabProducts').removeClass('myProductsTabOnMouseOver');
                $('#tabProducts').addClass('myProductsTab');
                $('#tabPassword').addClass('myChangeTabOnMouseOver');
                $('#tabPassword').removeClass('myChangeInfoTab');
                $('#tabCompany').removeClass('myCompanyTabOnMouseOver');
                $('#tabCompany').addClass('myCompanyTab');
                $('#myAccountMyPersonalInfoTab').hide();
                $('#myAccountMyProductsTab').hide();
                $('#MyPasswordTab').show();
                $('#MyCompanyTab').hide();
            }
            function companyTab() {
                $('#tabPersonalInfo').removeClass('myPersonalInfoTabOnMouseOver');
                $('#tabPersonalInfo').addClass('myPersonalInfoTab');
                $('#tabProducts').removeClass('myProductsTabOnMouseOver');
                $('#tabProducts').addClass('myProductsTab');
                $('#tabPassword').removeClass('myChangeTabOnMouseOver');
                $('#tabPassword').addClass('myChangeInfoTab');
                $('#tabCompany').addClass('myCompanyTabOnMouseOver');
                $('#tabCompany').removeClass('myCompanyTab');
                $('#myAccountMyPersonalInfoTab').hide();
                $('#myAccountMyProductsTab').hide();
                $('#MyPasswordTab').hide();
                $('#MyCompanyTab').show();
            }
        });
    </script>
</asp:Content>
