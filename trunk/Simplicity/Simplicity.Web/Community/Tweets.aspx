<%@ Page Title="" Language="C#" MasterPageFile="~/Common/Community.master" AutoEventWireup="true" CodeBehind="Events.aspx.cs" Inherits="Simplicity.Web.Community.Events" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
   <div style="float: left; width: 650px">
        <div id="secnavbar" class="floatLeft">
            <div id="icon1" class="floatLeft">
                <h2 id="ourSolution">
                    Tweets</h2>
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
					<script src="http://widgets.twimg.com/j/2/widget.js"></script>
					<script>
					new TWTR.Widget({
					  version: 2,
					  type: 'profile',
					  rpp: 4,
					  interval: 6000,
					  width: 600,
					  height: 350,
					   theme: {
    shell: {
      background: '#6a75a1',
      color: '#ffffff'
    },
    tweets: {
      background: '#aecfcf',
      color: '#373969',
      links: '#1e2e7d'
    }
					  },
					  features: {
						scrollbar: true,
						loop: false,
						live: false,
						hashtags: true,
						timestamp: true,
						avatars: false,
						behavior: 'all'
					  }
					}).render().setUser('Simplicity4Bus').start();
					</script>
				</div>

            </div>
        </div>
    </div>
</asp:Content>
