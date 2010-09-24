<%@ Page Title="" Language="C#" MasterPageFile="~/Common/Solutions.master" AutoEventWireup="true"
    CodeBehind="Home.aspx.cs" Inherits="Simplicity.Web.Solutions.SaleM.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <div style="float: left; width: 650px">
        <div id="secnavbar" class="floatLeft">
            <div id="icon1" class="floatLeft">
                <h2 id="ourSolution">
                    <span style="color: #cccccc;">SALES</span> &amp; MARKETING</h2>
            </div>
            <div id="nsecnavbar">
                <div>
                    <asp:Image ID="Image6" ImageUrl="~/Images/subheading_bar.jpg" Height="21" runat="server" />
                </div>
            </div>
        </div>
        <div id="contentsDiv" class="servicetext">
            <p>
                Simply put, for your Sales and Marketing department, the automated processes within
                Simplicity EAS allows you to:</p>
            <ul>
                <li>Manage ITTs and Quotations to win business and protect profit margins</li>
                <li>Enquire/ Order/ Job Ticket Works Orders and Bills of Materials to complete projects
                    and orders</li>
                <li>Handle variations and retentions effectively, so that they are not rejected</li>
                <li>Schedule operatives, plant, machinery and materials to control costs and deliver
                    on time</li>
                <li>Display Timr sheets and Expense Management to control costs</li>
                <li>Invoice quickly, accurately and effectively to get paid more quickly</li>
                <li>Analyse all other business processes, from beginning to end</li>
            </ul>
            <p>
                To find out more about what Simplicity EAS has to offer and how they can help your
                business click on the below</p>
            <div id="tag">
                <a style="font-weight: bolder;" href="#newbusiness">New Business</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a style="font-weight: bolder;" href="#market">Marketing</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a style="font-weight: bolder;" href="#estimate">Estimating</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a style="font-weight: bolder;" href="#analysis">Analysis</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a style="font-weight: bolder;" href="#hardware">Hardware Specs</a>
            </div>
            <div id="newbusiness">
                <br />
                <a href="#tag">back to top</a>
                <br />
                <br />
                <h2>
                    Manage new business - never lose a business lead again!</h2>
                <ul>
                    <li>Create &amp; allocate new leads</li>
                    <li>Use diary to book sales activity (next call, appointments, comments...)</li>
                    <li>Qualify &amp; prioritise leads</li>
                    <li>Covert success pitches to work in progress</li></ul>
            </div>
            <div id="market">
                <br />
                <a href="#tag">back to top</a>
                <br />
                <br />
                <h2>
                    Generate business - track your marketing campaigns</h2>
                <ul>
                    <li>Import existing information - ie from bought lists</li>
                    <li>Create &amp; send mass email campaigns</li>
                    <li>Manage and track email response</li>
                    <li>Categorised search by client, location, region...</li></ul>
            </div>
            <div id="estimate">
                <br />
                <a href="#tag">back to top</a>
                <br />
                <br />
                <h2>
                    Win business with quotes that increase long-term profitability but still offer competitive
                    prices</h2>
                <p>
                    Simply put,for your Sales and Marketing departments the automated process within
                    Simplicity EAS allow you to:</p>
                <ul>
                    <li>Manage job costing &amp; quotations</li>
                    <li>Book tender deadlines into diary</li>
                    <li>Log new orders received by phone, fax, email &amp; portal</li>
                    <li>Record client's specifications and with one click link to work schedule</li>
                    <li>Estimate using customised pre-populated pricing book</li>
                    <li>Adjust pricing book to find a balance between profit and competitive quoting</li>
                    <li>Automate personalised covering letter</li></ul>
            </div>
            <div id="#analysis">
                <br />
                <a href="#tag">back to top</a>
                <br />
                <br />
                <h2>
                    Achieve business objectives</h2>
                <ul>
                    <li>Manage and analysis sales activity</li>
                    <li>Track cost of sale (COS) from initial enquiry to winning the business</li>
                    <li>Link all of the above to staff and business key performance indicators (KPIs)</li>
                    <li>Generate management account reports for budget and forecast analysis</li></ul>
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
