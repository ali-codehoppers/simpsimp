<%@ Page Title="" Language="C#" MasterPageFile="AdminMaster.Master" AutoEventWireup="true"
    CodeBehind="ManageUser.aspx.cs" Inherits="Simplicity.Web.Admin.AdminDefault" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        function openAddUser() {
            $("#UserTab").dialog({
                width: 640,
                height: 540,
                title: 'Add New User Information',
                modal: true
            });
            $("#UserTab").dialog("open");
            $("#UserTab").parent().appendTo($("form:first"));
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" runat="server">
    <div id="UserTab" style="display: none">
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
        </div>
    </div>
    <div style="width: 90%; margin: auto">
        <asp:EntityDataSource ID="SimplicityDataSource" runat="server" ConnectionString="name=SimplicityEntities"
            DefaultContainerName="SimplicityEntities" EnableDelete="True" EnableFlattening="False"
            EnableInsert="True" EnableUpdate="True" EntitySetName="Users" EntityTypeFilter="User">
        </asp:EntityDataSource>
        <asp:Repeater ID="UserRepeater" runat="server" 
            DataSourceID="SimplicityDataSource" 
            onitemcommand="UserRepeater_ItemCommand">
            <HeaderTemplate>
                <div style="width: 100%;">
                    <div class="floatLeft" style="width: 14%; padding: 1px; font-weight: bold">
                       <input type="button" value="Add User" onclick="openAddUser()" />
                    </div>
                    <div class="floatLeft" style="width: 9%; padding: 1px; font-weight: bold">
                        <div>
                            Name</div>
                    </div>
                    <div class="floatLeft" style="width: 9%; padding: 1px; font-weight: bold">
                        <div>
                            Forname</div>
                    </div>
                    <div class="floatLeft" style="width: 9%; padding: 1px; font-weight: bold">
                        <div>
                            Surname</div>
                    </div>
                    <div class="floatLeft" style="width: 14%; padding: 1px; font-weight: bold">
                        <div>
                            Job Title</div>
                    </div>
                    <div class="floatLeft" style="width: 34%; padding: 1px; font-weight: bold">
                        <div>
                            Email</div>
                    </div>
                    <div class="floatLeft" style="width: 5%; padding: 1px; font-weight: bold">
                        <div>
                            Payment Type</div>
                    </div>
                    <div style="clear: both">
                    </div>
                </div>
            </HeaderTemplate>
            <ItemTemplate>
                <div style="width: 100%;">
                    <div class="floatLeft" style="width: 14%; padding: 1px;">
                       <asp:Button runat="server" Text="Subscribe" CommandName="Subscribe" CommandArgument='<%#Eval("UserID")%>'/>
                    </div>
                    <div class="floatLeft" style="width: 9%; padding: 1px">
                        <div>
                            <asp:Label ID="LabelFullName" runat="server" Text='<%#Eval("FullName")%>'></asp:Label></div>
                    </div>
                    <div class="floatLeft" style="width: 9%; padding: 1px">
                        <div>
                            <asp:Label ID="LabelForename" runat="server" Text='<%#Eval("Forename")%>'></asp:Label></div>
                    </div>
                    <div class="floatLeft" style="width: 9%; padding: 1px">
                        <div>
                            <asp:Label ID="LabelSurname" runat="server" Text='<%#Eval("Surname")%>'></asp:Label></div>
                    </div>
                    <div class="floatLeft" style="width: 14%; padding: 1px">
                        <div>
                            <asp:Label ID="LabelJobTitle" runat="server" Text='<%#Eval("JobTitle")%>'></asp:Label></div>
                    </div>
                    <div class="floatLeft" style="width: 34%; padding: 1px">
                        <div>
                            <asp:Label ID="LabelEmail" runat="server" Text='<%#Eval("Email")%>'></asp:Label></div>
                    </div>
                    <div class="floatLeft" style="width: 5%; padding: 1px">
                        <div>
                            <asp:Label ID="LabelPaymentType" runat="server" Text='<%#Eval("PaymentType")%>'></asp:Label></div>
                    </div>
                    <div style="clear: both">
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
</asp:Content>
