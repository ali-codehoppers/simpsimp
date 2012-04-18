<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="Simplicity.Web.Admin.Products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" runat="server">
<div id="icon1">
        <h2>
            <span style="color: #666666;">
                <%=GetBuyOrTry()%></span> A Solution</h2>
    </div>
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
            <div class="clearFloat">
            </div>
        </FooterTemplate>
    </asp:Repeater>
    <div>
        <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=SimplicityEntities"
            DefaultContainerName="SimplicityEntities" EnableFlattening="False" EntitySetName="Products">
        </asp:EntityDataSource>
    </div>
</asp:Content>
