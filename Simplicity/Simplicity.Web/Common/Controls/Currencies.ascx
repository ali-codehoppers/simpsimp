<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Currencies.ascx.cs" Inherits="Simplicity.Web.Common.Controls.Currencies" %>
<div>
    <asp:ImageButton ID="Sterling" runat="server" 
            onmouseover="this.src='../images/Sterling_rollover.gif'" onmouseout="this.src='../images/Sterling.gif'"
            ImageUrl="~/images/Sterling.gif" onclick="Sterling_Click" />
        &nbsp;    
        <asp:ImageButton ID="Euro" runat="server" 
            onmouseover="this.src='../images/Euro_rollover.gif'" onmouseout="this.src='../images/Euro.gif'"
            ImageUrl="~/images/Euro.gif" onclick="Euro_Click" />
        &nbsp;    
        <asp:ImageButton ID="Dollar" runat="server" 
            onmouseover="this.src='../images/Dollar_rollover.gif'" onmouseout="this.src='../images/Dollar.gif'"
            ImageUrl="~/images/Dollar.gif" onclick="Dollar_Click" />
</div>
