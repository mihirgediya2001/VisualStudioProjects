using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SessionCokkies
{
    public partial class s1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["username"] = null;
            if(TextBox1.Text == "wizard" && TextBox2.Text == "king")
            {
                Session["username"] = "wizard";
                Response.Redirect("s2.aspx");            }
        }
    }
}