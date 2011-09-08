<%@ Page Title="" Language="C#" MasterPageFile="~/Common/Products.master" AutoEventWireup="true"
    CodeBehind="Home.aspx.cs" Inherits="Simplicity.Web.Products.EAS.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="LeftNavPlaceHolder" runat="server">
    <div class="leftNavBarEAS">
        <div>
            <a href="../../WatchDemo.aspx?product_id=1" id="watch_eas"></a>
        </div>
        <div>
            <a href="EASPrice.aspx?productid=1" id="buy_eas"></a>
        </div>
        <div>
            <a href="EASPrice.aspx?productid=1&try=try" id="try_eas"></a>
        </div>
        <div>
            <a href="../../CallMeBack.aspx" id="call_eas"></a>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentsPlaceHolder" runat="server">
    <div id="subdirectory" class="bottom_border">
        <a href="../Home.aspx" class="login">Products</a> &gt;&gt; <a href="Home.aspx" class="login">
            Simplicity Online</a>
    </div>
    <div id="secnavbar" class="floatLeft">
        <div id="icon1" class="floatLeft">
            <h2>
                <span class="stylecolor">Simplicity</span>
                Online</h2>
        </div>
        <div id="nsecnavbar">
            <div id="hardicon" class="floatRight">
                <a href="javascript:populateContents('../HardwareSpecifications.aspx','contentsDiv')"
                    class="icon_link">
                    <asp:Image ID="Image5" ImageUrl="~/Images/icon_clientsystem_requirement.jpg" class="imgdim"
                        runat="server" /><br />
                    Hardware Specs</a>
            </div>
            <div id="priceicon" class="floatRight">
                <asp:HyperLink ID="HyperLink1" NavigateUrl="~/Products/EAS/EASPrice.aspx?productid=1" CssClass="icon_link" runat="server">
                    <asp:Image ID="Image4" ImageUrl="~/Images/icon_price.jpg" alt="" class="imgdim" runat="server" /><br />
                    Prices/Editions</asp:HyperLink>
            </div>
            <div id="homeicon" class="floatRight">
                <a href="javascript:populateContents('Details.aspx','contentsDiv')" class="icon_link">
                    <asp:Image ID="Image1" ImageUrl="~/Images/icon_home_EAS.jpg" Width="38" Height="30"
                        runat="server" /><br />
                    Home </a>
            </div>
            <div>
                <asp:Image ID="Image6" ImageUrl="~/Images/subheading_bar.jpg" Height="21" runat="server" />
            </div>
        </div>
    </div>
    <div class="text" id="contentsDiv">
        <p>
            This suite of web-based software will automate your business processes so you can
            reach optimum profit and business performance. Now, thanks to Simplicity you can
            move up to an enterprise application suite that requires nothing more than a web
            browser to use and is available on low-cost subscription.</p>
        <p>
            The completely managed service - often called Software as a Service (SaaS) - has tools on a shared, single database, which cover the critical business processes
            that impact profit. The suite includes:
        </p>
        <ul>
            <li class="list">Enquiries &amp; projects </li>
            <li class="list">Invoices </li>
            <li class="list">Diary </li>
            <li class="list">Payroll </li>
            <li class="list">Training</li>
            <li class="list">Suppliers</li>
            <li class="list">Petty cash </li>
            <li class="list">Construction Industry Scheme</li>
            <li class="list">Contractors</li>
            <li class="list">Vehicle Management </li>
            <li class="list">Asset Management </li>
        </ul>
        <blockquote>
          <p>Click below to find out more  information on how Simplicity Online can help your business </p>
</blockquote>
        <ul>
          <li class="list"><a href="home2.aspx">Top 15 issues that businesses face</a></li>
          <li class="list"><a href="home2.aspx">Businesses face Recession</a> </li>
        </ul>
    </div>
    
</asp:Content>
