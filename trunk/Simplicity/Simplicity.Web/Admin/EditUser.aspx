<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true"
    CodeBehind="EditUser.aspx.cs" Inherits="Simplicity.Web.Admin.EditUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" runat="server">
    <asp:HiddenField runat="server" ID="selectedUserValue"/>
    <div id="userAccountInfoTab">
        <div style="padding-bottom:20px;">
            <h2>
                Edit User Details.
            </h2>
        </div>
        <div class="row">
            <div class="col1">
                <asp:Label ID="EmailLabel" runat="server">Email</asp:Label></div>
            <div class="col2">
                <div class="forgetErrorMsg">
                    <asp:TextBox runat="server" CssClass="login_field_big" MaxLength="60" ID="emailfield" Enabled="false"></asp:TextBox>
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
                    <asp:TextBox ID="companyname" CssClass="login_field_big" MaxLength="100" runat="server" Enabled="false"></asp:TextBox>
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
            <div class="col1">
                <asp:Label ID="Label1" runat="server" Text="User Type"></asp:Label>
            </div>
            <div class="col2">
                <div class="forgetErrorMsg">
                    <asp:DropDownList runat="server" ID="userTypeList">
                        <asp:ListItem Enabled="false" Value="Admin">Ultra Nova Admin</asp:ListItem>
                        <asp:ListItem Value="Company_Admin">Admin</asp:ListItem>
                        <asp:ListItem Value="User">User</asp:ListItem>
                    </asp:DropDownList>
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
            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="../images/btn_continue.jpg" ValidationGroup="PersonalInfoGroup"
                Width="107" Height="37" OnClick="btnSave_Click" />
        </div>
    </div>
</asp:Content>
