<%@ Page Title="" Language="C#" MasterPageFile="AdminMaster.Master" AutoEventWireup="true"
    CodeBehind="ManageUser.aspx.cs" Inherits="Simplicity.Web.Admin.AdminDefault" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        function openAddUser() {
            $("#UserTab").dialog({
                width: 640,
                height: 540,
                title: 'Add New User Information',
                modal: true
            });
            $("#UserTab").dialog("open");
            $("#UserTab").parent().appendTo($("form:first"));
        }
        function confirmDelete(name) {
            return confirm("Are you certain to delete "+name+"?");
        }
        //function editUser(userId) {
        
        //    $("#UserEditTab").dialog({
        //        width: 360,
        //        height: 200,
        //        minHeight: 200,
        //        minWidth: 360,
        //        title: 'Edit User',
        //        modal: true
        //    });
        //    $("#UserEditTab").dialog("open");
        //    $("#UserEditTab").parent().appendTo($("form:first"));
        //    return false;
        //}
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" runat="server">
    <%--<div id="UserEditTab" style="display: none">
        <asp:HiddenField ID="SelectedUserValue" runat="server"/>
        <asp:RadioButtonList ID="EditCheckList" runat="server">
            <asp:ListItem Value="1">Change Information</asp:ListItem>
            <asp:ListItem Value="2">Change Password</asp:ListItem>
            <asp:ListItem Value="3">Change Existing Products</asp:ListItem>
            <asp:ListItem Value="4">Subscribe Products</asp:ListItem>
        </asp:RadioButtonList>
        <asp:Button runat="server" ID="btnEditListItem" Text="Select" OnClick="btnEditListItem_Click"/>
    </div>--%>
    <div id="UserTab" style="display: none">
        <div id="Emailrow" class="row">
            <div class="col1">
                <asp:Label ID="EmailLabel" runat="server">Email</asp:Label></div>
            <div class="col2">
                <div class="forgetErrorMsg">
                    <asp:TextBox runat="server" CssClass="login_field_big" MaxLength="60" ID="emailfield"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="emailfield"
                        ErrorMessage="* Email required" Display="Dynamic" ValidationGroup="PersonalInfoGroup"> 
                    </asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="emailfield"
                        ErrorMessage="* Enter Email." ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                        Display="Dynamic" ValidationGroup="PersonalInfoGroup">
                    </asp:RegularExpressionValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server" ControlToValidate="emailfield"
                        ErrorMessage=" Must be 8 characters" ValidationExpression=".{8,60}" Display="Dynamic"
                        ValidationGroup="PersonalInfoGroup">
                    </asp:RegularExpressionValidator>
                    <asp:Label runat="server" ID="emailLength" Visible="false"></asp:Label>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col1">
                <asp:Label ID="ConfirmEmailLabel" runat="server">Confirm Email</asp:Label></div>
            <div class="col2">
                <div class="forgetErrorMsg">
                    <asp:TextBox runat="server" CssClass="login_field_big" MaxLength="60" ID="confirmemailfield"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="confirmemailfield"
                        ErrorMessage="* Email required" Display="Dynamic" ValidationGroup="PersonalInfoGroup"> 
                    </asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="confirmemailfield"
                        ErrorMessage="* Enter Email." ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                        Display="Dynamic" ValidationGroup="PersonalInfoGroup">
                    </asp:RegularExpressionValidator>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col1">
                Password</div>
            <div class="col2">
                <div class="forgetErrorMsg">
                    <asp:TextBox TextMode="password" CssClass="login_field_big" MaxLength="50" ID="passwordfield"
                        runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="passwordfield"
                        ErrorMessage="* Password required" Display="Dynamic" ValidationGroup="PersonalInfoGroup"> 
                    </asp:RequiredFieldValidator>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col1">
                Confirm Password</div>
            <div class="col2">
                <div class="forgetErrorMsg">
                    <asp:TextBox TextMode="password" MaxLength="50" CssClass="login_field_big" ID="confirmpasswordfield"
                        runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="confirmpasswordfield"
                        ErrorMessage="* Password required" Display="Dynamic" ValidationGroup="PersonalInfoGroup"> 
                    </asp:RequiredFieldValidator>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col1">
                <asp:Label ID="lblForgotPasswordQuestion" runat="server" Text="Forgot Password Question"></asp:Label>
            </div>
            <div class="col2">
                <div class="forgetErrorMsg">
                    <asp:DropDownList ID="listForgotPasswordQuestion" runat="server">
                        <asp:ListItem Text="--- Choose a question ---" Value="#"></asp:ListItem>
                        <asp:ListItem Text="What was your childhood nickname?" Value="1"></asp:ListItem>
                        <asp:ListItem Text="In what city did you meet your spouse/significant other?" Value="2"></asp:ListItem>
                        <asp:ListItem Text="What is the name of your favorite childhood friend?" Value="3"></asp:ListItem>
                        <asp:ListItem Text="What is your oldest sibling’s birthday month and year? (e.g., January 1900)"
                            Value="4"></asp:ListItem>
                        <asp:ListItem Text="What is the middle name of your youngest child?" Value="5"></asp:ListItem>
                        <asp:ListItem Text="What is your oldest sibling's middle name?" Value="6"></asp:ListItem>
                        <asp:ListItem Text="What school did you attend in fifth year?" Value="7"></asp:ListItem>
                        <asp:ListItem Text="What was your childhood phone number including area code? (e.g., 000-000-0000)"
                            Value="8"></asp:ListItem>
                        <asp:ListItem Text="What was the name of your first pet?" Value="9"></asp:ListItem>
                        <asp:ListItem Text="In what city or town did your mother and father meet?" Value="10"></asp:ListItem>
                        <asp:ListItem Text="Where were you when you had your first kiss?" Value="11"></asp:ListItem>
                        <asp:ListItem Text="What is the first name of the boy or girl that you first kissed?"
                            Value="12"></asp:ListItem>
                        <asp:ListItem Text="What was the last name of your third grade teacher?" Value="13"></asp:ListItem>
                        <asp:ListItem Text="In what city does your nearest sibling live?" Value="14"></asp:ListItem>
                        <asp:ListItem Text="What is your youngest brother’s birthday month and year? (e.g., January 1900)"
                            Value="15"></asp:ListItem>
                        <asp:ListItem Text="What is your maternal grandmother's maiden name?" Value="16"></asp:ListItem>
                        <asp:ListItem Text="In what city or town was your first job?" Value="17"></asp:ListItem>
                        <asp:ListItem Text="What is the name of the place your wedding reception was held?"
                            Value="18"></asp:ListItem>
                        <asp:ListItem Text="What is the name of a college you applied to but didn't attend?"
                            Value="19"></asp:ListItem>
                        <asp:ListItem Text="Where were you when you first heard about 9/11?" Value="20"></asp:ListItem>
                        <asp:ListItem Text="What is your favourite Colour?" Value="21"></asp:ListItem>
                        <asp:ListItem Text="What is your favourite Flower?" Value="22"></asp:ListItem>
                        <asp:ListItem Text="What is your mothers Maiden Name?" Value="23"></asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" InitialValue="#" runat="server"
                        ErrorMessage="* Select Question" ControlToValidate="listForgotPasswordQuestion"
                        Display="Dynamic" ValidationGroup="PersonalInfoGroup"></asp:RequiredFieldValidator>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col1">
                <asp:Label ID="Label1" runat="server" Text="Forgot Password Answer"></asp:Label>
            </div>
            <div class="col2">
                <div class="forgetErrorMsg">
                    <asp:TextBox ID="txtForgotPasswordAnswer" MaxLength="50" CssClass="login_field_big"
                        runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="* Enter Forget Password Answer"
                        ControlToValidate="txtForgotPasswordAnswer" CssClass="errorMessage" Display="Dynamic"
                        ValidationGroup="PersonalInfoGroup"></asp:RequiredFieldValidator>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col1">
                <asp:Label ID="Label2" runat="server" Text="First Name"></asp:Label>
            </div>
            <div class="col2">
                <div class="forgetErrorMsg">
                    <asp:TextBox ID="firstname" CssClass="login_field_big" MaxLength="60" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="* Enter First Name"
                        ControlToValidate="firstname" CssClass="errorMessage" Display="Dynamic" ValidationGroup="PersonalInfoGroup"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="firstname"
                        ErrorMessage="* First Name have atleast 3 characters" ValidationExpression="[A-za-z]{3,60}"
                        Display="Dynamic" ValidationGroup="PersonalInfoGroup">
                    </asp:RegularExpressionValidator>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col1">
                <asp:Label ID="Label3" runat="server" Text="Surname"></asp:Label>
            </div>
            <div class="col2">
                <div class="forgetErrorMsg">
                    <asp:TextBox ID="surname" CssClass="login_field_big" MaxLength="60" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="* Enter Surname"
                        ControlToValidate="surname" CssClass="errorMessage" Display="Dynamic" ValidationGroup="PersonalInfoGroup"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" ControlToValidate="surname"
                        ErrorMessage="* Surname must have atleast 3 characters" ValidationExpression="[A-za-z]{3,60}"
                        Display="Dynamic" ValidationGroup="PersonalInfoGroup">
                    </asp:RegularExpressionValidator>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col1">
                <asp:Label ID="Label4" runat="server" Text="Company Name"></asp:Label>
            </div>
            <div class="col2">
                <div class="forgetErrorMsg">
                    <asp:TextBox ID="companyname" CssClass="login_field_big" MaxLength="100" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="* Enter Company Name"
                        ControlToValidate="companyname" CssClass="errorMessage" Display="Dynamic" ValidationGroup="PersonalInfoGroup"></asp:RequiredFieldValidator>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col1">
                <asp:Label ID="Label5" runat="server" Text="Job Title"></asp:Label>
            </div>
            <div class="col2">
                <asp:TextBox ID="jobtitle" CssClass="login_field_big" MaxLength="255" runat="server"></asp:TextBox>
            </div>
        </div>
        <div class="row">
            <div class="col1">
                <asp:Label ID="Label6" runat="server" Text="Address No."></asp:Label>
            </div>
            <div class="col2">
                <asp:TextBox ID="addressno" MaxLength="32" CssClass="login_field_big" runat="server"></asp:TextBox>
            </div>
        </div>
        <div class="row">
            <div class="col1">
                <asp:Label ID="Label7" runat="server" Text="Address Line 1"></asp:Label>
            </div>
            <div class="col2">
                <div class="forgetErrorMsg">
                    <asp:TextBox ID="addressline1" CssClass="login_field_big" MaxLength="60" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="addressline1"
                        ErrorMessage="* Address Line 1 required" Display="Dynamic" ValidationGroup="PersonalInfoGroup"> 
                    </asp:RequiredFieldValidator>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col1">
                <asp:Label ID="Label8" runat="server" Text="Address Line 2"></asp:Label>
            </div>
            <div class="col2">
                <asp:TextBox ID="addressline2" CssClass="login_field_big" MaxLength="60" runat="server"></asp:TextBox>
            </div>
        </div>
        <div class="row">
            <div class="col1">
                <asp:Label ID="Label9" runat="server" Text="Address Line 3"></asp:Label>
            </div>
            <div class="col2">
                <asp:TextBox ID="addressline3" CssClass="login_field_big" MaxLength="60" runat="server"></asp:TextBox>
            </div>
        </div>
        <div class="row">
            <div class="col1">
                <asp:Label ID="Label10" runat="server" Text="Address Line 4"></asp:Label>
            </div>
            <div class="col2">
                <asp:TextBox ID="addressline4" CssClass="login_field_big" MaxLength="60" runat="server"></asp:TextBox>
            </div>
        </div>
        <div class="row">
            <div class="col1">
                <asp:Label ID="Label11" runat="server" Text="Address Line 5"></asp:Label>
            </div>
            <div class="col2">
                <asp:TextBox ID="addressline5" CssClass="login_field_big" MaxLength="60" runat="server"></asp:TextBox>
            </div>
        </div>
        <div class="row">
            <div class="col1">
                <asp:Label ID="Label12" runat="server" Text="Postal Code"></asp:Label>
            </div>
            <div class="col2">
                <div class="forgetErrorMsg">
                    <asp:TextBox ID="postalcode" CssClass="login_field_big" MaxLength="9" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="* Enter Postal Code"
                        ControlToValidate="postalcode" CssClass="errorMessage" Display="Dynamic" ValidationGroup="PersonalInfoGroup"></asp:RequiredFieldValidator>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col1">
                <asp:Label ID="Label13" runat="server" Text="Town"></asp:Label>
            </div>
            <div class="col2">
                <asp:TextBox ID="town" CssClass="login_field_big" MaxLength="60" runat="server"></asp:TextBox>
            </div>
        </div>
        <div class="row">
            <div class="col1">
                <asp:Label ID="Label19" runat="server" Text="County"></asp:Label>
            </div>
            <div class="col2">
                <asp:TextBox ID="County" CssClass="login_field_big" MaxLength="60" runat="server"></asp:TextBox>
            </div>
        </div>
        <div class="row">
            <div class="col1">
                <asp:Label ID="Label14" runat="server" Text="Country"></asp:Label>
            </div>
            <div class="col2">
                <asp:TextBox ID="country" CssClass="login_field_big" MaxLength="60" runat="server"></asp:TextBox>
            </div>
        </div>
        <div class="row">
            <div class="col1">
                <asp:Label ID="Label15" runat="server" Text="Telephone 1"></asp:Label>
            </div>
            <div class="col2">
                <div class="forgetErrorMsg">
                    <asp:TextBox ID="telephone1" CssClass="login_field_big" MaxLength="30" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="telephone1"
                        ErrorMessage="* Telephone 1 must have atleast 5 digits" ValidationExpression="[\s\w]*[\w\s]*\d{5,30}[\s\w]*[\w\s]*"
                        Display="Dynamic" ValidationGroup="PersonalInfoGroup">
                    </asp:RegularExpressionValidator>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col1">
                <asp:Label ID="Label16" runat="server" Text="Telephone 2"></asp:Label>
            </div>
            <div class="col2">
                <div class="forgetErrorMsg">
                    <asp:TextBox ID="telephone2" CssClass="login_field_big" MaxLength="30" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="telephone2"
                        ErrorMessage="* Telephone 2 must have atleast 5 digits" ValidationExpression="[\s\w]*[\w\s]*\d{5,30}[\s\w]*[\w\s]*"
                        Display="Dynamic" ValidationGroup="PersonalInfoGroup">
                    </asp:RegularExpressionValidator>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col1">
                <asp:Label ID="Label18" runat="server" Text="Fax"></asp:Label>
            </div>
            <div class="col2">
                <div class="forgetErrorMsg">
                    <asp:TextBox ID="fax" CssClass="login_field_big" MaxLength="30" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="fax"
                        ErrorMessage="* Fax must have atleast 5 digits" ValidationExpression="[\s\w]*[\w\s]*\d{5,30}[\s\w]*[\w\s]*"
                        Display="Dynamic" ValidationGroup="PersonalInfoGroup">
                    </asp:RegularExpressionValidator>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col1">
                <asp:Label ID="Label17" runat="server" Text="Mobile"></asp:Label>
            </div>
            <div class="col2">
                <div class="forgetErrorMsg">
                    <asp:TextBox ID="mobile" CssClass="login_field_big" MaxLength="30" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="mobile"
                        ErrorMessage="* Mobile must have atleast 5 digits" ValidationExpression="[\s\w]*[\w\s]*\d{5,30}[\s\w]*[\w\s]*"
                        Display="Dynamic" ValidationGroup="PersonalInfoGroup">
                    </asp:RegularExpressionValidator>
                </div>
            </div>
        </div>
        <div class="row">
            <asp:CheckBox runat="server" ID="checkbox" Text="Please indicate if you would like to receives further updates for products"
                Checked="true" />
        </div>
        <div class="clearFloat">
        </div>
        <div class="myaccountinfoContinue">
            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="../images/btn_continue.jpg"
                Width="107" Height="37" OnClick="btnSave_Click" ValidationGroup="PersonalInfoGroup" />
        </div>
    </div>
    <div style="width: 95%; margin: auto;">
        <div style="padding-top:10px;">
            <h2>
                Manage Users Of Company <span><asp:Label ID="CompanyNameLabel" style="color:#808080" runat="server" Visible="false" Text=""></asp:Label> </span>
            </h2>
        </div>

        <div id="searchDiv" style="margin:20px;">
            <center>
                <div style="display:inline;margin-right:5px;">
                    <asp:TextBox runat="server" Height="20px" style="border-color:black;border:1px solid; border-radius:5px;" Width="300px" ID="SearchTextBox" />
                </div>
                <div style="display:inline;">
                    <asp:Button ID="searchButton" OnClick="SearchUser_ButtonClickEvent" Text="Search Users" runat="server" />
                </div>
                <div style="font-size:85%;color:#999999;position:relative;left:-50px;">Enter Text to perform search on User's Name, Email and User Type.</div>
            </center>
        </div>

        <div style="margin:30px 10px;">
            <div style="padding:20px 5px 20px 0;display:inline;" >
                <input type="button" value="Add User" onclick="openAddUser()" style="width:80px;height: 40px; font-weight: bold;"/>
            </div>
            <div style="padding:20px 5px 20px 0;display:inline;" >
                <asp:Button ID="SubscribeCompanyProducts" Text="Subscribe Product" runat="server" OnClick="SubscribeCompanyProducts_Click" style="width: 150px; height: 40px; font-weight: bold;" />
            </div>

            <div style="padding:20px 5px 20px 0;display:inline;" >
                <asp:Button ID="ChangeSubscribedProducts" Text="Change Subscribed Products" runat="server" Visible="false" OnClick="ChangeSubscribedProducts_Click" style="width: 300px; height: 40px; font-weight: bold;" />
            </div>
        </div>

        <asp:EntityDataSource ID="SimplicityDataSource" runat="server" ConnectionString="name=SimplicityEntities"
            DefaultContainerName="SimplicityEntities" EnableDelete="True" EnableFlattening="False"
            EnableInsert="True" EnableUpdate="True" EntitySetName="Users" EntityTypeFilter="User" AutoGenerateWhereClause="false" Where="@companyId IS NULL OR it.CompanyID==@companyId AND it.Enabled!=False AND it.Deleted!=True">
            <WhereParameters>
                <asp:QueryStringParameter DbType="Int32" QueryStringField="companyId" Name="companyId"/>
            </WhereParameters>
        </asp:EntityDataSource>
        <div style="padding-bottom:30px;">
            <asp:GridView ID="UserGrid" runat="server" PageSize="30" DataKeyNames="UserID" Style="width: 100%"
                DataSourceID="SimplicityDataSource" OnRowDeleting="UserGrid_RowDeleting" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False"
                OnRowCommand="UserGrid_RowCommand" >

                <Columns>
                    <asp:CommandField HeaderText="Delete User" HeaderStyle-Width="8%" ShowDeleteButton="True"></asp:CommandField>
                    <asp:TemplateField HeaderText="Edit User" InsertVisible="False">
                        <HeaderStyle Width="10%" Font-Bold="true" />
                        <ItemTemplate>
                            <center>
                                <asp:LinkButton ID="EditUser" runat="server" Text="Edit User" CommandName="EditUserDetails" CommandArgument='<%#Eval("UserID")%>' />
                            </center>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Change User Password" InsertVisible="False">
                        <HeaderStyle Width="10%" Font-Bold="true" />
                        <ItemTemplate>
                            <center>
                                <asp:LinkButton ID="ChangeUserPassword" runat="server" Text="Change Password" CommandName="ChangeUserPassword" CommandArgument='<%#Eval("UserID")%>' />
                            </center>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="FullName" HeaderText="Name" SortExpression="FullName">
                        <HeaderStyle Width="20%" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email">
                        <HeaderStyle Width="25%" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Type" HeaderText="User Type" SortExpression="Type">
                        <HeaderStyle Width="10%" />
                    </asp:BoundField>
                </Columns>
            </asp:GridView>
        </div>

        <%--<asp:Repeater ID="UserRepeater" runat="server" 
            DataSourceID="SimplicityDataSource" 
            onitemcommand="UserRepeater_ItemCommand" >
            <HeaderTemplate>
                <div style="width: 100%;">
                    <div class="floatLeft" style="width: 10%; padding: 1px; font-weight: bold">
                       <input type="button" value="Add User" onclick="openAddUser()" style="width:80px"/>
                    </div>
                    <!--<div class="floatLeft" style="width: 8%; padding: 1px; font-weight: bold">
                        &nbsp;
                    </div>-->
                    <div class="floatLeft" style="width: 15%; padding: 1px; font-weight: bold">
                        <div>
                            Name</div>
                    </div>
                    <div class="floatLeft" style="width: 30%; padding: 1px; font-weight: bold">
                        <div>
                            Email</div>
                    </div>
                    <div class="floatLeft" style="width: 15%; padding: 1px; font-weight: bold">
                        <div>
                            User Type</div>
                    </div>
                    <div style="clear: both">
                    </div>
                </div>
            </HeaderTemplate>
            <ItemTemplate>
                <div style="width: 100%;">
                    <div class="floatLeft" style="width: 10%; padding: 1px;">
                       <asp:Button style="width:80px" ID="btnEditUser" runat="server" Text="Edit" OnClientClick='<%# "javascript:return editUser(\""+Eval("UserID").ToString()+"\")"%>'/>
                    </div>
                    <!--<div class="floatLeft" style="width: 8%; padding: 1px;">
                       <asp:Button ID="btnDeleteUser" runat="server" Text="Delete" OnClientClick='<%# "javascript:return confirmDelete(\""+Eval("FullName").ToString()+"\")"%>' CommandName="Delete" CommandArgument='<%#Eval("UserID")%>'/>
                    </div>-->
                    <div class="floatLeft" style="width: 15%; padding: 1px">
                        <div>
                            <asp:Label ID="LabelFullName" runat="server" Text='<%#Eval("FullName")%>'></asp:Label></div>
                    </div>
                    <div class="floatLeft" style="width: 30%; padding: 1px">
                        <div>
                            <asp:Label ID="LabelEmail" runat="server" Text='<%#Eval("Email")%>'></asp:Label></div>
                    </div>
                    <div class="floatLeft" style="width: 15%; padding: 1px;">
                        <div>--%>
                            
                               <%-- <%String userType = "";%>
                                <% String currUserType = "Eval('Type')"; %>
                                
                                <% if (currUserType.CompareTo("COMPANY_ADMIN") == 0) %>
	                                <% userType = "Admin"; %>
                                <% if (currUserType.CompareTo("Admin") == 0)  %>
                                    <%userType = "Ultra Nova Admin";%>
                                <% else
                                    userType = "User";
                                    //Label lbl = (Label)UserRepeater.FindControl("Label20");
                                    //lbl.Text = userType;
                                %>--%>
                            <%--<asp:Label ID="Label20" runat="server" Text='<%# Eval("Type").ToString().Replace("_", " ")%>' ></asp:Label></div>
                    </div>
                    <div style="clear: both">
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>--%>
    </div>
</asp:Content>
