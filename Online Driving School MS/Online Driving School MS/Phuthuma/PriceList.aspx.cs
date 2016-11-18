using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Online_Driving_School_MS.Phuthuma
{
    public partial class PriceList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //SqlConnection con = new SqlConnection("Data Source=openbox.nmmu.ac.za\\wrr;Initial Catalog=MC04;Integrated Security=True");

            //con.Open();

            //string chechuser = "select Pic, Heading, Price from PRICE";
            //SqlDataAdapter sda = new SqlDataAdapter(chechuser, con);
            //DataTable dt = new DataTable();
            //sda.Fill(dt);

            //ListView1.DataSource = dt;
            //ListView1.DataBind();

            //con.Close();

        }
    }
}