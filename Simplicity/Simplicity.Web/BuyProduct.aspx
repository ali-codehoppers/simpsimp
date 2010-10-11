﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Common/LeftMenu.Master" AutoEventWireup="true"
    CodeBehind="BuyProduct.aspx.cs" Inherits="Simplicity.Web.BuyProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <div id="icon1"><h2><span style="color: #cccccc;"><%=GetBuyOrTry()%></span> A Solution</h2></div>
    <div>
        <asp:Image ID="Image6" ImageUrl="~/Images/subheading_bar.jpg" Height="21" runat="server" />
    </div>
    <asp:Repeater ID="rptProducts" runat="server" DataSourceID="EntityDataSource1">
        <HeaderTemplate>
            <div class="row">
        </HeaderTemplate>
        <ItemTemplate>
            <div class='col<%#GetColNumber(DataBinder.Eval(Container, "ItemIndex", ""))%>' style="float: left;">
                <asp:HyperLink runat="server" ID="productLink" NavigateUrl='<%#GetHyperLink(DataBinder.Eval(Container, "DataItem.productID"))%>'>
                    <asp:Image ID="imgBtnLogout" runat="server" ImageUrl='<%# "~/Images/buy_products_img_"+DataBinder.Eval(Container, "DataItem.productID") + ".jpg" %>' />
                </asp:HyperLink>
            </div>
        </ItemTemplate>
        <SeparatorTemplate>
            <%#GetSeperatorHTML(DataBinder.Eval(Container, "ItemIndex", ""))%>
        </SeparatorTemplate>
        <FooterTemplate>
            </div>
            <div class="clearFloat"></div>
        </FooterTemplate>
    </asp:Repeater>
    <div class="noFloat" style="height: 20px;">
        <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=SimplicityEntities"
            DefaultContainerName="SimplicityEntities" EnableFlattening="False" EntitySetName="Products">
        </asp:EntityDataSource>
    </div>


</asp:Content>
