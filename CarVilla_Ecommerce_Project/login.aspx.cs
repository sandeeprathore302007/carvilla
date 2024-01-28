using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CarVilla_Ecommerce_Project
{
    public partial class login : System.Web.UI.Page
    {
        SqlConnection conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            string cstr = ConfigurationManager.ConnectionStrings["carvilla"].ConnectionString;
            conn = new SqlConnection(cstr);
            conn.Open();
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            string email, password, username; 

            email = TextBox1.Text;
            password = TextBox2.Text;

            string query = "select *  from userdetails where userEmail ='" + email + "' AND userPassword = '" + password + "' ";
            SqlCommand cmd = new SqlCommand(query, conn);

            using (SqlDataReader rdr = cmd.ExecuteReader())

                if (rdr.HasRows)
                {
                    while (rdr.Read())
                    {
                        if (rdr["userEmail"].Equals(email) && rdr["userPassword"].Equals(password) && rdr["uRole"].Equals("User"))
                        {
                            Session["userN"] = email;
                            Response.Redirect("UserHome.aspx");
                        }
                        if (rdr["userEmail"].Equals(email) && rdr["userPassword"].Equals(password) && rdr["uRole"].Equals("Admin"))
                        {
                             Session["userN"] = email;
                            Response.Redirect("AdminHome.aspx");
                        }
                    }
                }
                else
                {
                    Response.Write("<script>alert('Invalid credentials')</script>");
                }


        }

        
    }
}