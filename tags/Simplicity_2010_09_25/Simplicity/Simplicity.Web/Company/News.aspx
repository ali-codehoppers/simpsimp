<%@ Page Title="" Language="C#" MasterPageFile="~/Common/Companys.master" AutoEventWireup="true" CodeBehind="News.aspx.cs" Inherits="Simplicity.Web.Company.News" %>
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
        <div class="solutiontext">
        <p>
                For read the latest news from Simplicity For Business please click on the month
                and then story headline you are interested in.</p>
            <p>
                <a href="#Jantop">Jan 2010</a></p>
            <p id="Jantop">
                <a>Press release VAT increase</a>
                <br />
                <a>Press release Snow hits economy</a><br />
                <a>Press release - Estimating in todays's harsh economic environment</a></p>
</div>
    </div>
</asp:Content>
