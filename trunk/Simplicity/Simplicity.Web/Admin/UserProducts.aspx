<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true"
    CodeBehind="UserProducts.aspx.cs" Inherits="Simplicity.Web.Admin.UserProducts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" runat="server">
    <div style="padding:15px;">
        <%if (UserProductRepeater.Items.Count != 0)
          {%>
        <asp:Repeater ID="UserProductRepeater" runat="server">
            <HeaderTemplate>
                <div style="padding: 5px;">
                    <h2>
                        Trial Products</h2>
                </div>
                <div style="clear: both">
                </div>
                <div style="float: left; width:150px;">
                   <h3>Product</h3>
                </div>
                <div style="float: left; padding-left: 10px;">
                   <h3>Trial Expire Date</h3>
                </div>
                <div style="clear: both">
                </div>
            </HeaderTemplate>
            <ItemTemplate>
                <asp:HiddenField runat="server" ID="userID" value='<%# DataBinder.Eval(Container.DataItem, "UserProduct.UserID")%>'/>
                <asp:HiddenField runat="server" ID="productID" value='<%# DataBinder.Eval(Container.DataItem, "Product.ProductID")%>'/>
                <asp:HiddenField runat="server" ID="previousDate" value='<%# ((DateTime)DataBinder.Eval(Container.DataItem, "UserProduct.EndDate")).ToShortDateString()%>'/>
                <div style="float: left; padding-bottom: 10px; padding-right: 30px;">
                   <img width="120" src='../Images/Buy_products_img_<%# DataBinder.Eval(Container.DataItem, "Product.ProductID")%>.jpg' />
                </div>
                <div style="padding-top: 40px; padding-left: 10px;">
                    <asp:TextBox runat="server" CssClass="productDate" ID="userProductDate" Text='<%# ((DateTime)DataBinder.Eval(Container.DataItem, "UserProduct.EndDate")).ToShortDateString()%>'></asp:TextBox>
                </div>
                <div style="clear: both">
                </div>
            </ItemTemplate>
        </asp:Repeater>
        <%}%>
        <div style="clear: both">
        </div>
    </div>
    <div style="padding:15px;">
            <%if (CompanyProductRepeater.Items.Count != 0)
          {%>
        <asp:Repeater ID="CompanyProductRepeater" runat="server">
            <HeaderTemplate>
                <div style="padding: 5px;">
                    <h2>
                        Company Products</h2>
                </div>
                <div style="float: left; width:150px;">
                   <h3>Product</h3>
                </div>
                <div style="float: left;padding-left: 10px;width:180px;">
                   <h3>Expire Date</h3>
                </div>
                <div style="float: left;padding-left: 10px;width:180px;">
                   <h3>Num Of Licenses</h3>
                </div>
                <div style="clear: both">
                </div>
            </HeaderTemplate>
            <ItemTemplate>
                <asp:HiddenField runat="server" ID="companyID" value='<%# DataBinder.Eval(Container.DataItem, "CompanyProduct.CompanyID")%>'/>
                <asp:HiddenField runat="server" ID="productID" value='<%# DataBinder.Eval(Container.DataItem, "Product.ProductID")%>'/>
                <asp:HiddenField runat="server" ID="previousDate" value='<%# ((DateTime)DataBinder.Eval(Container.DataItem, "CompanyProduct.EndDate")).ToShortDateString()%>'/>
                <div style="float: left; padding-bottom: 10px; padding-right: 30px;">
                   <img width="120" src='../Images/Buy_products_img_<%# DataBinder.Eval(Container.DataItem, "Product.ProductID")%>.jpg' />
                </div>
                <div style="float: left;padding-top: 40px; padding-left: 10px;width:180px;">
                    <asp:TextBox runat="server" CssClass="productDate" ID="companyProductDate" Text='<%# ((DateTime)DataBinder.Eval(Container.DataItem, "CompanyProduct.EndDate")).ToShortDateString()%>'></asp:TextBox>
                </div>
                <div style="float: left;padding-top: 40px; padding-left: 10px;width:180px;">
                    <asp:TextBox runat="server" ID="LicenseNum" Text='<%# (DataBinder.Eval(Container.DataItem, "CompanyProduct.NumOfLicenses"))%>'></asp:TextBox>
                </div>
                <div style="padding-top: 40px; padding-left: 10px;color:Red">
                    <asp:RequiredFieldValidator ID="rfvDate" ControlToValidate="companyProductDate" runat="server" Display="Dynamic" ErrorMessage="Date field cannot be left blank"></asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="rfvLicense" ControlToValidate="LicenseNum" runat="server" Display="Dynamic" ErrorMessage="License field cannot be left blank"></asp:RequiredFieldValidator>
                </div>
                <div style="clear: both">
                </div>
            </ItemTemplate>
        </asp:Repeater>
          <%}%>
        <div style="clear: both">
        </div>
    </div>
    <% if (UserProductRepeater.Items.Count == 0 && CompanyProductRepeater.Items.Count == 0)
       { %>
        <div style="padding:15px;"><h1>No Product</h1></div>
    <%}
       else
       {%>
    <div style="padding:15px;">
        <asp:Button runat="server" Text="Update" ID="btnUpdateProduct" OnClick="btnUpdateProduct_Click"/>
    </div>
    <%} %>
    <script type="text/javascript">
        $(".productDate").datepicker();
    </script>
</asp:Content>
