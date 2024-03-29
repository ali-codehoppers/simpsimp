﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Common/Main.Master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="Simplicity.Web.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolder" runat="server">
    <style type="text/css">
        #nav-social
        {
            margin: 1em 0;
        }
        #nav-social li
        {
            border-bottom: 1px dotted #eee;
            display: inline;
            float: left;
            font-size: 12px;
            height: 32px;
            margin: 0 0 .7em 0;
            padding-bottom: .5em;
            width: 135px;
        }
        #nav-social li a
        {
            color: #888;
            display: inline;
            float: left;
            font-size: 14px;
            font-weight: normal;
            height: 32px;
            line-height: 1.3;
            padding: 1px 0 1px 40px;
        }
        #nav-social li a span
        {
            color: #bbb;
            display: block;
            font-size: 11px;
        }
        #nav-social li a:hover
        {
            color: #444;
        }
        #nav-social #icon-twitter a
        {
            background: url(../../images/icon-twitter.png) no-repeat 0 50%;
        }
        #nav-social #icon-facebook a
        {
            background: url(../../images/icon-facebook.png) no-repeat 0 50%;
        }
        #nav-social #icon-linkedin a
        {
            background: url(../../images/icon_linkedin.png) no-repeat 0 50%;
        }
        #nav-social #icon-appexchange a
        {
            background: url(../../images/icon-appexchange.jpg) no-repeat 0 50%;
        }
        #nav-social #icon-rss a
        {
            background: url(../../images/icon-rss.png) no-repeat 0 50%;
        }
        #nav-social #icon-youtube a
        {
            background: url(../../images/icon-youtube.png) no-repeat 0 50%;
        }
        #nav-social #icon-cloud a
        {
            background: url(../../images/icon-cloud.png) no-repeat 0 50%;
        }
        #social-title
        {
            border-bottom: 1px solid #EEE;
            color: #5AB5DC;
            font-size: 20px;
            padding-bottom: 10px;
        }
    </style>
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
    <div id="contentTop" style="height: 380px">
        <div class="floatLeft leftNavBar" style="height: 250px">
            <div>
                <a href="WatchDemo.aspx" id="watch"></a>
            </div>
            <div>
                <a href="BuyProduct.aspx" id="buy"></a>
            </div>
            <div>
                <a target="_blank" href="https://sites.secure.force.com/appexchange/listingDetail?listingId=a0N30000004fll2EAA#"
                    id="try"></a>
            </div>
            <div>
                <a href="CallMeBack.aspx" id="call"></a>
            </div>
        </div>
        <div class="floatRight">
            <div class="rightBannerTop" style="height: 20px">
            </div>
            <div class="slideShow">
                <a href="Products/HS/Home.aspx">
                    <img src="images/img_2.jpg" width="655" height="257" /></a> <a href="Products/HandyGas/Home.aspx">
                        <img src="images/img_3.jpg" width="655" height="257" /></a> <a href="Products/HandyLEC/Home.aspx">
                            <img src="images/img_4.jpg" width="655" height="257" /></a> <a href="Products/HandyServe/Home.aspx">
                                <img src="images/img_5.jpg" width="655" height="257" /></a> <a href="Products/EAS/Home.aspx">
                                    <img src="images/img_6.jpg" width="655" height="256" /></a>
                <a href="Products/PS/Home.aspx">
                    <img src="images/img_7.jpg" width="655" height="257" /></a> <a href="Products/Home.aspx">
                        <img src="images/img_1.jpg" width="655" height="257" /></a>
            </div>
        </div>
        <div style="clear:both">
        </div>
        <div style="max-width: 850px; margin-left: 30px;">
            <div style="padding-bottom:5px">
            <h3 id="social-title" style="padding: 0px">
                Find us elsewhere</h3>
            </div>

                <ul id="nav-social" style="padding: 5px; padding-top: 0px;display:inline">
                    <li id="icon-twitter"><a href="http://twitter.com/Simplicity4Bus" target="_blank"><span>
                        Follow us on </span>Twitter</a></li>
                    <li id="icon-facebook"><a href="http://www.facebook.com/#!/pages/Simplicity4Business/283064001714871" target="_blank"><span>Like us on </span>Facebook</a></li>
                    <li id="icon-cloud"><a href="http://www.businesscloudsummit.com/content/cloud-tv-catch" target="_blank"><span>Watch us on </span>CloudTV</a></li>
                    <!--<li id="icon-rss"><a href="" target="_blank"><span>Subscribe to our </span>RSS Feed</a></li>-->
                    <li id="icon-youtube"><a href="http://www.youtube.com/user/Simplicity4Business?blend=1&ob=video-mustangbase" target="_blank"><span>Watch us on </span>Youtube</a></li>
                    <li id="icon-linkedin"><a href="http://uk.linkedin.com/pub/simplicity-for-business/42/2b6/a02" target="_blank"><span>Join us on </span>LinkedIn</a></li>
                    <li id="icon-appexchange"><a href="http://appexchange.salesforce.com/listingDetail?listingId=a0N30000004fll2EAA" target="_blank"><span>See us on </span>AppExchange</a></li>
                </ul>
        </div>

    </div>
    <div id="contentMiddle">
        <div class="floatRight" style="width: 165px; margin-right: 50px; margin-top: 50px;">
            <div id="manImage">
                <div style="padding-top: 42px; text-align: center">
                    <a href="CaseStudies.aspx">
                        <img src="Images/btn_case_study2.jpg" />
                    </a>
                </div>
            </div>
        </div>
        <div class="textDiv" style="padding-top: 15px;">
            <div>
                <p style="text-align: justify; font-size: 18px; font-weight: bold">
                    Welcome To Simplicity Online Software Solution
                </p>
            </div>
            <div style="border-top: 1px solid #d4efff;">
                <p style="text-align: justify; font-size: 16px">
                    Simplicity for Business is an award winning software house that has developed a
                    suite of business applications to help companies streamline and manage their business
                    processes. By taking information from first point of contact through to final invoicing,
                    Simplicity for Business provides a seamless way of managing enquiries, estimates,
                    orders, variations, purchasing, invoicing, payments and much much more. Information
                    is entered once, giving you full visibility of all of your business activity.</p>
            </div>
        </div>
    </div>
    <div id="contentBottom">
        <div id="ourSolutions" style="padding: 10px">
            <h2>
                <span style="color: #666666;">OUR</span> SOLUTIONS</h2>
        </div>
        <div>
            <img src="images/subheading_bar.jpg" alt="" width="565" height="21" /></div>
        <div id="links">
            <div id="salesMarketing">
                <a href="Solutions/SaleM/Home.aspx" class="moreDetails">
                    <img src="images/sales_marketing.jpg" alt="" />
                </a>
            </div>
            <div id="operations">
                <a href="Solutions/Operation/Home.aspx" class="moreDetails">
                    <div>
                        <img src="images/operations.jpg" alt="" /></div>
                </a>
            </div>
            <div id="healthNSafety">
                <a href="Solutions/HS/Home.aspx" class="moreDetails">
                    <div>
                        <img src="images/health_safety.jpg" alt="" /></div>
                </a>
            </div>
            <div class="clearFloat">
            </div>
            <div id="resourceMgmt">
                <a href="Solutions/RM/Home.aspx" class="moreDetails">
                    <div>
                        <img src="images/resource_mngmnt.jpg" alt="" /></div>
                </a>
            </div>
            <div id="financeNAcnts">
                <a href="Solutions/FinanceAccount/Home.aspx" class="moreDetails">
                    <div>
                        <img src="images/finance_accnt.jpg" alt="" /></div>
                </a>
            </div>
            <div id="mobileApps">
                <a href="Solutions/Mobile/Home.aspx" class="moreDetails">
                    <div>
                        <img src="images/mobile_apps.jpg" alt="" /></div>
                </a>
            </div>
        </div>
    </div>
</asp:Content>
