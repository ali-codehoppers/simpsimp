<%@ Page Title="" Language="C#" MasterPageFile="~/Common/Community.master" AutoEventWireup="true"
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
            
        </div>
    </div>
</asp:Content>
