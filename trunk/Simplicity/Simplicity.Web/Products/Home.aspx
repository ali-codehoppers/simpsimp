<%@ Page Title="" Language="C#" MasterPageFile="~/Common/Products.master" AutoEventWireup="true"
    CodeBehind="Home.aspx.cs" Inherits="Simplicity.Web.Products.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolder" runat="server">
    <link href='<%=Page.ResolveClientUrl("~/Styles/products.css")%>' rel="stylesheet"
        type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="LeftNavPlaceHolder" runat="server">
    <div class="leftNavBar">
			<div> <a href="../WatchDemo.aspx" id="watch"> </a> </div>
			<div> <a href="../BuyProduct.aspx" id="buy"> </a> </div>
			<div> <a href="../BuyProduct.aspx?try=try" id="try"> </a> </div>
			<div> <a href="../CallMeBack.aspx" id="call"> </a> </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentsPlaceHolder" runat="server">
        <div id="icon1">
            <h2 id="ProductHeading">
                <span style="color: #cccccc;">OUR</span> PRODUCTS</h2>
        </div>
        <div>
            <asp:Image runat="server" ImageUrl="~/Images/subheading_bar.jpg" ID="Image1" /></div>
        <div>
        <p style="width:95%">
            Simplicity for business offers a suit of business software which require nothing
            more than a web browser or mobile phone to access.</p>
        <p style="width:95%">
            This Simplicity Software as a Service (SaaS) suits is packed with 14 specialist
            applications to help clients with a typical turnover of £1m-£20m to co-ordinate their
            whole business.</p>
        <p style="width:95%">
            It works across customer facing sales, marketing and project management departments, through to back-office operations and finance, for core activities over a wide range of industry sectors.</p>
        <p style="width:95%">
            Covering the critical business processes that impact profit and cash-in-bank, SimplicityEAS helps your people work effectively and optimise expensive resources. Managers have instant access to company-wide information and in-depth reporting, equipping them to plan better for the future.</p>
        <p style="width:95%">
            You will be amazed at how Simplicity can help your business to become smarter and more efficient.</p>
        <p style="width:95%">
            For more on the solutions which make up this impressive suite of software click on the Product links on left.</p>
    </div>
    
</asp:Content>
