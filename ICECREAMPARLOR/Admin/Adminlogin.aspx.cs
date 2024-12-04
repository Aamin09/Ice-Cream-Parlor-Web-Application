using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

public partial class Admin_Adminlogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
    }



    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        string cnstr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=""C:\Users\aamin\Documents\MCA SEM2 PRACTICE\C# .NET\ICECREAMPARLOR\ICECREAMPARLOR\App_Data\Database.mdf"";Integrated Security=True";
        SqlConnection cn = new SqlConnection(cnstr);
        string cmdstr = "admlogin";
        SqlCommand cmd = new SqlCommand(cmdstr, cn);
        cn.Open();
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("user", txtxUser.Text);
        cmd.Parameters.AddWithValue("pass", txtPass.Text);

        if (cn.State == ConnectionState.Open)
        {
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                Response.Redirect("~/Admin/Adminhome.aspx");
            }
        }
    }
}