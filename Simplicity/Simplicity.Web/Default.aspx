﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Common/Main.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Simplicity.Web.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolder" runat="server">
    <script type="text/javascript" src="Scripts/jquery.cycle.all.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $('.slideShow').cycle({
                fx: 'fade', // choose your transition type, ex: fade, scrollUp, shuffle, etc...
                timeoutFn: calculateTimeout,
                delay: -2000

            });
            var timeouts = [1, 1, 1, 1, 1, 1];
            function calculateTimeout(currElement, nextElement, opts, isForward) {
                var index = opts.currSlide;
                return 5000;
                
            }
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" runat="server">

    <div id="contentTop" style="height:320px">
        
		<div class="floatLeft leftNavBar">
			<div> <a href="WatchDemo.aspx" id="watch"> </a></div>
			<div> <a href="BuyProduct.aspx" id="buy"> </a> </div>
			<div> <a href="BuyProduct.aspx?try=try" id="try"> </a> </div>
			<div> <a href="CallMeBack.aspx" id="call"> </a> </div>
		</div>
		<div class="floatRight">
			<div class="rightBannerTop" style="height:20px"></div>
			<div class="slideShow">
				<a href="Products/HS/Home.aspx"><img src="images/img_2.jpg" width="655" height="257" /></a>
				<a href="Products/HandyGas/Home.aspx"><img src="images/img_3.jpg" width="655" height="257" /></a>
				<a href="Products/HandyLEC/Home.aspx"><img src="images/img_4.jpg" width="655" height="257" /></a>
				<a href="Products/HandyServe/Home.aspx"><img src="images/img_5.jpg" width="655" height="257" /></a>
				<a href="Products/EAS/Home.aspx"><img src="images/img_6.jpg" width="655" height="256" /></a>
				<a href="Products/PS/Home.aspx"><img src="images/img_7.jpg" width="655" height="257" /></a>
                <a href="Products/Home.aspx"><img src="images/img_1.jpg" width="655" height="257" /></a>
			</div>
		</div>
		
        <div class="clearFloat"></div>

	</div>
	<div id="contentMiddle">
        <div class="floatRight" style="width:165px; margin-right:50px; margin-top:50px;">
            <div id="manImage">
                <div style="padding-top:42px; text-align:center">
                    <a href="CaseStudies.aspx"><img src="Images/btn_case_study2.jpg" />  </a>
                </div>
            </div>
		</div>
        <div class="textDiv">
			<div style="border-top:1px solid #d4efff; ">
				<p style="text-align:justify; font-size:16px">Simplicity for Business is an award winning software house that has developed a suite of business applications to help companies streamline and manage their business processes. By taking information from first point of contact through to final invoicing, Simplicity for Business provides a seamless way of managing enquiries, estimates, orders, variations, purchasing, invoicing, payments and much much more. Information is entered once, giving you full visibility of all of your business activity.</p>		
			</div>
		</div>
	</div>
	<div id="contentBottom">	
		<div id="ourSolutions" style="padding:10px"><h2><span style="color:#666666;">OUR</span> SOLUTIONS</h2></div>
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
				<a href="Solutions/HS/Home.aspx" class="moreDetails">
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
