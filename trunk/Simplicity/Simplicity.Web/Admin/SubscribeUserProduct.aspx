<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="SubscribeUserProduct.aspx.cs" Inherits="Simplicity.Web.Admin.SubscribeUserProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" runat="server">
    <div id="heading1">
        <h2>
            TROLLEY</h2>
    </div>
    <div>
        <asp:Image ID="Image6" ImageUrl="~/Images/subheading_bar.jpg" Height="21" runat="server" />
    </div>
    <div>
        <asp:Repeater ID="rptItems" runat="server">
            <HeaderTemplate>
                <div class="trolleyActionBar" style="width: 100%;">
                    <div class="floatLeft" style="background-image: url(../images/curve_medium_small.jpg);
                        width: 100%">
                        <div class="floatLeft">
                            <img src="../Images/curve_left_small.jpg" /></div>
                        <div class="floatRight">
                            <img src="../Images/curve_right_small.jpg" /></div>
                            
                        <div class="trolleyActionsHeaders trolleyActionsHeader2">
                            Description</div>
                        <div class="trolleyActionsHeaders trolleyActionsHeader3">
                            No. of License(s)</div>
                            
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
                        
                    <div class="trolleyActionsCol2">
                        <div class="floatLeft" style="width: 160px;">
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/images/s_" + DataBinder.Eval(Container, "DataItem.ProductEntity.shortname") + ".jpg" %>'
                                AlternateText='<%# DataBinder.Eval(Container, "DataItem.ProductEntity.Name") %>' /></div>
                        <div class="floatLeft" style="padding-top: 10px; margin-left: 5px; font-weight: bold;
                            width: 275px;">
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
                    <div class="noFloat">
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
    <div class="floatRight">
        <asp:ImageButton ID="imbBtnCheckout" runat="server" ImageUrl="~/Images/btn_checkout.jpg"
            OnClick="btnCheckout_Click" />
    </div>
    <div class="clearFloat">
    </div>
</asp:Content>