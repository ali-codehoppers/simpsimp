<%@ Page Title="" Language="C#" MasterPageFile="~/Common/Main.Master" AutoEventWireup="true"
    CodeBehind="Support.aspx.cs" Inherits="Simplicity.Web.Support" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" runat="server">
    <div id="icon1" class="floatLeft" style="width:100%; padding-left:80px;">
        <h2>
            <span style="color: #cccccc;">SIMPLICITY</span> SUPPORT</h2>
        <div class="floatLeft">
            <asp:Image ID="Image6" ImageUrl="~/Images/subheading_bar.jpg" Height="21" runat="server" />
        </div>
    </div>
    <div class="floatLeft" style="padding-left:80px;">
        <asp:HyperLink runat="server" ID="SupportLink" NavigateUrl="http://www.gotoassist.com/ph/ultranovacoding/"
            Target="_blank">Support</asp:HyperLink>
    </div>
    <div class="clearFloat">
    </div>
</asp:Content>
