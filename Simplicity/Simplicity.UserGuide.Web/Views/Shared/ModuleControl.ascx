<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<dynamic>" %>
<%foreach(var item in ViewData.Model {%>
<li>
    <%= item.Name %>
    <%if(item.Module1.Count > 0){%>
        <ul>
            
        </ul>
    <%} %>
</li>

<%} %>
