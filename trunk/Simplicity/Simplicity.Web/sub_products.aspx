<%@ Page Title="" Language="C#" MasterPageFile="~/Common/Main.Master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="Simplicity.Web.Default" %>

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {

    }
</script>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolder" runat="server">
    <script type="text/javascript" src="Scripts/jquery.cycle.all.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $('.slideShow').cycle({
                fx: 'fade' // choose your transition type, ex: fade, scrollUp, shuffle, etc...
            });
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" runat="server">
    <div id="contentTop">
        <div class="floatLeft leftNavBarHNS">
            <div>
                <a href="index.html" id="watch_hns"></a>
            </div>
            <div>
                <a href="Technology.html" id="buy_hns"></a>
            </div>
            <div>
                <a href="features.html" id="try_hns"></a>
            </div>
            <div>
                <a href="download.html" id="call_hns"></a>
            </div>
        </div>
        <div id="rightpart" class="floatRight">
            <div id="subdirectory" class="bottom_border">
                <a href="#" class="login">Products</a> &gt;&gt; <a href="#" class="login">Simplicity
                    H&amp;S Live</a>
            </div>
            <div id="secnavbar" class="floatLeft">
                <div id="icon1" class="floatLeft">
                <h2>
                    <span class="stylecolor">Simplicity</span>
                    <br />
                    H&amp;S Live</h2>
                </div>
                <div id="nsecnavbar">
                    <div id="homeicon" class="floatLeft">
                        <img src="images/icon_home_hns.jpg" alt="" width="38" height="30" /><br />
                        <a href="#" class="icon_link">Home</a>
                    </div>
                    <div id="siteicon" class="floatLeft">
                        <img src="images/icon_safety.jpg" alt="" class="imgdim" /><br />
                        <a href="#" class="icon_link">Site Safety</a>
                    </div>
                    <div id="docicon" class="floatLeft">
                        <img src="images/icon_documentation.jpg" alt="" class="imgdim" /><br />
                        <a href="#" class="icon_link">Documentation</a>
                    </div>
                    <div id="priceicon" class="floatLeft">
                        <img src="images/icon_price.jpg" alt="" class="imgdim" /><br />
                        <a href="#" class="icon_link">Prices/Editions</a>
                    </div>
                    <div id="hardicon" class="floatLeft">
                        <img src="images/icon_clientsystem_requirement.jpg" alt="" class="imgdim"/><br />
                        <a href="#" class="icon_link">Hardware Specs</a>
                    </div>
                    <div>
                        <img src="images/subheading_bar.jpg" alt="" height="21" />
                    </div>
                </div>
            </div>
            <div class="text">
                <p>
                    Simplicity for business offers a suits of business software which require nothing
                    more than a web browser or mobile phone to access.</p>
                <p>
                    This Simplicity Software as a Service (SaaS) suits is packed with 14 specialist
                    applications to help clients with a typica; turnover of 1m-20m to co-ordinate their
                    whole business.</p>
                <p>
                    Simplicity for business offers a suits of business software which require nothing
                    more than a web browser or mobile phone to access.</p>
                <p>
                    This Simplicity Software as a Service (SaaS) suits is packed with 14 specialist
                    applications to help clients with a typica; turnover of 1m-20m to co-ordinate their
                    whole business.Simplicity for business offers a suits of business software which
                    require nothing more than a web browser or mobile phone to access.</p>
                <p>
                    This Simplicity Software as a Service (SaaS) suits is packed with 14 specialist
                    applications to help clients with a typica; turnover of 1m-20m to co-ordinate their
                    whole business.This Simplicity Software as a Service (SaaS) suits is packed with
                    14 specialist applications to help clients with a typica; turnover of 1m-20m to
                    co-ordinate their whole business.Simplicity for business offers a suits of business
                    software which require nothing more than a web browser or mobile phone to access.</p>
                <p>
                    This Simplicity Software as a Service (SaaS) suits is packed with 14 specialist
                    applications to help clients with a typica; turnover of 1m-20m to co-ordinate their
                    whole business.</p>
            </div>
        </div>
        <div id="product">
            <div>
                <div class="rightproduct""><a href="#">
                    <img src="images/icon_img_1.jpg" alt="" width="124" height="97" border="0" /></a></div>
                <div class="leftproduct"><a href="#">
                    <img src="images/icon_img_2.jpg" alt="" width="124" height="97" border="0" /></a></div>
           </div>
            <div>
                 <div class="rightproduct"><a href="#">
                    <img src="images/icon_img_3.jpg" alt="" width="109" height="97" border="0" /></a></div>
                <div class="leftproduct"><a href="#">
                    <img src="images/icon_img_4.jpg" alt="" width="110" height="97" border="0" /></a></div>
            </div>
            <div>
                <div class="rightprodbottom"><a href="#">
                    <img src="images/icon_img_5.jpg" alt="" width="124" height="97" border="0" /></a></div>
                <div class="leftprodbottom"><a href="#">
                    <img src="images/icon_img_6.jpg" alt="" width="124" height="97" border="0" /></a></div>
           </div>
        </div>
        <div class="clearFloat">
        </div>
    </div>
</asp:Content>
