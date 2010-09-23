<%@ Page Title="" Language="C#" MasterPageFile="~/Common/LeftMenu.master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Simplicity.Web.Solutions.SaleM.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
<div style="float:left;width:650px">	
        <div id="secnavbar" class="floatLeft">
                <div id="icon1" class="floatLeft">
                <h2 id="ourSolution"><span style="color:#cccccc;">SALES</span> &amp; MARKETING</h2>                    
                </div>
                <div id="nsecnavbar">
                                        
                    <div id="Div1" class="floatRight">                        
                        <a href="javascript:populateContents('../../Products/HardwareSpecifications.aspx','contentsDiv')" class="icon_link">
                        <asp:Image ID="Image13" ImageUrl="~/Images/icon_clientsystem_requirement.jpg" CssClass="imgdim" runat="server"/><br />
                        Hardware
                        </a>
                    </div>
                    <div id="hardicon" class="floatRight">                        
                        <a href="javascript:populateContents('Analysis.aspx','contentsDiv')" class="icon_link">
                        <asp:Image ID="Image5" ImageUrl="~/Images/icon_clientsystem_requirement.jpg" CssClass="imgdim" runat="server"/><br />
                        Analysis
                        </a>
                    </div>
                    <div id="priceicon" class="floatRight">
                        <a href="javascript:populateContents('Estimate.aspx','contentsDiv')" class="icon_link">
                        <asp:Image ID="Image4" ImageUrl="~/Images/icon_price.jpg" alt="" CssClass="imgdim" runat="server"/><br />
                        Estimating</a>
                    </div>
                    <div id="docicon" class="floatRight">
                        <a href="javascript:populateContents('Market.aspx','contentsDiv')" class="icon_link">
                            <asp:Image ID="Image3" ImageUrl="~/Images/icon_documentation.jpg" alt="" CssClass="imgdim" runat="server"/><br />
                            Marketing
                        </a>
                    </div>
                    <div id="siteicon" class="floatRight">                        
                        <a href="javascript:populateContents('NBusiness.aspx','contentsDiv')" class="icon_link">
                            <asp:Image ID="Image2" ImageUrl="~/Images/icon_safety.jpg" alt="" CssClass="imgdim" runat="server"/><br />
                            <span id="textstyle">New Business</span>
                        </a>
                   </div>
                    <div id="homeicon" class="floatRight">                        
                        <a href="javascript:populateContents('Detail.aspx','contentsDiv')" class="icon_link">
                        <asp:Image ID="Image1" ImageUrl="~/Images/icon_home_hns.jpg" CssClass="imgdim" runat="server"/><br />Home</a>
                    </div>
                    <div>
                        <asp:Image ID="Image6" ImageUrl="~/Images/subheading_bar.jpg" height="21" runat="server"/>
                    </div>
                </div>
        </div>
        <div id="contentsDiv" class="servicetext">	
        <p>Simply put, for your Sales and Marketing department, the automated processes within Simplicity EAS allows you to:</p>
        <ul><li>Manage ITTs and Quotations to win business and protect profit margins</li>
        <li>Enquire/ Order/ Job Ticket Works Orders and Bills of Materials to complete projects and orders</li>
        <li>Handle variations and retentions effectively, so that they are not rejected</li>
        <li>Schedule operatives, plant, machinery and materials to control costs and deliver on time</li>
        <li>Display Timr sheets and Expense Management to control costs</li>
        <li>Invoice quickly, accurately and effectively to get paid more quickly</li>
        <li>Analyse all other business processes, from beginning to end</li> </ul>
        <p>To find out more about what Simplicity EAS has to offer and how they can help your business click on the icon below</p>
        </div>
    </div>
</asp:Content>
