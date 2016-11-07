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
        }

        protected void btnSub_Click(object sender, EventArgs e)
        {
            
            string uname = Session["New"].ToString();
            SqlConnection con = new SqlConnection("Data Source=openbox.nmmu.ac.za\\wrr;Initial Catalog=MC04;Integrated Security=True");
            SqlCommand com = null;

            if (uplimg.HasFile)
            {
                string str = uplimg.FileName.ToString();
                uplimg.PostedFile.SaveAs(Server.MapPath("~/Uploads/") + str);
                string path = "~/Uploads/" + str;

                con.Open();
                //check whether student or employee

                string chechuser = "select count(*) from STUDENT where Uname='" +uname+ "'";
                SqlCommand countCom = new SqlCommand(chechuser, con);
                int temp = int.Parse(countCom.ExecuteScalar().ToString());

                if (temp >= 1)
                {
                    string updateQuery = "Update STUDENT SET Pic='" + path + "' where Uname ='" + uname + "'";
                    com = new SqlCommand(updateQuery, con);
                    com.ExecuteNonQuery();
                    Response.Redirect("~/User/ProEdit.aspx");
                }
                else
                {
                    chechuser = "select count(*) from EMPLOYEE where Uname='" + uname + "'";
                    countCom = new SqlCommand(chechuser, con);
                    temp = int.Parse(countCom.ExecuteScalar().ToString());

                    if (temp >= 1)
                    {
                        string updateQuery = "Update EMPLOYEE SET Pic='" + path + "' where Uname ='" + uname + "'";
                        com = new SqlCommand(updateQuery, con);
                        com.ExecuteNonQuery();
                        Response.Redirect("~/Phuthuma/EmpUser/EmpProEdit.aspx");
                    }
                    
                }
                con.Close();
            }
            else
            {

            }

            
        }
    }
}