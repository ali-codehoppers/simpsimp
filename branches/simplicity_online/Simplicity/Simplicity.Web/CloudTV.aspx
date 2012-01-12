<%@ Page Title="" Language="C#" MasterPageFile="~/Common/Main.Master" AutoEventWireup="true"
    CodeBehind="CloudTV.aspx.cs" Inherits="Simplicity.Web.CloudTV" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" runat="server">
    <div id="contentTop" style="height: 450px">
        <div class="floatLeft leftNavBar" style="padding-top: 80px;">
            <div>
                <a href="WatchDemo.aspx" id="watch"></a>
            </div>
            <%--            <div>
                <a href="BuyProduct.aspx" id="buy"></a>
            </div>
            --%>
            <div>
                <a target="_blank" href="https://sites.secure.force.com/appexchange/listingDetail?listingId=a0N30000004fll2EAA#"
                    id="try"></a>
            </div>
            <%--			<div> <a href="BuyProduct.aspx?try=try" id="try"> </a> </div>--%>
            <div>
                <a href="CallMeBack.aspx" id="call"></a>
            </div>
        </div>
        <div class="floatRight" style="width: 630px; height: 450px; padding-right: 20px">
            <div id="icon1">
                <h2 style="padding-top: 20px;">
                    <span style="color: #666666;">CLOUD</span> TV</h2>
            </div>
            <div>
                <asp:Image runat="server" ImageUrl="~/Images/subheading_bar.jpg" ID="Image1" />
                <div style="width:500px; margin: auto; padding: auto; margin-top:20px">
                    <script type="text/javascript" src="http://content.bitsontherun.com/players/noJ71h3T-TqKJ5eLM.js"></script>
                </div>
            </div>
        </div>
        <div class="clearFloat">
        </div>
    </div>
</asp:Content>
