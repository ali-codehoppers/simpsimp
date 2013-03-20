<%@ Page Title="" Language="C#" MasterPageFile="~/Common/Main.Master" AutoEventWireup="true"
    CodeBehind="AccountAddress.aspx.cs" Inherits="eForms.Web.AccountAddress" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" runat="server">
    <div id="PaymentAddresssubdirectory" class="PaymentAddressbottom_border">
        <div>
            <a class="login" href="#">Trolley </a>&gt;&gt; <a class="PaymentAddresscurrent" href="#">
                Billing &amp; Shipping Information </a>&gt;&gt; <a class="login" href="#">Confirm Checkout
                </a>&gt;&gt; <a class="login" href="#">Payment Details </a>
        </div>
    </div>
    <div id="heading1">
        <h2>
            <span style="color: #666666;">BILLING &amp;</span> SHOPPING DETAILS</h2>
    </div>
    <div>
        <asp:Image ID="Image6" ImageUrl="~/Images/subheading_bar.jpg" Height="21" runat="server" />
    </div>
    <div class="clearFloat">
    </div>
    <div id="PaymentBilling" class="noFloat" style="padding-top: 5px; padding-left: 80px;">
        <!-- address div starts -->
        <h2>
            Billing Information</h2>
        <div class="row">
            <div style="padding-top: 10px; padding-bottom: 5px;">
                <asp:CheckBox runat="server" ID="BillingCheck" Checked="true" OnCheckedChanged="BillingCheck_CheckedChanged"
                    Text="Billing address is the same as the address of the Account" AutoPostBack="true" />
            </div>
        </div>
        <div class="row">
            <div class="col1">
                <asp:Label ID="lblAddressNo" runat="server" Text="Address No"></asp:Label></div>
            <div class="col2">
                <asp:TextBox ID="txtBillingAddressNo" CssClass="login_field_big" MaxLength="32" runat="server"></asp:TextBox></div>
        </div>
        <div class="row">
            <div class="col1">
                <asp:Label ID="lblAddressLine1" runat="server" Text="Address Line 1"></asp:Label></div>
            <div class="col2">
                <div class="forgetErrorMsg">
                    <asp:TextBox ID="txtBillingAddressLine1" MaxLength="60" CssClass="login_field_big" runat="server"></asp:TextBox>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col1">
                <asp:Label ID="lblAddressLine2" runat="server" Text="Address Line 2"></asp:Label></div>
            <div class="col2">
                <asp:TextBox ID="txtBillingAddressLine2" MaxLength="60" CssClass="login_field_big" runat="server"></asp:TextBox></div>
        </div>
        <div class="row">
            <div class="col1">
                <asp:Label ID="lblAddressLine3" runat="server" Text="Address Line 3"></asp:Label></div>
            <div class="col2">
                <asp:TextBox ID="txtBillingAddressLine3" MaxLength="60" CssClass="login_field_big" runat="server"></asp:TextBox></div>
        </div>
        <div class="row">
            <div class="col1">
                <asp:Label ID="lblAddressLine4" runat="server" Text="Address Line 4"></asp:Label></div>
            <div class="col2">
                <asp:TextBox ID="txtBillingAddressLine4" MaxLength="60" CssClass="login_field_big" runat="server"></asp:TextBox></div>
        </div>
        <div class="row">
            <div class="col1">
                <asp:Label ID="lblAddressLine5" runat="server" Text="Address Line 5"></asp:Label></div>
            <div class="col2">
                <asp:TextBox ID="txtBillingAddressLine5" MaxLength="60" CssClass="login_field_big" runat="server"></asp:TextBox></div>
        </div>
        <div class="dotted_line" style="margin-top: 10px; width: 90%">
        </div>
        <div class="row">
            <div class="col1">
                <asp:Label ID="lblPostCode" runat="server" Text="Post Code"></asp:Label></div>
            <div class="col2">
                <asp:TextBox ID="txtBillingPostCode" CssClass="login_field_big" MaxLength="9" runat="server"></asp:TextBox>
            </div>
        </div>
        <div class="row">
            <div class="col1">
                <asp:Label ID="lblTown" runat="server" Text="Town"></asp:Label></div>
            <div class="col2">
                <asp:TextBox ID="txtBillingTown" CssClass="login_field_big" MaxLength="60" runat="server"></asp:TextBox></div>
        </div>
        <div class="row">
            <div class="col1">
                <asp:Label ID="lblCounty" runat="server" Text="County"></asp:Label></div>
            <div class="col2">
                <asp:TextBox ID="txtBillingCounty" CssClass="login_field_big" MaxLength="60" runat="server"></asp:TextBox></div>
        </div>
        <div class="row">
            <div class="col1">
                <asp:Label ID="lblCountry" runat="server" Text="Country"></asp:Label></div>
            <div class="col2">
                <asp:TextBox ID="txtBillingCountry" CssClass="login_field_big" MaxLength="60" runat="server"></asp:TextBox></div>
        </div>
        <div class="row">
            <div class="col1">
                <asp:Label ID="lblTele1" runat="server" Text="Telephone 1"></asp:Label></div>
            <div class="col2">
                <div class="forgetErrorMsg">
                    <asp:TextBox ID="txtBillingTele1" CssClass="login_field_big" MaxLength="30" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txtBillingTele1"
                        ErrorMessage="* Telephone 1 must have atleast 5 digits" ValidationExpression="[\s\w]*[\w\s]*\d{5,30}[\s\w]*[\w\s]*"
                        Display="Dynamic">
                    </asp:RegularExpressionValidator>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col1">
                <asp:Label ID="lblTele2" runat="server" Text="Telephone 2"></asp:Label></div>
            <div class="col2">
                <div class="forgetErrorMsg">
                    <asp:TextBox ID="txtBillingTele2" CssClass="login_field_big" MaxLength="30" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtBillingTele2"
                        ErrorMessage="* Telephone 2 must have atleast 5 digits" ValidationExpression="[\s\w]*[\w\s]*\d{5,30}[\s\w]*[\w\s]*"
                        Display="Dynamic">
                    </asp:RegularExpressionValidator></div>
            </div>
        </div>
        <div class="row">
            <div class="col1">
                <asp:Label ID="lblFax" runat="server" Text="Fax"></asp:Label></div>
            <div class="col2">
                <div class="forgetErrorMsg">
                    <asp:TextBox ID="txtBillingFax" CssClass="login_field_big" MaxLength="30" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtBillingFax"
                        ErrorMessage="* Fax must have atleast 5 digits" ValidationExpression="[\s\w]*[\w\s]*\d{5,30}[\s\w]*[\w\s]*"
                        Display="Dynamic">
                    </asp:RegularExpressionValidator></div>
            </div>
        </div>
        <div class="row">
            <div class="col1">
                <asp:Label ID="lblMobile" runat="server" Text="Mobile"></asp:Label></div>
            <div class="col2">
                <div class="forgetErrorMsg">
                    <asp:TextBox ID="txtBillingMobile" CssClass="login_field_big" MaxLength="30" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtBillingMobile"
                        ErrorMessage="* Mobile must have atleast 5 digits" ValidationExpression="[\s\w]*[\w\s]*\d{5,30}[\s\w]*[\w\s]*"
                        Display="Dynamic">
                    </asp:RegularExpressionValidator></div>
            </div>
        </div>
        <div class="dotted_line" style="margin-top: 10px; width: 90%">
        </div>
    </div>
    <div id="PaymentShipping" class="noFloat" style="padding-top: 10px; padding-left: 80px;">
        <!-- address div starts -->
        <h2>
            Shipping Information</h2>
        <div class="row">
            <div style="padding-top: 10px; padding-bottom: 5px;">
                <asp:CheckBox ID="ShippingCheck" runat="server" Checked="true" Text="Shipping address is the same as the address of the Account"
                    OnCheckedChanged="ShippingCheck_CheckedChanged" AutoPostBack="true" />
            </div>
        </div>
        <div class="row">
            <div class="col1">
                <asp:Label ID="Label1" runat="server" Text="Address No"></asp:Label></div>
            <div class="col2">
                <asp:TextBox ID="txtShippingAddressNo" CssClass="login_field_big" MaxLength="32" runat="server"></asp:TextBox></div>
        </div>
        <div class="row">
            <div class="col1">
                <asp:Label ID="Label2" runat="server" Text="Address Line 1"></asp:Label></div>
            <div class="col2">
                <div class="forgetErrorMsg">
                    <asp:TextBox ID="txtShippingAddressLine1" CssClass="login_field_big" MaxLength="60" runat="server"></asp:TextBox>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col1">
                <asp:Label ID="Label3" runat="server" Text="Address Line 2"></asp:Label></div>
            <div class="col2">
                <asp:TextBox ID="txtShippingAddressLine2" CssClass="login_field_big" MaxLength="60" runat="server"></asp:TextBox></div>
        </div>
        <div class="row">
            <div class="col1">
                <asp:Label ID="Label4" runat="server" Text="Address Line 3"></asp:Label></div>
            <div class="col2">
                <asp:TextBox ID="txtShippingAddressLine3" CssClass="login_field_big" MaxLength="60" runat="server"></asp:TextBox></div>
        </div>
        <div class="row">
            <div class="col1">
                <asp:Label ID="Label5" runat="server" Text="Address Line 4"></asp:Label></div>
            <div class="col2">
                <asp:TextBox ID="txtShippingAddressLine4" CssClass="login_field_big" MaxLength="60" runat="server"></asp:TextBox></div>
        </div>
        <div class="row">
            <div class="col1">
                <asp:Label ID="Label6" runat="server" Text="Address Line 5"></asp:Label></div>
            <div class="col2">
                <asp:TextBox ID="txtShippingAddressLine5" CssClass="login_field_big" MaxLength="60" runat="server"></asp:TextBox></div>
        </div>
        <div class="dotted_line" style="margin-top: 10px; width: 90%">
        </div>
        <div class="row">
            <div class="col1">
                <asp:Label ID="Label7" runat="server" Text="Post Code"></asp:Label></div>
            <div class="col2">
                <asp:TextBox ID="txtShippingPostCode" CssClass="login_field_big" MaxLength="9" runat="server"></asp:TextBox>
            </div>
        </div>
        <div class="row">
            <div class="col1">
                <asp:Label ID="Label8" runat="server" Text="Town"></asp:Label></div>
            <div class="col2">
                <asp:TextBox ID="txtShippingTown" CssClass="login_field_big" MaxLength="60" runat="server"></asp:TextBox></div>
        </div>
        <div class="row">
            <div class="col1">
                <asp:Label ID="Label9" runat="server" Text="County"></asp:Label></div>
            <div class="col2">
                <asp:TextBox ID="txtShippingCounty" CssClass="login_field_big" MaxLength="60" runat="server"></asp:TextBox></div>
        </div>
        <div class="row">
            <div class="col1">
                <asp:Label ID="Label10" runat="server" Text="Country"></asp:Label></div>
            <div class="col2">
                <asp:TextBox ID="txtShippingCountry" CssClass="login_field_big" MaxLength="60" runat="server"></asp:TextBox></div>
        </div>
        <div class="row">
            <div class="col1">
                <asp:Label ID="Label11" runat="server" Text="Telephone 1"></asp:Label></div>
            <div class="col2">
                <div class="forgetErrorMsg">
                    <asp:TextBox ID="txtShippingTele1" CssClass="login_field_big" MaxLength="30" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtShippingTele1"
                        ErrorMessage="* Telephone 1 must have atleast 5 digits" ValidationExpression="[\s\w]*[\w\s]*\d{5,30}[\s\w]*[\w\s]*"
                        Display="Dynamic">
                    </asp:RegularExpressionValidator></div>
            </div>
        </div>
        <div class="row">
            <div class="col1">
                <asp:Label ID="Label12" runat="server" Text="Telephone 2"></asp:Label></div>
            <div class="col2">
                <div class="forgetErrorMsg">
                    <asp:TextBox ID="txtShippingTele2" CssClass="login_field_big" MaxLength="30" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="txtShippingTele2"
                        ErrorMessage="* Telephone 2 must have atleast 5 digits" ValidationExpression="[\s\w]*[\w\s]*\d{5,30}[\s\w]*[\w\s]*"
                        Display="Dynamic">
                    </asp:RegularExpressionValidator></div>
            </div>
        </div>
        <div class="row">
            <div class="col1">
                <asp:Label ID="Label13" runat="server" Text="Fax"></asp:Label></div>
            <div class="col2">
                <div class="forgetErrorMsg">
                    <asp:TextBox ID="txtShippingFax" CssClass="login_field_big" MaxLength="30" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="txtShippingFax"
                        ErrorMessage="* Fax must have atleast 5 digits" ValidationExpression="[\s\w]*[\w\s]*\d{5,30}[\s\w]*[\w\s]*"
                        Display="Dynamic">
                    </asp:RegularExpressionValidator></div>
            </div>
        </div>
        <div class="row">
            <div class="col1">
                <asp:Label ID="Label14" runat="server" Text="Mobile"></asp:Label></div>
            <div class="col2">
                <div class="forgetErrorMsg">
                    <asp:TextBox ID="txtShippingMobile" CssClass="login_field_big" MaxLength="30" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" ControlToValidate="txtShippingMobile"
                        ErrorMessage="* Mobile must have atleast 5 digits" ValidationExpression="[\s\w]*[\w\s]*\d{5,30}[\s\w]*[\w\s]*"
                        Display="Dynamic">
                    </asp:RegularExpressionValidator></div>
            </div>
        </div>
    </div>
    <div style="padding-left: 275px; padding-top: 10px; padding-bottom: 10px;">
        <asp:ImageButton ID="btnSave" ImageUrl="~/Images/btn_continue.jpg" runat="server"
            OnClick="btnSave_Click" />
    </div>
</asp:Content>
