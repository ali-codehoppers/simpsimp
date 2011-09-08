<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Currencies.ascx.cs" Inherits="Simplicity.Web.Common.Controls.Currencies" %>
<div>
    <asp:ImageButton ID="Sterling" runat="server" 
            ImageUrl="~/images/Sterling.jpg" onclick="Sterling_Click" />
        &nbsp;    
        <asp:ImageButton ID="Euro" runat="server" 
            ImageUrl="~/images/Euro.jpg" onclick="Euro_Click" />
        &nbsp;    
        <asp:ImageButton ID="Dollar" runat="server" 
            ImageUrl="~/images/Dollar.jpg" onclick="Dollar_Click" />
</div>
