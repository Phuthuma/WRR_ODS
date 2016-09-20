using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Windows.Forms;


namespace Online_Driving_School_MS.Account
{
    public partial class StudProEdit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
             HttpCookie cookie = Request.Cookies["UserInfo"];

             if (cookie != null)
             {

                 string uname = cookie["Uname"];

                 SqlConnection con = new SqlConnection("Data Source=openbox.nmmu.ac.za\\wrr;Initial Catalog=MC04;Integrated Security=True");

                 con.Open();

                 string sqlcom = "select * from STUDENT where Uname='" + uname + "'";
                 SqlDataAdapter sda = new SqlDataAdapter(sqlcom, con);
                 DataTable dt = new DataTable();

                 sda.Fill(dt);



                 


                 if (dt.Rows[0]["Pic"].ToString().Length > 1)
                 {

                 }
                 else
                     //ProPic.ImageUrl = "~/Images/userProfile.png";


                 con.Close();
             }
        }

        protected void btnSub_Click(object sender, EventArgs e)
        {
            HttpCookie cookie = Request.Cookies["UserInfo"];
            string uname = cookie["Uname"];
            SqlConnection con = new SqlConnection("Data Source=openbox.nmmu.ac.za\\wrr;Initial Catalog=MC04;Integrated Security=True");
            SqlCommand com = null;

            if (uplimg.HasFile)
            {
                string str = uplimg.FileName.ToString();
                uplimg.PostedFile.SaveAs(Server.MapPath("~/Uploads/") + str);
                string path = "~/Uploads/" + str;


                con.Open();
                string updateQuery = "Update STUDENT SET Pic='" + path + "' where Uname ='" +uname+ "'";
                com = new SqlCommand(updateQuery, con);
                com.ExecuteNonQuery();

                con.Close();
            }
            else
            {

            }

            Response.Redirect("~/User/ProEdit.aspx");
            

        }
    }
}