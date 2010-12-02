<%@ Page Title="" Language="C#" MasterPageFile="~/Common/Solutions.master" AutoEventWireup="true"
    CodeBehind="Home.aspx.cs" Inherits="Simplicity.Web.Solutions.HS.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <div style="float: left; width: 650px">
        <div id="secnavbar" class="floatLeft">
            <div id="icon1" class="floatLeft">
                <h2 id="ourSolution">
                    <span style="color: #666666;">H&amp;S</span> Live</h2>
            </div>
            <div id="nsecnavbar">
                <div>
                    <asp:Image ID="Image6" ImageUrl="~/Images/subheading_bar.jpg" Height="21" runat="server" />
                </div>
            </div>
        </div>
        <div id="contentsDiv" class="servicetext">
            <p>
                Guides you through the sequential processes, provides practical templates and an
                extendable library of <br/>documents and content to publish H&amp;S folders in an easy
                to read format.
            </p>
            <p>
                This practical tool allows you to:-
            </p>
            <ul>
                <li class="list">Publish the Health &amp; Safety folder required onsite</li>
                <li class="list">Document the safe way of working for the job - The Method Statement</li>
                <li class="list">Analyse the risk for each specific task - The Risk Assessments</li>
                <li class="list">Add new or changed risk content onsite</li>
                <li class="list">Maintain Sign-In Sheets</li>
                <li class="list">Record permit to work - Hot Works </li>
            </ul>
            <div id="tag">
                <ul>
                    <li class="secondlist"><a href="#safety" style="font-weight: bolder; font-size: 13px;
                        color: #0066FF;">Site Safety</a></li>
                    <li class="secondlist"><a href="#documentation" style="font-weight: bolder; font-size: 13px;
                        color: #0066FF;">Documentation</a></li>
                    <li class="secondlist"><a href="#hardwarespecs" style="font-weight: bolder; font-size: 13px;
                        color: #0066FF;">Hardware Specs</a></li>
                </ul>
            </div>
            <div id="safety">
                <div style="width: 95%;">
                    <a href="#tag" style="float: right;">
                        <img src="../../Images/top.jpg" /></a>
                    <div class="dotted_line" style="padding-top: 15px;">
                    </div>
                </div>
                <h2>
                    Site Safety</h2>
                <p>
                    Helps you ensure that all sites comply with health and safety, be they your offices
                    or project locations.</p>
                <ul>
                    <li class="list">Flag awaiting compliance documents and inspections</li>
                    <li class="list">Issue permits and authorisation for each job</li>
                    <li class="list">Record and reference staff qualifications</li>
                    <li class="list">Record accidents</li>
                    <li class="list">Log attendance</li>
                    <li class="list">Ensure health and safety - In one click hold documents</li>
                    <li class="list">Maintain emergency points</li>
                    <li class="list">Maintain location of workers</li>
                    <li class="list">Maintain first aiders</li>
                    <li class="list">Maintain fire officers</li>
                    <li class="list">Maintain fire drill information</li>
                    <li class="list">Log 'no access' &amp; notify customer</li>
                </ul>
            </div>
            <div id="documentation">
                <div style="width: 95%;">
                    <a href="#tag" style="float: right;">
                        <img src="../../Images/top.jpg" /></a>
                    <div class="dotted_line" style="padding-top: 15px;">
                    </div>
                </div>
                <h2>
                    Documentation</h2>
                <p>
                    Easy creation, filling and logging of all those vital health &amp; safety files.
                </p>
                <ul>
                    <li class="list">Record insurance details</li>
                    <li class="list">Create &amp; fill COSHH documents</li>
                    <li class="list">Create &amp; fill method statements</li>
                    <li class="list">Create &amp; fill risk assessments</li>
                    <li class="list">Create &amp; fill PPE sheets</li>
                    <li class="list">Create &amp; fill permits to work</li>
                    <li class="list">PAT tests</li>
                    <li class="list">Office compliance</li>
                    <li class="list">Record construction industry compliance</li>
                    <li class="list">CIS</li>
                    <li class="list">Asset testers</li>
                </ul>
            </div>
            <div id="hardwarespecs">
                <div style="width: 95%;">
                    <a href="#tag" style="float: right;">
                        <img src="../../Images/top.jpg" /></a>
                    <div class="dotted_line" style="padding-top: 15px;">
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
                        <a href="http://www.microsoft.com" target="_blank">Microsoft Corporation</a><br />
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
