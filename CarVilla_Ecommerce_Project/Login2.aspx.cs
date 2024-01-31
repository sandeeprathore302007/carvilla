using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CarVilla_Ecommerce_Project
{
    public partial class Login2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string email, password;

            email = TextBox1.Text;
            password = TextBox2.Text;

            Session["UserN"] = email;

            Response.Redirect("dashboard.aspx");

        }
    }
}