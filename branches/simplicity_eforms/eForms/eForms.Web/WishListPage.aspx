<%@ Page Title="" Language="C#" MasterPageFile="~/Common/Main.master" AutoEventWireup="true"
    CodeBehind="WishListPage.aspx.cs" Inherits="eForms.Web.WishListPage" %>

<%@ Register Src="Common/Controls/Currencies.ascx" TagName="Currencies" TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="BodyContentPlaceHolder" runat="server">
    <div id="icon1" class="floatLeft" style="padding-left:30px; width:80%">
        <h2>
            WISH LIST</h2>
    </div>
    <div class="floatRight" style="padding-right: 30px; padding-top: 10px;">
        <uc1:Currencies ID="CurrenciesControl" runat="server" />
    </div>
    <div>
        <asp:Image ID="Image6" ImageUrl="~/Images/subheading_bar.jpg" Height="21" runat="server" />
    </div>
    <div id="contentMain" style="width: 94%; padding-left: 30px;">
        <asp:Repeater ID="rpt" runat="server" OnItemCommand="rptItems_ItemCommand">
            <HeaderTemplate>
                <div class="trolleyActionBar" style="width: 100%;">
                    <div class="floatLeft" style="background-image: url(../images/curve_medium_small.jpg);
                        width: 100%">
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
                <div class="floatLeft" style="width: 100%; background-image: url(../images/curve_medium_big.jpg)">
                    <div class="floatLeft">
                        <img src="../Images/curve_left_big.jpg" /></div>
                    <div class="floatRight">
                        <img src="../Images/curve_right_big.jpg" /></div>
                    <div class="trolleyActionsCol1">
                        <div class="trolleycell">
                            <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Save" CommandArgument='<%#DataBinder.Eval(Container, "DataItem.WishListItemId")%>'><span style="font-size:14px; font-weight:bold; color: #5858A4;">Add to Trolley</span></asp:LinkButton>
                            <br />
                            <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Remove" CommandArgument='<%#DataBinder.Eval(Container, "DataItem.WishListItemId")%>'><span style="font-size:14px;font-weight:bold;color: #5858A4;">Remove</span></asp:LinkButton></div>
                    </div>
                    <div class="trolleyActionsCol2">
                        <div class="floatLeft" style="width:160px;">
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/images/s_" + DataBinder.Eval(Container, "DataItem.ProductEntity.shortname") + ".jpg" %>'
                                AlternateText='<%# DataBinder.Eval(Container, "DataItem.ProductEntity.Name") %>' /></div>
                        <div class="floatLeft" style="padding-top: 10px;margin-left:5px; font-weight: bold; width:275px;">
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
                                AutoPostBack="True" OnTextChanged="tbQuantity_OnTextChanged" EnableViewState="False"></asp:TextBox>
                                <asp:CompareValidator ID="CompareValidator1" runat="server" ForeColor="Red"
                                    ControlToValidate="tbQuantity" Type="Integer" Operator="DataTypeCheck">
                                    </asp:CompareValidator>
                        </div>
                    </div>
                    <div class="trolleyActionsCol4">
                        <div class="trolleyCell">
                            <span style="font-size: 14px; font-weight: bold;">
                                <%# GetCurrencyHTMLCode()%><asp:Label ID='unitPrice' runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.Price", "{0:N2}")%>'></asp:Label></span>
                        </div>
                    </div>
                    <div class="trolleyActionsCol5">
                        <div class="trolleyCell">
                            <span style="font-size: 14px; font-weight: bold;">
                                <%# GetCurrencyHTMLCode()%><asp:Label ID='totalPrice' runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.Total","{0:N2}")%>'></asp:Label></span>
                        </div>
                    </div>
                    <div class="noFloat">
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
        <div class="floatRight">
            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images/btn_continue_shopping.jpg"
                OnClick="imbBtnContinue_Click" />
            &nbsp;<asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/Images/btn_checkout.jpg"
                OnClick="imbBtnCheckout_Click" />
        </div>
        <div class="clearFloat">
        </div>
    </div>
</asp:Content>
