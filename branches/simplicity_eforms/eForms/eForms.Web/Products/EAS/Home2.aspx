<%@ Page Title="" Language="C#" MasterPageFile="~/Common/Products.master" AutoEventWireup="true"
    CodeBehind="Home.aspx.cs" Inherits="Simplicity.Web.Products.EAS.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="LeftNavPlaceHolder" runat="server">
    <div class="leftNavBarEAS">
        <div>
            <a href="../../WatchDemo.aspx?product_id=1" id="watch_eas" class="watch-demo"></a>
        </div>
        <div>
            <a href="EASPrice.aspx?productid=1" id="buy_eas"></a>
        </div>
        <div>
            <a href="EASPrice.aspx?productid=1&try=try" id="try_eas"></a>
        </div>
        <div>
            <a href="../../CallMeBack.aspx" id="call_eas"></a>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentsPlaceHolder" runat="server">
    <div id="subdirectory" class="bottom_border">
        <a href="../Home.aspx" class="login">Products</a> &gt;&gt; <a href="Home.aspx" class="login">
            Simplicity Online</a>
    </div>
    <div id="secnavbar" class="floatLeft">
        <div id="icon1" class="floatLeft">
            <h2>
                <span class="stylecolor">Simplicity</span>
                Online</h2>
        </div>
        <div id="nsecnavbar">
            <div id="hardicon" class="floatRight">
                <a href="javascript:populateContents('../HardwareSpecifications.aspx','contentsDiv')"
                    class="icon_link">
                    <asp:Image ID="Image5" ImageUrl="~/Images/icon_clientsystem_requirement.jpg" class="imgdim"
                        runat="server" /><br />
                    Hardware Specs</a>
            </div>
            <div id="priceicon" class="floatRight">
                <asp:HyperLink ID="HyperLink1" NavigateUrl="~/Products/EAS/EASPrice.aspx?productid=1" CssClass="icon_link" runat="server">
                    <asp:Image ID="Image4" ImageUrl="~/Images/icon_price.jpg" alt="" class="imgdim" runat="server" /><br />
                    Prices/Editions</asp:HyperLink>
            </div>
            <div id="homeicon" class="floatRight">
                <a href="javascript:populateContents('Details.aspx','contentsDiv')" class="icon_link">
                    <asp:Image ID="Image1" ImageUrl="~/Images/icon_home_EAS.jpg" Width="38" Height="30"
                        runat="server" /><br />
                    Home </a>
            </div>
            <div>
                <asp:Image ID="Image6" ImageUrl="~/Images/subheading_bar.jpg" Height="21" runat="server" />
            </div>
        </div>
    </div>
    <div class="text" id="contentsDiv">
        <p>
            This suite of web-based software will automate your business processes so you can
            reach optimum profit and business performance. Now, thanks to Simplicity you can
            move up to an enterprise application suite that requires nothing more than a web
            browser to use and is available on low-cost subscription.</p>
      <h3 align="center"><a name="top" id="top"></a>The top   15 issues building and property maintenance companies   face </h3>
      <table cellspacing="0" cellpadding="0">
  <TR>
    <TD vAlign="top" width="727" align="left"><TABLE width="1260" align="center">
      <TBODY>
        <TR>
          <TD width="25"><div align="left"><img src="../../images/SmallBall.png" alt="" width="25" height="25" align="right"></div></TD>
          <TD width="1100"><span lang="EN-GB"><A href="#link1">I   want my business to be more efficient and so cost less to   run</A></span></TD>
          </TR>
        <TR>
          <TD><div align="left"><img src="../../images/SmallBall.png" alt="" width="25" height="25" align="right" /></div></TD>
          <TD><span lang="EN-GB"><A href="#link2">I   want my business to give better service to new and existing clients and so   retain &amp; win more business</A></span></TD>
          </TR>
        <TR>
          <TD><div align="left"><img src="../../images/SmallBall.png" alt="" width="25" height="25" align="right" /></div></TD>
          <TD><span lang="EN-GB"><A href="#link3">I   need this business to cost less to run and generate faster and more profitable   income</A></span></TD>
          </TR>
        <TR>
          <TD><div align="left"><img src="../../images/SmallBall.png" alt="" width="25" height="25" align="right" /></div></TD>
          <TD><span lang="EN-GB"><A href="#link4">I   need to be able to make changes to jobs and understand how changes affect   costs</A></span></TD>
          </TR>
        <TR>
          <TD><div align="left"><img src="../../images/SmallBall.png" alt="" width="25" height="25" align="right" /></div></TD>
          <TD><span lang="EN-GB"><A href="#link5">I   need the business systems to work seamlessly with my accounts   system</A></span></TD>
          </TR>
        <TR>
          <TD></TD>
          <TD></TD>
          </TR>
        <TR>
          <TD><div align="left"><img src="../../images/SmallBall.png" alt="" width="25" height="25" align="right" /></div></TD>
          <TD><span lang="EN-GB"><A href="#link6">I need to submit accurate quotes on   time</A></span></TD>
          </TR>
        <TR>
          <TD><div align="left"><img src="../../images/SmallBall.png" alt="" width="25" height="25" align="right" /></div></TD>
          <TD><span lang="EN-GB"><A href="#link7">I   need to ensure nothing is missed off my quotes</A></span></TD>
          </TR>
        <TR>
          <TD><div align="left"><img src="../../images/SmallBall.png" alt="" width="25" height="25" align="right" /></div></TD>
          <TD><span lang="EN-GB"><A href="#link8">I   need to see the impact of price changes on quotes immediately, allowing me to   quickly re-quote.</A></span></TD>
          </TR>
        <TR>
          <TD><div align="left"><img src="../../images/SmallBall.png" alt="" width="25" height="25" align="right" /></div></TD>
          <TD><span lang="EN-GB"><A href="#link9">Changes to pricing must be applied to all quotes in progress   immediately</A></span></TD>
          </TR>
        <TR>
          <TD><div align="left"><img src="../../images/SmallBall.png" alt="" width="25" height="25" align="right" /></div></TD>
          <TD><span lang="EN-GB"><A href="#link10">I   need every job to fully optimise the use of labour</A></span></TD>
          </TR>
        <TR>
          <TD></TD>
          <TD></TD>
          </TR>
        <TR>
          <TD><div align="left"><img src="../../images/SmallBall.png" alt="" width="25" height="25" align="right" /></div></TD>
          <TD><span lang="EN-GB"><A href="#link11">I need my buyers to negotiate best   rates and buy the right materials </A></span></TD>
          </TR>
        <TR>
          <TD><div align="left"><img src="../../images/SmallBall.png" alt="" width="25" height="25" align="right" /></div></TD>
          <TD><span lang="EN-GB"><A href="#link12">I   must be compliant with Health &amp; Safety requirements without a massive   paperwork overhead on the business</A></span></TD>
          </TR>
        <TR>
          <TD><div align="left"><img src="../../images/SmallBall.png" alt="" width="25" height="25" align="right" /></div></TD>
          <TD><span lang="EN-GB"><A href="#link13">I   need to both hit and show I&rsquo;ve hit KPIs to get paid</A></span></TD>
          </TR>
        <TR>
          <TD><div align="left"><img src="../../images/SmallBall.png" alt="" width="25" height="25" align="right" /></div></TD>
          <TD><span lang="EN-GB"><A href="#link14">I   don&rsquo;t want yet another IT system to support on our servers</A></span></TD>
          </TR>
        <TR>
          <TD><div align="left"><img src="../../images/SmallBall.png" alt="" width="25" height="25" align="right" /></div></TD>
          <TD><span lang="EN-GB"><A href="#link15">I   don&rsquo;t want to have to mess with my existing IT applications to integrate a new   system</A></span></TD>
          </TR>
        </TBODY>
      </TABLE>
      <span lang="EN-GB">
        </p>
        </span></TD>
  </TR>
