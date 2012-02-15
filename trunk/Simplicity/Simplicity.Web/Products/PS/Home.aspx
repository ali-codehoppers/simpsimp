<%@ Page Title="" Language="C#" MasterPageFile="~/Common/Products.master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Simplicity.Web.Products.PS.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolder" runat="server">
 <link href='<%=Page.ResolveClientUrl("~/Styles/products.css")%>' rel="stylesheet"
        type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="LeftNavPlaceHolder" runat="server">
  
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentsPlaceHolder" runat="server">
  <div id="subdirectory" class="bottom_border"><a href="../Home.aspx" class="login">Products</a> &gt;&gt; <a href="Home.aspx" class="login"> Simplicity Professional Services </a> </div>
  <div id="secnavbar2" class="floatLeft">
    <div id="icon2" class="floatLeft">
      <h2>&nbsp;</h2>
    </div>
    <div id="nsecnavbar2">
      <div id="hardicon2" class="floatRight"> <a href="javascript:populateContents('../HardwareSpecifications.aspx','contentsDiv')"
                    class="icon_link">
        <asp:Image ID="Image5" ImageUrl="~/Images/icon_clientsystem_requirement.jpg" class="imgdim"
                        runat="server" />      
        <br />
        Hardware Specs</a> </div>
      <div id="priceicon" class="floatRight">
        <asp:HyperLink ID="HyperLink1" NavigateUrl="~/Products/EAS/EASPrice.aspx?productid=1" CssClass="icon_link" runat="server">
          <asp:Image ID="Image4" ImageUrl="~/Images/icon_price.jpg" alt="" class="imgdim" runat="server" />          
          <br />
          Prices/Editions</asp:HyperLink>
      </div>
      <div id="homeicon2" class="floatRight"> <a href="javascript:populateContents('Details.aspx','contentsDiv')" class="icon_link">
        <asp:Image ID="Image1" ImageUrl="~/Images/icon_home_EAS.jpg" Width="38" Height="30"
                        runat="server" />      
        <br />
        Home </a> </div>
      <div>
        <asp:Image ID="Image6" ImageUrl="~/Images/subheading_bar.jpg" Height="21" runat="server" />        
      </div>
    </div>
  </div>
  <div id="secnavbar3" class="floatLeft">
    <div id="icon3" class="floatLeft">
      <h2><span class="stylecolor">Simplicity </span>Professional  Services </h2>
    </div>

  </div>
  <div class="text" id="contentsDiv2">
    <p>&nbsp;</p>
    <p>Simplicity for Business offers a wide range of Professional Services:-</p>
    <ul type="disc">
      <li>Project Management </li>
      <li>Consultancy</li>
      <li>Business Analysis</li>
      <li>Report writing </li>
      <li>Training for our applications and MS applications </li>
      <li>Training on Sage Accounts </li>
      <li>Training on Sage Payroll</li>
      <li>Write applications for your business</li>
    </ul>
  </div>
  <h2>&nbsp;</h2>

</asp:Content>
