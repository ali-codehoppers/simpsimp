<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<Simplicity.Data.Product>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Index
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="HeadContent" runat="server">
    <script src="../../Scripts/jquery-1.4.1.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        function loadModules(productId) {
            alert(productId);         
            $.post("/Module/Index/" + productId, function (data) {
                $("#modules").html(data);
            });
        }
        function loadContents(moduleId) {            
            $.post("/Module/Details/" + moduleId, function (data) {
                $("#contents").html(data);
            });
        }
    </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div id="products">

    <% foreach (var item in Model) { %>
        <div style="float:left;width:150px;margin-left:20px;margin-right:20px;">
            <a onclick='javascript:loadModules(<%: item.ProductID%>)'><%: item.Name%></a>
        </div>        
    
    <% } %>

        <div style="clear:both"/>
    </div>
    <div style="margin-top:50px;height:600px">
        <div id="modules" style="float:left;width:250px">Menu</div>
        <div id="contents" style="float:left">Contents</div>
        <div style="clear:both"/>
    </div>    

</asp:Content>

