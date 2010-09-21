<%@ Page Title="" Language="C#" MasterPageFile="~/Common/Products.master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Simplicity.Web.Products.HandyGas.Home" %>
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
                <a href="#" class="login">Products</a> &gt;&gt; <a href="#" class="login">Handy 
                Gas</a>
            </div>
            <div id="secnavbar" class="floatLeft">
                <div id="icon1" class="floatLeft">
                <h2>
                    <span class="stylecolor">Simplicity</span>
                    <br />
                    Handy Gas</h2>
                </div>
                <div id="nsecnavbar" style="text-align:right">
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
                        <asp:Image ID="Image1" ImageUrl="~/Images/icon_home_GAS.jpg" width="38" height="30" runat="server"/><br />
                        Home
                        </a>
                    </div>

                    <div>
                        <asp:Image ID="Image6" ImageUrl="~/Images/subheading_bar.jpg" height="21" runat="server"/>
                    </div>
                </div>
            </div>
            <div class="text" id="contentsDiv">
                <p>Simplicity HandyGas empowers your team of engineers by letting them manage visits, inspections and CP12 certification on a Smartphone.</p>
                <p>The engineers use practical screens on the phone to:-</p>
                <ul><li>Know where they are going with all the information to complete the call</li>
                <li>Survey and record results</li>
                <li>Confirm CP12 certification</li>
                <li>Handle variations</li>
                <li>Order parts and book follow-on visits</li>
                <li>Upload status in real-time to head-office</li></ul>
                <p>Simplicity handyGas runs on MS Windows Mobile powered smartphones which can be added to the agreement with your current service provider.</p>
            </div>
</asp:Content>
