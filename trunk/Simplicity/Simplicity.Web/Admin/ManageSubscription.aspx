<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="ManageSubscription.aspx.cs" Inherits="Simplicity.Web.Admin.ManageSubscription" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" runat="server">
    <div style="padding:10px;">
    <asp:Repeater ID="SubscribeRepeater" runat="server" OnItemDataBound="DataItemBound" >
        <HeaderTemplate>
            <div style="width:100%">
                <h1>Subscription</h1>
            </div>
            <div style="width:100%;padding-top:10px; padding-bottom:20px;">
                <div style="float: left;width:300px" >
                    &nbsp;  
                </div>
                <div style="float:left;width:310px;">
                    <h2>Trial Product</h2>
                </div>
                <div style="float:left;width:310px;">
                    <h2>Company Product</h2>
                </div>
                <div style="clear:both"></div>
            </div>
        </HeaderTemplate>
        <ItemTemplate>
            <asp:HiddenField runat="server" ID="userID" Value='<%#Eval("UserId") %>'/>
            <div style="padding:2px;padding-bottom:0px;">
                <div style="float: left;width:300px" >
                    <%#Eval("Email")%>
                </div>
                <div style="float:left;width:310px;">
                &nbsp;
                    <asp:Repeater ID="TrialRepeater" runat="server">
                        <ItemTemplate>
                            <div style="float: left; padding-bottom: 10px; padding-right: 30px;">
                               <img width="70" src='../Images/Buy_products_img_<%# DataBinder.Eval(Container.DataItem, "Product.ProductID")%>.jpg' />
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                    <div style="clear:both"></div>
                </div>
                <div style="float:left;width:310px;">
                &nbsp;
                    <asp:Repeater ID="CompanyRepeater" runat="server">
                        <ItemTemplate>
                            <div style="float: left; padding-bottom: 10px; padding-right: 30px;">
                               <img width="70" src='../Images/Buy_products_img_<%# DataBinder.Eval(Container.DataItem, "CompanyProduct.ProductID")%>.jpg' />
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                    <div style="clear:both"></div>
                 </div>
                <div style="clear:both"></div>
            </div>
        </ItemTemplate>
    </asp:Repeater>
    </div>
</asp:Content>
