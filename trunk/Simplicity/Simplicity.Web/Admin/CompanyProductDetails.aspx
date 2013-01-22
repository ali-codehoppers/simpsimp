<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="CompanyProductDetails.aspx.cs" Inherits="Simplicity.Web.Admin.CompanyProductDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .productDateColumn {
            width:200px;
            display:inline;
            float:left;
            border:1px solid;
            padding-bottom:10px;
            padding-left:10px;
        }
    </style>
    <script type="text/javascript">
        function closeDialog() {
            $("#activeUsersDialog").dialog("close");
        }

        function prepareSelectedUserList() {
            $("#activeUsersDialog").dialog('close');
            var checkboxes = $("#activeUsersDialog").find('input[type=checkbox]');
            var i;
            var selectedUsersValue = "";
            for (i = 0; i < checkboxes.length; ++i) {
                if ($(checkboxes[i]).attr('checked')) {
                    selectedUsersValue = selectedUsersValue + $(checkboxes[i]).val() + ",";
                }
            }
            $("#selectedUsersToDelete").attr('value', selectedUsersValue);
            $("#activeUsersDialog").parent().appendTo($("form:first"));
            return true;
        }
    </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" runat="server">
    <div style="padding:15px;padding-bottom:38%;">
        <div style="padding-bottom:20px;">
            <h2>
                Edit Subscription detail of product <span><asp:Label ID="ProductNameLabel" style="color:#808080" runat="server" Text="" /></span> subscribed by <span><asp:Label ID="CompanyNameLabel" style="color:#808080" runat="server" Text=""></asp:Label> </span>
            </h2>
        </div>
        <div class="productDateColumn">
            <div>
                <h2>
                    Renewal Date
                </h2>
            </div>
            <div style="padding-top: 10px;width:180px;">
                <asp:TextBox runat="server" CssClass="productDate" ID="companyProductDate" Text=""></asp:TextBox>
            </div>
        </div>
        <div class="productDateColumn">
            <div>
                <h2>
                    Licenses Allocated
                </h2>
            </div>
            <div style="padding-top: 10px;width:180px;">
                <asp:TextBox runat="server" ID="LicenseNum" Text=""></asp:TextBox>
            </div>
        </div>
        <div style="clear:both;"></div>
        <div>
            <asp:Button Text="Update" ID="updateCompanyProductDetials" runat="server" OnClick="updateCompanyProductDetials_Click" />
        </div>
    </div>
    <div id="activeUsersDialog">
        <asp:HiddenField ID="selectedUsersToDelete" ClientIDMode="Static" Value="" runat="server" />
        <div>
            <p>No. of active users are greater than the number of Licenses. Please select the users from below list which you want to disable.</p>
        </div>
        <div>
            <asp:CheckBoxList runat="server" ID="activeUsersCheckBoxList" DataTextField="Email" DataValueField="UserID">
            </asp:CheckBoxList>
        </div>
        <div>
            <asp:Button runat="server" ID="okaySelectedUser" Text="Okay" Width="50px" OnClick="deleteSelectedUser_Click" OnClientClick="return prepareSelectedUserList();" />
            <asp:Button runat="server" ID="Cancel" Text="Cancel" Width="50px" OnClientClick="return closeDialog();" />
        </div>

    </div>

    <script type="text/javascript">
        $(".productDate").datepicker({ dateFormat: "dd/mm/yy" });
    
        var dialogOpts = {
            title: "Enable Or Disable Users",
            autoOpen: false,
            height: 300,
            width: 725,
            draggable: false,
            resizable: false,
        };

        $("#activeUsersDialog").dialog(dialogOpts);

        function showDimensionDialog() {
            $("#activeUsersDialog").dialog("open");
        }

    </script>
</asp:Content>