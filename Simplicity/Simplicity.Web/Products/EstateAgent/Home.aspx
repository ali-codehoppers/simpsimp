<%@ Page Title="" Language="C#" MasterPageFile="~/Common/Products.master" AutoEventWireup="true"
    CodeBehind="Home.aspx.cs" Inherits="Simplicity.Web.Products.EstateAgent.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="LeftNavPlaceHolder" runat="server">
    <div class="leftNavBarEA">
        <div>
            <a href="../../WatchDemo.aspx?product_id=6" id="watch_ea"></a>
        </div>
        <div>
            <a href="EstateAgentPrice.aspx?productid=6" id="buy_ea"></a>
        </div>
        <div>
            <a href="EstateAgentPrice.aspx?productid=6&try=try" id="try_ea"></a>
        </div>
        <div>
            <a href="../../CallMeBack.aspx" id="call_ea"></a>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentsPlaceHolder" runat="server">
    <div id="subdirectory" class="bottom_border">
        <a href="../Home.aspx" class="login">Products</a> &gt;&gt; <a href="Home.aspx" class="login">
            Estate Agent</a>
    </div>
    <div id="secnavbar" class="floatLeft">
        <div id="icon1" class="floatLeft">
            <h2>
                <span class="stylecolor">Simplicity</span>
                <br />
                Estate Agent</h2>
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
                 <asp:HyperLink ID="HyperLink1" NavigateUrl="~/Products/EstateAgent/EstateAgentPrice.aspx?productid=6" CssClass="icon_link" runat="server">
                    <asp:Image ID="Image4" ImageUrl="~/Images/icon_price.jpg" alt="" class="imgdim" runat="server" /><br />
                    Prices/Editions</asp:HyperLink>
            </div>
            <div id="homeicon" class="floatRight">
                <a href="javascript:populateContents('Details.aspx','contentsDiv')" class="icon_link">
                    <asp:Image ID="Image1" ImageUrl="~/Images/icon_home_LEC.jpg" Width="38" Height="30"
                        runat="server" /><br />
                    Home </a>
            </div>
            <div>
                <asp:Image ID="Image6" ImageUrl="~/Images/subheading_bar.jpg" Height="21" runat="server" />
            </div>
        </div>
    </div>
    <div class="text" id="contentsDiv">
        <%--<p>
            Simplicity HandyLEC empowers your team of engineers by letting them manage visits,
            inspections and PAT testing on a Smartphone. The engineers use practical screens
            on the phone to:-</p>
        <ul>
            <li class="list">Know where they are going with all the information to complete the call</li>
            <li class="list">Survey and record results</li>
            <li class="list">Confirm PAT certification</li>
            <li class="list">Book parts and next appointment for variations</li>
            <li class="list">Upload status in real-time to head-office</li></ul>
        <p>
            Simplicity HandyLEC runs on MS Windows Mobile powered smartphones added to the
            agreement with your current service provider.</p>--%>
    </div>
</asp:Content>
