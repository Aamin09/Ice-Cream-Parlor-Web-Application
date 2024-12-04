using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Security.Principal;
using System.Web.Security;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
    }


    protected void Unnamed6_Click(object sender, EventArgs e)
    {
        string cnstr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=""C:\Users\aamin\Documents\MCA SEM2 PRACTICE\C# .NET\ICECREAMPARLOR\ICECREAMPARLOR\App_Data\Database.mdf"";Integrated Security=True";
        SqlConnection cn = new SqlConnection(cnstr);
        string cmdstr = "ulogin";
        SqlCommand cmd = new SqlCommand(cmdstr, cn);
        cn.Open();
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("user", Username.Text);
        cmd.Parameters.AddWithValue("pass", Password.Text);

        if (cn.State == ConnectionState.Open)
        {
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows){
            
                FormsAuthenticationTicket ticket = new FormsAuthenticationTicket(
                1,                                  // Version number
                Username.Text,                     // Username associated with the ticket
                DateTime.Now,                       // Issue date
                DateTime.Now.AddMinutes(10),        // Expiration date
                false,                              // Whether the ticket is persistent (true for persistent)
                "");                                // User data (you can store additional user-related data here)

                // Encrypt the ticket
                string encryptedTicket = FormsAuthentication.Encrypt(ticket);

                // Create a cookie to store the encrypted ticket
                HttpCookie cookie = new HttpCookie(FormsAuthentication.FormsCookieName, encryptedTicket);

                // Add the cookie to the response
                Response.Cookies.Add(cookie);

                // or we can use simple one line code for from  authentication as shown as below
                //  FormsAuthentication.SetAuthCookie(Username.Text, false);
                Response.Redirect("~/orderonline.aspx");
        }
        }
        cn.Close();
    }





    protected void btnDelete_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/DeleteAccount.aspx");
    }

    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/UpdateAccount.aspx");
    }
}