using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Online_Driving_School_MS.Phuthuma.EmpUser
{
    public partial class EmpProEdit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["New"] != null)
            {
                string uname = Session["New"].ToString();
                SqlConnection con = new SqlConnection("Data Source=openbox.nmmu.ac.za\\wrr;Initial Catalog=MC04;Integrated Security=True");

                con.Open();

                string sqlcom = "select Name from EMPLOYEE where Uname='" + uname + "'";
                SqlDataAdapter sda = new SqlDataAdapter(sqlcom, con);
                DataTable dt = new DataTable();
                sda.Fill(dt);

                lblHead.Text = dt.Rows[0]["Name"].ToString();

                con.Close();

                SqlDataSource2.SelectParameters["Uname"].DefaultValue = uname;
            }

            else
                Response.Redirect("~/Phuthuma/Login.aspx");

        }

        protected void Page_PreInit(object sender, EventArgs e)
        {
            if (Session["New"] != null)
            {
                string uname = Session["New"].ToString();

                SqlConnection con = new SqlConnection("Data Source=openbox.nmmu.ac.za\\wrr;Initial Catalog=MC04;Integrated Security=True");

                con.Open();

                string sqlcom = "select JobTitle from EMPLOYEE where Uname='" + uname + "'";
                SqlDataAdapter sda = new SqlDataAdapter(sqlcom, con);
                DataTable dt = new DataTable();
                sda.Fill(dt);

                if (dt.Rows[0]["JobTitle"].ToString() == "Instructor")
                    this.Page.MasterPageFile = "~/HomeInst.Master";

                if (dt.Rows[0]["JobTitle"].ToString() == "Teacher")
                    this.Page.MasterPageFile = "~/HomeTeach.Master";

                con.Close();
            }
            
        }

        protected void FormView1_PageIndexChanging(object sender, FormViewPageEventArgs e)
        {

        }

        protected void FormView1_PageIndexChanging1(object sender, FormViewPageEventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Phuthuma/StudProEdit.aspx");
        }
    }
}
