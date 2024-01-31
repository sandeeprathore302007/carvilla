using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CarVilla_Ecommerce_Project
{
    public partial class dashboard : System.Web.UI.Page
    {
        SqlConnection conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = Session["UserN"].ToString();
            string cf = ConfigurationManager.ConnectionStrings["carvilla"].ConnectionString;
            conn = new SqlConnection(cf);
            conn.Open();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string sendEmail, r_Email, sub, body, appPassword;
            sendEmail = (string)Session["UserN"];
            r_Email = DropDownList1.SelectedValue; 
            sub = TextBox1.Text;
            body = TextBox2.Text;
            string query = "select * from emailPassdb where userEmail = '"+sendEmail+"' ";
            SqlCommand cmd = new SqlCommand(query, conn);
          SqlDataReader rdr =   cmd.ExecuteReader();
            rdr.Read();

         appPassword =  rdr["userPassword"].ToString();


           
            
            MailMessage mail = new MailMessage();
            mail.From = new MailAddress(sendEmail);
           mail.To.Add(r_Email);
            mail.Subject = sub;
            mail.Body = body;

            if (FileUpload1.HasFile)
            {
                Attachment attachment = new Attachment(FileUpload1.PostedFile.InputStream, FileUpload1.FileName);
                mail.Attachments.Add(attachment);

            }

            SmtpClient smtpClient = new SmtpClient("smtp.gmail.com");
            smtpClient.Port = 587;
            smtpClient.Credentials = new NetworkCredential( sendEmail , appPassword);

            smtpClient.EnableSsl = true;
            smtpClient.Send(mail);

            Response.Write("<script>alert('Email sent successfuly')</script>");

        }
    }
}