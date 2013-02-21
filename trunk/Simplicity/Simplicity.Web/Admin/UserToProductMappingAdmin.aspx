<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="UserToProductMappingAdmin.aspx.cs" Inherits="Simplicity.Web.Admin.UserToProductMappingAdmin" %>
<%@ Register Src="~/Common/Controls/UserProductMapping.ascx" TagName="UPMapping" TagPrefix="UPMap" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" runat="server">

    <div style ="margin:10px 0 20px 40px;">
        <div style="padding-top:10px;">
            <h2>
                Manage Users Of Company <span><asp:Label ID="CompanyNameLabel" style="color:#808080" runat="server" Visible="false" Text=""></asp:Label> </span>
            </h2>
        </div>

        <asp:Panel ID="MyLicencePanel" runat="server">
            <div id="MyLicenceTab" class="clearFloat">
                <UPMap:UPMapping ID="UserProductMappingControl" runat="server">
                </UPMap:UPMapping>
            </div>
        </asp:Panel>
    </div>
</asp:Content>