﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Common/Main.Master" AutoEventWireup="true"
    CodeBehind="ProductPrices.aspx.cs" Inherits="Simplicity.Web.ProductPrices" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" runat="server">
    <div class="hlRow" style="margin-bottom:10px;">
                <asp:HyperLink ID="hlBack" runat="server" NavigateUrl="#" Visible="false">Back to Product</asp:HyperLink>
        </div>
<div class="header">
			<div class="heading">Prices/Editions</div>
			<div class="headingImages">
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
			<div class="noFloat"></div>
		</div>
    <asp:Repeater ID="rptMandatory" runat="server" OnItemDataBound="rptMandatory_ItemDataBound">
        <HeaderTemplate>
            <div class="row">
                <div class="col1">
                    <asp:Image ID="Image1" ImageUrl="<%#GetProductImage()%>" AlternateText="test" runat="server" /></div>
                <asp:Repeater ID="rptVersions" runat="server">
                    <ItemTemplate>
                        <div class="col2">
                            <asp:Image ID="Image2" runat="server" ImageUrl='<%#"~/images/" + DataBinder.Eval(Container.DataItem, "name") + ".jpg"%>' />
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
                <div style="clear: both">
                </div>
            </div>
        </HeaderTemplate>
        <ItemTemplate>
            <div class="row">
                <div class="col1">
                    <span>
                        <%# DataBinder.Eval(Container.DataItem, "ProductDetail")%>
                    </span>
                </div>
                <asp:Repeater ID="rptVersions" runat="server">
                    <ItemTemplate>
                        <div class="col2">
                            <asp:Image ID="Image1" ImageUrl='~/images/Ticks.gif' AlternateText="test" runat="server" />
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
                <div style="clear: both">
                </div>
            </div>
        </ItemTemplate>
        <FooterTemplate>
            <div class="row">
                    <div class="col1"><span>Pricing structure per user per month</span></div>      
                    
                    <asp:Repeater ID="rptVersions" runat="server" >
                        <ItemTemplate>
                        <div class="colfooter">
                            <%# ShoppingCart.GetCurrentCurrency().html_currency_code%><%# GetVersionPrice(DataBinder.Eval(Container.DataItem, "price"))%><br />
                            <a href='<%#GetVersionBuyNowURL(DataBinder.Eval(Container.DataItem, "version_id"))%>'>
                                <img alt="Buy Now" src="../images/Buy_Now.gif" onmouseover="this.src='../images/Buy_now_rollover.gif'" onmouseout="this.src='../images/Buy_now.gif'" />                                                                                           
                            </a>
                            <br />                            
                            <%if(Request[WebConstants.Request.PRODUCT_ID] == "2"){%>
                            <span style="font-size:10pt;color:Gray">Try it now for</span>
                            <a href='RedirectToHS.aspx' style="font-size:10pt;color:Red">FREE</a>
                            <%}%>
                        </div>
                        </ItemTemplate>            
                    </asp:Repeater>
                    <div style="clear:both"></div>
                </div>           
        </FooterTemplate>
    </asp:Repeater>
    <asp:Repeater ID="rptOptional" runat="server" 
            onitemdatabound="rptOptional_ItemDataBound" >
            <HeaderTemplate><div class="headingRow">Add Ons</div>
            </HeaderTemplate>
            <ItemTemplate>
                <div class="row">
                    <div class="col1" style="margin-top:4px;"><span><%# DataBinder.Eval(Container.DataItem, "product_detail")%></span>
                    </div>
                    <asp:Repeater ID="rptVersions" runat="server" >
                        <ItemTemplate>
                            <div class="col2">                            
                                <div class="price"><%# GetCurrentCurrency()%><%# DataBinder.Eval(Container.DataItem, "Price", "{0:N2}")%></div>    
                                <div class="buynow">
                                    <a href='<%#GetProductDetailBuyNowURL(DataBinder.Eval(Container.DataItem, "VersionId"),DataBinder.Eval(Container.DataItem, "ProductDetailId"),DataBinder.Eval(Container.DataItem, "Price"))%>'>
                                        <img alt="Buy Now" src="../images/Buy_now_addon.gif" onmouseover="this.src='../images/Buy_now_addon_rollover.gif'" onmouseout="this.src='../images/Buy_now_addon.gif'" />  
                                        
                                    </a>                                
                                </div>
                                <div style="clear:both"></div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                    <div style="clear:both"></div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
        
    <div class="hlRow" style="margin-top: 10px;">
        <asp:HyperLink ID="hlMore" runat="server" NavigateUrl="#" Visible="false">More Add Ons ...</asp:HyperLink>
    </div>
</asp:Content>