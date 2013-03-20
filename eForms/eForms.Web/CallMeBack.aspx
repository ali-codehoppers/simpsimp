<%@ Page Title="" Language="C#" MasterPageFile="~/Common/Main.Master" AutoEventWireup="true" CodeBehind="CallMeBack.aspx.cs" Inherits="eForms.Web.CallMe" %>
<%@ Register src="~/Common/Controls/CallMeUserControl.ascx" tagname="CallMePageUserControl" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" runat="server">
<uc1:CallMePageUserControl ID="CallMePageUserControl1" runat="server" PageName="CALL ME</span> BACK" ViewDemo="false"></uc1:CallMePageUserControl>
</asp:Content>
