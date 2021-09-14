using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace exp1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DateTime todaydate = DateTime.Now;
            DateTime date18 = DateTime.Now.AddYears(-18);
            if (Fname.Text == "" || MName.Text == "" || LName.Text == "" || Email.Text == "" || Contact.Text == "" || City.Text == "" || PinCode.Text == "")
            {
                Label l = new Label();
                l.Text = "Please Fill all fields.";
                l.ForeColor = System.Drawing.Color.Red;
                //PlaceHolder1.Controls.Add(l);
            }
            else if (Gender.SelectedIndex == 0)
            {
                Label l = new Label();
                l.Text = "Please select gender.";
                l.ForeColor = System.Drawing.Color.Red;
               // PlaceHolder1.Controls.Add(l);
            }
            else if (Country.SelectedIndex == 0)
            {
                Label l = new Label();
                l.Text = "Please select country.";
                l.ForeColor = System.Drawing.Color.Red;
               // PlaceHolder1.Controls.Add(l);
            }
            else if (Contact.Text.Length != 10)
            {
                Label l = new Label();
                l.Text = "Contact number must have 10 digits.";
                l.ForeColor = System.Drawing.Color.Red;
             //   PlaceHolder1.Controls.Add(l);
            }
            else if (PinCode.Text.Length != 6)
            {
                Label l = new Label();
                l.Text = "Pincode must have 6 digits.";
                l.ForeColor = System.Drawing.Color.Red;
              //  PlaceHolder1.Controls.Add(l);
            }
            else if (!(Married.Checked || Unmarried.Checked || Divorced.Checked || Widow.Checked))
            {
                Label l = new Label();
                l.Text = "Select Marital Status.";
                l.ForeColor = System.Drawing.Color.Red;
                PlaceHolder1.Controls.Add(l);
            }
            else if (!(Reading.Checked || Writing.Checked || Singing.Checked || Dancing.Checked || Playing.Checked||Other.Checked))
            {
                Label l = new Label();
                l.Text = "Select Atleast one Hobby.";
                l.ForeColor = System.Drawing.Color.Red;
                PlaceHolder1.Controls.Add(l);
            }
            else if(Calendar1.SelectedDate.Date == DateTime.Now.Date && Calendar1.SelectedDate.Month == DateTime.Now.Month && Calendar1.SelectedDate.Year == DateTime.Now.Year)
            {
                Label l = new Label();
                l.Text = "Select Date of Birth.<br />Can not select Today's date :(";
                l.ForeColor = System.Drawing.Color.Red;
                PlaceHolder1.Controls.Add(l);
            }
            else if(Calendar1.SelectedDate >= todaydate)
            {
                Label l = new Label();
                l.Text = "Can not select future dates.";
                l.ForeColor = System.Drawing.Color.Red;
                PlaceHolder1.Controls.Add(l);
            }
            else if (Calendar1.SelectedDate < date18)
            {
                Label l = new Label();
                l.Text = "Maximum age must be 18.";
                l.ForeColor = System.Drawing.Color.Red;
                PlaceHolder1.Controls.Add(l);
            }
            else
            {
                SqlConnection conn = new SqlConnection();
                conn.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True";
                conn.Open();

                if (conn.State == ConnectionState.Open)
                {
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandType = CommandType.Text;
                    cmd.CommandText = "select * from profile3";
                    cmd.Connection = conn;
                    SqlDataAdapter da = new SqlDataAdapter();
                    DataSet ds = new DataSet();
                    da.SelectCommand = cmd;

                    da.Fill(ds, "T1");

                    int length = ds.Tables["T1"].Rows.Count;
                    int id = 1;

                    if(length !=0)
                    {
                        string id1 = ds.Tables["T1"].Rows[length - 1]["id"].ToString();
                        id = Convert.ToInt32(id1) + 1;
                    }

                    string query = "insert into profile3 values(@id, @fname, @mname, @lname, @email, @contact, @gender, @city, @pincode, @country, @ms,@hobby ,@dob); ";
                    cmd.CommandText = query;
                    cmd.CommandType = CommandType.Text;
                    cmd.Connection = conn;

                    string ms;

                    ms = Married.Checked ? Married.Text : ( Unmarried.Checked ? Unmarried.Text : 
                        ( Divorced.Checked ? Divorced.Text : (Widow.Checked ? Widow.Text : "No Status")));

                    string hobby = "";
                    foreach (CheckBox checkBox in Panel1.Controls.OfType<CheckBox>())
                    {
                        if (checkBox.Checked)
                        {
                            hobby += checkBox.Text + ", ";
                        }
                    }

                    String selDate = Calendar1.SelectedDate.ToShortDateString();

                    SqlParameter p1 = new SqlParameter("@id", id);
                    SqlParameter p2 = new SqlParameter("@fname", Fname.Text);
                    SqlParameter p3 = new SqlParameter("@mname", MName.Text);
                    SqlParameter p4 = new SqlParameter("@lname", LName.Text);
                    SqlParameter p5 = new SqlParameter("@email", Email.Text);
                    SqlParameter p6 = new SqlParameter("@contact", Convert.ToInt64(Contact.Text));
                    SqlParameter p7 = new SqlParameter("@gender", Gender.SelectedItem.Text);
                    SqlParameter p8 = new SqlParameter("@city", City.Text);
                    SqlParameter p9 = new SqlParameter("@pincode", Convert.ToInt32(PinCode.Text));    
                    SqlParameter p10 = new SqlParameter("@country", Country.SelectedItem.Text);
                    SqlParameter p11 = new SqlParameter("@ms", ms);
                    SqlParameter p12 = new SqlParameter("@hobby", hobby.Trim(','));
                    SqlParameter p13 = new SqlParameter("@dob", selDate);


                    cmd.Parameters.Add(p1);
                    cmd.Parameters.Add(p2);
                    cmd.Parameters.Add(p3);
                    cmd.Parameters.Add(p4);
                    cmd.Parameters.Add(p5);
                    cmd.Parameters.Add(p6);
                    cmd.Parameters.Add(p7);
                    cmd.Parameters.Add(p8);
                    cmd.Parameters.Add(p9);
                    cmd.Parameters.Add(p10);
                    cmd.Parameters.Add(p11);
                    cmd.Parameters.Add(p12);
                    cmd.Parameters.Add(p13);



                    int succ = Convert.ToInt32(cmd.ExecuteNonQuery());

                    if(succ >= 0)
                    {
                        Response.Redirect("~/WebForm2.aspx?uid=" + id);
                    }
                    else
                    {
                        Response.Write("Failed to write. :(");
                    }
                }
            }
        }
    }
}