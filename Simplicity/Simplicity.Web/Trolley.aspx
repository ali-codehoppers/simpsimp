<%@ Page Title="" Language="C#" MasterPageFile="~/Common/LeftMenu.master" AutoEventWireup="true" CodeBehind="Trolley.aspx.cs" Inherits="Simplicity.Web.Trolley" %>
<%@ Register src="Common/Controls/Currencies.ascx" tagname="Currencies" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="HeadingPlaceHolder" runat="server">
                <h2>Trolley</h2>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <div id="contentMain">
    <uc1:Currencies ID="CurrenciesControl" runat="server" />
    <div>
    <asp:Repeater ID="rptItems" runat="server" onitemcommand="rptItems_ItemCommand">
        <ItemTemplate>
            <div style="width:100%">
            <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Save" CommandArgument='<%#DataBinder.Eval(Container, "ItemIndex", "")%>'>Save For Later</asp:LinkButton>
            <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Remove" CommandArgument='<%#DataBinder.Eval(Container, "ItemIndex", "")%>'>Remove</asp:LinkButton>
            <%# DataBinder.Eval(Container, "DataItem.ProductEntity.Name")%>
            <%# DataBinder.Eval(Container, "DataItem.VersionEntity.Name")%>
            <%# DataBinder.Eval(Container, "DataItem.ProductDetailEntity.ProductDetail1")%>
            <asp:TextBox ID="tbQuantity" runat="server" Width="25px" Text='<%# DataBinder.Eval(Container, "DataItem.Quantity")%>' AutoPostBack="True" OnTextChanged="tbQuantity_OnTextChanged" EnableViewState="False" ></asp:TextBox>
            <%# GetCurrencyHTMLCode()%>
            <%# DataBinder.Eval(Container, "DataItem.Price", "{0:N2}")%>
            <%# GetCurrencyHTMLCode()%><asp:Label ID='totalPrice' runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.Total","{0:N2}")%>'></asp:Label>
            </div>
        </ItemTemplate>
    </asp:Repeater>
    </div>
    <div>
        <asp:ImageButton ID="btnContinueShopping" runat="server" 
            onclick="btnContinueShopping_Click" ImageUrl="~/Images/btn_continue.jpg"/>
        <asp:ImageButton ID="btnCheckout" runat="server" onclick="btnCheckout_Click" ImageUrl="~/Images/btn_submit.jpg"
            style="width: 14px" />        
    </div>
    </div>
</asp:Content>

