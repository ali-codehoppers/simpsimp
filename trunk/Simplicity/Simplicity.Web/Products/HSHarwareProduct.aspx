<%@ Page Title="" Language="C#" MasterPageFile="~/Common/HSMain.master" AutoEventWireup="true"
    CodeBehind="HSHarwareProduct.aspx.cs" Inherits="Simplicity.Web.Products.HSHarwareProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TextContentPlaceHolder" runat="server">
    <p>
        Products - Simplicity H&amp;S live - I.T Checklist
    </p>
    <p>
        Click on the options below to view the Browsers and Information needed to avail
        of any of the Simplicity Products</p>
    <div class="browserlist">
        <div>
            <asp:Image ID="Image1" ImageUrl="../Images/ie7.jpg" Width="66px" Height="68px" runat="server" />
        </div>
        <div>
            <asp:Label runat="server">Internet Explorer</asp:Label><br />
            <a href="http://www.microsoft.com" target="_blank">Microsoft Conporation</a><br />
            <a href="http://www.microsoft.com/windows/internet-explorer/thank-you.aspx" target="_blank">Download version 8</a>
        </div>
    </div>
    <div class="browserlist">
        <div>
            <asp:Image ID="Image2" ImageUrl="../Images/firefox.jpg" Width="66px" Height="68px"
                runat="server" />
        </div>
        <div>
            <asp:Label ID="Label1" runat="server">Firefox<br/>(also called Mozilla Firefox)</asp:Label></div>
            <a href="http://www.mozilla.com/en-US/" target="_blank">Mozilla Corporation</a><br />
            <a href="http://www.mozilla.com/en-US/" target="_blank">Download version 3.5.2</a>
    </div>
    <div class="browserlist">
        <div>
            <asp:Image ID="Image3" ImageUrl="../Images/chrome.jpg" Width="66px" Height="68px"
                runat="server" />
        </div>
        <div>
            <asp:Label ID="Label2" runat="server">Chrome</asp:Label></div>
            <a href="http://www.google.com" target="_blank">Google</a><br />
            <a href="http://download.cnet.com/Google-Chrome/3000-2356_4-10881381.html" target="_blank">Download version 2.0.172.43</a>
    </div>
    <div class="browserlist">
        <div>
            <asp:Image ID="Image4" ImageUrl="../Images/safari_icon.png" Width="66px" Height="68px"
                runat="server" /></div>
        <div>
            <asp:Label ID="Label3" runat="server">Safari</asp:Label><br />
            <a href="http://www.apple.com/" target="_blank">Apple Inc</a><br />
            <a href="http://www.apple.com/safari/download/" target="_blank">Download version 4.0.3</a>
        </div>
    </div>
    <div class="browserlist">
        <div>
            <asp:Image ID="Image5" ImageUrl="../Images/opera.jpg" Width="66px" Height="68px"
                runat="server" /></div>
        <div>
            <asp:Label ID="Label4" runat="server">Opera</asp:Label><br />
            <a href="http://www.opera.com/" target="_blank">Opera Software ASA</a><br />
            <a href="http://www.opera.com/browser/" target="_blank">Download version 10</a>
        </div>
    </div>
</asp:Content>
