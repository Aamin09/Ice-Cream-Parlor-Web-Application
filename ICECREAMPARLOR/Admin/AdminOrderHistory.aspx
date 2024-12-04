<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AdminOrderHistory.aspx.cs" Inherits="Admin_AdminOrderHistory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        /* Define the styles */
        .search-label {
            height: 46px;
        }
        
        .search-textbox {
            margin-left: 0px;
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
        .grid-view {
            margin-top: 20px;
            width: 100%;
        }
        .auto-style8 {
            height: 44px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <div class="container"> <br /><br />
    <center>
        <h1><em>Customer Order Details</em></h1>
    </center>
    <br /><hr style="color: #000000" /><br /><br />
    <table style="width:70%;" align="center">
        <tr>
            <td class="auto-style8" align="center">&nbsp;Search Records:</td>
            <td class="search-textbox">
                <asp:TextBox ID="txtsearch" runat="server" Width="150" OnTextChanged="txtsearch_TextChanged"></asp:TextBox>
            </td>
            <td>
                <asp:Button ID="btnbacadhome" runat="server" Text="Back to Admin Home" OnClick="btnbacadhome_Click" CausesValidation="False" CssClass="btn1" />
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="grid-view" DataKeyNames="Id" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                        <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                        <asp:BoundField DataField="address" HeaderText="Address" SortExpression="address" />
                        <asp:BoundField DataField="gender" HeaderText="Gender" SortExpression="gender" />
                        <asp:BoundField DataField="submit_date" HeaderText="Submit Date" SortExpression="submit_date" />
                        <asp:BoundField DataField="item_name" HeaderText="Item Name" SortExpression="item_name" />
                        <asp:BoundField DataField="item_price" HeaderText="Item Price" SortExpression="item_price" />
                        <asp:BoundField DataField="item_quantity" HeaderText="Item Quantity" SortExpression="item_quantity" />
                        <asp:BoundField DataField="final_price" HeaderText="Final Price" SortExpression="final_price" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [order_history]"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
       </div>
</asp:Content>
