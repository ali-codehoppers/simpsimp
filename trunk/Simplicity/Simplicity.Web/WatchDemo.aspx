﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Common/WatchProductLeftMenu.master"
    AutoEventWireup="true" CodeBehind="WatchDemo.aspx.cs" Inherits="Simplicity.Web.WatchDemo" %>

<asp:Content ID="Content2" ContentPlaceHolderID="HeadContentPlaceHolder" runat="server">
   
    <link rel="stylesheet" type="text/css" href="Scripts/jquery-ui-1.7.2.custom.css" />
    <script type="text/javascript" src="Scripts/jquery-1.4.1.min.js"></script>
    <script type="text/javascript" src="Scripts/jquery-ui-1.7.2.custom.min.js"></script>
      <script type="text/javascript">
          function open_train(tar) {
              //window.open('DemoMovie.aspx?videoId=' + tar, "Simplicity4Business", "width=820,height=620,location=no,toolbar=no,scrollbars=yes,status=no,resizable=1");
              $('#demoDialog').load('DemoMovie.aspx?videoId=' + tar);
              jQuery("#demoDialog").dialog('open');
          }
    </script>

</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentsPlaceHolder" runat="server">
    
    <div id="demoDialog" title="Demo"></div> 
     <script type="text/javascript">
         jQuery(document).ready(function () {
             jQuery("#demoDialog").dialog({
                 bgiframe: true, autoOpen: false, height: 550, width: 700, modal: true,
                 close: function (ev, ui) {
                     $('#demoDialog').load('Oops.aspx');
                 }
             });
         });
    </script>
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
    <div style="padding-top:50px;">
           
<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,0,0" width="500" height="400" id="FlvPlayer" align="middle">
<param name="allowScriptAccess" value="sameDomain" />
<param name="allowFullScreen" value="true" />
<param name="movie" value="http://flvplayer.com/free-flv-player/FlvPlayer.swf" />
<param name="quality" value="high" />

<param name="FlashVars" value="flvpFolderLocation=http://flvplayer.com/free-flv-player/flvplayer/&flvpVideoSource=<%=VideoURL%>&flvpWidth=540&flvpHeight=380&flvpInitVolume=50&flvpTurnOnCorners=true&flvpBgColor=292F8D"
<embed src="http://flvplayer.com/free-flv-player/FlvPlayer.swf" flashvars="flvpFolderLocation=http://flvplayer.com/free-flv-player/flvplayer/&flvpVideoSource=<%=VideoURL%>&flvpWidth=540&flvpHeight=380&flvpInitVolume=50&flvpTurnOnCorners=true&flvpBgColor=292F8D" quality="high" bgcolor="292F8D" width="500" height="400" name="FlvPlayer" align="middle" allowScriptAccess="sameDomain" allowFullScreen="true" type="application/x-shockwave-flash" pluginspage="http://www.adobe.com/go/getflashplayer" />
</object>
                     
</div>
</asp:Content>