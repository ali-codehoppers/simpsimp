<%@ Page Title="" Language="C#" MasterPageFile="~/Common/Main.Master" AutoEventWireup="true"
    CodeBehind="WatchDemo.aspx.cs" Inherits="Simplicity.Web.WatchDemo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" runat="server">
    <div style="width: 990px; min-height: 450px; margin: auto;">
        <div style="width: 500px; margin: auto; font-size:22px; padding-top:160px; text-align:center; line-height:150%">
            <span style="text-align:center"> Thankyou for requesting a demo. One of our team will be back in touch very soon. </span>
        </div>
    </div>
    <!--   <div>
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
    
    <asp:Panel runat="server" ID="videoPanel" Visible="false">
    <div id="videoDiv"  style="padding-top: 50px;">
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
    </asp:Panel>

    -->
</asp:Content>
