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
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["uid"]);
            
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True";
            conn.Open();
            if (conn.State == ConnectionState.Open)
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "select * from profile3 where id=@uid";
                cmd.Connection = conn;
                SqlParameter p = new SqlParameter("@uid", id);
                cmd.Parameters.Add(p);
                SqlDataAdapter da = new SqlDataAdapter();
                DataSet ds = new DataSet();
                da.SelectCommand = cmd;
                da.Fill(ds, "T1");
                if (ds.Tables["T1"].Rows.Count > 0)
                {
                    string fname = ds.Tables["T1"].Rows[0]["fname"].ToString();
                    string mname = ds.Tables["T1"].Rows[0]["mname"].ToString();
                    string lname = ds.Tables["T1"].Rows[0]["lname"].ToString();
                    string email = ds.Tables["T1"].Rows[0]["email"].ToString();
                    Int64 contact = Convert.ToInt64(ds.Tables["T1"].Rows[0]["contact"]);
                    string gender = ds.Tables["T1"].Rows[0]["gender"].ToString();
                    string city = ds.Tables["T1"].Rows[0]["city"].ToString();
                    Int32 pincode = Convert.ToInt32(ds.Tables["T1"].Rows[0]["PinCode"]);
                    string country = ds.Tables["T1"].Rows[0]["country"].ToString();
                    string ms = ds.Tables["T1"].Rows[0]["MaritalStatus"].ToString();
                    string hobby = ds.Tables["T1"].Rows[0]["hobby"].ToString();
                    string dob = ds.Tables["T1"].Rows[0]["DOB"].ToString();

                    DataTable tb1 = new DataTable();

                    tb1.Columns.Add("usertag");
                    tb1.Columns.Add("uservalue");
                    tb1.Rows.Add("First Name:", fname);
                    tb1.Rows.Add("Middle Name:", mname);
                    tb1.Rows.Add("Last Name:", lname);
                    tb1.Rows.Add("Email Id:", email);
                    tb1.Rows.Add("Contact:", contact);
                    tb1.Rows.Add("Gender:", gender);
                    tb1.Rows.Add("Pincode:", pincode);
                    tb1.Rows.Add("City:", city);
                    tb1.Rows.Add("Country:", country);
                    tb1.Rows.Add("Marital Status", ms);
                    tb1.Rows.Add("Hobbies", hobby);
                    tb1.Rows.Add("Date of birth:", dob);

                    string userData = "<div style='border:double 6px;text-align: center' class='auto-style6'><table style='margin: auto' >";
                    userData += "<tr><td colspan='2'style='text-Align: center;'><h2>Your Details</h2> </td></tr><br/>";
                    foreach (DataRow dr in tb1.Rows)
                    {
                        userData = userData + "<tr><td style='width:50%; text-align:center;height: 30px'><label>"
                        + dr["usertag"].ToString() +
                        "</label></td><td style='text-align:center;height: 30px'><label style='Font-Weight:Bold;'> "
                        + dr["uservalue"].ToString() + "</label></td></tr>";
                    }
                    userData = userData + "</table><br/> </div>";
                    myDiv.InnerHtml = userData;

                }
                else
                {
                    myDiv.InnerHtml = "<h3 style='color:red;text-align:center'>No such user exist</h3>";
                }
            }
        }
    }
}