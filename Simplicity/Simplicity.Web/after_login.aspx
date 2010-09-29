﻿<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Simplicity</title>
<link href="simplicity_css.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="jquery-1.4.2.min.js"></script>

<!-- include Cycle plugin -->
<script type="text/javascript" src="jquery.cycle.all.min.js"></script>

<script language=javascript type='text/javascript'>

var selectedTab = 1;

function showHideElementById(status, elementId){
	var element = document.getElementById(elementId);
	if(element != null){
		if(status == 1){
			element.style.visibility = "visible";
			element.style.display = "";
		}
		else{
			element.style.visibility = "hidden";
			element.style.display = "none";
		}
	}
}

</script> 

<body>
<div id="container">
	<div id="header">
		<div>
			<div class="headerLinksButton"><a href="#"><img src="images/btn_go.jpg" style="margin-bottom:1px;" alt="" width="25" height="24" border="0" /></a></div>	
			<div class="headerTextField"><input name="textfield23" type="text" class="search_field" id="textfield23" /></div>	
			<div class="headerLinks"><a href="#">Contact Us</a></div>	
			<div class="headerLinksSeparator">|</div>	
			<div class="headerLinks"><a href="#">Simplicity Support</a></div>	
			<div class="headerLinksSeparator">|</div>	
			<div class="headerLinks"><a href="#">FAQs</a></div>	
			<div class="headerLinksSeparator">|</div>	
			<div class="headerLinks"><a href="#">Sign Up/Login</a></div>	
			<div class="headerLinksSeparator">|</div>	
			<div class="headerLinks"><a href="#">Trolley</a></div>	
			<div class="headerLinksSeparator">|</div>	
			<div class="headerLinks"><a href="#">Wish List</a></div>	
			<div style="float:right;"><img src="images/icon_shopping.jpg" alt=""/></div>
			<div class="clearFloat"></div>
		</div>
		<div style="padding-top:50px; ">
			<div class="floatRight"><a href="#"><div class="navBar" style="width:105px;" onmouseover="this.className='navBarHover'" onmouseout="this.className='navBar'" >Community</div></a></div>
			<div class="floatRight"><a href="#"><div class="navBar" style="width:108px;" onmouseover="this.className='navBarHover'" onmouseout="this.className='navBar'" >Services</div></a></div>
			<div class="floatRight"><a href="#"><div class="navBar" style="width:111px;" onmouseover="this.className='navBarHover'" onmouseout="this.className='navBar'" >Company</div></a></div>
			<div class="floatRight"><a href="#"><div class="navBar" style="width:110px;" onmouseover="this.className='navBarHover'" onmouseout="this.className='navBar'" >Solutions</div></a></div>
			<div class="floatRight"><a href="#"><div class="navBar" style="width:109px;" onmouseover="this.className='navBarHover'" onmouseout="this.className='navBar'" >Products</div></a></div>
			<div class="floatRight"><a href="#"><div class="navBar" style="width:108px;" onmouseover="this.className='navBarHover'" onmouseout="this.className='navBar'" >Home</div></a></div>
			<div class="clearFloat"></div>
		</div>
	</div>
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
			<div class="floatLeft" style="width:117px; height:36px; background: url(images/login_btm_line.jpg) bottom left no-repeat;">&nbsp;</div>
			<div class="clearFloat"></div>
			<div id="myAccountMyPersonalInfoTab">
				<div class="row">
					<div class="col1">Email</div>
					<div class="col2"><input name="textfield" type="text" class="login_field_big" id="textfield" /></div>				
				</div>				
				<div class="row">
					<div class="col1">Confirm Email</div>
					<div class="col2"><input name="textfield" type="text" class="login_field_big" id="textfield" /></div>				
				</div>				
			</div>
			<div id="myAccountMyProductsTab">
				asd
			</div>
		</div>
	</div>
	<div id="footer">
		Copyright©2010 Simplicity. All Rights Reserved.<br>
		<a href="#" class="bold_13_white">Home&nbsp;</a>
		&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp; 
		<a href="#" class="bold_13_white">Products</a>
		&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp; 
		<a href="#" class="bold_13_white">Solutions</a>
		&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp; 
		<a href="#" class="bold_13_white">Company</a>
		&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp; 
		<a href="#" class="bold_13_white">Services</a>
		&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp; 
		<a href="#" class="bold_13_white">Community</a>
		&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp; 
		<a href="#" class="bold_13_white">Contact Us</a>
		&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp; 
		<a href="#" class="bold_13_white">FAQs</a>
	</div>
</div>
</body>


</html>


