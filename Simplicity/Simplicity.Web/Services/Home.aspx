<%@ Page Title="" Language="C#" MasterPageFile="~/Common/LeftMenu.master" AutoEventWireup="true"
    CodeBehind="Home.aspx.cs" Inherits="Simplicity.Web.Services.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <div class="floatRight" style="width: 650px;">
        <div id="secnavbar" class="floatLeft">
            <div id="icon1" class="floatLeft">
                <h2 id="ourServices">
                    <span style="color: #cccccc;">OUR</span> SERVICES
                </h2>
            </div>
            <div id="nsecnavbar">
                <div>
                    <asp:Image ID="Image6" ImageUrl="~/Images/subheading_bar.jpg" Height="21" runat="server" />
                </div>
            </div>
        </div>
        <div id="contentsDiv" class="servicetext">
            <p>
                Our commitment to our customers means that we strive to exceed expectations every
                step of the way.</p>
            <p>
                We see ourselves as partners, working with your team to tailor Simplicity's business
                managment solutions to your needs.</p>
            <h2>
                Training</h2>
            <p>
                Simplicity is so easy to use that you'll be up and running in no time at all.</p>
            <p>
                Nevertheless, we offer best-in-class on-site training modules for your office and
                field teams. Our team of highly skilled trainers can provide practical lessons on
                how to get the most out of Simplicity.</p>
            <h2>
                Support</h2>
            <p>
                We know that customer service is just as important as the software we're offering,
                which is why we pride ourselves on providing expert support. With no voicemail but
                real people to talk to, our customer service team is highly trained and capable
                of handling the most complex and in-depth issues.</p>
            <div id="tag">
                <a href="#development" style="font-weight: bolder;">Development</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="#consultancy" style="font-weight: bolder;">Consultancy </a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="#projectmgt" style="font-weight: bolder;">Project Management </a>
            </div>
            <div id="development">
                <br />
                <a href="#tag">back to top</a>
                <br />
                <h2>
                    Bespoke Development</h2>
                <p>
                    No two customers are ever the same, so we use our in-depth industry expertise to
                    tailor Simplicity to your requirments; providing bespoke reports and developing
                    custom tailored add-ons. Our team of developers are dedicated to updating their
                    skills with the latest innovations; ensuring that Simplicity continues to be a pioneering,
                    world-class solution.</p>
            </div>
            <div id="consultancy">
                <br />
                <a href="#tag">back to top</a>
                <br />
                <p>
                    From installation and network configuration to server setup, remote connections
                    and integration, our expert technical team ensure that the implementation process
                    runs smoothly - always. And if you have in-house technical expertise, we can work
                    with your team, advising on how to implement Simplicity within your infrastructure.</p>
            </div>
            <div id="projectmgt">
                <br />
                <a href="#tag">back to top</a>
                <br />
                <p>
                    Success in integrating software solutions is closely linked to properly understanding
                    your company's objectives and the technical constraints. Consequently, every our
                    consultants use their marketing and technical expertise, ensuring they manage your
                    project and guaranteeing its success.</p>
                <p>
                    We make available to you a dedicated project leader so as to assure you of the quality
                    of the solution deployed: from the definition of requirments to the delivery of
                    reports. In short, we will manage your projects to ensure they are delivered on
                    time measureable results.</p>
            </div>
        </div>
    </div>
</asp:Content>
