<%@ Page Title="" Language="C#" MasterPageFile="~/Common/LeftMenu.master" AutoEventWireup="true"
    CodeBehind="Home.aspx.cs" Inherits="Simplicity.Web.Community.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolder" runat="server">
    <script type="text/javascript">
        var currentDiv;

        function populateAboutUsContents() {
            $.post('AboutUs.aspx', function (data) {
                $('#contentsDiv').html(data);
                onPageLoad();
            });
        }

        function onPageLoad() {
            //hide the all of the element with class menuDetail
            $(".menuDetail").hide();
            //toggle the componenet with class menuDetail
            $(".menuLabel").click(function () {
                if (currentDiv != $(this).attr("id")) {
                    $(this).next(".menuDetail").slideToggle(1000);
                    $("#" + currentDiv).next(".menuDetail").slideToggle(1000);
                    currentDiv = $(this).attr("id");
                }
                else {
                    $(".menuDetail").hide();
                    currentDiv = null;
                }
            });
            //$("#sfDiv").next(".menuDetail").show();
            //currentDiv = "sfDiv";
        }

        $(document).ready(function () {
            onPageLoad();
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <div class="floatRight" style="width: 650px;">
        <div id="secnavbar" class="floatLeft">
            <div id="icon1" class="floatLeft">
                <h2 id="ourCommunity">
                    <span style="color: #cccccc;">OUR</span> COMMUNITY
                </h2>
            </div>
            <div id="nsecnavbar">
                <div>
                    <asp:Image ID="Image6" ImageUrl="~/Images/subheading_bar.jpg" Height="21" runat="server" />
                </div>
            </div>
        </div>
        <div id="contentsDiv" class="communitytext">
            <p>
                Get the latest information and extend your knowledge with news, tutorials and downloads.
                Stay on top of trends and new techniques visit exciting portals, exchange and events.</p>
            <p>
                Experts need experts</p>
            <p>
                We choose to be master of one trade - business process systems. Being great at this
                is the starting point for all we do.</p>
            <p>
                However, we set ourselves goals we know we can't reach yet, because we know that
                by stretching to meet them we can get further than we expected.</p>
            <p>
                Occasionally we need other masters in their field to be truly successful in our
                quest for greatness in ours. This is why we partner with other experts.</p>
            <p>
                For example, when our team said 'clients will be able to have a more cost effective
                and accessible enterprise application suite if it was available on the web' we knew
                we need a partner with expertise in cloud computing and software as a Service (SaaS)
                technologies. Hence our close relationship with Astadia was born.</p>
            <div class="menuLabel" id="sfDiv">
                <asp:Image ID="Image1" runat="server" Height="40px" ImageUrl="~/Images/Salesforce.jpg" />
            </div>
            <div class="menuDetail">
                <p>
                    Salesforce.com is enterprise cloud-computing company system primarily for sales
                    and customer service - also known as customer relationship management or CRM</p>
                <p>
                    To find out more visit their website:</p>
                <a href="http://www.salesforce.com/uk/">www.salesforce.com/uk/</a>
            </div>
            <div class="menuLabel" id="arbiDiv">
                <asp:Image ID="Image7" runat="server" Height="40px" ImageUrl="~/Images/astadia.png" />
            </div>
            <div class="menuDetail">
                <p>
                    Astadia is the global leader in technology-enabled business consulting, focused
                    on Cloud Computing and SaaS technologies. Their unique methodologies analyze business
                    challenges and document clear, effective solutions that lead to improved customer
                    relations and tangible business results.
                </p>
                <p>
                    To find out more visit their website:</p>
                <a href="http://www.astadia.com/">www.astadia.com/</a>
            </div>
            <div class="menuLabel" id="sageDiv">
                <asp:Image ID="Image8" runat="server" Height="40px" ImageUrl="~/Images/sageLogo80.gif" />
            </div>
            <div class="menuDetail">
                <p>
                    The Stage Group plc is a leading supplier of business software and services to 6.1
                    million customers worldwide. This software ranges from accounts and payroll, to
                    customer relationship managment, e-business and help for start-ups.</p>
                <p>
                    Simplicity is fully integrated with Stage, allowing companies to manage the detailed
                    end to end business processes within Simplicity and the financials within Sage Accounts
                    and Payroll.</p>
                <p>
                    To find out more visits their website:</p>
                <a href="http://www.sage.com/">www.sage.com</a>
            </div>
            <div id="tag">
                <br />
                <a href="#news" style="font-weight: bolder;">News</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="#links" style="font-weight: bolder;">Links</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="#events" style="font-weight: bolder;">Events</a>
                <br />
            </div>
            <div id="news">
                <br />
                <a href="#tag">back to top</a>
                <br />
                <p>
                    For read the latest news from Simplicity For Business please click on the month
                    and then story headline you are interested in.</p>
                <p>
                    <a href="#Jantop">Jan 2010</a></p>
                <p id="Jantop">
                    <a>Press release VAT increase</a> <a>Press release Snow hits economy</a> <a>Press release
                        - Estimating in todays's harsh economic environment</a></p>
            </div>
            <div id="links">
                <br />
                <a href="#tag">back to top</a>
                <br />
                <div class="linktext">
                    <p>
                        A directory of some of the websites relevant to the business community.</p>
                    <p>
                        <a href="#atop">A</a>&nbsp;&nbsp;&nbsp; <a href="#btop">B</a>&nbsp;&nbsp;&nbsp;
                        <a href="#ctop">C</a>&nbsp;&nbsp;&nbsp; <a href="#dtop">D</a>
                        <h2 id="atop">
                            Links - A</h2>
                        <p>
                            Goverment Department and Agencies<br />
                            Adjudicators Office<br />
                            <a href="http://www.adjudicatorsoffice.gov.uk/">www.adjudicatorsoffice.gov.uk/</a></p>
                    </p>
                    <p>
                        <h2 id="btop">
                            Links - B</h2>
                        <p>
                            Business Link<br />
                            <a href="http://www.businesslink.gov.uk/bdotg/action/home?domain=www.businesslink.gov.uk&target=http://www.businesslink.gov.uk/">
                                www.businesslink.gov.uk/</a></p>
                    </p>
                    <p>
                        <h2 id="ctop">
                            Links - C</h2>
                        <p>
                            Central Office for information<br />
                            <a href="http://www.coi.gov.uk/">www.coi.gov.uk/</a></p>
                        <p>
                            Companies House<br />
                            <a href="http://www.companieshouse.gov.uk/">www.companieshouse.gov.uk/</a></p>
                    </p>
                    <p>
                        <h2 id="dtop">
                            Links - D</h2>
                        <p>
                            Department for Business, Innovation and Skills<br />
                            <a href="http://www.bis.gov.uk/">www.bis.gov.uk/</a></p>
                        <p>
                            Department for Work &amp; Pensions<br />
                            <a href="http://www.dwp.gov.uk/">www.dwp.gov.uk/</a></p>
                        <p>
                            Department of Health<br />
                            <a href="http://www.dh.gov.uk/">www.dh.gov.uk/</a></p>
                        <p>
                            Directgov<br />
                            <a href="http://www.direct.gov.uk/">www.direct.gov.uk/</a></p>
                    </p>
                </div>
            </div>
            <div id="events">
                <br />
                <a href="#tag">back to top</a>
                <br />
                <p>
                    <h3>
                        January 25,2010</h3>
                    <p>
                        Professional Edition Administration Essentials - Virtual. For more information visit:<br />
                        <a href="http://www.salesforce.com/uk/events/">www.salesforce.com/uk/events</a></p>
                </p>
                <p>
                    <h3>
                        Febuary 8,2010</h3>
                    <p>
                        Administration Essentials - Virtual. For more information visit:<br />
                        <a href="http://www.salesforce.com/uk/events/">www.salesforce.com/uk/events</a></p>
                    <h3>
                        Febuary 23-24,2010</h3>
                    <p>
                        Technology for Marketing and Advertising - Earls Court 2, London. For more information
                        visit:<br />
                        <a href="http://www.t-f-m.co.uk/">www.t-f-m.co.uk</a></p>
                </p>
                <h3>
                    Febuary 23,2010</h3>
                <p>
                    IT Showcase Live - Manchester. For more information visit:<br />
                    <a href="http://www.itshowcase.co.uk/Events/">www.itshowcase.co.uk/Events</a></p>
                </p>
            </div>
        </div>
    </div>
</asp:Content>
