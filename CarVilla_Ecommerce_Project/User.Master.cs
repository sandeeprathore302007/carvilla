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
    public partial class Site1 : System.Web.UI.MasterPage
    {

        SqlConnection conn; 
        protected void Page_Load(object sender, EventArgs e)
        {
            string cnst = ConfigurationManager.ConnectionStrings["carvilla"].ConnectionString;
            conn = new SqlConnection(cnst);
            conn.Open();
            if (Session["userN"] == null)
            {
                Response.Redirect("login.aspx");
            }
            Label1.Text = Session["userN"].ToString();

            findusername();
        }

        public void findusername()
        {
            string em = Session["userN"].ToString();

            string query = "select * from userdetails where userEmail = '" + em + "'";
            SqlCommand cmd = new SqlCommand(query, conn);
           SqlDataReader rdr =  cmd.ExecuteReader();
            rdr.Read();
           Label1.Text =  rdr["userName"].ToString();
             


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("login.aspx");
        }
    }
}