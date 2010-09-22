<%@ Page Title="" Language="C#" MasterPageFile="~/Common/LeftMenu.master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Simplicity.Web.Community.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolder" runat="server">
<script type="text/javascript">
    var currentDiv;

    function populateAboutUsContents() {
        $.post('AboutUs.aspx', function (data) {
            $('#contentsDiv').html(data);
            onPageLoad();
        });
    }

    function onPageLoad() {
        //hide the all of the element with class menuDetail
        $(".menuDetail").hide();
        //toggle the componenet with class menuDetail
        $(".menuLabel").click(function () {
            if (currentDiv != $(this).attr("id")) {
                $(this).next(".menuDetail").slideToggle(1000);
                $("#" + currentDiv).next(".menuDetail").slideToggle(1000);
                currentDiv = $(this).attr("id");
            }
        });
        $("#sfDiv").next(".menuDetail").show();
        currentDiv = "sfDiv";
    }

    $(document).ready(function () {
        onPageLoad();
    });
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
        <div id="subdirectory" class="bottom_border">
                <a href="#" class="login">Products</a> &gt;&gt; <a href="#" class="login">Simplicity
                    H&amp;S Live</a>
            </div>
            <div id="secnavbar" class="floatLeft">
                <div id="icon1" class="floatLeft">
                <h2>
                    Community<br />                   
                </h2>                    
                </div>
                <div id="nsecnavbar">
                    <div id="siteicon" class="floatRight">                        
                        <a href="javascript:populateContents('OurClients.aspx','contentsDiv')" class="icon_link">
                            <asp:Image ID="Image2" ImageUrl="~/Images/icon_safety.jpg" alt="" class="imgdim" runat="server"/><br />
                            Events
                        </a>
                    </div>
                    <div id="docicon" class="floatRight">
                        <a href="javascript:populateContents('Careers.aspx','contentsDiv')" class="icon_link">
                            <asp:Image ID="Image3" ImageUrl="~/Images/icon_documentation.jpg" alt="" class="imgdim" runat="server"/><br />
                            Links
                        </a>
                    </div>
                    <div id="priceicon" class="floatRight">
                        <a href="javascript:populateContents('News.aspx','contentsDiv')" class="icon_link">
                        <asp:Image ID="Image4" ImageUrl="~/Images/icon_price.jpg" alt="" class="imgdim" runat="server"/><br />
                        News</a>
                    </div>
                    <div id="hardicon" class="floatRight">                        
                        <a href="../Contact.aspx" class="icon_link">
                        <asp:Image ID="Image5" ImageUrl="~/Images/icon_clientsystem_requirement.jpg" class="imgdim" runat="server"/><br />
                        Partners
                        </a>
                    </div>

                    <div>
                        <asp:Image ID="Image6" ImageUrl="~/Images/subheading_bar.jpg" height="21" runat="server"/>
                    </div>
                </div>
            </div>
<div style="float:left;width:650px;" id="contentsDiv">
    <p>Partners Content goes here ..</p>
    <div class="menuLabel" id="sfDiv">
        <asp:Image ID="Image1" runat="server" Height="40px" 
            ImageUrl="~/Images/Salesforce.jpg" />    
    </div>    
    <div class="menuDetail" >
        <p>Sales force Details...</p>
    </div>
    <div class="menuLabel" id="arbiDiv">
        <asp:Image ID="Image7" runat="server" Height="40px" 
            ImageUrl="~/Images/astadia.png" />    
    </div>    
    <div class="menuDetail" >
        <p>Astadia Detail ... </p>
    </div>
    <div class="menuLabel" id="sageDiv">
        <asp:Image ID="Image8" runat="server" Height="40px" 
            ImageUrl="~/Images/sageLogo80.gif" />    
    </div>    
    <div class="menuDetail" >
        <p>Sage Details...</p>
    </div>

</div>
</asp:Content>
