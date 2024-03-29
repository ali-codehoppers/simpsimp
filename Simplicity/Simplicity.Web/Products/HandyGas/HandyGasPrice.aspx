﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Common/Products.master" AutoEventWireup="true" CodeBehind="HandyGasPrice.aspx.cs" Inherits="Simplicity.Web.Products.HandyGas.HandyGasPrice" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="LeftNavPlaceHolder" runat="server">
    <div class="leftNavBarGas">
        <div>
            <a href="../../WatchDemo.aspx?product_id=3" id="watch_gas"></a>
        </div>
        <div>
            <a href="HandyGasPrice.aspx?productid=3" id="buy_gas"></a>
        </div>
        <div>
            <a href="HandyGasPrice.aspx?productid=3&try=try" id="try_gas"></a>
        </div>
        <div>
            <a href="../../CallMeBack.aspx" id="call_gas"></a>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentsPlaceHolder" runat="server">
    <div id="subdirectory" class="bottom_border">
        <a href="../Home.aspx" class="login">Products</a> &gt;&gt; <a href="Home.aspx" class="login">
            HandyGas</a>
    </div>
    <div id="secnavbar" class="floatLeft">
        <div id="icon1" class="floatLeft">
            <h2>
                <span class="stylecolor">Simplicity</span>
                <br />
                HandyGas</h2>
        </div>
        <div id="nsecnavbar" style="text-align: right">
            <div id="hardicon" class="floatRight">
                <a href="javascript:populateContents('../HardwareSpecifications.aspx','contentsDiv')"
                    class="icon_link">
                    <asp:Image ID="Image5" ImageUrl="~/Images/icon_clientsystem_requirement.jpg" class="imgdim"
                        runat="server" /><br />
                    Hardware Specs</a>
            </div>
            <div id="priceicon" class="floatRight">
                <asp:HyperLink ID="HyperLink1" NavigateUrl="~/Products/HandyGas/HandyGasPrice.aspx?productid=3" CssClass="icon_link" runat="server">
                    <asp:Image ID="Image4" ImageUrl="~/Images/icon_price.jpg" alt="" class="imgdim" runat="server" /><br />
                    Prices/Editions</asp:HyperLink>
            </div>
            <div id="homeicon" class="floatRight">
                <a href="javascript:populateContents('Details.aspx','contentsDiv')" class="icon_link">
                    <asp:Image ID="Image1" ImageUrl="~/Images/icon_home_GAS.jpg" Width="38" Height="30"
                        runat="server" /><br />
                    Home </a>
            </div>
            
        </div>
        <div>
                <asp:Image ID="Image6" ImageUrl="~/Images/subheading_bar.jpg" Height="21" runat="server" />
            </div>
    </div>
    <div class="text" id="contentsDiv">

    </div>

</asp:Content>
