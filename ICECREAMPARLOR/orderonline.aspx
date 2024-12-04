<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="orderonline.aspx.cs" Inherits="orderonline" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   <style type="text/css">
        .content-frame {
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }
        /* Your existing CSS styles */
        .auto-style9 {
            text-align: right;
        }
        .auto-style10 {
            font-size: large;
        }
        .auto-style12 {
            margin-left: 40px;
        }
        .auto-style13 {
            width: 391px;
        }
        .auto-style14 {
            height: 357px;
        }
        .auto-style15 {
            width: 391px;
            height: 357px;
        }
        .auto-style16 {
            height: 50px;
        }
        .auto-style17 {
            height: 337px;
        }
        .auto-style18 {
            width: 391px;
            height: 337px;
        }
        .auto-style19 {
            height: 46px;
        }
         .btn1 {
             background-color: #4CAF50;
             color: #fff;
             text-align:center;
             padding: 5px 10px;
             border: none;
             border-radius: 4px;
             cursor: pointer;
         }
    </style>
    <link href="../css/menuicecream.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <div class="container">
       <div style="text-align: center;">
        <h1><em class="auto-style12">Menu</em></h1>
        <hr style="color: #000000" />
    </div>
    <br />
    <h3 class="auto-style9">
        <asp:Button ID="btnCart" runat="server" Text="Cart Items" CssClass="auto-style10" Font-Size="Large" Height="39px" Width="127px" OnClick="btnCart_Click" />
    </h3>
    <br /><br />
    <table style="margin: 0 auto;">
        <tr>
            <th colspan="3">  <hr style="color: #000000" /> <h2><em> Cone</em></h2>  <hr style="color: #000000" /> </th>
            
        </tr>
        <!-- Cone items content -->
        <tr align="center">
            <td class="cone-column">
                <!-- Cone item 1 -->
                <asp:Image ID="Image1" runat="server" ImageUrl="~/Menu/cone1.jpeg" /><br />
                <strong>
                    <asp:Label runat="server" Text="ALMOND FUDGE" ID="labelcone1"></asp:Label>
                    <br />
                    <asp:Label ID="LabelPCone1" runat="server" Text="Rs. 60"></asp:Label>
                </strong>
                <br /><br />
                <asp:Button ID="btnBCone1" runat="server" Text="Buy" Width="56px" OnClick="transfertoCart" CssClass="btn1" />
            </td>
            <!-- Cone item 2 -->
            <td class="auto-style13">  
                <asp:Image ID="Image2" runat="server" ImageUrl="~/Menu/cone2.jpg" Height="270px" Width="187px" /><br />
                <strong>
                    <asp:Label ID="labelcone2" runat="server" Text="CHOCOLATE"></asp:Label> 
                    <br />
                    <asp:Label ID="LabelPCone2" runat="server" Text="Rs. 80"></asp:Label>
                </strong>
                <br />
                <br />
                <asp:Button ID="btnBCone2" runat="server" Text="Buy" Width="56px" OnClick="transfertoCart" CssClass="btn1" />
            </td>
            <!-- Cone item 3 -->
            <td class="cone-column">
                <asp:Image ID="Image3" runat="server" ImageUrl="~/Menu/cone3.jpeg" Height="270px" Width="187px" /><br />
                <strong>
                    <asp:Label ID="labelcone3" runat="server" Text="MANGO"></asp:Label>
                    <br />
                    <asp:Label ID="LabelPCone3" runat="server" Text="Rs. 60"></asp:Label>
                </strong>
                <br /><br />
                <asp:Button ID="btnBCone3" runat="server" Text="Buy" Width="56px" OnClick="transfertoCart" CssClass="btn1" />
            </td>
        </tr>
        <tr>
            <th colspan="3">   <hr style="color: #000000" /><h2><em> Ice Cream Cup</em></h2>   <hr style="color: #000000" /></th>
        </tr>
        <!-- Ice Cream Cup items content -->
        <tr align="center">
            <!-- Ice Cream Cup item 1 -->
            <td class="auto-style17">
                <asp:Image ID="Image4" runat="server" ImageUrl="~/Menu/cup1.jpeg" /><br />
                <strong>
                    <asp:Label runat="server" Text="CHOCOLATE CUP" ID="labelcup1"></asp:Label>
                    <br />
                    <asp:Label ID="LabelPCup1" runat="server" Text="Rs. 80"></asp:Label>
                </strong>
                <br /><br />
                <asp:Button ID="btnCup1" runat="server" Text="Buy" Width="56px" OnClick="transfertoCart" CssClass="btn1" />
            </td>
            <!-- Ice Cream Cup item 2 -->
            <td class="auto-style18">  
                <asp:Image ID="Image5" runat="server" ImageUrl="~/Menu/cup2.jpeg" Height="250px" Width="225px" /><br />
                <strong>
                    <asp:Label ID="labelcup2" runat="server" Text="AMERICAN DRYFRUIT CUP"></asp:Label> 
                    <br />
                    <asp:Label ID="LabelPCup2" runat="server" Text="Rs. 80"></asp:Label>
                </strong>
                <br />
                <br />
                <asp:Button ID="btnCup2" runat="server" Text="Buy" Width="56px" OnClick="transfertoCart" CssClass="btn1" />
            </td>
            <!-- Ice Cream Cup item 3 -->
            <td class="auto-style17">
                <asp:Image ID="Image6" runat="server" ImageUrl="~/Menu/cup3.jpeg" Height="250px" Width="225px" /><br />
                <strong>
                    <asp:Label ID="labelcup3" runat="server" Text="RAJBHOG CUP"></asp:Label>
                    <br />
                    <asp:Label ID="LabelPCup3" runat="server" Text="Rs. 80"></asp:Label>
                </strong>
                <br /><br />
                <asp:Button ID="btnCup3" runat="server" Text="Buy" Width="56px" OnClick="transfertoCart" CssClass="btn1" />
            </td>
        </tr>
        <tr>
            <th colspan="3">  <hr style="color: #000000" /> <h2><em> Family Pack</em></h2>  <hr style="color: #000000" /> </th>
        </tr>
        <!-- Family Pack items content -->
        <tr align="center">
            <!-- Family Pack item 1 -->
            <td class="cone-column">
                <asp:Image ID="Image7" runat="server" ImageUrl="~/Menu/family1.jpeg" /><br />
                <strong>
                    <asp:Label runat="server" Text="AMERICAN DRYFRUIT PACK" ID="labelF1"></asp:Label>
                    <br />
                    <asp:Label ID="LabelFP1" runat="server" Text="Rs. 160"></asp:Label>
                </strong>
                <br /><br />
                <asp:Button ID="btnF1" runat="server" Text="Buy" Width="56px" OnClick="transfertoCart" CssClass="btn1" />
            </td>
            <!-- Family Pack item 2 -->
            <td class="auto-style13">  
                <asp:Image ID="Image8" runat="server" ImageUrl="~/Menu/familiy2.jpeg" Height="270px" Width="250px" /><br />
                <strong>
                    <asp:Label ID="labelF2" runat="server" Text="CHOCOLATE PACK"></asp:Label> 
                    <br />
                    <asp:Label ID="LabelFP2" runat="server" Text="Rs. 150"></asp:Label>
                </strong>
                <br />
                <br />
                <asp:Button ID="btnF2" runat="server" Text="Buy" Width="56px" OnClick="transfertoCart" CssClass="btn1" />
            </td>
            <!-- Family Pack item 3 -->
            <td class="cone-column">
                <asp:Image ID="Image9" runat="server" ImageUrl="~/Menu/family3.jpeg" Height="270px" Width="187px" /><br />
                <strong>
                    <asp:Label ID="labelF3" runat="server" Text="RAJBHOG PACK"></asp:Label>
                    <br />
                    <asp:Label ID="LabelFP3" runat="server" Text="Rs. 60"></asp:Label>
                </strong>
                <br /><br />
                <asp:Button ID="btnF3" runat="server" Text="Buy" Width="56px" OnClick="transfertoCart" CssClass="btn1" />
            </td>
        </tr>
        <tr>
            <th colspan="3">  <hr style="color: #000000" /> <h2><em> Sticks</em></h2>  <hr style="color: #000000" /> </th>
        </tr>
        <!-- Sticks items content -->
        <tr align="center">
            <!-- Sticks item 1 -->
            <td class="auto-style14">
                <asp:Image ID="Image10" runat="server" ImageUrl="~/Menu/stick1.jpeg" /><br />
                <strong>
                    <asp:Label runat="server" Text="FROSTIK" ID="labelS1"></asp:Label>
                    <br />
                    <asp:Label ID="LabelSP1" runat="server" Text="Rs. 40"></asp:Label>
                </strong>
                <br /><br />
                <asp:Button ID="btnS1" runat="server" Text="Buy" Width="56px" OnClick="transfertoCart" CssClass="btn1" />
            </td>
            <!-- Sticks item 2 -->
            <td class="auto-style15">  
                <asp:Image ID="Image11" runat="server" ImageUrl="~/Menu/stick2.jpeg" Height="250px" Width="164px" /><br />
                <strong>
                    <asp:Label ID="labelS2" runat="server" Text="PISTA MALAI KOOLFI"></asp:Label> 
                    <br />
                    <asp:Label ID="LabelSP2" runat="server" Text="Rs. 30"></asp:Label>
                </strong>
                <br />
                <br />
                <asp:Button ID="btnS2" runat="server" Text="Buy" Width="56px" OnClick="transfertoCart" CssClass="btn1" />
            </td>
            <!-- Sticks item 3 -->
            <td class="auto-style14">
                <asp:Image ID="Image12" runat="server" ImageUrl="~/Menu/stick3.jpeg" Height="270px" Width="187px" /><br />
                <strong>
                    <asp:Label ID="labeLS3" runat="server" Text="CHOCOBAR"></asp:Label>
                    <br />
                    <asp:Label ID="LabelSP3" runat="server" Text="Rs. 25"></asp:Label>
                </strong>
                <br /><br />
                <asp:Button ID="btnS3" runat="server" Text="Buy" Width="56px" OnClick="transfertoCart" CssClass="btn1" />
            </td>
        </tr>
    </table>
    </div>
</asp:Content>
