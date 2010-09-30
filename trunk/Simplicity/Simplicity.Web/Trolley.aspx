<%@ Page Title="" Language="C#" MasterPageFile="~/Common/Main.Master" AutoEventWireup="true" CodeBehind="Trolley.aspx.cs" Inherits="Simplicity.Web.Trolley" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" runat="server">
    <div id="contentTop">
        
    <asp:Repeater ID="rptItems" runat="server">
        <ItemTemplate>
            <div style="width:100%">
            <%# DataBinder.Eval(Container, "DataItem.ProductEntity.Name")%>
            <%# DataBinder.Eval(Container, "DataItem.VersionEntity.Name")%>
            <%# DataBinder.Eval(Container, "DataItem.ProductDetailEntity.ProductDetail1")%>
            </div>
        </ItemTemplate>
    </asp:Repeater>
    </div>
</asp:Content>

