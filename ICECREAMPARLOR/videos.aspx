<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="videos.aspx.cs" Inherits="videos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
         .container {
              margin: 0 auto;
              padding: 20px;
              background-color: rgba(255, 255, 255, 0.9);
              border-radius: 10px;
              box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
              max-width: 1200px;
          }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
   <div class="container"> <div style="text-align: center;">
        <h1 style="font-weight: 700; font-size: 36px; font-style: italic;">Videos</h1>
        <hr style="color: #000000" />
        <p style="font-weight: 700; font-size: 24px;">Some of the videos of our work and our products.</p>
    </div>

    <table style="margin: 0 auto;">
        <tr align="center">
            <td>
                <video height="360" controls src="Videos/5060123-uhd_4096_2160_30fps.mp4" style="width: 500px; height: 400px;" runat="server" autoplay>
                    <source src="Videos/5060123-uhd_4096_2160_30fps.mp4" type="video/mp4">
                </video>
            </td>
            <td> 
                <video height="360" controls src="Videos/6412517-hd_1920_1080_30fps.mp4" style="width: 500px; height: 400px;" runat="server" autoplay>
                    <source src="Videos/6412517-hd_1920_1080_30fps.mp4" type="video/mp4">
                </video>
            </td>
        </tr>
        <tr align="center">
            <td>
                <video height="360" controls src="Videos/8093935-hd_1080_1920_30fps.mp4" style="width: 500px; height: 400px;" runat="server" autoplay>
                    <source src="Videos/8093935-hd_1080_1920_30fps.mp4" type="video/mp4">
                </video>
            </td>
            <td>   
                <video height="360" controls src="Videos/855128-hd_1280_720_24fps.mp4" style="width: 500px; height: 400px;" runat="server" autoplay>
                    <source src="Videos/855128-hd_1280_720_24fps.mp4" type="video/mp4">
                </video>
            </td>  
        </tr>
    </table></div>
</asp:Content>
