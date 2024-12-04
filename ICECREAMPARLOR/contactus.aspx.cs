using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class contactus : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode =UnobtrusiveValidationMode.None;
        LabelResponse.Visible = false;
    }



    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        string cnstr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=""C:\Users\aamin\Documents\MCA SEM2 PRACTICE\C# .NET\ICECREAMPARLOR\ICECREAMPARLOR\App_Data\Database.mdf"";Integrated Security=True";
        SqlConnection cn = new SqlConnection(cnstr);
        string cmdstr = "insert into tb_contact values(@name,@mobile,@email,@message)";
        SqlCommand cmd = new SqlCommand(cmdstr, cn);
        cn.Open();
        cmd.Parameters.AddWithValue("@name", txtName.Text);
        cmd.Parameters.AddWithValue("@mobile",txtMobile.Text);
        cmd.Parameters.AddWithValue("@email", txtEmail.Text);
        cmd.Parameters.AddWithValue("@message", txtMessage.Text);

        if (cn.State == ConnectionState.Open)
        {
            SqlDataReader dr = cmd.ExecuteReader();
            LabelResponse.Visible = true;
        }
    }
}