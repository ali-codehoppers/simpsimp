<%@ Page Title="" Language="C#" MasterPageFile="~/Common/Community.master" AutoEventWireup="true" CodeBehind="Events.aspx.cs" Inherits="Simplicity.Web.Community.Events" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolder" runat="server">
<link href="C:\Software\Version2\production\Simplicity\Docs\When the going gets tough.htm.css" rel="stylesheet" type="text/css"/>

<link href="C:\Software\Version2\production\Simplicity\Docs\Passionate About Your Business.htm.css" rel="stylesheet" type="text/css"/>
<link href="C:\Software\Version2\production\Simplicity\Docs\Simplicity for Business Comes to the Cloud.htm.css" rel="stylesheet" type="text/css"/>
<link href="C:\Software\Version2\production\Simplicity\Docs\Simplicity Sort Out Your Business and Make More Money.htm.css" rel="stylesheet" type="text/css" />

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
   <div style="float: left; width: 650px">
        <div id="secnavbar" class="floatLeft">
            <div id="icon1" class="floatLeft">
                <h2 id="ourSolution">
                    Campaigns</h2>
            </div>
            <div id="nsecnavbar">
                <div>
                    <asp:Image ID="Image6" ImageUrl="~/Images/subheading_bar.jpg" Height="21" runat="server" />
				</div>
			</div>			
		</div>
		<div id="contentsDiv" class="communitytext">
            <div id="links">
				<div class="linktext">
				  <ul type="square">
				    <li><a href="..\Docs\When the going gets tough.htm" target="_self">When the going gets tough, the tough works smarter not harder.</a>
                    </li>
				    <li><a href="..\Docs\Passionate About Your Business.htm" target="_self">Passionate About Your Business.</a>
			        </li>
				    <li><a href="..\Docs\Simplicity for Business Comes to the Cloud.htm" target="_self">Simplicity for Business Comes to the Cloud</a>
			        </li>
				    <li type="disc"><a href="..\Docs\Simplicity Sort Out Your Business and Make More Money.htm" target="_self">Simplicity Sort Out Your Business and Make More Money</a>
                    </li>
			      </ul>
				  <p>&nbsp;</p>
			  </div>

            </div>
        </div>
    </div>
</asp:Content>
