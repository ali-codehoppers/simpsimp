<%@ Page Language="C#" MasterPageFile="~/Common/Community.master" AutoEventWireup="true"
    CodeBehind="Campaigns.aspx.cs" Inherits="Simplicity.Web.Community.Campaigns" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <div style="float: left; width: 650px">
        <div id="secnavbar" class="floatLeft">
            <div id="icon1">
                <h2 id="ourSolution">
                    Campaigns</h2>
            </div>
            <div id="nsecnavbar">
                <div>
                    <asp:Image ID="Image6" ImageUrl="~/Images/subheading_bar.jpg" Height="21" runat="server" />
                </div>
            </div>
        </div>
        <div id="contentsDiv" class="communitytext" style="min-height:450px;">
            <div id="links">
                <div class="linktext" style="overflow: hidden;">
                    <ul type="square">
                        <%--				    <li><a href="C:\Software\Version2\production\Simplicity\Docs\When the going gets tough.htm" target="_self">When the going gets tough, the tough works smarter not harder.</a>
                    </li>
				    <li><a href="C:\Software\Version2\production\Simplicity\Docs\Passionate About Your Business.htm" target="_self">Passionate About Your Business.</a>
			        </li>
				    <li><a href="C:\Software\Version2\production\Simplicity\Docs\Simplicity for Business Comes to the Cloud.htm" target="_self">Simplicity for Business Comes to the Cloud</a>
			        </li>
				    <li type="disc"><a href="C:\Software\Version2\production\Simplicity\Docs\Simplicity Sort Out Your Business and Make More Money.htm" target="_self">Simplicity Sort Out Your Business and Make More Money</a>
                    </li>--%>
                        <li><a href="..\Docs\When the going gets tough.htm" target="_blank">When the going gets
                            tough, the tough works smarter not harder.</a> </li>
                        <li><a href="..\Docs\Passionate About Your Business.htm" target="_blank">Passionate About
                            Your Business.</a> </li>
                        <li><a href="..\Docs\Simplicity for Business Comes to the Cloud.htm" target="_blank">
                            Simplicity for Business Comes to the Cloud</a> </li>
                        <li type="disc"><a href="..\Docs\Simplicity Sort Out Your Business and Make More Money.htm"
                            target="_blank">Simplicity Sort Out Your Business and Make More Money</a> </li>
                    </ul>
                    <p>
                        &nbsp;</p>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
