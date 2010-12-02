<%@ Page Title="" Language="C#" MasterPageFile="~/Common/Main.Master" AutoEventWireup="true" CodeBehind="FAQ.aspx.cs" Inherits="Simplicity.Web.FAQ" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" runat="server">
    <div id="faqsHeader">
        <h2><span style="color: #666666;">SIMPLICITY</span> FAQs</h2>
    </div>
    <div>
        <asp:Image ID="Image1" ImageUrl="~/Images/subheading_bar.jpg" Height="21" runat="server" />
    </div>
        
    <div style="padding-left:50px; height:200px;">
        Frequently asked questions content goes here
    </div>
       
</asp:Content>
