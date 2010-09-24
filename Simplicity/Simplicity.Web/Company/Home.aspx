<%@ Page Title="" Language="C#" MasterPageFile="~/Common/LeftMenu.master" AutoEventWireup="true"
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
            <h2>
                Simplicity</h2>
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
            <h2>
                Pioneering</h2>
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
            <h2>
                Adaptability</h2>
        </div>
        <div class="menuDetail">
            <h3>
                So our clients' businesses are the fittest survivors</h3>
            <p>
                Simplicity was first developed for a leading construction company that found existing
                systems too inflexible to support their requirments. The initial system was to be
                simple was to be simple to use whilst housing a database of over 42,000 schedules
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
            <h2>
                Partnering</h2>
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
        <div id="tag">
            <br />
            <br />
            <a href="#ourclient" style="font-weight: bolder">Our Clients</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <a href="#careers" style="font-weight: bolder">Careers</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <a href="#news" style="font-weight: bolder">News</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <a href="../Contact.aspx" style="font-weight: bolder">Contact</a>
            <br />
            <br />
        </div>
        <div id="ourclient">
            <a href="#tag">back to top</a>
            <br />
            <p>
                Our clients come from many different industry sectors and many through referral.
                We think this is testimony to the quality of our solutions and the importance we
                place on creating a rewarding working relationship with them.</p>
            <p>
                But you don't have to take our word for it, read what some of our clients have to
                say about us below in testimonials.</p>
            <br />
        </div>
        <div id="careers">
            <a href="#tag">back to top</a>
            <br />
            <p>
                We are really proud of what we achieve at Simplicity for business. Our great team
                of people are focused on providing excellent value products and services to meet
                customers' needs, which is how we manage to produce award winning solutions.</p>
            <p>
                Our people believe to be happy at work you need to be challeged and the challenge
                should be fun. This is the idea company culture in which to create great software
                solutions. Our people bring a wide range experience to this meet this challenge
                and this provides a simulating environment in which individuals can both further
                their personal skills and contribute to the success of the business.</p>
            <p>
                Training and personal development are great importance because by enhancing the
                skills of each member of staff, Simplicity can better service the needs of its customers.
                All of this allows our staff to feel valued as every opinion counts and everyone
                contributes. We're looking for dynamic, motivated and creative people to join our
                team. We want to hire the best people and support them well.</p>
            <p>
                We employ people in a variety of roles including software development, customer
                service, sales and marketing to name a few.</p>
            <p>
                If you would like to work for an award-winning software company based in London
                please submit your CV to the following.</p>
            <h4>
                Important Information</h4>
            <p>
                Ultra Nova Coding Ltd has a policy not to use Recruitment Agencies; please do not
                apply for any position within this organisation we do not welcome seculative enquiries.</p>
            <p>
                Agencies intending to ignore this clear statement should note we can and will seek
                legal redress against any agency which infringes our legal rights. Please also note
                that all our phone numbers are registered with the Telephone Preference Service
                (TPS) and thus we do not accept unsolicited calls.</p>
            <h4>
                Apply For This Position</h4>
            <p>
                Unless otherwise stated, if applying for a job within the European Union, you must
                ensure that you are already authorised to work there.</p>
            <p>
                If you are interested in applying job for this role, you will need a valid work
                permit.<br />
                If you are interested in applying job for the advertised job role within Ultra Nova
                Coding Ltd you will need a valid work permit.</p>
            <p>
                Individuals from countries outside the European Economic Area (EEA) must be in possession
                of a work permit to allow them to take up employment. For more information please
                visit Government's website.</p>
            <p>
                European Community law grants EEA nationals a right to live and work in the United
                Kingdom. This is called a right of residence. Further information can be found at
                the website of the British Home Office.</p>
            <p>
                For information on immigration to the UK, take a look at the website of the British
                Home Office.</p>
            <p>
                Ultra Nova Codling Ltd has anti-smoking policies and is an anti-smoking company.</p>
            <p>
                To join the team candidates must have the ability to think quickly and demonstrate
                common sense under pressure.</p>
            <p>
                In addition to protect our clients all staff are subject to Criminal Records Bureau
                checks.</p>
            <p>
                You must be fluent in English and eligible to work in the UK.</p>
            <h4>
                How to Apply</h4>
            <p>
                Preferably email: tell-me-more@ultranovecoding.com with a CV and covering letter.</p>
            <p>
                If you cannot email, post to:</p>
            <p>
                Ultra Nova Coding Ltd<br />
                Recruitment Team<br />
                Grenville Workshops<br />
                2a Grenville Road<br />
                London<br />
                N19 4EH</p>
            <p>
                Jean O' Connor<br />
                Human Resources &amp; Training for Ultra Nova Coding Ltd</p>
            <br />
        </div>
        <div id="news">
            <a href="#tag">back to top</a>
            <br />
            <p>
                For read the latest news from Simplicity For Business please click on the month
                and then story headline you are interested in.</p>
            <p>
                <a href="#Jantop">Jan 2010</a></p>
            <p id="Jantop">
                <a>Press release VAT increase</a>
                <br />
                <a>Press release Snow hits economy</a><br />
                <a>Press release - Estimating in todays's harsh economic environment</a></p>
            <br />
        </div>
    </div>
</asp:Content>
