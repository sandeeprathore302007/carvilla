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
    public partial class FeaturedCars : System.Web.UI.Page
    {
        SqlConnection conn; 
        protected void Page_Load(object sender, EventArgs e)
        {
            string cnft  = ConfigurationManager.ConnectionStrings["carvilla"].ConnectionString;  
            conn = new SqlConnection(cnft);
            conn.Open();
          
            
            if(!IsPostBack)
            {
                ShowCars();

            }



        }

        public void ShowCars()
        {
            string query = "select * from carsdetails";
            SqlCommand cmd = new SqlCommand(query, conn);

            SqlDataReader rdr = cmd.ExecuteReader();

            DataList1.DataSource = rdr;
            DataList1.DataBind();
        }


        protected void DataList1_ItemCommand(object sender, DataListCommandEventArgs e)
        {
            if(e.CommandName == "Add")
            {
                string query = "select * from cardetails where carId = '" + e.CommandArgument.ToString()+"'";
                SqlCommand cmd = new SqlCommand(query, conn);
                SqlDataReader rdr = cmd.ExecuteReader();
                rdr.Read();
                string carName =  rdr["carName"].ToString();
                string carModel = rdr["carModel"].ToString();
                double carPrice = double.Parse(rdr["carPrice"].ToString());
                string carCategory = rdr["carCategory"].ToString();
                string carImage = rdr["carImage"].ToString();

                string query2 = "insert into wishlist (carName , carPrice , carModel , carCategory , carImage , sUser) values ('" + carName + "','" + carModel + "','" + carPrice + "','" + carCategory + "','" + carImage + "', '" + Session["userN"] + "')";

                SqlCommand cmd1 = new SqlCommand(query2, conn);
              int res =   cmd1.ExecuteNonQuery();

                if(res>0)
                {
                    Response.Redirect("WishList.apsx");
                }
                else
                {
                    Response.Redirect("<script>alert('something went wrong')</script>");
                }

            }
        }
    }
}