<%@ Page Title="" Language="C#" MasterPageFile="~/Common/Solutions.master" AutoEventWireup="true"
    CodeBehind="Home.aspx.cs" Inherits="Simplicity.Web.Solutions.Operation.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <div style="float: left; width: 650px">
        <div id="secnavbar" class="floatLeft">
            <div id="icon1" class="floatLeft">
                <h2 id="ourSolution">
                    <span style="color: #cccccc;"></span>OPERATIONS</h2>
            </div>
            <div id="nsecnavbar">
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
                business click on the below</p>
            <div id="tag">
                <a href="#workmgt" style="font-weight: bolder;">Work Mgt </a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="#supplymgt" style="font-weight: bolder;">Supply Mgt </a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="#projectmgt" style="font-weight: bolder;">Project Mgt</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="#hardware" style="font-weight: bolder;">Hardware Specs</a>
            </div>
            <div id="workmgt">
                <br />
                <a href="#tag">back to top</a>
                <br />
                <br />
                <h2>
                    'Save time and make managment of jobs from "quote" to "work-in-progress" easy'</h2>
                <ul>
                    <li>Convert successful tenders to work in progress</li>
                    <li>Allocate to job manager</li>
                    <li>Alert to compliance needs against each job and store completed documentation</li>
                    <li>Alert for contract status and store documents against job</li>
                    <li>Issue permits and authorisation for each job</li></ul>
            </div>
            <div id="supplymgt">
                <br />
                <a href="#tag">back to top</a>
                <br />
                <br />
                <h2>
                    Track orders suppliers so every penny is accounted for</h2>
                <ul>
                    <li>Start, amend and update order checklists</li>
                    <li>Receive delivery notes</li>
                    <li>Receive purchase invoices</li>
                    <li>Approve and reject suppliers</li>
                    <li>Plan and order materials</li>
                    <li>Email Project Orders</li>
                    <li>Manage ordering of resources</li></ul>
            </div>
            <div id="projectmgt">
                <br />
                <a href="#tag">back to top</a>
                <br />
                <br />
                <h2>
                    Enables project managers to control costs &amp; resources</h2>
                <ul>
                    <li>Update job status</li>
                    <li>Create invoice records for certified works</li>
                    <li>Assign to technicians</li>
                    <li>Email or fax job tickets to technicians with appointment and materials information</li>
                    <li>User quotations and variations</li>
                    <li>Schedule/allocate resources and staff</li>
                    <li>Attach folders of information including photos, designs, etc</li>
                    <li>Review and check status' on every element of a project/job</li>
                    <li>Manage cost implications of over run</li>
                    <li>Use quotations and variations</li>
                    <li>Log details of variation requests</li>
                    <li>Send variation order for authorisation</li>
                    <li>Issue requests for resources</li>
                    <li>Check staff have the qualifications needed for tasks</li>
                    <li>Record accidents</li>
                    <li>Log awaiting other trades &amp; notify customer</li>
                    <li>Log 'No Access' &amp; notify customer</li>
                    <li>Create &amp; log documents for suite inductions &amp; invite attendants</li>
                    <li>Manage the delivery of purchases</li>
                    <li>Story log-in and log-out on timesheets</li>
                    <li>Manage ordering of resources</li></ul>
            </div>
            <div id="hardware">
                <br />
                <a href="#tag">back to top</a>
                <br />
                <br />
                <p>
                    Click on the options below to view the Browsers and Information needed to avail
                    of any of the Simplicity Products</p>
                <div class="browserlist">
                    <div>
                        <img src="../../Images/ie7.jpg" width="66px" height="68px" />
                    </div>
                    <div>
                        <asp:Label ID="Label1" runat="server">Internet Explorer</asp:Label><br />
                        <a href="http://www.microsoft.com" target="_blank">Microsoft Conporation</a><br />
                        <a href="http://www.microsoft.com/windows/internet-explorer/thank-you.aspx" target="_blank">
                            Download version 8</a>
                    </div>
                </div>
                <div class="browserlist">
                    <div>
                        <img src="../../Images/firefox.jpg" width="66px" height="68px" />
                    </div>
                    <div>
                        <asp:Label ID="Label2" runat="server">Firefox<br/>(also called Mozilla Firefox)</asp:Label></div>
                    <a href="http://www.mozilla.com/en-US/" target="_blank">Mozilla Corporation</a><br />
                    <a href="http://www.mozilla.com/en-US/" target="_blank">Download version 3.5.2</a>
                </div>
                <div class="browserlist">
                    <div>
                        <img src="../../Images/chrome.jpg" width="66px" height="68px" />
                    </div>
                    <div>
                        <asp:Label ID="Label3" runat="server">Chrome</asp:Label></div>
                    <a href="http://www.google.com" target="_blank">Google</a><br />
                    <a href="http://download.cnet.com/Google-Chrome/3000-2356_4-10881381.html" target="_blank">
                        Download version 2.0.172.43</a>
                </div>
                <div class="browserlist">
                    <div>
                        <img src="../../Images/safari_icon.png" width="66px" height="68px" />
                    </div>
                    <div>
                        <asp:Label ID="Label4" runat="server">Safari</asp:Label><br />
                        <a href="http://www.apple.com/" target="_blank">Apple Inc</a><br />
                        <a href="http://www.apple.com/safari/download/" target="_blank">Download version 4.0.3</a>
                    </div>
                </div>
                <div class="browserlist">
                    <div>
                        <img src="../../Images/opera.jpg" width="66px" height="68px" /></div>
                    <div>
                        <asp:Label ID="Label5" runat="server">Opera</asp:Label><br />
                        <a href="http://www.opera.com/" target="_blank">Opera Software ASA</a><br />
                        <a href="http://www.opera.com/browser/" target="_blank">Download version 10</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
