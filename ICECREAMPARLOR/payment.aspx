<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="payment.aspx.cs" Inherits="payment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style8 {
            font-size: medium;
            width: 70%;
        }
        .auto-style11 {
            width: 311px;
            height: 40px;
        }
         .container {
              margin: 0 auto;
              padding: 20px;
              background-color: rgba(255, 255, 255, 0.9);
              border-radius: 10px;
              box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
              max-width: 1200px;
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
        .auto-style12 {
            width: 218px;
            height: 40px;
        }
        .auto-style13 {
            height: 40px;
        }
        /* Additional styles for the form elements */
        #cardNumber,
        #cardHolderName,
        #expirationDate,
        #cvv,
        #amount,
        #txtOTP {
            width: 150px;
        }
        .auto-style14 {
            width: 311px;
            height: 54px;
        }
        .auto-style15 {
            width: 218px;
            height: 54px;
        }
        .auto-style16 {
            height: 54px;
        }
        .auto-style17 {
            width: 311px;
            height: 52px;
        }
        .auto-style18 {
            width: 218px;
            height: 52px;
        }
        .auto-style19 {
            height: 52px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container"><br /><br />
    <center>
        <h1><em>Payment Form</em></h1>
        <br /><hr style="color: #000000" />
        <br />
        <strong>
            <asp:Label ID="Label1" runat="server" Text="Order now by filling the following details."
                CssClass="auto-style8"></asp:Label>
        </strong>
    </center>
    <br />
    <table class="auto-style8" align="center">
        <tr>
            <td class="auto-style11"><strong><asp:Label ID="lblCardNumber" runat="server" Text="Card Number:"></asp:Label></strong></td>
            <td class="auto-style12"><asp:TextBox ID="cardNumber" runat="server" TextMode="SingleLine" MaxLength="16" Required="true" Height="21px" Width="173px"></asp:TextBox></td>
            <td class="auto-style13">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="The card number field is required." ControlToValidate="cardNumber" ForeColor="Red"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td class="auto-style11"><strong><asp:Label ID="lblCardHolderName" runat="server" Text="Cardholder Name:"></asp:Label></strong></td>
            <td class="auto-style12"><asp:TextBox ID="cardHolderName" runat="server" TextMode="SingleLine" Required="true" Height="21px" Width="173px"></asp:TextBox></td>
            <td class="auto-style13">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="cardHolderName" ErrorMessage="The carholder name is required." ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style11"><strong><asp:Label ID="lblExpirationDate" runat="server" Text="Expiration Date:"></asp:Label></strong></td>
            <td class="auto-style12"><asp:TextBox ID="expirationDate" runat="server" TextMode="SingleLine" Placeholder="MM/YYYY" MaxLength="7" Required="true" Height="21px" Width="173px"></asp:TextBox></td>
            <td class="auto-style13">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="expirationDate" ErrorMessage="This field is required." ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style11"><strong><asp:Label ID="lblCVV" runat="server" Text="CVV:"></asp:Label></strong></td>
            <td class="auto-style12"><asp:TextBox ID="cvv" runat="server" TextMode="SingleLine" MaxLength="3" Required="true" CssClass="auto-style12" Height="21px" Width="173px"></asp:TextBox></td>
            <td class="auto-style13">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="cvv" ErrorMessage="The CVV number is required." ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style14"><strong><asp:Label ID="lblAmount" runat="server" Text="Amount:"></asp:Label></strong></td>
            <td class="auto-style15"><asp:TextBox ID="amount" runat="server" TextMode="SingleLine" Required="true" Width="173px" ReadOnly="True" CssClass="auto-style12" Height="21px"></asp:TextBox></td>
            <td class="auto-style16"></td>
        </tr>
        <tr>
            <td colspan="3" align="center">
                <asp:Button ID="submitPayment" runat="server" Text="Submit " OnClick="submitPayment_Click" CssClass="btn1" />
            </td>
        </tr>
        <tr>
            <td class="auto-style17"><strong><asp:Label ID="lblOTP" runat="server" Text="Enter OTP:"></asp:Label></strong></td>
            <td class="auto-style18"><asp:TextBox ID="txtOTP" runat="server" TextMode="SingleLine" Width="150px" MaxLength="6" CssClass="auto-style12" Height="21px"></asp:TextBox></td>
            <td class="auto-style19">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtOTP" ErrorMessage="Please enter the OTP." ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td colspan="3" align="center">
                <asp:Button ID="btnFinalSubmmit" runat="server" Text="Final Submit " OnClick="btnFinalSubmit" CssClass="btn1" />
            </td>
        </tr>
    </table>
        </div>
</asp:Content>
