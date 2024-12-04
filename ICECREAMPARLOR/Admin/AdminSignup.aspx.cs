﻿using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_AdminSignup : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
    }

    protected void Unnamed8_Click(object sender, EventArgs e)
    {
        string cnstr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=""C:\Users\aamin\Documents\MCA SEM2 PRACTICE\C# .NET\ICECREAMPARLOR\ICECREAMPARLOR\App_Data\Database.mdf"";Integrated Security=True";
        SqlConnection cn = new SqlConnection(cnstr);
        string cmdstr = "insert into tb_adm_login values(@user,@pass,@email,@mobile)";
        SqlCommand cmd = new SqlCommand(cmdstr, cn);
        cn.Open();
        cmd.Parameters.AddWithValue("@user", UserName.Text);
        cmd.Parameters.AddWithValue("@pass", ConfirmPassword.Text);
        cmd.Parameters.AddWithValue("@email", txtEmail.Text);
        cmd.Parameters.AddWithValue("@mobile", txtMobiile.Text);

        if (cn.State == ConnectionState.Open)
        {
            SqlDataReader dr = cmd.ExecuteReader();
            string script = "alert('Registration successful')";
            ScriptManager.RegisterStartupScript(this, GetType(), "SignupScript", script, true);
            
        }
    }

    protected void btnbacadhome_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/Adminlogin.aspx");
    }
}