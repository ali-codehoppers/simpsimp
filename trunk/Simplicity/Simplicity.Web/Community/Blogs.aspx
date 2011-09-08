<%@ Page Title="" Language="C#" MasterPageFile="~/Common/Community.master" AutoEventWireup="true" CodeBehind="Events.aspx.cs" Inherits="Simplicity.Web.Community.Events" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
   <div style="float: left; width: 650px">
        <div id="secnavbar" class="floatLeft">
            <div id="icon1" class="floatLeft">
                <h2 id="ourSolution">
                    Blogs</h2>
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
					Blogs will go here.
				</div>

            </div>
        </div>
    </div>
</asp:Content>