</table>
      <p>1. I want my business to   be more efficient and so cost less to run</STRONG></span></p>
<p><span lang="EN-GB" xml:lang="EN-GB"><strong>The Issue:</strong> My business is run on a mix of spreadsheets and   word documents. Frankly I know we lose money but I don&rsquo;t need the complexity and   cost (£10k plus) of any software I&rsquo;ve seen before, nor the servers and network   to run them</span></p>
<p><span lang="EN-GB" xml:lang="EN-GB"><strong>The Solution:</strong> Replace all the spreadsheets and copy and   pasting to Word documents with Simplicity Online that automates management of: </span></p>
<ul>
  <li><span lang="EN-GB" xml:lang="EN-GB">Increase revenue, improve profit margins and speed up cash flow </span> </li>
  <li><span lang="EN-GB" xml:lang="EN-GB">Job costing and quotation system </span> </li>
  <li><span lang="EN-GB" xml:lang="EN-GB">Bill of materials and Job Tickets - Works Orders </span> </li>
  <li><span lang="EN-GB" xml:lang="EN-GB">Achieving better labour utilisation </span> </li>
  <li><span lang="EN-GB" xml:lang="EN-GB">Time Sheets and payroll </span> </li>
  <li><span lang="EN-GB" xml:lang="EN-GB">Invoicing and getting paid quicker</span></li>
