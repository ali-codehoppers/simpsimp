<%@ Page Title="" Language="C#" MasterPageFile="~/Common/Companys.master" AutoEventWireup="true" CodeBehind="News.aspx.cs" Inherits="eForms.Web.Company.News" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
   <div style="float: left; width: 650px">
        <div id="secnavbar" class="floatLeft">
            <div id="icon1" class="floatLeft">
                <h2 id="ourSolution">
                     NEWS</h2>
            </div>
            <div id="nsecnavbar">
                
                <div>
                    <asp:Image ID="Image6" ImageUrl="~/Images/subheading_bar.jpg" Height="21" runat="server" />
                </div>
            </div>
        </div>
        <div class="solutiontext"  style="padding-right:20px;">
        <p>
                To read the latest news from Simplicity For Business please click on the month
                and then the story headline you are interested in.</p>
            <p>
              <a href="#Jantop">2011</a></p>
          <p><a href="http://www.bbc.co.uk/news/technology-14052944" target="_new">Press release - Free airwaves for rural broadband</a><br />
            <a href="http://www.bbc.co.uk/news/business-14029919" target="_new">Press release - Campaign to flush out unpaid VAT</a><br />
          <a href="http://www.bbc.co.uk/news/business-14029957" target="_new">Press release - UK services sustain 'solid' growth in June 2011</a>     </p>
</div>
    </div>
</asp:Content>
