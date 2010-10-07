<%@ Page Title="" Language="C#" MasterPageFile="~/Common/Main.Master" AutoEventWireup="true"
    CodeBehind="SignUp.aspx.cs" Inherits="Simplicity.Web.SignUp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolder" runat="server">
    <script type="text/javascript" src='<%=Page.ResolveClientUrl("~/Scripts/jquery.cycle.all.min.js")%>'></script>
    <script language="javascript" type='text/javascript'>

        var selectedTab = 1;

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
        <div class="myAccountTabs">
            <div id='tabPersonalInfo' class="myPersonalInfoTabOnMouseOver">
                <div style="padding-top: 10px">
                    My Personal Info</div>
            </div>
            <div class="floatLeft" style="height: 35px; width: 5px; border-bottom: 1px solid #e5e5e5;">
                &nbsp;</div>
            <div id="tabProducts" class="myProductsTab">
                <div style="padding-top: 10px">
                    My Products</div>
            </div>
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
                                <asp:TextBox runat="server" CssClass="login_field_big" ID="emailfield"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="emailfield"
                                    ErrorMessage="* Email Required" Display="Dynamic"> 
                                </asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="emailfield"
                                    ErrorMessage="* Enter Email Address" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                                    Display="Dynamic">
                                </asp:RegularExpressionValidator>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col1">
                            <asp:Label ID="ConfirmEmailLabel" runat="server">Confirm Email</asp:Label></div>
                        <div class="col2">
                            <div class="forgetErrorMsg">
                                <asp:TextBox runat="server" CssClass="login_field_big" ID="confirmemailfield"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="confirmemailfield"
                                    ErrorMessage="* Email Required" Display="Dynamic"> 
                                </asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="confirmemailfield"
                                    ErrorMessage="* Enter Email Address" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                                    Display="Dynamic">
                                </asp:RegularExpressionValidator>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col1">
                            Password</div>
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
                            Confirm Password</div>
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
                                    Display="Dynamic"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col1">
                            <asp:Label ID="Label1" runat="server" Text="Forgot Password Answer"></asp:Label>
                        </div>
                        <div class="col2">
                            <div class="forgetErrorMsg">
                                <asp:TextBox ID="txtForgotPasswordAnswer" CssClass="login_field_big" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="* Enter Forget Password Answer"
                                    ControlToValidate="txtForgotPasswordAnswer" CssClass="errorMessage" Display="Dynamic"></asp:RequiredFieldValidator>
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
                            <asp:TextBox ID="firstname" CssClass="login_field_big" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="* Enter First Name"
                                ControlToValidate="firstname" CssClass="errorMessage" Display="Dynamic"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col1">
                        <asp:Label ID="Label3" runat="server" Text="Surname"></asp:Label>
                    </div>
                    <div class="col2">
                        <div class="forgetErrorMsg">
                            <asp:TextBox ID="surname" CssClass="login_field_big" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="* Enter Surname"
                                ControlToValidate="surname" CssClass="errorMessage" Display="Dynamic"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col1">
                        <asp:Label ID="Label4" runat="server" Text="Company Name"></asp:Label>
                    </div>
                    <div class="col2">
                        <div class="forgetErrorMsg">
                            <asp:TextBox ID="companyname" CssClass="login_field_big" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="* Enter Company Name"
                                ControlToValidate="companyname" CssClass="errorMessage" Display="Dynamic"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col1">
                        <asp:Label ID="Label5" runat="server" Text="Job Title"></asp:Label>
                    </div>
                    <div class="col2">
                        <asp:TextBox ID="jobtitle" CssClass="login_field_big" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="dotted_line" style="margin-top: 5px;">
                </div>
                <div class="row">
                    <div class="col1">
                        <asp:Label ID="Label6" runat="server" Text="Address No."></asp:Label>
                    </div>
                    <div class="col2">
                        <asp:TextBox ID="addressno" CssClass="login_field_big" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col1">
                        <asp:Label ID="Label7" runat="server" Text="Address Line 1"></asp:Label>
                    </div>
                    <div class="col2">
                        <asp:TextBox ID="addressline1" CssClass="login_field_big" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col1">
                        <asp:Label ID="Label8" runat="server" Text="Address Line 2"></asp:Label>
                    </div>
                    <div class="col2">
                        <asp:TextBox ID="addressline2" CssClass="login_field_big" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col1">
                        <asp:Label ID="Label9" runat="server" Text="Address Line 3"></asp:Label>
                    </div>
                    <div class="col2">
                        <asp:TextBox ID="addressline3" CssClass="login_field_big" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col1">
                        <asp:Label ID="Label10" runat="server" Text="Address Line 4"></asp:Label>
                    </div>
                    <div class="col2">
                        <asp:TextBox ID="addressline4" CssClass="login_field_big" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col1">
                        <asp:Label ID="Label11" runat="server" Text="Address Line 5"></asp:Label>
                    </div>
                    <div class="col2">
                        <asp:TextBox ID="addressline5" CssClass="login_field_big" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col1">
                        <asp:Label ID="Label12" runat="server" Text="Postal Code"></asp:Label>
                    </div>
                    <div class="col2">
                        <div class="forgetErrorMsg">
                            <asp:TextBox ID="postalcode" CssClass="login_field_big" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="* Enter Postal Code"
                                ControlToValidate="postalcode" CssClass="errorMessage" Display="Dynamic"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col1">
                        <asp:Label ID="Label13" runat="server" Text="Town"></asp:Label>
                    </div>
                    <div class="col2">
                        <asp:TextBox ID="town" CssClass="login_field_big" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col1">
                        <asp:Label ID="Label19" runat="server" Text="County"></asp:Label>
                    </div>
                    <div class="col2">
                        <asp:TextBox ID="County" CssClass="login_field_big" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col1">
                        <asp:Label ID="Label14" runat="server" Text="Country"></asp:Label>
                    </div>
                    <div class="col2">
                        <asp:TextBox ID="country" CssClass="login_field_big" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col1">
                        <asp:Label ID="Label15" runat="server" Text="Telephone 1"></asp:Label>
                    </div>
                    <div class="col2">
                        <asp:TextBox ID="telephone1" CssClass="login_field_big" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col1">
                        <asp:Label ID="Label16" runat="server" Text="Telephone 2"></asp:Label>
                    </div>
                    <div class="col2">
                        <asp:TextBox ID="telephone2" CssClass="login_field_big" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col1">
                        <asp:Label ID="Label18" runat="server" Text="Fax"></asp:Label>
                    </div>
                    <div class="col2">
                        <asp:TextBox ID="fax" CssClass="login_field_big" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col1">
                        <asp:Label ID="Label17" runat="server" Text="Mobile"></asp:Label>
                    </div>
                    <div class="col2">
                        <asp:TextBox ID="mobile" CssClass="login_field_big" runat="server"></asp:TextBox>
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
                        Width="107" Height="37" OnClick="btnSave_Click" />
                    <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="../images/btn_reset.jpg"
                        Width="107" Height="37" OnClientClick="document.location.href=document.location.href;" />
                </div>
            </div>
            <div id="myAccountMyProductsTab" class="clearFloat">
                <div class="links">
                    <div class="topLeft">
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Products/HandyServe/Home.aspx"
                            CssClass="AccountmoreDetails">
                            <asp:Image runat="server" ID="Image7" ImageUrl="~/Images/products_img_1.jpg" />
                        </asp:HyperLink>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#myAccountMyPersonalInfoTab').show();
            $('#tabPersonalInfo').click(function () {
                selectedTab = 1;
                $('#tabPersonalInfo').addClass('myPersonalInfoTabOnMouseOver');
                $('#tabPersonalInfo').removeClass('myPersonalInfoTab');
                $('#tabProducts').removeClass('myProductsTabOnMouseOver');
                $('#tabProducts').addClass('myProductsTab');
                $('#myAccountMyPersonalInfoTab').show();
                $('#myAccountMyProductsTab').hide();
            });
            $('#tabPersonalInfo').mouseover(function () {
                $('#tabPersonalInfo').addClass('myPersonalInfoTabOnMouseOver');
                $('#tabPersonalInfo').removeClass('myPersonalInfoTab');
            });
            $('#tabPersonalInfo').mouseout(function () {
                if (selectedTab === 1) {
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
                $('#tabPersonalInfo').removeClass('myPersonalInfoTabOnMouseOver');
                $('#tabPersonalInfo').addClass('myPersonalInfoTab');
                $('#tabProducts').addClass('myProductsTabOnMouseOver');
                $('#tabProducts').removeClass('myProductsTab');
                $('#myAccountMyPersonalInfoTab').hide();
                $('#myAccountMyProductsTab').show();
            });
            $('#tabProducts').mouseover(function () {
                $('#tabProducts').addClass('myProductsTabOnMouseOver');
                $('#tabProducts').removeClass('myProductsTab');
            });
            $('#tabProducts').mouseout(function () {
                if (selectedTab === 2) {
                    $('#tabProducts').addClass('myProductsTabOnMouseOver');
                    $('#tabProducts').removeClass('myProductsTab');
                }
                else {
                    $('#tabProducts').removeClass('myProductsTabOnMouseOver');
                    $('#tabProducts').addClass('myProductsTab');
                }
            });
        });
    </script>
</asp:Content>
