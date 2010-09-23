<%@ Page Title="" Language="C#" MasterPageFile="~/Common/LeftMenu.master" AutoEventWireup="true"
    CodeBehind="Home.aspx.cs" Inherits="Simplicity.Web.Solutions.RM.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <div style="float: left; width: 650px">
        <div id="secnavbar" class="floatLeft">
            <div id="icon1" class="floatLeft">
                <h2>
                    <span style="color: #cccccc;">RESOURCE</span> &amp; MANAGMENT</h2>
            </div>
            <div id="nsecnavbar">
                <div id="Div1" class="floatRight">
                    <a href="javascript:populateContents('../../Products/HardwareSpecifications.aspx','contentsDiv')"
                        class="icon_link">
                        <asp:Image ID="Image13" ImageUrl="~/Images/icon_clientsystem_requirement.jpg" CssClass="imgdim"
                            runat="server" /><br />
                        Hardware </a>
                </div>
                <div id="hardicon" class="floatRight">
                    <a href="javascript:populateContents('PM.aspx','contentsDiv')" class="icon_link">
                        <asp:Image ID="Image5" ImageUrl="~/Images/icon_clientsystem_requirement.jpg" CssClass="imgdim"
                            runat="server" /><br />
                        Project Mgt </a>
                </div>
                <div id="priceicon" class="floatRight">
                    <a href="javascript:populateContents('Diary.aspx','contentsDiv')" class="icon_link">
                        <asp:Image ID="Image4" ImageUrl="~/Images/icon_price.jpg" alt="" CssClass="imgdim"
                            runat="server" /><br />
                        Diary</a>
                </div>
                <div id="docicon" class="floatRight">
                    <a href="javascript:populateContents('CM.aspx','contentsDiv')" class="icon_link">
                        <asp:Image ID="Image3" ImageUrl="~/Images/icon_documentation.jpg" alt="" CssClass="imgdim"
                            runat="server" /><br />
                        Client Mgt </a>
                </div>
                <div id="siteicon" class="floatRight">
                    <a href="javascript:populateContents('AM.aspx','contentsDiv')" class="icon_link">
                        <asp:Image ID="Image2" ImageUrl="~/Images/icon_safety.jpg" alt="" CssClass="imgdim"
                            runat="server" /><br />
                        Asset Mgt </a>
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
                The resource managment suite is more than just a diary. All entries within it can
                be linked to other departments to ensure more efficent business performance.</p>
            <p>
                For example, site managers can use it to log staff time on timesheets which are
                then automatically co-orinated by payroll. For seamless business the resources management
                tool is a must.</p>
            <p>
                Also, unlike less sophisticated software with this software incorporates a postcode
                checker so you can track staff and assets. This function then allows you to view
                your data by postcode or region, as well as day, week, month, resource, job</p>
            <p>
                To find out more about its features click on the links.</p>
        </div>
    </div>
</asp:Content>