</ul>
<p><span lang="EN-GB" xml:lang="EN-GB"><a href="#top"><strong>Back to top</strong></a></span></p>
<p><span lang="EN-GB" xml:lang="EN-GB"> </span><span lang="EN-GB"><STRONG><A name="link2">2. I want my business to   give better service to new and existing clients and so retain &amp; win more   business</STRONG></span></p>
<p><span lang="EN-GB" xml:lang="EN-GB"><strong>The Issue:</strong> I am being forced by my customers to show   evidence of good business management and ISO 9001. </span><span lang="EN-GB" xml:lang="EN-GB">Unless I use a proper system   I may lose their business</span></p>
<p><span lang="EN-GB" xml:lang="EN-GB"><strong>The Solution:</strong> Simplicity Online manages and automates   business processes and in itself will help obtain ISO 9001. But more than that,   it will help you achieve core benefits of: </span></p>
<ul>
  <li><span lang="EN-GB" xml:lang="EN-GB">Maximising revenue by making sure you quote and bill for everything </span> </li>
  <li><span lang="EN-GB" xml:lang="EN-GB">Controlling costs by better labour utilisation </span> </li>
  <li><span lang="EN-GB" xml:lang="EN-GB">Getting paid quicker by presenting accurate, easy to read and timely   invoices </span> </li>
  <li><span lang="EN-GB" xml:lang="EN-GB">Complying, and being seen to comply, with legislation - particularly Health   &amp; Safety</span></li>
</ul>
<p><span lang="EN-GB" xml:lang="EN-GB"><a href="#top"><strong>Back to top</strong></a></span></p>
<p><span lang="EN-GB"><A name="link2"> </span></p>
<p><span lang="EN-GB"><STRONG><A name="link3">3. I need this business to   cost less to run and generate faster and more profitable   income</STRONG></span></p>
<p><span lang="EN-GB" xml:lang="EN-GB"><strong>The Issue:</strong> ROI Case</span></p>
<ol>
  <li><span lang="EN-GB" xml:lang="EN-GB">Increase sales order billing </span> </li>
  <li><span lang="EN-GB" xml:lang="EN-GB">Increase gross margins </span> </li>
  <li><span lang="EN-GB" xml:lang="EN-GB">Decrease direct costs </span> </li>
  <li><span lang="EN-GB" xml:lang="EN-GB">Reduce indirect Costs </span> </li>
  <li><span lang="EN-GB" xml:lang="EN-GB">Speed up payment from customers</span></li>
</ol>
<p><span lang="EN-GB" xml:lang="EN-GB">Avoid or reduce penalties from non-compliance.</span></p>
<p><span lang="EN-GB" xml:lang="EN-GB"><strong>The Solution:</strong> Improve each of items 1 to 4 by 5% and double   net profit</span></p>
<p><span lang="EN-GB" xml:lang="EN-GB">Or tangible impact on an individual profit improvement category</span></p>
<p><span lang="EN-GB" xml:lang="EN-GB">Speed up payment by faster, accurate, easy to read invoicing and increase   cash in bank</span></p>
<p><span lang="EN-GB" xml:lang="EN-GB">Apply and demonstrate best practice compliance with Health &amp; Safety to   inspectors and avoid financial penalties and even close down.</span></p>
<p><span lang="EN-GB" xml:lang="EN-GB"><a href="#top"><strong>Back to top</strong></a></span></p>
<p><span lang="EN-GB" xml:lang="EN-GB"> </span><span lang="EN-GB"><STRONG><A name="link4">4. I need to be able to make changes to jobs and understand   how changes affect costs</STRONG></span></p>
<p><span lang="EN-GB" xml:lang="EN-GB"><strong>The Issue:</strong> Variations,   additional works and changes to specification are a nightmare. At best they   delay payment and at worst they don&rsquo;t get agreed. These can be a direct hit to   bottom line profits.</span></p>
<p><span lang="EN-GB" xml:lang="EN-GB"><strong>The Solution:</strong> We let you   accurately price these changes, automate process to get authorisation and   clearly differentiate variations on all invoices to help speed up   payment.</span></p>
<p><span lang="EN-GB" xml:lang="EN-GB"><a href="#top"><strong>Back to   top</strong></a></span></p>
<p><span lang="EN-GB" xml:lang="EN-GB"><strong><a name="link5" id="link5">5. I need the business systems to work seamlessly with my   accounts system</a></strong></span></p>
<p><span lang="EN-GB" xml:lang="EN-GB"><strong>The Issue:</strong> I really don&rsquo;t want   extra work if an end user deploys new applications. I want to know that I can   maintain the integrity of my accounts.</span></p>
<p><span lang="EN-GB" xml:lang="EN-GB"><strong>The Solution:</strong> Simplicity Online   will export data ready for sales ledger and payroll so that:<br />
</span></p>
<ul>
  <li><span lang="EN-GB" xml:lang="EN-GB">line managers can check/authorise </span> </li>
  <li><span lang="EN-GB" xml:lang="EN-GB">accounts can process and import into accounts   package.</span></li>
