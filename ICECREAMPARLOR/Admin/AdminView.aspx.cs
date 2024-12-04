using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_AdminView : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            // Load the initial data into the GridView
            BindGrid();
        }
    }
    protected void BindGrid()
    {
        // Method to bind data to the GridView
        SqlDataSource1.SelectCommand = "SELECT * FROM tb_adm_login";
        GridView1.DataBind();
    }

    protected void txtsearch_TextChanged1(object sender, EventArgs e)
    {
        string searchText = txtsearch.Text.Trim();
        if (!string.IsNullOrEmpty(searchText))
        {
            // Construct the SQL query to filter data based on the search text
            SqlDataSource1.SelectCommand = "SELECT * FROM tb_adm_login WHERE user LIKE '%' + @searchText + '%' OR email LIKE '%' + @searchText + '%' OR mobile LIKE '%' + @searchText + '%'";
            SqlDataSource1.SelectParameters.Clear();
            SqlDataSource1.SelectParameters.Add("searchText", DbType.String, searchText);
            GridView1.DataBind();
        }
        else
        {
            // If search text is empty, bind the GridView with all data
            BindGrid();
        }
    }

    protected void btnbacadhome_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/Adminhome.aspx");
    }
}
