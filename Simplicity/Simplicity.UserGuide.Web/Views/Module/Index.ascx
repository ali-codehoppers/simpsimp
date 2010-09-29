<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<IEnumerable<Simplicity.Data.Module>>" %>

<% foreach (var item in Model) { %>
    
    <div><a href="javascript:loadContents(<%: item.ModuleID %>);"><%: item.Name%></a></div>
    
<% } %>