</ul>
<p><span lang="EN-GB" xml:lang="EN-GB">This will avoid transcription errors and   synchronise management and financial accounts.</span></p>
<p><span lang="EN-GB" xml:lang="EN-GB"><a href="#top"><strong>Back to top</strong></a></span></p>
<p> <a name="link6" id="link6"><strong>6. I need to submit   accurate quotes on time </strong></a></p>
<p><strong>The Issue:</strong> Too many quotes do   not get sent in time meaning that bid is rejected .That is a direct hit to top   line and a wasted cost in preparing quotes.</p>
<p><strong>The Solution:</strong> Applying pricing   books &amp; pricing schedules for labour, parts and materials by simple click   and select speeds up quotation by days.</p>
<p>Giving surveyors and inspectors handheld devices   to price up jobs and get local site agreement from contractors, means that   quotes can be completed and sent on day of survey.</p>
<p>Faster quotes means you are first to be   considered and do not submit quotes too late.</p>
<p><a href="#top"><strong>Back to top</strong></a></p>
<p> <a name="link7" id="link7"><strong>7. I need to ensure   nothing is missed off my quotes</strong></a></p>
<p><strong>The Issue:</strong> Too many quotes miss   items off, or apply incorrect pricing and once a quotation is submitted it is   almost impossible to charge extra, meaning a hit to profits.</p>
<p><strong>The Solution:</strong> Making it easy to   select all the items from a pricing book/schedule means quotes will be accurate,   profit margins protected and sales order revenue potential   maximised.</p>
<p><a href="#top"><strong>Back to top</strong></a></p>
<p> <a name="link8" id="link8"><strong>8. I need to see the   impact of price changes on quotes immediately, allowing me to quickly re-quote. </strong></a></p>
<p><strong>The Issue:</strong> Unable to quote   competitively, or react to buyer feedback because it is so difficult to adjust   prices or balance good value with profitability.</p>
<p><strong>The Solution:</strong> You will be able   to adjust pricing by individual line item or by groups and see the effect on   overall price and your profit margin to achieve best outcome and win more   business.</p>
<p><a href="#top"><strong>Back to top</strong></a></p>
<p> <A name="link9"><strong>9. Changes to pricing must   be applied to all quotes in progress immediately</strong></p>
<p><strong>The Issue:</strong> I have to rely on   spreadsheets developed over time, amended with some individuals creating their   own versions. We all know how spreadsheets corrupt over time and I am scared   that our quotes are full of errors and omissions. But I don&rsquo;t know how to   replace them.</p>
<p><strong>The Solution:</strong> These macros are   incorporated into Simplicity Online&rsquo;s costing/estimating module and everyone   uses the same process. You can update all the pricing books and schedules of   rates at the same time. You can be confident that your quotes will be consistent   and accurate.</p>
<p><a href="#top"><strong>Back to top</strong></a></p>
<p> <A name="link10"><strong>10. I need every job to   fully optimise the use of labour</strong></p>
<p><strong>The Issue:</strong> Labour is often the   highest single direct cost and labour utilisation can be a key success factor.   The more reliant on site operatives and mobile engineers/surveyors an   organisation has, the more likely it is to suffer rising costs. </p>
<p>It is vital to be able to plan the allocation of   people together with the assets, resources they require in order to reconcile   service level offered against costs incurred. You can also achieve more   appointments, completed tasks and satisfied customers without incurring extra   costs.</p>
<p><strong>The Solution:</strong> You will be able   to see forward availability of operatives and resources and allocate them to   projects, jobs, orders etc. You can use post codes to group visits with   available people. You can allocate vehicles, plant and machinery to people to   make sure everyone has the resources to complete key tasks. At the same time you   can allocate the costs to the job and thus forecast and control   profitability.</p>
<p>You will be able to reduce costs by better   labour utilisation and sweat assets to achieve a better ROI.</p>
<p><a href="#top"><strong>Back to top</strong></a></p>
<p> <A name="link11"><strong>11. I need my buyers to   negotiate best rates and buy the right materials</strong>  </p>
<p><strong>The Issue:</strong> It&rsquo;s difficult to   make sure buyers are using up to date bill of materials and sales pricing   information to buy cost-effectively.</p>
<p><a href="#top"><strong>Back to top</strong></a></p>
<p> <A name="link12"><strong>12. I must be compliant   with all Health &amp; Safety requirements without a massive paperwork overhead   on the business</strong></p>
<p align="justify"><strong>The Issue:</strong> I am under constant   pressure to comply with health and safety regulations in factories, warehouses   and in the hard to control environment of on-site operations.</p>
<p align="justify">I need to demonstrate compliance to win business   and anticipate inspections by various bodies. Non-compliance means penalties at   best and short-to-long term closure of business.</p>
<p align="justify"><strong>The Solution:</strong> Ensure that   operatives are certified to operate plant, their training is up-to-date and that   you apply regular checks to ensure all plant, equipment and vehicles are   compliant.</p>
<p align="justify">Job Tickets/works orders will emphasise key   health and safety tasks.</p>
<p align="justify">Control this in real-time by equipping   operatives with handheld devices with which to manage jobs.</p>
<p align="justify">You can manage compliance, but also demonstrate the application of   best-practise.</p>
<p><a href="#top"><strong>Back to top</strong></a></p>
<p> <A name="link13"><strong>13. I need to both hit   and show I&rsquo;ve hit KPIs to get paid</strong></p>
<p align="justify"><strong>The Solution:</strong> It is difficult   to measure and report on the achievement of key performance indicators. You   might not get paid unless you show you have responded within agreed times and   completed tasks to schedule. It is often a nightmare to show that the client is   the cause of delay e.g. by not sending job requests in time.</p>
<p align="justify"><strong>The Issue:</strong> Every data entry and   task achieved is time and date stamped giving a complete audit trail of events.   Simplicity Online reporting tools let you measure and report on any data   collected e.g. </p>
<ul>
  <li>CP 12 certificates issued </li>
  <li>Claims managed within time limits </li>
  <li>Parts despatched within time   limits
    </li></ul>
