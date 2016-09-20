using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Online_Driving_School_MS.Account
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
             
        }

        protected void btnLogIn_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=openbox.nmmu.ac.za\\wrr;Initial Catalog=MC04;Integrated Security=True");

            con.Open();

            string chechuser = "select * from STUDENT where Uname='" + txtUname.Text + "' and Password='"+txtPass.Text+"'";
            SqlDataAdapter sda = new SqlDataAdapter(chechuser, con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            
            if (dt.Rows.Count>0)
            {
                HttpCookie cookie = new HttpCookie("UserInfo");
                cookie["Uname"] = txtUname.Text;
                Response.Cookies.Add(cookie);
                Response.Redirect("~/User/ProEdit.aspx");
            }
            else
            {
                Label1.Visible = true;
            }

            
            con.Close();


            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            txtUname.Text = "";
            txtPass.Text = "";
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("PassReset.aspx");
        }

       
    }
}