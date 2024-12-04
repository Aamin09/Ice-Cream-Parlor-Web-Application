<%@ Page Title="Login" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        /* Form layout */
        .form-horizontal {
            margin-bottom: 20px;
        }

        /* Form fields */
        .form-control {
            width: 100%;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
            margin-top: 5px;
        }
         .container {
              margin: 0 auto;
              padding: 20px;
              background-color: rgba(255, 255, 255, 0.9);
              border-radius: 10px;
              box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
              max-width: 1200px;
          }
        /* Validation error messages */
        .text-danger {
            color: red;
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

        /* Hyperlink style */
        .hyperlink {
            color: black;
            text-decoration: none;
        }

        /* Table layout */
        table {
            width: 60%;
            margin: 0 auto; /* Center the table */
            border-collapse: collapse;
        }

       
         .btn1 {
             background-color: #007bff;
             color: #fff;
             text-align:center;
             padding: 5px 10px;
             border: none;
             border-radius: 4px;
             cursor: pointer;
         }
         #tdud{
             text-align:center;
         }
        th, td {
            padding: 8px;
            text-align: left;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        /* Checkbox alignment */
        .checkbox {
            margin-top: 10px;
        }

        /* Button alignment */
        .button-container {
            text-align: center;
        }
        .auto-style8 {
            width: 260px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <div class="container">

 <h2 style="font-style: italic; text-align:center"><%: Title %></h2>

    <div class="row">
        <div class="col-md-8">
            <section id="loginForm">
                <div class="form-horizontal">
                    <h4 align="center">Use a local account to log in.</h4>
                    <hr style="color: #000000" />
                    <asp:PlaceHolder runat="server" ID="ErrorMessage" Visible="false">
                        <p class="text-danger">
                            <asp:Literal runat="server" ID="FailureText" />
                        </p>
                    </asp:PlaceHolder>
                    <table>
                        <tr>
                            <td>
                                <asp:Label runat="server" AssociatedControlID="UserName" CssClass="control-label">User name</asp:Label>
                            </td>
                            <td class="auto-style8">
                                <asp:TextBox runat="server" ID="Username" CssClass="form-control" />
                            </td>
                            <td>
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="UserName"
                                    CssClass="text-danger" ErrorMessage="The user name field is required." ForeColor="Red" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label runat="server" AssociatedControlID="Password" CssClass="control-label">Password</asp:Label>
                            </td>
                            <td class="auto-style8">
                                <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" />
                            </td>
                            <td>
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="Password" CssClass="text-danger" ErrorMessage="The password field is required." ForeColor="Red" />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3">
                                <div class="checkbox">
                                    <asp:CheckBox runat="server" ID="RememberMe" />
                                    <asp:Label runat="server" AssociatedControlID="RememberMe">Remember me?</asp:Label>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3" class="button-container" id="tdlogin">
                                <asp:Button runat="server" Text="Log in" CssClass="btn btn-default" OnClick="Unnamed6_Click" />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3">
                                <p>
                                    <asp:HyperLink runat="server" ID="RegisterHyperLink" ViewStateMode="Disabled" CssClass="hyperlink" NavigateUrl="~/Signup.aspx">Sign-Up </asp:HyperLink>if you don't have a local account.
                                </p>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3" align="center" id="tdud">
                                &nbsp;
                                <asp:Button ID="btnUpdate" runat="server" Text="Update Account" CssClass="btn1" CausesValidation="False" OnClick="btnUpdate_Click" />
                                &nbsp; &nbsp;&nbsp;&nbsp;
                                <asp:Button ID="btnDelete" runat="server" Text="Delete Account" CssClass="btn1" CausesValidation="False" OnClick="btnDelete_Click" />
                            </td>
                        </tr>
                    </table>
                </div>
            </section>
        </div>
    </div>
      </div>
</asp:Content>
