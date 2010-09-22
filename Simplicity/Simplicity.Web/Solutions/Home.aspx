<%@ Page Title="" Language="C#" MasterPageFile="~/Common/LeftMenu.master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Simplicity.Web.Solutions.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <div style="float:left;width:650px">	
        <div id="secnavbar" class="floatLeft">
                <div id="icon1" class="floatLeft">
                <h2><span style="color:#cccccc;">OUR</span> SOLUTIONS</h2>                    
                </div>
                <div id="nsecnavbar">
                    <div id="homeicon" class="floatLeft">                        
                        <a href="javascript:populateAboutUsContents()" class="icon_link">
                        <asp:Image ID="Image1" ImageUrl="~/Images/icon_home_hns.jpg" width="38" height="30" runat="server"/><br />About Us</a>
                    </div>
                    <div id="siteicon" class="floatLeft">                        
                        <a href="javascript:populateContents('OurClients.aspx','contentsDiv')" class="icon_link">
                            <asp:Image ID="Image2" ImageUrl="~/Images/icon_safety.jpg" alt="" class="imgdim" runat="server"/><br />
                            Our Clients
                        </a>
                    </div>
                    <div id="docicon" class="floatLeft">
                        <a href="javascript:populateContents('Careers.aspx','contentsDiv')" class="icon_link">
                            <asp:Image ID="Image3" ImageUrl="~/Images/icon_documentation.jpg" alt="" class="imgdim" runat="server"/><br />
                            Careers
                        </a>
                    </div>
                    <div id="priceicon" class="floatLeft">
                        <a href="javascript:populateContents('News.aspx','contentsDiv')" class="icon_link">
                        <asp:Image ID="Image4" ImageUrl="~/Images/icon_price.jpg" alt="" class="imgdim" runat="server"/><br />
                        News</a>
                    </div>
                    <div id="hardicon" class="floatLeft">                        
                        <a href="../Contact.aspx" class="icon_link">
                        <asp:Image ID="Image5" ImageUrl="~/Images/icon_clientsystem_requirement.jpg" class="imgdim" runat="server"/><br />
                        Contact
                        </a>
                    </div>
                    <div>
                        <asp:Image ID="Image6" ImageUrl="~/Images/subheading_bar.jpg" height="21" runat="server"/>
                    </div>
                </div>
        </div>	
        <p>We have created leading resource management solutions for clients across multiple industries.</p>
        <p>Please click on an appropriate industtry to see how our solutions can help you increase your profits and the performance of your business.</p>
        <div id="links">
			<div id="salesMarketing">
				<a href="" class="moreDetails">
                    <div><asp:Image ID="Image7" runat="server" ImageUrl="~/Images/sales_marketing.jpg"/></div>					
				</a>
			</div>
			<div id="operations">
				<a href="" class="moreDetails">
                    <div>
                        <asp:Image ID="Image8" runat="server" ImageUrl="~/Images/operations.jpg" /></div>
				</a>
			</div>
			<div id="healthNSafety">
				<a href="" class="moreDetails">
                    <div>
                        <asp:Image ID="Image9" runat="server" ImageUrl="~/Images/health_safety.jpg" /></div>
					
				</a>			
			</div>
			<div class="clearFloat"></div>
			<div id="resourceMgmt">
				<a href="" class="moreDetails">
                    <div>
                        <asp:Image ID="Image10" runat="server" ImageUrl="~/Images/resource_mngmnt.jpg" /></div>					
				</a>
			</div>
			<div id="financeNAcnts">
				<a href="" class="moreDetails">
                    <div>
                        <asp:Image ID="Image11" runat="server" ImageUrl="~/Images/finance_accnt.jpg" /></div>
					
				</a>
			</div>
			<div id="mobileApps">
				<a href="" class="moreDetails">
                    <div>
                        <asp:Image ID="Image12" runat="server" ImageUrl="~/Images/mobile_apps.jpg" /></div>
					
				</a>
			</div>
		</div>

    </div>
</asp:Content>
