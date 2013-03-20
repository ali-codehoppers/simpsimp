<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DemoMovie.aspx.cs" Inherits="eForms.Web.DemoMovie" %>

<asp:Panel ID="errorPanel" runat="server" CssClass="error" Visible="false" style="margin-top:75px;margin-left:0px;">
                <div style="float:left">
                    <asp:Image ID="Image1" ImageUrl="~/Images/error.png" runat="server" />
                </div>   
                <div style="float:left;margin-left:5px;margin-top:5px;">
                    <asp:Label runat="server" ID="errorMessage"></asp:Label>
                </div>
                <div style="clear:both"></div>
            </asp:Panel>
            
            <asp:Panel ID="successPanel" runat="server" CssClass="success" Visible="false" style="margin-top:75px;margin-left:0px;">
                <div style="float:left">
                    <asp:Image ID="Image2" ImageUrl="~/Images/success.png" runat="server" />
                </div>   
                <div style="float:left;margin-left:5px;margin-top:5px;">
                    <asp:Label runat="server" ID="successMessage"></asp:Label>
                </div>
                <div style="clear:both"></div>
            </asp:Panel>
<div style="background-color:#292F8D;">
           
<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,0,0" width="640" height="480" id="FlvPlayer" align="middle">
<param name="allowScriptAccess" value="sameDomain" />
<param name="allowFullScreen" value="true" />
<param name="movie" value="http://flvplayer.com/free-flv-player/FlvPlayer.swf" />
<param name="quality" value="high" />
<param name="bgcolor" value="292F8D" />
<param name="FlashVars" value="flvpFolderLocation=http://flvplayer.com/free-flv-player/flvplayer/&flvpVideoSource=<%=VideoURL%>&flvpWidth=640&flvpHeight=480&flvpInitVolume=50&flvpTurnOnCorners=true&flvpBgColor=292F8D"
<embed src="http://flvplayer.com/free-flv-player/FlvPlayer.swf" flashvars="flvpFolderLocation=http://flvplayer.com/free-flv-player/flvplayer/&flvpVideoSource=<%=VideoURL%>&flvpWidth=640&flvpHeight=480&flvpInitVolume=50&flvpTurnOnCorners=true&flvpBgColor=292F8D" quality="high" bgcolor="292F8D" width="640" height="480" name="FlvPlayer" align="middle" allowScriptAccess="sameDomain" allowFullScreen="true" type="application/x-shockwave-flash" pluginspage="http://www.adobe.com/go/getflashplayer" />
</object>
                     
</div>