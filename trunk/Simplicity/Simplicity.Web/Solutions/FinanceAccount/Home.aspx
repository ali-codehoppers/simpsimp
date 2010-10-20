<%@ Page Title="" Language="C#" MasterPageFile="~/Common/Solutions.master" AutoEventWireup="true"
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
                <li class="list">Time sheets and expense management to control costs</li>
                <li class="list">Compatible with Sage other accounting packages</li>
                <li class="list">And all the other business processes from beginning to end</li></ul>
            <p>
                To find out more about what SimplicityEAS has to offer and how they can help your
                business click on the icon.</p>
            <div id="tag">
                <ul>
                <li class="secondlist"><a href="#boughtledger" style="font-weight: bolder;font-size:13px;color: #0066FF;">Bought Ledger</a></li>
                <li class="secondlist"><a href="#purchasing" style="font-weight: bolder;font-size:13px;color: #0066FF;">Purchasing</a></li>
                <li class="secondlist"><a href="#payroll" style="font-weight: bolder;font-size:13px;color: #0066FF;">Payroll</a></li>
                <li class="secondlist"><a href="#accountmgt" style="font-weight: bolder;font-size:13px;color: #0066FF;">Account Mgt</a></li>
                <li class="secondlist"><a href="#hardwarespecs" style="font-weight: bolder;font-size:13px;color: #0066FF;">Hardware Specs</a></li>
            </ul>
            </div>
            <div id="boughtledger">
                <div  style="width:95%;">
                    <a href="#tag" style="float:right;"><img src="../../Images/top.jpg"/></a>
                    <div class="dotted_line" style="padding-top:15px;">
                    </div>
                    
                </div>
                <p>
                    Allows your department to save time on routine tasks. Simplicity EAS will help manage
                    costs and time <br />on all your operations and project.<br />
                    It allows you to:</p>
                <ul>
                    <li class="list">Open an account</li>
                    <li class="list">Note payment terms and create alerts around there</li>
                    <li class="list">Create invoice records for certified works</li>
                    <li class="list">Send pro-forma invoices</li>
                    <li class="list">Notify when to invoice</li>
                    <li class="list">Edit invoice items</li>
                    <li class="list">validate/adjust Application for payment (AFP)</li>
                    <li class="list">Convert AFP to invoices</li>
                    <li class="list">Differentiate variations on customer invoices</li>
                    <li class="list">Manage payments and credit notes</li>
                    <li class="list">Log payments by cheque, credit card and BACS</li>
                    <li class="list">Record client interaction</li>
                    <li class="list">Put stops on accounts</li></ul>
            </div>
            <div id="purchasing">
                <div  style="width:95%;">
                    <a href="#tag" style="float:right;"><img src="../../Images/top.jpg"/></a>
                    <div class="dotted_line" style="padding-top:15px;">
                    </div>
                    
                </div>
                <h2>
                    Make sure all your orders and payments are accurate and <br />avoid wasting money</h2>
                <ul>
                    <li class="list">Create an requisition and confirm</li>
                    <li class="list">Create and send Purchase order</li>
                    <li class="list">Log purchase status</li>
                    <li class="list">Receive delivery notes</li>
                    <li class="list">Receive purchase invoice</li>
                    <li class="list">Make payments</li>
                    <li class="list">Approve and reject suppliers</li>
                    <li class="list">Record supplier interaction</li></ul>
            </div>
            <div id="payroll">
                <div  style="width:95%;">
                    <a href="#tag" style="float:right;"><img src="../../Images/top.jpg"/></a>
                    <div class="dotted_line" style="padding-top:15px;">
                    </div>
                    
                </div>
                <h2>
                    Automating all your payroll tasks from timesheets</h2>
                <ul>
                    <li class="list">Make payment (including batch cheques)</li>
                    <li class="list">Match timesheets to payroll</li></ul>
            </div>
            <div id="accountmgt">
                <div  style="width:95%;">
                    <a href="#tag" style="float:right;"><img src="../../Images/top.jpg"/></a>
                    <div class="dotted_line" style="padding-top:15px;">
                    </div>
                    
                </div>
                <h2>
                    Real-time analysis so your managment accounts can plan for <br />today and the future</h2>
                <ul>
                    <li class="list">Generate client update reports</li>
                    <li class="list">Generate management reports for internal analysis</li></ul>
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
