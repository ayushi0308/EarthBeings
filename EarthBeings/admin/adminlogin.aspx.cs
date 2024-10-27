using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EarthBeings
{
    public partial class adminlogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void adlog_Click(object sender, EventArgs e)
        {
            if (adUname.Text == "admin0308@gmail.com" && adpd.Text == "admin0308")
            {
                Session["Username"] = adUname.Text;
                Response.Redirect("adminDash.aspx");
            }
            else
            {
                lbl2.Text = "Invalid Login!! Please try again";
            }
        }
    }
}