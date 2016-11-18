using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Online_Driving_School_MS.Phuthuma
{
    public partial class PriceList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Page_PreInit(object sender, EventArgs e)
        {
            if (Session["New"] != null)
            {
               this.Page.MasterPageFile = "~/HomeUser.Master";
            }


        }
    }
}