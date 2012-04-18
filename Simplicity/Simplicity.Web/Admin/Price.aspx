<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Price.aspx.cs" Inherits="Simplicity.Web.Admin.EAS.EASPrice" %>
<%@ Register src="~/Admin/PriceControl.ascx" tagname="PriceEdition" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" runat="server">
    <div id="contentsDiv">
        <uc1:PriceEdition ID="PriceEdition1" runat="server" />
    </div>
</asp:Content>
