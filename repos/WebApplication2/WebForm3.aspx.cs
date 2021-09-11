using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Calc(object sender, CommandEventArgs e)
        {
            String cmdarg = e.CommandArgument.ToString();
            String cmdname = e.CommandName.ToString();

            if (TextBox1.Text == "" || TextBox2.Text == "" || TextBox1.Text == "Please Enter a value" || TextBox2.Text == "Please Enter a value")
            {
                if (TextBox1.Text == "" || TextBox1.Text == "Please Enter a value")
                {
                    TextBox1.BorderColor = System.Drawing.Color.Red;
                    TextBox1.ForeColor = System.Drawing.Color.Red;
                    TextBox1.Text = "Please Enter a value";
                }
                else
                {
                    TextBox1.BorderColor = System.Drawing.Color.Black;
                    TextBox1.ForeColor = System.Drawing.Color.Black;
                }

                if (TextBox2.Text == "" || TextBox2.Text == "Please Enter a value")
                {
                    TextBox2.BorderColor = System.Drawing.Color.Red;
                    TextBox2.ForeColor = System.Drawing.Color.Red;
                    TextBox2.Text = "Please Enter a value";
                }
                else
                {
                    TextBox2.BorderColor = System.Drawing.Color.Black;
                    TextBox2.ForeColor = System.Drawing.Color.Black;
                }
            }
            else if (cmdname == "math")
            {
                int value1 = Convert.ToInt32(TextBox1.Text);
                int value2 = Convert.ToInt32(TextBox2.Text);

                TextBox1.BorderColor = System.Drawing.Color.Black;
                TextBox2.BorderColor = System.Drawing.Color.Black;
                TextBox1.ForeColor = System.Drawing.Color.Black;
                TextBox2.ForeColor = System.Drawing.Color.Black;
                Result.BorderColor = System.Drawing.Color.Black;
                Result.ForeColor = System.Drawing.Color.Black;


                if (cmdarg == "add")
                {
                    Result.Text = Convert.ToString(value1 + value2);
                }
                else if (cmdarg == "sub")
                {
                    Result.Text = Convert.ToString(value1 - value2);
                }
                else if (cmdarg == "mul")
                {
                    Result.Text = Convert.ToString(value1 * value2);
                }
                else if (cmdarg == "div")
                {
                    if (TextBox2.Text == "0")
                    {
                        TextBox2.BorderColor = System.Drawing.Color.Red;
                        Result.BorderColor = System.Drawing.Color.Red;
                        TextBox2.ForeColor = System.Drawing.Color.Red;
                        Result.ForeColor = System.Drawing.Color.Red;
                        Result.Text = "Cannot divide by 0";
                    }
                    else
                    {
                        TextBox2.ForeColor = System.Drawing.Color.Black;
                        Result.BorderColor = System.Drawing.Color.Black;
                        Result.ForeColor = System.Drawing.Color.Black;
                        Result.Text = Convert.ToString((decimal)value1 / (decimal)value2);
                    }
                }
            }
        }
    }
}