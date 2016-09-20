using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Driving_School_MS.Account
{
    public partial class VieweStdProAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
       
        }

        protected void lbInsert_Click(object sender, EventArgs e)
        {
            SqlDataSource1.InsertParameters["Uname"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtInstUname")).Text;
            SqlDataSource1.InsertParameters["Name"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtInstName")).Text;
            SqlDataSource1.InsertParameters["Surname"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtInstSur")).Text;
            SqlDataSource1.InsertParameters["Email"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtInstEmail")).Text;
            SqlDataSource1.InsertParameters["Cell"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtInstCell")).Text;
            SqlDataSource1.InsertParameters["Password"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtInstPass")).Text;

            SqlDataSource1.Insert();

        }


    }
}