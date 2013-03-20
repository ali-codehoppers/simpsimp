<%@ Page Title="" Language="C#" MasterPageFile="~/Common/Main.master" AutoEventWireup="true"
    CodeBehind="Contact.aspx.cs" Inherits="eForms.Web.Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" runat="server">
    <div style="float: left;" class="leftNavBarContact">
        <div>
            <a href="../WatchDemo.aspx" id="watch" class="watch-demo"></a>
        </div>
<!--        <div>
            <a href="../BuyProduct.aspx" id="buy"></a>
        </div>
-->
        <div>
                           <a target="_blank" href="https://sites.secure.force.com/appexchange/listingDetail?listingId=a0N30000004fll2EAA#"
                    id="try"></a>
        </div>
        <div>
            <a href="../CallMeBack.aspx" id="call"></a>
        </div>
    </div>
    <div class="floatRight" style="width: 630px; padding-right:20px" >
        <div id="icon1">
            <h2 style="padding-top:20px;">
                <span style="color: #666666;">CONTACT</span> US</h2>
        </div>
        <div>
            <asp:Image runat="server" ImageUrl="~/Images/subheading_bar.jpg" ID="Image1" />
        </div>
        <div>
            <h2>
                Sales Hotline</h2>
            <strong style="color: #145b86">T:</strong> +4420 7272 8127<br />
            <strong style="color: #145b86">E: </strong><a href="mailto:sales@simplicity4business.com"
                class="login">sales@simplicity4business.com</a>
        </div>
        <div class="dotted_line">
        </div>
        <div>
            <h2>
                Training &amp; Support Line</h2>
            <strong style="color: #145b86">E: </strong><a href="mailto: training@simplicity4business.com"
                class="login">training@simplicity4business.com</a><br />
            <br />
            We do not accept training or support calls on any other number. Calling on this
            number from BT line is charged at standard rate.
            <br />
            Charges from other service providers and mobile phones may vary.</div>
        <div class="dotted_line">
        </div>
        <div>
            <h2>
                Head Office</h2>
            <strong>Simplicity4Business<br />
                2a Grenville Road
                <br />
                London
                <br />
                N19 4EH
                <br />
                <br />
                <strong style="color: #145b86">E: </strong><a href="mailto:info@simplicity4business.com"
                    class="login">info@simplicity4business.com</a><br />
            </strong><strong style="color: #145b86">T: </strong>+4420 7272 8127<br />
            <strong style="color: #145b86">F: </strong>+4420 7281 7239</div>
    </div>
    <div class="clearFloat">
    </div>
</asp:Content>
