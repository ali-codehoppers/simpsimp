<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UserProductMapping.ascx.cs" Inherits="Simplicity.Web.Common.Controls.UserProductMapping" %>

    <asp:Table ID="UserProdMapTable" ClientIDMode="Static" Visible="true" runat="server"></asp:Table>
    
    <div ID="UserProdMappingImageButtonId" runat="server" style="padding-top:10px; padding-bottom:20px; padding-left:230px;">
        <asp:ImageButton ID="UserProductMapDetailUpdate" OnClientClick="updateUserProdMapping()" OnClick="UserProductMapDetailUpdate_Click" runat="server" ImageUrl="../../images/btn_continue.jpg"
                            Width="107" Height="37"  />
    </div>

    <asp:HiddenField ID="UsrProdNewMapValues" ClientIDMode="Static" runat="server" />

    <script type="text/javascript">
        $(document).ready(function () {

            $("#<%=UserProdMappingImageButtonId.ClientID%>").css("padding-left", $("#<%=(UserProdMapTable.ClientID)%>").width()/2-50);
            //var usersGroupByProduct = new Object();
            //var productTableHeaders = $("#<%=UserProdMapTable.ClientID%> tr th");
            //$(productTableHeaders).each(function (index, products) {
            //    $("#UsrProdNewMapValues").val($(productId).attr("id") + "," + $("#UsrProdNewMapValues").val());
            //});
            //.attr("productId")

            //$("")
            $("#<%=UserProdMapTable.ClientID%> tr td").click(function () {
                var cssClasses = $(this).attr("class").split();
                var productId = "";
                if (cssClasses.length > 1)
                    productId = cssClasses[1];
                else
                    productId = cssClasses[0];
                var selectedUsersOfSameProductCount = $("#<%=UserProdMapTable.ClientID%> tr td.UserProdMappingTable-AssignedProd."+productId).length;
                var productTableHeaders = $("#<%=UserProdMapTable.ClientID%> tr th");
                var licences = 0;
                $(productTableHeaders).each(function (index, products) {
                    if($(products).attr("productId") == productId){
                        licences = parseInt($(products).attr("licences"));
                    }
                });

                if ($(this).hasClass('UserProdMappingTable-AssignedProd')) {
                    $(this).removeClass('UserProdMappingTable-AssignedProd');
                }
                else {
                    if (selectedUsersOfSameProductCount < licences) {
                        $(this).addClass('UserProdMappingTable-AssignedProd');
                    }
                    else {
                        alert("You do not have enough no. of licences to add this user.");
                    }
                }
            });

        });

        function updateUserProdMapping() {
            $("#UsrProdNewMapValues").val("");
            var usrProdIds = $("#<%=UserProdMapTable.ClientID%> tr td.UserProdMappingTable-AssignedProd");
            $(usrProdIds).each(function (index, selectedUsers) {
                $("#UsrProdNewMapValues").val($(selectedUsers).attr("id") + "," + $("#UsrProdNewMapValues").val());
            });
        }

    </script>