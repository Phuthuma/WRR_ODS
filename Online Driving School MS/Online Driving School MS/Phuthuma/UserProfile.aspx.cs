using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


namespace Online_Driving_School_MS.Account
{
    public partial class UserProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie cookie = Request.Cookies["UserInfo"];

            if(cookie != null){

            string uname = cookie["Uname"];

            SqlConnection con=new SqlConnection("Data Source=openbox.nmmu.ac.za\\wrr;Initial Catalog=MC04;Integrated Security=True");
            
            con.Open();

                string sqlcom="select * from STUDENT where Uname='"+uname+"'";
                SqlDataAdapter sda=new SqlDataAdapter(sqlcom,con);
                DataTable dt = new DataTable();
                sda.Fill(dt);

                if (dt.Rows.Count > 0)
                {
                    lblHead.Text = dt.Rows[0]["Name"].ToString();
                    lblName.Text = dt.Rows[0]["Name"].ToString();
                    lblSur.Text = dt.Rows[0]["Surname"].ToString();
                    lblEmail.Text = dt.Rows[0]["Email"].ToString();
                    lblCell.Text = dt.Rows[0]["Cell"].ToString();

                    if (dt.Rows[0]["Pic"].ToString().Length > 1)
                    {
                        ProPic.ImageUrl = dt.Rows[0]["Pic"].ToString();
                    }
                    else
                        ProPic.ImageUrl = "~/Images/userProfile.png";
                }
                else
                {
                    Response.Redirect("Login.aspx");
                }

            con.Close();
            }
            
        }

        protected void lbChoosePic_Click(object sender, EventArgs e)
        {
            Response.Redirect("StudProEdit.aspx");
        }
    }
}