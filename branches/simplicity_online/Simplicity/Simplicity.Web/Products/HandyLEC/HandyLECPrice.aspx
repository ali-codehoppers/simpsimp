<%@ Page Title="" Language="C#" MasterPageFile="~/Common/Products.master" AutoEventWireup="true" CodeBehind="HandyLECPrice.aspx.cs" Inherits="Simplicity.Web.Products.HandyLEC.HandyLECPrice" %>
<%@ Register src="../../Common/Controls/PriceEdition.ascx" tagname="PriceEdition" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="LeftNavPlaceHolder" runat="server">
    <div class="leftNavBarLEC">
        <div>
            <a href="../../WatchDemo.aspx?product_id=5" id="watch_lec"></a>
        </div>
        <div>
            <a href="HandyLECPrice.aspx?productid=5" id="buy_lec"></a>
        </div>
        <div>
            <a href="HandyLECPrice.aspx?productid=5&try=try" id="try_lec"></a>
        </div>
        <div>
            <a href="../../CallMeBack.aspx" id="call_lec"></a>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentsPlaceHolder" runat="server">
   <div id="subdirectory" class="bottom_border">
        <a href="../Home.aspx" class="login">Products</a> &gt;&gt; <a href="Home.aspx" class="login">
            HandyLEC</a>
    </div>
    <div id="secnavbar" class="floatLeft">
        <div id="icon1" class="floatLeft">
            <h2>
                <span class="stylecolor">Simplicity</span>
                <br />
                HandyLEC</h2>
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
                 <asp:HyperLink ID="HyperLink1" NavigateUrl="~/Products/HandyLEC/HandyLECPrice.aspx?productid=5" CssClass="icon_link" runat="server">
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

        <uc1:PriceEdition ID="PriceEdition1" runat="server" />

    </div>
</asp:Content>
