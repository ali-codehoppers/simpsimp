<%@ Page Title="" Language="C#" MasterPageFile="~/Common/LeftMenu.master" AutoEventWireup="true"
    CodeBehind="Home.aspx.cs" Inherits="Simplicity.Web.Services.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
   <div class="floatRight" style="width:650px;">
    <div id="secnavbar" class="floatLeft">
        <div id="icon1" class="floatLeft">
            <h2 id="ourServices">
                <span style="color: #cccccc;">OUR</span> SERVICES
            </h2>
        </div>
        <div id="nsecnavbar">
            <div id="priceicon" class="floatRight">
                <a href="javascript:populateContents('Development.aspx','contentsDiv')" class="icon_link">
                    <asp:Image ID="Image4" ImageUrl="~/Images/icon_price.jpg" alt="" class="imgdim" runat="server" /><br />
                    Development</a>
            </div>
            <div id="siteicon" class="floatRight">
                <a href="javascript:populateContents('Consultancy.aspx','contentsDiv')" class="icon_link">
                    <asp:Image ID="Image2" ImageUrl="~/Images/icon_safety.jpg" alt="" class="imgdim"
                        runat="server" /><br />
                    Consultancy </a>
            </div>
            <div id="docicon" class="floatRight">
                <a href="javascript:populateContents('ProjectManagement.aspx','contentsDiv')" class="icon_link">
                    <asp:Image ID="Image3" ImageUrl="~/Images/icon_documentation.jpg" alt="" class="imgdim"
                        runat="server" /><br />
                    <span id="textstyle">Project Management</span> </a>
            </div>
            <div id="homeicon" class="floatRight">
                <a href="javascript:populateContents('Training.aspx','contentsDiv')" class="icon_link">
                    <asp:Image ID="Image1" ImageUrl="~/Images/icon_home_hns.jpg" Width="38" Height="30"
                        runat="server" /><br />
                    Training</a>
            </div>
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
    </div>
    </div>
</asp:Content>
