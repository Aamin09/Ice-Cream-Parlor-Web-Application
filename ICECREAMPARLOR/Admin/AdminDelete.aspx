<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AdminDelete.aspx.cs" Inherits="Admin_AdminDelete" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        /* Define the styles */
        .label-column {
            height: 47px;
            width: 117px;
        }
        
        .input-column {
            height: 50px;
            width: 150px;
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
        .password-column {
            height: 50px;
            width: 178px;
        }

        .button-column {
            text-align:center;
            height: 50px;
            width: 382px;
        }
        .auto-style8 {
            height: 50px;
            width: 219px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container"><br /><br />
    <center><h1><em>Delete Admin Account</em></h1></center>
    <br /><hr style="color: #000000" /><br /><br />
    <table style="width: 50%;" align="center">
        <tr>
            <td class="label-column">         
                <strong>         
                <asp:Label runat="server" AssociatedControlID="UserName" CssClass="col-md-2 control-label">User name</asp:Label>
                </strong>
            </td>
            <td class="input-column">
                <asp:TextBox runat="server" ID="UserName" CssClass="form-control" style="width: 150px;" />
            </td>
            <td class="auto-style8">
                <asp:RequiredFieldValidator runat="server" ControlToValidate="UserName"  CssClass="text-danger" ErrorMessage="The user name field is required." ForeColor="Red" />
            </td>
        </tr>

        <tr>
            <td class="label-column">
                <strong>
                <asp:Label runat="server" AssociatedControlID="Password" CssClass="col-md-2 control-label">Password</asp:Label>
                </strong>
            </td>
            <td class="input-column"> 
                <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" style="width: 150px;" />
            </td>
            <td class="auto-style8"> 
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Password" CssClass="text-danger" ErrorMessage="The password field is required." ForeColor="Red" />
            </td>
        </tr>
        <tr>
            <td colspan="3" class="button-column" a > 
                <asp:Button runat="server" Text="Delete Account" CssClass="btn1" OnClick="Unnamed8_Click" />
                &nbsp;&nbsp; <asp:Button ID="btnbacadhome" runat="server" Text="Back to Admin Home" OnClick="btnbacadhome_Click" CausesValidation="False" CssClass="btn1" />
            </td>
        </tr>
    </table>
    <br />
    <center> 
        <div>
        </div>
    </center> 
        </div>
</asp:Content>
