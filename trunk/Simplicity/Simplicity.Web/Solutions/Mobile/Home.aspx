<%@ Page Title="" Language="C#" MasterPageFile="~/Common/LeftMenu.master" AutoEventWireup="true"
    CodeBehind="Home.aspx.cs" Inherits="Simplicity.Web.Solutions.Mobile.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <div style="float: left; width: 650px">
        <div id="secnavbar" class="floatLeft">
            <div id="icon1" class="floatLeft">
                <h2 id="ourSolution">
                    <span style="color: #cccccc;">MOBILE</span> &amp; APPS</h2>
            </div>
            <div id="nsecnavbar">
                <div id="Div1" class="floatRight">
                    <a href="javascript:populateContents('../../Products/HardwareSpecifications.aspx','contentsDiv')"
                        class="icon_link">
                        <asp:Image ID="Image13" ImageUrl="~/Images/icon_clientsystem_requirement.jpg" CssClass="imgdim"
                            runat="server" /><br />
                        Hardware </a>
                </div>
                <div id="priceicon" class="floatRight">
                    <a href="javascript:populateContents('../../Products/HandyLEC/Details.aspx','contentsDiv')" class="icon_link">
                        <asp:Image ID="Image4" ImageUrl="~/Images/icon_price.jpg" alt="" CssClass="imgdim"
                            runat="server" /><br />
                        HandyLEC</a>
                </div>
                <div id="docicon" class="floatRight">
                    <a href="javascript:populateContents('../../Products/HS/Details.aspx','contentsDiv')" class="icon_link">
                        <asp:Image ID="Image3" ImageUrl="~/Images/icon_documentation.jpg" alt="" CssClass="imgdim"
                            runat="server" /><br />
                        HandyServe </a>
                </div>
                <div id="siteicon" class="floatRight">
                    <a href="javascript:populateContents('../../Products/HandyGas/Details.aspx','contentsDiv')" class="icon_link">
                        <asp:Image ID="Image2" ImageUrl="~/Images/icon_safety.jpg" alt="" CssClass="imgdim"
                            runat="server" /><br />
                        HandyGas </a>
                </div>
                <div id="homeicon" class="floatRight">
                    <a href="javascript:populateContents('Detail.aspx','contentsDiv')" class="icon_link">
                        <asp:Image ID="Image1" ImageUrl="~/Images/icon_home_hns.jpg" CssClass="imgdim" runat="server" /><br />
                        Home</a>
                </div>
                <div>
                    <asp:Image ID="Image6" ImageUrl="~/Images/subheading_bar.jpg" Height="21" runat="server" />
                </div>
            </div>
        </div>
        <div id="contentsDiv" class="servicetext">
            <p>
                Simplicity's Mobile Apps have been designed to help reduce costs, keep employees
                connected and improve quality of service to customers. Not only can mobile employees
                maintain basic access to email and office functionality, but field operators can
                use more specialised applications to keep them linked up to Head Office.</p>
            <p>
                Mobile phones that support Microsoft Office can be used to view and edit documents,
                spreadsheets and presentations. They can also be used to view Portable Document
                Format (PDF) documents. Another key facility of business mobile phones is data synchronisation.
                This means your mobile calendar, contact list, pictures, for instance, can be kept
                as up-to-date as your PC. Super fast information synchronisation between two platforms,
                allow for this. This cable, or wireless, connection could be used to transfer information
                between phones or from phones to PC's. This would allow you to send a text message,
                via our dynamic synchronisation function, from your local PC!</p>
            <p>
                Simplicity offers the Mobile Apps listed below. Click on the icons to learn how
                these apps can help your business.</p>
        </div>
    </div>
</asp:Content>
