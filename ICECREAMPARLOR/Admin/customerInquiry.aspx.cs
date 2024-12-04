﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_customerInquiry : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            // Load the initial data into the GridView
            BindGrid();
        }
    }

    protected void txtsearch_TextChanged(object sender, EventArgs e)
    {
        string searchText = txtsearch.Text.Trim();

        if (!string.IsNullOrEmpty(searchText))
        {
            // Construct the SQL query to filter data based on the search text
            SqlDataSource1.SelectCommand = @"SELECT * FROM tb_contact WHERE 
                                         name LIKE @searchText OR
                                         mobile LIKE @searchText OR
                                         email LIKE @searchText OR
                                         message LIKE @searchText";
            SqlDataSource1.SelectParameters.Clear();
            SqlDataSource1.SelectParameters.Add("searchText", "%" + searchText + "%");
            GridView1.DataBind();
        }
        else
        {
            BindGrid();
        }
    }
    protected void BindGrid()
    {
        // Method to bind data to the GridView
        SqlDataSource1.SelectCommand = "SELECT * FROM tb_contact";
        GridView1.DataBind();
    }

    protected void btnbacadhome_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/Adminhome.aspx");
    }
}