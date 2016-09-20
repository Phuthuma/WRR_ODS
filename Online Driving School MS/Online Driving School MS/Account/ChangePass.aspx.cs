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
    public partial class ChangePass : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=openbox.nmmu.ac.za\\wrr;Initial Catalog=MC04;Integrated Security=True");
        SqlCommand com = null;

        
        
        protected void Page_Load(object sender, EventArgs e)
        {
            string uname = Request.QueryString["uname"].ToString();

            if (IsPostBack)
            {
                string countCom = "Select count (Uname) from PASSREQ where Uname='" + uname + "'";

                con.Open();
                com = new SqlCommand(countCom, con);
                int count = int.Parse(com.ExecuteScalar().ToString());
                if (count == 0)
                    lblErrorFeed.Visible = true;
               
                con.Close();
                
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {

            string uname = Request.QueryString["uname"].ToString();

            string countCom = "Select count (Uname) from PASSREQ where Uname='" + uname + "'";

            con.Open();

            com = new SqlCommand(countCom, con);
            int count = int.Parse(com.ExecuteScalar().ToString());

            if (count >= 1)
            {
                //Update new password
                string updateQuery = "Update STUDENT set Password='" + txtPass.Text + "' where Uname='" + uname + "'";
                com = new SqlCommand(updateQuery, con);
                com.ExecuteNonQuery();

                //Delete request from password request table
                string delQuery = "Delete from PASSREQ  where Uname='" + uname + "'";
                com = new SqlCommand(delQuery, con);
                com.ExecuteNonQuery();

                lblSuccessFeed.Visible = true;
                Response.Redirect("~/User/ProEdit.aspx");
            }
            con.Close();
             
        }
    }
}