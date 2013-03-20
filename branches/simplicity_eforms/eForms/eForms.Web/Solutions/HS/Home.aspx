<%@ Page Title="" Language="C#" MasterPageFile="~/Common/Solutions.master" AutoEventWireup="true"
    CodeBehind="Home.aspx.cs" Inherits="eForms.Web.Solutions.HS.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolder" runat="server">
<script type="text/javascript">

    var isShowingDetail = false;
    function showLongDescription() {
        if (!isShowingDetail) {
            $('#details').show();
            $('#showMore').text('Less');
            isShowingDetail = true;
        }
        else 
        {
            $('#details').hide();
            $('#showMore').text('More');
            isShowingDetail = false;
        }
    }

</script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <div style="float: left; width: 650px">
        <div id="secnavbar" class="floatLeft">
            <div id="icon1" class="floatLeft">
                <h2 id="ourSolution">
                    <span style="color: #666666;"></span>Online</h2>
            </div>
            <div id="nsecnavbar">
                <div>
                    <asp:Image ID="Image6" ImageUrl="~/Images/subheading_bar.jpg" Height="21" runat="server" />
                </div>
            </div>
        </div>
        <div id="contentsDiv" class="servicetext">
            <p>
                End-to-end business management made simple! Simplicity Online can run your entire
                business from enquiries, estimating and orders through to final invoicing and receipt
                of payment giving visibility to your team and clarity to your clients.
            </p>

            <div id="details" style="display:none;">
            <%--            <p>
                This practical tool allows you to:-
            </p>
            --%>
            <ul>
                <li class="list">Enquiries/Estimates – Taking enquiries from first point of contact
                    whilst linking with client CRM data enabling estimates to be generated with speed
                    and efficiency. </li>
                <li class="list">Orders/Pricing – Converting estimates or quotes into orders using innovative,
                    accurate pricing books from an infinite library allowing complete business clarity.
                </li>
                <li class="list">Invoices/Payments – Invoicing for completed works either in a full
                    or interim basis from your previously agreed orders, making the integrated payment
                    reconciliation easy.</li>
            </ul>
            <p>
                Our end-to-end business application helps manage your business processes. Built
                natively, our managed service allows you to run your entire business seamlessly
                from first point of contact through to final invoicing.
            </p>
            <p>
                Using Simplicity’s integration with SalesForce CRM and multiple accounting packages,
                you can view and edit the client account details in correlation with multiple related
                company contacts in one easy to use screen. This quick and easy way to set up and
                manage client contact data means that enquiries and estimates can be generated efficiently.</p>
            <p>
                Once an enquiry is in progress, information can be attributed to the works such
                as job managers, work statuses and phases and various milestone dates. In addition
                to this, Simplicity includes the ability to search for works location addresses
                within the system other than the client’s address.</p>
            <p>
                When pricing estimates or quotations, Simplicity uses innovative, accurate pricing
                books from an infinite internal library. This ensures that details of works to be
                completed remain consistent throughout the life cycle of the project giving complete
                business clarity from estimation through to invoice and payment for accounts.
            </p>
            </div>
            <div> 
                <a id="showMore" href="javascript:showLongDescription();" style="color:Blue; font-weight:bold" >More</a>
            </div>


 <%--           <div id="tag">
                <ul>
                    <li class="secondlist"><a href="#safety" style="font-weight: bolder; font-size: 13px;
                        color: #0066FF;">Site Safety</a></li>
                    <li class="secondlist"><a href="#documentation" style="font-weight: bolder; font-size: 13px;
                        color: #0066FF;">Documentation</a></li>
                    <li class="secondlist"><a href="#hardwarespecs" style="font-weight: bolder; font-size: 13px;
                        color: #0066FF;">Hardware Specification</a></li>
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
                    Helps you ensure that all sites comply with health and safety, whether they are
                    your offices or project locations.</p>
                <ul>
                    <li class="list">Flag awaiting compliance documents and inspections</li>
                    <li class="list">Issue permits and authorisation for each job</li>
                    <li class="list">Record and reference staff qualifications</li>
                    <li class="list">Record accidents</li>
                    <li class="list">Log attendance</li>
                    <li class="list">Maintain emergency points</li>
                    <li class="list">Maintain location of workers</li>
                    <li class="list">Maintain first aiders</li>
                    <li class="list">Maintain fire officers</li>
                    <li class="list">Maintain fire drill information</li>
                    <li class="list">Log 'no access' &amp; notify customers</li>
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
                <h2>
                    Hardware Specification
                </h2>
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
            </div>--%>
        </div>
    </div>
</asp:Content>
