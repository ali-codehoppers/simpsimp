<%@ Page Title="" Language="C#" MasterPageFile="~/Common/Products.master" AutoEventWireup="true"
    CodeBehind="Home.aspx.cs" Inherits="eForms.Web.Products.HandyServe.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="LeftNavPlaceHolder" runat="server">
<div class="leftNavBarHServe">
    <div>
        <a href="../../WatchDemo.aspx?product_id=4" id="watch_serve" class="watch-demo"></a>
    </div>
    <div>
        <a href="HandyServePrice.aspx?productid=4" id="buy_serve"></a>
    </div>
    <div>
        <a href="HandyServePrice.aspx?productid=4&try=try" id="try_serve"></a>
    </div>
    <div>
        <a href="../../CallMeBack.aspx" id="call_serve"></a>
    </div>
</div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentsPlaceHolder" runat="server">
    <div id="subdirectory" class="bottom_border">
        <a href="../Home.aspx" class="login">Products</a> &gt;&gt; <a href="Home.aspx" class="login">
            HandyServe</a>
    </div>
    <div id="secnavbar" class="floatLeft">
        <div id="icon1" class="floatLeft">
            <h2>
                <span class="stylecolor">Simplicity</span>
                <br />
                HandyServe</h2>
        </div>
        <div id="nsecnavbar">
            <div id="hardicon" class="floatRight">
                <a href="javascript:populateContents('../HardwareSpecifications.aspx','contentsDiv')"
                    class="icon_link">
                    <asp:Image ID="Image5" ImageUrl="~/Images/icon_clientsystem_requirement.jpg" CssClass="imgdim"
                        runat="server" /><br />
                    Hardware Specs</a>
            </div>
            <div id="priceicon" class="floatRight">
                <asp:HyperLink ID="HyperLink1" NavigateUrl="~/Products/HandyServe/HandyServePrice.aspx?productid=4" CssClass="icon_link" runat="server">
                    <asp:Image ID="Image4" ImageUrl="~/Images/icon_price.jpg" CssClass="imgdim" runat="server" /><br />
                    Prices/Editions</asp:HyperLink>
            </div>
            <div id="homeicon" class="floatRight">
                <a href="javascript:populateContents('Details.aspx','contentsDiv')" class="icon_link">
                    <asp:Image ID="Image1" ImageUrl="~/Images/icon_home_server.jpg" Width="38" Height="30"
                        runat="server" /><br />
                    Home </a>
            </div>
            <div>
                <p>
                <asp:Image ID="Image6" ImageUrl="~/Images/subheading_bar.jpg" Height="21" runat="server" />
              </p>
            </div>
        </div>
    </div>
    <div class="text" id="contentsDiv">
        <p>Do you want an innovative mobile app for your field operatives?        Are you confident that your operatives and engineers are achieving the key performance
            indicators (KPIs) demanded by your clients? Do you have the KPI analysis available
            in real time? For example:-</p>
        <ul>
            <li class="list">Proportion of sites and appliances checked and repaired</li>
            <li class="list">Visits not completed owing to non-access</li></ul>
        <p>
            Are you happy with the labour utilisation of your service engineers? If you could
            plan one extra appointment per day/engineer, what would be the impact on your bottom
            line?</p>
        <p>
            Simplicity HandyServe empowers your team of engineers by letting them manage visits,
            inspections and certification on a Smartphone. The engineers use practical screens
            on the phone to:-
        </p>
        <ul>
            <li class="list">Know where they are going with all the information to complete the call</li>
            <li class="list">Survey and record results</li>
            <li class="list">Confirm CP12. PAT testing and other certification</li>
            <li class="list">Handle variations</li>
            <li class="list">Order parts and book follow-on visits</li>
            <li class="list">Upload status in real-time to head-office</li></ul>
        <p>
            Simplicity HandyServe runs on MS Windows Mobile powered smartphones added to the
            agreement with your current service provider and costs just £110/month per engineer.
            Efficiency and effectiveness at an affordable price.</p>
    </div>
</asp:Content>
