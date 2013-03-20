<%@ Page Title="" Language="C#" MasterPageFile="~/Common/Main.Master" AutoEventWireup="true"
    CodeBehind="Support.aspx.cs" Inherits="eForms.Web.Support" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" runat="server">  

    <div id="supportHeader">
        <h2><span style="color: #666666;">SIMPLICITY</span> SUPPORT</h2>
    </div>
    <div>
        <asp:Image ID="Image1" ImageUrl="~/Images/subheading_bar.jpg" Height="21" runat="server" />
    </div>
        
    <div style="padding-left:50px; height:200px;">
          <p>Simplicity For Business pride themselves on our  Customer Support and have a dedicated supporting team, who are  fully trained and experience in each of our solutions <br />
  </p>
<h3>Customer Support Access</h3>
          <p>Your query will be dealt with by one of our dedicated  support team, Monday to Friday from 9.30-17.30:          </p>
          <p>If we are unable to resolve your support query over the  phone or by email, we can use web technology to access your PC and system so we  can see the problem for ourselves and respond accordingly.  <br />
          </p>
          <p>Note:- To enable us to see the problem we will need to access  your screen, so before you call, please minimize or close an information that is  private. </p>
          <p>For support
            <asp:HyperLink style="color:Blue" runat="server" ID="HyperLink1" NavigateUrl="https://secure.logmeinrescue.com/Customer/Code.aspx"
            Target="_blank">click here</asp:HyperLink>
          </p>
    </div>
<table width="1408" border="0">
          <tr>
            <th width="1402" scope="col">&nbsp;</th>
          </tr>
        </table>

       
</asp:Content>
