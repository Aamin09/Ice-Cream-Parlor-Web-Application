using System;
using System.Collections.Generic;
using System.Data;
using System.Web;
using System.Linq;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

public partial class orderonline : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void transfertoCart(object sender, EventArgs e)
    {

        Button btn = (Button)sender;
        string itemName = "", itemPrice = "";

        // Get the item details based on the button clicked
        switch (btn.ID)
        {
          //CONE ITEMS
            case "btnBCone1":
                itemName = labelcone1.Text;
                itemPrice = LabelPCone1.Text;
                break;
            case "btnBCone2":
                itemName = labelcone2.Text;
                itemPrice = LabelPCone2.Text;
                break;
            case "btnBCone3":
                itemName = labelcone3.Text;
                itemPrice = LabelPCone3.Text;
                break;
            //CUP ITEMS
            case "btnCup1":
                itemName=labelcup1.Text;   
                itemPrice=LabelPCup1.Text;
                break;
            case "btnCup2":
                itemName = labelcup2.Text;
                itemPrice = LabelPCup2.Text;
                break;
            case "btnCup3":
                itemName = labelcup3.Text;
                itemPrice = LabelPCup3.Text;
                break;
            // FAMILY PACK
            case "btnF1":
                itemName=labelF1.Text;
                itemPrice=LabelFP1.Text;
                break;
            case "btnF2":
                itemName = labelF2.Text;
                itemPrice = LabelFP2.Text;
                break;
            case "btnF3":
                itemName = labelF3.Text;
                itemPrice = LabelFP3.Text;
                break;
            // STICK ITEMS
            case "btnS1":
                itemName = labelS1.Text;
                itemPrice = LabelSP1.Text;
                break;
            case "btnS2":
                itemName = labelS2.Text;
                itemPrice = LabelSP2.Text;
                break;
            case "btnS3":
                itemName = labeLS3.Text;
                itemPrice = LabelSP3.Text;
                break;


        }

        // Add item details to session
        AddItemToCart(itemName, itemPrice, 1); // Default quantity is 1
        if (!IsUserAuthenticatedWithValidCookie())
        {
            string script = "alert('Please Login first to continue')";
            ScriptManager.RegisterStartupScript(this, GetType(), "orderScript", script, true);
            return; // Terminate further execution on this button click
        }
        Response.Redirect("~/cartitems.aspx");
    }




    private bool IsUserAuthenticatedWithValidCookie()
    {
        // Check for authentication cookie and its validity (replace with your logic)
        if (HttpContext.Current.User.Identity.IsAuthenticated)
        {
            // Further validation (e.g., check cookie expiration, user data in cookie)
            // Implement your custom logic here to ensure the cookie is valid
            return true; // Replace with your validation logic
        }
        return false;
    }

    private void AddItemToCart(string itemName, string itemPrice, int quantity)
    {
        // Initialize session variable if not exists
        if (Session["CartItems"] == null)
        {
            Session["CartItems"] = new List<string[]>();
        }

        // Check if the item already exists in the cart
        List<string[]> cartItems = (List<string[]>)Session["CartItems"];
        foreach (string[] itemDetails in cartItems)
        {
            if (itemDetails[0] == itemName && itemDetails[1] == itemPrice)
            {
                // Item already exists, so return without adding
                return;
            }
        }

        // Add item details to session
        string[] itemDetailsToAdd = { itemName, itemPrice };
        cartItems.Add(itemDetailsToAdd);
        Session["CartItems"] = cartItems;
    }



    protected void btnCart_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/cartitems.aspx");
    }
}

