using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Driving_School_MS.Account
{
    public partial class GenerateQuote : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            double amt=0, ans =0;

            if (rd8.Checked)
                amt = 100;
            else
                 if (rd10.Checked)
                     amt = 150;
                 else
                    if (rd14.Checked)
                        amt = 200;

            if (amt != 0)
                ans = amt * (int.Parse(txtNol.Text.ToString()));
            

            if (cbxLearn.Checked)
                ans += 200;

            if ((cbxVeh.Checked) && (rd8.Checked))
                ans += 200;
            else
                if ((cbxVeh.Checked) && (rd10.Checked))
                    ans += 500;
                else
                    if ((cbxVeh.Checked) && (rd14.Checked))
                        ans += 1000;
            TotQuote.Text = "R "+ans.ToString();
            TotQuote.Visible = true;
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            cbxLearn.Checked = false;
            cbxVeh.Checked = false;
            rd8.Checked = false;
            rd14.Checked = false;
            rd10.Checked = false;
            txtNol.Text = "";
            TotQuote.Text = "";
        }
    }
}