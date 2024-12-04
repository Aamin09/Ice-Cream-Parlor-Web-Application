<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="amenities.aspx.cs" Inherits="amenities" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        /* Internal CSS */
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background-color: #f9f9f9;
            background-image: url('path/to/your/background/image.jpg');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
        }

        .container {
            margin: 0 auto;
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.9);
            border-radius: 10px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
            max-width: 1200px;
        }

        .amenities-title {
            font-weight: 700;
            font-size: 36px;
            font-style: italic;
            margin-bottom: 20px;
        }

        .amenity {
            text-align: center;
            margin-bottom: 20px;
        }

        .amenity img {
            width: 400px;
            height: 300px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .amenity p {
            font-size: 24px;
            font-weight: 700;
            margin-top: 10px;
            color: #333;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <center>
            <div class="amenities-title">Amenities</div>
        </center>
        <hr style="color: #000000" />

        <br />

        <table style="width: 100%;">
            <tr align="center">
                <td class="amenity">
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/delivery.png" />
                    <p>Home Delivery</p>
                </td>
                <td class="amenity">
                    <asp:Image ID="Image2" runat="server" ImageUrl="~/Images/orderonline.png" />
                    <p>Online Order</p>
                </td>
                <td class="amenity">
                    <asp:Image ID="Image3" runat="server" ImageUrl="~/Images/party.jpg" />
                    <p>Party Order</p>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
