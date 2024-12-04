using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

public partial class Admin_AdminOrderHistory : System.Web.UI.Page
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
        // Assuming you have a GridView control named GridView1 to display search results
        string searchText = txtsearch.Text.Trim();

        if (!string.IsNullOrEmpty(searchText))
        {
            // Construct the SQL query to filter data based on the search text
            SqlDataSource1.SelectCommand = @"SELECT* FROM order_history WHERE
                                         name LIKE @searchText OR
                                         address LIKE @searchText OR
                                         gender LIKE @searchText OR
                                         item_name LIKE @searchText OR
                                         CONVERT(VARCHAR, item_price) LIKE @searchText OR
                                         CONVERT(VARCHAR, item_quantity) LIKE @searchText OR
                                         final_price LIKE @searchText";
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
        SqlDataSource1.SelectCommand = "SELECT * FROM order_history";
        GridView1.DataBind();
    }

    protected void btnbacadhome_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/Adminhome.aspx");
    }
}