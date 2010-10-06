<%@ Page Title="" Language="C#" MasterPageFile="~/Common/Main.master" AutoEventWireup="true"
    CodeBehind="Trolley.aspx.cs" Inherits="Simplicity.Web.Trolley" %>

<%@ Register Src="Common/Controls/Currencies.ascx" TagName="Currencies" TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" runat="server">
    <div id="PaymentAddresssubdirectory" class="PaymentAddressbottom_border">
        <div>
            <a class="login" href="#">Trolley </a>&gt;&gt; <a class="login" href="#">Billing &amp;
                Shipping Information </a>&gt;&gt; <a class="PaymentAddresscurrent" href="#">Confirm
                    Checkout </a>&gt;&gt; <a class="login" href="#">Payment Details </a>
        </div>
    </div>
    <div style="float: right; padding-right:30px; padding-top:5px;">
        <uc1:Currencies ID="CurrenciesControl" runat="server" />
    </div>
    <div id="heading1">
        <h2>
            TROLLEY</h2>
    </div>
    <div>
        <asp:Image ID="Image6" ImageUrl="~/Images/subheading_bar.jpg" Height="21" runat="server" />
    </div>
    <div id="contentMain" style="padding-left: 30px; padding-right:30px;">
        <div>
            <asp:Repeater ID="rptItems" runat="server" OnItemCommand="rptItems_ItemCommand">
                <HeaderTemplate>
                    <div class="trolleyActionBar" style="width:100%; ">
                        <div class="floatLeft" style="background-image: url(../images/curve_medium_small.jpg); width:100%">    
                            <div class="floatLeft">
                                <img src="../Images/curve_left_small.jpg" /></div>
                            <div class="floatRight">
                                <img src="../Images/curve_right_small.jpg" /></div>
                            <div class="trolleyActionsHeaders trolleyActionsHeader1">
                                Actions</div>
                            <div class="trolleyActionsHeaders trolleyActionsHeader2">
                                Description</div>
                            <div class="trolleyActionsHeaders trolleyActionsHeader3">
                                No. of License(s)</div>
                            <div class="trolleyActionsHeaders trolleyActionsHeader4">
                                Price</div>
                            <div class="trolleyActionsHeaders trolleyActionsHeader5">
                                Total</div>
                        </div>
                        <div class="noFloat">
                        </div>
                    </div>
                </HeaderTemplate>
                <ItemTemplate>
                    <div class="floatLeft" style="width: 100%;background-image: url(../images/curve_medium_big.jpg)">
                        <div class="floatLeft">
                                <img src="../Images/curve_left_big.jpg" /></div>
                            <div class="floatRight">
                                <img src="../Images/curve_right_big.jpg" /></div>
                        <div class="trolleyActionsCol1">
                            <div class="trolleycell">
                            
                                <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Save" CommandArgument='<%#DataBinder.Eval(Container, "ItemIndex", "")%>'><span style="font-size:14px; font-weight:bold; color: #5858A4;">Save For Later</span></asp:LinkButton>
                                <br />
                                <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Remove" CommandArgument='<%#DataBinder.Eval(Container, "ItemIndex", "")%>'><span style="font-size:14px;font-weight:bold;color: #5858A4;">Remove</span></asp:LinkButton></div>
                                
                        </div>
                        <div class="trolleyActionsCol2">
                            <div class="floatLeft">
                                <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/images/s_" + DataBinder.Eval(Container, "DataItem.ProductEntity.shortname") + ".jpg" %>'
                                    AlternateText='<%# DataBinder.Eval(Container, "DataItem.ProductEntity.Name") %>' /></div>
                            <div class="floatLeft" style="padding-top:10px; font-weight:bold;">
                                <div class="trolleyCell">
                                    <%# DataBinder.Eval(Container, "DataItem.ProductEntity.Name")%>[<%# DataBinder.Eval(Container, "DataItem.DurationString")%>]</div>
                                <div class="trolleyCell">
                                    <%# DataBinder.Eval(Container, "DataItem.VersionEntity.Name")%></div>
                                <div class="trolleyCell">
                                   <%# DataBinder.Eval(Container, "DataItem.ProductDetailEntity.ProductDetail1")%></div>
                            </div>
                        </div>
                        <div class="trolleyActionsCol3">
                            <div class="trolleyCell">
                                <asp:TextBox ID="tbQuantity" runat="server" Width="25px" CssClass="qtystyle" Text='<%# DataBinder.Eval(Container, "DataItem.Quantity")%>'
                                    AutoPostBack="True" OnTextChanged="tbQuantity_OnTextChanged" EnableViewState="False"></asp:TextBox></span>
                            </div>
                        </div>
                        <div class="trolleyActionsCol4">
                            <div class="trolleyCell">
                                <span style="font-size:14px; font-weight:bold;"><%# GetCurrencyHTMLCode()%><asp:Label ID='unitPrice' runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.Price", "{0:N2}")%>'></asp:Label></span>
                            </div>
                        </div>
                        <div class="trolleyActionsCol5">
                            <div class="trolleyCell">
                               <span style="font-size:14px; font-weight:bold;"> <%# GetCurrencyHTMLCode()%><asp:Label ID='totalPrice' runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.Total","{0:N2}")%>'></asp:Label></span>
                            </div>
                        </div>
                        <div class="noFloat">
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>

        </div>
        <div class="trolleyActions"style="width:100%;float:right; padding-top:10px;padding-bottom:10px;">

			<div class="trolleyFooterCol1" style="float:right">
			  <span style="font-weight:bold; font-style:italic;">  <%="Charge each month from " + DateTime.Now.AddDays(1).ToShortDateString() + " till " + DateTime.Now.AddDays(1).AddMonths(12).ToShortDateString() %>
			    &nbsp;&nbsp;&nbsp;
			    <%= GetCurrencyHTMLCode()%><%= String.Format("{0:N2}",Simplicity.Web.BusinessObjects.ShoppingCart.GetTotalAmount())%>
			    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
			</div>		          
		</div>

            <div class="floatRight">
                <asp:ImageButton ID="imbBtnContinue" runat="server" ImageUrl="~/Images/btn_continue_shopping.jpg"
                    OnClick="btnContinueShopping_Click" />
                &nbsp;<asp:ImageButton ID="imbBtnCheckout" runat="server" ImageUrl="~/Images/btn_checkout.jpg"
                    OnClick="btnCheckout_Click" />
            </div>
            <div class="clearFloat"></div>

    </div>
</asp:Content>
