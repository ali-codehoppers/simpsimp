<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="PriceEdition.ascx.cs" Inherits="Simplicity.Web.Common.Controls.PriceEdition" %>
<%@ Register Src="../Controls/Currencies.ascx" TagName="Currencies" TagPrefix="uc1" %>

    <div style="float:right;width:20%;" >
        <uc1:Currencies ID="CurrenciesControl" runat="server"/>
    </div>
    <div style="float:left;width:70%; ">
        <h2>
            PRICES/EDITIONS</h2>
    </div>
    
    <div class="clearFloat"></div>
    <div class="hlRow" style="margin-bottom: 10px;">
        <asp:HyperLink ID="hlBack" runat="server" NavigateUrl="#" Visible="false"><span style="font:bolder;font-size:14px;">Back to Product</span></asp:HyperLink>
    </div>
    <asp:Repeater ID="rptMandatory" runat="server" OnItemDataBound="rptMandatory_ItemDataBound">
        <HeaderTemplate>
            <div class="row" style="background-image: url(../../images/curve_medium_big.jpg);">
                <div class="floatLeft">
                    <img src="../../Images/curve_left_big.jpg" /></div>
                <div class="floatRight">
                    <img src="../../Images/curve_right_big.jpg" /></div>
                <div class="col1" style="float: left; padding-top:15px;padding-right:130px;">
                    <asp:Image ID="Image1" ImageUrl="<%#GetProductImage()%>" AlternateText="test" runat="server" /></div>
                    
                <asp:Repeater ID="rptVersions" runat="server">
                    <ItemTemplate>
                        <div class="floatLeft" style="padding-top:15px; ">
                    <img src="../../Images/curve_big_partition.jpg" /></div>
                        <div class="col2" style="float: left;padding-top:40px; width:130px;">
                            <div style="float: left;"><asp:Image ID="Image2" runat="server" ImageUrl='<%#"~/images/icon_" + DataBinder.Eval(Container.DataItem, "name") + ".jpg"%>' /></div>
                            <div style="float: left; padding-top:15px;"><span style="font-size:14px;color: #252D88;"><%#DataBinder.Eval(Container.DataItem, "name")%></span></div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
                <div style="clear: both">
                </div>
            </div>
        </HeaderTemplate>
        <ItemTemplate>
            <div class="row" style="background-image: url(../../images/curve_medium_small.jpg);">
                <div class="floatLeft">
                    <img src="../../Images/curve_left_small.jpg" /></div>
                <div class="floatRight">
                    <img src="../../Images/curve_right_small.jpg" /></div>
                <div class="col1" style="float: left;width:285px;padding-left:15px;padding-top:7px; ">
                    <span style=" text-align:justify;color:#3E3C95;font-weight:bolder; ">
                        <%# DataBinder.Eval(Container.DataItem, "ProductDetail1")%>
                    </span>
                </div>
                <asp:Repeater ID="rptVersions" runat="server">
                    <ItemTemplate>
                        <div class="col2" style="float: left; width:150px; padding-top:10px;">
                            <asp:Image ID="Image1" ImageUrl='~/images/tick_bullet.jpg' style="padding-left:60px;" AlternateText="test" runat="server" />
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
                <div style="clear: both">
                </div>
            </div>
        </ItemTemplate>
        <FooterTemplate>
            <div class="row" style="background-image: url(../../images/curve_medium_big.jpg);">
                <div class="floatLeft">
                    <img src="../../Images/curve_left_big.jpg" /></div>
                <div class="floatRight">
                    <img src="../../Images/curve_right_big.jpg" /></div>
                <div class="col1" style="float: left; padding-right:30px;padding-top:35px;">
                    <span style="font-size:16px;color:#6a6a6a;">Pricing structure per user per month</span></div>
                <asp:Repeater ID="rptVersions" runat="server">
                    <ItemTemplate>
                        <div class="colfooter" style="float: left; padding-top:35px;">
                            <div style="float:left;">
                            <div style="padding:5px;"><span style="font-size:22px;color:#6a6a6a; padding-left:40px;font-family:Lucida Sans;"><%# GetCurrencyHTMLCode()%><%# GetVersionPrice(DataBinder.Eval(Container.DataItem, "price"))%></span><br />
                            </div>
                            <div style="padding-left:45px; height:20px;">
                            <a  href='<%#GetVersionBuyNowURL(DataBinder.Eval(Container.DataItem, "versionID"))%>'>
                                <img alt="Buy Now" src="../../images/btn_buynow.jpg" />
                            </a>
                            </div>
                            <br />
                            <%if (Request[Simplicity.Web.Utilities.WebConstants.Request.PRODUCT_ID] == "2")
                              {%>
                            <span style="font-size: 10pt; color: Gray; padding-left:40px;">Try it now for</span> <a href="../../RedirectToProductTrial.aspx?productId=<%#Request[Simplicity.Web.Utilities.WebConstants.Request.PRODUCT_ID]%>" style="font-family:Lucida Sans;font-size: 12pt; color: #f29107">FREE</a>
                            <%}%>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
                <div style="clear: both">
                </div>
            </div>
        </FooterTemplate>
    </asp:Repeater>
    <asp:Repeater ID="rptOptional" runat="server" OnItemDataBound="rptOptional_ItemDataBound">
        <HeaderTemplate>
            <div class="headingRow">
                <h2 style="padding-top:10px; padding-bottom:5px;padding-left:5px;">Add Ons</h2></div>
        </HeaderTemplate>
        <ItemTemplate>
            <div class="row" style="background-image: url(../../images/curve_medium_small.jpg);">
                <div class="floatLeft">
                    <img src="../../Images/curve_left_small.jpg" /></div>
                <div class="floatRight">
                    <img src="../../Images/curve_right_small.jpg" /></div>
                <div class="col1" style="float: left;width:265px;padding-top:7px; ">
                    <span style=" text-align:justify;color:#3E3C95;font-weight:bolder; ">
                        <%# DataBinder.Eval(Container.DataItem, "productdetail1")%></span>
                </div>
                <asp:Repeater ID="rptVersions" runat="server">
                    <ItemTemplate>
                        <div class="col2" style="float: left">
                            <div class="price" style="padding-left:10px;padding-top:10px;">
                                <div style="width:60px; float:left;" ><span style="font-size:14px;color:#3E3C95;font-weight:bold;"><%# GetCurrencyHTMLCode()%><%# DataBinder.Eval(Container.DataItem, "Price", "{0:N2}")%></span></div>
                                <div style="float:left"><a href='<%#GetProductDetailBuyNowURL(DataBinder.Eval(Container.DataItem, "VersionId"),DataBinder.Eval(Container.DataItem, "ProductDetailId"),DataBinder.Eval(Container.DataItem, "Price"))%>'>
                                    <img alt="Buy Now" src="../../images/btn_buynow.jpg" />
                                </a></div>
                            </div>
                            <div style="clear: both">
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
                <div style="clear: both">
                </div>
            </div>
        </ItemTemplate>
    </asp:Repeater>
    <div class="hlRow" style="margin-top: 10px;">
        <asp:HyperLink ID="hlMore" runat="server" NavigateUrl="#" Visible="false"><span style="font:bolder;font-size:14px;">More Add Ons ...</span></asp:HyperLink>
    </div>
