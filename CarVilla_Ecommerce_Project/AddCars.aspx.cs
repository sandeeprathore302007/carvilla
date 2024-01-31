using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CarVilla_Ecommerce_Project
{
    public partial class AddCars : System.Web.UI.Page
    {
        SqlConnection conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            string cfc = ConfigurationManager.ConnectionStrings["carvilla"].ConnectionString;
            conn = new SqlConnection(cfc);
            conn.Open();

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string carName,  carModel, carCategory, carImage;
            double carPrice;

            carName = TextBox1.Text;
            carPrice = double.Parse(TextBox2.Text);
            carModel = TextBox3.Text;
            carCategory = DropDownList1.SelectedValue;
            FileUpload1.SaveAs(Server.MapPath("Images/") + Path.GetFileName(FileUpload1.FileName));
            carImage = "Iamges/" + Path.GetFileName(FileUpload1.FileName);

            
           

            string query = "insert into carsdetails (carName , carPrice , carModel , carCategory , carImage) values ('" +carName + "','"+carPrice+"' , '"+carModel+"' , '"+carCategory+"' , '"+carImage+"' )";

            SqlCommand cmd = new SqlCommand(query, conn);

            cmd.ExecuteNonQuery();

            Response.Write("<script>alert('Product added Succesfully')</script>");




        }
    }
}