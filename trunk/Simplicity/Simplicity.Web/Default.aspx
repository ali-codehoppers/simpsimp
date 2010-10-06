<%@ Page Title="" Language="C#" MasterPageFile="~/Common/Main.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Simplicity.Web.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolder" runat="server">
    <script type="text/javascript" src="Scripts/jquery.cycle.all.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $('.slideShow').cycle({
                fx: 'fade' // choose your transition type, ex: fade, scrollUp, shuffle, etc...
            });
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" runat="server">
    <div id="contentTop">
		<div class="floatLeft leftNavBar">
			<div> <a href="WatchDemo.aspx" id="watch"> </a> </div>
			<div> <a href="BuyProduct.aspx" id="buy"> </a> </div>
			<div> <a href="BuyProduct.aspx?try=try" id="try"> </a> </div>
			<div> <a href="CallMeBack.aspx" id="call"> </a> </div>
		</div>
		<div class="floatRight">
			<div class="rightBannerTop"></div>
			<div class="slideShow">
				<a href="Products/Home.aspx"><img src="images/img_1.jpg" width="655" height="257" /></a>
				<a href="Products/HS/Home.aspx"><img src="images/img_2.jpg" width="655" height="257" /></a>
				<a href="Products/HandyGas/Home.aspx"><img src="images/img_3.jpg" width="655" height="257" /></a>
				<a href="Products/HandyLEC/Home.aspx"><img src="images/img_4.jpg" width="655" height="257" /></a>
				<a href="Products/HandyServe/Home.aspx"><img src="images/img_5.jpg" width="655" height="257" /></a>
				<a href="Products/EAS/Home.aspx"><img src="images/img_6.jpg" width="655" height="257" /></a>
				<a href=""><img src="images/img_7.jpg" width="655" height="257" /></a>
			</div>
		</div>
		<div class="clearFloat"></div>
	</div>
	<div id="contentMiddle">
		<div class="textDiv">
			<div style="border-top:1px solid #d4efff; ">
				<p>Simplicity for Business is an award- winning software company which provides  business resource planning <br />
				  solutions to help your company achieve maximum efficiency and profitability.</p>		
			</div>
			<div style="color:white">
				<div class="floatLeft" style="padding-right:5px"><img src="images/quot1.jpg" alt="" /></div>
				<div class="floatLeft">
					<div style="padding-top:1px;">When we needed urgent software solutions in the past we always needed to license complex,</div>
					<div style="padding-top:1px;">expensive and inflexible software. Simplicity Health &amp; Safety Live and EAS have changed all that. All</div>
					<div class="floatLeft" style="padding-top:1px;">we need is a web browser and £110/user a month.</div>
					<div class="floatLeft" style="padding-left:5px"><img src="images/quot2.jpg" alt=""/></div>
					<div class="clearFloat"></div>
					<div style="color:#d4efff;">Jordan Reay Westgate Maintenance Ltd</div>
				</div>
				<div class="clearFloat"></div>
			</div>
		</div>
	</div>
	<div id="contentBottom">	
		<div id="ourSolutions"><h2><span style="color:#cccccc;">OUR</span> SOLUTIONS</h2></div>
		<div><img src="images/subheading_bar.jpg" alt="" width="565" height="21" /></div>
		<div id="links">
			<div id="salesMarketing">
				<a href="Solutions/SaleM/Home.aspx" class="moreDetails">
					<img src="images/sales_marketing.jpg" alt=""/>
				</a>
			</div>
			<div id="operations">
				<a href="Solutions/Operation/Home.aspx" class="moreDetails">
					<div><img src="images/operations.jpg" alt=""/></div>
				</a>
			</div>
			<div id="healthNSafety">
				<a href="Products/HS/Home.aspx" class="moreDetails">
					<div><img src="images/health_safety.jpg" alt=""/></div>
				</a>			
			</div>
			<div class="clearFloat"></div>
			<div id="resourceMgmt">
				<a href="Solutions/RM/Home.aspx" class="moreDetails">
					<div><img src="images/resource_mngmnt.jpg" alt=""/></div>
				</a>
			</div>
			<div id="financeNAcnts">
				<a href="Solutions/FinanceAccount/Home.aspx" class="moreDetails">
					<div><img src="images/finance_accnt.jpg" alt=""/></div>
				</a>
			</div>
			<div id="mobileApps">
				<a href="Solutions/Mobile/Home.aspx" class="moreDetails">
					<div><img src="images/mobile_apps.jpg" alt=""/></div>
				</a>
			</div>
		</div>
	</div>
</asp:Content>
