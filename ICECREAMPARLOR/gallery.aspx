<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="gallery.aspx.cs" Inherits="gallery" %>

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

        .gallery-title {
            text-align: center;
            font-size: 36px;
            font-weight: bold;
            font-style: italic;
            margin-bottom: 20px;
        }

        .gallery-description {
            text-align: center;
            font-size: 24px;
            font-weight: bold;
            margin-bottom: 40px;
        }

        .image-table {
            width: 100%;
        }

        .image-cell {
            padding: 10px;
            text-align: center;
        }

        .gallery-image {
            max-width: 100%;
            height: auto;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .auto-style8 {
            max-width: 100%;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <div class="gallery-title">Gallery</div>
        <hr style="color: #000000" />

        <div class="gallery-description">Here are a few ice cream images we produce.</div>

        <table class="image-table">
            <tr>
                <td class="image-cell">
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/g4.jpeg" CssClass="gallery-image" Width="300px" Height="200px" />
                </td>
                <td class="image-cell">
                    <asp:Image ID="Image2" runat="server" ImageUrl="~/Images/g8.jpeg" CssClass="gallery-image" Width="300px" Height="200px" />
                </td>
                <td class="image-cell">
                    <asp:Image ID="Image3" runat="server" ImageUrl="~/Images/g3.jpeg" CssClass="gallery-image" Width="300px" Height="200px" />
                </td>
            </tr>
            <tr>
                <td class="image-cell">
                    <asp:Image ID="Image4" runat="server" ImageUrl="~/Images/g1.jpeg" CssClass="gallery-image" Width="300px" Height="200px" />
                </td>
                <td class="image-cell">
                    <asp:Image ID="Image5" runat="server" ImageUrl="~/Images/g2.jpeg" CssClass="gallery-image" Width="300px" Height="200px" />
                </td>
                <td class="image-cell">
                    <asp:Image ID="Image6" runat="server" ImageUrl="~/Images/g5.jpeg" CssClass="gallery-image" Width="300px" Height="200px" />
                </td>
            </tr>
            <tr>
                <td class="image-cell">
                    <asp:Image ID="Image7" runat="server" ImageUrl="~/Images/g6.jpeg" CssClass="gallery-image" Width="300px" Height="200px" />
                </td>
                <td class="image-cell">
                    <asp:Image ID="Image8" runat="server" ImageUrl="~/Images/g7.jpeg" CssClass="gallery-image" Width="300px" Height="200px" />
                </td>
                <td class="image-cell">
                    <asp:Image ID="Image9" runat="server" ImageUrl="~/Images/g9.jpeg" CssClass="gallery-image" Width="300px" Height="200px" />
                </td>
            </tr>
            <tr>
                <td class="image-cell">
                    <asp:Image ID="Image10" runat="server" ImageUrl="~/Images/g10.jpeg" CssClass="gallery-image" Width="300px" Height="200px" />
                </td>
                <td class="image-cell">
                    <asp:Image ID="Image11" runat="server" ImageUrl="~/Images/g11.jpeg" CssClass="auto-style8" Width="300px" Height="258px" />
                </td>
                <td class="image-cell">
                    <asp:Image ID="Image12" runat="server" ImageUrl="~/Images/g12.jpeg" CssClass="gallery-image" Width="300px" Height="200px" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
