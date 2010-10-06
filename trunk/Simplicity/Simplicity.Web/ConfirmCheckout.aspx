<%@ Page Title="" Language="C#" MasterPageFile="~/Common/Main.Master" AutoEventWireup="true"
    CodeBehind="ConfirmCheckout.aspx.cs" Inherits="Simplicity.Web.ConfirmCheckout" %>

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
    <div id="heading1">
        <h2>
            <span style="color: #cccccc;">CONFIRM</span> CHECKOUT</h2>
    </div>
    <div>
        <asp:Image ID="Image6" ImageUrl="~/Images/subheading_bar.jpg" Height="21" runat="server" />
    </div>
    
    <div id="ConfirmChekouttext">
        <div>
            <asp:Repeater ID="rptItems" runat="server">
                <HeaderTemplate>
                    <div>
                        <h2>
                            Order Summary</h2>
                    </div>
                </HeaderTemplate>
                <ItemTemplate>
                    <div style="padding-top:10px;padding-bottom:10px;">
                        <div class="PaymentAddressbottom_border" >
                            <%# DataBinder.Eval(Container, "DataItem.Quantity") %>
                            x
                            <%# DataBinder.Eval(Container, "DataItem.productEntity.name")%>&nbsp;<%#DataBinder.Eval(Container, "DataItem.versionEntity.name")%>&nbsp;<%# DataBinder.Eval(Container, "DataItem.productDetailEntity.productdetail1")%>
                            for
                            <%# DataBinder.Eval(Container, "DataItem.DurationString") %>
                            <%# GetCurrencyHTMLCode()%><%# DataBinder.Eval(Container, "DataItem.Total", "{0:N2}")%></div>
                        <div style="clear: both;">
                        </div>
                    </div>
                    <div class="terms">
                        <div style="padding-bottom:10px;">
                            <h2>
                                Terms & Conditions</h2>
                        </div>
                        <asp:CheckBox ID="cbTerms" runat="server" Style="padding-top: 5px;" Text="Please tick to confirm that you have read the terms & conditions"
                            Checked="false" />
                        <div class="noFloat" />
                    </div>
                    <div class="dotted_line" style="margin-top: 10px; width: 100%">
                    </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
        <div id="payMsg">
            <asp:Label ID="paymentMsg" runat="server" Text="Label"></asp:Label>
        </div>
        <div class="dotted_line" style=" width: 100%">
        </div>
        <div class="CheckoutNotice">
            It is important to note that in order to receive the activation code(s) that will
            allow you to use your purchased product(s), you must print, sign and return the
            agreement to Simplicity for Business, either by fax, email, or post. Contact details
            can be found under the [Contact] button at the top rightside of the current webpage.
        </div>
        <div>
            <div class="dotted_line" style="margin-top: 10px; width: 100%">
            </div>
            <a href="Trolley.aspx">
                <asp:Image ID="imgTrolley" runat="server" AlternateText="Cancel" ImageUrl="~/images/btn_cancel.jpg" />
            </a>
            <asp:ImageButton ID="btnCheckout" runat="server" ImageUrl="~/Images/btn_submit.jpg"
                AlternateText="Confirm Payment" OnClick="btnCheckout_Click"/>
        </div>
    </div>

</asp:Content>
