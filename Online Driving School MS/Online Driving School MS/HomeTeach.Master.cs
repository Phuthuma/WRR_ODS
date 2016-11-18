using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Driving_School_MS
{
    public partial class HomeTeach1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lbLogOut_Click(object sender, EventArgs e)
        {
            //Pre: User is loggedOn
            //Post: Make cookie = null and redirect user to home page

            Session["New"] = null;
            Response.Redirect("~/Home.aspx");
        }
    }
}