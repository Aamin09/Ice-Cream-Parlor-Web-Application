<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="featuredstore.aspx.cs" Inherits="featuredstore" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        /* Internal CSS */
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background-color: #f9f9f9;
        }

        .container {
              margin: 0 auto;
              padding: 20px;
              background-color: rgba(255, 255, 255, 0.9);
              border-radius: 10px;
              box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
              max-width: 1200px;
          }
        .featured-title {
            text-align: center;
            font-size: 36px;
            font-weight: 700;
            margin-bottom: 20px;
        }

        .featured-table {
            width: 100%;
            margin-bottom: 40px;
        }

        .featured-cell {
            text-align: center;
            vertical-align: top;
            padding: 20px;
        }

        .featured-image {
            width: 80%; /* Slightly larger image */
            height: auto;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .featured-label {
            font-size: 24px;
            font-weight: 700;
            color: #333;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <h1 class="featured-title">Featured Stores</h1>
        <hr style="color: #000000" />
        
        <table class="featured-table">
            <tr align="center">
                <td class="featured-cell">
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/cone.jpeg" CssClass="featured-image" />
                    <p class="featured-label">Cone</p>
                </td>
                <td class="featured-cell">
                    <asp:Image ID="Image2" runat="server" ImageUrl="~/Images/cup2.jpeg" CssClass="featured-image" />
                    <p class="featured-label">Cup</p>
                </td>
                <td class="featured-cell">
                    <asp:Image ID="Image3" runat="server" ImageUrl="~/Images/candy.jpeg" CssClass="featured-image" />
                    <p class="featured-label">Stick</p>
                </td>
            </tr>
        </table>

        <table class="featured-table">
            <tr align="center">
                <td class="featured-cell">
                    <asp:Image ID="Image4" runat="server" ImageUrl="~/Images/plasticup.jpeg" CssClass="featured-image" />
                    <p class="featured-label">Plastic Container</p>
                </td>
                <td class="featured-cell">
                    <asp:Image ID="Image5" runat="server" ImageUrl="~/Images/takeaway.jpeg" CssClass="featured-image" />
                    <p class="featured-label">Take Away</p>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
