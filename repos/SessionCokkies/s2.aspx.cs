﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SessionCokkies
{
    public partial class s2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["username"] != null)
            {
                Response.Write(Session["username"].ToString());
            }
            else
            {
                Response.Redirect("s3.aspx");
            }
        }
    }
}