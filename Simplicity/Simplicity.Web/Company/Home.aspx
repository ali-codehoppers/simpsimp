<%@ Page Title="" Language="C#" MasterPageFile="~/Common/Companys.master" AutoEventWireup="true"
    CodeBehind="Home.aspx.cs" Inherits="Simplicity.Web.Company.Home" %>

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
            $("#simpDivImg").attr('src', "../Images/icon_plus.jpg");
            $("#pionDivImg").attr('src', "../Images/icon_plus.jpg");
            $("#adapDivImg").attr('src', "../Images/icon_plus.jpg");
            $("#partDivImg").attr('src', "../Images/icon_plus.jpg");
            //toggle the componenet with class menuDetail
            $(".menuLabel").click(function () {
                if (currentDiv != $(this).attr("id")) {
                    //$(this).next(".minus").show();
                    //$(this).next(".plus").hide();
                    $("#" + $(this).attr("id") + "Img").attr('src', "../Images/icon_minus.jpg");
                    $(this).next(".menuDetail").slideToggle(1000);
                    $("#" + currentDiv).next(".menuDetail").slideToggle(1000);
                    currentDiv = $(this).attr("id");
                }
                else {
                    $(".menuDetail").hide();
                    $("#" + $(this).attr("id") + "Img").attr('src', "../Images/icon_plus.jpg");
                    //$(".plus").show();
                    currentDiv = null;
                }
            });
            //$("#simpDiv").next(".menuDetail").show();
            //currentDiv = "simpDiv";
        }

        $(document).ready(function () {
            onPageLoad();
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <div id="secnavbar" class="floatLeft">
        <div id="icon1" class="floatLeft">
            <h2 id="ourSolution">
                <span style="color: #cccccc;">OUR</span> COMPANY</h2>
        </div>
        <div id="nsecnavbar">
            <div >
                <asp:Image ID="Image6" ImageUrl="~/Images/subheading_bar.jpg" Height="21" runat="server" />
            </div>
        </div>
    </div>
    <div id="contentsDiv" class="companytext">
        <p>
            Simplicity for Business is an award winning software company, founded in 1987.</p>
        <p>
            We believe it is best to do one thing really well, therefore we concentrate most
            of our effort on Enterprise Application Development.</p>
        <p>
            Our company philosphy is to produce sophisticated easy to use business software
            which ensures out clients increase profits and business performance.</p>
        <p>
            We strive to produce this software at the lowest cost possible to you, with the
            best customer service imaginable.</p>
        <p>
            We follow four simple principles to help us.</p>
        
        <div class="menuLabel" id="simpDiv"> 
            <div style="float:left;width:3%;"><img id="Img1" src="../Images/curve_left_c.jpg"/></div>
            <div class="menuback"><img id="simpDivImg" alt="plus" class="plus"/>
            <h2>Simplicity</h2></div> 
            <div style="float:right;"><img id="Img3"  src="../Images/curve_right_c.jpg"/></div>
        </div>
        
        <div class="menuDetail">
            <p>
                When developing our systems we focus on providing the best user experience possible.
                Our softwares are clear and simple to use.</p>
            <p>
                It does not matter which platform you are using to use our system, we make sure
                that the response from our system is instantaneous.</p>
            <p>
                Simple does not mean functional lacking, our systems encapsulate in them all the
                business needs that would make sure that they help with long term profits for our
                clients and also improve their business efficiency.</p>
        </div>
        <div class="menuLabel" id="pionDiv">
            <div style="float:left;width:3%;"><img id="Img2" src="../Images/curve_left_c.jpg"/></div>
            <div class="menuback"><img id="pionDivImg" alt="plus" class="plus" />
            
            <h2>
                Pioneering</h2></div> 
            <div style="float:right;"><img id="Img5"  src="../Images/curve_right_c.jpg"/></div>
            
        </div>
        <div class="menuDetail">
            <p>
                We do recognize that technology is always changing. To address to this ever changing
                we have a world class technical team who are always pushing the limits to evolve
                our business software.</p>
            <p>
                We understand that the world is increasingly mobile and web based. This is our dedication
                to improving business process, means we strive to develop new products.</p>
            <p>
                Simplicy EAS is our latest web based suite of software, whilst Simplicity Handy
                Range includes a suit of mobile apps.</p>
            <p>
                Challenging existing systems allowed us to be award-winners (The Best use of Mobile
                and Wireless technology, DTIs eCommerce Award) and meet our clients' requirments.</p>
        </div>
        <div class="menuLabel" id="adapDiv">
            <div style="float:left;width:3%;"><img id="Img4" src="../Images/curve_left_c.jpg"/></div>
            <div class="menuback"><img id="adapDivImg" alt="plus" class="plus" />
            <h2>Adaptability</h2> </div>
            <div style="float:right;"><img id="Img7"  src="../Images/curve_right_c.jpg"/></div>
            
        </div>
        <div class="menuDetail">
            <h3>
                So our clients' businesses are the fittest survivors</h3>
            <p>
                Simplicity was first developed for a leading construction company that found existing
                systems too inflexible to support their requirments. The initial system was to be
                simple to use whilst housing a database of over 42,000 schedules
                and rates. Thus Simplicity was born.</p>
            <p>
                Since that time we have never moved from our basic concept - to produce the best
                business process systems which offer applications that make information managment
                and resource planning simple.</p>
            <p>
                However, to lead in our crowded market we continue to adapt - to advances in technology,
                changes in legislation (Healthy &amp; safety, accountancy etc) and the various needs
                of clients from every business sector.</p>
        </div>
        <div class="menuLabel" id="partDiv">
        <div style="float:left;width:3%;"><img id="Img6" src="../Images/curve_left_c.jpg"/></div>
            <div class="menuback"><img id="partDivImg" alt="plus" class="plus" />
            <h2>
                Partnering</h2></div>
            <div style="float:right;"><img id="Img9"  src="../Images/curve_right_c.jpg"/></div>
            
        </div>
        <div class="menuDetail">
            <h2>
                Experts need experts</h2>
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
                For example, when our R&amp;D team said 'clients will have a a more cost effective
                and accessible enterprise application suite if it was available on the web' we knew
                we need a partner with expertise in cloud computing and software as a Service (SaaS)
                technologies. Hence our close relationship with Astadia was born.
            </p>
        </div>
  
    </div>
</asp:Content>
