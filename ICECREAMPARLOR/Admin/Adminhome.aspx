<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Adminhome.aspx.cs" Inherits="Admin_Adminhome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style8 {
            font-size: x-large;
        }

        .auto-style9 {
            width: 458px;
        } 
        .container {
             margin: 0 auto;
             padding: 20px;
             background-color: rgba(255, 255, 255, 0.9);
             border-radius: 10px;
             box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
             max-width: 1200px;
         }
        .auto-style10 {
            width: 294px;
        }
        .auto-style11 {
            font-size: large;
        }
        .auto-style12 {
            width: 458px;
            height: 33px;
        }
        .auto-style13 {
            width: 294px;
            height: 33px;
        }
        .auto-style14 {
            height: 33px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <div class="container"> <br /><br />
     <center> <h1><em>Admin Home</em></h1></center>  
    <br /><hr style="color: #000000" />
<br />
    <table style="width: 100%;" text=".">
        <tr>
            <td class="auto-style12"> <strong> <asp:Label ID="Labelmanage" runat="server" Text="Manange Account Services." CssClass="auto-style8"></asp:Label></strong></td>
            <td class="auto-style13"> <strong> <asp:Label ID="Labelorder" runat="server" CssClass="auto-style8" Text="Orders Management"></asp:Label></strong></td>
            <td class="auto-style14"> <strong> <asp:Label ID="Label1" runat="server" CssClass="auto-style8" Text="Customers Details"></asp:Label></strong></td>

        </tr>
        <tr>
            <td class="auto-style9"><asp:Menu ID="Menu1" runat="server" CssClass="auto-style8" style="font-size: large" ForeColor="Black">
    <Items>
        <asp:MenuItem Text="Add Another Admin Account" Value="Add Another Admin Account" NavigateUrl="~/Admin/AdminSignup.aspx"></asp:MenuItem>
        <asp:MenuItem Text="Delete Admin Account" Value="Delete Admin Account" NavigateUrl="~/Admin/AdminDelete.aspx"></asp:MenuItem>
        <asp:MenuItem Text="Update Admin Account" Value="Update Admin Account" NavigateUrl="~/Admin/AdminUpdate.aspx"></asp:MenuItem>
        <asp:MenuItem Text="View Admin Accounts" Value="View Admin Accounts" NavigateUrl="~/Admin/AdminView.aspx"></asp:MenuItem>
    </Items>
                <StaticMenuItemStyle VerticalPadding="10px" />
</asp:Menu></td>
                      <td class="auto-style10"><asp:Menu ID="Menu2" runat="server" CssClass="auto-style8" style="font-size: large" ForeColor="Black">
    <Items>
        <asp:MenuItem Text="Ice Cream Menu" Value="Ice Cream Menu" NavigateUrl="~/orderonline.aspx"></asp:MenuItem>
        <asp:MenuItem NavigateUrl="~/Admin/AdminOrderHistory.aspx" Text="Order History" Value="Order History"></asp:MenuItem>
        <asp:MenuItem NavigateUrl="~/Admin/PaymentDetails.aspx" Text="Payment Details"></asp:MenuItem>
        <asp:MenuItem NavigateUrl="~/cartitems.aspx" Text="Cart Item Form" Value="Cart Item Form"></asp:MenuItem>
        <asp:MenuItem NavigateUrl="~/payment.aspx" Text="Payment Form" Value="Payment Form"></asp:MenuItem>
    </Items>
                <StaticMenuItemStyle VerticalPadding="10px" />
</asp:Menu></td>
            <td>
                <asp:Menu ID="Menu4" runat="server" CssClass="auto-style11" ForeColor="Black">
                    <Items>
                        <asp:MenuItem NavigateUrl="~/Admin/customerLoginRecord.aspx" Text="Login Records" Value="Login Records"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/Admin/customerInquiry.aspx" Text="Customer Inquiry Details" Value="Customer Inquiry Details"></asp:MenuItem>
                    </Items>
                    <StaticMenuItemStyle VerticalPadding="10px" />
                </asp:Menu>
            </td>
        </tr>
      
    </table></div> 
</asp:Content>

