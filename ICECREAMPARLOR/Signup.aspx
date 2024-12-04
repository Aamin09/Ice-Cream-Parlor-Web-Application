<%@ Page Title="Sign-Up" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Signup.aspx.cs" Inherits="Signup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .signup-title {
            font-size: 24px;
            font-weight: bold;
            margin-bottom: 20px;
        }

         .container {
              margin: 0 auto;
              padding: 20px;
              background-color: rgba(255, 255, 255, 0.9);
              border-radius: 10px;
              box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
              max-width: 1200px;
          }
        .signup-form {
            width: 80%;
            margin: 0 auto;
            border-collapse: collapse;
        }

        .signup-label {
            font-weight: bold;
        }
        /* Button style */
        .btn {
            background-color: #007bff;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        
        .signup-input {
            width: 100%;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        .signup-validation {
            color: red;
            font-size: 12px;
        }

        .text-danger {
            color: red;
        }
        .auto-style8 {
            width: 190px;
        }
        .auto-style9 {
            width: 190px;
            height: 36px;
        }
        .auto-style10 {
            height: 36px;
        }
        .auto-style11 {
            font-size: medium;
        }
        .auto-style12 {
            color: red;
            font-size: medium;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <div class="container">  <h2 class="signup-title" align="center"><%: Title %></h2>
    <p class="text-danger" align="center">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>
    <hr style="color: #000000" /><br />

    <table class="signup-form">
        <tr>
            <td class="auto-style8">
                <asp:Label runat="server" AssociatedControlID="UserName" CssClass="signup-label">User name</asp:Label>
            </td>
            <td>
                <asp:TextBox runat="server" ID="UserName" CssClass="form-control signup-input" />
            </td>
            <td>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="UserName"
                    CssClass="auto-style12" ErrorMessage="The user name field is required." ForeColor="Red" Font-Size="12pt" />
            </td>
        </tr>
        <tr>
            <td class="auto-style8">
                <asp:Label runat="server" AssociatedControlID="Password" CssClass="signup-label">Password</asp:Label>
            </td>
            <td>
                <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control signup-input" />
            </td>
            <td>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Password"
                    CssClass="auto-style12" ErrorMessage="The password field is required." ForeColor="Red" Font-Size="12pt" />
            </td>
        </tr>
        <tr>
            <td class="auto-style9">
                <asp:Label runat="server" AssociatedControlID="ConfirmPassword" CssClass="signup-label">Confirm password</asp:Label>
            </td>
            <td class="auto-style10">
                <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" CssClass="form-control signup-input" />
            </td>
            <td class="auto-style10">
                <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword"
                    CssClass="auto-style12" ErrorMessage="The confirm password field is required." ForeColor="Red" Font-Size="12pt" />
                <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword"
                    CssClass="auto-style12" ErrorMessage="The password and confirmation password do not match." ForeColor="Red" Font-Size="12pt" />
            </td>
        </tr>
        <tr>
            <td class="auto-style8">
                <strong>
                <asp:Label ID="Label1" runat="server" Text="Email"></asp:Label>
                </strong>
            </td>
            <td>
                <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" CssClass="form-control signup-input" style="margin-right: 216px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="An email field is required." ForeColor="Red" CssClass="auto-style11" Font-Size="12pt"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="An email must be in valid format." ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red" CssClass="auto-style11" Font-Size="12pt"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">
                <strong>
                <asp:Label ID="Label2" runat="server" Text="Mobile Number"></asp:Label>
                </strong>
            </td>
            <td>
                <asp:TextBox ID="txtMobiile" runat="server" TextMode="Phone" CssClass="form-control signup-input"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtMobiile" ErrorMessage="The mobile number field is required." ForeColor="Red" CssClass="auto-style11" Font-Size="12pt"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td colspan="3" id="bsign">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button runat="server" Text="Sign Up" CssClass="btn btn-default" OnClick="Unnamed9_Click" />
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:ValidationSummary runat="server" CssClass="text-danger" ID="ValidationSummary1" ForeColor="Red" />
            </td>
        </tr>
    </table>
      </div>
</asp:Content>
