using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int rows ;
            int cols ;


            if (DropDownList1.SelectedIndex != 0 )
            {
                 rows = Convert.ToInt32(DropDownList1.SelectedItem.Text);
            }
            else
            {
                rows = 3;
            }
            if(DropDownList2.SelectedIndex != 0)
            {
                 cols = Convert.ToInt32(DropDownList2.SelectedItem.Text);
            }
            else
            {
                cols = 3;
            }
            


            Table tb = new Table();

            for (int r = 0; r < rows; r++)
            {
                TableRow tr = new TableRow();

                for (int c = 0; c < cols; c++)
                {
                    TableCell tc = new TableCell();
                    HyperLink l = new HyperLink();
                    l.Text = "\n  (" + r + " , " + c + ")  \n";
                    tc.Width = 60;
                    tc.Height = 30;
                    tc.HorizontalAlign = HorizontalAlign.Center;
                    tc.VerticalAlign = VerticalAlign.Middle;
                    tc.Controls.Add(l);
                    
                    tr.Cells.Add(tc);


                }
                tb.Rows.Add(tr);
                PlaceHolder1.Controls.Add(tb);

            }
            if(DropDownList3.SelectedIndex == 0)
            {
                tb.GridLines = (GridLines)(3);
            }
            else
            {
                tb.GridLines = (GridLines)(DropDownList3.SelectedIndex - 1);
            }
        }
    
    }
}