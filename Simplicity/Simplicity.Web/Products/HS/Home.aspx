﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Common/Products.master" AutoEventWireup="true"
    CodeBehind="Home.aspx.cs" Inherits="Simplicity.Web.Products.HS.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolder" runat="server">
    <link href='<%=Page.ResolveClientUrl("~/Styles/products.css")%>' rel="stylesheet"
        type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="LeftNavPlaceHolder" runat="server">
    <div class="leftNavBarHS">
        <div>
            <a href="../../WatchDemo.aspx?product_id=2" id="watch_hns"></a>
        </div>
        <div>
            <a href="HSPrice.aspx?productid=2" id="buy_hns"></a>
        </div>
        <div>
            <a href="HSPrice.aspx?productid=2&try=try" id="try_hns"></a>
        </div>
        <div>
            <a href="../../CallMeBack.aspx" id="call_hns"></a>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentsPlaceHolder" runat="server">
    <div id="subdirectory" class="bottom_border">
        <a href="../Home.aspx" class="login">Products</a> &gt;&gt; <a href="Home.aspx" class="login">
            Simplicity H&amp;S Live</a>
    </div>
    <div id="secnavbar" class="floatLeft">
        <div id="icon1" class="floatLeft">
            <h2>
                <span class="stylecolor">Simplicity</span>
                <br />
                H&amp;S Live</h2>
        </div>
        <div id="nsecnavbar">
            <div id="hardicon" class="floatRight">
                <a href="javascript:populateContents('../HardwareSpecifications.aspx','contentsDiv')"
                    class="icon_link">
                    <asp:Image ID="Image5" ImageUrl="~/Images/icon_clientsystem_requirement.jpg" CssClass="imgdim"
                        runat="server" /><br />
                    Hardware Specs </a>
            </div>
            <div id="priceicon" class="floatRight">
                <asp:HyperLink NavigateUrl="~/Products/HS/HSPrice.aspx?productid=2" CssClass="icon_link" runat="server">
                    <asp:Image ID="Image4" ImageUrl="~/Images/icon_price.jpg"  CssClass="imgdim" runat="server" /><br />
                    Prices/Editions</asp:HyperLink>
            </div>
            <div id="docicon" class="floatRight">
                <a href="javascript:populateContents('Documentation.aspx','contentsDiv')" class="icon_link">
                    <asp:Image ID="Image3" ImageUrl="~/Images/icon_documentation.jpg" CssClass="imgdim"
                        runat="server" /><br />
                    Documentation </a>
            </div>
            <div id="siteicon" class="floatRight">
                <a href="javascript:populateContents('SiteSafety.aspx','contentsDiv')" class="icon_link">
                    <asp:Image ID="Image2" ImageUrl="~/Images/icon_safety.jpg" CssClass="imgdim"
                        runat="server" /><br />
                    Site Safety </a>
            </div>
            <div id="homeicon" class="floatRight">
                <a href="javascript:populateContents('Details.aspx','contentsDiv')" class="icon_link">
                    <asp:Image ID="Image1" ImageUrl="~/Images/icon_home_hns.jpg" Width="38" Height="30"
                        runat="server" /><br />
                    Home</a>
            </div>
            <div>
                <asp:Image ID="Image6" ImageUrl="~/Images/subheading_bar.jpg" Height="21" runat="server" />
            </div>
        </div>
    </div>
    <div class="text" id="contentsDiv">
        <p>
            Guides you through the sequential processes, provides practical templates and an
            extendable library of documents and content to publish H&amp;S folders in an easy
            to read format.
        </p>
        <p>
            This practical tool allows you to:-
        </p>
        <ul>
            <li class="list">Publish the Health &amp; Safety folder required onsite</li>
            <li class="list">Document the safe way of working for the job - The Method Statement</li>
            <li class="list">Analyse the risk for each specific task - The Risk Assessments</li>
            <li class="list">Add new or changed risk content onsite</li>
            <li class="list">Maintain Sign-In Sheets</li>
            <li class="list">Record permit to work - Hot Works </li>
        </ul>
    </div>
</asp:Content>
