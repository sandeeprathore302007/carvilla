using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CarVilla_Ecommerce_Project
{
    public partial class Registration : System.Web.UI.Page
    {
        SqlConnection conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            

            string cstr = ConfigurationManager.ConnectionStrings["carvilla"].ConnectionString;
            conn = new SqlConnection(cstr);
            conn.Open();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string username, email, password, confirmpassword;
            username = TextBox3.Text;
            email = TextBox4.Text;
            password = TextBox5.Text;
            confirmpassword = TextBox6.Text;

            string query = "insert into userdetails ( userName , userEmail , userPassword , uRole ) values ( '"+username+"' , '"+email+"' , '"+password+"' , 'User' ) ";
            SqlCommand cmd = new SqlCommand(query, conn);

            int rowsAffected = cmd.ExecuteNonQuery();

            // Check if any rows were affected
            if (rowsAffected > 0)
            {
               
                Response.Write("<script>alert('Registered Successfull')</script>");
                
            }
            else
            {

                Response.Write("<script>alert('Invalid credentials')</script>");
            }








        }
    }
}