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
            <p style="width:95%">
                The resource managment suite is more than just a diary. All entries within it can
                be linked to other departments to ensure more efficent business performance.</p>
            <p style="width:95%">
                For example, site managers can use it to log staff time on timesheets which are
                then automatically co-ordinated by payroll. For seamless business the resources management
                tool is a must.</p>
            <p style="width:95%">
                Also, unlike less sophisticated software with this software incorporates a postcode
                checker so you can track staff and assets. This function then allows you to view
                your data by postcode or region, as well as day, week, month, resource, job</p>
            <p>
                To find out more about its features click on the links.</p>
            <div id="tag"> 
               <ul>
                <li class="secondlist"><a href="#assetmgt" style="font-weight: bolder;font-size:13px;color: #0066FF;">Asset Mgt</a></li>
                <li class="secondlist"><a href="#clientmgt" style="font-weight: bolder;font-size:13px;color: #0066FF;">Client Mgt </a></li>
                <li class="secondlist"><a href="#diary" style="font-weight: bolder;font-size:13px;color: #0066FF;">Diary</a></li>
                <li class="secondlist"><a href="#projectmgt" style="font-weight: bolder;font-size:13px;color: #0066FF;">Project Mgt</a></li>
                <li class="secondlist"><a href="#hardwarespecs" style="font-weight: bolder;font-size:13px;color: #0066FF;">Hardware Specs</a></li>
                </ul>
            </div>
            <div id="assetmgt">
                <div  style="width:95%;">
                    <a href="#tag" style="float:right;"><img src="../../Images/top.jpg"/></a>
                    <div class="dotted_line" style="padding-top:15px;">
                    </div>
                    
                </div>
                <h2>
                    Note key dates for your resources and staff</h2>
                <ul>
                    <li class="list">Link projects to staff and business key performance indicators (KPIs)</li>
                    <li class="list">Diarise vehicle and asset maintenance, with alerts</li>
                    <li class="list">Diarise staff appraisals, with alerts</li>
                    <li class="list">Use to log start and end times for timesheets</li>
                    <li class="list">Link timesheets to payroll</li>
                    <li class="list">Track employees absence and holidays</li>
                    <li class="list">Maintain employees' details</li>
                    <li class="list">Store and record contractor/sub-contractor details</li>
                    <li class="list">Attach documents to assets to store extra information</li></ul>
            </div>
            <div id="clientmgt">
                <div  style="width:95%;">
                    <a href="#tag" style="float:right;"><img src="../../Images/top.jpg"/></a>
                    <div class="dotted_line" style="padding-top:15px;">
                    </div>
                    
                </div>
                <h2>
                    Keep up-to-date records on all</h2>
                <ul>
                    <li class="list">Create client records</li>
                    <li class="list">Allocate client to staff</li>
                    <li class="list">Diarise contact with clients including notes</li>
                    <li class="list">View contact history</li>
                    <li class="list">Book appointments, with alerts</li>
                    <li class="list">Link contact details direct to e-marketing campaigns</li>
                    <li class="list">Attach an account to client</li>
                    <li class="list">Note payment terms</li>
                    <li class="list">Attach documents to clients record to store extra information</li>
                    <li class="list">Link to project, live and historical</li></ul>
            </div>
            <div id="diary">
                <div  style="width:95%;">
                    <a href="#tag" style="float:right;"><img src="../../Images/top.jpg"/></a>
                    <div class="dotted_line" style="padding-top:15px;">
                    </div>
                    
                </div>
                <h2>
                    Ensures resources are allocated to optimum efficiency every day</h2>
                <ul>
                    <li class="list">Choose view of calendar by day, week, month, resources, department, job, postcode,
                        region</li>
                    <li class="list">Incorporates postcode checker to optimise logistics</li>
                    <li class="list">Run reports to analysis KPIs</li>
                    <li class="list">Attach document folders</li></ul>
            </div>
            <div id="projectmgt">
                <div  style="width:95%;">
                    <a href="#tag" style="float:right;"><img src="../../Images/top.jpg"/></a>
                    <div class="dotted_line" style="padding-top:15px;">
                    </div>
                    
                </div>
                <h2>
                    Ensure every job has the optimum staff and resources needed <br />to complete a deadline</h2>
                <ul>
                    <li class="list">Incorporate postcode checker to optimise staff and resource allocation</li>
                    <li class="list">Use diary to book planned &amp; preventive maintenance</li>
                    <li class="list">Track allocation of staff and resources by self-selecting data segments ie day,
                        week, resource, job, postcode</li>
                    <li class="list">Diarise and alerts for H&amp;S inspections</li>
                    <li class="list">Diarise progress of job</li>
                    <li class="list">Attach document folders to store job supplementary information</li></ul>
            </div>
            <div id="hardwarespecs">
                <div  style="width:95%;">
                    <a href="#tag" style="float:right;"><img src="../../Images/top.jpg"/></a>
                    <div class="dotted_line" style="padding-top:15px;">
                    </div>
                    
                </div>
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
                <div class="browserlistright">
                    <div>
                        <img src="../../Images/safari_icon.png" width="66px" height="68px" />
                    </div>
                    <div>
                        <asp:Label ID="Label4" runat="server">Safari</asp:Label><br />
                        <a href="http://www.apple.com/" target="_blank">Apple Inc</a><br />
                        <a href="http://www.apple.com/safari/download/" target="_blank">Download version 4.0.3</a>
                    </div>
                </div>
                <div class="browserlistdown">
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
