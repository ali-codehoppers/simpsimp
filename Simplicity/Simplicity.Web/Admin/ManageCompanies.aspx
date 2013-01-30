<%@ Page Title="Manage Companies" Language="C#" MasterPageFile="AdminMaster.Master" AutoEventWireup="true" CodeBehind="ManageCompanies.aspx.cs" Inherits="Simplicity.Web.Admin.ManageCompanies" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        function openAddNewCompany() {
            $("#BodyContentPlaceHolder_CompanyTabCompanyName").attr("disabled", false);
            $("#BodyContentPlaceHolder_CompanyTabCompanyName").removeAttr("disabled");
            $("#BodyContentPlaceHolder_CompanyTabCompanyName").val("");
            openAddCompany();
        }
        function openAddCompany() {
            $("#CompanyTab").dialog({
                width: 640,
                height: 540,
                title: 'Add New Company Information',
                modal: true
            });
            $("#CompanyTab").dialog("open");
            $("#CompanyTab").parent().appendTo($("form:first"));
        }
        //function openAddCompany() {
        //    $("#UserTab").dialog({
        //        width: 640,
        //        height: 540,
        //        title: 'Add New Company Information',
        //        modal: true
        //    });
        //    $("#UserTab").dialog("open");
        //    $("#UserTab").parent().appendTo($("form:first"));
        //}
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" runat="server">

    <div id="CompanyTab" style="display: none">
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
                        <asp:ListItem Text="What is your favourite Colour?" Value="21"></asp:ListItem>
                        <asp:ListItem Text="What is your favourite Flower?" Value="22"></asp:ListItem>
                        <asp:ListItem Text="What is your mothers Maiden Name?" Value="23"></asp:ListItem>
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
                <asp:Label ID="Label5" runat="server" Text="Company Name"></asp:Label>
            </div>
            <div class="col2">
                <div class="forgetErrorMsg">
                    <asp:TextBox ID="CompanyTabCompanyName" CssClass="login_field_big" MaxLength="100" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="* Enter Company Name"
                        ControlToValidate="CompanyTabCompanyName" CssClass="errorMessage" Display="Dynamic" ValidationGroup="PersonalInfoGroup"></asp:RequiredFieldValidator>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col1">
                <asp:Label ID="Label20" runat="server" Text="Job Title"></asp:Label>
            </div>
            <div class="col2">
                <asp:TextBox ID="jobtitle" CssClass="login_field_big" MaxLength="255" runat="server"></asp:TextBox>
            </div>
        </div>
        <div class="row">
            <div class="col1">
                <asp:Label ID="Label21" runat="server" Text="Address No."></asp:Label>
            </div>
            <div class="col2">
                <asp:TextBox ID="CompanyTabAddressNo" MaxLength="32" CssClass="login_field_big" runat="server"></asp:TextBox>
            </div>
        </div>
        <div class="row">
            <div class="col1">
                <asp:Label ID="Label22" runat="server" Text="Address Line 1"></asp:Label>
            </div>
            <div class="col2">
                <div class="forgetErrorMsg">
                    <asp:TextBox ID="CompanyTabAddressLine1" CssClass="login_field_big" MaxLength="60" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="CompanyTabAddressLine1"
                        ErrorMessage="* Address Line 1 required" Display="Dynamic" ValidationGroup="PersonalInfoGroup"> 
                    </asp:RequiredFieldValidator>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col1">
                <asp:Label ID="Label23" runat="server" Text="Address Line 2"></asp:Label>
            </div>
            <div class="col2">
                <asp:TextBox ID="CompanyTabAddressLine2" CssClass="login_field_big" MaxLength="60" runat="server"></asp:TextBox>
            </div>
        </div>
        <div class="row">
            <div class="col1">
                <asp:Label ID="Label24" runat="server" Text="Address Line 3"></asp:Label>
            </div>
            <div class="col2">
                <asp:TextBox ID="CompanyTabAddressLine3" CssClass="login_field_big" MaxLength="60" runat="server"></asp:TextBox>
            </div>
        </div>
        <div class="row">
            <div class="col1">
                <asp:Label ID="Label25" runat="server" Text="Address Line 4"></asp:Label>
            </div>
            <div class="col2">
                <asp:TextBox ID="CompanyTabAddressLine4" CssClass="login_field_big" MaxLength="60" runat="server"></asp:TextBox>
            </div>
        </div>
        <div class="row">
            <div class="col1">
                <asp:Label ID="Label26" runat="server" Text="Address Line 5"></asp:Label>
            </div>
            <div class="col2">
                <asp:TextBox ID="CompanyTabAddressLine5" CssClass="login_field_big" MaxLength="60" runat="server"></asp:TextBox>
            </div>
        </div>
        <div class="row">
            <div class="col1">
                <asp:Label ID="Label27" runat="server" Text="Postal Code"></asp:Label>
            </div>
            <div class="col2">
                <div class="forgetErrorMsg">
                    <asp:TextBox ID="CompanyTabPostalCode" CssClass="login_field_big" MaxLength="9" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ErrorMessage="* Enter Postal Code"
                        ControlToValidate="CompanyTabPostalCode" CssClass="errorMessage" Display="Dynamic" ValidationGroup="PersonalInfoGroup"></asp:RequiredFieldValidator>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col1">
                <asp:Label ID="Label28" runat="server" Text="Town"></asp:Label>
            </div>
            <div class="col2">
                <asp:TextBox ID="CompanyTabTown" CssClass="login_field_big" MaxLength="60" runat="server"></asp:TextBox>
            </div>
        </div>
        <div class="row">
            <div class="col1">
                <asp:Label ID="Label29" runat="server" Text="County"></asp:Label>
            </div>
            <div class="col2">
                <asp:TextBox ID="CompanyTabCounty" CssClass="login_field_big" MaxLength="60" runat="server"></asp:TextBox>
            </div>
        </div>
        <div class="row">
            <div class="col1">
                <asp:Label ID="Label30" runat="server" Text="Country"></asp:Label>
            </div>
            <div class="col2">
                <asp:TextBox ID="CompanyTabCountry" CssClass="login_field_big" MaxLength="60" runat="server"></asp:TextBox>
            </div>
        </div>
        <div class="row">
            <div class="col1">
                <asp:Label ID="Label31" runat="server" Text="Telephone 1"></asp:Label>
            </div>
            <div class="col2">
                <div class="forgetErrorMsg">
                    <asp:TextBox ID="CompanyTabTelephone1" CssClass="login_field_big" MaxLength="30" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator10" runat="server" ControlToValidate="CompanyTabTelephone1"
                        ErrorMessage="* Telephone 1 must have atleast 5 digits" ValidationExpression="[\s\w]*[\w\s]*\d{5,30}[\s\w]*[\w\s]*"
                        Display="Dynamic" ValidationGroup="PersonalInfoGroup">
                    </asp:RegularExpressionValidator>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col1">
                <asp:Label ID="Label32" runat="server" Text="Telephone 2"></asp:Label>
            </div>
            <div class="col2">
                <div class="forgetErrorMsg">
                    <asp:TextBox ID="CompanyTabTelephone2" CssClass="login_field_big" MaxLength="30" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator11" runat="server" ControlToValidate="CompanyTabTelephone2"
                        ErrorMessage="* Telephone 2 must have atleast 5 digits" ValidationExpression="[\s\w]*[\w\s]*\d{5,30}[\s\w]*[\w\s]*"
                        Display="Dynamic" ValidationGroup="PersonalInfoGroup">
                    </asp:RegularExpressionValidator>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col1">
                <asp:Label ID="Label33" runat="server" Text="Fax"></asp:Label>
            </div>
            <div class="col2">
                <div class="forgetErrorMsg">
                    <asp:TextBox ID="CompanyTabFax" CssClass="login_field_big" MaxLength="30" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator12" runat="server" ControlToValidate="CompanyTabFax"
                        ErrorMessage="* Fax must have atleast 5 digits" ValidationExpression="[\s\w]*[\w\s]*\d{5,30}[\s\w]*[\w\s]*"
                        Display="Dynamic" ValidationGroup="PersonalInfoGroup">
                    </asp:RegularExpressionValidator>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col1">
                <asp:Label ID="Label34" runat="server" Text="Mobile"></asp:Label>
            </div>
            <div class="col2">
                <div class="forgetErrorMsg">
                    <asp:TextBox ID="CompanyTabMobile" CssClass="login_field_big" MaxLength="30" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator13" runat="server" ControlToValidate="CompanyTabMobile"
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
            <asp:ImageButton ID="AddCompanyAdminButton" runat="server" ImageUrl="../images/btn_continue.jpg"
                Width="107" Height="37" Visible="true" OnClick="AddCompanyAdmin_Click" ValidationGroup="PersonalInfoGroup" />
            <asp:ImageButton ID="AddAdminPopUP_Button" runat="server" ImageUrl="../images/btn_continue.jpg"
                Width="107" Height="37" Visible="false" OnClick="AddAdminPopUpButton_Click" ValidationGroup="PersonalInfoGroup" />
        </div>
    </div>


    <div id="EditCompanyDetailsDiv" clientidmode="Static" runat="server">
        <div class="row">
            <div class="col1">
                <asp:Label ID="Label4" runat="server" Text="Company Name"></asp:Label>
            </div>
            <div class="col2">
                <div class="forgetErrorMsg">
                    <asp:TextBox ID="companyname" CssClass="login_field_big" MaxLength="100" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="* Enter Company Name"
                        ControlToValidate="companyname" CssClass="errorMessage" Display="Dynamic" ValidationGroup="EditCompanyDetails"></asp:RequiredFieldValidator>
                </div>
            </div>
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
                        ErrorMessage="* Address Line 1 required" Display="Dynamic" ValidationGroup="EditCompanyDetails"> 
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
                        ControlToValidate="postalcode" CssClass="errorMessage" Display="Dynamic" ValidationGroup="EditCompanyDetails"></asp:RequiredFieldValidator>
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
                        Display="Dynamic" ValidationGroup="EditCompanyDetails">
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
                        Display="Dynamic" ValidationGroup="EditCompanyDetails">
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
                        Display="Dynamic" ValidationGroup="EditCompanyDetails">
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
                        Display="Dynamic" ValidationGroup="EditCompanyDetails">
                    </asp:RegularExpressionValidator>
                </div>
            </div>
        </div>
        <div style="clear:both;"></div>
        <div class="myaccountinfoContinue" style="margin-top:20px;">
            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="../images/btn_continue.jpg"
                Width="107" Height="37" OnClick="btnSave_Click" ValidationGroup="EditCompanyDetails" />
        </div>
    </div>
    <div id="GridDiv" runat="server" style="width: 90%; margin: auto">
        <div style="padding-top:10px;">
            <h2>
                Manage Companies
            </h2>
        </div>
        <div style="padding-top:20px;">
            <div style="padding:0px 5px 10px 0; display:inline;">
                <asp:Button runat="server" Text="Add Company" ID="AddCompanyPopUpButton" OnClick="AddCompanyPopUpButton_Click" style="width: 150px; height: 40px; font-weight: bold;" />
                <%--<input type="button" value="Add Company" onclick="openAddNewCompany()" style="width: 150px; height: 40px; font-weight: bold;" />--%>
            </div>
            <div style="padding:0px 5px 10px 0; display:inline;">
                <asp:Button runat="server" Text="Add Admin" ID="AddAdminButton" OnClick="AddAdminButton_Click" style="width: 150px; height: 40px; font-weight: bold;" />
            </div>
        </div>

        <div id="searchDiv" style="margin:20px;">
            <center>
                <div style="display:inline;margin-right:5px;">
                    <asp:TextBox runat="server" Height="20px" AutoPostBack="true" style="border-color:black;border:1px solid; border-radius:5px;" Width="300px" ID="SearchTextBox" />
                </div>
                <div style="display:inline;">
                    <asp:Button ID="searchButton" OnClick="SearchCompanies_ButtonClickEvent" Text="Search Companies" runat="server" />
                </div>
                <div style="font-size:85%;color:#999999;position:relative;left:-50px;">Enter Text to perform search on Company Name, Address and Telephone.</div>
            </center>
        </div>

        <asp:EntityDataSource ID="SimplicityDataSource" runat="server" ConnectionString="name=SimplicityEntities"
            DefaultContainerName="SimplicityEntities" EnableDelete="True" EnableFlattening="False"
            EnableInsert="True" EnableUpdate="True" EntitySetName="Companies" Include="Address" AutoGenerateWhereClause="False" >
        </asp:EntityDataSource>

        <%--<asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True"
                CssClass="table_header_result" Style="width: 100%;" AutoGenerateColumns="False"
                DataKeyNames="sequence" OnRowDeleting="GridView1_RowDeleting" DataSourceID="odsDeptOrder"
                PageSize="50" OnRowCommand="GridView1_RowCommand">

        </asp:GridView>--%>
        <div style="padding-bottom:30px;">
            <asp:GridView ID="UserGrid" runat="server" PageSize="30" DataKeyNames="CompanyID" Style="width: 100%"
                DataSourceID="SimplicityDataSource" OnRowDeleting="UserGrid_RowDeleting" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False"
                OnRowCommand="UserGrid_RowCommand" >

                <Columns>
                    <asp:TemplateField HeaderText="Delete Company" InsertVisible="False">
                        <HeaderStyle Width="10%" Font-Bold="true" />
                        <ItemTemplate>
                            <center>
                                <asp:LinkButton ID="DeleteCompanyButton" runat="server" Text="Delete" CommandName="Delete" CommandArgument='<%#Eval("CompanyID")%>'
                                    OnClientClick="return confirm('Are you sure you want to delete this Company?');" />
                            </center>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Edit Company Details" InsertVisible="False">
                        <HeaderStyle Width="10%" Font-Bold="true" />
                        <ItemTemplate>
                            <center>
                                <asp:LinkButton ID="EditCompany" runat="server" Text="Edit Company" CommandName="EditCompanyDetails" CommandArgument='<%#Eval("CompanyID")%>' />
                            </center>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Manage Company Users" InsertVisible="False">
                        <HeaderStyle Width="10%" Font-Bold="true" />
                        <ItemTemplate>
                            <center>
                                <asp:LinkButton ID="ManageUsers" runat="server" Text="Manage Users" CommandName="ManageUser" CommandArgument='<%#Eval("CompanyID")%>' />
                            </center>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="Name" HeaderText="Company Name" SortExpression="Name">
                        <HeaderStyle Width="20%" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Address.AddressFull" HeaderText="Company Address" SortExpression="Address.AddressFull">
                        <HeaderStyle Width="25%" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Address.Telephone1" HeaderText="Telephone" SortExpression="Address.Telephone1">
                        <HeaderStyle Width="10%" />
                    </asp:BoundField>
                </Columns>
            </asp:GridView>
        </div>
    </div>
</asp:Content>
