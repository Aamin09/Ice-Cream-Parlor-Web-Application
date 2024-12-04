<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Adminlogin.aspx.cs" Inherits="Admin_Adminlogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <style type="text/css">
        /* Define the styles */
        .label-large {
            font-size: xx-large;
            font-weight: 700;
            font-style: italic;
        }
         .container {
              margin: 0 auto;
              padding: 20px;
              background-color: rgba(255, 255, 255, 0.9);
              border-radius: 10px;
              box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
              max-width: 1200px;
          }
        .input-large {
            width: 204px;
            height: 52px;
            font-size: large;
        }
        
        .validator {
            height: 52px;
        }
        .auto-style8 {
            font-size: large;
            font-weight: 700;
        }
        .auto-style9 {
            font-size: large;
              background-color: #007bff;
              color: #fff;
              text-align:center;
              padding: 5px 10px;
              border: none;
              border-radius: 4px;
              cursor: pointer;
        }
        .auto-style10 {
            font-size: large;
            font-weight: 700;
            font-style: italic;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <div class="container"> <br /><br />
    <center> 
        <div> 
            <asp:Label ID="Label4" runat="server" Text="Admin Login" CssClass="label-large"></asp:Label>
        </div>
        <br />
    </center>
    <br /><hr style="color: #000000" />
    <br />
    <center> 
        <table style="width: 50%;">
            <tr align="center">
                <td align="left" style="width: 110px; height: 52px;">
                    <asp:Label runat="server" Text="Username:" ID="LabelUser" CssClass="auto-style8"></asp:Label>
                </td>
                <td class="auto-style23">
                    <asp:TextBox ID="txtxUser" runat="server" Width="170px" Height="25px"></asp:TextBox>
                </td>
                <td class="validator" align="left">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtxUser" ErrorMessage="Username field must be required." ForeColor="Red" CssClass="validator"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr align="center">
                <td class="validator" align="left">
                    <asp:Label runat="server" Text="Password:" ID="LabelPass" CssClass="auto-style8"></asp:Label>
                </td>
                <td class="auto-style23">
                    <asp:TextBox ID="txtPass" runat="server" TextMode="Password" Width="170px" CssClass="input-large" Height="25px"></asp:TextBox>
                </td>
                <td class="validator" align="left">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtxUser" ErrorMessage="Password must be required." ForeColor="Red" CssClass="validator"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr align="center">
                <td class="auto-style14"></td>
                <td>
                    <br />
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="auto-style9" OnClick="btnSubmit_Click" Height="35px" Width="91px" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </center>
    <br /><br />
    <div>
        <strong>
            <asp:Label ID="Label2" runat="server" Text="Note: This service is only for Admin not for customers. Please click below message for customer login." CssClass="auto-style10"></asp:Label>
        </strong>
    </div>
    <br /> 
    <div> 
        <strong>
            <asp:HyperLink runat="server" ID="HyperLink1" ViewStateMode="Disabled" ForeColor="Black" NavigateUrl="~/Login.aspx" CssClass="auto-style10">Customer Login</asp:HyperLink>
        </strong>
    </div> 
    <br />
    </div>
</asp:Content>
