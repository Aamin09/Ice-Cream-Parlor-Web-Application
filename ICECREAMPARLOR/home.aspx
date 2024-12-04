<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        /* Internal CSS */
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background-color: #f9f9f9;
            
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
        }

        .welcome {
            text-align: center;
            margin-bottom: 20px;
        }

        .welcome h1 {
            font-size: 36px;
            color: #333;
        }

        .welcome p {
            font-size: 18px;
            color: #666;
        }

        .btn-menu {
            font-size: 20px;
            padding: 10px 20px;
            background-color: #3498db;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .btn-menu:hover {
            background-color: #2980b9;
        }

        .mission,
        .vision {
            text-align: center;
            margin: 40px 0;
        }

        .mission h2,
        .vision h2 {
            font-size: 24px;
            color: #333;
        }

        .mission p,
        .vision p {
            font-size: 18px;
            color: #666;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <table style="width: 100%;">
            <tr>
                <td class="auto-style8">
                    <div class="welcome">
                        <h1>Welcome to Blue Arctic Ice Cream</h1>
                        <p><strong>Indulge in the creamy goodness of our premium ice creams!</strong></p>
                    </div>
                    <br />
                    <p align="center"><asp:Button ID="btnMenu" runat="server" Text="Our Menu" OnClick="btnMenu_Click" CssClass="btn-menu" /></p>
                    <br />
                    <p><strong>Blue Arctic Ice Cream is committed to providing the highest quality ice cream made with the freshest ingredients. We offer a wide variety of flavors to tantalize your taste buds. Come visit us today and experience the joy of indulging in our delicious ice creams!</strong></p>
                </td>
                <td>
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/ice cream about2.png" />
                </td>
            </tr>
            <tr>
                <td class="auto-style11" colspan="2">
                    <center>
                        <h2>Our Mission</h2>
                        <p><strong>We are dedicated to crafting exceptional ice cream experiences for our customers, ensuring that every scoop brings joy and satisfaction.</strong></p>
                    </center>
                </td>
            </tr>
            <tr>
                <td class="auto-style8" colspan="2">
                    <center>
                        <h2 align="center">Our Vision</h2>
                        <p><strong>To become the preferred destination for ice cream lovers, renowned for our commitment to quality, innovation, and customer delight.</strong></p>
                    </center>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
