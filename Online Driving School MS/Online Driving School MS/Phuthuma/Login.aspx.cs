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
            //Search database to find students
            SqlConnection con = new SqlConnection("Data Source=openbox.nmmu.ac.za\\wrr;Initial Catalog=MC04;Integrated Security=True");
            
            //open connection

            con.Open();

            string chechuser = "select * from STUDENT where Uname='" + txtUname.Text + "' and Password='"+txtPass.Text+"'";
            SqlDataAdapter sda = new SqlDataAdapter(chechuser, con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            
            //if student is found create a cookie that will pass information to other pages
            if (dt.Rows.Count>0)
            {
                //Creates new session
                Session["New"] = txtUname.Text;

                HttpCookie cookie = new HttpCookie("UserInfo");
                cookie["Uname"] = txtUname.Text;
                Response.Cookies.Add(cookie);
                Response.Redirect("~/User/ProEdit.aspx");
            }
            else
            {
                chechuser = "select * from EMPLOYEE where Uname='" + txtUname.Text + "' and Password='" + txtPass.Text + "'";
                sda = new SqlDataAdapter(chechuser, con);
                dt = new DataTable();
                sda.Fill(dt);

                //if employee is found create a cookie that will pass information to other pages
                if (dt.Rows.Count > 0)
                {
                    //Creates new session
                    Session["New"] = txtUname.Text;

                    HttpCookie cookie = new HttpCookie("UserInfo");
                    cookie["Uname"] = txtUname.Text;
                    Response.Cookies.Add(cookie);

                    if(dt.Rows[0]["JobTitle"].ToString()=="Admin")
                        Response.Redirect("~/HomeAdmin.aspx");

                    if (dt.Rows[0]["JobTitle"].ToString() == "Teacher")
                        Response.Redirect("~/HomeTeach.aspx");

                    if (dt.Rows[0]["JobTitle"].ToString() == "Instructor")
                        Response.Redirect("~/HomeInst.aspx");
                }

                else
                {
                    Label1.Visible = true;
                }
            }
        
            //close connection
            con.Close();           
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //Clear textboxes
            txtUname.Text = "";
            txtPass.Text = "";
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            //Fogot password linkbutton
            Response.Redirect("PassReset.aspx");
        }

       
    }
}