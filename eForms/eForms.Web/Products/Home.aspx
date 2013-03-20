<%@ Page Title="" Language="C#" MasterPageFile="~/Common/Products.master" AutoEventWireup="true"
    CodeBehind="Home.aspx.cs" Inherits="eForms.Web.Products.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolder" runat="server">
    <link href='<%=Page.ResolveClientUrl("~/Styles/products.css")%>' rel="stylesheet"
        type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="LeftNavPlaceHolder" runat="server">
    <div class="leftNavBar" style="padding-top: 85px">
			<div> <a href="../WatchDemo.aspx" id="watch" class="watch-demo"> </a> </div>
			<%--<div> <a href="../BuyProduct.aspx" id="buy"> </a> </div>--%>
			<div>                 <a target="_blank" href="https://sites.secure.force.com/appexchange/listingDetail?listingId=a0N30000004fll2EAA#"
                    id="try"></a> </div>
			<div> <a href="../CallMeBack.aspx" id="call"> </a> </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentsPlaceHolder" runat="server">
        <div id="icon1">
            <h2 id="ProductHeading">
                <span style="color: #666666;">OUR</span> PRODUCTS</h2>
        </div>
        <div><br />
        </div>
        <div>
          <p>Simplicity for Business offers a suite of business software which
requires nothing more than a web browser or mobile phone to
access.</p>
<p style="width:95%">The Simplicity Software as a Service (SaaS) suite is packed with specialist
            applications to help clients to co-ordinate their
          whole business</p>
<ul>
  <li>Sales and Marketing</li>
  <li>Operations</li>
  <li> Health and Safety</li>
  <li> Resource Management</li>
  <li> Finance and Accounts</li>
  <li> Mobile Apps</li>
</ul>
<p style="width:95%">It works across customer facing sales, marketing and project  management departments, through to back-office operations and finance, for core  activities over a wide range of industry sectors.</p>
<p style="width:95%">  Covering the critical business processes that impact profit  and cash-in-bank, Simplicity for Business helps your people work effectively  and optimise expensive resources. Managers have instant access to company-wide  information and in-depth reporting, equipping them to plan better for the  future.</p>
<p style="width:95%">  You will be amazed at how Simplicity for Business can help  your business to become smarter and more efficient.</p>
        <p style="width:95%">
        For more on the solutions which make up this impressive suite of software click on the Product links on the left.</p>
    </div>
    
</asp:Content>
