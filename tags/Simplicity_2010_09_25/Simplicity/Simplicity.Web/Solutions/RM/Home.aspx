<%@ Page Title="" Language="C#" MasterPageFile="~/Common/Solutions.master" AutoEventWireup="true"
    CodeBehind="Home.aspx.cs" Inherits="Simplicity.Web.Solutions.RM.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <div style="float: left; width: 650px">
        <div id="secnavbar" class="floatLeft">
            <div id="icon1" class="floatLeft">
                <h2 id="ourSolution">
                    <span style="color: #cccccc;">RESOURCE</span> &amp; MANAGMENT</h2>
            </div>
            <div id="nsecnavbar">
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
            <div id="tag"> 
                <a href="#assetmgt" style="font-weight: bolder;">Asset Mgt</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="#clientmgt" style="font-weight: bolder;">Client Mgt </a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="#diary" style="font-weight: bolder;">Diary</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="#projectmgt" style="font-weight: bolder;">Project Mgt</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="#hardwarespecs" style="font-weight: bolder;">Hardware Specs</a>
            </div>
            <div id="assetmgt">
                <br />
                <a href="#tag">back to top</a>
                <br />
                <br />
                <h2>
                    Note kew dates for your resources and staff</h2>
                <ul>
                    <li>Link projects to staff and business key performance indicators (KPIs)</li>
                    <li>Diarise vehicle and asset maintenance, with alerts</li>
                    <li>Diarise staff appraisals, with alerts</li>
                    <li>Use to log start and end times for timesheets</li>
                    <li>Link timesheets to payroll</li>
                    <li>Track employees absence and holidays</li>
                    <li>Maintain employees' details</li>
                    <li>Store and record contractor/sub-contractor details</li>
                    <li>Attach documents to assets to store extra information</li></ul>
            </div>
            <div id="clientmgt">
                <br />
                <a href="#tag">back to top</a>
                <br />
                <br />
                <h2>
                    Keep up-to-date records on all</h2>
                <ul>
                    <li>Create client records</li>
                    <li>Allocate client to staff</li>
                    <li>Diarise contact with clients including notes</li>
                    <li>View contact history</li>
                    <li>Book appointments, with alerts</li>
                    <li>Link contact details direst to e-marketing campaigns</li>
                    <li>Attach an account to client</li>
                    <li>Note payment terms</li>
                    <li>Attach documents to clients record to store extra information</li>
                    <li>Link to project, live and historical</li></ul>
            </div>
            <div id="diary">
                <br />
                <a href="#tag">back to top</a>
                <br />
                <br />
                <h2>
                    Ensures resources are allocated to optimum efficiency every day</h2>
                <ul>
                    <li>Choose view of calendar by day, week, month, resources, department, job, postcode,
                        region</li>
                    <li>Incorporates postcode checker to optimise logistics</li>
                    <li>Run reports to analysis KPIs</li>
                    <li>Attach document folders</li></ul>
            </div>
            <div id="projectmgt">
                <br />
                <a href="#tag">back to top</a>
                <br />
                <br />
                <h2>
                    Ensure every job has the optimum staff and resources needed to complete a deadline</h2>
                <ul>
                    <li>Incorporate postcode checker to optimise staff and resource allocation</li>
                    <li>Use diary to book planned &amp; preventive maintenance</li>
                    <li>Track allocation of staff and resources by self-selecting data segments ie day,
                        week, resource, job, postcode</li>
                    <li>Diarise and alerts for H&amp;S inspections</li>
                    <li>Diarise progress of job</li>
                    <li>Attach document folders to store job supplementary information</li></ul>
            </div>
            <div id="hardwarespecs">
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
