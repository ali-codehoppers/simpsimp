<%@ Page Title="" Language="C#" MasterPageFile="~/Common/Main.Master" AutoEventWireup="true" CodeBehind="A_Login.aspx.cs" Inherits="Simplicity.Web.A_Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolder" runat="server">

<script type="text/javascript" src='<%=Page.ResolveClientUrl("~/Scripts/jquery.cycle.all.min.js")%>'></script>

<script language="javascript" type='text/javascript'>

    var selectedTab = 1;

    function showHideElementById(status, elementId) {
        var element = document.getElementById(elementId);
        if (element != null) {
            if (status == 1) {
                element.style.visibility = "visible";
                element.style.display = "";
            }
            else {
                element.style.visibility = "hidden";
                element.style.display = "none";
            }
        }
    }

</script> 

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" runat="server">
    <div>
		<div>
			<div style="margin-top:30px; margin-left:50px; margin-bottom:10px;"><h2><span style="color:#cccccc;">MY</span> ACCOUNT</h2></div>
			<div><img src="images/subheading_bar.jpg" alt="" width="565" height="21" /></div>
		</div>
		<div class="myAccountTabs">
			<div id='tabPersonalInfo' class="myPersonalInfoTabOnMouseOver"><div style="padding-top:10px">My Personal Info</div></div>
			<div class="floatLeft" style="height:35px; width:5px; border-bottom:1px solid #e5e5e5;">&nbsp;</div>
			<div id="tabProducts" class="myProductsTab"><div style="padding-top:10px">My Products</div></div>
			<div class="floatLeft" style="height:35px; width:150px; border-bottom:1px solid #e5e5e5;">&nbsp;</div>
			<div class="floatLeft" style="width:117px; height:36px; background: url(Images/login_btm_line.jpg) bottom left no-repeat;">&nbsp;</div>
			
			<div id="myAccountMyPersonalInfoTab" class="clearFloat">
				<div class="row">
					<div class="col1">Email</div>
					<div class="col2"><input name="textfield" type="text" class="login_field_big" id="textfield" /></div>				
				</div>				
				<div class="row">
					<div class="col1">Confirm Email</div>
					<div class="col2"><input name="textfield" type="text" class="login_field_big" id="textfield" /></div>				
				</div>				
			</div>
			<div id="myAccountMyProductsTab" class="clearFloat">
				asd
			</div>
		</div>
	</div>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#myAccountMyPersonalInfoTab').show();
            $('#tabPersonalInfo').click(function () {
                selectedTab = 1;
                $('#tabPersonalInfo').addClass('myPersonalInfoTabOnMouseOver');
                $('#tabPersonalInfo').removeClass('myPersonalInfoTab');
                $('#tabProducts').removeClass('myProductsTabOnMouseOver');
                $('#tabProducts').addClass('myProductsTab');
                $('#myAccountMyPersonalInfoTab').show();
                $('#myAccountMyProductsTab').hide();
            });
            $('#tabPersonalInfo').mouseover(function () {
                $('#tabPersonalInfo').addClass('myPersonalInfoTabOnMouseOver');
                $('#tabPersonalInfo').removeClass('myPersonalInfoTab');
            });
            $('#tabPersonalInfo').mouseout(function () {
                if (selectedTab === 1) {
                    $('#tabPersonalInfo').addClass('myPersonalInfoTabOnMouseOver');
                    $('#tabPersonalInfo').removeClass('myPersonalInfoTab');
                }
                else {
                    $('#tabPersonalInfo').removeClass('myPersonalInfoTabOnMouseOver');
                    $('#tabPersonalInfo').addClass('myPersonalInfoTab');
                }
            });
            $('#tabProducts').click(function () {
                selectedTab = 2;
                $('#tabPersonalInfo').removeClass('myPersonalInfoTabOnMouseOver');
                $('#tabPersonalInfo').addClass('myPersonalInfoTab');
                $('#tabProducts').addClass('myProductsTabOnMouseOver');
                $('#tabProducts').removeClass('myProductsTab');
                $('#myAccountMyPersonalInfoTab').hide();
                $('#myAccountMyProductsTab').show();
            });
            $('#tabProducts').mouseover(function () {
                $('#tabProducts').addClass('myProductsTabOnMouseOver');
                $('#tabProducts').removeClass('myProductsTab');
            });
            $('#tabProducts').mouseout(function () {
                if (selectedTab === 2) {
                    $('#tabProducts').addClass('myProductsTabOnMouseOver');
                    $('#tabProducts').removeClass('myProductsTab');
                }
                else {
                    $('#tabProducts').removeClass('myProductsTabOnMouseOver');
                    $('#tabProducts').addClass('myProductsTab');
                }
            });
        });
</script>
</asp:Content>
