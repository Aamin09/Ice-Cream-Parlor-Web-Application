﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="customerLoginRecord.aspx.cs" Inherits="Admin_customerLoginRecord" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        /* Define the styles */
        .auto-style8 {
            height: 46px;
            text-align: center; /* Align text in the center */
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
            padding: 5px 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        .auto-style9 {
            margin-left: 0px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <div class="container">  <br /><br />
    <center>
        <h1><em>Customer Account Details</em></h1>
    </center>
    <br /><hr style="color: #000000" /><br /><br />
    <table style="width:70%;" align="center">
        <tr>
            <td class="auto-style8">&nbsp;Search Records:</td>
            <td class="auto-style8">
                <asp:TextBox ID="txtsearch" runat="server" Width="150" OnTextChanged="txtsearch_TextChanged"></asp:TextBox>
            </td>
             <td>
     <asp:Button ID="btnbacadhome" runat="server" Text="Back to Admin Home" OnClick="btnbacadhome_Click" CausesValidation="False" CssClass="btn1" />
 </td>
        </tr>
        <tr>
            <td colspan="3">&nbsp;
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="auto-style9" DataKeyNames="Id" DataSourceID="SqlDataSource1" Width="786px">
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                        <asp:BoundField DataField="user" HeaderText="user" SortExpression="user" />
                        <asp:BoundField DataField="pass" HeaderText="pass" SortExpression="pass" />
                        <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                        <asp:BoundField DataField="mobile" HeaderText="mobile" SortExpression="mobile" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [tb_login]"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
    </div>
</asp:Content>