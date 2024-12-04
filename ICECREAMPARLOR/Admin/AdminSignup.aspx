<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AdminSignup.aspx.cs" Inherits="Admin_AdminSignup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        /* Define the styles */
        .form-label {
            height: 47px;
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
        .form-textbox {
            height: 50px;
        }
        .auto-style8 {
            height: 47px;
            width: 159px;
        }
        .auto-style9 {
            height: 50px;
            width: 159px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <div class="container" ><br /><br />
    <center>
        <h1><em>Admin Sign-Up</em></h1>
        <p class="text-danger">
            <asp:Literal runat="server" ID="ErrorMessage" />
        </p>

        <div class="form-horizontal">
            <h4>Create a new account.</h4>
        </div>
    </center>
    <hr style="color: #000000" /><br /><br />
    <table style="width: 80%;" align="center">
        <tr>
            <td class="auto-style8">
                <strong>
                <asp:Label runat="server" AssociatedControlID="UserName" CssClass="col-md-2 control-label">User name</asp:Label>
                </strong>
            </td>
            <td class="form-textbox">
                <asp:TextBox runat="server" ID="UserName" CssClass="form-control" Width="180px" Height="22px" />
            </td>
            <td class="form-textbox">
                <asp:RequiredFieldValidator runat="server" ControlToValidate="UserName" CssClass="text-danger" ErrorMessage="The user name field is required." ForeColor="Red" />
            </td>
        </tr>
        <tr>
            <td class="auto-style9">
                <strong>
                <asp:Label runat="server" AssociatedControlID="Password" CssClass="col-md-2 control-label">Password</asp:Label>
                </strong>
            </td>
            <td class="form-textbox">
                <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" Width="180px" Height="22px" />
            </td>
            <td class="form-textbox">
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Password" CssClass="text-danger" ErrorMessage="The password field is required." ForeColor="Red" />
            </td>
        </tr>
        <tr>
            <td class="auto-style8">
                <strong>
                <asp:Label runat="server" AssociatedControlID="ConfirmPassword" CssClass="col-md-2 control-label">Confirm password</asp:Label>
                </strong>
            </td>
            <td class="form-textbox">
                <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" CssClass="form-control" Width="180px" Height="22px" />
            </td>
            <td class="form-textbox">
                <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword" CssClass="text-danger" Display="Dynamic" ErrorMessage="The confirm password field is required." ForeColor="Red" />
                <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword" CssClass="text-danger" Display="Dynamic" ErrorMessage="The password and confirmation password do not match." ForeColor="Red" />
            </td>
        </tr>
        <tr>
            <td class="auto-style8">
                <strong>
                <asp:Label ID="Label1" runat="server" Text="Email"></asp:Label>
                </strong>
            </td>
            <td class="form-textbox">
                <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" Width="180px" Height="22px"></asp:TextBox>
            </td>
            <td class="form-textbox">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="An email field is required." ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="An email must be in valid format." ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">
                <strong>
                <asp:Label ID="Label2" runat="server" Text="Mobile Number"></asp:Label>
                </strong>
            </td>
            <td class="form-textbox">
                <asp:TextBox ID="txtMobiile" runat="server" TextMode="Phone" Width="180px" Height="22px"></asp:TextBox>
            </td>
            <td class="form-textbox">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtMobiile" ErrorMessage="The mobile number field is required." ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:Button runat="server" Text="Sign Up" CssClass="btn btn-default" OnClick="Unnamed8_Click" />
                &nbsp;&nbsp;
                <asp:Button ID="btnbacadhome" runat="server" Text="Back to Login Page" OnClick="btnbacadhome_Click" CausesValidation="False" CssClass="btn" />
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
