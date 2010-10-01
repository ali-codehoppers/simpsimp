<%@ Page Title="" Language="C#" MasterPageFile="~/Common/LeftMenu.master" AutoEventWireup="true" CodeBehind="WishListPage.aspx.cs" Inherits="Simplicity.Web.WishListPage" %>
<%@ Register src="Common/Controls/Currencies.ascx" tagname="Currencies" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeadingPlaceHolder" runat="server">
    <h2>Wish List</h2>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <div id="contentMain">
        <uc1:Currencies ID="CurrenciesControl" runat="server" />
        <asp:Repeater ID="rpt" runat="server" onitemcommand="rptItems_ItemCommand">        			
            <ItemTemplate>
		        <div>			
			        <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Save" CommandArgument='<%#DataBinder.Eval(Container, "DataItem.WishListItemId")%>'>Add to Trolley</asp:LinkButton>
			        <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Remove" CommandArgument='<%#DataBinder.Eval(Container, "DataItem.WishListItemId")%>'>Remove</asp:LinkButton>
				
			        <%# DataBinder.Eval(Container, "DataItem.ProductEntity.Name")%> [<%# DataBinder.Eval(Container, "DataItem.DurationString")%>]
			        <%# DataBinder.Eval(Container, "DataItem.VersionEntity.Name")%>	
			        <%# DataBinder.Eval(Container, "DataItem.ProductDetailEntity.ProductDetail1")%>
			        <%# DataBinder.Eval(Container, "DataItem.Quantity")%>
                    <%# GetCurrencyHTMLCode()%><%# DataBinder.Eval(Container, "DataItem.Price", "{0:N2}")%>
                    <%# GetCurrencyHTMLCode()%><%# DataBinder.Eval(Container, "DataItem.Total", "{0:N2}")%>
		        </div>		
		    </ItemTemplate>
		</asp:Repeater>
		
		<div class="noFloat">
			<div class="floatRight">
    		    <asp:ImageButton ID="imbBtnContinue" runat="server" 
                    ImageUrl="~/images/Continue_shopping.gif" 
                    onmouseover="this.src='../images/Continue_shopping_rollover.gif'" 
                    onmouseout="this.src='../images/Continue_shopping.gif'" 
                    onclick="imbBtnContinue_Click"/>
			&nbsp;<asp:ImageButton ID="imbBtnCheckout" runat="server" 
                    ImageUrl="~/images/Checkout.gif" 
                    onmouseover="this.src='../images/Checkout_rollover.gif'" 
                    onmouseout="this.src='../images/Checkout.gif'" onclick="imbBtnCheckout_Click"/>
			</div>
			<div class="noFloat"></div>
		</div>
    </div>
</asp:Content>
