<%@ Page Title="" Language="C#" MasterPageFile="~/Common/LeftMenu.master" AutoEventWireup="true"
    CodeBehind="Home.aspx.cs" Inherits="Simplicity.Web.Solutions.Operation.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <div style="float: left; width: 650px">
        <div id="secnavbar" class="floatLeft">
            <div id="icon1" class="floatLeft">
                <h2 id="ourSolution">
                    <span style="color: #cccccc;"></span> OPERATIONS</h2>
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
                    <a href="javascript:populateContents('Project.aspx','contentsDiv')" class="icon_link">
                        <asp:Image ID="Image4" ImageUrl="~/Images/icon_price.jpg" alt="" CssClass="imgdim"
                            runat="server" /><br />
                        Project Mgt</a>
                </div>
                <div id="docicon" class="floatRight">
                    <a href="javascript:populateContents('Supply.aspx','contentsDiv')" class="icon_link">
                        <asp:Image ID="Image3" ImageUrl="~/Images/icon_documentation.jpg" alt="" CssClass="imgdim"
                            runat="server" /><br />
                        Supply Mgt </a>
                </div>
                <div id="siteicon" class="floatRight">
                    <a href="javascript:populateContents('Work.aspx','contentsDiv')" class="icon_link">
                        <asp:Image ID="Image2" ImageUrl="~/Images/icon_safety.jpg" alt="" CssClass="imgdim"
                            runat="server" /><br />
                        Work Mgt </a>
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
            <h2>
                Simplicity EAS will help manage costs and time on all your operations and project.
                It allows you to:</h2>
            <ul>
                <li>Enquire/ Order/ Job Ticket Works Orders and Bills of Materials to complete projects
                    and orders</li>
                <li>Handle variations and retentions effectively, so that they are not rejected</li>
                <li>Schedule operatives, plant, machinery and materials to control costs and deliver
                    on time</li>
                <li>Display Time sheets and Expense Managment to control costs</li>
                <li>Analyse all the other business processes, from beginning to end</li>
            </ul>
            <p>
                To find out more about what Simplicity EAS has to offer and how they can help your
                business click on the icons below</p>
        </div>
    </div>
</asp:Content>
