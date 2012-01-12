<%@ Page Language="C#" MasterPageFile="~/Common/Community.master" AutoEventWireup="true"
    CodeBehind="Blogs.aspx.cs" Inherits="Simplicity.Web.Community.Blogs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolder" runat="server">
    <style type="text/css">
        h3.post-title, .comments h4, h3.post-title a
        {
            font: normal normal 22px Arial, Tahoma, Helvetica, FreeSans, sans-serif !important;
            margin: .75em 0 0;
            margin-top: 0.75em;
            margin-right: 0px;
            margin-bottom: 0px;
            margin-left: 0px;
        }
        h2.date-header
        {
            margin: 0 0 1em 0;
            font: normal bold 11px Arial, Tahoma, Helvetica, FreeSans, sans-serif;
            color: black;
            text-transform: uppercase;
        }
        
        a:link
        {
            text-decoration: none;
            color: #28B;
        }
        .post-body
        {
            font-size: 110%;
            line-height: 1.4;
            position: relative;
            font-family: Helvetica;
        }
        
        .post-footer
        {
            margin: 20px -2px 0;
            padding: 5px 10px;
            color: #666;
            background-color: #F9F9F9;
            border-bottom: 1px solid #EEE;
            line-height: 1.6;
            font-size: 90%;
        }
        
        div.link-more
        {
            border-right: #ececec outset;
            border-top: #ececec outset;
            border-left: #ececec outset;
            border-bottom: #ececec outset;
            border-top-width: medium;
            border-top-color: #FCFCFC;
            border-top-style: outset;
            border-right-width: medium;
            border-right-color: #FCFCFC;
            border-right-style: outset;
            border-bottom-width: medium;
            border-bottom-color: #FCFCFC;
            border-bottom-style: outset;
            border-left-width: medium;
            border-left-color: #FCFCFC;
            border-left-style: outset;
            text-align: center;
        }
        
        div.link-more a
        {
            font: normal normal 20px Arial, Tahoma, Helvetica, FreeSans, sans-serif;
            min-width: 600px;
            min-height: 30px;
            vertical-align: middle;
            padding: 10px;
        }
        
        
        
        body
        {
            font: normal normal 12px Arial, Tahoma, Helvetica, FreeSans, sans-serif;
            color: #222;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <div style="float: left; width: 650px">
        <div id="secnavbar" class="floatLeft">
            <div id="icon1">
                <h2 id="ourSolution">
                    Blogs</h2>
            </div>
            <div id="nsecnavbar">
                <div>
                    <asp:Image ID="Image6" ImageUrl="~/Images/subheading_bar.jpg" Height="21" runat="server" />
                </div>
            </div>
        </div>
        <div id="contentsDiv" class="communitytext" style="min-height:450px;">
            <asp:Label ID="TextBox1" runat="server" Style="padding: 5px; margin-right: 20px"></asp:Label>
            <%--            <div id="links" style="overflow: hidden">
                <div class="linktext" style="max-width: 500px; height: 450px">
                                       <iframe width="630px" height="425px" id="imagesFrame" style="border: 0;" frameborder="0" onload="loadBlog()"
                        src="http://amierhaider.blogspot.com/"></iframe>
                 </div>
                        </div>

        
            --%>

            <div class='link-more'>
                <asp:HyperLink ID="HyperLinkMore" Target="_blank" runat="server" NavigateUrl="http://simplicity4business.blogspot.com/"
                    Visible="false">More</asp:HyperLink>
            </div>
        </div>
    </div>
    <script type="text/javascript">
        //        $(document).ready(function () {
        //            $('#imagesFrame > fauxcolumn-outer fauxcolumn-left-outer').hide();
        //            $('#imagesFrame .fauxcolumn-outer fauxcolumn-right-outer').hide();
        //        });

        //        function loadBlog() {
        //            $('#imagesFrame div.fauxcolumn-left-outer').hide();
        //            $('#imagesFrame div.fauxcolumn-right-outer').hide();
        //        }


    </script>
</asp:Content>
