using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net.Mail;
using System.Text;


namespace Online_Driving_School_MS.Account
{
    public partial class PassReset : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            SqlConnection con=new SqlConnection("Data Source=openbox.nmmu.ac.za\\wrr;Initial Catalog=MC04;Integrated Security=True");
            con.Open();
                string com="select * from Student where Uname='"+txtUname.Text+"'";
                SqlDataAdapter sda=new SqlDataAdapter(com,con);
                DataTable dt=new DataTable();
                sda.Fill(dt);

                if(dt.Rows.Count>0)
                {
                    string uname = dt.Rows[0]["Uname"].ToString();
                    string name = dt.Rows[0]["Name"].ToString();
                    string email = dt.Rows[0]["Email"].ToString();
                    string pass=dt.Rows[0]["Password"].ToString();

                    try
                    {
                        MailMessage mm = new MailMessage("phuthumaloyisopetse@gmail.com", email);
                        mm.Subject = "Password Reset";
                        
                        StringBuilder strBody = new StringBuilder();
                        strBody.Append("Dear "+name+"<br/><br/>");
                        strBody.Append("Follow this link to change password http://localhost:49398/Account/ChangePass.aspx?uname=" + uname.ToString());
                        strBody.Append("<br/><br/>");
                        strBody.Append("Regards <br/>");
                        strBody.Append("ODS");

                        mm.Body = strBody.ToString();
                        mm.IsBodyHtml = true;

                        SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
                        client.Credentials = new System.Net.NetworkCredential()
                        {
                            UserName = "phuthumaloyisopetse@gmail.com",
                            Password="sweleba88"
                        };
                        client.EnableSsl = true;
                        client.Send(mm);

                        //write code to avoid multiple entry of requests
                        string instQuery = "Insert into PASSREQ (Uname) Values('" + uname.ToString() + "')";
                        SqlCommand instCom = new SqlCommand(instQuery, con);
                        instCom.ExecuteNonQuery();
                        
                        lblFeedRst.Visible = true;
                    }
                    catch (Exception ex)
                    {
                        lblFeedRst.Text = ex.Message.ToString();
                        lblFeedRst.Visible = true;
                    }
                }
                else
                {
                    //when student is not found
                   
                }
            con.Close();

        }

        
    }
}