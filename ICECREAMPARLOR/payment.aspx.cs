using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Data;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class payment : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode=UnobtrusiveValidationMode.None;
        if (!IsPostBack)
        {
            // Check if session variables exist
            if (Session["tp"] != null)
            {
                amount.Text = Session["tp"].ToString();
            }
        }
       lblOTP.Visible=txtOTP.Visible=btnFinalSubmmit.Visible=RequiredFieldValidator5.Enabled=false;
    }

    protected void submitPayment_Click(object sender, EventArgs e)
    {
        lblOTP.Visible = txtOTP.Visible = btnFinalSubmmit.Visible = RequiredFieldValidator5.Enabled = true;
       
        submitPayment.Visible = false;

    }

    protected void btnFinalSubmit(object sender, EventArgs e)
    {
        string cnstr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=""C:\Users\aamin\Documents\MCA SEM2 PRACTICE\C# .NET\ICECREAMPARLOR\ICECREAMPARLOR\App_Data\Database.mdf"";Integrated Security=True";
        string cmdstr = "insert into payment_details(card_number,holder_name,expiration_date,cvv) values(@cno,@hname,@edate,@cvv)";

        SqlConnection cn = new SqlConnection(cnstr);
        cn.Open();
        SqlCommand cmd = new SqlCommand(cmdstr, cn);
        cmd.Parameters.AddWithValue("@cno", cardNumber.Text);
        cmd.Parameters.AddWithValue("@hname", cardHolderName.Text);
        cmd.Parameters.AddWithValue("@edate", expirationDate.Text);
        cmd.Parameters.AddWithValue("@cvv", cvv.Text);

        cmd.ExecuteNonQuery();
        string script = "alert('Payment Successfull. Your order deliver soon....')";
        ScriptManager.RegisterStartupScript(this, GetType(), "payment", script, true);
        Reset();
    }
    private void Reset()
    {
       txtOTP.Text= string.Empty;
        cardHolderName.Text= string.Empty;
        cardNumber.Text= string.Empty;
        amount.Text= string.Empty;
        cvv.Text= string.Empty;
        expirationDate.Text= string.Empty;
        lblOTP.Visible = txtOTP.Visible = btnFinalSubmmit.Visible = RequiredFieldValidator5.Enabled = false;
        submitPayment.Visible = true;
    }
}