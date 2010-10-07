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
            <a href="../../ProductPrices.aspx?productId=1" id="buy_eas"></a>
        </div>
        <div>
            <a href="../../ProductPrices.aspx?productId=1&try=try" id="try_eas"></a>
        </div>
        <div>
            <a href="../../CallMeBack.aspx" id="call_eas"></a>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentsPlaceHolder" runat="server">
    <div id="subdirectory" class="bottom_border">
        <a href="../Home.aspx" class="login">Products</a> &gt;&gt; <a href="Home.aspx" class="login">
            EAS</a>
    </div>
    <div id="secnavbar" class="floatLeft">
        <div id="icon1" class="floatLeft">
            <h2>
                <span class="stylecolor">Simplicity</span>
                <br />
                EAS</h2>
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
                <a href="../Products/HSPriceProduct.aspx" class="icon_link">
                    <asp:Image ID="Image4" ImageUrl="~/Images/icon_price.jpg" alt="" class="imgdim" runat="server" /><br />
                    Prices/Editions</a>
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
            This suite of web-based software will automate your business processess so you can
            reach optimun profit and business performance. Not, thanks to Simplicity you can
            move up to an enterprise application suite that requires nothing more than a web
            browser to use and is available on low-cost subscription.</p>
        <p>
            The completely managed service - often called Software as a Service (SaaS) - has
            13 key tools on a shared, single database, which cover the critical business processess
            that impact profit. The suite includes:
        </p>
        <ul>
            <li class="list">Enquiries &amp; projects (Click Sales &amp; Marketing below)</li>
            <li class="list">Invoices (Click Finance &amp; Accounts below)</li>
            <li class="list">Diary (Click Resource mgt below)</li>
            <li class="list">Payroll (Click Finance &amp; Accounts below)</li>
            <li class="list">Training (Click Service above)</li>
            <li class="list">Suppliers (Click Operations below)</li>
            <li class="list">Petty cash (Click Finance &amp; Accounts below)</li>
            <li class="list">Construction Industry Scheme</li>
            <li class="list">Contractors</li>
            <li class="list">Vehicle Managment (Click Operations below)</li>
            <li class="list">Asset Management (Click Operations below)</li>
        </ul>
    </div>
</asp:Content>
