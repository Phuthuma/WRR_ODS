using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


namespace Online_Driving_School_MS.User
{
    public partial class ProEdit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie cookie = Request.Cookies["UserInfo"];
            string uname = cookie["Uname"];

            if (cookie != null)
            {
                SqlConnection con = new SqlConnection("Data Source=openbox.nmmu.ac.za\\wrr;Initial Catalog=MC04;Integrated Security=True");

                con.Open();

                string sqlcom = "select Name from STUDENT where Uname='" + uname + "'";
                SqlDataAdapter sda = new SqlDataAdapter(sqlcom, con);
                DataTable dt = new DataTable();
                sda.Fill(dt);

                lblHead.Text = dt.Rows[0]["Name"].ToString();
           
                con.Close();

                SqlDataSource1.SelectParameters["Uname"].DefaultValue = cookie["Uname"];
            }

            else
                Response.Redirect("~/Phuthuma/Login.aspx");

        }

        protected void LinkButton1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("~/Phuthuma/StudProEdit.aspx");
        }

        protected void linkUploadLink_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Phuthuma/StudProEdit.aspx");
        }

       
    }
}