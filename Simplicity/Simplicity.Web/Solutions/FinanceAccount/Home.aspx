<%@ Page Title="" Language="C#" MasterPageFile="~/Common/LeftMenu.master" AutoEventWireup="true"
    CodeBehind="Home.aspx.cs" Inherits="Simplicity.Web.Solutions.FinanceAccount.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <div style="float: left; width: 650px">
        <div id="secnavbar" class="floatLeft">
            <div id="icon1" class="floatLeft">
                <h2 id="ourSolution">
                    <span style="color: #cccccc;">FINANCE</span> &amp; ACCOUNTS</h2>
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
                    <a href="javascript:populateContents('AccountMgt.aspx','contentsDiv')" class="icon_link">
                        <asp:Image ID="Image5" ImageUrl="~/Images/icon_clientsystem_requirement.jpg" CssClass="imgdim"
                            runat="server" /><br />
                        Account Mgt </a>
                </div>
                <div id="priceicon" class="floatRight">
                    <a href="javascript:populateContents('Payroll.aspx','contentsDiv')" class="icon_link">
                        <asp:Image ID="Image4" ImageUrl="~/Images/icon_price.jpg" alt="" CssClass="imgdim"
                            runat="server" /><br />
                        Payroll</a>
                </div>
                <div id="docicon" class="floatRight">
                    <a href="javascript:populateContents('Purchasing.aspx','contentsDiv')" class="icon_link">
                        <asp:Image ID="Image3" ImageUrl="~/Images/icon_documentation.jpg" alt="" CssClass="imgdim"
                            runat="server" /><br />
                        Purchasing </a>
                </div>
                <div id="siteicon" class="floatRight">
                    <a href="javascript:populateContents('BL.aspx','contentsDiv')" class="icon_link">
                        <asp:Image ID="Image2" ImageUrl="~/Images/icon_safety.jpg" alt="" CssClass="imgdim"
                            runat="server" /><br />
                        <span id="textstyle">Bought Ledger</span></a>
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
                SimplicityEAS will help manage costs and time on all your operations and project.
                It allows you to:</p>
            <ul>
                <li>Time sheets and expense management to control costs</li>
                <li>Compatible with Sage other accounting packages</li>
                <li>And all the other business processes from beginning to end</li></ul>
            <p>
                To find out more about what SimplicityEAS has to offer and how they can help your
                business click on the icon.</p>
        </div>
    </div>
</asp:Content>
