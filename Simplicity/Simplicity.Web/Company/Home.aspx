<%@ Page Title="" Language="C#" MasterPageFile="~/Common/LeftMenu.master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Simplicity.Web.Company.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolder" runat="server">
<script type="text/javascript">
    var currentDiv;
    
    function populateAboutUsContents(){
        $.post('AboutUs.aspx', function (data) {
            $('#contentsDiv').html(data);
            onPageLoad();
        });
    }

    function onPageLoad() {
        //hide the all of the element with class msg_body
        $(".msg_body").hide();
        //toggle the componenet with class msg_body
        $(".msg_head").click(function () {
            if (currentDiv != $(this).attr("id")) {
                $(this).next(".msg_body").slideToggle(1000);
                $("#" + currentDiv).next(".msg_body").slideToggle(1000);
                currentDiv = $(this).attr("id");
            }
        });
        $("#simpDiv").next(".msg_body").show();
        currentDiv = "simpDiv";        
    }

    $(document).ready(function () {
        onPageLoad();
    });
</script>
<style type="text/css">

.msg_list {
	margin: 0px;
	padding: 0px;
	width: 383px;
}
.msg_head {
	padding: 5px 10px;
	cursor: pointer;
	position: relative;
	background-color:#CCCCCC;
	margin:1px;
}
.msg_body {
	padding: 5px 10px 15px;
	background-color:#F4F4F8;
	height: 200px;
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
<div id="subdirectory" class="bottom_border">
                <a href="#" class="login">Products</a> &gt;&gt; <a href="#" class="login">Simplicity
                    H&amp;S Live</a>
            </div>
            <div id="secnavbar" class="floatLeft">
                <div id="icon1" class="floatLeft">
                <h2>
                    Company<br />                   
                </h2>                    
                </div>
                <div id="nsecnavbar">
                    <div id="homeicon" class="floatLeft">                        
                        <a href="javascript:populateAboutUsContents()" class="icon_link">
                        <asp:Image ID="Image1" ImageUrl="~/Images/icon_home_hns.jpg" width="38" height="30" runat="server"/><br />About Us</a>
                    </div>
                    <div id="siteicon" class="floatLeft">                        
                        <a href="javascript:populateContents('OurClients.aspx','contentsDiv')" class="icon_link">
                            <asp:Image ID="Image2" ImageUrl="~/Images/icon_safety.jpg" alt="" class="imgdim" runat="server"/><br />
                            Our Clients
                        </a>
                    </div>
                    <div id="docicon" class="floatLeft">
                        <a href="javascript:populateContents('Careers.aspx','contentsDiv')" class="icon_link">
                            <asp:Image ID="Image3" ImageUrl="~/Images/icon_documentation.jpg" alt="" class="imgdim" runat="server"/><br />
                            Careers
                        </a>
                    </div>
                    <div id="priceicon" class="floatLeft">
                        <a href="javascript:populateContents('News.aspx','contentsDiv')" class="icon_link">
                        <asp:Image ID="Image4" ImageUrl="~/Images/icon_price.jpg" alt="" class="imgdim" runat="server"/><br />
                        News</a>
                    </div>
                    <div id="hardicon" class="floatLeft">                        
                        <a href="../Contact.aspx" class="icon_link">
                        <asp:Image ID="Image5" ImageUrl="~/Images/icon_clientsystem_requirement.jpg" class="imgdim" runat="server"/><br />
                        Contact
                        </a>
                    </div>
                    <div>
                        <asp:Image ID="Image6" ImageUrl="~/Images/subheading_bar.jpg" height="21" runat="server"/>
                    </div>
                </div>
            </div>
<div style="float:left;width:650px;" id="contentsDiv">
<p>Simplicity for Business is an award winning software company, founded in 1987.</p>
<p>We believe it is best to do one thing really well, therefore we concentrate most of our effort on Enterprise Application Development.</p>
<p>Our company philosphy is to produce sophisticated easy to use business software which ensures out clients increase profits and business performance.</p>
<p>We strive to produce this software at the lowest cost possible to you, with the best customer service imaginable.</p>
<p>We follow four simple principles to help us.</p>
<div class="msg_head" id="simpDiv"><h2>Simplicity</h2></div>
<div class="msg_body" >
    <p>When developing our systems we focus on providing the best user experience possible. Our softwares are clear and simple to use.</p>
    <p>It does not matter which platform you are using to use our system, we make sure that the response from our system is instantaneous.</p>
    <p>Simple does not mean functional lacking, our systems encapsulate in them all the business needs that would make sure that they help with long term profits for our clients and also improve their business efficiency.</p>
</div>
<div class="msg_head" id="pionDiv"><h2>Pioneering</h2></div>
<div class="msg_body" >
    <p>We do recognize that technology is always changing. To address to this ever changing we have a world class technical team who are always pushing the limits to evolve our business software.</p>    
    <p>We understand that the world is increasingly mobile and web based. This is our dedication to improving business process, means we strive to develop new products.</p>
    <p>Simplicy EAS is our latest web based suite of software, whilst Simplicity Handy Range includes a suit of mobile apps.</p>
    <p>....</p>
</div>
<div class="msg_head" id="adapDiv"><h2>Adaptability</h2></div>
<div class="msg_body" >
    <p>...</p>
    <p>...</p>
    <p>...</p>
    <p>...</p>
</div>
<div class="msg_head" id="partDiv"><h2>Partnering</h2></div>
<div class="msg_body" >
    <p>...</p>
    <p>...</p>
    <p>...</p>
    <p>...</p>
</div>
</div>
</asp:Content>
