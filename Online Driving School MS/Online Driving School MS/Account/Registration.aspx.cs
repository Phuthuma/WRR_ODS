using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace Online_Driving_School_MS.Account
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                SqlConnection con=new SqlConnection("Data Source=openbox.nmmu.ac.za\\wrr;Initial Catalog=MC04;Integrated Security=True");
                
                con.Open();

                string chechuser="select count(*) from STUDENT where Uname='"+txtUname.Text+"'";
                SqlCommand com=new SqlCommand(chechuser,con);
                int temp=int.Parse(com.ExecuteScalar().ToString());
                if(temp==1){
                    Response.Write("User already exists");
                }
                
                con.Close();
            }
        }

        protected void btnReg_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=openbox.nmmu.ac.za\\wrr;Initial Catalog=MC04;Integrated Security=True");

            con.Open();

            string insertquery = "insert into STUDENT(Uname,Name,Surname,Email,Cell,Password) values('"+txtUname.Text+"','"+txtName.Text+"','"+txtSur.Text+"','"+txtEmail.Text+"','"+txtCell.Text+"','"+txtPass.Text+"')";
            SqlCommand com = new SqlCommand(insertquery, con);
            com.ExecuteNonQuery();

            con.Close();
            FeedMsg.Visible = true;
        }

        protected void btnClr_Click(object sender, EventArgs e)
        {
            txtName.Text = "";
            txtUname.Text = "";
            txtSur.Text = "";
            txtEmail.Text = "";
            txtName.Text = "";
            txtCell.Text = "";
        }
        
    }
}