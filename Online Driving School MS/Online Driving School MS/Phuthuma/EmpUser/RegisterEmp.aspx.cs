using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace Online_Driving_School_MS.Phuthuma.EmpUser
{
    public partial class RegisterEmp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnSub_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=openbox.nmmu.ac.za\\wrr;Initial Catalog=MC04;Integrated Security=True");

            con.Open();

            string chechuser = "select count(*) from EMPLOYEE where Uname='" + txtUname.Text + "'";
            SqlCommand com = new SqlCommand(chechuser, con);
            int temp = int.Parse(com.ExecuteScalar().ToString());
            if (temp >= 1)
            {
                lblFeed.Text = "User Already Exists";
                lblFeed.ForeColor = System.Drawing.Color.FromName("Red");
                lblFeed.Visible = true;
            }
            else
            {
                string insertquery = "insert into EMPLOYEE (Uname,Name,Surname,JobTitle,Email,Cell,Password) values('" + txtUname.Text + "','" + txtName.Text + "','" + txtSur.Text + "','"+txtJob.Text+"','" + txtEmail.Text + "','" + txtCell.Text + "','" + txtPass.Text + "')";
                com = new SqlCommand(insertquery, con);
                com.ExecuteNonQuery();
                lblFeed.Text = "You have successfully registered employee " + txtUname.Text;
                lblFeed.ForeColor = System.Drawing.Color.FromName("Green");
                lblFeed.Visible = true;
            }

            con.Close();
        }
    }
}