﻿using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class home : System.Web.UI.Page
{

    protected void btnMenu_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/orderonline.aspx");
    }

    protected void Page_Load(object sender, EventArgs e)
    {

    }
}
