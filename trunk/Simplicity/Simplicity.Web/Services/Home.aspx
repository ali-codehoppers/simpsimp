<%@ Page Title="" Language="C#" MasterPageFile="~/Common/LeftMenu.master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Simplicity.Web.Services.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
            <div id="subdirectory" class="bottom_border">
                <a href="#" class="login">Products</a> &gt;&gt; <a href="#" class="login">Simplicity
                    H&amp;S Live</a>
            </div>
            <div id="secnavbar" class="floatLeft">
                <div id="icon1" class="floatLeft">
                <h2>
                    Services<br />                   
                </h2>                    
                </div>
                <div id="nsecnavbar">
                    <div id="priceicon" class="floatRight">
                        <a href="javascript:populateContents('Development.aspx','contentsDiv')" class="icon_link">
                        <asp:Image ID="Image4" ImageUrl="~/Images/icon_price.jpg" alt="" class="imgdim" runat="server"/><br />
                        Development</a>
                    </div>
                    
                    <div id="siteicon" class="floatRight">                        
                        <a href="javascript:populateContents('Consultancy.aspx','contentsDiv')" class="icon_link">
                            <asp:Image ID="Image2" ImageUrl="~/Images/icon_safety.jpg" alt="" class="imgdim" runat="server"/><br />
                            Consultancy
                        </a>
                    </div>
                    <div id="docicon" class="floatRight">
                        <a href="javascript:populateContents('ProjectManagement.aspx','contentsDiv')" class="icon_link">
                            <asp:Image ID="Image3" ImageUrl="~/Images/icon_documentation.jpg" alt="" class="imgdim" runat="server"/><br />
                            Project Management
                        </a>
                    </div>
                    <div id="homeicon" class="floatRight">                        
                        <a href="javascript:populateContents('Training.aspx','contentsDiv')" class="icon_link">
                        <asp:Image ID="Image1" ImageUrl="~/Images/icon_home_hns.jpg" width="38" height="30" runat="server"/><br />Training</a>
                    </div>
                    <div>
                        <asp:Image ID="Image6" ImageUrl="~/Images/subheading_bar.jpg" height="21" runat="server"/>
                    </div>
                </div>
            </div>
<div style="float:left;width:650px;" id="contentsDiv">
    Training contents go here... 
</div>
</asp:Content>
