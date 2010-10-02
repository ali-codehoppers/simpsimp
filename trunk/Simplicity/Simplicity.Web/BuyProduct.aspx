<%@ Page Title="" Language="C#" MasterPageFile="~/Common/LeftMenu.Master" AutoEventWireup="true"
    CodeBehind="BuyProduct.aspx.cs" Inherits="Simplicity.Web.BuyProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">

    <asp:Repeater ID="rptProducts" runat="server" DataSourceID="EntityDataSource1">
        <HeaderTemplate>
            <div class="row">
        </HeaderTemplate>
        <ItemTemplate>
            <div class='col<%#GetColNumber(DataBinder.Eval(Container, "ItemIndex", ""))%>' style="float: left;">
                <a href="ProductPrices.aspx?productId=<%# DataBinder.Eval(Container, "DataItem.productID")%>">
                    <asp:Image ID="imgBtnLogout" runat="server" ImageUrl='<%# "~/Images/products_img_"+DataBinder.Eval(Container, "DataItem.productID") + ".jpg" %>' /></a>
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
