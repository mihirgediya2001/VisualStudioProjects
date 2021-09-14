using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FileUpload
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                if (FileUpload1.PostedFile.ContentType == "image/jpeg" || FileUpload1.PostedFile.ContentType == "image/png")
                {

                    if (FileUpload1.PostedFile.ContentLength <= 300000)
                    {
                        String url = "C:\\Users\\HP\\source\\repos\\FileUpload\\images\\" + FileUpload1.FileName.ToString();
                        FileUpload1.PostedFile.SaveAs(url);
                        HyperLink l = new HyperLink();
                        l.Text = "File Uploaded Successfully. :)";
                        l.ForeColor = System.Drawing.Color.Green;
                        PlaceHolder1.Controls.Add(l);
                        Image1.ImageUrl = "~\\images\\" + FileUpload1.FileName.ToString();
                        Image1.Height = Unit.Pixel(400);

                        HyperLink l2 = new HyperLink();
                        l2.Text = "Your Selected Picture:";
                        PlaceHolder2.Controls.Add(l2);
                    }
                    else
                    {
                        HyperLink l = new HyperLink();
                        l.Text = "Size of file should be less than 300000";
                        l.ForeColor = System.Drawing.Color.Red;
                        PlaceHolder1.Controls.Add(l);
                    }
                }
                else
                {
                    HyperLink l = new HyperLink();
                    l.Text = "File must have extension .jpeg and .png only.";
                    l.ForeColor = System.Drawing.Color.Red;
                    PlaceHolder1.Controls.Add(l);
                }
            }
            else
            {
                HyperLink l = new HyperLink();
                l.Text = "Please select a file.";
                l.ForeColor = System.Drawing.Color.Red;
                PlaceHolder1.Controls.Add(l);
            }
        }

        /*
         protected void Button1_Click(object sender, EventArgs e)
        {
            //application/pdf  image/jpeg  text/plain

            if (FileUpload1.HasFile)
            {
                if (FileUpload1.PostedFile.ContentType == "image/jpeg" || FileUpload1.PostedFile.ContentType == "image/png")
                {

                    if (FileUpload1.PostedFile.ContentLength <= 200000)
                    {
                        Response.Write("uploaded");
                        FileUpload1.PostedFile.SaveAs("C:\\Users\\HP\\source\\repos\\FileUpload\\images\\" + FileUpload1.FileName.ToString());
                    }
                    else
                    {
                        Response.Write("file should be less than 775702");
                    }
                }
                else
                {
                    Response.Write("File must have extension .jpeg and png only");
                }
            }
            //Response.Write("Contetn type="+FileUpload1.PostedFile.ContentType.ToString());
            //Response.Write("<br/>content lenght=" +FileUpload1.PostedFile.ContentLength);
            //Response.Write("<br/>content File name"+FileUpload1.FileName.ToString());
            //Response.Write(FileUpload1.HasFile.ToString());

            // FileUpload1.PostedFile.SaveAs("E:\\odd 2021 wt\\secondsessional\\images\\first.jpeg");

        }
         */
    }
}