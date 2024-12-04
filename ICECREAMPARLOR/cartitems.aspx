<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="cartitems.aspx.cs" Inherits="Admin_cartitems" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 <style type="text/css">
        .auto-style8 {
            font-size: large;
        }
        .auto-style9 {
            height: 50px;
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
            height: 50px;
            width: 268px;
        }
        .auto-style11 {
            width: 268px;
         }
        .auto-style12 {
            height: 30px;
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
        .auto-style14 {
            height: 40px;
        }

        /* Styles for cart items table */
        #tblCartItems {
            width: 70%;
            margin: 0 auto;
            border-collapse: collapse;
        }

        #tblCartItems th, #tblCartItems td {
            padding: 10px;
            border: 1px solid #ccc;
        }

        .item-price, .final-price {
            text-align: right;
        }

        .quantity {
            width: 80px; /* Adjusted width */
            text-align: center;
        }

        .tp {
            border: none;
            background-color: transparent;
            text-align: right;
            font-weight: bold;
            font-size: 18px;
            width: 100px;
        }
        .btn-pay-amount{
            background-color: #007bff;
            color: #fff;
            text-align:center;
            padding: 5px 10px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        .btn-remove-item {
            margin-left: 20px;
            background-color: #007bff;
            color: #fff;
            text-align:center;
            padding: 5px 10px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        .btn-pay-amount {
            margin-top: 20px;
        }

        /* Centering the inner table */
        .center-table {
            margin: 0 auto;
        }
        .auto-style15 {
            height: 50px;
            width: 212px;
        }
        .auto-style16 {
         width: 212px;
     }
        .auto-style21 {
         width: 840px;
     }
     .auto-style22 {
         text-align: center;
     }
    </style>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $(".quantity").on('input', function () {
                calculateFinalPrice($(this));
                calculateTotalPrice();
            });
        });

        function calculateFinalPrice(input) {
            var quantity = input.val();
            var price = input.closest('tr').find('.item-price').text().replace("Rs. ", "").trim();
            var finalPrice = (parseFloat(quantity) * parseFloat(price)).toFixed(2);
            input.closest('tr').find('.final-price').text("Rs. " + finalPrice);
        }

        function calculateTotalPrice() {
            var total = 0;
            $(".final-price").each(function () {
                var price = parseFloat($(this).text().replace("Rs. ", "").trim());
                total += price;
            });
            // Update the total price in txtTotalP textbox
            $(".tp").val("Rs. " + total.toFixed(2));
        }
    </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <div class="container"><br /><br />
    <center>
        <h1><em>Your Cart Items</em></h1>
        <br /><hr style="color: #000000" />
        <br />
        <strong>
            <asp:Label ID="Label1" runat="server" Text="Order now by filling the following details."
                CssClass="auto-style8"></asp:Label>
        </strong>
    </center>
    <br /><br class="auto-style8" />
    <table style="width: 70%;" align="" class="auto-style5" id="tblCartItems">
        <tr>
            <td class="auto-style15">
                <asp:Label ID="LabelName" runat="server" Text="Name"></asp:Label>
            </td>
            <td class="auto-style10">
                <asp:TextBox ID="txtname" runat="server" Width="226px" CssClass="auto-style5"></asp:TextBox>
            </td>
            <td class="auto-style9">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                    ErrorMessage="The name field is required." ControlToValidate="txtname"
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style16">
                <asp:Label ID="Labeladd" runat="server" Text="Address"></asp:Label>
            </td>
            <td class="auto-style11">
                <asp:TextBox ID="txtaddress" runat="server" Width="236px" TextMode="MultiLine"
                    CssClass="auto-style5"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                    ErrorMessage="The address field is required." ControlToValidate="txtname"
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style16"> <asp:Label ID="Labelgender" runat="server" Text="Gender"></asp:Label></td>
            <td class="auto-style11"> <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem Value="Male"></asp:ListItem>
                <asp:ListItem Value="Female"></asp:ListItem>
                <asp:ListItem Value="Other"></asp:ListItem>
            </asp:RadioButtonList></td>
            <td class="auto-style9">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                    ErrorMessage="Please select the Gender" ControlToValidate="RadioButtonList1"
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td colspan="4" style="width:100%">
                <table id="tblcartitems" class="auto-style21">
                    <tr>
                        <th class="auto-style12">Item Name</th>
                        <th class="auto-style12">Item Price</th>
                        <th class="auto-style12">Quantity</th>
                        <th class="auto-style12">Final Price</th>
                    </tr>
                    <asp:Repeater ID="rptCartItems" runat="server" >
                        <ItemTemplate>
                            <tr>
                                <td><%# Eval("ItemName") %></td>
                                <td class="item-price"><%# Eval("ItemPrice") %></td>
                                <td align="center"><input type="number" class="quantity" value="1" min="1" /></td>
                                <td class="final-price"><%# Eval("ItemPrice") %></td>
                            </tr>
                        </ItemTemplate>
                    </asp:Repeater>
                </table>
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center"> 
                <asp:Label ID="Label3" runat="server" Text="Search To Remove Item"></asp:Label>
&nbsp;&nbsp; <asp:TextBox ID="txtRemoveSearch" runat="server" Width="185px"></asp:TextBox></td>
            <td class="auto-style14"> 
                <asp:Button ID="btnRemove" runat="server" Text="Remove Item" CausesValidation="False" OnClick="btnRemove_Click" CssClass="btn" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnAddItem" runat="server" CausesValidation="False" OnClick="btnAddItem_Click" Text="Add Item" CssClass="btn" />
            </td>
        </tr>
        <tr>
            <td colspan="2" class="auto-style9" align="right">
                <asp:Label ID="LabeTotalP" runat="server" Text="Total Price"></asp:Label>
            </td>
            <td align="center" class="auto-style9">
                <asp:TextBox ID="txtTotalP" runat="server" CssClass="tp" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="3" align="center">
                <asp:Button ID="btnPay" runat="server" Text="Pay Amount" OnClick="btnPay_Click" CssClass="btn" />
            </td>
        </tr>
    </table>
<div class="auto-style22">
    <asp:Label ID="LabelStockError" runat="server" ></asp:Label>
</div>
       </div>
</asp:Content>
