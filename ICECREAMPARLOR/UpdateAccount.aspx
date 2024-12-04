<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="UpdateAccount.aspx.cs" Inherits="Admin_AdminUpdate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .update-account-title {
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
        .update-account-form {
            width: 80%;
            margin: 0 auto;
            border-collapse: collapse;
        }

        .update-account-label {
            font-weight: bold;
        }

        .update-account-input {
            width: 150px;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        .update-account-validation {
            color: red;
            font-size: 12px;
        }

        .btn-update-account {
            margin-top: 20px;
        }
        .auto-style8 {
            font-size: small;
        }
        .btn {
            background-color: #007bff;
            color: #fff;
            text-align: center;
            padding: 5px 10px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        .auto-style9 {
            color: red;
            font-size: small;
        }
        .auto-style10 {
            width: 197px;
        }
        .auto-style11 {
            width: 236px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <div class="container"> <br /><br />
    <h1 class="update-account-title">Update Account</h1>
    <br /><hr style="color: #000000" /><br /><br />
    <table class="update-account-form">
        <tr>
            <td class="auto-style10">         
                <asp:Label runat="server" AssociatedControlID="UserName" CssClass="col-md-2 control-label update-account-label">User name</asp:Label>
            </td>
            <td class="auto-style11">
                <asp:TextBox runat="server" ID="UserName" CssClass="form-control update-account-input" Width="194px" />
            </td>
            <td>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="UserName" CssClass="auto-style9" ErrorMessage="The user name field is required." ForeColor="Red" />
            </td>
        </tr>
        <tr>
            <td class="auto-style10">
                <asp:Label runat="server" AssociatedControlID="Password" CssClass="col-md-2 control-label update-account-label">Password</asp:Label>
            </td>
            <td class="auto-style11"> 
                <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control update-account-input" Width="194px" />
            </td>
            <td> 
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Password" CssClass="auto-style9" ErrorMessage="The password field is required." ForeColor="Red" />
            </td>
        </tr>
        <tr>
            <td class="auto-style10"> 
                <asp:Label runat="server" AssociatedControlID="ConfirmPassword" CssClass="col-md-2 control-label update-account-label">Confirm password</asp:Label>
            </td>
            <td class="auto-style11">
                <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" CssClass="form-control update-account-input" Width="194px" />
            </td>
            <td>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword" CssClass="auto-style9" Display="Dynamic" ErrorMessage="The confirm password field is required." ForeColor="Red" />
                &nbsp;&nbsp;&nbsp;&nbsp;<asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword" CssClass="auto-style9" Display="Dynamic" ErrorMessage="The password and confirmation password do not match." ForeColor="Red" />
            </td>
        </tr>
        <tr>
            <td class="auto-style10">
                <strong>
                <asp:Label ID="Label1" runat="server" Text="Email"></asp:Label>
                </strong>
            </td>
            <td class="auto-style11">
                <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" CssClass="update-account-input" Width="194px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="An email field is required." ForeColor="Red" CssClass="auto-style8"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="An email must be in valid format." ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red" CssClass="auto-style8"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style10">
                <strong>
                <asp:Label ID="Label2" runat="server" Text="Mobile Number"></asp:Label>
                </strong>
            </td>
            <td class="auto-style11">
                <asp:TextBox ID="txtMobiile" runat="server" TextMode="Phone" CssClass="update-account-input" Width="194px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtMobiile" ErrorMessage="The mobile number field is required." ForeColor="Red" CssClass="auto-style8"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td colspan="3" class="auto-style9" align="center"> 
                <asp:Button runat="server" Text="Update " CssClass="btn btn-default btn-update-account" OnClick="Unnamed8_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnbacadhome" runat="server" Text="Back to Home Page" CssClass="btn" OnClick="btnbacadhome_Click" CausesValidation="False" />
            </td>
        </tr>
    </table>
    </div>
</asp:Content>
