<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="about.aspx.cs" Inherits="about" %>

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
            max-width: 1200px;
        }

        .about-title {
            font-weight: 700;
            font-size: 36px;
            font-style: italic;
            margin-bottom: 20px;
        }

        .about-content {
            display: flex;
            align-items: center;
        }

        .about-image {
            flex: 1;
            padding: 20px;
        }

        .about-text {
            flex: 2;
            padding: 20px;
            font-size: 18px;
            color: #333;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <center>
            <div class="about-title">About Us</div>
        </center>
        <hr style="color: #000000" />

        <br />

        <asp:Table ID="Table1" runat="server" Height="254px" Width="100%" style="font-weight: 700; font-size: x-large" Font-Size="28pt">
            <asp:TableRow BorderColor="White">
                <asp:TableCell>
                    <div class="about-content">
                        <div class="about-image">
                            <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/ice cream about2.png" Width="300px" Height="300px" />
                        </div>
                        <div class="about-text">
                            <p align="center" style="font-size: large">&nbsp;&nbsp;&nbsp;&nbsp;We, Blue Arctic Ice Cream, situated at Anand, Gujarat. Our Vision is to make the best ice cream in the world using high quality by carefully selecting ingredients. We believe that if you were going to indulge in ice cream, it should be a real and fulfilling experience. We are absolutely devoted in making better ice creams and bringing people together. It's what gets us out of bed in the morning and keeps us late at night.</p>
                        </div>
                    </div>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </div>
</asp:Content>