<p align="justify">You can get on with planning and directing your   operation knowing and anticipate problems with potential problem analysis   tools.</p>
<p align="justify">This will reduce costs, speed up payment and   demonstrate compliance.</p>
<p><a href="#top"><strong>Back to top</strong></a></p>
<p> <A name="link14"><strong>14. I don&rsquo;t want yet   another IT system to support on our servers</strong></p>
<p><strong>The Issue:</strong> End users need to   deploy applications to new business venture or unit and it is too costly and   time-intensive to do so in a short time. I have too many projects on my to-do   list anyway.</p>
<p><strong>The Solution:</strong> Simplicity Online   is a SaaS (software as a service) application so you can support deployment with   NO changes needed to internal systems. You can delegate responsibility to line   management and get on with other priorities.</p>
<p><a href="#top"><strong>Back to top</strong></a></p>
<p> <A name="link15"><strong>15. I don&rsquo;t want to have   to mess with my existing IT applications to integrate a new system</strong></p>
<p><strong>The Issue:</strong> I want to add new   applications without having to upgrade or add to my existing IT infrastructure -   hardware, networks, systems or software. I have a considerable investment in   legacy systems that soak up my limited resources.</p>
<p>Even my &ldquo;open systems&rdquo; ERP deployment by SAP,   Oracle, IBM et al is limited in functionality, inflexible, costly to customise   and costly to add licences to.</p>
<p>How can I cope with the demands to support a   short term project, a pilot new business venture or a new company   acquisition?</p>
<p><strong>The Solution:</strong> Simplicity Online   is on an open system platform and only requires end users to have browser access   to the internet.</p>
<p>You can therefore offer the end users the   applications to power the business without any capital cost and a revenue cost   of only £65/user/month.</p>
<p>Sales Force.com meets financial industry   standard security and performance standards.</p>
<p>The application does not affect existing systems   so there are few risks and demands upon your staff or budgets. </p>
<p>You can deliver what the end user needs without   deflecting from core tasks and competencies.</p>
<p><a href="#top"><strong>Back to   top</strong></a></p>
</div>
</asp:Content>
