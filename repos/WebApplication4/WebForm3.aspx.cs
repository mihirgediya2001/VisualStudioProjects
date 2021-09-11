using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication4
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            HyperLink l = new HyperLink();
            l.Text = "X: " + e.X + ", Y: " + e.Y + "\n";
            PlaceHolder1.Controls.Add(l);
        }
    }
}