<%@ Page Title="" Language="C#" MasterPageFile="~/Common/WatchProductLeftMenu.master"
    AutoEventWireup="true" CodeBehind="WatchDemo.aspx.cs" Inherits="Simplicity.Web.WatchDemo" %>

<asp:Content ID="Content2" ContentPlaceHolderID="HeadContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentsPlaceHolder" runat="server">
    <div>
        <asp:Repeater ID="rptVideos" runat="server">
            <HeaderTemplate>
                <ol>
            </HeaderTemplate>
            <ItemTemplate>
                <li><a href='../WatchDemo.aspx?product_id=<%#Request.QueryString["product_id"] %>&videoId=<%#GetURL(DataBinder.Eval(Container.DataItem, "VideoID"))%>'>
                    <%#DataBinder.Eval(Container.DataItem, "text")%></a></li>
            </ItemTemplate>
            <FooterTemplate>
                </ol>
            </FooterTemplate>
        </asp:Repeater>
    </div>
    <div style="padding-top: 50px;">
        <object width="640" height="600" type="application/x-shockwave-flash" data="http://flvplayer.com/free-flv-player/FlvPlayer.swf"
            codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,0,0"
            id="embed_player" style="visibility: visible;">
            <param value="#FFFFFF" name="bgcolor">
            <param name="movie" value="http://flvplayer.com/free-flv-player/FlvPlayer.swf" />
            <param value="true" name="menu">
            <param value="true" name="allowfullscreen">
            <param name="FlashVars" value="flvpFolderLocation=http://flvplayer.com/free-flv-player/flvplayer/&flvpVideoSource=<%=VideoURL%>&flvpWidth=640&flvpHeight=375&flvpInitVolume=50&flvpTurnOnCorners=true&flvpBgColor=FFFFFF"
<embed src="http://flvplayer.com/free-flv-player/FlvPlayer.swf" flashvars="flvpFolderLocation=http://flvplayer.com/free-flv-player/flvplayer/&flvpVideoSource=<%=VideoURL%>&flvpWidth=640&flvpHeight=375&flvpInitVolume=50&flvpTurnOnCorners=true&flvpBgColor=FFFFFF" quality="high" bgcolor="FFFFFF" width="640" height="375" name="FlvPlayer" align="middle" allowScriptAccess="sameDomain" allowFullScreen="true" type="application/x-shockwave-flash" pluginspage="http://www.adobe.com/go/getflashplayer" />

        </object>
    </div>
</asp:Content>
