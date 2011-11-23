<%@ Page Title="" Language="C#" MasterPageFile="~/Common/Solutions.master" AutoEventWireup="true"
    CodeBehind="Home.aspx.cs" Inherits="Simplicity.Web.Solutions.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <div class="floatRight" style="width: 655px;">
        <div id="secnavbar" class="floatLeft">
            <div id="icon1" class="floatLeft">
                <h2 id="ourSolution">
                    <span style="color: #666666;">OUR</span> SOLUTIONS</h2>
            </div>
            <div id="nsecnavbar">
                <div>
                    <asp:Image ID="Image6" ImageUrl="~/Images/subheading_bar.jpg" Height="21" runat="server" />
                </div>
            </div>
        </div>
        <div class="solutiontext">
            <p>
                We have created leading resource management solutions for clients across multiple
                industries.</p>
            <p>
                Please click on an appropriate industry to see how our solutions can help you increase
                your profits and the performance of your business.</p>
            <div id="links">
                <div id="salesMarketing" style="padding-left: 0px">
                    <a href="SaleM/Home.aspx" class="solutionMoreDetails">
                        <div>
                            <asp:Image ID="Image7" runat="server" ImageUrl="~/Images/sales_marketing.jpg" Width="190px" /></div>
                    </a>
                </div>
                <div id="operations">
                    <a href="Operation/Home.aspx" class="solutionMoreDetails">
                        <div>
                            <asp:Image ID="Image8" runat="server" ImageUrl="~/Images/operations.jpg" Width="190px" /></div>
                    </a>
                </div>
                <div id="mobileApps">
                    <a href="Mobile/Home.aspx" class="solutionMoreDetails">
                        <div>
                            <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/mobile_apps.jpg" Width="190px" /></div>
                    </a>
                </div>
<%--                <div id="healthNSafety">
                    <a class="solutionMoreDetails" href="HS/Home.aspx">
                        <div>
                            <asp:Image ID="Image9" runat="server" ImageUrl="~/Images/health_safety.jpg" Width="190px" /></div>
                    </a>
                </div>--%>
                <div class="clearFloat">
                </div>
                <div id="resourceMgmt" style="padding-left: 0px">
                    <a href="RM/Home.aspx" class="solutionMoreDetails">
                        <div>
                            <asp:Image ID="Image10" runat="server" ImageUrl="~/Images/resource_mngmnt.jpg" Width="190px" /></div>
                    </a>
                </div>
                <div id="healthNSafety">
                    <a class="solutionMoreDetails" href="HS/Home.aspx" style="display:block; visibility:hidden">
                        <div>
                            <asp:Image ID="Image2" runat="server" ImageUrl="~/Images/health_safety.jpg" Width="190px" /></div>
                    </a>
                </div>
                <div id="financeNAcnts">
                    <a href="FinanceAccount/Home.aspx" class="solutionMoreDetails">
                        <div>
                            <asp:Image ID="Image11" runat="server" ImageUrl="~/Images/finance_accnt.jpg" Width="190px" /></div>
                    </a>
                </div>
                <%--                <div id="mobileApps">
                    <a href="Mobile/Home.aspx" class="solutionMoreDetails">
                        <div>
                            <asp:Image ID="Image12" runat="server" ImageUrl="~/Images/mobile_apps.jpg" Width="190px" /></div>
                    </a>
                </div>--%>
            </div>
        </div>
    </div>
</asp:Content>
