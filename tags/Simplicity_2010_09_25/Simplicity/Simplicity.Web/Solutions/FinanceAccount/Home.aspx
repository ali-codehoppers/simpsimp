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
                <li>Time sheets and expense management to control costs</li>
                <li>Compatible with Sage other accounting packages</li>
                <li>And all the other business processes from beginning to end</li></ul>
            <p>
                To find out more about what SimplicityEAS has to offer and how they can help your
                business click on the icon.</p>
            <div id="tag">
                <a href="#boughtledger" style="font-weight: bolder">Bought Ledger</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="#purchasing" style="font-weight: bolder">Purchasing</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="#payroll" style="font-weight: bolder">Payroll</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="#accountmgt" style="font-weight: bolder">Account Mgt</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="#hardwarespecs" style="font-weight: bolder">Hardware Specs</a>
            </div>
            <div id="boughtledger">
                <br />
                <a href="#tag">back to top</a>
                <br />
                <br />
                <p>
                    Allows your department to save time on routine tasks. Simplicity EAS will help manage
                    costs and time on all your operations and project.<br />
                    It allows you to:</p>
                <ul>
                    <li>Open an account</li>
                    <li>Note payment terms and create alerts around there</li>
                    <li>Create invoice records for certified works</li>
                    <li>Send pro-forma invoices</li>
                    <li>Notify when to invoice</li>
                    <li>Edit invoice items</li>
                    <li>validate/adjust Application for payment (AFP)</li>
                    <li>Convert AFP to invoices</li>
                    <li>Differentiate variations on customer invoices</li>
                    <li>Manage payments and credit notes</li>
                    <li>Log payments by cheque, credit card and BACS</li>
                    <li>Record client interaction</li>
                    <li>Put stops on accounts</li></ul>
            </div>
            <div id="purchasing">
                <br />
                <a href="#tag">back to top</a>
                <br />
                <br />
                <h2>
                    Make sure all your orders and payments are accurate and avoid wasting money</h2>
                <ul>
                    <li>Create an requisition and confirm</li>
                    <li>Create and send Purchase order</li>
                    <li>Log purchase status</li>
                    <li>Receive delivery notes</li>
                    <li>Receive purchase invoice</li>
                    <li>Make payments</li>
                    <li>Approve and reject suppliers</li>
                    <li>Record supplier interaction</li></ul>
            </div>
            <div id="payroll">
                <br />
                <a href="#tag">back to top</a>
                <br />
                <br />
                <h2>
                    Automating all your payroll tasks from timesheets</h2>
                <ul>
                    <li>Make payment (including batch cheques)</li>
                    <li>Match timesheets to payroll</li></ul>
            </div>
            <div id="accountmgt">
                <br />
                <a href="#tag">back to top</a>
                <br />
                <br />
                <h2>
                    Real-time analysis so your managment accounts can plan for today and the future</h2>
                <ul>
                    <li>Generate client update reports</li>
                    <li>Generate management reports for internal analysis</li></ul>
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
