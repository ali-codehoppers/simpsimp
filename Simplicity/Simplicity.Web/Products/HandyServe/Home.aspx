<%@ Page Title="" Language="C#" MasterPageFile="~/Common/Products.master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Simplicity.Web.Products.HandyServe.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="LeftNavPlaceHolder" runat="server">
    <div>
        <a href="index.html" id="watch_hns"></a>
    </div>
    <div>
        <a href="Technology.html" id="buy_hns"></a>
    </div>
    <div>
        <a href="features.html" id="try_hns"></a>
    </div>
    <div>
        <a href="download.html" id="call_hns"></a>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentsPlaceHolder" runat="server">
<div id="subdirectory" class="bottom_border">
                <a href="#" class="login">Products</a> &gt;&gt; <a href="#" class="login">Handy Server</a>
            </div>
            <div id="secnavbar" class="floatLeft">
                <div id="icon1" class="floatLeft">
                <h2>
                    <span class="stylecolor">Simplicity</span>
                    <br />
                    Handy Server</h2>
                </div>
                <div id="nsecnavbar">
                    <div id="hardicon" class="floatRight">
                        <a href="javascript:populateContents('../HardwareSpecifications.aspx','contentsDiv')" class="icon_link">
                        <asp:Image ID="Image5" ImageUrl="~/Images/icon_clientsystem_requirement.jpg" class="imgdim" runat="server"/><br />
                        Hardware Specs</a>
                    </div>

                    <div id="priceicon" class="floatRight">

                        <a href="../Products/HSPriceProduct.aspx" class="icon_link">
                        <asp:Image ID="Image4" ImageUrl="~/Images/icon_price.jpg" alt="" class="imgdim" runat="server"/><br />
                        Prices/Editions</a>
                    </div>
                    <div id="homeicon" class="floatRight">
                        <a href="javascript:populateContents('Details.aspx','contentsDiv')" class="icon_link">
                        <asp:Image ID="Image1" ImageUrl="~/Images/icon_home_LEC.jpg" width="38" height="30" runat="server"/><br />
                        Home
                        </a>
                    </div>
                    <div>
                        <asp:Image ID="Image6" ImageUrl="~/Images/subheading_bar.jpg" height="21" runat="server"/>
                    </div>
                </div>
            </div>
            <div class="text" id="contentsDiv">
                <h2>Want innovative mobile apps for your field operatives?</h2>
<p>Are you confident that your operatives and engineers are achieving the key performance indicators (KPIs) demanded by your clients? Do you have the KPI analysis availabe in real time? For example:-</p>
<ul><li>Proportion of sites and appliances checked and repaired</li>
<li>Visits not completed owing to non-access</li></ul>
<p>Are you happy with the labour utilisation of your service engineers? If you could plan one extra appointment per day/engineer what would be the impact on your botton line?</p>
<p>Simplicity Handy Server empowers your team of engineers by letting them manage visits, inspections and certification on a Smartphone. The engineers use practical screens on the phone to:-
</p>
<ul><li>
Know where they are going with all the information to complete the call</li>
<li>Survey amd record results</li>
<li>Confirm CP12. PAT testing and other certification</li>
<li>Handle variations</li>
<li>Order parts and book follow-on visits</li>
<li>Upload status in real-time to head-office</li></ul>
<p>Simplicity HandyServe runs on MS Windows Mobile powered smartphones added to the agreement with your current service provider and costs just 110/month per engineer. Efficeny and effectiveness at an affordable price</p>

            </div>
</asp:Content>
