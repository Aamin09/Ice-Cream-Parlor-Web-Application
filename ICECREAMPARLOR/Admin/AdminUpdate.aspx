<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AdminUpdate.aspx.cs" Inherits="Admin_AdminUpdate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        /* Define the styles */
        .auto-style8 {
            height: 50px;
        }
        
        .auto-style9 {
            height: 46px;
        }
         .container {
              margin: 0 auto;
              padding: 20px;
              background-color: rgba(255, 255, 255, 0.9);
              border-radius: 10px;
              box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
              max-width: 1200px;
          }  
         .btn {
             background-color: #007bff;
             color: #fff;
             text-align:center;
             padding: 5px 10px;
             border: none;
             border-radius: 4px;
             cursor: pointer;
         }
        .auto-style10 {
            height: 50px;
            width: 239px;
        }
        .auto-style11 {
            height: 50px;
            width: 190px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <div class="container"> <br /><br />
    <center>
        <h1><em>Update Admin Account</em></h1>
    </center>
    <br /><hr style="color: #000000" /><br /><br />
    <table style="width: 80%;" align="center">
        <tr>
            <td class="auto-style10">         
                <strong>         
                <asp:Label runat="server" AssociatedControlID="UserName" CssClass="col-md-2 control-label">User name</asp:Label>
                </strong>
            </td>
            <td class="auto-style11">
                <asp:TextBox runat="server" ID="UserName" CssClass="form-control" Width="170px" Height="22px" />
            </td>
            <td class="auto-style8">
                <asp:RequiredFieldValidator runat="server" ControlToValidate="UserName" CssClass="text-danger" ErrorMessage="The user name field is required." ForeColor="Red" />
            </td>
        </tr>
        <tr>
            <td class="auto-style10">
                <strong>
                <asp:Label runat="server" AssociatedControlID="Password" CssClass="col-md-2 control-label">Password</asp:Label>
                </strong>
            </td>
            <td class="auto-style11"> 
                <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" Width="170px" Height="22px" />
            </td>
            <td class="auto-style8"> 
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Password" CssClass="text-danger" ErrorMessage="The password field is required." ForeColor="Red" />
            </td>
        </tr>
        <tr>
            <td class="auto-style10"> 
                <strong> 
                <asp:Label runat="server" AssociatedControlID="ConfirmPassword" CssClass="col-md-2 control-label">Confirm password</asp:Label>
                </strong>
            </td>
            <td class="auto-style11">
                <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" CssClass="form-control" Width="170px" Height="22px" />
            </td>
            <td class="auto-style8">
                <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword" CssClass="text-danger" Display="Dynamic" ErrorMessage="The confirm password field is required." ForeColor="Red" />
                <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword" CssClass="text-danger" Display="Dynamic" ErrorMessage="The password and confirmation password do not match." ForeColor="Red" />
            </td>
        </tr>
        <tr>
            <td class="auto-style10">
                <strong>
                <asp:Label ID="Label1" runat="server" Text="Email"></asp:Label>
                </strong>
            </td>
            <td class="auto-style11">
                <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" Width="170px" Height="22px"></asp:TextBox>
            </td>
            <td class="auto-style8">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="An email field is required." ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="An email must be in valid format." ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style10">
                <strong>
                <asp:Label ID="Label2" runat="server" Text="Mobile Number"></asp:Label>
                </strong>
            </td>
            <td class="auto-style11">
                <asp:TextBox ID="txtMobiile" runat="server" TextMode="Phone" Width="170px" Height="22px"></asp:TextBox>
            </td>
            <td class="auto-style8">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtMobiile" ErrorMessage="The mobile number field is required." ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td colspan="3" class="auto-style9"> 
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;      
                <asp:Button runat="server" Text="Update" CssClass="btn btn-default" OnClick="Unnamed8_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnbacadhome" runat="server" Text="Back to Admin Home" OnClick="btnbacadhome_Click" CausesValidation="False" CssClass="btn" />
            </td>
        </tr>
    </table>
       </div>
</asp:Content>
