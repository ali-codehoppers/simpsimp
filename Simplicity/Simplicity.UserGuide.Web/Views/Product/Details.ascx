<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<Simplicity.Data.Product>" %>
    <% foreach (var item in Model.Modules){
           if (item.ParentModuleID.HasValue == false)
           {%>
        <div><a href="javascript:loadContents(<%: item.ModuleID %>);"><%: item.Name%></a></div>
        <%foreach (var item2 in item.Modules1)
          { %>
            <div><a href="javascript:loadContents(<%: item2.ModuleID %>);"><%: item2.Name%></a></div>      
        <%}%>
    <%}
       } %>
   

