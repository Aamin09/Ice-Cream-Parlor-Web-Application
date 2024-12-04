using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_cartitems : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        if (!IsPostBack)
        {
           
            BindCartItems();
            
        }

    }

    
    protected void BindCartItems()
    {
        if (Session["CartItems"] != null)
        {
            List<string[]> cartItemsList = (List<string[]>)Session["CartItems"];
            DataTable dtCartItems = new DataTable();
            dtCartItems.Columns.Add("ItemName", typeof(string));
            dtCartItems.Columns.Add("ItemPrice", typeof(string));
            decimal totalPrice = 0;
            foreach (string[] item in cartItemsList)
            {
                dtCartItems.Rows.Add(item);
                decimal itemPrice = decimal.Parse(item[1].Replace("Rs. ", ""));
                int quantity = 1; // Default quantity is 1, you can change this if needed
                totalPrice += itemPrice * quantity;
            }

            txtTotalP.Text = "Rs. " + totalPrice.ToString();
            rptCartItems.DataSource = dtCartItems;
            rptCartItems.DataBind();
        }
    }

    protected void AddToCart(string itemName, string itemPrice)
    {
        if (Session["CartItems"] == null)
        {
            Session["CartItems"] = new List<string[]>();
        }

        List<string[]> cartItemsList = (List<string[]>)Session["CartItems"];
        cartItemsList.Add(new string[] { itemName, itemPrice });
        Session["CartItems"] = cartItemsList;
    }

    protected void btnPay_Click(object sender, EventArgs e)
    {
        if (Session["CartItems"] != null)
        { 
            string cnstr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=""C:\Users\aamin\Documents\MCA SEM2 PRACTICE\C# .NET\ICECREAMPARLOR\ICECREAMPARLOR\App_Data\Database.mdf"";Integrated Security=True";
            string cmdstr = "insert into order_history (name,address,gender,item_name,item_price,item_quantity,final_price)values(@name,@address,@gender,@iname,@iprice,@iquantity,@ifinal)";
            string cmdstr1 = "select quantity from tb_stock where itemname=@itemname";
            SqlConnection cn = new SqlConnection(cnstr);
            cn.Open();
            foreach (RepeaterItem item in rptCartItems.Items)
            {
                if (item.ItemType == ListItemType.Item || item.ItemType == ListItemType.AlternatingItem)
                {
                    Label itemNameLabel = (Label)item.FindControl("lblItemName");
                    Label itemPriceLabel = (Label)item.FindControl("lblItemPrice");
                    TextBox quantityTextBox = (TextBox)item.FindControl("quantity");
                    
                    if (itemNameLabel != null && itemPriceLabel != null && quantityTextBox != null)
                    {
                        // QUANTITY CHECK IN STOCK
                        string itemname = itemNameLabel.Text;
                        SqlCommand cmd1 = new SqlCommand(cmdstr1, cn);
                        cmd1.Parameters.AddWithValue("@itemname", itemname);
                        int availableqty = Convert.ToInt32(cmd1.ExecuteNonQuery());
                        int selectedqty = Convert.ToInt32(quantityTextBox.Text);
                        if (selectedqty > availableqty)
                        {
                            LabelStockError.Visible = true;
                            LabelStockError.Text = "Sorry, "+itemname+" is out of stock. Available Quantity: "+availableqty;
                            break;
                        }

                        // Convert quantity to integer
                        int quantity = Convert.ToInt32(quantityTextBox.Text);
                        decimal itemPrice = decimal.Parse(itemPriceLabel.Text.Replace("Rs. ", ""));
                        decimal finalPrice = itemPrice * quantity;
                        SqlCommand cmd = new SqlCommand(cmdstr, cn);
                        cmd.Parameters.AddWithValue("@name", txtname.Text);
                        cmd.Parameters.AddWithValue("@address", txtaddress.Text);
                        cmd.Parameters.AddWithValue("@gender", RadioButtonList1.SelectedValue);
                        cmd.Parameters.AddWithValue("@iname", itemNameLabel.Text);
                        cmd.Parameters.AddWithValue("@iprice", itemPriceLabel.Text);
                        cmd.Parameters.AddWithValue("@iquantity", quantity);
                        cmd.Parameters.AddWithValue("@final", finalPrice);

                        cmd.ExecuteNonQuery();
                    }
                }
            }

            CalculateTotalPrice();
            Response.Redirect("~/payment.aspx");
        }
    }


    protected void btnRemove_Click(object sender, EventArgs e)
    {
        string searchText = txtRemoveSearch.Text.Trim();
        if (Session["CartItems"] != null)
        {
            List<string[]> cartItemsList = (List<string[]>)Session["CartItems"];
            for (int i = 0; i < cartItemsList.Count; i++)
            {
                string[] item = cartItemsList[i];
                if (item[0] == searchText)
                {
                    cartItemsList.RemoveAt(i);
                    break;
                }
            }
            Session["CartItems"] = cartItemsList;
            BindCartItems();
            CalculateTotalPrice();
        }
    }

    protected void CalculateTotalPrice()
    {
        if (Session["CartItems"] != null)
        {
            List<string[]> cartItemsList = (List<string[]>)Session["CartItems"];
            decimal totalPrice = 0;
            foreach (string[] item in cartItemsList)
            {
                decimal itemPrice = decimal.Parse(item[1].Replace("Rs. ", ""));
                int quantity = 1; // Default quantity is 1, you can change this if needed
                totalPrice += itemPrice * quantity;
            }
            txtTotalP.Text = "Rs. " + totalPrice.ToString();
            string tp = txtTotalP.Text;
            Session["tp"] = tp;
        }
    }

    protected void btnAddItem_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/orderonline.aspx");
    }
}








