<%@ Page Title="Manage Companies" Language="C#" MasterPageFile="AdminMaster.Master" AutoEventWireup="true" CodeBehind="ManageCompanies.aspx.cs" Inherits="Simplicity.Web.Admin.ManageCompanies" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
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
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" runat="server">
    <div id="CompanyTab" style="display: none">
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
        <div class="myaccountinfoContinue">
            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="../images/btn_continue.jpg"
                Width="107" Height="37" OnClick="btnSave_Click" ValidationGroup="PersonalInfoGroup" />
        </div>
    </div>
    <div style="width: 90%; margin: auto">
        <asp:EntityDataSource ID="SimplicityDataSource" runat="server" ConnectionString="name=SimplicityEntities"
            DefaultContainerName="SimplicityEntities" EnableDelete="True" EnableFlattening="False"
            EnableInsert="True" EnableUpdate="True" EntitySetName="Companies" EntityTypeFilter="Company">
        </asp:EntityDataSource>

        <asp:Repeater ID="UserRepeater" runat="server" 
            DataSourceID="SimplicityDataSource" 
            onitemcommand="UserRepeater_ItemCommand">
            <HeaderTemplate>
                <div style="width: 100%;padding-bottom:25px;">
                    <div class="floatLeft" style="width: 15%; padding: 1px; font-weight: bold">
                        <input type="button" value="Add Company" onclick="openAddCompany()" />
                    </div>
                    <div class="floatLeft" style="width: 15%; padding: 1px; font-weight: bold">
                        <div>
                            Edit Company</div>
                    </div>
                    <div class="floatLeft" style="width: 15%; padding: 1px; font-weight: bold">
                        <div>
                            Delete Company</div>
                    </div>
                    <div class="floatLeft" style="width: 49%; padding: 1px; font-weight: bold">
                        <div>
                            Company Name</div>
                    </div>
                    <div style="clear: both">
                    </div>
                </div>
            </HeaderTemplate>
            <ItemTemplate>
                <div style="width: 100%;">
                    <div class="floatLeft" style="width: 15%; padding: 1px;">
                       <asp:Button ID="AddUsers" runat="server" Text="Add Users" CommandName="AddUser" CommandArgument='<%#Eval("CompanyID")%>'/>
                    </div>
                    <div class="floatLeft" style="width: 15%; padding: 1px;">
                       <asp:Button ID="EditUsers" runat="server" Text="Edit User" CommandName="EditUser" CommandArgument='<%#Eval("CompanyID")%>'/>
                    </div>
                    <div class="floatLeft" style="width: 15%; padding: 1px;">
                       <asp:Button ID="DelUsers" runat="server" Text="Delete User" CommandName="DelUser" CommandArgument='<%#Eval("CompanyID")%>'/>
                    </div>
                    <div class="floatLeft" style="width: 49%; padding: 1px">
                        <div>
                            <asp:Label ID="CompanyName" runat="server" Text='<%#Eval("Name")%>'></asp:Label></div>
                    </div>
                    <div style="clear: both">
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
</asp:Content>
