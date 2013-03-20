<%@ Page Title="" Language="C#" MasterPageFile="~/Common/Solutions.master" AutoEventWireup="true"
    CodeBehind="Home.aspx.cs" Inherits="eForms.Web.Solutions.SaleM.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <div style="float: left; width: 650px">
            <div id="secnavbar" class="floatLeft">
            <div id="icon1" class="floatLeft">
                <h2 id="ourSolution">
                    <span style="color: #666666;">SALES</span> &amp; MARKETING</h2>
            </div>
            <div id="nsecnavbar">
                <div>
                    <asp:Image ID="Image1" ImageUrl="~/Images/subheading_bar.jpg" Height="21" runat="server" />
                </div>
            </div>
        </div>
        <div id="contentsDiv" class="servicetext">
            <p>
                Simply put, for your Sales and Marketing department, the automated processes within
                Simplicity Online allows you to:</p>
            <ul>
                <li class="list">Manage ITTs and Quotations to win business and protect profit margins</li>
                <li class="list">Enquire/ Order/ Job Ticket Works Orders and Bills of Materials to complete projects
                    and orders</li>
                <li class="list">Handle variations and retentions effectively, so that they are not rejected</li>
                <li class="list">Schedule operatives, plant, machinery and materials to control costs and deliver
                    on time</li>
                <li class="list">Display Time sheets and Expense Management to control costs</li>
                <li class="list">Invoice quickly, accurately and effectively to receive payments more quickly</li>
                <li class="list">Analyse all other business processes, from beginning to end</li>
            </ul>
            <p>
                To find out more about what Simplicity Online has to offer and how they can help your
                business click on the links below</p>
            <div id="tag">
                <ul>
                <li class="secondlist"><a style="font-weight: bolder;font-size:13px;color: #0066FF;" href="#newbusiness">New Business</a></li>
                <li  class="secondlist"><a style="font-weight: bolder;font-size:13px;color: #0066FF;" href="#market">Marketing</a></li>
                <li  class="secondlist"><a style="font-weight: bolder;font-size:13px;color: #0066FF;" href="#estimate">Estimating</a></li>
                <li  class="secondlist"><a style="font-weight: bolder;font-size:13px;color: #0066FF;" href="#analysis">Analysis</a></li>
                <li  class="secondlist"><a style="font-weight: bolder;font-size:13px;color: #0066FF;" href="#hardware">Hardware Specification</a></li>
            </ul>
            </div>
            <div id="newbusiness">
                
                <div  style="width:95%;">
                    <a href="#tag" style="float:right;"><img src="../../Images/top.jpg"/></a>
                    <div class="dotted_line" style="padding-top:15px;">
                    </div>
                    
                </div>
                <h2>
                    New Business - Manage new business, never lose a business lead again!</h2>
                <ul>
                    <li class="list">Create &amp; allocate new leads</li>
                    <li class="list">Use diary to book sales activity (next call, appointments, comments...)</li>
                    <li class="list">Qualify &amp; prioritise leads</li>
                    <li class="list">Convert successful pitches to work in progress</li></ul>
            </div>
            <div id="market">
                <div  style="width:95%;">
                    <a href="#tag" style="float:right;"><img src="../../Images/top.jpg"/></a>
                    <div class="dotted_line" style="padding-top:15px;">
                    </div>
                    
                </div>
                <h2>
                    Marketing - Generate business, track your marketing campaigns</h2>
                <ul>
                    <li class="list">Import existing information - i.e from bought lists</li>
                    <li class="list">Create &amp; send mass email campaigns</li>
                    <li class="list">Manage and track email response</li>
                    <li class="list">Categorised search by client, location, region...</li></ul>
            </div>
            <div id="estimate">
                <div  style="width:95%;">
                    <a href="#tag" style="float:right;"><img src="../../Images/top.jpg"/></a>
                    <div class="dotted_line" style="padding-top:15px;">
                    </div>
                    
                </div>
                <h2>
                    Estimating - Win business with quotes that increase long-term profitability but still offer competitive
                    prices</h2>
                <p>
                    Simply put, for your Sales and Marketing departments, the automated process within
                    Simplicity Online allows you to:</p>
                <ul>
                    <li class="list">Manage job costing &amp; quotations</li>
                    <li class="list">Book tender deadlines into diary</li>
                    <li class="list">Log new orders received by phone, fax, email &amp; portal</li>
                    <li class="list">Record client's specifications and with one click link to work schedule</li>
                    <li class="list">Estimate using customised pre-populated pricing books</li>
                    <li class="list">Adjust pricing books to find a balance between profit and competitive quoting</li>
                    <li class="list">Automate personalised covering letter</li></ul>
            </div>
            <div id="#analysis">
                <div  style="width:95%;">
                    <a href="#tag" style="float:right;"><img src="../../Images/top.jpg"/></a>
                    <div class="dotted_line" style="padding-top:15px;">
                    </div>
                    
                </div>
                <h2>
                    Analysis - Achieve business objectives</h2>
                <ul>
                    <li class="list">Manage and analyse sales activity</li>
                    <li class="list">Track cost of sale (COS) from initial enquiry to winning the business</li>
                    <li class="list">Link all of the above to staff and business key performance indicators (KPIs)</li>
                    <li class="list">Generate management account reports for budget and forecast analysis</li></ul>
            </div>
            <div id="hardware">
                <div  style="width:95%;">
                    <a href="#tag" style="float:right;"><img src="../../Images/top.jpg"/></a>
                    <div class="dotted_line" style="padding-top:15px;">
                    </div>
                    
                </div>
                <h2>Hardware Specification                    </h2>
                <p>Click on the options below to view the Browsers and Information needed to avail
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
