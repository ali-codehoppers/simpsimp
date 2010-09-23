<%@ Page Title="" Language="C#" MasterPageFile="~/Common/LeftMenu.master" AutoEventWireup="true"
    CodeBehind="Home.aspx.cs" Inherits="Simplicity.Web.Products.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolder" runat="server">
    <link href="../Styles/products.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <div class="products" style="width: 650px">
        <div id="ourProducts">
            <h2>
                <span style="color: #cccccc;">OUR</span> PRODUCTS</h2>
        </div>
        <div>
            <asp:Image runat="server" ImageUrl="~/Images/subheading_bar.jpg" ID="Image1" /></div>
        <div>
            <p>
                Simplicity for business offers a suits of business software which require nothing
                more than a web browser or mobile phone to access.</p>
            <p>
                This Simplicity Software as a Service (SaaS) suits is packed with 14 specialist
                applications to help clients with a typica; turnover of 1m-20m to co-ordinate their
                whole business.</p>
            <p>
                Simplicity for business offers a suits of business software which require nothing
                more than a web browser or mobile phone to access.</p>
            <p>
                This Simplicity Software as a Service (SaaS) suits is packed with 14 specialist
                applications to help clients with a typica; turnover of 1m-20m to co-ordinate their
                whole business.Simplicity for business offers a suits of business software which
                require nothing more than a web browser or mobile phone to access.</p>
            <p>
                This Simplicity Software as a Service (SaaS) suits is packed with 14 specialist
                applications to help clients with a typica; turnover of 1m-20m to co-ordinate their
                whole business.This Simplicity Software as a Service (SaaS) suits is packed with
                14 specialist applications to help clients with a typica; turnover of 1m-20m to
                co-ordinate their whole business.Simplicity for business offers a suits of business
                software which require nothing more than a web browser or mobile phone to access.</p>
            <p>
                This Simplicity Software as a Service (SaaS) suits is packed with 14 specialist
                applications to help clients with a typica; turnover of 1m-20m to co-ordinate their
                whole business.</p>
        </div>
        <div class="links">
            <div class="topLeft">
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Products/HandyServe/Home.aspx"
                    CssClass="moreDetails">
                    <asp:Image runat="server" ID="Image7" ImageUrl="~/Images/products_img_1.jpg" />
                </asp:HyperLink>
            </div>
            <div class="topMiddle">
                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Products/HandyLEC/Home.aspx"
                    CssClass="moreDetails">
                    <asp:Image runat="server" ID="Image2" ImageUrl="~/Images/products_img_2.jpg" />
                </asp:HyperLink>
            </div>
            <div class="topMiddle">
                <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Products/HandyGas/Home.aspx"
                    CssClass="moreDetails">
                    <asp:Image runat="server" ID="Image3" ImageUrl="~/Images/products_img_3.jpg" />
                </asp:HyperLink>
            </div>
            <div class="bottomLeft">
                <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Products/HS/Home.aspx"
                    CssClass="moreDetails">
                    <asp:Image runat="server" ID="Image4" ImageUrl="~/Images/products_img_4.jpg" />
                </asp:HyperLink>
            </div>
            <div class="bottomMiddle">
                <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Products/EAS/Home.aspx"
                    CssClass="moreDetails">
                    <asp:Image runat="server" ID="Image5" ImageUrl="~/Images/products_img_5.jpg" />
                </asp:HyperLink>
            </div>
            <div class="bottomMiddle">
                <asp:HyperLink ID="HyperLink6" runat="server" CssClass="moreDetails">
                    <asp:Image runat="server" ID="Image6" ImageUrl="~/Images/products_img_6.jpg" />
                </asp:HyperLink>
            </div>
        </div>
    </div>
</asp:Content>
