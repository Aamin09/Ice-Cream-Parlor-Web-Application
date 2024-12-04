<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="contactus.aspx.cs" Inherits="contactus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            height: 23px;
        }
        .auto-style4 {
            height: 23px;
            width: 371px;
        }
         .container {
              margin: 0 auto;
              padding: 20px;
              background-color: rgba(255, 255, 255, 0.9);
              border-radius: 10px;
              box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
              max-width: 1200px;
          }
         .btn {
             background-color: #007bff;
             color: #fff;
             padding: 10px 20px;
             border: none;
             border-radius: 4px;
             cursor: pointer;
         }
        .auto-style5 {
            height: 23px;
            width: 549px;
        }
        .auto-style6 {
            font-size: large;
        }
        .auto-style7 {
            height: 23px;
            width: 586px;
            font-size: medium;
        }
        .auto-style8 {
            width: 532px;
            height: 23px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <div class="container">
      <div style="text-align: center;">
        <h1 style="font-weight: 700; font-size: 36px; font-style: italic;">Contact Us</h1>
        <hr style="color: #000000" />
    </div>
    <br /><br />
    <table style="margin: 0 auto; align="center" width: 70%;">
        <tr>
            <td class="auto-style7" align="center">
                <asp:TextBox ID="txtName" runat="server" Height="20" Text="Name" Width="250px" Font-Size="Medium"></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name must be required" ControlToValidate="txtName" ForeColor="Red"></asp:RequiredFieldValidator>
                <br /><br />

                <asp:TextBox ID="txtMobile" runat="server" Height="20" Text="Mobile" Width="250px" Font-Size="Medium"></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Mobile number must be required" ControlToValidate="txtMobile" ForeColor="Red"></asp:RequiredFieldValidator>
                <br /><br />

                <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" Height="20" Text="Email" Width="250px" Font-Size="Medium"></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Email must be required" ControlToValidate="txtEmail" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Invalid Email Format" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"></asp:RegularExpressionValidator>
            </td>
            <td class="auto-style8">
                <asp:TextBox ID="txtMessage" runat="server" TextMode="MultiLine" Width="350px" Height="100px" Text="Message (Optional)" Font-Size="Medium"></asp:TextBox>
            </td>     
        </tr>
        <tr>
            <td colspan="2" align="center">
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" Font-Size="Medium" OnClick="btnSubmit_Click" CssClass="btn" />
                <br /><br />
                <asp:Label ID="LabelResponse" runat="server" Font-Size="Medium" Text="Your response has been submitted." Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7580.739021122714!2d72.95753995949903!3d22.563623740111343!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x395e4e8ff9f21de9%3A0x2335bf48706f0804!2sRoyal%20Plaza%20Rd!5e0!3m2!1sen!2sin!4v1714200573435!5m2!1sen!2sin" width="555" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
            </td>
            <td class="auto-style8" align="left">
                &nbsp;&nbsp;
                <p><asp:Image ID="Image1" runat="server" ImageUrl="~/Images/office.png" Height="32px" Width="41px" />&nbsp;<strong><span class="auto-style6">Our Office Address</span></strong></p>
                <p style="font-size: medium;">Royal Plaza Complex, 4th Floor, 100 Feet Road,<br /> Anand-388001, Anand, Gujarat, India.</p>
                <p><asp:Image ID="Image2" runat="server" ImageUrl="~/Images/email2.jpeg" Height="34px" Width="41px" />&nbsp;<strong><span class="auto-style6">General Enquiries</span></strong></p>
                <p style="font-size: medium;"><a href="mailto:myicecream@gmail.com">myicecream@gmail.com</a></p>
                <p><asp:Image ID="Image3" runat="server" ImageUrl="~/Images/call.png" Height="34px" Width="41px" />&nbsp;<strong><span class="auto-style6">Call Us</span></strong></p>
                <p>+91-8897654321</p>
                <p><asp:Image ID="Image4" runat="server" ImageUrl="~/Images/timing.png" Height="34px" Width="41px" />&nbsp;<strong><span class="auto-style6">Our Timing</span></strong></p>
                <p>Mon - Sun: 10:00 AM - 08:00 PM</p>
            </td>
        </tr>
    </table>
      </div>
</asp:Content>
