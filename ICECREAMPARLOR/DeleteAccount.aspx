<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DeleteAccount.aspx.cs" Inherits="Admin_AdminDelete" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .delete-account-title {
            font-size: 24px;
            font-weight: bold;
            text-align: center;
        }
         .container {
              margin: 0 auto;
              padding: 20px;
              background-color: rgba(255, 255, 255, 0.9);
              border-radius: 10px;
              box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
              max-width: 1200px;
          }
        .delete-account-form {
            width: 50%;
            margin: 0 auto;
            border-collapse: collapse;
        }

        .delete-account-label {
            font-weight: bold;
        }

        .delete-account-input {
            width: 150px;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 4px;
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
        .delete-account-validation {
            color: red;
            font-size: 12px;
        }

        .btn-delete-account {
            margin-top: 20px;
        }
        .auto-style8 {
            color: red;
            font-size: small;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <div class="container"> <br /><br />
    <h1 class="delete-account-title">Delete Admin Account</h1>
    <br /><hr style="color: #000000" /><br /><br />
    <table class="delete-account-form">
        <tr>
            <td>         
                <asp:Label runat="server" AssociatedControlID="UserName" CssClass="delete-account-label">User name</asp:Label>
            </td>
            <td>
                <asp:TextBox runat="server" ID="UserName" CssClass="form-control delete-account-input" />
            </td>
            <td>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="UserName"  CssClass="auto-style8" ErrorMessage="The user name field is required." ForeColor="Red" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label runat="server" AssociatedControlID="Password" CssClass="delete-account-label">Password</asp:Label>
            </td>
            <td> 
                <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control delete-account-input" />
            </td>
            <td> 
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Password" CssClass="auto-style8" ErrorMessage="The password field is required." ForeColor="Red" />
            </td>
        </tr>
        <tr>
            <td colspan="3" align="center" id="tdbtn"> 
                <asp:Button runat="server" Text="Delete Account" CssClass="btn btn-default btn-delete-account" OnClick="Unnamed8_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="btnbacadhome" CssClass="btn" runat="server" Text="Back to Home Page" OnClick="btnbacadhome_Click" CausesValidation="False" />
            </td>
        </tr>
    </table>
       </div>
</asp:Content>
