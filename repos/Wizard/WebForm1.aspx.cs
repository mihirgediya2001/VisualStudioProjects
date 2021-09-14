using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Wizard
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MultiView1.SetActiveView(View1);
        }

        protected void Wizard1_NextButtonClick(object sender, WizardNavigationEventArgs e)
        {
            if (e.CurrentStepIndex == 1)
            {
                

            }
            if (e.CurrentStepIndex == 3)
            {

            }
        }

        protected void Wizard1_FinishButtonClick(object sender, WizardNavigationEventArgs e)
        {
            Label1.Text = TextBox2.Text;
            Label2.Text = TextBox3.Text;
            Label3.Text = TextBox4.Text;
            Label4.Text = TextBox5.Text;
            Label5.Text = TextBox6.Text;
            Label6.Text = TextBox7.Text;
            Label7.Text = TextBox8.Text;
            Label8.Text = TextBox9.Text;
            Label9.Text = TextBox10.Text;
            MultiView1.SetActiveView(View2);

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            TextBox8.Text = "";
            TextBox9.Text = "";
            TextBox10.Text = "";
            MultiView1.SetActiveView(View1);

        }
    }
}