<%@ Page Title="" Language="C#" MasterPageFile="~/Common/Companys.master" AutoEventWireup="true" CodeBehind="OurClients.aspx.cs" Inherits="eForms.Web.Company.OurClients" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
   <div style="float: left; width: 650px">
        <div id="secnavbar" class="floatLeft">
            <div id="icon1" class="floatLeft">
                <h2 id="ourSolution">
                    <span style="color: #666666;">OUR</span> CLIENTS</h2>
            </div>
            <div id="nsecnavbar">
                
                <div>
                    <asp:Image ID="Image6" ImageUrl="~/Images/subheading_bar.jpg" Height="21" runat="server" />
                </div>
            </div>
        </div>
        <div class="solutiontext"  style="padding-right:20px;">
            <p>
                Our clients come from many different industry sectors and many through referral.
                We think this is testimony to the quality of our solutions and the importance we
                place on creating a rewarding working relationship with them.</p>
            <p>
                But you don't have to take our word for it, read what some of our clients have to
                say about us in <a href="../CaseStudies.aspx"> Case Studies. </a></p>
        </div>
    </div>
</asp:Content>
