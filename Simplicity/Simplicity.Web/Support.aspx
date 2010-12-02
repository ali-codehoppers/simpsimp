<%@ Page Title="" Language="C#" MasterPageFile="~/Common/Main.Master" AutoEventWireup="true"
    CodeBehind="Support.aspx.cs" Inherits="Simplicity.Web.Support" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" runat="server">  

    <div id="supportHeader">
        <h2><span style="color: #666666;">SIMPLICITY</span> SUPPORT</h2>
    </div>
    <div>
        <asp:Image ID="Image1" ImageUrl="~/Images/subheading_bar.jpg" Height="21" runat="server" />
    </div>
        
    <div style="padding-left:50px; height:200px;">
        For support <asp:HyperLink style="color:Blue" runat="server" ID="HyperLink1" NavigateUrl="http://www.gotoassist.com/ph/ultranovacoding/"
            Target="_blank">click here</asp:HyperLink>
    </div>
       
</asp:Content>
